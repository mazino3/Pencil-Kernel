#include "thread.h"
#include "debug.h"
#include "fifo.h"
#include "global.h"
#include "interrupt.h"
#include "list.h"
#include "memory.h"
#include "print.h"
#include "stdint.h"
#include "string.h"

struct task_struct* main_thread;

struct list ready_list;
struct list all_list;

struct list_elem* this_thread_tag;

static void make_main_thread();

void init_thread()
{
    list_init(&ready_list);
    list_init(&all_list);
    make_main_thread();
    return;
}

void thread_init(struct task_struct* thread,char* name,uint8_t priority)
{
    memset(thread,0,sizeof(*thread));
    strcpy(thread->name,name);
    if(thread == main_thread)
    {
        thread->status = TASK_RUNNING;
    }
    else
    {
        thread->status = TASK_READY;
    }
    thread->priority = priority;
    thread->self_kstack = ((uint32_t*)(((uint32_t)thread) + PG_SIZE)); /* 线程内核态下的栈顶地址 */
    thread->stack_magic = 0x12345678;
    return;
}

struct task_struct* running_thread()
{
    uint32_t esp;
    __asm__ __volatile__
    (
        "mov %%esp,%0;"
        :"=g"(esp)
        :
        :
    );
    return (struct task_struct*)(esp & 0xfffff000);
}

void kernel_thread(thread_function* func,void* arg)
{
    intr_enable();
    func(arg);
}

void thread_create(struct task_struct* thread,thread_function func,void* arg)
{
    /* 预留栈空间 */
    thread->self_kstack -= sizeof(struct intr_stack);
    /* 预留线程栈空间 */
    thread->self_kstack -= sizeof(struct thread_stack);

    struct thread_stack* kthread_stack;
    kthread_stack = ((struct thread_stack*)(thread->self_kstack));

    kthread_stack->eip = kernel_thread; /* kernel_thread是线程中执行的函数 */
    kthread_stack->func = func;
    kthread_stack->func_arg = arg;
    kthread_stack->ebp = 0;
    kthread_stack->ebx = 0;
    kthread_stack->esi = 0;
    kthread_stack->edi = 0;
    return;
}

struct task_struct* thread_start(char* name,uint8_t priority,thread_function func,void* arg)
{
    struct task_struct* thread = (struct task_struct*)get_kernel_page(1);
    thread_init(thread,name,priority);
    thread_create(thread,func,arg);
    /* 准备加入队列 */
    (thread->all_tag).data = thread;
    (thread->general_tag).data = thread;
    /* 加入就绪队列 */
    ASSERT(!list_find(&ready_list,&(thread->general_tag)));
    list_append(&ready_list,&(thread->general_tag));
    /* 加入线程队列 */
    ASSERT(!list_find(&all_list,&(thread->all_tag)));
    list_append(&all_list,&(thread->all_tag));
    return thread;
}

static void make_main_thread(void)
{
    main_thread = running_thread();
    thread_init(main_thread,"main",31);
    main_thread->all_tag.data = main_thread;
    main_thread->general_tag.data = main_thread;
    list_append(&all_list,&main_thread->all_tag);
    return;
}
void schedule()
{
    struct task_struct* cur_thread = running_thread();
    if(cur_thread->status == TASK_RUNNING)
    {
        /* 防止重复添加 */
        ASSERT(!(list_find(&ready_list,&(cur_thread->general_tag))));
        list_append(&ready_list,&(cur_thread->general_tag));
        if(cur_thread->ticks == 0)
        {
            cur_thread->ticks = cur_thread->priority;
        }
        cur_thread->status = TASK_RUNNING;
    }
    else
    {

    }
    struct task_struct* next = NULL;
    this_thread_tag = NULL;

    /* 就绪队列不能为空 */
    ASSERT(!(list_empty(&ready_list)));
    ASSERT(ready_list.tail.prev != &ready_list.head);
    this_thread_tag = list_pop(&ready_list);
    next = this_thread_tag->data;
    next->status = TASK_RUNNING;
    switch_to(cur_thread,next);
    return;
}

void thread_block(enum task_status status)
{
    ASSERT(status != TASK_RUNNING && status != TASK_READY);
    enum intr_status old_status = intr_disable();
    struct task_struct* cur_thread = running_thread();
    cur_thread->status = status;
    schedule();
    intr_set_status(old_status);
    return;
}

void thread_unblock(struct task_struct* pthread)
{
    enum intr_status old_status = intr_disable();
    if(pthread->status != TASK_READY)
    {
        ASSERT(!list_find(&ready_list,&(pthread->general_tag)));
        if(list_find(&ready_list,&(pthread->general_tag)))
        {
            PANIC("thread unblock: blocked thread in ready list");
        }
        list_push(&ready_list,&(pthread->general_tag));
        pthread->status = TASK_READY;
    };
    intr_set_status(old_status);
    return;
}