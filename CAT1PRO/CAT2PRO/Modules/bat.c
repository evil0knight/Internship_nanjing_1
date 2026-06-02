#include "bat.h"

unsigned char Check_Battery_3_Stages() {
    unsigned char result = BATT_HIGH;

    // 1. 切换到 Bank 3 以访问 LVDCON0
    BSREG = 3; 

    // 2. 第一步：检测 3.0V 档位
    // 设置 LVDL=101 (3.0V), LVDEN=1 (开启模块)
    LVDCON0 = 0x15; // 0001 0101
    
    // 等待一小会儿让比较器稳定 
    DelayMs(20);

    if (LVDCON0 & 0x08) { // 如果 LVDW == 1，说明电压 < 3.0V
        
        // 3. 第二步：检测 2.8V 档位
        // 设置 LVDL=100 (2.8V), LVDEN=1
        LVDCON0 = 0x14; // 0001 0100
        
        DelayMs(20);

        if (LVDCON0 & 0x08) { // 如果 LVDW 依然为 1，说明电压 < 2.8V
            result = BATT_LOW;
        } else {
            result = BATT_MEDIUM; // 电压在 2.8V 和 3.0V 之间
        }
    } else {
        result = BATT_HIGH; // 电压 > 3.0V
    }

    // 检测完成后可以关闭 LVD 以省电
    LVDCON0 &= ~0x10; 
    
    // 切回 Bank 0 (通常主程序在 Bank 0)
    BSREG = 0; 
    
    return result;
}