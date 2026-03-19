// Project:  CAT2PRO
// Device:   FT61FC4X
// Memory:   PROM=4Kx14, SRAM=0.5KB, EEPROM=128B
// Description: 433MHz 水阀无线接收控制器
//              分层架构：Drivers / Modules / Protocol / App

#include "app_fsm.h"
#include "../Drivers/uart.h"
#include "../Modules/motor.h"
#include "../Modules/radio.h"
#include "../Modules/key.h"
#include "../Drivers/uart.h"
#include "../Drivers/timer.h"

#include "SYSCFG.h"

/*-------------------------------------------------
 * Function: interrupt ISR
 * Purpose:  全局中断入口
 -------------------------------------------------*/
void interrupt ISR(void)
{
    /* TIM4 更新中断 → 1ms 时基 */
    if (T4UIE && T4UIF) {
        T4UIF = 1;                  /* 写1清标志 */
        Timer_ISR();
    }

    /* UART RX 中断 */
    if(URRXNE && RXNEF) {
       UART_ISR();
       NOP();
    }

}

/*-------------------------------------------------
 * Function: POWER_INITIAL
 * Purpose:  GPIO、时钟上电初始化
 -------------------------------------------------*/
void POWER_INITIAL(void)
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
 * Function: main
 * Purpose:  系统入口：初始化所有模块，进入主循环
 -------------------------------------------------*/
void main(void)
{
    POWER_INITIAL();

    Timer_Init();       /* 1ms 时基（TIM4）*/
    UART_Init();        /* 9600 baud, PA6 TX / PA7 RX */
    Radio_Init();       /* 433 模块 AT 指令配置 */
    INTCON = 0B11000000;//统一开启中断
    LED_ON;
    DelayMs(50);

    while(1) {
        // 2. 只有一件事：如果中断抛出了事件，就查表处理它
        if(g_system_evt != EV_NONE) {
            SystemEvent temp_evt = g_system_evt;
            g_system_evt = EV_NONE; // 清除事件标志
            
            FSM_Process(temp_evt); // 查状态机表，执行动作
        }
        
    }
}
