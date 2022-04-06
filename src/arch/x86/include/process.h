#ifndef __PROCESS_H__
#define __PROCESS_H__

#define USER_STACK3_VADDR (0xc0000000 - PG_SIZE)
extern void intr_exit(void);

#endif /* __PROCESS_H__ */