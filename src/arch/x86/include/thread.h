#ifndef __THREAD_H__
#define __THREAD_H__

#include "bitmap.h"
#include "global.h"
#include "list.h"
#include "memory.h"
#include "message.h"
#include "stdint.h"

typedef void thread_function(void*);

/* 线程状态 */
enum task_status
{
    TASK_RUNNING,   /* 运行态 */
    TASK_READY,     /* 就绪态 */
    TASK_BLOCKED,   /* 阻塞态 */
    TASK_SENDING,   /* 发送消息状态 */
    TASK_RECEIVING, /* 接收消息状态 */
    TASK_WAITING,
    TASK_HANGING,
    TASK_DIED,
};

/* 中断栈 */
struct intr_stack
{
    /* 低地址 */

    /* 以下由中断处理程序压入栈 */
    uint32_t vector_no;
    /* pushad入栈的寄存器 */
    uint32_t edi;
    uint32_t esi;
    uint32_t ebp;
    uint32_t _esp; /* esp会被popad忽略 */
    uint32_t ebx;
    uint32_t edx;
    uint32_t ecx;
    uint32_t eax;
    /* 手动入栈的寄存器 */
    uint32_t gs;
    uint32_t fs;
    uint32_t es;
    uint32_t ds;
    /* 以下由cpu特权级由低到高时自动压入 */
    uint32_t err_code;  /* 错误码 */
    void (*eip) (void); /* eip指针 */
    uint32_t cs;        /* cs寄存器 */
    uint32_t eflags;    /* eflages寄存器 */
    void* esp;          /* 栈指针 */
    uint32_t ss;        /* ss段寄存器 */

    /* 高地址 */
};

/* 线程栈 */
struct thread_stack
{
    /* ABI规范要求保护下面寄存器的值 */
    uint32_t ebp;
    uint32_t ebx;
    uint32_t edi;
    uint32_t esi;
    /* 在线中程执行的函数 */
    void (*eip)(thread_function* function,void* arg);
    /* 以下是第一次上cpu是用的 */
    void* (return_addr); /* 占位的,没用 */
    thread_function* func;
    void* func_arg;
};

/* 程序控制块pcb */
struct task_struct
{
    uint32_t* self_kstack;            /* 线程内核栈指针 */
    volatile enum task_status status; /* 状态 */
    pid_t pid;                        /* 进程或线程 pid */
    char name[16];                    /* 名称 */
    uint8_t priority;                 /* 优先级 */
    uint8_t ticks;                    /* 在CPU上运行的时间 */
    uint32_t elapsed_ticks;           /* 总共运行的时间 */

    struct list_elem all_tag;         /* 用于加入全部线程队列 */
    struct list_elem general_tag;     /* 用于加入就绪线程队列 */

    uint32_t* page_dir;               /* 线程的页表 */
    struct MEMMAN prog_vaddr;         /* 进程的虚拟地址 */
    struct mem_desc u_desc[MEM_DESCS];

    struct MESSAGE msg;               /* 进程消息体 */
    pid_t send_to;                    /* 记录进程想要向谁发送消息 */
    pid_t recv_from;                  /* 记录进程想要从谁获取消息 */
    int int_msg;                      /* 如果进程在等待中断发生,用于记录中断号 */
    struct list sender_list;          /* 如果有进程A向这个进程发送消息,但本进程没有要接收消息,进程A将自己的send_tag加入这个队列 */
    struct list_elem send_tag;

    uint32_t stack_magic;             /* 用于检测是否栈溢出 */
};

struct pid_pool
{
    struct bitmap bitmap;
    pid_t start_pid;
    // pid_t pid;
    struct lock lock;
};

extern struct list ready_list;
extern struct list all_list;

void init_thread();
void thread_init(struct task_struct* thread,char* name,uint8_t priority);
struct task_struct* running_thread();
void kernel_thread(thread_function* func,void* arg);
void thread_create(struct task_struct* thread,thread_function func,void* arg);
struct task_struct* thread_start(char* name,uint8_t priority,thread_function func,void* arg);
void schedule();

void thread_block(enum task_status status);
void thread_unblock(struct task_struct* thread);

struct task_struct* pid2thread(pid_t pid);

extern void switch_to(uint32_t** cur_kstack,uint32_t** next_kstack);
#endif /* __THREAD_H__ */
