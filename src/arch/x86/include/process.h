#ifndef __PROCESS_H__
#define __PROCESS_H__

#include "global.h"

#define USER_STACK3_VADDR (0xc0000000 - PCB_SIZE)
#define USER_VADDR_START 0x8048000
extern void intr_exit(void);

#endif /* __PROCESS_H__ */