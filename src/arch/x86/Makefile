# Pencil-Kernel Makefile
# 反汇编内核: objdump -D -M intel $(KERNEL_OBJ_FILE) > kernel.asm

# tools
TOOL_DIR := ../../../tools/
AS := $(TOOL_DIR)as
BOCHS := $(TOOL_DIR)Bochs-2.7\bochsdbg
CC1 := $(TOOL_DIR)cc1
DD := $(TOOL_DIR)dd
GCC := $(TOOL_DIR)gcc
LD := $(TOOL_DIR)ld
MAKE := $(TOOL_DIR)make
NASM := $(TOOL_DIR)nasm
OBJCOPY :=$(TOOL_DIR)objcopy
OBJDUMP :=$(TOOL_DIR)objdump
IMGCOPY := $(TOOL_DIR)imgcopy/imgcopy

#src path
BOOT_DIR := boot/
DEVICE_DIR := device/
GRAPHIC_DIR := graphic/
INCLUDE_DIR := include/
INTERRUPT_DIR := interrupt/
KERNEL_DIR := kernel/
LIB_DIR := lib/
LIBC_DIR := libc/
MEMORY_DIR := memory/
SYSCALL_DIR := syscall/
THREAD_DIR := thread/
USERPROG_DIR := userprog/

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
$(USERPROG_DIR)tss.co        \
$(USERPROG_DIR)process.co    \
\
$(DEVICE_DIR)console.co      \
$(DEVICE_DIR)cpu.co          \
$(DEVICE_DIR)keyboard.co     \
$(DEVICE_DIR)mouse.co        \
$(DEVICE_DIR)time.co         \
$(DEVICE_DIR)timer.co        \
\
$(SYSCALL_DIR)syscall.co     \
\
$(LIB_DIR)bitmap.co          \
$(DEVICE_DIR)fifo.co         \
$(LIB_DIR)font.co            \
$(LIB_DIR)list.co            \
$(LIB_DIR)print.co           \
$(LIBC_DIR)string.co         \
$(LIBC_DIR)stdio.co          \
\
$(GRAPHIC_DIR)graphic.co     \


OBJ_FILE := $(KERNEL_DIR)start.ao $(KERNEL_DIR)main.co $(OBJS)
KERNEL_OBJ_FILE := $(KERNEL_DIR)kernel.o
KERNEL := $(KERNEL_DIR)kernel.bin
#file
v_disk := a.img

#other
OBJ_FORMAT := elf32-i386
K_VERSION := 0.0.0 test
#command
COPY := copy
CD := cd
DELET := del
ECHO := echo
MAKE_DIR := md

#.asm to .bin
%.bin: %.asm $(INCLUDE_DIR)boot.inc
	@$(NASM) -f bin -I $(INCLUDE_DIR) -o $*.bin $*.asm

#.asm to .ao (elf)
# -f elf32 :使用elf文件格式
%.ao: %.asm Makefile
	@$(ECHO) compile $<
	@$(NASM) -f elf32 -I $(INCLUDE_DIR) -o $*.ao $*.asm

#.c to .co (elf)
# cc1 参数说明:
# -fno-builtin: 不识别内建函数
# -fno-strict-aliasing: 禁用严格别名规则
# -m32: 编译32位代码
# -Os: 启用优化,优化等级介于-O2和-O3之间
# -quiet: 不显示多余的信息
# -Wall: 发出警告

# as参数说明:
# --32: 编译为32位文件

%.co: %.c Makefile
	@$(ECHO) compile $<
	@$(CC1) -I $(INCLUDE_DIR)  -fno-builtin -fno-strict-aliasing -finput-charset=UTF-8 -fexec-charset=GB2312 -m32 -Os -quiet -Wall  -o $*.s $*.c
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
	@$(CD) $(BOOT_DIR) && $(DELET) *.bin

	@$(CD) $(DEVICE_DIR) && $(DELET) *.s
	@$(CD) $(DEVICE_DIR) && $(DELET) *.co

	@$(CD) $(GRAPHIC_DIR) && $(DELET) *.s
	@$(CD) $(GRAPHIC_DIR) && $(DELET) *.co

	@$(CD) $(INTERRUPT_DIR) && $(DELET) *.ao
	@$(CD) $(INTERRUPT_DIR) && $(DELET) *.co
	@$(CD) $(INTERRUPT_DIR) && $(DELET) *.s

	@$(CD) $(KERNEL_DIR) && $(DELET) *.ao
	@$(CD) $(KERNEL_DIR) && $(DELET) *.bin
	@$(CD) $(KERNEL_DIR) && $(DELET) *.co
	@$(CD) $(KERNEL_DIR) && $(DELET) *.o
	@$(CD) $(KERNEL_DIR) && $(DELET) *.s

	@$(CD) $(LIB_DIR) && $(DELET) *.co
	@$(CD) $(LIB_DIR) && $(DELET) *.s

	@$(CD) $(LIBC_DIR) && $(DELET) *.co
	@$(CD) $(LIBC_DIR) && $(DELET) *.s

	@$(CD) $(MEMORY_DIR) && $(DELET) *.co
	@$(CD) $(MEMORY_DIR) && $(DELET) *.s

	@$(CD) $(USERPROG_DIR) && $(DELET) *.co
	@$(CD) $(USERPROG_DIR) && $(DELET) *.s

	@$(CD) $(SYSCALL_DIR) && $(DELET) *.co
	@$(CD) $(SYSCALL_DIR) && $(DELET) *.s

	@$(CD) $(THREAD_DIR) && $(DELET) *.co
	@$(CD) $(THREAD_DIR) && $(DELET) *.s

debug: img
	@$(ECHO) Pencil-kernel (PKn) version: $(K_VERSION)
	@$(BOCHS) -q -f bochsrc.bxrc

dump:
	..\..\..\tools\objdump -D -M intel $(KERNEL_OBJ_FILE) > kernel.asm
# 将文件写入
img: $(v_disk) $(BOOT) $(LOADER) system
	@$(DD) if=$(BOOT) of=$(v_disk) bs=512 count=1 seek=0 conv=notrunc
	@$(DD) if=$(LOADER) of=$(v_disk) bs=512 count=7 seek=65 conv=notrunc
	@$(DD) if=$(KERNEL) of=$(v_disk) bs=512 count=1000 seek=72 conv=notrunc

run: img
#	@$(ECHO) Pencil-kernel (PKn) version: $(K_VERSION)
	@$(TOOL_DIR)qemu\qemu-system-i386 -m 512M -drive file=$(v_disk),index=0,media=disk,format=raw -boot c

system: $(OBJ_FILE) kernel.lds
	@$(LD) -b $(OBJ_FORMAT) -z muldefs -o $(KERNEL_OBJ_FILE) $(OBJ_FILE) -T kernel.lds
	@$(OBJCOPY) -I $(OBJ_FORMAT) -S -R ".eh_frame" -R ".comment" -O binary $(KERNEL_OBJ_FILE) $(KERNEL)
