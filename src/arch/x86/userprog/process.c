#include "process.h"
#include "console.h"
#include "debug.h"
#include "global.h"
#include "memory.h"
#include "string.h"
#include "thread.h"
#include "tss.h"

void start_process(void* process_name)
{
    void* func = process_name;
    struct task_struct* cur = running_thread();
    cur->self_kstack += sizeof(struct thread_stack);
    struct intr_stack* proc_stack = (struct intr_stack*)cur->self_kstack;
    /* 寄存器初始值,置为0 */
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
    proc_stack->esp = (void*)((uint32_t)get_a_page(UserPool, USER_STACK3_VADDR) + PCB_SIZE); //用户栈顶
    proc_stack->ss = SelectorData32_U; 
    __asm__ __volatile__ ("movl %0, %%esp; jmp intr_exit" : : "g" (proc_stack) : "memory");
}

/* page_dir_activate
* 激活页表
*/
void page_dir_activate(struct task_struct* pthread)
{
    uint32_t page_dir_table_pos = KERNEL_PAGE_DIR_TABLE_POS;
    if(pthread->page_dir != NULL)
    {
        page_dir_table_pos = (uint32_t)addr_v2p(pthread->page_dir);
    }
    __asm__ __volatile__
    (
        "movl %[pgdir],%%cr3"
        :
        :[pgdir]"r"(page_dir_table_pos)
        :"memory"
    );
    return;
}

/* process_activate
* 激活页表,并更新0特权级下的栈
*/
void process_activate(struct task_struct* pthread)
{
    ASSERT(pthread != NULL);
    page_dir_activate(pthread);
    if(pthread->page_dir != NULL)
    {
        update_tss_esp0(pthread);
    }
    return;
}

uint32_t* create_page_dir(void)
{
    uint32_t* pgdir_v = get_kernel_page(1);
    if(pgdir_v == NULL)
    {
        console_str(0x04,"create_page_dir: get kernel page failed!\n");
        return NULL;
    }
    memcpy(((uint32_t*)(uint32_t)pgdir_v + 0x300 * 4),((uint32_t*)(0xfffff000 + 0x300 * 4)),1024);
    uint32_t pgdir_p = (uint32_t)addr_v2p(pgdir_v);
    pgdir_v[1023] = (pgdir_p | PG_US_U | PG_RW_W | PG_P);
    return pgdir_v;
}

