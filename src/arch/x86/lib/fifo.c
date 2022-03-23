#include "fifo.h"
#include "global.h"
#include "interrupt.h"
#include "stdint.h"


/* init_fifo
* 初始化fifo缓冲区
* fifo :指向fifo缓冲区地址
* type :fifo类型,只能是8,16,32,64之一
* size :缓冲区大小(可容纳的元素数)
*/
void init_fifo(struct FIFO* fifo,void* buf,int type,int size)
{
    fifo->type = type;
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
    if(fifo->free == 0) /* 没有空余 */
    {
        fifo->flage = 0x01;
        intr_set_status(old_status);
        return -1;
    }
    fifo->free--;
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
        default:
            intr_set_status(old_status);
            return -1;
    }
    fifo->nw = (fifo->nw + 1 == fifo->size ? 0 : fifo->nw + 1);
    intr_set_status(old_status);
    return 0;
}


int fifo_get(struct FIFO* fifo,void* data)
{
    enum intr_status old_status = intr_disable();
    if(fifo->free == fifo->size)
    {
        intr_set_status(old_status);
        return -1;
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
    fifo->nr = (fifo->nr + 1 == fifo->size ? 0 : fifo->nr + 1);
    intr_set_status(old_status);
    return 0;
}

bool fifo_empty(struct FIFO* fifo)
{
    return (fifo->free == fifo->size ? true : false);
}