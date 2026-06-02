#ifndef BAT_H
#define BAT_H

#include "SYSCFG.h"
#include "../Drivers/timer.h"
#define BATT_HIGH    0x03  // 电压 > 3.0V
#define BATT_MEDIUM  0x02  // 电压在 2.8V ~ 3.0V 之间
#define BATT_LOW     0x01  // 电压 < 2.8V

unsigned char Check_Battery_3_Stages(void);

#endif