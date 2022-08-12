#include "global.h"

enum TASKPID
{
    ANY = 0,
    NO_TASK = 1,
    MAIN,
    MM,
    TTY,
    VIEW,
    TASKPID_END,
};

extern pid_t pid_table[TASKPID_END];
void init_task();

void MM_task ();
void VIEW_task(void* arg);
void Type_task(void* arg);

void k_thread_a(void* arg);
void View_thread(void* arg);
void k_thread_c(void* arg);
void u_prog_a(void);
void task_a(void);
