#ifndef UART_H
#define UART_H

#include "SYSCFG.h"
#include "../App/app_fsm.h"
#include "../Modules/led.h"

/*-------------------------------------------------
 * 地址码
 -------------------------------------------------*/
#define ADDR_MAIN   0xAAu   /* 主面板           */
#define ADDR_SUB    0xABu   /* 负面板（拒收）   */
#define ADDR_SELF   0xACu   /* 执行器（本机）   */

/*-------------------------------------------------
 * 功能码
 -------------------------------------------------*/
#define FUNC_PAIR     0x01u /* 对码（5字节BCD地址）   */
#define FUNC_TIME     0x02u /* 剩余时间（暂不使用）   */
#define FUNC_VALVE    0x03u /* 阀门控制               */
#define FUNC_CONNECT  0x04u /* 连接信号               */
#define FUNC_BATTERY  0x05u /* 剩余电量（暂不使用）   */

/*-------------------------------------------------
 * 接口声明
 -------------------------------------------------*/
void UART_Init(void);
void UART_ISR(void);
void uart_EnterMode(void);

void UART_SendByte(unsigned char data);
void UART_SendATCmd(const char *cmd);
void UART_SendATCmd_ADR(unsigned int addr);
void UART_SendConnect(void);                        /* 对码成功后发送连接信号  */
void UART_SendValveStatus(unsigned char is_open);   /* 电机完成后返回阀门状态  */

#endif /* UART_H */
