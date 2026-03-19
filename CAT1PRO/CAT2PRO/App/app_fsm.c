#include "app_fsm.h"
#include "../Drivers/uart.h"
#include "../Modules/motor.h"
#include "../Modules/radio.h"
#include "../Modules/key.h"
#include "../Drivers/timer.h"
#include "../Modules/sleep_wake.h"
#include "../Modules/led.h"

SystemState g_current_state = ST_WORKING;
volatile SystemEvent g_system_evt = EV_NONE;
static unsigned char s_valve_open = 0;  /* 记录上一次阀门动作方向 */

// --- 动作函数封装 ---
void Do_WakeUp()     { Radio_Wake(); Timer_Reset(); LED_ON; }
void Do_GoSleep()    { Motor_Stop(); Radio_Sleep(); Sys_EnterSleep(); }
void Do_PairStart()  { uart_EnterMode(); Timer_Reset(); }
void Do_PairDone()   { UART_SendConnect(); }
void Do_MotorOpen()  { s_valve_open = 1; Motor_Open();  Timer_Reset(); }
void Do_MotorClose() { s_valve_open = 0; Motor_Close(); Timer_Reset(); }
void Do_MotorStop()  { Motor_Stop(); UART_SendValveStatus(s_valve_open); }
void Do_MotorDone()  { Motor_Stop(); UART_SendValveStatus(s_valve_open); led_fast_flashing(); }

// --- 状态转移表 ---
const FSM_Table sys_fsm[] = {
    {ST_SLEEP,         EV_WAKE,         ST_WORKING,       Do_WakeUp},
    {ST_WORKING,       EV_TIMEOUT,      ST_SLEEP,         Do_GoSleep},
    {ST_WORKING,       EV_LONG_PRESS,   ST_PAIRING,       Do_PairStart},
    {ST_WORKING,       EV_CMD_OPEN,     ST_MOTOR_RUNNING, Do_MotorOpen},
    {ST_WORKING,       EV_CMD_CLOSE,    ST_MOTOR_RUNNING, Do_MotorClose},
    {ST_PAIRING,       EV_PAIR_SUCCESS, ST_WORKING,       Do_PairDone},
    {ST_PAIRING,       EV_TIMEOUT,      ST_WORKING,       0},
    {ST_MOTOR_RUNNING, EV_TIMEOUT,      ST_WORKING,       Do_MotorStop},
    {ST_MOTOR_RUNNING, EV_LIMIT_HIT,    ST_WORKING,       Do_MotorDone},
};

#define FSM_SIZE (sizeof(sys_fsm)/sizeof(FSM_Table))

void FSM_SendEvent(SystemEvent evt) {
    g_system_evt = evt;
}

void FSM_Process(SystemEvent evt) {
    if(evt == EV_NONE) return;
    
    for(int i=0; i<FSM_SIZE; i++) {
        if(sys_fsm[i].cur == g_current_state && sys_fsm[i].evt == evt) {
            if(sys_fsm[i].action) sys_fsm[i].action();
            g_current_state = sys_fsm[i].next;
            break;
        }
    }
}
