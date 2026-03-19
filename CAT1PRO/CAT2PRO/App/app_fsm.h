#ifndef _APP_FSM_H_
#define _APP_FSM_H_

// 系统状态定义
typedef enum {
    ST_SLEEP,           // 睡眠
    ST_WORKING,         // 工作
    ST_PAIRING,         // 对码
    ST_MOTOR_RUNNING    // 电机运行中
} SystemState;

// 系统事件定义（由中断或底层产生）
typedef enum {
    EV_NONE = 0,
    EV_WAKE,         // 唤醒事件
    EV_TIMEOUT,      // 超时事件
    EV_LONG_PRESS,   // 长按2秒事件
    EV_PAIR_SUCCESS, // 对码包校验通过事件
    EV_PAIR_FAIL,    // 对码失败或终止
    EV_CMD_OPEN,     // 收到开阀指令
    EV_CMD_CLOSE,    // 收到关阀指令
    EV_LIMIT_HIT     // 限位开关到位
} SystemEvent;

// 状态转移项结构
typedef struct {
    SystemState cur;
    SystemEvent evt;
    SystemState next;
    void (*action)(void);
} FSM_Table;

extern SystemState g_current_state;
extern volatile SystemEvent g_system_evt; // 全局事件变量

void FSM_Process(SystemEvent evt);
void FSM_SendEvent(SystemEvent evt); // 供中断调用

#endif
