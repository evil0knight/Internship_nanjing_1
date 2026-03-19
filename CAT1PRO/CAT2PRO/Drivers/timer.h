#ifndef TIMER_H
#define TIMER_H

#include "SYSCFG.h"

void DelayUs(unsigned char Time);
void DelayMs(unsigned char Time);

void Timer_Init(void);
void Timer_Reset(void);

/* 在 ISR 中调用 */
void Timer_ISR(void);

#endif /* TIMER_H */
