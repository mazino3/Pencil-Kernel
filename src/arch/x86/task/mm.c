#include "memory.h"
#include "api.h"
#include "message.h"
#include "syscall.h"
#include "task.h"

void MM_task()
{
    struct MESSAGE msg;
    pid_t source;
    void* ret_addr;
    while(1)
    {
        resetmsg(&msg);
        source = NO_TASK;
        send_recv(RECEIVE,ANY,&msg);
        source = msg.source;
        ret_addr = NULL;
        switch(msg.type)
        {
            case MM_MALLOC:
                ret_addr = mm_malloc(msg.msg1.m1i1,pid2thread(source));
                msg.msg2.m2p1 = ret_addr;
                send_recv(SEND,msg.source,&msg);
                break;
            case MM_FREE:
                mm_free(msg.msg2.m2p1,pid2thread(msg.source));
                break;
        }
    }
}