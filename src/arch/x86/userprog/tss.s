	.file	"tss.c"
	.text
	.type	set_segmdesc, @function
set_segmdesc:
.LFB0:
	pushl	%ebp
.LCFI0:
	movl	%esp, %ebp
.LCFI1:
	pushl	%edi
.LCFI2:
	movl	8(%ebp), %edi
	pushl	%esi
.LCFI3:
	movl	%edx, %esi
	shrl	$16, %esi
	pushl	%ebx
.LCFI4:
	movl	%esi, %ebx
	movb	%bl, 4(%eax)
	movl	%edi, %ebx
	movb	%bl, 5(%eax)
	movl	%edi, %ebx
	movw	%cx, (%eax)
	shrw	$8, %bx
	shrl	$16, %ecx
	andl	$-16, %ebx
	andl	$15, %ecx
	orl	%ecx, %ebx
	movw	%dx, 2(%eax)
	shrl	$24, %edx
	movb	%bl, 6(%eax)
	movb	%dl, 7(%eax)
	popl	%ebx
.LCFI5:
	popl	%esi
.LCFI6:
	popl	%edi
.LCFI7:
	popl	%ebp
.LCFI8:
	ret
.LFE0:
	.size	set_segmdesc, .-set_segmdesc
	.globl	init_tss
	.type	init_tss, @function
init_tss:
.LFB1:
	pushl	%ebp
.LCFI9:
	movl	%esp, %ebp
.LCFI10:
	subl	$28, %esp
.LCFI11:
	pushl	$108
.LCFI12:
	pushl	$0
.LCFI13:
	pushl	$tss
.LCFI14:
	call	memset
	movl	$107, %ecx
	movl	$tss, %edx
	movl	$_GDT+24, %eax
	movl	$32905, (%esp)
	movl	$16, tss+8
	movl	$108, tss+104
	call	set_segmdesc
	xorl	%edx, %edx
	movl	$1048575, %ecx
	movl	$_GDT+32, %eax
	movl	$49400, (%esp)
	call	set_segmdesc
	movl	$1048575, %ecx
	xorl	%edx, %edx
	movl	$_GDT+40, %eax
	movl	$49394, (%esp)
	call	set_segmdesc
	movl	$_GDT, %eax
	sall	$16, %eax
	orl	$55, %eax
	movl	%eax, -16(%ebp)
	movl	$0, -12(%ebp)
/APP
/  33 "userprog/tss.c" 1
	lgdt -16(%ebp)
/NO_APP
	movl	$24, %eax
/APP
/  40 "userprog/tss.c" 1
	ltr %ax
/NO_APP
	addl	$16, %esp
.LCFI15:
	leave
.LCFI16:
	ret
.LFE1:
	.size	init_tss, .-init_tss
	.globl	update_tss_esp0
	.type	update_tss_esp0, @function
update_tss_esp0:
.LFB2:
	pushl	%ebp
.LCFI17:
	movl	%esp, %ebp
.LCFI18:
	movl	8(%ebp), %eax
	popl	%ebp
.LCFI19:
	addl	$4096, %eax
	movl	%eax, tss+4
	ret
.LFE2:
	.size	update_tss_esp0, .-update_tss_esp0
	.globl	PKn_Version
	.section	.rodata
	.align 4
	.type	PKn_Version, @object
	.size	PKn_Version, 39
PKn_Version:
	.string	"Pencil-Kernel (PKn) version 0.0.0 test"
	.local	tss
	.comm	tss,108,4
	.section	.eh_frame,"aw",@progbits
.Lframe1:
	.long	.LECIE1-.LSCIE1
.LSCIE1:
	.long	0
	.byte	0x1
	.string	""
	.byte	0x1
	.byte	0x7c
	.byte	0x8
	.byte	0xc
	.byte	0x4
	.byte	0x4
	.byte	0x88
	.byte	0x1
	.align 4
.LECIE1:
.LSFDE1:
	.long	.LEFDE1-.LASFDE1
.LASFDE1:
	.long	.LASFDE1-.Lframe1
	.long	.LFB0
	.long	.LFE0-.LFB0
	.byte	0x4
	.long	.LCFI0-.LFB0
	.byte	0xe
	.byte	0x8
	.byte	0x85
	.byte	0x2
	.byte	0x4
	.long	.LCFI1-.LCFI0
	.byte	0xd
	.byte	0x5
	.byte	0x4
	.long	.LCFI2-.LCFI1
	.byte	0x87
	.byte	0x3
	.byte	0x4
	.long	.LCFI3-.LCFI2
	.byte	0x86
	.byte	0x4
	.byte	0x4
	.long	.LCFI4-.LCFI3
	.byte	0x83
	.byte	0x5
	.byte	0x4
	.long	.LCFI5-.LCFI4
	.byte	0xc3
	.byte	0x4
	.long	.LCFI6-.LCFI5
	.byte	0xc6
	.byte	0x4
	.long	.LCFI7-.LCFI6
	.byte	0xc7
	.byte	0x4
	.long	.LCFI8-.LCFI7
	.byte	0xc
	.byte	0x4
	.byte	0x4
	.byte	0xc5
	.align 4
.LEFDE1:
.LSFDE3:
	.long	.LEFDE3-.LASFDE3
.LASFDE3:
	.long	.LASFDE3-.Lframe1
	.long	.LFB1
	.long	.LFE1-.LFB1
	.byte	0x4
	.long	.LCFI9-.LFB1
	.byte	0xe
	.byte	0x8
	.byte	0x85
	.byte	0x2
	.byte	0x4
	.long	.LCFI10-.LCFI9
	.byte	0xd
	.byte	0x5
	.byte	0x4
	.long	.LCFI11-.LCFI10
	.byte	0x2e
	.byte	0x4
	.byte	0x4
	.long	.LCFI12-.LCFI11
	.byte	0x2e
	.byte	0x8
	.byte	0x4
	.long	.LCFI13-.LCFI12
	.byte	0x2e
	.byte	0xc
	.byte	0x4
	.long	.LCFI14-.LCFI13
	.byte	0x2e
	.byte	0x10
	.byte	0x4
	.long	.LCFI15-.LCFI14
	.byte	0x2e
	.byte	0
	.byte	0x4
	.long	.LCFI16-.LCFI15
	.byte	0xc5
	.byte	0xc
	.byte	0x4
	.byte	0x4
	.align 4
.LEFDE3:
.LSFDE5:
	.long	.LEFDE5-.LASFDE5
.LASFDE5:
	.long	.LASFDE5-.Lframe1
	.long	.LFB2
	.long	.LFE2-.LFB2
	.byte	0x4
	.long	.LCFI17-.LFB2
	.byte	0xe
	.byte	0x8
	.byte	0x85
	.byte	0x2
	.byte	0x4
	.long	.LCFI18-.LCFI17
	.byte	0xd
	.byte	0x5
	.byte	0x4
	.long	.LCFI19-.LCFI18
	.byte	0xc
	.byte	0x4
	.byte	0x4
	.byte	0xc5
	.align 4
.LEFDE5:
	.ident	"GCC: (GNU) 4.6.1"
