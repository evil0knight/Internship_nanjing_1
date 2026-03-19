#ifndef MOTOR_H
#define MOTOR_H

#include "../Drivers/timer.h"

/*-------------------------------------------------
 * 阀门电机引脚定义（与 CAT1PRO 保持一致）
 * OPENP=PB2  OPENS=PB1  CLOSEP=PB0  CLOSES=PA0
 -------------------------------------------------*/
#define MOTOR_OPENP     PORTBbits.PB2   /* 开到位检测（输入）*/
#define MOTOR_OPENS     PORTBbits.PB1   /* 驱动开阀（输出）  */
#define MOTOR_CLOSEP    PORTBbits.PB0   /* 关到位检测（输入）*/
#define MOTOR_CLOSES    PORTAbits.PA0   /* 驱动关阀（输出）  */

/*-------------------------------------------------
 * 电机运行状态
 -------------------------------------------------*/
typedef enum {
    MOTOR_IDLE    = 0,
    MOTOR_OPENING,
    MOTOR_CLOSING
} MotorState;

/*-------------------------------------------------
 * 接口声明
 -------------------------------------------------*/
void       Motor_Init(void);
void       Motor_Open(void);
void       Motor_Close(void);
void       Motor_Stop(void);
MotorState Motor_GetState(void);

/* 主循环中轮询：监测限位开关，超时保护 */
void       Motor_Task(void);

#endif /* MOTOR_H */
