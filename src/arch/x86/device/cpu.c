#include "cpu.h"
#include "print.h"
#include "stdint.h"

void init_cpu()
{
    uint32_t CpuFacName[4] = { 0, 0, 0, 0};
    char FactoryName[17] = { 0 };
    int i;
    for(i = 0x80000002; i < 0x80000005;i++)
    {
        get_cpuid(i,0,&CpuFacName[0],&CpuFacName[1],&CpuFacName[2],&CpuFacName[3]);
        *(uint32_t*)&FactoryName[ 0] = CpuFacName[0];
        *(uint32_t*)&FactoryName[ 4] = CpuFacName[1];
        *(uint32_t*)&FactoryName[ 8] = CpuFacName[2];
        *(uint32_t*)&FactoryName[12] = CpuFacName[3];
        FactoryName[16] = '\0';
        put_str1(0x07,FactoryName);
    }
    return;
}

void cpu_info()
{
    uint32_t CpuFacName[4] = { 0, 0, 0, 0};
    char FactoryName[17] = { 0 };
    int i;
    for(i = 0x80000002; i < 0x80000005;i++)
    {
        get_cpuid(i,0,&CpuFacName[0],&CpuFacName[1],&CpuFacName[2],&CpuFacName[3]);
        *(uint32_t*)&FactoryName[ 0] = CpuFacName[0];
        *(uint32_t*)&FactoryName[ 4] = CpuFacName[1];
        *(uint32_t*)&FactoryName[ 8] = CpuFacName[2];
        *(uint32_t*)&FactoryName[12] = CpuFacName[3];
        FactoryName[16] = '\0';
        put_str1(0x07,FactoryName);
    }
    return;
}