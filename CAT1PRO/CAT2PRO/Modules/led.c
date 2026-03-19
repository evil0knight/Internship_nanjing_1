#include "led.h"

void led_fast_flashing(void)//LED快闪
{
    int i=0;
    for(i=0;i<7;i++)
    {
        LED_TOGGLE;
        DelayMs(50);
    }
}

void led_slow_flashing(void)//LED慢闪
{
    int i=0;
    for(i=0;i<7;i++)
    {
        LED_TOGGLE;
        DelayMs(100);
    }
}