;loader.asm
;Copyright 2021-2022 Lin Chenjun,All rights reserved.

%include "boot.inc"
org LoaderBaseAddress
[bits 16]
%include "protect.inc" ;保护模式相关(GDT等)
%include "page.inc"    ;分页机制相关

GDT_BASE: SEGMDESC 0,0,0
SectionCode32:     SEGMDESC 0x00000000,0xfffff,AR_CODE32 ;32位代码段
SectionData32:     SEGMDESC 0x00000000,0xfffff,AR_DATA32 ;32位数据段
SectionVideo:      SEGMDESC 0x000b8000,0x00007,AR_DATA32 ;文字显存
SectionColorVideo: SEGMDESC 0x000a0000,0x0000e,AR_DATA32 ;彩色显存

GDT_SIZE equ ($ - GDT_BASE)
GDT_LIMIT equ GDT_SIZE - 1

times 60 dq 0;预留60个描述符

;段选择子
SelectorCode32     equ (((SectionCode32-GDT_BASE)/8) | TI_GDT | RPL0)
SelectorData32     equ (((SectionData32-GDT_BASE)/8) | TI_GDT | RPL0)
SelectorVideo      equ (((SectionVideo -GDT_BASE)/8) | TI_GDT | RPL0)
SelectorColorVideo equ (((SectionColorVideo-GDT_BASE)/8) | TI_GDT | RPL0)

gdt_ptr dw GDT_LIMIT
        dd GDT_BASE

times (0x300 - ($ - $$)) db 0

;&total_memory_bytes = LoaderBaseAddress+0x300
total_memory_bytes dq 0 ;内存大小(单位:字节)

ards_buf times 240 db 0
ards_nr dw 0

kernel_offset_addr dd KernelBaseAddress ;内核的偏移地址
kernel_sectors db 0 ;内核所用的扇区数

LoadStartMsg db "Loader";6
MemErrMsg db "Get total memory bytes error!";29
MemSuccessMsg db "Get total memory bytes success!";31
LoadKernelMsg db "Loading Kernel...";17
LoadKernelSuccessMsg db "Load Kernel success!";20
times (LoaderOffsetAddress - ($ - $$)) db 0;将start对齐到文件起始LoaderOffsetAddress处

;loader从此处开始执行
start:
    ;显示一条信息,证明loader在执行
    mov bp,LoadStartMsg
    mov cx,6;6个字符
    mov ax,0x1301
    mov bx,0x0007;第0页,黑底白字
    mov dx,0x0200;2行,0列
    int 0x10

    GetTotalMemoryBytes:
        ; int 0x15 eax=0xe820 edx=0x534d4150:获取内存布局
        xor ebx,ebx            ;将ebx清零
        mov edx,0x534d4150     ;edx = "SMAP"
        mov di,ards_buf
        .e820_memory_get_loop:
            mov ax,0xe820      ;int 0x15子功能号e820
            mov ecx,20         ;ards结构大小是20字节
            int 0x15
            jc .try_e801       ;cf为1表示有错误,尝试e801模式
            add di,cx          ;使di指向下一个ards结构
            inc word [ards_nr] ;让ards_nr自增1
            cmp ebx,0
            jnz .e820_memory_get_loop
        ;寻找内存容量,就是最大的那一块内存
        mov cx,[ards_nr]
        mov ebx,ards_buf
        xor edx,edx       ;edx先清零
        .find_max_memory: ;冒泡排序
            mov eax,[ebx]
            add eax,[ebx + 8]
            add ebx,20
            cmp edx,eax
            jge .next_ards
            mov edx,eax   ;edx是内存总大小
        .next_ards:
            loop .find_max_memory
            jmp .memory_get_success

        ;int 0x15 ax=0xe801:获取内存布局,最大4GB
        ;返回值:
        ;ax == cx,以KB为单位
        ;bx == dx,以64kb为单位
        .try_e801:
            mov ax,0xe801
            int 0x15
            jc .try_88    ;有错误,尝试0x88功能
                        ;把以KB为单位的低15MB内存的容量转换为以字节为单位
            mov cx,0x400  ;ax和cx是一样的,所以用cx做乘数与ax相乘
            mul cx        ;ax*cx,结果是以字节为单位的内存容量
            shl edx,16
            and eax,0x0000ffff
            or edx,eax
            add edx,0x100000 ;ax只是第15MB,所以总内存要加上1MB
            mov esi,edx      ;先备份edx
            ;将16MB以上内存的容量转为以字节为单位
            xor eax,eax ;eax清零
            mov ax,bx
            mov ecx,0x1000 ;64kb
            mul ecx        ;eax*ecx,积的高32位在edx,低32位在eax
            add esi,eax    ;只能获取4GB内存,所以只要低32位就够了
            mov edx,esi
            jmp .memory_get_success

        ;int 0x15 ah=0x88 :获取内存容量,只能获取64MB以内
        ;返回值:
        ;ax:以MB为单位的内存容量
        .try_88:
            mov ah,0x88
            int 0x15
            jc .get_memory_error ;无法获取内存容量,启动终止
            and eax,0x0000ffff
            mov cx,0x400
            mul cx
            shl edx,16
            or edx,eax
            add edx,0x100000     ;加上1MB,是实际内存容量
            jmp .memory_get_success
            .get_memory_error:
                mov bp,MemErrMsg
                mov cx,0x1d;29个字符
                mov ax,0x1301
                mov bx,0x0084;第0页,黑底红字闪烁
                mov dx,0x0200;2行,0列
                int 0x10
                jmp $        ;在此处死循环,停止启动
        .memory_get_success:
            mov dword [total_memory_bytes],edx ;保存内存容量
            ;显示一条信息,证明内存容量获取成功
            mov bp,MemSuccessMsg
            mov cx,31;31个字符
            mov ax,0x1301
            mov bx,0x0002;第0页,黑底绿字
            mov dx,0x0300;3行,0列
            int 0x10
    LoadKernel:
        ; ;下一步:加载内核
        ; ;内核要加载到1MB内存处
        ; ;因为要在实模式下用int 0x13读取磁盘,
        ; ;而实模式不能直接访问1MB以上内存.
        ; ;所以要进入Unreal Mode在实模式下访问1MB以上内存空间
        ; ;和正常进入保护模式的过程差不多,只是要让段寄存器缓存保护模式的描述符
        ; ;就能在实模式下访问1MB以上内存空间了
        ; ;进入Unreal Mode的基本过程:
        ; ;打开a20地址线 -> 加载GDT -> 向段寄存器加载段描述符 -> 退出保护模式
        ; mov bp,LoadKernelMsg
        ; mov cx,17;17个字符
        ; mov ax,0x1301
        ; mov bx,0x0007;第0页,黑底白字
        ; mov dx,0x0400;4行,0列
        ; int 0x10
        ; ;1. 打开a20地址线
        ; in al,0x92
        ; or al,0x02
        ; out 0x92,al

        ; ;2. 加载GDT
        ; cli ;关中断
        ; db 0x66
        ; lgdt [gdt_ptr]

        ; ;3. cr0第0位置为1
        ; mov eax,cr0
        ; or eax,0x00000001
        ; mov cr0,eax

        ; ;4. 向段寄存器加载段描述符
        ; mov ax,SelectorCode32
        ; mov fs,ax

        ; ;5. 退出保护模式
        ; mov eax,cr0
        ; and al,0xfe
        ; mov cr0,eax

        ; sti ;开中断
        ; ; 读取Kernel,并把Kernel加载到1MB地址处
        ; ;读取一扇区 -> 移动到1MB地址后 -> 再读一扇区 ...

        ;注:内核目前在前1MB内存中.(详细信息看include/boot.inc)
        mov bp,LoadKernelMsg
        mov cx,17;17个字符
        mov ax,0x1301
        mov bx,0x0007;第0页,黑底白字
        mov dx,0x0400;4行,0列
        int 0x10
        mov eax,KernelStartSec
        mov cx,20
        mov bx,KernelBaseAddress
        call ReadSector
        .kernel_load_success:
            mov bp,LoadKernelSuccessMsg
            mov cx,20;20个字符
            mov ax,0x1301
            mov bx,0x0002;第0页,黑底绿字
            mov dx,0x0500;5行,0列
            int 0x10
            jmp $

;函数定义部分:

;下面的内容来自boot:
;Function: ReadSector
;参数 (Input):
;eax   :扇区号(Sector Number)
;cx    :要读取的扇区数
;es:bx :读取到的数据存放处
;dx    :驱动器号,0x00~0x7f:软盘 0x80~0xff:硬盘
ReadSector:
    ;为物理机准备的版本:
    %ifdef __BOOT_ON_PHY_MACHINE__
        .ReadOneSector:
            ;备份寄存器
            push dword eax
            push bx
            push dx
            push es
            mov word  [DiskAddressPacket + 2],1  ;一次一扇区
            mov word  [DiskAddressPacket + 4],bx ;看ReadSector和DiskAddressPacket的说明
            mov word  [DiskAddressPacket + 6],es ;同上
            mov dword [DiskAddressPacket + 8],eax;同上
            mov dl,DrvNum ;驱动器号
            mov ah,0x42
            mov si,DiskAddressPacket
            int 0x13
            ;恢复寄存器
            pop es
            pop dx
            pop bx
            pop dword eax
            inc eax
            add bx,512 ;下512字节
            loop .ReadOneSector
            ret
    %endif
    ;为虚拟机准备的版本
    %ifdef __BOOT_ON_VIR_MACHINE__
        push bp
        mov bp,sp
        sub esp,2
        mov byte [bp - 2],cl ;要读入的扇区数
        push bx ;备份
        ;将LBA模式转换为CHS模式
        ;LBA扇区号/每磁道扇区数
        ;商 >> 1 = 柱面(磁道)号
        ;商 & 1 = 磁头号
        ;余数 + 1 = 扇区号
        mov bl,SecPerCyc
        div bl    ;被除数:ax,除数:bl,商:al,余数:ah
        inc ah    ;余数 + 1 = 扇区号
        mov cl,ah ;cl是扇区号
        mov dh,al ;暂时用dh保存商
        shr al,1  ;商 >> 1 = 柱面(磁道)号
        mov ch,al ;ch是柱面(磁道)号
        and dh,1  ;商 & 1 = 磁头号
        pop bx    ;恢复bx
        mov dl,DrvNum;驱动器号
        .readloop:
            mov ah,0x02
            mov al, byte [bp - 2]
            int 0x13
            jc .readloop
        add esp,2
        pop bp
        ret
    %endif
        jmp $
