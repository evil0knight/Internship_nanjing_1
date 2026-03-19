#include "uart.h"
#include "../Modules/radio.h"  /* Radio_Wake */

/*-------------------------------------------------
 * 协议解析状态
 * 帧格式：[0xFF][src][func][data...][0xFE]
 * data 长度由 func 决定，无长度字段
 -------------------------------------------------*/
typedef enum {
    WAIT_HDR,   /* 等待帧头 0xFF */
    RX_SRC,     /* 接收源地址   */
    RX_FUNC,    /* 接收功能码   */
    RX_DATA,    /* 接收数据字节 */
    RX_TAIL     /* 等待帧尾 0xFE */
} ParserState;

/* 根据功能码返回数据字节数，未知功能码返回 0xFF（丢弃） */
static unsigned char func_data_len(unsigned char func)
{
    switch(func) {
        case FUNC_PAIR:    return 5;
        case FUNC_VALVE:   return 2;
        case FUNC_CONNECT: return 2;
        default:           return 0xFF;  /* 未知，丢弃 */
    }
}

/*-------------------------------------------------
 * Function: UART_Init
 * Purpose:  UART 初始化，9600 baud
 -------------------------------------------------*/
void UART_Init(void)
{
    PCKEN |= 0B00100000;    /* 使能 UART 时钟 */
    URIER  = 0B00000001;    /* 使能 RX 中断   */
    URLCR  = 0B00000001;    /* 8N1            */
    URMCR  = 0B00011000;
    URDLL  = 104;           /* 9600 @ 16MHz   */
    URDLH  = 0;
    TCF    = 1;
    AFP1   = 0;
    ODCON0 = 0B00000000;
}

/*-------------------------------------------------
 * Function: UART_ISR
 * Purpose:  接收中断帧解析，帧尾校验后分发事件
 * 帧格式：  [0xFF][src][func][data...][0xFE]
 * 地址过滤：源地址 == ADDR_SUB 直接丢弃
 * 对码帧：  func=FUNC_PAIR，5字节BCD地址（每字节=十进制位）
 -------------------------------------------------*/
void UART_ISR(void)
{
    static ParserState   ps       = WAIT_HDR;
    static unsigned char rx_buf[8]; /* [src][func][data0..4] */
    static unsigned char data_idx = 0;
    static unsigned char data_len = 0;

    if(URRXNE && RXNEF) {
        unsigned char b = URDATAL;

        switch(ps) {
            case WAIT_HDR:
                if(b == 0xFF) { ps = RX_SRC; }
                break;

            case RX_SRC:
                if(b == ADDR_SUB) { ps = WAIT_HDR; break; }  /* 拒收副面板 */
                rx_buf[0] = b;
                ps = RX_FUNC;
                break;

            case RX_FUNC:
                data_len = func_data_len(b);
                if(data_len == 0xFF) { ps = WAIT_HDR; break; } /* 未知功能码 */
                rx_buf[1] = b;
                data_idx  = 0;
                ps = (data_len > 0) ? RX_DATA : RX_TAIL;
                break;

            case RX_DATA:
                rx_buf[2 + data_idx] = b;
                if(++data_idx >= data_len) { ps = RX_TAIL; }
                break;

            case RX_TAIL:
                if(b == 0xFE) {
                    /* 帧尾正确，分发 */
                    if(rx_buf[1] == FUNC_VALVE) {
                        /* [0x00][0x01]=开，[0x00][0x00]=关 */
                        if(rx_buf[2] == 0x00 && rx_buf[3] == 0x01)
                            FSM_SendEvent(EV_CMD_OPEN);
                        else if(rx_buf[2] == 0x00 && rx_buf[3] == 0x00)
                            FSM_SendEvent(EV_CMD_CLOSE);
                    }
                    else if(rx_buf[1] == FUNC_PAIR && g_current_state == ST_PAIRING) {
                        /* 5字节BCD → 16位地址，e.g.[0,1,2,3,4] → 01234 */
                        unsigned int addr = 0;
                        unsigned char i;
                        for(i = 0; i < 5; i++) {
                            addr = addr * 10 + rx_buf[2 + i];
                        }
                        UART_SendATCmd_ADR(addr);       /* 先写地址 */
                        FSM_SendEvent(EV_PAIR_SUCCESS); /* 再抛事件 */
                    }
                }
                ps = WAIT_HDR;
                break;

            default:
                ps = WAIT_HDR;
                break;
        }
    }
}

/*-------------------------------------------------
 * 内部辅助：无符号整数转字符串
 -------------------------------------------------*/
static unsigned char uint_to_str(unsigned int val, char *buf)
{
    char tmp[6] = {0};
    unsigned char i = 0, j = 0;
    if(val == 0) { buf[0] = '0'; buf[1] = '\0'; return 1; }
    while(val > 0) { tmp[i++] = '0' + (val % 10); val /= 10; }
    while(i > 0)   { buf[j++] = tmp[--i]; }
    buf[j] = '\0';
    return j;
}

/*-------------------------------------------------
 * Function: UART_SendByte
 -------------------------------------------------*/
void UART_SendByte(unsigned char data)
{
    TXEF    = 0;
    URDATAL = data;
    while(!TCF) {}
}

/*-------------------------------------------------
 * Function: UART_SendATCmd
 * Purpose:  发送 AT 指令字符串，自动追加 \r\n
 -------------------------------------------------*/
void UART_SendATCmd(const char *cmd)
{
    unsigned char j = 0;
    while(cmd[j] != '\0') {
        UART_SendByte(cmd[j]);
        j++;
    }
    UART_SendByte(0x0D);
    UART_SendByte(0x0A);
}

/*-------------------------------------------------
 * Function: UART_SendATCmd_ADR
 * Purpose:  发送 AT+ADR=xxxx\r\n
 -------------------------------------------------*/
void UART_SendATCmd_ADR(unsigned int addr)
{
    char buf[20] = "AT+ADR=";
    uint_to_str(addr, buf + 7);
    UART_SendATCmd(buf);
}

/*-------------------------------------------------
 * Function: UART_SendFrame（内部辅助）
 * Purpose:  组装并发送应答帧
 * 帧格式：  [0xFF][ADDR_SELF][func][data...][0xFE]
 -------------------------------------------------*/
static void UART_SendFrame(unsigned char func, const unsigned char *data, unsigned char len)
{
    unsigned char i;
    UART_SendByte(0xFF);
    UART_SendByte(ADDR_SELF);
    UART_SendByte(func);
    for(i = 0; i < len; i++) {
        UART_SendByte(data[i]);
    }
    UART_SendByte(0xFE);
}

/*-------------------------------------------------
 * Function: UART_SendConnect
 * Purpose:  对码完成后发送连接信号应答帧
 * 帧：[0xFF][0xAC][0x04][0x00][0x00][0xFE]
 *              ↑     ↑     ↑     ↑
 *           执行器  连接  保留  保留
 -------------------------------------------------*/
void UART_SendConnect(void)
{
    unsigned char data[2] = {0x00, 0x00};
    UART_SendFrame(FUNC_CONNECT, data, 2);
}

/*-------------------------------------------------
 * Function: UART_SendValveStatus
 * Purpose:  电机到位后返回阀门状态帧
 * 帧：[0xFF][0xAC][0x03][0x00][state][0xFE]
 *              ↑     ↑     ↑     ↑
 *           执行器  阀门  保留  0x01=开到位
 *                               0x00=关到位
 -------------------------------------------------*/
void UART_SendValveStatus(unsigned char is_open)
{
    unsigned char data[2];
    data[0] = 0x00;
    data[1] = is_open ? 0x01 : 0x00;
    UART_SendFrame(FUNC_VALVE, data, 2);
}

/*-------------------------------------------------
 * Function: uart_EnterMode
 -------------------------------------------------*/
void uart_EnterMode(void)
{
    Radio_Wake();
    DelayMs(20);
}
