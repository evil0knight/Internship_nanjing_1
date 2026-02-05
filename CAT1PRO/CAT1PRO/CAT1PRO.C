// Project:  FT61FC4X_UART.prj
// Device:   FT61FC4X
// Memory:   PROM=4Kx14, SRAM=0.5KB, EEPROM=128
// Description: UART communication with CAT1 module

// RELEASE HISTORY
// VERSION DATE     DESCRIPTION
// 1.1     24-2-2   Modified file header
//OPENP-----PB2
//OPENS----PB1
//CLOSEP----PB0
//CLOSES----PA0
//LED----PA4
//RX----PA7
//TX----PA6
//*********************************************************
#include "SYSCFG.h"
#include "duima.h"
//***********************Macro Definitions****************************
#define  unchar     unsigned char

#define OPENP       PORTBbits.PB2
#define OPENS       PORTBbits.PB1
#define CLOSEP      PORTBbits.PB0
#define CLOSES      PORTAbits.PA0   // ✓ 修正：电机反转控制引脚（PA0）

#define DATA_TRANS   PORTAbits.PA4

#define KEY          PORTBbits.PB7



#define LED_OFF     PORTAbits.PA1 = 0
#define LED_ON      PORTAbits.PA1 = 1
#define LED_TOGGLE  PORTAbits.PA1 = (PORTAbits.PA1 == 1 ? 0 : 1)

#define WAKE_UP     PORTCbits.PC1 = 0
#define SLEEP_DN    PORTCbits.PC1 = 1

//***********************Global Variables****************************
// 定时器计数器（用于按键扫描）- 由TIM4中断每1ms递增
volatile unsigned int g_timer_ms = 0;

//const char Freq[]={0x41, 0x54, 0x2B, 0x46, 0x45, 0x51, 0x3D, 0x34, 0x33, 0x34, 0x30, 0x30, 0x30, 0x30, 0x30, 0x30, 0x0D, 0x0A, 0x00};
volatile  unchar	receivedata[20]={0x00,0x0a,0x00,0x0a,0x00,0x0a,0x00,0x0a};
volatile  unchar	senddat[20]={'A','T',0x0d,0x0a};
//volatile  string	senddata;
volatile  unchar    toSend[20]={'A','T','+','P','W','R','=','2','9',0x0d,0x0a};
volatile  unchar    toSendA[20]={'A','T',0x0d,0x0a};

volatile  unchar    toSenda[20]={'A','T','+','U','A','R','T','=','3',',','0',0x0d,0x0a,0x55,0x66,0x77,0x88,0x99,0xaa};
unchar    i=0;
unchar    mmm=0;
const  	char*   abc="ABCD\r\n";
//int last_toggle_time=0;

//***********************环形缓冲区配置****************************
#define RING_BUF_SIZE   32      // 环形缓冲区大小（2的幂次，便于优化）

// 环形缓冲区相关变量
volatile unsigned char ring_buf[RING_BUF_SIZE];  // 环形缓冲区
volatile unsigned char head = 0;                 // 写指针（中断中更新）
volatile unsigned char tail = 0;                 // 读指针（主循环中更新）

// 消息缓冲区（用于存储一帧完整数据）
unsigned char msg_buffer[20];

// CRC调试变量（全局变量，方便调试查看）
volatile unchar g_cal_crc = 0;      // 计算得到的CRC值
volatile unchar g_rx_crc = 0;       // 接收到的CRC值
volatile unchar g_crc_match = 0;    // CRC匹配标志（1=匹配，0=不匹配）
volatile unchar g_frame_len = 0;    // 当前帧长度
volatile unchar g_frame_count = 0;  // 已接收帧计数器

//***********************状态机定义****************************
typedef enum {
    STATE_WAIT_HEAD = 0,    // 等待帧头 0xBB
    STATE_RECEIVING,        // 接收数据中
    STATE_WAIT_END2         // 等待帧尾第2字节 0x0A
} PARSE_STATE;

/*-------------------------------------------------
* Function: interrupt ISR
* Purpose:  Interrupt handler
* Input:    None
* Output:   None
/*-------------------------------------------------
* Function: interrupt ISR
* Purpose:  Interrupt handler
* Input:    None
* Output:   None
 --------------------------------------------------*/
void interrupt ISR(void)
{
    // ============================================================
    // UART接收中断 - 环形缓冲区存储
    // ============================================================
    if(URRXNE && RXNEF)
    {
        unchar data = URDATAL;
        unchar next_head = (head + 1) % RING_BUF_SIZE;
        
        // 如果缓冲区没满，存入数据
        if(next_head != tail) {
            ring_buf[head] = data;
            head = next_head;
        }
        // 如果满了，丢弃数据（或者可以选择覆盖最旧的数据）
        
        NOP();
    }

    // ============================================================
    // TIM4定时器中断（1ms）- 用于按键扫描时间基准
    // ============================================================
    if(T4UIE && T4UIF)
    {
        T4UIF = 1;              // 写1清除中断标志
        g_timer_ms++;           // 毫秒计数器递增（允许溢出）
    }
}

/*-------------------------------------------------
* Function: POWER_INITIAL
* Purpose:  Power-on system initialization
* Input:    None
* Output:   None
 --------------------------------------------------*/
void POWER_INITIAL (void)
{
	OSCCON = 0B01110001;	//16MHz 1:1
	INTCON = 0B00000000;  	// Disable peripheral interrupt

    //输入引脚设置
	PORTA = 0B00000000;
	TRISA = 0B10010000;		// PA7,PA4
	PORTB = 0B00000000;
	TRISB = 0B10000101;		// PB7,PB2,PB0
	PORTC = 0B00000000;
	TRISC = 0B00000000;		//

    //上拉引脚设置
	WPUA = 0B00010000;     	// PA4
	WPUB = 0B10000101;     	// PB7,PB2,PB0
	WPUC = 0B00000000;     	// 

    //下拉引脚设置
    WPDA = 0B00000000;     	// 
	WPDB = 0B00000000;     	//
	WPDC = 0B00000000;     	//

    //源电流大小设置
    PSRC0 = 0B11111111;  	// PORTA source current drive 0=small 1=large
    PSRC1 = 0B11111111;     // PORTB source current drive 0=small 1=large
    PSRC2 = 0B11111111;		// PORTC source current drive 00=small 11=large

    //灌电流大小设置
    PSINK0 = 0B11111111;  	// PORTA sink current drive 0=small 1=large
    PSINK1 = 0B11111111; 	// PORTB sink current drive 0=small 1=large
    PSINK2 = 0B11111111;	// PORTC sink current drive 0=small 1=large

    ANSELA = 0B00000000;    // All digital I/O pins
}
/*-------------------------------------------------
* Function: IO_INT_INITIAL
* Purpose:  Dual External Interrupt Initialization
*           - PA4: 433 module wakeup signal (EINT0)
*           - PB7: Pairing button wakeup (EINT1)
* Input:    None
* Output:   None
 --------------------------------------------------*/
void IO_INT_INITIAL(void)
{
    EPS0 = 0B00000000;//ESP0没用到

    // EPS1 选择 PA4(ENT4),PB7(ENT7)
    EPS1 = 0B01000000;

    ITYPE0 = 0B00000000;//没用到

    ITYPE1 = 0B10000000;    // PB7,PA4 边沿

    EPIE0  = 0B10010000;    //ent7,ent4外设中段使能
    
    INTCON = 0B11000000; //GIE,PEIE使能
}

/*-------------------------------------------------
* Function: DelayUs
* Purpose:  Microsecond delay - 16MHz 2T mode - about 1% error
* Input:    Time - delay time in microseconds
* Output:   None
 -------------------------------------------------*/
void DelayUs(unsigned char Time)
{
	unsigned char a;
	for(a=0;a<Time;a++)
	{
		NOP();
	}
}
/*-------------------------------------------------
* Function: DelayMs
* Purpose:  Millisecond delay - about 1% error
* Input:    Time - delay time in milliseconds
* Output:   None
 -------------------------------------------------*/
void DelayMs(unsigned char Time)
{
	unsigned char a,b;
	for(a=0;a<Time;a++)
	{
		for(b=0;b<5;b++)
		{
		 	DelayUs(197);
		}
	}
}
/*-------------------------------------------------
* Function: UART_INITIAL
* Purpose:  UART initialization
* Input:    None
* Output:   None
 --------------------------------------------------*/
void UART_INITIAL(void)
{
	PCKEN |=0B00100000;	// Enable UART clock

    URIER =0B00000001;  // Enable TX/RX interrupt
    URLCR =0B00000001;  // 8-bit data, 1 stop bit, no parity
    URMCR =0B00011000;

    URDLL =104;         // 9600 baud rate = Fosc/16*[URDLH:URDLL]
    URDLH =0;
    TCF=1;
    AFP1=0;
    ODCON0=0B00000000;
}
/*-------------------------------------------------
* Function: SendByte
* Purpose:  Send a single byte via UART
* Input:    data - byte to send
* Output:   None
 --------------------------------------------------*/
void SendByte(unchar data)
{
    TXEF = 0;
    URDATAL = data;
    while(!TCF)
    {
    }
}
/*-------------------------------------------------
* Function: SendString
* Purpose:  Send a string via UART (without \r\n)
* Input:    str - string to send
* Output:   None
 --------------------------------------------------*/
void SendString(const char* str)
{
    unchar j = 0;
    while(str[j] != '\0')
    {
        SendByte(str[j]);
        j++;
    }
}
/*-------------------------------------------------
* Function: SendATCommand
* Purpose:  Send AT command and automatically append \r\n
* Input:    cmd - AT command string
*           Example1: AT+PWR=29
*           Example2: ATW
* Output:   None
* Note:     Automatically appends \r\n at the end
 --------------------------------------------------*/
void SendATCommand(const char* cmd)
{
    unchar j = 0;

    // Send command string characters
    while(cmd[j] != '\0')
    {
        SendByte(cmd[j]);
        j++;
    }

    // Send \r (0x0D)
    SendByte(0x0D);

    // Send \n (0x0A)
    SendByte(0x0A);
}
/*-------------------------------------------------
* Function: Calculate_CRC
* Purpose:  根据协议计算校验和 (Sum of Type, Len, Data)
* Input:    len - msg_buffer的总长度
* Output:   CRC值（低8位）
* Note:     协议规定：除去起始(0xBB)和结束标志(CRC, 0x0D, 0x0A)，其余字节之和
 --------------------------------------------------*/
unchar Calculate_CRC(unchar len) 
{
    unsigned int sum = 0;
    // msg_buffer[0] = 0xBB (帧头，不参与校验)
    // msg_buffer[1] ~ msg_buffer[len-4] 参与校验
    // msg_buffer[len-3] = CRC (校验位)
    // msg_buffer[len-2] = 0x0D
    // msg_buffer[len-1] = 0x0A
    for(unchar k = 1; k < (len - 3); k++) {
        sum += msg_buffer[k];
    }
    return (unchar)(sum & 0xFF);
}

/*-------------------------------------------------
* Function: UART_Task
* Purpose:  串口接收任务（固定帧匹配）
* Input:    None
* Output:   None
* Note:     从环形缓冲区读取固定字节，匹配以下帧格式：
*           控制帧（7字节）：BB 01 01 [CMD] [CRC] 0D 0A
*           对码帧（8字节）：BB 02 02 [ID_H] [ID_L] [CRC] 0D 0A
*
*           说明：串口工具会自动在数据后添加0D 0A
*           - 控制帧输入：BB 01 01 01 03  → 实际发送：BB 01 01 01 03 0D 0A
*           - 对码帧输入：BB 02 02 12 34 4A → 实际发送：BB 02 02 12 34 4A 0D 0A
 --------------------------------------------------*/
void UART_Task(void)
{
    #define CMD_FRAME_LEN 7      // 控制帧长度7字节
    #define PAIR_FRAME_LEN 8     // 对码帧长度8字节
    unchar check_buf[8];         // 缓冲区按最大长度分配
    unchar i;
    unchar match;
    unchar calculated_crc;
    unchar min_len;              // 最小帧长度

    // 预定义的3种固定命令帧（7字节）
    const unchar CMD_FRAME_OPEN[CMD_FRAME_LEN]  = {0xBB, 0x01, 0x01, 0x01, 0x03, 0x0D, 0x0A};  // 开阀
    const unchar CMD_FRAME_CLOSE[CMD_FRAME_LEN] = {0xBB, 0x01, 0x01, 0x02, 0x04, 0x0D, 0x0A};  // 关阀
    const unchar CMD_FRAME_STOP[CMD_FRAME_LEN]  = {0xBB, 0x01, 0x01, 0x00, 0x02, 0x0D, 0x0A};  // 停止

    // 根据模式确定最小帧长度
    // 对码模式需要8字节，正常模式需要7字节
    min_len = (current_mode == MODE_PAIRING) ? PAIR_FRAME_LEN : CMD_FRAME_LEN;

    // 当缓冲区数据足够时
    while((head - tail + RING_BUF_SIZE) % RING_BUF_SIZE >= min_len)
    {
        // 从环形缓冲区取出前7个字节
        for(i = 0; i < CMD_FRAME_LEN; i++) {
            check_buf[i] = ring_buf[(tail + i) % RING_BUF_SIZE];
        }

        // ============================================================
        // 检查是否匹配开阀命令 (BB 01 01 01 03 0D 0A)
        // ============================================================
        match = 1;
        for(i = 0; i < CMD_FRAME_LEN; i++) {
            if(check_buf[i] != CMD_FRAME_OPEN[i]) {
                match = 0;
                break;
            }
        }
        if(match) {
            // 直接执行电机控制（已完整匹配固定帧，无需再次解析）
            Duima_ControlMotor(CMD_OPEN);
            g_frame_count++;
            LED_TOGGLE; DelayMs(50); LED_TOGGLE;  // 成功闪灯确认
            tail = (tail + CMD_FRAME_LEN) % RING_BUF_SIZE;
            continue;  // 继续检查下一帧
        }

        // ============================================================
        // 检查是否匹配关阀命令 (BB 01 01 02 04 0D 0A)
        // ============================================================
        match = 1;
        for(i = 0; i < CMD_FRAME_LEN; i++) {
            if(check_buf[i] != CMD_FRAME_CLOSE[i]) {
                match = 0;
                break;
            }
        }
        if(match) {
            // 直接执行电机控制
            Duima_ControlMotor(CMD_CLOSE);
            g_frame_count++;
            LED_TOGGLE; DelayMs(50); LED_TOGGLE;
            tail = (tail + CMD_FRAME_LEN) % RING_BUF_SIZE;
            continue;
        }

        // ============================================================
        // 检查是否匹配停止命令 (BB 01 01 00 02 0D 0A)
        // ============================================================
        match = 1;
        for(i = 0; i < CMD_FRAME_LEN; i++) {
            if(check_buf[i] != CMD_FRAME_STOP[i]) {
                match = 0;
                break;
            }
        }
        if(match) {
            // 直接执行电机控制
            Duima_ControlMotor(CMD_STOP);
            g_frame_count++;
            LED_TOGGLE; DelayMs(50); LED_TOGGLE;
            tail = (tail + CMD_FRAME_LEN) % RING_BUF_SIZE;
            continue;
        }

        // ============================================================
        // 检查是否为对码帧（只在对码模式下处理，8字节）
        // 格式：BB 02 02 [ID_High] [ID_Low] [CRC] 0D 0A
        // 注意：串口工具输入"BB 02 02 12 34 4A"会自动添加0D 0A
        // ============================================================
        if(current_mode == MODE_PAIRING)
        {
            // 读取第8字节（此时while条件已保证有8字节）
            check_buf[7] = ring_buf[(tail + 7) % RING_BUF_SIZE];

            // 检查帧头、Type、Len、帧尾
            if(check_buf[0] == 0xBB &&
               check_buf[1] == 0x02 &&  // Type = 0x02 (对码)
               check_buf[2] == 0x02 &&  // Len = 0x02 (2字节ID)
               check_buf[6] == 0x0D &&  // 帧尾第1字节
               check_buf[7] == 0x0A)    // 帧尾第2字节
            {
                // 验证 CRC (Type + Len + Data[0] + Data[1])
                calculated_crc = check_buf[1] + check_buf[2] + check_buf[3] + check_buf[4];

                if((calculated_crc & 0xFF) == check_buf[5])
                {
                    // CRC 校验通过，调用对码处理函数
                    Duima_ProcessReceivedData(check_buf, PAIR_FRAME_LEN);
                    g_frame_count++;
                    tail = (tail + PAIR_FRAME_LEN) % RING_BUF_SIZE;  // 移除8字节
                    continue;
                }
            }
        }

        // ============================================================
        // 不匹配任何命令，丢弃第一个字节，继续滑动窗口检查
        // ============================================================
        tail = (tail + 1) % RING_BUF_SIZE;
    }
}

/*-------------------------------------------------
* Function: CAT1_Init这个是一直唤醒模式的配置，后续要用周期睡眠模式
* Purpose:  CAT1 433MHz module initialization with AT commands
* Input:    None
* Output:   None
* Note:     Configure power, baud rate, frequency, address, SF, BW, PB
 --------------------------------------------------*/
void CAT1_Init(void)
{
    // Set power
    SendATCommand("AT+PWR=20");
    DelayMs(50);

    // Set UART baud rate 9600
    SendATCommand("AT+UART=3,0");
    DelayMs(50);

    // Set frequency 434MHz
    SendATCommand("AT+FEQ=434000000");
    DelayMs(50);

    // Set address
    SendATCommand("AT+ADR=0");
    DelayMs(50);

    // Set spreading factor (7-12, higher=longer range)
    SendATCommand("AT+SF=7");
    DelayMs(50);

    // Set bandwidth (6-9, lower=longer range)
    SendATCommand("AT+BW=9");
    DelayMs(50);

    // Set preamble length (0-6)
    SendATCommand("AT+PB=2000");
    DelayMs(50);

    SendATCommand("AT+MODE=1"); // 开启周期休眠
    DelayMs(50);

    SendATCommand("AT+WT=2");   // 唤醒周期2秒 (发送方的前导码PB必须>2秒)
    DelayMs(50);

    // Initialize pairing module (EEPROM, GPIO, timer, interrupt)
    Duima_Init();

    // Save all settings
    SendATCommand("ATW");
    DelayMs(50);

    SLEEP_DN;//唤醒433
}
/*-------------------------------------------------
* Function: main
* Purpose:  Main function
* Input:    None
* Output:   None
 --------------------------------------------------*/
// 定义系统状态
typedef enum {
    STATE_WAKE_INIT,    // 状态0: 唤醒初始化
    STATE_WORKING,      // 状态1: 正常工作 (5秒窗口)
    STATE_GO_SLEEP      // 状态2: 准备休眠
} MAIN_STATE;
//==============================================================================
// 系统进入休眠模式 
//==============================================================================
void Sys_EnterSleep(void)
{
    // 1. 关外设，准备睡觉
    LED_OFF;
    SLEEP_DN;
    DelayMs(50); // 防抖

    // 2. 备份现场
    //unsigned char backup_INTCON = INTCON;

    IO_INT_INITIAL();
    EPIF0 = 0x90;
    //TIM4IER=0;
    GIE = 0;

    // 8. 睡觉
    NOP(); NOP();NOP();NOP();
    SLEEP();
    NOP(); NOP();NOP();NOP();

    // 9. 醒来后
    EPIF0 = 0x90;   
    INTCON = 0B11000000; //GIE,PEIE使能
    //TIM4IER=1;
    DelayMs(50);
    // 10. 恢复现场
    //INTCON = backup_INTCON;
}
void main(void)
{
    // --- 硬件初始化 ---
    POWER_INITIAL();
    UART_INITIAL();
    DelayMs(50);
    CAT1_Init();
    
    // 统一开启中断
    INTCON = 0B11000000;
    DelayMs(50);

    // 状态机变量
    MAIN_STATE sys_state = STATE_WAKE_INIT;

//    Duima_ControlMotor(CMD_OPEN);
    while(1)
    {
        switch(sys_state)
        {
                        // ============================================================
            // 状态 0: 刚醒来，做准备工作
            // ============================================================
            case STATE_WAKE_INIT:
                LED_ON;
                g_timer_ms = 0;         // 重置计时器

                WAKE_UP;                // 唤醒 433 模块 (PC1=0)
                sys_state = STATE_WORKING; // 马上进入工作状态
                break;


                        // ============================================================
            // 状态 1: 工作中 (5秒窗口)
            // ============================================================
            case STATE_WORKING:
                // 1. 核心业务（按键检测等）
                Duima_MainLoop();

                // 2. 模块化调用串口解析任务（状态机）
                UART_Task();

                // 3. 限位开关检测（持续监测，到位自动停止）
                Duima_CheckLimitSwitch();

                // 4. 检查是否该睡觉了
                if(current_mode == MODE_PAIRING)
                {
                    // 对码模式：超时 10秒 退出
                    if(g_timer_ms >= 10000) {
                        Duima_Configure433Address(local_paired_id); // 恢复ID
                        current_mode = MODE_NORMAL;
                        LED_OFF;
                        sys_state = STATE_GO_SLEEP; // 去睡觉
                    }
                }
                else
                {
                    // 正常模式：超时 5秒 睡觉
                    if(g_timer_ms >= 10000) {
                        OPENS = 0;
                        CLOSES = 0;
                        sys_state = STATE_GO_SLEEP; // 去睡觉
                    }
                }
                break;


            // ============================================================
            // 状态 2: 执行休眠
            // ============================================================
            case STATE_GO_SLEEP:
            for(unsigned char k=0; k<6; k++) 
                {
                    LED_TOGGLE;     // 翻转灯的状态
                    DelayMs(10);    // 延时 (慢闪)
                }
                Sys_EnterSleep();       // 调用封装好的休眠函数 (程序会停在这里睡觉)
                
                // 醒来后，流程继续往下走
                sys_state = STATE_WAKE_INIT; // 醒来后，回到初始化状态
                break;
        }
    }
}