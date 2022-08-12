#include "global.h"
#include "task.h"
#include "thread.h"

PUBLIC pid_t pid_table[TASKPID_END];

void init_task()
{
    pid_table[MM] = thread_start("MM",31,MM_task,NULL)->pid;
    pid_table[VIEW] = thread_start("VIEW",31,VIEW_task,NULL)->pid;
    pid_table[TTY] = thread_start("TTY",31,Type_task,NULL)->pid;
    return;
}