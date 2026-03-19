#include "timer.h"
#include "../App/app_fsm.h"
#include "../Modules/led.h"
#include "../Modules/motor.h"

/*-------------------------------------------------
 * 1ms 全局时基
 -------------------------------------------------*/

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
 * Function: Timer_Init
 * Purpose:  配置 TIM4 产生 1ms 中断
 *           16MHz / 2^6 / (249+1) = 1000 Hz
 -------------------------------------------------*/
void Timer_Init(void)
{
    PCKEN |= 0B00001000;        /* 使能 TIM4 模块时钟      */
    TIM4CR1  = 0B00000101;      /* 系统时钟，计数器使能    */
    TIM4IER  = 0B00000001;      /* 更新中断使能            */
    TIM4SR   = 0;
    TIM4EGR  = 0;
    TIM4CNTR = 0;
    TIM4PSCR = 6;               /* 预分频 = 2^6 = 64       */
    TIM4ARR  = 249;             /* 自动重装 = 250，1ms中断 */
    /* 注：INTCON 在 main 统一开启，不在此处设置 */
}

volatile unsigned int g_timer_count = 0;
static unsigned int key_press_cnt = 0;
static unsigned int led_blink_cnt = 0;

void Timer_Reset() { g_timer_count = 0; }

// TIM4 1ms 中断服务程序
void Timer_ISR() {
    g_timer_count++;

    // 1. 超时事件捕获（10秒）
    if(g_timer_count >= 10000) {
        FSM_SendEvent(EV_TIMEOUT);
        g_timer_count = 0;
    }

    // 2. 按键事件捕获 (PB7)
    if(PORTBbits.PB7 == 0) {
        key_press_cnt++;
        if(key_press_cnt == 2000) {
            FSM_SendEvent(EV_LONG_PRESS);
        }
    } else {
        key_press_cnt = 0;
    }

    // 3. 限位开关检测（仅电机运行时，PB0=开到位，PB2=关到位）
    if(g_current_state == ST_MOTOR_RUNNING) {
        if(MOTOR_OPENP == 0 || MOTOR_CLOSEP == 0) {
            FSM_SendEvent(EV_LIMIT_HIT);
        }
        // 电机运行超时（5秒）
        if(g_timer_count >= 5000) {
            FSM_SendEvent(EV_TIMEOUT);
            g_timer_count = 0;
        }
    }

    // 4. 对码模式 LED 慢闪（每 500ms toggle）
    if(g_current_state == ST_PAIRING) {
        led_blink_cnt++;
        if(led_blink_cnt >= 500) {
            LED_TOGGLE;
            led_blink_cnt = 0;
        }
    } else {
        led_blink_cnt = 0;
    }
}
