#ifndef LED_H
#define LED_H

#include "SYSCFG.h"
#include "../Drivers/timer.h"

#define LED_OFF     PORTAbits.PA1 = 0
#define LED_ON      PORTAbits.PA1 = 1
#define LED_TOGGLE  PORTAbits.PA1 = (PORTAbits.PA1 == 1 ? 0 : 1)

void led_fast_flashing(void); /* LED 快闪 */
void led_slow_flashing(void); /* LED 慢闪 */

#endif /* LED_H */
