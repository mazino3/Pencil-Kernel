#ifndef __SYNC_H__
#define __SYNC_H__

#include "list.h"
#include "stdint.h"

struct semaphore
{
    volatile uint32_t value;       /* 信号量的状态 */
    struct list waiters; /* 等待此信号的线程 */
};

struct lock
{
    struct task_struct* holder; /* 锁地持有者 */
    struct semaphore semaphore; /* 信号量 */
    uint32_t holder_repeat_nr;  /* 持有者重复申请锁的次数 */
};

void sema_init(struct semaphore* psema,uint8_t value);
void lock_init(struct lock* plock);
void sema_down(struct semaphore* psema);
void sema_up(struct semaphore* psema);
void lock_acquire(struct lock* plock);
void lock_release(struct lock* plock);

#endif /* __SYNC_H__ */