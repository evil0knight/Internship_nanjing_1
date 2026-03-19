#include "sleep_wake.h"

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
void Sys_EnterSleep(void)
{
    // 1. 关外设，准备睡觉
    LED_OFF;
    Radio_Sleep();
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
    Radio_Wake();
    EPIF0 = 0x90;   
    INTCON = 0B11000000; //GIE,PEIE使能
    //TIM4IER=1;
    FSM_SendEvent(EV_WAKE);
}