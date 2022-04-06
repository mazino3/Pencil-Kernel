#include "process.h"
#include "thread.h"

void start_process(void* process_name)
{
    void* func = process_name;
    struct task_struct* cur = running_thread();
    cur->self_kstack += sizeof(struct thread_stack);
    struct intr_stack* proc_stack = (struct intr_stack*)cur->self_kstack;	 
    proc_stack->edi = 0;
    proc_stack->esi = 0;
    proc_stack->ebp = 0;
    proc_stack->_esp = 0;
    proc_stack->ebx = 0;
    proc_stack->edx = 0;
    proc_stack->ecx = 0;
    proc_stack->eax = 0;
    proc_stack->gs = 0;
    proc_stack->ds = SelectorData32_U;
    proc_stack->es = SelectorData32_U;
    proc_stack->fs = SelectorData32_U;
    proc_stack->eip = func;
    proc_stack->cs = SelectorCode32_U;
    proc_stack->eflags = (EFLAGS_IOPL_0 | EFLAGS_MBS | EFLAGS_IF_1);
    proc_stack->esp = (void*)((uint32_t)get_a_page(UserPool, USER_STACK3_VADDR) + PG_SIZE) ;
    proc_stack->ss = SELECTOR_U_DATA; 
    asm volatile ("movl %0, %%esp; jmp intr_exit" : : "g" (proc_stack) : "memory");
}