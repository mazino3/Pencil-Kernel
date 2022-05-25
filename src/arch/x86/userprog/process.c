#include "process.h"
#include "console.h"
#include "debug.h"
#include "global.h"
#include "interrupt.h"
#include "list.h"
#include "memory.h"
#include "print.h"
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
    proc_stack->esp = (void*)(((uint32_t)get_a_page(UserPool,(void*)USER_STACK3_VADDR)) + PCB_SIZE); //用户栈顶
    proc_stack->ss = SelectorData32_U; 
    __asm__ __volatile__ ("movl %0, %%esp; jmp intr_exit" : : "g" (proc_stack) : "memory");
}

/* page_dir_activate
* 激活页表
*/
void page_dir_activate(struct task_struct* pthread)
{
    ASSERT(pthread->page_dir != NULL);
    uint32_t page_dir_table_pos;
    page_dir_table_pos = (uint32_t)addr_v2p(pthread->page_dir);
    __asm__ __volatile__
    (
        "movl %0,%%cr3"
        :
        :"r"(page_dir_table_pos)
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

/* create_page_dir
* 为进程创建页目录表
*/
uint32_t* create_page_dir(void)
{
    uint32_t* pgdir_v = get_kernel_page(1);
    if(pgdir_v == NULL)
    {
        console_str(0x04,"create_page_dir: get kernel page failed!\n");
        return NULL;
    }
    memcpy(((uint32_t*)(pgdir_v + 0x300)),((uint32_t*)(0xfffff000 + 0x300 * 4)),1024); // 这里导致PG异常
    uint32_t pgdir_p = (uint32_t)addr_v2p(pgdir_v);
    pgdir_v[1023] = (pgdir_p | PG_US_U | PG_RW_W | PG_P);
    return pgdir_v;
}

/* create_user_vaddr_memman
* 为进程创建memman
*/
void create_user_vaddr_memman(struct task_struct* user_prog)
{
    init_memman(&(user_prog->prog_vaddr),get_kernel_page(DIV_ROUND_UP(MEMMAN_MAX * sizeof(struct MEMINFO),PG_SIZE)));
    // memman_free(&(user_prog->prog_vaddr),)
    return;
}

void process_execute(void* process_name,char* name)
{
    struct task_struct* pthread = get_kernel_page(PCB_SIZE / PG_SIZE);
    thread_init(pthread,name,31);
    create_user_vaddr_memman(pthread);
    thread_create(pthread,start_process,process_name);
    pthread->page_dir = create_page_dir();
    put_str(0x70,"prog PCB: ");
    put_uint(0x70,(uint32_t)pthread,16);

    put_str(0x70," prog pgdir: ");
    put_uint(0x70,(uint32_t)pthread->page_dir,16);
    /* 加入队列,等待调度 */
    pthread->general_tag.data = pthread;
    pthread->all_tag.data = pthread;

    enum intr_status status = intr_disable();
    ASSERT(!(list_find(&all_list,&(pthread->all_tag))));
    list_append(&all_list,&(pthread->all_tag));

    ASSERT(!(list_find(&ready_list,&(pthread->general_tag))));
    list_append(&ready_list,&(pthread->general_tag));

    intr_set_status(status);
    return;
}