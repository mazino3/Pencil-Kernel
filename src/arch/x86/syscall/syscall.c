#include "syscall.h"

#include "debug.h"
#include "global.h"
#include "graphic.h"
#include "interrupt.h"
#include "list.h"
#include "message.h"
#include "stdint.h"
#include "stdio.h"
#include "string.h"
#include "thread.h"
#include "task.h"

/* 重置msg */
void resetmsg(struct MESSAGE* msg)
{
    memset(msg,0,sizeof(struct MESSAGE));
    return;
}

/* deadlock
* 判断从src发送到dst是否会死锁
* 
*/


PRIVATE bool deadlock(pid_t src,pid_t dst)
{
    struct task_struct* pthread = pid2thread(dst);
    while(1)
    {
        if(pthread->status == TASK_SENDING)
        {
            if(pthread->send_to == src)
            {
                /* 死锁 */
                char str[30];
                sprintf(str,"src:%s -> dst:%s dead lock",pid2thread(src)->name,pid2thread(dst)->name);
                vput_str((void*)0xe0000000,ScrnX,0,0,0x00ff0000,str);
                // PANIC("dead lock!");
                // while(1);
                return true;
            }
            pthread = pid2thread(pthread->send_to);
            if(pthread == NULL)
            {
                return false;
            }
        }
        else
        {
            break;
        }
    }
    return false;
}

/* 发送消息
* 如果dst进程在等待消息,把消息复制给它,并解除阻塞
* 否则将发送者加入dst的队列,并阻塞
*/
PRIVATE uint32_t msg_send(pid_t dst,struct MESSAGE* msg)
{
    struct task_struct* sender;
    struct task_struct* pdest;
    sender = running_thread();
    pdest = pid2thread(dst);
    ASSERT(pdest != NULL);
    ASSERT(sender != pdest);
    msg->source = sender->pid;
    /* 判断是否死锁 */
    if(deadlock(sender->pid,dst))
    {
        return 1;
    }

    /* 对方正准备接收消息 */
    if(pdest->status == TASK_RECEIVING && (pdest->recv_from == ANY || pdest->recv_from == sender->pid))
    {
        /* 消息复制到当前进程pcb */
        memcpy(&(sender->msg),msg,sizeof(struct MESSAGE));
        /* 加入队列 */
        ASSERT(sender->send_tag.data == sender);
        ASSERT(!list_find(&(pdest->sender_list),&(sender->send_tag)));
        list_append(&(pdest->sender_list),&(sender->send_tag));
        /* 唤醒对方 */
        thread_unblock(pdest);
        thread_block(TASK_SENDING); /* 统一阻塞自己 */
        return 0;
    }
    /* 对方还没准备接收 */
    else
    {
        /* 消息复制到当前进程pcb */
        memcpy(&(sender->msg),msg,sizeof(struct MESSAGE));
        sender->send_to = dst;
        /* 加入队列 */
        ASSERT(sender->send_tag.data == sender);
        list_append(&(pdest->sender_list),&(sender->send_tag));

        thread_block(TASK_SENDING);
        ASSERT(!list_find(&(pdest->sender_list),&(sender->send_tag)));
        sender->send_to = NO_TASK;
        resetmsg(&(sender->msg));
        return 0;
    }
    return 1;
}

/* list_traversal的回调函数pid_check */
PRIVATE bool pid_check(struct list_elem* pelem,uint32_t pid)
{
    return (((struct task_struct*)(pelem->data))->pid == pid);
}

/*
* 接收消息
* 如果发送队列为空,说明没有进程向它发送消息,就阻塞,直到收到消息
* 如果发送队列不为空,就从队列开头获取消息
*/
int msg_recv(pid_t src,struct MESSAGE* msg)
{
    struct task_struct* psrc;
    struct task_struct* receiver;
    psrc = pid2thread(src);
    receiver = running_thread();

    ASSERT(psrc != receiver);
    receiver->recv_from = src;

    /* 从任意进程接收消息 */
    if(src == ANY)
    {
        if(list_empty(&(receiver->sender_list)))
        {
            thread_block(TASK_RECEIVING);
        }
        psrc = list_pop(&(receiver->sender_list))->data;
    }
    /* 从特定进程接收 */
    else
    {
        struct list_elem* src_elem;
        do
        {
            src_elem = list_traversal(&(receiver->sender_list),pid_check,src);
            if(src_elem == NULL)
            {
                thread_block(TASK_RECEIVING);
            }
        }while(src_elem == NULL);
        psrc = ((struct task_struct*)(src_elem->data));
        list_remove(src_elem);
    }
    ASSERT(psrc != NULL);
    memcpy(msg,&(psrc->msg),sizeof(struct MESSAGE));
    psrc->send_to = NO_TASK;
    if(psrc->status == TASK_SENDING)
    {
        thread_unblock(psrc);
    }
    receiver->recv_from = NO_TASK;
    return 0;
}

uint32_t sys_sendrec(int function,pid_t src_dst,struct MESSAGE* msg)
{
    enum intr_status old_status = intr_disable();
    uint32_t res = 1;
    if(src_dst < TASKPID_END && src_dst > NO_TASK)
    {
        src_dst = pid_table[src_dst];
    }
    switch(function)
    {
        case SEND:
            res = msg_send(src_dst,msg);
            break;
        case RECEIVE:
            res = msg_recv(src_dst,msg);
            break;
        case BOTH:
            res = msg_send(src_dst,msg);
            if(res == 0)
            {
                res = msg_recv(src_dst,msg);
            }
            break;
        default:
            ASSERT((function == SEND) || (function == RECEIVE) || (function == BOTH));
            break;
    }
    intr_set_status(old_status);
    return res;
}