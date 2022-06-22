
kernel/kernel.o:     file format elf32-i386


Disassembly of section .text:

c0007f00 <_start>:
c0007f00:	66 b8 10 00          	mov    ax,0x10
c0007f04:	8e d8                	mov    ds,eax
c0007f06:	8e c0                	mov    es,eax
c0007f08:	8e d0                	mov    ss,eax
c0007f0a:	8e e0                	mov    fs,eax
c0007f0c:	8e e8                	mov    gs,eax
c0007f0e:	bc 00 70 00 c0       	mov    esp,0xc0007000
c0007f13:	e9 0d 03 00 00       	jmp    c0008225 <kernel_main>
c0007f18:	e9 fb ff ff ff       	jmp    c0007f18 <_start+0x18>
c0007f1d:	00 00                	add    BYTE PTR [eax],al
	...

c0007f20 <u_prog_a>:
c0007f20:	55                   	push   ebp
c0007f21:	89 e5                	mov    ebp,esp
c0007f23:	a1 e4 f0 00 c0       	mov    eax,ds:0xc000f0e4
c0007f28:	40                   	inc    eax
c0007f29:	a3 e4 f0 00 c0       	mov    ds:0xc000f0e4,eax
c0007f2e:	eb f3                	jmp    c0007f23 <u_prog_a+0x3>

c0007f30 <k_thread_b>:
c0007f30:	55                   	push   ebp
c0007f31:	89 e5                	mov    ebp,esp
c0007f33:	57                   	push   edi
c0007f34:	56                   	push   esi
c0007f35:	be 64 00 00 00       	mov    esi,0x64
c0007f3a:	53                   	push   ebx
c0007f3b:	bb 14 00 00 00       	mov    ebx,0x14
c0007f40:	83 ec 24             	sub    esp,0x24
c0007f43:	68 24 e0 00 c0       	push   0xc000e024
c0007f48:	6a 07                	push   0x7
c0007f4a:	e8 40 21 00 00       	call   c000a08f <console_str>
c0007f4f:	8d 7d e7             	lea    edi,[ebp-0x19]
c0007f52:	83 c4 10             	add    esp,0x10
c0007f55:	83 ec 0c             	sub    esp,0xc
c0007f58:	68 a4 6c 02 c0       	push   0xc0026ca4
c0007f5d:	e8 62 29 00 00       	call   c000a8c4 <fifo_empty>
c0007f62:	83 c4 10             	add    esp,0x10
c0007f65:	85 c0                	test   eax,eax
c0007f67:	75 ec                	jne    c0007f55 <k_thread_b+0x25>
c0007f69:	50                   	push   eax
c0007f6a:	50                   	push   eax
c0007f6b:	57                   	push   edi
c0007f6c:	68 a4 6c 02 c0       	push   0xc0026ca4
c0007f71:	e8 4d 28 00 00       	call   c000a7c3 <fifo_get>
c0007f76:	0f be 45 e7          	movsx  eax,BYTE PTR [ebp-0x19]
c0007f7a:	5a                   	pop    edx
c0007f7b:	59                   	pop    ecx
c0007f7c:	50                   	push   eax
c0007f7d:	6a 07                	push   0x7
c0007f7f:	e8 cd 20 00 00       	call   c000a051 <console_char>
c0007f84:	0f be 45 e7          	movsx  eax,BYTE PTR [ebp-0x19]
c0007f88:	89 04 24             	mov    DWORD PTR [esp],eax
c0007f8b:	68 ff ff ff 00       	push   0xffffff
c0007f90:	56                   	push   esi
c0007f91:	53                   	push   ebx
c0007f92:	83 c3 08             	add    ebx,0x8
c0007f95:	68 e8 6c 02 c0       	push   0xc0026ce8
c0007f9a:	e8 5b 31 00 00       	call   c000b0fa <put_char_graphic>
c0007f9f:	83 c4 20             	add    esp,0x20
c0007fa2:	80 7d e7 0d          	cmp    BYTE PTR [ebp-0x19],0xd
c0007fa6:	75 ad                	jne    c0007f55 <k_thread_b+0x25>
c0007fa8:	83 c6 10             	add    esi,0x10
c0007fab:	bb 14 00 00 00       	mov    ebx,0x14
c0007fb0:	eb a3                	jmp    c0007f55 <k_thread_b+0x25>

c0007fb2 <k_thread_a>:
c0007fb2:	55                   	push   ebp
c0007fb3:	89 e5                	mov    ebp,esp
c0007fb5:	57                   	push   edi
c0007fb6:	56                   	push   esi
c0007fb7:	53                   	push   ebx
c0007fb8:	83 ec 78             	sub    esp,0x78
c0007fbb:	8d 45 d0             	lea    eax,[ebp-0x30]
c0007fbe:	50                   	push   eax
c0007fbf:	e8 30 24 00 00       	call   c000a3f4 <get_time>
c0007fc4:	8b 55 d0             	mov    edx,DWORD PTR [ebp-0x30]
c0007fc7:	8b 0d d4 f1 00 c0    	mov    ecx,DWORD PTR ds:0xc000f1d4
c0007fcd:	89 d0                	mov    eax,edx
c0007fcf:	83 e2 0f             	and    edx,0xf
c0007fd2:	c1 e8 04             	shr    eax,0x4
c0007fd5:	83 e0 0f             	and    eax,0xf
c0007fd8:	6b c0 0a             	imul   eax,eax,0xa
c0007fdb:	89 4d 98             	mov    DWORD PTR [ebp-0x68],ecx
c0007fde:	01 c2                	add    edx,eax
c0007fe0:	89 55 9c             	mov    DWORD PTR [ebp-0x64],edx
c0007fe3:	8b 55 d4             	mov    edx,DWORD PTR [ebp-0x2c]
c0007fe6:	89 d0                	mov    eax,edx
c0007fe8:	83 e2 0f             	and    edx,0xf
c0007feb:	c1 e8 04             	shr    eax,0x4
c0007fee:	83 e0 0f             	and    eax,0xf
c0007ff1:	6b f0 0a             	imul   esi,eax,0xa
c0007ff4:	01 d6                	add    esi,edx
c0007ff6:	8b 55 d8             	mov    edx,DWORD PTR [ebp-0x28]
c0007ff9:	89 d0                	mov    eax,edx
c0007ffb:	83 e2 0f             	and    edx,0xf
c0007ffe:	c1 e8 04             	shr    eax,0x4
c0008001:	83 e0 0f             	and    eax,0xf
c0008004:	6b f8 0a             	imul   edi,eax,0xa
c0008007:	01 d7                	add    edi,edx
c0008009:	8b 55 dc             	mov    edx,DWORD PTR [ebp-0x24]
c000800c:	89 d0                	mov    eax,edx
c000800e:	89 d3                	mov    ebx,edx
c0008010:	8b 55 e0             	mov    edx,DWORD PTR [ebp-0x20]
c0008013:	c1 e8 04             	shr    eax,0x4
c0008016:	83 e3 0f             	and    ebx,0xf
c0008019:	83 e0 0f             	and    eax,0xf
c000801c:	6b c0 0a             	imul   eax,eax,0xa
c000801f:	01 c3                	add    ebx,eax
c0008021:	89 d0                	mov    eax,edx
c0008023:	c1 e8 04             	shr    eax,0x4
c0008026:	83 e2 0f             	and    edx,0xf
c0008029:	83 e0 0f             	and    eax,0xf
c000802c:	6b c0 0a             	imul   eax,eax,0xa
c000802f:	01 c2                	add    edx,eax
c0008031:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
c0008034:	89 55 a0             	mov    DWORD PTR [ebp-0x60],edx
c0008037:	89 c1                	mov    ecx,eax
c0008039:	89 c2                	mov    edx,eax
c000803b:	c1 e9 08             	shr    ecx,0x8
c000803e:	c1 ea 04             	shr    edx,0x4
c0008041:	83 e1 0f             	and    ecx,0xf
c0008044:	83 e2 0f             	and    edx,0xf
c0008047:	6b c9 64             	imul   ecx,ecx,0x64
c000804a:	6b d2 0a             	imul   edx,edx,0xa
c000804d:	01 ca                	add    edx,ecx
c000804f:	89 c1                	mov    ecx,eax
c0008051:	c1 e8 0c             	shr    eax,0xc
c0008054:	83 e1 0f             	and    ecx,0xf
c0008057:	83 e0 0f             	and    eax,0xf
c000805a:	01 ca                	add    edx,ecx
c000805c:	69 c0 e8 03 00 00    	imul   eax,eax,0x3e8
c0008062:	59                   	pop    ecx
c0008063:	59                   	pop    ecx
c0008064:	01 d0                	add    eax,edx
c0008066:	89 45 a4             	mov    DWORD PTR [ebp-0x5c],eax
c0008069:	8b 15 28 7c 00 00    	mov    edx,DWORD PTR ds:0x7c28
c000806f:	a1 24 7c 00 00       	mov    eax,ds:0x7c24
c0008074:	8d 4a f8             	lea    ecx,[edx-0x8]
c0008077:	83 ea 26             	sub    edx,0x26
c000807a:	51                   	push   ecx
c000807b:	8d 48 f9             	lea    ecx,[eax-0x7]
c000807e:	2d b3 00 00 00       	sub    eax,0xb3
c0008083:	51                   	push   ecx
c0008084:	52                   	push   edx
c0008085:	50                   	push   eax
c0008086:	68 84 84 84 00       	push   0x848484
c000808b:	68 e8 6c 02 c0       	push   0xc0026ce8
c0008090:	e8 fb 2e 00 00       	call   c000af90 <RectangleFill>
c0008095:	8b 15 28 7c 00 00    	mov    edx,DWORD PTR ds:0x7c28
c000809b:	83 c4 18             	add    esp,0x18
c000809e:	a1 24 7c 00 00       	mov    eax,ds:0x7c24
c00080a3:	8d 4a f5             	lea    ecx,[edx-0xb]
c00080a6:	83 ea 29             	sub    edx,0x29
c00080a9:	51                   	push   ecx
c00080aa:	8d 48 f6             	lea    ecx,[eax-0xa]
c00080ad:	2d b6 00 00 00       	sub    eax,0xb6
c00080b2:	51                   	push   ecx
c00080b3:	52                   	push   edx
c00080b4:	50                   	push   eax
c00080b5:	68 ff ff ff 00       	push   0xffffff
c00080ba:	68 e8 6c 02 c0       	push   0xc0026ce8
c00080bf:	e8 cc 2e 00 00       	call   c000af90 <RectangleFill>
c00080c4:	8b 45 a4             	mov    eax,DWORD PTR [ebp-0x5c]
c00080c7:	b9 64 00 00 00       	mov    ecx,0x64
c00080cc:	31 d2                	xor    edx,edx
c00080ce:	83 c4 20             	add    esp,0x20
c00080d1:	f7 f1                	div    ecx
c00080d3:	8b 45 a4             	mov    eax,DWORD PTR [ebp-0x5c]
c00080d6:	66 b9 90 01          	mov    cx,0x190
c00080da:	89 55 94             	mov    DWORD PTR [ebp-0x6c],edx
c00080dd:	31 d2                	xor    edx,edx
c00080df:	f7 f1                	div    ecx
c00080e1:	8b 4d 98             	mov    ecx,DWORD PTR [ebp-0x68]
c00080e4:	8b 45 a4             	mov    eax,DWORD PTR [ebp-0x5c]
c00080e7:	83 c1 64             	add    ecx,0x64
c00080ea:	83 e0 03             	and    eax,0x3
c00080ed:	89 4d 98             	mov    DWORD PTR [ebp-0x68],ecx
c00080f0:	89 45 8c             	mov    DWORD PTR [ebp-0x74],eax
c00080f3:	89 55 90             	mov    DWORD PTR [ebp-0x70],edx
c00080f6:	eb 0b                	jmp    c0008103 <k_thread_a+0x151>
c00080f8:	c7 45 a0 01 00 00 00 	mov    DWORD PTR [ebp-0x60],0x1
c00080ff:	83 45 98 64          	add    DWORD PTR [ebp-0x68],0x64
c0008103:	ff 75 9c             	push   DWORD PTR [ebp-0x64]
c0008106:	8d 55 b0             	lea    edx,[ebp-0x50]
c0008109:	56                   	push   esi
c000810a:	57                   	push   edi
c000810b:	53                   	push   ebx
c000810c:	ff 75 a0             	push   DWORD PTR [ebp-0x60]
c000810f:	ff 75 a4             	push   DWORD PTR [ebp-0x5c]
c0008112:	68 2d e0 00 c0       	push   0xc000e02d
c0008117:	52                   	push   edx
c0008118:	e8 59 2e 00 00       	call   c000af76 <sprintf>
c000811d:	8b 15 28 7c 00 00    	mov    edx,DWORD PTR ds:0x7c28
c0008123:	83 c4 18             	add    esp,0x18
c0008126:	a1 24 7c 00 00       	mov    eax,ds:0x7c24
c000812b:	8d 4a ee             	lea    ecx,[edx-0x12]
c000812e:	83 ea 22             	sub    edx,0x22
c0008131:	51                   	push   ecx
c0008132:	8d 48 f6             	lea    ecx,[eax-0xa]
c0008135:	2d ac 00 00 00       	sub    eax,0xac
c000813a:	51                   	push   ecx
c000813b:	52                   	push   edx
c000813c:	50                   	push   eax
c000813d:	68 ff ff ff 00       	push   0xffffff
c0008142:	68 e8 6c 02 c0       	push   0xc0026ce8
c0008147:	e8 44 2e 00 00       	call   c000af90 <RectangleFill>
c000814c:	83 c4 14             	add    esp,0x14
c000814f:	8d 4d b0             	lea    ecx,[ebp-0x50]
c0008152:	51                   	push   ecx
c0008153:	6a 00                	push   0x0
c0008155:	a1 28 7c 00 00       	mov    eax,ds:0x7c28
c000815a:	83 e8 22             	sub    eax,0x22
c000815d:	50                   	push   eax
c000815e:	a1 24 7c 00 00       	mov    eax,ds:0x7c24
c0008163:	2d ac 00 00 00       	sub    eax,0xac
c0008168:	50                   	push   eax
c0008169:	68 e8 6c 02 c0       	push   0xc0026ce8
c000816e:	e8 0b 30 00 00       	call   c000b17e <put_str_graphic>
c0008173:	83 c4 20             	add    esp,0x20
c0008176:	a1 d4 f1 00 c0       	mov    eax,ds:0xc000f1d4
c000817b:	3b 45 98             	cmp    eax,DWORD PTR [ebp-0x68]
c000817e:	7e f6                	jle    c0008176 <k_thread_a+0x1c4>
c0008180:	ff 45 9c             	inc    DWORD PTR [ebp-0x64]
c0008183:	83 7d 9c 3b          	cmp    DWORD PTR [ebp-0x64],0x3b
c0008187:	76 0b                	jbe    c0008194 <k_thread_a+0x1e2>
c0008189:	31 c0                	xor    eax,eax
c000818b:	85 f6                	test   esi,esi
c000818d:	0f 95 c0             	setne  al
c0008190:	46                   	inc    esi
c0008191:	89 45 9c             	mov    DWORD PTR [ebp-0x64],eax
c0008194:	83 fe 3b             	cmp    esi,0x3b
c0008197:	76 0a                	jbe    c00081a3 <k_thread_a+0x1f1>
c0008199:	31 d2                	xor    edx,edx
c000819b:	85 ff                	test   edi,edi
c000819d:	0f 95 c2             	setne  dl
c00081a0:	47                   	inc    edi
c00081a1:	89 d6                	mov    esi,edx
c00081a3:	83 ff 18             	cmp    edi,0x18
c00081a6:	76 0a                	jbe    c00081b2 <k_thread_a+0x200>
c00081a8:	31 c9                	xor    ecx,ecx
c00081aa:	85 db                	test   ebx,ebx
c00081ac:	0f 95 c1             	setne  cl
c00081af:	43                   	inc    ebx
c00081b0:	89 cf                	mov    edi,ecx
c00081b2:	83 7d a0 0c          	cmp    DWORD PTR [ebp-0x60],0xc
c00081b6:	0f 87 3c ff ff ff    	ja     c00080f8 <k_thread_a+0x146>
c00081bc:	8a 4d a0             	mov    cl,BYTE PTR [ebp-0x60]
c00081bf:	b8 01 00 00 00       	mov    eax,0x1
c00081c4:	d3 e0                	shl    eax,cl
c00081c6:	a9 aa 15 00 00       	test   eax,0x15aa
c00081cb:	75 12                	jne    c00081df <k_thread_a+0x22d>
c00081cd:	a9 50 0a 00 00       	test   eax,0xa50
c00081d2:	75 06                	jne    c00081da <k_thread_a+0x228>
c00081d4:	a8 04                	test   al,0x4
c00081d6:	75 0e                	jne    c00081e6 <k_thread_a+0x234>
c00081d8:	eb 32                	jmp    c000820c <k_thread_a+0x25a>
c00081da:	83 fb 1e             	cmp    ebx,0x1e
c00081dd:	eb 03                	jmp    c00081e2 <k_thread_a+0x230>
c00081df:	83 fb 1f             	cmp    ebx,0x1f
c00081e2:	77 23                	ja     c0008207 <k_thread_a+0x255>
c00081e4:	eb 26                	jmp    c000820c <k_thread_a+0x25a>
c00081e6:	83 7d 8c 00          	cmp    DWORD PTR [ebp-0x74],0x0
c00081ea:	75 06                	jne    c00081f2 <k_thread_a+0x240>
c00081ec:	83 7d 94 00          	cmp    DWORD PTR [ebp-0x6c],0x0
c00081f0:	75 06                	jne    c00081f8 <k_thread_a+0x246>
c00081f2:	83 7d 90 00          	cmp    DWORD PTR [ebp-0x70],0x0
c00081f6:	75 05                	jne    c00081fd <k_thread_a+0x24b>
c00081f8:	83 fb 1d             	cmp    ebx,0x1d
c00081fb:	eb 03                	jmp    c0008200 <k_thread_a+0x24e>
c00081fd:	83 fb 1c             	cmp    ebx,0x1c
c0008200:	77 19                	ja     c000821b <k_thread_a+0x269>
c0008202:	e9 f8 fe ff ff       	jmp    c00080ff <k_thread_a+0x14d>
c0008207:	bb 01 00 00 00       	mov    ebx,0x1
c000820c:	83 7d a0 0c          	cmp    DWORD PTR [ebp-0x60],0xc
c0008210:	0f 86 e9 fe ff ff    	jbe    c00080ff <k_thread_a+0x14d>
c0008216:	e9 dd fe ff ff       	jmp    c00080f8 <k_thread_a+0x146>
c000821b:	bb 01 00 00 00       	mov    ebx,0x1
c0008220:	e9 da fe ff ff       	jmp    c00080ff <k_thread_a+0x14d>

c0008225 <kernel_main>:
c0008225:	55                   	push   ebp
c0008226:	89 e5                	mov    ebp,esp
c0008228:	53                   	push   ebx
c0008229:	bb 23 00 00 00       	mov    ebx,0x23
c000822e:	83 ec 44             	sub    esp,0x44
c0008231:	50                   	push   eax
c0008232:	50                   	push   eax
c0008233:	6a 0a                	push   0xa
c0008235:	6a 07                	push   0x7
c0008237:	e8 2c 29 00 00       	call   c000ab68 <put_char>
c000823c:	83 c4 10             	add    esp,0x10
c000823f:	4b                   	dec    ebx
c0008240:	75 ef                	jne    c0008231 <kernel_main+0xc>
c0008242:	83 ec 0c             	sub    esp,0xc
c0008245:	6a 00                	push   0x0
c0008247:	e8 f5 28 00 00       	call   c000ab41 <set_cursor>
c000824c:	e8 03 02 00 00       	call   c0008454 <init_all>
c0008251:	e8 ab 0c 00 00       	call   c0008f01 <intr_enable>
c0008256:	5b                   	pop    ebx
c0008257:	58                   	pop    eax
c0008258:	68 4b e0 00 c0       	push   0xc000e04b
c000825d:	6a 07                	push   0x7
c000825f:	e8 2b 1e 00 00       	call   c000a08f <console_str>
c0008264:	58                   	pop    eax
c0008265:	5a                   	pop    edx
c0008266:	68 74 e0 00 c0       	push   0xc000e074
c000826b:	6a 07                	push   0x7
c000826d:	e8 1d 1e 00 00       	call   c000a08f <console_str>
c0008272:	e8 37 1f 00 00       	call   c000a1ae <cpu_info>
c0008277:	59                   	pop    ecx
c0008278:	5b                   	pop    ebx
c0008279:	6a 0a                	push   0xa
c000827b:	6a 07                	push   0x7
c000827d:	e8 cf 1d 00 00       	call   c000a051 <console_char>
c0008282:	58                   	pop    eax
c0008283:	5a                   	pop    edx
c0008284:	68 7d e0 00 c0       	push   0xc000e07d
c0008289:	6a 07                	push   0x7
c000828b:	e8 ff 1d 00 00       	call   c000a08f <console_str>
c0008290:	83 c4 0c             	add    esp,0xc
c0008293:	6a 0a                	push   0xa
c0008295:	a1 08 7c 00 00       	mov    eax,ds:0x7c08
c000829a:	c1 e8 14             	shr    eax,0x14
c000829d:	50                   	push   eax
c000829e:	6a 07                	push   0x7
c00082a0:	e8 23 1e 00 00       	call   c000a0c8 <console_int>
c00082a5:	59                   	pop    ecx
c00082a6:	5b                   	pop    ebx
c00082a7:	68 86 e0 00 c0       	push   0xc000e086
c00082ac:	6a 07                	push   0x7
c00082ae:	e8 dc 1d 00 00       	call   c000a08f <console_str>
c00082b3:	83 c4 0c             	add    esp,0xc
c00082b6:	6a 0a                	push   0xa
c00082b8:	a1 08 7c 00 00       	mov    eax,ds:0x7c08
c00082bd:	c1 e8 0a             	shr    eax,0xa
c00082c0:	50                   	push   eax
c00082c1:	6a 07                	push   0x7
c00082c3:	e8 00 1e 00 00       	call   c000a0c8 <console_int>
c00082c8:	58                   	pop    eax
c00082c9:	5a                   	pop    edx
c00082ca:	68 8c e0 00 c0       	push   0xc000e08c
c00082cf:	6a 07                	push   0x7
c00082d1:	e8 33 29 00 00       	call   c000ac09 <put_str>
c00082d6:	59                   	pop    ecx
c00082d7:	5b                   	pop    ebx
c00082d8:	6a 0a                	push   0xa
c00082da:	6a 07                	push   0x7
c00082dc:	e8 87 28 00 00       	call   c000ab68 <put_char>
c00082e1:	58                   	pop    eax
c00082e2:	5a                   	pop    edx
c00082e3:	68 92 e0 00 c0       	push   0xc000e092
c00082e8:	6a 07                	push   0x7
c00082ea:	e8 a0 1d 00 00       	call   c000a08f <console_str>
c00082ef:	83 c4 0c             	add    esp,0xc
c00082f2:	6a 0a                	push   0xa
c00082f4:	ff 35 10 7c 00 00    	push   DWORD PTR ds:0x7c10
c00082fa:	6a 07                	push   0x7
c00082fc:	e8 c7 1d 00 00       	call   c000a0c8 <console_int>
c0008301:	59                   	pop    ecx
c0008302:	5b                   	pop    ebx
c0008303:	8d 5d b8             	lea    ebx,[ebp-0x48]
c0008306:	6a 0a                	push   0xa
c0008308:	6a 07                	push   0x7
c000830a:	e8 42 1d 00 00       	call   c000a051 <console_char>
c000830f:	c7 04 24 9b e0 00 c0 	mov    DWORD PTR [esp],0xc000e09b
c0008316:	68 ff ff ff 00       	push   0xffffff
c000831b:	6a 14                	push   0x14
c000831d:	6a 14                	push   0x14
c000831f:	68 e8 6c 02 c0       	push   0xc0026ce8
c0008324:	e8 55 2e 00 00       	call   c000b17e <put_str_graphic>
c0008329:	83 c4 14             	add    esp,0x14
c000832c:	ff 35 28 7c 00 00    	push   DWORD PTR ds:0x7c28
c0008332:	ff 35 24 7c 00 00    	push   DWORD PTR ds:0x7c24
c0008338:	ff 35 18 7c 00 00    	push   DWORD PTR ds:0x7c18
c000833e:	68 c2 e0 00 c0       	push   0xc000e0c2
c0008343:	53                   	push   ebx
c0008344:	e8 2d 2c 00 00       	call   c000af76 <sprintf>
c0008349:	83 c4 14             	add    esp,0x14
c000834c:	53                   	push   ebx
c000834d:	68 ff ff ff 00       	push   0xffffff
c0008352:	6a 24                	push   0x24
c0008354:	6a 14                	push   0x14
c0008356:	68 e8 6c 02 c0       	push   0xc0026ce8
c000835b:	e8 1e 2e 00 00       	call   c000b17e <put_str_graphic>
c0008360:	83 c4 20             	add    esp,0x20
c0008363:	68 e9 e0 00 c0       	push   0xc000e0e9
c0008368:	68 b2 7f 00 c0       	push   0xc0007fb2
c000836d:	6a 1f                	push   0x1f
c000836f:	68 f0 e0 00 c0       	push   0xc000e0f0
c0008374:	e8 42 16 00 00       	call   c00099bb <thread_start>
c0008379:	68 f4 e0 00 c0       	push   0xc000e0f4
c000837e:	68 30 7f 00 c0       	push   0xc0007f30
c0008383:	6a 1f                	push   0x1f
c0008385:	68 fb e0 00 c0       	push   0xc000e0fb
c000838a:	e8 2c 16 00 00       	call   c00099bb <thread_start>
c000838f:	83 c4 18             	add    esp,0x18
c0008392:	68 ff e0 00 c0       	push   0xc000e0ff
c0008397:	68 20 7f 00 c0       	push   0xc0007f20
c000839c:	e8 84 1b 00 00       	call   c0009f25 <process_execute>
c00083a1:	83 c4 10             	add    esp,0x10
c00083a4:	eb fe                	jmp    c00083a4 <kernel_main+0x17f>
	...

c00083a8 <panic_spin>:
c00083a8:	55                   	push   ebp
c00083a9:	89 e5                	mov    ebp,esp
c00083ab:	83 ec 08             	sub    esp,0x8
c00083ae:	e8 66 09 00 00       	call   c0008d19 <intr_disable>
c00083b3:	52                   	push   edx
c00083b4:	52                   	push   edx
c00083b5:	68 34 e1 00 c0       	push   0xc000e134
c00083ba:	6a 04                	push   0x4
c00083bc:	e8 48 28 00 00       	call   c000ac09 <put_str>
c00083c1:	59                   	pop    ecx
c00083c2:	58                   	pop    eax
c00083c3:	68 3c e1 00 c0       	push   0xc000e13c
c00083c8:	6a 04                	push   0x4
c00083ca:	e8 3a 28 00 00       	call   c000ac09 <put_str>
c00083cf:	58                   	pop    eax
c00083d0:	5a                   	pop    edx
c00083d1:	ff 75 08             	push   DWORD PTR [ebp+0x8]
c00083d4:	6a 04                	push   0x4
c00083d6:	e8 2e 28 00 00       	call   c000ac09 <put_str>
c00083db:	59                   	pop    ecx
c00083dc:	58                   	pop    eax
c00083dd:	6a 0a                	push   0xa
c00083df:	6a 04                	push   0x4
c00083e1:	e8 82 27 00 00       	call   c000ab68 <put_char>
c00083e6:	58                   	pop    eax
c00083e7:	5a                   	pop    edx
c00083e8:	68 4b e1 00 c0       	push   0xc000e14b
c00083ed:	6a 04                	push   0x4
c00083ef:	e8 15 28 00 00       	call   c000ac09 <put_str>
c00083f4:	59                   	pop    ecx
c00083f5:	58                   	pop    eax
c00083f6:	ff 75 10             	push   DWORD PTR [ebp+0x10]
c00083f9:	6a 04                	push   0x4
c00083fb:	e8 09 28 00 00       	call   c000ac09 <put_str>
c0008400:	58                   	pop    eax
c0008401:	5a                   	pop    edx
c0008402:	6a 0a                	push   0xa
c0008404:	6a 04                	push   0x4
c0008406:	e8 5d 27 00 00       	call   c000ab68 <put_char>
c000840b:	59                   	pop    ecx
c000840c:	58                   	pop    eax
c000840d:	68 5a e1 00 c0       	push   0xc000e15a
c0008412:	6a 04                	push   0x4
c0008414:	e8 f0 27 00 00       	call   c000ac09 <put_str>
c0008419:	83 c4 0c             	add    esp,0xc
c000841c:	6a 0a                	push   0xa
c000841e:	ff 75 0c             	push   DWORD PTR [ebp+0xc]
c0008421:	6a 04                	push   0x4
c0008423:	e8 43 28 00 00       	call   c000ac6b <put_int>
c0008428:	58                   	pop    eax
c0008429:	5a                   	pop    edx
c000842a:	6a 0a                	push   0xa
c000842c:	6a 04                	push   0x4
c000842e:	e8 35 27 00 00       	call   c000ab68 <put_char>
c0008433:	59                   	pop    ecx
c0008434:	58                   	pop    eax
c0008435:	68 69 e1 00 c0       	push   0xc000e169
c000843a:	6a 04                	push   0x4
c000843c:	e8 c8 27 00 00       	call   c000ac09 <put_str>
c0008441:	58                   	pop    eax
c0008442:	5a                   	pop    edx
c0008443:	ff 75 14             	push   DWORD PTR [ebp+0x14]
c0008446:	6a 04                	push   0x4
c0008448:	e8 bc 27 00 00       	call   c000ac09 <put_str>
c000844d:	83 c4 10             	add    esp,0x10
c0008450:	eb fe                	jmp    c0008450 <panic_spin+0xa8>
	...

c0008454 <init_all>:
c0008454:	55                   	push   ebp
c0008455:	89 e5                	mov    ebp,esp
c0008457:	83 ec 10             	sub    esp,0x10
c000845a:	68 a0 e1 00 c0       	push   0xc000e1a0
c000845f:	6a 02                	push   0x2
c0008461:	e8 a3 27 00 00       	call   c000ac09 <put_str>
c0008466:	e8 6c 08 00 00       	call   c0008cd7 <init_idt>
c000846b:	e8 4a 18 00 00       	call   c0009cba <init_tss>
c0008470:	e8 2b 20 00 00       	call   c000a4a0 <init_pit>
c0008475:	e8 50 0d 00 00       	call   c00091ca <init_memory>
c000847a:	e8 95 1d 00 00       	call   c000a214 <init_keyboard>
c000847f:	e8 8b 14 00 00       	call   c000990f <init_thread>
c0008484:	e8 b3 1b 00 00       	call   c000a03c <init_console>
c0008489:	c7 04 24 e8 6c 02 c0 	mov    DWORD PTR [esp],0xc0026ce8
c0008490:	e8 6d 2b 00 00       	call   c000b002 <init_screen>
c0008495:	58                   	pop    eax
c0008496:	5a                   	pop    edx
c0008497:	68 ac e1 00 c0       	push   0xc000e1ac
c000849c:	6a 02                	push   0x2
c000849e:	e8 66 27 00 00       	call   c000ac09 <put_str>
c00084a3:	83 c4 10             	add    esp,0x10
c00084a6:	c9                   	leave  
c00084a7:	c3                   	ret    
	...

c00084b0 <intr_exit>:
c00084b0:	81 c4 04 00 00 00    	add    esp,0x4
c00084b6:	61                   	popa   
c00084b7:	0f a9                	pop    gs
c00084b9:	0f a1                	pop    fs
c00084bb:	07                   	pop    es
c00084bc:	1f                   	pop    ds
c00084bd:	81 c4 04 00 00 00    	add    esp,0x4
c00084c3:	cf                   	iret   

c00084c4 <asm_intr0x00_handler>:
c00084c4:	68 00 00 00 00       	push   0x0
c00084c9:	1e                   	push   ds
c00084ca:	06                   	push   es
c00084cb:	0f a0                	push   fs
c00084cd:	0f a8                	push   gs
c00084cf:	60                   	pusha  
c00084d0:	68 00 00 00 00       	push   0x0
c00084d5:	66 8c d0             	mov    ax,ss
c00084d8:	8e d8                	mov    ds,eax
c00084da:	8e c0                	mov    es,eax
c00084dc:	ff 15 0c f4 00 c0    	call   DWORD PTR ds:0xc000f40c
c00084e2:	e9 c9 ff ff ff       	jmp    c00084b0 <intr_exit>

c00084e7 <asm_intr0x01_handler>:
c00084e7:	68 00 00 00 00       	push   0x0
c00084ec:	1e                   	push   ds
c00084ed:	06                   	push   es
c00084ee:	0f a0                	push   fs
c00084f0:	0f a8                	push   gs
c00084f2:	60                   	pusha  
c00084f3:	68 01 00 00 00       	push   0x1
c00084f8:	66 8c d0             	mov    ax,ss
c00084fb:	8e d8                	mov    ds,eax
c00084fd:	8e c0                	mov    es,eax
c00084ff:	ff 15 10 f4 00 c0    	call   DWORD PTR ds:0xc000f410
c0008505:	e9 a6 ff ff ff       	jmp    c00084b0 <intr_exit>

c000850a <asm_intr0x02_handler>:
c000850a:	68 00 00 00 00       	push   0x0
c000850f:	1e                   	push   ds
c0008510:	06                   	push   es
c0008511:	0f a0                	push   fs
c0008513:	0f a8                	push   gs
c0008515:	60                   	pusha  
c0008516:	68 02 00 00 00       	push   0x2
c000851b:	66 8c d0             	mov    ax,ss
c000851e:	8e d8                	mov    ds,eax
c0008520:	8e c0                	mov    es,eax
c0008522:	ff 15 14 f4 00 c0    	call   DWORD PTR ds:0xc000f414
c0008528:	e9 83 ff ff ff       	jmp    c00084b0 <intr_exit>

c000852d <asm_intr0x03_handler>:
c000852d:	68 00 00 00 00       	push   0x0
c0008532:	1e                   	push   ds
c0008533:	06                   	push   es
c0008534:	0f a0                	push   fs
c0008536:	0f a8                	push   gs
c0008538:	60                   	pusha  
c0008539:	68 03 00 00 00       	push   0x3
c000853e:	66 8c d0             	mov    ax,ss
c0008541:	8e d8                	mov    ds,eax
c0008543:	8e c0                	mov    es,eax
c0008545:	ff 15 18 f4 00 c0    	call   DWORD PTR ds:0xc000f418
c000854b:	e9 60 ff ff ff       	jmp    c00084b0 <intr_exit>

c0008550 <asm_intr0x04_handler>:
c0008550:	68 00 00 00 00       	push   0x0
c0008555:	1e                   	push   ds
c0008556:	06                   	push   es
c0008557:	0f a0                	push   fs
c0008559:	0f a8                	push   gs
c000855b:	60                   	pusha  
c000855c:	68 04 00 00 00       	push   0x4
c0008561:	66 8c d0             	mov    ax,ss
c0008564:	8e d8                	mov    ds,eax
c0008566:	8e c0                	mov    es,eax
c0008568:	ff 15 1c f4 00 c0    	call   DWORD PTR ds:0xc000f41c
c000856e:	e9 3d ff ff ff       	jmp    c00084b0 <intr_exit>

c0008573 <asm_intr0x05_handler>:
c0008573:	68 00 00 00 00       	push   0x0
c0008578:	1e                   	push   ds
c0008579:	06                   	push   es
c000857a:	0f a0                	push   fs
c000857c:	0f a8                	push   gs
c000857e:	60                   	pusha  
c000857f:	68 05 00 00 00       	push   0x5
c0008584:	66 8c d0             	mov    ax,ss
c0008587:	8e d8                	mov    ds,eax
c0008589:	8e c0                	mov    es,eax
c000858b:	ff 15 20 f4 00 c0    	call   DWORD PTR ds:0xc000f420
c0008591:	e9 1a ff ff ff       	jmp    c00084b0 <intr_exit>

c0008596 <asm_intr0x06_handler>:
c0008596:	68 00 00 00 00       	push   0x0
c000859b:	1e                   	push   ds
c000859c:	06                   	push   es
c000859d:	0f a0                	push   fs
c000859f:	0f a8                	push   gs
c00085a1:	60                   	pusha  
c00085a2:	68 06 00 00 00       	push   0x6
c00085a7:	66 8c d0             	mov    ax,ss
c00085aa:	8e d8                	mov    ds,eax
c00085ac:	8e c0                	mov    es,eax
c00085ae:	ff 15 24 f4 00 c0    	call   DWORD PTR ds:0xc000f424
c00085b4:	e9 f7 fe ff ff       	jmp    c00084b0 <intr_exit>

c00085b9 <asm_intr0x07_handler>:
c00085b9:	68 00 00 00 00       	push   0x0
c00085be:	1e                   	push   ds
c00085bf:	06                   	push   es
c00085c0:	0f a0                	push   fs
c00085c2:	0f a8                	push   gs
c00085c4:	60                   	pusha  
c00085c5:	68 07 00 00 00       	push   0x7
c00085ca:	66 8c d0             	mov    ax,ss
c00085cd:	8e d8                	mov    ds,eax
c00085cf:	8e c0                	mov    es,eax
c00085d1:	ff 15 28 f4 00 c0    	call   DWORD PTR ds:0xc000f428
c00085d7:	e9 d4 fe ff ff       	jmp    c00084b0 <intr_exit>

c00085dc <asm_intr0x08_handler>:
c00085dc:	90                   	nop
c00085dd:	1e                   	push   ds
c00085de:	06                   	push   es
c00085df:	0f a0                	push   fs
c00085e1:	0f a8                	push   gs
c00085e3:	60                   	pusha  
c00085e4:	68 08 00 00 00       	push   0x8
c00085e9:	66 8c d0             	mov    ax,ss
c00085ec:	8e d8                	mov    ds,eax
c00085ee:	8e c0                	mov    es,eax
c00085f0:	ff 15 2c f4 00 c0    	call   DWORD PTR ds:0xc000f42c
c00085f6:	e9 b5 fe ff ff       	jmp    c00084b0 <intr_exit>

c00085fb <asm_intr0x09_handler>:
c00085fb:	68 00 00 00 00       	push   0x0
c0008600:	1e                   	push   ds
c0008601:	06                   	push   es
c0008602:	0f a0                	push   fs
c0008604:	0f a8                	push   gs
c0008606:	60                   	pusha  
c0008607:	68 09 00 00 00       	push   0x9
c000860c:	66 8c d0             	mov    ax,ss
c000860f:	8e d8                	mov    ds,eax
c0008611:	8e c0                	mov    es,eax
c0008613:	ff 15 30 f4 00 c0    	call   DWORD PTR ds:0xc000f430
c0008619:	e9 92 fe ff ff       	jmp    c00084b0 <intr_exit>

c000861e <asm_intr0x0a_handler>:
c000861e:	90                   	nop
c000861f:	1e                   	push   ds
c0008620:	06                   	push   es
c0008621:	0f a0                	push   fs
c0008623:	0f a8                	push   gs
c0008625:	60                   	pusha  
c0008626:	68 0a 00 00 00       	push   0xa
c000862b:	66 8c d0             	mov    ax,ss
c000862e:	8e d8                	mov    ds,eax
c0008630:	8e c0                	mov    es,eax
c0008632:	ff 15 34 f4 00 c0    	call   DWORD PTR ds:0xc000f434
c0008638:	e9 73 fe ff ff       	jmp    c00084b0 <intr_exit>

c000863d <asm_intr0x0b_handler>:
c000863d:	90                   	nop
c000863e:	1e                   	push   ds
c000863f:	06                   	push   es
c0008640:	0f a0                	push   fs
c0008642:	0f a8                	push   gs
c0008644:	60                   	pusha  
c0008645:	68 0b 00 00 00       	push   0xb
c000864a:	66 8c d0             	mov    ax,ss
c000864d:	8e d8                	mov    ds,eax
c000864f:	8e c0                	mov    es,eax
c0008651:	ff 15 38 f4 00 c0    	call   DWORD PTR ds:0xc000f438
c0008657:	e9 54 fe ff ff       	jmp    c00084b0 <intr_exit>

c000865c <asm_intr0x0c_handler>:
c000865c:	68 00 00 00 00       	push   0x0
c0008661:	1e                   	push   ds
c0008662:	06                   	push   es
c0008663:	0f a0                	push   fs
c0008665:	0f a8                	push   gs
c0008667:	60                   	pusha  
c0008668:	68 0c 00 00 00       	push   0xc
c000866d:	66 8c d0             	mov    ax,ss
c0008670:	8e d8                	mov    ds,eax
c0008672:	8e c0                	mov    es,eax
c0008674:	ff 15 3c f4 00 c0    	call   DWORD PTR ds:0xc000f43c
c000867a:	e9 31 fe ff ff       	jmp    c00084b0 <intr_exit>

c000867f <asm_intr0x0d_handler>:
c000867f:	90                   	nop
c0008680:	1e                   	push   ds
c0008681:	06                   	push   es
c0008682:	0f a0                	push   fs
c0008684:	0f a8                	push   gs
c0008686:	60                   	pusha  
c0008687:	68 0d 00 00 00       	push   0xd
c000868c:	66 8c d0             	mov    ax,ss
c000868f:	8e d8                	mov    ds,eax
c0008691:	8e c0                	mov    es,eax
c0008693:	ff 15 40 f4 00 c0    	call   DWORD PTR ds:0xc000f440
c0008699:	e9 12 fe ff ff       	jmp    c00084b0 <intr_exit>

c000869e <asm_intr0x0e_handler>:
c000869e:	90                   	nop
c000869f:	1e                   	push   ds
c00086a0:	06                   	push   es
c00086a1:	0f a0                	push   fs
c00086a3:	0f a8                	push   gs
c00086a5:	60                   	pusha  
c00086a6:	68 0e 00 00 00       	push   0xe
c00086ab:	66 8c d0             	mov    ax,ss
c00086ae:	8e d8                	mov    ds,eax
c00086b0:	8e c0                	mov    es,eax
c00086b2:	ff 15 44 f4 00 c0    	call   DWORD PTR ds:0xc000f444
c00086b8:	e9 f3 fd ff ff       	jmp    c00084b0 <intr_exit>

c00086bd <asm_intr0x0f_handler>:
c00086bd:	68 00 00 00 00       	push   0x0
c00086c2:	1e                   	push   ds
c00086c3:	06                   	push   es
c00086c4:	0f a0                	push   fs
c00086c6:	0f a8                	push   gs
c00086c8:	60                   	pusha  
c00086c9:	68 0f 00 00 00       	push   0xf
c00086ce:	66 8c d0             	mov    ax,ss
c00086d1:	8e d8                	mov    ds,eax
c00086d3:	8e c0                	mov    es,eax
c00086d5:	ff 15 48 f4 00 c0    	call   DWORD PTR ds:0xc000f448
c00086db:	e9 d0 fd ff ff       	jmp    c00084b0 <intr_exit>

c00086e0 <asm_intr0x10_handler>:
c00086e0:	68 00 00 00 00       	push   0x0
c00086e5:	1e                   	push   ds
c00086e6:	06                   	push   es
c00086e7:	0f a0                	push   fs
c00086e9:	0f a8                	push   gs
c00086eb:	60                   	pusha  
c00086ec:	68 10 00 00 00       	push   0x10
c00086f1:	66 8c d0             	mov    ax,ss
c00086f4:	8e d8                	mov    ds,eax
c00086f6:	8e c0                	mov    es,eax
c00086f8:	ff 15 4c f4 00 c0    	call   DWORD PTR ds:0xc000f44c
c00086fe:	e9 ad fd ff ff       	jmp    c00084b0 <intr_exit>

c0008703 <asm_intr0x11_handler>:
c0008703:	90                   	nop
c0008704:	1e                   	push   ds
c0008705:	06                   	push   es
c0008706:	0f a0                	push   fs
c0008708:	0f a8                	push   gs
c000870a:	60                   	pusha  
c000870b:	68 11 00 00 00       	push   0x11
c0008710:	66 8c d0             	mov    ax,ss
c0008713:	8e d8                	mov    ds,eax
c0008715:	8e c0                	mov    es,eax
c0008717:	ff 15 50 f4 00 c0    	call   DWORD PTR ds:0xc000f450
c000871d:	e9 8e fd ff ff       	jmp    c00084b0 <intr_exit>

c0008722 <asm_intr0x12_handler>:
c0008722:	68 00 00 00 00       	push   0x0
c0008727:	1e                   	push   ds
c0008728:	06                   	push   es
c0008729:	0f a0                	push   fs
c000872b:	0f a8                	push   gs
c000872d:	60                   	pusha  
c000872e:	68 12 00 00 00       	push   0x12
c0008733:	66 8c d0             	mov    ax,ss
c0008736:	8e d8                	mov    ds,eax
c0008738:	8e c0                	mov    es,eax
c000873a:	ff 15 54 f4 00 c0    	call   DWORD PTR ds:0xc000f454
c0008740:	e9 6b fd ff ff       	jmp    c00084b0 <intr_exit>

c0008745 <asm_intr0x13_handler>:
c0008745:	68 00 00 00 00       	push   0x0
c000874a:	1e                   	push   ds
c000874b:	06                   	push   es
c000874c:	0f a0                	push   fs
c000874e:	0f a8                	push   gs
c0008750:	60                   	pusha  
c0008751:	68 13 00 00 00       	push   0x13
c0008756:	66 8c d0             	mov    ax,ss
c0008759:	8e d8                	mov    ds,eax
c000875b:	8e c0                	mov    es,eax
c000875d:	ff 15 58 f4 00 c0    	call   DWORD PTR ds:0xc000f458
c0008763:	e9 48 fd ff ff       	jmp    c00084b0 <intr_exit>

c0008768 <asm_intr0x14_handler>:
c0008768:	68 00 00 00 00       	push   0x0
c000876d:	1e                   	push   ds
c000876e:	06                   	push   es
c000876f:	0f a0                	push   fs
c0008771:	0f a8                	push   gs
c0008773:	60                   	pusha  
c0008774:	68 14 00 00 00       	push   0x14
c0008779:	66 8c d0             	mov    ax,ss
c000877c:	8e d8                	mov    ds,eax
c000877e:	8e c0                	mov    es,eax
c0008780:	ff 15 5c f4 00 c0    	call   DWORD PTR ds:0xc000f45c
c0008786:	e9 25 fd ff ff       	jmp    c00084b0 <intr_exit>

c000878b <asm_intr0x15_handler>:
c000878b:	68 00 00 00 00       	push   0x0
c0008790:	1e                   	push   ds
c0008791:	06                   	push   es
c0008792:	0f a0                	push   fs
c0008794:	0f a8                	push   gs
c0008796:	60                   	pusha  
c0008797:	68 15 00 00 00       	push   0x15
c000879c:	66 8c d0             	mov    ax,ss
c000879f:	8e d8                	mov    ds,eax
c00087a1:	8e c0                	mov    es,eax
c00087a3:	ff 15 60 f4 00 c0    	call   DWORD PTR ds:0xc000f460
c00087a9:	e9 02 fd ff ff       	jmp    c00084b0 <intr_exit>

c00087ae <asm_intr0x16_handler>:
c00087ae:	68 00 00 00 00       	push   0x0
c00087b3:	1e                   	push   ds
c00087b4:	06                   	push   es
c00087b5:	0f a0                	push   fs
c00087b7:	0f a8                	push   gs
c00087b9:	60                   	pusha  
c00087ba:	68 16 00 00 00       	push   0x16
c00087bf:	66 8c d0             	mov    ax,ss
c00087c2:	8e d8                	mov    ds,eax
c00087c4:	8e c0                	mov    es,eax
c00087c6:	ff 15 64 f4 00 c0    	call   DWORD PTR ds:0xc000f464
c00087cc:	e9 df fc ff ff       	jmp    c00084b0 <intr_exit>

c00087d1 <asm_intr0x17_handler>:
c00087d1:	68 00 00 00 00       	push   0x0
c00087d6:	1e                   	push   ds
c00087d7:	06                   	push   es
c00087d8:	0f a0                	push   fs
c00087da:	0f a8                	push   gs
c00087dc:	60                   	pusha  
c00087dd:	68 17 00 00 00       	push   0x17
c00087e2:	66 8c d0             	mov    ax,ss
c00087e5:	8e d8                	mov    ds,eax
c00087e7:	8e c0                	mov    es,eax
c00087e9:	ff 15 68 f4 00 c0    	call   DWORD PTR ds:0xc000f468
c00087ef:	e9 bc fc ff ff       	jmp    c00084b0 <intr_exit>

c00087f4 <asm_intr0x18_handler>:
c00087f4:	90                   	nop
c00087f5:	1e                   	push   ds
c00087f6:	06                   	push   es
c00087f7:	0f a0                	push   fs
c00087f9:	0f a8                	push   gs
c00087fb:	60                   	pusha  
c00087fc:	68 18 00 00 00       	push   0x18
c0008801:	66 8c d0             	mov    ax,ss
c0008804:	8e d8                	mov    ds,eax
c0008806:	8e c0                	mov    es,eax
c0008808:	ff 15 6c f4 00 c0    	call   DWORD PTR ds:0xc000f46c
c000880e:	e9 9d fc ff ff       	jmp    c00084b0 <intr_exit>

c0008813 <asm_intr0x19_handler>:
c0008813:	68 00 00 00 00       	push   0x0
c0008818:	1e                   	push   ds
c0008819:	06                   	push   es
c000881a:	0f a0                	push   fs
c000881c:	0f a8                	push   gs
c000881e:	60                   	pusha  
c000881f:	68 19 00 00 00       	push   0x19
c0008824:	66 8c d0             	mov    ax,ss
c0008827:	8e d8                	mov    ds,eax
c0008829:	8e c0                	mov    es,eax
c000882b:	ff 15 70 f4 00 c0    	call   DWORD PTR ds:0xc000f470
c0008831:	e9 7a fc ff ff       	jmp    c00084b0 <intr_exit>

c0008836 <asm_intr0x1a_handler>:
c0008836:	90                   	nop
c0008837:	1e                   	push   ds
c0008838:	06                   	push   es
c0008839:	0f a0                	push   fs
c000883b:	0f a8                	push   gs
c000883d:	60                   	pusha  
c000883e:	68 1a 00 00 00       	push   0x1a
c0008843:	66 8c d0             	mov    ax,ss
c0008846:	8e d8                	mov    ds,eax
c0008848:	8e c0                	mov    es,eax
c000884a:	ff 15 74 f4 00 c0    	call   DWORD PTR ds:0xc000f474
c0008850:	e9 5b fc ff ff       	jmp    c00084b0 <intr_exit>

c0008855 <asm_intr0x1b_handler>:
c0008855:	90                   	nop
c0008856:	1e                   	push   ds
c0008857:	06                   	push   es
c0008858:	0f a0                	push   fs
c000885a:	0f a8                	push   gs
c000885c:	60                   	pusha  
c000885d:	68 1b 00 00 00       	push   0x1b
c0008862:	66 8c d0             	mov    ax,ss
c0008865:	8e d8                	mov    ds,eax
c0008867:	8e c0                	mov    es,eax
c0008869:	ff 15 78 f4 00 c0    	call   DWORD PTR ds:0xc000f478
c000886f:	e9 3c fc ff ff       	jmp    c00084b0 <intr_exit>

c0008874 <asm_intr0x1c_handler>:
c0008874:	68 00 00 00 00       	push   0x0
c0008879:	1e                   	push   ds
c000887a:	06                   	push   es
c000887b:	0f a0                	push   fs
c000887d:	0f a8                	push   gs
c000887f:	60                   	pusha  
c0008880:	68 1c 00 00 00       	push   0x1c
c0008885:	66 8c d0             	mov    ax,ss
c0008888:	8e d8                	mov    ds,eax
c000888a:	8e c0                	mov    es,eax
c000888c:	ff 15 7c f4 00 c0    	call   DWORD PTR ds:0xc000f47c
c0008892:	e9 19 fc ff ff       	jmp    c00084b0 <intr_exit>

c0008897 <asm_intr0x1d_handler>:
c0008897:	90                   	nop
c0008898:	1e                   	push   ds
c0008899:	06                   	push   es
c000889a:	0f a0                	push   fs
c000889c:	0f a8                	push   gs
c000889e:	60                   	pusha  
c000889f:	68 1d 00 00 00       	push   0x1d
c00088a4:	66 8c d0             	mov    ax,ss
c00088a7:	8e d8                	mov    ds,eax
c00088a9:	8e c0                	mov    es,eax
c00088ab:	ff 15 80 f4 00 c0    	call   DWORD PTR ds:0xc000f480
c00088b1:	e9 fa fb ff ff       	jmp    c00084b0 <intr_exit>

c00088b6 <asm_intr0x1e_handler>:
c00088b6:	90                   	nop
c00088b7:	1e                   	push   ds
c00088b8:	06                   	push   es
c00088b9:	0f a0                	push   fs
c00088bb:	0f a8                	push   gs
c00088bd:	60                   	pusha  
c00088be:	68 1e 00 00 00       	push   0x1e
c00088c3:	66 8c d0             	mov    ax,ss
c00088c6:	8e d8                	mov    ds,eax
c00088c8:	8e c0                	mov    es,eax
c00088ca:	ff 15 84 f4 00 c0    	call   DWORD PTR ds:0xc000f484
c00088d0:	e9 db fb ff ff       	jmp    c00084b0 <intr_exit>

c00088d5 <asm_intr0x1f_handler>:
c00088d5:	68 00 00 00 00       	push   0x0
c00088da:	1e                   	push   ds
c00088db:	06                   	push   es
c00088dc:	0f a0                	push   fs
c00088de:	0f a8                	push   gs
c00088e0:	60                   	pusha  
c00088e1:	68 1f 00 00 00       	push   0x1f
c00088e6:	66 8c d0             	mov    ax,ss
c00088e9:	8e d8                	mov    ds,eax
c00088eb:	8e c0                	mov    es,eax
c00088ed:	ff 15 88 f4 00 c0    	call   DWORD PTR ds:0xc000f488
c00088f3:	e9 b8 fb ff ff       	jmp    c00084b0 <intr_exit>

c00088f8 <asm_intr0x20_handler>:
c00088f8:	68 00 00 00 00       	push   0x0
c00088fd:	1e                   	push   ds
c00088fe:	06                   	push   es
c00088ff:	0f a0                	push   fs
c0008901:	0f a8                	push   gs
c0008903:	60                   	pusha  
c0008904:	68 20 00 00 00       	push   0x20
c0008909:	66 8c d0             	mov    ax,ss
c000890c:	8e d8                	mov    ds,eax
c000890e:	8e c0                	mov    es,eax
c0008910:	ff 15 8c f4 00 c0    	call   DWORD PTR ds:0xc000f48c
c0008916:	e9 95 fb ff ff       	jmp    c00084b0 <intr_exit>

c000891b <asm_intr0x21_handler>:
c000891b:	68 00 00 00 00       	push   0x0
c0008920:	1e                   	push   ds
c0008921:	06                   	push   es
c0008922:	0f a0                	push   fs
c0008924:	0f a8                	push   gs
c0008926:	60                   	pusha  
c0008927:	68 21 00 00 00       	push   0x21
c000892c:	66 8c d0             	mov    ax,ss
c000892f:	8e d8                	mov    ds,eax
c0008931:	8e c0                	mov    es,eax
c0008933:	ff 15 90 f4 00 c0    	call   DWORD PTR ds:0xc000f490
c0008939:	e9 72 fb ff ff       	jmp    c00084b0 <intr_exit>

c000893e <asm_intr0x22_handler>:
c000893e:	68 00 00 00 00       	push   0x0
c0008943:	1e                   	push   ds
c0008944:	06                   	push   es
c0008945:	0f a0                	push   fs
c0008947:	0f a8                	push   gs
c0008949:	60                   	pusha  
c000894a:	68 22 00 00 00       	push   0x22
c000894f:	66 8c d0             	mov    ax,ss
c0008952:	8e d8                	mov    ds,eax
c0008954:	8e c0                	mov    es,eax
c0008956:	ff 15 94 f4 00 c0    	call   DWORD PTR ds:0xc000f494
c000895c:	e9 4f fb ff ff       	jmp    c00084b0 <intr_exit>

c0008961 <asm_intr0x23_handler>:
c0008961:	68 00 00 00 00       	push   0x0
c0008966:	1e                   	push   ds
c0008967:	06                   	push   es
c0008968:	0f a0                	push   fs
c000896a:	0f a8                	push   gs
c000896c:	60                   	pusha  
c000896d:	68 23 00 00 00       	push   0x23
c0008972:	66 8c d0             	mov    ax,ss
c0008975:	8e d8                	mov    ds,eax
c0008977:	8e c0                	mov    es,eax
c0008979:	ff 15 98 f4 00 c0    	call   DWORD PTR ds:0xc000f498
c000897f:	e9 2c fb ff ff       	jmp    c00084b0 <intr_exit>

c0008984 <asm_intr0x24_handler>:
c0008984:	68 00 00 00 00       	push   0x0
c0008989:	1e                   	push   ds
c000898a:	06                   	push   es
c000898b:	0f a0                	push   fs
c000898d:	0f a8                	push   gs
c000898f:	60                   	pusha  
c0008990:	68 24 00 00 00       	push   0x24
c0008995:	66 8c d0             	mov    ax,ss
c0008998:	8e d8                	mov    ds,eax
c000899a:	8e c0                	mov    es,eax
c000899c:	ff 15 9c f4 00 c0    	call   DWORD PTR ds:0xc000f49c
c00089a2:	e9 09 fb ff ff       	jmp    c00084b0 <intr_exit>

c00089a7 <asm_intr0x25_handler>:
c00089a7:	68 00 00 00 00       	push   0x0
c00089ac:	1e                   	push   ds
c00089ad:	06                   	push   es
c00089ae:	0f a0                	push   fs
c00089b0:	0f a8                	push   gs
c00089b2:	60                   	pusha  
c00089b3:	68 25 00 00 00       	push   0x25
c00089b8:	66 8c d0             	mov    ax,ss
c00089bb:	8e d8                	mov    ds,eax
c00089bd:	8e c0                	mov    es,eax
c00089bf:	ff 15 a0 f4 00 c0    	call   DWORD PTR ds:0xc000f4a0
c00089c5:	e9 e6 fa ff ff       	jmp    c00084b0 <intr_exit>

c00089ca <asm_intr0x26_handler>:
c00089ca:	68 00 00 00 00       	push   0x0
c00089cf:	1e                   	push   ds
c00089d0:	06                   	push   es
c00089d1:	0f a0                	push   fs
c00089d3:	0f a8                	push   gs
c00089d5:	60                   	pusha  
c00089d6:	68 26 00 00 00       	push   0x26
c00089db:	66 8c d0             	mov    ax,ss
c00089de:	8e d8                	mov    ds,eax
c00089e0:	8e c0                	mov    es,eax
c00089e2:	ff 15 a4 f4 00 c0    	call   DWORD PTR ds:0xc000f4a4
c00089e8:	e9 c3 fa ff ff       	jmp    c00084b0 <intr_exit>

c00089ed <asm_intr0x27_handler>:
c00089ed:	68 00 00 00 00       	push   0x0
c00089f2:	1e                   	push   ds
c00089f3:	06                   	push   es
c00089f4:	0f a0                	push   fs
c00089f6:	0f a8                	push   gs
c00089f8:	60                   	pusha  
c00089f9:	68 27 00 00 00       	push   0x27
c00089fe:	66 8c d0             	mov    ax,ss
c0008a01:	8e d8                	mov    ds,eax
c0008a03:	8e c0                	mov    es,eax
c0008a05:	ff 15 a8 f4 00 c0    	call   DWORD PTR ds:0xc000f4a8
c0008a0b:	e9 a0 fa ff ff       	jmp    c00084b0 <intr_exit>

c0008a10 <asm_intr0x28_handler>:
c0008a10:	68 00 00 00 00       	push   0x0
c0008a15:	1e                   	push   ds
c0008a16:	06                   	push   es
c0008a17:	0f a0                	push   fs
c0008a19:	0f a8                	push   gs
c0008a1b:	60                   	pusha  
c0008a1c:	68 28 00 00 00       	push   0x28
c0008a21:	66 8c d0             	mov    ax,ss
c0008a24:	8e d8                	mov    ds,eax
c0008a26:	8e c0                	mov    es,eax
c0008a28:	ff 15 ac f4 00 c0    	call   DWORD PTR ds:0xc000f4ac
c0008a2e:	e9 7d fa ff ff       	jmp    c00084b0 <intr_exit>

c0008a33 <asm_intr0x29_handler>:
c0008a33:	68 00 00 00 00       	push   0x0
c0008a38:	1e                   	push   ds
c0008a39:	06                   	push   es
c0008a3a:	0f a0                	push   fs
c0008a3c:	0f a8                	push   gs
c0008a3e:	60                   	pusha  
c0008a3f:	68 29 00 00 00       	push   0x29
c0008a44:	66 8c d0             	mov    ax,ss
c0008a47:	8e d8                	mov    ds,eax
c0008a49:	8e c0                	mov    es,eax
c0008a4b:	ff 15 b0 f4 00 c0    	call   DWORD PTR ds:0xc000f4b0
c0008a51:	e9 5a fa ff ff       	jmp    c00084b0 <intr_exit>

c0008a56 <asm_intr0x2a_handler>:
c0008a56:	68 00 00 00 00       	push   0x0
c0008a5b:	1e                   	push   ds
c0008a5c:	06                   	push   es
c0008a5d:	0f a0                	push   fs
c0008a5f:	0f a8                	push   gs
c0008a61:	60                   	pusha  
c0008a62:	68 2a 00 00 00       	push   0x2a
c0008a67:	66 8c d0             	mov    ax,ss
c0008a6a:	8e d8                	mov    ds,eax
c0008a6c:	8e c0                	mov    es,eax
c0008a6e:	ff 15 b4 f4 00 c0    	call   DWORD PTR ds:0xc000f4b4
c0008a74:	e9 37 fa ff ff       	jmp    c00084b0 <intr_exit>

c0008a79 <asm_intr0x2b_handler>:
c0008a79:	68 00 00 00 00       	push   0x0
c0008a7e:	1e                   	push   ds
c0008a7f:	06                   	push   es
c0008a80:	0f a0                	push   fs
c0008a82:	0f a8                	push   gs
c0008a84:	60                   	pusha  
c0008a85:	68 2b 00 00 00       	push   0x2b
c0008a8a:	66 8c d0             	mov    ax,ss
c0008a8d:	8e d8                	mov    ds,eax
c0008a8f:	8e c0                	mov    es,eax
c0008a91:	ff 15 b8 f4 00 c0    	call   DWORD PTR ds:0xc000f4b8
c0008a97:	e9 14 fa ff ff       	jmp    c00084b0 <intr_exit>

c0008a9c <asm_intr0x2c_handler>:
c0008a9c:	68 00 00 00 00       	push   0x0
c0008aa1:	1e                   	push   ds
c0008aa2:	06                   	push   es
c0008aa3:	0f a0                	push   fs
c0008aa5:	0f a8                	push   gs
c0008aa7:	60                   	pusha  
c0008aa8:	68 2c 00 00 00       	push   0x2c
c0008aad:	66 8c d0             	mov    ax,ss
c0008ab0:	8e d8                	mov    ds,eax
c0008ab2:	8e c0                	mov    es,eax
c0008ab4:	ff 15 bc f4 00 c0    	call   DWORD PTR ds:0xc000f4bc
c0008aba:	e9 f1 f9 ff ff       	jmp    c00084b0 <intr_exit>

c0008abf <asm_intr0x2d_handler>:
c0008abf:	68 00 00 00 00       	push   0x0
c0008ac4:	1e                   	push   ds
c0008ac5:	06                   	push   es
c0008ac6:	0f a0                	push   fs
c0008ac8:	0f a8                	push   gs
c0008aca:	60                   	pusha  
c0008acb:	68 2d 00 00 00       	push   0x2d
c0008ad0:	66 8c d0             	mov    ax,ss
c0008ad3:	8e d8                	mov    ds,eax
c0008ad5:	8e c0                	mov    es,eax
c0008ad7:	ff 15 c0 f4 00 c0    	call   DWORD PTR ds:0xc000f4c0
c0008add:	e9 ce f9 ff ff       	jmp    c00084b0 <intr_exit>

c0008ae2 <asm_intr0x2e_handler>:
c0008ae2:	68 00 00 00 00       	push   0x0
c0008ae7:	1e                   	push   ds
c0008ae8:	06                   	push   es
c0008ae9:	0f a0                	push   fs
c0008aeb:	0f a8                	push   gs
c0008aed:	60                   	pusha  
c0008aee:	68 2e 00 00 00       	push   0x2e
c0008af3:	66 8c d0             	mov    ax,ss
c0008af6:	8e d8                	mov    ds,eax
c0008af8:	8e c0                	mov    es,eax
c0008afa:	ff 15 c4 f4 00 c0    	call   DWORD PTR ds:0xc000f4c4
c0008b00:	e9 ab f9 ff ff       	jmp    c00084b0 <intr_exit>

c0008b05 <asm_intr0x2f_handler>:
c0008b05:	68 00 00 00 00       	push   0x0
c0008b0a:	1e                   	push   ds
c0008b0b:	06                   	push   es
c0008b0c:	0f a0                	push   fs
c0008b0e:	0f a8                	push   gs
c0008b10:	60                   	pusha  
c0008b11:	68 2f 00 00 00       	push   0x2f
c0008b16:	66 8c d0             	mov    ax,ss
c0008b19:	8e d8                	mov    ds,eax
c0008b1b:	8e c0                	mov    es,eax
c0008b1d:	ff 15 c8 f4 00 c0    	call   DWORD PTR ds:0xc000f4c8
c0008b23:	e9 88 f9 ff ff       	jmp    c00084b0 <intr_exit>

c0008b28 <intr0x27_handler>:
c0008b28:	55                   	push   ebp
c0008b29:	ba 20 00 00 00       	mov    edx,0x20
c0008b2e:	89 e5                	mov    ebp,esp
c0008b30:	b8 20 00 00 00       	mov    eax,0x20
c0008b35:	ee                   	out    dx,al
c0008b36:	5d                   	pop    ebp
c0008b37:	c3                   	ret    

c0008b38 <init_pic>:
c0008b38:	55                   	push   ebp
c0008b39:	ba 21 00 00 00       	mov    edx,0x21
c0008b3e:	89 e5                	mov    ebp,esp
c0008b40:	b8 ff 00 00 00       	mov    eax,0xff
c0008b45:	ee                   	out    dx,al
c0008b46:	b2 a1                	mov    dl,0xa1
c0008b48:	ee                   	out    dx,al
c0008b49:	b2 20                	mov    dl,0x20
c0008b4b:	b0 11                	mov    al,0x11
c0008b4d:	ee                   	out    dx,al
c0008b4e:	b2 21                	mov    dl,0x21
c0008b50:	b0 20                	mov    al,0x20
c0008b52:	ee                   	out    dx,al
c0008b53:	b0 04                	mov    al,0x4
c0008b55:	ee                   	out    dx,al
c0008b56:	b0 01                	mov    al,0x1
c0008b58:	ee                   	out    dx,al
c0008b59:	b2 a0                	mov    dl,0xa0
c0008b5b:	b0 11                	mov    al,0x11
c0008b5d:	ee                   	out    dx,al
c0008b5e:	b2 a1                	mov    dl,0xa1
c0008b60:	b0 28                	mov    al,0x28
c0008b62:	ee                   	out    dx,al
c0008b63:	b0 02                	mov    al,0x2
c0008b65:	ee                   	out    dx,al
c0008b66:	b0 01                	mov    al,0x1
c0008b68:	ee                   	out    dx,al
c0008b69:	b2 21                	mov    dl,0x21
c0008b6b:	b0 fc                	mov    al,0xfc
c0008b6d:	ee                   	out    dx,al
c0008b6e:	b2 a1                	mov    dl,0xa1
c0008b70:	b0 ff                	mov    al,0xff
c0008b72:	ee                   	out    dx,al
c0008b73:	5d                   	pop    ebp
c0008b74:	c3                   	ret    

c0008b75 <idt_desc_init>:
c0008b75:	55                   	push   ebp
c0008b76:	31 c0                	xor    eax,eax
c0008b78:	89 e5                	mov    ebp,esp
c0008b7a:	c7 04 85 0c f4 00 c0 	mov    DWORD PTR [eax*4-0x3fff0bf4],0xc0008d2d
c0008b81:	2d 8d 00 c0 
c0008b85:	40                   	inc    eax
c0008b86:	83 f8 2f             	cmp    eax,0x2f
c0008b89:	75 ef                	jne    c0008b7a <idt_desc_init+0x5>
c0008b8b:	c7 05 8c f4 00 c0 b8 	mov    DWORD PTR ds:0xc000f48c,0xc000a4b8
c0008b92:	a4 00 c0 
c0008b95:	30 c0                	xor    al,al
c0008b97:	c7 05 90 f4 00 c0 32 	mov    DWORD PTR ds:0xc000f490,0xc000a232
c0008b9e:	a2 00 c0 
c0008ba1:	c7 05 a8 f4 00 c0 28 	mov    DWORD PTR ds:0xc000f4a8,0xc0008b28
c0008ba8:	8b 00 c0 
c0008bab:	8b 0c 85 c8 b1 00 c0 	mov    ecx,DWORD PTR [eax*4-0x3fff4e38]
c0008bb2:	8d 14 c5 94 f2 00 c0 	lea    edx,[eax*8-0x3fff0d6c]
c0008bb9:	66 89 0c c5 94 f2 00 	mov    WORD PTR [eax*8-0x3fff0d6c],cx
c0008bc0:	c0 
c0008bc1:	40                   	inc    eax
c0008bc2:	c1 e9 10             	shr    ecx,0x10
c0008bc5:	83 f8 2f             	cmp    eax,0x2f
c0008bc8:	66 c7 42 02 08 00    	mov    WORD PTR [edx+0x2],0x8
c0008bce:	c6 42 04 00          	mov    BYTE PTR [edx+0x4],0x0
c0008bd2:	c6 42 05 8e          	mov    BYTE PTR [edx+0x5],0x8e
c0008bd6:	66 89 4a 06          	mov    WORD PTR [edx+0x6],cx
c0008bda:	75 cf                	jne    c0008bab <idt_desc_init+0x36>
c0008bdc:	5d                   	pop    ebp
c0008bdd:	c3                   	ret    

c0008bde <set_gatedesc>:
c0008bde:	55                   	push   ebp
c0008bdf:	89 e5                	mov    ebp,esp
c0008be1:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0008be4:	53                   	push   ebx
c0008be5:	8b 4d 14             	mov    ecx,DWORD PTR [ebp+0x14]
c0008be8:	8b 5d 10             	mov    ebx,DWORD PTR [ebp+0x10]
c0008beb:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
c0008bee:	88 48 05             	mov    BYTE PTR [eax+0x5],cl
c0008bf1:	66 89 58 02          	mov    WORD PTR [eax+0x2],bx
c0008bf5:	89 cb                	mov    ebx,ecx
c0008bf7:	66 89 10             	mov    WORD PTR [eax],dx
c0008bfa:	c1 fb 08             	sar    ebx,0x8
c0008bfd:	c1 ea 10             	shr    edx,0x10
c0008c00:	88 58 04             	mov    BYTE PTR [eax+0x4],bl
c0008c03:	66 89 50 06          	mov    WORD PTR [eax+0x6],dx
c0008c07:	5b                   	pop    ebx
c0008c08:	5d                   	pop    ebp
c0008c09:	c3                   	ret    

c0008c0a <exception_init>:
c0008c0a:	55                   	push   ebp
c0008c0b:	89 e5                	mov    ebp,esp
c0008c0d:	c7 05 d8 f1 00 c0 e8 	mov    DWORD PTR ds:0xc000f1d8,0xc000e1e8
c0008c14:	e1 00 c0 
c0008c17:	c7 05 dc f1 00 c0 f9 	mov    DWORD PTR ds:0xc000f1dc,0xc000e1f9
c0008c1e:	e1 00 c0 
c0008c21:	c7 05 e0 f1 00 c0 0d 	mov    DWORD PTR ds:0xc000f1e0,0xc000e20d
c0008c28:	e2 00 c0 
c0008c2b:	c7 05 e4 f1 00 c0 1b 	mov    DWORD PTR ds:0xc000f1e4,0xc000e21b
c0008c32:	e2 00 c0 
c0008c35:	c7 05 e8 f1 00 c0 34 	mov    DWORD PTR ds:0xc000f1e8,0xc000e234
c0008c3c:	e2 00 c0 
c0008c3f:	c7 05 ec f1 00 c0 4b 	mov    DWORD PTR ds:0xc000f1ec,0xc000e24b
c0008c46:	e2 00 c0 
c0008c49:	c7 05 f0 f1 00 c0 6e 	mov    DWORD PTR ds:0xc000f1f0,0xc000e26e
c0008c50:	e2 00 c0 
c0008c53:	c7 05 f4 f1 00 c0 8b 	mov    DWORD PTR ds:0xc000f1f4,0xc000e28b
c0008c5a:	e2 00 c0 
c0008c5d:	c7 05 f8 f1 00 c0 ae 	mov    DWORD PTR ds:0xc000f1f8,0xc000e2ae
c0008c64:	e2 00 c0 
c0008c67:	c7 05 fc f1 00 c0 c9 	mov    DWORD PTR ds:0xc000f1fc,0xc000e2c9
c0008c6e:	e2 00 c0 
c0008c71:	c7 05 00 f2 00 c0 e5 	mov    DWORD PTR ds:0xc000f200,0xc000e2e5
c0008c78:	e2 00 c0 
c0008c7b:	c7 05 04 f2 00 c0 ff 	mov    DWORD PTR ds:0xc000f204,0xc000e2ff
c0008c82:	e2 00 c0 
c0008c85:	c7 05 08 f2 00 c0 17 	mov    DWORD PTR ds:0xc000f208,0xc000e317
c0008c8c:	e3 00 c0 
c0008c8f:	c7 05 0c f2 00 c0 31 	mov    DWORD PTR ds:0xc000f20c,0xc000e331
c0008c96:	e3 00 c0 
c0008c99:	c7 05 10 f2 00 c0 52 	mov    DWORD PTR ds:0xc000f210,0xc000e352
c0008ca0:	e3 00 c0 
c0008ca3:	c7 05 14 f2 00 c0 6b 	mov    DWORD PTR ds:0xc000f214,0xc000e36b
c0008caa:	e3 00 c0 
c0008cad:	c7 05 18 f2 00 c0 74 	mov    DWORD PTR ds:0xc000f218,0xc000e374
c0008cb4:	e3 00 c0 
c0008cb7:	c7 05 1c f2 00 c0 95 	mov    DWORD PTR ds:0xc000f21c,0xc000e395
c0008cbe:	e3 00 c0 
c0008cc1:	c7 05 20 f2 00 c0 b3 	mov    DWORD PTR ds:0xc000f220,0xc000e3b3
c0008cc8:	e3 00 c0 
c0008ccb:	c7 05 24 f2 00 c0 cf 	mov    DWORD PTR ds:0xc000f224,0xc000e3cf
c0008cd2:	e3 00 c0 
c0008cd5:	5d                   	pop    ebp
c0008cd6:	c3                   	ret    

c0008cd7 <init_idt>:
c0008cd7:	55                   	push   ebp
c0008cd8:	89 e5                	mov    ebp,esp
c0008cda:	83 ec 10             	sub    esp,0x10
c0008cdd:	e8 93 fe ff ff       	call   c0008b75 <idt_desc_init>
c0008ce2:	e8 51 fe ff ff       	call   c0008b38 <init_pic>
c0008ce7:	b8 94 f2 00 c0       	mov    eax,0xc000f294
c0008cec:	c1 e0 10             	shl    eax,0x10
c0008cef:	0d 77 01 00 00       	or     eax,0x177
c0008cf4:	89 45 f8             	mov    DWORD PTR [ebp-0x8],eax
c0008cf7:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [ebp-0x4],0x0
c0008cfe:	e8 07 ff ff ff       	call   c0008c0a <exception_init>
c0008d03:	0f 01 5d f8          	lidtd  [ebp-0x8]
c0008d07:	c9                   	leave  
c0008d08:	c3                   	ret    

c0008d09 <intr_get_status>:
c0008d09:	55                   	push   ebp
c0008d0a:	89 e5                	mov    ebp,esp
c0008d0c:	9c                   	pushf  
c0008d0d:	58                   	pop    eax
c0008d0e:	f6 c4 02             	test   ah,0x2
c0008d11:	0f 95 c0             	setne  al
c0008d14:	0f b6 c0             	movzx  eax,al
c0008d17:	5d                   	pop    ebp
c0008d18:	c3                   	ret    

c0008d19 <intr_disable>:
c0008d19:	55                   	push   ebp
c0008d1a:	89 e5                	mov    ebp,esp
c0008d1c:	e8 e8 ff ff ff       	call   c0008d09 <intr_get_status>
c0008d21:	31 d2                	xor    edx,edx
c0008d23:	48                   	dec    eax
c0008d24:	75 03                	jne    c0008d29 <intr_disable+0x10>
c0008d26:	fa                   	cli    
c0008d27:	b2 01                	mov    dl,0x1
c0008d29:	89 d0                	mov    eax,edx
c0008d2b:	5d                   	pop    ebp
c0008d2c:	c3                   	ret    

c0008d2d <general_intr_handler>:
c0008d2d:	55                   	push   ebp
c0008d2e:	89 e5                	mov    ebp,esp
c0008d30:	57                   	push   edi
c0008d31:	56                   	push   esi
c0008d32:	be 80 07 00 00       	mov    esi,0x780
c0008d37:	53                   	push   ebx
c0008d38:	81 ec 1c 01 00 00    	sub    esp,0x11c
c0008d3e:	8a 5d 08             	mov    bl,BYTE PTR [ebp+0x8]
c0008d41:	e8 d3 ff ff ff       	call   c0008d19 <intr_disable>
c0008d46:	83 ec 0c             	sub    esp,0xc
c0008d49:	6a 00                	push   0x0
c0008d4b:	e8 f1 1d 00 00       	call   c000ab41 <set_cursor>
c0008d50:	83 c4 10             	add    esp,0x10
c0008d53:	51                   	push   ecx
c0008d54:	51                   	push   ecx
c0008d55:	6a 20                	push   0x20
c0008d57:	6a 17                	push   0x17
c0008d59:	e8 0a 1e 00 00       	call   c000ab68 <put_char>
c0008d5e:	83 c4 10             	add    esp,0x10
c0008d61:	4e                   	dec    esi
c0008d62:	75 ef                	jne    c0008d53 <general_intr_handler+0x26>
c0008d64:	83 ec 0c             	sub    esp,0xc
c0008d67:	6a 00                	push   0x0
c0008d69:	e8 d3 1d 00 00       	call   c000ab41 <set_cursor>
c0008d6e:	5e                   	pop    esi
c0008d6f:	5f                   	pop    edi
c0008d70:	0f b6 fb             	movzx  edi,bl
c0008d73:	8d b5 e9 fe ff ff    	lea    esi,[ebp-0x117]
c0008d79:	68 f1 e3 00 c0       	push   0xc000e3f1
c0008d7e:	6a 17                	push   0x17
c0008d80:	e8 84 1e 00 00       	call   c000ac09 <put_str>
c0008d85:	58                   	pop    eax
c0008d86:	5a                   	pop    edx
c0008d87:	ff 75 40             	push   DWORD PTR [ebp+0x40]
c0008d8a:	ff 75 44             	push   DWORD PTR [ebp+0x44]
c0008d8d:	57                   	push   edi
c0008d8e:	68 0c e1 00 c0       	push   0xc000e10c
c0008d93:	68 13 e5 00 c0       	push   0xc000e513
c0008d98:	56                   	push   esi
c0008d99:	e8 d8 21 00 00       	call   c000af76 <sprintf>
c0008d9e:	83 c4 18             	add    esp,0x18
c0008da1:	56                   	push   esi
c0008da2:	6a 17                	push   0x17
c0008da4:	e8 60 1e 00 00       	call   c000ac09 <put_str>
c0008da9:	83 c4 10             	add    esp,0x10
c0008dac:	80 fb 13             	cmp    bl,0x13
c0008daf:	c7 85 e4 fe ff ff 00 	mov    DWORD PTR [ebp-0x11c],0x0
c0008db6:	00 00 00 
c0008db9:	77 52                	ja     c0008e0d <general_intr_handler+0xe0>
c0008dbb:	51                   	push   ecx
c0008dbc:	51                   	push   ecx
c0008dbd:	ff 34 bd d8 f1 00 c0 	push   DWORD PTR [edi*4-0x3fff0e28]
c0008dc4:	6a 17                	push   0x17
c0008dc6:	e8 3e 1e 00 00       	call   c000ac09 <put_str>
c0008dcb:	83 c4 10             	add    esp,0x10
c0008dce:	80 fb 0e             	cmp    bl,0xe
c0008dd1:	75 3a                	jne    c0008e0d <general_intr_handler+0xe0>
c0008dd3:	0f 20 d0             	mov    eax,cr2
c0008dd6:	89 85 e4 fe ff ff    	mov    DWORD PTR [ebp-0x11c],eax
c0008ddc:	50                   	push   eax
c0008ddd:	50                   	push   eax
c0008dde:	68 39 e5 00 c0       	push   0xc000e539
c0008de3:	6a 17                	push   0x17
c0008de5:	e8 1f 1e 00 00       	call   c000ac09 <put_str>
c0008dea:	83 c4 0c             	add    esp,0xc
c0008ded:	6a 10                	push   0x10
c0008def:	ff b5 e4 fe ff ff    	push   DWORD PTR [ebp-0x11c]
c0008df5:	6a 17                	push   0x17
c0008df7:	e8 35 1e 00 00       	call   c000ac31 <put_uint>
c0008dfc:	58                   	pop    eax
c0008dfd:	5a                   	pop    edx
c0008dfe:	68 4e e5 00 c0       	push   0xc000e54e
c0008e03:	6a 17                	push   0x17
c0008e05:	e8 ff 1d 00 00       	call   c000ac09 <put_str>
c0008e0a:	83 c4 10             	add    esp,0x10
c0008e0d:	52                   	push   edx
c0008e0e:	52                   	push   edx
c0008e0f:	68 52 e5 00 c0       	push   0xc000e552
c0008e14:	6a 17                	push   0x17
c0008e16:	e8 ee 1d 00 00       	call   c000ac09 <put_str>
c0008e1b:	e8 8e 13 00 00       	call   c000a1ae <cpu_info>
c0008e20:	a1 28 7c 00 00       	mov    eax,ds:0x7c28
c0008e25:	59                   	pop    ecx
c0008e26:	5e                   	pop    esi
c0008e27:	8d b5 e9 fe ff ff    	lea    esi,[ebp-0x117]
c0008e2d:	48                   	dec    eax
c0008e2e:	50                   	push   eax
c0008e2f:	a1 24 7c 00 00       	mov    eax,ds:0x7c24
c0008e34:	48                   	dec    eax
c0008e35:	50                   	push   eax
c0008e36:	6a 00                	push   0x0
c0008e38:	6a 00                	push   0x0
c0008e3a:	68 ff 00 00 00       	push   0xff
c0008e3f:	68 e8 6c 02 c0       	push   0xc0026ce8
c0008e44:	e8 47 21 00 00       	call   c000af90 <RectangleFill>
c0008e49:	83 c4 14             	add    esp,0x14
c0008e4c:	68 5a e5 00 c0       	push   0xc000e55a
c0008e51:	68 ff ff ff 00       	push   0xffffff
c0008e56:	6a 0a                	push   0xa
c0008e58:	6a 0a                	push   0xa
c0008e5a:	68 e8 6c 02 c0       	push   0xc0026ce8
c0008e5f:	e8 1a 23 00 00       	call   c000b17e <put_str_graphic>
c0008e64:	83 c4 14             	add    esp,0x14
c0008e67:	68 0c e1 00 c0       	push   0xc000e10c
c0008e6c:	68 ff ff ff 00       	push   0xffffff
c0008e71:	6a 5a                	push   0x5a
c0008e73:	6a 0a                	push   0xa
c0008e75:	68 e8 6c 02 c0       	push   0xc0026ce8
c0008e7a:	e8 ff 22 00 00       	call   c000b17e <put_str_graphic>
c0008e7f:	83 c4 1c             	add    esp,0x1c
c0008e82:	57                   	push   edi
c0008e83:	68 7d e6 00 c0       	push   0xc000e67d
c0008e88:	56                   	push   esi
c0008e89:	e8 e8 20 00 00       	call   c000af76 <sprintf>
c0008e8e:	89 34 24             	mov    DWORD PTR [esp],esi
c0008e91:	68 ff ff ff 00       	push   0xffffff
c0008e96:	6a 6a                	push   0x6a
c0008e98:	6a 0a                	push   0xa
c0008e9a:	68 e8 6c 02 c0       	push   0xc0026ce8
c0008e9f:	e8 da 22 00 00       	call   c000b17e <put_str_graphic>
c0008ea4:	83 c4 20             	add    esp,0x20
c0008ea7:	80 fb 13             	cmp    bl,0x13
c0008eaa:	77 53                	ja     c0008eff <general_intr_handler+0x1d2>
c0008eac:	83 ec 0c             	sub    esp,0xc
c0008eaf:	ff 34 bd d8 f1 00 c0 	push   DWORD PTR [edi*4-0x3fff0e28]
c0008eb6:	68 ff 00 ff 00       	push   0xff00ff
c0008ebb:	6a 7a                	push   0x7a
c0008ebd:	6a 0a                	push   0xa
c0008ebf:	68 e8 6c 02 c0       	push   0xc0026ce8
c0008ec4:	e8 b5 22 00 00       	call   c000b17e <put_str_graphic>
c0008ec9:	83 c4 20             	add    esp,0x20
c0008ecc:	80 fb 0e             	cmp    bl,0xe
c0008ecf:	75 2e                	jne    c0008eff <general_intr_handler+0x1d2>
c0008ed1:	50                   	push   eax
c0008ed2:	ff b5 e4 fe ff ff    	push   DWORD PTR [ebp-0x11c]
c0008ed8:	68 8a e6 00 c0       	push   0xc000e68a
c0008edd:	56                   	push   esi
c0008ede:	e8 93 20 00 00       	call   c000af76 <sprintf>
c0008ee3:	89 34 24             	mov    DWORD PTR [esp],esi
c0008ee6:	68 ff ff ff 00       	push   0xffffff
c0008eeb:	68 8a 00 00 00       	push   0x8a
c0008ef0:	6a 0a                	push   0xa
c0008ef2:	68 e8 6c 02 c0       	push   0xc0026ce8
c0008ef7:	e8 82 22 00 00       	call   c000b17e <put_str_graphic>
c0008efc:	83 c4 20             	add    esp,0x20
c0008eff:	eb fe                	jmp    c0008eff <general_intr_handler+0x1d2>

c0008f01 <intr_enable>:
c0008f01:	55                   	push   ebp
c0008f02:	89 e5                	mov    ebp,esp
c0008f04:	e8 00 fe ff ff       	call   c0008d09 <intr_get_status>
c0008f09:	ba 01 00 00 00       	mov    edx,0x1
c0008f0e:	48                   	dec    eax
c0008f0f:	74 03                	je     c0008f14 <intr_enable+0x13>
c0008f11:	fb                   	sti    
c0008f12:	30 d2                	xor    dl,dl
c0008f14:	89 d0                	mov    eax,edx
c0008f16:	5d                   	pop    ebp
c0008f17:	c3                   	ret    

c0008f18 <intr_set_status>:
c0008f18:	55                   	push   ebp
c0008f19:	89 e5                	mov    ebp,esp
c0008f1b:	83 7d 08 01          	cmp    DWORD PTR [ebp+0x8],0x1
c0008f1f:	75 06                	jne    c0008f27 <intr_set_status+0xf>
c0008f21:	5d                   	pop    ebp
c0008f22:	e9 da ff ff ff       	jmp    c0008f01 <intr_enable>
c0008f27:	5d                   	pop    ebp
c0008f28:	e9 ec fd ff ff       	jmp    c0008d19 <intr_disable>
c0008f2d:	00 00                	add    BYTE PTR [eax],al
	...

c0008f30 <init_memman>:
c0008f30:	55                   	push   ebp
c0008f31:	89 e5                	mov    ebp,esp
c0008f33:	56                   	push   esi
c0008f34:	8b 75 0c             	mov    esi,DWORD PTR [ebp+0xc]
c0008f37:	53                   	push   ebx
c0008f38:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c0008f3b:	83 ec 0c             	sub    esp,0xc
c0008f3e:	53                   	push   ebx
c0008f3f:	e8 cb 06 00 00       	call   c000960f <lock_init>
c0008f44:	83 c4 10             	add    esp,0x10
c0008f47:	85 f6                	test   esi,esi
c0008f49:	c7 43 24 00 00 00 00 	mov    DWORD PTR [ebx+0x24],0x0
c0008f50:	c7 43 28 00 00 00 00 	mov    DWORD PTR [ebx+0x28],0x0
c0008f57:	c7 43 2c 00 00 00 00 	mov    DWORD PTR [ebx+0x2c],0x0
c0008f5e:	c7 43 30 00 00 00 00 	mov    DWORD PTR [ebx+0x30],0x0
c0008f65:	75 19                	jne    c0008f80 <init_memman+0x50>
c0008f67:	68 c8 e6 00 c0       	push   0xc000e6c8
c0008f6c:	68 d4 e7 00 c0       	push   0xc000e7d4
c0008f71:	6a 50                	push   0x50
c0008f73:	68 d5 e6 00 c0       	push   0xc000e6d5
c0008f78:	e8 2b f4 ff ff       	call   c00083a8 <panic_spin>
c0008f7d:	83 c4 10             	add    esp,0x10
c0008f80:	89 73 34             	mov    DWORD PTR [ebx+0x34],esi
c0008f83:	8d 65 f8             	lea    esp,[ebp-0x8]
c0008f86:	5b                   	pop    ebx
c0008f87:	5e                   	pop    esi
c0008f88:	5d                   	pop    ebp
c0008f89:	c3                   	ret    

c0008f8a <TotalFreeSize>:
c0008f8a:	55                   	push   ebp
c0008f8b:	31 d2                	xor    edx,edx
c0008f8d:	89 e5                	mov    ebp,esp
c0008f8f:	31 c0                	xor    eax,eax
c0008f91:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
c0008f94:	56                   	push   esi
c0008f95:	53                   	push   ebx
c0008f96:	8b 59 24             	mov    ebx,DWORD PTR [ecx+0x24]
c0008f99:	eb 08                	jmp    c0008fa3 <TotalFreeSize+0x19>
c0008f9b:	8b 71 34             	mov    esi,DWORD PTR [ecx+0x34]
c0008f9e:	03 44 d6 04          	add    eax,DWORD PTR [esi+edx*8+0x4]
c0008fa2:	42                   	inc    edx
c0008fa3:	39 da                	cmp    edx,ebx
c0008fa5:	75 f4                	jne    c0008f9b <TotalFreeSize+0x11>
c0008fa7:	5b                   	pop    ebx
c0008fa8:	5e                   	pop    esi
c0008fa9:	5d                   	pop    ebp
c0008faa:	c3                   	ret    

c0008fab <mem_alloc>:
c0008fab:	55                   	push   ebp
c0008fac:	31 d2                	xor    edx,edx
c0008fae:	89 e5                	mov    ebp,esp
c0008fb0:	57                   	push   edi
c0008fb1:	56                   	push   esi
c0008fb2:	53                   	push   ebx
c0008fb3:	83 ec 08             	sub    esp,0x8
c0008fb6:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0008fb9:	8b 5d 0c             	mov    ebx,DWORD PTR [ebp+0xc]
c0008fbc:	8b 78 24             	mov    edi,DWORD PTR [eax+0x24]
c0008fbf:	eb 58                	jmp    c0009019 <mem_alloc+0x6e>
c0008fc1:	8b 70 34             	mov    esi,DWORD PTR [eax+0x34]
c0008fc4:	8d 0c d5 00 00 00 00 	lea    ecx,[edx*8+0x0]
c0008fcb:	01 ce                	add    esi,ecx
c0008fcd:	39 5e 04             	cmp    DWORD PTR [esi+0x4],ebx
c0008fd0:	72 46                	jb     c0009018 <mem_alloc+0x6d>
c0008fd2:	8b 3e                	mov    edi,DWORD PTR [esi]
c0008fd4:	89 7d f0             	mov    DWORD PTR [ebp-0x10],edi
c0008fd7:	01 df                	add    edi,ebx
c0008fd9:	89 3e                	mov    DWORD PTR [esi],edi
c0008fdb:	8b 70 34             	mov    esi,DWORD PTR [eax+0x34]
c0008fde:	01 ce                	add    esi,ecx
c0008fe0:	29 5e 04             	sub    DWORD PTR [esi+0x4],ebx
c0008fe3:	8b 58 34             	mov    ebx,DWORD PTR [eax+0x34]
c0008fe6:	83 7c 0b 04 00       	cmp    DWORD PTR [ebx+ecx*1+0x4],0x0
c0008feb:	75 26                	jne    c0009013 <mem_alloc+0x68>
c0008fed:	ff 48 24             	dec    DWORD PTR [eax+0x24]
c0008ff0:	eb 16                	jmp    c0009008 <mem_alloc+0x5d>
c0008ff2:	8b 58 34             	mov    ebx,DWORD PTR [eax+0x34]
c0008ff5:	42                   	inc    edx
c0008ff6:	8b 74 0b 08          	mov    esi,DWORD PTR [ebx+ecx*1+0x8]
c0008ffa:	8b 7c 0b 0c          	mov    edi,DWORD PTR [ebx+ecx*1+0xc]
c0008ffe:	89 34 0b             	mov    DWORD PTR [ebx+ecx*1],esi
c0009001:	89 7c 0b 04          	mov    DWORD PTR [ebx+ecx*1+0x4],edi
c0009005:	8b 4d ec             	mov    ecx,DWORD PTR [ebp-0x14]
c0009008:	3b 50 24             	cmp    edx,DWORD PTR [eax+0x24]
c000900b:	8d 79 08             	lea    edi,[ecx+0x8]
c000900e:	89 7d ec             	mov    DWORD PTR [ebp-0x14],edi
c0009011:	72 df                	jb     c0008ff2 <mem_alloc+0x47>
c0009013:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c0009016:	eb 07                	jmp    c000901f <mem_alloc+0x74>
c0009018:	42                   	inc    edx
c0009019:	39 fa                	cmp    edx,edi
c000901b:	75 a4                	jne    c0008fc1 <mem_alloc+0x16>
c000901d:	31 c0                	xor    eax,eax
c000901f:	5a                   	pop    edx
c0009020:	59                   	pop    ecx
c0009021:	5b                   	pop    ebx
c0009022:	5e                   	pop    esi
c0009023:	5f                   	pop    edi
c0009024:	5d                   	pop    ebp
c0009025:	c3                   	ret    

c0009026 <mem_alloc_page>:
c0009026:	55                   	push   ebp
c0009027:	89 e5                	mov    ebp,esp
c0009029:	53                   	push   ebx
c000902a:	83 ec 20             	sub    esp,0x20
c000902d:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c0009030:	53                   	push   ebx
c0009031:	e8 65 07 00 00       	call   c000979b <lock_acquire>
c0009036:	58                   	pop    eax
c0009037:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c000903a:	5a                   	pop    edx
c000903b:	c1 e0 0c             	shl    eax,0xc
c000903e:	50                   	push   eax
c000903f:	53                   	push   ebx
c0009040:	e8 66 ff ff ff       	call   c0008fab <mem_alloc>
c0009045:	89 1c 24             	mov    DWORD PTR [esp],ebx
c0009048:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
c000904b:	e8 a6 07 00 00       	call   c00097f6 <lock_release>
c0009050:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0009053:	8b 5d fc             	mov    ebx,DWORD PTR [ebp-0x4]
c0009056:	c9                   	leave  
c0009057:	c3                   	ret    

c0009058 <mem_free>:
c0009058:	55                   	push   ebp
c0009059:	31 c9                	xor    ecx,ecx
c000905b:	89 e5                	mov    ebp,esp
c000905d:	57                   	push   edi
c000905e:	56                   	push   esi
c000905f:	53                   	push   ebx
c0009060:	83 ec 10             	sub    esp,0x10
c0009063:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c0009066:	8b 5d 0c             	mov    ebx,DWORD PTR [ebp+0xc]
c0009069:	8b 72 24             	mov    esi,DWORD PTR [edx+0x24]
c000906c:	89 75 ec             	mov    DWORD PTR [ebp-0x14],esi
c000906f:	eb 09                	jmp    c000907a <mem_free+0x22>
c0009071:	8b 42 34             	mov    eax,DWORD PTR [edx+0x34]
c0009074:	39 1c c8             	cmp    DWORD PTR [eax+ecx*8],ebx
c0009077:	77 05                	ja     c000907e <mem_free+0x26>
c0009079:	41                   	inc    ecx
c000907a:	39 f1                	cmp    ecx,esi
c000907c:	75 f3                	jne    c0009071 <mem_free+0x19>
c000907e:	85 c9                	test   ecx,ecx
c0009080:	74 7c                	je     c00090fe <mem_free+0xa6>
c0009082:	8d 04 cd f8 ff ff ff 	lea    eax,[ecx*8-0x8]
c0009089:	89 45 e4             	mov    DWORD PTR [ebp-0x1c],eax
c000908c:	03 42 34             	add    eax,DWORD PTR [edx+0x34]
c000908f:	8b 78 04             	mov    edi,DWORD PTR [eax+0x4]
c0009092:	89 7d f0             	mov    DWORD PTR [ebp-0x10],edi
c0009095:	03 38                	add    edi,DWORD PTR [eax]
c0009097:	39 df                	cmp    edi,ebx
c0009099:	75 63                	jne    c00090fe <mem_free+0xa6>
c000909b:	8b 75 10             	mov    esi,DWORD PTR [ebp+0x10]
c000909e:	03 75 f0             	add    esi,DWORD PTR [ebp-0x10]
c00090a1:	89 70 04             	mov    DWORD PTR [eax+0x4],esi
c00090a4:	31 c0                	xor    eax,eax
c00090a6:	3b 4a 24             	cmp    ecx,DWORD PTR [edx+0x24]
c00090a9:	0f 83 dd 00 00 00    	jae    c000918c <mem_free+0x134>
c00090af:	8b 72 34             	mov    esi,DWORD PTR [edx+0x34]
c00090b2:	8d 3c cd 00 00 00 00 	lea    edi,[ecx*8+0x0]
c00090b9:	89 7d f0             	mov    DWORD PTR [ebp-0x10],edi
c00090bc:	03 5d 10             	add    ebx,DWORD PTR [ebp+0x10]
c00090bf:	01 f7                	add    edi,esi
c00090c1:	3b 1f                	cmp    ebx,DWORD PTR [edi]
c00090c3:	89 7d ec             	mov    DWORD PTR [ebp-0x14],edi
c00090c6:	0f 85 c0 00 00 00    	jne    c000918c <mem_free+0x134>
c00090cc:	8b 5d e4             	mov    ebx,DWORD PTR [ebp-0x1c]
c00090cf:	8b 47 04             	mov    eax,DWORD PTR [edi+0x4]
c00090d2:	01 44 1e 04          	add    DWORD PTR [esi+ebx*1+0x4],eax
c00090d6:	ff 4a 24             	dec    DWORD PTR [edx+0x24]
c00090d9:	eb 13                	jmp    c00090ee <mem_free+0x96>
c00090db:	8b 5a 34             	mov    ebx,DWORD PTR [edx+0x34]
c00090de:	41                   	inc    ecx
c00090df:	8b 74 03 08          	mov    esi,DWORD PTR [ebx+eax*1+0x8]
c00090e3:	8b 7c 03 0c          	mov    edi,DWORD PTR [ebx+eax*1+0xc]
c00090e7:	89 34 03             	mov    DWORD PTR [ebx+eax*1],esi
c00090ea:	89 7c 03 04          	mov    DWORD PTR [ebx+eax*1+0x4],edi
c00090ee:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c00090f1:	3b 4a 24             	cmp    ecx,DWORD PTR [edx+0x24]
c00090f4:	8d 78 08             	lea    edi,[eax+0x8]
c00090f7:	89 7d f0             	mov    DWORD PTR [ebp-0x10],edi
c00090fa:	72 df                	jb     c00090db <mem_free+0x83>
c00090fc:	eb 2a                	jmp    c0009128 <mem_free+0xd0>
c00090fe:	39 f1                	cmp    ecx,esi
c0009100:	73 2a                	jae    c000912c <mem_free+0xd4>
c0009102:	8b 7a 34             	mov    edi,DWORD PTR [edx+0x34]
c0009105:	8d 04 cd 00 00 00 00 	lea    eax,[ecx*8+0x0]
c000910c:	89 45 e8             	mov    DWORD PTR [ebp-0x18],eax
c000910f:	01 c7                	add    edi,eax
c0009111:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
c0009114:	01 d8                	add    eax,ebx
c0009116:	3b 07                	cmp    eax,DWORD PTR [edi]
c0009118:	75 12                	jne    c000912c <mem_free+0xd4>
c000911a:	8b 45 e8             	mov    eax,DWORD PTR [ebp-0x18]
c000911d:	89 1f                	mov    DWORD PTR [edi],ebx
c000911f:	03 42 34             	add    eax,DWORD PTR [edx+0x34]
c0009122:	8b 55 10             	mov    edx,DWORD PTR [ebp+0x10]
c0009125:	01 50 04             	add    DWORD PTR [eax+0x4],edx
c0009128:	31 c0                	xor    eax,eax
c000912a:	eb 60                	jmp    c000918c <mem_free+0x134>
c000912c:	81 fe 9f 0f 00 00    	cmp    esi,0xf9f
c0009132:	77 4a                	ja     c000917e <mem_free+0x126>
c0009134:	c1 e6 03             	shl    esi,0x3
c0009137:	89 cf                	mov    edi,ecx
c0009139:	89 5d f0             	mov    DWORD PTR [ebp-0x10],ebx
c000913c:	eb 15                	jmp    c0009153 <mem_free+0xfb>
c000913e:	8b 4c 30 f8          	mov    ecx,DWORD PTR [eax+esi*1-0x8]
c0009142:	8b 5c 30 fc          	mov    ebx,DWORD PTR [eax+esi*1-0x4]
c0009146:	ff 45 ec             	inc    DWORD PTR [ebp-0x14]
c0009149:	89 0c 30             	mov    DWORD PTR [eax+esi*1],ecx
c000914c:	89 5c 30 04          	mov    DWORD PTR [eax+esi*1+0x4],ebx
c0009150:	83 c6 08             	add    esi,0x8
c0009153:	39 7d ec             	cmp    DWORD PTR [ebp-0x14],edi
c0009156:	8b 42 34             	mov    eax,DWORD PTR [edx+0x34]
c0009159:	7f e3                	jg     c000913e <mem_free+0xe6>
c000915b:	8b 72 24             	mov    esi,DWORD PTR [edx+0x24]
c000915e:	89 f9                	mov    ecx,edi
c0009160:	8b 5d f0             	mov    ebx,DWORD PTR [ebp-0x10]
c0009163:	46                   	inc    esi
c0009164:	39 72 28             	cmp    DWORD PTR [edx+0x28],esi
c0009167:	89 72 24             	mov    DWORD PTR [edx+0x24],esi
c000916a:	73 03                	jae    c000916f <mem_free+0x117>
c000916c:	89 72 28             	mov    DWORD PTR [edx+0x28],esi
c000916f:	89 1c c8             	mov    DWORD PTR [eax+ecx*8],ebx
c0009172:	8b 5d 10             	mov    ebx,DWORD PTR [ebp+0x10]
c0009175:	8b 42 34             	mov    eax,DWORD PTR [edx+0x34]
c0009178:	89 5c c8 04          	mov    DWORD PTR [eax+ecx*8+0x4],ebx
c000917c:	eb aa                	jmp    c0009128 <mem_free+0xd0>
c000917e:	8b 75 10             	mov    esi,DWORD PTR [ebp+0x10]
c0009181:	b8 01 00 00 00       	mov    eax,0x1
c0009186:	ff 42 30             	inc    DWORD PTR [edx+0x30]
c0009189:	01 72 2c             	add    DWORD PTR [edx+0x2c],esi
c000918c:	83 c4 10             	add    esp,0x10
c000918f:	5b                   	pop    ebx
c0009190:	5e                   	pop    esi
c0009191:	5f                   	pop    edi
c0009192:	5d                   	pop    ebp
c0009193:	c3                   	ret    

c0009194 <mem_free_page>:
c0009194:	55                   	push   ebp
c0009195:	89 e5                	mov    ebp,esp
c0009197:	53                   	push   ebx
c0009198:	83 ec 20             	sub    esp,0x20
c000919b:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c000919e:	53                   	push   ebx
c000919f:	e8 f7 05 00 00       	call   c000979b <lock_acquire>
c00091a4:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
c00091a7:	83 c4 0c             	add    esp,0xc
c00091aa:	c1 e0 0c             	shl    eax,0xc
c00091ad:	50                   	push   eax
c00091ae:	ff 75 0c             	push   DWORD PTR [ebp+0xc]
c00091b1:	53                   	push   ebx
c00091b2:	e8 a1 fe ff ff       	call   c0009058 <mem_free>
c00091b7:	89 1c 24             	mov    DWORD PTR [esp],ebx
c00091ba:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
c00091bd:	e8 34 06 00 00       	call   c00097f6 <lock_release>
c00091c2:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c00091c5:	8b 5d fc             	mov    ebx,DWORD PTR [ebp-0x4]
c00091c8:	c9                   	leave  
c00091c9:	c3                   	ret    

c00091ca <init_memory>:
c00091ca:	55                   	push   ebp
c00091cb:	89 e5                	mov    ebp,esp
c00091cd:	57                   	push   edi
c00091ce:	56                   	push   esi
c00091cf:	53                   	push   ebx
c00091d0:	83 ec 0c             	sub    esp,0xc
c00091d3:	83 3d 08 7c 00 00 00 	cmp    DWORD PTR ds:0x7c08,0x0
c00091da:	0f 85 f5 00 00 00    	jne    c00092d5 <init_memory+0x10b>
c00091e0:	83 3d 0c 7c 00 00 00 	cmp    DWORD PTR ds:0x7c0c,0x0
c00091e7:	0f 85 e8 00 00 00    	jne    c00092d5 <init_memory+0x10b>
c00091ed:	8b 1d 00 7c 00 00    	mov    ebx,DWORD PTR ds:0x7c00
c00091f3:	31 f6                	xor    esi,esi
c00091f5:	51                   	push   ecx
c00091f6:	51                   	push   ecx
c00091f7:	68 e5 e6 00 c0       	push   0xc000e6e5
c00091fc:	6a 07                	push   0x7
c00091fe:	e8 06 1a 00 00       	call   c000ac09 <put_str>
c0009203:	83 c4 10             	add    esp,0x10
c0009206:	e9 8a 00 00 00       	jmp    c0009295 <init_memory+0xcb>
c000920b:	50                   	push   eax
c000920c:	50                   	push   eax
c000920d:	68 ec e6 00 c0       	push   0xc000e6ec
c0009212:	6a 07                	push   0x7
c0009214:	e8 f0 19 00 00       	call   c000ac09 <put_str>
c0009219:	83 c4 0c             	add    esp,0xc
c000921c:	6a 10                	push   0x10
c000921e:	ff 33                	push   DWORD PTR [ebx]
c0009220:	6a 07                	push   0x7
c0009222:	e8 0a 1a 00 00       	call   c000ac31 <put_uint>
c0009227:	58                   	pop    eax
c0009228:	5a                   	pop    edx
c0009229:	68 f7 e6 00 c0       	push   0xc000e6f7
c000922e:	6a 07                	push   0x7
c0009230:	e8 d4 19 00 00       	call   c000ac09 <put_str>
c0009235:	83 c4 0c             	add    esp,0xc
c0009238:	6a 10                	push   0x10
c000923a:	ff 73 08             	push   DWORD PTR [ebx+0x8]
c000923d:	6a 07                	push   0x7
c000923f:	e8 ed 19 00 00       	call   c000ac31 <put_uint>
c0009244:	59                   	pop    ecx
c0009245:	5f                   	pop    edi
c0009246:	68 05 e7 00 c0       	push   0xc000e705
c000924b:	6a 07                	push   0x7
c000924d:	e8 b7 19 00 00       	call   c000ac09 <put_str>
c0009252:	83 c4 0c             	add    esp,0xc
c0009255:	6a 10                	push   0x10
c0009257:	ff 73 10             	push   DWORD PTR [ebx+0x10]
c000925a:	6a 07                	push   0x7
c000925c:	e8 d0 19 00 00       	call   c000ac31 <put_uint>
c0009261:	58                   	pop    eax
c0009262:	5a                   	pop    edx
c0009263:	68 10 e7 00 c0       	push   0xc000e710
c0009268:	6a 07                	push   0x7
c000926a:	e8 9a 19 00 00       	call   c000ac09 <put_str>
c000926f:	83 c4 10             	add    esp,0x10
c0009272:	81 3b 00 00 10 00    	cmp    DWORD PTR [ebx],0x100000
c0009278:	75 17                	jne    c0009291 <init_memory+0xc7>
c000927a:	83 7b 10 01          	cmp    DWORD PTR [ebx+0x10],0x1
c000927e:	75 11                	jne    c0009291 <init_memory+0xc7>
c0009280:	8b 4b 08             	mov    ecx,DWORD PTR [ebx+0x8]
c0009283:	81 c1 00 00 10 00    	add    ecx,0x100000
c0009289:	85 c9                	test   ecx,ecx
c000928b:	89 c8                	mov    eax,ecx
c000928d:	75 2f                	jne    c00092be <init_memory+0xf4>
c000928f:	eb 10                	jmp    c00092a1 <init_memory+0xd7>
c0009291:	83 c3 14             	add    ebx,0x14
c0009294:	46                   	inc    esi
c0009295:	3b 35 04 7c 00 00    	cmp    esi,DWORD PTR ds:0x7c04
c000929b:	0f 82 6a ff ff ff    	jb     c000920b <init_memory+0x41>
c00092a1:	68 12 e7 00 c0       	push   0xc000e712
c00092a6:	68 c8 e7 00 c0       	push   0xc000e7c8
c00092ab:	6a 32                	push   0x32
c00092ad:	68 d5 e6 00 c0       	push   0xc000e6d5
c00092b2:	e8 f1 f0 ff ff       	call   c00083a8 <panic_spin>
c00092b7:	83 c4 10             	add    esp,0x10
c00092ba:	31 c0                	xor    eax,eax
c00092bc:	eb 0d                	jmp    c00092cb <init_memory+0x101>
c00092be:	81 f9 ff ff ff 3f    	cmp    ecx,0x3fffffff
c00092c4:	76 05                	jbe    c00092cb <init_memory+0x101>
c00092c6:	b8 ff ff ff 3f       	mov    eax,0x3fffffff
c00092cb:	05 00 00 10 00       	add    eax,0x100000
c00092d0:	a3 08 7c 00 00       	mov    ds:0x7c08,eax
c00092d5:	8b 35 08 7c 00 00    	mov    esi,DWORD PTR ds:0x7c08
c00092db:	51                   	push   ecx
c00092dc:	51                   	push   ecx
c00092dd:	68 38 ef 01 c0       	push   0xc001ef38
c00092e2:	68 38 6c 02 c0       	push   0xc0026c38
c00092e7:	e8 44 fc ff ff       	call   c0008f30 <init_memman>
c00092ec:	8d be 00 00 a0 ff    	lea    edi,[esi-0x600000]
c00092f2:	58                   	pop    eax
c00092f3:	89 fb                	mov    ebx,edi
c00092f5:	5a                   	pop    edx
c00092f6:	c1 ef 0d             	shr    edi,0xd
c00092f9:	d1 eb                	shr    ebx,1
c00092fb:	68 c8 f4 00 c0       	push   0xc000f4c8
c0009300:	29 de                	sub    esi,ebx
c0009302:	68 00 72 01 c0       	push   0xc0017200
c0009307:	81 c3 00 00 60 00    	add    ebx,0x600000
c000930d:	e8 1e fc ff ff       	call   c0008f30 <init_memman>
c0009312:	c1 ee 0c             	shr    esi,0xc
c0009315:	59                   	pop    ecx
c0009316:	58                   	pop    eax
c0009317:	68 38 72 01 c0       	push   0xc0017238
c000931c:	68 c8 71 01 c0       	push   0xc00171c8
c0009321:	e8 0a fc ff ff       	call   c0008f30 <init_memman>
c0009326:	83 c4 0c             	add    esp,0xc
c0009329:	57                   	push   edi
c000932a:	68 00 00 60 00       	push   0x600000
c000932f:	68 38 6c 02 c0       	push   0xc0026c38
c0009334:	e8 5b fe ff ff       	call   c0009194 <mem_free_page>
c0009339:	83 c4 0c             	add    esp,0xc
c000933c:	56                   	push   esi
c000933d:	53                   	push   ebx
c000933e:	68 c8 71 01 c0       	push   0xc00171c8
c0009343:	e8 4c fe ff ff       	call   c0009194 <mem_free_page>
c0009348:	83 c4 0c             	add    esp,0xc
c000934b:	68 00 fa 01 00       	push   0x1fa00
c0009350:	68 00 00 60 c0       	push   0xc0600000
c0009355:	68 00 72 01 c0       	push   0xc0017200
c000935a:	e8 35 fe ff ff       	call   c0009194 <mem_free_page>
c000935f:	83 c4 10             	add    esp,0x10
c0009362:	8d 65 f4             	lea    esp,[ebp-0xc]
c0009365:	5b                   	pop    ebx
c0009366:	5e                   	pop    esi
c0009367:	5f                   	pop    edi
c0009368:	5d                   	pop    ebp
c0009369:	c3                   	ret    

c000936a <pde_ptr>:
c000936a:	55                   	push   ebp
c000936b:	89 e5                	mov    ebp,esp
c000936d:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0009370:	5d                   	pop    ebp
c0009371:	c1 e8 16             	shr    eax,0x16
c0009374:	8d 04 85 00 f0 ff ff 	lea    eax,[eax*4-0x1000]
c000937b:	c3                   	ret    

c000937c <pte_ptr>:
c000937c:	55                   	push   ebp
c000937d:	89 e5                	mov    ebp,esp
c000937f:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0009382:	5d                   	pop    ebp
c0009383:	89 c2                	mov    edx,eax
c0009385:	25 00 f0 3f 00       	and    eax,0x3ff000
c000938a:	81 e2 00 00 c0 ff    	and    edx,0xffc00000
c0009390:	c1 ea 0a             	shr    edx,0xa
c0009393:	c1 e8 0a             	shr    eax,0xa
c0009396:	8d 84 02 00 00 c0 ff 	lea    eax,[edx+eax*1-0x400000]
c000939d:	c3                   	ret    

c000939e <page_table_add>:
c000939e:	55                   	push   ebp
c000939f:	89 e5                	mov    ebp,esp
c00093a1:	57                   	push   edi
c00093a2:	56                   	push   esi
c00093a3:	53                   	push   ebx
c00093a4:	83 ec 0c             	sub    esp,0xc
c00093a7:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c00093aa:	8b 75 0c             	mov    esi,DWORD PTR [ebp+0xc]
c00093ad:	50                   	push   eax
c00093ae:	89 c7                	mov    edi,eax
c00093b0:	e8 c7 ff ff ff       	call   c000937c <pte_ptr>
c00093b5:	c1 ef 16             	shr    edi,0x16
c00093b8:	f6 04 bd 00 f0 ff ff 	test   BYTE PTR [edi*4-0x1000],0x1
c00093bf:	01 
c00093c0:	5a                   	pop    edx
c00093c1:	89 c3                	mov    ebx,eax
c00093c3:	74 0c                	je     c00093d1 <page_table_add+0x33>
c00093c5:	f6 00 01             	test   BYTE PTR [eax],0x1
c00093c8:	75 3e                	jne    c0009408 <page_table_add+0x6a>
c00093ca:	83 ce 07             	or     esi,0x7
c00093cd:	89 30                	mov    DWORD PTR [eax],esi
c00093cf:	eb 37                	jmp    c0009408 <page_table_add+0x6a>
c00093d1:	50                   	push   eax
c00093d2:	83 ce 07             	or     esi,0x7
c00093d5:	50                   	push   eax
c00093d6:	6a 01                	push   0x1
c00093d8:	68 38 6c 02 c0       	push   0xc0026c38
c00093dd:	e8 44 fc ff ff       	call   c0009026 <mem_alloc_page>
c00093e2:	83 c4 0c             	add    esp,0xc
c00093e5:	83 c8 07             	or     eax,0x7
c00093e8:	89 04 bd 00 f0 ff ff 	mov    DWORD PTR [edi*4-0x1000],eax
c00093ef:	89 d8                	mov    eax,ebx
c00093f1:	68 00 10 00 00       	push   0x1000
c00093f6:	25 00 f0 ff ff       	and    eax,0xfffff000
c00093fb:	6a 00                	push   0x0
c00093fd:	50                   	push   eax
c00093fe:	e8 a5 18 00 00       	call   c000aca8 <memset>
c0009403:	83 c4 10             	add    esp,0x10
c0009406:	89 33                	mov    DWORD PTR [ebx],esi
c0009408:	8d 65 f4             	lea    esp,[ebp-0xc]
c000940b:	5b                   	pop    ebx
c000940c:	5e                   	pop    esi
c000940d:	5f                   	pop    edi
c000940e:	5d                   	pop    ebp
c000940f:	c3                   	ret    

c0009410 <page_alloc>:
c0009410:	55                   	push   ebp
c0009411:	89 e5                	mov    ebp,esp
c0009413:	57                   	push   edi
c0009414:	56                   	push   esi
c0009415:	53                   	push   ebx
c0009416:	83 ec 1c             	sub    esp,0x1c
c0009419:	8b 75 0c             	mov    esi,DWORD PTR [ebp+0xc]
c000941c:	83 7d 08 01          	cmp    DWORD PTR [ebp+0x8],0x1
c0009420:	c7 45 e4 c8 71 01 c0 	mov    DWORD PTR [ebp-0x1c],0xc00171c8
c0009427:	75 07                	jne    c0009430 <page_alloc+0x20>
c0009429:	c7 45 e4 38 6c 02 c0 	mov    DWORD PTR [ebp-0x1c],0xc0026c38
c0009430:	50                   	push   eax
c0009431:	50                   	push   eax
c0009432:	56                   	push   esi
c0009433:	68 00 72 01 c0       	push   0xc0017200
c0009438:	e8 e9 fb ff ff       	call   c0009026 <mem_alloc_page>
c000943d:	83 c4 10             	add    esp,0x10
c0009440:	85 c0                	test   eax,eax
c0009442:	89 c3                	mov    ebx,eax
c0009444:	89 c7                	mov    edi,eax
c0009446:	75 28                	jne    c0009470 <page_alloc+0x60>
c0009448:	eb 2e                	jmp    c0009478 <page_alloc+0x68>
c000944a:	50                   	push   eax
c000944b:	50                   	push   eax
c000944c:	6a 01                	push   0x1
c000944e:	ff 75 e4             	push   DWORD PTR [ebp-0x1c]
c0009451:	e8 d0 fb ff ff       	call   c0009026 <mem_alloc_page>
c0009456:	83 c4 10             	add    esp,0x10
c0009459:	85 c0                	test   eax,eax
c000945b:	74 19                	je     c0009476 <page_alloc+0x66>
c000945d:	51                   	push   ecx
c000945e:	4e                   	dec    esi
c000945f:	51                   	push   ecx
c0009460:	50                   	push   eax
c0009461:	57                   	push   edi
c0009462:	81 c7 00 10 00 00    	add    edi,0x1000
c0009468:	e8 31 ff ff ff       	call   c000939e <page_table_add>
c000946d:	83 c4 10             	add    esp,0x10
c0009470:	85 f6                	test   esi,esi
c0009472:	75 d6                	jne    c000944a <page_alloc+0x3a>
c0009474:	eb 02                	jmp    c0009478 <page_alloc+0x68>
c0009476:	31 db                	xor    ebx,ebx
c0009478:	8d 65 f4             	lea    esp,[ebp-0xc]
c000947b:	89 d8                	mov    eax,ebx
c000947d:	5b                   	pop    ebx
c000947e:	5e                   	pop    esi
c000947f:	5f                   	pop    edi
c0009480:	5d                   	pop    ebp
c0009481:	c3                   	ret    

c0009482 <get_kernel_page>:
c0009482:	55                   	push   ebp
c0009483:	89 e5                	mov    ebp,esp
c0009485:	56                   	push   esi
c0009486:	53                   	push   ebx
c0009487:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c000948a:	50                   	push   eax
c000948b:	50                   	push   eax
c000948c:	53                   	push   ebx
c000948d:	6a 01                	push   0x1
c000948f:	e8 7c ff ff ff       	call   c0009410 <page_alloc>
c0009494:	83 c4 10             	add    esp,0x10
c0009497:	85 c0                	test   eax,eax
c0009499:	89 c6                	mov    esi,eax
c000949b:	74 10                	je     c00094ad <get_kernel_page+0x2b>
c000949d:	c1 e3 0c             	shl    ebx,0xc
c00094a0:	50                   	push   eax
c00094a1:	53                   	push   ebx
c00094a2:	6a 00                	push   0x0
c00094a4:	56                   	push   esi
c00094a5:	e8 fe 17 00 00       	call   c000aca8 <memset>
c00094aa:	83 c4 10             	add    esp,0x10
c00094ad:	50                   	push   eax
c00094ae:	50                   	push   eax
c00094af:	68 27 e7 00 c0       	push   0xc000e727
c00094b4:	6a 07                	push   0x7
c00094b6:	e8 4e 17 00 00       	call   c000ac09 <put_str>
c00094bb:	83 c4 0c             	add    esp,0xc
c00094be:	6a 10                	push   0x10
c00094c0:	56                   	push   esi
c00094c1:	6a 07                	push   0x7
c00094c3:	e8 69 17 00 00       	call   c000ac31 <put_uint>
c00094c8:	8d 65 f8             	lea    esp,[ebp-0x8]
c00094cb:	89 f0                	mov    eax,esi
c00094cd:	5b                   	pop    ebx
c00094ce:	5e                   	pop    esi
c00094cf:	5d                   	pop    ebp
c00094d0:	c3                   	ret    

c00094d1 <get_user_page>:
c00094d1:	55                   	push   ebp
c00094d2:	89 e5                	mov    ebp,esp
c00094d4:	53                   	push   ebx
c00094d5:	83 ec 1c             	sub    esp,0x1c
c00094d8:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c00094db:	53                   	push   ebx
c00094dc:	6a 02                	push   0x2
c00094de:	e8 2d ff ff ff       	call   c0009410 <page_alloc>
c00094e3:	83 c4 10             	add    esp,0x10
c00094e6:	85 c0                	test   eax,eax
c00094e8:	74 16                	je     c0009500 <get_user_page+0x2f>
c00094ea:	c1 e3 0c             	shl    ebx,0xc
c00094ed:	52                   	push   edx
c00094ee:	53                   	push   ebx
c00094ef:	6a 00                	push   0x0
c00094f1:	50                   	push   eax
c00094f2:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
c00094f5:	e8 ae 17 00 00       	call   c000aca8 <memset>
c00094fa:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c00094fd:	83 c4 10             	add    esp,0x10
c0009500:	8b 5d fc             	mov    ebx,DWORD PTR [ebp-0x4]
c0009503:	c9                   	leave  
c0009504:	c3                   	ret    

c0009505 <get_a_page>:
c0009505:	55                   	push   ebp
c0009506:	89 e5                	mov    ebp,esp
c0009508:	57                   	push   edi
c0009509:	bf c8 71 01 c0       	mov    edi,0xc00171c8
c000950e:	56                   	push   esi
c000950f:	53                   	push   ebx
c0009510:	83 ec 0c             	sub    esp,0xc
c0009513:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c0009516:	8b 75 0c             	mov    esi,DWORD PTR [ebp+0xc]
c0009519:	83 fb 01             	cmp    ebx,0x1
c000951c:	75 05                	jne    c0009523 <get_a_page+0x1e>
c000951e:	bf 38 6c 02 c0       	mov    edi,0xc0026c38
c0009523:	e8 db 03 00 00       	call   c0009903 <running_thread>
c0009528:	83 fb 02             	cmp    ebx,0x2
c000952b:	8b 40 38             	mov    eax,DWORD PTR [eax+0x38]
c000952e:	75 04                	jne    c0009534 <get_a_page+0x2f>
c0009530:	85 c0                	test   eax,eax
c0009532:	75 33                	jne    c0009567 <get_a_page+0x62>
c0009534:	4b                   	dec    ebx
c0009535:	75 14                	jne    c000954b <get_a_page+0x46>
c0009537:	85 c0                	test   eax,eax
c0009539:	75 10                	jne    c000954b <get_a_page+0x46>
c000953b:	50                   	push   eax
c000953c:	50                   	push   eax
c000953d:	6a 01                	push   0x1
c000953f:	68 00 72 01 c0       	push   0xc0017200
c0009544:	e8 dd fa ff ff       	call   c0009026 <mem_alloc_page>
c0009549:	eb 19                	jmp    c0009564 <get_a_page+0x5f>
c000954b:	68 33 e7 00 c0       	push   0xc000e733
c0009550:	68 e0 e7 00 c0       	push   0xc000e7e0
c0009555:	68 42 01 00 00       	push   0x142
c000955a:	68 d5 e6 00 c0       	push   0xc000e6d5
c000955f:	e8 44 ee ff ff       	call   c00083a8 <panic_spin>
c0009564:	83 c4 10             	add    esp,0x10
c0009567:	53                   	push   ebx
c0009568:	53                   	push   ebx
c0009569:	6a 01                	push   0x1
c000956b:	57                   	push   edi
c000956c:	e8 b5 fa ff ff       	call   c0009026 <mem_alloc_page>
c0009571:	83 c4 10             	add    esp,0x10
c0009574:	85 c0                	test   eax,eax
c0009576:	89 c3                	mov    ebx,eax
c0009578:	75 1c                	jne    c0009596 <get_a_page+0x91>
c000957a:	68 8a e7 00 c0       	push   0xc000e78a
c000957f:	68 e0 e7 00 c0       	push   0xc000e7e0
c0009584:	68 45 01 00 00       	push   0x145
c0009589:	68 d5 e6 00 c0       	push   0xc000e6d5
c000958e:	e8 15 ee ff ff       	call   c00083a8 <panic_spin>
c0009593:	83 c4 10             	add    esp,0x10
c0009596:	51                   	push   ecx
c0009597:	51                   	push   ecx
c0009598:	53                   	push   ebx
c0009599:	56                   	push   esi
c000959a:	e8 ff fd ff ff       	call   c000939e <page_table_add>
c000959f:	8d 65 f4             	lea    esp,[ebp-0xc]
c00095a2:	89 f0                	mov    eax,esi
c00095a4:	5b                   	pop    ebx
c00095a5:	5e                   	pop    esi
c00095a6:	5f                   	pop    edi
c00095a7:	5d                   	pop    ebp
c00095a8:	c3                   	ret    

c00095a9 <addr_v2p>:
c00095a9:	55                   	push   ebp
c00095aa:	89 e5                	mov    ebp,esp
c00095ac:	53                   	push   ebx
c00095ad:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c00095b0:	53                   	push   ebx
c00095b1:	81 e3 ff 0f 00 00    	and    ebx,0xfff
c00095b7:	e8 c0 fd ff ff       	call   c000937c <pte_ptr>
c00095bc:	5a                   	pop    edx
c00095bd:	8b 00                	mov    eax,DWORD PTR [eax]
c00095bf:	25 00 f0 ff ff       	and    eax,0xfffff000
c00095c4:	09 d8                	or     eax,ebx
c00095c6:	8b 5d fc             	mov    ebx,DWORD PTR [ebp-0x4]
c00095c9:	c9                   	leave  
c00095ca:	c3                   	ret    
	...

c00095cc <sema_init>:
c00095cc:	55                   	push   ebp
c00095cd:	89 e5                	mov    ebp,esp
c00095cf:	56                   	push   esi
c00095d0:	0f b6 75 0c          	movzx  esi,BYTE PTR [ebp+0xc]
c00095d4:	53                   	push   ebx
c00095d5:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c00095d8:	83 ec 0c             	sub    esp,0xc
c00095db:	8d 43 04             	lea    eax,[ebx+0x4]
c00095de:	89 33                	mov    DWORD PTR [ebx],esi
c00095e0:	50                   	push   eax
c00095e1:	e8 06 13 00 00       	call   c000a8ec <list_init>
c00095e6:	8b 03                	mov    eax,DWORD PTR [ebx]
c00095e8:	83 c4 10             	add    esp,0x10
c00095eb:	39 f0                	cmp    eax,esi
c00095ed:	74 19                	je     c0009608 <sema_init+0x3c>
c00095ef:	68 ec e7 00 c0       	push   0xc000e7ec
c00095f4:	68 30 e9 00 c0       	push   0xc000e930
c00095f9:	6a 0d                	push   0xd
c00095fb:	68 02 e8 00 c0       	push   0xc000e802
c0009600:	e8 a3 ed ff ff       	call   c00083a8 <panic_spin>
c0009605:	83 c4 10             	add    esp,0x10
c0009608:	8d 65 f8             	lea    esp,[ebp-0x8]
c000960b:	5b                   	pop    ebx
c000960c:	5e                   	pop    esi
c000960d:	5d                   	pop    ebp
c000960e:	c3                   	ret    

c000960f <lock_init>:
c000960f:	55                   	push   ebp
c0009610:	89 e5                	mov    ebp,esp
c0009612:	83 ec 10             	sub    esp,0x10
c0009615:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0009618:	c7 00 00 00 00 00    	mov    DWORD PTR [eax],0x0
c000961e:	c7 40 20 00 00 00 00 	mov    DWORD PTR [eax+0x20],0x0
c0009625:	83 c0 04             	add    eax,0x4
c0009628:	6a 01                	push   0x1
c000962a:	50                   	push   eax
c000962b:	e8 9c ff ff ff       	call   c00095cc <sema_init>
c0009630:	83 c4 10             	add    esp,0x10
c0009633:	c9                   	leave  
c0009634:	c3                   	ret    

c0009635 <sema_down>:
c0009635:	55                   	push   ebp
c0009636:	89 e5                	mov    ebp,esp
c0009638:	57                   	push   edi
c0009639:	56                   	push   esi
c000963a:	53                   	push   ebx
c000963b:	83 ec 0c             	sub    esp,0xc
c000963e:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c0009641:	e8 d3 f6 ff ff       	call   c0008d19 <intr_disable>
c0009646:	8d 73 04             	lea    esi,[ebx+0x4]
c0009649:	89 c7                	mov    edi,eax
c000964b:	e9 82 00 00 00       	jmp    c00096d2 <sema_down+0x9d>
c0009650:	e8 ae 02 00 00       	call   c0009903 <running_thread>
c0009655:	52                   	push   edx
c0009656:	83 c0 2c             	add    eax,0x2c
c0009659:	52                   	push   edx
c000965a:	50                   	push   eax
c000965b:	56                   	push   esi
c000965c:	e8 43 13 00 00       	call   c000a9a4 <list_find>
c0009661:	83 c4 10             	add    esp,0x10
c0009664:	85 c0                	test   eax,eax
c0009666:	74 19                	je     c0009681 <sema_down+0x4c>
c0009668:	68 10 e8 00 c0       	push   0xc000e810
c000966d:	68 3c e9 00 c0       	push   0xc000e93c
c0009672:	6a 24                	push   0x24
c0009674:	68 02 e8 00 c0       	push   0xc000e802
c0009679:	e8 2a ed ff ff       	call   c00083a8 <panic_spin>
c000967e:	83 c4 10             	add    esp,0x10
c0009681:	e8 7d 02 00 00       	call   c0009903 <running_thread>
c0009686:	51                   	push   ecx
c0009687:	83 c0 2c             	add    eax,0x2c
c000968a:	51                   	push   ecx
c000968b:	50                   	push   eax
c000968c:	56                   	push   esi
c000968d:	e8 12 13 00 00       	call   c000a9a4 <list_find>
c0009692:	83 c4 10             	add    esp,0x10
c0009695:	85 c0                	test   eax,eax
c0009697:	74 19                	je     c00096b2 <sema_down+0x7d>
c0009699:	68 51 e8 00 c0       	push   0xc000e851
c000969e:	68 3c e9 00 c0       	push   0xc000e93c
c00096a3:	6a 27                	push   0x27
c00096a5:	68 02 e8 00 c0       	push   0xc000e802
c00096aa:	e8 f9 ec ff ff       	call   c00083a8 <panic_spin>
c00096af:	83 c4 10             	add    esp,0x10
c00096b2:	e8 4c 02 00 00       	call   c0009903 <running_thread>
c00096b7:	52                   	push   edx
c00096b8:	83 c0 2c             	add    eax,0x2c
c00096bb:	52                   	push   edx
c00096bc:	50                   	push   eax
c00096bd:	56                   	push   esi
c00096be:	e8 88 12 00 00       	call   c000a94b <list_append>
c00096c3:	c7 04 24 02 00 00 00 	mov    DWORD PTR [esp],0x2
c00096ca:	e8 c0 04 00 00       	call   c0009b8f <thread_block>
c00096cf:	83 c4 10             	add    esp,0x10
c00096d2:	8b 03                	mov    eax,DWORD PTR [ebx]
c00096d4:	85 c0                	test   eax,eax
c00096d6:	0f 84 74 ff ff ff    	je     c0009650 <sema_down+0x1b>
c00096dc:	8b 03                	mov    eax,DWORD PTR [ebx]
c00096de:	48                   	dec    eax
c00096df:	89 03                	mov    DWORD PTR [ebx],eax
c00096e1:	8b 03                	mov    eax,DWORD PTR [ebx]
c00096e3:	85 c0                	test   eax,eax
c00096e5:	74 19                	je     c0009700 <sema_down+0xcb>
c00096e7:	68 85 e8 00 c0       	push   0xc000e885
c00096ec:	68 3c e9 00 c0       	push   0xc000e93c
c00096f1:	6a 2d                	push   0x2d
c00096f3:	68 02 e8 00 c0       	push   0xc000e802
c00096f8:	e8 ab ec ff ff       	call   c00083a8 <panic_spin>
c00096fd:	83 c4 10             	add    esp,0x10
c0009700:	89 7d 08             	mov    DWORD PTR [ebp+0x8],edi
c0009703:	8d 65 f4             	lea    esp,[ebp-0xc]
c0009706:	5b                   	pop    ebx
c0009707:	5e                   	pop    esi
c0009708:	5f                   	pop    edi
c0009709:	5d                   	pop    ebp
c000970a:	e9 09 f8 ff ff       	jmp    c0008f18 <intr_set_status>

c000970f <sema_up>:
c000970f:	55                   	push   ebp
c0009710:	89 e5                	mov    ebp,esp
c0009712:	57                   	push   edi
c0009713:	56                   	push   esi
c0009714:	53                   	push   ebx
c0009715:	83 ec 0c             	sub    esp,0xc
c0009718:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c000971b:	e8 f9 f5 ff ff       	call   c0008d19 <intr_disable>
c0009720:	89 c7                	mov    edi,eax
c0009722:	8b 03                	mov    eax,DWORD PTR [ebx]
c0009724:	85 c0                	test   eax,eax
c0009726:	74 19                	je     c0009741 <sema_up+0x32>
c0009728:	68 85 e8 00 c0       	push   0xc000e885
c000972d:	68 48 e9 00 c0       	push   0xc000e948
c0009732:	6a 38                	push   0x38
c0009734:	68 02 e8 00 c0       	push   0xc000e802
c0009739:	e8 6a ec ff ff       	call   c00083a8 <panic_spin>
c000973e:	83 c4 10             	add    esp,0x10
c0009741:	83 ec 0c             	sub    esp,0xc
c0009744:	8d 73 04             	lea    esi,[ebx+0x4]
c0009747:	56                   	push   esi
c0009748:	e8 d0 12 00 00       	call   c000aa1d <list_empty>
c000974d:	83 c4 10             	add    esp,0x10
c0009750:	85 c0                	test   eax,eax
c0009752:	75 15                	jne    c0009769 <sema_up+0x5a>
c0009754:	83 ec 0c             	sub    esp,0xc
c0009757:	56                   	push   esi
c0009758:	e8 2d 12 00 00       	call   c000a98a <list_pop>
c000975d:	59                   	pop    ecx
c000975e:	ff 70 04             	push   DWORD PTR [eax+0x4]
c0009761:	e8 74 04 00 00       	call   c0009bda <thread_unblock>
c0009766:	83 c4 10             	add    esp,0x10
c0009769:	8b 03                	mov    eax,DWORD PTR [ebx]
c000976b:	40                   	inc    eax
c000976c:	89 03                	mov    DWORD PTR [ebx],eax
c000976e:	8b 03                	mov    eax,DWORD PTR [ebx]
c0009770:	48                   	dec    eax
c0009771:	74 19                	je     c000978c <sema_up+0x7d>
c0009773:	68 97 e8 00 c0       	push   0xc000e897
c0009778:	68 48 e9 00 c0       	push   0xc000e948
c000977d:	6a 3f                	push   0x3f
c000977f:	68 02 e8 00 c0       	push   0xc000e802
c0009784:	e8 1f ec ff ff       	call   c00083a8 <panic_spin>
c0009789:	83 c4 10             	add    esp,0x10
c000978c:	89 7d 08             	mov    DWORD PTR [ebp+0x8],edi
c000978f:	8d 65 f4             	lea    esp,[ebp-0xc]
c0009792:	5b                   	pop    ebx
c0009793:	5e                   	pop    esi
c0009794:	5f                   	pop    edi
c0009795:	5d                   	pop    ebp
c0009796:	e9 7d f7 ff ff       	jmp    c0008f18 <intr_set_status>

c000979b <lock_acquire>:
c000979b:	55                   	push   ebp
c000979c:	89 e5                	mov    ebp,esp
c000979e:	56                   	push   esi
c000979f:	53                   	push   ebx
c00097a0:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c00097a3:	8b 33                	mov    esi,DWORD PTR [ebx]
c00097a5:	e8 59 01 00 00       	call   c0009903 <running_thread>
c00097aa:	39 c6                	cmp    esi,eax
c00097ac:	74 3e                	je     c00097ec <lock_acquire+0x51>
c00097ae:	83 ec 0c             	sub    esp,0xc
c00097b1:	8d 43 04             	lea    eax,[ebx+0x4]
c00097b4:	50                   	push   eax
c00097b5:	e8 7b fe ff ff       	call   c0009635 <sema_down>
c00097ba:	e8 44 01 00 00       	call   c0009903 <running_thread>
c00097bf:	83 c4 10             	add    esp,0x10
c00097c2:	83 7b 20 00          	cmp    DWORD PTR [ebx+0x20],0x0
c00097c6:	89 03                	mov    DWORD PTR [ebx],eax
c00097c8:	74 19                	je     c00097e3 <lock_acquire+0x48>
c00097ca:	68 a9 e8 00 c0       	push   0xc000e8a9
c00097cf:	68 50 e9 00 c0       	push   0xc000e950
c00097d4:	6a 4d                	push   0x4d
c00097d6:	68 02 e8 00 c0       	push   0xc000e802
c00097db:	e8 c8 eb ff ff       	call   c00083a8 <panic_spin>
c00097e0:	83 c4 10             	add    esp,0x10
c00097e3:	c7 43 20 01 00 00 00 	mov    DWORD PTR [ebx+0x20],0x1
c00097ea:	eb 03                	jmp    c00097ef <lock_acquire+0x54>
c00097ec:	ff 43 20             	inc    DWORD PTR [ebx+0x20]
c00097ef:	8d 65 f8             	lea    esp,[ebp-0x8]
c00097f2:	5b                   	pop    ebx
c00097f3:	5e                   	pop    esi
c00097f4:	5d                   	pop    ebp
c00097f5:	c3                   	ret    

c00097f6 <lock_release>:
c00097f6:	55                   	push   ebp
c00097f7:	89 e5                	mov    ebp,esp
c00097f9:	56                   	push   esi
c00097fa:	53                   	push   ebx
c00097fb:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c00097fe:	8b 33                	mov    esi,DWORD PTR [ebx]
c0009800:	e8 fe 00 00 00       	call   c0009903 <running_thread>
c0009805:	39 c6                	cmp    esi,eax
c0009807:	74 19                	je     c0009822 <lock_release+0x2c>
c0009809:	68 c6 e8 00 c0       	push   0xc000e8c6
c000980e:	68 60 e9 00 c0       	push   0xc000e960
c0009813:	6a 5c                	push   0x5c
c0009815:	68 02 e8 00 c0       	push   0xc000e802
c000981a:	e8 89 eb ff ff       	call   c00083a8 <panic_spin>
c000981f:	83 c4 10             	add    esp,0x10
c0009822:	8b 43 20             	mov    eax,DWORD PTR [ebx+0x20]
c0009825:	83 f8 01             	cmp    eax,0x1
c0009828:	76 0b                	jbe    c0009835 <lock_release+0x3f>
c000982a:	48                   	dec    eax
c000982b:	89 43 20             	mov    DWORD PTR [ebx+0x20],eax
c000982e:	8d 65 f8             	lea    esp,[ebp-0x8]
c0009831:	5b                   	pop    ebx
c0009832:	5e                   	pop    esi
c0009833:	5d                   	pop    ebp
c0009834:	c3                   	ret    
c0009835:	74 19                	je     c0009850 <lock_release+0x5a>
c0009837:	68 e8 e8 00 c0       	push   0xc000e8e8
c000983c:	68 60 e9 00 c0       	push   0xc000e960
c0009841:	6a 62                	push   0x62
c0009843:	68 02 e8 00 c0       	push   0xc000e802
c0009848:	e8 5b eb ff ff       	call   c00083a8 <panic_spin>
c000984d:	83 c4 10             	add    esp,0x10
c0009850:	c7 03 00 00 00 00    	mov    DWORD PTR [ebx],0x0
c0009856:	c7 43 20 00 00 00 00 	mov    DWORD PTR [ebx+0x20],0x0
c000985d:	83 c3 04             	add    ebx,0x4
c0009860:	89 5d 08             	mov    DWORD PTR [ebp+0x8],ebx
c0009863:	8d 65 f8             	lea    esp,[ebp-0x8]
c0009866:	5b                   	pop    ebx
c0009867:	5e                   	pop    esi
c0009868:	5d                   	pop    ebp
c0009869:	e9 a1 fe ff ff       	jmp    c000970f <sema_up>
	...

c0009870 <switch_to>:
c0009870:	56                   	push   esi
c0009871:	57                   	push   edi
c0009872:	53                   	push   ebx
c0009873:	55                   	push   ebp
c0009874:	8b 44 24 14          	mov    eax,DWORD PTR [esp+0x14]
c0009878:	89 20                	mov    DWORD PTR [eax],esp
c000987a:	8b 44 24 18          	mov    eax,DWORD PTR [esp+0x18]
c000987e:	8b 20                	mov    esp,DWORD PTR [eax]
c0009880:	5d                   	pop    ebp
c0009881:	5b                   	pop    ebx
c0009882:	5f                   	pop    edi
c0009883:	5e                   	pop    esi
c0009884:	c3                   	ret    

c0009885 <kernel_thread>:
c0009885:	55                   	push   ebp
c0009886:	89 e5                	mov    ebp,esp
c0009888:	56                   	push   esi
c0009889:	8b 75 0c             	mov    esi,DWORD PTR [ebp+0xc]
c000988c:	53                   	push   ebx
c000988d:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c0009890:	e8 6c f6 ff ff       	call   c0008f01 <intr_enable>
c0009895:	89 75 08             	mov    DWORD PTR [ebp+0x8],esi
c0009898:	89 d8                	mov    eax,ebx
c000989a:	5b                   	pop    ebx
c000989b:	5e                   	pop    esi
c000989c:	5d                   	pop    ebp
c000989d:	ff e0                	jmp    eax

c000989f <thread_init>:
c000989f:	55                   	push   ebp
c00098a0:	89 e5                	mov    ebp,esp
c00098a2:	53                   	push   ebx
c00098a3:	83 ec 18             	sub    esp,0x18
c00098a6:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c00098a9:	8a 55 10             	mov    dl,BYTE PTR [ebp+0x10]
c00098ac:	6a 78                	push   0x78
c00098ae:	6a 00                	push   0x0
c00098b0:	53                   	push   ebx
c00098b1:	88 55 f4             	mov    BYTE PTR [ebp-0xc],dl
c00098b4:	e8 ef 13 00 00       	call   c000aca8 <memset>
c00098b9:	58                   	pop    eax
c00098ba:	5a                   	pop    edx
c00098bb:	ff 75 0c             	push   DWORD PTR [ebp+0xc]
c00098be:	8d 43 08             	lea    eax,[ebx+0x8]
c00098c1:	50                   	push   eax
c00098c2:	e8 b4 14 00 00       	call   c000ad7b <strcpy>
c00098c7:	83 c4 10             	add    esp,0x10
c00098ca:	8a 55 f4             	mov    dl,BYTE PTR [ebp-0xc]
c00098cd:	3b 1d a0 6c 02 c0    	cmp    ebx,DWORD PTR ds:0xc0026ca0
c00098d3:	75 09                	jne    c00098de <thread_init+0x3f>
c00098d5:	c7 43 04 00 00 00 00 	mov    DWORD PTR [ebx+0x4],0x0
c00098dc:	eb 07                	jmp    c00098e5 <thread_init+0x46>
c00098de:	c7 43 04 01 00 00 00 	mov    DWORD PTR [ebx+0x4],0x1
c00098e5:	8d 83 00 10 00 00    	lea    eax,[ebx+0x1000]
c00098eb:	88 53 18             	mov    BYTE PTR [ebx+0x18],dl
c00098ee:	89 03                	mov    DWORD PTR [ebx],eax
c00098f0:	c7 43 38 00 00 00 00 	mov    DWORD PTR [ebx+0x38],0x0
c00098f7:	c7 43 74 78 56 34 12 	mov    DWORD PTR [ebx+0x74],0x12345678
c00098fe:	8b 5d fc             	mov    ebx,DWORD PTR [ebp-0x4]
c0009901:	c9                   	leave  
c0009902:	c3                   	ret    

c0009903 <running_thread>:
c0009903:	55                   	push   ebp
c0009904:	89 e5                	mov    ebp,esp
c0009906:	89 e0                	mov    eax,esp
c0009908:	25 00 f0 ff ff       	and    eax,0xfffff000
c000990d:	5d                   	pop    ebp
c000990e:	c3                   	ret    

c000990f <init_thread>:
c000990f:	55                   	push   ebp
c0009910:	89 e5                	mov    ebp,esp
c0009912:	83 ec 14             	sub    esp,0x14
c0009915:	68 70 6c 02 c0       	push   0xc0026c70
c000991a:	e8 cd 0f 00 00       	call   c000a8ec <list_init>
c000991f:	c7 04 24 88 6c 02 c0 	mov    DWORD PTR [esp],0xc0026c88
c0009926:	e8 c1 0f 00 00       	call   c000a8ec <list_init>
c000992b:	e8 d3 ff ff ff       	call   c0009903 <running_thread>
c0009930:	83 c4 0c             	add    esp,0xc
c0009933:	6a 1f                	push   0x1f
c0009935:	68 70 e9 00 c0       	push   0xc000e970
c000993a:	50                   	push   eax
c000993b:	a3 a0 6c 02 c0       	mov    ds:0xc0026ca0,eax
c0009940:	e8 5a ff ff ff       	call   c000989f <thread_init>
c0009945:	a1 a0 6c 02 c0       	mov    eax,ds:0xc0026ca0
c000994a:	89 40 24             	mov    DWORD PTR [eax+0x24],eax
c000994d:	89 40 30             	mov    DWORD PTR [eax+0x30],eax
c0009950:	83 c0 20             	add    eax,0x20
c0009953:	59                   	pop    ecx
c0009954:	5a                   	pop    edx
c0009955:	50                   	push   eax
c0009956:	68 88 6c 02 c0       	push   0xc0026c88
c000995b:	e8 eb 0f 00 00       	call   c000a94b <list_append>
c0009960:	83 c4 10             	add    esp,0x10
c0009963:	c9                   	leave  
c0009964:	c3                   	ret    

c0009965 <thread_create>:
c0009965:	55                   	push   ebp
c0009966:	89 e5                	mov    ebp,esp
c0009968:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c000996b:	8b 02                	mov    eax,DWORD PTR [edx]
c000996d:	8d 88 50 fe ff ff    	lea    ecx,[eax-0x1b0]
c0009973:	89 0a                	mov    DWORD PTR [edx],ecx
c0009975:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
c0009978:	c7 80 60 fe ff ff 85 	mov    DWORD PTR [eax-0x1a0],0xc0009885
c000997f:	98 00 c0 
c0009982:	c7 80 50 fe ff ff 00 	mov    DWORD PTR [eax-0x1b0],0x0
c0009989:	00 00 00 
c000998c:	c7 80 54 fe ff ff 00 	mov    DWORD PTR [eax-0x1ac],0x0
c0009993:	00 00 00 
c0009996:	89 90 68 fe ff ff    	mov    DWORD PTR [eax-0x198],edx
c000999c:	8b 55 10             	mov    edx,DWORD PTR [ebp+0x10]
c000999f:	c7 80 5c fe ff ff 00 	mov    DWORD PTR [eax-0x1a4],0x0
c00099a6:	00 00 00 
c00099a9:	c7 80 58 fe ff ff 00 	mov    DWORD PTR [eax-0x1a8],0x0
c00099b0:	00 00 00 
c00099b3:	89 90 6c fe ff ff    	mov    DWORD PTR [eax-0x194],edx
c00099b9:	5d                   	pop    ebp
c00099ba:	c3                   	ret    

c00099bb <thread_start>:
c00099bb:	55                   	push   ebp
c00099bc:	89 e5                	mov    ebp,esp
c00099be:	56                   	push   esi
c00099bf:	8b 75 0c             	mov    esi,DWORD PTR [ebp+0xc]
c00099c2:	53                   	push   ebx
c00099c3:	83 ec 0c             	sub    esp,0xc
c00099c6:	6a 01                	push   0x1
c00099c8:	e8 b5 fa ff ff       	call   c0009482 <get_kernel_page>
c00099cd:	81 e6 ff 00 00 00    	and    esi,0xff
c00099d3:	83 c4 0c             	add    esp,0xc
c00099d6:	56                   	push   esi
c00099d7:	ff 75 08             	push   DWORD PTR [ebp+0x8]
c00099da:	50                   	push   eax
c00099db:	89 c3                	mov    ebx,eax
c00099dd:	e8 bd fe ff ff       	call   c000989f <thread_init>
c00099e2:	83 c4 0c             	add    esp,0xc
c00099e5:	ff 75 14             	push   DWORD PTR [ebp+0x14]
c00099e8:	ff 75 10             	push   DWORD PTR [ebp+0x10]
c00099eb:	8d 73 2c             	lea    esi,[ebx+0x2c]
c00099ee:	53                   	push   ebx
c00099ef:	e8 71 ff ff ff       	call   c0009965 <thread_create>
c00099f4:	89 5b 24             	mov    DWORD PTR [ebx+0x24],ebx
c00099f7:	89 5b 30             	mov    DWORD PTR [ebx+0x30],ebx
c00099fa:	59                   	pop    ecx
c00099fb:	58                   	pop    eax
c00099fc:	56                   	push   esi
c00099fd:	68 70 6c 02 c0       	push   0xc0026c70
c0009a02:	e8 9d 0f 00 00       	call   c000a9a4 <list_find>
c0009a07:	83 c4 10             	add    esp,0x10
c0009a0a:	85 c0                	test   eax,eax
c0009a0c:	74 19                	je     c0009a27 <thread_start+0x6c>
c0009a0e:	68 7c e9 00 c0       	push   0xc000e97c
c0009a13:	68 38 eb 00 c0       	push   0xc000eb38
c0009a18:	6a 61                	push   0x61
c0009a1a:	68 ab e9 00 c0       	push   0xc000e9ab
c0009a1f:	e8 84 e9 ff ff       	call   c00083a8 <panic_spin>
c0009a24:	83 c4 10             	add    esp,0x10
c0009a27:	50                   	push   eax
c0009a28:	50                   	push   eax
c0009a29:	56                   	push   esi
c0009a2a:	68 70 6c 02 c0       	push   0xc0026c70
c0009a2f:	e8 17 0f 00 00       	call   c000a94b <list_append>
c0009a34:	8d 73 20             	lea    esi,[ebx+0x20]
c0009a37:	58                   	pop    eax
c0009a38:	5a                   	pop    edx
c0009a39:	56                   	push   esi
c0009a3a:	68 88 6c 02 c0       	push   0xc0026c88
c0009a3f:	e8 60 0f 00 00       	call   c000a9a4 <list_find>
c0009a44:	83 c4 10             	add    esp,0x10
c0009a47:	85 c0                	test   eax,eax
c0009a49:	74 19                	je     c0009a64 <thread_start+0xa9>
c0009a4b:	68 bb e9 00 c0       	push   0xc000e9bb
c0009a50:	68 38 eb 00 c0       	push   0xc000eb38
c0009a55:	6a 64                	push   0x64
c0009a57:	68 ab e9 00 c0       	push   0xc000e9ab
c0009a5c:	e8 47 e9 ff ff       	call   c00083a8 <panic_spin>
c0009a61:	83 c4 10             	add    esp,0x10
c0009a64:	51                   	push   ecx
c0009a65:	51                   	push   ecx
c0009a66:	56                   	push   esi
c0009a67:	68 88 6c 02 c0       	push   0xc0026c88
c0009a6c:	e8 da 0e 00 00       	call   c000a94b <list_append>
c0009a71:	8d 65 f8             	lea    esp,[ebp-0x8]
c0009a74:	89 d8                	mov    eax,ebx
c0009a76:	5b                   	pop    ebx
c0009a77:	5e                   	pop    esi
c0009a78:	5d                   	pop    ebp
c0009a79:	c3                   	ret    

c0009a7a <schedule>:
c0009a7a:	55                   	push   ebp
c0009a7b:	89 e5                	mov    ebp,esp
c0009a7d:	56                   	push   esi
c0009a7e:	53                   	push   ebx
c0009a7f:	e8 7f fe ff ff       	call   c0009903 <running_thread>
c0009a84:	81 78 74 78 56 34 12 	cmp    DWORD PTR [eax+0x74],0x12345678
c0009a8b:	89 c3                	mov    ebx,eax
c0009a8d:	74 19                	je     c0009aa8 <schedule+0x2e>
c0009a8f:	68 e4 e9 00 c0       	push   0xc000e9e4
c0009a94:	68 48 eb 00 c0       	push   0xc000eb48
c0009a99:	6a 76                	push   0x76
c0009a9b:	68 ab e9 00 c0       	push   0xc000e9ab
c0009aa0:	e8 03 e9 ff ff       	call   c00083a8 <panic_spin>
c0009aa5:	83 c4 10             	add    esp,0x10
c0009aa8:	8b 43 04             	mov    eax,DWORD PTR [ebx+0x4]
c0009aab:	85 c0                	test   eax,eax
c0009aad:	75 47                	jne    c0009af6 <schedule+0x7c>
c0009aaf:	50                   	push   eax
c0009ab0:	50                   	push   eax
c0009ab1:	8d 73 2c             	lea    esi,[ebx+0x2c]
c0009ab4:	56                   	push   esi
c0009ab5:	68 70 6c 02 c0       	push   0xc0026c70
c0009aba:	e8 e5 0e 00 00       	call   c000a9a4 <list_find>
c0009abf:	83 c4 10             	add    esp,0x10
c0009ac2:	85 c0                	test   eax,eax
c0009ac4:	74 19                	je     c0009adf <schedule+0x65>
c0009ac6:	68 0a ea 00 c0       	push   0xc000ea0a
c0009acb:	68 48 eb 00 c0       	push   0xc000eb48
c0009ad0:	6a 7a                	push   0x7a
c0009ad2:	68 ab e9 00 c0       	push   0xc000e9ab
c0009ad7:	e8 cc e8 ff ff       	call   c00083a8 <panic_spin>
c0009adc:	83 c4 10             	add    esp,0x10
c0009adf:	51                   	push   ecx
c0009ae0:	51                   	push   ecx
c0009ae1:	56                   	push   esi
c0009ae2:	68 70 6c 02 c0       	push   0xc0026c70
c0009ae7:	e8 5f 0e 00 00       	call   c000a94b <list_append>
c0009aec:	83 c4 10             	add    esp,0x10
c0009aef:	c7 43 04 00 00 00 00 	mov    DWORD PTR [ebx+0x4],0x0
c0009af6:	83 ec 0c             	sub    esp,0xc
c0009af9:	68 70 6c 02 c0       	push   0xc0026c70
c0009afe:	c7 05 e8 f0 00 c0 00 	mov    DWORD PTR ds:0xc000f0e8,0x0
c0009b05:	00 00 00 
c0009b08:	e8 10 0f 00 00       	call   c000aa1d <list_empty>
c0009b0d:	83 c4 10             	add    esp,0x10
c0009b10:	85 c0                	test   eax,eax
c0009b12:	74 1c                	je     c0009b30 <schedule+0xb6>
c0009b14:	68 3f ea 00 c0       	push   0xc000ea3f
c0009b19:	68 48 eb 00 c0       	push   0xc000eb48
c0009b1e:	68 86 00 00 00       	push   0x86
c0009b23:	68 ab e9 00 c0       	push   0xc000e9ab
c0009b28:	e8 7b e8 ff ff       	call   c00083a8 <panic_spin>
c0009b2d:	83 c4 10             	add    esp,0x10
c0009b30:	81 3d 7c 6c 02 c0 70 	cmp    DWORD PTR ds:0xc0026c7c,0xc0026c70
c0009b37:	6c 02 c0 
c0009b3a:	75 1c                	jne    c0009b58 <schedule+0xde>
c0009b3c:	68 5a ea 00 c0       	push   0xc000ea5a
c0009b41:	68 48 eb 00 c0       	push   0xc000eb48
c0009b46:	68 87 00 00 00       	push   0x87
c0009b4b:	68 ab e9 00 c0       	push   0xc000e9ab
c0009b50:	e8 53 e8 ff ff       	call   c00083a8 <panic_spin>
c0009b55:	83 c4 10             	add    esp,0x10
c0009b58:	83 ec 0c             	sub    esp,0xc
c0009b5b:	68 70 6c 02 c0       	push   0xc0026c70
c0009b60:	e8 25 0e 00 00       	call   c000a98a <list_pop>
c0009b65:	8b 70 04             	mov    esi,DWORD PTR [eax+0x4]
c0009b68:	a3 e8 f0 00 c0       	mov    ds:0xc000f0e8,eax
c0009b6d:	c7 46 04 00 00 00 00 	mov    DWORD PTR [esi+0x4],0x0
c0009b74:	89 34 24             	mov    DWORD PTR [esp],esi
c0009b77:	e8 e7 02 00 00       	call   c0009e63 <process_activate>
c0009b7c:	58                   	pop    eax
c0009b7d:	5a                   	pop    edx
c0009b7e:	56                   	push   esi
c0009b7f:	53                   	push   ebx
c0009b80:	e8 eb fc ff ff       	call   c0009870 <switch_to>
c0009b85:	83 c4 10             	add    esp,0x10
c0009b88:	8d 65 f8             	lea    esp,[ebp-0x8]
c0009b8b:	5b                   	pop    ebx
c0009b8c:	5e                   	pop    esi
c0009b8d:	5d                   	pop    ebp
c0009b8e:	c3                   	ret    

c0009b8f <thread_block>:
c0009b8f:	55                   	push   ebp
c0009b90:	89 e5                	mov    ebp,esp
c0009b92:	56                   	push   esi
c0009b93:	53                   	push   ebx
c0009b94:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c0009b97:	83 fb 01             	cmp    ebx,0x1
c0009b9a:	77 1c                	ja     c0009bb8 <thread_block+0x29>
c0009b9c:	68 83 ea 00 c0       	push   0xc000ea83
c0009ba1:	68 54 eb 00 c0       	push   0xc000eb54
c0009ba6:	68 94 00 00 00       	push   0x94
c0009bab:	68 ab e9 00 c0       	push   0xc000e9ab
c0009bb0:	e8 f3 e7 ff ff       	call   c00083a8 <panic_spin>
c0009bb5:	83 c4 10             	add    esp,0x10
c0009bb8:	e8 5c f1 ff ff       	call   c0008d19 <intr_disable>
c0009bbd:	89 c6                	mov    esi,eax
c0009bbf:	e8 3f fd ff ff       	call   c0009903 <running_thread>
c0009bc4:	89 58 04             	mov    DWORD PTR [eax+0x4],ebx
c0009bc7:	e8 ae fe ff ff       	call   c0009a7a <schedule>
c0009bcc:	89 75 08             	mov    DWORD PTR [ebp+0x8],esi
c0009bcf:	8d 65 f8             	lea    esp,[ebp-0x8]
c0009bd2:	5b                   	pop    ebx
c0009bd3:	5e                   	pop    esi
c0009bd4:	5d                   	pop    ebp
c0009bd5:	e9 3e f3 ff ff       	jmp    c0008f18 <intr_set_status>

c0009bda <thread_unblock>:
c0009bda:	55                   	push   ebp
c0009bdb:	89 e5                	mov    ebp,esp
c0009bdd:	57                   	push   edi
c0009bde:	56                   	push   esi
c0009bdf:	53                   	push   ebx
c0009be0:	83 ec 0c             	sub    esp,0xc
c0009be3:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c0009be6:	e8 2e f1 ff ff       	call   c0008d19 <intr_disable>
c0009beb:	89 c7                	mov    edi,eax
c0009bed:	8b 43 04             	mov    eax,DWORD PTR [ebx+0x4]
c0009bf0:	48                   	dec    eax
c0009bf1:	74 7a                	je     c0009c6d <thread_unblock+0x93>
c0009bf3:	50                   	push   eax
c0009bf4:	50                   	push   eax
c0009bf5:	8d 73 2c             	lea    esi,[ebx+0x2c]
c0009bf8:	56                   	push   esi
c0009bf9:	68 70 6c 02 c0       	push   0xc0026c70
c0009bfe:	e8 a1 0d 00 00       	call   c000a9a4 <list_find>
c0009c03:	83 c4 10             	add    esp,0x10
c0009c06:	85 c0                	test   eax,eax
c0009c08:	74 1c                	je     c0009c26 <thread_unblock+0x4c>
c0009c0a:	68 b2 ea 00 c0       	push   0xc000eab2
c0009c0f:	68 64 eb 00 c0       	push   0xc000eb64
c0009c14:	68 a2 00 00 00       	push   0xa2
c0009c19:	68 ab e9 00 c0       	push   0xc000e9ab
c0009c1e:	e8 85 e7 ff ff       	call   c00083a8 <panic_spin>
c0009c23:	83 c4 10             	add    esp,0x10
c0009c26:	50                   	push   eax
c0009c27:	50                   	push   eax
c0009c28:	56                   	push   esi
c0009c29:	68 70 6c 02 c0       	push   0xc0026c70
c0009c2e:	e8 71 0d 00 00       	call   c000a9a4 <list_find>
c0009c33:	83 c4 10             	add    esp,0x10
c0009c36:	85 c0                	test   eax,eax
c0009c38:	74 1c                	je     c0009c56 <thread_unblock+0x7c>
c0009c3a:	68 e2 ea 00 c0       	push   0xc000eae2
c0009c3f:	68 64 eb 00 c0       	push   0xc000eb64
c0009c44:	68 a5 00 00 00       	push   0xa5
c0009c49:	68 ab e9 00 c0       	push   0xc000e9ab
c0009c4e:	e8 55 e7 ff ff       	call   c00083a8 <panic_spin>
c0009c53:	83 c4 10             	add    esp,0x10
c0009c56:	50                   	push   eax
c0009c57:	50                   	push   eax
c0009c58:	56                   	push   esi
c0009c59:	68 70 6c 02 c0       	push   0xc0026c70
c0009c5e:	e8 d0 0c 00 00       	call   c000a933 <list_push>
c0009c63:	83 c4 10             	add    esp,0x10
c0009c66:	c7 43 04 01 00 00 00 	mov    DWORD PTR [ebx+0x4],0x1
c0009c6d:	89 7d 08             	mov    DWORD PTR [ebp+0x8],edi
c0009c70:	8d 65 f4             	lea    esp,[ebp-0xc]
c0009c73:	5b                   	pop    ebx
c0009c74:	5e                   	pop    esi
c0009c75:	5f                   	pop    edi
c0009c76:	5d                   	pop    ebp
c0009c77:	e9 9c f2 ff ff       	jmp    c0008f18 <intr_set_status>

c0009c7c <set_segmdesc>:
c0009c7c:	55                   	push   ebp
c0009c7d:	89 e5                	mov    ebp,esp
c0009c7f:	57                   	push   edi
c0009c80:	8b 7d 08             	mov    edi,DWORD PTR [ebp+0x8]
c0009c83:	56                   	push   esi
c0009c84:	89 d6                	mov    esi,edx
c0009c86:	c1 ee 10             	shr    esi,0x10
c0009c89:	53                   	push   ebx
c0009c8a:	89 f3                	mov    ebx,esi
c0009c8c:	88 58 04             	mov    BYTE PTR [eax+0x4],bl
c0009c8f:	89 fb                	mov    ebx,edi
c0009c91:	88 58 05             	mov    BYTE PTR [eax+0x5],bl
c0009c94:	89 fb                	mov    ebx,edi
c0009c96:	66 89 08             	mov    WORD PTR [eax],cx
c0009c99:	66 c1 eb 08          	shr    bx,0x8
c0009c9d:	c1 e9 10             	shr    ecx,0x10
c0009ca0:	83 e3 f0             	and    ebx,0xfffffff0
c0009ca3:	83 e1 0f             	and    ecx,0xf
c0009ca6:	09 cb                	or     ebx,ecx
c0009ca8:	66 89 50 02          	mov    WORD PTR [eax+0x2],dx
c0009cac:	c1 ea 18             	shr    edx,0x18
c0009caf:	88 58 06             	mov    BYTE PTR [eax+0x6],bl
c0009cb2:	88 50 07             	mov    BYTE PTR [eax+0x7],dl
c0009cb5:	5b                   	pop    ebx
c0009cb6:	5e                   	pop    esi
c0009cb7:	5f                   	pop    edi
c0009cb8:	5d                   	pop    ebp
c0009cb9:	c3                   	ret    

c0009cba <init_tss>:
c0009cba:	55                   	push   ebp
c0009cbb:	89 e5                	mov    ebp,esp
c0009cbd:	83 ec 1c             	sub    esp,0x1c
c0009cc0:	6a 6c                	push   0x6c
c0009cc2:	6a 00                	push   0x0
c0009cc4:	68 ec f0 00 c0       	push   0xc000f0ec
c0009cc9:	e8 da 0f 00 00       	call   c000aca8 <memset>
c0009cce:	b9 6b 00 00 00       	mov    ecx,0x6b
c0009cd3:	ba ec f0 00 c0       	mov    edx,0xc000f0ec
c0009cd8:	b8 18 10 00 00       	mov    eax,0x1018
c0009cdd:	c7 04 24 89 80 00 00 	mov    DWORD PTR [esp],0x8089
c0009ce4:	c7 05 f4 f0 00 c0 10 	mov    DWORD PTR ds:0xc000f0f4,0x10
c0009ceb:	00 00 00 
c0009cee:	c7 05 54 f1 00 c0 6c 	mov    DWORD PTR ds:0xc000f154,0x6c
c0009cf5:	00 00 00 
c0009cf8:	e8 7f ff ff ff       	call   c0009c7c <set_segmdesc>
c0009cfd:	31 d2                	xor    edx,edx
c0009cff:	b9 ff ff 0f 00       	mov    ecx,0xfffff
c0009d04:	b8 20 10 00 00       	mov    eax,0x1020
c0009d09:	c7 04 24 f8 c0 00 00 	mov    DWORD PTR [esp],0xc0f8
c0009d10:	e8 67 ff ff ff       	call   c0009c7c <set_segmdesc>
c0009d15:	b9 ff ff 0f 00       	mov    ecx,0xfffff
c0009d1a:	31 d2                	xor    edx,edx
c0009d1c:	b8 28 10 00 00       	mov    eax,0x1028
c0009d21:	c7 04 24 f2 c0 00 00 	mov    DWORD PTR [esp],0xc0f2
c0009d28:	e8 4f ff ff ff       	call   c0009c7c <set_segmdesc>
c0009d2d:	c7 45 f0 37 00 00 10 	mov    DWORD PTR [ebp-0x10],0x10000037
c0009d34:	c7 45 f4 00 00 00 00 	mov    DWORD PTR [ebp-0xc],0x0
c0009d3b:	0f 01 55 f0          	lgdtd  [ebp-0x10]
c0009d3f:	b8 18 00 00 00       	mov    eax,0x18
c0009d44:	0f 00 d8             	ltr    ax
c0009d47:	83 c4 10             	add    esp,0x10
c0009d4a:	c9                   	leave  
c0009d4b:	c3                   	ret    

c0009d4c <update_tss_esp0>:
c0009d4c:	55                   	push   ebp
c0009d4d:	89 e5                	mov    ebp,esp
c0009d4f:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0009d52:	5d                   	pop    ebp
c0009d53:	05 00 10 00 00       	add    eax,0x1000
c0009d58:	a3 f0 f0 00 c0       	mov    ds:0xc000f0f0,eax
c0009d5d:	c3                   	ret    
	...

c0009d60 <start_process>:
c0009d60:	55                   	push   ebp
c0009d61:	89 e5                	mov    ebp,esp
c0009d63:	56                   	push   esi
c0009d64:	53                   	push   ebx
c0009d65:	e8 99 fb ff ff       	call   c0009903 <running_thread>
c0009d6a:	8b 18                	mov    ebx,DWORD PTR [eax]
c0009d6c:	8d b3 80 00 00 00    	lea    esi,[ebx+0x80]
c0009d72:	89 30                	mov    DWORD PTR [eax],esi
c0009d74:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0009d77:	c7 83 84 00 00 00 00 	mov    DWORD PTR [ebx+0x84],0x0
c0009d7e:	00 00 00 
c0009d81:	c7 83 88 00 00 00 00 	mov    DWORD PTR [ebx+0x88],0x0
c0009d88:	00 00 00 
c0009d8b:	c7 83 8c 00 00 00 00 	mov    DWORD PTR [ebx+0x8c],0x0
c0009d92:	00 00 00 
c0009d95:	89 83 b8 00 00 00    	mov    DWORD PTR [ebx+0xb8],eax
c0009d9b:	c7 83 90 00 00 00 00 	mov    DWORD PTR [ebx+0x90],0x0
c0009da2:	00 00 00 
c0009da5:	c7 83 94 00 00 00 00 	mov    DWORD PTR [ebx+0x94],0x0
c0009dac:	00 00 00 
c0009daf:	c7 83 98 00 00 00 00 	mov    DWORD PTR [ebx+0x98],0x0
c0009db6:	00 00 00 
c0009db9:	c7 83 9c 00 00 00 00 	mov    DWORD PTR [ebx+0x9c],0x0
c0009dc0:	00 00 00 
c0009dc3:	c7 83 a0 00 00 00 00 	mov    DWORD PTR [ebx+0xa0],0x0
c0009dca:	00 00 00 
c0009dcd:	c7 83 a4 00 00 00 00 	mov    DWORD PTR [ebx+0xa4],0x0
c0009dd4:	00 00 00 
c0009dd7:	c7 83 b0 00 00 00 2b 	mov    DWORD PTR [ebx+0xb0],0x2b
c0009dde:	00 00 00 
c0009de1:	c7 83 ac 00 00 00 2b 	mov    DWORD PTR [ebx+0xac],0x2b
c0009de8:	00 00 00 
c0009deb:	c7 83 a8 00 00 00 2b 	mov    DWORD PTR [ebx+0xa8],0x2b
c0009df2:	00 00 00 
c0009df5:	c7 83 bc 00 00 00 23 	mov    DWORD PTR [ebx+0xbc],0x23
c0009dfc:	00 00 00 
c0009dff:	c7 83 c0 00 00 00 02 	mov    DWORD PTR [ebx+0xc0],0x202
c0009e06:	02 00 00 
c0009e09:	50                   	push   eax
c0009e0a:	50                   	push   eax
c0009e0b:	68 00 f0 ff bf       	push   0xbffff000
c0009e10:	6a 02                	push   0x2
c0009e12:	e8 ee f6 ff ff       	call   c0009505 <get_a_page>
c0009e17:	c7 83 c8 00 00 00 2b 	mov    DWORD PTR [ebx+0xc8],0x2b
c0009e1e:	00 00 00 
c0009e21:	05 00 10 00 00       	add    eax,0x1000
c0009e26:	89 83 c4 00 00 00    	mov    DWORD PTR [ebx+0xc4],eax
c0009e2c:	89 f4                	mov    esp,esi
c0009e2e:	e9 7d e6 ff ff       	jmp    c00084b0 <intr_exit>
c0009e33:	83 c4 10             	add    esp,0x10
c0009e36:	8d 65 f8             	lea    esp,[ebp-0x8]
c0009e39:	5b                   	pop    ebx
c0009e3a:	5e                   	pop    esi
c0009e3b:	5d                   	pop    ebp
c0009e3c:	c3                   	ret    

c0009e3d <page_dir_activate>:
c0009e3d:	55                   	push   ebp
c0009e3e:	89 e5                	mov    ebp,esp
c0009e40:	83 ec 08             	sub    esp,0x8
c0009e43:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0009e46:	8b 50 38             	mov    edx,DWORD PTR [eax+0x38]
c0009e49:	b8 00 00 40 00       	mov    eax,0x400000
c0009e4e:	85 d2                	test   edx,edx
c0009e50:	74 0c                	je     c0009e5e <page_dir_activate+0x21>
c0009e52:	83 ec 0c             	sub    esp,0xc
c0009e55:	52                   	push   edx
c0009e56:	e8 4e f7 ff ff       	call   c00095a9 <addr_v2p>
c0009e5b:	83 c4 10             	add    esp,0x10
c0009e5e:	0f 22 d8             	mov    cr3,eax
c0009e61:	c9                   	leave  
c0009e62:	c3                   	ret    

c0009e63 <process_activate>:
c0009e63:	55                   	push   ebp
c0009e64:	89 e5                	mov    ebp,esp
c0009e66:	53                   	push   ebx
c0009e67:	51                   	push   ecx
c0009e68:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c0009e6b:	85 db                	test   ebx,ebx
c0009e6d:	75 19                	jne    c0009e88 <process_activate+0x25>
c0009e6f:	68 9c eb 00 c0       	push   0xc000eb9c
c0009e74:	68 88 ec 00 c0       	push   0xc000ec88
c0009e79:	6a 41                	push   0x41
c0009e7b:	68 ac eb 00 c0       	push   0xc000ebac
c0009e80:	e8 23 e5 ff ff       	call   c00083a8 <panic_spin>
c0009e85:	83 c4 10             	add    esp,0x10
c0009e88:	83 ec 0c             	sub    esp,0xc
c0009e8b:	53                   	push   ebx
c0009e8c:	e8 ac ff ff ff       	call   c0009e3d <page_dir_activate>
c0009e91:	83 c4 10             	add    esp,0x10
c0009e94:	83 7b 38 00          	cmp    DWORD PTR [ebx+0x38],0x0
c0009e98:	74 0c                	je     c0009ea6 <process_activate+0x43>
c0009e9a:	89 5d 08             	mov    DWORD PTR [ebp+0x8],ebx
c0009e9d:	8b 5d fc             	mov    ebx,DWORD PTR [ebp-0x4]
c0009ea0:	c9                   	leave  
c0009ea1:	e9 a6 fe ff ff       	jmp    c0009d4c <update_tss_esp0>
c0009ea6:	8b 5d fc             	mov    ebx,DWORD PTR [ebp-0x4]
c0009ea9:	c9                   	leave  
c0009eaa:	c3                   	ret    

c0009eab <create_page_dir>:
c0009eab:	55                   	push   ebp
c0009eac:	89 e5                	mov    ebp,esp
c0009eae:	53                   	push   ebx
c0009eaf:	83 ec 10             	sub    esp,0x10
c0009eb2:	6a 01                	push   0x1
c0009eb4:	e8 c9 f5 ff ff       	call   c0009482 <get_kernel_page>
c0009eb9:	83 c4 10             	add    esp,0x10
c0009ebc:	85 c0                	test   eax,eax
c0009ebe:	89 c3                	mov    ebx,eax
c0009ec0:	75 10                	jne    c0009ed2 <create_page_dir+0x27>
c0009ec2:	50                   	push   eax
c0009ec3:	50                   	push   eax
c0009ec4:	68 bf eb 00 c0       	push   0xc000ebbf
c0009ec9:	6a 04                	push   0x4
c0009ecb:	e8 bf 01 00 00       	call   c000a08f <console_str>
c0009ed0:	eb 28                	jmp    c0009efa <create_page_dir+0x4f>
c0009ed2:	50                   	push   eax
c0009ed3:	68 00 04 00 00       	push   0x400
c0009ed8:	68 00 fc ff ff       	push   0xfffffc00
c0009edd:	8d 83 00 0c 00 00    	lea    eax,[ebx+0xc00]
c0009ee3:	50                   	push   eax
c0009ee4:	e8 06 0e 00 00       	call   c000acef <memcpy>
c0009ee9:	89 1c 24             	mov    DWORD PTR [esp],ebx
c0009eec:	e8 b8 f6 ff ff       	call   c00095a9 <addr_v2p>
c0009ef1:	83 c8 07             	or     eax,0x7
c0009ef4:	89 83 fc 0f 00 00    	mov    DWORD PTR [ebx+0xffc],eax
c0009efa:	89 d8                	mov    eax,ebx
c0009efc:	83 c4 10             	add    esp,0x10
c0009eff:	8b 5d fc             	mov    ebx,DWORD PTR [ebp-0x4]
c0009f02:	c9                   	leave  
c0009f03:	c3                   	ret    

c0009f04 <create_user_vaddr_memman>:
c0009f04:	55                   	push   ebp
c0009f05:	89 e5                	mov    ebp,esp
c0009f07:	83 ec 14             	sub    esp,0x14
c0009f0a:	6a 08                	push   0x8
c0009f0c:	e8 71 f5 ff ff       	call   c0009482 <get_kernel_page>
c0009f11:	5a                   	pop    edx
c0009f12:	59                   	pop    ecx
c0009f13:	50                   	push   eax
c0009f14:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0009f17:	83 c0 3c             	add    eax,0x3c
c0009f1a:	50                   	push   eax
c0009f1b:	e8 10 f0 ff ff       	call   c0008f30 <init_memman>
c0009f20:	83 c4 10             	add    esp,0x10
c0009f23:	c9                   	leave  
c0009f24:	c3                   	ret    

c0009f25 <process_execute>:
c0009f25:	55                   	push   ebp
c0009f26:	89 e5                	mov    ebp,esp
c0009f28:	57                   	push   edi
c0009f29:	56                   	push   esi
c0009f2a:	53                   	push   ebx
c0009f2b:	83 ec 18             	sub    esp,0x18
c0009f2e:	8b 75 08             	mov    esi,DWORD PTR [ebp+0x8]
c0009f31:	6a 01                	push   0x1
c0009f33:	8b 7d 0c             	mov    edi,DWORD PTR [ebp+0xc]
c0009f36:	e8 47 f5 ff ff       	call   c0009482 <get_kernel_page>
c0009f3b:	83 c4 0c             	add    esp,0xc
c0009f3e:	6a 1f                	push   0x1f
c0009f40:	57                   	push   edi
c0009f41:	89 c3                	mov    ebx,eax
c0009f43:	50                   	push   eax
c0009f44:	e8 56 f9 ff ff       	call   c000989f <thread_init>
c0009f49:	89 1c 24             	mov    DWORD PTR [esp],ebx
c0009f4c:	e8 b3 ff ff ff       	call   c0009f04 <create_user_vaddr_memman>
c0009f51:	83 c4 0c             	add    esp,0xc
c0009f54:	56                   	push   esi
c0009f55:	68 60 9d 00 c0       	push   0xc0009d60
c0009f5a:	53                   	push   ebx
c0009f5b:	e8 05 fa ff ff       	call   c0009965 <thread_create>
c0009f60:	e8 46 ff ff ff       	call   c0009eab <create_page_dir>
c0009f65:	89 43 38             	mov    DWORD PTR [ebx+0x38],eax
c0009f68:	59                   	pop    ecx
c0009f69:	5e                   	pop    esi
c0009f6a:	8d 73 20             	lea    esi,[ebx+0x20]
c0009f6d:	68 e9 eb 00 c0       	push   0xc000ebe9
c0009f72:	6a 70                	push   0x70
c0009f74:	e8 90 0c 00 00       	call   c000ac09 <put_str>
c0009f79:	83 c4 0c             	add    esp,0xc
c0009f7c:	6a 10                	push   0x10
c0009f7e:	53                   	push   ebx
c0009f7f:	6a 70                	push   0x70
c0009f81:	e8 ab 0c 00 00       	call   c000ac31 <put_uint>
c0009f86:	5f                   	pop    edi
c0009f87:	58                   	pop    eax
c0009f88:	68 f4 eb 00 c0       	push   0xc000ebf4
c0009f8d:	6a 70                	push   0x70
c0009f8f:	e8 75 0c 00 00       	call   c000ac09 <put_str>
c0009f94:	83 c4 0c             	add    esp,0xc
c0009f97:	6a 10                	push   0x10
c0009f99:	ff 73 38             	push   DWORD PTR [ebx+0x38]
c0009f9c:	6a 70                	push   0x70
c0009f9e:	e8 8e 0c 00 00       	call   c000ac31 <put_uint>
c0009fa3:	89 5b 30             	mov    DWORD PTR [ebx+0x30],ebx
c0009fa6:	89 5b 24             	mov    DWORD PTR [ebx+0x24],ebx
c0009fa9:	e8 6b ed ff ff       	call   c0008d19 <intr_disable>
c0009fae:	89 c7                	mov    edi,eax
c0009fb0:	58                   	pop    eax
c0009fb1:	5a                   	pop    edx
c0009fb2:	56                   	push   esi
c0009fb3:	68 88 6c 02 c0       	push   0xc0026c88
c0009fb8:	e8 e7 09 00 00       	call   c000a9a4 <list_find>
c0009fbd:	83 c4 10             	add    esp,0x10
c0009fc0:	85 c0                	test   eax,eax
c0009fc2:	74 19                	je     c0009fdd <process_execute+0xb8>
c0009fc4:	68 02 ec 00 c0       	push   0xc000ec02
c0009fc9:	68 9c ec 00 c0       	push   0xc000ec9c
c0009fce:	6a 75                	push   0x75
c0009fd0:	68 ac eb 00 c0       	push   0xc000ebac
c0009fd5:	e8 ce e3 ff ff       	call   c00083a8 <panic_spin>
c0009fda:	83 c4 10             	add    esp,0x10
c0009fdd:	50                   	push   eax
c0009fde:	83 c3 2c             	add    ebx,0x2c
c0009fe1:	50                   	push   eax
c0009fe2:	56                   	push   esi
c0009fe3:	68 88 6c 02 c0       	push   0xc0026c88
c0009fe8:	e8 5e 09 00 00       	call   c000a94b <list_append>
c0009fed:	58                   	pop    eax
c0009fee:	5a                   	pop    edx
c0009fef:	53                   	push   ebx
c0009ff0:	68 70 6c 02 c0       	push   0xc0026c70
c0009ff5:	e8 aa 09 00 00       	call   c000a9a4 <list_find>
c0009ffa:	83 c4 10             	add    esp,0x10
c0009ffd:	85 c0                	test   eax,eax
c0009fff:	74 19                	je     c000a01a <process_execute+0xf5>
c000a001:	68 2e ec 00 c0       	push   0xc000ec2e
c000a006:	68 9c ec 00 c0       	push   0xc000ec9c
c000a00b:	6a 78                	push   0x78
c000a00d:	68 ac eb 00 c0       	push   0xc000ebac
c000a012:	e8 91 e3 ff ff       	call   c00083a8 <panic_spin>
c000a017:	83 c4 10             	add    esp,0x10
c000a01a:	56                   	push   esi
c000a01b:	56                   	push   esi
c000a01c:	53                   	push   ebx
c000a01d:	68 70 6c 02 c0       	push   0xc0026c70
c000a022:	e8 24 09 00 00       	call   c000a94b <list_append>
c000a027:	83 c4 10             	add    esp,0x10
c000a02a:	89 7d 08             	mov    DWORD PTR [ebp+0x8],edi
c000a02d:	8d 65 f4             	lea    esp,[ebp-0xc]
c000a030:	5b                   	pop    ebx
c000a031:	5e                   	pop    esi
c000a032:	5f                   	pop    edi
c000a033:	5d                   	pop    ebp
c000a034:	e9 df ee ff ff       	jmp    c0008f18 <intr_set_status>
c000a039:	00 00                	add    BYTE PTR [eax],al
	...

c000a03c <init_console>:
c000a03c:	55                   	push   ebp
c000a03d:	89 e5                	mov    ebp,esp
c000a03f:	83 ec 14             	sub    esp,0x14
c000a042:	68 58 f1 00 c0       	push   0xc000f158
c000a047:	e8 c3 f5 ff ff       	call   c000960f <lock_init>
c000a04c:	83 c4 10             	add    esp,0x10
c000a04f:	c9                   	leave  
c000a050:	c3                   	ret    

c000a051 <console_char>:
c000a051:	55                   	push   ebp
c000a052:	89 e5                	mov    ebp,esp
c000a054:	56                   	push   esi
c000a055:	8b 75 0c             	mov    esi,DWORD PTR [ebp+0xc]
c000a058:	53                   	push   ebx
c000a059:	8a 5d 08             	mov    bl,BYTE PTR [ebp+0x8]
c000a05c:	83 ec 0c             	sub    esp,0xc
c000a05f:	68 58 f1 00 c0       	push   0xc000f158
c000a064:	e8 32 f7 ff ff       	call   c000979b <lock_acquire>
c000a069:	58                   	pop    eax
c000a06a:	5a                   	pop    edx
c000a06b:	89 f2                	mov    edx,esi
c000a06d:	0f b6 c2             	movzx  eax,dl
c000a070:	50                   	push   eax
c000a071:	0f b6 c3             	movzx  eax,bl
c000a074:	50                   	push   eax
c000a075:	e8 ee 0a 00 00       	call   c000ab68 <put_char>
c000a07a:	83 c4 10             	add    esp,0x10
c000a07d:	c7 45 08 58 f1 00 c0 	mov    DWORD PTR [ebp+0x8],0xc000f158
c000a084:	8d 65 f8             	lea    esp,[ebp-0x8]
c000a087:	5b                   	pop    ebx
c000a088:	5e                   	pop    esi
c000a089:	5d                   	pop    ebp
c000a08a:	e9 67 f7 ff ff       	jmp    c00097f6 <lock_release>

c000a08f <console_str>:
c000a08f:	55                   	push   ebp
c000a090:	89 e5                	mov    ebp,esp
c000a092:	56                   	push   esi
c000a093:	8b 75 0c             	mov    esi,DWORD PTR [ebp+0xc]
c000a096:	53                   	push   ebx
c000a097:	8a 5d 08             	mov    bl,BYTE PTR [ebp+0x8]
c000a09a:	83 ec 0c             	sub    esp,0xc
c000a09d:	68 58 f1 00 c0       	push   0xc000f158
c000a0a2:	e8 f4 f6 ff ff       	call   c000979b <lock_acquire>
c000a0a7:	59                   	pop    ecx
c000a0a8:	58                   	pop    eax
c000a0a9:	0f b6 c3             	movzx  eax,bl
c000a0ac:	56                   	push   esi
c000a0ad:	50                   	push   eax
c000a0ae:	e8 56 0b 00 00       	call   c000ac09 <put_str>
c000a0b3:	83 c4 10             	add    esp,0x10
c000a0b6:	c7 45 08 58 f1 00 c0 	mov    DWORD PTR [ebp+0x8],0xc000f158
c000a0bd:	8d 65 f8             	lea    esp,[ebp-0x8]
c000a0c0:	5b                   	pop    ebx
c000a0c1:	5e                   	pop    esi
c000a0c2:	5d                   	pop    ebp
c000a0c3:	e9 2e f7 ff ff       	jmp    c00097f6 <lock_release>

c000a0c8 <console_int>:
c000a0c8:	55                   	push   ebp
c000a0c9:	89 e5                	mov    ebp,esp
c000a0cb:	57                   	push   edi
c000a0cc:	56                   	push   esi
c000a0cd:	53                   	push   ebx
c000a0ce:	83 ec 18             	sub    esp,0x18
c000a0d1:	8b 7d 10             	mov    edi,DWORD PTR [ebp+0x10]
c000a0d4:	8b 75 0c             	mov    esi,DWORD PTR [ebp+0xc]
c000a0d7:	8a 5d 08             	mov    bl,BYTE PTR [ebp+0x8]
c000a0da:	68 58 f1 00 c0       	push   0xc000f158
c000a0df:	e8 b7 f6 ff ff       	call   c000979b <lock_acquire>
c000a0e4:	83 c4 0c             	add    esp,0xc
c000a0e7:	57                   	push   edi
c000a0e8:	56                   	push   esi
c000a0e9:	0f b6 c3             	movzx  eax,bl
c000a0ec:	50                   	push   eax
c000a0ed:	e8 79 0b 00 00       	call   c000ac6b <put_int>
c000a0f2:	83 c4 10             	add    esp,0x10
c000a0f5:	c7 45 08 58 f1 00 c0 	mov    DWORD PTR [ebp+0x8],0xc000f158
c000a0fc:	8d 65 f4             	lea    esp,[ebp-0xc]
c000a0ff:	5b                   	pop    ebx
c000a100:	5e                   	pop    esi
c000a101:	5f                   	pop    edi
c000a102:	5d                   	pop    ebp
c000a103:	e9 ee f6 ff ff       	jmp    c00097f6 <lock_release>

c000a108 <console_uint>:
c000a108:	55                   	push   ebp
c000a109:	89 e5                	mov    ebp,esp
c000a10b:	57                   	push   edi
c000a10c:	56                   	push   esi
c000a10d:	53                   	push   ebx
c000a10e:	83 ec 18             	sub    esp,0x18
c000a111:	8b 7d 10             	mov    edi,DWORD PTR [ebp+0x10]
c000a114:	8b 75 0c             	mov    esi,DWORD PTR [ebp+0xc]
c000a117:	8a 5d 08             	mov    bl,BYTE PTR [ebp+0x8]
c000a11a:	68 58 f1 00 c0       	push   0xc000f158
c000a11f:	e8 77 f6 ff ff       	call   c000979b <lock_acquire>
c000a124:	83 c4 0c             	add    esp,0xc
c000a127:	57                   	push   edi
c000a128:	56                   	push   esi
c000a129:	0f b6 c3             	movzx  eax,bl
c000a12c:	50                   	push   eax
c000a12d:	e8 ff 0a 00 00       	call   c000ac31 <put_uint>
c000a132:	83 c4 10             	add    esp,0x10
c000a135:	c7 45 08 58 f1 00 c0 	mov    DWORD PTR [ebp+0x8],0xc000f158
c000a13c:	8d 65 f4             	lea    esp,[ebp-0xc]
c000a13f:	5b                   	pop    ebx
c000a140:	5e                   	pop    esi
c000a141:	5f                   	pop    edi
c000a142:	5d                   	pop    ebp
c000a143:	e9 ae f6 ff ff       	jmp    c00097f6 <lock_release>

c000a148 <init_cpu>:
c000a148:	55                   	push   ebp
c000a149:	31 c0                	xor    eax,eax
c000a14b:	89 e5                	mov    ebp,esp
c000a14d:	b9 04 00 00 00       	mov    ecx,0x4
c000a152:	57                   	push   edi
c000a153:	56                   	push   esi
c000a154:	53                   	push   ebx
c000a155:	8d 7d d8             	lea    edi,[ebp-0x28]
c000a158:	83 ec 3c             	sub    esp,0x3c
c000a15b:	f3 ab                	rep stos DWORD PTR es:[edi],eax
c000a15d:	8d 7d c7             	lea    edi,[ebp-0x39]
c000a160:	8d 75 c7             	lea    esi,[ebp-0x39]
c000a163:	b1 11                	mov    cl,0x11
c000a165:	f3 aa                	rep stos BYTE PTR es:[edi],al
c000a167:	bf 02 00 00 80       	mov    edi,0x80000002
c000a16c:	eb 30                	jmp    c000a19e <init_cpu+0x56>
c000a16e:	89 f8                	mov    eax,edi
c000a170:	31 c9                	xor    ecx,ecx
c000a172:	0f a2                	cpuid  
c000a174:	89 45 d8             	mov    DWORD PTR [ebp-0x28],eax
c000a177:	47                   	inc    edi
c000a178:	89 45 c7             	mov    DWORD PTR [ebp-0x39],eax
c000a17b:	50                   	push   eax
c000a17c:	50                   	push   eax
c000a17d:	56                   	push   esi
c000a17e:	6a 07                	push   0x7
c000a180:	89 5d dc             	mov    DWORD PTR [ebp-0x24],ebx
c000a183:	89 4d e0             	mov    DWORD PTR [ebp-0x20],ecx
c000a186:	89 55 e4             	mov    DWORD PTR [ebp-0x1c],edx
c000a189:	89 5d cb             	mov    DWORD PTR [ebp-0x35],ebx
c000a18c:	89 4d cf             	mov    DWORD PTR [ebp-0x31],ecx
c000a18f:	89 55 d3             	mov    DWORD PTR [ebp-0x2d],edx
c000a192:	c6 45 d7 00          	mov    BYTE PTR [ebp-0x29],0x0
c000a196:	e8 6e 0a 00 00       	call   c000ac09 <put_str>
c000a19b:	83 c4 10             	add    esp,0x10
c000a19e:	81 ff 05 00 00 80    	cmp    edi,0x80000005
c000a1a4:	75 c8                	jne    c000a16e <init_cpu+0x26>
c000a1a6:	8d 65 f4             	lea    esp,[ebp-0xc]
c000a1a9:	5b                   	pop    ebx
c000a1aa:	5e                   	pop    esi
c000a1ab:	5f                   	pop    edi
c000a1ac:	5d                   	pop    ebp
c000a1ad:	c3                   	ret    

c000a1ae <cpu_info>:
c000a1ae:	55                   	push   ebp
c000a1af:	31 c0                	xor    eax,eax
c000a1b1:	89 e5                	mov    ebp,esp
c000a1b3:	b9 04 00 00 00       	mov    ecx,0x4
c000a1b8:	57                   	push   edi
c000a1b9:	56                   	push   esi
c000a1ba:	53                   	push   ebx
c000a1bb:	8d 7d d8             	lea    edi,[ebp-0x28]
c000a1be:	83 ec 3c             	sub    esp,0x3c
c000a1c1:	f3 ab                	rep stos DWORD PTR es:[edi],eax
c000a1c3:	8d 7d c7             	lea    edi,[ebp-0x39]
c000a1c6:	8d 75 c7             	lea    esi,[ebp-0x39]
c000a1c9:	b1 11                	mov    cl,0x11
c000a1cb:	f3 aa                	rep stos BYTE PTR es:[edi],al
c000a1cd:	bf 02 00 00 80       	mov    edi,0x80000002
c000a1d2:	eb 30                	jmp    c000a204 <cpu_info+0x56>
c000a1d4:	89 f8                	mov    eax,edi
c000a1d6:	31 c9                	xor    ecx,ecx
c000a1d8:	0f a2                	cpuid  
c000a1da:	89 55 e4             	mov    DWORD PTR [ebp-0x1c],edx
c000a1dd:	47                   	inc    edi
c000a1de:	89 55 d3             	mov    DWORD PTR [ebp-0x2d],edx
c000a1e1:	52                   	push   edx
c000a1e2:	52                   	push   edx
c000a1e3:	56                   	push   esi
c000a1e4:	6a 07                	push   0x7
c000a1e6:	89 45 d8             	mov    DWORD PTR [ebp-0x28],eax
c000a1e9:	89 5d dc             	mov    DWORD PTR [ebp-0x24],ebx
c000a1ec:	89 4d e0             	mov    DWORD PTR [ebp-0x20],ecx
c000a1ef:	89 45 c7             	mov    DWORD PTR [ebp-0x39],eax
c000a1f2:	89 5d cb             	mov    DWORD PTR [ebp-0x35],ebx
c000a1f5:	89 4d cf             	mov    DWORD PTR [ebp-0x31],ecx
c000a1f8:	c6 45 d7 00          	mov    BYTE PTR [ebp-0x29],0x0
c000a1fc:	e8 08 0a 00 00       	call   c000ac09 <put_str>
c000a201:	83 c4 10             	add    esp,0x10
c000a204:	81 ff 05 00 00 80    	cmp    edi,0x80000005
c000a20a:	75 c8                	jne    c000a1d4 <cpu_info+0x26>
c000a20c:	8d 65 f4             	lea    esp,[ebp-0xc]
c000a20f:	5b                   	pop    ebx
c000a210:	5e                   	pop    esi
c000a211:	5f                   	pop    edi
c000a212:	5d                   	pop    ebp
c000a213:	c3                   	ret    

c000a214 <init_keyboard>:
c000a214:	55                   	push   ebp
c000a215:	89 e5                	mov    ebp,esp
c000a217:	83 ec 08             	sub    esp,0x8
c000a21a:	6a 40                	push   0x40
c000a21c:	6a 08                	push   0x8
c000a21e:	68 7c f1 00 c0       	push   0xc000f17c
c000a223:	68 a4 6c 02 c0       	push   0xc0026ca4
c000a228:	e8 27 04 00 00       	call   c000a654 <init_fifo>
c000a22d:	83 c4 10             	add    esp,0x10
c000a230:	c9                   	leave  
c000a231:	c3                   	ret    

c000a232 <intr0x21_handler>:
c000a232:	55                   	push   ebp
c000a233:	b8 20 00 00 00       	mov    eax,0x20
c000a238:	89 e5                	mov    ebp,esp
c000a23a:	89 c2                	mov    edx,eax
c000a23c:	53                   	push   ebx
c000a23d:	83 ec 14             	sub    esp,0x14
c000a240:	ee                   	out    dx,al
c000a241:	8b 0d bc f1 00 c0    	mov    ecx,DWORD PTR ds:0xc000f1bc
c000a247:	b2 60                	mov    dl,0x60
c000a249:	8b 1d c0 f1 00 c0    	mov    ebx,DWORD PTR ds:0xc000f1c0
c000a24f:	ec                   	in     al,dx
c000a250:	66 3d e0 00          	cmp    ax,0xe0
c000a254:	75 0f                	jne    c000a265 <intr0x21_handler+0x33>
c000a256:	c7 05 c4 f1 00 c0 01 	mov    DWORD PTR ds:0xc000f1c4,0x1
c000a25d:	00 00 00 
c000a260:	e9 87 01 00 00       	jmp    c000a3ec <intr0x21_handler+0x1ba>
c000a265:	83 3d c4 f1 00 c0 01 	cmp    DWORD PTR ds:0xc000f1c4,0x1
c000a26c:	75 0e                	jne    c000a27c <intr0x21_handler+0x4a>
c000a26e:	66 0d 00 e0          	or     ax,0xe000
c000a272:	c7 05 c4 f1 00 c0 00 	mov    DWORD PTR ds:0xc000f1c4,0x0
c000a279:	00 00 00 
c000a27c:	a8 80                	test   al,0x80
c000a27e:	74 61                	je     c000a2e1 <intr0x21_handler+0xaf>
c000a280:	24 7f                	and    al,0x7f
c000a282:	66 83 f8 36          	cmp    ax,0x36
c000a286:	74 3b                	je     c000a2c3 <intr0x21_handler+0x91>
c000a288:	77 12                	ja     c000a29c <intr0x21_handler+0x6a>
c000a28a:	66 83 f8 1d          	cmp    ax,0x1d
c000a28e:	74 24                	je     c000a2b4 <intr0x21_handler+0x82>
c000a290:	66 83 f8 2a          	cmp    ax,0x2a
c000a294:	0f 85 52 01 00 00    	jne    c000a3ec <intr0x21_handler+0x1ba>
c000a29a:	eb 27                	jmp    c000a2c3 <intr0x21_handler+0x91>
c000a29c:	66 3d 1d e0          	cmp    ax,0xe01d
c000a2a0:	74 12                	je     c000a2b4 <intr0x21_handler+0x82>
c000a2a2:	66 3d 38 e0          	cmp    ax,0xe038
c000a2a6:	74 2a                	je     c000a2d2 <intr0x21_handler+0xa0>
c000a2a8:	66 83 f8 38          	cmp    ax,0x38
c000a2ac:	0f 85 3a 01 00 00    	jne    c000a3ec <intr0x21_handler+0x1ba>
c000a2b2:	eb 1e                	jmp    c000a2d2 <intr0x21_handler+0xa0>
c000a2b4:	c7 05 c8 f1 00 c0 00 	mov    DWORD PTR ds:0xc000f1c8,0x0
c000a2bb:	00 00 00 
c000a2be:	e9 29 01 00 00       	jmp    c000a3ec <intr0x21_handler+0x1ba>
c000a2c3:	c7 05 bc f1 00 c0 00 	mov    DWORD PTR ds:0xc000f1bc,0x0
c000a2ca:	00 00 00 
c000a2cd:	e9 1a 01 00 00       	jmp    c000a3ec <intr0x21_handler+0x1ba>
c000a2d2:	c7 05 cc f1 00 c0 00 	mov    DWORD PTR ds:0xc000f1cc,0x0
c000a2d9:	00 00 00 
c000a2dc:	e9 0b 01 00 00       	jmp    c000a3ec <intr0x21_handler+0x1ba>
c000a2e1:	8d 50 ff             	lea    edx,[eax-0x1]
c000a2e4:	66 83 fa 39          	cmp    dx,0x39
c000a2e8:	76 10                	jbe    c000a2fa <intr0x21_handler+0xc8>
c000a2ea:	66 3d 38 e0          	cmp    ax,0xe038
c000a2ee:	74 0a                	je     c000a2fa <intr0x21_handler+0xc8>
c000a2f0:	66 3d 1d e0          	cmp    ax,0xe01d
c000a2f4:	0f 85 f2 00 00 00    	jne    c000a3ec <intr0x21_handler+0x1ba>
c000a2fa:	66 83 f8 29          	cmp    ax,0x29
c000a2fe:	74 2d                	je     c000a32d <intr0x21_handler+0xfb>
c000a300:	66 83 f8 0d          	cmp    ax,0xd
c000a304:	76 27                	jbe    c000a32d <intr0x21_handler+0xfb>
c000a306:	66 83 f8 1b          	cmp    ax,0x1b
c000a30a:	74 21                	je     c000a32d <intr0x21_handler+0xfb>
c000a30c:	66 83 f8 1a          	cmp    ax,0x1a
c000a310:	74 1b                	je     c000a32d <intr0x21_handler+0xfb>
c000a312:	66 83 f8 27          	cmp    ax,0x27
c000a316:	74 15                	je     c000a32d <intr0x21_handler+0xfb>
c000a318:	66 83 f8 2b          	cmp    ax,0x2b
c000a31c:	74 0f                	je     c000a32d <intr0x21_handler+0xfb>
c000a31e:	66 83 f8 28          	cmp    ax,0x28
c000a322:	74 09                	je     c000a32d <intr0x21_handler+0xfb>
c000a324:	8d 50 cd             	lea    edx,[eax-0x33]
c000a327:	66 83 fa 02          	cmp    dx,0x2
c000a32b:	77 06                	ja     c000a333 <intr0x21_handler+0x101>
c000a32d:	49                   	dec    ecx
c000a32e:	0f 94 c2             	sete   dl
c000a331:	eb 0f                	jmp    c000a342 <intr0x21_handler+0x110>
c000a333:	85 db                	test   ebx,ebx
c000a335:	74 06                	je     c000a33d <intr0x21_handler+0x10b>
c000a337:	31 d2                	xor    edx,edx
c000a339:	85 c9                	test   ecx,ecx
c000a33b:	75 08                	jne    c000a345 <intr0x21_handler+0x113>
c000a33d:	09 cb                	or     ebx,ecx
c000a33f:	0f 95 c2             	setne  dl
c000a342:	0f b6 d2             	movzx  edx,dl
c000a345:	66 25 ff 00          	and    ax,0xff
c000a349:	0f b7 c8             	movzx  ecx,ax
c000a34c:	8a 94 4a 30 ed 00 c0 	mov    dl,BYTE PTR [edx+ecx*2-0x3fff12d0]
c000a353:	84 d2                	test   dl,dl
c000a355:	88 55 f7             	mov    BYTE PTR [ebp-0x9],dl
c000a358:	74 26                	je     c000a380 <intr0x21_handler+0x14e>
c000a35a:	83 ec 0c             	sub    esp,0xc
c000a35d:	68 a4 6c 02 c0       	push   0xc0026ca4
c000a362:	e8 71 05 00 00       	call   c000a8d8 <fifo_fill>
c000a367:	83 c4 10             	add    esp,0x10
c000a36a:	85 c0                	test   eax,eax
c000a36c:	75 7e                	jne    c000a3ec <intr0x21_handler+0x1ba>
c000a36e:	51                   	push   ecx
c000a36f:	51                   	push   ecx
c000a370:	8d 45 f7             	lea    eax,[ebp-0x9]
c000a373:	50                   	push   eax
c000a374:	68 a4 6c 02 c0       	push   0xc0026ca4
c000a379:	e8 40 03 00 00       	call   c000a6be <fifo_put>
c000a37e:	eb 69                	jmp    c000a3e9 <intr0x21_handler+0x1b7>
c000a380:	66 83 f8 36          	cmp    ax,0x36
c000a384:	74 2a                	je     c000a3b0 <intr0x21_handler+0x17e>
c000a386:	77 0e                	ja     c000a396 <intr0x21_handler+0x164>
c000a388:	66 83 f8 1d          	cmp    ax,0x1d
c000a38c:	74 16                	je     c000a3a4 <intr0x21_handler+0x172>
c000a38e:	66 83 f8 2a          	cmp    ax,0x2a
c000a392:	75 47                	jne    c000a3db <intr0x21_handler+0x1a9>
c000a394:	eb 1a                	jmp    c000a3b0 <intr0x21_handler+0x17e>
c000a396:	66 83 f8 38          	cmp    ax,0x38
c000a39a:	74 20                	je     c000a3bc <intr0x21_handler+0x18a>
c000a39c:	66 83 f8 3a          	cmp    ax,0x3a
c000a3a0:	75 39                	jne    c000a3db <intr0x21_handler+0x1a9>
c000a3a2:	eb 24                	jmp    c000a3c8 <intr0x21_handler+0x196>
c000a3a4:	c7 05 c8 f1 00 c0 01 	mov    DWORD PTR ds:0xc000f1c8,0x1
c000a3ab:	00 00 00 
c000a3ae:	eb 3c                	jmp    c000a3ec <intr0x21_handler+0x1ba>
c000a3b0:	c7 05 bc f1 00 c0 01 	mov    DWORD PTR ds:0xc000f1bc,0x1
c000a3b7:	00 00 00 
c000a3ba:	eb 30                	jmp    c000a3ec <intr0x21_handler+0x1ba>
c000a3bc:	c7 05 cc f1 00 c0 01 	mov    DWORD PTR ds:0xc000f1cc,0x1
c000a3c3:	00 00 00 
c000a3c6:	eb 24                	jmp    c000a3ec <intr0x21_handler+0x1ba>
c000a3c8:	31 c0                	xor    eax,eax
c000a3ca:	83 3d c0 f1 00 c0 00 	cmp    DWORD PTR ds:0xc000f1c0,0x0
c000a3d1:	0f 94 c0             	sete   al
c000a3d4:	a3 c0 f1 00 c0       	mov    ds:0xc000f1c0,eax
c000a3d9:	eb 11                	jmp    c000a3ec <intr0x21_handler+0x1ba>
c000a3db:	52                   	push   edx
c000a3dc:	52                   	push   edx
c000a3dd:	68 fc ec 00 c0       	push   0xc000ecfc
c000a3e2:	6a 04                	push   0x4
c000a3e4:	e8 20 08 00 00       	call   c000ac09 <put_str>
c000a3e9:	83 c4 10             	add    esp,0x10
c000a3ec:	8b 5d fc             	mov    ebx,DWORD PTR [ebp-0x4]
c000a3ef:	c9                   	leave  
c000a3f0:	c3                   	ret    
c000a3f1:	00 00                	add    BYTE PTR [eax],al
	...

c000a3f4 <get_time>:
c000a3f4:	55                   	push   ebp
c000a3f5:	89 e5                	mov    ebp,esp
c000a3f7:	57                   	push   edi
c000a3f8:	56                   	push   esi
c000a3f9:	be 70 00 00 00       	mov    esi,0x70
c000a3fe:	53                   	push   ebx
c000a3ff:	83 ec 1c             	sub    esp,0x1c
c000a402:	8b 7d 08             	mov    edi,DWORD PTR [ebp+0x8]
c000a405:	e8 ff e8 ff ff       	call   c0008d09 <intr_get_status>
c000a40a:	89 45 e0             	mov    DWORD PTR [ebp-0x20],eax
c000a40d:	b8 89 00 00 00       	mov    eax,0x89
c000a412:	89 f2                	mov    edx,esi
c000a414:	ee                   	out    dx,al
c000a415:	bb 71 00 00 00       	mov    ebx,0x71
c000a41a:	89 da                	mov    edx,ebx
c000a41c:	ec                   	in     al,dx
c000a41d:	89 c1                	mov    ecx,eax
c000a41f:	89 f2                	mov    edx,esi
c000a421:	b8 b2 00 00 00       	mov    eax,0xb2
c000a426:	ee                   	out    dx,al
c000a427:	89 da                	mov    edx,ebx
c000a429:	ec                   	in     al,dx
c000a42a:	c1 e0 08             	shl    eax,0x8
c000a42d:	89 f2                	mov    edx,esi
c000a42f:	01 c1                	add    ecx,eax
c000a431:	b8 88 00 00 00       	mov    eax,0x88
c000a436:	89 4f 14             	mov    DWORD PTR [edi+0x14],ecx
c000a439:	ee                   	out    dx,al
c000a43a:	89 da                	mov    edx,ebx
c000a43c:	ec                   	in     al,dx
c000a43d:	89 47 10             	mov    DWORD PTR [edi+0x10],eax
c000a440:	89 f2                	mov    edx,esi
c000a442:	b8 87 00 00 00       	mov    eax,0x87
c000a447:	ee                   	out    dx,al
c000a448:	89 da                	mov    edx,ebx
c000a44a:	ec                   	in     al,dx
c000a44b:	89 47 0c             	mov    DWORD PTR [edi+0xc],eax
c000a44e:	89 f2                	mov    edx,esi
c000a450:	b8 84 00 00 00       	mov    eax,0x84
c000a455:	ee                   	out    dx,al
c000a456:	89 da                	mov    edx,ebx
c000a458:	ec                   	in     al,dx
c000a459:	89 47 08             	mov    DWORD PTR [edi+0x8],eax
c000a45c:	89 f2                	mov    edx,esi
c000a45e:	b8 82 00 00 00       	mov    eax,0x82
c000a463:	ee                   	out    dx,al
c000a464:	89 da                	mov    edx,ebx
c000a466:	ec                   	in     al,dx
c000a467:	b9 80 00 00 00       	mov    ecx,0x80
c000a46c:	89 f2                	mov    edx,esi
c000a46e:	89 47 04             	mov    DWORD PTR [edi+0x4],eax
c000a471:	89 c8                	mov    eax,ecx
c000a473:	ee                   	out    dx,al
c000a474:	89 da                	mov    edx,ebx
c000a476:	ec                   	in     al,dx
c000a477:	89 45 e4             	mov    DWORD PTR [ebp-0x1c],eax
c000a47a:	89 f2                	mov    edx,esi
c000a47c:	89 07                	mov    DWORD PTR [edi],eax
c000a47e:	89 c8                	mov    eax,ecx
c000a480:	ee                   	out    dx,al
c000a481:	89 da                	mov    edx,ebx
c000a483:	ec                   	in     al,dx
c000a484:	39 45 e4             	cmp    DWORD PTR [ebp-0x1c],eax
c000a487:	75 84                	jne    c000a40d <get_time+0x19>
c000a489:	b2 70                	mov    dl,0x70
c000a48b:	31 c0                	xor    eax,eax
c000a48d:	ee                   	out    dx,al
c000a48e:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
c000a491:	89 45 08             	mov    DWORD PTR [ebp+0x8],eax
c000a494:	83 c4 1c             	add    esp,0x1c
c000a497:	5b                   	pop    ebx
c000a498:	5e                   	pop    esi
c000a499:	5f                   	pop    edi
c000a49a:	5d                   	pop    ebp
c000a49b:	e9 78 ea ff ff       	jmp    c0008f18 <intr_set_status>

c000a4a0 <init_pit>:
c000a4a0:	55                   	push   ebp
c000a4a1:	ba 43 00 00 00       	mov    edx,0x43
c000a4a6:	89 e5                	mov    ebp,esp
c000a4a8:	b8 34 00 00 00       	mov    eax,0x34
c000a4ad:	ee                   	out    dx,al
c000a4ae:	b2 40                	mov    dl,0x40
c000a4b0:	b0 9c                	mov    al,0x9c
c000a4b2:	ee                   	out    dx,al
c000a4b3:	b0 2e                	mov    al,0x2e
c000a4b5:	ee                   	out    dx,al
c000a4b6:	5d                   	pop    ebp
c000a4b7:	c3                   	ret    

c000a4b8 <intr0x20_handler>:
c000a4b8:	55                   	push   ebp
c000a4b9:	b8 20 00 00 00       	mov    eax,0x20
c000a4be:	89 e5                	mov    ebp,esp
c000a4c0:	83 ec 08             	sub    esp,0x8
c000a4c3:	89 c2                	mov    edx,eax
c000a4c5:	ee                   	out    dx,al
c000a4c6:	e8 38 f4 ff ff       	call   c0009903 <running_thread>
c000a4cb:	8b 15 d4 f1 00 c0    	mov    edx,DWORD PTR ds:0xc000f1d4
c000a4d1:	42                   	inc    edx
c000a4d2:	89 15 d4 f1 00 c0    	mov    DWORD PTR ds:0xc000f1d4,edx
c000a4d8:	8a 50 19             	mov    dl,BYTE PTR [eax+0x19]
c000a4db:	ff 40 1c             	inc    DWORD PTR [eax+0x1c]
c000a4de:	84 d2                	test   dl,dl
c000a4e0:	75 06                	jne    c000a4e8 <intr0x20_handler+0x30>
c000a4e2:	c9                   	leave  
c000a4e3:	e9 92 f5 ff ff       	jmp    c0009a7a <schedule>
c000a4e8:	4a                   	dec    edx
c000a4e9:	88 50 19             	mov    BYTE PTR [eax+0x19],dl
c000a4ec:	c9                   	leave  
c000a4ed:	c3                   	ret    
	...

c000a4f0 <bitmap_init>:
c000a4f0:	55                   	push   ebp
c000a4f1:	89 e5                	mov    ebp,esp
c000a4f3:	83 ec 0c             	sub    esp,0xc
c000a4f6:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c000a4f9:	ff 30                	push   DWORD PTR [eax]
c000a4fb:	6a 00                	push   0x0
c000a4fd:	ff 70 04             	push   DWORD PTR [eax+0x4]
c000a500:	e8 a3 07 00 00       	call   c000aca8 <memset>
c000a505:	83 c4 10             	add    esp,0x10
c000a508:	c9                   	leave  
c000a509:	c3                   	ret    

c000a50a <bitmap_scan_test>:
c000a50a:	55                   	push   ebp
c000a50b:	89 e5                	mov    ebp,esp
c000a50d:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c000a510:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
c000a513:	5d                   	pop    ebp
c000a514:	8b 52 04             	mov    edx,DWORD PTR [edx+0x4]
c000a517:	89 c8                	mov    eax,ecx
c000a519:	83 e1 07             	and    ecx,0x7
c000a51c:	c1 e8 03             	shr    eax,0x3
c000a51f:	0f b6 04 02          	movzx  eax,BYTE PTR [edx+eax*1]
c000a523:	ba 01 00 00 00       	mov    edx,0x1
c000a528:	d3 e2                	shl    edx,cl
c000a52a:	21 d0                	and    eax,edx
c000a52c:	c3                   	ret    

c000a52d <bitmap_alloc>:
c000a52d:	55                   	push   ebp
c000a52e:	89 e5                	mov    ebp,esp
c000a530:	57                   	push   edi
c000a531:	56                   	push   esi
c000a532:	31 f6                	xor    esi,esi
c000a534:	53                   	push   ebx
c000a535:	83 ec 1c             	sub    esp,0x1c
c000a538:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c000a53b:	8b 43 04             	mov    eax,DWORD PTR [ebx+0x4]
c000a53e:	eb 01                	jmp    c000a541 <bitmap_alloc+0x14>
c000a540:	46                   	inc    esi
c000a541:	80 3c 30 ff          	cmp    BYTE PTR [eax+esi*1],0xff
c000a545:	75 04                	jne    c000a54b <bitmap_alloc+0x1e>
c000a547:	3b 33                	cmp    esi,DWORD PTR [ebx]
c000a549:	72 f5                	jb     c000a540 <bitmap_alloc+0x13>
c000a54b:	3b 33                	cmp    esi,DWORD PTR [ebx]
c000a54d:	72 19                	jb     c000a568 <bitmap_alloc+0x3b>
c000a54f:	68 f8 ed 00 c0       	push   0xc000edf8
c000a554:	68 6c ee 00 c0       	push   0xc000ee6c
c000a559:	6a 2e                	push   0x2e
c000a55b:	68 1c ee 00 c0       	push   0xc000ee1c
c000a560:	e8 43 de ff ff       	call   c00083a8 <panic_spin>
c000a565:	83 c4 10             	add    esp,0x10
c000a568:	8b 13                	mov    edx,DWORD PTR [ebx]
c000a56a:	83 c8 ff             	or     eax,0xffffffff
c000a56d:	39 d6                	cmp    esi,edx
c000a56f:	74 72                	je     c000a5e3 <bitmap_alloc+0xb6>
c000a571:	8b 43 04             	mov    eax,DWORD PTR [ebx+0x4]
c000a574:	31 c9                	xor    ecx,ecx
c000a576:	bf 01 00 00 00       	mov    edi,0x1
c000a57b:	89 75 e4             	mov    DWORD PTR [ebp-0x1c],esi
c000a57e:	89 55 dc             	mov    DWORD PTR [ebp-0x24],edx
c000a581:	8a 04 30             	mov    al,BYTE PTR [eax+esi*1]
c000a584:	eb 01                	jmp    c000a587 <bitmap_alloc+0x5a>
c000a586:	41                   	inc    ecx
c000a587:	89 fe                	mov    esi,edi
c000a589:	d3 e6                	shl    esi,cl
c000a58b:	89 f2                	mov    edx,esi
c000a58d:	84 d0                	test   al,dl
c000a58f:	75 f5                	jne    c000a586 <bitmap_alloc+0x59>
c000a591:	8b 75 e4             	mov    esi,DWORD PTR [ebp-0x1c]
c000a594:	83 7d 0c 01          	cmp    DWORD PTR [ebp+0xc],0x1
c000a598:	8b 55 dc             	mov    edx,DWORD PTR [ebp-0x24]
c000a59b:	8d 0c f1             	lea    ecx,[ecx+esi*8]
c000a59e:	89 c8                	mov    eax,ecx
c000a5a0:	74 41                	je     c000a5e3 <bitmap_alloc+0xb6>
c000a5a2:	8d 3c d5 00 00 00 00 	lea    edi,[edx*8+0x0]
c000a5a9:	be 01 00 00 00       	mov    esi,0x1
c000a5ae:	29 cf                	sub    edi,ecx
c000a5b0:	8d 51 01             	lea    edx,[ecx+0x1]
c000a5b3:	eb 27                	jmp    c000a5dc <bitmap_alloc+0xaf>
c000a5b5:	50                   	push   eax
c000a5b6:	46                   	inc    esi
c000a5b7:	50                   	push   eax
c000a5b8:	52                   	push   edx
c000a5b9:	53                   	push   ebx
c000a5ba:	89 55 e0             	mov    DWORD PTR [ebp-0x20],edx
c000a5bd:	e8 48 ff ff ff       	call   c000a50a <bitmap_scan_test>
c000a5c2:	83 c4 10             	add    esp,0x10
c000a5c5:	8b 55 e0             	mov    edx,DWORD PTR [ebp-0x20]
c000a5c8:	85 c0                	test   eax,eax
c000a5ca:	74 02                	je     c000a5ce <bitmap_alloc+0xa1>
c000a5cc:	31 f6                	xor    esi,esi
c000a5ce:	3b 75 0c             	cmp    esi,DWORD PTR [ebp+0xc]
c000a5d1:	75 07                	jne    c000a5da <bitmap_alloc+0xad>
c000a5d3:	29 f2                	sub    edx,esi
c000a5d5:	8d 42 01             	lea    eax,[edx+0x1]
c000a5d8:	eb 09                	jmp    c000a5e3 <bitmap_alloc+0xb6>
c000a5da:	4f                   	dec    edi
c000a5db:	42                   	inc    edx
c000a5dc:	85 ff                	test   edi,edi
c000a5de:	75 d5                	jne    c000a5b5 <bitmap_alloc+0x88>
c000a5e0:	83 c8 ff             	or     eax,0xffffffff
c000a5e3:	8d 65 f4             	lea    esp,[ebp-0xc]
c000a5e6:	5b                   	pop    ebx
c000a5e7:	5e                   	pop    esi
c000a5e8:	5f                   	pop    edi
c000a5e9:	5d                   	pop    ebp
c000a5ea:	c3                   	ret    

c000a5eb <bitmap_set>:
c000a5eb:	55                   	push   ebp
c000a5ec:	89 e5                	mov    ebp,esp
c000a5ee:	57                   	push   edi
c000a5ef:	56                   	push   esi
c000a5f0:	53                   	push   ebx
c000a5f1:	83 ec 0c             	sub    esp,0xc
c000a5f4:	8a 5d 10             	mov    bl,BYTE PTR [ebp+0x10]
c000a5f7:	8b 75 08             	mov    esi,DWORD PTR [ebp+0x8]
c000a5fa:	8b 7d 0c             	mov    edi,DWORD PTR [ebp+0xc]
c000a5fd:	80 fb 01             	cmp    bl,0x1
c000a600:	76 19                	jbe    c000a61b <bitmap_set+0x30>
c000a602:	68 29 ee 00 c0       	push   0xc000ee29
c000a607:	68 7c ee 00 c0       	push   0xc000ee7c
c000a60c:	6a 65                	push   0x65
c000a60e:	68 1c ee 00 c0       	push   0xc000ee1c
c000a613:	e8 90 dd ff ff       	call   c00083a8 <panic_spin>
c000a618:	83 c4 10             	add    esp,0x10
c000a61b:	89 fa                	mov    edx,edi
c000a61d:	89 f9                	mov    ecx,edi
c000a61f:	c1 ea 03             	shr    edx,0x3
c000a622:	83 e1 07             	and    ecx,0x7
c000a625:	84 db                	test   bl,bl
c000a627:	74 06                	je     c000a62f <bitmap_set+0x44>
c000a629:	fe cb                	dec    bl
c000a62b:	75 1e                	jne    c000a64b <bitmap_set+0x60>
c000a62d:	eb 10                	jmp    c000a63f <bitmap_set+0x54>
c000a62f:	03 56 04             	add    edx,DWORD PTR [esi+0x4]
c000a632:	b8 01 00 00 00       	mov    eax,0x1
c000a637:	d3 e0                	shl    eax,cl
c000a639:	f7 d0                	not    eax
c000a63b:	20 02                	and    BYTE PTR [edx],al
c000a63d:	eb 0c                	jmp    c000a64b <bitmap_set+0x60>
c000a63f:	03 56 04             	add    edx,DWORD PTR [esi+0x4]
c000a642:	b8 01 00 00 00       	mov    eax,0x1
c000a647:	d3 e0                	shl    eax,cl
c000a649:	08 02                	or     BYTE PTR [edx],al
c000a64b:	8d 65 f4             	lea    esp,[ebp-0xc]
c000a64e:	5b                   	pop    ebx
c000a64f:	5e                   	pop    esi
c000a650:	5f                   	pop    edi
c000a651:	5d                   	pop    ebp
c000a652:	c3                   	ret    
	...

c000a654 <init_fifo>:
c000a654:	55                   	push   ebp
c000a655:	89 e5                	mov    ebp,esp
c000a657:	57                   	push   edi
c000a658:	56                   	push   esi
c000a659:	53                   	push   ebx
c000a65a:	83 ec 28             	sub    esp,0x28
c000a65d:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c000a660:	8b 75 10             	mov    esi,DWORD PTR [ebp+0x10]
c000a663:	8b 45 14             	mov    eax,DWORD PTR [ebp+0x14]
c000a666:	8b 7d 0c             	mov    edi,DWORD PTR [ebp+0xc]
c000a669:	53                   	push   ebx
c000a66a:	89 45 e4             	mov    DWORD PTR [ebp-0x1c],eax
c000a66d:	e8 9d ef ff ff       	call   c000960f <lock_init>
c000a672:	83 c4 10             	add    esp,0x10
c000a675:	83 fe 10             	cmp    esi,0x10
c000a678:	c7 43 24 00 00 00 00 	mov    DWORD PTR [ebx+0x24],0x0
c000a67f:	c7 43 28 00 00 00 00 	mov    DWORD PTR [ebx+0x28],0x0
c000a686:	89 73 30             	mov    DWORD PTR [ebx+0x30],esi
c000a689:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
c000a68c:	74 11                	je     c000a69f <init_fifo+0x4b>
c000a68e:	7f 05                	jg     c000a695 <init_fifo+0x41>
c000a690:	83 fe 08             	cmp    esi,0x8
c000a693:	eb 08                	jmp    c000a69d <init_fifo+0x49>
c000a695:	83 fe 20             	cmp    esi,0x20
c000a698:	74 05                	je     c000a69f <init_fifo+0x4b>
c000a69a:	83 fe 40             	cmp    esi,0x40
c000a69d:	75 03                	jne    c000a6a2 <init_fifo+0x4e>
c000a69f:	89 7b 2c             	mov    DWORD PTR [ebx+0x2c],edi
c000a6a2:	89 43 34             	mov    DWORD PTR [ebx+0x34],eax
c000a6a5:	89 43 38             	mov    DWORD PTR [ebx+0x38],eax
c000a6a8:	c7 43 3c 00 00 00 00 	mov    DWORD PTR [ebx+0x3c],0x0
c000a6af:	c7 43 40 00 00 00 00 	mov    DWORD PTR [ebx+0x40],0x0
c000a6b6:	8d 65 f4             	lea    esp,[ebp-0xc]
c000a6b9:	5b                   	pop    ebx
c000a6ba:	5e                   	pop    esi
c000a6bb:	5f                   	pop    edi
c000a6bc:	5d                   	pop    ebp
c000a6bd:	c3                   	ret    

c000a6be <fifo_put>:
c000a6be:	55                   	push   ebp
c000a6bf:	89 e5                	mov    ebp,esp
c000a6c1:	57                   	push   edi
c000a6c2:	56                   	push   esi
c000a6c3:	53                   	push   ebx
c000a6c4:	83 ec 1c             	sub    esp,0x1c
c000a6c7:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c000a6ca:	8b 75 0c             	mov    esi,DWORD PTR [ebp+0xc]
c000a6cd:	e8 47 e6 ff ff       	call   c0008d19 <intr_disable>
c000a6d2:	89 45 e4             	mov    DWORD PTR [ebp-0x1c],eax
c000a6d5:	eb 28                	jmp    c000a6ff <fifo_put+0x41>
c000a6d7:	83 ec 0c             	sub    esp,0xc
c000a6da:	53                   	push   ebx
c000a6db:	e8 bb f0 ff ff       	call   c000979b <lock_acquire>
c000a6e0:	e8 1e f2 ff ff       	call   c0009903 <running_thread>
c000a6e5:	89 43 24             	mov    DWORD PTR [ebx+0x24],eax
c000a6e8:	c7 04 24 02 00 00 00 	mov    DWORD PTR [esp],0x2
c000a6ef:	e8 9b f4 ff ff       	call   c0009b8f <thread_block>
c000a6f4:	89 1c 24             	mov    DWORD PTR [esp],ebx
c000a6f7:	e8 fa f0 ff ff       	call   c00097f6 <lock_release>
c000a6fc:	83 c4 10             	add    esp,0x10
c000a6ff:	8b 43 38             	mov    eax,DWORD PTR [ebx+0x38]
c000a702:	85 c0                	test   eax,eax
c000a704:	74 d1                	je     c000a6d7 <fifo_put+0x19>
c000a706:	48                   	dec    eax
c000a707:	89 43 38             	mov    DWORD PTR [ebx+0x38],eax
c000a70a:	8b 43 30             	mov    eax,DWORD PTR [ebx+0x30]
c000a70d:	83 f8 10             	cmp    eax,0x10
c000a710:	74 28                	je     c000a73a <fifo_put+0x7c>
c000a712:	83 f8 08             	cmp    eax,0x8
c000a715:	74 23                	je     c000a73a <fifo_put+0x7c>
c000a717:	83 f8 20             	cmp    eax,0x20
c000a71a:	74 1e                	je     c000a73a <fifo_put+0x7c>
c000a71c:	83 f8 40             	cmp    eax,0x40
c000a71f:	74 19                	je     c000a73a <fifo_put+0x7c>
c000a721:	68 88 ee 00 c0       	push   0xc000ee88
c000a726:	68 0c ef 00 c0       	push   0xc000ef0c
c000a72b:	6a 3b                	push   0x3b
c000a72d:	68 d4 ee 00 c0       	push   0xc000eed4
c000a732:	e8 71 dc ff ff       	call   c00083a8 <panic_spin>
c000a737:	83 c4 10             	add    esp,0x10
c000a73a:	8b 53 30             	mov    edx,DWORD PTR [ebx+0x30]
c000a73d:	8b 43 40             	mov    eax,DWORD PTR [ebx+0x40]
c000a740:	83 fa 10             	cmp    edx,0x10
c000a743:	74 1f                	je     c000a764 <fifo_put+0xa6>
c000a745:	7f 07                	jg     c000a74e <fifo_put+0x90>
c000a747:	83 fa 08             	cmp    edx,0x8
c000a74a:	75 3d                	jne    c000a789 <fifo_put+0xcb>
c000a74c:	eb 0c                	jmp    c000a75a <fifo_put+0x9c>
c000a74e:	83 fa 20             	cmp    edx,0x20
c000a751:	74 1d                	je     c000a770 <fifo_put+0xb2>
c000a753:	83 fa 40             	cmp    edx,0x40
c000a756:	75 31                	jne    c000a789 <fifo_put+0xcb>
c000a758:	eb 20                	jmp    c000a77a <fifo_put+0xbc>
c000a75a:	8a 0e                	mov    cl,BYTE PTR [esi]
c000a75c:	8b 53 2c             	mov    edx,DWORD PTR [ebx+0x2c]
c000a75f:	88 0c 02             	mov    BYTE PTR [edx+eax*1],cl
c000a762:	eb 25                	jmp    c000a789 <fifo_put+0xcb>
c000a764:	66 8b 0e             	mov    cx,WORD PTR [esi]
c000a767:	8b 53 2c             	mov    edx,DWORD PTR [ebx+0x2c]
c000a76a:	66 89 0c 42          	mov    WORD PTR [edx+eax*2],cx
c000a76e:	eb 19                	jmp    c000a789 <fifo_put+0xcb>
c000a770:	8b 0e                	mov    ecx,DWORD PTR [esi]
c000a772:	8b 53 2c             	mov    edx,DWORD PTR [ebx+0x2c]
c000a775:	89 0c 82             	mov    DWORD PTR [edx+eax*4],ecx
c000a778:	eb 0f                	jmp    c000a789 <fifo_put+0xcb>
c000a77a:	8b 7e 04             	mov    edi,DWORD PTR [esi+0x4]
c000a77d:	8b 53 2c             	mov    edx,DWORD PTR [ebx+0x2c]
c000a780:	8b 36                	mov    esi,DWORD PTR [esi]
c000a782:	89 7c c2 04          	mov    DWORD PTR [edx+eax*8+0x4],edi
c000a786:	89 34 c2             	mov    DWORD PTR [edx+eax*8],esi
c000a789:	8b 43 40             	mov    eax,DWORD PTR [ebx+0x40]
c000a78c:	40                   	inc    eax
c000a78d:	99                   	cdq    
c000a78e:	f7 7b 34             	idiv   DWORD PTR [ebx+0x34]
c000a791:	8b 43 28             	mov    eax,DWORD PTR [ebx+0x28]
c000a794:	85 c0                	test   eax,eax
c000a796:	89 53 40             	mov    DWORD PTR [ebx+0x40],edx
c000a799:	74 13                	je     c000a7ae <fifo_put+0xf0>
c000a79b:	83 ec 0c             	sub    esp,0xc
c000a79e:	50                   	push   eax
c000a79f:	e8 36 f4 ff ff       	call   c0009bda <thread_unblock>
c000a7a4:	83 c4 10             	add    esp,0x10
c000a7a7:	c7 43 28 00 00 00 00 	mov    DWORD PTR [ebx+0x28],0x0
c000a7ae:	83 ec 0c             	sub    esp,0xc
c000a7b1:	ff 75 e4             	push   DWORD PTR [ebp-0x1c]
c000a7b4:	e8 5f e7 ff ff       	call   c0008f18 <intr_set_status>
c000a7b9:	8d 65 f4             	lea    esp,[ebp-0xc]
c000a7bc:	31 c0                	xor    eax,eax
c000a7be:	5b                   	pop    ebx
c000a7bf:	5e                   	pop    esi
c000a7c0:	5f                   	pop    edi
c000a7c1:	5d                   	pop    ebp
c000a7c2:	c3                   	ret    

c000a7c3 <fifo_get>:
c000a7c3:	55                   	push   ebp
c000a7c4:	89 e5                	mov    ebp,esp
c000a7c6:	57                   	push   edi
c000a7c7:	56                   	push   esi
c000a7c8:	53                   	push   ebx
c000a7c9:	83 ec 0c             	sub    esp,0xc
c000a7cc:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c000a7cf:	8b 75 0c             	mov    esi,DWORD PTR [ebp+0xc]
c000a7d2:	e8 42 e5 ff ff       	call   c0008d19 <intr_disable>
c000a7d7:	89 c7                	mov    edi,eax
c000a7d9:	8b 43 30             	mov    eax,DWORD PTR [ebx+0x30]
c000a7dc:	83 f8 10             	cmp    eax,0x10
c000a7df:	74 4f                	je     c000a830 <fifo_get+0x6d>
c000a7e1:	83 f8 08             	cmp    eax,0x8
c000a7e4:	74 4a                	je     c000a830 <fifo_get+0x6d>
c000a7e6:	83 f8 20             	cmp    eax,0x20
c000a7e9:	74 45                	je     c000a830 <fifo_get+0x6d>
c000a7eb:	83 f8 40             	cmp    eax,0x40
c000a7ee:	74 40                	je     c000a830 <fifo_get+0x6d>
c000a7f0:	68 88 ee 00 c0       	push   0xc000ee88
c000a7f5:	68 18 ef 00 c0       	push   0xc000ef18
c000a7fa:	6a 5a                	push   0x5a
c000a7fc:	68 d4 ee 00 c0       	push   0xc000eed4
c000a801:	e8 a2 db ff ff       	call   c00083a8 <panic_spin>
c000a806:	eb 25                	jmp    c000a82d <fifo_get+0x6a>
c000a808:	83 ec 0c             	sub    esp,0xc
c000a80b:	53                   	push   ebx
c000a80c:	e8 8a ef ff ff       	call   c000979b <lock_acquire>
c000a811:	e8 ed f0 ff ff       	call   c0009903 <running_thread>
c000a816:	89 43 28             	mov    DWORD PTR [ebx+0x28],eax
c000a819:	c7 04 24 02 00 00 00 	mov    DWORD PTR [esp],0x2
c000a820:	e8 6a f3 ff ff       	call   c0009b8f <thread_block>
c000a825:	89 1c 24             	mov    DWORD PTR [esp],ebx
c000a828:	e8 c9 ef ff ff       	call   c00097f6 <lock_release>
c000a82d:	83 c4 10             	add    esp,0x10
c000a830:	8b 43 38             	mov    eax,DWORD PTR [ebx+0x38]
c000a833:	3b 43 34             	cmp    eax,DWORD PTR [ebx+0x34]
c000a836:	74 d0                	je     c000a808 <fifo_get+0x45>
c000a838:	8b 53 30             	mov    edx,DWORD PTR [ebx+0x30]
c000a83b:	40                   	inc    eax
c000a83c:	89 43 38             	mov    DWORD PTR [ebx+0x38],eax
c000a83f:	8b 43 3c             	mov    eax,DWORD PTR [ebx+0x3c]
c000a842:	83 fa 10             	cmp    edx,0x10
c000a845:	74 1f                	je     c000a866 <fifo_get+0xa3>
c000a847:	7f 07                	jg     c000a850 <fifo_get+0x8d>
c000a849:	83 fa 08             	cmp    edx,0x8
c000a84c:	75 3e                	jne    c000a88c <fifo_get+0xc9>
c000a84e:	eb 0c                	jmp    c000a85c <fifo_get+0x99>
c000a850:	83 fa 20             	cmp    edx,0x20
c000a853:	74 1d                	je     c000a872 <fifo_get+0xaf>
c000a855:	83 fa 40             	cmp    edx,0x40
c000a858:	75 32                	jne    c000a88c <fifo_get+0xc9>
c000a85a:	eb 20                	jmp    c000a87c <fifo_get+0xb9>
c000a85c:	8b 53 2c             	mov    edx,DWORD PTR [ebx+0x2c]
c000a85f:	8a 04 02             	mov    al,BYTE PTR [edx+eax*1]
c000a862:	88 06                	mov    BYTE PTR [esi],al
c000a864:	eb 26                	jmp    c000a88c <fifo_get+0xc9>
c000a866:	8b 53 2c             	mov    edx,DWORD PTR [ebx+0x2c]
c000a869:	66 8b 04 42          	mov    ax,WORD PTR [edx+eax*2]
c000a86d:	66 89 06             	mov    WORD PTR [esi],ax
c000a870:	eb 1a                	jmp    c000a88c <fifo_get+0xc9>
c000a872:	8b 53 2c             	mov    edx,DWORD PTR [ebx+0x2c]
c000a875:	8b 04 82             	mov    eax,DWORD PTR [edx+eax*4]
c000a878:	89 06                	mov    DWORD PTR [esi],eax
c000a87a:	eb 10                	jmp    c000a88c <fifo_get+0xc9>
c000a87c:	8b 53 2c             	mov    edx,DWORD PTR [ebx+0x2c]
c000a87f:	8d 14 c2             	lea    edx,[edx+eax*8]
c000a882:	8b 02                	mov    eax,DWORD PTR [edx]
c000a884:	8b 52 04             	mov    edx,DWORD PTR [edx+0x4]
c000a887:	89 06                	mov    DWORD PTR [esi],eax
c000a889:	89 56 04             	mov    DWORD PTR [esi+0x4],edx
c000a88c:	8b 43 3c             	mov    eax,DWORD PTR [ebx+0x3c]
c000a88f:	40                   	inc    eax
c000a890:	99                   	cdq    
c000a891:	f7 7b 34             	idiv   DWORD PTR [ebx+0x34]
c000a894:	8b 43 24             	mov    eax,DWORD PTR [ebx+0x24]
c000a897:	85 c0                	test   eax,eax
c000a899:	89 53 3c             	mov    DWORD PTR [ebx+0x3c],edx
c000a89c:	74 13                	je     c000a8b1 <fifo_get+0xee>
c000a89e:	83 ec 0c             	sub    esp,0xc
c000a8a1:	50                   	push   eax
c000a8a2:	e8 33 f3 ff ff       	call   c0009bda <thread_unblock>
c000a8a7:	83 c4 10             	add    esp,0x10
c000a8aa:	c7 43 24 00 00 00 00 	mov    DWORD PTR [ebx+0x24],0x0
c000a8b1:	83 ec 0c             	sub    esp,0xc
c000a8b4:	57                   	push   edi
c000a8b5:	e8 5e e6 ff ff       	call   c0008f18 <intr_set_status>
c000a8ba:	8d 65 f4             	lea    esp,[ebp-0xc]
c000a8bd:	31 c0                	xor    eax,eax
c000a8bf:	5b                   	pop    ebx
c000a8c0:	5e                   	pop    esi
c000a8c1:	5f                   	pop    edi
c000a8c2:	5d                   	pop    ebp
c000a8c3:	c3                   	ret    

c000a8c4 <fifo_empty>:
c000a8c4:	55                   	push   ebp
c000a8c5:	89 e5                	mov    ebp,esp
c000a8c7:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c000a8ca:	5d                   	pop    ebp
c000a8cb:	8b 50 34             	mov    edx,DWORD PTR [eax+0x34]
c000a8ce:	39 50 38             	cmp    DWORD PTR [eax+0x38],edx
c000a8d1:	0f 94 c0             	sete   al
c000a8d4:	0f b6 c0             	movzx  eax,al
c000a8d7:	c3                   	ret    

c000a8d8 <fifo_fill>:
c000a8d8:	55                   	push   ebp
c000a8d9:	89 e5                	mov    ebp,esp
c000a8db:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c000a8de:	5d                   	pop    ebp
c000a8df:	83 78 38 00          	cmp    DWORD PTR [eax+0x38],0x0
c000a8e3:	0f 94 c0             	sete   al
c000a8e6:	0f b6 c0             	movzx  eax,al
c000a8e9:	c3                   	ret    
	...

c000a8ec <list_init>:
c000a8ec:	55                   	push   ebp
c000a8ed:	89 e5                	mov    ebp,esp
c000a8ef:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c000a8f2:	8d 50 0c             	lea    edx,[eax+0xc]
c000a8f5:	c7 00 00 00 00 00    	mov    DWORD PTR [eax],0x0
c000a8fb:	89 50 08             	mov    DWORD PTR [eax+0x8],edx
c000a8fe:	89 40 0c             	mov    DWORD PTR [eax+0xc],eax
c000a901:	c7 40 14 00 00 00 00 	mov    DWORD PTR [eax+0x14],0x0
c000a908:	5d                   	pop    ebp
c000a909:	c3                   	ret    

c000a90a <list_in>:
c000a90a:	55                   	push   ebp
c000a90b:	89 e5                	mov    ebp,esp
c000a90d:	56                   	push   esi
c000a90e:	8b 75 08             	mov    esi,DWORD PTR [ebp+0x8]
c000a911:	53                   	push   ebx
c000a912:	8b 5d 0c             	mov    ebx,DWORD PTR [ebp+0xc]
c000a915:	e8 ff e3 ff ff       	call   c0008d19 <intr_disable>
c000a91a:	8b 13                	mov    edx,DWORD PTR [ebx]
c000a91c:	89 72 08             	mov    DWORD PTR [edx+0x8],esi
c000a91f:	8b 13                	mov    edx,DWORD PTR [ebx]
c000a921:	89 5e 08             	mov    DWORD PTR [esi+0x8],ebx
c000a924:	89 16                	mov    DWORD PTR [esi],edx
c000a926:	89 33                	mov    DWORD PTR [ebx],esi
c000a928:	89 45 08             	mov    DWORD PTR [ebp+0x8],eax
c000a92b:	5b                   	pop    ebx
c000a92c:	5e                   	pop    esi
c000a92d:	5d                   	pop    ebp
c000a92e:	e9 e5 e5 ff ff       	jmp    c0008f18 <intr_set_status>

c000a933 <list_push>:
c000a933:	55                   	push   ebp
c000a934:	89 e5                	mov    ebp,esp
c000a936:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c000a939:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c000a93c:	8b 52 08             	mov    edx,DWORD PTR [edx+0x8]
c000a93f:	89 45 08             	mov    DWORD PTR [ebp+0x8],eax
c000a942:	89 55 0c             	mov    DWORD PTR [ebp+0xc],edx
c000a945:	5d                   	pop    ebp
c000a946:	e9 bf ff ff ff       	jmp    c000a90a <list_in>

c000a94b <list_append>:
c000a94b:	55                   	push   ebp
c000a94c:	89 e5                	mov    ebp,esp
c000a94e:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c000a951:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c000a954:	83 c2 0c             	add    edx,0xc
c000a957:	89 55 0c             	mov    DWORD PTR [ebp+0xc],edx
c000a95a:	89 45 08             	mov    DWORD PTR [ebp+0x8],eax
c000a95d:	5d                   	pop    ebp
c000a95e:	e9 a7 ff ff ff       	jmp    c000a90a <list_in>

c000a963 <list_remove>:
c000a963:	55                   	push   ebp
c000a964:	89 e5                	mov    ebp,esp
c000a966:	53                   	push   ebx
c000a967:	50                   	push   eax
c000a968:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c000a96b:	e8 a9 e3 ff ff       	call   c0008d19 <intr_disable>
c000a970:	8b 13                	mov    edx,DWORD PTR [ebx]
c000a972:	8b 4b 08             	mov    ecx,DWORD PTR [ebx+0x8]
c000a975:	89 4a 08             	mov    DWORD PTR [edx+0x8],ecx
c000a978:	8b 53 08             	mov    edx,DWORD PTR [ebx+0x8]
c000a97b:	8b 0b                	mov    ecx,DWORD PTR [ebx]
c000a97d:	89 0a                	mov    DWORD PTR [edx],ecx
c000a97f:	89 45 08             	mov    DWORD PTR [ebp+0x8],eax
c000a982:	5a                   	pop    edx
c000a983:	5b                   	pop    ebx
c000a984:	5d                   	pop    ebp
c000a985:	e9 8e e5 ff ff       	jmp    c0008f18 <intr_set_status>

c000a98a <list_pop>:
c000a98a:	55                   	push   ebp
c000a98b:	89 e5                	mov    ebp,esp
c000a98d:	53                   	push   ebx
c000a98e:	83 ec 10             	sub    esp,0x10
c000a991:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c000a994:	8b 58 08             	mov    ebx,DWORD PTR [eax+0x8]
c000a997:	53                   	push   ebx
c000a998:	e8 c6 ff ff ff       	call   c000a963 <list_remove>
c000a99d:	89 d8                	mov    eax,ebx
c000a99f:	8b 5d fc             	mov    ebx,DWORD PTR [ebp-0x4]
c000a9a2:	c9                   	leave  
c000a9a3:	c3                   	ret    

c000a9a4 <list_find>:
c000a9a4:	55                   	push   ebp
c000a9a5:	89 e5                	mov    ebp,esp
c000a9a7:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c000a9aa:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
c000a9ad:	8b 42 08             	mov    eax,DWORD PTR [edx+0x8]
c000a9b0:	83 c2 0c             	add    edx,0xc
c000a9b3:	eb 07                	jmp    c000a9bc <list_find+0x18>
c000a9b5:	39 c8                	cmp    eax,ecx
c000a9b7:	74 0b                	je     c000a9c4 <list_find+0x20>
c000a9b9:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
c000a9bc:	39 d0                	cmp    eax,edx
c000a9be:	75 f5                	jne    c000a9b5 <list_find+0x11>
c000a9c0:	31 c0                	xor    eax,eax
c000a9c2:	eb 05                	jmp    c000a9c9 <list_find+0x25>
c000a9c4:	b8 01 00 00 00       	mov    eax,0x1
c000a9c9:	5d                   	pop    ebp
c000a9ca:	c3                   	ret    

c000a9cb <list_traversal>:
c000a9cb:	55                   	push   ebp
c000a9cc:	89 e5                	mov    ebp,esp
c000a9ce:	57                   	push   edi
c000a9cf:	56                   	push   esi
c000a9d0:	53                   	push   ebx
c000a9d1:	83 ec 0c             	sub    esp,0xc
c000a9d4:	8b 75 08             	mov    esi,DWORD PTR [ebp+0x8]
c000a9d7:	8b 7d 10             	mov    edi,DWORD PTR [ebp+0x10]
c000a9da:	8b 5e 08             	mov    ebx,DWORD PTR [esi+0x8]
c000a9dd:	83 c6 0c             	add    esi,0xc
c000a9e0:	eb 11                	jmp    c000a9f3 <list_traversal+0x28>
c000a9e2:	51                   	push   ecx
c000a9e3:	51                   	push   ecx
c000a9e4:	57                   	push   edi
c000a9e5:	53                   	push   ebx
c000a9e6:	ff 55 0c             	call   DWORD PTR [ebp+0xc]
c000a9e9:	83 c4 10             	add    esp,0x10
c000a9ec:	85 c0                	test   eax,eax
c000a9ee:	75 09                	jne    c000a9f9 <list_traversal+0x2e>
c000a9f0:	8b 5b 08             	mov    ebx,DWORD PTR [ebx+0x8]
c000a9f3:	39 f3                	cmp    ebx,esi
c000a9f5:	75 eb                	jne    c000a9e2 <list_traversal+0x17>
c000a9f7:	31 db                	xor    ebx,ebx
c000a9f9:	8d 65 f4             	lea    esp,[ebp-0xc]
c000a9fc:	89 d8                	mov    eax,ebx
c000a9fe:	5b                   	pop    ebx
c000a9ff:	5e                   	pop    esi
c000aa00:	5f                   	pop    edi
c000aa01:	5d                   	pop    ebp
c000aa02:	c3                   	ret    

c000aa03 <list_len>:
c000aa03:	55                   	push   ebp
c000aa04:	31 c0                	xor    eax,eax
c000aa06:	89 e5                	mov    ebp,esp
c000aa08:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
c000aa0b:	8b 51 08             	mov    edx,DWORD PTR [ecx+0x8]
c000aa0e:	83 c1 0c             	add    ecx,0xc
c000aa11:	eb 04                	jmp    c000aa17 <list_len+0x14>
c000aa13:	8b 52 08             	mov    edx,DWORD PTR [edx+0x8]
c000aa16:	40                   	inc    eax
c000aa17:	39 ca                	cmp    edx,ecx
c000aa19:	75 f8                	jne    c000aa13 <list_len+0x10>
c000aa1b:	5d                   	pop    ebp
c000aa1c:	c3                   	ret    

c000aa1d <list_empty>:
c000aa1d:	55                   	push   ebp
c000aa1e:	89 e5                	mov    ebp,esp
c000aa20:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c000aa23:	5d                   	pop    ebp
c000aa24:	8d 50 0c             	lea    edx,[eax+0xc]
c000aa27:	39 50 08             	cmp    DWORD PTR [eax+0x8],edx
c000aa2a:	0f 94 c0             	sete   al
c000aa2d:	0f b6 c0             	movzx  eax,al
c000aa30:	c3                   	ret    
c000aa31:	00 00                	add    BYTE PTR [eax],al
	...

c000aa34 <itoa>:
c000aa34:	55                   	push   ebp
c000aa35:	89 e5                	mov    ebp,esp
c000aa37:	57                   	push   edi
c000aa38:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
c000aa3b:	56                   	push   esi
c000aa3c:	8b 75 08             	mov    esi,DWORD PTR [ebp+0x8]
c000aa3f:	53                   	push   ebx
c000aa40:	8b 7d 10             	mov    edi,DWORD PTR [ebp+0x10]
c000aa43:	31 db                	xor    ebx,ebx
c000aa45:	89 f0                	mov    eax,esi
c000aa47:	99                   	cdq    
c000aa48:	89 d0                	mov    eax,edx
c000aa4a:	31 f0                	xor    eax,esi
c000aa4c:	29 d0                	sub    eax,edx
c000aa4e:	eb 02                	jmp    c000aa52 <itoa+0x1e>
c000aa50:	89 d3                	mov    ebx,edx
c000aa52:	99                   	cdq    
c000aa53:	f7 ff                	idiv   edi
c000aa55:	8a 92 ac ef 00 c0    	mov    dl,BYTE PTR [edx-0x3fff1054]
c000aa5b:	85 c0                	test   eax,eax
c000aa5d:	88 14 19             	mov    BYTE PTR [ecx+ebx*1],dl
c000aa60:	8d 53 01             	lea    edx,[ebx+0x1]
c000aa63:	7f eb                	jg     c000aa50 <itoa+0x1c>
c000aa65:	85 f6                	test   esi,esi
c000aa67:	79 07                	jns    c000aa70 <itoa+0x3c>
c000aa69:	c6 04 11 2d          	mov    BYTE PTR [ecx+edx*1],0x2d
c000aa6d:	8d 53 02             	lea    edx,[ebx+0x2]
c000aa70:	c6 04 11 00          	mov    BYTE PTR [ecx+edx*1],0x0
c000aa74:	89 c8                	mov    eax,ecx
c000aa76:	eb 01                	jmp    c000aa79 <itoa+0x45>
c000aa78:	40                   	inc    eax
c000aa79:	80 38 00             	cmp    BYTE PTR [eax],0x0
c000aa7c:	75 fa                	jne    c000aa78 <itoa+0x44>
c000aa7e:	eb 09                	jmp    c000aa89 <itoa+0x55>
c000aa80:	8a 11                	mov    dl,BYTE PTR [ecx]
c000aa82:	8a 18                	mov    bl,BYTE PTR [eax]
c000aa84:	88 19                	mov    BYTE PTR [ecx],bl
c000aa86:	41                   	inc    ecx
c000aa87:	88 10                	mov    BYTE PTR [eax],dl
c000aa89:	48                   	dec    eax
c000aa8a:	39 c8                	cmp    eax,ecx
c000aa8c:	77 f2                	ja     c000aa80 <itoa+0x4c>
c000aa8e:	5b                   	pop    ebx
c000aa8f:	5e                   	pop    esi
c000aa90:	5f                   	pop    edi
c000aa91:	5d                   	pop    ebp
c000aa92:	c3                   	ret    

c000aa93 <utoa>:
c000aa93:	55                   	push   ebp
c000aa94:	89 e5                	mov    ebp,esp
c000aa96:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c000aa99:	56                   	push   esi
c000aa9a:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
c000aa9d:	8b 75 10             	mov    esi,DWORD PTR [ebp+0x10]
c000aaa0:	53                   	push   ebx
c000aaa1:	31 db                	xor    ebx,ebx
c000aaa3:	31 d2                	xor    edx,edx
c000aaa5:	f7 f6                	div    esi
c000aaa7:	8a 92 d4 ef 00 c0    	mov    dl,BYTE PTR [edx-0x3fff102c]
c000aaad:	88 14 19             	mov    BYTE PTR [ecx+ebx*1],dl
c000aab0:	43                   	inc    ebx
c000aab1:	85 c0                	test   eax,eax
c000aab3:	75 ee                	jne    c000aaa3 <utoa+0x10>
c000aab5:	c6 04 19 00          	mov    BYTE PTR [ecx+ebx*1],0x0
c000aab9:	89 c8                	mov    eax,ecx
c000aabb:	eb 01                	jmp    c000aabe <utoa+0x2b>
c000aabd:	40                   	inc    eax
c000aabe:	80 38 00             	cmp    BYTE PTR [eax],0x0
c000aac1:	75 fa                	jne    c000aabd <utoa+0x2a>
c000aac3:	eb 09                	jmp    c000aace <utoa+0x3b>
c000aac5:	8a 11                	mov    dl,BYTE PTR [ecx]
c000aac7:	8a 18                	mov    bl,BYTE PTR [eax]
c000aac9:	88 19                	mov    BYTE PTR [ecx],bl
c000aacb:	41                   	inc    ecx
c000aacc:	88 10                	mov    BYTE PTR [eax],dl
c000aace:	48                   	dec    eax
c000aacf:	39 c8                	cmp    eax,ecx
c000aad1:	77 f2                	ja     c000aac5 <utoa+0x32>
c000aad3:	5b                   	pop    ebx
c000aad4:	5e                   	pop    esi
c000aad5:	5d                   	pop    ebp
c000aad6:	c3                   	ret    

c000aad7 <roll_screen>:
c000aad7:	55                   	push   ebp
c000aad8:	89 e5                	mov    ebp,esp
c000aada:	53                   	push   ebx
c000aadb:	83 3d 14 7c 00 00 00 	cmp    DWORD PTR ds:0x7c14,0x0
c000aae2:	75 2c                	jne    c000ab10 <roll_screen+0x39>
c000aae4:	a1 24 7c 00 00       	mov    eax,ds:0x7c24
c000aae9:	8b 0d 1c 7c 00 00    	mov    ecx,DWORD PTR ds:0x7c1c
c000aaef:	8d 1c 41             	lea    ebx,[ecx+eax*2]
c000aaf2:	31 c0                	xor    eax,eax
c000aaf4:	eb 09                	jmp    c000aaff <roll_screen+0x28>
c000aaf6:	66 8b 14 43          	mov    dx,WORD PTR [ebx+eax*2]
c000aafa:	66 89 14 41          	mov    WORD PTR [ecx+eax*2],dx
c000aafe:	40                   	inc    eax
c000aaff:	8b 15 28 7c 00 00    	mov    edx,DWORD PTR ds:0x7c28
c000ab05:	0f af 15 24 7c 00 00 	imul   edx,DWORD PTR ds:0x7c24
c000ab0c:	39 d0                	cmp    eax,edx
c000ab0e:	72 e6                	jb     c000aaf6 <roll_screen+0x1f>
c000ab10:	5b                   	pop    ebx
c000ab11:	5d                   	pop    ebp
c000ab12:	c3                   	ret    

c000ab13 <get_cursor>:
c000ab13:	55                   	push   ebp
c000ab14:	ba d4 03 00 00       	mov    edx,0x3d4
c000ab19:	89 e5                	mov    ebp,esp
c000ab1b:	b8 0e 00 00 00       	mov    eax,0xe
c000ab20:	53                   	push   ebx
c000ab21:	ee                   	out    dx,al
c000ab22:	bb d5 03 00 00       	mov    ebx,0x3d5
c000ab27:	89 da                	mov    edx,ebx
c000ab29:	ec                   	in     al,dx
c000ab2a:	89 c1                	mov    ecx,eax
c000ab2c:	b2 d4                	mov    dl,0xd4
c000ab2e:	b8 0f 00 00 00       	mov    eax,0xf
c000ab33:	ee                   	out    dx,al
c000ab34:	89 da                	mov    edx,ebx
c000ab36:	ec                   	in     al,dx
c000ab37:	c1 e1 08             	shl    ecx,0x8
c000ab3a:	09 c1                	or     ecx,eax
c000ab3c:	89 c8                	mov    eax,ecx
c000ab3e:	5b                   	pop    ebx
c000ab3f:	5d                   	pop    ebp
c000ab40:	c3                   	ret    

c000ab41 <set_cursor>:
c000ab41:	55                   	push   ebp
c000ab42:	ba d4 03 00 00       	mov    edx,0x3d4
c000ab47:	89 e5                	mov    ebp,esp
c000ab49:	b8 0e 00 00 00       	mov    eax,0xe
c000ab4e:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
c000ab51:	ee                   	out    dx,al
c000ab52:	0f b6 c5             	movzx  eax,ch
c000ab55:	b2 d5                	mov    dl,0xd5
c000ab57:	ee                   	out    dx,al
c000ab58:	b8 0f 00 00 00       	mov    eax,0xf
c000ab5d:	b2 d4                	mov    dl,0xd4
c000ab5f:	ee                   	out    dx,al
c000ab60:	0f b6 c1             	movzx  eax,cl
c000ab63:	b2 d5                	mov    dl,0xd5
c000ab65:	ee                   	out    dx,al
c000ab66:	5d                   	pop    ebp
c000ab67:	c3                   	ret    

c000ab68 <put_char>:
c000ab68:	55                   	push   ebp
c000ab69:	89 e5                	mov    ebp,esp
c000ab6b:	53                   	push   ebx
c000ab6c:	51                   	push   ecx
c000ab6d:	8a 4d 08             	mov    cl,BYTE PTR [ebp+0x8]
c000ab70:	83 3d 14 7c 00 00 00 	cmp    DWORD PTR ds:0x7c14,0x0
c000ab77:	8a 5d 0c             	mov    bl,BYTE PTR [ebp+0xc]
c000ab7a:	0f 85 85 00 00 00    	jne    c000ac05 <put_char+0x9d>
c000ab80:	88 4d f8             	mov    BYTE PTR [ebp-0x8],cl
c000ab83:	e8 8b ff ff ff       	call   c000ab13 <get_cursor>
c000ab88:	80 fb 0d             	cmp    bl,0xd
c000ab8b:	8a 4d f8             	mov    cl,BYTE PTR [ebp-0x8]
c000ab8e:	77 31                	ja     c000abc1 <put_char+0x59>
c000ab90:	0f b6 d3             	movzx  edx,bl
c000ab93:	ff 24 95 4c ef 00 c0 	jmp    DWORD PTR [edx*4-0x3fff10b4]
c000ab9a:	8d 48 ff             	lea    ecx,[eax-0x1]
c000ab9d:	a1 1c 7c 00 00       	mov    eax,ds:0x7c1c
c000aba2:	c6 04 48 20          	mov    BYTE PTR [eax+ecx*2],0x20
c000aba6:	eb 2f                	jmp    c000abd7 <put_char+0x6f>
c000aba8:	8b 1d 24 7c 00 00    	mov    ebx,DWORD PTR ds:0x7c24
c000abae:	31 d2                	xor    edx,edx
c000abb0:	8d 0c 18             	lea    ecx,[eax+ebx*1]
c000abb3:	f7 f3                	div    ebx
c000abb5:	29 d1                	sub    ecx,edx
c000abb7:	eb 1e                	jmp    c000abd7 <put_char+0x6f>
c000abb9:	8d 48 04             	lea    ecx,[eax+0x4]
c000abbc:	83 e1 fc             	and    ecx,0xfffffffc
c000abbf:	eb 16                	jmp    c000abd7 <put_char+0x6f>
c000abc1:	8b 15 1c 7c 00 00    	mov    edx,DWORD PTR ds:0x7c1c
c000abc7:	88 1c 42             	mov    BYTE PTR [edx+eax*2],bl
c000abca:	8b 15 1c 7c 00 00    	mov    edx,DWORD PTR ds:0x7c1c
c000abd0:	88 4c 42 01          	mov    BYTE PTR [edx+eax*2+0x1],cl
c000abd4:	8d 48 01             	lea    ecx,[eax+0x1]
c000abd7:	a1 28 7c 00 00       	mov    eax,ds:0x7c28
c000abdc:	0f af 05 24 7c 00 00 	imul   eax,DWORD PTR ds:0x7c24
c000abe3:	39 c1                	cmp    ecx,eax
c000abe5:	72 13                	jb     c000abfa <put_char+0x92>
c000abe7:	e8 eb fe ff ff       	call   c000aad7 <roll_screen>
c000abec:	8b 0d 28 7c 00 00    	mov    ecx,DWORD PTR ds:0x7c28
c000abf2:	49                   	dec    ecx
c000abf3:	0f af 0d 24 7c 00 00 	imul   ecx,DWORD PTR ds:0x7c24
c000abfa:	89 4d 08             	mov    DWORD PTR [ebp+0x8],ecx
c000abfd:	5a                   	pop    edx
c000abfe:	5b                   	pop    ebx
c000abff:	5d                   	pop    ebp
c000ac00:	e9 3c ff ff ff       	jmp    c000ab41 <set_cursor>
c000ac05:	58                   	pop    eax
c000ac06:	5b                   	pop    ebx
c000ac07:	5d                   	pop    ebp
c000ac08:	c3                   	ret    

c000ac09 <put_str>:
c000ac09:	55                   	push   ebp
c000ac0a:	89 e5                	mov    ebp,esp
c000ac0c:	56                   	push   esi
c000ac0d:	0f b6 75 08          	movzx  esi,BYTE PTR [ebp+0x8]
c000ac11:	53                   	push   ebx
c000ac12:	8b 5d 0c             	mov    ebx,DWORD PTR [ebp+0xc]
c000ac15:	eb 0d                	jmp    c000ac24 <put_str+0x1b>
c000ac17:	0f b6 c0             	movzx  eax,al
c000ac1a:	43                   	inc    ebx
c000ac1b:	50                   	push   eax
c000ac1c:	56                   	push   esi
c000ac1d:	e8 46 ff ff ff       	call   c000ab68 <put_char>
c000ac22:	58                   	pop    eax
c000ac23:	5a                   	pop    edx
c000ac24:	8a 03                	mov    al,BYTE PTR [ebx]
c000ac26:	84 c0                	test   al,al
c000ac28:	75 ed                	jne    c000ac17 <put_str+0xe>
c000ac2a:	8d 65 f8             	lea    esp,[ebp-0x8]
c000ac2d:	5b                   	pop    ebx
c000ac2e:	5e                   	pop    esi
c000ac2f:	5d                   	pop    ebp
c000ac30:	c3                   	ret    

c000ac31 <put_uint>:
c000ac31:	55                   	push   ebp
c000ac32:	31 c0                	xor    eax,eax
c000ac34:	89 e5                	mov    ebp,esp
c000ac36:	b9 42 00 00 00       	mov    ecx,0x42
c000ac3b:	57                   	push   edi
c000ac3c:	53                   	push   ebx
c000ac3d:	8d 7d b6             	lea    edi,[ebp-0x4a]
c000ac40:	83 ec 50             	sub    esp,0x50
c000ac43:	8a 5d 08             	mov    bl,BYTE PTR [ebp+0x8]
c000ac46:	f3 aa                	rep stos BYTE PTR es:[edi],al
c000ac48:	8d 7d b6             	lea    edi,[ebp-0x4a]
c000ac4b:	ff 75 10             	push   DWORD PTR [ebp+0x10]
c000ac4e:	0f b6 db             	movzx  ebx,bl
c000ac51:	57                   	push   edi
c000ac52:	ff 75 0c             	push   DWORD PTR [ebp+0xc]
c000ac55:	e8 39 fe ff ff       	call   c000aa93 <utoa>
c000ac5a:	57                   	push   edi
c000ac5b:	53                   	push   ebx
c000ac5c:	e8 a8 ff ff ff       	call   c000ac09 <put_str>
c000ac61:	83 c4 14             	add    esp,0x14
c000ac64:	8d 65 f8             	lea    esp,[ebp-0x8]
c000ac67:	5b                   	pop    ebx
c000ac68:	5f                   	pop    edi
c000ac69:	5d                   	pop    ebp
c000ac6a:	c3                   	ret    

c000ac6b <put_int>:
c000ac6b:	55                   	push   ebp
c000ac6c:	31 c0                	xor    eax,eax
c000ac6e:	89 e5                	mov    ebp,esp
c000ac70:	b9 42 00 00 00       	mov    ecx,0x42
c000ac75:	57                   	push   edi
c000ac76:	53                   	push   ebx
c000ac77:	8d 7d b6             	lea    edi,[ebp-0x4a]
c000ac7a:	83 ec 50             	sub    esp,0x50
c000ac7d:	8a 5d 08             	mov    bl,BYTE PTR [ebp+0x8]
c000ac80:	f3 aa                	rep stos BYTE PTR es:[edi],al
c000ac82:	8d 7d b6             	lea    edi,[ebp-0x4a]
c000ac85:	ff 75 10             	push   DWORD PTR [ebp+0x10]
c000ac88:	0f b6 db             	movzx  ebx,bl
c000ac8b:	57                   	push   edi
c000ac8c:	ff 75 0c             	push   DWORD PTR [ebp+0xc]
c000ac8f:	e8 a0 fd ff ff       	call   c000aa34 <itoa>
c000ac94:	57                   	push   edi
c000ac95:	53                   	push   ebx
c000ac96:	e8 6e ff ff ff       	call   c000ac09 <put_str>
c000ac9b:	83 c4 14             	add    esp,0x14
c000ac9e:	8d 65 f8             	lea    esp,[ebp-0x8]
c000aca1:	5b                   	pop    ebx
c000aca2:	5f                   	pop    edi
c000aca3:	5d                   	pop    ebp
c000aca4:	c3                   	ret    
c000aca5:	00 00                	add    BYTE PTR [eax],al
	...

c000aca8 <memset>:
c000aca8:	55                   	push   ebp
c000aca9:	89 e5                	mov    ebp,esp
c000acab:	56                   	push   esi
c000acac:	53                   	push   ebx
c000acad:	83 ec 10             	sub    esp,0x10
c000acb0:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c000acb3:	8b 75 10             	mov    esi,DWORD PTR [ebp+0x10]
c000acb6:	8a 55 0c             	mov    dl,BYTE PTR [ebp+0xc]
c000acb9:	85 db                	test   ebx,ebx
c000acbb:	75 1f                	jne    c000acdc <memset+0x34>
c000acbd:	68 fc ef 00 c0       	push   0xc000effc
c000acc2:	68 7c f0 00 c0       	push   0xc000f07c
c000acc7:	6a 0f                	push   0xf
c000acc9:	68 0a f0 00 c0       	push   0xc000f00a
c000acce:	88 55 f4             	mov    BYTE PTR [ebp-0xc],dl
c000acd1:	e8 d2 d6 ff ff       	call   c00083a8 <panic_spin>
c000acd6:	8a 55 f4             	mov    dl,BYTE PTR [ebp-0xc]
c000acd9:	83 c4 10             	add    esp,0x10
c000acdc:	31 c0                	xor    eax,eax
c000acde:	eb 04                	jmp    c000ace4 <memset+0x3c>
c000ace0:	88 14 03             	mov    BYTE PTR [ebx+eax*1],dl
c000ace3:	40                   	inc    eax
c000ace4:	39 f0                	cmp    eax,esi
c000ace6:	75 f8                	jne    c000ace0 <memset+0x38>
c000ace8:	8d 65 f8             	lea    esp,[ebp-0x8]
c000aceb:	5b                   	pop    ebx
c000acec:	5e                   	pop    esi
c000aced:	5d                   	pop    ebp
c000acee:	c3                   	ret    

c000acef <memcpy>:
c000acef:	55                   	push   ebp
c000acf0:	89 e5                	mov    ebp,esp
c000acf2:	57                   	push   edi
c000acf3:	56                   	push   esi
c000acf4:	53                   	push   ebx
c000acf5:	83 ec 0c             	sub    esp,0xc
c000acf8:	8b 75 0c             	mov    esi,DWORD PTR [ebp+0xc]
c000acfb:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c000acfe:	8b 7d 10             	mov    edi,DWORD PTR [ebp+0x10]
c000ad01:	85 f6                	test   esi,esi
c000ad03:	74 04                	je     c000ad09 <memcpy+0x1a>
c000ad05:	85 db                	test   ebx,ebx
c000ad07:	75 19                	jne    c000ad22 <memcpy+0x33>
c000ad09:	68 18 f0 00 c0       	push   0xc000f018
c000ad0e:	68 84 f0 00 c0       	push   0xc000f084
c000ad13:	6a 22                	push   0x22
c000ad15:	68 0a f0 00 c0       	push   0xc000f00a
c000ad1a:	e8 89 d6 ff ff       	call   c00083a8 <panic_spin>
c000ad1f:	83 c4 10             	add    esp,0x10
c000ad22:	31 c0                	xor    eax,eax
c000ad24:	eb 07                	jmp    c000ad2d <memcpy+0x3e>
c000ad26:	8a 14 06             	mov    dl,BYTE PTR [esi+eax*1]
c000ad29:	88 14 03             	mov    BYTE PTR [ebx+eax*1],dl
c000ad2c:	40                   	inc    eax
c000ad2d:	39 f8                	cmp    eax,edi
c000ad2f:	75 f5                	jne    c000ad26 <memcpy+0x37>
c000ad31:	8d 65 f4             	lea    esp,[ebp-0xc]
c000ad34:	5b                   	pop    ebx
c000ad35:	5e                   	pop    esi
c000ad36:	5f                   	pop    edi
c000ad37:	5d                   	pop    ebp
c000ad38:	c3                   	ret    

c000ad39 <memcmp>:
c000ad39:	55                   	push   ebp
c000ad3a:	89 e5                	mov    ebp,esp
c000ad3c:	56                   	push   esi
c000ad3d:	8b 75 08             	mov    esi,DWORD PTR [ebp+0x8]
c000ad40:	53                   	push   ebx
c000ad41:	8b 5d 0c             	mov    ebx,DWORD PTR [ebp+0xc]
c000ad44:	85 db                	test   ebx,ebx
c000ad46:	74 04                	je     c000ad4c <memcmp+0x13>
c000ad48:	85 f6                	test   esi,esi
c000ad4a:	75 19                	jne    c000ad65 <memcmp+0x2c>
c000ad4c:	68 37 f0 00 c0       	push   0xc000f037
c000ad51:	68 8c f0 00 c0       	push   0xc000f08c
c000ad56:	6a 3b                	push   0x3b
c000ad58:	68 0a f0 00 c0       	push   0xc000f00a
c000ad5d:	e8 46 d6 ff ff       	call   c00083a8 <panic_spin>
c000ad62:	83 c4 10             	add    esp,0x10
c000ad65:	8a 13                	mov    dl,BYTE PTR [ebx]
c000ad67:	83 c8 ff             	or     eax,0xffffffff
c000ad6a:	38 16                	cmp    BYTE PTR [esi],dl
c000ad6c:	72 06                	jb     c000ad74 <memcmp+0x3b>
c000ad6e:	0f 97 c0             	seta   al
c000ad71:	0f b6 c0             	movzx  eax,al
c000ad74:	8d 65 f8             	lea    esp,[ebp-0x8]
c000ad77:	5b                   	pop    ebx
c000ad78:	5e                   	pop    esi
c000ad79:	5d                   	pop    ebp
c000ad7a:	c3                   	ret    

c000ad7b <strcpy>:
c000ad7b:	55                   	push   ebp
c000ad7c:	31 d2                	xor    edx,edx
c000ad7e:	89 e5                	mov    ebp,esp
c000ad80:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c000ad83:	53                   	push   ebx
c000ad84:	8b 5d 0c             	mov    ebx,DWORD PTR [ebp+0xc]
c000ad87:	8a 0c 13             	mov    cl,BYTE PTR [ebx+edx*1]
c000ad8a:	88 0c 10             	mov    BYTE PTR [eax+edx*1],cl
c000ad8d:	42                   	inc    edx
c000ad8e:	84 c9                	test   cl,cl
c000ad90:	75 f5                	jne    c000ad87 <strcpy+0xc>
c000ad92:	5b                   	pop    ebx
c000ad93:	5d                   	pop    ebp
c000ad94:	c3                   	ret    

c000ad95 <strlen>:
c000ad95:	55                   	push   ebp
c000ad96:	31 c0                	xor    eax,eax
c000ad98:	89 e5                	mov    ebp,esp
c000ad9a:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c000ad9d:	eb 01                	jmp    c000ada0 <strlen+0xb>
c000ad9f:	40                   	inc    eax
c000ada0:	80 3c 02 00          	cmp    BYTE PTR [edx+eax*1],0x0
c000ada4:	75 f9                	jne    c000ad9f <strlen+0xa>
c000ada6:	5d                   	pop    ebp
c000ada7:	c3                   	ret    

c000ada8 <vsprintf>:
c000ada8:	55                   	push   ebp
c000ada9:	89 e5                	mov    ebp,esp
c000adab:	57                   	push   edi
c000adac:	56                   	push   esi
c000adad:	53                   	push   ebx
c000adae:	83 ec 5c             	sub    esp,0x5c
c000adb1:	8b 7d 0c             	mov    edi,DWORD PTR [ebp+0xc]
c000adb4:	8b 75 10             	mov    esi,DWORD PTR [ebp+0x10]
c000adb7:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c000adba:	e9 9a 01 00 00       	jmp    c000af59 <vsprintf+0x1b1>
c000adbf:	3c 25                	cmp    al,0x25
c000adc1:	74 08                	je     c000adcb <vsprintf+0x23>
c000adc3:	88 03                	mov    BYTE PTR [ebx],al
c000adc5:	43                   	inc    ebx
c000adc6:	e9 8d 01 00 00       	jmp    c000af58 <vsprintf+0x1b0>
c000adcb:	47                   	inc    edi
c000adcc:	ba 01 00 00 00       	mov    edx,0x1
c000add1:	c6 45 c3 00          	mov    BYTE PTR [ebp-0x3d],0x0
c000add5:	c7 45 b0 01 00 00 00 	mov    DWORD PTR [ebp-0x50],0x1
c000addc:	c7 45 a8 00 00 00 00 	mov    DWORD PTR [ebp-0x58],0x0
c000ade3:	8a 07                	mov    al,BYTE PTR [edi]
c000ade5:	3c 2b                	cmp    al,0x2b
c000ade7:	74 28                	je     c000ae11 <vsprintf+0x69>
c000ade9:	7f 0a                	jg     c000adf5 <vsprintf+0x4d>
c000adeb:	3c 20                	cmp    al,0x20
c000aded:	74 27                	je     c000ae16 <vsprintf+0x6e>
c000adef:	3c 23                	cmp    al,0x23
c000adf1:	75 19                	jne    c000ae0c <vsprintf+0x64>
c000adf3:	eb 21                	jmp    c000ae16 <vsprintf+0x6e>
c000adf5:	3c 2d                	cmp    al,0x2d
c000adf7:	74 06                	je     c000adff <vsprintf+0x57>
c000adf9:	3c 30                	cmp    al,0x30
c000adfb:	75 0f                	jne    c000ae0c <vsprintf+0x64>
c000adfd:	eb 04                	jmp    c000ae03 <vsprintf+0x5b>
c000adff:	31 d2                	xor    edx,edx
c000ae01:	eb 13                	jmp    c000ae16 <vsprintf+0x6e>
c000ae03:	c7 45 a8 01 00 00 00 	mov    DWORD PTR [ebp-0x58],0x1
c000ae0a:	eb 0a                	jmp    c000ae16 <vsprintf+0x6e>
c000ae0c:	4f                   	dec    edi
c000ae0d:	31 c0                	xor    eax,eax
c000ae0f:	eb 0a                	jmp    c000ae1b <vsprintf+0x73>
c000ae11:	ba 01 00 00 00       	mov    edx,0x1
c000ae16:	b8 01 00 00 00       	mov    eax,0x1
c000ae1b:	47                   	inc    edi
c000ae1c:	85 c0                	test   eax,eax
c000ae1e:	75 c3                	jne    c000ade3 <vsprintf+0x3b>
c000ae20:	89 55 b0             	mov    DWORD PTR [ebp-0x50],edx
c000ae23:	c7 45 ac 00 00 00 00 	mov    DWORD PTR [ebp-0x54],0x0
c000ae2a:	eb 0f                	jmp    c000ae3b <vsprintf+0x93>
c000ae2c:	6b 55 ac 0a          	imul   edx,DWORD PTR [ebp-0x54],0xa
c000ae30:	0f be c0             	movsx  eax,al
c000ae33:	47                   	inc    edi
c000ae34:	8d 44 02 d0          	lea    eax,[edx+eax*1-0x30]
c000ae38:	89 45 ac             	mov    DWORD PTR [ebp-0x54],eax
c000ae3b:	8a 07                	mov    al,BYTE PTR [edi]
c000ae3d:	8d 50 d0             	lea    edx,[eax-0x30]
c000ae40:	80 fa 09             	cmp    dl,0x9
c000ae43:	76 e7                	jbe    c000ae2c <vsprintf+0x84>
c000ae45:	31 d2                	xor    edx,edx
c000ae47:	83 7d ac 00          	cmp    DWORD PTR [ebp-0x54],0x0
c000ae4b:	0f 95 c2             	setne  dl
c000ae4e:	f7 da                	neg    edx
c000ae50:	21 55 b0             	and    DWORD PTR [ebp-0x50],edx
c000ae53:	3c 6f                	cmp    al,0x6f
c000ae55:	74 3d                	je     c000ae94 <vsprintf+0xec>
c000ae57:	7f 12                	jg     c000ae6b <vsprintf+0xc3>
c000ae59:	3c 63                	cmp    al,0x63
c000ae5b:	74 22                	je     c000ae7f <vsprintf+0xd7>
c000ae5d:	3c 64                	cmp    al,0x64
c000ae5f:	74 28                	je     c000ae89 <vsprintf+0xe1>
c000ae61:	3c 25                	cmp    al,0x25
c000ae63:	0f 85 8b 00 00 00    	jne    c000aef4 <vsprintf+0x14c>
c000ae69:	eb 0e                	jmp    c000ae79 <vsprintf+0xd1>
c000ae6b:	3c 73                	cmp    al,0x73
c000ae6d:	74 4e                	je     c000aebd <vsprintf+0x115>
c000ae6f:	3c 78                	cmp    al,0x78
c000ae71:	74 67                	je     c000aeda <vsprintf+0x132>
c000ae73:	3c 70                	cmp    al,0x70
c000ae75:	75 7d                	jne    c000aef4 <vsprintf+0x14c>
c000ae77:	eb 26                	jmp    c000ae9f <vsprintf+0xf7>
c000ae79:	c6 03 25             	mov    BYTE PTR [ebx],0x25
c000ae7c:	43                   	inc    ebx
c000ae7d:	eb 75                	jmp    c000aef4 <vsprintf+0x14c>
c000ae7f:	8b 06                	mov    eax,DWORD PTR [esi]
c000ae81:	83 c6 04             	add    esi,0x4
c000ae84:	88 03                	mov    BYTE PTR [ebx],al
c000ae86:	43                   	inc    ebx
c000ae87:	eb 6b                	jmp    c000aef4 <vsprintf+0x14c>
c000ae89:	8d 46 04             	lea    eax,[esi+0x4]
c000ae8c:	89 45 b4             	mov    DWORD PTR [ebp-0x4c],eax
c000ae8f:	50                   	push   eax
c000ae90:	6a 0a                	push   0xa
c000ae92:	eb 4f                	jmp    c000aee3 <vsprintf+0x13b>
c000ae94:	8d 46 04             	lea    eax,[esi+0x4]
c000ae97:	89 45 b4             	mov    DWORD PTR [ebp-0x4c],eax
c000ae9a:	50                   	push   eax
c000ae9b:	6a 08                	push   0x8
c000ae9d:	eb 44                	jmp    c000aee3 <vsprintf+0x13b>
c000ae9f:	8d 46 04             	lea    eax,[esi+0x4]
c000aea2:	89 45 b4             	mov    DWORD PTR [ebp-0x4c],eax
c000aea5:	50                   	push   eax
c000aea6:	6a 10                	push   0x10
c000aea8:	8d 45 c5             	lea    eax,[ebp-0x3b]
c000aeab:	50                   	push   eax
c000aeac:	ff 36                	push   DWORD PTR [esi]
c000aeae:	c6 45 c3 30          	mov    BYTE PTR [ebp-0x3d],0x30
c000aeb2:	c6 45 c4 78          	mov    BYTE PTR [ebp-0x3c],0x78
c000aeb6:	e8 d8 fb ff ff       	call   c000aa93 <utoa>
c000aebb:	eb 31                	jmp    c000aeee <vsprintf+0x146>
c000aebd:	8d 46 04             	lea    eax,[esi+0x4]
c000aec0:	8b 36                	mov    esi,DWORD PTR [esi]
c000aec2:	51                   	push   ecx
c000aec3:	51                   	push   ecx
c000aec4:	56                   	push   esi
c000aec5:	53                   	push   ebx
c000aec6:	89 45 b4             	mov    DWORD PTR [ebp-0x4c],eax
c000aec9:	e8 ad fe ff ff       	call   c000ad7b <strcpy>
c000aece:	89 34 24             	mov    DWORD PTR [esp],esi
c000aed1:	e8 bf fe ff ff       	call   c000ad95 <strlen>
c000aed6:	01 c3                	add    ebx,eax
c000aed8:	eb 14                	jmp    c000aeee <vsprintf+0x146>
c000aeda:	8d 46 04             	lea    eax,[esi+0x4]
c000aedd:	52                   	push   edx
c000aede:	6a 10                	push   0x10
c000aee0:	89 45 b4             	mov    DWORD PTR [ebp-0x4c],eax
c000aee3:	8d 45 c3             	lea    eax,[ebp-0x3d]
c000aee6:	50                   	push   eax
c000aee7:	ff 36                	push   DWORD PTR [esi]
c000aee9:	e8 46 fb ff ff       	call   c000aa34 <itoa>
c000aeee:	8b 75 b4             	mov    esi,DWORD PTR [ebp-0x4c]
c000aef1:	83 c4 10             	add    esp,0x10
c000aef4:	83 ec 0c             	sub    esp,0xc
c000aef7:	8d 45 c3             	lea    eax,[ebp-0x3d]
c000aefa:	50                   	push   eax
c000aefb:	e8 95 fe ff ff       	call   c000ad95 <strlen>
c000af00:	8b 55 ac             	mov    edx,DWORD PTR [ebp-0x54]
c000af03:	83 c4 10             	add    esp,0x10
c000af06:	8a 4d b0             	mov    cl,BYTE PTR [ebp-0x50]
c000af09:	29 c2                	sub    edx,eax
c000af0b:	eb 10                	jmp    c000af1d <vsprintf+0x175>
c000af0d:	83 7d a8 01          	cmp    DWORD PTR [ebp-0x58],0x1
c000af11:	19 c0                	sbb    eax,eax
c000af13:	4a                   	dec    edx
c000af14:	83 e0 f0             	and    eax,0xfffffff0
c000af17:	83 c0 30             	add    eax,0x30
c000af1a:	88 03                	mov    BYTE PTR [ebx],al
c000af1c:	43                   	inc    ebx
c000af1d:	85 d2                	test   edx,edx
c000af1f:	7e 04                	jle    c000af25 <vsprintf+0x17d>
c000af21:	84 c9                	test   cl,cl
c000af23:	75 e8                	jne    c000af0d <vsprintf+0x165>
c000af25:	50                   	push   eax
c000af26:	50                   	push   eax
c000af27:	8d 45 c3             	lea    eax,[ebp-0x3d]
c000af2a:	50                   	push   eax
c000af2b:	53                   	push   ebx
c000af2c:	89 55 a4             	mov    DWORD PTR [ebp-0x5c],edx
c000af2f:	e8 47 fe ff ff       	call   c000ad7b <strcpy>
c000af34:	8d 45 c3             	lea    eax,[ebp-0x3d]
c000af37:	89 04 24             	mov    DWORD PTR [esp],eax
c000af3a:	e8 56 fe ff ff       	call   c000ad95 <strlen>
c000af3f:	83 c4 10             	add    esp,0x10
c000af42:	8b 55 a4             	mov    edx,DWORD PTR [ebp-0x5c]
c000af45:	01 c3                	add    ebx,eax
c000af47:	eb 05                	jmp    c000af4e <vsprintf+0x1a6>
c000af49:	c6 03 20             	mov    BYTE PTR [ebx],0x20
c000af4c:	4a                   	dec    edx
c000af4d:	43                   	inc    ebx
c000af4e:	85 d2                	test   edx,edx
c000af50:	7e 06                	jle    c000af58 <vsprintf+0x1b0>
c000af52:	83 7d b0 00          	cmp    DWORD PTR [ebp-0x50],0x0
c000af56:	74 f1                	je     c000af49 <vsprintf+0x1a1>
c000af58:	47                   	inc    edi
c000af59:	8a 07                	mov    al,BYTE PTR [edi]
c000af5b:	84 c0                	test   al,al
c000af5d:	0f 85 5c fe ff ff    	jne    c000adbf <vsprintf+0x17>
c000af63:	83 ec 0c             	sub    esp,0xc
c000af66:	ff 75 08             	push   DWORD PTR [ebp+0x8]
c000af69:	e8 27 fe ff ff       	call   c000ad95 <strlen>
c000af6e:	8d 65 f4             	lea    esp,[ebp-0xc]
c000af71:	5b                   	pop    ebx
c000af72:	5e                   	pop    esi
c000af73:	5f                   	pop    edi
c000af74:	5d                   	pop    ebp
c000af75:	c3                   	ret    

c000af76 <sprintf>:
c000af76:	55                   	push   ebp
c000af77:	89 e5                	mov    ebp,esp
c000af79:	83 ec 0c             	sub    esp,0xc
c000af7c:	8d 45 10             	lea    eax,[ebp+0x10]
c000af7f:	50                   	push   eax
c000af80:	ff 75 0c             	push   DWORD PTR [ebp+0xc]
c000af83:	ff 75 08             	push   DWORD PTR [ebp+0x8]
c000af86:	e8 1d fe ff ff       	call   c000ada8 <vsprintf>
c000af8b:	c9                   	leave  
c000af8c:	c3                   	ret    
c000af8d:	00 00                	add    BYTE PTR [eax],al
	...

c000af90 <RectangleFill>:
c000af90:	55                   	push   ebp
c000af91:	89 e5                	mov    ebp,esp
c000af93:	57                   	push   edi
c000af94:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
c000af97:	56                   	push   esi
c000af98:	8b 45 14             	mov    eax,DWORD PTR [ebp+0x14]
c000af9b:	53                   	push   ebx
c000af9c:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c000af9f:	83 3d 14 7c 00 00 01 	cmp    DWORD PTR ds:0x7c14,0x1
c000afa6:	75 30                	jne    c000afd8 <RectangleFill+0x48>
c000afa8:	89 ca                	mov    edx,ecx
c000afaa:	81 e2 00 00 00 ff    	and    edx,0xff000000
c000afb0:	81 fa 00 00 00 ff    	cmp    edx,0xff000000
c000afb6:	75 16                	jne    c000afce <RectangleFill+0x3e>
c000afb8:	eb 1e                	jmp    c000afd8 <RectangleFill+0x48>
c000afba:	8b 7b 04             	mov    edi,DWORD PTR [ebx+0x4]
c000afbd:	8b 33                	mov    esi,DWORD PTR [ebx]
c000afbf:	0f af f8             	imul   edi,eax
c000afc2:	01 d7                	add    edi,edx
c000afc4:	42                   	inc    edx
c000afc5:	89 0c be             	mov    DWORD PTR [esi+edi*4],ecx
c000afc8:	3b 55 18             	cmp    edx,DWORD PTR [ebp+0x18]
c000afcb:	7e ed                	jle    c000afba <RectangleFill+0x2a>
c000afcd:	40                   	inc    eax
c000afce:	3b 45 1c             	cmp    eax,DWORD PTR [ebp+0x1c]
c000afd1:	7f 05                	jg     c000afd8 <RectangleFill+0x48>
c000afd3:	8b 55 10             	mov    edx,DWORD PTR [ebp+0x10]
c000afd6:	eb f0                	jmp    c000afc8 <RectangleFill+0x38>
c000afd8:	5b                   	pop    ebx
c000afd9:	5e                   	pop    esi
c000afda:	5f                   	pop    edi
c000afdb:	5d                   	pop    ebp
c000afdc:	c3                   	ret    

c000afdd <init_Rectangle>:
c000afdd:	55                   	push   ebp
c000afde:	89 e5                	mov    ebp,esp
c000afe0:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c000afe3:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
c000afe6:	89 10                	mov    DWORD PTR [eax],edx
c000afe8:	8b 55 10             	mov    edx,DWORD PTR [ebp+0x10]
c000afeb:	89 50 04             	mov    DWORD PTR [eax+0x4],edx
c000afee:	8b 55 14             	mov    edx,DWORD PTR [ebp+0x14]
c000aff1:	89 50 08             	mov    DWORD PTR [eax+0x8],edx
c000aff4:	8b 55 18             	mov    edx,DWORD PTR [ebp+0x18]
c000aff7:	89 50 0c             	mov    DWORD PTR [eax+0xc],edx
c000affa:	8b 55 1c             	mov    edx,DWORD PTR [ebp+0x1c]
c000affd:	89 50 10             	mov    DWORD PTR [eax+0x10],edx
c000b000:	5d                   	pop    ebp
c000b001:	c3                   	ret    

c000b002 <init_screen>:
c000b002:	55                   	push   ebp
c000b003:	89 e5                	mov    ebp,esp
c000b005:	53                   	push   ebx
c000b006:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c000b009:	83 3d 14 7c 00 00 01 	cmp    DWORD PTR ds:0x7c14,0x1
c000b010:	0f 85 df 00 00 00    	jne    c000b0f5 <init_screen+0xf3>
c000b016:	a1 28 7c 00 00       	mov    eax,ds:0x7c28
c000b01b:	8b 15 24 7c 00 00    	mov    edx,DWORD PTR ds:0x7c24
c000b021:	c7 03 00 00 00 e0    	mov    DWORD PTR [ebx],0xe0000000
c000b027:	c7 43 0c 00 00 00 00 	mov    DWORD PTR [ebx+0xc],0x0
c000b02e:	89 43 08             	mov    DWORD PTR [ebx+0x8],eax
c000b031:	89 53 04             	mov    DWORD PTR [ebx+0x4],edx
c000b034:	c7 43 10 00 00 00 00 	mov    DWORD PTR [ebx+0x10],0x0
c000b03b:	a1 28 7c 00 00       	mov    eax,ds:0x7c28
c000b040:	83 e8 33             	sub    eax,0x33
c000b043:	50                   	push   eax
c000b044:	a1 24 7c 00 00       	mov    eax,ds:0x7c24
c000b049:	48                   	dec    eax
c000b04a:	50                   	push   eax
c000b04b:	6a 00                	push   0x0
c000b04d:	6a 00                	push   0x0
c000b04f:	68 84 84 00 00       	push   0x8484
c000b054:	53                   	push   ebx
c000b055:	e8 36 ff ff ff       	call   c000af90 <RectangleFill>
c000b05a:	a1 28 7c 00 00       	mov    eax,ds:0x7c28
c000b05f:	8d 50 ff             	lea    edx,[eax-0x1]
c000b062:	83 e8 33             	sub    eax,0x33
c000b065:	52                   	push   edx
c000b066:	8b 15 24 7c 00 00    	mov    edx,DWORD PTR ds:0x7c24
c000b06c:	4a                   	dec    edx
c000b06d:	52                   	push   edx
c000b06e:	50                   	push   eax
c000b06f:	6a 00                	push   0x0
c000b071:	68 c6 c6 c6 00       	push   0xc6c6c6
c000b076:	53                   	push   ebx
c000b077:	e8 14 ff ff ff       	call   c000af90 <RectangleFill>
c000b07c:	a1 28 7c 00 00       	mov    eax,ds:0x7c28
c000b081:	83 c4 30             	add    esp,0x30
c000b084:	8d 50 f8             	lea    edx,[eax-0x8]
c000b087:	83 e8 26             	sub    eax,0x26
c000b08a:	52                   	push   edx
c000b08b:	6a 2b                	push   0x2b
c000b08d:	50                   	push   eax
c000b08e:	6a 0d                	push   0xd
c000b090:	68 84 84 84 00       	push   0x848484
c000b095:	53                   	push   ebx
c000b096:	e8 f5 fe ff ff       	call   c000af90 <RectangleFill>
c000b09b:	a1 28 7c 00 00       	mov    eax,ds:0x7c28
c000b0a0:	8d 50 f5             	lea    edx,[eax-0xb]
c000b0a3:	83 e8 29             	sub    eax,0x29
c000b0a6:	52                   	push   edx
c000b0a7:	6a 28                	push   0x28
c000b0a9:	50                   	push   eax
c000b0aa:	6a 0a                	push   0xa
c000b0ac:	68 ff ff ff 00       	push   0xffffff
c000b0b1:	53                   	push   ebx
c000b0b2:	e8 d9 fe ff ff       	call   c000af90 <RectangleFill>
c000b0b7:	a1 28 7c 00 00       	mov    eax,ds:0x7c28
c000b0bc:	83 c4 30             	add    esp,0x30
c000b0bf:	8d 50 f8             	lea    edx,[eax-0x8]
c000b0c2:	83 e8 26             	sub    eax,0x26
c000b0c5:	52                   	push   edx
c000b0c6:	6a 3a                	push   0x3a
c000b0c8:	50                   	push   eax
c000b0c9:	6a 35                	push   0x35
c000b0cb:	68 84 84 84 00       	push   0x848484
c000b0d0:	53                   	push   ebx
c000b0d1:	e8 ba fe ff ff       	call   c000af90 <RectangleFill>
c000b0d6:	a1 28 7c 00 00       	mov    eax,ds:0x7c28
c000b0db:	8d 50 f5             	lea    edx,[eax-0xb]
c000b0de:	83 e8 29             	sub    eax,0x29
c000b0e1:	52                   	push   edx
c000b0e2:	6a 37                	push   0x37
c000b0e4:	50                   	push   eax
c000b0e5:	6a 32                	push   0x32
c000b0e7:	68 ff ff ff 00       	push   0xffffff
c000b0ec:	53                   	push   ebx
c000b0ed:	e8 9e fe ff ff       	call   c000af90 <RectangleFill>
c000b0f2:	83 c4 30             	add    esp,0x30
c000b0f5:	8b 5d fc             	mov    ebx,DWORD PTR [ebp-0x4]
c000b0f8:	c9                   	leave  
c000b0f9:	c3                   	ret    

c000b0fa <put_char_graphic>:
c000b0fa:	55                   	push   ebp
c000b0fb:	89 e5                	mov    ebp,esp
c000b0fd:	57                   	push   edi
c000b0fe:	0f be 7d 18          	movsx  edi,BYTE PTR [ebp+0x18]
c000b102:	56                   	push   esi
c000b103:	8b 55 14             	mov    edx,DWORD PTR [ebp+0x14]
c000b106:	53                   	push   ebx
c000b107:	8b 75 08             	mov    esi,DWORD PTR [ebp+0x8]
c000b10a:	c1 e7 04             	shl    edi,0x4
c000b10d:	81 c7 88 b2 00 c0    	add    edi,0xc000b288
c000b113:	83 3d 14 7c 00 00 01 	cmp    DWORD PTR ds:0x7c14,0x1
c000b11a:	75 5d                	jne    c000b179 <put_char_graphic+0x7f>
c000b11c:	31 db                	xor    ebx,ebx
c000b11e:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
c000b121:	8b 0e                	mov    ecx,DWORD PTR [esi]
c000b123:	01 d8                	add    eax,ebx
c000b125:	0f af 46 04          	imul   eax,DWORD PTR [esi+0x4]
c000b129:	03 45 0c             	add    eax,DWORD PTR [ebp+0xc]
c000b12c:	8d 04 81             	lea    eax,[ecx+eax*4]
c000b12f:	8a 0c 1f             	mov    cl,BYTE PTR [edi+ebx*1]
c000b132:	84 c9                	test   cl,cl
c000b134:	79 02                	jns    c000b138 <put_char_graphic+0x3e>
c000b136:	89 10                	mov    DWORD PTR [eax],edx
c000b138:	0f b6 c9             	movzx  ecx,cl
c000b13b:	f6 c1 40             	test   cl,0x40
c000b13e:	74 03                	je     c000b143 <put_char_graphic+0x49>
c000b140:	89 50 04             	mov    DWORD PTR [eax+0x4],edx
c000b143:	f6 c1 20             	test   cl,0x20
c000b146:	74 03                	je     c000b14b <put_char_graphic+0x51>
c000b148:	89 50 08             	mov    DWORD PTR [eax+0x8],edx
c000b14b:	f6 c1 10             	test   cl,0x10
c000b14e:	74 03                	je     c000b153 <put_char_graphic+0x59>
c000b150:	89 50 0c             	mov    DWORD PTR [eax+0xc],edx
c000b153:	f6 c1 08             	test   cl,0x8
c000b156:	74 03                	je     c000b15b <put_char_graphic+0x61>
c000b158:	89 50 10             	mov    DWORD PTR [eax+0x10],edx
c000b15b:	f6 c1 04             	test   cl,0x4
c000b15e:	74 03                	je     c000b163 <put_char_graphic+0x69>
c000b160:	89 50 14             	mov    DWORD PTR [eax+0x14],edx
c000b163:	f6 c1 02             	test   cl,0x2
c000b166:	74 03                	je     c000b16b <put_char_graphic+0x71>
c000b168:	89 50 18             	mov    DWORD PTR [eax+0x18],edx
c000b16b:	80 e1 01             	and    cl,0x1
c000b16e:	74 03                	je     c000b173 <put_char_graphic+0x79>
c000b170:	89 50 1c             	mov    DWORD PTR [eax+0x1c],edx
c000b173:	43                   	inc    ebx
c000b174:	83 fb 10             	cmp    ebx,0x10
c000b177:	75 a5                	jne    c000b11e <put_char_graphic+0x24>
c000b179:	5b                   	pop    ebx
c000b17a:	5e                   	pop    esi
c000b17b:	5f                   	pop    edi
c000b17c:	5d                   	pop    ebp
c000b17d:	c3                   	ret    

c000b17e <put_str_graphic>:
c000b17e:	55                   	push   ebp
c000b17f:	89 e5                	mov    ebp,esp
c000b181:	57                   	push   edi
c000b182:	8b 7d 18             	mov    edi,DWORD PTR [ebp+0x18]
c000b185:	56                   	push   esi
c000b186:	8b 75 10             	mov    esi,DWORD PTR [ebp+0x10]
c000b189:	53                   	push   ebx
c000b18a:	8b 5d 0c             	mov    ebx,DWORD PTR [ebp+0xc]
c000b18d:	eb 24                	jmp    c000b1b3 <put_str_graphic+0x35>
c000b18f:	3c 0a                	cmp    al,0xa
c000b191:	75 08                	jne    c000b19b <put_str_graphic+0x1d>
c000b193:	83 c6 10             	add    esi,0x10
c000b196:	8b 5d 0c             	mov    ebx,DWORD PTR [ebp+0xc]
c000b199:	eb 17                	jmp    c000b1b2 <put_str_graphic+0x34>
c000b19b:	0f be c0             	movsx  eax,al
c000b19e:	50                   	push   eax
c000b19f:	ff 75 14             	push   DWORD PTR [ebp+0x14]
c000b1a2:	56                   	push   esi
c000b1a3:	53                   	push   ebx
c000b1a4:	83 c3 08             	add    ebx,0x8
c000b1a7:	ff 75 08             	push   DWORD PTR [ebp+0x8]
c000b1aa:	e8 4b ff ff ff       	call   c000b0fa <put_char_graphic>
c000b1af:	83 c4 14             	add    esp,0x14
c000b1b2:	47                   	inc    edi
c000b1b3:	8a 07                	mov    al,BYTE PTR [edi]
c000b1b5:	84 c0                	test   al,al
c000b1b7:	75 d6                	jne    c000b18f <put_str_graphic+0x11>
c000b1b9:	8d 65 f4             	lea    esp,[ebp-0xc]
c000b1bc:	5b                   	pop    ebx
c000b1bd:	5e                   	pop    esi
c000b1be:	5f                   	pop    edi
c000b1bf:	5d                   	pop    ebp
c000b1c0:	c3                   	ret    

Disassembly of section .data:

c000b1c8 <_data>:
c000b1c8:	c4 84 00 c0 e7 84 00 	les    eax,FWORD PTR [eax+eax*1+0x84e7c0]
c000b1cf:	c0 0a 85             	ror    BYTE PTR [edx],0x85
c000b1d2:	00 c0                	add    al,al
c000b1d4:	2d 85 00 c0 50       	sub    eax,0x50c00085
c000b1d9:	85 00                	test   DWORD PTR [eax],eax
c000b1db:	c0                   	(bad)  
c000b1dc:	73 85                	jae    c000b163 <put_char_graphic+0x69>
c000b1de:	00 c0                	add    al,al
c000b1e0:	96                   	xchg   esi,eax
c000b1e1:	85 00                	test   DWORD PTR [eax],eax
c000b1e3:	c0 b9 85 00 c0 dc 85 	sar    BYTE PTR [ecx-0x233fff7b],0x85
c000b1ea:	00 c0                	add    al,al
c000b1ec:	fb                   	sti    
c000b1ed:	85 00                	test   DWORD PTR [eax],eax
c000b1ef:	c0 1e 86             	rcr    BYTE PTR [esi],0x86
c000b1f2:	00 c0                	add    al,al
c000b1f4:	3d 86 00 c0 5c       	cmp    eax,0x5cc00086
c000b1f9:	86 00                	xchg   BYTE PTR [eax],al
c000b1fb:	c0 7f 86 00          	sar    BYTE PTR [edi-0x7a],0x0
c000b1ff:	c0 9e 86 00 c0 bd 86 	rcr    BYTE PTR [esi-0x423fff7a],0x86
c000b206:	00 c0                	add    al,al
c000b208:	e0 86                	loopne c000b190 <put_str_graphic+0x12>
c000b20a:	00 c0                	add    al,al
c000b20c:	03 87 00 c0 22 87    	add    eax,DWORD PTR [edi-0x78dd4000]
c000b212:	00 c0                	add    al,al
c000b214:	45                   	inc    ebp
c000b215:	87 00                	xchg   DWORD PTR [eax],eax
c000b217:	c0 68 87 00          	shr    BYTE PTR [eax-0x79],0x0
c000b21b:	c0 8b 87 00 c0 ae 87 	ror    BYTE PTR [ebx-0x513fff79],0x87
c000b222:	00 c0                	add    al,al
c000b224:	d1 87 00 c0 f4 87    	rol    DWORD PTR [edi-0x780b4000],1
c000b22a:	00 c0                	add    al,al
c000b22c:	13 88 00 c0 36 88    	adc    ecx,DWORD PTR [eax-0x77c94000]
c000b232:	00 c0                	add    al,al
c000b234:	55                   	push   ebp
c000b235:	88 00                	mov    BYTE PTR [eax],al
c000b237:	c0                   	(bad)  
c000b238:	74 88                	je     c000b1c2 <_etext+0x1>
c000b23a:	00 c0                	add    al,al
c000b23c:	97                   	xchg   edi,eax
c000b23d:	88 00                	mov    BYTE PTR [eax],al
c000b23f:	c0                   	(bad)  
c000b240:	b6 88                	mov    dh,0x88
c000b242:	00 c0                	add    al,al
c000b244:	d5 88                	aad    0x88
c000b246:	00 c0                	add    al,al
c000b248:	f8                   	clc    
c000b249:	88 00                	mov    BYTE PTR [eax],al
c000b24b:	c0 1b 89             	rcr    BYTE PTR [ebx],0x89
c000b24e:	00 c0                	add    al,al
c000b250:	3e 89 00             	mov    DWORD PTR ds:[eax],eax
c000b253:	c0 61 89 00          	shl    BYTE PTR [ecx-0x77],0x0
c000b257:	c0 84 89 00 c0 a7 89 	rol    BYTE PTR [ecx+ecx*4-0x76584000],0x0
c000b25e:	00 
c000b25f:	c0 ca 89             	ror    dl,0x89
c000b262:	00 c0                	add    al,al
c000b264:	ed                   	in     eax,dx
c000b265:	89 00                	mov    DWORD PTR [eax],eax
c000b267:	c0 10 8a             	rcl    BYTE PTR [eax],0x8a
c000b26a:	00 c0                	add    al,al
c000b26c:	33 8a 00 c0 56 8a    	xor    ecx,DWORD PTR [edx-0x75a94000]
c000b272:	00 c0                	add    al,al
c000b274:	79 8a                	jns    c000b200 <_data+0x38>
c000b276:	00 c0                	add    al,al
c000b278:	9c                   	pushf  
c000b279:	8a 00                	mov    al,BYTE PTR [eax]
c000b27b:	c0 bf 8a 00 c0 e2 8a 	sar    BYTE PTR [edi-0x1d3fff76],0x8a
c000b282:	00 c0                	add    al,al
c000b284:	05 8b 00 c0 00       	add    eax,0xc0008b

c000b288 <PKnFont>:
	...
c000b498:	00 10                	add    BYTE PTR [eax],dl
c000b49a:	10 10                	adc    BYTE PTR [eax],dl
c000b49c:	10 10                	adc    BYTE PTR [eax],dl
c000b49e:	10 10                	adc    BYTE PTR [eax],dl
c000b4a0:	10 10                	adc    BYTE PTR [eax],dl
c000b4a2:	00 00                	add    BYTE PTR [eax],al
c000b4a4:	10 10                	adc    BYTE PTR [eax],dl
c000b4a6:	00 00                	add    BYTE PTR [eax],al
c000b4a8:	28 28                	sub    BYTE PTR [eax],ch
c000b4aa:	28 00                	sub    BYTE PTR [eax],al
	...
c000b4b8:	00 44 44 44          	add    BYTE PTR [esp+eax*2+0x44],al
c000b4bc:	fe 44 44 44          	inc    BYTE PTR [esp+eax*2+0x44]
c000b4c0:	44                   	inc    esp
c000b4c1:	44                   	inc    esp
c000b4c2:	fe 44 44 44          	inc    BYTE PTR [esp+eax*2+0x44]
c000b4c6:	00 00                	add    BYTE PTR [eax],al
c000b4c8:	10 3a                	adc    BYTE PTR [edx],bh
c000b4ca:	56                   	push   esi
c000b4cb:	92                   	xchg   edx,eax
c000b4cc:	92                   	xchg   edx,eax
c000b4cd:	90                   	nop
c000b4ce:	50                   	push   eax
c000b4cf:	38 14 12             	cmp    BYTE PTR [edx+edx*1],dl
c000b4d2:	92                   	xchg   edx,eax
c000b4d3:	92                   	xchg   edx,eax
c000b4d4:	d4 b8                	aam    0xb8
c000b4d6:	10 10                	adc    BYTE PTR [eax],dl
c000b4d8:	62 92 94 94 68 08    	bound  edx,QWORD PTR [edx+0x8689494]
c000b4de:	10 10                	adc    BYTE PTR [eax],dl
c000b4e0:	20 2c 52             	and    BYTE PTR [edx+edx*2],ch
c000b4e3:	52                   	push   edx
c000b4e4:	92                   	xchg   edx,eax
c000b4e5:	8c 00                	mov    WORD PTR [eax],es
c000b4e7:	00 00                	add    BYTE PTR [eax],al
c000b4e9:	70 88                	jo     c000b473 <PKnFont+0x1eb>
c000b4eb:	88 88 90 60 47 a2    	mov    BYTE PTR [eax-0x5db89f70],cl
c000b4f1:	92                   	xchg   edx,eax
c000b4f2:	8a 84 46 39 00 00 04 	mov    al,BYTE PTR [esi+eax*2+0x4000039]
c000b4f9:	08 10                	or     BYTE PTR [eax],dl
	...
c000b507:	00 02                	add    BYTE PTR [edx],al
c000b509:	04 08                	add    al,0x8
c000b50b:	08 10                	or     BYTE PTR [eax],dl
c000b50d:	10 10                	adc    BYTE PTR [eax],dl
c000b50f:	10 10                	adc    BYTE PTR [eax],dl
c000b511:	10 10                	adc    BYTE PTR [eax],dl
c000b513:	08 08                	or     BYTE PTR [eax],cl
c000b515:	04 02                	add    al,0x2
c000b517:	00 80 40 20 20 10    	add    BYTE PTR [eax+0x10202040],al
c000b51d:	10 10                	adc    BYTE PTR [eax],dl
c000b51f:	10 10                	adc    BYTE PTR [eax],dl
c000b521:	10 10                	adc    BYTE PTR [eax],dl
c000b523:	20 20                	and    BYTE PTR [eax],ah
c000b525:	40                   	inc    eax
c000b526:	80 00 00             	add    BYTE PTR [eax],0x0
c000b529:	00 00                	add    BYTE PTR [eax],al
c000b52b:	00 00                	add    BYTE PTR [eax],al
c000b52d:	10 92 54 38 54 92    	adc    BYTE PTR [edx-0x6dabc7ac],dl
c000b533:	10 00                	adc    BYTE PTR [eax],al
	...
c000b53d:	10 10                	adc    BYTE PTR [eax],dl
c000b53f:	10 fe                	adc    dh,bh
c000b541:	10 10                	adc    BYTE PTR [eax],dl
c000b543:	10 00                	adc    BYTE PTR [eax],al
	...
c000b551:	00 00                	add    BYTE PTR [eax],al
c000b553:	18 18                	sbb    BYTE PTR [eax],bl
c000b555:	08 08                	or     BYTE PTR [eax],cl
c000b557:	10 00                	adc    BYTE PTR [eax],al
c000b559:	00 00                	add    BYTE PTR [eax],al
c000b55b:	00 00                	add    BYTE PTR [eax],al
c000b55d:	00 00                	add    BYTE PTR [eax],al
c000b55f:	00 fe                	add    dh,bh
	...
c000b571:	00 00                	add    BYTE PTR [eax],al
c000b573:	00 18                	add    BYTE PTR [eax],bl
c000b575:	18 00                	sbb    BYTE PTR [eax],al
c000b577:	00 02                	add    BYTE PTR [edx],al
c000b579:	02 04 04             	add    al,BYTE PTR [esp+eax*1]
c000b57c:	08 08                	or     BYTE PTR [eax],cl
c000b57e:	08 10                	or     BYTE PTR [eax],dl
c000b580:	10 20                	adc    BYTE PTR [eax],ah
c000b582:	20 40 40             	and    BYTE PTR [eax+0x40],al
c000b585:	40                   	inc    eax
c000b586:	80 80 00 18 24 24 42 	add    BYTE PTR [eax+0x24241800],0x42
c000b58d:	42                   	inc    edx
c000b58e:	42                   	inc    edx
c000b58f:	42                   	inc    edx
c000b590:	42                   	inc    edx
c000b591:	42                   	inc    edx
c000b592:	42                   	inc    edx
c000b593:	24 24                	and    al,0x24
c000b595:	18 00                	sbb    BYTE PTR [eax],al
c000b597:	00 00                	add    BYTE PTR [eax],al
c000b599:	08 18                	or     BYTE PTR [eax],bl
c000b59b:	28 08                	sub    BYTE PTR [eax],cl
c000b59d:	08 08                	or     BYTE PTR [eax],cl
c000b59f:	08 08                	or     BYTE PTR [eax],cl
c000b5a1:	08 08                	or     BYTE PTR [eax],cl
c000b5a3:	08 08                	or     BYTE PTR [eax],cl
c000b5a5:	3e 00 00             	add    BYTE PTR ds:[eax],al
c000b5a8:	00 18                	add    BYTE PTR [eax],bl
c000b5aa:	24 42                	and    al,0x42
c000b5ac:	42                   	inc    edx
c000b5ad:	02 04 08             	add    al,BYTE PTR [eax+ecx*1]
c000b5b0:	10 20                	adc    BYTE PTR [eax],ah
c000b5b2:	20 40 40             	and    BYTE PTR [eax+0x40],al
c000b5b5:	7e 00                	jle    c000b5b7 <PKnFont+0x32f>
c000b5b7:	00 00                	add    BYTE PTR [eax],al
c000b5b9:	18 24 42             	sbb    BYTE PTR [edx+eax*2],ah
c000b5bc:	02 02                	add    al,BYTE PTR [edx]
c000b5be:	04 18                	add    al,0x18
c000b5c0:	04 02                	add    al,0x2
c000b5c2:	02 42 24             	add    al,BYTE PTR [edx+0x24]
c000b5c5:	18 00                	sbb    BYTE PTR [eax],al
c000b5c7:	00 00                	add    BYTE PTR [eax],al
c000b5c9:	0c 0c                	or     al,0xc
c000b5cb:	0c 14                	or     al,0x14
c000b5cd:	14 14                	adc    al,0x14
c000b5cf:	24 24                	and    al,0x24
c000b5d1:	44                   	inc    esp
c000b5d2:	7e 04                	jle    c000b5d8 <PKnFont+0x350>
c000b5d4:	04 1e                	add    al,0x1e
c000b5d6:	00 00                	add    BYTE PTR [eax],al
c000b5d8:	00 7c 40 40          	add    BYTE PTR [eax+eax*2+0x40],bh
c000b5dc:	40                   	inc    eax
c000b5dd:	58                   	pop    eax
c000b5de:	64 02 02             	add    al,BYTE PTR fs:[edx]
c000b5e1:	02 02                	add    al,BYTE PTR [edx]
c000b5e3:	42                   	inc    edx
c000b5e4:	24 18                	and    al,0x18
c000b5e6:	00 00                	add    BYTE PTR [eax],al
c000b5e8:	00 18                	add    BYTE PTR [eax],bl
c000b5ea:	24 42                	and    al,0x42
c000b5ec:	40                   	inc    eax
c000b5ed:	58                   	pop    eax
c000b5ee:	64 42                	fs inc edx
c000b5f0:	42                   	inc    edx
c000b5f1:	42                   	inc    edx
c000b5f2:	42                   	inc    edx
c000b5f3:	42                   	inc    edx
c000b5f4:	24 18                	and    al,0x18
c000b5f6:	00 00                	add    BYTE PTR [eax],al
c000b5f8:	00 7e 42             	add    BYTE PTR [esi+0x42],bh
c000b5fb:	42                   	inc    edx
c000b5fc:	04 04                	add    al,0x4
c000b5fe:	08 08                	or     BYTE PTR [eax],cl
c000b600:	08 10                	or     BYTE PTR [eax],dl
c000b602:	10 10                	adc    BYTE PTR [eax],dl
c000b604:	10 38                	adc    BYTE PTR [eax],bh
c000b606:	00 00                	add    BYTE PTR [eax],al
c000b608:	00 18                	add    BYTE PTR [eax],bl
c000b60a:	24 42                	and    al,0x42
c000b60c:	42                   	inc    edx
c000b60d:	42                   	inc    edx
c000b60e:	24 18                	and    al,0x18
c000b610:	24 42                	and    al,0x42
c000b612:	42                   	inc    edx
c000b613:	42                   	inc    edx
c000b614:	24 18                	and    al,0x18
c000b616:	00 00                	add    BYTE PTR [eax],al
c000b618:	00 18                	add    BYTE PTR [eax],bl
c000b61a:	24 42                	and    al,0x42
c000b61c:	42                   	inc    edx
c000b61d:	42                   	inc    edx
c000b61e:	42                   	inc    edx
c000b61f:	42                   	inc    edx
c000b620:	26 1a 02             	sbb    al,BYTE PTR es:[edx]
c000b623:	42                   	inc    edx
c000b624:	24 18                	and    al,0x18
c000b626:	00 00                	add    BYTE PTR [eax],al
c000b628:	00 00                	add    BYTE PTR [eax],al
c000b62a:	00 00                	add    BYTE PTR [eax],al
c000b62c:	00 18                	add    BYTE PTR [eax],bl
c000b62e:	18 00                	sbb    BYTE PTR [eax],al
c000b630:	00 00                	add    BYTE PTR [eax],al
c000b632:	00 00                	add    BYTE PTR [eax],al
c000b634:	18 18                	sbb    BYTE PTR [eax],bl
c000b636:	00 00                	add    BYTE PTR [eax],al
c000b638:	00 00                	add    BYTE PTR [eax],al
c000b63a:	00 00                	add    BYTE PTR [eax],al
c000b63c:	00 18                	add    BYTE PTR [eax],bl
c000b63e:	18 00                	sbb    BYTE PTR [eax],al
c000b640:	00 00                	add    BYTE PTR [eax],al
c000b642:	00 18                	add    BYTE PTR [eax],bl
c000b644:	18 08                	sbb    BYTE PTR [eax],cl
c000b646:	08 10                	or     BYTE PTR [eax],dl
c000b648:	00 02                	add    BYTE PTR [edx],al
c000b64a:	04 08                	add    al,0x8
c000b64c:	10 20                	adc    BYTE PTR [eax],ah
c000b64e:	40                   	inc    eax
c000b64f:	80 80 40 20 10 08 04 	add    BYTE PTR [eax+0x8102040],0x4
c000b656:	02 00                	add    al,BYTE PTR [eax]
c000b658:	00 00                	add    BYTE PTR [eax],al
c000b65a:	00 00                	add    BYTE PTR [eax],al
c000b65c:	00 00                	add    BYTE PTR [eax],al
c000b65e:	fe 00                	inc    BYTE PTR [eax]
c000b660:	00 fe                	add    dh,bh
c000b662:	00 00                	add    BYTE PTR [eax],al
c000b664:	00 00                	add    BYTE PTR [eax],al
c000b666:	00 00                	add    BYTE PTR [eax],al
c000b668:	00 80 40 20 10 08    	add    BYTE PTR [eax+0x8102040],al
c000b66e:	04 02                	add    al,0x2
c000b670:	02 04 08             	add    al,BYTE PTR [eax+ecx*1]
c000b673:	10 20                	adc    BYTE PTR [eax],ah
c000b675:	40                   	inc    eax
c000b676:	80 00 00             	add    BYTE PTR [eax],0x0
c000b679:	38 44 82 82          	cmp    BYTE PTR [edx+eax*4-0x7e],al
c000b67d:	82                   	(bad)  
c000b67e:	04 08                	add    al,0x8
c000b680:	10 10                	adc    BYTE PTR [eax],dl
c000b682:	00 00                	add    BYTE PTR [eax],al
c000b684:	18 18                	sbb    BYTE PTR [eax],bl
c000b686:	00 00                	add    BYTE PTR [eax],al
c000b688:	00 38                	add    BYTE PTR [eax],bh
c000b68a:	44                   	inc    esp
c000b68b:	82                   	(bad)  
c000b68c:	9a aa aa aa aa aa 9c 	call   0x9caa:0xaaaaaaaa
c000b693:	80 46 38 00          	add    BYTE PTR [esi+0x38],0x0
c000b697:	00 00                	add    BYTE PTR [eax],al
c000b699:	18 18                	sbb    BYTE PTR [eax],bl
c000b69b:	18 18                	sbb    BYTE PTR [eax],bl
c000b69d:	24 24                	and    al,0x24
c000b69f:	24 24                	and    al,0x24
c000b6a1:	7e 42                	jle    c000b6e5 <PKnFont+0x45d>
c000b6a3:	42                   	inc    edx
c000b6a4:	42                   	inc    edx
c000b6a5:	e7 00                	out    0x0,eax
c000b6a7:	00 00                	add    BYTE PTR [eax],al
c000b6a9:	f0 48                	lock dec eax
c000b6ab:	44                   	inc    esp
c000b6ac:	44                   	inc    esp
c000b6ad:	44                   	inc    esp
c000b6ae:	48                   	dec    eax
c000b6af:	78 44                	js     c000b6f5 <PKnFont+0x46d>
c000b6b1:	42                   	inc    edx
c000b6b2:	42                   	inc    edx
c000b6b3:	42                   	inc    edx
c000b6b4:	44                   	inc    esp
c000b6b5:	f8                   	clc    
c000b6b6:	00 00                	add    BYTE PTR [eax],al
c000b6b8:	00 3a                	add    BYTE PTR [edx],bh
c000b6ba:	46                   	inc    esi
c000b6bb:	42                   	inc    edx
c000b6bc:	82                   	(bad)  
c000b6bd:	80 80 80 80 80 82 42 	add    BYTE PTR [eax-0x7d7f7f80],0x42
c000b6c4:	44                   	inc    esp
c000b6c5:	38 00                	cmp    BYTE PTR [eax],al
c000b6c7:	00 00                	add    BYTE PTR [eax],al
c000b6c9:	f8                   	clc    
c000b6ca:	44                   	inc    esp
c000b6cb:	44                   	inc    esp
c000b6cc:	42                   	inc    edx
c000b6cd:	42                   	inc    edx
c000b6ce:	42                   	inc    edx
c000b6cf:	42                   	inc    edx
c000b6d0:	42                   	inc    edx
c000b6d1:	42                   	inc    edx
c000b6d2:	42                   	inc    edx
c000b6d3:	44                   	inc    esp
c000b6d4:	44                   	inc    esp
c000b6d5:	f8                   	clc    
c000b6d6:	00 00                	add    BYTE PTR [eax],al
c000b6d8:	00 fe                	add    dh,bh
c000b6da:	42                   	inc    edx
c000b6db:	42                   	inc    edx
c000b6dc:	40                   	inc    eax
c000b6dd:	40                   	inc    eax
c000b6de:	44                   	inc    esp
c000b6df:	7c 44                	jl     c000b725 <PKnFont+0x49d>
c000b6e1:	40                   	inc    eax
c000b6e2:	40                   	inc    eax
c000b6e3:	42                   	inc    edx
c000b6e4:	42                   	inc    edx
c000b6e5:	fe 00                	inc    BYTE PTR [eax]
c000b6e7:	00 00                	add    BYTE PTR [eax],al
c000b6e9:	fe 42 42             	inc    BYTE PTR [edx+0x42]
c000b6ec:	40                   	inc    eax
c000b6ed:	40                   	inc    eax
c000b6ee:	44                   	inc    esp
c000b6ef:	7c 44                	jl     c000b735 <PKnFont+0x4ad>
c000b6f1:	44                   	inc    esp
c000b6f2:	40                   	inc    eax
c000b6f3:	40                   	inc    eax
c000b6f4:	40                   	inc    eax
c000b6f5:	f0 00 00             	lock add BYTE PTR [eax],al
c000b6f8:	00 3a                	add    BYTE PTR [edx],bh
c000b6fa:	46                   	inc    esi
c000b6fb:	42                   	inc    edx
c000b6fc:	82                   	(bad)  
c000b6fd:	80 80 9e 82 82 82 42 	add    BYTE PTR [eax-0x7d7d7d62],0x42
c000b704:	46                   	inc    esi
c000b705:	38 00                	cmp    BYTE PTR [eax],al
c000b707:	00 00                	add    BYTE PTR [eax],al
c000b709:	e7 42                	out    0x42,eax
c000b70b:	42                   	inc    edx
c000b70c:	42                   	inc    edx
c000b70d:	42                   	inc    edx
c000b70e:	42                   	inc    edx
c000b70f:	7e 42                	jle    c000b753 <PKnFont+0x4cb>
c000b711:	42                   	inc    edx
c000b712:	42                   	inc    edx
c000b713:	42                   	inc    edx
c000b714:	42                   	inc    edx
c000b715:	e7 00                	out    0x0,eax
c000b717:	00 00                	add    BYTE PTR [eax],al
c000b719:	7c 10                	jl     c000b72b <PKnFont+0x4a3>
c000b71b:	10 10                	adc    BYTE PTR [eax],dl
c000b71d:	10 10                	adc    BYTE PTR [eax],dl
c000b71f:	10 10                	adc    BYTE PTR [eax],dl
c000b721:	10 10                	adc    BYTE PTR [eax],dl
c000b723:	10 10                	adc    BYTE PTR [eax],dl
c000b725:	7c 00                	jl     c000b727 <PKnFont+0x49f>
c000b727:	00 00                	add    BYTE PTR [eax],al
c000b729:	1f                   	pop    ds
c000b72a:	04 04                	add    al,0x4
c000b72c:	04 04                	add    al,0x4
c000b72e:	04 04                	add    al,0x4
c000b730:	04 04                	add    al,0x4
c000b732:	04 04                	add    al,0x4
c000b734:	84 48 30             	test   BYTE PTR [eax+0x30],cl
c000b737:	00 00                	add    BYTE PTR [eax],al
c000b739:	e7 42                	out    0x42,eax
c000b73b:	44                   	inc    esp
c000b73c:	48                   	dec    eax
c000b73d:	50                   	push   eax
c000b73e:	50                   	push   eax
c000b73f:	60                   	pusha  
c000b740:	50                   	push   eax
c000b741:	50                   	push   eax
c000b742:	48                   	dec    eax
c000b743:	44                   	inc    esp
c000b744:	42                   	inc    edx
c000b745:	e7 00                	out    0x0,eax
c000b747:	00 00                	add    BYTE PTR [eax],al
c000b749:	f0 40                	lock inc eax
c000b74b:	40                   	inc    eax
c000b74c:	40                   	inc    eax
c000b74d:	40                   	inc    eax
c000b74e:	40                   	inc    eax
c000b74f:	40                   	inc    eax
c000b750:	40                   	inc    eax
c000b751:	40                   	inc    eax
c000b752:	40                   	inc    eax
c000b753:	42                   	inc    edx
c000b754:	42                   	inc    edx
c000b755:	fe 00                	inc    BYTE PTR [eax]
c000b757:	00 00                	add    BYTE PTR [eax],al
c000b759:	c3                   	ret    
c000b75a:	42                   	inc    edx
c000b75b:	66 66 66 5a          	data16 data16 pop dx
c000b75f:	5a                   	pop    edx
c000b760:	5a                   	pop    edx
c000b761:	42                   	inc    edx
c000b762:	42                   	inc    edx
c000b763:	42                   	inc    edx
c000b764:	42                   	inc    edx
c000b765:	e7 00                	out    0x0,eax
c000b767:	00 00                	add    BYTE PTR [eax],al
c000b769:	c7 42 62 62 52 52 52 	mov    DWORD PTR [edx+0x62],0x52525262
c000b770:	4a                   	dec    edx
c000b771:	4a                   	dec    edx
c000b772:	4a                   	dec    edx
c000b773:	46                   	inc    esi
c000b774:	46                   	inc    esi
c000b775:	e2 00                	loop   c000b777 <PKnFont+0x4ef>
c000b777:	00 00                	add    BYTE PTR [eax],al
c000b779:	38 44 82 82          	cmp    BYTE PTR [edx+eax*4-0x7e],al
c000b77d:	82                   	(bad)  
c000b77e:	82                   	(bad)  
c000b77f:	82                   	(bad)  
c000b780:	82                   	(bad)  
c000b781:	82                   	(bad)  
c000b782:	82                   	(bad)  
c000b783:	82                   	(bad)  
c000b784:	44                   	inc    esp
c000b785:	38 00                	cmp    BYTE PTR [eax],al
c000b787:	00 00                	add    BYTE PTR [eax],al
c000b789:	f8                   	clc    
c000b78a:	44                   	inc    esp
c000b78b:	42                   	inc    edx
c000b78c:	42                   	inc    edx
c000b78d:	42                   	inc    edx
c000b78e:	44                   	inc    esp
c000b78f:	78 40                	js     c000b7d1 <PKnFont+0x549>
c000b791:	40                   	inc    eax
c000b792:	40                   	inc    eax
c000b793:	40                   	inc    eax
c000b794:	40                   	inc    eax
c000b795:	f0 00 00             	lock add BYTE PTR [eax],al
c000b798:	00 38                	add    BYTE PTR [eax],bh
c000b79a:	44                   	inc    esp
c000b79b:	82                   	(bad)  
c000b79c:	82                   	(bad)  
c000b79d:	82                   	(bad)  
c000b79e:	82                   	(bad)  
c000b79f:	82                   	(bad)  
c000b7a0:	82                   	(bad)  
c000b7a1:	82                   	(bad)  
c000b7a2:	92                   	xchg   edx,eax
c000b7a3:	8a 44 3a 00          	mov    al,BYTE PTR [edx+edi*1+0x0]
c000b7a7:	00 00                	add    BYTE PTR [eax],al
c000b7a9:	fc                   	cld    
c000b7aa:	42                   	inc    edx
c000b7ab:	42                   	inc    edx
c000b7ac:	42                   	inc    edx
c000b7ad:	42                   	inc    edx
c000b7ae:	7c 44                	jl     c000b7f4 <PKnFont+0x56c>
c000b7b0:	42                   	inc    edx
c000b7b1:	42                   	inc    edx
c000b7b2:	42                   	inc    edx
c000b7b3:	42                   	inc    edx
c000b7b4:	42                   	inc    edx
c000b7b5:	e7 00                	out    0x0,eax
c000b7b7:	00 00                	add    BYTE PTR [eax],al
c000b7b9:	3a 46 82             	cmp    al,BYTE PTR [esi-0x7e]
c000b7bc:	82                   	(bad)  
c000b7bd:	80 40 38 04          	add    BYTE PTR [eax+0x38],0x4
c000b7c1:	02 82 82 c4 b8 00    	add    al,BYTE PTR [edx+0xb8c482]
c000b7c7:	00 00                	add    BYTE PTR [eax],al
c000b7c9:	fe                   	(bad)  
c000b7ca:	92                   	xchg   edx,eax
c000b7cb:	92                   	xchg   edx,eax
c000b7cc:	10 10                	adc    BYTE PTR [eax],dl
c000b7ce:	10 10                	adc    BYTE PTR [eax],dl
c000b7d0:	10 10                	adc    BYTE PTR [eax],dl
c000b7d2:	10 10                	adc    BYTE PTR [eax],dl
c000b7d4:	10 7c 00 00          	adc    BYTE PTR [eax+eax*1+0x0],bh
c000b7d8:	00 e7                	add    bh,ah
c000b7da:	42                   	inc    edx
c000b7db:	42                   	inc    edx
c000b7dc:	42                   	inc    edx
c000b7dd:	42                   	inc    edx
c000b7de:	42                   	inc    edx
c000b7df:	42                   	inc    edx
c000b7e0:	42                   	inc    edx
c000b7e1:	42                   	inc    edx
c000b7e2:	42                   	inc    edx
c000b7e3:	42                   	inc    edx
c000b7e4:	24 3c                	and    al,0x3c
c000b7e6:	00 00                	add    BYTE PTR [eax],al
c000b7e8:	00 e7                	add    bh,ah
c000b7ea:	42                   	inc    edx
c000b7eb:	42                   	inc    edx
c000b7ec:	42                   	inc    edx
c000b7ed:	42                   	inc    edx
c000b7ee:	24 24                	and    al,0x24
c000b7f0:	24 24                	and    al,0x24
c000b7f2:	18 18                	sbb    BYTE PTR [eax],bl
c000b7f4:	18 18                	sbb    BYTE PTR [eax],bl
c000b7f6:	00 00                	add    BYTE PTR [eax],al
c000b7f8:	00 e7                	add    bh,ah
c000b7fa:	42                   	inc    edx
c000b7fb:	42                   	inc    edx
c000b7fc:	42                   	inc    edx
c000b7fd:	5a                   	pop    edx
c000b7fe:	5a                   	pop    edx
c000b7ff:	5a                   	pop    edx
c000b800:	5a                   	pop    edx
c000b801:	24 24                	and    al,0x24
c000b803:	24 24                	and    al,0x24
c000b805:	24 00                	and    al,0x0
c000b807:	00 00                	add    BYTE PTR [eax],al
c000b809:	e7 42                	out    0x42,eax
c000b80b:	42                   	inc    edx
c000b80c:	24 24                	and    al,0x24
c000b80e:	24 18                	and    al,0x18
c000b810:	24 24                	and    al,0x24
c000b812:	24 42                	and    al,0x42
c000b814:	42                   	inc    edx
c000b815:	e7 00                	out    0x0,eax
c000b817:	00 00                	add    BYTE PTR [eax],al
c000b819:	ee                   	out    dx,al
c000b81a:	44                   	inc    esp
c000b81b:	44                   	inc    esp
c000b81c:	44                   	inc    esp
c000b81d:	28 28                	sub    BYTE PTR [eax],ch
c000b81f:	28 10                	sub    BYTE PTR [eax],dl
c000b821:	10 10                	adc    BYTE PTR [eax],dl
c000b823:	10 10                	adc    BYTE PTR [eax],dl
c000b825:	7c 00                	jl     c000b827 <PKnFont+0x59f>
c000b827:	00 00                	add    BYTE PTR [eax],al
c000b829:	fe 84 84 08 08 10 10 	inc    BYTE PTR [esp+eax*4+0x10100808]
c000b830:	20 20                	and    BYTE PTR [eax],ah
c000b832:	40                   	inc    eax
c000b833:	42                   	inc    edx
c000b834:	82                   	(bad)  
c000b835:	fe 00                	inc    BYTE PTR [eax]
c000b837:	00 00                	add    BYTE PTR [eax],al
c000b839:	3e 20 20             	and    BYTE PTR ds:[eax],ah
c000b83c:	20 20                	and    BYTE PTR [eax],ah
c000b83e:	20 20                	and    BYTE PTR [eax],ah
c000b840:	20 20                	and    BYTE PTR [eax],ah
c000b842:	20 20                	and    BYTE PTR [eax],ah
c000b844:	20 20                	and    BYTE PTR [eax],ah
c000b846:	3e 00 80 80 40 40 20 	add    BYTE PTR ds:[eax+0x20404080],al
c000b84d:	20 20                	and    BYTE PTR [eax],ah
c000b84f:	10 10                	adc    BYTE PTR [eax],dl
c000b851:	08 08                	or     BYTE PTR [eax],cl
c000b853:	04 04                	add    al,0x4
c000b855:	04 02                	add    al,0x2
c000b857:	02 00                	add    al,BYTE PTR [eax]
c000b859:	7c 04                	jl     c000b85f <PKnFont+0x5d7>
c000b85b:	04 04                	add    al,0x4
c000b85d:	04 04                	add    al,0x4
c000b85f:	04 04                	add    al,0x4
c000b861:	04 04                	add    al,0x4
c000b863:	04 04                	add    al,0x4
c000b865:	04 7c                	add    al,0x7c
c000b867:	00 00                	add    BYTE PTR [eax],al
c000b869:	10 28                	adc    BYTE PTR [eax],ch
c000b86b:	44                   	inc    esp
c000b86c:	82                   	(bad)  
	...
c000b885:	00 fe                	add    dh,bh
c000b887:	00 10                	add    BYTE PTR [eax],dl
c000b889:	08 04 00             	or     BYTE PTR [eax+eax*1],al
	...
c000b89c:	00 70 08             	add    BYTE PTR [eax+0x8],dh
c000b89f:	04 3c                	add    al,0x3c
c000b8a1:	44                   	inc    esp
c000b8a2:	84 84 8c 76 00 00 c0 	test   BYTE PTR [esp+ecx*4-0x3fffff8a],al
c000b8a9:	40                   	inc    eax
c000b8aa:	40                   	inc    eax
c000b8ab:	40                   	inc    eax
c000b8ac:	40                   	inc    eax
c000b8ad:	58                   	pop    eax
c000b8ae:	64 42                	fs inc edx
c000b8b0:	42                   	inc    edx
c000b8b1:	42                   	inc    edx
c000b8b2:	42                   	inc    edx
c000b8b3:	42                   	inc    edx
c000b8b4:	64 58                	fs pop eax
c000b8b6:	00 00                	add    BYTE PTR [eax],al
c000b8b8:	00 00                	add    BYTE PTR [eax],al
c000b8ba:	00 00                	add    BYTE PTR [eax],al
c000b8bc:	00 30                	add    BYTE PTR [eax],dh
c000b8be:	4c                   	dec    esp
c000b8bf:	84 84 80 80 82 44 38 	test   BYTE PTR [eax+eax*4+0x38448280],al
c000b8c6:	00 00                	add    BYTE PTR [eax],al
c000b8c8:	0c 04                	or     al,0x4
c000b8ca:	04 04                	add    al,0x4
c000b8cc:	04 34                	add    al,0x34
c000b8ce:	4c                   	dec    esp
c000b8cf:	84 84 84 84 84 4c 36 	test   BYTE PTR [esp+eax*4+0x364c8484],al
c000b8d6:	00 00                	add    BYTE PTR [eax],al
c000b8d8:	00 00                	add    BYTE PTR [eax],al
c000b8da:	00 00                	add    BYTE PTR [eax],al
c000b8dc:	00 38                	add    BYTE PTR [eax],bh
c000b8de:	44                   	inc    esp
c000b8df:	82                   	(bad)  
c000b8e0:	82                   	(bad)  
c000b8e1:	fc                   	cld    
c000b8e2:	80 82 42 3c 00 00 0e 	add    BYTE PTR [edx+0x3c42],0xe
c000b8e9:	10 10                	adc    BYTE PTR [eax],dl
c000b8eb:	10 10                	adc    BYTE PTR [eax],dl
c000b8ed:	7c 10                	jl     c000b8ff <PKnFont+0x677>
c000b8ef:	10 10                	adc    BYTE PTR [eax],dl
c000b8f1:	10 10                	adc    BYTE PTR [eax],dl
c000b8f3:	10 10                	adc    BYTE PTR [eax],dl
c000b8f5:	7c 00                	jl     c000b8f7 <PKnFont+0x66f>
c000b8f7:	00 00                	add    BYTE PTR [eax],al
c000b8f9:	00 00                	add    BYTE PTR [eax],al
c000b8fb:	00 00                	add    BYTE PTR [eax],al
c000b8fd:	36 4c                	ss dec esp
c000b8ff:	84 84 84 84 4c 34 04 	test   BYTE PTR [esp+eax*4+0x4344c84],al
c000b906:	04 38                	add    al,0x38
c000b908:	c0 40 40 40          	rol    BYTE PTR [eax+0x40],0x40
c000b90c:	40                   	inc    eax
c000b90d:	58                   	pop    eax
c000b90e:	64 42                	fs inc edx
c000b910:	42                   	inc    edx
c000b911:	42                   	inc    edx
c000b912:	42                   	inc    edx
c000b913:	42                   	inc    edx
c000b914:	42                   	inc    edx
c000b915:	e3 00                	jecxz  c000b917 <PKnFont+0x68f>
c000b917:	00 00                	add    BYTE PTR [eax],al
c000b919:	10 10                	adc    BYTE PTR [eax],dl
c000b91b:	00 00                	add    BYTE PTR [eax],al
c000b91d:	30 10                	xor    BYTE PTR [eax],dl
c000b91f:	10 10                	adc    BYTE PTR [eax],dl
c000b921:	10 10                	adc    BYTE PTR [eax],dl
c000b923:	10 10                	adc    BYTE PTR [eax],dl
c000b925:	38 00                	cmp    BYTE PTR [eax],al
c000b927:	00 00                	add    BYTE PTR [eax],al
c000b929:	04 04                	add    al,0x4
c000b92b:	00 00                	add    BYTE PTR [eax],al
c000b92d:	0c 04                	or     al,0x4
c000b92f:	04 04                	add    al,0x4
c000b931:	04 04                	add    al,0x4
c000b933:	04 04                	add    al,0x4
c000b935:	08 08                	or     BYTE PTR [eax],cl
c000b937:	30 c0                	xor    al,al
c000b939:	40                   	inc    eax
c000b93a:	40                   	inc    eax
c000b93b:	40                   	inc    eax
c000b93c:	40                   	inc    eax
c000b93d:	4e                   	dec    esi
c000b93e:	44                   	inc    esp
c000b93f:	48                   	dec    eax
c000b940:	50                   	push   eax
c000b941:	60                   	pusha  
c000b942:	50                   	push   eax
c000b943:	48                   	dec    eax
c000b944:	44                   	inc    esp
c000b945:	e6 00                	out    0x0,al
c000b947:	00 30                	add    BYTE PTR [eax],dh
c000b949:	10 10                	adc    BYTE PTR [eax],dl
c000b94b:	10 10                	adc    BYTE PTR [eax],dl
c000b94d:	10 10                	adc    BYTE PTR [eax],dl
c000b94f:	10 10                	adc    BYTE PTR [eax],dl
c000b951:	10 10                	adc    BYTE PTR [eax],dl
c000b953:	10 10                	adc    BYTE PTR [eax],dl
c000b955:	38 00                	cmp    BYTE PTR [eax],al
c000b957:	00 00                	add    BYTE PTR [eax],al
c000b959:	00 00                	add    BYTE PTR [eax],al
c000b95b:	00 00                	add    BYTE PTR [eax],al
c000b95d:	f6                   	(bad)  
c000b95e:	49                   	dec    ecx
c000b95f:	49                   	dec    ecx
c000b960:	49                   	dec    ecx
c000b961:	49                   	dec    ecx
c000b962:	49                   	dec    ecx
c000b963:	49                   	dec    ecx
c000b964:	49                   	dec    ecx
c000b965:	db 00                	fild   DWORD PTR [eax]
c000b967:	00 00                	add    BYTE PTR [eax],al
c000b969:	00 00                	add    BYTE PTR [eax],al
c000b96b:	00 00                	add    BYTE PTR [eax],al
c000b96d:	d8 64 42 42          	fsub   DWORD PTR [edx+eax*2+0x42]
c000b971:	42                   	inc    edx
c000b972:	42                   	inc    edx
c000b973:	42                   	inc    edx
c000b974:	42                   	inc    edx
c000b975:	e3 00                	jecxz  c000b977 <PKnFont+0x6ef>
c000b977:	00 00                	add    BYTE PTR [eax],al
c000b979:	00 00                	add    BYTE PTR [eax],al
c000b97b:	00 00                	add    BYTE PTR [eax],al
c000b97d:	38 44 82 82          	cmp    BYTE PTR [edx+eax*4-0x7e],al
c000b981:	82                   	(bad)  
c000b982:	82                   	(bad)  
c000b983:	82                   	(bad)  
c000b984:	44                   	inc    esp
c000b985:	38 00                	cmp    BYTE PTR [eax],al
c000b987:	00 00                	add    BYTE PTR [eax],al
c000b989:	00 00                	add    BYTE PTR [eax],al
c000b98b:	00 d8                	add    al,bl
c000b98d:	64 42                	fs inc edx
c000b98f:	42                   	inc    edx
c000b990:	42                   	inc    edx
c000b991:	42                   	inc    edx
c000b992:	42                   	inc    edx
c000b993:	64 58                	fs pop eax
c000b995:	40                   	inc    eax
c000b996:	40                   	inc    eax
c000b997:	e0 00                	loopne c000b999 <PKnFont+0x711>
c000b999:	00 00                	add    BYTE PTR [eax],al
c000b99b:	00 34 4c             	add    BYTE PTR [esp+ecx*2],dh
c000b99e:	84 84 84 84 84 4c 34 	test   BYTE PTR [esp+eax*4+0x344c8484],al
c000b9a5:	04 04                	add    al,0x4
c000b9a7:	0e                   	push   cs
c000b9a8:	00 00                	add    BYTE PTR [eax],al
c000b9aa:	00 00                	add    BYTE PTR [eax],al
c000b9ac:	00 dc                	add    ah,bl
c000b9ae:	62 42 40             	bound  eax,QWORD PTR [edx+0x40]
c000b9b1:	40                   	inc    eax
c000b9b2:	40                   	inc    eax
c000b9b3:	40                   	inc    eax
c000b9b4:	40                   	inc    eax
c000b9b5:	e0 00                	loopne c000b9b7 <PKnFont+0x72f>
c000b9b7:	00 00                	add    BYTE PTR [eax],al
c000b9b9:	00 00                	add    BYTE PTR [eax],al
c000b9bb:	00 00                	add    BYTE PTR [eax],al
c000b9bd:	7a 86                	jp     c000b945 <PKnFont+0x6bd>
c000b9bf:	82                   	(bad)  
c000b9c0:	c0 38 06             	sar    BYTE PTR [eax],0x6
c000b9c3:	82                   	(bad)  
c000b9c4:	c2 bc 00             	ret    0xbc
c000b9c7:	00 00                	add    BYTE PTR [eax],al
c000b9c9:	00 10                	add    BYTE PTR [eax],dl
c000b9cb:	10 10                	adc    BYTE PTR [eax],dl
c000b9cd:	7c 10                	jl     c000b9df <PKnFont+0x757>
c000b9cf:	10 10                	adc    BYTE PTR [eax],dl
c000b9d1:	10 10                	adc    BYTE PTR [eax],dl
c000b9d3:	10 10                	adc    BYTE PTR [eax],dl
c000b9d5:	0e                   	push   cs
c000b9d6:	00 00                	add    BYTE PTR [eax],al
c000b9d8:	00 00                	add    BYTE PTR [eax],al
c000b9da:	00 00                	add    BYTE PTR [eax],al
c000b9dc:	00 c6                	add    dh,al
c000b9de:	42                   	inc    edx
c000b9df:	42                   	inc    edx
c000b9e0:	42                   	inc    edx
c000b9e1:	42                   	inc    edx
c000b9e2:	42                   	inc    edx
c000b9e3:	42                   	inc    edx
c000b9e4:	46                   	inc    esi
c000b9e5:	3b 00                	cmp    eax,DWORD PTR [eax]
c000b9e7:	00 00                	add    BYTE PTR [eax],al
c000b9e9:	00 00                	add    BYTE PTR [eax],al
c000b9eb:	00 00                	add    BYTE PTR [eax],al
c000b9ed:	e7 42                	out    0x42,eax
c000b9ef:	42                   	inc    edx
c000b9f0:	42                   	inc    edx
c000b9f1:	24 24                	and    al,0x24
c000b9f3:	24 18                	and    al,0x18
c000b9f5:	18 00                	sbb    BYTE PTR [eax],al
c000b9f7:	00 00                	add    BYTE PTR [eax],al
c000b9f9:	00 00                	add    BYTE PTR [eax],al
c000b9fb:	00 00                	add    BYTE PTR [eax],al
c000b9fd:	e7 42                	out    0x42,eax
c000b9ff:	42                   	inc    edx
c000ba00:	5a                   	pop    edx
c000ba01:	5a                   	pop    edx
c000ba02:	5a                   	pop    edx
c000ba03:	24 24                	and    al,0x24
c000ba05:	24 00                	and    al,0x0
c000ba07:	00 00                	add    BYTE PTR [eax],al
c000ba09:	00 00                	add    BYTE PTR [eax],al
c000ba0b:	00 00                	add    BYTE PTR [eax],al
c000ba0d:	c6 44 28 28 10       	mov    BYTE PTR [eax+ebp*1+0x28],0x10
c000ba12:	28 28                	sub    BYTE PTR [eax],ch
c000ba14:	44                   	inc    esp
c000ba15:	c6 00 00             	mov    BYTE PTR [eax],0x0
c000ba18:	00 00                	add    BYTE PTR [eax],al
c000ba1a:	00 00                	add    BYTE PTR [eax],al
c000ba1c:	00 e7                	add    bh,ah
c000ba1e:	42                   	inc    edx
c000ba1f:	42                   	inc    edx
c000ba20:	24 24                	and    al,0x24
c000ba22:	24 18                	and    al,0x18
c000ba24:	18 10                	sbb    BYTE PTR [eax],dl
c000ba26:	10 60 00             	adc    BYTE PTR [eax+0x0],ah
c000ba29:	00 00                	add    BYTE PTR [eax],al
c000ba2b:	00 00                	add    BYTE PTR [eax],al
c000ba2d:	fe 82 84 08 10 20    	inc    BYTE PTR [edx+0x20100884]
c000ba33:	42                   	inc    edx
c000ba34:	82                   	(bad)  
c000ba35:	fe 00                	inc    BYTE PTR [eax]
c000ba37:	00 00                	add    BYTE PTR [eax],al
c000ba39:	06                   	push   es
c000ba3a:	08 10                	or     BYTE PTR [eax],dl
c000ba3c:	10 10                	adc    BYTE PTR [eax],dl
c000ba3e:	10 60 10             	adc    BYTE PTR [eax+0x10],ah
c000ba41:	10 10                	adc    BYTE PTR [eax],dl
c000ba43:	10 08                	adc    BYTE PTR [eax],cl
c000ba45:	06                   	push   es
c000ba46:	00 00                	add    BYTE PTR [eax],al
c000ba48:	10 10                	adc    BYTE PTR [eax],dl
c000ba4a:	10 10                	adc    BYTE PTR [eax],dl
c000ba4c:	10 10                	adc    BYTE PTR [eax],dl
c000ba4e:	10 10                	adc    BYTE PTR [eax],dl
c000ba50:	10 10                	adc    BYTE PTR [eax],dl
c000ba52:	10 10                	adc    BYTE PTR [eax],dl
c000ba54:	10 10                	adc    BYTE PTR [eax],dl
c000ba56:	10 10                	adc    BYTE PTR [eax],dl
c000ba58:	00 60 10             	add    BYTE PTR [eax+0x10],ah
c000ba5b:	08 08                	or     BYTE PTR [eax],cl
c000ba5d:	08 08                	or     BYTE PTR [eax],cl
c000ba5f:	06                   	push   es
c000ba60:	08 08                	or     BYTE PTR [eax],cl
c000ba62:	08 08                	or     BYTE PTR [eax],cl
c000ba64:	10 60 00             	adc    BYTE PTR [eax+0x0],ah
c000ba67:	00 00                	add    BYTE PTR [eax],al
c000ba69:	72 8c                	jb     c000b9f7 <PKnFont+0x76f>
	...

Disassembly of section .eh_frame:

c000c288 <.eh_frame>:
c000c288:	10 00                	adc    BYTE PTR [eax],al
c000c28a:	00 00                	add    BYTE PTR [eax],al
c000c28c:	00 00                	add    BYTE PTR [eax],al
c000c28e:	00 00                	add    BYTE PTR [eax],al
c000c290:	01 00                	add    DWORD PTR [eax],eax
c000c292:	01 7c 08 0c          	add    DWORD PTR [eax+ecx*1+0xc],edi
c000c296:	04 04                	add    al,0x4
c000c298:	88 01                	mov    BYTE PTR [ecx],al
c000c29a:	00 00                	add    BYTE PTR [eax],al
c000c29c:	14 00                	adc    al,0x0
c000c29e:	00 00                	add    BYTE PTR [eax],al
c000c2a0:	18 00                	sbb    BYTE PTR [eax],al
c000c2a2:	00 00                	add    BYTE PTR [eax],al
c000c2a4:	20 7f 00             	and    BYTE PTR [edi+0x0],bh
c000c2a7:	c0 10 00             	rcl    BYTE PTR [eax],0x0
c000c2aa:	00 00                	add    BYTE PTR [eax],al
c000c2ac:	41                   	inc    ecx
c000c2ad:	0e                   	push   cs
c000c2ae:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000c2b4:	5c                   	pop    esp
c000c2b5:	00 00                	add    BYTE PTR [eax],al
c000c2b7:	00 30                	add    BYTE PTR [eax],dh
c000c2b9:	00 00                	add    BYTE PTR [eax],al
c000c2bb:	00 30                	add    BYTE PTR [eax],dh
c000c2bd:	7f 00                	jg     c000c2bf <_edata+0x37>
c000c2bf:	c0 82 00 00 00 41 0e 	rol    BYTE PTR [edx+0x41000000],0xe
c000c2c6:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000c2cc:	42                   	inc    edx
c000c2cd:	86 04 87             	xchg   BYTE PTR [edi+eax*4],al
c000c2d0:	03 46 83             	add    eax,DWORD PTR [esi-0x7d]
c000c2d3:	05 48 2e 08 45       	add    eax,0x45082e48
c000c2d8:	2e 0c 42             	cs or  al,0x42
c000c2db:	2e 10 4b 2e          	adc    BYTE PTR cs:[ebx+0x2e],cl
c000c2df:	00 43 2e             	add    BYTE PTR [ebx+0x2e],al
c000c2e2:	0c 45                	or     al,0x45
c000c2e4:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000c2e8:	00 45 2e             	add    BYTE PTR [ebp+0x2e],al
c000c2eb:	04 04                	add    al,0x4
c000c2ed:	01 00                	add    DWORD PTR [eax],eax
c000c2ef:	00 00                	add    BYTE PTR [eax],al
c000c2f1:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c000c2f5:	0c 45                	or     al,0x45
c000c2f7:	2e 10 4a 2e          	adc    BYTE PTR cs:[edx+0x2e],cl
c000c2fb:	0c 41                	or     al,0x41
c000c2fd:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c000c301:	0c 42                	or     al,0x42
c000c303:	2e 10 51 2e          	adc    BYTE PTR cs:[ecx+0x2e],dl
c000c307:	14 41                	adc    al,0x41
c000c309:	2e 18 41 2e          	sbb    BYTE PTR cs:[ecx+0x2e],al
c000c30d:	1c 48                	sbb    al,0x48
c000c30f:	2e 20 48 2e          	and    BYTE PTR cs:[eax+0x2e],cl
c000c313:	00 98 00 00 00 90    	add    BYTE PTR [eax-0x70000000],bl
c000c319:	00 00                	add    BYTE PTR [eax],al
c000c31b:	00 b2 7f 00 c0 73    	add    BYTE PTR [edx+0x73c0007f],dh
c000c321:	02 00                	add    al,BYTE PTR [eax]
c000c323:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000c326:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000c32c:	46                   	inc    esi
c000c32d:	2e 0c 83             	cs or  al,0x83
c000c330:	05 86 04 87 03       	add    eax,0x3870486
c000c335:	44                   	inc    esp
c000c336:	2e 10 02             	adc    BYTE PTR cs:[edx],al
c000c339:	a4                   	movs   BYTE PTR es:[edi],BYTE PTR ds:[esi]
c000c33a:	2e 0c 41             	cs or  al,0x41
c000c33d:	2e 08 57 2e          	or     BYTE PTR cs:[edi+0x2e],dl
c000c341:	0c 49                	or     al,0x49
c000c343:	2e 10 41 2e          	adc    BYTE PTR cs:[ecx+0x2e],al
c000c347:	14 41                	adc    al,0x41
c000c349:	2e 18 45 2e          	sbb    BYTE PTR cs:[ebp+0x2e],al
c000c34d:	1c 45                	sbb    al,0x45
c000c34f:	2e 20 4e 2e          	and    BYTE PTR cs:[esi+0x2e],cl
c000c353:	08 4c 2e 0c          	or     BYTE PTR [esi+ebp*1+0xc],cl
c000c357:	49                   	dec    ecx
c000c358:	2e 10 41 2e          	adc    BYTE PTR cs:[ecx+0x2e],al
c000c35c:	14 41                	adc    al,0x41
c000c35e:	2e 18 45 2e          	sbb    BYTE PTR cs:[ebp+0x2e],al
c000c362:	1c 45                	sbb    al,0x45
c000c364:	2e 20 52 2e          	and    BYTE PTR cs:[edx+0x2e],dl
c000c368:	00 75 2e             	add    BYTE PTR [ebp+0x2e],dh
c000c36b:	04 04                	add    al,0x4
c000c36d:	04 00                	add    al,0x0
c000c36f:	00 00                	add    BYTE PTR [eax],al
c000c371:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c000c375:	0c 41                	or     al,0x41
c000c377:	2e 10 43 2e          	adc    BYTE PTR cs:[ebx+0x2e],al
c000c37b:	14 43                	adc    al,0x43
c000c37d:	2e 18 45 2e          	sbb    BYTE PTR cs:[ebp+0x2e],al
c000c381:	1c 41                	sbb    al,0x41
c000c383:	2e 20 4e 2e          	and    BYTE PTR cs:[esi+0x2e],cl
c000c387:	08 4c 2e 0c          	or     BYTE PTR [esi+ebp*1+0xc],cl
c000c38b:	49                   	dec    ecx
c000c38c:	2e 10 41 2e          	adc    BYTE PTR cs:[ecx+0x2e],al
c000c390:	14 41                	adc    al,0x41
c000c392:	2e 18 45 2e          	sbb    BYTE PTR cs:[ebp+0x2e],al
c000c396:	1c 45                	sbb    al,0x45
c000c398:	2e 20 48 2e          	and    BYTE PTR cs:[eax+0x2e],cl
c000c39c:	0c 44                	or     al,0x44
c000c39e:	2e 10 42 2e          	adc    BYTE PTR cs:[edx+0x2e],al
c000c3a2:	14 49                	adc    al,0x49
c000c3a4:	2e 18 4b 2e          	sbb    BYTE PTR cs:[ebx+0x2e],cl
c000c3a8:	1c 45                	sbb    al,0x45
c000c3aa:	2e 20 48 2e          	and    BYTE PTR cs:[eax+0x2e],cl
c000c3ae:	00 00                	add    BYTE PTR [eax],al
c000c3b0:	28 01                	sub    BYTE PTR [ecx],al
c000c3b2:	00 00                	add    BYTE PTR [eax],al
c000c3b4:	2c 01                	sub    al,0x1
c000c3b6:	00 00                	add    BYTE PTR [eax],al
c000c3b8:	25 82 00 c0 81       	and    eax,0x81c00082
c000c3bd:	01 00                	add    DWORD PTR [eax],eax
c000c3bf:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000c3c2:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000c3c8:	41                   	inc    ecx
c000c3c9:	83 03 49             	add    DWORD PTR [ebx],0x49
c000c3cc:	2e 04 04             	cs add al,0x4
c000c3cf:	01 00                	add    DWORD PTR [eax],eax
c000c3d1:	00 00                	add    BYTE PTR [eax],al
c000c3d3:	2e 08 42 2e          	or     BYTE PTR cs:[edx+0x2e],al
c000c3d7:	0c 42                	or     al,0x42
c000c3d9:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000c3dd:	00 46 2e             	add    BYTE PTR [esi+0x2e],al
c000c3e0:	0c 42                	or     al,0x42
c000c3e2:	2e 10 50 2e          	adc    BYTE PTR cs:[eax+0x2e],dl
c000c3e6:	0c 41                	or     al,0x41
c000c3e8:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c000c3ec:	0c 42                	or     al,0x42
c000c3ee:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c000c3f2:	0c 41                	or     al,0x41
c000c3f4:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c000c3f8:	0c 42                	or     al,0x42
c000c3fa:	2e 10 4b 2e          	adc    BYTE PTR cs:[ebx+0x2e],cl
c000c3fe:	0c 41                	or     al,0x41
c000c400:	2e 08 42 2e          	or     BYTE PTR cs:[edx+0x2e],al
c000c404:	0c 42                	or     al,0x42
c000c406:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c000c40a:	0c 41                	or     al,0x41
c000c40c:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c000c410:	0c 42                	or     al,0x42
c000c412:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000c416:	04 04                	add    al,0x4
c000c418:	02 00                	add    al,BYTE PTR [eax]
c000c41a:	00 00                	add    BYTE PTR [eax],al
c000c41c:	2e 08 49 2e          	or     BYTE PTR cs:[ecx+0x2e],cl
c000c420:	0c 42                	or     al,0x42
c000c422:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c000c426:	0c 41                	or     al,0x41
c000c428:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c000c42c:	0c 42                	or     al,0x42
c000c42e:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000c432:	04 04                	add    al,0x4
c000c434:	02 00                	add    al,BYTE PTR [eax]
c000c436:	00 00                	add    BYTE PTR [eax],al
c000c438:	2e 08 49 2e          	or     BYTE PTR cs:[ecx+0x2e],cl
c000c43c:	0c 42                	or     al,0x42
c000c43e:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c000c442:	0c 41                	or     al,0x41
c000c444:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c000c448:	0c 42                	or     al,0x42
c000c44a:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c000c44e:	0c 41                	or     al,0x41
c000c450:	2e 08 42 2e          	or     BYTE PTR cs:[edx+0x2e],al
c000c454:	0c 42                	or     al,0x42
c000c456:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c000c45a:	0c 41                	or     al,0x41
c000c45c:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c000c460:	0c 42                	or     al,0x42
c000c462:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000c466:	04 04                	add    al,0x4
c000c468:	02 00                	add    al,BYTE PTR [eax]
c000c46a:	00 00                	add    BYTE PTR [eax],al
c000c46c:	2e 08 46 2e          	or     BYTE PTR cs:[esi+0x2e],al
c000c470:	0c 42                	or     al,0x42
c000c472:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c000c476:	0c 41                	or     al,0x41
c000c478:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c000c47c:	0c 42                	or     al,0x42
c000c47e:	2e 10 51 2e          	adc    BYTE PTR cs:[ecx+0x2e],dl
c000c482:	14 42                	adc    al,0x42
c000c484:	2e 18 42 2e          	sbb    BYTE PTR cs:[edx+0x2e],al
c000c488:	1c 45                	sbb    al,0x45
c000c48a:	2e 20 48 2e          	and    BYTE PTR cs:[eax+0x2e],cl
c000c48e:	0c 46                	or     al,0x46
c000c490:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c000c494:	14 46                	adc    al,0x46
c000c496:	2e 18 45 2e          	sbb    BYTE PTR cs:[ebp+0x2e],al
c000c49a:	1c 41                	sbb    al,0x41
c000c49c:	2e 20 48 2e          	and    BYTE PTR cs:[eax+0x2e],cl
c000c4a0:	0c 41                	or     al,0x41
c000c4a2:	2e 10 45 2e          	adc    BYTE PTR cs:[ebp+0x2e],al
c000c4a6:	14 42                	adc    al,0x42
c000c4a8:	2e 18 42 2e          	sbb    BYTE PTR cs:[edx+0x2e],al
c000c4ac:	1c 45                	sbb    al,0x45
c000c4ae:	2e 20 48 2e          	and    BYTE PTR cs:[eax+0x2e],cl
c000c4b2:	00 45 2e             	add    BYTE PTR [ebp+0x2e],al
c000c4b5:	04 04                	add    al,0x4
c000c4b7:	05 00 00 00 2e       	add    eax,0x2e000000
c000c4bc:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c000c4bf:	0c 45                	or     al,0x45
c000c4c1:	2e 10 4a 2e          	adc    BYTE PTR cs:[edx+0x2e],cl
c000c4c5:	14 45                	adc    al,0x45
c000c4c7:	2e 18 42 2e          	sbb    BYTE PTR cs:[edx+0x2e],al
c000c4cb:	1c 45                	sbb    al,0x45
c000c4cd:	2e 20 48 2e          	and    BYTE PTR cs:[eax+0x2e],cl
c000c4d1:	08 45 2e             	or     BYTE PTR [ebp+0x2e],al
c000c4d4:	0c 45                	or     al,0x45
c000c4d6:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000c4da:	00 00                	add    BYTE PTR [eax],al
c000c4dc:	b0 00                	mov    al,0x0
c000c4de:	00 00                	add    BYTE PTR [eax],al
c000c4e0:	58                   	pop    eax
c000c4e1:	02 00                	add    al,BYTE PTR [eax]
c000c4e3:	00 a8 83 00 c0 aa    	add    BYTE PTR [eax-0x553fff7d],ch
c000c4e9:	00 00                	add    BYTE PTR [eax],al
c000c4eb:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000c4ee:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000c4f4:	49                   	dec    ecx
c000c4f5:	2e 04 04             	cs add al,0x4
c000c4f8:	01 00                	add    DWORD PTR [eax],eax
c000c4fa:	00 00                	add    BYTE PTR [eax],al
c000c4fc:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c000c500:	0c 42                	or     al,0x42
c000c502:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c000c506:	0c 41                	or     al,0x41
c000c508:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c000c50c:	0c 42                	or     al,0x42
c000c50e:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c000c512:	0c 41                	or     al,0x41
c000c514:	2e 08 43 2e          	or     BYTE PTR cs:[ebx+0x2e],al
c000c518:	0c 42                	or     al,0x42
c000c51a:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c000c51e:	0c 41                	or     al,0x41
c000c520:	2e 08 42 2e          	or     BYTE PTR cs:[edx+0x2e],al
c000c524:	0c 42                	or     al,0x42
c000c526:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c000c52a:	0c 41                	or     al,0x41
c000c52c:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c000c530:	0c 42                	or     al,0x42
c000c532:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c000c536:	0c 41                	or     al,0x41
c000c538:	2e 08 43 2e          	or     BYTE PTR cs:[ebx+0x2e],al
c000c53c:	0c 42                	or     al,0x42
c000c53e:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c000c542:	0c 41                	or     al,0x41
c000c544:	2e 08 42 2e          	or     BYTE PTR cs:[edx+0x2e],al
c000c548:	0c 42                	or     al,0x42
c000c54a:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c000c54e:	0c 41                	or     al,0x41
c000c550:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c000c554:	0c 42                	or     al,0x42
c000c556:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000c55a:	04 04                	add    al,0x4
c000c55c:	02 00                	add    al,BYTE PTR [eax]
c000c55e:	00 00                	add    BYTE PTR [eax],al
c000c560:	2e 08 43 2e          	or     BYTE PTR cs:[ebx+0x2e],al
c000c564:	0c 42                	or     al,0x42
c000c566:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c000c56a:	0c 41                	or     al,0x41
c000c56c:	2e 08 42 2e          	or     BYTE PTR cs:[edx+0x2e],al
c000c570:	0c 42                	or     al,0x42
c000c572:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c000c576:	0c 41                	or     al,0x41
c000c578:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c000c57c:	0c 42                	or     al,0x42
c000c57e:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c000c582:	0c 41                	or     al,0x41
c000c584:	2e 08 43 2e          	or     BYTE PTR cs:[ebx+0x2e],al
c000c588:	0c 42                	or     al,0x42
c000c58a:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000c58e:	00 00                	add    BYTE PTR [eax],al
c000c590:	34 00                	xor    al,0x0
c000c592:	00 00                	add    BYTE PTR [eax],al
c000c594:	0c 03                	or     al,0x3
c000c596:	00 00                	add    BYTE PTR [eax],al
c000c598:	54                   	push   esp
c000c599:	84 00                	test   BYTE PTR [eax],al
c000c59b:	c0 54 00 00 00       	rcl    BYTE PTR [eax+eax*1+0x0],0x0
c000c5a0:	41                   	inc    ecx
c000c5a1:	0e                   	push   cs
c000c5a2:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000c5a8:	43                   	inc    ebx
c000c5a9:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c000c5ad:	0c 42                	or     al,0x42
c000c5af:	2e 10 75 2e          	adc    BYTE PTR cs:[ebp+0x2e],dh
c000c5b3:	0c 41                	or     al,0x41
c000c5b5:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c000c5b9:	0c 42                	or     al,0x42
c000c5bb:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000c5bf:	00 41 c5             	add    BYTE PTR [ecx-0x3b],al
c000c5c2:	0c 04                	or     al,0x4
c000c5c4:	04 00                	add    al,0x0
c000c5c6:	00 00                	add    BYTE PTR [eax],al
c000c5c8:	1c 00                	sbb    al,0x0
c000c5ca:	00 00                	add    BYTE PTR [eax],al
c000c5cc:	44                   	inc    esp
c000c5cd:	03 00                	add    eax,DWORD PTR [eax]
c000c5cf:	00 28                	add    BYTE PTR [eax],ch
c000c5d1:	8b 00                	mov    eax,DWORD PTR [eax]
c000c5d3:	c0 10 00             	rcl    BYTE PTR [eax],0x0
c000c5d6:	00 00                	add    BYTE PTR [eax],al
c000c5d8:	41                   	inc    ecx
c000c5d9:	0e                   	push   cs
c000c5da:	08 85 02 47 0d 05    	or     BYTE PTR [ebp+0x50d4702],al
c000c5e0:	47                   	inc    edi
c000c5e1:	0c 04                	or     al,0x4
c000c5e3:	04 c5                	add    al,0xc5
c000c5e5:	00 00                	add    BYTE PTR [eax],al
c000c5e7:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c000c5ea:	00 00                	add    BYTE PTR [eax],al
c000c5ec:	64 03 00             	add    eax,DWORD PTR fs:[eax]
c000c5ef:	00 38                	add    BYTE PTR [eax],bh
c000c5f1:	8b 00                	mov    eax,DWORD PTR [eax]
c000c5f3:	c0 3d 00 00 00 41 0e 	sar    BYTE PTR ds:0x41000000,0xe
c000c5fa:	08 85 02 47 0d 05    	or     BYTE PTR [ebp+0x50d4702],al
c000c600:	74 0c                	je     c000c60e <_edata+0x386>
c000c602:	04 04                	add    al,0x4
c000c604:	c5 00                	lds    eax,FWORD PTR [eax]
c000c606:	00 00                	add    BYTE PTR [eax],al
c000c608:	1c 00                	sbb    al,0x0
c000c60a:	00 00                	add    BYTE PTR [eax],al
c000c60c:	84 03                	test   BYTE PTR [ebx],al
c000c60e:	00 00                	add    BYTE PTR [eax],al
c000c610:	75 8b                	jne    c000c59d <_edata+0x315>
c000c612:	00 c0                	add    al,al
c000c614:	69 00 00 00 41 0e    	imul   eax,DWORD PTR [eax],0xe410000
c000c61a:	08 85 02 44 0d 05    	or     BYTE PTR [ebp+0x50d4402],al
c000c620:	02 63 0c             	add    ah,BYTE PTR [ebx+0xc]
c000c623:	04 04                	add    al,0x4
c000c625:	c5 00                	lds    eax,FWORD PTR [eax]
c000c627:	00 20                	add    BYTE PTR [eax],ah
c000c629:	00 00                	add    BYTE PTR [eax],al
c000c62b:	00 a4 03 00 00 de 8b 	add    BYTE PTR [ebx+eax*1-0x74220000],ah
c000c632:	00 c0                	add    al,al
c000c634:	2c 00                	sub    al,0x0
c000c636:	00 00                	add    BYTE PTR [eax],al
c000c638:	41                   	inc    ecx
c000c639:	0e                   	push   cs
c000c63a:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000c640:	44                   	inc    esp
c000c641:	83 03 63             	add    DWORD PTR [ebx],0x63
c000c644:	c3                   	ret    
c000c645:	41                   	inc    ecx
c000c646:	0c 04                	or     al,0x4
c000c648:	04 c5                	add    al,0xc5
c000c64a:	00 00                	add    BYTE PTR [eax],al
c000c64c:	1c 00                	sbb    al,0x0
c000c64e:	00 00                	add    BYTE PTR [eax],al
c000c650:	c8 03 00 00          	enter  0x3,0x0
c000c654:	0a 8c 00 c0 cd 00 00 	or     cl,BYTE PTR [eax+eax*1+0xcdc0]
c000c65b:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000c65e:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000c664:	02 c9                	add    cl,cl
c000c666:	0c 04                	or     al,0x4
c000c668:	04 c5                	add    al,0xc5
c000c66a:	00 00                	add    BYTE PTR [eax],al
c000c66c:	1c 00                	sbb    al,0x0
c000c66e:	00 00                	add    BYTE PTR [eax],al
c000c670:	e8 03 00 00 d7       	call   9700c678 <AR_CODE32+0x970005e0>
c000c675:	8c 00                	mov    WORD PTR [eax],es
c000c677:	c0                   	(bad)  
c000c678:	32 00                	xor    al,BYTE PTR [eax]
c000c67a:	00 00                	add    BYTE PTR [eax],al
c000c67c:	41                   	inc    ecx
c000c67d:	0e                   	push   cs
c000c67e:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000c684:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000c685:	c5 0c 04             	lds    ecx,FWORD PTR [esp+eax*1]
c000c688:	04 00                	add    al,0x0
c000c68a:	00 00                	add    BYTE PTR [eax],al
c000c68c:	1c 00                	sbb    al,0x0
c000c68e:	00 00                	add    BYTE PTR [eax],al
c000c690:	08 04 00             	or     BYTE PTR [eax+eax*1],al
c000c693:	00 09                	add    BYTE PTR [ecx],cl
c000c695:	8d 00                	lea    eax,[eax]
c000c697:	c0 10 00             	rcl    BYTE PTR [eax],0x0
c000c69a:	00 00                	add    BYTE PTR [eax],al
c000c69c:	41                   	inc    ecx
c000c69d:	0e                   	push   cs
c000c69e:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000c6a4:	4c                   	dec    esp
c000c6a5:	0c 04                	or     al,0x4
c000c6a7:	04 c5                	add    al,0xc5
c000c6a9:	00 00                	add    BYTE PTR [eax],al
c000c6ab:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c000c6ae:	00 00                	add    BYTE PTR [eax],al
c000c6b0:	28 04 00             	sub    BYTE PTR [eax+eax*1],al
c000c6b3:	00 19                	add    BYTE PTR [ecx],bl
c000c6b5:	8d 00                	lea    eax,[eax]
c000c6b7:	c0 14 00 00          	rcl    BYTE PTR [eax+eax*1],0x0
c000c6bb:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000c6be:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000c6c4:	50                   	push   eax
c000c6c5:	0c 04                	or     al,0x4
c000c6c7:	04 c5                	add    al,0xc5
c000c6c9:	00 00                	add    BYTE PTR [eax],al
c000c6cb:	00 50 01             	add    BYTE PTR [eax+0x1],dl
c000c6ce:	00 00                	add    BYTE PTR [eax],al
c000c6d0:	48                   	dec    eax
c000c6d1:	04 00                	add    al,0x0
c000c6d3:	00 2d 8d 00 c0 d4    	add    BYTE PTR ds:0xd4c0008d,ch
c000c6d9:	01 00                	add    DWORD PTR [eax],eax
c000c6db:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000c6de:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000c6e4:	42                   	inc    edx
c000c6e5:	86 04 87             	xchg   BYTE PTR [edi+eax*4],al
c000c6e8:	03 4c 83 05          	add    ecx,DWORD PTR [ebx+eax*4+0x5]
c000c6ec:	4b                   	dec    ebx
c000c6ed:	2e 0c 42             	cs or  al,0x42
c000c6f0:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000c6f4:	00 41 2e             	add    BYTE PTR [ecx+0x2e],al
c000c6f7:	04 04                	add    al,0x4
c000c6f9:	01 00                	add    DWORD PTR [eax],eax
c000c6fb:	00 00                	add    BYTE PTR [eax],al
c000c6fd:	2e 08 42 2e          	or     BYTE PTR cs:[edx+0x2e],al
c000c701:	0c 42                	or     al,0x42
c000c703:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000c707:	00 46 2e             	add    BYTE PTR [esi+0x2e],al
c000c70a:	0c 42                	or     al,0x42
c000c70c:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c000c710:	0c 41                	or     al,0x41
c000c712:	2e 08 4e 2e          	or     BYTE PTR cs:[esi+0x2e],cl
c000c716:	0c 42                	or     al,0x42
c000c718:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c000c71c:	0c 41                	or     al,0x41
c000c71e:	2e 08 43 2e          	or     BYTE PTR cs:[ebx+0x2e],al
c000c722:	0c 43                	or     al,0x43
c000c724:	2e 10 41 2e          	adc    BYTE PTR cs:[ecx+0x2e],al
c000c728:	14 45                	adc    al,0x45
c000c72a:	2e 18 45 2e          	sbb    BYTE PTR cs:[ebp+0x2e],al
c000c72e:	1c 41                	sbb    al,0x41
c000c730:	2e 20 48 2e          	and    BYTE PTR cs:[eax+0x2e],cl
c000c734:	08 41 2e             	or     BYTE PTR [ecx+0x2e],al
c000c737:	0c 42                	or     al,0x42
c000c739:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000c73d:	00 50 2e             	add    BYTE PTR [eax+0x2e],dl
c000c740:	04 04                	add    al,0x4
c000c742:	01 00                	add    DWORD PTR [eax],eax
c000c744:	00 00                	add    BYTE PTR [eax],al
c000c746:	2e 08 47 2e          	or     BYTE PTR cs:[edi+0x2e],al
c000c74a:	0c 42                	or     al,0x42
c000c74c:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000c750:	00 4f 2e             	add    BYTE PTR [edi+0x2e],cl
c000c753:	04 04                	add    al,0x4
c000c755:	01 00                	add    DWORD PTR [eax],eax
c000c757:	00 00                	add    BYTE PTR [eax],al
c000c759:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c000c75d:	0c 42                	or     al,0x42
c000c75f:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000c763:	04 04                	add    al,0x4
c000c765:	02 00                	add    al,BYTE PTR [eax]
c000c767:	00 00                	add    BYTE PTR [eax],al
c000c769:	2e 08 46 2e          	or     BYTE PTR cs:[esi+0x2e],al
c000c76d:	0c 42                	or     al,0x42
c000c76f:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c000c773:	0c 41                	or     al,0x41
c000c775:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c000c779:	0c 42                	or     al,0x42
c000c77b:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000c77f:	00 41 2e             	add    BYTE PTR [ecx+0x2e],al
c000c782:	04 04                	add    al,0x4
c000c784:	01 00                	add    DWORD PTR [eax],eax
c000c786:	00 00                	add    BYTE PTR [eax],al
c000c788:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c000c78c:	0c 42                	or     al,0x42
c000c78e:	2e 10 50 2e          	adc    BYTE PTR cs:[eax+0x2e],dl
c000c792:	0c 41                	or     al,0x41
c000c794:	2e 08 48 2e          	or     BYTE PTR cs:[eax+0x2e],cl
c000c798:	0c 47                	or     al,0x47
c000c79a:	2e 10 42 2e          	adc    BYTE PTR cs:[edx+0x2e],al
c000c79e:	14 42                	adc    al,0x42
c000c7a0:	2e 18 45 2e          	sbb    BYTE PTR cs:[ebp+0x2e],al
c000c7a4:	1c 45                	sbb    al,0x45
c000c7a6:	2e 20 48 2e          	and    BYTE PTR cs:[eax+0x2e],cl
c000c7aa:	0c 45                	or     al,0x45
c000c7ac:	2e 10 45 2e          	adc    BYTE PTR cs:[ebp+0x2e],al
c000c7b0:	14 42                	adc    al,0x42
c000c7b2:	2e 18 42 2e          	sbb    BYTE PTR cs:[edx+0x2e],al
c000c7b6:	1c 45                	sbb    al,0x45
c000c7b8:	2e 20 48 2e          	and    BYTE PTR cs:[eax+0x2e],cl
c000c7bc:	0c 45                	or     al,0x45
c000c7be:	2e 10 45 2e          	adc    BYTE PTR cs:[ebp+0x2e],al
c000c7c2:	14 42                	adc    al,0x42
c000c7c4:	2e 18 42 2e          	sbb    BYTE PTR cs:[edx+0x2e],al
c000c7c8:	1c 45                	sbb    al,0x45
c000c7ca:	2e 20 48 2e          	and    BYTE PTR cs:[eax+0x2e],cl
c000c7ce:	04 04                	add    al,0x4
c000c7d0:	01 00                	add    DWORD PTR [eax],eax
c000c7d2:	00 00                	add    BYTE PTR [eax],al
c000c7d4:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c000c7d8:	0c 41                	or     al,0x41
c000c7da:	2e 10 4d 2e          	adc    BYTE PTR cs:[ebp+0x2e],cl
c000c7de:	14 42                	adc    al,0x42
c000c7e0:	2e 18 42 2e          	sbb    BYTE PTR cs:[edx+0x2e],al
c000c7e4:	1c 45                	sbb    al,0x45
c000c7e6:	2e 20 48 2e          	and    BYTE PTR cs:[eax+0x2e],cl
c000c7ea:	00 48 2e             	add    BYTE PTR [eax+0x2e],cl
c000c7ed:	0c 47                	or     al,0x47
c000c7ef:	2e 10 45 2e          	adc    BYTE PTR cs:[ebp+0x2e],al
c000c7f3:	14 42                	adc    al,0x42
c000c7f5:	2e 18 42 2e          	sbb    BYTE PTR cs:[edx+0x2e],al
c000c7f9:	1c 45                	sbb    al,0x45
c000c7fb:	2e 20 48 2e          	and    BYTE PTR cs:[eax+0x2e],cl
c000c7ff:	00 46 2e             	add    BYTE PTR [esi+0x2e],al
c000c802:	04 04                	add    al,0x4
c000c804:	06                   	push   es
c000c805:	00 00                	add    BYTE PTR [eax],al
c000c807:	00 2e                	add    BYTE PTR [esi],ch
c000c809:	08 45 2e             	or     BYTE PTR [ebp+0x2e],al
c000c80c:	0c 41                	or     al,0x41
c000c80e:	2e 10 4d 2e          	adc    BYTE PTR cs:[ebp+0x2e],cl
c000c812:	14 45                	adc    al,0x45
c000c814:	2e 18 42 2e          	sbb    BYTE PTR cs:[edx+0x2e],al
c000c818:	1c 45                	sbb    al,0x45
c000c81a:	2e 20 48 2e          	and    BYTE PTR cs:[eax+0x2e],cl
c000c81e:	00 00                	add    BYTE PTR [eax],al
c000c820:	1c 00                	sbb    al,0x0
c000c822:	00 00                	add    BYTE PTR [eax],al
c000c824:	9c                   	pushf  
c000c825:	05 00 00 01 8f       	add    eax,0x8f010000
c000c82a:	00 c0                	add    al,al
c000c82c:	17                   	pop    ss
c000c82d:	00 00                	add    BYTE PTR [eax],al
c000c82f:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000c832:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000c838:	53                   	push   ebx
c000c839:	0c 04                	or     al,0x4
c000c83b:	04 c5                	add    al,0xc5
c000c83d:	00 00                	add    BYTE PTR [eax],al
c000c83f:	00 24 00             	add    BYTE PTR [eax+eax*1],ah
c000c842:	00 00                	add    BYTE PTR [eax],al
c000c844:	bc 05 00 00 18       	mov    esp,0x18000005
c000c849:	8f 00                	pop    DWORD PTR [eax]
c000c84b:	c0 15 00 00 00 41 0e 	rcl    BYTE PTR ds:0x41000000,0xe
c000c852:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000c858:	47                   	inc    edi
c000c859:	0a 0c 04             	or     cl,BYTE PTR [esp+eax*1]
c000c85c:	04 c5                	add    al,0xc5
c000c85e:	45                   	inc    ebp
c000c85f:	0b 41 0c             	or     eax,DWORD PTR [ecx+0xc]
c000c862:	04 04                	add    al,0x4
c000c864:	c5 00                	lds    eax,FWORD PTR [eax]
c000c866:	00 00                	add    BYTE PTR [eax],al
c000c868:	44                   	inc    esp
c000c869:	00 00                	add    BYTE PTR [eax],al
c000c86b:	00 e4                	add    ah,ah
c000c86d:	05 00 00 30 8f       	add    eax,0x8f300000
c000c872:	00 c0                	add    al,al
c000c874:	5a                   	pop    edx
c000c875:	00 00                	add    BYTE PTR [eax],al
c000c877:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000c87a:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000c880:	41                   	inc    ecx
c000c881:	86 03                	xchg   BYTE PTR [ebx],al
c000c883:	44                   	inc    esp
c000c884:	83 04 04 06          	add    DWORD PTR [esp+eax*1],0x6
c000c888:	00 00                	add    BYTE PTR [eax],al
c000c88a:	00 2e                	add    BYTE PTR [esi],ch
c000c88c:	0c 41                	or     al,0x41
c000c88e:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000c892:	00 65 2e             	add    BYTE PTR [ebp+0x2e],ah
c000c895:	04 04                	add    al,0x4
c000c897:	05 00 00 00 2e       	add    eax,0x2e000000
c000c89c:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c000c89f:	0c 45                	or     al,0x45
c000c8a1:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000c8a5:	00 47 c3             	add    BYTE PTR [edi-0x3d],al
c000c8a8:	41                   	inc    ecx
c000c8a9:	c6 41 0c 04          	mov    BYTE PTR [ecx+0xc],0x4
c000c8ad:	04 c5                	add    al,0xc5
c000c8af:	00 24 00             	add    BYTE PTR [eax+eax*1],ah
c000c8b2:	00 00                	add    BYTE PTR [eax],al
c000c8b4:	2c 06                	sub    al,0x6
c000c8b6:	00 00                	add    BYTE PTR [eax],al
c000c8b8:	8a 8f 00 c0 21 00    	mov    cl,BYTE PTR [edi+0x21c000]
c000c8be:	00 00                	add    BYTE PTR [eax],al
c000c8c0:	41                   	inc    ecx
c000c8c1:	0e                   	push   cs
c000c8c2:	08 85 02 44 0d 05    	or     BYTE PTR [ebp+0x50d4402],al
c000c8c8:	47                   	inc    edi
c000c8c9:	83 04 86 03          	add    DWORD PTR [esi+eax*4],0x3
c000c8cd:	52                   	push   edx
c000c8ce:	c3                   	ret    
c000c8cf:	41                   	inc    ecx
c000c8d0:	c6 41 0c 04          	mov    BYTE PTR [ecx+0xc],0x4
c000c8d4:	04 c5                	add    al,0xc5
c000c8d6:	00 00                	add    BYTE PTR [eax],al
c000c8d8:	28 00                	sub    BYTE PTR [eax],al
c000c8da:	00 00                	add    BYTE PTR [eax],al
c000c8dc:	54                   	push   esp
c000c8dd:	06                   	push   es
c000c8de:	00 00                	add    BYTE PTR [eax],al
c000c8e0:	ab                   	stos   DWORD PTR es:[edi],eax
c000c8e1:	8f 00                	pop    DWORD PTR [eax]
c000c8e3:	c0 7b 00 00          	sar    BYTE PTR [ebx+0x0],0x0
c000c8e7:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000c8ea:	08 85 02 44 0d 05    	or     BYTE PTR [ebp+0x50d4402],al
c000c8f0:	46                   	inc    esi
c000c8f1:	83 05 86 04 87 03 02 	add    DWORD PTR ds:0x3870486,0x2
c000c8f8:	6c                   	ins    BYTE PTR es:[edi],dx
c000c8f9:	c3                   	ret    
c000c8fa:	41                   	inc    ecx
c000c8fb:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c000c8ff:	0c 04                	or     al,0x4
c000c901:	04 c5                	add    al,0xc5
c000c903:	00 34 00             	add    BYTE PTR [eax+eax*1],dh
c000c906:	00 00                	add    BYTE PTR [eax],al
c000c908:	80 06 00             	add    BYTE PTR [esi],0x0
c000c90b:	00 26                	add    BYTE PTR [esi],ah
c000c90d:	90                   	nop
c000c90e:	00 c0                	add    al,al
c000c910:	32 00                	xor    al,BYTE PTR [eax]
c000c912:	00 00                	add    BYTE PTR [eax],al
c000c914:	41                   	inc    ecx
c000c915:	0e                   	push   cs
c000c916:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000c91c:	44                   	inc    esp
c000c91d:	2e 0c 83             	cs or  al,0x83
c000c920:	03 44 2e 10          	add    eax,DWORD PTR [esi+ebp*1+0x10]
c000c924:	46                   	inc    esi
c000c925:	2e 0c 44             	cs or  al,0x44
c000c928:	2e 08 44 2e 0c       	or     BYTE PTR cs:[esi+ebp*1+0xc],al
c000c92d:	41                   	inc    ecx
c000c92e:	2e 10 57 c5          	adc    BYTE PTR cs:[edi-0x3b],dl
c000c932:	0c 04                	or     al,0x4
c000c934:	04 c3                	add    al,0xc3
c000c936:	41                   	inc    ecx
c000c937:	13 03                	adc    eax,DWORD PTR [ebx]
c000c939:	2e 00 00             	add    BYTE PTR cs:[eax],al
c000c93c:	28 00                	sub    BYTE PTR [eax],al
c000c93e:	00 00                	add    BYTE PTR [eax],al
c000c940:	b8 06 00 00 58       	mov    eax,0x58000006
c000c945:	90                   	nop
c000c946:	00 c0                	add    al,al
c000c948:	3c 01                	cmp    al,0x1
c000c94a:	00 00                	add    BYTE PTR [eax],al
c000c94c:	41                   	inc    ecx
c000c94d:	0e                   	push   cs
c000c94e:	08 85 02 44 0d 05    	or     BYTE PTR [ebp+0x50d4402],al
c000c954:	46                   	inc    esi
c000c955:	83 05 86 04 87 03 03 	add    DWORD PTR ds:0x3870486,0x3
c000c95c:	2d 01 c3 41 c6       	sub    eax,0xc641c301
c000c961:	41                   	inc    ecx
c000c962:	c7 41 0c 04 04 c5 38 	mov    DWORD PTR [ecx+0xc],0x38c50404
c000c969:	00 00                	add    BYTE PTR [eax],al
c000c96b:	00 e4                	add    ah,ah
c000c96d:	06                   	push   es
c000c96e:	00 00                	add    BYTE PTR [eax],al
c000c970:	94                   	xchg   esp,eax
c000c971:	91                   	xchg   ecx,eax
c000c972:	00 c0                	add    al,al
c000c974:	36 00 00             	add    BYTE PTR ss:[eax],al
c000c977:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000c97a:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000c980:	44                   	inc    esp
c000c981:	2e 0c 83             	cs or  al,0x83
c000c984:	03 44 2e 10          	add    eax,DWORD PTR [esi+ebp*1+0x10]
c000c988:	4b                   	dec    ebx
c000c989:	2e 04 04             	cs add al,0x4
c000c98c:	04 00                	add    al,0x0
c000c98e:	00 00                	add    BYTE PTR [eax],al
c000c990:	2e 08 43 2e          	or     BYTE PTR cs:[ebx+0x2e],al
c000c994:	0c 41                	or     al,0x41
c000c996:	2e 10 57 c5          	adc    BYTE PTR cs:[edi-0x3b],dl
c000c99a:	0c 04                	or     al,0x4
c000c99c:	04 c3                	add    al,0xc3
c000c99e:	41                   	inc    ecx
c000c99f:	13 03                	adc    eax,DWORD PTR [ebx]
c000c9a1:	2e 00 00             	add    BYTE PTR cs:[eax],al
c000c9a4:	10 01                	adc    BYTE PTR [ecx],al
c000c9a6:	00 00                	add    BYTE PTR [eax],al
c000c9a8:	20 07                	and    BYTE PTR [edi],al
c000c9aa:	00 00                	add    BYTE PTR [eax],al
c000c9ac:	ca 91 00             	retf   0x91
c000c9af:	c0 a0 01 00 00 41 0e 	shl    BYTE PTR [eax+0x41000001],0xe
c000c9b6:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000c9bc:	46                   	inc    esi
c000c9bd:	83 05 86 04 87 03 63 	add    DWORD PTR ds:0x3870486,0x63
c000c9c4:	2e 04 04             	cs add al,0x4
c000c9c7:	01 00                	add    DWORD PTR [eax],eax
c000c9c9:	00 00                	add    BYTE PTR [eax],al
c000c9cb:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c000c9cf:	0c 42                	or     al,0x42
c000c9d1:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000c9d5:	00 46 2e             	add    BYTE PTR [esi+0x2e],al
c000c9d8:	04 04                	add    al,0x4
c000c9da:	01 00                	add    DWORD PTR [eax],eax
c000c9dc:	00 00                	add    BYTE PTR [eax],al
c000c9de:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c000c9e2:	0c 42                	or     al,0x42
c000c9e4:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000c9e8:	04 04                	add    al,0x4
c000c9ea:	02 00                	add    al,BYTE PTR [eax]
c000c9ec:	00 00                	add    BYTE PTR [eax],al
c000c9ee:	2e 08 42 2e          	or     BYTE PTR cs:[edx+0x2e],al
c000c9f2:	0c 42                	or     al,0x42
c000c9f4:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c000c9f8:	0c 41                	or     al,0x41
c000c9fa:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c000c9fe:	0c 42                	or     al,0x42
c000ca00:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000ca04:	04 04                	add    al,0x4
c000ca06:	02 00                	add    al,BYTE PTR [eax]
c000ca08:	00 00                	add    BYTE PTR [eax],al
c000ca0a:	2e 08 43 2e          	or     BYTE PTR cs:[ebx+0x2e],al
c000ca0e:	0c 42                	or     al,0x42
c000ca10:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c000ca14:	0c 41                	or     al,0x41
c000ca16:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c000ca1a:	0c 42                	or     al,0x42
c000ca1c:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000ca20:	04 04                	add    al,0x4
c000ca22:	02 00                	add    al,BYTE PTR [eax]
c000ca24:	00 00                	add    BYTE PTR [eax],al
c000ca26:	2e 08 43 2e          	or     BYTE PTR cs:[ebx+0x2e],al
c000ca2a:	0c 42                	or     al,0x42
c000ca2c:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c000ca30:	0c 41                	or     al,0x41
c000ca32:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c000ca36:	0c 42                	or     al,0x42
c000ca38:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000ca3c:	00 74 2e 04          	add    BYTE PTR [esi+ebp*1+0x4],dh
c000ca40:	04 05                	add    al,0x5
c000ca42:	00 00                	add    BYTE PTR [eax],al
c000ca44:	00 2e                	add    BYTE PTR [esi],ch
c000ca46:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c000ca49:	0c 45                	or     al,0x45
c000ca4b:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000ca4f:	00 62 2e             	add    BYTE PTR [edx+0x2e],ah
c000ca52:	04 04                	add    al,0x4
c000ca54:	01 00                	add    DWORD PTR [eax],eax
c000ca56:	00 00                	add    BYTE PTR [eax],al
c000ca58:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c000ca5c:	0c 45                	or     al,0x45
c000ca5e:	2e 10 4c 2e 0c       	adc    BYTE PTR cs:[esi+ebp*1+0xc],cl
c000ca63:	43                   	inc    ebx
c000ca64:	2e 08 4a 2e          	or     BYTE PTR cs:[edx+0x2e],cl
c000ca68:	0c 47                	or     al,0x47
c000ca6a:	2e 10 4f 2e          	adc    BYTE PTR cs:[edi+0x2e],cl
c000ca6e:	0c 41                	or     al,0x41
c000ca70:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c000ca74:	0c 45                	or     al,0x45
c000ca76:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000ca7a:	04 04                	add    al,0x4
c000ca7c:	01 00                	add    DWORD PTR [eax],eax
c000ca7e:	00 00                	add    BYTE PTR [eax],al
c000ca80:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c000ca84:	0c 45                	or     al,0x45
c000ca86:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000ca8a:	04 04                	add    al,0x4
c000ca8c:	01 00                	add    DWORD PTR [eax],eax
c000ca8e:	00 00                	add    BYTE PTR [eax],al
c000ca90:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c000ca94:	0c 45                	or     al,0x45
c000ca96:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000ca9a:	04 04                	add    al,0x4
c000ca9c:	05 00 00 00 2e       	add    eax,0x2e000000
c000caa1:	08 45 2e             	or     BYTE PTR [ebp+0x2e],al
c000caa4:	0c 45                	or     al,0x45
c000caa6:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000caaa:	00 44 c3 41          	add    BYTE PTR [ebx+eax*8+0x41],al
c000caae:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c000cab2:	0c 04                	or     al,0x4
c000cab4:	04 c5                	add    al,0xc5
c000cab6:	00 00                	add    BYTE PTR [eax],al
c000cab8:	1c 00                	sbb    al,0x0
c000caba:	00 00                	add    BYTE PTR [eax],al
c000cabc:	34 08                	xor    al,0x8
c000cabe:	00 00                	add    BYTE PTR [eax],al
c000cac0:	6a 93                	push   0xffffff93
c000cac2:	00 c0                	add    al,al
c000cac4:	12 00                	adc    al,BYTE PTR [eax]
c000cac6:	00 00                	add    BYTE PTR [eax],al
c000cac8:	41                   	inc    ecx
c000cac9:	0e                   	push   cs
c000caca:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000cad0:	44                   	inc    esp
c000cad1:	0c 04                	or     al,0x4
c000cad3:	04 c5                	add    al,0xc5
c000cad5:	00 00                	add    BYTE PTR [eax],al
c000cad7:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c000cada:	00 00                	add    BYTE PTR [eax],al
c000cadc:	54                   	push   esp
c000cadd:	08 00                	or     BYTE PTR [eax],al
c000cadf:	00 7c 93 00          	add    BYTE PTR [ebx+edx*4+0x0],bh
c000cae3:	c0 22 00             	shl    BYTE PTR [edx],0x0
c000cae6:	00 00                	add    BYTE PTR [eax],al
c000cae8:	41                   	inc    ecx
c000cae9:	0e                   	push   cs
c000caea:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000caf0:	44                   	inc    esp
c000caf1:	0c 04                	or     al,0x4
c000caf3:	04 c5                	add    al,0xc5
c000caf5:	00 00                	add    BYTE PTR [eax],al
c000caf7:	00 54 00 00          	add    BYTE PTR [eax+eax*1+0x0],dl
c000cafb:	00 74 08 00          	add    BYTE PTR [eax+ecx*1+0x0],dh
c000caff:	00 9e 93 00 c0 72    	add    BYTE PTR [esi+0x72c00093],bl
c000cb05:	00 00                	add    BYTE PTR [eax],al
c000cb07:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000cb0a:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000cb10:	46                   	inc    esi
c000cb11:	83 05 86 04 87 03 47 	add    DWORD PTR ds:0x3870486,0x47
c000cb18:	2e 04 04             	cs add al,0x4
c000cb1b:	13 00                	adc    eax,DWORD PTR [eax]
c000cb1d:	00 00                	add    BYTE PTR [eax],al
c000cb1f:	2e 00 51 2e          	add    BYTE PTR cs:[ecx+0x2e],dl
c000cb23:	04 04                	add    al,0x4
c000cb25:	04 00                	add    al,0x0
c000cb27:	00 00                	add    BYTE PTR [eax],al
c000cb29:	2e 08 42 2e          	or     BYTE PTR cs:[edx+0x2e],al
c000cb2d:	0c 45                	or     al,0x45
c000cb2f:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000cb33:	04 04                	add    al,0x4
c000cb35:	11 00                	adc    DWORD PTR [eax],eax
c000cb37:	00 00                	add    BYTE PTR [eax],al
c000cb39:	2e 08 47 2e          	or     BYTE PTR cs:[edi+0x2e],al
c000cb3d:	0c 41                	or     al,0x41
c000cb3f:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000cb43:	00 46 c3             	add    BYTE PTR [esi-0x3d],al
c000cb46:	41                   	inc    ecx
c000cb47:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c000cb4b:	0c 04                	or     al,0x4
c000cb4d:	04 c5                	add    al,0xc5
c000cb4f:	00 60 00             	add    BYTE PTR [eax+0x0],ah
c000cb52:	00 00                	add    BYTE PTR [eax],al
c000cb54:	cc                   	int3   
c000cb55:	08 00                	or     BYTE PTR [eax],al
c000cb57:	00 10                	add    BYTE PTR [eax],dl
c000cb59:	94                   	xchg   esp,eax
c000cb5a:	00 c0                	add    al,al
c000cb5c:	72 00                	jb     c000cb5e <_edata+0x8d6>
c000cb5e:	00 00                	add    BYTE PTR [eax],al
c000cb60:	41                   	inc    ecx
c000cb61:	0e                   	push   cs
c000cb62:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000cb68:	46                   	inc    esi
c000cb69:	83 05 86 04 87 03 58 	add    DWORD PTR ds:0x3870486,0x58
c000cb70:	2e 04 04             	cs add al,0x4
c000cb73:	01 00                	add    DWORD PTR [eax],eax
c000cb75:	00 00                	add    BYTE PTR [eax],al
c000cb77:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c000cb7b:	0c 45                	or     al,0x45
c000cb7d:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000cb81:	00 4b 2e             	add    BYTE PTR [ebx+0x2e],cl
c000cb84:	04 04                	add    al,0x4
c000cb86:	01 00                	add    DWORD PTR [eax],eax
c000cb88:	00 00                	add    BYTE PTR [eax],al
c000cb8a:	2e 08 42 2e          	or     BYTE PTR cs:[edx+0x2e],al
c000cb8e:	0c 43                	or     al,0x43
c000cb90:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000cb94:	00 45 2e             	add    BYTE PTR [ebp+0x2e],al
c000cb97:	04 04                	add    al,0x4
c000cb99:	02 00                	add    al,BYTE PTR [eax]
c000cb9b:	00 00                	add    BYTE PTR [eax],al
c000cb9d:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c000cba1:	0c 41                	or     al,0x41
c000cba3:	2e 10 4e 2e          	adc    BYTE PTR cs:[esi+0x2e],cl
c000cba7:	00 4e c3             	add    BYTE PTR [esi-0x3d],cl
c000cbaa:	41                   	inc    ecx
c000cbab:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c000cbaf:	0c 04                	or     al,0x4
c000cbb1:	04 c5                	add    al,0xc5
c000cbb3:	00 70 00             	add    BYTE PTR [eax+0x0],dh
c000cbb6:	00 00                	add    BYTE PTR [eax],al
c000cbb8:	30 09                	xor    BYTE PTR [ecx],cl
c000cbba:	00 00                	add    BYTE PTR [eax],al
c000cbbc:	82                   	(bad)  
c000cbbd:	94                   	xchg   esp,eax
c000cbbe:	00 c0                	add    al,al
c000cbc0:	4f                   	dec    edi
c000cbc1:	00 00                	add    BYTE PTR [eax],al
c000cbc3:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000cbc6:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000cbcc:	42                   	inc    edx
c000cbcd:	83 04 86 03          	add    DWORD PTR [esi+eax*4],0x3
c000cbd1:	44                   	inc    esp
c000cbd2:	2e 04 04             	cs add al,0x4
c000cbd5:	01 00                	add    DWORD PTR [eax],eax
c000cbd7:	00 00                	add    BYTE PTR [eax],al
c000cbd9:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c000cbdd:	0c 42                	or     al,0x42
c000cbdf:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000cbe3:	00 4a 2e             	add    BYTE PTR [edx+0x2e],cl
c000cbe6:	04 04                	add    al,0x4
c000cbe8:	01 00                	add    DWORD PTR [eax],eax
c000cbea:	00 00                	add    BYTE PTR [eax],al
c000cbec:	2e 08 42 2e          	or     BYTE PTR cs:[edx+0x2e],al
c000cbf0:	0c 41                	or     al,0x41
c000cbf2:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000cbf6:	00 41 2e             	add    BYTE PTR [ecx+0x2e],al
c000cbf9:	04 04                	add    al,0x4
c000cbfb:	01 00                	add    DWORD PTR [eax],eax
c000cbfd:	00 00                	add    BYTE PTR [eax],al
c000cbff:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c000cc03:	0c 42                	or     al,0x42
c000cc05:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000cc09:	04 04                	add    al,0x4
c000cc0b:	02 00                	add    al,BYTE PTR [eax]
c000cc0d:	00 00                	add    BYTE PTR [eax],al
c000cc0f:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c000cc13:	0c 42                	or     al,0x42
c000cc15:	2e 10 4b c3          	adc    BYTE PTR cs:[ebx-0x3d],cl
c000cc19:	41                   	inc    ecx
c000cc1a:	c6 41 0c 04          	mov    BYTE PTR [ecx+0xc],0x4
c000cc1e:	04 c5                	add    al,0xc5
c000cc20:	41                   	inc    ecx
c000cc21:	13 03                	adc    eax,DWORD PTR [ebx]
c000cc23:	2e 00 00             	add    BYTE PTR cs:[eax],al
c000cc26:	00 00                	add    BYTE PTR [eax],al
c000cc28:	3c 00                	cmp    al,0x0
c000cc2a:	00 00                	add    BYTE PTR [eax],al
c000cc2c:	a4                   	movs   BYTE PTR es:[edi],BYTE PTR ds:[esi]
c000cc2d:	09 00                	or     DWORD PTR [eax],eax
c000cc2f:	00 d1                	add    cl,dl
c000cc31:	94                   	xchg   esp,eax
c000cc32:	00 c0                	add    al,al
c000cc34:	34 00                	xor    al,0x0
c000cc36:	00 00                	add    BYTE PTR [eax],al
c000cc38:	41                   	inc    ecx
c000cc39:	0e                   	push   cs
c000cc3a:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000cc40:	44                   	inc    esp
c000cc41:	2e 08 83 03 44 2e 0c 	or     BYTE PTR cs:[ebx+0xc2e4403],al
c000cc48:	42                   	inc    edx
c000cc49:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000cc4d:	00 48 2e             	add    BYTE PTR [eax+0x2e],cl
c000cc50:	04 04                	add    al,0x4
c000cc52:	01 00                	add    DWORD PTR [eax],eax
c000cc54:	00 00                	add    BYTE PTR [eax],al
c000cc56:	2e 08 42 2e          	or     BYTE PTR cs:[edx+0x2e],al
c000cc5a:	0c 41                	or     al,0x41
c000cc5c:	2e 10 4e 2e          	adc    BYTE PTR cs:[esi+0x2e],cl
c000cc60:	00 44 c5 0c          	add    BYTE PTR [ebp+eax*8+0xc],al
c000cc64:	04 04                	add    al,0x4
c000cc66:	c3                   	ret    
c000cc67:	00 8c 00 00 00 e4 09 	add    BYTE PTR [eax+eax*1+0x9e40000],cl
c000cc6e:	00 00                	add    BYTE PTR [eax],al
c000cc70:	05 95 00 c0 a4       	add    eax,0xa4c00095
c000cc75:	00 00                	add    BYTE PTR [eax],al
c000cc77:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000cc7a:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000cc80:	41                   	inc    ecx
c000cc81:	87 03                	xchg   DWORD PTR [ebx],eax
c000cc83:	4a                   	dec    edx
c000cc84:	83 05 86 04 04 29 00 	add    DWORD PTR ds:0x29040486,0x0
c000cc8b:	00 00                	add    BYTE PTR [eax],al
c000cc8d:	2e 04 04             	cs add al,0x4
c000cc90:	01 00                	add    DWORD PTR [eax],eax
c000cc92:	00 00                	add    BYTE PTR [eax],al
c000cc94:	2e 08 42 2e          	or     BYTE PTR cs:[edx+0x2e],al
c000cc98:	0c 45                	or     al,0x45
c000cc9a:	2e 10 47 2e          	adc    BYTE PTR cs:[edi+0x2e],al
c000cc9e:	00 45 2e             	add    BYTE PTR [ebp+0x2e],al
c000cca1:	04 04                	add    al,0x4
c000cca3:	05 00 00 00 2e       	add    eax,0x2e000000
c000cca8:	08 45 2e             	or     BYTE PTR [ebp+0x2e],al
c000ccab:	0c 45                	or     al,0x45
c000ccad:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000ccb1:	00 41 2e             	add    BYTE PTR [ecx+0x2e],al
c000ccb4:	04 04                	add    al,0x4
c000ccb6:	01 00                	add    DWORD PTR [eax],eax
c000ccb8:	00 00                	add    BYTE PTR [eax],al
c000ccba:	2e 08 42 2e          	or     BYTE PTR cs:[edx+0x2e],al
c000ccbe:	0c 41                	or     al,0x41
c000ccc0:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000ccc4:	00 4b 2e             	add    BYTE PTR [ebx+0x2e],cl
c000ccc7:	04 04                	add    al,0x4
c000ccc9:	05 00 00 00 2e       	add    eax,0x2e000000
c000ccce:	08 45 2e             	or     BYTE PTR [ebp+0x2e],al
c000ccd1:	0c 45                	or     al,0x45
c000ccd3:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000ccd7:	00 41 2e             	add    BYTE PTR [ecx+0x2e],al
c000ccda:	04 04                	add    al,0x4
c000ccdc:	01 00                	add    DWORD PTR [eax],eax
c000ccde:	00 00                	add    BYTE PTR [eax],al
c000cce0:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c000cce4:	0c 41                	or     al,0x41
c000cce6:	2e 10 4b c3          	adc    BYTE PTR cs:[ebx-0x3d],cl
c000ccea:	41                   	inc    ecx
c000cceb:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c000ccef:	0c 04                	or     al,0x4
c000ccf1:	04 c5                	add    al,0xc5
c000ccf3:	41                   	inc    ecx
c000ccf4:	13 03                	adc    eax,DWORD PTR [ebx]
c000ccf6:	2e 00 28             	add    BYTE PTR cs:[eax],ch
c000ccf9:	00 00                	add    BYTE PTR [eax],al
c000ccfb:	00 74 0a 00          	add    BYTE PTR [edx+ecx*1+0x0],dh
c000ccff:	00 a9 95 00 c0 22    	add    BYTE PTR [ecx+0x22c00095],ch
c000cd05:	00 00                	add    BYTE PTR [eax],al
c000cd07:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000cd0a:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000cd10:	41                   	inc    ecx
c000cd11:	83 03 44             	add    DWORD PTR [ebx],0x44
c000cd14:	2e 04 04             	cs add al,0x4
c000cd17:	0c 00                	or     al,0x0
c000cd19:	00 00                	add    BYTE PTR [eax],al
c000cd1b:	2e 00 4d c5          	add    BYTE PTR cs:[ebp-0x3b],cl
c000cd1f:	0c 04                	or     al,0x4
c000cd21:	04 c3                	add    al,0xc3
c000cd23:	00 44 00 00          	add    BYTE PTR [eax+eax*1+0x0],al
c000cd27:	00 a0 0a 00 00 cc    	add    BYTE PTR [eax-0x33fffff6],ah
c000cd2d:	95                   	xchg   ebp,eax
c000cd2e:	00 c0                	add    al,al
c000cd30:	43                   	inc    ebx
c000cd31:	00 00                	add    BYTE PTR [eax],al
c000cd33:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000cd36:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000cd3c:	41                   	inc    ecx
c000cd3d:	86 03                	xchg   BYTE PTR [ebx],al
c000cd3f:	45                   	inc    ebp
c000cd40:	83 04 04 06          	add    DWORD PTR [esp+eax*1],0x6
c000cd44:	00 00                	add    BYTE PTR [eax],al
c000cd46:	00 2e                	add    BYTE PTR [esi],ch
c000cd48:	0c 46                	or     al,0x46
c000cd4a:	2e 10 4a 2e          	adc    BYTE PTR cs:[edx+0x2e],cl
c000cd4e:	00 49 2e             	add    BYTE PTR [ecx+0x2e],cl
c000cd51:	04 04                	add    al,0x4
c000cd53:	05 00 00 00 2e       	add    eax,0x2e000000
c000cd58:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c000cd5b:	0c 45                	or     al,0x45
c000cd5d:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000cd61:	00 44 c3 41          	add    BYTE PTR [ebx+eax*8+0x41],al
c000cd65:	c6 41 0c 04          	mov    BYTE PTR [ecx+0xc],0x4
c000cd69:	04 c5                	add    al,0xc5
c000cd6b:	00 28                	add    BYTE PTR [eax],ch
c000cd6d:	00 00                	add    BYTE PTR [eax],al
c000cd6f:	00 e8                	add    al,ch
c000cd71:	0a 00                	or     al,BYTE PTR [eax]
c000cd73:	00 0f                	add    BYTE PTR [edi],cl
c000cd75:	96                   	xchg   esi,eax
c000cd76:	00 c0                	add    al,al
c000cd78:	26 00 00             	add    BYTE PTR es:[eax],al
c000cd7b:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000cd7e:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000cd84:	43                   	inc    ebx
c000cd85:	2e 08 55 2e          	or     BYTE PTR cs:[ebp+0x2e],dl
c000cd89:	0c 41                	or     al,0x41
c000cd8b:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000cd8f:	00 41 c5             	add    BYTE PTR [ecx-0x3b],al
c000cd92:	0c 04                	or     al,0x4
c000cd94:	04 00                	add    al,0x0
c000cd96:	00 00                	add    BYTE PTR [eax],al
c000cd98:	98                   	cwde   
c000cd99:	00 00                	add    BYTE PTR [eax],al
c000cd9b:	00 14 0b             	add    BYTE PTR [ebx+ecx*1],dl
c000cd9e:	00 00                	add    BYTE PTR [eax],al
c000cda0:	35 96 00 c0 da       	xor    eax,0xdac00096
c000cda5:	00 00                	add    BYTE PTR [eax],al
c000cda7:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000cdaa:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000cdb0:	46                   	inc    esi
c000cdb1:	83 05 86 04 87 03 58 	add    DWORD PTR ds:0x3870486,0x58
c000cdb8:	2e 04 04             	cs add al,0x4
c000cdbb:	04 00                	add    al,0x0
c000cdbd:	00 00                	add    BYTE PTR [eax],al
c000cdbf:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c000cdc3:	0c 41                	or     al,0x41
c000cdc5:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000cdc9:	00 49 2e             	add    BYTE PTR [ecx+0x2e],cl
c000cdcc:	04 04                	add    al,0x4
c000cdce:	05 00 00 00 2e       	add    eax,0x2e000000
c000cdd3:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c000cdd6:	0c 45                	or     al,0x45
c000cdd8:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000cddc:	00 46 2e             	add    BYTE PTR [esi+0x2e],al
c000cddf:	04 04                	add    al,0x4
c000cde1:	04 00                	add    al,0x0
c000cde3:	00 00                	add    BYTE PTR [eax],al
c000cde5:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c000cde9:	0c 41                	or     al,0x41
c000cdeb:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000cdef:	00 49 2e             	add    BYTE PTR [ecx+0x2e],cl
c000cdf2:	04 04                	add    al,0x4
c000cdf4:	05 00 00 00 2e       	add    eax,0x2e000000
c000cdf9:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c000cdfc:	0c 45                	or     al,0x45
c000cdfe:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000ce02:	00 46 2e             	add    BYTE PTR [esi+0x2e],al
c000ce05:	04 04                	add    al,0x4
c000ce07:	04 00                	add    al,0x0
c000ce09:	00 00                	add    BYTE PTR [eax],al
c000ce0b:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c000ce0f:	0c 41                	or     al,0x41
c000ce11:	2e 10 54 2e 00       	adc    BYTE PTR cs:[esi+ebp*1+0x0],dl
c000ce16:	5a                   	pop    edx
c000ce17:	2e 04 04             	cs add al,0x4
c000ce1a:	05 00 00 00 2e       	add    eax,0x2e000000
c000ce1f:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c000ce22:	0c 45                	or     al,0x45
c000ce24:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000ce28:	00 47 c3             	add    BYTE PTR [edi-0x3d],al
c000ce2b:	41                   	inc    ecx
c000ce2c:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c000ce30:	0c 04                	or     al,0x4
c000ce32:	04 c5                	add    al,0xc5
c000ce34:	64 00 00             	add    BYTE PTR fs:[eax],al
c000ce37:	00 b0 0b 00 00 0f    	add    BYTE PTR [eax+0xf00000b],dh
c000ce3d:	97                   	xchg   edi,eax
c000ce3e:	00 c0                	add    al,al
c000ce40:	8c 00                	mov    WORD PTR [eax],es
c000ce42:	00 00                	add    BYTE PTR [eax],al
c000ce44:	41                   	inc    ecx
c000ce45:	0e                   	push   cs
c000ce46:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000ce4c:	46                   	inc    esi
c000ce4d:	83 05 86 04 87 03 55 	add    DWORD PTR ds:0x3870486,0x55
c000ce54:	2e 04 04             	cs add al,0x4
c000ce57:	05 00 00 00 2e       	add    eax,0x2e000000
c000ce5c:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c000ce5f:	0c 45                	or     al,0x45
c000ce61:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000ce65:	00 43 2e             	add    BYTE PTR [ebx+0x2e],al
c000ce68:	0c 44                	or     al,0x44
c000ce6a:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000ce6e:	00 47 2e             	add    BYTE PTR [edi+0x2e],al
c000ce71:	0c 41                	or     al,0x41
c000ce73:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c000ce77:	0c 43                	or     al,0x43
c000ce79:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000ce7d:	00 4f 2e             	add    BYTE PTR [edi+0x2e],cl
c000ce80:	04 04                	add    al,0x4
c000ce82:	05 00 00 00 2e       	add    eax,0x2e000000
c000ce87:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c000ce8a:	0c 45                	or     al,0x45
c000ce8c:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000ce90:	00 47 c3             	add    BYTE PTR [edi-0x3d],al
c000ce93:	41                   	inc    ecx
c000ce94:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c000ce98:	0c 04                	or     al,0x4
c000ce9a:	04 c5                	add    al,0xc5
c000ce9c:	40                   	inc    eax
c000ce9d:	00 00                	add    BYTE PTR [eax],al
c000ce9f:	00 18                	add    BYTE PTR [eax],bl
c000cea1:	0c 00                	or     al,0x0
c000cea3:	00 9b 97 00 c0 5b    	add    BYTE PTR [ebx+0x5bc00097],bl
c000cea9:	00 00                	add    BYTE PTR [eax],al
c000ceab:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000ceae:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000ceb4:	42                   	inc    edx
c000ceb5:	83 04 86 03          	add    DWORD PTR [esi+eax*4],0x3
c000ceb9:	51                   	push   ecx
c000ceba:	2e 0c 44             	cs or  al,0x44
c000cebd:	2e 10 4d 2e          	adc    BYTE PTR cs:[ebp+0x2e],cl
c000cec1:	00 4d 2e             	add    BYTE PTR [ebp+0x2e],cl
c000cec4:	04 04                	add    al,0x4
c000cec6:	05 00 00 00 2e       	add    eax,0x2e000000
c000cecb:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c000cece:	0c 45                	or     al,0x45
c000ced0:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000ced4:	00 50 c3             	add    BYTE PTR [eax-0x3d],dl
c000ced7:	41                   	inc    ecx
c000ced8:	c6 41 0c 04          	mov    BYTE PTR [ecx+0xc],0x4
c000cedc:	04 c5                	add    al,0xc5
c000cede:	00 00                	add    BYTE PTR [eax],al
c000cee0:	54                   	push   esp
c000cee1:	00 00                	add    BYTE PTR [eax],al
c000cee3:	00 5c 0c 00          	add    BYTE PTR [esp+ecx*1+0x0],bl
c000cee7:	00 f6                	add    dh,dh
c000cee9:	97                   	xchg   edi,eax
c000ceea:	00 c0                	add    al,al
c000ceec:	78 00                	js     c000ceee <_edata+0xc66>
c000ceee:	00 00                	add    BYTE PTR [eax],al
c000cef0:	41                   	inc    ecx
c000cef1:	0e                   	push   cs
c000cef2:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000cef8:	42                   	inc    edx
c000cef9:	83 04 86 03          	add    DWORD PTR [esi+eax*4],0x3
c000cefd:	53                   	push   ebx
c000cefe:	2e 04 04             	cs add al,0x4
c000cf01:	05 00 00 00 2e       	add    eax,0x2e000000
c000cf06:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c000cf09:	0c 45                	or     al,0x45
c000cf0b:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000cf0f:	00 50 0a             	add    BYTE PTR [eax+0xa],dl
c000cf12:	c3                   	ret    
c000cf13:	41                   	inc    ecx
c000cf14:	c6 41 0c 04          	mov    BYTE PTR [ecx+0xc],0x4
c000cf18:	04 c5                	add    al,0xc5
c000cf1a:	41                   	inc    ecx
c000cf1b:	0b 47 2e             	or     eax,DWORD PTR [edi+0x2e]
c000cf1e:	04 04                	add    al,0x4
c000cf20:	05 00 00 00 2e       	add    eax,0x2e000000
c000cf25:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c000cf28:	0c 45                	or     al,0x45
c000cf2a:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000cf2e:	00 57 c3             	add    BYTE PTR [edi-0x3d],dl
c000cf31:	41                   	inc    ecx
c000cf32:	c6 41 0c 04          	mov    BYTE PTR [ecx+0xc],0x4
c000cf36:	04 c5                	add    al,0xc5
c000cf38:	28 00                	sub    BYTE PTR [eax],al
c000cf3a:	00 00                	add    BYTE PTR [eax],al
c000cf3c:	b4 0c                	mov    ah,0xc
c000cf3e:	00 00                	add    BYTE PTR [eax],al
c000cf40:	85 98 00 c0 1a 00    	test   DWORD PTR [eax+0x1ac000],ebx
c000cf46:	00 00                	add    BYTE PTR [eax],al
c000cf48:	41                   	inc    ecx
c000cf49:	0e                   	push   cs
c000cf4a:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000cf50:	41                   	inc    ecx
c000cf51:	86 03                	xchg   BYTE PTR [ebx],al
c000cf53:	44                   	inc    esp
c000cf54:	83 04 04 0e          	add    DWORD PTR [esp+eax*1],0xe
c000cf58:	00 00                	add    BYTE PTR [eax],al
c000cf5a:	00 c3                	add    bl,al
c000cf5c:	41                   	inc    ecx
c000cf5d:	c6 41 0c 04          	mov    BYTE PTR [ecx+0xc],0x4
c000cf61:	04 c5                	add    al,0xc5
c000cf63:	00 38                	add    BYTE PTR [eax],bh
c000cf65:	00 00                	add    BYTE PTR [eax],al
c000cf67:	00 e0                	add    al,ah
c000cf69:	0c 00                	or     al,0x0
c000cf6b:	00 9f 98 00 c0 64    	add    BYTE PTR [edi+0x64c00098],bl
c000cf71:	00 00                	add    BYTE PTR [eax],al
c000cf73:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000cf76:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000cf7c:	44                   	inc    esp
c000cf7d:	2e 04 83             	cs add al,0x83
c000cf80:	03 48 2e             	add    ecx,DWORD PTR [eax+0x2e]
c000cf83:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c000cf86:	0c 41                	or     al,0x41
c000cf88:	2e 10 49 2e          	adc    BYTE PTR cs:[ecx+0x2e],cl
c000cf8c:	0c 41                	or     al,0x41
c000cf8e:	2e 08 43 2e          	or     BYTE PTR cs:[ebx+0x2e],al
c000cf92:	0c 44                	or     al,0x44
c000cf94:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000cf98:	00 78 c5             	add    BYTE PTR [eax-0x3b],bh
c000cf9b:	0c 04                	or     al,0x4
c000cf9d:	04 c3                	add    al,0xc3
c000cf9f:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c000cfa2:	00 00                	add    BYTE PTR [eax],al
c000cfa4:	1c 0d                	sbb    al,0xd
c000cfa6:	00 00                	add    BYTE PTR [eax],al
c000cfa8:	03 99 00 c0 0c 00    	add    ebx,DWORD PTR [ecx+0xcc000]
c000cfae:	00 00                	add    BYTE PTR [eax],al
c000cfb0:	41                   	inc    ecx
c000cfb1:	0e                   	push   cs
c000cfb2:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000cfb8:	48                   	dec    eax
c000cfb9:	0c 04                	or     al,0x4
c000cfbb:	04 c5                	add    al,0xc5
c000cfbd:	00 00                	add    BYTE PTR [eax],al
c000cfbf:	00 40 00             	add    BYTE PTR [eax+0x0],al
c000cfc2:	00 00                	add    BYTE PTR [eax],al
c000cfc4:	3c 0d                	cmp    al,0xd
c000cfc6:	00 00                	add    BYTE PTR [eax],al
c000cfc8:	0f 99 00             	setns  BYTE PTR [eax]
c000cfcb:	c0 56 00 00          	rcl    BYTE PTR [esi+0x0],0x0
c000cfcf:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000cfd2:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000cfd8:	43                   	inc    ebx
c000cfd9:	2e 0c 45             	cs or  al,0x45
c000cfdc:	2e 10 59 2e          	adc    BYTE PTR cs:[ecx+0x2e],bl
c000cfe0:	04 04                	add    al,0x4
c000cfe2:	02 00                	add    al,BYTE PTR [eax]
c000cfe4:	00 00                	add    BYTE PTR [eax],al
c000cfe6:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c000cfea:	0c 41                	or     al,0x41
c000cfec:	2e 10 59 2e          	adc    BYTE PTR cs:[ecx+0x2e],bl
c000cff0:	0c 41                	or     al,0x41
c000cff2:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c000cff6:	0c 45                	or     al,0x45
c000cff8:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000cffc:	00 41 c5             	add    BYTE PTR [ecx-0x3b],al
c000cfff:	0c 04                	or     al,0x4
c000d001:	04 00                	add    al,0x0
c000d003:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c000d006:	00 00                	add    BYTE PTR [eax],al
c000d008:	80 0d 00 00 65 99 00 	or     BYTE PTR ds:0x99650000,0x0
c000d00f:	c0 56 00 00          	rcl    BYTE PTR [esi+0x0],0x0
c000d013:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000d016:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000d01c:	02 52 0c             	add    dl,BYTE PTR [edx+0xc]
c000d01f:	04 04                	add    al,0x4
c000d021:	c5 00                	lds    eax,FWORD PTR [eax]
c000d023:	00 b8 00 00 00 a0    	add    BYTE PTR [eax-0x60000000],bh
c000d029:	0d 00 00 bb 99       	or     eax,0x99bb0000
c000d02e:	00 c0                	add    al,al
c000d030:	bf 00 00 00 41       	mov    edi,0x41000000
c000d035:	0e                   	push   cs
c000d036:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000d03c:	41                   	inc    ecx
c000d03d:	86 03                	xchg   BYTE PTR [ebx],al
c000d03f:	47                   	inc    edi
c000d040:	2e 0c 42             	cs or  al,0x42
c000d043:	2e 10 83 04 04 0e 00 	adc    BYTE PTR cs:[ebx+0xe0404],al
c000d04a:	00 00                	add    BYTE PTR [eax],al
c000d04c:	2e 04 04             	cs add al,0x4
c000d04f:	01 00                	add    DWORD PTR [eax],eax
c000d051:	00 00                	add    BYTE PTR [eax],al
c000d053:	2e 08 43 2e          	or     BYTE PTR cs:[ebx+0x2e],al
c000d057:	0c 41                	or     al,0x41
c000d059:	2e 10 4a 2e          	adc    BYTE PTR cs:[edx+0x2e],cl
c000d05d:	04 04                	add    al,0x4
c000d05f:	03 00                	add    eax,DWORD PTR [eax]
c000d061:	00 00                	add    BYTE PTR [eax],al
c000d063:	2e 08 43 2e          	or     BYTE PTR cs:[ebx+0x2e],al
c000d067:	0c 44                	or     al,0x44
c000d069:	2e 10 4c 2e 0c       	adc    BYTE PTR cs:[esi+ebp*1+0xc],cl
c000d06e:	41                   	inc    ecx
c000d06f:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c000d073:	0c 45                	or     al,0x45
c000d075:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000d079:	00 49 2e             	add    BYTE PTR [ecx+0x2e],cl
c000d07c:	04 04                	add    al,0x4
c000d07e:	05 00 00 00 2e       	add    eax,0x2e000000
c000d083:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c000d086:	0c 45                	or     al,0x45
c000d088:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000d08c:	00 41 2e             	add    BYTE PTR [ecx+0x2e],al
c000d08f:	04 04                	add    al,0x4
c000d091:	01 00                	add    DWORD PTR [eax],eax
c000d093:	00 00                	add    BYTE PTR [eax],al
c000d095:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c000d099:	0c 45                	or     al,0x45
c000d09b:	2e 10 49 2e          	adc    BYTE PTR cs:[ecx+0x2e],cl
c000d09f:	0c 41                	or     al,0x41
c000d0a1:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c000d0a5:	0c 45                	or     al,0x45
c000d0a7:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000d0ab:	00 49 2e             	add    BYTE PTR [ecx+0x2e],cl
c000d0ae:	04 04                	add    al,0x4
c000d0b0:	05 00 00 00 2e       	add    eax,0x2e000000
c000d0b5:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c000d0b8:	0c 45                	or     al,0x45
c000d0ba:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000d0be:	00 41 2e             	add    BYTE PTR [ecx+0x2e],al
c000d0c1:	04 04                	add    al,0x4
c000d0c3:	01 00                	add    DWORD PTR [eax],eax
c000d0c5:	00 00                	add    BYTE PTR [eax],al
c000d0c7:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c000d0cb:	0c 45                	or     al,0x45
c000d0cd:	2e 10 4b c3          	adc    BYTE PTR cs:[ebx-0x3d],cl
c000d0d1:	41                   	inc    ecx
c000d0d2:	c6 41 0c 04          	mov    BYTE PTR [ecx+0xc],0x4
c000d0d6:	04 c5                	add    al,0xc5
c000d0d8:	41                   	inc    ecx
c000d0d9:	13 03                	adc    eax,DWORD PTR [ebx]
c000d0db:	2e 00 00             	add    BYTE PTR cs:[eax],al
c000d0de:	00 00                	add    BYTE PTR [eax],al
c000d0e0:	b4 00                	mov    ah,0x0
c000d0e2:	00 00                	add    BYTE PTR [eax],al
c000d0e4:	5c                   	pop    esp
c000d0e5:	0e                   	push   cs
c000d0e6:	00 00                	add    BYTE PTR [eax],al
c000d0e8:	7a 9a                	jp     c000d084 <_edata+0xdfc>
c000d0ea:	00 c0                	add    al,al
c000d0ec:	15 01 00 00 41       	adc    eax,0x41000001
c000d0f1:	0e                   	push   cs
c000d0f2:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000d0f8:	42                   	inc    edx
c000d0f9:	83 04 86 03          	add    DWORD PTR [esi+eax*4],0x3
c000d0fd:	55                   	push   ebp
c000d0fe:	2e 04 04             	cs add al,0x4
c000d101:	05 00 00 00 2e       	add    eax,0x2e000000
c000d106:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c000d109:	0c 45                	or     al,0x45
c000d10b:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000d10f:	00 48 2e             	add    BYTE PTR [eax+0x2e],cl
c000d112:	04 04                	add    al,0x4
c000d114:	01 00                	add    DWORD PTR [eax],eax
c000d116:	00 00                	add    BYTE PTR [eax],al
c000d118:	2e 08 44 2e 0c       	or     BYTE PTR cs:[esi+ebp*1+0xc],al
c000d11d:	45                   	inc    ebp
c000d11e:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000d122:	00 49 2e             	add    BYTE PTR [ecx+0x2e],cl
c000d125:	04 04                	add    al,0x4
c000d127:	05 00 00 00 2e       	add    eax,0x2e000000
c000d12c:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c000d12f:	0c 45                	or     al,0x45
c000d131:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000d135:	00 41 2e             	add    BYTE PTR [ecx+0x2e],al
c000d138:	04 04                	add    al,0x4
c000d13a:	01 00                	add    DWORD PTR [eax],eax
c000d13c:	00 00                	add    BYTE PTR [eax],al
c000d13e:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c000d142:	0c 45                	or     al,0x45
c000d144:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000d148:	00 4a 2e             	add    BYTE PTR [edx+0x2e],cl
c000d14b:	0c 45                	or     al,0x45
c000d14d:	2e 10 52 2e          	adc    BYTE PTR cs:[edx+0x2e],dl
c000d151:	00 49 2e             	add    BYTE PTR [ecx+0x2e],cl
c000d154:	04 04                	add    al,0x4
c000d156:	05 00 00 00 2e       	add    eax,0x2e000000
c000d15b:	08 45 2e             	or     BYTE PTR [ebp+0x2e],al
c000d15e:	0c 45                	or     al,0x45
c000d160:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000d164:	00 51 2e             	add    BYTE PTR [ecx+0x2e],dl
c000d167:	04 04                	add    al,0x4
c000d169:	05 00 00 00 2e       	add    eax,0x2e000000
c000d16e:	08 45 2e             	or     BYTE PTR [ebp+0x2e],al
c000d171:	0c 45                	or     al,0x45
c000d173:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000d177:	00 43 2e             	add    BYTE PTR [ebx+0x2e],al
c000d17a:	0c 45                	or     al,0x45
c000d17c:	2e 10 5d 2e          	adc    BYTE PTR cs:[ebp+0x2e],bl
c000d180:	0c 41                	or     al,0x41
c000d182:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c000d186:	0c 41                	or     al,0x41
c000d188:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000d18c:	00 44 c3 41          	add    BYTE PTR [ebx+eax*8+0x41],al
c000d190:	c6 41 0c 04          	mov    BYTE PTR [ecx+0xc],0x4
c000d194:	04 c5                	add    al,0xc5
c000d196:	00 00                	add    BYTE PTR [eax],al
c000d198:	38 00                	cmp    BYTE PTR [eax],al
c000d19a:	00 00                	add    BYTE PTR [eax],al
c000d19c:	14 0f                	adc    al,0xf
c000d19e:	00 00                	add    BYTE PTR [eax],al
c000d1a0:	8f                   	(bad)  
c000d1a1:	9b                   	fwait
c000d1a2:	00 c0                	add    al,al
c000d1a4:	4b                   	dec    ebx
c000d1a5:	00 00                	add    BYTE PTR [eax],al
c000d1a7:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000d1aa:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000d1b0:	42                   	inc    edx
c000d1b1:	83 04 86 03          	add    DWORD PTR [esi+eax*4],0x3
c000d1b5:	4d                   	dec    ebp
c000d1b6:	2e 04 04             	cs add al,0x4
c000d1b9:	05 00 00 00 2e       	add    eax,0x2e000000
c000d1be:	08 45 2e             	or     BYTE PTR [ebp+0x2e],al
c000d1c1:	0c 45                	or     al,0x45
c000d1c3:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000d1c7:	00 5b c3             	add    BYTE PTR [ebx-0x3d],bl
c000d1ca:	41                   	inc    ecx
c000d1cb:	c6 41 0c 04          	mov    BYTE PTR [ecx+0xc],0x4
c000d1cf:	04 c5                	add    al,0xc5
c000d1d1:	00 00                	add    BYTE PTR [eax],al
c000d1d3:	00 88 00 00 00 50    	add    BYTE PTR [eax+0x50000000],cl
c000d1d9:	0f 00 00             	sldt   WORD PTR [eax]
c000d1dc:	da 9b 00 c0 a2 00    	ficomp DWORD PTR [ebx+0xa2c000]
c000d1e2:	00 00                	add    BYTE PTR [eax],al
c000d1e4:	41                   	inc    ecx
c000d1e5:	0e                   	push   cs
c000d1e6:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000d1ec:	46                   	inc    esi
c000d1ed:	83 05 86 04 87 03 51 	add    DWORD PTR ds:0x3870486,0x51
c000d1f4:	2e 04 04             	cs add al,0x4
c000d1f7:	01 00                	add    DWORD PTR [eax],eax
c000d1f9:	00 00                	add    BYTE PTR [eax],al
c000d1fb:	2e 08 44 2e 0c       	or     BYTE PTR cs:[esi+ebp*1+0xc],al
c000d200:	45                   	inc    ebp
c000d201:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000d205:	00 49 2e             	add    BYTE PTR [ecx+0x2e],cl
c000d208:	04 04                	add    al,0x4
c000d20a:	05 00 00 00 2e       	add    eax,0x2e000000
c000d20f:	08 45 2e             	or     BYTE PTR [ebp+0x2e],al
c000d212:	0c 45                	or     al,0x45
c000d214:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000d218:	00 41 2e             	add    BYTE PTR [ecx+0x2e],al
c000d21b:	04 04                	add    al,0x4
c000d21d:	01 00                	add    DWORD PTR [eax],eax
c000d21f:	00 00                	add    BYTE PTR [eax],al
c000d221:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c000d225:	0c 45                	or     al,0x45
c000d227:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000d22b:	00 49 2e             	add    BYTE PTR [ecx+0x2e],cl
c000d22e:	04 04                	add    al,0x4
c000d230:	05 00 00 00 2e       	add    eax,0x2e000000
c000d235:	08 45 2e             	or     BYTE PTR [ebp+0x2e],al
c000d238:	0c 45                	or     al,0x45
c000d23a:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000d23e:	00 41 2e             	add    BYTE PTR [ecx+0x2e],al
c000d241:	04 04                	add    al,0x4
c000d243:	01 00                	add    DWORD PTR [eax],eax
c000d245:	00 00                	add    BYTE PTR [eax],al
c000d247:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c000d24b:	0c 45                	or     al,0x45
c000d24d:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000d251:	00 4e c3             	add    BYTE PTR [esi-0x3d],cl
c000d254:	41                   	inc    ecx
c000d255:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c000d259:	0c 04                	or     al,0x4
c000d25b:	04 c5                	add    al,0xc5
c000d25d:	00 00                	add    BYTE PTR [eax],al
c000d25f:	00 2c 00             	add    BYTE PTR [eax+eax*1],ch
c000d262:	00 00                	add    BYTE PTR [eax],al
c000d264:	dc 0f                	fmul   QWORD PTR [edi]
c000d266:	00 00                	add    BYTE PTR [eax],al
c000d268:	7c 9c                	jl     c000d206 <_edata+0xf7e>
c000d26a:	00 c0                	add    al,al
c000d26c:	3e 00 00             	add    BYTE PTR ds:[eax],al
c000d26f:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000d272:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000d278:	41                   	inc    ecx
c000d279:	87 03                	xchg   DWORD PTR [ebx],eax
c000d27b:	44                   	inc    esp
c000d27c:	86 04 04             	xchg   BYTE PTR [esp+eax*1],al
c000d27f:	06                   	push   es
c000d280:	00 00                	add    BYTE PTR [eax],al
c000d282:	00 83 05 6c c3 41    	add    BYTE PTR [ebx+0x41c36c05],al
c000d288:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c000d28c:	0c 04                	or     al,0x4
c000d28e:	04 c5                	add    al,0xc5
c000d290:	30 00                	xor    BYTE PTR [eax],al
c000d292:	00 00                	add    BYTE PTR [eax],al
c000d294:	0c 10                	or     al,0x10
c000d296:	00 00                	add    BYTE PTR [eax],al
c000d298:	ba 9c 00 c0 92       	mov    edx,0x92c0009c
c000d29d:	00 00                	add    BYTE PTR [eax],al
c000d29f:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000d2a2:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000d2a8:	43                   	inc    ebx
c000d2a9:	2e 04 04             	cs add al,0x4
c000d2ac:	02 00                	add    al,BYTE PTR [eax]
c000d2ae:	00 00                	add    BYTE PTR [eax],al
c000d2b0:	2e 08 42 2e          	or     BYTE PTR cs:[edx+0x2e],al
c000d2b4:	0c 45                	or     al,0x45
c000d2b6:	2e 10 02             	adc    BYTE PTR cs:[edx],al
c000d2b9:	81 2e 00 41 c5 0c    	sub    DWORD PTR [esi],0xcc54100
c000d2bf:	04 04                	add    al,0x4
c000d2c1:	00 00                	add    BYTE PTR [eax],al
c000d2c3:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c000d2c6:	00 00                	add    BYTE PTR [eax],al
c000d2c8:	40                   	inc    eax
c000d2c9:	10 00                	adc    BYTE PTR [eax],al
c000d2cb:	00 4c 9d 00          	add    BYTE PTR [ebp+ebx*4+0x0],cl
c000d2cf:	c0 12 00             	rcl    BYTE PTR [edx],0x0
c000d2d2:	00 00                	add    BYTE PTR [eax],al
c000d2d4:	41                   	inc    ecx
c000d2d5:	0e                   	push   cs
c000d2d6:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000d2dc:	44                   	inc    esp
c000d2dd:	0c 04                	or     al,0x4
c000d2df:	04 c5                	add    al,0xc5
c000d2e1:	00 00                	add    BYTE PTR [eax],al
c000d2e3:	00 38                	add    BYTE PTR [eax],bh
c000d2e5:	00 00                	add    BYTE PTR [eax],al
c000d2e7:	00 60 10             	add    BYTE PTR [eax+0x10],ah
c000d2ea:	00 00                	add    BYTE PTR [eax],al
c000d2ec:	60                   	pusha  
c000d2ed:	9d                   	popf   
c000d2ee:	00 c0                	add    al,al
c000d2f0:	dd 00                	fld    QWORD PTR [eax]
c000d2f2:	00 00                	add    BYTE PTR [eax],al
c000d2f4:	41                   	inc    ecx
c000d2f5:	0e                   	push   cs
c000d2f6:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000d2fc:	42                   	inc    edx
c000d2fd:	83 04 86 03          	add    DWORD PTR [esi+eax*4],0x3
c000d301:	02 a5 2e 04 04 01    	add    ah,BYTE PTR [ebp+0x104042e]
c000d307:	00 00                	add    BYTE PTR [eax],al
c000d309:	00 2e                	add    BYTE PTR [esi],ch
c000d30b:	08 45 2e             	or     BYTE PTR [ebp+0x2e],al
c000d30e:	0c 42                	or     al,0x42
c000d310:	2e 10 64 2e 00       	adc    BYTE PTR cs:[esi+ebp*1+0x0],ah
c000d315:	44                   	inc    esp
c000d316:	c3                   	ret    
c000d317:	41                   	inc    ecx
c000d318:	c6 41 0c 04          	mov    BYTE PTR [ecx+0xc],0x4
c000d31c:	04 c5                	add    al,0xc5
c000d31e:	00 00                	add    BYTE PTR [eax],al
c000d320:	24 00                	and    al,0x0
c000d322:	00 00                	add    BYTE PTR [eax],al
c000d324:	9c                   	pushf  
c000d325:	10 00                	adc    BYTE PTR [eax],al
c000d327:	00 3d 9e 00 c0 26    	add    BYTE PTR ds:0x26c0009e,bh
c000d32d:	00 00                	add    BYTE PTR [eax],al
c000d32f:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000d332:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000d338:	55                   	push   ebp
c000d339:	2e 0c 41             	cs or  al,0x41
c000d33c:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000d340:	00 44 c5 0c          	add    BYTE PTR [ebp+eax*8+0xc],al
c000d344:	04 04                	add    al,0x4
c000d346:	00 00                	add    BYTE PTR [eax],al
c000d348:	44                   	inc    esp
c000d349:	00 00                	add    BYTE PTR [eax],al
c000d34b:	00 c4                	add    ah,al
c000d34d:	10 00                	adc    BYTE PTR [eax],al
c000d34f:	00 63 9e             	add    BYTE PTR [ebx-0x62],ah
c000d352:	00 c0                	add    al,al
c000d354:	48                   	dec    eax
c000d355:	00 00                	add    BYTE PTR [eax],al
c000d357:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000d35a:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000d360:	42                   	inc    edx
c000d361:	83 03 4c             	add    DWORD PTR [ebx],0x4c
c000d364:	2e 04 04             	cs add al,0x4
c000d367:	05 00 00 00 2e       	add    eax,0x2e000000
c000d36c:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c000d36f:	0c 45                	or     al,0x45
c000d371:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000d375:	00 43 2e             	add    BYTE PTR [ebx+0x2e],al
c000d378:	0c 41                	or     al,0x41
c000d37a:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000d37e:	00 4d 0a             	add    BYTE PTR [ebp+0xa],cl
c000d381:	c5 0c 04             	lds    ecx,FWORD PTR [esp+eax*1]
c000d384:	04 c3                	add    al,0xc3
c000d386:	45                   	inc    ebp
c000d387:	0b 44 c5 0c          	or     eax,DWORD PTR [ebp+eax*8+0xc]
c000d38b:	04 04                	add    al,0x4
c000d38d:	c3                   	ret    
c000d38e:	00 00                	add    BYTE PTR [eax],al
c000d390:	4c                   	dec    esp
c000d391:	00 00                	add    BYTE PTR [eax],al
c000d393:	00 0c 11             	add    BYTE PTR [ecx+edx*1],cl
c000d396:	00 00                	add    BYTE PTR [eax],al
c000d398:	ab                   	stos   DWORD PTR es:[edi],eax
c000d399:	9e                   	sahf   
c000d39a:	00 c0                	add    al,al
c000d39c:	59                   	pop    ecx
c000d39d:	00 00                	add    BYTE PTR [eax],al
c000d39f:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000d3a2:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000d3a8:	44                   	inc    esp
c000d3a9:	2e 0c 83             	cs or  al,0x83
c000d3ac:	03 42 2e             	add    eax,DWORD PTR [edx+0x2e]
c000d3af:	10 48 2e             	adc    BYTE PTR [eax+0x2e],cl
c000d3b2:	00 47 2e             	add    BYTE PTR [edi+0x2e],al
c000d3b5:	04 04                	add    al,0x4
c000d3b7:	01 00                	add    DWORD PTR [eax],eax
c000d3b9:	00 00                	add    BYTE PTR [eax],al
c000d3bb:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c000d3bf:	0c 42                	or     al,0x42
c000d3c1:	2e 10 47 2e          	adc    BYTE PTR cs:[edi+0x2e],al
c000d3c5:	00 41 2e             	add    BYTE PTR [ecx+0x2e],al
c000d3c8:	04 04                	add    al,0x4
c000d3ca:	05 00 00 00 2e       	add    eax,0x2e000000
c000d3cf:	08 45 2e             	or     BYTE PTR [ebp+0x2e],al
c000d3d2:	0c 47                	or     al,0x47
c000d3d4:	2e 10 5b 2e          	adc    BYTE PTR cs:[ebx+0x2e],bl
c000d3d8:	00 44 c5 0c          	add    BYTE PTR [ebp+eax*8+0xc],al
c000d3dc:	04 04                	add    al,0x4
c000d3de:	c3                   	ret    
c000d3df:	00 30                	add    BYTE PTR [eax],dh
c000d3e1:	00 00                	add    BYTE PTR [eax],al
c000d3e3:	00 5c 11 00          	add    BYTE PTR [ecx+edx*1+0x0],bl
c000d3e7:	00 04 9f             	add    BYTE PTR [edi+ebx*4],al
c000d3ea:	00 c0                	add    al,al
c000d3ec:	21 00                	and    DWORD PTR [eax],eax
c000d3ee:	00 00                	add    BYTE PTR [eax],al
c000d3f0:	41                   	inc    ecx
c000d3f1:	0e                   	push   cs
c000d3f2:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000d3f8:	43                   	inc    ebx
c000d3f9:	2e 0c 42             	cs or  al,0x42
c000d3fc:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c000d400:	0c 41                	or     al,0x41
c000d402:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c000d406:	0c 47                	or     al,0x47
c000d408:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000d40c:	00 41 c5             	add    BYTE PTR [ecx-0x3b],al
c000d40f:	0c 04                	or     al,0x4
c000d411:	04 00                	add    al,0x0
c000d413:	00 ec                	add    ah,ch
c000d415:	00 00                	add    BYTE PTR [eax],al
c000d417:	00 90 11 00 00 25    	add    BYTE PTR [eax+0x25000011],dl
c000d41d:	9f                   	lahf   
c000d41e:	00 c0                	add    al,al
c000d420:	14 01                	adc    al,0x1
c000d422:	00 00                	add    BYTE PTR [eax],al
c000d424:	41                   	inc    ecx
c000d425:	0e                   	push   cs
c000d426:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000d42c:	46                   	inc    esi
c000d42d:	2e 0c 83             	cs or  al,0x83
c000d430:	05 86 04 87 03       	add    eax,0x3870486
c000d435:	45                   	inc    ebp
c000d436:	2e 10 4b 2e          	adc    BYTE PTR cs:[ebx+0x2e],cl
c000d43a:	04 04                	add    al,0x4
c000d43c:	02 00                	add    al,BYTE PTR [eax]
c000d43e:	00 00                	add    BYTE PTR [eax],al
c000d440:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c000d444:	0c 43                	or     al,0x43
c000d446:	2e 10 50 2e          	adc    BYTE PTR cs:[eax+0x2e],dl
c000d44a:	04 04                	add    al,0x4
c000d44c:	01 00                	add    DWORD PTR [eax],eax
c000d44e:	00 00                	add    BYTE PTR [eax],al
c000d450:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c000d454:	0c 41                	or     al,0x41
c000d456:	2e 10 4e 2e          	adc    BYTE PTR cs:[esi+0x2e],cl
c000d45a:	0c 41                	or     al,0x41
c000d45c:	2e 08 48 2e          	or     BYTE PTR cs:[eax+0x2e],cl
c000d460:	0c 42                	or     al,0x42
c000d462:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000d466:	04 04                	add    al,0x4
c000d468:	02 00                	add    al,BYTE PTR [eax]
c000d46a:	00 00                	add    BYTE PTR [eax],al
c000d46c:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c000d470:	0c 42                	or     al,0x42
c000d472:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c000d476:	0c 41                	or     al,0x41
c000d478:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c000d47c:	0c 42                	or     al,0x42
c000d47e:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000d482:	04 04                	add    al,0x4
c000d484:	02 00                	add    al,BYTE PTR [eax]
c000d486:	00 00                	add    BYTE PTR [eax],al
c000d488:	2e 08 43 2e          	or     BYTE PTR cs:[ebx+0x2e],al
c000d48c:	0c 42                	or     al,0x42
c000d48e:	2e 10 53 2e          	adc    BYTE PTR cs:[ebx+0x2e],dl
c000d492:	0c 41                	or     al,0x41
c000d494:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c000d498:	0c 45                	or     al,0x45
c000d49a:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000d49e:	00 49 2e             	add    BYTE PTR [ecx+0x2e],cl
c000d4a1:	04 04                	add    al,0x4
c000d4a3:	05 00 00 00 2e       	add    eax,0x2e000000
c000d4a8:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c000d4ab:	0c 45                	or     al,0x45
c000d4ad:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000d4b1:	00 41 2e             	add    BYTE PTR [ecx+0x2e],al
c000d4b4:	04 04                	add    al,0x4
c000d4b6:	04 00                	add    al,0x0
c000d4b8:	00 00                	add    BYTE PTR [eax],al
c000d4ba:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c000d4be:	0c 45                	or     al,0x45
c000d4c0:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c000d4c4:	0c 41                	or     al,0x41
c000d4c6:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c000d4ca:	0c 45                	or     al,0x45
c000d4cc:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000d4d0:	00 49 2e             	add    BYTE PTR [ecx+0x2e],cl
c000d4d3:	04 04                	add    al,0x4
c000d4d5:	05 00 00 00 2e       	add    eax,0x2e000000
c000d4da:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c000d4dd:	0c 45                	or     al,0x45
c000d4df:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000d4e3:	00 41 2e             	add    BYTE PTR [ecx+0x2e],al
c000d4e6:	04 04                	add    al,0x4
c000d4e8:	01 00                	add    DWORD PTR [eax],eax
c000d4ea:	00 00                	add    BYTE PTR [eax],al
c000d4ec:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c000d4f0:	0c 45                	or     al,0x45
c000d4f2:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000d4f6:	00 47 c3             	add    BYTE PTR [edi-0x3d],al
c000d4f9:	41                   	inc    ecx
c000d4fa:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c000d4fe:	0c 04                	or     al,0x4
c000d500:	04 c5                	add    al,0xc5
c000d502:	00 00                	add    BYTE PTR [eax],al
c000d504:	24 00                	and    al,0x0
c000d506:	00 00                	add    BYTE PTR [eax],al
c000d508:	80 12 00             	adc    BYTE PTR [edx],0x0
c000d50b:	00 3c a0             	add    BYTE PTR [eax+eiz*4],bh
c000d50e:	00 c0                	add    al,al
c000d510:	15 00 00 00 41       	adc    eax,0x41000000
c000d515:	0e                   	push   cs
c000d516:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000d51c:	43                   	inc    ebx
c000d51d:	2e 0c 45             	cs or  al,0x45
c000d520:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000d524:	00 41 c5             	add    BYTE PTR [ecx-0x3b],al
c000d527:	0c 04                	or     al,0x4
c000d529:	04 00                	add    al,0x0
c000d52b:	00 3c 00             	add    BYTE PTR [eax+eax*1],bh
c000d52e:	00 00                	add    BYTE PTR [eax],al
c000d530:	a8 12                	test   al,0x12
c000d532:	00 00                	add    BYTE PTR [eax],al
c000d534:	51                   	push   ecx
c000d535:	a0 00 c0 3e 00       	mov    al,ds:0x3ec000
c000d53a:	00 00                	add    BYTE PTR [eax],al
c000d53c:	41                   	inc    ecx
c000d53d:	0e                   	push   cs
c000d53e:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000d544:	41                   	inc    ecx
c000d545:	86 03                	xchg   BYTE PTR [ebx],al
c000d547:	44                   	inc    esp
c000d548:	83 04 04 06          	add    DWORD PTR [esp+eax*1],0x6
c000d54c:	00 00                	add    BYTE PTR [eax],al
c000d54e:	00 2e                	add    BYTE PTR [esi],ch
c000d550:	0c 45                	or     al,0x45
c000d552:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c000d556:	0c 41                	or     al,0x41
c000d558:	2e 08 46 2e          	or     BYTE PTR cs:[esi+0x2e],al
c000d55c:	0c 44                	or     al,0x44
c000d55e:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000d562:	00 4b c3             	add    BYTE PTR [ebx-0x3d],cl
c000d565:	41                   	inc    ecx
c000d566:	c6 41 0c 04          	mov    BYTE PTR [ecx+0xc],0x4
c000d56a:	04 c5                	add    al,0xc5
c000d56c:	3c 00                	cmp    al,0x0
c000d56e:	00 00                	add    BYTE PTR [eax],al
c000d570:	e8 12 00 00 8f       	call   4f00d587 <AR_CODE32+0x4f0014ef>
c000d575:	a0 00 c0 39 00       	mov    al,ds:0x39c000
c000d57a:	00 00                	add    BYTE PTR [eax],al
c000d57c:	41                   	inc    ecx
c000d57d:	0e                   	push   cs
c000d57e:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000d584:	41                   	inc    ecx
c000d585:	86 03                	xchg   BYTE PTR [ebx],al
c000d587:	44                   	inc    esp
c000d588:	83 04 04 06          	add    DWORD PTR [esp+eax*1],0x6
c000d58c:	00 00                	add    BYTE PTR [eax],al
c000d58e:	00 2e                	add    BYTE PTR [esi],ch
c000d590:	0c 45                	or     al,0x45
c000d592:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c000d596:	0c 41                	or     al,0x41
c000d598:	2e 08 44 2e 0c       	or     BYTE PTR cs:[esi+ebp*1+0xc],al
c000d59d:	41                   	inc    ecx
c000d59e:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000d5a2:	00 4b c3             	add    BYTE PTR [ebx-0x3d],cl
c000d5a5:	41                   	inc    ecx
c000d5a6:	c6 41 0c 04          	mov    BYTE PTR [ecx+0xc],0x4
c000d5aa:	04 c5                	add    al,0xc5
c000d5ac:	40                   	inc    eax
c000d5ad:	00 00                	add    BYTE PTR [eax],al
c000d5af:	00 28                	add    BYTE PTR [eax],ch
c000d5b1:	13 00                	adc    eax,DWORD PTR [eax]
c000d5b3:	00 c8                	add    al,cl
c000d5b5:	a0 00 c0 40 00       	mov    al,ds:0x40c000
c000d5ba:	00 00                	add    BYTE PTR [eax],al
c000d5bc:	41                   	inc    ecx
c000d5bd:	0e                   	push   cs
c000d5be:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000d5c4:	46                   	inc    esi
c000d5c5:	2e 0c 83             	cs or  al,0x83
c000d5c8:	05 86 04 87 03       	add    eax,0x3870486
c000d5cd:	4e                   	dec    esi
c000d5ce:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000d5d2:	04 04                	add    al,0x4
c000d5d4:	01 00                	add    DWORD PTR [eax],eax
c000d5d6:	00 00                	add    BYTE PTR [eax],al
c000d5d8:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c000d5dc:	0c 44                	or     al,0x44
c000d5de:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000d5e2:	00 4b c3             	add    BYTE PTR [ebx-0x3d],cl
c000d5e5:	41                   	inc    ecx
c000d5e6:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c000d5ea:	0c 04                	or     al,0x4
c000d5ec:	04 c5                	add    al,0xc5
c000d5ee:	00 00                	add    BYTE PTR [eax],al
c000d5f0:	40                   	inc    eax
c000d5f1:	00 00                	add    BYTE PTR [eax],al
c000d5f3:	00 6c 13 00          	add    BYTE PTR [ebx+edx*1+0x0],ch
c000d5f7:	00 08                	add    BYTE PTR [eax],cl
c000d5f9:	a1 00 c0 40 00       	mov    eax,ds:0x40c000
c000d5fe:	00 00                	add    BYTE PTR [eax],al
c000d600:	41                   	inc    ecx
c000d601:	0e                   	push   cs
c000d602:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000d608:	46                   	inc    esi
c000d609:	2e 0c 83             	cs or  al,0x83
c000d60c:	05 86 04 87 03       	add    eax,0x3870486
c000d611:	4e                   	dec    esi
c000d612:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000d616:	04 04                	add    al,0x4
c000d618:	01 00                	add    DWORD PTR [eax],eax
c000d61a:	00 00                	add    BYTE PTR [eax],al
c000d61c:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c000d620:	0c 44                	or     al,0x44
c000d622:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000d626:	00 4b c3             	add    BYTE PTR [ebx-0x3d],cl
c000d629:	41                   	inc    ecx
c000d62a:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c000d62e:	0c 04                	or     al,0x4
c000d630:	04 c5                	add    al,0xc5
c000d632:	00 00                	add    BYTE PTR [eax],al
c000d634:	3c 00                	cmp    al,0x0
c000d636:	00 00                	add    BYTE PTR [eax],al
c000d638:	b0 13                	mov    al,0x13
c000d63a:	00 00                	add    BYTE PTR [eax],al
c000d63c:	48                   	dec    eax
c000d63d:	a1 00 c0 66 00       	mov    eax,ds:0x66c000
c000d642:	00 00                	add    BYTE PTR [eax],al
c000d644:	41                   	inc    ecx
c000d645:	0e                   	push   cs
c000d646:	08 85 02 44 0d 05    	or     BYTE PTR [ebp+0x50d4402],al
c000d64c:	48                   	dec    eax
c000d64d:	83 05 86 04 87 03 67 	add    DWORD PTR ds:0x3870486,0x67
c000d654:	2e 04 04             	cs add al,0x4
c000d657:	01 00                	add    DWORD PTR [eax],eax
c000d659:	00 00                	add    BYTE PTR [eax],al
c000d65b:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c000d65f:	0c 42                	or     al,0x42
c000d661:	2e 10 5e 2e          	adc    BYTE PTR cs:[esi+0x2e],bl
c000d665:	00 4c c3 41          	add    BYTE PTR [ebx+eax*8+0x41],cl
c000d669:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c000d66d:	0c 04                	or     al,0x4
c000d66f:	04 c5                	add    al,0xc5
c000d671:	00 00                	add    BYTE PTR [eax],al
c000d673:	00 3c 00             	add    BYTE PTR [eax+eax*1],bh
c000d676:	00 00                	add    BYTE PTR [eax],al
c000d678:	f0 13 00             	lock adc eax,DWORD PTR [eax]
c000d67b:	00 ae a1 00 c0 66    	add    BYTE PTR [esi+0x66c000a1],ch
c000d681:	00 00                	add    BYTE PTR [eax],al
c000d683:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000d686:	08 85 02 44 0d 05    	or     BYTE PTR [ebp+0x50d4402],al
c000d68c:	48                   	dec    eax
c000d68d:	83 05 86 04 87 03 67 	add    DWORD PTR ds:0x3870486,0x67
c000d694:	2e 04 04             	cs add al,0x4
c000d697:	01 00                	add    DWORD PTR [eax],eax
c000d699:	00 00                	add    BYTE PTR [eax],al
c000d69b:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c000d69f:	0c 42                	or     al,0x42
c000d6a1:	2e 10 5e 2e          	adc    BYTE PTR cs:[esi+0x2e],bl
c000d6a5:	00 4c c3 41          	add    BYTE PTR [ebx+eax*8+0x41],cl
c000d6a9:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c000d6ad:	0c 04                	or     al,0x4
c000d6af:	04 c5                	add    al,0xc5
c000d6b1:	00 00                	add    BYTE PTR [eax],al
c000d6b3:	00 2c 00             	add    BYTE PTR [eax+eax*1],ch
c000d6b6:	00 00                	add    BYTE PTR [eax],al
c000d6b8:	30 14 00             	xor    BYTE PTR [eax+eax*1],dl
c000d6bb:	00 14 a2             	add    BYTE PTR [edx+eiz*4],dl
c000d6be:	00 c0                	add    al,al
c000d6c0:	1e                   	push   ds
c000d6c1:	00 00                	add    BYTE PTR [eax],al
c000d6c3:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000d6c6:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000d6cc:	45                   	inc    ebp
c000d6cd:	2e 04 04             	cs add al,0x4
c000d6d0:	02 00                	add    al,BYTE PTR [eax]
c000d6d2:	00 00                	add    BYTE PTR [eax],al
c000d6d4:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c000d6d8:	0c 45                	or     al,0x45
c000d6da:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000d6de:	00 41 c5             	add    BYTE PTR [ecx-0x3b],al
c000d6e1:	0c 04                	or     al,0x4
c000d6e3:	04 50                	add    al,0x50
c000d6e5:	00 00                	add    BYTE PTR [eax],al
c000d6e7:	00 60 14             	add    BYTE PTR [eax+0x14],ah
c000d6ea:	00 00                	add    BYTE PTR [eax],al
c000d6ec:	32 a2 00 c0 bf 01    	xor    ah,BYTE PTR [edx+0x1bfc000]
c000d6f2:	00 00                	add    BYTE PTR [eax],al
c000d6f4:	41                   	inc    ecx
c000d6f5:	0e                   	push   cs
c000d6f6:	08 85 02 47 0d 05    	or     BYTE PTR [ebp+0x50d4702],al
c000d6fc:	46                   	inc    esi
c000d6fd:	83 03 03             	add    DWORD PTR [ebx],0x3
c000d700:	1d 01 2e 0c 45       	sbb    eax,0x450c2e01
c000d705:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000d709:	00 45 2e             	add    BYTE PTR [ebp+0x2e],al
c000d70c:	04 04                	add    al,0x4
c000d70e:	01 00                	add    DWORD PTR [eax],eax
c000d710:	00 00                	add    BYTE PTR [eax],al
c000d712:	2e 08 44 2e 0c       	or     BYTE PTR cs:[esi+ebp*1+0xc],al
c000d717:	45                   	inc    ebp
c000d718:	2e 10 47 2e          	adc    BYTE PTR cs:[edi+0x2e],al
c000d71c:	00 02                	add    BYTE PTR [edx],al
c000d71e:	5c                   	pop    esp
c000d71f:	2e 04 04             	cs add al,0x4
c000d722:	01 00                	add    DWORD PTR [eax],eax
c000d724:	00 00                	add    BYTE PTR [eax],al
c000d726:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c000d72a:	0c 42                	or     al,0x42
c000d72c:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000d730:	00 44 c5 0c          	add    BYTE PTR [ebp+eax*8+0xc],al
c000d734:	04 04                	add    al,0x4
c000d736:	c3                   	ret    
c000d737:	00 28                	add    BYTE PTR [eax],ch
c000d739:	00 00                	add    BYTE PTR [eax],al
c000d73b:	00 b4 14 00 00 f4 a3 	add    BYTE PTR [esp+edx*1-0x5c0c0000],dh
c000d742:	00 c0                	add    al,al
c000d744:	ac                   	lods   al,BYTE PTR ds:[esi]
c000d745:	00 00                	add    BYTE PTR [eax],al
c000d747:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000d74a:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000d750:	42                   	inc    edx
c000d751:	86 04 87             	xchg   BYTE PTR [edi+eax*4],al
c000d754:	03 49 83             	add    ecx,DWORD PTR [ecx-0x7d]
c000d757:	05 02 96 c3 41       	add    eax,0x41c39602
c000d75c:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c000d760:	0c 04                	or     al,0x4
c000d762:	04 c5                	add    al,0xc5
c000d764:	1c 00                	sbb    al,0x0
c000d766:	00 00                	add    BYTE PTR [eax],al
c000d768:	e0 14                	loopne c000d77e <_edata+0x14f6>
c000d76a:	00 00                	add    BYTE PTR [eax],al
c000d76c:	a0 a4 00 c0 18       	mov    al,ds:0x18c000a4
c000d771:	00 00                	add    BYTE PTR [eax],al
c000d773:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000d776:	08 85 02 47 0d 05    	or     BYTE PTR [ebp+0x50d4702],al
c000d77c:	4f                   	dec    edi
c000d77d:	0c 04                	or     al,0x4
c000d77f:	04 c5                	add    al,0xc5
c000d781:	00 00                	add    BYTE PTR [eax],al
c000d783:	00 24 00             	add    BYTE PTR [eax+eax*1],ah
c000d786:	00 00                	add    BYTE PTR [eax],al
c000d788:	00 15 00 00 b8 a4    	add    BYTE PTR ds:0xa4b80000,dl
c000d78e:	00 c0                	add    al,al
c000d790:	36 00 00             	add    BYTE PTR ss:[eax],al
c000d793:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000d796:	08 85 02 47 0d 05    	or     BYTE PTR [ebp+0x50d4702],al
c000d79c:	63 0a                	arpl   WORD PTR [edx],cx
c000d79e:	c5 0c 04             	lds    ecx,FWORD PTR [esp+eax*1]
c000d7a1:	04 45                	add    al,0x45
c000d7a3:	0b 45 c5             	or     eax,DWORD PTR [ebp-0x3b]
c000d7a6:	0c 04                	or     al,0x4
c000d7a8:	04 00                	add    al,0x0
c000d7aa:	00 00                	add    BYTE PTR [eax],al
c000d7ac:	2c 00                	sub    al,0x0
c000d7ae:	00 00                	add    BYTE PTR [eax],al
c000d7b0:	28 15 00 00 f0 a4    	sub    BYTE PTR ds:0xa4f00000,dl
c000d7b6:	00 c0                	add    al,al
c000d7b8:	1a 00                	sbb    al,BYTE PTR [eax]
c000d7ba:	00 00                	add    BYTE PTR [eax],al
c000d7bc:	41                   	inc    ecx
c000d7bd:	0e                   	push   cs
c000d7be:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000d7c4:	43                   	inc    ebx
c000d7c5:	2e 04 04             	cs add al,0x4
c000d7c8:	05 00 00 00 2e       	add    eax,0x2e000000
c000d7cd:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c000d7d0:	0c 43                	or     al,0x43
c000d7d2:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000d7d6:	00 41 c5             	add    BYTE PTR [ecx-0x3b],al
c000d7d9:	0c 04                	or     al,0x4
c000d7db:	04 1c                	add    al,0x1c
c000d7dd:	00 00                	add    BYTE PTR [eax],al
c000d7df:	00 58 15             	add    BYTE PTR [eax+0x15],bl
c000d7e2:	00 00                	add    BYTE PTR [eax],al
c000d7e4:	0a a5 00 c0 23 00    	or     ah,BYTE PTR [ebp+0x23c000]
c000d7ea:	00 00                	add    BYTE PTR [eax],al
c000d7ec:	41                   	inc    ecx
c000d7ed:	0e                   	push   cs
c000d7ee:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000d7f4:	47                   	inc    edi
c000d7f5:	0c 04                	or     al,0x4
c000d7f7:	04 c5                	add    al,0xc5
c000d7f9:	00 00                	add    BYTE PTR [eax],al
c000d7fb:	00 50 00             	add    BYTE PTR [eax+0x0],dl
c000d7fe:	00 00                	add    BYTE PTR [eax],al
c000d800:	78 15                	js     c000d817 <_edata+0x158f>
c000d802:	00 00                	add    BYTE PTR [eax],al
c000d804:	2d a5 00 c0 be       	sub    eax,0xbec000a5
c000d809:	00 00                	add    BYTE PTR [eax],al
c000d80b:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000d80e:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000d814:	42                   	inc    edx
c000d815:	86 04 87             	xchg   BYTE PTR [edi+eax*4],al
c000d818:	03 46 83             	add    eax,DWORD PTR [esi-0x7d]
c000d81b:	05 5c 2e 04 04       	add    eax,0x4042e5c
c000d820:	05 00 00 00 2e       	add    eax,0x2e000000
c000d825:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c000d828:	0c 45                	or     al,0x45
c000d82a:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000d82e:	00 02                	add    BYTE PTR [edx],al
c000d830:	4e                   	dec    esi
c000d831:	2e 04 04             	cs add al,0x4
c000d834:	02 00                	add    al,BYTE PTR [eax]
c000d836:	00 00                	add    BYTE PTR [eax],al
c000d838:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c000d83c:	0c 41                	or     al,0x41
c000d83e:	2e 10 4b 2e          	adc    BYTE PTR cs:[ebx+0x2e],cl
c000d842:	00 62 c3             	add    BYTE PTR [edx-0x3d],ah
c000d845:	41                   	inc    ecx
c000d846:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c000d84a:	0c 04                	or     al,0x4
c000d84c:	04 c5                	add    al,0xc5
c000d84e:	00 00                	add    BYTE PTR [eax],al
c000d850:	3c 00                	cmp    al,0x0
c000d852:	00 00                	add    BYTE PTR [eax],al
c000d854:	cc                   	int3   
c000d855:	15 00 00 eb a5       	adc    eax,0xa5eb0000
c000d85a:	00 c0                	add    al,al
c000d85c:	68 00 00 00 41       	push   0x41000000
c000d861:	0e                   	push   cs
c000d862:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000d868:	46                   	inc    esi
c000d869:	83 05 86 04 87 03 53 	add    DWORD PTR ds:0x3870486,0x53
c000d870:	2e 04 04             	cs add al,0x4
c000d873:	05 00 00 00 2e       	add    eax,0x2e000000
c000d878:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c000d87b:	0c 45                	or     al,0x45
c000d87d:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000d881:	00 74 c3 41          	add    BYTE PTR [ebx+eax*8+0x41],dh
c000d885:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c000d889:	0c 04                	or     al,0x4
c000d88b:	04 c5                	add    al,0xc5
c000d88d:	00 00                	add    BYTE PTR [eax],al
c000d88f:	00 30                	add    BYTE PTR [eax],dh
c000d891:	00 00                	add    BYTE PTR [eax],al
c000d893:	00 0c 16             	add    BYTE PTR [esi+edx*1],cl
c000d896:	00 00                	add    BYTE PTR [eax],al
c000d898:	54                   	push   esp
c000d899:	a6                   	cmps   BYTE PTR ds:[esi],BYTE PTR es:[edi]
c000d89a:	00 c0                	add    al,al
c000d89c:	6a 00                	push   0x0
c000d89e:	00 00                	add    BYTE PTR [eax],al
c000d8a0:	41                   	inc    ecx
c000d8a1:	0e                   	push   cs
c000d8a2:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000d8a8:	46                   	inc    esi
c000d8a9:	2e 0c 83             	cs or  al,0x83
c000d8ac:	05 86 04 87 03       	add    eax,0x3870486
c000d8b1:	4d                   	dec    ebp
c000d8b2:	2e 10 4b 2e          	adc    BYTE PTR cs:[ebx+0x2e],cl
c000d8b6:	00 02                	add    BYTE PTR [edx],al
c000d8b8:	45                   	inc    ebp
c000d8b9:	c3                   	ret    
c000d8ba:	41                   	inc    ecx
c000d8bb:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c000d8bf:	0c 04                	or     al,0x4
c000d8c1:	04 c5                	add    al,0xc5
c000d8c3:	00 58 00             	add    BYTE PTR [eax+0x0],bl
c000d8c6:	00 00                	add    BYTE PTR [eax],al
c000d8c8:	40                   	inc    eax
c000d8c9:	16                   	push   ss
c000d8ca:	00 00                	add    BYTE PTR [eax],al
c000d8cc:	be a6 00 c0 05       	mov    esi,0x5c000a6
c000d8d1:	01 00                	add    DWORD PTR [eax],eax
c000d8d3:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000d8d6:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000d8dc:	46                   	inc    esi
c000d8dd:	83 05 86 04 87 03 53 	add    DWORD PTR ds:0x3870486,0x53
c000d8e4:	2e 0c 41             	cs or  al,0x41
c000d8e7:	2e 10 64 2e 00       	adc    BYTE PTR cs:[esi+ebp*1+0x0],ah
c000d8ec:	67 2e 04 04          	addr16 cs add al,0x4
c000d8f0:	05 00 00 00 2e       	add    eax,0x2e000000
c000d8f5:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c000d8f8:	0c 45                	or     al,0x45
c000d8fa:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000d8fe:	00 02                	add    BYTE PTR [edx],al
c000d900:	64 2e 0c 41          	fs cs or al,0x41
c000d904:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000d908:	00 4a 2e             	add    BYTE PTR [edx+0x2e],cl
c000d90b:	0c 43                	or     al,0x43
c000d90d:	2e 10 4b c3          	adc    BYTE PTR cs:[ebx-0x3d],cl
c000d911:	41                   	inc    ecx
c000d912:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c000d916:	0c 04                	or     al,0x4
c000d918:	04 c5                	add    al,0xc5
c000d91a:	41                   	inc    ecx
c000d91b:	13 03                	adc    eax,DWORD PTR [ebx]
c000d91d:	2e 00 00             	add    BYTE PTR cs:[eax],al
c000d920:	58                   	pop    eax
c000d921:	00 00                	add    BYTE PTR [eax],al
c000d923:	00 9c 16 00 00 c3 a7 	add    BYTE PTR [esi+edx*1-0x583d0000],bl
c000d92a:	00 c0                	add    al,al
c000d92c:	01 01                	add    DWORD PTR [ecx],eax
c000d92e:	00 00                	add    BYTE PTR [eax],al
c000d930:	41                   	inc    ecx
c000d931:	0e                   	push   cs
c000d932:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000d938:	46                   	inc    esi
c000d939:	83 05 86 04 87 03 69 	add    DWORD PTR ds:0x3870486,0x69
c000d940:	2e 04 04             	cs add al,0x4
c000d943:	05 00 00 00 2e       	add    eax,0x2e000000
c000d948:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c000d94b:	0c 45                	or     al,0x45
c000d94d:	2e 10 47 2e          	adc    BYTE PTR cs:[edi+0x2e],al
c000d951:	00 43 2e             	add    BYTE PTR [ebx+0x2e],al
c000d954:	0c 41                	or     al,0x41
c000d956:	2e 10 64 2e 00       	adc    BYTE PTR cs:[esi+ebp*1+0x0],ah
c000d95b:	02 71 2e             	add    dh,BYTE PTR [ecx+0x2e]
c000d95e:	0c 41                	or     al,0x41
c000d960:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000d964:	00 4a 2e             	add    BYTE PTR [edx+0x2e],cl
c000d967:	0c 41                	or     al,0x41
c000d969:	2e 10 4b c3          	adc    BYTE PTR cs:[ebx-0x3d],cl
c000d96d:	41                   	inc    ecx
c000d96e:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c000d972:	0c 04                	or     al,0x4
c000d974:	04 c5                	add    al,0xc5
c000d976:	41                   	inc    ecx
c000d977:	13 03                	adc    eax,DWORD PTR [ebx]
c000d979:	2e 00 00             	add    BYTE PTR cs:[eax],al
c000d97c:	1c 00                	sbb    al,0x0
c000d97e:	00 00                	add    BYTE PTR [eax],al
c000d980:	f8                   	clc    
c000d981:	16                   	push   ss
c000d982:	00 00                	add    BYTE PTR [eax],al
c000d984:	c4 a8 00 c0 14 00    	les    ebp,FWORD PTR [eax+0x14c000]
c000d98a:	00 00                	add    BYTE PTR [eax],al
c000d98c:	41                   	inc    ecx
c000d98d:	0e                   	push   cs
c000d98e:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000d994:	44                   	inc    esp
c000d995:	0c 04                	or     al,0x4
c000d997:	04 c5                	add    al,0xc5
c000d999:	00 00                	add    BYTE PTR [eax],al
c000d99b:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c000d99e:	00 00                	add    BYTE PTR [eax],al
c000d9a0:	18 17                	sbb    BYTE PTR [edi],dl
c000d9a2:	00 00                	add    BYTE PTR [eax],al
c000d9a4:	d8 a8 00 c0 12 00    	fsubr  DWORD PTR [eax+0x12c000]
c000d9aa:	00 00                	add    BYTE PTR [eax],al
c000d9ac:	41                   	inc    ecx
c000d9ad:	0e                   	push   cs
c000d9ae:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000d9b4:	44                   	inc    esp
c000d9b5:	0c 04                	or     al,0x4
c000d9b7:	04 c5                	add    al,0xc5
c000d9b9:	00 00                	add    BYTE PTR [eax],al
c000d9bb:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c000d9be:	00 00                	add    BYTE PTR [eax],al
c000d9c0:	38 17                	cmp    BYTE PTR [edi],dl
c000d9c2:	00 00                	add    BYTE PTR [eax],al
c000d9c4:	ec                   	in     al,dx
c000d9c5:	a8 00                	test   al,0x0
c000d9c7:	c0 1e 00             	rcr    BYTE PTR [esi],0x0
c000d9ca:	00 00                	add    BYTE PTR [eax],al
c000d9cc:	41                   	inc    ecx
c000d9cd:	0e                   	push   cs
c000d9ce:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000d9d4:	5a                   	pop    edx
c000d9d5:	0c 04                	or     al,0x4
c000d9d7:	04 c5                	add    al,0xc5
c000d9d9:	00 00                	add    BYTE PTR [eax],al
c000d9db:	00 28                	add    BYTE PTR [eax],ch
c000d9dd:	00 00                	add    BYTE PTR [eax],al
c000d9df:	00 58 17             	add    BYTE PTR [eax+0x17],bl
c000d9e2:	00 00                	add    BYTE PTR [eax],al
c000d9e4:	0a a9 00 c0 29 00    	or     ch,BYTE PTR [ecx+0x29c000]
c000d9ea:	00 00                	add    BYTE PTR [eax],al
c000d9ec:	41                   	inc    ecx
c000d9ed:	0e                   	push   cs
c000d9ee:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000d9f4:	41                   	inc    ecx
c000d9f5:	86 03                	xchg   BYTE PTR [ebx],al
c000d9f7:	44                   	inc    esp
c000d9f8:	83 04 04 1a          	add    DWORD PTR [esp+eax*1],0x1a
c000d9fc:	00 00                	add    BYTE PTR [eax],al
c000d9fe:	00 c3                	add    bl,al
c000da00:	41                   	inc    ecx
c000da01:	c6 41 0c 04          	mov    BYTE PTR [ecx+0xc],0x4
c000da05:	04 c5                	add    al,0xc5
c000da07:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c000da0a:	00 00                	add    BYTE PTR [eax],al
c000da0c:	84 17                	test   BYTE PTR [edi],dl
c000da0e:	00 00                	add    BYTE PTR [eax],al
c000da10:	33 a9 00 c0 18 00    	xor    ebp,DWORD PTR [ecx+0x18c000]
c000da16:	00 00                	add    BYTE PTR [eax],al
c000da18:	41                   	inc    ecx
c000da19:	0e                   	push   cs
c000da1a:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000da20:	50                   	push   eax
c000da21:	0c 04                	or     al,0x4
c000da23:	04 c5                	add    al,0xc5
c000da25:	00 00                	add    BYTE PTR [eax],al
c000da27:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c000da2a:	00 00                	add    BYTE PTR [eax],al
c000da2c:	a4                   	movs   BYTE PTR es:[edi],BYTE PTR ds:[esi]
c000da2d:	17                   	pop    ss
c000da2e:	00 00                	add    BYTE PTR [eax],al
c000da30:	4b                   	dec    ebx
c000da31:	a9 00 c0 18 00       	test   eax,0x18c000
c000da36:	00 00                	add    BYTE PTR [eax],al
c000da38:	41                   	inc    ecx
c000da39:	0e                   	push   cs
c000da3a:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000da40:	50                   	push   eax
c000da41:	0c 04                	or     al,0x4
c000da43:	04 c5                	add    al,0xc5
c000da45:	00 00                	add    BYTE PTR [eax],al
c000da47:	00 20                	add    BYTE PTR [eax],ah
c000da49:	00 00                	add    BYTE PTR [eax],al
c000da4b:	00 c4                	add    ah,al
c000da4d:	17                   	pop    ss
c000da4e:	00 00                	add    BYTE PTR [eax],al
c000da50:	63 a9 00 c0 27 00    	arpl   WORD PTR [ecx+0x27c000],bp
c000da56:	00 00                	add    BYTE PTR [eax],al
c000da58:	41                   	inc    ecx
c000da59:	0e                   	push   cs
c000da5a:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000da60:	42                   	inc    edx
c000da61:	83 03 5c             	add    DWORD PTR [ebx],0x5c
c000da64:	c3                   	ret    
c000da65:	41                   	inc    ecx
c000da66:	0c 04                	or     al,0x4
c000da68:	04 c5                	add    al,0xc5
c000da6a:	00 00                	add    BYTE PTR [eax],al
c000da6c:	28 00                	sub    BYTE PTR [eax],al
c000da6e:	00 00                	add    BYTE PTR [eax],al
c000da70:	e8 17 00 00 8a       	call   4a00da8c <AR_CODE32+0x4a0019f4>
c000da75:	a9 00 c0 1a 00       	test   eax,0x1ac000
c000da7a:	00 00                	add    BYTE PTR [eax],al
c000da7c:	41                   	inc    ecx
c000da7d:	0e                   	push   cs
c000da7e:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000da84:	44                   	inc    esp
c000da85:	2e 0c 83             	cs or  al,0x83
c000da88:	03 47 2e             	add    eax,DWORD PTR [edi+0x2e]
c000da8b:	10 4b c5             	adc    BYTE PTR [ebx-0x3b],cl
c000da8e:	0c 04                	or     al,0x4
c000da90:	04 c3                	add    al,0xc3
c000da92:	41                   	inc    ecx
c000da93:	13 03                	adc    eax,DWORD PTR [ebx]
c000da95:	2e 00 00             	add    BYTE PTR cs:[eax],al
c000da98:	1c 00                	sbb    al,0x0
c000da9a:	00 00                	add    BYTE PTR [eax],al
c000da9c:	14 18                	adc    al,0x18
c000da9e:	00 00                	add    BYTE PTR [eax],al
c000daa0:	a4                   	movs   BYTE PTR es:[edi],BYTE PTR ds:[esi]
c000daa1:	a9 00 c0 27 00       	test   eax,0x27c000
c000daa6:	00 00                	add    BYTE PTR [eax],al
c000daa8:	41                   	inc    ecx
c000daa9:	0e                   	push   cs
c000daaa:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000dab0:	63 0c 04             	arpl   WORD PTR [esp+eax*1],cx
c000dab3:	04 c5                	add    al,0xc5
c000dab5:	00 00                	add    BYTE PTR [eax],al
c000dab7:	00 3c 00             	add    BYTE PTR [eax+eax*1],bh
c000daba:	00 00                	add    BYTE PTR [eax],al
c000dabc:	34 18                	xor    al,0x18
c000dabe:	00 00                	add    BYTE PTR [eax],al
c000dac0:	cb                   	retf   
c000dac1:	a9 00 c0 38 00       	test   eax,0x38c000
c000dac6:	00 00                	add    BYTE PTR [eax],al
c000dac8:	41                   	inc    ecx
c000dac9:	0e                   	push   cs
c000daca:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000dad0:	46                   	inc    esi
c000dad1:	83 05 86 04 87 03 4f 	add    DWORD PTR ds:0x3870486,0x4f
c000dad8:	2e 04 04             	cs add al,0x4
c000dadb:	01 00                	add    DWORD PTR [eax],eax
c000dadd:	00 00                	add    BYTE PTR [eax],al
c000dadf:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c000dae3:	0c 41                	or     al,0x41
c000dae5:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c000dae9:	00 53 c3             	add    BYTE PTR [ebx-0x3d],dl
c000daec:	41                   	inc    ecx
c000daed:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c000daf1:	0c 04                	or     al,0x4
c000daf3:	04 c5                	add    al,0xc5
c000daf5:	00 00                	add    BYTE PTR [eax],al
c000daf7:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c000dafa:	00 00                	add    BYTE PTR [eax],al
c000dafc:	74 18                	je     c000db16 <_edata+0x188e>
c000dafe:	00 00                	add    BYTE PTR [eax],al
c000db00:	03 aa 00 c0 1a 00    	add    ebp,DWORD PTR [edx+0x1ac000]
c000db06:	00 00                	add    BYTE PTR [eax],al
c000db08:	41                   	inc    ecx
c000db09:	0e                   	push   cs
c000db0a:	08 85 02 44 0d 05    	or     BYTE PTR [ebp+0x50d4402],al
c000db10:	54                   	push   esp
c000db11:	0c 04                	or     al,0x4
c000db13:	04 c5                	add    al,0xc5
c000db15:	00 00                	add    BYTE PTR [eax],al
c000db17:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c000db1a:	00 00                	add    BYTE PTR [eax],al
c000db1c:	94                   	xchg   esp,eax
c000db1d:	18 00                	sbb    BYTE PTR [eax],al
c000db1f:	00 1d aa 00 c0 14    	add    BYTE PTR ds:0x14c000aa,bl
c000db25:	00 00                	add    BYTE PTR [eax],al
c000db27:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000db2a:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000db30:	44                   	inc    esp
c000db31:	0c 04                	or     al,0x4
c000db33:	04 c5                	add    al,0xc5
c000db35:	00 00                	add    BYTE PTR [eax],al
c000db37:	00 28                	add    BYTE PTR [eax],ch
c000db39:	00 00                	add    BYTE PTR [eax],al
c000db3b:	00 b4 18 00 00 34 aa 	add    BYTE PTR [eax+ebx*1-0x55cc0000],dh
c000db42:	00 c0                	add    al,al
c000db44:	5f                   	pop    edi
c000db45:	00 00                	add    BYTE PTR [eax],al
c000db47:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000db4a:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000db50:	45                   	inc    ebp
c000db51:	86 04 87             	xchg   BYTE PTR [edi+eax*4],al
c000db54:	03 44 83 05          	add    eax,DWORD PTR [ebx+eax*4+0x5]
c000db58:	02 4f c3             	add    cl,BYTE PTR [edi-0x3d]
c000db5b:	41                   	inc    ecx
c000db5c:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c000db60:	0c 04                	or     al,0x4
c000db62:	04 c5                	add    al,0xc5
c000db64:	28 00                	sub    BYTE PTR [eax],al
c000db66:	00 00                	add    BYTE PTR [eax],al
c000db68:	e0 18                	loopne c000db82 <_edata+0x18fa>
c000db6a:	00 00                	add    BYTE PTR [eax],al
c000db6c:	93                   	xchg   ebx,eax
c000db6d:	aa                   	stos   BYTE PTR es:[edi],al
c000db6e:	00 c0                	add    al,al
c000db70:	44                   	inc    esp
c000db71:	00 00                	add    BYTE PTR [eax],al
c000db73:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000db76:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000db7c:	44                   	inc    esp
c000db7d:	86 03                	xchg   BYTE PTR [ebx],al
c000db7f:	47                   	inc    edi
c000db80:	83 04 04 33          	add    DWORD PTR [esp+eax*1],0x33
c000db84:	00 00                	add    BYTE PTR [eax],al
c000db86:	00 c3                	add    bl,al
c000db88:	41                   	inc    ecx
c000db89:	c6 41 0c 04          	mov    BYTE PTR [ecx+0xc],0x4
c000db8d:	04 c5                	add    al,0xc5
c000db8f:	00 20                	add    BYTE PTR [eax],ah
c000db91:	00 00                	add    BYTE PTR [eax],al
c000db93:	00 0c 19             	add    BYTE PTR [ecx+ebx*1],cl
c000db96:	00 00                	add    BYTE PTR [eax],al
c000db98:	d7                   	xlat   BYTE PTR ds:[ebx]
c000db99:	aa                   	stos   BYTE PTR es:[edi],al
c000db9a:	00 c0                	add    al,al
c000db9c:	3c 00                	cmp    al,0x0
c000db9e:	00 00                	add    BYTE PTR [eax],al
c000dba0:	41                   	inc    ecx
c000dba1:	0e                   	push   cs
c000dba2:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000dba8:	41                   	inc    ecx
c000dba9:	83 03 76             	add    DWORD PTR [ebx],0x76
c000dbac:	c3                   	ret    
c000dbad:	41                   	inc    ecx
c000dbae:	0c 04                	or     al,0x4
c000dbb0:	04 c5                	add    al,0xc5
c000dbb2:	00 00                	add    BYTE PTR [eax],al
c000dbb4:	20 00                	and    BYTE PTR [eax],al
c000dbb6:	00 00                	add    BYTE PTR [eax],al
c000dbb8:	30 19                	xor    BYTE PTR [ecx],bl
c000dbba:	00 00                	add    BYTE PTR [eax],al
c000dbbc:	13 ab 00 c0 2e 00    	adc    ebp,DWORD PTR [ebx+0x2ec000]
c000dbc2:	00 00                	add    BYTE PTR [eax],al
c000dbc4:	41                   	inc    ecx
c000dbc5:	0e                   	push   cs
c000dbc6:	08 85 02 47 0d 05    	or     BYTE PTR [ebp+0x50d4702],al
c000dbcc:	46                   	inc    esi
c000dbcd:	83 03 5e             	add    DWORD PTR [ebx],0x5e
c000dbd0:	c3                   	ret    
c000dbd1:	41                   	inc    ecx
c000dbd2:	0c 04                	or     al,0x4
c000dbd4:	04 c5                	add    al,0xc5
c000dbd6:	00 00                	add    BYTE PTR [eax],al
c000dbd8:	1c 00                	sbb    al,0x0
c000dbda:	00 00                	add    BYTE PTR [eax],al
c000dbdc:	54                   	push   esp
c000dbdd:	19 00                	sbb    DWORD PTR [eax],eax
c000dbdf:	00 41 ab             	add    BYTE PTR [ecx-0x55],al
c000dbe2:	00 c0                	add    al,al
c000dbe4:	27                   	daa    
c000dbe5:	00 00                	add    BYTE PTR [eax],al
c000dbe7:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000dbea:	08 85 02 47 0d 05    	or     BYTE PTR [ebp+0x50d4702],al
c000dbf0:	5e                   	pop    esi
c000dbf1:	0c 04                	or     al,0x4
c000dbf3:	04 c5                	add    al,0xc5
c000dbf5:	00 00                	add    BYTE PTR [eax],al
c000dbf7:	00 2c 00             	add    BYTE PTR [eax+eax*1],ch
c000dbfa:	00 00                	add    BYTE PTR [eax],al
c000dbfc:	74 19                	je     c000dc17 <_edata+0x198f>
c000dbfe:	00 00                	add    BYTE PTR [eax],al
c000dc00:	68 ab 00 c0 a1       	push   0xa1c000ab
c000dc05:	00 00                	add    BYTE PTR [eax],al
c000dc07:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000dc0a:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000dc10:	42                   	inc    edx
c000dc11:	83 03 02             	add    DWORD PTR [ebx],0x2
c000dc14:	92                   	xchg   edx,eax
c000dc15:	0a c3                	or     al,bl
c000dc17:	41                   	inc    ecx
c000dc18:	0c 04                	or     al,0x4
c000dc1a:	04 c5                	add    al,0xc5
c000dc1c:	45                   	inc    ebp
c000dc1d:	0b 42 c3             	or     eax,DWORD PTR [edx-0x3d]
c000dc20:	41                   	inc    ecx
c000dc21:	0c 04                	or     al,0x4
c000dc23:	04 c5                	add    al,0xc5
c000dc25:	00 00                	add    BYTE PTR [eax],al
c000dc27:	00 3c 00             	add    BYTE PTR [eax+eax*1],bh
c000dc2a:	00 00                	add    BYTE PTR [eax],al
c000dc2c:	a4                   	movs   BYTE PTR es:[edi],BYTE PTR ds:[esi]
c000dc2d:	19 00                	sbb    DWORD PTR [eax],eax
c000dc2f:	00 09                	add    BYTE PTR [ecx],cl
c000dc31:	ac                   	lods   al,BYTE PTR ds:[esi]
c000dc32:	00 c0                	add    al,al
c000dc34:	28 00                	sub    BYTE PTR [eax],al
c000dc36:	00 00                	add    BYTE PTR [eax],al
c000dc38:	41                   	inc    ecx
c000dc39:	0e                   	push   cs
c000dc3a:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000dc40:	41                   	inc    ecx
c000dc41:	86 03                	xchg   BYTE PTR [ebx],al
c000dc43:	45                   	inc    ebp
c000dc44:	83 04 04 0a          	add    DWORD PTR [esp+eax*1],0xa
c000dc48:	00 00                	add    BYTE PTR [eax],al
c000dc4a:	00 2e                	add    BYTE PTR [esi],ch
c000dc4c:	04 04                	add    al,0x4
c000dc4e:	01 00                	add    DWORD PTR [eax],eax
c000dc50:	00 00                	add    BYTE PTR [eax],al
c000dc52:	2e 08 46 2e          	or     BYTE PTR cs:[esi+0x2e],al
c000dc56:	04 04                	add    al,0x4
c000dc58:	01 00                	add    DWORD PTR [eax],eax
c000dc5a:	00 00                	add    BYTE PTR [eax],al
c000dc5c:	2e 00 4a c3          	add    BYTE PTR cs:[edx-0x3d],cl
c000dc60:	41                   	inc    ecx
c000dc61:	c6 41 0c 04          	mov    BYTE PTR [ecx+0xc],0x4
c000dc65:	04 c5                	add    al,0xc5
c000dc67:	00 38                	add    BYTE PTR [eax],bh
c000dc69:	00 00                	add    BYTE PTR [eax],al
c000dc6b:	00 e4                	add    ah,ah
c000dc6d:	19 00                	sbb    DWORD PTR [eax],eax
c000dc6f:	00 31                	add    BYTE PTR [ecx],dh
c000dc71:	ac                   	lods   al,BYTE PTR ds:[esi]
c000dc72:	00 c0                	add    al,al
c000dc74:	3a 00                	cmp    al,BYTE PTR [eax]
c000dc76:	00 00                	add    BYTE PTR [eax],al
c000dc78:	41                   	inc    ecx
c000dc79:	0e                   	push   cs
c000dc7a:	08 85 02 44 0d 05    	or     BYTE PTR [ebp+0x50d4402],al
c000dc80:	47                   	inc    edi
c000dc81:	83 04 87 03          	add    DWORD PTR [edi+eax*4],0x3
c000dc85:	51                   	push   ecx
c000dc86:	2e 04 04             	cs add al,0x4
c000dc89:	04 00                	add    al,0x0
c000dc8b:	00 00                	add    BYTE PTR [eax],al
c000dc8d:	2e 08 43 2e          	or     BYTE PTR cs:[ebx+0x2e],al
c000dc91:	0c 46                	or     al,0x46
c000dc93:	2e 10 41 2e          	adc    BYTE PTR cs:[ecx+0x2e],al
c000dc97:	14 48                	adc    al,0x48
c000dc99:	2e 00 44 c3 41       	add    BYTE PTR cs:[ebx+eax*8+0x41],al
c000dc9e:	c7 41 0c 04 04 c5 38 	mov    DWORD PTR [ecx+0xc],0x38c50404
c000dca5:	00 00                	add    BYTE PTR [eax],al
c000dca7:	00 20                	add    BYTE PTR [eax],ah
c000dca9:	1a 00                	sbb    al,BYTE PTR [eax]
c000dcab:	00 6b ac             	add    BYTE PTR [ebx-0x54],ch
c000dcae:	00 c0                	add    al,al
c000dcb0:	3a 00                	cmp    al,BYTE PTR [eax]
c000dcb2:	00 00                	add    BYTE PTR [eax],al
c000dcb4:	41                   	inc    ecx
c000dcb5:	0e                   	push   cs
c000dcb6:	08 85 02 44 0d 05    	or     BYTE PTR [ebp+0x50d4402],al
c000dcbc:	47                   	inc    edi
c000dcbd:	83 04 87 03          	add    DWORD PTR [edi+eax*4],0x3
c000dcc1:	51                   	push   ecx
c000dcc2:	2e 04 04             	cs add al,0x4
c000dcc5:	04 00                	add    al,0x0
c000dcc7:	00 00                	add    BYTE PTR [eax],al
c000dcc9:	2e 08 43 2e          	or     BYTE PTR cs:[ebx+0x2e],al
c000dccd:	0c 46                	or     al,0x46
c000dccf:	2e 10 41 2e          	adc    BYTE PTR cs:[ecx+0x2e],al
c000dcd3:	14 48                	adc    al,0x48
c000dcd5:	2e 00 44 c3 41       	add    BYTE PTR cs:[ebx+eax*8+0x41],al
c000dcda:	c7 41 0c 04 04 c5 38 	mov    DWORD PTR [ecx+0xc],0x38c50404
c000dce1:	00 00                	add    BYTE PTR [eax],al
c000dce3:	00 5c 1a 00          	add    BYTE PTR [edx+ebx*1+0x0],bl
c000dce7:	00 a8 ac 00 c0 47    	add    BYTE PTR [eax+0x47c000ac],ch
c000dced:	00 00                	add    BYTE PTR [eax],al
c000dcef:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000dcf2:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000dcf8:	45                   	inc    ebp
c000dcf9:	83 04 86 03          	add    DWORD PTR [esi+eax*4],0x3
c000dcfd:	52                   	push   edx
c000dcfe:	2e 04 04             	cs add al,0x4
c000dd01:	05 00 00 00 2e       	add    eax,0x2e000000
c000dd06:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c000dd09:	0c 45                	or     al,0x45
c000dd0b:	2e 10 4e 2e          	adc    BYTE PTR cs:[esi+0x2e],cl
c000dd0f:	00 50 c3             	add    BYTE PTR [eax-0x3d],dl
c000dd12:	41                   	inc    ecx
c000dd13:	c6 41 0c 04          	mov    BYTE PTR [ecx+0xc],0x4
c000dd17:	04 c5                	add    al,0xc5
c000dd19:	00 00                	add    BYTE PTR [eax],al
c000dd1b:	00 3c 00             	add    BYTE PTR [eax+eax*1],bh
c000dd1e:	00 00                	add    BYTE PTR [eax],al
c000dd20:	98                   	cwde   
c000dd21:	1a 00                	sbb    al,BYTE PTR [eax]
c000dd23:	00 ef                	add    bh,ch
c000dd25:	ac                   	lods   al,BYTE PTR ds:[esi]
c000dd26:	00 c0                	add    al,al
c000dd28:	4a                   	dec    edx
c000dd29:	00 00                	add    BYTE PTR [eax],al
c000dd2b:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000dd2e:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000dd34:	46                   	inc    esi
c000dd35:	83 05 86 04 87 03 56 	add    DWORD PTR ds:0x3870486,0x56
c000dd3c:	2e 04 04             	cs add al,0x4
c000dd3f:	05 00 00 00 2e       	add    eax,0x2e000000
c000dd44:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c000dd47:	0c 45                	or     al,0x45
c000dd49:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000dd4d:	00 53 c3             	add    BYTE PTR [ebx-0x3d],dl
c000dd50:	41                   	inc    ecx
c000dd51:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c000dd55:	0c 04                	or     al,0x4
c000dd57:	04 c5                	add    al,0xc5
c000dd59:	00 00                	add    BYTE PTR [eax],al
c000dd5b:	00 3c 00             	add    BYTE PTR [eax+eax*1],bh
c000dd5e:	00 00                	add    BYTE PTR [eax],al
c000dd60:	d8 1a                	fcomp  DWORD PTR [edx]
c000dd62:	00 00                	add    BYTE PTR [eax],al
c000dd64:	39 ad 00 c0 42 00    	cmp    DWORD PTR [ebp+0x42c000],ebp
c000dd6a:	00 00                	add    BYTE PTR [eax],al
c000dd6c:	41                   	inc    ecx
c000dd6d:	0e                   	push   cs
c000dd6e:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000dd74:	41                   	inc    ecx
c000dd75:	86 03                	xchg   BYTE PTR [ebx],al
c000dd77:	44                   	inc    esp
c000dd78:	83 04 04 10          	add    DWORD PTR [esp+eax*1],0x10
c000dd7c:	00 00                	add    BYTE PTR [eax],al
c000dd7e:	00 2e                	add    BYTE PTR [esi],ch
c000dd80:	04 04                	add    al,0x4
c000dd82:	05 00 00 00 2e       	add    eax,0x2e000000
c000dd87:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c000dd8a:	0c 45                	or     al,0x45
c000dd8c:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000dd90:	00 53 c3             	add    BYTE PTR [ebx-0x3d],dl
c000dd93:	41                   	inc    ecx
c000dd94:	c6 41 0c 04          	mov    BYTE PTR [ecx+0xc],0x4
c000dd98:	04 c5                	add    al,0xc5
c000dd9a:	00 00                	add    BYTE PTR [eax],al
c000dd9c:	20 00                	and    BYTE PTR [eax],al
c000dd9e:	00 00                	add    BYTE PTR [eax],al
c000dda0:	18 1b                	sbb    BYTE PTR [ebx],bl
c000dda2:	00 00                	add    BYTE PTR [eax],al
c000dda4:	7b ad                	jnp    c000dd53 <_edata+0x1acb>
c000dda6:	00 c0                	add    al,al
c000dda8:	1a 00                	sbb    al,BYTE PTR [eax]
c000ddaa:	00 00                	add    BYTE PTR [eax],al
c000ddac:	41                   	inc    ecx
c000ddad:	0e                   	push   cs
c000ddae:	08 85 02 44 0d 05    	or     BYTE PTR [ebp+0x50d4402],al
c000ddb4:	44                   	inc    esp
c000ddb5:	83 03 4f             	add    DWORD PTR [ebx],0x4f
c000ddb8:	c3                   	ret    
c000ddb9:	41                   	inc    ecx
c000ddba:	0c 04                	or     al,0x4
c000ddbc:	04 c5                	add    al,0xc5
c000ddbe:	00 00                	add    BYTE PTR [eax],al
c000ddc0:	1c 00                	sbb    al,0x0
c000ddc2:	00 00                	add    BYTE PTR [eax],al
c000ddc4:	3c 1b                	cmp    al,0x1b
c000ddc6:	00 00                	add    BYTE PTR [eax],al
c000ddc8:	95                   	xchg   ebp,eax
c000ddc9:	ad                   	lods   eax,DWORD PTR ds:[esi]
c000ddca:	00 c0                	add    al,al
c000ddcc:	13 00                	adc    eax,DWORD PTR [eax]
c000ddce:	00 00                	add    BYTE PTR [eax],al
c000ddd0:	41                   	inc    ecx
c000ddd1:	0e                   	push   cs
c000ddd2:	08 85 02 44 0d 05    	or     BYTE PTR [ebp+0x50d4402],al
c000ddd8:	4d                   	dec    ebp
c000ddd9:	0c 04                	or     al,0x4
c000dddb:	04 c5                	add    al,0xc5
c000dddd:	00 00                	add    BYTE PTR [eax],al
c000dddf:	00 a4 00 00 00 5c 1b 	add    BYTE PTR [eax+eax*1+0x1b5c0000],ah
c000dde6:	00 00                	add    BYTE PTR [eax],al
c000dde8:	a8 ad                	test   al,0xad
c000ddea:	00 c0                	add    al,al
c000ddec:	ce                   	into   
c000dded:	01 00                	add    DWORD PTR [eax],eax
c000ddef:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000ddf2:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000ddf8:	46                   	inc    esi
c000ddf9:	83 05 86 04 87 03 02 	add    DWORD PTR ds:0x3870486,0x2
c000de00:	df 2e                	fild   QWORD PTR [esi]
c000de02:	04 04                	add    al,0x4
c000de04:	02 00                	add    al,BYTE PTR [eax]
c000de06:	00 00                	add    BYTE PTR [eax],al
c000de08:	2e 08 42 2e          	or     BYTE PTR cs:[edx+0x2e],al
c000de0c:	00 47 2e             	add    BYTE PTR [edi+0x2e],al
c000de0f:	04 04                	add    al,0x4
c000de11:	02 00                	add    al,BYTE PTR [eax]
c000de13:	00 00                	add    BYTE PTR [eax],al
c000de15:	2e 08 42 2e          	or     BYTE PTR cs:[edx+0x2e],al
c000de19:	00 47 2e             	add    BYTE PTR [edi+0x2e],al
c000de1c:	04 04                	add    al,0x4
c000de1e:	02 00                	add    al,BYTE PTR [eax]
c000de20:	00 00                	add    BYTE PTR [eax],al
c000de22:	2e 08 44 2e 0c       	or     BYTE PTR cs:[esi+ebp*1+0xc],al
c000de27:	42                   	inc    edx
c000de28:	2e 10 4f 2e          	adc    BYTE PTR cs:[edi+0x2e],cl
c000de2c:	00 46 2e             	add    BYTE PTR [esi+0x2e],al
c000de2f:	04 04                	add    al,0x4
c000de31:	01 00                	add    DWORD PTR [eax],eax
c000de33:	00 00                	add    BYTE PTR [eax],al
c000de35:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c000de39:	0c 41                	or     al,0x41
c000de3b:	2e 10 54 2e 00       	adc    BYTE PTR cs:[esi+ebp*1+0x0],dl
c000de40:	44                   	inc    esp
c000de41:	2e 04 04             	cs add al,0x4
c000de44:	02 00                	add    al,BYTE PTR [eax]
c000de46:	00 00                	add    BYTE PTR [eax],al
c000de48:	2e 08 47 2e          	or     BYTE PTR cs:[edi+0x2e],al
c000de4c:	0c 42                	or     al,0x42
c000de4e:	2e 10 4b 2e          	adc    BYTE PTR cs:[ebx+0x2e],cl
c000de52:	00 43 2e             	add    BYTE PTR [ebx+0x2e],al
c000de55:	0c 44                	or     al,0x44
c000de57:	2e 10 4b 2e          	adc    BYTE PTR cs:[ebx+0x2e],cl
c000de5b:	00 60 2e             	add    BYTE PTR [eax+0x2e],ah
c000de5e:	04 04                	add    al,0x4
c000de60:	01 00                	add    DWORD PTR [eax],eax
c000de62:	00 00                	add    BYTE PTR [eax],al
c000de64:	2e 08 44 2e 0c       	or     BYTE PTR cs:[esi+ebp*1+0xc],al
c000de69:	41                   	inc    ecx
c000de6a:	2e 10 56 2e          	adc    BYTE PTR cs:[esi+0x2e],dl
c000de6e:	00 64 2e 0c          	add    BYTE PTR [esi+ebp*1+0xc],ah
c000de72:	43                   	inc    ebx
c000de73:	2e 10 49 c3          	adc    BYTE PTR cs:[ecx-0x3d],cl
c000de77:	41                   	inc    ecx
c000de78:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c000de7c:	0c 04                	or     al,0x4
c000de7e:	04 c5                	add    al,0xc5
c000de80:	41                   	inc    ecx
c000de81:	13 03                	adc    eax,DWORD PTR [ebx]
c000de83:	2e 00 00             	add    BYTE PTR cs:[eax],al
c000de86:	00 00                	add    BYTE PTR [eax],al
c000de88:	30 00                	xor    BYTE PTR [eax],al
c000de8a:	00 00                	add    BYTE PTR [eax],al
c000de8c:	04 1c                	add    al,0x1c
c000de8e:	00 00                	add    BYTE PTR [eax],al
c000de90:	76 af                	jbe    c000de41 <_edata+0x1bb9>
c000de92:	00 c0                	add    al,al
c000de94:	17                   	pop    ss
c000de95:	00 00                	add    BYTE PTR [eax],al
c000de97:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000de9a:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000dea0:	43                   	inc    ebx
c000dea1:	2e 04 04             	cs add al,0x4
c000dea4:	04 00                	add    al,0x0
c000dea6:	00 00                	add    BYTE PTR [eax],al
c000dea8:	2e 08 43 2e          	or     BYTE PTR cs:[ebx+0x2e],al
c000deac:	0c 43                	or     al,0x43
c000deae:	2e 10 46 c5          	adc    BYTE PTR cs:[esi-0x3b],al
c000deb2:	0c 04                	or     al,0x4
c000deb4:	04 41                	add    al,0x41
c000deb6:	13 03                	adc    eax,DWORD PTR [ebx]
c000deb8:	2e 00 00             	add    BYTE PTR cs:[eax],al
c000debb:	00 28                	add    BYTE PTR [eax],ch
c000debd:	00 00                	add    BYTE PTR [eax],al
c000debf:	00 38                	add    BYTE PTR [eax],bh
c000dec1:	1c 00                	sbb    al,0x0
c000dec3:	00 90 af 00 c0 4d    	add    BYTE PTR [eax+0x4dc000af],dl
c000dec9:	00 00                	add    BYTE PTR [eax],al
c000decb:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000dece:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000ded4:	49                   	dec    ecx
c000ded5:	83 05 86 04 87 03 7d 	add    DWORD PTR ds:0x3870486,0x7d
c000dedc:	c3                   	ret    
c000dedd:	41                   	inc    ecx
c000dede:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c000dee2:	0c 04                	or     al,0x4
c000dee4:	04 c5                	add    al,0xc5
c000dee6:	00 00                	add    BYTE PTR [eax],al
c000dee8:	1c 00                	sbb    al,0x0
c000deea:	00 00                	add    BYTE PTR [eax],al
c000deec:	64 1c 00             	fs sbb al,0x0
c000deef:	00 dd                	add    ch,bl
c000def1:	af                   	scas   eax,DWORD PTR es:[edi]
c000def2:	00 c0                	add    al,al
c000def4:	25 00 00 00 41       	and    eax,0x41000000
c000def9:	0e                   	push   cs
c000defa:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000df00:	61                   	popa   
c000df01:	0c 04                	or     al,0x4
c000df03:	04 c5                	add    al,0xc5
c000df05:	00 00                	add    BYTE PTR [eax],al
c000df07:	00 a0 00 00 00 84    	add    BYTE PTR [eax-0x7c000000],ah
c000df0d:	1c 00                	sbb    al,0x0
c000df0f:	00 02                	add    BYTE PTR [edx],al
c000df11:	b0 00                	mov    al,0x0
c000df13:	c0 f8 00             	sar    al,0x0
c000df16:	00 00                	add    BYTE PTR [eax],al
c000df18:	41                   	inc    ecx
c000df19:	0e                   	push   cs
c000df1a:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000df20:	41                   	inc    ecx
c000df21:	83 03 7e             	add    DWORD PTR [ebx],0x7e
c000df24:	2e 04 04             	cs add al,0x4
c000df27:	07                   	pop    es
c000df28:	00 00                	add    BYTE PTR [eax],al
c000df2a:	00 2e                	add    BYTE PTR [esi],ch
c000df2c:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c000df2f:	0c 42                	or     al,0x42
c000df31:	2e 10 45 2e          	adc    BYTE PTR cs:[ebp+0x2e],al
c000df35:	14 41                	adc    al,0x41
c000df37:	2e 18 51 2e          	sbb    BYTE PTR cs:[ecx+0x2e],dl
c000df3b:	1c 48                	sbb    al,0x48
c000df3d:	2e 20 41 2e          	and    BYTE PTR cs:[ecx+0x2e],al
c000df41:	24 42                	and    al,0x42
c000df43:	2e 28 45 2e          	sub    BYTE PTR cs:[ebp+0x2e],al
c000df47:	2c 41                	sub    al,0x41
c000df49:	2e 30 4d 2e          	xor    BYTE PTR cs:[ebp+0x2e],cl
c000df4d:	00 47 2e             	add    BYTE PTR [edi+0x2e],al
c000df50:	04 04                	add    al,0x4
c000df52:	02 00                	add    al,BYTE PTR [eax]
c000df54:	00 00                	add    BYTE PTR [eax],al
c000df56:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c000df5a:	0c 42                	or     al,0x42
c000df5c:	2e 10 45 2e          	adc    BYTE PTR cs:[ebp+0x2e],al
c000df60:	14 41                	adc    al,0x41
c000df62:	2e 18 51 2e          	sbb    BYTE PTR cs:[ecx+0x2e],dl
c000df66:	1c 42                	sbb    al,0x42
c000df68:	2e 20 41 2e          	and    BYTE PTR cs:[ecx+0x2e],al
c000df6c:	24 42                	and    al,0x42
c000df6e:	2e 28 45 2e          	sub    BYTE PTR cs:[ebp+0x2e],al
c000df72:	2c 41                	sub    al,0x41
c000df74:	2e 30 4d 2e          	xor    BYTE PTR cs:[ebp+0x2e],cl
c000df78:	00 47 2e             	add    BYTE PTR [edi+0x2e],al
c000df7b:	04 04                	add    al,0x4
c000df7d:	02 00                	add    al,BYTE PTR [eax]
c000df7f:	00 00                	add    BYTE PTR [eax],al
c000df81:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c000df85:	0c 42                	or     al,0x42
c000df87:	2e 10 45 2e          	adc    BYTE PTR cs:[ebp+0x2e],al
c000df8b:	14 41                	adc    al,0x41
c000df8d:	2e 18 51 2e          	sbb    BYTE PTR cs:[ecx+0x2e],dl
c000df91:	1c 42                	sbb    al,0x42
c000df93:	2e 20 41 2e          	and    BYTE PTR cs:[ecx+0x2e],al
c000df97:	24 42                	and    al,0x42
c000df99:	2e 28 45 2e          	sub    BYTE PTR cs:[ebp+0x2e],al
c000df9d:	2c 41                	sub    al,0x41
c000df9f:	2e 30 48 2e          	xor    BYTE PTR cs:[eax+0x2e],cl
c000dfa3:	00 44 c5 0c          	add    BYTE PTR [ebp+eax*8+0xc],al
c000dfa7:	04 04                	add    al,0x4
c000dfa9:	c3                   	ret    
c000dfaa:	00 00                	add    BYTE PTR [eax],al
c000dfac:	2c 00                	sub    al,0x0
c000dfae:	00 00                	add    BYTE PTR [eax],al
c000dfb0:	28 1d 00 00 fa b0    	sub    BYTE PTR ds:0xb0fa0000,bl
c000dfb6:	00 c0                	add    al,al
c000dfb8:	84 00                	test   BYTE PTR [eax],al
c000dfba:	00 00                	add    BYTE PTR [eax],al
c000dfbc:	41                   	inc    ecx
c000dfbd:	0e                   	push   cs
c000dfbe:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000dfc4:	41                   	inc    ecx
c000dfc5:	87 03                	xchg   DWORD PTR [ebx],eax
c000dfc7:	49                   	dec    ecx
c000dfc8:	83 05 86 04 04 73 00 	add    DWORD PTR ds:0x73040486,0x0
c000dfcf:	00 00                	add    BYTE PTR [eax],al
c000dfd1:	c3                   	ret    
c000dfd2:	41                   	inc    ecx
c000dfd3:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c000dfd7:	0c 04                	or     al,0x4
c000dfd9:	04 c5                	add    al,0xc5
c000dfdb:	00 44 00 00          	add    BYTE PTR [eax+eax*1+0x0],al
c000dfdf:	00 58 1d             	add    BYTE PTR [eax+0x1d],bl
c000dfe2:	00 00                	add    BYTE PTR [eax],al
c000dfe4:	7e b1                	jle    c000df97 <_edata+0x1d0f>
c000dfe6:	00 c0                	add    al,al
c000dfe8:	43                   	inc    ebx
c000dfe9:	00 00                	add    BYTE PTR [eax],al
c000dfeb:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000dfee:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000dff4:	41                   	inc    ecx
c000dff5:	87 03                	xchg   DWORD PTR [ebx],eax
c000dff7:	44                   	inc    esp
c000dff8:	86 04 04             	xchg   BYTE PTR [esp+eax*1],al
c000dffb:	04 00                	add    al,0x0
c000dffd:	00 00                	add    BYTE PTR [eax],al
c000dfff:	83 05 55 2e 04 04 03 	add    DWORD PTR ds:0x4042e55,0x3
c000e006:	00 00                	add    BYTE PTR [eax],al
c000e008:	00 2e                	add    BYTE PTR [esi],ch
c000e00a:	08 41 2e             	or     BYTE PTR [ecx+0x2e],al
c000e00d:	0c 41                	or     al,0x41
c000e00f:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c000e013:	14 48                	adc    al,0x48
c000e015:	2e 00 4b c3          	add    BYTE PTR cs:[ebx-0x3d],cl
c000e019:	41                   	inc    ecx
c000e01a:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c000e01e:	0c 04                	or     al,0x4
c000e020:	04 c5                	add    al,0xc5
	...

Disassembly of section .rodata:

c000e024 <_rodata>:
c000e024:	0a 5b 55             	or     bl,BYTE PTR [ebx+0x55]
c000e027:	73 65                	jae    c000e08e <_rodata+0x6a>
c000e029:	72 5d                	jb     c000e088 <_rodata+0x64>
c000e02b:	3a 00                	cmp    al,BYTE PTR [eax]
c000e02d:	25 30 34 64 2f       	and    eax,0x2f643430
c000e032:	25 30 32 64 2f       	and    eax,0x2f643230
c000e037:	25 30 32 64 20       	and    eax,0x20643230
c000e03c:	25 30 32 64 3a       	and    eax,0x3a643230
c000e041:	25 30 32 64 3a       	and    eax,0x3a643230
c000e046:	25 30 32 64 00       	and    eax,0x643230
c000e04b:	0a 50 65             	or     dl,BYTE PTR [eax+0x65]
c000e04e:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000e04f:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c000e052:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c000e057:	65 6c                	gs ins BYTE PTR es:[edi],dx
c000e059:	20 28                	and    BYTE PTR [eax],ch
c000e05b:	50                   	push   eax
c000e05c:	4b                   	dec    ebx
c000e05d:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000e05e:	29 20                	sub    DWORD PTR [eax],esp
c000e060:	76 65                	jbe    c000e0c7 <_rodata+0xa3>
c000e062:	72 73                	jb     c000e0d7 <_rodata+0xb3>
c000e064:	69 6f 6e 20 30 2e 30 	imul   ebp,DWORD PTR [edi+0x6e],0x302e3020
c000e06b:	2e 30 20             	xor    BYTE PTR cs:[eax],ah
c000e06e:	74 65                	je     c000e0d5 <_rodata+0xb1>
c000e070:	73 74                	jae    c000e0e6 <_rodata+0xc2>
c000e072:	0a 00                	or     al,BYTE PTR [eax]
c000e074:	43                   	inc    ebx
c000e075:	50                   	push   eax
c000e076:	55                   	push   ebp
c000e077:	20 20                	and    BYTE PTR [eax],ah
c000e079:	20 20                	and    BYTE PTR [eax],ah
c000e07b:	3a 00                	cmp    al,BYTE PTR [eax]
c000e07d:	4d                   	dec    ebp
c000e07e:	65 6d                	gs ins DWORD PTR es:[edi],dx
c000e080:	6f                   	outs   dx,DWORD PTR ds:[esi]
c000e081:	72 79                	jb     c000e0fc <_rodata+0xd8>
c000e083:	20 3a                	and    BYTE PTR [edx],bh
c000e085:	00 4d 42             	add    BYTE PTR [ebp+0x42],cl
c000e088:	20 28                	and    BYTE PTR [eax],ch
c000e08a:	20 00                	and    BYTE PTR [eax],al
c000e08c:	4b                   	dec    ebx
c000e08d:	42                   	inc    edx
c000e08e:	20 29                	and    BYTE PTR [ecx],ch
c000e090:	20 00                	and    BYTE PTR [eax],al
c000e092:	44                   	inc    esp
c000e093:	69 73 6b 20 20 20 3a 	imul   esi,DWORD PTR [ebx+0x6b],0x3a202020
c000e09a:	00 50 65             	add    BYTE PTR [eax+0x65],dl
c000e09d:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000e09e:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c000e0a1:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c000e0a6:	65 6c                	gs ins BYTE PTR es:[edi],dx
c000e0a8:	20 28                	and    BYTE PTR [eax],ch
c000e0aa:	50                   	push   eax
c000e0ab:	4b                   	dec    ebx
c000e0ac:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000e0ad:	29 20                	sub    DWORD PTR [eax],esp
c000e0af:	76 65                	jbe    c000e116 <PKn_Version+0xa>
c000e0b1:	72 73                	jb     c000e126 <PKn_Version+0x1a>
c000e0b3:	69 6f 6e 20 30 2e 30 	imul   ebp,DWORD PTR [edi+0x6e],0x302e3020
c000e0ba:	2e 30 20             	xor    BYTE PTR cs:[eax],ah
c000e0bd:	74 65                	je     c000e124 <PKn_Version+0x18>
c000e0bf:	73 74                	jae    c000e135 <PKn_Version+0x29>
c000e0c1:	00 56 69             	add    BYTE PTR [esi+0x69],dl
c000e0c4:	64 65 6f             	fs outs dx,DWORD PTR gs:[esi]
c000e0c7:	20 4d 6f             	and    BYTE PTR [ebp+0x6f],cl
c000e0ca:	64 65 3a 20          	fs cmp ah,BYTE PTR gs:[eax]
c000e0ce:	30 78 25             	xor    BYTE PTR [eax+0x25],bh
c000e0d1:	78 20                	js     c000e0f3 <_rodata+0xcf>
c000e0d3:	53                   	push   ebx
c000e0d4:	63 72 6e             	arpl   WORD PTR [edx+0x6e],si
c000e0d7:	78 20                	js     c000e0f9 <_rodata+0xd5>
c000e0d9:	3d 20 25 64 20       	cmp    eax,0x20642520
c000e0de:	53                   	push   ebx
c000e0df:	63 72 6e             	arpl   WORD PTR [edx+0x6e],si
c000e0e2:	79 20                	jns    c000e104 <_rodata+0xe0>
c000e0e4:	3d 20 25 64 00       	cmp    eax,0x642520
c000e0e9:	61                   	popa   
c000e0ea:	72 67                	jb     c000e153 <PKn_Version+0x47>
c000e0ec:	5f                   	pop    edi
c000e0ed:	41                   	inc    ecx
c000e0ee:	20 00                	and    BYTE PTR [eax],al
c000e0f0:	6b 5f 61 00          	imul   ebx,DWORD PTR [edi+0x61],0x0
c000e0f4:	61                   	popa   
c000e0f5:	72 67                	jb     c000e15e <PKn_Version+0x52>
c000e0f7:	5f                   	pop    edi
c000e0f8:	42                   	inc    edx
c000e0f9:	20 00                	and    BYTE PTR [eax],al
c000e0fb:	6b 5f 62 00          	imul   ebx,DWORD PTR [edi+0x62],0x0
c000e0ff:	75 73                	jne    c000e174 <PKn_Version+0x68>
c000e101:	65 72 5f             	gs jb  c000e163 <PKn_Version+0x57>
c000e104:	70 72                	jo     c000e178 <PKn_Version+0x6c>
c000e106:	6f                   	outs   dx,DWORD PTR ds:[esi]
c000e107:	67 00 00             	add    BYTE PTR [bx+si],al
	...

c000e10c <PKn_Version>:
c000e10c:	50                   	push   eax
c000e10d:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c000e10f:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c000e112:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c000e117:	65 6c                	gs ins BYTE PTR es:[edi],dx
c000e119:	20 28                	and    BYTE PTR [eax],ch
c000e11b:	50                   	push   eax
c000e11c:	4b                   	dec    ebx
c000e11d:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000e11e:	29 20                	sub    DWORD PTR [eax],esp
c000e120:	76 65                	jbe    c000e187 <PKn_Version+0x7b>
c000e122:	72 73                	jb     c000e197 <PKn_Version+0x8b>
c000e124:	69 6f 6e 20 30 2e 30 	imul   ebp,DWORD PTR [edi+0x6e],0x302e3020
c000e12b:	2e 30 20             	xor    BYTE PTR cs:[eax],ah
c000e12e:	74 65                	je     c000e195 <PKn_Version+0x89>
c000e130:	73 74                	jae    c000e1a6 <PKn_Version+0x9a>
c000e132:	00 00                	add    BYTE PTR [eax],al
c000e134:	20 45 72             	and    BYTE PTR [ebp+0x72],al
c000e137:	72 6f                	jb     c000e1a8 <PKn_Version+0x9c>
c000e139:	72 0a                	jb     c000e145 <PKn_Version+0x39>
c000e13b:	00 20                	add    BYTE PTR [eax],ah
c000e13d:	46                   	inc    esi
c000e13e:	69 6c 65 3a 20 20 20 	imul   ebp,DWORD PTR [ebp+eiz*2+0x3a],0x20202020
c000e145:	20 
c000e146:	20 20                	and    BYTE PTR [eax],ah
c000e148:	20 20                	and    BYTE PTR [eax],ah
c000e14a:	00 20                	add    BYTE PTR [eax],ah
c000e14c:	49                   	dec    ecx
c000e14d:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000e14e:	20 66 75             	and    BYTE PTR [esi+0x75],ah
c000e151:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000e152:	63 74 69 6f          	arpl   WORD PTR [ecx+ebp*2+0x6f],si
c000e156:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000e157:	3a 20                	cmp    ah,BYTE PTR [eax]
c000e159:	00 20                	add    BYTE PTR [eax],ah
c000e15b:	4c                   	dec    esp
c000e15c:	69 6e 65 3a 20 20 20 	imul   ebp,DWORD PTR [esi+0x65],0x2020203a
c000e163:	20 20                	and    BYTE PTR [eax],ah
c000e165:	20 20                	and    BYTE PTR [eax],ah
c000e167:	20 00                	and    BYTE PTR [eax],al
c000e169:	20 43 6f             	and    BYTE PTR [ebx+0x6f],al
c000e16c:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000e16d:	64 69 74 69 6f 6e 3a 	imul   esi,DWORD PTR fs:[ecx+ebp*2+0x6f],0x20203a6e
c000e174:	20 20 
c000e176:	20 00                	and    BYTE PTR [eax],al
c000e178:	50                   	push   eax
c000e179:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c000e17b:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c000e17e:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c000e183:	65 6c                	gs ins BYTE PTR es:[edi],dx
c000e185:	20 28                	and    BYTE PTR [eax],ch
c000e187:	50                   	push   eax
c000e188:	4b                   	dec    ebx
c000e189:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000e18a:	29 20                	sub    DWORD PTR [eax],esp
c000e18c:	76 65                	jbe    c000e1f3 <PKn_Version+0xe7>
c000e18e:	72 73                	jb     c000e203 <PKn_Version+0xf7>
c000e190:	69 6f 6e 20 30 2e 30 	imul   ebp,DWORD PTR [edi+0x6e],0x302e3020
c000e197:	2e 30 20             	xor    BYTE PTR cs:[eax],ah
c000e19a:	74 65                	je     c000e201 <PKn_Version+0xf5>
c000e19c:	73 74                	jae    c000e212 <PKn_Version+0x106>
c000e19e:	00 00                	add    BYTE PTR [eax],al
c000e1a0:	5b                   	pop    ebx
c000e1a1:	69 6e 69 6e 5d 3a 61 	imul   ebp,DWORD PTR [esi+0x69],0x613a5d6e
c000e1a8:	6c                   	ins    BYTE PTR es:[edi],dx
c000e1a9:	6c                   	ins    BYTE PTR es:[edi],dx
c000e1aa:	0a 00                	or     al,BYTE PTR [eax]
c000e1ac:	5b                   	pop    ebx
c000e1ad:	69 6e 69 74 5d 3a 69 	imul   ebp,DWORD PTR [esi+0x69],0x693a5d74
c000e1b4:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000e1b5:	69 74 20 64 6f 77 6e 	imul   esi,DWORD PTR [eax+eiz*1+0x64],0x2e6e776f
c000e1bc:	2e 
c000e1bd:	0a 00                	or     al,BYTE PTR [eax]
c000e1bf:	00 50 65             	add    BYTE PTR [eax+0x65],dl
c000e1c2:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000e1c3:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c000e1c6:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c000e1cb:	65 6c                	gs ins BYTE PTR es:[edi],dx
c000e1cd:	20 28                	and    BYTE PTR [eax],ch
c000e1cf:	50                   	push   eax
c000e1d0:	4b                   	dec    ebx
c000e1d1:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000e1d2:	29 20                	sub    DWORD PTR [eax],esp
c000e1d4:	76 65                	jbe    c000e23b <PKn_Version+0x12f>
c000e1d6:	72 73                	jb     c000e24b <PKn_Version+0x13f>
c000e1d8:	69 6f 6e 20 30 2e 30 	imul   ebp,DWORD PTR [edi+0x6e],0x302e3020
c000e1df:	2e 30 20             	xor    BYTE PTR cs:[eax],ah
c000e1e2:	74 65                	je     c000e249 <PKn_Version+0x13d>
c000e1e4:	73 74                	jae    c000e25a <PKn_Version+0x14e>
c000e1e6:	00 00                	add    BYTE PTR [eax],al
c000e1e8:	23 44 45 20          	and    eax,DWORD PTR [ebp+eax*2+0x20]
c000e1ec:	44                   	inc    esp
c000e1ed:	69 76 69 64 65 20 45 	imul   esi,DWORD PTR [esi+0x69],0x45206564
c000e1f4:	72 72                	jb     c000e268 <PKn_Version+0x15c>
c000e1f6:	6f                   	outs   dx,DWORD PTR ds:[esi]
c000e1f7:	72 00                	jb     c000e1f9 <PKn_Version+0xed>
c000e1f9:	23 44 42 20          	and    eax,DWORD PTR [edx+eax*2+0x20]
c000e1fd:	44                   	inc    esp
c000e1fe:	65 62 75 67          	bound  esi,QWORD PTR gs:[ebp+0x67]
c000e202:	20 45 78             	and    BYTE PTR [ebp+0x78],al
c000e205:	63 65 70             	arpl   WORD PTR [ebp+0x70],sp
c000e208:	74 69                	je     c000e273 <PKn_Version+0x167>
c000e20a:	6f                   	outs   dx,DWORD PTR ds:[esi]
c000e20b:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000e20c:	00 4e 4d             	add    BYTE PTR [esi+0x4d],cl
c000e20f:	49                   	dec    ecx
c000e210:	20 49 6e             	and    BYTE PTR [ecx+0x6e],cl
c000e213:	74 65                	je     c000e27a <PKn_Version+0x16e>
c000e215:	72 72                	jb     c000e289 <PKn_Version+0x17d>
c000e217:	75 70                	jne    c000e289 <PKn_Version+0x17d>
c000e219:	74 00                	je     c000e21b <PKn_Version+0x10f>
c000e21b:	23 42 50             	and    eax,DWORD PTR [edx+0x50]
c000e21e:	20 42 72             	and    BYTE PTR [edx+0x72],al
c000e221:	65 61                	gs popa 
c000e223:	6b 70 6f 69          	imul   esi,DWORD PTR [eax+0x6f],0x69
c000e227:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000e228:	74 20                	je     c000e24a <PKn_Version+0x13e>
c000e22a:	45                   	inc    ebp
c000e22b:	78 63                	js     c000e290 <PKn_Version+0x184>
c000e22d:	65 70 74             	gs jo  c000e2a4 <PKn_Version+0x198>
c000e230:	69 6f 6e 00 23 4f 46 	imul   ebp,DWORD PTR [edi+0x6e],0x464f2300
c000e237:	20 4f 76             	and    BYTE PTR [edi+0x76],cl
c000e23a:	65 72 66             	gs jb  c000e2a3 <PKn_Version+0x197>
c000e23d:	6c                   	ins    BYTE PTR es:[edi],dx
c000e23e:	6f                   	outs   dx,DWORD PTR ds:[esi]
c000e23f:	77 20                	ja     c000e261 <PKn_Version+0x155>
c000e241:	45                   	inc    ebp
c000e242:	78 63                	js     c000e2a7 <PKn_Version+0x19b>
c000e244:	65 70 74             	gs jo  c000e2bb <PKn_Version+0x1af>
c000e247:	69 6f 6e 00 23 42 52 	imul   ebp,DWORD PTR [edi+0x6e],0x52422300
c000e24e:	20 42 4f             	and    BYTE PTR [edx+0x4f],al
c000e251:	55                   	push   ebp
c000e252:	4e                   	dec    esi
c000e253:	44                   	inc    esp
c000e254:	20 52 61             	and    BYTE PTR [edx+0x61],dl
c000e257:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000e258:	67 65 20 45 78       	and    BYTE PTR gs:[di+0x78],al
c000e25d:	63 65 65             	arpl   WORD PTR [ebp+0x65],sp
c000e260:	64 65 64 20 45 78    	fs gs and BYTE PTR fs:[ebp+0x78],al
c000e266:	63 65 70             	arpl   WORD PTR [ebp+0x70],sp
c000e269:	74 69                	je     c000e2d4 <PKn_Version+0x1c8>
c000e26b:	6f                   	outs   dx,DWORD PTR ds:[esi]
c000e26c:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000e26d:	00 23                	add    BYTE PTR [ebx],ah
c000e26f:	55                   	push   ebp
c000e270:	44                   	inc    esp
c000e271:	20 49 6e             	and    BYTE PTR [ecx+0x6e],cl
c000e274:	76 61                	jbe    c000e2d7 <PKn_Version+0x1cb>
c000e276:	6c                   	ins    BYTE PTR es:[edi],dx
c000e277:	69 64 20 4f 70 63 6f 	imul   esp,DWORD PTR [eax+eiz*1+0x4f],0x646f6370
c000e27e:	64 
c000e27f:	65 20 45 78          	and    BYTE PTR gs:[ebp+0x78],al
c000e283:	63 65 70             	arpl   WORD PTR [ebp+0x70],sp
c000e286:	74 69                	je     c000e2f1 <PKn_Version+0x1e5>
c000e288:	6f                   	outs   dx,DWORD PTR ds:[esi]
c000e289:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000e28a:	00 23                	add    BYTE PTR [ebx],ah
c000e28c:	4e                   	dec    esi
c000e28d:	4d                   	dec    ebp
c000e28e:	20 44 65 76          	and    BYTE PTR [ebp+eiz*2+0x76],al
c000e292:	69 63 65 20 4e 6f 74 	imul   esp,DWORD PTR [ebx+0x65],0x746f4e20
c000e299:	20 41 76             	and    BYTE PTR [ecx+0x76],al
c000e29c:	61                   	popa   
c000e29d:	69 6c 61 62 6c 65 20 	imul   ebp,DWORD PTR [ecx+eiz*2+0x62],0x4520656c
c000e2a4:	45 
c000e2a5:	78 63                	js     c000e30a <PKn_Version+0x1fe>
c000e2a7:	65 70 74             	gs jo  c000e31e <PKn_Version+0x212>
c000e2aa:	69 6f 6e 00 23 44 46 	imul   ebp,DWORD PTR [edi+0x6e],0x46442300
c000e2b1:	20 44 6f 75          	and    BYTE PTR [edi+ebp*2+0x75],al
c000e2b5:	62 6c 65 20          	bound  ebp,QWORD PTR [ebp+eiz*2+0x20]
c000e2b9:	46                   	inc    esi
c000e2ba:	61                   	popa   
c000e2bb:	75 6c                	jne    c000e329 <PKn_Version+0x21d>
c000e2bd:	74 20                	je     c000e2df <PKn_Version+0x1d3>
c000e2bf:	45                   	inc    ebp
c000e2c0:	78 63                	js     c000e325 <PKn_Version+0x219>
c000e2c2:	65 70 74             	gs jo  c000e339 <PKn_Version+0x22d>
c000e2c5:	69 6f 6e 00 43 6f 70 	imul   ebp,DWORD PTR [edi+0x6e],0x706f4300
c000e2cc:	72 6f                	jb     c000e33d <PKn_Version+0x231>
c000e2ce:	63 65 73             	arpl   WORD PTR [ebp+0x73],sp
c000e2d1:	73 6f                	jae    c000e342 <PKn_Version+0x236>
c000e2d3:	72 20                	jb     c000e2f5 <PKn_Version+0x1e9>
c000e2d5:	53                   	push   ebx
c000e2d6:	65 67 6d             	gs ins DWORD PTR es:[di],dx
c000e2d9:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c000e2db:	74 20                	je     c000e2fd <PKn_Version+0x1f1>
c000e2dd:	4f                   	dec    edi
c000e2de:	76 65                	jbe    c000e345 <PKn_Version+0x239>
c000e2e0:	72 72                	jb     c000e354 <PKn_Version+0x248>
c000e2e2:	75 6e                	jne    c000e352 <PKn_Version+0x246>
c000e2e4:	00 23                	add    BYTE PTR [ebx],ah
c000e2e6:	54                   	push   esp
c000e2e7:	53                   	push   ebx
c000e2e8:	20 49 6e             	and    BYTE PTR [ecx+0x6e],cl
c000e2eb:	76 61                	jbe    c000e34e <PKn_Version+0x242>
c000e2ed:	6c                   	ins    BYTE PTR es:[edi],dx
c000e2ee:	69 64 20 54 53 53 20 	imul   esp,DWORD PTR [eax+eiz*1+0x54],0x45205353
c000e2f5:	45 
c000e2f6:	78 63                	js     c000e35b <PKn_Version+0x24f>
c000e2f8:	65 70 74             	gs jo  c000e36f <PKn_Version+0x263>
c000e2fb:	69 6f 6e 00 23 4e 50 	imul   ebp,DWORD PTR [edi+0x6e],0x504e2300
c000e302:	20 53 65             	and    BYTE PTR [ebx+0x65],dl
c000e305:	67 6d                	ins    DWORD PTR es:[di],dx
c000e307:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c000e309:	74 20                	je     c000e32b <PKn_Version+0x21f>
c000e30b:	4e                   	dec    esi
c000e30c:	6f                   	outs   dx,DWORD PTR ds:[esi]
c000e30d:	74 20                	je     c000e32f <PKn_Version+0x223>
c000e30f:	50                   	push   eax
c000e310:	72 65                	jb     c000e377 <PKn_Version+0x26b>
c000e312:	73 65                	jae    c000e379 <PKn_Version+0x26d>
c000e314:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000e315:	74 00                	je     c000e317 <PKn_Version+0x20b>
c000e317:	23 53 53             	and    edx,DWORD PTR [ebx+0x53]
c000e31a:	20 53 74             	and    BYTE PTR [ebx+0x74],dl
c000e31d:	61                   	popa   
c000e31e:	63 6b 20             	arpl   WORD PTR [ebx+0x20],bp
c000e321:	46                   	inc    esi
c000e322:	61                   	popa   
c000e323:	75 6c                	jne    c000e391 <PKn_Version+0x285>
c000e325:	74 20                	je     c000e347 <PKn_Version+0x23b>
c000e327:	45                   	inc    ebp
c000e328:	78 63                	js     c000e38d <PKn_Version+0x281>
c000e32a:	65 70 74             	gs jo  c000e3a1 <PKn_Version+0x295>
c000e32d:	69 6f 6e 00 23 47 50 	imul   ebp,DWORD PTR [edi+0x6e],0x50472300
c000e334:	20 47 65             	and    BYTE PTR [edi+0x65],al
c000e337:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000e338:	65 72 61             	gs jb  c000e39c <PKn_Version+0x290>
c000e33b:	6c                   	ins    BYTE PTR es:[edi],dx
c000e33c:	20 50 72             	and    BYTE PTR [eax+0x72],dl
c000e33f:	6f                   	outs   dx,DWORD PTR ds:[esi]
c000e340:	74 65                	je     c000e3a7 <PKn_Version+0x29b>
c000e342:	63 74 69 6f          	arpl   WORD PTR [ecx+ebp*2+0x6f],si
c000e346:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000e347:	20 45 78             	and    BYTE PTR [ebp+0x78],al
c000e34a:	63 65 70             	arpl   WORD PTR [ebp+0x70],sp
c000e34d:	74 69                	je     c000e3b8 <PKn_Version+0x2ac>
c000e34f:	6f                   	outs   dx,DWORD PTR ds:[esi]
c000e350:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000e351:	00 23                	add    BYTE PTR [ebx],ah
c000e353:	50                   	push   eax
c000e354:	46                   	inc    esi
c000e355:	20 50 61             	and    BYTE PTR [eax+0x61],dl
c000e358:	67 65 2d 46 61 75 6c 	addr16 gs sub eax,0x6c756146
c000e35f:	74 20                	je     c000e381 <PKn_Version+0x275>
c000e361:	45                   	inc    ebp
c000e362:	78 63                	js     c000e3c7 <PKn_Version+0x2bb>
c000e364:	65 70 74             	gs jo  c000e3db <PKn_Version+0x2cf>
c000e367:	69 6f 6e 00 52 65 73 	imul   ebp,DWORD PTR [edi+0x6e],0x73655200
c000e36e:	65 72 76             	gs jb  c000e3e7 <PKn_Version+0x2db>
c000e371:	65 64 00 23          	gs add BYTE PTR fs:[ebx],ah
c000e375:	4d                   	dec    ebp
c000e376:	46                   	inc    esi
c000e377:	20 78 38             	and    BYTE PTR [eax+0x38],bh
c000e37a:	37                   	aaa    
c000e37b:	20 46 50             	and    BYTE PTR [esi+0x50],al
c000e37e:	55                   	push   ebp
c000e37f:	20 46 6c             	and    BYTE PTR [esi+0x6c],al
c000e382:	6f                   	outs   dx,DWORD PTR ds:[esi]
c000e383:	61                   	popa   
c000e384:	74 69                	je     c000e3ef <PKn_Version+0x2e3>
c000e386:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000e387:	67 2d 50 6f 69 6e    	addr16 sub eax,0x6e696f50
c000e38d:	74 20                	je     c000e3af <PKn_Version+0x2a3>
c000e38f:	45                   	inc    ebp
c000e390:	72 72                	jb     c000e404 <PKn_Version+0x2f8>
c000e392:	6f                   	outs   dx,DWORD PTR ds:[esi]
c000e393:	72 00                	jb     c000e395 <PKn_Version+0x289>
c000e395:	23 41 43             	and    eax,DWORD PTR [ecx+0x43]
c000e398:	20 41 6c             	and    BYTE PTR [ecx+0x6c],al
c000e39b:	69 67 6e 6d 65 6e 74 	imul   esp,DWORD PTR [edi+0x6e],0x746e656d
c000e3a2:	20 43 68             	and    BYTE PTR [ebx+0x68],al
c000e3a5:	65 63 6b 20          	arpl   WORD PTR gs:[ebx+0x20],bp
c000e3a9:	45                   	inc    ebp
c000e3aa:	78 63                	js     c000e40f <PKn_Version+0x303>
c000e3ac:	65 70 74             	gs jo  c000e423 <PKn_Version+0x317>
c000e3af:	69 6f 6e 00 23 4d 43 	imul   ebp,DWORD PTR [edi+0x6e],0x434d2300
c000e3b6:	20 4d 61             	and    BYTE PTR [ebp+0x61],cl
c000e3b9:	63 68 69             	arpl   WORD PTR [eax+0x69],bp
c000e3bc:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000e3bd:	65 2d 43 68 65 63    	gs sub eax,0x63656843
c000e3c3:	6b 20 45             	imul   esp,DWORD PTR [eax],0x45
c000e3c6:	78 63                	js     c000e42b <PKn_Version+0x31f>
c000e3c8:	65 70 74             	gs jo  c000e43f <PKn_Version+0x333>
c000e3cb:	69 6f 6e 00 23 58 46 	imul   ebp,DWORD PTR [edi+0x6e],0x46582300
c000e3d2:	20 53 49             	and    BYTE PTR [ebx+0x49],dl
c000e3d5:	4d                   	dec    ebp
c000e3d6:	44                   	inc    esp
c000e3d7:	20 46 6c             	and    BYTE PTR [esi+0x6c],al
c000e3da:	6f                   	outs   dx,DWORD PTR ds:[esi]
c000e3db:	61                   	popa   
c000e3dc:	74 69                	je     c000e447 <PKn_Version+0x33b>
c000e3de:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000e3df:	67 2d 50 6f 69 6e    	addr16 sub eax,0x6e696f50
c000e3e5:	74 20                	je     c000e407 <PKn_Version+0x2fb>
c000e3e7:	45                   	inc    ebp
c000e3e8:	78 63                	js     c000e44d <PKn_Version+0x341>
c000e3ea:	65 70 74             	gs jo  c000e461 <PKn_Version+0x355>
c000e3ed:	69 6f 6e 00 53 6f 72 	imul   ebp,DWORD PTR [edi+0x6e],0x726f5300
c000e3f4:	72 79                	jb     c000e46f <PKn_Version+0x363>
c000e3f6:	2c 20                	sub    al,0x20
c000e3f8:	61                   	popa   
c000e3f9:	20 70 72             	and    BYTE PTR [eax+0x72],dh
c000e3fc:	6f                   	outs   dx,DWORD PTR ds:[esi]
c000e3fd:	62 6c 65 6d          	bound  ebp,QWORD PTR [ebp+eiz*2+0x6d]
c000e401:	20 62 65             	and    BYTE PTR [edx+0x65],ah
c000e404:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c000e406:	20 64 65 74          	and    BYTE PTR [ebp+eiz*2+0x74],ah
c000e40a:	65 63 74 65 64       	arpl   WORD PTR gs:[ebp+eiz*2+0x64],si
c000e40f:	20 61 6e             	and    BYTE PTR [ecx+0x6e],ah
c000e412:	64 20 50 4b          	and    BYTE PTR fs:[eax+0x4b],dl
c000e416:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000e417:	20 73 68             	and    BYTE PTR [ebx+0x68],dh
c000e41a:	75 74                	jne    c000e490 <PKn_Version+0x384>
c000e41c:	20 64 6f 77          	and    BYTE PTR [edi+ebp*2+0x77],ah
c000e420:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000e421:	20 74 6f 20          	and    BYTE PTR [edi+ebp*2+0x20],dh
c000e425:	70 72                	jo     c000e499 <PKn_Version+0x38d>
c000e427:	65 76 65             	gs jbe c000e48f <PKn_Version+0x383>
c000e42a:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000e42b:	74 20                	je     c000e44d <PKn_Version+0x341>
c000e42d:	64 61                	fs popa 
c000e42f:	6d                   	ins    DWORD PTR es:[edi],dx
c000e430:	61                   	popa   
c000e431:	67 65 20 74 6f       	and    BYTE PTR gs:[si+0x6f],dh
c000e436:	20 79 6f             	and    BYTE PTR [ecx+0x6f],bh
c000e439:	75 72                	jne    c000e4ad <PKn_Version+0x3a1>
c000e43b:	20 63 6f             	and    BYTE PTR [ebx+0x6f],ah
c000e43e:	6d                   	ins    DWORD PTR es:[edi],dx
c000e43f:	70 75                	jo     c000e4b6 <PKn_Version+0x3aa>
c000e441:	74 65                	je     c000e4a8 <PKn_Version+0x39c>
c000e443:	72 2e                	jb     c000e473 <PKn_Version+0x367>
c000e445:	0a 49 66             	or     cl,BYTE PTR [ecx+0x66]
c000e448:	20 74 68 69          	and    BYTE PTR [eax+ebp*2+0x69],dh
c000e44c:	73 20                	jae    c000e46e <PKn_Version+0x362>
c000e44e:	69 73 20 74 68 65 20 	imul   esi,DWORD PTR [ebx+0x20],0x20656874
c000e455:	66 69 72 73 74 20    	imul   si,WORD PTR [edx+0x73],0x2074
c000e45b:	74 69                	je     c000e4c6 <PKn_Version+0x3ba>
c000e45d:	6d                   	ins    DWORD PTR es:[edi],dx
c000e45e:	65 20 79 6f          	and    BYTE PTR gs:[ecx+0x6f],bh
c000e462:	75 27                	jne    c000e48b <PKn_Version+0x37f>
c000e464:	76 65                	jbe    c000e4cb <PKn_Version+0x3bf>
c000e466:	20 73 65             	and    BYTE PTR [ebx+0x65],dh
c000e469:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c000e46b:	20 74 68 69          	and    BYTE PTR [eax+ebp*2+0x69],dh
c000e46f:	73 20                	jae    c000e491 <PKn_Version+0x385>
c000e471:	73 74                	jae    c000e4e7 <PKn_Version+0x3db>
c000e473:	6f                   	outs   dx,DWORD PTR ds:[esi]
c000e474:	70 20                	jo     c000e496 <PKn_Version+0x38a>
c000e476:	65 72 72             	gs jb  c000e4eb <PKn_Version+0x3df>
c000e479:	6f                   	outs   dx,DWORD PTR ds:[esi]
c000e47a:	72 20                	jb     c000e49c <PKn_Version+0x390>
c000e47c:	73 65                	jae    c000e4e3 <PKn_Version+0x3d7>
c000e47e:	72 65                	jb     c000e4e5 <PKn_Version+0x3d9>
c000e480:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c000e482:	2c 20                	sub    al,0x20
c000e484:	72 65                	jb     c000e4eb <PKn_Version+0x3df>
c000e486:	73 74                	jae    c000e4fc <PKn_Version+0x3f0>
c000e488:	61                   	popa   
c000e489:	72 74                	jb     c000e4ff <PKn_Version+0x3f3>
c000e48b:	20 79 6f             	and    BYTE PTR [ecx+0x6f],bh
c000e48e:	75 72                	jne    c000e502 <PKn_Version+0x3f6>
c000e490:	20 63 6f             	and    BYTE PTR [ebx+0x6f],ah
c000e493:	6d                   	ins    DWORD PTR es:[edi],dx
c000e494:	70 75                	jo     c000e50b <PKn_Version+0x3ff>
c000e496:	74 65                	je     c000e4fd <PKn_Version+0x3f1>
c000e498:	72 2e                	jb     c000e4c8 <PKn_Version+0x3bc>
c000e49a:	49                   	dec    ecx
c000e49b:	66 20 74 68 69       	data16 and BYTE PTR [eax+ebp*2+0x69],dh
c000e4a0:	73 20                	jae    c000e4c2 <PKn_Version+0x3b6>
c000e4a2:	73 63                	jae    c000e507 <PKn_Version+0x3fb>
c000e4a4:	72 65                	jb     c000e50b <PKn_Version+0x3ff>
c000e4a6:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c000e4a8:	20 61 70             	and    BYTE PTR [ecx+0x70],ah
c000e4ab:	70 65                	jo     c000e512 <PKn_Version+0x406>
c000e4ad:	72 73                	jb     c000e522 <PKn_Version+0x416>
c000e4af:	20 61 67             	and    BYTE PTR [ecx+0x67],ah
c000e4b2:	61                   	popa   
c000e4b3:	69 6e 2c 66 6f 6c 6c 	imul   ebp,DWORD PTR [esi+0x2c],0x6c6c6f66
c000e4ba:	6f                   	outs   dx,DWORD PTR ds:[esi]
c000e4bb:	77 20                	ja     c000e4dd <PKn_Version+0x3d1>
c000e4bd:	74 68                	je     c000e527 <PKn_Version+0x41b>
c000e4bf:	65 73 65             	gs jae c000e527 <PKn_Version+0x41b>
c000e4c2:	20 73 74             	and    BYTE PTR [ebx+0x74],dh
c000e4c5:	65 70 73             	gs jo  c000e53b <PKn_Version+0x42f>
c000e4c8:	3a 0a                	cmp    cl,BYTE PTR [edx]
c000e4ca:	20 31                	and    BYTE PTR [ecx],dh
c000e4cc:	2e 20 52 65          	and    BYTE PTR cs:[edx+0x65],dl
c000e4d0:	62 75 69             	bound  esi,QWORD PTR [ebp+0x69]
c000e4d3:	6c                   	ins    BYTE PTR es:[edi],dx
c000e4d4:	64 20 50 65          	and    BYTE PTR fs:[eax+0x65],dl
c000e4d8:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000e4d9:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c000e4dc:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c000e4e1:	65 6c                	gs ins BYTE PTR es:[edi],dx
c000e4e3:	2e 20 0a             	and    BYTE PTR cs:[edx],cl
c000e4e6:	20 32                	and    BYTE PTR [edx],dh
c000e4e8:	2e 20 44 65 62       	and    BYTE PTR cs:[ebp+eiz*2+0x62],al
c000e4ed:	75 67                	jne    c000e556 <PKn_Version+0x44a>
c000e4ef:	20 50 65             	and    BYTE PTR [eax+0x65],dl
c000e4f2:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000e4f3:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c000e4f6:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c000e4fb:	65 6c                	gs ins BYTE PTR es:[edi],dx
c000e4fd:	20 6f 6e             	and    BYTE PTR [edi+0x6e],ch
c000e500:	20 76 69             	and    BYTE PTR [esi+0x69],dh
c000e503:	72 74                	jb     c000e579 <PKn_Version+0x46d>
c000e505:	75 61                	jne    c000e568 <PKn_Version+0x45c>
c000e507:	6c                   	ins    BYTE PTR es:[edi],dx
c000e508:	20 6d 61             	and    BYTE PTR [ebp+0x61],ch
c000e50b:	63 68 69             	arpl   WORD PTR [eax+0x69],bp
c000e50e:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000e50f:	65 2e 0a 00          	gs or  al,BYTE PTR cs:[eax]
c000e513:	20 25 73 0a 20 69    	and    BYTE PTR ds:0x69200a73,ah
c000e519:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000e51a:	74 72                	je     c000e58e <PKn_Version+0x482>
c000e51c:	3a 20                	cmp    ah,BYTE PTR [eax]
c000e51e:	30 78 25             	xor    BYTE PTR [eax+0x25],bh
c000e521:	30 32                	xor    BYTE PTR [edx],dh
c000e523:	78 0a                	js     c000e52f <PKn_Version+0x423>
c000e525:	20 43 53             	and    BYTE PTR [ebx+0x53],al
c000e528:	3a 45 49             	cmp    al,BYTE PTR [ebp+0x49]
c000e52b:	50                   	push   eax
c000e52c:	20 20                	and    BYTE PTR [eax],ah
c000e52e:	30 78 25             	xor    BYTE PTR [eax+0x25],bh
c000e531:	78 3a                	js     c000e56d <PKn_Version+0x461>
c000e533:	25 30 38 70 0a       	and    eax,0xa703830
c000e538:	00 20                	add    BYTE PTR [eax],ah
c000e53a:	28 20                	sub    BYTE PTR [eax],ah
c000e53c:	66 61                	popaw  
c000e53e:	75 6c                	jne    c000e5ac <PKn_Version+0x4a0>
c000e540:	74 20                	je     c000e562 <PKn_Version+0x456>
c000e542:	61                   	popa   
c000e543:	64 64 72 65          	fs fs jb c000e5ac <PKn_Version+0x4a0>
c000e547:	73 73                	jae    c000e5bc <PKn_Version+0x4b0>
c000e549:	3a 20                	cmp    ah,BYTE PTR [eax]
c000e54b:	30 78 00             	xor    BYTE PTR [eax+0x0],bh
c000e54e:	20 29                	and    BYTE PTR [ecx],ch
c000e550:	0a 00                	or     al,BYTE PTR [eax]
c000e552:	0a 20                	or     ah,BYTE PTR [eax]
c000e554:	43                   	inc    ebx
c000e555:	50                   	push   eax
c000e556:	55                   	push   ebp
c000e557:	20 3a                	and    BYTE PTR [edx],bh
c000e559:	00 53 6f             	add    BYTE PTR [ebx+0x6f],dl
c000e55c:	72 72                	jb     c000e5d0 <PKn_Version+0x4c4>
c000e55e:	79 2c                	jns    c000e58c <PKn_Version+0x480>
c000e560:	20 61 20             	and    BYTE PTR [ecx+0x20],ah
c000e563:	70 72                	jo     c000e5d7 <PKn_Version+0x4cb>
c000e565:	6f                   	outs   dx,DWORD PTR ds:[esi]
c000e566:	62 6c 65 6d          	bound  ebp,QWORD PTR [ebp+eiz*2+0x6d]
c000e56a:	20 62 65             	and    BYTE PTR [edx+0x65],ah
c000e56d:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c000e56f:	20 64 65 74          	and    BYTE PTR [ebp+eiz*2+0x74],ah
c000e573:	65 63 74 65 64       	arpl   WORD PTR gs:[ebp+eiz*2+0x64],si
c000e578:	20 61 6e             	and    BYTE PTR [ecx+0x6e],ah
c000e57b:	64 20 50 4b          	and    BYTE PTR fs:[eax+0x4b],dl
c000e57f:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000e580:	20 73 68             	and    BYTE PTR [ebx+0x68],dh
c000e583:	75 74                	jne    c000e5f9 <PKn_Version+0x4ed>
c000e585:	20 64 6f 77          	and    BYTE PTR [edi+ebp*2+0x77],ah
c000e589:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000e58a:	20 74 6f 20          	and    BYTE PTR [edi+ebp*2+0x20],dh
c000e58e:	70 72                	jo     c000e602 <PKn_Version+0x4f6>
c000e590:	65 76 65             	gs jbe c000e5f8 <PKn_Version+0x4ec>
c000e593:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000e594:	74 20                	je     c000e5b6 <PKn_Version+0x4aa>
c000e596:	64 61                	fs popa 
c000e598:	6d                   	ins    DWORD PTR es:[edi],dx
c000e599:	61                   	popa   
c000e59a:	67 65 20 74 6f       	and    BYTE PTR gs:[si+0x6f],dh
c000e59f:	20 79 6f             	and    BYTE PTR [ecx+0x6f],bh
c000e5a2:	75 72                	jne    c000e616 <PKn_Version+0x50a>
c000e5a4:	20 63 6f             	and    BYTE PTR [ebx+0x6f],ah
c000e5a7:	6d                   	ins    DWORD PTR es:[edi],dx
c000e5a8:	70 75                	jo     c000e61f <PKn_Version+0x513>
c000e5aa:	74 65                	je     c000e611 <PKn_Version+0x505>
c000e5ac:	72 2e                	jb     c000e5dc <PKn_Version+0x4d0>
c000e5ae:	0a 49 66             	or     cl,BYTE PTR [ecx+0x66]
c000e5b1:	20 74 68 69          	and    BYTE PTR [eax+ebp*2+0x69],dh
c000e5b5:	73 20                	jae    c000e5d7 <PKn_Version+0x4cb>
c000e5b7:	69 73 20 74 68 65 20 	imul   esi,DWORD PTR [ebx+0x20],0x20656874
c000e5be:	66 69 72 73 74 20    	imul   si,WORD PTR [edx+0x73],0x2074
c000e5c4:	74 69                	je     c000e62f <PKn_Version+0x523>
c000e5c6:	6d                   	ins    DWORD PTR es:[edi],dx
c000e5c7:	65 20 79 6f          	and    BYTE PTR gs:[ecx+0x6f],bh
c000e5cb:	75 27                	jne    c000e5f4 <PKn_Version+0x4e8>
c000e5cd:	76 65                	jbe    c000e634 <PKn_Version+0x528>
c000e5cf:	20 73 65             	and    BYTE PTR [ebx+0x65],dh
c000e5d2:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c000e5d4:	20 74 68 69          	and    BYTE PTR [eax+ebp*2+0x69],dh
c000e5d8:	73 20                	jae    c000e5fa <PKn_Version+0x4ee>
c000e5da:	73 74                	jae    c000e650 <PKn_Version+0x544>
c000e5dc:	6f                   	outs   dx,DWORD PTR ds:[esi]
c000e5dd:	70 20                	jo     c000e5ff <PKn_Version+0x4f3>
c000e5df:	65 72 72             	gs jb  c000e654 <PKn_Version+0x548>
c000e5e2:	6f                   	outs   dx,DWORD PTR ds:[esi]
c000e5e3:	72 20                	jb     c000e605 <PKn_Version+0x4f9>
c000e5e5:	73 65                	jae    c000e64c <PKn_Version+0x540>
c000e5e7:	72 65                	jb     c000e64e <PKn_Version+0x542>
c000e5e9:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c000e5eb:	2c 20                	sub    al,0x20
c000e5ed:	72 65                	jb     c000e654 <PKn_Version+0x548>
c000e5ef:	73 74                	jae    c000e665 <PKn_Version+0x559>
c000e5f1:	61                   	popa   
c000e5f2:	72 74                	jb     c000e668 <PKn_Version+0x55c>
c000e5f4:	20 79 6f             	and    BYTE PTR [ecx+0x6f],bh
c000e5f7:	75 72                	jne    c000e66b <PKn_Version+0x55f>
c000e5f9:	20 63 6f             	and    BYTE PTR [ebx+0x6f],ah
c000e5fc:	6d                   	ins    DWORD PTR es:[edi],dx
c000e5fd:	70 75                	jo     c000e674 <PKn_Version+0x568>
c000e5ff:	74 65                	je     c000e666 <PKn_Version+0x55a>
c000e601:	72 2e                	jb     c000e631 <PKn_Version+0x525>
c000e603:	0a 49 66             	or     cl,BYTE PTR [ecx+0x66]
c000e606:	20 74 68 69          	and    BYTE PTR [eax+ebp*2+0x69],dh
c000e60a:	73 20                	jae    c000e62c <PKn_Version+0x520>
c000e60c:	73 63                	jae    c000e671 <PKn_Version+0x565>
c000e60e:	72 65                	jb     c000e675 <PKn_Version+0x569>
c000e610:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c000e612:	20 61 70             	and    BYTE PTR [ecx+0x70],ah
c000e615:	70 65                	jo     c000e67c <PKn_Version+0x570>
c000e617:	72 73                	jb     c000e68c <PKn_Version+0x580>
c000e619:	20 61 67             	and    BYTE PTR [ecx+0x67],ah
c000e61c:	61                   	popa   
c000e61d:	69 6e 2c 66 6f 6c 6c 	imul   ebp,DWORD PTR [esi+0x2c],0x6c6c6f66
c000e624:	6f                   	outs   dx,DWORD PTR ds:[esi]
c000e625:	77 20                	ja     c000e647 <PKn_Version+0x53b>
c000e627:	74 68                	je     c000e691 <PKn_Version+0x585>
c000e629:	65 73 65             	gs jae c000e691 <PKn_Version+0x585>
c000e62c:	20 73 74             	and    BYTE PTR [ebx+0x74],dh
c000e62f:	65 70 73             	gs jo  c000e6a5 <PKn_Version+0x599>
c000e632:	3a 0a                	cmp    cl,BYTE PTR [edx]
c000e634:	20 31                	and    BYTE PTR [ecx],dh
c000e636:	2e 20 52 65          	and    BYTE PTR cs:[edx+0x65],dl
c000e63a:	62 75 69             	bound  esi,QWORD PTR [ebp+0x69]
c000e63d:	6c                   	ins    BYTE PTR es:[edi],dx
c000e63e:	64 20 50 65          	and    BYTE PTR fs:[eax+0x65],dl
c000e642:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000e643:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c000e646:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c000e64b:	65 6c                	gs ins BYTE PTR es:[edi],dx
c000e64d:	2e 20 0a             	and    BYTE PTR cs:[edx],cl
c000e650:	20 32                	and    BYTE PTR [edx],dh
c000e652:	2e 20 44 65 62       	and    BYTE PTR cs:[ebp+eiz*2+0x62],al
c000e657:	75 67                	jne    c000e6c0 <PKn_Version+0x5b4>
c000e659:	20 50 65             	and    BYTE PTR [eax+0x65],dl
c000e65c:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000e65d:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c000e660:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c000e665:	65 6c                	gs ins BYTE PTR es:[edi],dx
c000e667:	20 6f 6e             	and    BYTE PTR [edi+0x6e],ch
c000e66a:	20 76 69             	and    BYTE PTR [esi+0x69],dh
c000e66d:	72 74                	jb     c000e6e3 <PKn_Version+0x5d7>
c000e66f:	75 61                	jne    c000e6d2 <PKn_Version+0x5c6>
c000e671:	6c                   	ins    BYTE PTR es:[edi],dx
c000e672:	20 6d 61             	and    BYTE PTR [ebp+0x61],ch
c000e675:	63 68 69             	arpl   WORD PTR [eax+0x69],bp
c000e678:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000e679:	65 2e 0a 00          	gs or  al,BYTE PTR cs:[eax]
c000e67d:	69 6e 74 72 3a 20 30 	imul   ebp,DWORD PTR [esi+0x74],0x30203a72
c000e684:	78 25                	js     c000e6ab <PKn_Version+0x59f>
c000e686:	30 32                	xor    BYTE PTR [edx],dh
c000e688:	78 00                	js     c000e68a <PKn_Version+0x57e>
c000e68a:	28 20                	sub    BYTE PTR [eax],ah
c000e68c:	46                   	inc    esi
c000e68d:	61                   	popa   
c000e68e:	75 6c                	jne    c000e6fc <PKn_Version+0x5f0>
c000e690:	74 20                	je     c000e6b2 <PKn_Version+0x5a6>
c000e692:	61                   	popa   
c000e693:	64 64 72 65          	fs fs jb c000e6fc <PKn_Version+0x5f0>
c000e697:	73 73                	jae    c000e70c <PKn_Version+0x600>
c000e699:	3a 20                	cmp    ah,BYTE PTR [eax]
c000e69b:	25 70 20 29 00       	and    eax,0x292070
c000e6a0:	50                   	push   eax
c000e6a1:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c000e6a3:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c000e6a6:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c000e6ab:	65 6c                	gs ins BYTE PTR es:[edi],dx
c000e6ad:	20 28                	and    BYTE PTR [eax],ch
c000e6af:	50                   	push   eax
c000e6b0:	4b                   	dec    ebx
c000e6b1:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000e6b2:	29 20                	sub    DWORD PTR [eax],esp
c000e6b4:	76 65                	jbe    c000e71b <PKn_Version+0x60f>
c000e6b6:	72 73                	jb     c000e72b <PKn_Version+0x61f>
c000e6b8:	69 6f 6e 20 30 2e 30 	imul   ebp,DWORD PTR [edi+0x6e],0x302e3020
c000e6bf:	2e 30 20             	xor    BYTE PTR cs:[eax],ah
c000e6c2:	74 65                	je     c000e729 <PKn_Version+0x61d>
c000e6c4:	73 74                	jae    c000e73a <PKn_Version+0x62e>
c000e6c6:	00 00                	add    BYTE PTR [eax],al
c000e6c8:	66 72 65             	data16 jb c000e730 <PKn_Version+0x624>
c000e6cb:	65 20 21             	and    BYTE PTR gs:[ecx],ah
c000e6ce:	3d 20 4e 55 4c       	cmp    eax,0x4c554e20
c000e6d3:	4c                   	dec    esp
c000e6d4:	00 6d 65             	add    BYTE PTR [ebp+0x65],ch
c000e6d7:	6d                   	ins    DWORD PTR es:[edi],dx
c000e6d8:	6f                   	outs   dx,DWORD PTR ds:[esi]
c000e6d9:	72 79                	jb     c000e754 <PKn_Version+0x648>
c000e6db:	2f                   	das    
c000e6dc:	6d                   	ins    DWORD PTR es:[edi],dx
c000e6dd:	65 6d                	gs ins DWORD PTR es:[edi],dx
c000e6df:	6f                   	outs   dx,DWORD PTR ds:[esi]
c000e6e0:	72 79                	jb     c000e75b <PKn_Version+0x64f>
c000e6e2:	2e 63 00             	arpl   WORD PTR cs:[eax],ax
c000e6e5:	41                   	inc    ecx
c000e6e6:	72 64                	jb     c000e74c <PKn_Version+0x640>
c000e6e8:	73 3a                	jae    c000e724 <PKn_Version+0x618>
c000e6ea:	0a 00                	or     al,BYTE PTR [eax]
c000e6ec:	20 42 61             	and    BYTE PTR [edx+0x61],al
c000e6ef:	73 65                	jae    c000e756 <PKn_Version+0x64a>
c000e6f1:	3a 09                	cmp    cl,BYTE PTR [ecx]
c000e6f3:	09 30                	or     DWORD PTR [eax],esi
c000e6f5:	78 00                	js     c000e6f7 <PKn_Version+0x5eb>
c000e6f7:	20 0a                	and    BYTE PTR [edx],cl
c000e6f9:	20 4c 65 6e          	and    BYTE PTR [ebp+eiz*2+0x6e],cl
c000e6fd:	67 74 68             	addr16 je c000e768 <PKn_Version+0x65c>
c000e700:	3a 09                	cmp    cl,BYTE PTR [ecx]
c000e702:	30 78 00             	xor    BYTE PTR [eax+0x0],bh
c000e705:	20 0a                	and    BYTE PTR [edx],cl
c000e707:	20 74 79 70          	and    BYTE PTR [ecx+edi*2+0x70],dh
c000e70b:	65 3a 09             	cmp    cl,BYTE PTR gs:[ecx]
c000e70e:	09 00                	or     DWORD PTR [eax],eax
c000e710:	0a 00                	or     al,BYTE PTR [eax]
c000e712:	4e                   	dec    esi
c000e713:	6f                   	outs   dx,DWORD PTR ds:[esi]
c000e714:	20 4d 65             	and    BYTE PTR [ebp+0x65],cl
c000e717:	6d                   	ins    DWORD PTR es:[edi],dx
c000e718:	6f                   	outs   dx,DWORD PTR ds:[esi]
c000e719:	72 79                	jb     c000e794 <PKn_Version+0x688>
c000e71b:	20 61 76             	and    BYTE PTR [ecx+0x76],ah
c000e71e:	61                   	popa   
c000e71f:	69 6c 61 62 6c 65 21 	imul   ebp,DWORD PTR [ecx+eiz*2+0x62],0x21656c
c000e726:	00 
c000e727:	20 4d 65             	and    BYTE PTR [ebp+0x65],cl
c000e72a:	6d                   	ins    DWORD PTR es:[edi],dx
c000e72b:	61                   	popa   
c000e72c:	6c                   	ins    BYTE PTR es:[edi],dx
c000e72d:	6c                   	ins    BYTE PTR es:[edi],dx
c000e72e:	6f                   	outs   dx,DWORD PTR ds:[esi]
c000e72f:	63 3a                	arpl   WORD PTR [edx],di
c000e731:	20 00                	and    BYTE PTR [eax],al
c000e733:	67 65 74 5f          	addr16 gs je c000e796 <PKn_Version+0x68a>
c000e737:	61                   	popa   
c000e738:	5f                   	pop    edi
c000e739:	70 61                	jo     c000e79c <PKn_Version+0x690>
c000e73b:	67 65 3a 20          	cmp    ah,BYTE PTR gs:[bx+si]
c000e73f:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000e740:	6f                   	outs   dx,DWORD PTR ds:[esi]
c000e741:	74 20                	je     c000e763 <PKn_Version+0x657>
c000e743:	61                   	popa   
c000e744:	6c                   	ins    BYTE PTR es:[edi],dx
c000e745:	6c                   	ins    BYTE PTR es:[edi],dx
c000e746:	6f                   	outs   dx,DWORD PTR ds:[esi]
c000e747:	77 20                	ja     c000e769 <PKn_Version+0x65d>
c000e749:	6b 65 72 6e          	imul   esp,DWORD PTR [ebp+0x72],0x6e
c000e74d:	65 6c                	gs ins BYTE PTR es:[edi],dx
c000e74f:	20 61 6c             	and    BYTE PTR [ecx+0x6c],ah
c000e752:	6c                   	ins    BYTE PTR es:[edi],dx
c000e753:	6f                   	outs   dx,DWORD PTR ds:[esi]
c000e754:	63 20                	arpl   WORD PTR [eax],sp
c000e756:	75 73                	jne    c000e7cb <__func__.1133+0x3>
c000e758:	65 72 73             	gs jb  c000e7ce <__func__.1133+0x6>
c000e75b:	70 61                	jo     c000e7be <PKn_Version+0x6b2>
c000e75d:	63 65 20             	arpl   WORD PTR [ebp+0x20],sp
c000e760:	6f                   	outs   dx,DWORD PTR ds:[esi]
c000e761:	72 20                	jb     c000e783 <PKn_Version+0x677>
c000e763:	75 73                	jne    c000e7d8 <__func__.1140+0x4>
c000e765:	65 72 20             	gs jb  c000e788 <PKn_Version+0x67c>
c000e768:	61                   	popa   
c000e769:	6c                   	ins    BYTE PTR es:[edi],dx
c000e76a:	6c                   	ins    BYTE PTR es:[edi],dx
c000e76b:	6f                   	outs   dx,DWORD PTR ds:[esi]
c000e76c:	63 20                	arpl   WORD PTR [eax],sp
c000e76e:	6b 65 72 6e          	imul   esp,DWORD PTR [ebp+0x72],0x6e
c000e772:	65 6c                	gs ins BYTE PTR es:[edi],dx
c000e774:	73 70                	jae    c000e7e6 <__func__.1232+0x6>
c000e776:	61                   	popa   
c000e777:	63 65 20             	arpl   WORD PTR [ebp+0x20],sp
c000e77a:	62 79 20             	bound  edi,QWORD PTR [ecx+0x20]
c000e77d:	67 65 74 5f          	addr16 gs je c000e7e0 <__func__.1232>
c000e781:	61                   	popa   
c000e782:	5f                   	pop    edi
c000e783:	70 61                	jo     c000e7e6 <__func__.1232+0x6>
c000e785:	67 65 28 29          	sub    BYTE PTR gs:[bx+di],ch
c000e789:	00 70 61             	add    BYTE PTR [eax+0x61],dh
c000e78c:	67 65 5f             	addr16 gs pop edi
c000e78f:	70 61                	jo     c000e7f2 <__func__.1232+0x12>
c000e791:	64 64 72 20          	fs fs jb c000e7b5 <PKn_Version+0x6a9>
c000e795:	21 3d 20 4e 55 4c    	and    DWORD PTR ds:0x4c554e20,edi
c000e79b:	4c                   	dec    esp
c000e79c:	00 00                	add    BYTE PTR [eax],al
c000e79e:	00 00                	add    BYTE PTR [eax],al
c000e7a0:	50                   	push   eax
c000e7a1:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c000e7a3:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c000e7a6:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c000e7ab:	65 6c                	gs ins BYTE PTR es:[edi],dx
c000e7ad:	20 28                	and    BYTE PTR [eax],ch
c000e7af:	50                   	push   eax
c000e7b0:	4b                   	dec    ebx
c000e7b1:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000e7b2:	29 20                	sub    DWORD PTR [eax],esp
c000e7b4:	76 65                	jbe    c000e81b <__func__.1232+0x3b>
c000e7b6:	72 73                	jb     c000e82b <__func__.1232+0x4b>
c000e7b8:	69 6f 6e 20 30 2e 30 	imul   ebp,DWORD PTR [edi+0x6e],0x302e3020
c000e7bf:	2e 30 20             	xor    BYTE PTR cs:[eax],ah
c000e7c2:	74 65                	je     c000e829 <__func__.1232+0x49>
c000e7c4:	73 74                	jae    c000e83a <__func__.1232+0x5a>
	...

c000e7c8 <__func__.1133>:
c000e7c8:	69 6e 69 74 5f 6d 65 	imul   ebp,DWORD PTR [esi+0x69],0x656d5f74
c000e7cf:	6d                   	ins    DWORD PTR es:[edi],dx
c000e7d0:	6f                   	outs   dx,DWORD PTR ds:[esi]
c000e7d1:	72 79                	jb     c000e84c <__func__.1232+0x6c>
	...

c000e7d4 <__func__.1140>:
c000e7d4:	69 6e 69 74 5f 6d 65 	imul   ebp,DWORD PTR [esi+0x69],0x656d5f74
c000e7db:	6d                   	ins    DWORD PTR es:[edi],dx
c000e7dc:	6d                   	ins    DWORD PTR es:[edi],dx
c000e7dd:	61                   	popa   
c000e7de:	6e                   	outs   dx,BYTE PTR ds:[esi]
	...

c000e7e0 <__func__.1232>:
c000e7e0:	67 65 74 5f          	addr16 gs je c000e843 <__func__.1232+0x63>
c000e7e4:	61                   	popa   
c000e7e5:	5f                   	pop    edi
c000e7e6:	70 61                	jo     c000e849 <__func__.1232+0x69>
c000e7e8:	67 65 00 00          	add    BYTE PTR gs:[bx+si],al
c000e7ec:	70 73                	jo     c000e861 <__func__.1232+0x81>
c000e7ee:	65 6d                	gs ins DWORD PTR es:[edi],dx
c000e7f0:	61                   	popa   
c000e7f1:	2d 3e 76 61 6c       	sub    eax,0x6c61763e
c000e7f6:	75 65                	jne    c000e85d <__func__.1232+0x7d>
c000e7f8:	20 3d 3d 20 76 61    	and    BYTE PTR ds:0x6176203d,bh
c000e7fe:	6c                   	ins    BYTE PTR es:[edi],dx
c000e7ff:	75 65                	jne    c000e866 <__func__.1232+0x86>
c000e801:	00 74 68 72          	add    BYTE PTR [eax+ebp*2+0x72],dh
c000e805:	65 61                	gs popa 
c000e807:	64 2f                	fs das 
c000e809:	73 79                	jae    c000e884 <__func__.1232+0xa4>
c000e80b:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000e80c:	63 2e                	arpl   WORD PTR [esi],bp
c000e80e:	63 00                	arpl   WORD PTR [eax],ax
c000e810:	21 28                	and    DWORD PTR [eax],ebp
c000e812:	6c                   	ins    BYTE PTR es:[edi],dx
c000e813:	69 73 74 5f 66 69 6e 	imul   esi,DWORD PTR [ebx+0x74],0x6e69665f
c000e81a:	64 28 26             	sub    BYTE PTR fs:[esi],ah
c000e81d:	28 70 73             	sub    BYTE PTR [eax+0x73],dh
c000e820:	65 6d                	gs ins DWORD PTR es:[edi],dx
c000e822:	61                   	popa   
c000e823:	2d 3e 77 61 69       	sub    eax,0x6961773e
c000e828:	74 65                	je     c000e88f <__func__.1232+0xaf>
c000e82a:	72 73                	jb     c000e89f <__func__.1232+0xbf>
c000e82c:	29 2c 26             	sub    DWORD PTR [esi+eiz*1],ebp
c000e82f:	28 72 75             	sub    BYTE PTR [edx+0x75],dh
c000e832:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000e833:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000e834:	69 6e 67 5f 74 68 72 	imul   ebp,DWORD PTR [esi+0x67],0x7268745f
c000e83b:	65 61                	gs popa 
c000e83d:	64 28 29             	sub    BYTE PTR fs:[ecx],ch
c000e840:	2d 3e 67 65 6e       	sub    eax,0x6e65673e
c000e845:	65 72 61             	gs jb  c000e8a9 <__func__.1232+0xc9>
c000e848:	6c                   	ins    BYTE PTR es:[edi],dx
c000e849:	5f                   	pop    edi
c000e84a:	74 61                	je     c000e8ad <__func__.1232+0xcd>
c000e84c:	67 29 29             	sub    DWORD PTR [bx+di],ebp
c000e84f:	29 00                	sub    DWORD PTR [eax],eax
c000e851:	73 65                	jae    c000e8b8 <__func__.1232+0xd8>
c000e853:	6d                   	ins    DWORD PTR es:[edi],dx
c000e854:	61                   	popa   
c000e855:	20 64 6f 77          	and    BYTE PTR [edi+ebp*2+0x77],ah
c000e859:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000e85a:	3a 74 68 72          	cmp    dh,BYTE PTR [eax+ebp*2+0x72]
c000e85e:	65 61                	gs popa 
c000e860:	64 20 62 6c          	and    BYTE PTR fs:[edx+0x6c],ah
c000e864:	6f                   	outs   dx,DWORD PTR ds:[esi]
c000e865:	63 6b 65             	arpl   WORD PTR [ebx+0x65],bp
c000e868:	64 20 68 61          	and    BYTE PTR fs:[eax+0x61],ch
c000e86c:	73 20                	jae    c000e88e <__func__.1232+0xae>
c000e86e:	62 65 65             	bound  esp,QWORD PTR [ebp+0x65]
c000e871:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000e872:	20 69 6e             	and    BYTE PTR [ecx+0x6e],ch
c000e875:	20 77 61             	and    BYTE PTR [edi+0x61],dh
c000e878:	69 74 65 72 73 20 6c 	imul   esi,DWORD PTR [ebp+eiz*2+0x72],0x696c2073
c000e87f:	69 
c000e880:	73 74                	jae    c000e8f6 <__func__.1232+0x116>
c000e882:	21 0a                	and    DWORD PTR [edx],ecx
c000e884:	00 70 73             	add    BYTE PTR [eax+0x73],dh
c000e887:	65 6d                	gs ins DWORD PTR es:[edi],dx
c000e889:	61                   	popa   
c000e88a:	2d 3e 76 61 6c       	sub    eax,0x6c61763e
c000e88f:	75 65                	jne    c000e8f6 <__func__.1232+0x116>
c000e891:	20 3d 3d 20 30 00    	and    BYTE PTR ds:0x30203d,bh
c000e897:	70 73                	jo     c000e90c <__func__.1232+0x12c>
c000e899:	65 6d                	gs ins DWORD PTR es:[edi],dx
c000e89b:	61                   	popa   
c000e89c:	2d 3e 76 61 6c       	sub    eax,0x6c61763e
c000e8a1:	75 65                	jne    c000e908 <__func__.1232+0x128>
c000e8a3:	20 3d 3d 20 31 00    	and    BYTE PTR ds:0x31203d,bh
c000e8a9:	70 6c                	jo     c000e917 <__func__.1232+0x137>
c000e8ab:	6f                   	outs   dx,DWORD PTR ds:[esi]
c000e8ac:	63 6b 2d             	arpl   WORD PTR [ebx+0x2d],bp
c000e8af:	3e 68 6f 6c 64 65    	ds push 0x65646c6f
c000e8b5:	72 5f                	jb     c000e916 <__func__.1232+0x136>
c000e8b7:	72 65                	jb     c000e91e <__func__.1232+0x13e>
c000e8b9:	70 65                	jo     c000e920 <__func__.1232+0x140>
c000e8bb:	61                   	popa   
c000e8bc:	74 5f                	je     c000e91d <__func__.1232+0x13d>
c000e8be:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000e8bf:	72 20                	jb     c000e8e1 <__func__.1232+0x101>
c000e8c1:	3d 3d 20 30 00       	cmp    eax,0x30203d
c000e8c6:	70 6c                	jo     c000e934 <__func__.1054+0x4>
c000e8c8:	6f                   	outs   dx,DWORD PTR ds:[esi]
c000e8c9:	63 6b 2d             	arpl   WORD PTR [ebx+0x2d],bp
c000e8cc:	3e 68 6f 6c 64 65    	ds push 0x65646c6f
c000e8d2:	72 20                	jb     c000e8f4 <__func__.1232+0x114>
c000e8d4:	3d 3d 20 72 75       	cmp    eax,0x7572203d
c000e8d9:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000e8da:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000e8db:	69 6e 67 5f 74 68 72 	imul   ebp,DWORD PTR [esi+0x67],0x7268745f
c000e8e2:	65 61                	gs popa 
c000e8e4:	64 28 29             	sub    BYTE PTR fs:[ecx],ch
c000e8e7:	00 70 6c             	add    BYTE PTR [eax+0x6c],dh
c000e8ea:	6f                   	outs   dx,DWORD PTR ds:[esi]
c000e8eb:	63 6b 2d             	arpl   WORD PTR [ebx+0x2d],bp
c000e8ee:	3e 68 6f 6c 64 65    	ds push 0x65646c6f
c000e8f4:	72 5f                	jb     c000e955 <__func__.1075+0x5>
c000e8f6:	72 65                	jb     c000e95d <__func__.1075+0xd>
c000e8f8:	70 65                	jo     c000e95f <__func__.1075+0xf>
c000e8fa:	61                   	popa   
c000e8fb:	74 5f                	je     c000e95c <__func__.1075+0xc>
c000e8fd:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000e8fe:	72 20                	jb     c000e920 <__func__.1232+0x140>
c000e900:	3d 3d 20 31 00       	cmp    eax,0x31203d
c000e905:	00 00                	add    BYTE PTR [eax],al
c000e907:	00 50 65             	add    BYTE PTR [eax+0x65],dl
c000e90a:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000e90b:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c000e90e:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c000e913:	65 6c                	gs ins BYTE PTR es:[edi],dx
c000e915:	20 28                	and    BYTE PTR [eax],ch
c000e917:	50                   	push   eax
c000e918:	4b                   	dec    ebx
c000e919:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000e91a:	29 20                	sub    DWORD PTR [eax],esp
c000e91c:	76 65                	jbe    c000e983 <__func__.1079+0x23>
c000e91e:	72 73                	jb     c000e993 <__func__.1079+0x33>
c000e920:	69 6f 6e 20 30 2e 30 	imul   ebp,DWORD PTR [edi+0x6e],0x302e3020
c000e927:	2e 30 20             	xor    BYTE PTR cs:[eax],ah
c000e92a:	74 65                	je     c000e991 <__func__.1079+0x31>
c000e92c:	73 74                	jae    c000e9a2 <__func__.1079+0x42>
	...

c000e930 <__func__.1054>:
c000e930:	73 65                	jae    c000e997 <__func__.1079+0x37>
c000e932:	6d                   	ins    DWORD PTR es:[edi],dx
c000e933:	61                   	popa   
c000e934:	5f                   	pop    edi
c000e935:	69 6e 69 74 00 00 00 	imul   ebp,DWORD PTR [esi+0x69],0x74

c000e93c <__func__.1062>:
c000e93c:	73 65                	jae    c000e9a3 <__func__.1079+0x43>
c000e93e:	6d                   	ins    DWORD PTR es:[edi],dx
c000e93f:	61                   	popa   
c000e940:	5f                   	pop    edi
c000e941:	64 6f                	outs   dx,DWORD PTR fs:[esi]
c000e943:	77 6e                	ja     c000e9b3 <__func__.1079+0x53>
c000e945:	00 00                	add    BYTE PTR [eax],al
	...

c000e948 <__func__.1070>:
c000e948:	73 65                	jae    c000e9af <__func__.1079+0x4f>
c000e94a:	6d                   	ins    DWORD PTR es:[edi],dx
c000e94b:	61                   	popa   
c000e94c:	5f                   	pop    edi
c000e94d:	75 70                	jne    c000e9bf <__func__.1079+0x5f>
	...

c000e950 <__func__.1075>:
c000e950:	6c                   	ins    BYTE PTR es:[edi],dx
c000e951:	6f                   	outs   dx,DWORD PTR ds:[esi]
c000e952:	63 6b 5f             	arpl   WORD PTR [ebx+0x5f],bp
c000e955:	61                   	popa   
c000e956:	63 71 75             	arpl   WORD PTR [ecx+0x75],si
c000e959:	69 72 65 00 00 00 00 	imul   esi,DWORD PTR [edx+0x65],0x0

c000e960 <__func__.1079>:
c000e960:	6c                   	ins    BYTE PTR es:[edi],dx
c000e961:	6f                   	outs   dx,DWORD PTR ds:[esi]
c000e962:	63 6b 5f             	arpl   WORD PTR [ebx+0x5f],bp
c000e965:	72 65                	jb     c000e9cc <__func__.1079+0x6c>
c000e967:	6c                   	ins    BYTE PTR es:[edi],dx
c000e968:	65 61                	gs popa 
c000e96a:	73 65                	jae    c000e9d1 <__func__.1079+0x71>
c000e96c:	00 00                	add    BYTE PTR [eax],al
c000e96e:	00 00                	add    BYTE PTR [eax],al
c000e970:	4d                   	dec    ebp
c000e971:	61                   	popa   
c000e972:	69 6e 20 74 68 72 65 	imul   ebp,DWORD PTR [esi+0x20],0x65726874
c000e979:	61                   	popa   
c000e97a:	64 00 21             	add    BYTE PTR fs:[ecx],ah
c000e97d:	6c                   	ins    BYTE PTR es:[edi],dx
c000e97e:	69 73 74 5f 66 69 6e 	imul   esi,DWORD PTR [ebx+0x74],0x6e69665f
c000e985:	64 28 26             	sub    BYTE PTR fs:[esi],ah
c000e988:	72 65                	jb     c000e9ef <__func__.1079+0x8f>
c000e98a:	61                   	popa   
c000e98b:	64 79 5f             	fs jns c000e9ed <__func__.1079+0x8d>
c000e98e:	6c                   	ins    BYTE PTR es:[edi],dx
c000e98f:	69 73 74 2c 26 28 74 	imul   esi,DWORD PTR [ebx+0x74],0x7428262c
c000e996:	68 72 65 61 64       	push   0x64616572
c000e99b:	2d 3e 67 65 6e       	sub    eax,0x6e65673e
c000e9a0:	65 72 61             	gs jb  c000ea04 <__func__.1079+0xa4>
c000e9a3:	6c                   	ins    BYTE PTR es:[edi],dx
c000e9a4:	5f                   	pop    edi
c000e9a5:	74 61                	je     c000ea08 <__func__.1079+0xa8>
c000e9a7:	67 29 29             	sub    DWORD PTR [bx+di],ebp
c000e9aa:	00 74 68 72          	add    BYTE PTR [eax+ebp*2+0x72],dh
c000e9ae:	65 61                	gs popa 
c000e9b0:	64 2f                	fs das 
c000e9b2:	74 68                	je     c000ea1c <__func__.1079+0xbc>
c000e9b4:	72 65                	jb     c000ea1b <__func__.1079+0xbb>
c000e9b6:	61                   	popa   
c000e9b7:	64 2e 63 00          	fs arpl WORD PTR cs:[eax],ax
c000e9bb:	21 6c 69 73          	and    DWORD PTR [ecx+ebp*2+0x73],ebp
c000e9bf:	74 5f                	je     c000ea20 <__func__.1079+0xc0>
c000e9c1:	66 69 6e 64 28 26    	imul   bp,WORD PTR [esi+0x64],0x2628
c000e9c7:	61                   	popa   
c000e9c8:	6c                   	ins    BYTE PTR es:[edi],dx
c000e9c9:	6c                   	ins    BYTE PTR es:[edi],dx
c000e9ca:	5f                   	pop    edi
c000e9cb:	6c                   	ins    BYTE PTR es:[edi],dx
c000e9cc:	69 73 74 2c 26 28 74 	imul   esi,DWORD PTR [ebx+0x74],0x7428262c
c000e9d3:	68 72 65 61 64       	push   0x64616572
c000e9d8:	2d 3e 61 6c 6c       	sub    eax,0x6c6c613e
c000e9dd:	5f                   	pop    edi
c000e9de:	74 61                	je     c000ea41 <__func__.1079+0xe1>
c000e9e0:	67 29 29             	sub    DWORD PTR [bx+di],ebp
c000e9e3:	00 63 75             	add    BYTE PTR [ebx+0x75],ah
c000e9e6:	72 5f                	jb     c000ea47 <__func__.1079+0xe7>
c000e9e8:	74 68                	je     c000ea52 <__func__.1079+0xf2>
c000e9ea:	72 65                	jb     c000ea51 <__func__.1079+0xf1>
c000e9ec:	61                   	popa   
c000e9ed:	64 2d 3e 73 74 61    	fs sub eax,0x6174733e
c000e9f3:	63 6b 5f             	arpl   WORD PTR [ebx+0x5f],bp
c000e9f6:	6d                   	ins    DWORD PTR es:[edi],dx
c000e9f7:	61                   	popa   
c000e9f8:	67 69 63 20 3d 3d 20 	imul   esp,DWORD PTR [bp+di+0x20],0x30203d3d
c000e9ff:	30 
c000ea00:	78 31                	js     c000ea33 <__func__.1079+0xd3>
c000ea02:	32 33                	xor    dh,BYTE PTR [ebx]
c000ea04:	34 35                	xor    al,0x35
c000ea06:	36 37                	ss aaa 
c000ea08:	38 00                	cmp    BYTE PTR [eax],al
c000ea0a:	21 28                	and    DWORD PTR [eax],ebp
c000ea0c:	6c                   	ins    BYTE PTR es:[edi],dx
c000ea0d:	69 73 74 5f 66 69 6e 	imul   esi,DWORD PTR [ebx+0x74],0x6e69665f
c000ea14:	64 28 26             	sub    BYTE PTR fs:[esi],ah
c000ea17:	72 65                	jb     c000ea7e <__func__.1079+0x11e>
c000ea19:	61                   	popa   
c000ea1a:	64 79 5f             	fs jns c000ea7c <__func__.1079+0x11c>
c000ea1d:	6c                   	ins    BYTE PTR es:[edi],dx
c000ea1e:	69 73 74 2c 26 28 63 	imul   esi,DWORD PTR [ebx+0x74],0x6328262c
c000ea25:	75 72                	jne    c000ea99 <__func__.1079+0x139>
c000ea27:	5f                   	pop    edi
c000ea28:	74 68                	je     c000ea92 <__func__.1079+0x132>
c000ea2a:	72 65                	jb     c000ea91 <__func__.1079+0x131>
c000ea2c:	61                   	popa   
c000ea2d:	64 2d 3e 67 65 6e    	fs sub eax,0x6e65673e
c000ea33:	65 72 61             	gs jb  c000ea97 <__func__.1079+0x137>
c000ea36:	6c                   	ins    BYTE PTR es:[edi],dx
c000ea37:	5f                   	pop    edi
c000ea38:	74 61                	je     c000ea9b <__func__.1079+0x13b>
c000ea3a:	67 29 29             	sub    DWORD PTR [bx+di],ebp
c000ea3d:	29 00                	sub    DWORD PTR [eax],eax
c000ea3f:	21 28                	and    DWORD PTR [eax],ebp
c000ea41:	6c                   	ins    BYTE PTR es:[edi],dx
c000ea42:	69 73 74 5f 65 6d 70 	imul   esi,DWORD PTR [ebx+0x74],0x706d655f
c000ea49:	74 79                	je     c000eac4 <__func__.1079+0x164>
c000ea4b:	28 26                	sub    BYTE PTR [esi],ah
c000ea4d:	72 65                	jb     c000eab4 <__func__.1079+0x154>
c000ea4f:	61                   	popa   
c000ea50:	64 79 5f             	fs jns c000eab2 <__func__.1079+0x152>
c000ea53:	6c                   	ins    BYTE PTR es:[edi],dx
c000ea54:	69 73 74 29 29 00 72 	imul   esi,DWORD PTR [ebx+0x74],0x72002929
c000ea5b:	65 61                	gs popa 
c000ea5d:	64 79 5f             	fs jns c000eabf <__func__.1079+0x15f>
c000ea60:	6c                   	ins    BYTE PTR es:[edi],dx
c000ea61:	69 73 74 2e 74 61 69 	imul   esi,DWORD PTR [ebx+0x74],0x6961742e
c000ea68:	6c                   	ins    BYTE PTR es:[edi],dx
c000ea69:	2e 70 72             	cs jo  c000eade <__func__.1079+0x17e>
c000ea6c:	65 76 20             	gs jbe c000ea8f <__func__.1079+0x12f>
c000ea6f:	21 3d 20 26 72 65    	and    DWORD PTR ds:0x65722620,edi
c000ea75:	61                   	popa   
c000ea76:	64 79 5f             	fs jns c000ead8 <__func__.1079+0x178>
c000ea79:	6c                   	ins    BYTE PTR es:[edi],dx
c000ea7a:	69 73 74 2e 68 65 61 	imul   esi,DWORD PTR [ebx+0x74],0x6165682e
c000ea81:	64 00 73 74          	add    BYTE PTR fs:[ebx+0x74],dh
c000ea85:	61                   	popa   
c000ea86:	74 75                	je     c000eafd <__func__.1079+0x19d>
c000ea88:	73 20                	jae    c000eaaa <__func__.1079+0x14a>
c000ea8a:	21 3d 20 54 41 53    	and    DWORD PTR ds:0x53415420,edi
c000ea90:	4b                   	dec    ebx
c000ea91:	5f                   	pop    edi
c000ea92:	52                   	push   edx
c000ea93:	55                   	push   ebp
c000ea94:	4e                   	dec    esi
c000ea95:	4e                   	dec    esi
c000ea96:	49                   	dec    ecx
c000ea97:	4e                   	dec    esi
c000ea98:	47                   	inc    edi
c000ea99:	20 26                	and    BYTE PTR [esi],ah
c000ea9b:	26 20 73 74          	and    BYTE PTR es:[ebx+0x74],dh
c000ea9f:	61                   	popa   
c000eaa0:	74 75                	je     c000eb17 <__func__.1079+0x1b7>
c000eaa2:	73 20                	jae    c000eac4 <__func__.1079+0x164>
c000eaa4:	21 3d 20 54 41 53    	and    DWORD PTR ds:0x53415420,edi
c000eaaa:	4b                   	dec    ebx
c000eaab:	5f                   	pop    edi
c000eaac:	52                   	push   edx
c000eaad:	45                   	inc    ebp
c000eaae:	41                   	inc    ecx
c000eaaf:	44                   	inc    esp
c000eab0:	59                   	pop    ecx
c000eab1:	00 21                	add    BYTE PTR [ecx],ah
c000eab3:	6c                   	ins    BYTE PTR es:[edi],dx
c000eab4:	69 73 74 5f 66 69 6e 	imul   esi,DWORD PTR [ebx+0x74],0x6e69665f
c000eabb:	64 28 26             	sub    BYTE PTR fs:[esi],ah
c000eabe:	72 65                	jb     c000eb25 <__func__.1079+0x1c5>
c000eac0:	61                   	popa   
c000eac1:	64 79 5f             	fs jns c000eb23 <__func__.1079+0x1c3>
c000eac4:	6c                   	ins    BYTE PTR es:[edi],dx
c000eac5:	69 73 74 2c 26 28 70 	imul   esi,DWORD PTR [ebx+0x74],0x7028262c
c000eacc:	74 68                	je     c000eb36 <__func__.1079+0x1d6>
c000eace:	72 65                	jb     c000eb35 <__func__.1079+0x1d5>
c000ead0:	61                   	popa   
c000ead1:	64 2d 3e 67 65 6e    	fs sub eax,0x6e65673e
c000ead7:	65 72 61             	gs jb  c000eb3b <__func__.1243+0x3>
c000eada:	6c                   	ins    BYTE PTR es:[edi],dx
c000eadb:	5f                   	pop    edi
c000eadc:	74 61                	je     c000eb3f <__func__.1243+0x7>
c000eade:	67 29 29             	sub    DWORD PTR [bx+di],ebp
c000eae1:	00 74 68 72          	add    BYTE PTR [eax+ebp*2+0x72],dh
c000eae5:	65 61                	gs popa 
c000eae7:	64 20 75 6e          	and    BYTE PTR fs:[ebp+0x6e],dh
c000eaeb:	62 6c 6f 63          	bound  ebp,QWORD PTR [edi+ebp*2+0x63]
c000eaef:	6b 3a 20             	imul   edi,DWORD PTR [edx],0x20
c000eaf2:	62 6c 6f 63          	bound  ebp,QWORD PTR [edi+ebp*2+0x63]
c000eaf6:	6b 65 64 20          	imul   esp,DWORD PTR [ebp+0x64],0x20
c000eafa:	74 68                	je     c000eb64 <__func__.1262>
c000eafc:	72 65                	jb     c000eb63 <__func__.1255+0xf>
c000eafe:	61                   	popa   
c000eaff:	64 20 69 6e          	and    BYTE PTR fs:[ecx+0x6e],ch
c000eb03:	20 72 65             	and    BYTE PTR [edx+0x65],dh
c000eb06:	61                   	popa   
c000eb07:	64 79 20             	fs jns c000eb2a <__func__.1079+0x1ca>
c000eb0a:	6c                   	ins    BYTE PTR es:[edi],dx
c000eb0b:	69 73 74 00 00 50 65 	imul   esi,DWORD PTR [ebx+0x74],0x65500000
c000eb12:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000eb13:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c000eb16:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c000eb1b:	65 6c                	gs ins BYTE PTR es:[edi],dx
c000eb1d:	20 28                	and    BYTE PTR [eax],ch
c000eb1f:	50                   	push   eax
c000eb20:	4b                   	dec    ebx
c000eb21:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000eb22:	29 20                	sub    DWORD PTR [eax],esp
c000eb24:	76 65                	jbe    c000eb8b <__func__.1262+0x27>
c000eb26:	72 73                	jb     c000eb9b <__func__.1262+0x37>
c000eb28:	69 6f 6e 20 30 2e 30 	imul   ebp,DWORD PTR [edi+0x6e],0x302e3020
c000eb2f:	2e 30 20             	xor    BYTE PTR cs:[eax],ah
c000eb32:	74 65                	je     c000eb99 <__func__.1262+0x35>
c000eb34:	73 74                	jae    c000ebaa <__func__.1262+0x46>
	...

c000eb38 <__func__.1243>:
c000eb38:	74 68                	je     c000eba2 <__func__.1262+0x3e>
c000eb3a:	72 65                	jb     c000eba1 <__func__.1262+0x3d>
c000eb3c:	61                   	popa   
c000eb3d:	64 5f                	fs pop edi
c000eb3f:	73 74                	jae    c000ebb5 <__func__.1262+0x51>
c000eb41:	61                   	popa   
c000eb42:	72 74                	jb     c000ebb8 <__func__.1262+0x54>
c000eb44:	00 00                	add    BYTE PTR [eax],al
	...

c000eb48 <__func__.1250>:
c000eb48:	73 63                	jae    c000ebad <__func__.1262+0x49>
c000eb4a:	68 65 64 75 6c       	push   0x6c756465
c000eb4f:	65 00 00             	add    BYTE PTR gs:[eax],al
	...

c000eb54 <__func__.1255>:
c000eb54:	74 68                	je     c000ebbe <__func__.1262+0x5a>
c000eb56:	72 65                	jb     c000ebbd <__func__.1262+0x59>
c000eb58:	61                   	popa   
c000eb59:	64 5f                	fs pop edi
c000eb5b:	62 6c 6f 63          	bound  ebp,QWORD PTR [edi+ebp*2+0x63]
c000eb5f:	6b 00 00             	imul   eax,DWORD PTR [eax],0x0
	...

c000eb64 <__func__.1262>:
c000eb64:	74 68                	je     c000ebce <__func__.1262+0x6a>
c000eb66:	72 65                	jb     c000ebcd <__func__.1262+0x69>
c000eb68:	61                   	popa   
c000eb69:	64 5f                	fs pop edi
c000eb6b:	75 6e                	jne    c000ebdb <__func__.1262+0x77>
c000eb6d:	62 6c 6f 63          	bound  ebp,QWORD PTR [edi+ebp*2+0x63]
c000eb71:	6b 00 00             	imul   eax,DWORD PTR [eax],0x0
c000eb74:	50                   	push   eax
c000eb75:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c000eb77:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c000eb7a:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c000eb7f:	65 6c                	gs ins BYTE PTR es:[edi],dx
c000eb81:	20 28                	and    BYTE PTR [eax],ch
c000eb83:	50                   	push   eax
c000eb84:	4b                   	dec    ebx
c000eb85:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000eb86:	29 20                	sub    DWORD PTR [eax],esp
c000eb88:	76 65                	jbe    c000ebef <__func__.1262+0x8b>
c000eb8a:	72 73                	jb     c000ebff <__func__.1262+0x9b>
c000eb8c:	69 6f 6e 20 30 2e 30 	imul   ebp,DWORD PTR [edi+0x6e],0x302e3020
c000eb93:	2e 30 20             	xor    BYTE PTR cs:[eax],ah
c000eb96:	74 65                	je     c000ebfd <__func__.1262+0x99>
c000eb98:	73 74                	jae    c000ec0e <__func__.1262+0xaa>
c000eb9a:	00 00                	add    BYTE PTR [eax],al
c000eb9c:	70 74                	jo     c000ec12 <__func__.1262+0xae>
c000eb9e:	68 72 65 61 64       	push   0x64616572
c000eba3:	20 21                	and    BYTE PTR [ecx],ah
c000eba5:	3d 20 4e 55 4c       	cmp    eax,0x4c554e20
c000ebaa:	4c                   	dec    esp
c000ebab:	00 75 73             	add    BYTE PTR [ebp+0x73],dh
c000ebae:	65 72 70             	gs jb  c000ec21 <__func__.1262+0xbd>
c000ebb1:	72 6f                	jb     c000ec22 <__func__.1262+0xbe>
c000ebb3:	67 2f                	addr16 das 
c000ebb5:	70 72                	jo     c000ec29 <__func__.1262+0xc5>
c000ebb7:	6f                   	outs   dx,DWORD PTR ds:[esi]
c000ebb8:	63 65 73             	arpl   WORD PTR [ebp+0x73],sp
c000ebbb:	73 2e                	jae    c000ebeb <__func__.1262+0x87>
c000ebbd:	63 00                	arpl   WORD PTR [eax],ax
c000ebbf:	63 72 65             	arpl   WORD PTR [edx+0x65],si
c000ebc2:	61                   	popa   
c000ebc3:	74 65                	je     c000ec2a <__func__.1262+0xc6>
c000ebc5:	5f                   	pop    edi
c000ebc6:	70 61                	jo     c000ec29 <__func__.1262+0xc5>
c000ebc8:	67 65 5f             	addr16 gs pop edi
c000ebcb:	64 69 72 3a 20 67 65 	imul   esi,DWORD PTR fs:[edx+0x3a],0x74656720
c000ebd2:	74 
c000ebd3:	20 6b 65             	and    BYTE PTR [ebx+0x65],ch
c000ebd6:	72 6e                	jb     c000ec46 <__func__.1262+0xe2>
c000ebd8:	65 6c                	gs ins BYTE PTR es:[edi],dx
c000ebda:	20 70 61             	and    BYTE PTR [eax+0x61],dh
c000ebdd:	67 65 20 66 61       	and    BYTE PTR gs:[bp+0x61],ah
c000ebe2:	69 6c 65 64 21 0a 00 	imul   ebp,DWORD PTR [ebp+eiz*2+0x64],0x70000a21
c000ebe9:	70 
c000ebea:	72 6f                	jb     c000ec5b <__func__.1262+0xf7>
c000ebec:	67 20 50 43          	and    BYTE PTR [bx+si+0x43],dl
c000ebf0:	42                   	inc    edx
c000ebf1:	3a 20                	cmp    ah,BYTE PTR [eax]
c000ebf3:	00 20                	add    BYTE PTR [eax],ah
c000ebf5:	70 72                	jo     c000ec69 <__func__.1262+0x105>
c000ebf7:	6f                   	outs   dx,DWORD PTR ds:[esi]
c000ebf8:	67 20 70 67          	and    BYTE PTR [bx+si+0x67],dh
c000ebfc:	64 69 72 3a 20 00 21 	imul   esi,DWORD PTR fs:[edx+0x3a],0x28210020
c000ec03:	28 
c000ec04:	6c                   	ins    BYTE PTR es:[edi],dx
c000ec05:	69 73 74 5f 66 69 6e 	imul   esi,DWORD PTR [ebx+0x74],0x6e69665f
c000ec0c:	64 28 26             	sub    BYTE PTR fs:[esi],ah
c000ec0f:	61                   	popa   
c000ec10:	6c                   	ins    BYTE PTR es:[edi],dx
c000ec11:	6c                   	ins    BYTE PTR es:[edi],dx
c000ec12:	5f                   	pop    edi
c000ec13:	6c                   	ins    BYTE PTR es:[edi],dx
c000ec14:	69 73 74 2c 26 28 70 	imul   esi,DWORD PTR [ebx+0x74],0x7028262c
c000ec1b:	74 68                	je     c000ec85 <__func__.1262+0x121>
c000ec1d:	72 65                	jb     c000ec84 <__func__.1262+0x120>
c000ec1f:	61                   	popa   
c000ec20:	64 2d 3e 61 6c 6c    	fs sub eax,0x6c6c613e
c000ec26:	5f                   	pop    edi
c000ec27:	74 61                	je     c000ec8a <__func__.1242+0x2>
c000ec29:	67 29 29             	sub    DWORD PTR [bx+di],ebp
c000ec2c:	29 00                	sub    DWORD PTR [eax],eax
c000ec2e:	21 28                	and    DWORD PTR [eax],ebp
c000ec30:	6c                   	ins    BYTE PTR es:[edi],dx
c000ec31:	69 73 74 5f 66 69 6e 	imul   esi,DWORD PTR [ebx+0x74],0x6e69665f
c000ec38:	64 28 26             	sub    BYTE PTR fs:[esi],ah
c000ec3b:	72 65                	jb     c000eca2 <__func__.1257+0x6>
c000ec3d:	61                   	popa   
c000ec3e:	64 79 5f             	fs jns c000eca0 <__func__.1257+0x4>
c000ec41:	6c                   	ins    BYTE PTR es:[edi],dx
c000ec42:	69 73 74 2c 26 28 70 	imul   esi,DWORD PTR [ebx+0x74],0x7028262c
c000ec49:	74 68                	je     c000ecb3 <__func__.1257+0x17>
c000ec4b:	72 65                	jb     c000ecb2 <__func__.1257+0x16>
c000ec4d:	61                   	popa   
c000ec4e:	64 2d 3e 67 65 6e    	fs sub eax,0x6e65673e
c000ec54:	65 72 61             	gs jb  c000ecb8 <__func__.1257+0x1c>
c000ec57:	6c                   	ins    BYTE PTR es:[edi],dx
c000ec58:	5f                   	pop    edi
c000ec59:	74 61                	je     c000ecbc <__func__.1257+0x20>
c000ec5b:	67 29 29             	sub    DWORD PTR [bx+di],ebp
c000ec5e:	29 00                	sub    DWORD PTR [eax],eax
c000ec60:	50                   	push   eax
c000ec61:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c000ec63:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c000ec66:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c000ec6b:	65 6c                	gs ins BYTE PTR es:[edi],dx
c000ec6d:	20 28                	and    BYTE PTR [eax],ch
c000ec6f:	50                   	push   eax
c000ec70:	4b                   	dec    ebx
c000ec71:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000ec72:	29 20                	sub    DWORD PTR [eax],esp
c000ec74:	76 65                	jbe    c000ecdb <__func__.1257+0x3f>
c000ec76:	72 73                	jb     c000eceb <__func__.1257+0x4f>
c000ec78:	69 6f 6e 20 30 2e 30 	imul   ebp,DWORD PTR [edi+0x6e],0x302e3020
c000ec7f:	2e 30 20             	xor    BYTE PTR cs:[eax],ah
c000ec82:	74 65                	je     c000ece9 <__func__.1257+0x4d>
c000ec84:	73 74                	jae    c000ecfa <__func__.1257+0x5e>
	...

c000ec88 <__func__.1242>:
c000ec88:	70 72                	jo     c000ecfc <__func__.1257+0x60>
c000ec8a:	6f                   	outs   dx,DWORD PTR ds:[esi]
c000ec8b:	63 65 73             	arpl   WORD PTR [ebp+0x73],sp
c000ec8e:	73 5f                	jae    c000ecef <__func__.1257+0x53>
c000ec90:	61                   	popa   
c000ec91:	63 74 69 76          	arpl   WORD PTR [ecx+ebp*2+0x76],si
c000ec95:	61                   	popa   
c000ec96:	74 65                	je     c000ecfd <__func__.1257+0x61>
c000ec98:	00 00                	add    BYTE PTR [eax],al
	...

c000ec9c <__func__.1257>:
c000ec9c:	70 72                	jo     c000ed10 <__func__.1257+0x74>
c000ec9e:	6f                   	outs   dx,DWORD PTR ds:[esi]
c000ec9f:	63 65 73             	arpl   WORD PTR [ebp+0x73],sp
c000eca2:	73 5f                	jae    c000ed03 <__func__.1257+0x67>
c000eca4:	65 78 65             	gs js  c000ed0c <__func__.1257+0x70>
c000eca7:	63 75 74             	arpl   WORD PTR [ebp+0x74],si
c000ecaa:	65 00 50 65          	add    BYTE PTR gs:[eax+0x65],dl
c000ecae:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000ecaf:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c000ecb2:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c000ecb7:	65 6c                	gs ins BYTE PTR es:[edi],dx
c000ecb9:	20 28                	and    BYTE PTR [eax],ch
c000ecbb:	50                   	push   eax
c000ecbc:	4b                   	dec    ebx
c000ecbd:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000ecbe:	29 20                	sub    DWORD PTR [eax],esp
c000ecc0:	76 65                	jbe    c000ed27 <__func__.1257+0x8b>
c000ecc2:	72 73                	jb     c000ed37 <keymap+0x7>
c000ecc4:	69 6f 6e 20 30 2e 30 	imul   ebp,DWORD PTR [edi+0x6e],0x302e3020
c000eccb:	2e 30 20             	xor    BYTE PTR cs:[eax],ah
c000ecce:	74 65                	je     c000ed35 <keymap+0x5>
c000ecd0:	73 74                	jae    c000ed46 <keymap+0x16>
c000ecd2:	00 00                	add    BYTE PTR [eax],al
c000ecd4:	50                   	push   eax
c000ecd5:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c000ecd7:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c000ecda:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c000ecdf:	65 6c                	gs ins BYTE PTR es:[edi],dx
c000ece1:	20 28                	and    BYTE PTR [eax],ch
c000ece3:	50                   	push   eax
c000ece4:	4b                   	dec    ebx
c000ece5:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000ece6:	29 20                	sub    DWORD PTR [eax],esp
c000ece8:	76 65                	jbe    c000ed4f <keymap+0x1f>
c000ecea:	72 73                	jb     c000ed5f <keymap+0x2f>
c000ecec:	69 6f 6e 20 30 2e 30 	imul   ebp,DWORD PTR [edi+0x6e],0x302e3020
c000ecf3:	2e 30 20             	xor    BYTE PTR cs:[eax],ah
c000ecf6:	74 65                	je     c000ed5d <keymap+0x2d>
c000ecf8:	73 74                	jae    c000ed6e <keymap+0x3e>
c000ecfa:	00 00                	add    BYTE PTR [eax],al
c000ecfc:	75 6e                	jne    c000ed6c <keymap+0x3c>
c000ecfe:	6b 6e 6f 77          	imul   ebp,DWORD PTR [esi+0x6f],0x77
c000ed02:	20 6b 65             	and    BYTE PTR [ebx+0x65],ch
c000ed05:	79 00                	jns    c000ed07 <__func__.1257+0x6b>
c000ed07:	00 50 65             	add    BYTE PTR [eax+0x65],dl
c000ed0a:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000ed0b:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c000ed0e:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c000ed13:	65 6c                	gs ins BYTE PTR es:[edi],dx
c000ed15:	20 28                	and    BYTE PTR [eax],ch
c000ed17:	50                   	push   eax
c000ed18:	4b                   	dec    ebx
c000ed19:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000ed1a:	29 20                	sub    DWORD PTR [eax],esp
c000ed1c:	76 65                	jbe    c000ed83 <keymap+0x53>
c000ed1e:	72 73                	jb     c000ed93 <keymap+0x63>
c000ed20:	69 6f 6e 20 30 2e 30 	imul   ebp,DWORD PTR [edi+0x6e],0x302e3020
c000ed27:	2e 30 20             	xor    BYTE PTR cs:[eax],ah
c000ed2a:	74 65                	je     c000ed91 <keymap+0x61>
c000ed2c:	73 74                	jae    c000eda2 <keymap+0x72>
	...

c000ed30 <keymap>:
c000ed30:	00 00                	add    BYTE PTR [eax],al
c000ed32:	1b 1b                	sbb    ebx,DWORD PTR [ebx]
c000ed34:	31 21                	xor    DWORD PTR [ecx],esp
c000ed36:	32 40 33             	xor    al,BYTE PTR [eax+0x33]
c000ed39:	23 34 24             	and    esi,DWORD PTR [esp]
c000ed3c:	35 25 36 5e 37       	xor    eax,0x375e3625
c000ed41:	26 38 2a             	cmp    BYTE PTR es:[edx],ch
c000ed44:	39 28                	cmp    DWORD PTR [eax],ebp
c000ed46:	30 29                	xor    BYTE PTR [ecx],ch
c000ed48:	2d 5f 3d 2b 08       	sub    eax,0x82b3d5f
c000ed4d:	08 09                	or     BYTE PTR [ecx],cl
c000ed4f:	09 71 51             	or     DWORD PTR [ecx+0x51],esi
c000ed52:	77 57                	ja     c000edab <keymap+0x7b>
c000ed54:	65 45                	gs inc ebp
c000ed56:	72 52                	jb     c000edaa <keymap+0x7a>
c000ed58:	74 54                	je     c000edae <keymap+0x7e>
c000ed5a:	79 59                	jns    c000edb5 <keymap+0x85>
c000ed5c:	75 55                	jne    c000edb3 <keymap+0x83>
c000ed5e:	69 49 6f 4f 70 50 5b 	imul   ecx,DWORD PTR [ecx+0x6f],0x5b50704f
c000ed65:	7b 5d                	jnp    c000edc4 <keymap+0x94>
c000ed67:	7d 0d                	jge    c000ed76 <keymap+0x46>
c000ed69:	0d 00 00 61 41       	or     eax,0x41610000
c000ed6e:	73 53                	jae    c000edc3 <keymap+0x93>
c000ed70:	64 44                	fs inc esp
c000ed72:	66 46                	inc    si
c000ed74:	67 47                	addr16 inc edi
c000ed76:	68 48 6a 4a 6b       	push   0x6b4a6a48
c000ed7b:	4b                   	dec    ebx
c000ed7c:	6c                   	ins    BYTE PTR es:[edi],dx
c000ed7d:	4c                   	dec    esp
c000ed7e:	3b 3a                	cmp    edi,DWORD PTR [edx]
c000ed80:	27                   	daa    
c000ed81:	22 60 7e             	and    ah,BYTE PTR [eax+0x7e]
c000ed84:	00 00                	add    BYTE PTR [eax],al
c000ed86:	5c                   	pop    esp
c000ed87:	7c 7a                	jl     c000ee03 <keymap+0xd3>
c000ed89:	5a                   	pop    edx
c000ed8a:	78 58                	js     c000ede4 <keymap+0xb4>
c000ed8c:	63 43 76             	arpl   WORD PTR [ebx+0x76],ax
c000ed8f:	56                   	push   esi
c000ed90:	62 42 6e             	bound  eax,QWORD PTR [edx+0x6e]
c000ed93:	4e                   	dec    esi
c000ed94:	6d                   	ins    DWORD PTR es:[edi],dx
c000ed95:	4d                   	dec    ebp
c000ed96:	2c 3c                	sub    al,0x3c
c000ed98:	2e 3e 2f             	cs ds das 
c000ed9b:	3f                   	aas    
c000ed9c:	00 00                	add    BYTE PTR [eax],al
c000ed9e:	2a 2a                	sub    ch,BYTE PTR [edx]
c000eda0:	00 00                	add    BYTE PTR [eax],al
c000eda2:	20 20                	and    BYTE PTR [eax],ah
c000eda4:	00 00                	add    BYTE PTR [eax],al
c000eda6:	00 00                	add    BYTE PTR [eax],al
c000eda8:	50                   	push   eax
c000eda9:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c000edab:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c000edae:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c000edb3:	65 6c                	gs ins BYTE PTR es:[edi],dx
c000edb5:	20 28                	and    BYTE PTR [eax],ch
c000edb7:	50                   	push   eax
c000edb8:	4b                   	dec    ebx
c000edb9:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000edba:	29 20                	sub    DWORD PTR [eax],esp
c000edbc:	76 65                	jbe    c000ee23 <keymap+0xf3>
c000edbe:	72 73                	jb     c000ee33 <keymap+0x103>
c000edc0:	69 6f 6e 20 30 2e 30 	imul   ebp,DWORD PTR [edi+0x6e],0x302e3020
c000edc7:	2e 30 20             	xor    BYTE PTR cs:[eax],ah
c000edca:	74 65                	je     c000ee31 <keymap+0x101>
c000edcc:	73 74                	jae    c000ee42 <keymap+0x112>
c000edce:	00 00                	add    BYTE PTR [eax],al
c000edd0:	50                   	push   eax
c000edd1:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c000edd3:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c000edd6:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c000eddb:	65 6c                	gs ins BYTE PTR es:[edi],dx
c000eddd:	20 28                	and    BYTE PTR [eax],ch
c000eddf:	50                   	push   eax
c000ede0:	4b                   	dec    ebx
c000ede1:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000ede2:	29 20                	sub    DWORD PTR [eax],esp
c000ede4:	76 65                	jbe    c000ee4b <keymap+0x11b>
c000ede6:	72 73                	jb     c000ee5b <keymap+0x12b>
c000ede8:	69 6f 6e 20 30 2e 30 	imul   ebp,DWORD PTR [edi+0x6e],0x302e3020
c000edef:	2e 30 20             	xor    BYTE PTR cs:[eax],ah
c000edf2:	74 65                	je     c000ee59 <keymap+0x129>
c000edf4:	73 74                	jae    c000ee6a <keymap+0x13a>
c000edf6:	00 00                	add    BYTE PTR [eax],al
c000edf8:	62 79 74             	bound  edi,QWORD PTR [ecx+0x74]
c000edfb:	65 5f                	gs pop edi
c000edfd:	69 6e 64 65 78 20 3c 	imul   ebp,DWORD PTR [esi+0x64],0x3c207865
c000ee04:	20 28                	and    BYTE PTR [eax],ch
c000ee06:	62 74 6d 70          	bound  esi,QWORD PTR [ebp+ebp*2+0x70]
c000ee0a:	2d 3e 62 74 6d       	sub    eax,0x6d74623e
c000ee0f:	70 5f                	jo     c000ee70 <__func__.866+0x4>
c000ee11:	62 79 74             	bound  edi,QWORD PTR [ecx+0x74]
c000ee14:	65 73 5f             	gs jae c000ee76 <__func__.866+0xa>
c000ee17:	6c                   	ins    BYTE PTR es:[edi],dx
c000ee18:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c000ee1a:	29 00                	sub    DWORD PTR [eax],eax
c000ee1c:	6c                   	ins    BYTE PTR es:[edi],dx
c000ee1d:	69 62 2f 62 69 74 6d 	imul   esp,DWORD PTR [edx+0x2f],0x6d746962
c000ee24:	61                   	popa   
c000ee25:	70 2e                	jo     c000ee55 <keymap+0x125>
c000ee27:	63 00                	arpl   WORD PTR [eax],ax
c000ee29:	76 61                	jbe    c000ee8c <__func__.883+0x10>
c000ee2b:	6c                   	ins    BYTE PTR es:[edi],dx
c000ee2c:	75 65                	jne    c000ee93 <__func__.883+0x17>
c000ee2e:	20 3d 3d 20 30 20    	and    BYTE PTR ds:0x2030203d,bh
c000ee34:	7c 7c                	jl     c000eeb2 <__func__.883+0x36>
c000ee36:	20 76 61             	and    BYTE PTR [esi+0x61],dh
c000ee39:	6c                   	ins    BYTE PTR es:[edi],dx
c000ee3a:	75 65                	jne    c000eea1 <__func__.883+0x25>
c000ee3c:	20 3d 3d 20 31 00    	and    BYTE PTR ds:0x31203d,bh
c000ee42:	00 00                	add    BYTE PTR [eax],al
c000ee44:	50                   	push   eax
c000ee45:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c000ee47:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c000ee4a:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c000ee4f:	65 6c                	gs ins BYTE PTR es:[edi],dx
c000ee51:	20 28                	and    BYTE PTR [eax],ch
c000ee53:	50                   	push   eax
c000ee54:	4b                   	dec    ebx
c000ee55:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000ee56:	29 20                	sub    DWORD PTR [eax],esp
c000ee58:	76 65                	jbe    c000eebf <__func__.883+0x43>
c000ee5a:	72 73                	jb     c000eecf <__func__.883+0x53>
c000ee5c:	69 6f 6e 20 30 2e 30 	imul   ebp,DWORD PTR [edi+0x6e],0x302e3020
c000ee63:	2e 30 20             	xor    BYTE PTR cs:[eax],ah
c000ee66:	74 65                	je     c000eecd <__func__.883+0x51>
c000ee68:	73 74                	jae    c000eede <__func__.883+0x62>
	...

c000ee6c <__func__.866>:
c000ee6c:	62 69 74             	bound  ebp,QWORD PTR [ecx+0x74]
c000ee6f:	6d                   	ins    DWORD PTR es:[edi],dx
c000ee70:	61                   	popa   
c000ee71:	70 5f                	jo     c000eed2 <__func__.883+0x56>
c000ee73:	61                   	popa   
c000ee74:	6c                   	ins    BYTE PTR es:[edi],dx
c000ee75:	6c                   	ins    BYTE PTR es:[edi],dx
c000ee76:	6f                   	outs   dx,DWORD PTR ds:[esi]
c000ee77:	63 00                	arpl   WORD PTR [eax],ax
c000ee79:	00 00                	add    BYTE PTR [eax],al
	...

c000ee7c <__func__.883>:
c000ee7c:	62 69 74             	bound  ebp,QWORD PTR [ecx+0x74]
c000ee7f:	6d                   	ins    DWORD PTR es:[edi],dx
c000ee80:	61                   	popa   
c000ee81:	70 5f                	jo     c000eee2 <__func__.883+0x66>
c000ee83:	73 65                	jae    c000eeea <__func__.883+0x6e>
c000ee85:	74 00                	je     c000ee87 <__func__.883+0xb>
c000ee87:	00 66 69             	add    BYTE PTR [esi+0x69],ah
c000ee8a:	66 6f                	outs   dx,WORD PTR ds:[esi]
c000ee8c:	2d 3e 74 79 70       	sub    eax,0x7079743e
c000ee91:	65 20 3d 3d 20 38 20 	and    BYTE PTR gs:0x2038203d,bh
c000ee98:	7c 7c                	jl     c000ef16 <__func__.1099+0xa>
c000ee9a:	20 66 69             	and    BYTE PTR [esi+0x69],ah
c000ee9d:	66 6f                	outs   dx,WORD PTR ds:[esi]
c000ee9f:	2d 3e 74 79 70       	sub    eax,0x7079743e
c000eea4:	65 20 3d 3d 20 31 36 	and    BYTE PTR gs:0x3631203d,bh
c000eeab:	20 7c 7c 20          	and    BYTE PTR [esp+edi*2+0x20],bh
c000eeaf:	66 69 66 6f 2d 3e    	imul   sp,WORD PTR [esi+0x6f],0x3e2d
c000eeb5:	74 79                	je     c000ef30 <__func__.1110+0x18>
c000eeb7:	70 65                	jo     c000ef1e <__func__.1110+0x6>
c000eeb9:	20 3d 3d 20 33 32    	and    BYTE PTR ds:0x3233203d,bh
c000eebf:	20 7c 7c 20          	and    BYTE PTR [esp+edi*2+0x20],bh
c000eec3:	66 69 66 6f 2d 3e    	imul   sp,WORD PTR [esi+0x6f],0x3e2d
c000eec9:	74 79                	je     c000ef44 <__func__.1110+0x2c>
c000eecb:	70 65                	jo     c000ef32 <__func__.1110+0x1a>
c000eecd:	20 3d 3d 20 36 34    	and    BYTE PTR ds:0x3436203d,bh
c000eed3:	00 64 65 76          	add    BYTE PTR [ebp+eiz*2+0x76],ah
c000eed7:	69 63 65 2f 66 69 66 	imul   esp,DWORD PTR [ebx+0x65],0x6669662f
c000eede:	6f                   	outs   dx,DWORD PTR ds:[esi]
c000eedf:	2e 63 00             	arpl   WORD PTR cs:[eax],ax
c000eee2:	00 00                	add    BYTE PTR [eax],al
c000eee4:	50                   	push   eax
c000eee5:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c000eee7:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c000eeea:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c000eeef:	65 6c                	gs ins BYTE PTR es:[edi],dx
c000eef1:	20 28                	and    BYTE PTR [eax],ch
c000eef3:	50                   	push   eax
c000eef4:	4b                   	dec    ebx
c000eef5:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000eef6:	29 20                	sub    DWORD PTR [eax],esp
c000eef8:	76 65                	jbe    c000ef5f <__func__.1110+0x47>
c000eefa:	72 73                	jb     c000ef6f <__func__.1110+0x57>
c000eefc:	69 6f 6e 20 30 2e 30 	imul   ebp,DWORD PTR [edi+0x6e],0x302e3020
c000ef03:	2e 30 20             	xor    BYTE PTR cs:[eax],ah
c000ef06:	74 65                	je     c000ef6d <__func__.1110+0x55>
c000ef08:	73 74                	jae    c000ef7e <__func__.1110+0x66>
	...

c000ef0c <__func__.1099>:
c000ef0c:	66 69 66 6f 5f 70    	imul   sp,WORD PTR [esi+0x6f],0x705f
c000ef12:	75 74                	jne    c000ef88 <__func__.1110+0x70>
c000ef14:	00 00                	add    BYTE PTR [eax],al
	...

c000ef18 <__func__.1110>:
c000ef18:	66 69 66 6f 5f 67    	imul   sp,WORD PTR [esi+0x6f],0x675f
c000ef1e:	65 74 00             	gs je  c000ef21 <__func__.1110+0x9>
c000ef21:	00 00                	add    BYTE PTR [eax],al
c000ef23:	00 50 65             	add    BYTE PTR [eax+0x65],dl
c000ef26:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000ef27:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c000ef2a:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c000ef2f:	65 6c                	gs ins BYTE PTR es:[edi],dx
c000ef31:	20 28                	and    BYTE PTR [eax],ch
c000ef33:	50                   	push   eax
c000ef34:	4b                   	dec    ebx
c000ef35:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000ef36:	29 20                	sub    DWORD PTR [eax],esp
c000ef38:	76 65                	jbe    c000ef9f <__func__.1110+0x87>
c000ef3a:	72 73                	jb     c000efaf <digits.993+0x3>
c000ef3c:	69 6f 6e 20 30 2e 30 	imul   ebp,DWORD PTR [edi+0x6e],0x302e3020
c000ef43:	2e 30 20             	xor    BYTE PTR cs:[eax],ah
c000ef46:	74 65                	je     c000efad <digits.993+0x1>
c000ef48:	73 74                	jae    c000efbe <digits.993+0x12>
c000ef4a:	00 00                	add    BYTE PTR [eax],al
c000ef4c:	05 ac 00 c0 c1       	add    eax,0xc1c000ac
c000ef51:	ab                   	stos   DWORD PTR es:[edi],eax
c000ef52:	00 c0                	add    al,al
c000ef54:	c1 ab 00 c0 c1 ab 00 	shr    DWORD PTR [ebx-0x543e4000],0x0
c000ef5b:	c0 c1 ab             	rol    cl,0xab
c000ef5e:	00 c0                	add    al,al
c000ef60:	c1 ab 00 c0 c1 ab 00 	shr    DWORD PTR [ebx-0x543e4000],0x0
c000ef67:	c0 c1 ab             	rol    cl,0xab
c000ef6a:	00 c0                	add    al,al
c000ef6c:	9a ab 00 c0 b9 ab 00 	call   0xab:0xb9c000ab
c000ef73:	c0 a8 ab 00 c0 c1 ab 	shr    BYTE PTR [eax-0x3e3fff55],0xab
c000ef7a:	00 c0                	add    al,al
c000ef7c:	c1 ab 00 c0 a8 ab 00 	shr    DWORD PTR [ebx-0x54574000],0x0
c000ef83:	c0 50 65 6e          	rcl    BYTE PTR [eax+0x65],0x6e
c000ef87:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c000ef8a:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c000ef8f:	65 6c                	gs ins BYTE PTR es:[edi],dx
c000ef91:	20 28                	and    BYTE PTR [eax],ch
c000ef93:	50                   	push   eax
c000ef94:	4b                   	dec    ebx
c000ef95:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000ef96:	29 20                	sub    DWORD PTR [eax],esp
c000ef98:	76 65                	jbe    c000efff <digits.1012+0x2b>
c000ef9a:	72 73                	jb     c000f00f <digits.1012+0x3b>
c000ef9c:	69 6f 6e 20 30 2e 30 	imul   ebp,DWORD PTR [edi+0x6e],0x302e3020
c000efa3:	2e 30 20             	xor    BYTE PTR cs:[eax],ah
c000efa6:	74 65                	je     c000f00d <digits.1012+0x39>
c000efa8:	73 74                	jae    c000f01e <digits.1012+0x4a>
	...

c000efac <digits.993>:
c000efac:	30 31                	xor    BYTE PTR [ecx],dh
c000efae:	32 33                	xor    dh,BYTE PTR [ebx]
c000efb0:	34 35                	xor    al,0x35
c000efb2:	36 37                	ss aaa 
c000efb4:	38 39                	cmp    BYTE PTR [ecx],bh
c000efb6:	41                   	inc    ecx
c000efb7:	42                   	inc    edx
c000efb8:	43                   	inc    ebx
c000efb9:	44                   	inc    esp
c000efba:	45                   	inc    ebp
c000efbb:	46                   	inc    esi
c000efbc:	47                   	inc    edi
c000efbd:	48                   	dec    eax
c000efbe:	49                   	dec    ecx
c000efbf:	4a                   	dec    edx
c000efc0:	4b                   	dec    ebx
c000efc1:	4c                   	dec    esp
c000efc2:	4d                   	dec    ebp
c000efc3:	4e                   	dec    esi
c000efc4:	4f                   	dec    edi
c000efc5:	50                   	push   eax
c000efc6:	51                   	push   ecx
c000efc7:	52                   	push   edx
c000efc8:	53                   	push   ebx
c000efc9:	54                   	push   esp
c000efca:	55                   	push   ebp
c000efcb:	56                   	push   esi
c000efcc:	57                   	push   edi
c000efcd:	58                   	pop    eax
c000efce:	59                   	pop    ecx
c000efcf:	5a                   	pop    edx
c000efd0:	00 00                	add    BYTE PTR [eax],al
	...

c000efd4 <digits.1012>:
c000efd4:	30 31                	xor    BYTE PTR [ecx],dh
c000efd6:	32 33                	xor    dh,BYTE PTR [ebx]
c000efd8:	34 35                	xor    al,0x35
c000efda:	36 37                	ss aaa 
c000efdc:	38 39                	cmp    BYTE PTR [ecx],bh
c000efde:	41                   	inc    ecx
c000efdf:	42                   	inc    edx
c000efe0:	43                   	inc    ebx
c000efe1:	44                   	inc    esp
c000efe2:	45                   	inc    ebp
c000efe3:	46                   	inc    esi
c000efe4:	47                   	inc    edi
c000efe5:	48                   	dec    eax
c000efe6:	49                   	dec    ecx
c000efe7:	4a                   	dec    edx
c000efe8:	4b                   	dec    ebx
c000efe9:	4c                   	dec    esp
c000efea:	4d                   	dec    ebp
c000efeb:	4e                   	dec    esi
c000efec:	4f                   	dec    edi
c000efed:	50                   	push   eax
c000efee:	51                   	push   ecx
c000efef:	52                   	push   edx
c000eff0:	53                   	push   ebx
c000eff1:	54                   	push   esp
c000eff2:	55                   	push   ebp
c000eff3:	56                   	push   esi
c000eff4:	57                   	push   edi
c000eff5:	58                   	pop    eax
c000eff6:	59                   	pop    ecx
c000eff7:	5a                   	pop    edx
c000eff8:	00 00                	add    BYTE PTR [eax],al
c000effa:	00 00                	add    BYTE PTR [eax],al
c000effc:	64 73 74             	fs jae c000f073 <digits.1012+0x9f>
c000efff:	5f                   	pop    edi
c000f000:	5f                   	pop    edi
c000f001:	20 21                	and    BYTE PTR [ecx],ah
c000f003:	3d 20 4e 55 4c       	cmp    eax,0x4c554e20
c000f008:	4c                   	dec    esp
c000f009:	00 6c 69 62          	add    BYTE PTR [ecx+ebp*2+0x62],ch
c000f00d:	63 2f                	arpl   WORD PTR [edi],bp
c000f00f:	73 74                	jae    c000f085 <__func__.850+0x1>
c000f011:	72 69                	jb     c000f07c <__func__.839>
c000f013:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000f014:	67 2e 63 00          	arpl   WORD PTR cs:[bx+si],ax
c000f018:	64 73 74             	fs jae c000f08f <__func__.862+0x3>
c000f01b:	5f                   	pop    edi
c000f01c:	5f                   	pop    edi
c000f01d:	20 21                	and    BYTE PTR [ecx],ah
c000f01f:	3d 20 4e 55 4c       	cmp    eax,0x4c554e20
c000f024:	4c                   	dec    esp
c000f025:	20 26                	and    BYTE PTR [esi],ah
c000f027:	26 20 73 72          	and    BYTE PTR es:[ebx+0x72],dh
c000f02b:	63 5f 5f             	arpl   WORD PTR [edi+0x5f],bx
c000f02e:	20 21                	and    BYTE PTR [ecx],ah
c000f030:	3d 20 4e 55 4c       	cmp    eax,0x4c554e20
c000f035:	4c                   	dec    esp
c000f036:	00 70 31             	add    BYTE PTR [eax+0x31],dh
c000f039:	5f                   	pop    edi
c000f03a:	5f                   	pop    edi
c000f03b:	20 21                	and    BYTE PTR [ecx],ah
c000f03d:	3d 20 4e 55 4c       	cmp    eax,0x4c554e20
c000f042:	4c                   	dec    esp
c000f043:	20 26                	and    BYTE PTR [esi],ah
c000f045:	26 20 70 32          	and    BYTE PTR es:[eax+0x32],dh
c000f049:	5f                   	pop    edi
c000f04a:	5f                   	pop    edi
c000f04b:	20 21                	and    BYTE PTR [ecx],ah
c000f04d:	3d 20 4e 55 4c       	cmp    eax,0x4c554e20
c000f052:	4c                   	dec    esp
c000f053:	00 50 65             	add    BYTE PTR [eax+0x65],dl
c000f056:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000f057:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c000f05a:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c000f05f:	65 6c                	gs ins BYTE PTR es:[edi],dx
c000f061:	20 28                	and    BYTE PTR [eax],ch
c000f063:	50                   	push   eax
c000f064:	4b                   	dec    ebx
c000f065:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000f066:	29 20                	sub    DWORD PTR [eax],esp
c000f068:	76 65                	jbe    c000f0cf <__func__.862+0x43>
c000f06a:	72 73                	jb     c000f0df <__func__.862+0x53>
c000f06c:	69 6f 6e 20 30 2e 30 	imul   ebp,DWORD PTR [edi+0x6e],0x302e3020
c000f073:	2e 30 20             	xor    BYTE PTR cs:[eax],ah
c000f076:	74 65                	je     c000f0dd <__func__.862+0x51>
c000f078:	73 74                	jae    c000f0ee <tss+0x2>
	...

c000f07c <__func__.839>:
c000f07c:	6d                   	ins    DWORD PTR es:[edi],dx
c000f07d:	65 6d                	gs ins DWORD PTR es:[edi],dx
c000f07f:	73 65                	jae    c000f0e6 <_bss+0x2>
c000f081:	74 00                	je     c000f083 <__func__.839+0x7>
	...

c000f084 <__func__.850>:
c000f084:	6d                   	ins    DWORD PTR es:[edi],dx
c000f085:	65 6d                	gs ins DWORD PTR es:[edi],dx
c000f087:	63 70 79             	arpl   WORD PTR [eax+0x79],si
	...

c000f08c <__func__.862>:
c000f08c:	6d                   	ins    DWORD PTR es:[edi],dx
c000f08d:	65 6d                	gs ins DWORD PTR es:[edi],dx
c000f08f:	63 6d 70             	arpl   WORD PTR [ebp+0x70],bp
c000f092:	00 00                	add    BYTE PTR [eax],al
c000f094:	50                   	push   eax
c000f095:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c000f097:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c000f09a:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c000f09f:	65 6c                	gs ins BYTE PTR es:[edi],dx
c000f0a1:	20 28                	and    BYTE PTR [eax],ch
c000f0a3:	50                   	push   eax
c000f0a4:	4b                   	dec    ebx
c000f0a5:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000f0a6:	29 20                	sub    DWORD PTR [eax],esp
c000f0a8:	76 65                	jbe    c000f10f <tss+0x23>
c000f0aa:	72 73                	jb     c000f11f <tss+0x33>
c000f0ac:	69 6f 6e 20 30 2e 30 	imul   ebp,DWORD PTR [edi+0x6e],0x302e3020
c000f0b3:	2e 30 20             	xor    BYTE PTR cs:[eax],ah
c000f0b6:	74 65                	je     c000f11d <tss+0x31>
c000f0b8:	73 74                	jae    c000f12e <tss+0x42>
c000f0ba:	00 00                	add    BYTE PTR [eax],al
c000f0bc:	50                   	push   eax
c000f0bd:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c000f0bf:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c000f0c2:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c000f0c7:	65 6c                	gs ins BYTE PTR es:[edi],dx
c000f0c9:	20 28                	and    BYTE PTR [eax],ch
c000f0cb:	50                   	push   eax
c000f0cc:	4b                   	dec    ebx
c000f0cd:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000f0ce:	29 20                	sub    DWORD PTR [eax],esp
c000f0d0:	76 65                	jbe    c000f137 <tss+0x4b>
c000f0d2:	72 73                	jb     c000f147 <tss+0x5b>
c000f0d4:	69 6f 6e 20 30 2e 30 	imul   ebp,DWORD PTR [edi+0x6e],0x302e3020
c000f0db:	2e 30 20             	xor    BYTE PTR cs:[eax],ah
c000f0de:	74 65                	je     c000f145 <tss+0x59>
c000f0e0:	73 74                	jae    c000f156 <tss+0x6a>
	...

Disassembly of section .bss:

c000f0e4 <_bss>:
c000f0e4:	00 00                	add    BYTE PTR [eax],al
	...

c000f0e8 <this_thread_tag>:
c000f0e8:	00 00                	add    BYTE PTR [eax],al
	...

c000f0ec <tss>:
	...

c000f158 <console_lock>:
	...

c000f17c <buf>:
	...

c000f1bc <shift_status>:
c000f1bc:	00 00                	add    BYTE PTR [eax],al
	...

c000f1c0 <casplock_status>:
c000f1c0:	00 00                	add    BYTE PTR [eax],al
	...

c000f1c4 <ext_scandcode>:
c000f1c4:	00 00                	add    BYTE PTR [eax],al
	...

c000f1c8 <ctrl_status>:
c000f1c8:	00 00                	add    BYTE PTR [eax],al
	...

c000f1cc <alt_status>:
c000f1cc:	00 00                	add    BYTE PTR [eax],al
	...

c000f1d0 <i>:
c000f1d0:	00 00                	add    BYTE PTR [eax],al
	...

c000f1d4 <ticks>:
c000f1d4:	00 00                	add    BYTE PTR [eax],al
	...

c000f1d8 <_ebss>:
	...

c000f294 <idt>:
	...

c000f40c <idt_table>:
	...

c000f4c8 <kvinfo>:
	...

c00171c8 <user_pool>:
	...

c0017200 <kernel_vaddr>:
	...

c0017238 <upinfo>:
	...

c001ef38 <kpinfo>:
	...

c0026c38 <kernel_pool>:
	...

c0026c70 <ready_list>:
	...

c0026c88 <all_list>:
	...

c0026ca0 <main_thread>:
c0026ca0:	00 00                	add    BYTE PTR [eax],al
	...

c0026ca4 <keybuf>:
	...

c0026ce8 <Screen>:
	...

Disassembly of section .comment:

00000000 <.comment>:
   0:	47                   	inc    edi
   1:	43                   	inc    ebx
   2:	43                   	inc    ebx
   3:	3a 20                	cmp    ah,BYTE PTR [eax]
   5:	28 47 4e             	sub    BYTE PTR [edi+0x4e],al
   8:	55                   	push   ebp
   9:	29 20                	sub    DWORD PTR [eax],esp
   b:	34 2e                	xor    al,0x2e
   d:	36 2e 31 00          	ss xor DWORD PTR cs:[eax],eax
