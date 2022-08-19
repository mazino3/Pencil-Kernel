# Pencil-Kernel Makefile

# Release
# CDEF := -D NDEBUG

# tools
TOOL_DIR := ../../../tools/
AS       := $(TOOL_DIR)as
BOCHS    := $(TOOL_DIR)Bochs-2.7\bochsdbg
CC1      := $(TOOL_DIR)cc1
COPY     := copy
DD       := $(TOOL_DIR)dd
GCC      := $(TOOL_DIR)gcc
LD       := $(TOOL_DIR)ld
MAKE     := $(TOOL_DIR)make
MAKEFONT := $(TOOL_DIR)makefont
NASM     := $(TOOL_DIR)nasm
OBJCOPY  :=$(TOOL_DIR)objcopy
OBJDUMP  :=$(TOOL_DIR)objdump
RM       :=$(TOOL_DIR)rm
IMGCOPY  := $(TOOL_DIR)imgcopy/imgcopy

#src path
BOOT_DIR      := boot/
DEVICE_DIR    := device/
GRAPHIC_DIR   := graphic/
INCLUDE_DIR   := include/
INTERRUPT_DIR := interrupt/
KERNEL_DIR    := kernel/
LIB_DIR       := lib/
LIBC_DIR      := libc/
MEMORY_DIR    := memory/
SYSCALL_DIR   := syscall/
TASK_DIR      := task/
THREAD_DIR    := thread/
PROG_DIR      := prog/

#exec
MBR := $(BOOT_DIR)mbr.bin
BOOT := $(BOOT_DIR)boot.bin
LOADER := $(BOOT_DIR)loader.bin

#obj
OBJS :=                      \
$(KERNEL_DIR)debug.co        \
$(KERNEL_DIR)init.co         \
$(INTERRUPT_DIR)interrupt.ao \
$(INTERRUPT_DIR)interrupt.co \
$(MEMORY_DIR)arena.co        \
$(MEMORY_DIR)memory.co       \
\
$(THREAD_DIR)sync.co         \
$(THREAD_DIR)thread.co       \
$(PROG_DIR)tss.co            \
$(PROG_DIR)process.co        \
\
$(DEVICE_DIR)console.co      \
$(DEVICE_DIR)cpu.co          \
$(DEVICE_DIR)fifo.co         \
$(DEVICE_DIR)keyboard.co     \
$(DEVICE_DIR)mouse.co        \
$(DEVICE_DIR)time.co         \
$(DEVICE_DIR)timer.co        \
\
$(SYSCALL_DIR)api.co         \
$(SYSCALL_DIR)syscall.co     \
\
$(TASK_DIR)mm.co             \
$(TASK_DIR)mouse.co          \
$(TASK_DIR)taskinit.co       \
$(TASK_DIR)shell.co          \
$(TASK_DIR)view.co           \
\
$(LIB_DIR)apilib.co          \
$(LIB_DIR)bitmap.co          \
$(LIB_DIR)hzk16.fnt          \
$(LIB_DIR)list.co            \
$(LIB_DIR)print.co           \
$(LIBC_DIR)string.co         \
$(LIBC_DIR)stdio.co          \
\
$(GRAPHIC_DIR)graphic.co     \


OBJ_FILE := $(KERNEL_DIR)start.ao $(KERNEL_DIR)main.co $(OBJS)
KERNEL_OBJ_FILE := $(KERNEL_DIR)kernel.o
KERNEL_SYS := $(KERNEL_DIR)kernel.sys
#file
v_disk := a.img

#other
OBJ_FORMAT := elf32-i386
K_VERSION := 0.0.0 test
#command
COPY := copy
CD := cd
ECHO := echo
MAKE_DIR := md

%.fnt: %.mft
	@$(ECHO) Make $@
	@$(MAKEFONT) $*.mft $*.asm -asm font HZK16
	@$(NASM) -f elf32 -o $*.fnt $*.asm
	@$(RM) $*.asm

#.asm to .bin
%.bin: %.asm $(INCLUDE_DIR)boot.inc
	@$(ECHO) compile $<
	@$(NASM) -f bin -I $(INCLUDE_DIR) -o $*.bin $*.asm

#.asm to .ao (elf)
# -f elf32 :使用elf文件格式
%.ao: %.asm
	@$(ECHO) compile $<
	@$(NASM) -f elf32 -I $(INCLUDE_DIR) -o $*.ao $*.asm

#.c to .co (elf)
# cc1 参数说明:
# -fno-builtin: 不识别内建函数
# -fno-strict-aliasing: 禁用严格别名规则
# -m32: 编译32位代码
# -O0: 优化等级:0
# -quiet: 不显示多余的信息
# -Wall: 发出警告

# as参数说明:
# --32: 编译为32位文件

%.co: %.c
	@$(ECHO) compile $<
	@$(CC1) -I $(INCLUDE_DIR)  -fno-builtin -fno-strict-aliasing -finput-charset=UTF-8 -fexec-charset=GB2312 $(CDEF) -m32 -O0 -quiet -o $*.s $*.c
	@$(AS) -I $(INCLUDE_DIR) --32 -o $*.co $*.s

$(v_disk): vhd.asm
	$(NASM) -o $(v_disk) vhd.asm

#command:
#clean: delet all obj file
#dump
#img: build system (reserved obj file)
#run: perform the "img" and start qenu run Pencil-Kernel
#system: build kernel

.PHONY: clean debug dump img run system

clean:
	@$(RM) $(BOOT_DIR)*.bin \
	$(DEVICE_DIR)*.s \
	$(DEVICE_DIR)*.co \
	\
	$(GRAPHIC_DIR)*.s \
	$(GRAPHIC_DIR)*.co \
	\
	$(INTERRUPT_DIR)*.ao \
	$(INTERRUPT_DIR)*.co \
	$(INTERRUPT_DIR)*.s \
	\
	$(KERNEL_DIR)*.ao \
	$(KERNEL_DIR)*.sys \
	$(KERNEL_DIR)*.co \
	$(KERNEL_DIR)*.map \
	$(KERNEL_DIR)*.o \
	$(KERNEL_DIR)*.s \
	\
	$(LIB_DIR)*.co \
	$(LIB_DIR)*.s \
	\
	$(LIBC_DIR)*.co \
	$(LIBC_DIR)*.s \
	\
	$(MEMORY_DIR)*.co \
	$(MEMORY_DIR)*.s \
	\
	$(PROG_DIR)*.co \
	$(PROG_DIR)*.s \
	\
	$(SYSCALL_DIR)*.co \
	$(SYSCALL_DIR)*.s \
	\
	$(TASK_DIR)*.co \
	$(TASK_DIR)*.s \
	\
	$(THREAD_DIR)*.co \
	$(THREAD_DIR)*.s

debug: img
	@$(MAKE) -r dump
	@$(ECHO) Pencil-kernel (PKn) version: $(K_VERSION)
	@$(BOCHS) -q -f bochsrc.bxrc

dump:
#	$(OBJDUMP) -D -M intel $(KERNEL_OBJ_FILE) > kernel.asm
	@..\..\..\tools\objdump -D -M intel $(KERNEL_OBJ_FILE) > kernel.asm
# 将文件写入
img: $(v_disk) $(BOOT) $(LOADER) system
	@$(MAKE) -r $(v_disk)
	@$(DD) if=$(BOOT) of=$(v_disk) bs=512 count=1 seek=0 conv=notrunc
	@$(DD) if=$(LOADER) of=$(v_disk) bs=512 count=7 seek=65 conv=notrunc
	@$(DD) if=$(KERNEL_SYS) of=$(v_disk) bs=512 count=1000 seek=72 conv=notrunc

run: img
#	@$(ECHO) Pencil-kernel (PKn) version: $(K_VERSION)
	@$(TOOL_DIR)qemu\qemu-system-x86_64 -m 512M -drive file=$(v_disk),index=0,media=disk,format=raw -boot c

system: $(OBJ_FILE) kernel.lds
	@$(LD) -b $(OBJ_FORMAT) -z muldefs -o $(KERNEL_OBJ_FILE) $(OBJ_FILE) -T kernel.lds -Map $(KERNEL_DIR)kernel.map
	@$(OBJCOPY) -I $(OBJ_FORMAT) -S -R ".eh_frame" -R ".comment" -O binary $(KERNEL_OBJ_FILE) $(KERNEL_SYS)