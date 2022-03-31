#include "sync.h"
#include "debug.h"
#include "interrupt.h"
#include "thread.h"

/* sema_init
* 初始化信号量
*/
void sema_init(struct semaphore* psema,uint8_t value)
{
    psema->value = value;
    list_init(&(psema->waiters));
    ASSERT(psema->value == value);
    return;
}

/* lock_init
* 初始化锁
*/
void lock_init(struct lock* plock)
{
    plock->holder = NULL;
    plock->holder_repeat_nr = 0;
    sema_init(&(plock->semaphore),1);
    return;
}

/* sema_down
* 信号量down 操作
*/
void sema_down(struct semaphore* psema)
{
    enum intr_status old_status = intr_disable();
    while(psema->value == 0)
    {
        ASSERT(!(list_find(&(psema->waiters),&(running_thread()->general_tag))));
        if(list_find(&(psema->waiters),&(running_thread()->general_tag)))
        {
            PANIC("sema down:thread blocked has been in waiters list!\n");
        }
        list_append(&(psema->waiters),&running_thread()->general_tag);
        thread_block(TASK_BLOCKED);
    }
    psema->value--;
    ASSERT(psema->value == 0);
    intr_set_status(old_status);
    return;
}

/* sema_up
* 信号量up操作
*/
void sema_up(struct semaphore* psema)
{
    enum intr_status old_status = intr_disable();
    ASSERT(psema->value == 0);
    if(!list_empty(&(psema->waiters)))
    {
        struct task_struct* blocked_thread = list_pop(&(psema->waiters))->data;
        thread_unblock(blocked_thread);
    }
    psema->value++;
    ASSERT(psema->value == 1);
    intr_set_status(old_status);
    return;
}

/* lock_acquire
* 获取锁
*/
void lock_acquire(struct lock* plock)
{
    if(plock->holder != running_thread())
    {
        sema_down(&(plock->semaphore));
        plock->holder = running_thread();
        ASSERT(plock->holder_repeat_nr == 0);
        plock->holder_repeat_nr = 1;
    }
    else
    {
        plock->holder_repeat_nr++;
    }
    return;
}

/* lock_release
* 释放锁
*/
void lock_release(struct lock* plock)
{
    ASSERT(plock->holder == running_thread());
    if(plock->holder_repeat_nr > 1)
    {
        plock->holder_repeat_nr--;
        return;
    }
    ASSERT(plock->holder_repeat_nr == 1);
    plock->holder = NULL;
    plock->holder_repeat_nr = 0;
    sema_up(&(plock->semaphore));
    return;
}