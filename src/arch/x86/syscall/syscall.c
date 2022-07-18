#include "syscall.h"

#include "debug.h"
#include "global.h"
#include "graphic.h"
#include "list.h"
#include "message.h"
#include "stdint.h"
#include "stdio.h"
#include "string.h"
#include "thread.h"

/* 重置msg */
PRIVATE void resetmsg(struct MESSAGE* msg)
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
    sender->status = TASK_SENDING;
    running_thread()->msg.source = sender->pid;
    /* 判断是否死锁 */
    if(deadlock(sender->pid,dst))
    {
        char str[65];
        sprintf(str,"msg_send: %d -> %d deadlock!",sender->pid,dst);
        PANIC(str);
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
        return 0;
    }
    /* 对方还没准备接收 */
    else
    {
        /* 消息复制到当前进程pcb */
        // memcpy(&(sender->msg),m,sizeof(struct MESSAGE));
        sender->send_to = dst;
        /* 加入队列 */
        ASSERT(sender->send_tag.data == sender);
        ASSERT(!list_find(&(pdest->sender_list),&(sender->send_tag)));
        list_append(&(pdest->sender_list),&(sender->send_tag));
        thread_block(TASK_SENDING);
        sender->send_to = NO_TASK;
        resetmsg(&(sender->msg));
        return 0;
    }
    return 1;
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

    /* 从任意进程接收消息 */
    if(src == ANY)
    {
        if(list_empty(&(receiver->sender_list)))
        {
            receiver->recv_from = ANY;
            thread_block(TASK_RECEIVING);
        }
        psrc = list_pop(&(receiver->sender_list))->data;
        memcpy(msg,&(psrc->msg),sizeof(struct MESSAGE));
        thread_unblock(psrc);
        return 0;
    }
    /* 从特定进程接收 */
    else
    {

    }
    return 1;
}

uint32_t sys_sendrec(int function,pid_t src_dst,struct MESSAGE* msg)
{
    uint32_t ret = 1;
    if(function == SYS_SEND || function == SYS_BOTH)
    {
        ret = msg_send(src_dst,msg);
        if(ret != 0)
        {
            return ret;
        }
    }
    if(function == SYS_RECEIVE || function == SYS_BOTH)
    {
        ret = msg_recv(src_dst,msg);
        if(ret != 0)
        {
            return ret;
        }
    }
    return 0;
}