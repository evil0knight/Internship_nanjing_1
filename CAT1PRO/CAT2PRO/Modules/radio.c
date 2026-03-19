#include "radio.h"

/*-------------------------------------------------
 * Function: Radio_Init
 * Purpose:  通过 AT 指令配置 433 模块
 -------------------------------------------------*/
void Radio_Init(void)
{
#ifdef CONFIG_RADIO_ADDR_VIA_AT
    UART_SendATCmd("AT+PWR=20");
    DelayMs(50);

    // Set UART baud rate 9600
    UART_SendATCmd("AT+UART=3,0");
    DelayMs(50);

    // Set frequency 434MHz
    UART_SendATCmd("AT+FEQ=434000000");
    DelayMs(50);

    // Set spreading factor (7-12, higher=longer range)
    UART_SendATCmd("AT+SF=10");
    DelayMs(50);

    // Set bandwidth (6-9, lower=longer range)
    UART_SendATCmd("AT+BW=9");
    DelayMs(50);

    // Set preamble length (0-6)
    UART_SendATCmd("AT+PB=2000");
    DelayMs(50);

    UART_SendATCmd("AT+MODE=1"); // 开启周期休眠
    DelayMs(50);

    UART_SendATCmd("AT+WT=2");   // 唤醒周期2秒 (发送方的前导码PB必须>2秒)
    DelayMs(50);

   //UART_SendATCmd_ADR(SELF_ADR);
    DelayMs(50); // 433模块保存参数需要时间

    // Save all settings
    UART_SendATCmd("ATW");
    DelayMs(50);
#else
    //没有开初始写入，不写入配置信息
#endif
    Radio_Wake();
}

/*-------------------------------------------------
 * Function: Radio_Sleep
 * Purpose:  PC1 置高，模块进入周期休眠
 -------------------------------------------------*/
void Radio_Sleep(void)
{
    RADIO_SLEEP();
}

/*-------------------------------------------------
 * Function: Radio_Wake
 * Purpose:  PC1 置低，模块持续工作
 -------------------------------------------------*/
void Radio_Wake(void)
{
    RADIO_WAKE();
}

/*-------------------------------------------------
 * Function: Radio_SendATCmd
 * Purpose:  经 UART 发送 AT 指令（追加 \r\n），轮询等待 OK
 -------------------------------------------------*/
void Radio_SendATCmd(const char *cmd)
{
    unsigned char i = 0;
    while (cmd[i] != '\0') {
        UART_SendByte((unsigned char)cmd[i]);
        i++;
    }
    UART_SendByte('\r');
    UART_SendByte('\n');
    /* TODO: 等待 "OK" 响应 */
}

/*-------------------------------------------------
 * Function: Radio_IntInit
 * Purpose:  配置 PA4 为 EINT0（双边沿），使能外部中断
 *           参考 CLAUDE.md 中 PA4 外部中断初始化例程
 -------------------------------------------------*/
void Radio_IntInit(void)
{
    /* TODO:
       EPS0   = 0B00000100;    // PA4 → EINT0
       EPS1   = 0B00000000;
       ITYPE0 = 0B00001100;    // 双边沿触发
       ITYPE1 = 0B00000000;
       EPIE0  = 0B00000001;    // 使能 EINT0
       INTCON = 0B11000000;    // GIE + PEIE
    */
}
