#include "fifo.h"
#include "debug.h"
#include "global.h"
#include "interrupt.h"
#include "stdint.h"
#include "sync.h"


/* init_fifo
* 初始化fifo缓冲区
* fifo :指向fifo缓冲区地址
* type :fifo类型,只能是8,16,32,64之一
* size :缓冲区大小(可容纳的元素数)
*/
void init_fifo(struct FIFO* fifo,void* buf,int type,int size)
{
    lock_init(&(fifo->lock));
    fifo->producer = NULL;
    fifo->consumer = NULL;
    fifo->type = type;
    switch(type)
    {
        case 8:
            fifo->buf8 = buf;
            break;
        case 16:
            fifo->buf16 = buf;
            break;
        case 32:
            fifo->buf32 = buf;
            break;
        case 64:
            fifo->buf64 = buf;
            break;
    }
    fifo->size = size;
    fifo->free = size;
    fifo->nr = 0;
    fifo->nw = 0;
}

/* fifo_put
* 向缓冲区中存放数据
* fifo :指向fifo缓冲区
* data :要存放的数据
*/
int fifo_put(struct FIFO* fifo,void* data)
{
    enum intr_status old_status = intr_disable();

    while(fifo->free == 0) /* 没有空余 */
    {
        lock_acquire(&(fifo->lock));          /* 获取锁 */
        fifo->producer = running_thread(); /* 生产者置为当前线程 */
        thread_block(TASK_BLOCKED);        /* 阻塞生产者 */
        lock_release(&(fifo->lock));          /* 被唤醒后释放锁 */
    }
    fifo->free--;
    ASSERT(fifo->type == 8 || fifo->type == 16 || fifo->type == 32 || fifo->type == 64);
    switch(fifo->type)
    {
        case 8:
            fifo->buf8[fifo->nw] = *((uint8_t*)data);
            break;
        case 16:
            fifo->buf16[fifo->nw] = *((uint16_t*)data);
            break;
        case 32:
            fifo->buf32[fifo->nw] = *((uint32_t*)data);
            break;
        case 64:
            fifo->buf64[fifo->nw] = *((uint64_t*)data);
            break;
    }
    fifo->nw = (fifo->nw + 1) % fifo->size;
    if(fifo->consumer != NULL) /* 有生产者在此等待,唤醒生产者 */
    {
        thread_unblock(fifo->consumer);
        fifo->consumer = NULL;
    }
    intr_set_status(old_status);
    return 0;
}


int fifo_get(struct FIFO* fifo,void* data)
{
    enum intr_status old_status = intr_disable();

    ASSERT(fifo->type == 8 || fifo->type == 16 || fifo->type == 32 || fifo->type == 64);
    while(fifo->free == fifo->size) /* 缓冲区是空的 */
    {
        lock_acquire(&(fifo->lock));
        fifo->consumer = running_thread();
        thread_block(TASK_BLOCKED);
        lock_release(&(fifo->lock));
    }
    fifo->free++;
    switch(fifo->type)
    {
        case 8:
            *((uint8_t*)data) = fifo->buf8[fifo->nr];
            break;
        case 16:
            *((uint16_t*)data) = fifo->buf16[fifo->nr];
            break;
        case 32:
            *((uint32_t*)data) = fifo->buf32[fifo->nr];
            break;
        case 64:
            *((uint64_t*)data) = fifo->buf64[fifo->nr];
            break;
    }
    fifo->nr = (fifo->nr + 1) % fifo->size;
    if(fifo->producer != NULL)
    {
        thread_unblock(fifo->producer);
        fifo->producer = NULL;
    }
    intr_set_status(old_status);
    return 0;
}

bool fifo_empty(struct FIFO* fifo)
{
    return (fifo->free == fifo->size);
}

bool fifo_fill(struct FIFO* fifo)
{
    return (fifo->free == 0);
}