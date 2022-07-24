#include "task.h"

#include "apilib.h"
#include "message.h"
#include "syscall.h"
#include "thread.h"

void taskmgr_thread()
{
    struct MESSAGE msg;
    pid_t source;
    while(1)
    {
        resetmsg(&msg);
        source = NO_TASK;
        send_recv(RECEIVE,ANY,&msg);
        source = msg.source;
        switch(msg.type)
        {
            case TASKMGR_GETPID:
                msg.msg1.m1i1 = source;
                send_recv(SEND,source,&msg);
                break;
            case TASKMGR_YIELD:
                break;
            case TASKMGR_SLEEP:
                break;
        }
    }
}