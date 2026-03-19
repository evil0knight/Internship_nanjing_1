#include "motor.h"
#include "../App/app_fsm.h"

static MotorState s_motor_state = MOTOR_IDLE;

/*-------------------------------------------------
 * Function: Motor_Init
 * Purpose:  初始化阀门控制引脚为输出，初始全低
 -------------------------------------------------*/
void Motor_Init(void)
{
    /* TODO:
       TRISB &= ~0B00000111;   // PB0 PB1 PB2 输出
       TRISA &= ~0B00000001;   // PA0 输出
       PORTB &= ~0B00000111;
       PORTA &= ~0B00000001;
    */
}

/*-------------------------------------------------
 * Function: Motor_Open
 * Purpose:  驱动阀门开启
 -------------------------------------------------*/
void Motor_Open(void)
{
    Motor_Stop();
    s_motor_state = MOTOR_OPENING;
    MOTOR_OPENS = 1;
    MOTOR_CLOSES = 0;
}

/*-------------------------------------------------
 * Function: Motor_Close
 * Purpose:  驱动阀门关闭
 -------------------------------------------------*/
void Motor_Close(void)
{
    Motor_Stop();
    s_motor_state = MOTOR_CLOSING;
    MOTOR_OPENS = 0;
    MOTOR_CLOSES = 1;
}

/*-------------------------------------------------
 * Function: Motor_Stop
 * Purpose:  关断所有电机引脚
 -------------------------------------------------*/
void Motor_Stop(void)
{
    MOTOR_OPENS  = 0;
    MOTOR_CLOSES = 0;
    s_motor_state = MOTOR_IDLE;
}

/*-------------------------------------------------
 * Function: Motor_GetState
 -------------------------------------------------*/
MotorState Motor_GetState(void)
{
    return s_motor_state;
}
