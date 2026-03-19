#ifndef SLEEP_WAKE_H
#define SLEEP_WAKE_H

#include "SYSCFG.h"
#include "../App/app_fsm.h"     /* FSM_SendEvent, EV_WAKE */
#include "../Drivers/timer.h"   /* DelayMs                */
#include "led.h"                /* LED_OFF                */
#include "radio.h"              /* Radio_Sleep            */

void IO_INT_INITIAL(void);
void Sys_EnterSleep(void);

#endif /* SLEEP_WAKE_H */
