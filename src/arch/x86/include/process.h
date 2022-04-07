#ifndef __PROCESS_H__
#define __PROCESS_H__

#include "global.h"
#include "thread.h"

#define USER_STACK3_VADDR (0xc0000000 - PCB_SIZE)
#define USER_VADDR_START 0x8048000
extern void intr_exit(void);

void start_process(void* process_name);
void page_dir_activate(struct task_struct* pthread);
void process_activate(struct task_struct* pthread);
uint32_t* create_page_dir(void);
void create_user_vaddr_memman(struct task_struct* user_prog);
void process_execute(void* process_name,char* name);

#endif /* __PROCESS_H__ */