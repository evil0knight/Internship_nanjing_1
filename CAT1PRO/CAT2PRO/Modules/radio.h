#ifndef RADIO_H
#define RADIO_H

#include "../Drivers/uart.h"

// 如果定义了下面这行，则开启 AT 指令配置地址功能
// 如果注释掉，则跳过相关代码
#define CONFIG_RADIO_ADDR_VIA_AT
#define SELF_ADR        0XFFFF
/*-------------------------------------------------
 * 433 模块控制引脚
 * PA4 = LED/唤醒检测（外部中断输入，下降沿）
 * PC1 = SLEEP 控制（0=工作，1=休眠）
 -------------------------------------------------*/
#define RADIO_WAKE_PIN      PA4
#define RADIO_SLEEP_PIN     PC1

#define RADIO_SLEEP()       do { PC1 = 1; } while(0)
#define RADIO_WAKE()        do { PC1 = 0; } while(0)

/*-------------------------------------------------
 * 接口声明
 -------------------------------------------------*/
void Radio_Init(void);              /* AT 指令初始化 */
void Radio_Sleep(void);             /* 进入休眠（PC1=1）*/
void Radio_Wake(void);              /* 唤醒（PC1=0）*/
void Radio_SendATCmd(const char *cmd);  /* 发送 AT 指令并等待 OK */

/* 中断初始化：配置 PA4 外部中断（下降沿唤醒 MCU）*/
void Radio_IntInit(void);

#endif /* RADIO_H */
