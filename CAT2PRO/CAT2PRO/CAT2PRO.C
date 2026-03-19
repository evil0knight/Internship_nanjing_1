// Project:  CAT2PRO
// Device:   FT61FC4X
// Memory:   PROM=4Kx14, SRAM=0.5KB, EEPROM=128
// Description: 433MHz water valve control - Table-Driven command parser
//
// RELEASE HISTORY
// VERSION DATE        DESCRIPTION
// 1.0     26-3-18     CAT2PRO template, table-driven refactor from CAT1PRO
//
// 引脚定义
// OPENP  ---- PB2  (开到位限位，输入，上拉)
// OPENS  ---- PB1  (电机正转，输出)
// CLOSEP ---- PB0  (关到位限位，输入，上拉)
// CLOSES ---- PA0  (电机反转，输出)
// LED    ---- PA1  (状态指示，输出)
// RX     ---- PA7  (串口接收，输入)
// TX     ---- PA6  (串口发送，输出)
// 433_WAKE-- PA4  (433模块唤醒信号，输入，外部中断EINT4)
// 433_SLEEP- PC1  (433模块休眠控制，输出，HIGH=睡眠)
// KEY    ---- PB7  (对码按键，输入，上拉，外部中断EINT7)

#include "SYSCFG.h"
#include "duima.h"

//==============================================================================
// 类型别名
//==============================================================================
#define unchar  unsigned char

//==============================================================================
// GPIO 宏定义
//==============================================================================
#define OPENP       PORTBbits.PB2
#define OPENS       PORTBbits.PB1
#define CLOSEP      PORTBbits.PB0
#define CLOSES      PORTAbits.PA0

#define DATA_TRANS  PORTAbits.PA4
#define KEY         PORTBbits.PB7

#define LED_OFF     PORTAbits.PA1 = 0
#define LED_ON      PORTAbits.PA1 = 1
#define LED_TOGGLE  PORTAbits.PA1 = (PORTAbits.PA1 == 1 ? 0 : 1)

#define WAKE_UP     PORTCbits.PC1 = 0
#define SLEEP_DN    PORTCbits.PC1 = 1

//==============================================================================
// 环形缓冲区
//==============================================================================
#define RING_BUF_SIZE   32

volatile unchar ring_buf[RING_BUF_SIZE];
volatile unchar head = 0;   // 写指针（ISR 更新）
volatile unchar tail = 0;   // 读指针（主循环更新）

//==============================================================================
// 协议帧格式
//   控制帧 7字节: BB [Type] [Len] [CMD] [CRC] 0D 0A
//   对码帧 8字节: BB 02 02 [ID_H] [ID_L] [CRC] 0D 0A
//
// CRC = Type + Len + Data 之和的低 8 位
//==============================================================================
#define MAX_FRAME_LEN   8
#define MIN_FRAME_LEN   7   // 所有固定命令帧的最短长度

//==============================================================================
// 固定命令帧（只在这里修改，不碰 UART_Task）
//==============================================================================
static const unchar FRAME_OPEN[]  = {0xBB, 0x01, 0x01, 0x01, 0x03, 0x0D, 0x0A};
static const unchar FRAME_CLOSE[] = {0xBB, 0x01, 0x01, 0x02, 0x04, 0x0D, 0x0A};
static const unchar FRAME_STOP[]  = {0xBB, 0x01, 0x01, 0x00, 0x02, 0x0D, 0x0A};
// 新增命令示例（解注释并在 g_cmd_table 中补一行即可）:
// static const unchar FRAME_QUERY[] = {0xBB, 0x01, 0x01, 0x03, 0x05, 0x0D, 0x0A};

//==============================================================================
// 命令处理函数（前向声明）
//==============================================================================
static void Cmd_Open(void);
static void Cmd_Close(void);
static void Cmd_Stop(void);
// static void Cmd_Query(void);   // 新增命令时在此补声明

//==============================================================================
// 命令表（表驱动核心：添加命令只需加一行）
//
//   格式: { 帧指针, 帧长度, 处理函数 }
//==============================================================================
typedef struct {
    const unchar *frame;        // 固定帧数据
    unchar        len;          // 帧长度（字节）
    void        (*handler)(void); // 匹配后调用的函数
} CMD_ENTRY_T;

static const CMD_ENTRY_T g_cmd_table[] = {
    { FRAME_OPEN,  sizeof(FRAME_OPEN),  Cmd_Open  },
    { FRAME_CLOSE, sizeof(FRAME_CLOSE), Cmd_Close },
    { FRAME_STOP,  sizeof(FRAME_STOP),  Cmd_Stop  },
    // { FRAME_QUERY, sizeof(FRAME_QUERY), Cmd_Query },  // 新增命令在此追加
};
#define CMD_TABLE_SIZE  (sizeof(g_cmd_table) / sizeof(g_cmd_table[0]))

//==============================================================================
// 调试 / 统计变量
//==============================================================================
volatile unchar g_frame_count = 0;     // 已处理帧计数

//==============================================================================
// 主循环状态机
//==============================================================================
typedef enum {
    STATE_WAKE_INIT = 0,
    STATE_WORKING,
    STATE_GO_SLEEP
} MAIN_STATE;

//==============================================================================
// 毫秒计数器（TIM4 中断每 1ms 递增）
//==============================================================================
volatile unsigned int g_timer_ms = 0;

/*============================================================================
 * ISR - 中断服务程序
 *============================================================================*/
void interrupt ISR(void)
{
    // ---- UART 接收：写入环形缓冲区 ----
    if(URRXNE && RXNEF)
    {
        unchar data     = URDATAL;
        unchar next_head = (head + 1) % RING_BUF_SIZE;
        if(next_head != tail) {     // 未满则写入，满则丢弃
            ring_buf[head] = data;
            head = next_head;
        }
        NOP();
    }

    // ---- TIM4：1ms 计数 ----
    if(T4UIE && T4UIF)
    {
        T4UIF = 1;
        g_timer_ms++;
    }
}

/*============================================================================
 * POWER_INITIAL - 硬件初始化
 *============================================================================*/
void POWER_INITIAL(void)
{
    OSCCON = 0B01110001;    // 16MHz 1:1
    INTCON = 0B00000000;    // 关全局中断

    PORTA = 0B00000000;
    TRISA = 0B10010000;     // PA7(RX), PA4(433唤醒) 输入
    PORTB = 0B00000000;
    TRISB = 0B10000101;     // PB7(KEY), PB2(OPENP), PB0(CLOSEP) 输入
    PORTC = 0B00000000;
    TRISC = 0B00000000;     // 全输出

    WPUA  = 0B00010000;     // PA4 上拉
    WPUB  = 0B10000101;     // PB7, PB2, PB0 上拉
    WPUC  = 0B00000000;
    WPDA  = 0B00000000;
    WPDB  = 0B00000000;
    WPDC  = 0B00000000;

    PSRC0 = 0B11111111;
    PSRC1 = 0B11111111;
    PSRC2 = 0B11111111;
    PSINK0 = 0B11111111;
    PSINK1 = 0B11111111;
    PSINK2 = 0B11111111;

    ANSELA = 0B00000000;    // 全数字 IO
}

/*============================================================================
 * IO_INT_INITIAL - 外部中断初始化（PA4 / PB7）
 *============================================================================*/
void IO_INT_INITIAL(void)
{
    EPS0   = 0B00000000;
    EPS1   = 0B01000000;    // PA4(EINT4), PB7(EINT7)
    ITYPE0 = 0B00000000;
    ITYPE1 = 0B10000000;    // PB7, PA4 双沿触发
    EPIE0  = 0B10010000;    // EINT7, EINT4 使能
    INTCON = 0B11000000;    // GIE, PEIE
}

/*============================================================================
 * TIM4_INITIAL - 1ms 定时器
 *   16MHz / 2^6 / 250 = 1000Hz
 *============================================================================*/
void TIM4_INITIAL(void)
{
    PCKEN  |= 0B00001000;   // 开 TIM4 时钟
    TIM4CR1 = 0B00000101;
    TIM4IER = 0B00000001;   // 更新中断使能
    TIM4SR  = 0B00000000;
    TIM4EGR = 0B00000000;
    TIM4CNTR = 0;
    TIM4PSCR = 6;           // 2^6 = 64
    TIM4ARR  = 249;         // 250 个节拍
    INTCON  |= 0B11000000;
}

/*============================================================================
 * DelayUs / DelayMs - 软件延时
 *============================================================================*/
void DelayUs(unchar Time)
{
    unchar a;
    for(a = 0; a < Time; a++) NOP();
}

void DelayMs(unchar Time)
{
    unchar a, b;
    for(a = 0; a < Time; a++)
        for(b = 0; b < 5; b++)
            DelayUs(197);
}

/*============================================================================
 * UART_INITIAL - 串口初始化，9600 baud
 *============================================================================*/
void UART_INITIAL(void)
{
    PCKEN |= 0B00100000;
    URIER  = 0B00000001;
    URLCR  = 0B00000001;
    URMCR  = 0B00011000;
    URDLL  = 104;
    URDLH  = 0;
    TCF    = 1;
    AFP1   = 0;
    ODCON0 = 0B00000000;
}

/*============================================================================
 * SendByte / SendString / SendATCommand
 *============================================================================*/
void SendByte(unchar data)
{
    TXEF = 0;
    URDATAL = data;
    while(!TCF) {}
}

void SendString(const char *str)
{
    unchar j = 0;
    while(str[j] != '\0') SendByte(str[j++]);
}

void SendATCommand(const char *cmd)
{
    SendString(cmd);
    SendByte(0x0D);
    SendByte(0x0A);
}

/*============================================================================
 * CAT1_Init - 433 模块 AT 命令配置
 *============================================================================*/
void CAT1_Init(void)
{
    SendATCommand("AT+PWR=20");     DelayMs(50);
    SendATCommand("AT+UART=3,0");   DelayMs(50);
    SendATCommand("AT+FEQ=434000000"); DelayMs(50);
    SendATCommand("AT+ADR=0");      DelayMs(50);
    SendATCommand("AT+SF=7");       DelayMs(50);
    SendATCommand("AT+BW=9");       DelayMs(50);
    SendATCommand("AT+PB=2000");    DelayMs(50);
    SendATCommand("AT+MODE=1");     DelayMs(50);
    SendATCommand("AT+WT=2");       DelayMs(50);
    Duima_Init();
    SendATCommand("ATW");           DelayMs(50);
    SLEEP_DN;
}

/*============================================================================
 * 命令处理函数实现
 *   每个函数只做一件事，保持短小
 *============================================================================*/
static void Cmd_Open(void)
{
    Duima_ControlMotor(CMD_OPEN);
}

static void Cmd_Close(void)
{
    Duima_ControlMotor(CMD_CLOSE);
}

static void Cmd_Stop(void)
{
    Duima_ControlMotor(CMD_STOP);
}

/*============================================================================
 * UART_Task - 表驱动串口解析
 *
 * 算法：
 *   1. 取出环形缓冲区中足够长度的数据窗口
 *   2. 遍历命令表，逐表项做字节比较
 *   3. 命中 → 调用 handler，推进 tail
 *   4. 未命中 → 丢弃首字节，滑动窗口重试
 *   5. 对码模式单独处理（帧格式不同）
 *============================================================================*/
void UART_Task(void)
{
    unchar check_buf[MAX_FRAME_LEN];
    unchar avail, i, t, match;
    const CMD_ENTRY_T *p;

    while(1)
    {
        avail = (head - tail + RING_BUF_SIZE) % RING_BUF_SIZE;
        if(avail < MIN_FRAME_LEN) break;   // 数据不足，等待更多字节

        // ------------------------------------------------------------------
        // 阶段1: 遍历命令表，查找固定帧匹配
        // ------------------------------------------------------------------
        match = 0;
        for(t = 0; t < CMD_TABLE_SIZE; t++)
        {
            p = &g_cmd_table[t];
            if(avail < p->len) continue;    // 当前帧数据不够，跳过

            // 从环形缓冲区复制 p->len 字节到线性缓冲区
            for(i = 0; i < p->len; i++) {
                check_buf[i] = ring_buf[(tail + i) % RING_BUF_SIZE];
            }

            // 逐字节比较
            match = 1;
            for(i = 0; i < p->len; i++) {
                if(check_buf[i] != p->frame[i]) { match = 0; break; }
            }

            if(match) {
                p->handler();                               // 执行对应动作
                g_frame_count++;
                LED_TOGGLE; DelayMs(50); LED_TOGGLE;        // 闪灯确认
                tail = (tail + p->len) % RING_BUF_SIZE;    // 消耗已处理字节
                break;
            }
        }

        // ------------------------------------------------------------------
        // 阶段2: 对码帧处理（仅 MODE_PAIRING 下，8字节）
        //   BB 02 02 [ID_H] [ID_L] [CRC] 0D 0A
        // ------------------------------------------------------------------
        if(!match && current_mode == MODE_PAIRING && avail >= 8)
        {
            // 读出 8 字节
            for(i = 0; i < 8; i++) {
                check_buf[i] = ring_buf[(tail + i) % RING_BUF_SIZE];
            }

            if(check_buf[0] == 0xBB &&
               check_buf[1] == 0x02 &&
               check_buf[2] == 0x02 &&
               check_buf[6] == 0x0D &&
               check_buf[7] == 0x0A)
            {
                unchar crc = check_buf[1] + check_buf[2]
                           + check_buf[3] + check_buf[4];
                if((crc & 0xFF) == check_buf[5])
                {
                    Duima_ProcessReceivedData(check_buf, 8);
                    g_frame_count++;
                    tail = (tail + 8) % RING_BUF_SIZE;
                    match = 1;
                }
            }
        }

        // ------------------------------------------------------------------
        // 阶段3: 无匹配 → 丢弃首字节，滑动窗口
        // ------------------------------------------------------------------
        if(!match) {
            tail = (tail + 1) % RING_BUF_SIZE;
        }
    }
}

/*============================================================================
 * Sys_EnterSleep - 进入低功耗休眠
 *============================================================================*/
void Sys_EnterSleep(void)
{
    LED_OFF;
    SLEEP_DN;
    DelayMs(50);

    IO_INT_INITIAL();
    EPIF0 = 0x90;
    GIE   = 0;

    NOP(); NOP(); NOP(); NOP();
    SLEEP();
    NOP(); NOP(); NOP(); NOP();

    EPIF0  = 0x90;
    INTCON = 0B11000000;
    DelayMs(50);
}

/*============================================================================
 * main
 *============================================================================*/
void main(void)
{
    MAIN_STATE sys_state = STATE_WAKE_INIT;

    POWER_INITIAL();
    UART_INITIAL();
    DelayMs(50);
    CAT1_Init();
    TIM4_INITIAL();

    INTCON = 0B11000000;
    DelayMs(50);

    while(1)
    {
        switch(sys_state)
        {
            // ----------------------------------------------------------------
            // 状态0: 唤醒，重置计时器，拉起 433
            // ----------------------------------------------------------------
            case STATE_WAKE_INIT:
                LED_ON;
                g_timer_ms = 0;
                WAKE_UP;
                sys_state = STATE_WORKING;
                break;

            // ----------------------------------------------------------------
            // 状态1: 工作窗口（5~10 秒）
            // ----------------------------------------------------------------
            case STATE_WORKING:
                Duima_MainLoop();           // 按键扫描 / 对码流程
                UART_Task();               // 表驱动串口解析
                Duima_CheckLimitSwitch();  // 限位开关监测

                if(current_mode == MODE_PAIRING) {
                    if(g_timer_ms >= 10000) {
                        Duima_Configure433Address(local_paired_id);
                        current_mode = MODE_NORMAL;
                        LED_OFF;
                        sys_state = STATE_GO_SLEEP;
                    }
                } else {
                    if(g_timer_ms >= 10000) {
                        OPENS  = 0;
                        CLOSES = 0;
                        sys_state = STATE_GO_SLEEP;
                    }
                }
                break;

            // ----------------------------------------------------------------
            // 状态2: 休眠
            // ----------------------------------------------------------------
            case STATE_GO_SLEEP:
            {
                unchar k;
                for(k = 0; k < 6; k++) {
                    LED_TOGGLE;
                    DelayMs(10);
                }
                Sys_EnterSleep();
                sys_state = STATE_WAKE_INIT;
                break;
            }
        }
    }
}
