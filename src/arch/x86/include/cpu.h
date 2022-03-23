#ifndef __CPU_H__
#define __CPU_H__

#include "stdint.h"
#include "print.h"

static inline get_cpuid(uint32_t Mop,uint32_t Sop,uint32_t* a,uint32_t* b,uint32_t* c,uint32_t* d)
{
    __asm__ __volatile__
    (
        "cpuid;"
        :"=eax"(*a),"=ebx"(*b),"=ecx"(*c),"=edx"(*d)
        :"0"(Mop),"2"(Sop)
        :"memory"
    );
    return;
}

void init_cpu();
void cpu_info();

#endif /* __CPU_H__ */