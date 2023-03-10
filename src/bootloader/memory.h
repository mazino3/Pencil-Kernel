#ifndef __MEMORY_H__
#define __MEMORY_H__

#include <common.h>
void GetMemoryMap(struct MemoryMap* memmap);
EFI_STATUS AllocPage(UINTN PageSize,OUT EFI_PHYSICAL_ADDRESS* Address);
EFI_STATUS GetPage(UINTN PageSize,EFI_PHYSICAL_ADDRESS* Address);
#endif