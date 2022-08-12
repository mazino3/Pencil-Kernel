#include "cpu.h"
#include "print.h"
#include "stdint.h"

void cpu_info(void* vFactoryName)
{
    uint32_t CpuFacName[4] = { 0, 0, 0, 0};
    uint32_t* FactoryName = (uint32_t*)vFactoryName;
    int i;
    for(i = 0x80000002; i < 0x80000005;i++)
    {
        get_cpuid(i,0,&CpuFacName[0],&CpuFacName[1],&CpuFacName[2],&CpuFacName[3]);
        FactoryName[ 0 + (i - 0x80000002) * 4] = CpuFacName[0];
        FactoryName[ 1 + (i - 0x80000002) * 4] = CpuFacName[1];
        FactoryName[ 2 + (i - 0x80000002) * 4] = CpuFacName[2];
        FactoryName[ 3 + (i - 0x80000002) * 4] = CpuFacName[3];
        FactoryName[ 4 + (i - 0x80000002) * 4] = '\0';
    }
    return;
}