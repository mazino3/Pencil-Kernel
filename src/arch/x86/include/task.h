#include "global.h"
#define RESERVED_PID 31 /* pid 0 - 31,32pid reserved */

enum TASK_PID
{
    MAIN = 0,
    IDLE,
    MM,
    TASKMGR,
    VIEW,
};

extern pid_t task_table[RESERVED_PID + 1];

void MM_task ();
void taskmgr_thread();
void view_task(void* arg);
// void View_thread(void* arg);
void u_prog_a(void);
void task_a(void);
