
kernel\kernel.o:     file format elf32-i386


Disassembly of section .text:

c0100000 <_start>:
c0100000:	66 b8 10 00          	mov    ax,0x10
c0100004:	8e d8                	mov    ds,eax
c0100006:	8e c0                	mov    es,eax
c0100008:	8e d0                	mov    ss,eax
c010000a:	8e e0                	mov    fs,eax
c010000c:	8e e8                	mov    gs,eax
c010000e:	bc 00 70 00 c0       	mov    esp,0xc0007000
c0100013:	e9 fc 02 00 00       	jmp    c0100314 <kernel_main>
c0100018:	e9 fb ff ff ff       	jmp    c0100018 <_start+0x18>
c010001d:	00 00                	add    BYTE PTR [eax],al
	...

c0100020 <k_thread_b>:
c0100020:	55                   	push   ebp
c0100021:	89 e5                	mov    ebp,esp
c0100023:	53                   	push   ebx
c0100024:	83 ec 1c             	sub    esp,0x1c
c0100027:	68 14 61 10 c0       	push   0xc0106114
c010002c:	6a 07                	push   0x7
c010002e:	e8 58 21 00 00       	call   c010218b <console_str>
c0100033:	8d 5d f7             	lea    ebx,[ebp-0x9]
c0100036:	83 c4 10             	add    esp,0x10
c0100039:	83 ec 0c             	sub    esp,0xc
c010003c:	68 a8 ed 11 c0       	push   0xc011eda8
c0100041:	e8 7a 29 00 00       	call   c01029c0 <fifo_empty>
c0100046:	83 c4 10             	add    esp,0x10
c0100049:	85 c0                	test   eax,eax
c010004b:	75 ec                	jne    c0100039 <k_thread_b+0x19>
c010004d:	50                   	push   eax
c010004e:	50                   	push   eax
c010004f:	53                   	push   ebx
c0100050:	68 a8 ed 11 c0       	push   0xc011eda8
c0100055:	e8 65 28 00 00       	call   c01028bf <fifo_get>
c010005a:	0f be 45 f7          	movsx  eax,BYTE PTR [ebp-0x9]
c010005e:	5a                   	pop    edx
c010005f:	59                   	pop    ecx
c0100060:	50                   	push   eax
c0100061:	6a 07                	push   0x7
c0100063:	e8 e5 20 00 00       	call   c010214d <console_char>
c0100068:	58                   	pop    eax
c0100069:	5a                   	pop    edx
c010006a:	6a 2e                	push   0x2e
c010006c:	6a 12                	push   0x12
c010006e:	6a 1e                	push   0x1e
c0100070:	6a 0a                	push   0xa
c0100072:	68 84 84 84 00       	push   0x848484
c0100077:	68 ec ed 11 c0       	push   0xc011edec
c010007c:	e8 db 2f 00 00       	call   c010305c <RectangleFill>
c0100081:	0f be 45 f7          	movsx  eax,BYTE PTR [ebp-0x9]
c0100085:	83 c4 14             	add    esp,0x14
c0100088:	50                   	push   eax
c0100089:	68 ff ff ff 00       	push   0xffffff
c010008e:	6a 1e                	push   0x1e
c0100090:	6a 0a                	push   0xa
c0100092:	68 ec ed 11 c0       	push   0xc011edec
c0100097:	e8 2a 31 00 00       	call   c01031c6 <put_char_graphic>
c010009c:	83 c4 20             	add    esp,0x20
c010009f:	eb 98                	jmp    c0100039 <k_thread_b+0x19>

c01000a1 <k_thread_a>:
c01000a1:	55                   	push   ebp
c01000a2:	89 e5                	mov    ebp,esp
c01000a4:	57                   	push   edi
c01000a5:	56                   	push   esi
c01000a6:	53                   	push   ebx
c01000a7:	83 ec 78             	sub    esp,0x78
c01000aa:	8d 45 d0             	lea    eax,[ebp-0x30]
c01000ad:	50                   	push   eax
c01000ae:	e8 3d 24 00 00       	call   c01024f0 <get_time>
c01000b3:	8b 55 d0             	mov    edx,DWORD PTR [ebp-0x30]
c01000b6:	8b 0d d8 72 10 c0    	mov    ecx,DWORD PTR ds:0xc01072d8
c01000bc:	89 d0                	mov    eax,edx
c01000be:	83 e2 0f             	and    edx,0xf
c01000c1:	c1 e8 04             	shr    eax,0x4
c01000c4:	83 e0 0f             	and    eax,0xf
c01000c7:	6b c0 0a             	imul   eax,eax,0xa
c01000ca:	89 4d 98             	mov    DWORD PTR [ebp-0x68],ecx
c01000cd:	01 c2                	add    edx,eax
c01000cf:	89 55 9c             	mov    DWORD PTR [ebp-0x64],edx
c01000d2:	8b 55 d4             	mov    edx,DWORD PTR [ebp-0x2c]
c01000d5:	89 d0                	mov    eax,edx
c01000d7:	83 e2 0f             	and    edx,0xf
c01000da:	c1 e8 04             	shr    eax,0x4
c01000dd:	83 e0 0f             	and    eax,0xf
c01000e0:	6b f0 0a             	imul   esi,eax,0xa
c01000e3:	01 d6                	add    esi,edx
c01000e5:	8b 55 d8             	mov    edx,DWORD PTR [ebp-0x28]
c01000e8:	89 d0                	mov    eax,edx
c01000ea:	83 e2 0f             	and    edx,0xf
c01000ed:	c1 e8 04             	shr    eax,0x4
c01000f0:	83 e0 0f             	and    eax,0xf
c01000f3:	6b f8 0a             	imul   edi,eax,0xa
c01000f6:	01 d7                	add    edi,edx
c01000f8:	8b 55 dc             	mov    edx,DWORD PTR [ebp-0x24]
c01000fb:	89 d0                	mov    eax,edx
c01000fd:	89 d3                	mov    ebx,edx
c01000ff:	8b 55 e0             	mov    edx,DWORD PTR [ebp-0x20]
c0100102:	c1 e8 04             	shr    eax,0x4
c0100105:	83 e3 0f             	and    ebx,0xf
c0100108:	83 e0 0f             	and    eax,0xf
c010010b:	6b c0 0a             	imul   eax,eax,0xa
c010010e:	01 c3                	add    ebx,eax
c0100110:	89 d0                	mov    eax,edx
c0100112:	c1 e8 04             	shr    eax,0x4
c0100115:	83 e2 0f             	and    edx,0xf
c0100118:	83 e0 0f             	and    eax,0xf
c010011b:	6b c0 0a             	imul   eax,eax,0xa
c010011e:	01 c2                	add    edx,eax
c0100120:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
c0100123:	89 55 a0             	mov    DWORD PTR [ebp-0x60],edx
c0100126:	89 c1                	mov    ecx,eax
c0100128:	89 c2                	mov    edx,eax
c010012a:	c1 e9 08             	shr    ecx,0x8
c010012d:	c1 ea 04             	shr    edx,0x4
c0100130:	83 e1 0f             	and    ecx,0xf
c0100133:	83 e2 0f             	and    edx,0xf
c0100136:	6b c9 64             	imul   ecx,ecx,0x64
c0100139:	6b d2 0a             	imul   edx,edx,0xa
c010013c:	01 ca                	add    edx,ecx
c010013e:	89 c1                	mov    ecx,eax
c0100140:	c1 e8 0c             	shr    eax,0xc
c0100143:	83 e1 0f             	and    ecx,0xf
c0100146:	83 e0 0f             	and    eax,0xf
c0100149:	01 ca                	add    edx,ecx
c010014b:	69 c0 e8 03 00 00    	imul   eax,eax,0x3e8
c0100151:	59                   	pop    ecx
c0100152:	59                   	pop    ecx
c0100153:	01 d0                	add    eax,edx
c0100155:	89 45 a4             	mov    DWORD PTR [ebp-0x5c],eax
c0100158:	8b 15 24 7c 00 00    	mov    edx,DWORD PTR ds:0x7c24
c010015e:	a1 20 7c 00 00       	mov    eax,ds:0x7c20
c0100163:	8d 4a f8             	lea    ecx,[edx-0x8]
c0100166:	83 ea 26             	sub    edx,0x26
c0100169:	51                   	push   ecx
c010016a:	8d 48 f9             	lea    ecx,[eax-0x7]
c010016d:	2d b3 00 00 00       	sub    eax,0xb3
c0100172:	51                   	push   ecx
c0100173:	52                   	push   edx
c0100174:	50                   	push   eax
c0100175:	68 84 84 84 00       	push   0x848484
c010017a:	68 ec ed 11 c0       	push   0xc011edec
c010017f:	e8 d8 2e 00 00       	call   c010305c <RectangleFill>
c0100184:	8b 15 24 7c 00 00    	mov    edx,DWORD PTR ds:0x7c24
c010018a:	83 c4 18             	add    esp,0x18
c010018d:	a1 20 7c 00 00       	mov    eax,ds:0x7c20
c0100192:	8d 4a f5             	lea    ecx,[edx-0xb]
c0100195:	83 ea 29             	sub    edx,0x29
c0100198:	51                   	push   ecx
c0100199:	8d 48 f6             	lea    ecx,[eax-0xa]
c010019c:	2d b6 00 00 00       	sub    eax,0xb6
c01001a1:	51                   	push   ecx
c01001a2:	52                   	push   edx
c01001a3:	50                   	push   eax
c01001a4:	68 ff ff ff 00       	push   0xffffff
c01001a9:	68 ec ed 11 c0       	push   0xc011edec
c01001ae:	e8 a9 2e 00 00       	call   c010305c <RectangleFill>
c01001b3:	8b 45 a4             	mov    eax,DWORD PTR [ebp-0x5c]
c01001b6:	b9 64 00 00 00       	mov    ecx,0x64
c01001bb:	31 d2                	xor    edx,edx
c01001bd:	83 c4 20             	add    esp,0x20
c01001c0:	f7 f1                	div    ecx
c01001c2:	8b 45 a4             	mov    eax,DWORD PTR [ebp-0x5c]
c01001c5:	66 b9 90 01          	mov    cx,0x190
c01001c9:	89 55 94             	mov    DWORD PTR [ebp-0x6c],edx
c01001cc:	31 d2                	xor    edx,edx
c01001ce:	f7 f1                	div    ecx
c01001d0:	8b 4d 98             	mov    ecx,DWORD PTR [ebp-0x68]
c01001d3:	8b 45 a4             	mov    eax,DWORD PTR [ebp-0x5c]
c01001d6:	83 c1 64             	add    ecx,0x64
c01001d9:	83 e0 03             	and    eax,0x3
c01001dc:	89 4d 98             	mov    DWORD PTR [ebp-0x68],ecx
c01001df:	89 45 8c             	mov    DWORD PTR [ebp-0x74],eax
c01001e2:	89 55 90             	mov    DWORD PTR [ebp-0x70],edx
c01001e5:	eb 0b                	jmp    c01001f2 <k_thread_a+0x151>
c01001e7:	c7 45 a0 01 00 00 00 	mov    DWORD PTR [ebp-0x60],0x1
c01001ee:	83 45 98 64          	add    DWORD PTR [ebp-0x68],0x64
c01001f2:	ff 75 9c             	push   DWORD PTR [ebp-0x64]
c01001f5:	8d 55 b0             	lea    edx,[ebp-0x50]
c01001f8:	56                   	push   esi
c01001f9:	57                   	push   edi
c01001fa:	53                   	push   ebx
c01001fb:	ff 75 a0             	push   DWORD PTR [ebp-0x60]
c01001fe:	ff 75 a4             	push   DWORD PTR [ebp-0x5c]
c0100201:	68 1c 61 10 c0       	push   0xc010611c
c0100206:	52                   	push   edx
c0100207:	e8 38 2e 00 00       	call   c0103044 <sprintf>
c010020c:	8b 15 24 7c 00 00    	mov    edx,DWORD PTR ds:0x7c24
c0100212:	83 c4 18             	add    esp,0x18
c0100215:	a1 20 7c 00 00       	mov    eax,ds:0x7c20
c010021a:	8d 4a ee             	lea    ecx,[edx-0x12]
c010021d:	83 ea 22             	sub    edx,0x22
c0100220:	51                   	push   ecx
c0100221:	8d 48 f6             	lea    ecx,[eax-0xa]
c0100224:	2d ac 00 00 00       	sub    eax,0xac
c0100229:	51                   	push   ecx
c010022a:	52                   	push   edx
c010022b:	50                   	push   eax
c010022c:	68 ff ff ff 00       	push   0xffffff
c0100231:	68 ec ed 11 c0       	push   0xc011edec
c0100236:	e8 21 2e 00 00       	call   c010305c <RectangleFill>
c010023b:	83 c4 14             	add    esp,0x14
c010023e:	8d 4d b0             	lea    ecx,[ebp-0x50]
c0100241:	51                   	push   ecx
c0100242:	6a 00                	push   0x0
c0100244:	a1 24 7c 00 00       	mov    eax,ds:0x7c24
c0100249:	83 e8 22             	sub    eax,0x22
c010024c:	50                   	push   eax
c010024d:	a1 20 7c 00 00       	mov    eax,ds:0x7c20
c0100252:	2d ac 00 00 00       	sub    eax,0xac
c0100257:	50                   	push   eax
c0100258:	68 ec ed 11 c0       	push   0xc011edec
c010025d:	e8 e8 2f 00 00       	call   c010324a <put_str_graphic>
c0100262:	83 c4 20             	add    esp,0x20
c0100265:	a1 d8 72 10 c0       	mov    eax,ds:0xc01072d8
c010026a:	3b 45 98             	cmp    eax,DWORD PTR [ebp-0x68]
c010026d:	7e f6                	jle    c0100265 <k_thread_a+0x1c4>
c010026f:	ff 45 9c             	inc    DWORD PTR [ebp-0x64]
c0100272:	83 7d 9c 3b          	cmp    DWORD PTR [ebp-0x64],0x3b
c0100276:	76 0b                	jbe    c0100283 <k_thread_a+0x1e2>
c0100278:	31 c0                	xor    eax,eax
c010027a:	85 f6                	test   esi,esi
c010027c:	0f 95 c0             	setne  al
c010027f:	46                   	inc    esi
c0100280:	89 45 9c             	mov    DWORD PTR [ebp-0x64],eax
c0100283:	83 fe 3b             	cmp    esi,0x3b
c0100286:	76 0a                	jbe    c0100292 <k_thread_a+0x1f1>
c0100288:	31 d2                	xor    edx,edx
c010028a:	85 ff                	test   edi,edi
c010028c:	0f 95 c2             	setne  dl
c010028f:	47                   	inc    edi
c0100290:	89 d6                	mov    esi,edx
c0100292:	83 ff 18             	cmp    edi,0x18
c0100295:	76 0a                	jbe    c01002a1 <k_thread_a+0x200>
c0100297:	31 c9                	xor    ecx,ecx
c0100299:	85 db                	test   ebx,ebx
c010029b:	0f 95 c1             	setne  cl
c010029e:	43                   	inc    ebx
c010029f:	89 cf                	mov    edi,ecx
c01002a1:	83 7d a0 0c          	cmp    DWORD PTR [ebp-0x60],0xc
c01002a5:	0f 87 3c ff ff ff    	ja     c01001e7 <k_thread_a+0x146>
c01002ab:	8a 4d a0             	mov    cl,BYTE PTR [ebp-0x60]
c01002ae:	b8 01 00 00 00       	mov    eax,0x1
c01002b3:	d3 e0                	shl    eax,cl
c01002b5:	a9 aa 15 00 00       	test   eax,0x15aa
c01002ba:	75 12                	jne    c01002ce <k_thread_a+0x22d>
c01002bc:	a9 50 0a 00 00       	test   eax,0xa50
c01002c1:	75 06                	jne    c01002c9 <k_thread_a+0x228>
c01002c3:	a8 04                	test   al,0x4
c01002c5:	75 0e                	jne    c01002d5 <k_thread_a+0x234>
c01002c7:	eb 32                	jmp    c01002fb <k_thread_a+0x25a>
c01002c9:	83 fb 1e             	cmp    ebx,0x1e
c01002cc:	eb 03                	jmp    c01002d1 <k_thread_a+0x230>
c01002ce:	83 fb 1f             	cmp    ebx,0x1f
c01002d1:	77 23                	ja     c01002f6 <k_thread_a+0x255>
c01002d3:	eb 26                	jmp    c01002fb <k_thread_a+0x25a>
c01002d5:	83 7d 8c 00          	cmp    DWORD PTR [ebp-0x74],0x0
c01002d9:	75 06                	jne    c01002e1 <k_thread_a+0x240>
c01002db:	83 7d 94 00          	cmp    DWORD PTR [ebp-0x6c],0x0
c01002df:	75 06                	jne    c01002e7 <k_thread_a+0x246>
c01002e1:	83 7d 90 00          	cmp    DWORD PTR [ebp-0x70],0x0
c01002e5:	75 05                	jne    c01002ec <k_thread_a+0x24b>
c01002e7:	83 fb 1d             	cmp    ebx,0x1d
c01002ea:	eb 03                	jmp    c01002ef <k_thread_a+0x24e>
c01002ec:	83 fb 1c             	cmp    ebx,0x1c
c01002ef:	77 19                	ja     c010030a <k_thread_a+0x269>
c01002f1:	e9 f8 fe ff ff       	jmp    c01001ee <k_thread_a+0x14d>
c01002f6:	bb 01 00 00 00       	mov    ebx,0x1
c01002fb:	83 7d a0 0c          	cmp    DWORD PTR [ebp-0x60],0xc
c01002ff:	0f 86 e9 fe ff ff    	jbe    c01001ee <k_thread_a+0x14d>
c0100305:	e9 dd fe ff ff       	jmp    c01001e7 <k_thread_a+0x146>
c010030a:	bb 01 00 00 00       	mov    ebx,0x1
c010030f:	e9 da fe ff ff       	jmp    c01001ee <k_thread_a+0x14d>

c0100314 <kernel_main>:
c0100314:	55                   	push   ebp
c0100315:	89 e5                	mov    ebp,esp
c0100317:	53                   	push   ebx
c0100318:	bb 23 00 00 00       	mov    ebx,0x23
c010031d:	50                   	push   eax
c010031e:	50                   	push   eax
c010031f:	50                   	push   eax
c0100320:	6a 0a                	push   0xa
c0100322:	6a 07                	push   0x7
c0100324:	e8 3b 29 00 00       	call   c0102c64 <put_char>
c0100329:	83 c4 10             	add    esp,0x10
c010032c:	4b                   	dec    ebx
c010032d:	75 ef                	jne    c010031e <kernel_main+0xa>
c010032f:	83 ec 0c             	sub    esp,0xc
c0100332:	6a 00                	push   0x0
c0100334:	e8 04 29 00 00       	call   c0102c3d <set_cursor>
c0100339:	e8 b6 01 00 00       	call   c01004f4 <init_all>
c010033e:	fb                   	sti    
c010033f:	5b                   	pop    ebx
c0100340:	58                   	pop    eax
c0100341:	68 3a 61 10 c0       	push   0xc010613a
c0100346:	6a 07                	push   0x7
c0100348:	e8 3e 1e 00 00       	call   c010218b <console_str>
c010034d:	58                   	pop    eax
c010034e:	5a                   	pop    edx
c010034f:	68 63 61 10 c0       	push   0xc0106163
c0100354:	6a 07                	push   0x7
c0100356:	e8 30 1e 00 00       	call   c010218b <console_str>
c010035b:	e8 4a 1f 00 00       	call   c01022aa <cpu_info>
c0100360:	59                   	pop    ecx
c0100361:	5b                   	pop    ebx
c0100362:	6a 0a                	push   0xa
c0100364:	6a 07                	push   0x7
c0100366:	e8 e2 1d 00 00       	call   c010214d <console_char>
c010036b:	58                   	pop    eax
c010036c:	5a                   	pop    edx
c010036d:	68 6c 61 10 c0       	push   0xc010616c
c0100372:	6a 07                	push   0x7
c0100374:	e8 12 1e 00 00       	call   c010218b <console_str>
c0100379:	83 c4 0c             	add    esp,0xc
c010037c:	6a 0a                	push   0xa
c010037e:	a1 08 7c 00 00       	mov    eax,ds:0x7c08
c0100383:	c1 e8 14             	shr    eax,0x14
c0100386:	50                   	push   eax
c0100387:	6a 07                	push   0x7
c0100389:	e8 36 1e 00 00       	call   c01021c4 <console_int>
c010038e:	59                   	pop    ecx
c010038f:	5b                   	pop    ebx
c0100390:	68 75 61 10 c0       	push   0xc0106175
c0100395:	6a 07                	push   0x7
c0100397:	e8 ef 1d 00 00       	call   c010218b <console_str>
c010039c:	83 c4 0c             	add    esp,0xc
c010039f:	6a 0a                	push   0xa
c01003a1:	a1 08 7c 00 00       	mov    eax,ds:0x7c08
c01003a6:	c1 e8 0a             	shr    eax,0xa
c01003a9:	50                   	push   eax
c01003aa:	6a 07                	push   0x7
c01003ac:	e8 13 1e 00 00       	call   c01021c4 <console_int>
c01003b1:	58                   	pop    eax
c01003b2:	5a                   	pop    edx
c01003b3:	68 7b 61 10 c0       	push   0xc010617b
c01003b8:	6a 07                	push   0x7
c01003ba:	e8 46 29 00 00       	call   c0102d05 <put_str>
c01003bf:	59                   	pop    ecx
c01003c0:	5b                   	pop    ebx
c01003c1:	6a 0a                	push   0xa
c01003c3:	6a 07                	push   0x7
c01003c5:	e8 9a 28 00 00       	call   c0102c64 <put_char>
c01003ca:	58                   	pop    eax
c01003cb:	5a                   	pop    edx
c01003cc:	68 81 61 10 c0       	push   0xc0106181
c01003d1:	6a 07                	push   0x7
c01003d3:	e8 b3 1d 00 00       	call   c010218b <console_str>
c01003d8:	83 c4 0c             	add    esp,0xc
c01003db:	6a 0a                	push   0xa
c01003dd:	ff 35 10 7c 00 00    	push   DWORD PTR ds:0x7c10
c01003e3:	6a 07                	push   0x7
c01003e5:	e8 da 1d 00 00       	call   c01021c4 <console_int>
c01003ea:	59                   	pop    ecx
c01003eb:	5b                   	pop    ebx
c01003ec:	6a 0a                	push   0xa
c01003ee:	6a 07                	push   0x7
c01003f0:	e8 58 1d 00 00       	call   c010214d <console_char>
c01003f5:	c7 04 24 8a 61 10 c0 	mov    DWORD PTR [esp],0xc010618a
c01003fc:	68 ff ff ff 00       	push   0xffffff
c0100401:	6a 14                	push   0x14
c0100403:	6a 14                	push   0x14
c0100405:	68 ec ed 11 c0       	push   0xc011edec
c010040a:	e8 3b 2e 00 00       	call   c010324a <put_str_graphic>
c010040f:	83 c4 20             	add    esp,0x20
c0100412:	68 b1 61 10 c0       	push   0xc01061b1
c0100417:	68 a1 00 10 c0       	push   0xc01000a1
c010041c:	6a 1f                	push   0x1f
c010041e:	68 b8 61 10 c0       	push   0xc01061b8
c0100423:	e8 56 16 00 00       	call   c0101a7e <thread_start>
c0100428:	68 bc 61 10 c0       	push   0xc01061bc
c010042d:	68 20 00 10 c0       	push   0xc0100020
c0100432:	6a 1f                	push   0x1f
c0100434:	68 c3 61 10 c0       	push   0xc01061c3
c0100439:	e8 40 16 00 00       	call   c0101a7e <thread_start>
c010043e:	83 c4 20             	add    esp,0x20
c0100441:	eb fe                	jmp    c0100441 <kernel_main+0x12d>

c0100443 <u_prog_a>:
c0100443:	55                   	push   ebp
c0100444:	89 e5                	mov    ebp,esp
c0100446:	eb fe                	jmp    c0100446 <u_prog_a+0x3>

c0100448 <panic_spin>:
c0100448:	55                   	push   ebp
c0100449:	89 e5                	mov    ebp,esp
c010044b:	83 ec 08             	sub    esp,0x8
c010044e:	e8 66 09 00 00       	call   c0100db9 <intr_disable>
c0100453:	52                   	push   edx
c0100454:	52                   	push   edx
c0100455:	68 f0 61 10 c0       	push   0xc01061f0
c010045a:	6a 04                	push   0x4
c010045c:	e8 a4 28 00 00       	call   c0102d05 <put_str>
c0100461:	59                   	pop    ecx
c0100462:	58                   	pop    eax
c0100463:	68 f8 61 10 c0       	push   0xc01061f8
c0100468:	6a 04                	push   0x4
c010046a:	e8 96 28 00 00       	call   c0102d05 <put_str>
c010046f:	58                   	pop    eax
c0100470:	5a                   	pop    edx
c0100471:	ff 75 08             	push   DWORD PTR [ebp+0x8]
c0100474:	6a 04                	push   0x4
c0100476:	e8 8a 28 00 00       	call   c0102d05 <put_str>
c010047b:	59                   	pop    ecx
c010047c:	58                   	pop    eax
c010047d:	6a 0a                	push   0xa
c010047f:	6a 04                	push   0x4
c0100481:	e8 de 27 00 00       	call   c0102c64 <put_char>
c0100486:	58                   	pop    eax
c0100487:	5a                   	pop    edx
c0100488:	68 07 62 10 c0       	push   0xc0106207
c010048d:	6a 04                	push   0x4
c010048f:	e8 71 28 00 00       	call   c0102d05 <put_str>
c0100494:	59                   	pop    ecx
c0100495:	58                   	pop    eax
c0100496:	ff 75 10             	push   DWORD PTR [ebp+0x10]
c0100499:	6a 04                	push   0x4
c010049b:	e8 65 28 00 00       	call   c0102d05 <put_str>
c01004a0:	58                   	pop    eax
c01004a1:	5a                   	pop    edx
c01004a2:	6a 0a                	push   0xa
c01004a4:	6a 04                	push   0x4
c01004a6:	e8 b9 27 00 00       	call   c0102c64 <put_char>
c01004ab:	59                   	pop    ecx
c01004ac:	58                   	pop    eax
c01004ad:	68 16 62 10 c0       	push   0xc0106216
c01004b2:	6a 04                	push   0x4
c01004b4:	e8 4c 28 00 00       	call   c0102d05 <put_str>
c01004b9:	83 c4 0c             	add    esp,0xc
c01004bc:	6a 0a                	push   0xa
c01004be:	ff 75 0c             	push   DWORD PTR [ebp+0xc]
c01004c1:	6a 04                	push   0x4
c01004c3:	e8 9f 28 00 00       	call   c0102d67 <put_int>
c01004c8:	58                   	pop    eax
c01004c9:	5a                   	pop    edx
c01004ca:	6a 0a                	push   0xa
c01004cc:	6a 04                	push   0x4
c01004ce:	e8 91 27 00 00       	call   c0102c64 <put_char>
c01004d3:	59                   	pop    ecx
c01004d4:	58                   	pop    eax
c01004d5:	68 25 62 10 c0       	push   0xc0106225
c01004da:	6a 04                	push   0x4
c01004dc:	e8 24 28 00 00       	call   c0102d05 <put_str>
c01004e1:	58                   	pop    eax
c01004e2:	5a                   	pop    edx
c01004e3:	ff 75 14             	push   DWORD PTR [ebp+0x14]
c01004e6:	6a 04                	push   0x4
c01004e8:	e8 18 28 00 00       	call   c0102d05 <put_str>
c01004ed:	83 c4 10             	add    esp,0x10
c01004f0:	eb fe                	jmp    c01004f0 <panic_spin+0xa8>
	...

c01004f4 <init_all>:
c01004f4:	55                   	push   ebp
c01004f5:	89 e5                	mov    ebp,esp
c01004f7:	83 ec 10             	sub    esp,0x10
c01004fa:	68 5c 62 10 c0       	push   0xc010625c
c01004ff:	6a 02                	push   0x2
c0100501:	e8 ff 27 00 00       	call   c0102d05 <put_str>
c0100506:	e8 6c 08 00 00       	call   c0100d77 <init_idt>
c010050b:	e8 92 18 00 00       	call   c0101da2 <init_tss>
c0100510:	e8 87 20 00 00       	call   c010259c <init_pit>
c0100515:	e8 68 0d 00 00       	call   c0101282 <init_memory>
c010051a:	e8 f1 1d 00 00       	call   c0102310 <init_keyboard>
c010051f:	e8 ae 14 00 00       	call   c01019d2 <init_thread>
c0100524:	e8 0f 1c 00 00       	call   c0102138 <init_console>
c0100529:	c7 04 24 ec ed 11 c0 	mov    DWORD PTR [esp],0xc011edec
c0100530:	e8 99 2b 00 00       	call   c01030ce <init_screen>
c0100535:	58                   	pop    eax
c0100536:	5a                   	pop    edx
c0100537:	68 68 62 10 c0       	push   0xc0106268
c010053c:	6a 02                	push   0x2
c010053e:	e8 c2 27 00 00       	call   c0102d05 <put_str>
c0100543:	83 c4 10             	add    esp,0x10
c0100546:	c9                   	leave  
c0100547:	c3                   	ret    
	...

c0100550 <intr_exit>:
c0100550:	81 c4 04 00 00 00    	add    esp,0x4
c0100556:	61                   	popa   
c0100557:	0f a9                	pop    gs
c0100559:	0f a1                	pop    fs
c010055b:	07                   	pop    es
c010055c:	1f                   	pop    ds
c010055d:	81 c4 04 00 00 00    	add    esp,0x4
c0100563:	cf                   	iret   

c0100564 <asm_intr0x00_handler>:
c0100564:	68 00 00 00 00       	push   0x0
c0100569:	1e                   	push   ds
c010056a:	06                   	push   es
c010056b:	0f a0                	push   fs
c010056d:	0f a8                	push   gs
c010056f:	60                   	pusha  
c0100570:	68 00 00 00 00       	push   0x0
c0100575:	66 8c d0             	mov    ax,ss
c0100578:	8e d8                	mov    ds,eax
c010057a:	8e c0                	mov    es,eax
c010057c:	ff 15 10 75 10 c0    	call   DWORD PTR ds:0xc0107510
c0100582:	e9 c9 ff ff ff       	jmp    c0100550 <intr_exit>

c0100587 <asm_intr0x01_handler>:
c0100587:	68 00 00 00 00       	push   0x0
c010058c:	1e                   	push   ds
c010058d:	06                   	push   es
c010058e:	0f a0                	push   fs
c0100590:	0f a8                	push   gs
c0100592:	60                   	pusha  
c0100593:	68 01 00 00 00       	push   0x1
c0100598:	66 8c d0             	mov    ax,ss
c010059b:	8e d8                	mov    ds,eax
c010059d:	8e c0                	mov    es,eax
c010059f:	ff 15 14 75 10 c0    	call   DWORD PTR ds:0xc0107514
c01005a5:	e9 a6 ff ff ff       	jmp    c0100550 <intr_exit>

c01005aa <asm_intr0x02_handler>:
c01005aa:	68 00 00 00 00       	push   0x0
c01005af:	1e                   	push   ds
c01005b0:	06                   	push   es
c01005b1:	0f a0                	push   fs
c01005b3:	0f a8                	push   gs
c01005b5:	60                   	pusha  
c01005b6:	68 02 00 00 00       	push   0x2
c01005bb:	66 8c d0             	mov    ax,ss
c01005be:	8e d8                	mov    ds,eax
c01005c0:	8e c0                	mov    es,eax
c01005c2:	ff 15 18 75 10 c0    	call   DWORD PTR ds:0xc0107518
c01005c8:	e9 83 ff ff ff       	jmp    c0100550 <intr_exit>

c01005cd <asm_intr0x03_handler>:
c01005cd:	68 00 00 00 00       	push   0x0
c01005d2:	1e                   	push   ds
c01005d3:	06                   	push   es
c01005d4:	0f a0                	push   fs
c01005d6:	0f a8                	push   gs
c01005d8:	60                   	pusha  
c01005d9:	68 03 00 00 00       	push   0x3
c01005de:	66 8c d0             	mov    ax,ss
c01005e1:	8e d8                	mov    ds,eax
c01005e3:	8e c0                	mov    es,eax
c01005e5:	ff 15 1c 75 10 c0    	call   DWORD PTR ds:0xc010751c
c01005eb:	e9 60 ff ff ff       	jmp    c0100550 <intr_exit>

c01005f0 <asm_intr0x04_handler>:
c01005f0:	68 00 00 00 00       	push   0x0
c01005f5:	1e                   	push   ds
c01005f6:	06                   	push   es
c01005f7:	0f a0                	push   fs
c01005f9:	0f a8                	push   gs
c01005fb:	60                   	pusha  
c01005fc:	68 04 00 00 00       	push   0x4
c0100601:	66 8c d0             	mov    ax,ss
c0100604:	8e d8                	mov    ds,eax
c0100606:	8e c0                	mov    es,eax
c0100608:	ff 15 20 75 10 c0    	call   DWORD PTR ds:0xc0107520
c010060e:	e9 3d ff ff ff       	jmp    c0100550 <intr_exit>

c0100613 <asm_intr0x05_handler>:
c0100613:	68 00 00 00 00       	push   0x0
c0100618:	1e                   	push   ds
c0100619:	06                   	push   es
c010061a:	0f a0                	push   fs
c010061c:	0f a8                	push   gs
c010061e:	60                   	pusha  
c010061f:	68 05 00 00 00       	push   0x5
c0100624:	66 8c d0             	mov    ax,ss
c0100627:	8e d8                	mov    ds,eax
c0100629:	8e c0                	mov    es,eax
c010062b:	ff 15 24 75 10 c0    	call   DWORD PTR ds:0xc0107524
c0100631:	e9 1a ff ff ff       	jmp    c0100550 <intr_exit>

c0100636 <asm_intr0x06_handler>:
c0100636:	68 00 00 00 00       	push   0x0
c010063b:	1e                   	push   ds
c010063c:	06                   	push   es
c010063d:	0f a0                	push   fs
c010063f:	0f a8                	push   gs
c0100641:	60                   	pusha  
c0100642:	68 06 00 00 00       	push   0x6
c0100647:	66 8c d0             	mov    ax,ss
c010064a:	8e d8                	mov    ds,eax
c010064c:	8e c0                	mov    es,eax
c010064e:	ff 15 28 75 10 c0    	call   DWORD PTR ds:0xc0107528
c0100654:	e9 f7 fe ff ff       	jmp    c0100550 <intr_exit>

c0100659 <asm_intr0x07_handler>:
c0100659:	68 00 00 00 00       	push   0x0
c010065e:	1e                   	push   ds
c010065f:	06                   	push   es
c0100660:	0f a0                	push   fs
c0100662:	0f a8                	push   gs
c0100664:	60                   	pusha  
c0100665:	68 07 00 00 00       	push   0x7
c010066a:	66 8c d0             	mov    ax,ss
c010066d:	8e d8                	mov    ds,eax
c010066f:	8e c0                	mov    es,eax
c0100671:	ff 15 2c 75 10 c0    	call   DWORD PTR ds:0xc010752c
c0100677:	e9 d4 fe ff ff       	jmp    c0100550 <intr_exit>

c010067c <asm_intr0x08_handler>:
c010067c:	90                   	nop
c010067d:	1e                   	push   ds
c010067e:	06                   	push   es
c010067f:	0f a0                	push   fs
c0100681:	0f a8                	push   gs
c0100683:	60                   	pusha  
c0100684:	68 08 00 00 00       	push   0x8
c0100689:	66 8c d0             	mov    ax,ss
c010068c:	8e d8                	mov    ds,eax
c010068e:	8e c0                	mov    es,eax
c0100690:	ff 15 30 75 10 c0    	call   DWORD PTR ds:0xc0107530
c0100696:	e9 b5 fe ff ff       	jmp    c0100550 <intr_exit>

c010069b <asm_intr0x09_handler>:
c010069b:	68 00 00 00 00       	push   0x0
c01006a0:	1e                   	push   ds
c01006a1:	06                   	push   es
c01006a2:	0f a0                	push   fs
c01006a4:	0f a8                	push   gs
c01006a6:	60                   	pusha  
c01006a7:	68 09 00 00 00       	push   0x9
c01006ac:	66 8c d0             	mov    ax,ss
c01006af:	8e d8                	mov    ds,eax
c01006b1:	8e c0                	mov    es,eax
c01006b3:	ff 15 34 75 10 c0    	call   DWORD PTR ds:0xc0107534
c01006b9:	e9 92 fe ff ff       	jmp    c0100550 <intr_exit>

c01006be <asm_intr0x0a_handler>:
c01006be:	90                   	nop
c01006bf:	1e                   	push   ds
c01006c0:	06                   	push   es
c01006c1:	0f a0                	push   fs
c01006c3:	0f a8                	push   gs
c01006c5:	60                   	pusha  
c01006c6:	68 0a 00 00 00       	push   0xa
c01006cb:	66 8c d0             	mov    ax,ss
c01006ce:	8e d8                	mov    ds,eax
c01006d0:	8e c0                	mov    es,eax
c01006d2:	ff 15 38 75 10 c0    	call   DWORD PTR ds:0xc0107538
c01006d8:	e9 73 fe ff ff       	jmp    c0100550 <intr_exit>

c01006dd <asm_intr0x0b_handler>:
c01006dd:	90                   	nop
c01006de:	1e                   	push   ds
c01006df:	06                   	push   es
c01006e0:	0f a0                	push   fs
c01006e2:	0f a8                	push   gs
c01006e4:	60                   	pusha  
c01006e5:	68 0b 00 00 00       	push   0xb
c01006ea:	66 8c d0             	mov    ax,ss
c01006ed:	8e d8                	mov    ds,eax
c01006ef:	8e c0                	mov    es,eax
c01006f1:	ff 15 3c 75 10 c0    	call   DWORD PTR ds:0xc010753c
c01006f7:	e9 54 fe ff ff       	jmp    c0100550 <intr_exit>

c01006fc <asm_intr0x0c_handler>:
c01006fc:	68 00 00 00 00       	push   0x0
c0100701:	1e                   	push   ds
c0100702:	06                   	push   es
c0100703:	0f a0                	push   fs
c0100705:	0f a8                	push   gs
c0100707:	60                   	pusha  
c0100708:	68 0c 00 00 00       	push   0xc
c010070d:	66 8c d0             	mov    ax,ss
c0100710:	8e d8                	mov    ds,eax
c0100712:	8e c0                	mov    es,eax
c0100714:	ff 15 40 75 10 c0    	call   DWORD PTR ds:0xc0107540
c010071a:	e9 31 fe ff ff       	jmp    c0100550 <intr_exit>

c010071f <asm_intr0x0d_handler>:
c010071f:	90                   	nop
c0100720:	1e                   	push   ds
c0100721:	06                   	push   es
c0100722:	0f a0                	push   fs
c0100724:	0f a8                	push   gs
c0100726:	60                   	pusha  
c0100727:	68 0d 00 00 00       	push   0xd
c010072c:	66 8c d0             	mov    ax,ss
c010072f:	8e d8                	mov    ds,eax
c0100731:	8e c0                	mov    es,eax
c0100733:	ff 15 44 75 10 c0    	call   DWORD PTR ds:0xc0107544
c0100739:	e9 12 fe ff ff       	jmp    c0100550 <intr_exit>

c010073e <asm_intr0x0e_handler>:
c010073e:	90                   	nop
c010073f:	1e                   	push   ds
c0100740:	06                   	push   es
c0100741:	0f a0                	push   fs
c0100743:	0f a8                	push   gs
c0100745:	60                   	pusha  
c0100746:	68 0e 00 00 00       	push   0xe
c010074b:	66 8c d0             	mov    ax,ss
c010074e:	8e d8                	mov    ds,eax
c0100750:	8e c0                	mov    es,eax
c0100752:	ff 15 48 75 10 c0    	call   DWORD PTR ds:0xc0107548
c0100758:	e9 f3 fd ff ff       	jmp    c0100550 <intr_exit>

c010075d <asm_intr0x0f_handler>:
c010075d:	68 00 00 00 00       	push   0x0
c0100762:	1e                   	push   ds
c0100763:	06                   	push   es
c0100764:	0f a0                	push   fs
c0100766:	0f a8                	push   gs
c0100768:	60                   	pusha  
c0100769:	68 0f 00 00 00       	push   0xf
c010076e:	66 8c d0             	mov    ax,ss
c0100771:	8e d8                	mov    ds,eax
c0100773:	8e c0                	mov    es,eax
c0100775:	ff 15 4c 75 10 c0    	call   DWORD PTR ds:0xc010754c
c010077b:	e9 d0 fd ff ff       	jmp    c0100550 <intr_exit>

c0100780 <asm_intr0x10_handler>:
c0100780:	68 00 00 00 00       	push   0x0
c0100785:	1e                   	push   ds
c0100786:	06                   	push   es
c0100787:	0f a0                	push   fs
c0100789:	0f a8                	push   gs
c010078b:	60                   	pusha  
c010078c:	68 10 00 00 00       	push   0x10
c0100791:	66 8c d0             	mov    ax,ss
c0100794:	8e d8                	mov    ds,eax
c0100796:	8e c0                	mov    es,eax
c0100798:	ff 15 50 75 10 c0    	call   DWORD PTR ds:0xc0107550
c010079e:	e9 ad fd ff ff       	jmp    c0100550 <intr_exit>

c01007a3 <asm_intr0x11_handler>:
c01007a3:	90                   	nop
c01007a4:	1e                   	push   ds
c01007a5:	06                   	push   es
c01007a6:	0f a0                	push   fs
c01007a8:	0f a8                	push   gs
c01007aa:	60                   	pusha  
c01007ab:	68 11 00 00 00       	push   0x11
c01007b0:	66 8c d0             	mov    ax,ss
c01007b3:	8e d8                	mov    ds,eax
c01007b5:	8e c0                	mov    es,eax
c01007b7:	ff 15 54 75 10 c0    	call   DWORD PTR ds:0xc0107554
c01007bd:	e9 8e fd ff ff       	jmp    c0100550 <intr_exit>

c01007c2 <asm_intr0x12_handler>:
c01007c2:	68 00 00 00 00       	push   0x0
c01007c7:	1e                   	push   ds
c01007c8:	06                   	push   es
c01007c9:	0f a0                	push   fs
c01007cb:	0f a8                	push   gs
c01007cd:	60                   	pusha  
c01007ce:	68 12 00 00 00       	push   0x12
c01007d3:	66 8c d0             	mov    ax,ss
c01007d6:	8e d8                	mov    ds,eax
c01007d8:	8e c0                	mov    es,eax
c01007da:	ff 15 58 75 10 c0    	call   DWORD PTR ds:0xc0107558
c01007e0:	e9 6b fd ff ff       	jmp    c0100550 <intr_exit>

c01007e5 <asm_intr0x13_handler>:
c01007e5:	68 00 00 00 00       	push   0x0
c01007ea:	1e                   	push   ds
c01007eb:	06                   	push   es
c01007ec:	0f a0                	push   fs
c01007ee:	0f a8                	push   gs
c01007f0:	60                   	pusha  
c01007f1:	68 13 00 00 00       	push   0x13
c01007f6:	66 8c d0             	mov    ax,ss
c01007f9:	8e d8                	mov    ds,eax
c01007fb:	8e c0                	mov    es,eax
c01007fd:	ff 15 5c 75 10 c0    	call   DWORD PTR ds:0xc010755c
c0100803:	e9 48 fd ff ff       	jmp    c0100550 <intr_exit>

c0100808 <asm_intr0x14_handler>:
c0100808:	68 00 00 00 00       	push   0x0
c010080d:	1e                   	push   ds
c010080e:	06                   	push   es
c010080f:	0f a0                	push   fs
c0100811:	0f a8                	push   gs
c0100813:	60                   	pusha  
c0100814:	68 14 00 00 00       	push   0x14
c0100819:	66 8c d0             	mov    ax,ss
c010081c:	8e d8                	mov    ds,eax
c010081e:	8e c0                	mov    es,eax
c0100820:	ff 15 60 75 10 c0    	call   DWORD PTR ds:0xc0107560
c0100826:	e9 25 fd ff ff       	jmp    c0100550 <intr_exit>

c010082b <asm_intr0x15_handler>:
c010082b:	68 00 00 00 00       	push   0x0
c0100830:	1e                   	push   ds
c0100831:	06                   	push   es
c0100832:	0f a0                	push   fs
c0100834:	0f a8                	push   gs
c0100836:	60                   	pusha  
c0100837:	68 15 00 00 00       	push   0x15
c010083c:	66 8c d0             	mov    ax,ss
c010083f:	8e d8                	mov    ds,eax
c0100841:	8e c0                	mov    es,eax
c0100843:	ff 15 64 75 10 c0    	call   DWORD PTR ds:0xc0107564
c0100849:	e9 02 fd ff ff       	jmp    c0100550 <intr_exit>

c010084e <asm_intr0x16_handler>:
c010084e:	68 00 00 00 00       	push   0x0
c0100853:	1e                   	push   ds
c0100854:	06                   	push   es
c0100855:	0f a0                	push   fs
c0100857:	0f a8                	push   gs
c0100859:	60                   	pusha  
c010085a:	68 16 00 00 00       	push   0x16
c010085f:	66 8c d0             	mov    ax,ss
c0100862:	8e d8                	mov    ds,eax
c0100864:	8e c0                	mov    es,eax
c0100866:	ff 15 68 75 10 c0    	call   DWORD PTR ds:0xc0107568
c010086c:	e9 df fc ff ff       	jmp    c0100550 <intr_exit>

c0100871 <asm_intr0x17_handler>:
c0100871:	68 00 00 00 00       	push   0x0
c0100876:	1e                   	push   ds
c0100877:	06                   	push   es
c0100878:	0f a0                	push   fs
c010087a:	0f a8                	push   gs
c010087c:	60                   	pusha  
c010087d:	68 17 00 00 00       	push   0x17
c0100882:	66 8c d0             	mov    ax,ss
c0100885:	8e d8                	mov    ds,eax
c0100887:	8e c0                	mov    es,eax
c0100889:	ff 15 6c 75 10 c0    	call   DWORD PTR ds:0xc010756c
c010088f:	e9 bc fc ff ff       	jmp    c0100550 <intr_exit>

c0100894 <asm_intr0x18_handler>:
c0100894:	90                   	nop
c0100895:	1e                   	push   ds
c0100896:	06                   	push   es
c0100897:	0f a0                	push   fs
c0100899:	0f a8                	push   gs
c010089b:	60                   	pusha  
c010089c:	68 18 00 00 00       	push   0x18
c01008a1:	66 8c d0             	mov    ax,ss
c01008a4:	8e d8                	mov    ds,eax
c01008a6:	8e c0                	mov    es,eax
c01008a8:	ff 15 70 75 10 c0    	call   DWORD PTR ds:0xc0107570
c01008ae:	e9 9d fc ff ff       	jmp    c0100550 <intr_exit>

c01008b3 <asm_intr0x19_handler>:
c01008b3:	68 00 00 00 00       	push   0x0
c01008b8:	1e                   	push   ds
c01008b9:	06                   	push   es
c01008ba:	0f a0                	push   fs
c01008bc:	0f a8                	push   gs
c01008be:	60                   	pusha  
c01008bf:	68 19 00 00 00       	push   0x19
c01008c4:	66 8c d0             	mov    ax,ss
c01008c7:	8e d8                	mov    ds,eax
c01008c9:	8e c0                	mov    es,eax
c01008cb:	ff 15 74 75 10 c0    	call   DWORD PTR ds:0xc0107574
c01008d1:	e9 7a fc ff ff       	jmp    c0100550 <intr_exit>

c01008d6 <asm_intr0x1a_handler>:
c01008d6:	90                   	nop
c01008d7:	1e                   	push   ds
c01008d8:	06                   	push   es
c01008d9:	0f a0                	push   fs
c01008db:	0f a8                	push   gs
c01008dd:	60                   	pusha  
c01008de:	68 1a 00 00 00       	push   0x1a
c01008e3:	66 8c d0             	mov    ax,ss
c01008e6:	8e d8                	mov    ds,eax
c01008e8:	8e c0                	mov    es,eax
c01008ea:	ff 15 78 75 10 c0    	call   DWORD PTR ds:0xc0107578
c01008f0:	e9 5b fc ff ff       	jmp    c0100550 <intr_exit>

c01008f5 <asm_intr0x1b_handler>:
c01008f5:	90                   	nop
c01008f6:	1e                   	push   ds
c01008f7:	06                   	push   es
c01008f8:	0f a0                	push   fs
c01008fa:	0f a8                	push   gs
c01008fc:	60                   	pusha  
c01008fd:	68 1b 00 00 00       	push   0x1b
c0100902:	66 8c d0             	mov    ax,ss
c0100905:	8e d8                	mov    ds,eax
c0100907:	8e c0                	mov    es,eax
c0100909:	ff 15 7c 75 10 c0    	call   DWORD PTR ds:0xc010757c
c010090f:	e9 3c fc ff ff       	jmp    c0100550 <intr_exit>

c0100914 <asm_intr0x1c_handler>:
c0100914:	68 00 00 00 00       	push   0x0
c0100919:	1e                   	push   ds
c010091a:	06                   	push   es
c010091b:	0f a0                	push   fs
c010091d:	0f a8                	push   gs
c010091f:	60                   	pusha  
c0100920:	68 1c 00 00 00       	push   0x1c
c0100925:	66 8c d0             	mov    ax,ss
c0100928:	8e d8                	mov    ds,eax
c010092a:	8e c0                	mov    es,eax
c010092c:	ff 15 80 75 10 c0    	call   DWORD PTR ds:0xc0107580
c0100932:	e9 19 fc ff ff       	jmp    c0100550 <intr_exit>

c0100937 <asm_intr0x1d_handler>:
c0100937:	90                   	nop
c0100938:	1e                   	push   ds
c0100939:	06                   	push   es
c010093a:	0f a0                	push   fs
c010093c:	0f a8                	push   gs
c010093e:	60                   	pusha  
c010093f:	68 1d 00 00 00       	push   0x1d
c0100944:	66 8c d0             	mov    ax,ss
c0100947:	8e d8                	mov    ds,eax
c0100949:	8e c0                	mov    es,eax
c010094b:	ff 15 84 75 10 c0    	call   DWORD PTR ds:0xc0107584
c0100951:	e9 fa fb ff ff       	jmp    c0100550 <intr_exit>

c0100956 <asm_intr0x1e_handler>:
c0100956:	90                   	nop
c0100957:	1e                   	push   ds
c0100958:	06                   	push   es
c0100959:	0f a0                	push   fs
c010095b:	0f a8                	push   gs
c010095d:	60                   	pusha  
c010095e:	68 1e 00 00 00       	push   0x1e
c0100963:	66 8c d0             	mov    ax,ss
c0100966:	8e d8                	mov    ds,eax
c0100968:	8e c0                	mov    es,eax
c010096a:	ff 15 88 75 10 c0    	call   DWORD PTR ds:0xc0107588
c0100970:	e9 db fb ff ff       	jmp    c0100550 <intr_exit>

c0100975 <asm_intr0x1f_handler>:
c0100975:	68 00 00 00 00       	push   0x0
c010097a:	1e                   	push   ds
c010097b:	06                   	push   es
c010097c:	0f a0                	push   fs
c010097e:	0f a8                	push   gs
c0100980:	60                   	pusha  
c0100981:	68 1f 00 00 00       	push   0x1f
c0100986:	66 8c d0             	mov    ax,ss
c0100989:	8e d8                	mov    ds,eax
c010098b:	8e c0                	mov    es,eax
c010098d:	ff 15 8c 75 10 c0    	call   DWORD PTR ds:0xc010758c
c0100993:	e9 b8 fb ff ff       	jmp    c0100550 <intr_exit>

c0100998 <asm_intr0x20_handler>:
c0100998:	68 00 00 00 00       	push   0x0
c010099d:	1e                   	push   ds
c010099e:	06                   	push   es
c010099f:	0f a0                	push   fs
c01009a1:	0f a8                	push   gs
c01009a3:	60                   	pusha  
c01009a4:	68 20 00 00 00       	push   0x20
c01009a9:	66 8c d0             	mov    ax,ss
c01009ac:	8e d8                	mov    ds,eax
c01009ae:	8e c0                	mov    es,eax
c01009b0:	ff 15 90 75 10 c0    	call   DWORD PTR ds:0xc0107590
c01009b6:	e9 95 fb ff ff       	jmp    c0100550 <intr_exit>

c01009bb <asm_intr0x21_handler>:
c01009bb:	68 00 00 00 00       	push   0x0
c01009c0:	1e                   	push   ds
c01009c1:	06                   	push   es
c01009c2:	0f a0                	push   fs
c01009c4:	0f a8                	push   gs
c01009c6:	60                   	pusha  
c01009c7:	68 21 00 00 00       	push   0x21
c01009cc:	66 8c d0             	mov    ax,ss
c01009cf:	8e d8                	mov    ds,eax
c01009d1:	8e c0                	mov    es,eax
c01009d3:	ff 15 94 75 10 c0    	call   DWORD PTR ds:0xc0107594
c01009d9:	e9 72 fb ff ff       	jmp    c0100550 <intr_exit>

c01009de <asm_intr0x22_handler>:
c01009de:	68 00 00 00 00       	push   0x0
c01009e3:	1e                   	push   ds
c01009e4:	06                   	push   es
c01009e5:	0f a0                	push   fs
c01009e7:	0f a8                	push   gs
c01009e9:	60                   	pusha  
c01009ea:	68 22 00 00 00       	push   0x22
c01009ef:	66 8c d0             	mov    ax,ss
c01009f2:	8e d8                	mov    ds,eax
c01009f4:	8e c0                	mov    es,eax
c01009f6:	ff 15 98 75 10 c0    	call   DWORD PTR ds:0xc0107598
c01009fc:	e9 4f fb ff ff       	jmp    c0100550 <intr_exit>

c0100a01 <asm_intr0x23_handler>:
c0100a01:	68 00 00 00 00       	push   0x0
c0100a06:	1e                   	push   ds
c0100a07:	06                   	push   es
c0100a08:	0f a0                	push   fs
c0100a0a:	0f a8                	push   gs
c0100a0c:	60                   	pusha  
c0100a0d:	68 23 00 00 00       	push   0x23
c0100a12:	66 8c d0             	mov    ax,ss
c0100a15:	8e d8                	mov    ds,eax
c0100a17:	8e c0                	mov    es,eax
c0100a19:	ff 15 9c 75 10 c0    	call   DWORD PTR ds:0xc010759c
c0100a1f:	e9 2c fb ff ff       	jmp    c0100550 <intr_exit>

c0100a24 <asm_intr0x24_handler>:
c0100a24:	68 00 00 00 00       	push   0x0
c0100a29:	1e                   	push   ds
c0100a2a:	06                   	push   es
c0100a2b:	0f a0                	push   fs
c0100a2d:	0f a8                	push   gs
c0100a2f:	60                   	pusha  
c0100a30:	68 24 00 00 00       	push   0x24
c0100a35:	66 8c d0             	mov    ax,ss
c0100a38:	8e d8                	mov    ds,eax
c0100a3a:	8e c0                	mov    es,eax
c0100a3c:	ff 15 a0 75 10 c0    	call   DWORD PTR ds:0xc01075a0
c0100a42:	e9 09 fb ff ff       	jmp    c0100550 <intr_exit>

c0100a47 <asm_intr0x25_handler>:
c0100a47:	68 00 00 00 00       	push   0x0
c0100a4c:	1e                   	push   ds
c0100a4d:	06                   	push   es
c0100a4e:	0f a0                	push   fs
c0100a50:	0f a8                	push   gs
c0100a52:	60                   	pusha  
c0100a53:	68 25 00 00 00       	push   0x25
c0100a58:	66 8c d0             	mov    ax,ss
c0100a5b:	8e d8                	mov    ds,eax
c0100a5d:	8e c0                	mov    es,eax
c0100a5f:	ff 15 a4 75 10 c0    	call   DWORD PTR ds:0xc01075a4
c0100a65:	e9 e6 fa ff ff       	jmp    c0100550 <intr_exit>

c0100a6a <asm_intr0x26_handler>:
c0100a6a:	68 00 00 00 00       	push   0x0
c0100a6f:	1e                   	push   ds
c0100a70:	06                   	push   es
c0100a71:	0f a0                	push   fs
c0100a73:	0f a8                	push   gs
c0100a75:	60                   	pusha  
c0100a76:	68 26 00 00 00       	push   0x26
c0100a7b:	66 8c d0             	mov    ax,ss
c0100a7e:	8e d8                	mov    ds,eax
c0100a80:	8e c0                	mov    es,eax
c0100a82:	ff 15 a8 75 10 c0    	call   DWORD PTR ds:0xc01075a8
c0100a88:	e9 c3 fa ff ff       	jmp    c0100550 <intr_exit>

c0100a8d <asm_intr0x27_handler>:
c0100a8d:	68 00 00 00 00       	push   0x0
c0100a92:	1e                   	push   ds
c0100a93:	06                   	push   es
c0100a94:	0f a0                	push   fs
c0100a96:	0f a8                	push   gs
c0100a98:	60                   	pusha  
c0100a99:	68 27 00 00 00       	push   0x27
c0100a9e:	66 8c d0             	mov    ax,ss
c0100aa1:	8e d8                	mov    ds,eax
c0100aa3:	8e c0                	mov    es,eax
c0100aa5:	ff 15 ac 75 10 c0    	call   DWORD PTR ds:0xc01075ac
c0100aab:	e9 a0 fa ff ff       	jmp    c0100550 <intr_exit>

c0100ab0 <asm_intr0x28_handler>:
c0100ab0:	68 00 00 00 00       	push   0x0
c0100ab5:	1e                   	push   ds
c0100ab6:	06                   	push   es
c0100ab7:	0f a0                	push   fs
c0100ab9:	0f a8                	push   gs
c0100abb:	60                   	pusha  
c0100abc:	68 28 00 00 00       	push   0x28
c0100ac1:	66 8c d0             	mov    ax,ss
c0100ac4:	8e d8                	mov    ds,eax
c0100ac6:	8e c0                	mov    es,eax
c0100ac8:	ff 15 b0 75 10 c0    	call   DWORD PTR ds:0xc01075b0
c0100ace:	e9 7d fa ff ff       	jmp    c0100550 <intr_exit>

c0100ad3 <asm_intr0x29_handler>:
c0100ad3:	68 00 00 00 00       	push   0x0
c0100ad8:	1e                   	push   ds
c0100ad9:	06                   	push   es
c0100ada:	0f a0                	push   fs
c0100adc:	0f a8                	push   gs
c0100ade:	60                   	pusha  
c0100adf:	68 29 00 00 00       	push   0x29
c0100ae4:	66 8c d0             	mov    ax,ss
c0100ae7:	8e d8                	mov    ds,eax
c0100ae9:	8e c0                	mov    es,eax
c0100aeb:	ff 15 b4 75 10 c0    	call   DWORD PTR ds:0xc01075b4
c0100af1:	e9 5a fa ff ff       	jmp    c0100550 <intr_exit>

c0100af6 <asm_intr0x2a_handler>:
c0100af6:	68 00 00 00 00       	push   0x0
c0100afb:	1e                   	push   ds
c0100afc:	06                   	push   es
c0100afd:	0f a0                	push   fs
c0100aff:	0f a8                	push   gs
c0100b01:	60                   	pusha  
c0100b02:	68 2a 00 00 00       	push   0x2a
c0100b07:	66 8c d0             	mov    ax,ss
c0100b0a:	8e d8                	mov    ds,eax
c0100b0c:	8e c0                	mov    es,eax
c0100b0e:	ff 15 b8 75 10 c0    	call   DWORD PTR ds:0xc01075b8
c0100b14:	e9 37 fa ff ff       	jmp    c0100550 <intr_exit>

c0100b19 <asm_intr0x2b_handler>:
c0100b19:	68 00 00 00 00       	push   0x0
c0100b1e:	1e                   	push   ds
c0100b1f:	06                   	push   es
c0100b20:	0f a0                	push   fs
c0100b22:	0f a8                	push   gs
c0100b24:	60                   	pusha  
c0100b25:	68 2b 00 00 00       	push   0x2b
c0100b2a:	66 8c d0             	mov    ax,ss
c0100b2d:	8e d8                	mov    ds,eax
c0100b2f:	8e c0                	mov    es,eax
c0100b31:	ff 15 bc 75 10 c0    	call   DWORD PTR ds:0xc01075bc
c0100b37:	e9 14 fa ff ff       	jmp    c0100550 <intr_exit>

c0100b3c <asm_intr0x2c_handler>:
c0100b3c:	68 00 00 00 00       	push   0x0
c0100b41:	1e                   	push   ds
c0100b42:	06                   	push   es
c0100b43:	0f a0                	push   fs
c0100b45:	0f a8                	push   gs
c0100b47:	60                   	pusha  
c0100b48:	68 2c 00 00 00       	push   0x2c
c0100b4d:	66 8c d0             	mov    ax,ss
c0100b50:	8e d8                	mov    ds,eax
c0100b52:	8e c0                	mov    es,eax
c0100b54:	ff 15 c0 75 10 c0    	call   DWORD PTR ds:0xc01075c0
c0100b5a:	e9 f1 f9 ff ff       	jmp    c0100550 <intr_exit>

c0100b5f <asm_intr0x2d_handler>:
c0100b5f:	68 00 00 00 00       	push   0x0
c0100b64:	1e                   	push   ds
c0100b65:	06                   	push   es
c0100b66:	0f a0                	push   fs
c0100b68:	0f a8                	push   gs
c0100b6a:	60                   	pusha  
c0100b6b:	68 2d 00 00 00       	push   0x2d
c0100b70:	66 8c d0             	mov    ax,ss
c0100b73:	8e d8                	mov    ds,eax
c0100b75:	8e c0                	mov    es,eax
c0100b77:	ff 15 c4 75 10 c0    	call   DWORD PTR ds:0xc01075c4
c0100b7d:	e9 ce f9 ff ff       	jmp    c0100550 <intr_exit>

c0100b82 <asm_intr0x2e_handler>:
c0100b82:	68 00 00 00 00       	push   0x0
c0100b87:	1e                   	push   ds
c0100b88:	06                   	push   es
c0100b89:	0f a0                	push   fs
c0100b8b:	0f a8                	push   gs
c0100b8d:	60                   	pusha  
c0100b8e:	68 2e 00 00 00       	push   0x2e
c0100b93:	66 8c d0             	mov    ax,ss
c0100b96:	8e d8                	mov    ds,eax
c0100b98:	8e c0                	mov    es,eax
c0100b9a:	ff 15 c8 75 10 c0    	call   DWORD PTR ds:0xc01075c8
c0100ba0:	e9 ab f9 ff ff       	jmp    c0100550 <intr_exit>

c0100ba5 <asm_intr0x2f_handler>:
c0100ba5:	68 00 00 00 00       	push   0x0
c0100baa:	1e                   	push   ds
c0100bab:	06                   	push   es
c0100bac:	0f a0                	push   fs
c0100bae:	0f a8                	push   gs
c0100bb0:	60                   	pusha  
c0100bb1:	68 2f 00 00 00       	push   0x2f
c0100bb6:	66 8c d0             	mov    ax,ss
c0100bb9:	8e d8                	mov    ds,eax
c0100bbb:	8e c0                	mov    es,eax
c0100bbd:	ff 15 cc 75 10 c0    	call   DWORD PTR ds:0xc01075cc
c0100bc3:	e9 88 f9 ff ff       	jmp    c0100550 <intr_exit>

c0100bc8 <intr0x27_handler>:
c0100bc8:	55                   	push   ebp
c0100bc9:	ba 20 00 00 00       	mov    edx,0x20
c0100bce:	89 e5                	mov    ebp,esp
c0100bd0:	b8 20 00 00 00       	mov    eax,0x20
c0100bd5:	ee                   	out    dx,al
c0100bd6:	5d                   	pop    ebp
c0100bd7:	c3                   	ret    

c0100bd8 <init_pic>:
c0100bd8:	55                   	push   ebp
c0100bd9:	ba 21 00 00 00       	mov    edx,0x21
c0100bde:	89 e5                	mov    ebp,esp
c0100be0:	b8 ff 00 00 00       	mov    eax,0xff
c0100be5:	ee                   	out    dx,al
c0100be6:	b2 a1                	mov    dl,0xa1
c0100be8:	ee                   	out    dx,al
c0100be9:	b2 20                	mov    dl,0x20
c0100beb:	b0 11                	mov    al,0x11
c0100bed:	ee                   	out    dx,al
c0100bee:	b2 21                	mov    dl,0x21
c0100bf0:	b0 20                	mov    al,0x20
c0100bf2:	ee                   	out    dx,al
c0100bf3:	b0 04                	mov    al,0x4
c0100bf5:	ee                   	out    dx,al
c0100bf6:	b0 01                	mov    al,0x1
c0100bf8:	ee                   	out    dx,al
c0100bf9:	b2 a0                	mov    dl,0xa0
c0100bfb:	b0 11                	mov    al,0x11
c0100bfd:	ee                   	out    dx,al
c0100bfe:	b2 a1                	mov    dl,0xa1
c0100c00:	b0 28                	mov    al,0x28
c0100c02:	ee                   	out    dx,al
c0100c03:	b0 02                	mov    al,0x2
c0100c05:	ee                   	out    dx,al
c0100c06:	b0 01                	mov    al,0x1
c0100c08:	ee                   	out    dx,al
c0100c09:	b2 21                	mov    dl,0x21
c0100c0b:	b0 fc                	mov    al,0xfc
c0100c0d:	ee                   	out    dx,al
c0100c0e:	b2 a1                	mov    dl,0xa1
c0100c10:	b0 ff                	mov    al,0xff
c0100c12:	ee                   	out    dx,al
c0100c13:	5d                   	pop    ebp
c0100c14:	c3                   	ret    

c0100c15 <idt_desc_init>:
c0100c15:	55                   	push   ebp
c0100c16:	31 c0                	xor    eax,eax
c0100c18:	89 e5                	mov    ebp,esp
c0100c1a:	c7 04 85 10 75 10 c0 	mov    DWORD PTR [eax*4-0x3fef8af0],0xc0100dcd
c0100c21:	cd 0d 10 c0 
c0100c25:	40                   	inc    eax
c0100c26:	83 f8 2f             	cmp    eax,0x2f
c0100c29:	75 ef                	jne    c0100c1a <idt_desc_init+0x5>
c0100c2b:	c7 05 90 75 10 c0 b4 	mov    DWORD PTR ds:0xc0107590,0xc01025b4
c0100c32:	25 10 c0 
c0100c35:	30 c0                	xor    al,al
c0100c37:	c7 05 94 75 10 c0 2e 	mov    DWORD PTR ds:0xc0107594,0xc010232e
c0100c3e:	23 10 c0 
c0100c41:	c7 05 ac 75 10 c0 c8 	mov    DWORD PTR ds:0xc01075ac,0xc0100bc8
c0100c48:	0b 10 c0 
c0100c4b:	8b 0c 85 90 32 10 c0 	mov    ecx,DWORD PTR [eax*4-0x3fefcd70]
c0100c52:	8d 14 c5 98 73 10 c0 	lea    edx,[eax*8-0x3fef8c68]
c0100c59:	66 89 0c c5 98 73 10 	mov    WORD PTR [eax*8-0x3fef8c68],cx
c0100c60:	c0 
c0100c61:	40                   	inc    eax
c0100c62:	c1 e9 10             	shr    ecx,0x10
c0100c65:	83 f8 2f             	cmp    eax,0x2f
c0100c68:	66 c7 42 02 08 00    	mov    WORD PTR [edx+0x2],0x8
c0100c6e:	c6 42 04 00          	mov    BYTE PTR [edx+0x4],0x0
c0100c72:	c6 42 05 8e          	mov    BYTE PTR [edx+0x5],0x8e
c0100c76:	66 89 4a 06          	mov    WORD PTR [edx+0x6],cx
c0100c7a:	75 cf                	jne    c0100c4b <idt_desc_init+0x36>
c0100c7c:	5d                   	pop    ebp
c0100c7d:	c3                   	ret    

c0100c7e <set_gatedesc>:
c0100c7e:	55                   	push   ebp
c0100c7f:	89 e5                	mov    ebp,esp
c0100c81:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0100c84:	53                   	push   ebx
c0100c85:	8b 4d 14             	mov    ecx,DWORD PTR [ebp+0x14]
c0100c88:	8b 5d 10             	mov    ebx,DWORD PTR [ebp+0x10]
c0100c8b:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
c0100c8e:	88 48 05             	mov    BYTE PTR [eax+0x5],cl
c0100c91:	66 89 58 02          	mov    WORD PTR [eax+0x2],bx
c0100c95:	89 cb                	mov    ebx,ecx
c0100c97:	66 89 10             	mov    WORD PTR [eax],dx
c0100c9a:	c1 fb 08             	sar    ebx,0x8
c0100c9d:	c1 ea 10             	shr    edx,0x10
c0100ca0:	88 58 04             	mov    BYTE PTR [eax+0x4],bl
c0100ca3:	66 89 50 06          	mov    WORD PTR [eax+0x6],dx
c0100ca7:	5b                   	pop    ebx
c0100ca8:	5d                   	pop    ebp
c0100ca9:	c3                   	ret    

c0100caa <exception_init>:
c0100caa:	55                   	push   ebp
c0100cab:	89 e5                	mov    ebp,esp
c0100cad:	c7 05 dc 72 10 c0 a4 	mov    DWORD PTR ds:0xc01072dc,0xc01062a4
c0100cb4:	62 10 c0 
c0100cb7:	c7 05 e0 72 10 c0 b5 	mov    DWORD PTR ds:0xc01072e0,0xc01062b5
c0100cbe:	62 10 c0 
c0100cc1:	c7 05 e4 72 10 c0 c9 	mov    DWORD PTR ds:0xc01072e4,0xc01062c9
c0100cc8:	62 10 c0 
c0100ccb:	c7 05 e8 72 10 c0 d7 	mov    DWORD PTR ds:0xc01072e8,0xc01062d7
c0100cd2:	62 10 c0 
c0100cd5:	c7 05 ec 72 10 c0 f0 	mov    DWORD PTR ds:0xc01072ec,0xc01062f0
c0100cdc:	62 10 c0 
c0100cdf:	c7 05 f0 72 10 c0 07 	mov    DWORD PTR ds:0xc01072f0,0xc0106307
c0100ce6:	63 10 c0 
c0100ce9:	c7 05 f4 72 10 c0 2a 	mov    DWORD PTR ds:0xc01072f4,0xc010632a
c0100cf0:	63 10 c0 
c0100cf3:	c7 05 f8 72 10 c0 47 	mov    DWORD PTR ds:0xc01072f8,0xc0106347
c0100cfa:	63 10 c0 
c0100cfd:	c7 05 fc 72 10 c0 6a 	mov    DWORD PTR ds:0xc01072fc,0xc010636a
c0100d04:	63 10 c0 
c0100d07:	c7 05 00 73 10 c0 85 	mov    DWORD PTR ds:0xc0107300,0xc0106385
c0100d0e:	63 10 c0 
c0100d11:	c7 05 04 73 10 c0 a1 	mov    DWORD PTR ds:0xc0107304,0xc01063a1
c0100d18:	63 10 c0 
c0100d1b:	c7 05 08 73 10 c0 bb 	mov    DWORD PTR ds:0xc0107308,0xc01063bb
c0100d22:	63 10 c0 
c0100d25:	c7 05 0c 73 10 c0 d3 	mov    DWORD PTR ds:0xc010730c,0xc01063d3
c0100d2c:	63 10 c0 
c0100d2f:	c7 05 10 73 10 c0 ed 	mov    DWORD PTR ds:0xc0107310,0xc01063ed
c0100d36:	63 10 c0 
c0100d39:	c7 05 14 73 10 c0 0e 	mov    DWORD PTR ds:0xc0107314,0xc010640e
c0100d40:	64 10 c0 
c0100d43:	c7 05 18 73 10 c0 27 	mov    DWORD PTR ds:0xc0107318,0xc0106427
c0100d4a:	64 10 c0 
c0100d4d:	c7 05 1c 73 10 c0 30 	mov    DWORD PTR ds:0xc010731c,0xc0106430
c0100d54:	64 10 c0 
c0100d57:	c7 05 20 73 10 c0 51 	mov    DWORD PTR ds:0xc0107320,0xc0106451
c0100d5e:	64 10 c0 
c0100d61:	c7 05 24 73 10 c0 6f 	mov    DWORD PTR ds:0xc0107324,0xc010646f
c0100d68:	64 10 c0 
c0100d6b:	c7 05 28 73 10 c0 8b 	mov    DWORD PTR ds:0xc0107328,0xc010648b
c0100d72:	64 10 c0 
c0100d75:	5d                   	pop    ebp
c0100d76:	c3                   	ret    

c0100d77 <init_idt>:
c0100d77:	55                   	push   ebp
c0100d78:	89 e5                	mov    ebp,esp
c0100d7a:	83 ec 10             	sub    esp,0x10
c0100d7d:	e8 93 fe ff ff       	call   c0100c15 <idt_desc_init>
c0100d82:	e8 51 fe ff ff       	call   c0100bd8 <init_pic>
c0100d87:	b8 98 73 10 c0       	mov    eax,0xc0107398
c0100d8c:	c1 e0 10             	shl    eax,0x10
c0100d8f:	0d 77 01 00 00       	or     eax,0x177
c0100d94:	89 45 f8             	mov    DWORD PTR [ebp-0x8],eax
c0100d97:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [ebp-0x4],0x0
c0100d9e:	e8 07 ff ff ff       	call   c0100caa <exception_init>
c0100da3:	0f 01 5d f8          	lidtd  [ebp-0x8]
c0100da7:	c9                   	leave  
c0100da8:	c3                   	ret    

c0100da9 <intr_get_status>:
c0100da9:	55                   	push   ebp
c0100daa:	89 e5                	mov    ebp,esp
c0100dac:	9c                   	pushf  
c0100dad:	58                   	pop    eax
c0100dae:	f6 c4 02             	test   ah,0x2
c0100db1:	0f 95 c0             	setne  al
c0100db4:	0f b6 c0             	movzx  eax,al
c0100db7:	5d                   	pop    ebp
c0100db8:	c3                   	ret    

c0100db9 <intr_disable>:
c0100db9:	55                   	push   ebp
c0100dba:	89 e5                	mov    ebp,esp
c0100dbc:	e8 e8 ff ff ff       	call   c0100da9 <intr_get_status>
c0100dc1:	31 d2                	xor    edx,edx
c0100dc3:	48                   	dec    eax
c0100dc4:	75 03                	jne    c0100dc9 <intr_disable+0x10>
c0100dc6:	fa                   	cli    
c0100dc7:	b2 01                	mov    dl,0x1
c0100dc9:	89 d0                	mov    eax,edx
c0100dcb:	5d                   	pop    ebp
c0100dcc:	c3                   	ret    

c0100dcd <general_intr_handler>:
c0100dcd:	55                   	push   ebp
c0100dce:	89 e5                	mov    ebp,esp
c0100dd0:	57                   	push   edi
c0100dd1:	56                   	push   esi
c0100dd2:	be 80 07 00 00       	mov    esi,0x780
c0100dd7:	53                   	push   ebx
c0100dd8:	83 ec 5c             	sub    esp,0x5c
c0100ddb:	8a 5d 08             	mov    bl,BYTE PTR [ebp+0x8]
c0100dde:	e8 d6 ff ff ff       	call   c0100db9 <intr_disable>
c0100de3:	83 ec 0c             	sub    esp,0xc
c0100de6:	6a 00                	push   0x0
c0100de8:	e8 50 1e 00 00       	call   c0102c3d <set_cursor>
c0100ded:	83 c4 10             	add    esp,0x10
c0100df0:	51                   	push   ecx
c0100df1:	51                   	push   ecx
c0100df2:	6a 20                	push   0x20
c0100df4:	6a 17                	push   0x17
c0100df6:	e8 69 1e 00 00       	call   c0102c64 <put_char>
c0100dfb:	83 c4 10             	add    esp,0x10
c0100dfe:	4e                   	dec    esi
c0100dff:	75 ef                	jne    c0100df0 <general_intr_handler+0x23>
c0100e01:	83 ec 0c             	sub    esp,0xc
c0100e04:	6a 00                	push   0x0
c0100e06:	e8 32 1e 00 00       	call   c0102c3d <set_cursor>
c0100e0b:	5e                   	pop    esi
c0100e0c:	5f                   	pop    edi
c0100e0d:	68 ad 64 10 c0       	push   0xc01064ad
c0100e12:	6a 17                	push   0x17
c0100e14:	e8 ec 1e 00 00       	call   c0102d05 <put_str>
c0100e19:	58                   	pop    eax
c0100e1a:	5a                   	pop    edx
c0100e1b:	68 de 65 10 c0       	push   0xc01065de
c0100e20:	6a 17                	push   0x17
c0100e22:	e8 de 1e 00 00       	call   c0102d05 <put_str>
c0100e27:	59                   	pop    ecx
c0100e28:	5e                   	pop    esi
c0100e29:	68 c8 61 10 c0       	push   0xc01061c8
c0100e2e:	6a 17                	push   0x17
c0100e30:	e8 d0 1e 00 00       	call   c0102d05 <put_str>
c0100e35:	5f                   	pop    edi
c0100e36:	0f b6 fb             	movzx  edi,bl
c0100e39:	58                   	pop    eax
c0100e3a:	68 e1 65 10 c0       	push   0xc01065e1
c0100e3f:	6a 17                	push   0x17
c0100e41:	e8 bf 1e 00 00       	call   c0102d05 <put_str>
c0100e46:	83 c4 0c             	add    esp,0xc
c0100e49:	6a 10                	push   0x10
c0100e4b:	57                   	push   edi
c0100e4c:	6a 17                	push   0x17
c0100e4e:	e8 14 1f 00 00       	call   c0102d67 <put_int>
c0100e53:	58                   	pop    eax
c0100e54:	5a                   	pop    edx
c0100e55:	68 de 65 10 c0       	push   0xc01065de
c0100e5a:	6a 17                	push   0x17
c0100e5c:	e8 a4 1e 00 00       	call   c0102d05 <put_str>
c0100e61:	83 c4 10             	add    esp,0x10
c0100e64:	80 fb 13             	cmp    bl,0x13
c0100e67:	c7 45 a4 00 00 00 00 	mov    DWORD PTR [ebp-0x5c],0x0
c0100e6e:	77 4c                	ja     c0100ebc <general_intr_handler+0xef>
c0100e70:	51                   	push   ecx
c0100e71:	51                   	push   ecx
c0100e72:	ff 34 bd dc 72 10 c0 	push   DWORD PTR [edi*4-0x3fef8d24]
c0100e79:	6a 17                	push   0x17
c0100e7b:	e8 85 1e 00 00       	call   c0102d05 <put_str>
c0100e80:	83 c4 10             	add    esp,0x10
c0100e83:	80 fb 0e             	cmp    bl,0xe
c0100e86:	75 34                	jne    c0100ebc <general_intr_handler+0xef>
c0100e88:	0f 20 d0             	mov    eax,cr2
c0100e8b:	89 45 a4             	mov    DWORD PTR [ebp-0x5c],eax
c0100e8e:	50                   	push   eax
c0100e8f:	50                   	push   eax
c0100e90:	68 ec 65 10 c0       	push   0xc01065ec
c0100e95:	6a 17                	push   0x17
c0100e97:	e8 69 1e 00 00       	call   c0102d05 <put_str>
c0100e9c:	83 c4 0c             	add    esp,0xc
c0100e9f:	6a 10                	push   0x10
c0100ea1:	ff 75 a4             	push   DWORD PTR [ebp-0x5c]
c0100ea4:	6a 17                	push   0x17
c0100ea6:	e8 82 1e 00 00       	call   c0102d2d <put_uint>
c0100eab:	58                   	pop    eax
c0100eac:	5a                   	pop    edx
c0100ead:	68 01 66 10 c0       	push   0xc0106601
c0100eb2:	6a 17                	push   0x17
c0100eb4:	e8 4c 1e 00 00       	call   c0102d05 <put_str>
c0100eb9:	83 c4 10             	add    esp,0x10
c0100ebc:	52                   	push   edx
c0100ebd:	52                   	push   edx
c0100ebe:	68 05 66 10 c0       	push   0xc0106605
c0100ec3:	6a 17                	push   0x17
c0100ec5:	e8 3b 1e 00 00       	call   c0102d05 <put_str>
c0100eca:	e8 db 13 00 00       	call   c01022aa <cpu_info>
c0100ecf:	a1 24 7c 00 00       	mov    eax,ds:0x7c24
c0100ed4:	59                   	pop    ecx
c0100ed5:	5e                   	pop    esi
c0100ed6:	8d 75 a8             	lea    esi,[ebp-0x58]
c0100ed9:	48                   	dec    eax
c0100eda:	50                   	push   eax
c0100edb:	a1 20 7c 00 00       	mov    eax,ds:0x7c20
c0100ee0:	48                   	dec    eax
c0100ee1:	50                   	push   eax
c0100ee2:	6a 00                	push   0x0
c0100ee4:	6a 00                	push   0x0
c0100ee6:	68 ff 00 00 00       	push   0xff
c0100eeb:	68 ec ed 11 c0       	push   0xc011edec
c0100ef0:	e8 67 21 00 00       	call   c010305c <RectangleFill>
c0100ef5:	83 c4 14             	add    esp,0x14
c0100ef8:	68 0d 66 10 c0       	push   0xc010660d
c0100efd:	68 ff ff ff 00       	push   0xffffff
c0100f02:	6a 0a                	push   0xa
c0100f04:	6a 0a                	push   0xa
c0100f06:	68 ec ed 11 c0       	push   0xc011edec
c0100f0b:	e8 3a 23 00 00       	call   c010324a <put_str_graphic>
c0100f10:	83 c4 14             	add    esp,0x14
c0100f13:	68 c8 61 10 c0       	push   0xc01061c8
c0100f18:	68 ff ff ff 00       	push   0xffffff
c0100f1d:	6a 5a                	push   0x5a
c0100f1f:	6a 0a                	push   0xa
c0100f21:	68 ec ed 11 c0       	push   0xc011edec
c0100f26:	e8 1f 23 00 00       	call   c010324a <put_str_graphic>
c0100f2b:	83 c4 1c             	add    esp,0x1c
c0100f2e:	57                   	push   edi
c0100f2f:	68 3f 67 10 c0       	push   0xc010673f
c0100f34:	56                   	push   esi
c0100f35:	e8 0a 21 00 00       	call   c0103044 <sprintf>
c0100f3a:	89 34 24             	mov    DWORD PTR [esp],esi
c0100f3d:	68 ff ff ff 00       	push   0xffffff
c0100f42:	6a 6a                	push   0x6a
c0100f44:	6a 0a                	push   0xa
c0100f46:	68 ec ed 11 c0       	push   0xc011edec
c0100f4b:	e8 fa 22 00 00       	call   c010324a <put_str_graphic>
c0100f50:	83 c4 20             	add    esp,0x20
c0100f53:	80 fb 13             	cmp    bl,0x13
c0100f56:	77 50                	ja     c0100fa8 <general_intr_handler+0x1db>
c0100f58:	83 ec 0c             	sub    esp,0xc
c0100f5b:	ff 34 bd dc 72 10 c0 	push   DWORD PTR [edi*4-0x3fef8d24]
c0100f62:	68 ff 00 ff 00       	push   0xff00ff
c0100f67:	6a 7a                	push   0x7a
c0100f69:	6a 0a                	push   0xa
c0100f6b:	68 ec ed 11 c0       	push   0xc011edec
c0100f70:	e8 d5 22 00 00       	call   c010324a <put_str_graphic>
c0100f75:	83 c4 20             	add    esp,0x20
c0100f78:	80 fb 0e             	cmp    bl,0xe
c0100f7b:	75 2b                	jne    c0100fa8 <general_intr_handler+0x1db>
c0100f7d:	50                   	push   eax
c0100f7e:	ff 75 a4             	push   DWORD PTR [ebp-0x5c]
c0100f81:	68 4c 67 10 c0       	push   0xc010674c
c0100f86:	56                   	push   esi
c0100f87:	e8 b8 20 00 00       	call   c0103044 <sprintf>
c0100f8c:	89 34 24             	mov    DWORD PTR [esp],esi
c0100f8f:	68 ff ff ff 00       	push   0xffffff
c0100f94:	68 8a 00 00 00       	push   0x8a
c0100f99:	6a 0a                	push   0xa
c0100f9b:	68 ec ed 11 c0       	push   0xc011edec
c0100fa0:	e8 a5 22 00 00       	call   c010324a <put_str_graphic>
c0100fa5:	83 c4 20             	add    esp,0x20
c0100fa8:	eb fe                	jmp    c0100fa8 <general_intr_handler+0x1db>

c0100faa <intr_enable>:
c0100faa:	55                   	push   ebp
c0100fab:	89 e5                	mov    ebp,esp
c0100fad:	e8 f7 fd ff ff       	call   c0100da9 <intr_get_status>
c0100fb2:	ba 01 00 00 00       	mov    edx,0x1
c0100fb7:	48                   	dec    eax
c0100fb8:	74 03                	je     c0100fbd <intr_enable+0x13>
c0100fba:	fb                   	sti    
c0100fbb:	30 d2                	xor    dl,dl
c0100fbd:	89 d0                	mov    eax,edx
c0100fbf:	5d                   	pop    ebp
c0100fc0:	c3                   	ret    

c0100fc1 <intr_set_status>:
c0100fc1:	55                   	push   ebp
c0100fc2:	89 e5                	mov    ebp,esp
c0100fc4:	83 7d 08 01          	cmp    DWORD PTR [ebp+0x8],0x1
c0100fc8:	75 06                	jne    c0100fd0 <intr_set_status+0xf>
c0100fca:	5d                   	pop    ebp
c0100fcb:	e9 da ff ff ff       	jmp    c0100faa <intr_enable>
c0100fd0:	5d                   	pop    ebp
c0100fd1:	e9 e3 fd ff ff       	jmp    c0100db9 <intr_disable>
	...

c0100fd8 <init_memman>:
c0100fd8:	55                   	push   ebp
c0100fd9:	89 e5                	mov    ebp,esp
c0100fdb:	56                   	push   esi
c0100fdc:	8b 75 0c             	mov    esi,DWORD PTR [ebp+0xc]
c0100fdf:	53                   	push   ebx
c0100fe0:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c0100fe3:	83 ec 0c             	sub    esp,0xc
c0100fe6:	53                   	push   ebx
c0100fe7:	e8 db 06 00 00       	call   c01016c7 <lock_init>
c0100fec:	83 c4 10             	add    esp,0x10
c0100fef:	85 f6                	test   esi,esi
c0100ff1:	c7 43 24 00 00 00 00 	mov    DWORD PTR [ebx+0x24],0x0
c0100ff8:	c7 43 28 00 00 00 00 	mov    DWORD PTR [ebx+0x28],0x0
c0100fff:	c7 43 2c 00 00 00 00 	mov    DWORD PTR [ebx+0x2c],0x0
c0101006:	c7 43 30 00 00 00 00 	mov    DWORD PTR [ebx+0x30],0x0
c010100d:	75 19                	jne    c0101028 <init_memman+0x50>
c010100f:	68 90 67 10 c0       	push   0xc0106790
c0101014:	68 9c 68 10 c0       	push   0xc010689c
c0101019:	6a 50                	push   0x50
c010101b:	68 9d 67 10 c0       	push   0xc010679d
c0101020:	e8 23 f4 ff ff       	call   c0100448 <panic_spin>
c0101025:	83 c4 10             	add    esp,0x10
c0101028:	89 73 34             	mov    DWORD PTR [ebx+0x34],esi
c010102b:	8d 65 f8             	lea    esp,[ebp-0x8]
c010102e:	5b                   	pop    ebx
c010102f:	5e                   	pop    esi
c0101030:	5d                   	pop    ebp
c0101031:	c3                   	ret    

c0101032 <TotalFreeSize>:
c0101032:	55                   	push   ebp
c0101033:	31 d2                	xor    edx,edx
c0101035:	89 e5                	mov    ebp,esp
c0101037:	31 c0                	xor    eax,eax
c0101039:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
c010103c:	56                   	push   esi
c010103d:	53                   	push   ebx
c010103e:	8b 59 24             	mov    ebx,DWORD PTR [ecx+0x24]
c0101041:	eb 08                	jmp    c010104b <TotalFreeSize+0x19>
c0101043:	8b 71 34             	mov    esi,DWORD PTR [ecx+0x34]
c0101046:	03 44 d6 04          	add    eax,DWORD PTR [esi+edx*8+0x4]
c010104a:	42                   	inc    edx
c010104b:	39 da                	cmp    edx,ebx
c010104d:	75 f4                	jne    c0101043 <TotalFreeSize+0x11>
c010104f:	5b                   	pop    ebx
c0101050:	5e                   	pop    esi
c0101051:	5d                   	pop    ebp
c0101052:	c3                   	ret    

c0101053 <mem_alloc>:
c0101053:	55                   	push   ebp
c0101054:	89 e5                	mov    ebp,esp
c0101056:	57                   	push   edi
c0101057:	56                   	push   esi
c0101058:	31 f6                	xor    esi,esi
c010105a:	53                   	push   ebx
c010105b:	83 ec 08             	sub    esp,0x8
c010105e:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c0101061:	8b 5d 0c             	mov    ebx,DWORD PTR [ebp+0xc]
c0101064:	8b 42 24             	mov    eax,DWORD PTR [edx+0x24]
c0101067:	eb 68                	jmp    c01010d1 <mem_alloc+0x7e>
c0101069:	8b 7a 34             	mov    edi,DWORD PTR [edx+0x34]
c010106c:	8d 0c f5 00 00 00 00 	lea    ecx,[esi*8+0x0]
c0101073:	01 cf                	add    edi,ecx
c0101075:	39 5f 04             	cmp    DWORD PTR [edi+0x4],ebx
c0101078:	72 56                	jb     c01010d0 <mem_alloc+0x7d>
c010107a:	8b 07                	mov    eax,DWORD PTR [edi]
c010107c:	89 4d f0             	mov    DWORD PTR [ebp-0x10],ecx
c010107f:	8d 0c 03             	lea    ecx,[ebx+eax*1]
c0101082:	89 0f                	mov    DWORD PTR [edi],ecx
c0101084:	8b 7d f0             	mov    edi,DWORD PTR [ebp-0x10]
c0101087:	03 7a 34             	add    edi,DWORD PTR [edx+0x34]
c010108a:	29 5f 04             	sub    DWORD PTR [edi+0x4],ebx
c010108d:	8b 5a 34             	mov    ebx,DWORD PTR [edx+0x34]
c0101090:	8b 7d f0             	mov    edi,DWORD PTR [ebp-0x10]
c0101093:	83 7c 3b 04 00       	cmp    DWORD PTR [ebx+edi*1+0x4],0x0
c0101098:	75 3d                	jne    c01010d7 <mem_alloc+0x84>
c010109a:	ff 4a 24             	dec    DWORD PTR [edx+0x24]
c010109d:	89 f9                	mov    ecx,edi
c010109f:	89 c3                	mov    ebx,eax
c01010a1:	89 75 ec             	mov    DWORD PTR [ebp-0x14],esi
c01010a4:	eb 18                	jmp    c01010be <mem_alloc+0x6b>
c01010a6:	8b 42 34             	mov    eax,DWORD PTR [edx+0x34]
c01010a9:	ff 45 ec             	inc    DWORD PTR [ebp-0x14]
c01010ac:	8b 74 08 08          	mov    esi,DWORD PTR [eax+ecx*1+0x8]
c01010b0:	8b 7c 08 0c          	mov    edi,DWORD PTR [eax+ecx*1+0xc]
c01010b4:	89 34 08             	mov    DWORD PTR [eax+ecx*1],esi
c01010b7:	89 7c 08 04          	mov    DWORD PTR [eax+ecx*1+0x4],edi
c01010bb:	8b 4d f0             	mov    ecx,DWORD PTR [ebp-0x10]
c01010be:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
c01010c1:	8d 79 08             	lea    edi,[ecx+0x8]
c01010c4:	3b 42 24             	cmp    eax,DWORD PTR [edx+0x24]
c01010c7:	89 7d f0             	mov    DWORD PTR [ebp-0x10],edi
c01010ca:	72 da                	jb     c01010a6 <mem_alloc+0x53>
c01010cc:	89 d8                	mov    eax,ebx
c01010ce:	eb 07                	jmp    c01010d7 <mem_alloc+0x84>
c01010d0:	46                   	inc    esi
c01010d1:	39 c6                	cmp    esi,eax
c01010d3:	75 94                	jne    c0101069 <mem_alloc+0x16>
c01010d5:	31 c0                	xor    eax,eax
c01010d7:	5a                   	pop    edx
c01010d8:	59                   	pop    ecx
c01010d9:	5b                   	pop    ebx
c01010da:	5e                   	pop    esi
c01010db:	5f                   	pop    edi
c01010dc:	5d                   	pop    ebp
c01010dd:	c3                   	ret    

c01010de <mem_alloc_page>:
c01010de:	55                   	push   ebp
c01010df:	89 e5                	mov    ebp,esp
c01010e1:	53                   	push   ebx
c01010e2:	83 ec 20             	sub    esp,0x20
c01010e5:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c01010e8:	53                   	push   ebx
c01010e9:	e8 65 07 00 00       	call   c0101853 <lock_acquire>
c01010ee:	58                   	pop    eax
c01010ef:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c01010f2:	5a                   	pop    edx
c01010f3:	c1 e0 0c             	shl    eax,0xc
c01010f6:	50                   	push   eax
c01010f7:	53                   	push   ebx
c01010f8:	e8 56 ff ff ff       	call   c0101053 <mem_alloc>
c01010fd:	89 1c 24             	mov    DWORD PTR [esp],ebx
c0101100:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
c0101103:	e8 a6 07 00 00       	call   c01018ae <lock_release>
c0101108:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c010110b:	8b 5d fc             	mov    ebx,DWORD PTR [ebp-0x4]
c010110e:	c9                   	leave  
c010110f:	c3                   	ret    

c0101110 <mem_free>:
c0101110:	55                   	push   ebp
c0101111:	31 c9                	xor    ecx,ecx
c0101113:	89 e5                	mov    ebp,esp
c0101115:	57                   	push   edi
c0101116:	56                   	push   esi
c0101117:	53                   	push   ebx
c0101118:	83 ec 10             	sub    esp,0x10
c010111b:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c010111e:	8b 5d 0c             	mov    ebx,DWORD PTR [ebp+0xc]
c0101121:	8b 72 24             	mov    esi,DWORD PTR [edx+0x24]
c0101124:	89 75 ec             	mov    DWORD PTR [ebp-0x14],esi
c0101127:	eb 09                	jmp    c0101132 <mem_free+0x22>
c0101129:	8b 42 34             	mov    eax,DWORD PTR [edx+0x34]
c010112c:	3b 1c c8             	cmp    ebx,DWORD PTR [eax+ecx*8]
c010112f:	72 05                	jb     c0101136 <mem_free+0x26>
c0101131:	41                   	inc    ecx
c0101132:	39 f1                	cmp    ecx,esi
c0101134:	75 f3                	jne    c0101129 <mem_free+0x19>
c0101136:	85 c9                	test   ecx,ecx
c0101138:	74 7c                	je     c01011b6 <mem_free+0xa6>
c010113a:	8d 04 cd f8 ff ff ff 	lea    eax,[ecx*8-0x8]
c0101141:	89 45 e4             	mov    DWORD PTR [ebp-0x1c],eax
c0101144:	03 42 34             	add    eax,DWORD PTR [edx+0x34]
c0101147:	8b 78 04             	mov    edi,DWORD PTR [eax+0x4]
c010114a:	89 7d f0             	mov    DWORD PTR [ebp-0x10],edi
c010114d:	03 38                	add    edi,DWORD PTR [eax]
c010114f:	39 fb                	cmp    ebx,edi
c0101151:	75 63                	jne    c01011b6 <mem_free+0xa6>
c0101153:	8b 75 10             	mov    esi,DWORD PTR [ebp+0x10]
c0101156:	03 75 f0             	add    esi,DWORD PTR [ebp-0x10]
c0101159:	89 70 04             	mov    DWORD PTR [eax+0x4],esi
c010115c:	31 c0                	xor    eax,eax
c010115e:	3b 4a 24             	cmp    ecx,DWORD PTR [edx+0x24]
c0101161:	0f 83 dd 00 00 00    	jae    c0101244 <mem_free+0x134>
c0101167:	8b 72 34             	mov    esi,DWORD PTR [edx+0x34]
c010116a:	8d 3c cd 00 00 00 00 	lea    edi,[ecx*8+0x0]
c0101171:	89 7d f0             	mov    DWORD PTR [ebp-0x10],edi
c0101174:	03 5d 10             	add    ebx,DWORD PTR [ebp+0x10]
c0101177:	01 f7                	add    edi,esi
c0101179:	3b 1f                	cmp    ebx,DWORD PTR [edi]
c010117b:	89 7d ec             	mov    DWORD PTR [ebp-0x14],edi
c010117e:	0f 85 c0 00 00 00    	jne    c0101244 <mem_free+0x134>
c0101184:	8b 5d e4             	mov    ebx,DWORD PTR [ebp-0x1c]
c0101187:	8b 47 04             	mov    eax,DWORD PTR [edi+0x4]
c010118a:	01 44 1e 04          	add    DWORD PTR [esi+ebx*1+0x4],eax
c010118e:	ff 4a 24             	dec    DWORD PTR [edx+0x24]
c0101191:	eb 13                	jmp    c01011a6 <mem_free+0x96>
c0101193:	8b 5a 34             	mov    ebx,DWORD PTR [edx+0x34]
c0101196:	41                   	inc    ecx
c0101197:	8b 74 03 08          	mov    esi,DWORD PTR [ebx+eax*1+0x8]
c010119b:	8b 7c 03 0c          	mov    edi,DWORD PTR [ebx+eax*1+0xc]
c010119f:	89 34 03             	mov    DWORD PTR [ebx+eax*1],esi
c01011a2:	89 7c 03 04          	mov    DWORD PTR [ebx+eax*1+0x4],edi
c01011a6:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c01011a9:	3b 4a 24             	cmp    ecx,DWORD PTR [edx+0x24]
c01011ac:	8d 78 08             	lea    edi,[eax+0x8]
c01011af:	89 7d f0             	mov    DWORD PTR [ebp-0x10],edi
c01011b2:	72 df                	jb     c0101193 <mem_free+0x83>
c01011b4:	eb 2a                	jmp    c01011e0 <mem_free+0xd0>
c01011b6:	39 f1                	cmp    ecx,esi
c01011b8:	73 2a                	jae    c01011e4 <mem_free+0xd4>
c01011ba:	8b 7a 34             	mov    edi,DWORD PTR [edx+0x34]
c01011bd:	8d 04 cd 00 00 00 00 	lea    eax,[ecx*8+0x0]
c01011c4:	89 45 e8             	mov    DWORD PTR [ebp-0x18],eax
c01011c7:	01 c7                	add    edi,eax
c01011c9:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
c01011cc:	01 d8                	add    eax,ebx
c01011ce:	3b 07                	cmp    eax,DWORD PTR [edi]
c01011d0:	75 12                	jne    c01011e4 <mem_free+0xd4>
c01011d2:	8b 45 e8             	mov    eax,DWORD PTR [ebp-0x18]
c01011d5:	89 1f                	mov    DWORD PTR [edi],ebx
c01011d7:	03 42 34             	add    eax,DWORD PTR [edx+0x34]
c01011da:	8b 55 10             	mov    edx,DWORD PTR [ebp+0x10]
c01011dd:	01 50 04             	add    DWORD PTR [eax+0x4],edx
c01011e0:	31 c0                	xor    eax,eax
c01011e2:	eb 60                	jmp    c0101244 <mem_free+0x134>
c01011e4:	81 fe 9f 0f 00 00    	cmp    esi,0xf9f
c01011ea:	77 4a                	ja     c0101236 <mem_free+0x126>
c01011ec:	c1 e6 03             	shl    esi,0x3
c01011ef:	89 cf                	mov    edi,ecx
c01011f1:	89 5d f0             	mov    DWORD PTR [ebp-0x10],ebx
c01011f4:	eb 15                	jmp    c010120b <mem_free+0xfb>
c01011f6:	8b 4c 30 f8          	mov    ecx,DWORD PTR [eax+esi*1-0x8]
c01011fa:	8b 5c 30 fc          	mov    ebx,DWORD PTR [eax+esi*1-0x4]
c01011fe:	ff 45 ec             	inc    DWORD PTR [ebp-0x14]
c0101201:	89 0c 30             	mov    DWORD PTR [eax+esi*1],ecx
c0101204:	89 5c 30 04          	mov    DWORD PTR [eax+esi*1+0x4],ebx
c0101208:	83 c6 08             	add    esi,0x8
c010120b:	39 7d ec             	cmp    DWORD PTR [ebp-0x14],edi
c010120e:	8b 42 34             	mov    eax,DWORD PTR [edx+0x34]
c0101211:	7f e3                	jg     c01011f6 <mem_free+0xe6>
c0101213:	8b 72 24             	mov    esi,DWORD PTR [edx+0x24]
c0101216:	89 f9                	mov    ecx,edi
c0101218:	8b 5d f0             	mov    ebx,DWORD PTR [ebp-0x10]
c010121b:	46                   	inc    esi
c010121c:	39 72 28             	cmp    DWORD PTR [edx+0x28],esi
c010121f:	89 72 24             	mov    DWORD PTR [edx+0x24],esi
c0101222:	73 03                	jae    c0101227 <mem_free+0x117>
c0101224:	89 72 28             	mov    DWORD PTR [edx+0x28],esi
c0101227:	89 1c c8             	mov    DWORD PTR [eax+ecx*8],ebx
c010122a:	8b 5d 10             	mov    ebx,DWORD PTR [ebp+0x10]
c010122d:	8b 42 34             	mov    eax,DWORD PTR [edx+0x34]
c0101230:	89 5c c8 04          	mov    DWORD PTR [eax+ecx*8+0x4],ebx
c0101234:	eb aa                	jmp    c01011e0 <mem_free+0xd0>
c0101236:	8b 75 10             	mov    esi,DWORD PTR [ebp+0x10]
c0101239:	b8 01 00 00 00       	mov    eax,0x1
c010123e:	ff 42 30             	inc    DWORD PTR [edx+0x30]
c0101241:	01 72 2c             	add    DWORD PTR [edx+0x2c],esi
c0101244:	83 c4 10             	add    esp,0x10
c0101247:	5b                   	pop    ebx
c0101248:	5e                   	pop    esi
c0101249:	5f                   	pop    edi
c010124a:	5d                   	pop    ebp
c010124b:	c3                   	ret    

c010124c <mem_free_page>:
c010124c:	55                   	push   ebp
c010124d:	89 e5                	mov    ebp,esp
c010124f:	53                   	push   ebx
c0101250:	83 ec 20             	sub    esp,0x20
c0101253:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c0101256:	53                   	push   ebx
c0101257:	e8 f7 05 00 00       	call   c0101853 <lock_acquire>
c010125c:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
c010125f:	83 c4 0c             	add    esp,0xc
c0101262:	c1 e0 0c             	shl    eax,0xc
c0101265:	50                   	push   eax
c0101266:	ff 75 0c             	push   DWORD PTR [ebp+0xc]
c0101269:	53                   	push   ebx
c010126a:	e8 a1 fe ff ff       	call   c0101110 <mem_free>
c010126f:	89 1c 24             	mov    DWORD PTR [esp],ebx
c0101272:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
c0101275:	e8 34 06 00 00       	call   c01018ae <lock_release>
c010127a:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c010127d:	8b 5d fc             	mov    ebx,DWORD PTR [ebp-0x4]
c0101280:	c9                   	leave  
c0101281:	c3                   	ret    

c0101282 <init_memory>:
c0101282:	55                   	push   ebp
c0101283:	89 e5                	mov    ebp,esp
c0101285:	57                   	push   edi
c0101286:	56                   	push   esi
c0101287:	53                   	push   ebx
c0101288:	83 ec 0c             	sub    esp,0xc
c010128b:	83 3d 08 7c 00 00 00 	cmp    DWORD PTR ds:0x7c08,0x0
c0101292:	0f 85 f5 00 00 00    	jne    c010138d <init_memory+0x10b>
c0101298:	83 3d 0c 7c 00 00 00 	cmp    DWORD PTR ds:0x7c0c,0x0
c010129f:	0f 85 e8 00 00 00    	jne    c010138d <init_memory+0x10b>
c01012a5:	8b 1d 00 7c 00 00    	mov    ebx,DWORD PTR ds:0x7c00
c01012ab:	31 f6                	xor    esi,esi
c01012ad:	51                   	push   ecx
c01012ae:	51                   	push   ecx
c01012af:	68 ad 67 10 c0       	push   0xc01067ad
c01012b4:	6a 07                	push   0x7
c01012b6:	e8 4a 1a 00 00       	call   c0102d05 <put_str>
c01012bb:	83 c4 10             	add    esp,0x10
c01012be:	e9 8a 00 00 00       	jmp    c010134d <init_memory+0xcb>
c01012c3:	50                   	push   eax
c01012c4:	50                   	push   eax
c01012c5:	68 b4 67 10 c0       	push   0xc01067b4
c01012ca:	6a 07                	push   0x7
c01012cc:	e8 34 1a 00 00       	call   c0102d05 <put_str>
c01012d1:	83 c4 0c             	add    esp,0xc
c01012d4:	6a 10                	push   0x10
c01012d6:	ff 33                	push   DWORD PTR [ebx]
c01012d8:	6a 07                	push   0x7
c01012da:	e8 4e 1a 00 00       	call   c0102d2d <put_uint>
c01012df:	58                   	pop    eax
c01012e0:	5a                   	pop    edx
c01012e1:	68 bf 67 10 c0       	push   0xc01067bf
c01012e6:	6a 07                	push   0x7
c01012e8:	e8 18 1a 00 00       	call   c0102d05 <put_str>
c01012ed:	83 c4 0c             	add    esp,0xc
c01012f0:	6a 10                	push   0x10
c01012f2:	ff 73 08             	push   DWORD PTR [ebx+0x8]
c01012f5:	6a 07                	push   0x7
c01012f7:	e8 31 1a 00 00       	call   c0102d2d <put_uint>
c01012fc:	59                   	pop    ecx
c01012fd:	5f                   	pop    edi
c01012fe:	68 cd 67 10 c0       	push   0xc01067cd
c0101303:	6a 07                	push   0x7
c0101305:	e8 fb 19 00 00       	call   c0102d05 <put_str>
c010130a:	83 c4 0c             	add    esp,0xc
c010130d:	6a 10                	push   0x10
c010130f:	ff 73 10             	push   DWORD PTR [ebx+0x10]
c0101312:	6a 07                	push   0x7
c0101314:	e8 14 1a 00 00       	call   c0102d2d <put_uint>
c0101319:	58                   	pop    eax
c010131a:	5a                   	pop    edx
c010131b:	68 d8 67 10 c0       	push   0xc01067d8
c0101320:	6a 07                	push   0x7
c0101322:	e8 de 19 00 00       	call   c0102d05 <put_str>
c0101327:	83 c4 10             	add    esp,0x10
c010132a:	81 3b 00 00 10 00    	cmp    DWORD PTR [ebx],0x100000
c0101330:	75 17                	jne    c0101349 <init_memory+0xc7>
c0101332:	83 7b 10 01          	cmp    DWORD PTR [ebx+0x10],0x1
c0101336:	75 11                	jne    c0101349 <init_memory+0xc7>
c0101338:	8b 4b 08             	mov    ecx,DWORD PTR [ebx+0x8]
c010133b:	81 c1 00 00 10 00    	add    ecx,0x100000
c0101341:	85 c9                	test   ecx,ecx
c0101343:	89 c8                	mov    eax,ecx
c0101345:	75 2f                	jne    c0101376 <init_memory+0xf4>
c0101347:	eb 10                	jmp    c0101359 <init_memory+0xd7>
c0101349:	83 c3 14             	add    ebx,0x14
c010134c:	46                   	inc    esi
c010134d:	3b 35 04 7c 00 00    	cmp    esi,DWORD PTR ds:0x7c04
c0101353:	0f 82 6a ff ff ff    	jb     c01012c3 <init_memory+0x41>
c0101359:	68 da 67 10 c0       	push   0xc01067da
c010135e:	68 90 68 10 c0       	push   0xc0106890
c0101363:	6a 32                	push   0x32
c0101365:	68 9d 67 10 c0       	push   0xc010679d
c010136a:	e8 d9 f0 ff ff       	call   c0100448 <panic_spin>
c010136f:	83 c4 10             	add    esp,0x10
c0101372:	31 c0                	xor    eax,eax
c0101374:	eb 0d                	jmp    c0101383 <init_memory+0x101>
c0101376:	81 f9 ff ff ff 3f    	cmp    ecx,0x3fffffff
c010137c:	76 05                	jbe    c0101383 <init_memory+0x101>
c010137e:	b8 ff ff ff 3f       	mov    eax,0x3fffffff
c0101383:	05 00 00 10 00       	add    eax,0x100000
c0101388:	a3 08 7c 00 00       	mov    ds:0x7c08,eax
c010138d:	8b 35 08 7c 00 00    	mov    esi,DWORD PTR ds:0x7c08
c0101393:	51                   	push   ecx
c0101394:	51                   	push   ecx
c0101395:	68 3c 70 11 c0       	push   0xc011703c
c010139a:	68 3c ed 11 c0       	push   0xc011ed3c
c010139f:	e8 34 fc ff ff       	call   c0100fd8 <init_memman>
c01013a4:	8d be 00 00 a0 ff    	lea    edi,[esi-0x600000]
c01013aa:	58                   	pop    eax
c01013ab:	89 fb                	mov    ebx,edi
c01013ad:	5a                   	pop    edx
c01013ae:	c1 ef 0d             	shr    edi,0xd
c01013b1:	d1 eb                	shr    ebx,1
c01013b3:	68 cc 75 10 c0       	push   0xc01075cc
c01013b8:	29 de                	sub    esi,ebx
c01013ba:	68 04 f3 10 c0       	push   0xc010f304
c01013bf:	81 c3 00 00 60 00    	add    ebx,0x600000
c01013c5:	e8 0e fc ff ff       	call   c0100fd8 <init_memman>
c01013ca:	c1 ee 0c             	shr    esi,0xc
c01013cd:	59                   	pop    ecx
c01013ce:	58                   	pop    eax
c01013cf:	68 3c f3 10 c0       	push   0xc010f33c
c01013d4:	68 cc f2 10 c0       	push   0xc010f2cc
c01013d9:	e8 fa fb ff ff       	call   c0100fd8 <init_memman>
c01013de:	83 c4 0c             	add    esp,0xc
c01013e1:	57                   	push   edi
c01013e2:	68 00 00 60 00       	push   0x600000
c01013e7:	68 3c ed 11 c0       	push   0xc011ed3c
c01013ec:	e8 5b fe ff ff       	call   c010124c <mem_free_page>
c01013f1:	83 c4 0c             	add    esp,0xc
c01013f4:	56                   	push   esi
c01013f5:	53                   	push   ebx
c01013f6:	68 cc f2 10 c0       	push   0xc010f2cc
c01013fb:	e8 4c fe ff ff       	call   c010124c <mem_free_page>
c0101400:	83 c4 0c             	add    esp,0xc
c0101403:	68 00 fa 01 00       	push   0x1fa00
c0101408:	68 00 00 60 c0       	push   0xc0600000
c010140d:	68 04 f3 10 c0       	push   0xc010f304
c0101412:	e8 35 fe ff ff       	call   c010124c <mem_free_page>
c0101417:	83 c4 10             	add    esp,0x10
c010141a:	8d 65 f4             	lea    esp,[ebp-0xc]
c010141d:	5b                   	pop    ebx
c010141e:	5e                   	pop    esi
c010141f:	5f                   	pop    edi
c0101420:	5d                   	pop    ebp
c0101421:	c3                   	ret    

c0101422 <pde_ptr>:
c0101422:	55                   	push   ebp
c0101423:	89 e5                	mov    ebp,esp
c0101425:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0101428:	5d                   	pop    ebp
c0101429:	c1 e8 16             	shr    eax,0x16
c010142c:	8d 04 85 00 f0 ff ff 	lea    eax,[eax*4-0x1000]
c0101433:	c3                   	ret    

c0101434 <pte_ptr>:
c0101434:	55                   	push   ebp
c0101435:	89 e5                	mov    ebp,esp
c0101437:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c010143a:	5d                   	pop    ebp
c010143b:	89 c2                	mov    edx,eax
c010143d:	25 00 f0 3f 00       	and    eax,0x3ff000
c0101442:	81 e2 00 00 c0 ff    	and    edx,0xffc00000
c0101448:	c1 ea 0a             	shr    edx,0xa
c010144b:	c1 e8 0a             	shr    eax,0xa
c010144e:	8d 84 02 00 00 c0 ff 	lea    eax,[edx+eax*1-0x400000]
c0101455:	c3                   	ret    

c0101456 <page_table_add>:
c0101456:	55                   	push   ebp
c0101457:	89 e5                	mov    ebp,esp
c0101459:	57                   	push   edi
c010145a:	56                   	push   esi
c010145b:	53                   	push   ebx
c010145c:	83 ec 0c             	sub    esp,0xc
c010145f:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0101462:	8b 75 0c             	mov    esi,DWORD PTR [ebp+0xc]
c0101465:	50                   	push   eax
c0101466:	89 c7                	mov    edi,eax
c0101468:	e8 c7 ff ff ff       	call   c0101434 <pte_ptr>
c010146d:	c1 ef 16             	shr    edi,0x16
c0101470:	f6 04 bd 00 f0 ff ff 	test   BYTE PTR [edi*4-0x1000],0x1
c0101477:	01 
c0101478:	5a                   	pop    edx
c0101479:	89 c3                	mov    ebx,eax
c010147b:	74 0c                	je     c0101489 <page_table_add+0x33>
c010147d:	f6 00 01             	test   BYTE PTR [eax],0x1
c0101480:	75 3e                	jne    c01014c0 <page_table_add+0x6a>
c0101482:	83 ce 07             	or     esi,0x7
c0101485:	89 30                	mov    DWORD PTR [eax],esi
c0101487:	eb 37                	jmp    c01014c0 <page_table_add+0x6a>
c0101489:	50                   	push   eax
c010148a:	83 ce 07             	or     esi,0x7
c010148d:	50                   	push   eax
c010148e:	6a 01                	push   0x1
c0101490:	68 3c ed 11 c0       	push   0xc011ed3c
c0101495:	e8 44 fc ff ff       	call   c01010de <mem_alloc_page>
c010149a:	83 c4 0c             	add    esp,0xc
c010149d:	83 c8 07             	or     eax,0x7
c01014a0:	89 04 bd 00 f0 ff ff 	mov    DWORD PTR [edi*4-0x1000],eax
c01014a7:	89 d8                	mov    eax,ebx
c01014a9:	68 00 10 00 00       	push   0x1000
c01014ae:	25 00 f0 ff ff       	and    eax,0xfffff000
c01014b3:	6a 00                	push   0x0
c01014b5:	50                   	push   eax
c01014b6:	e8 e9 18 00 00       	call   c0102da4 <memset>
c01014bb:	83 c4 10             	add    esp,0x10
c01014be:	89 33                	mov    DWORD PTR [ebx],esi
c01014c0:	8d 65 f4             	lea    esp,[ebp-0xc]
c01014c3:	5b                   	pop    ebx
c01014c4:	5e                   	pop    esi
c01014c5:	5f                   	pop    edi
c01014c6:	5d                   	pop    ebp
c01014c7:	c3                   	ret    

c01014c8 <page_alloc>:
c01014c8:	55                   	push   ebp
c01014c9:	89 e5                	mov    ebp,esp
c01014cb:	57                   	push   edi
c01014cc:	56                   	push   esi
c01014cd:	53                   	push   ebx
c01014ce:	83 ec 1c             	sub    esp,0x1c
c01014d1:	8b 75 0c             	mov    esi,DWORD PTR [ebp+0xc]
c01014d4:	83 7d 08 01          	cmp    DWORD PTR [ebp+0x8],0x1
c01014d8:	c7 45 e4 cc f2 10 c0 	mov    DWORD PTR [ebp-0x1c],0xc010f2cc
c01014df:	75 07                	jne    c01014e8 <page_alloc+0x20>
c01014e1:	c7 45 e4 3c ed 11 c0 	mov    DWORD PTR [ebp-0x1c],0xc011ed3c
c01014e8:	50                   	push   eax
c01014e9:	50                   	push   eax
c01014ea:	56                   	push   esi
c01014eb:	68 04 f3 10 c0       	push   0xc010f304
c01014f0:	e8 e9 fb ff ff       	call   c01010de <mem_alloc_page>
c01014f5:	83 c4 10             	add    esp,0x10
c01014f8:	85 c0                	test   eax,eax
c01014fa:	89 c3                	mov    ebx,eax
c01014fc:	89 c7                	mov    edi,eax
c01014fe:	75 28                	jne    c0101528 <page_alloc+0x60>
c0101500:	eb 2e                	jmp    c0101530 <page_alloc+0x68>
c0101502:	50                   	push   eax
c0101503:	50                   	push   eax
c0101504:	6a 01                	push   0x1
c0101506:	ff 75 e4             	push   DWORD PTR [ebp-0x1c]
c0101509:	e8 d0 fb ff ff       	call   c01010de <mem_alloc_page>
c010150e:	83 c4 10             	add    esp,0x10
c0101511:	85 c0                	test   eax,eax
c0101513:	74 19                	je     c010152e <page_alloc+0x66>
c0101515:	51                   	push   ecx
c0101516:	4e                   	dec    esi
c0101517:	51                   	push   ecx
c0101518:	50                   	push   eax
c0101519:	57                   	push   edi
c010151a:	81 c7 00 10 00 00    	add    edi,0x1000
c0101520:	e8 31 ff ff ff       	call   c0101456 <page_table_add>
c0101525:	83 c4 10             	add    esp,0x10
c0101528:	85 f6                	test   esi,esi
c010152a:	75 d6                	jne    c0101502 <page_alloc+0x3a>
c010152c:	eb 02                	jmp    c0101530 <page_alloc+0x68>
c010152e:	31 db                	xor    ebx,ebx
c0101530:	8d 65 f4             	lea    esp,[ebp-0xc]
c0101533:	89 d8                	mov    eax,ebx
c0101535:	5b                   	pop    ebx
c0101536:	5e                   	pop    esi
c0101537:	5f                   	pop    edi
c0101538:	5d                   	pop    ebp
c0101539:	c3                   	ret    

c010153a <get_kernel_page>:
c010153a:	55                   	push   ebp
c010153b:	89 e5                	mov    ebp,esp
c010153d:	56                   	push   esi
c010153e:	53                   	push   ebx
c010153f:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c0101542:	50                   	push   eax
c0101543:	50                   	push   eax
c0101544:	53                   	push   ebx
c0101545:	6a 01                	push   0x1
c0101547:	e8 7c ff ff ff       	call   c01014c8 <page_alloc>
c010154c:	83 c4 10             	add    esp,0x10
c010154f:	85 c0                	test   eax,eax
c0101551:	89 c6                	mov    esi,eax
c0101553:	74 10                	je     c0101565 <get_kernel_page+0x2b>
c0101555:	c1 e3 0c             	shl    ebx,0xc
c0101558:	50                   	push   eax
c0101559:	53                   	push   ebx
c010155a:	6a 00                	push   0x0
c010155c:	56                   	push   esi
c010155d:	e8 42 18 00 00       	call   c0102da4 <memset>
c0101562:	83 c4 10             	add    esp,0x10
c0101565:	50                   	push   eax
c0101566:	50                   	push   eax
c0101567:	68 ef 67 10 c0       	push   0xc01067ef
c010156c:	6a 07                	push   0x7
c010156e:	e8 92 17 00 00       	call   c0102d05 <put_str>
c0101573:	83 c4 0c             	add    esp,0xc
c0101576:	6a 10                	push   0x10
c0101578:	56                   	push   esi
c0101579:	6a 07                	push   0x7
c010157b:	e8 ad 17 00 00       	call   c0102d2d <put_uint>
c0101580:	8d 65 f8             	lea    esp,[ebp-0x8]
c0101583:	89 f0                	mov    eax,esi
c0101585:	5b                   	pop    ebx
c0101586:	5e                   	pop    esi
c0101587:	5d                   	pop    ebp
c0101588:	c3                   	ret    

c0101589 <get_user_page>:
c0101589:	55                   	push   ebp
c010158a:	89 e5                	mov    ebp,esp
c010158c:	53                   	push   ebx
c010158d:	83 ec 1c             	sub    esp,0x1c
c0101590:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c0101593:	53                   	push   ebx
c0101594:	6a 02                	push   0x2
c0101596:	e8 2d ff ff ff       	call   c01014c8 <page_alloc>
c010159b:	83 c4 10             	add    esp,0x10
c010159e:	85 c0                	test   eax,eax
c01015a0:	74 16                	je     c01015b8 <get_user_page+0x2f>
c01015a2:	c1 e3 0c             	shl    ebx,0xc
c01015a5:	52                   	push   edx
c01015a6:	53                   	push   ebx
c01015a7:	6a 00                	push   0x0
c01015a9:	50                   	push   eax
c01015aa:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
c01015ad:	e8 f2 17 00 00       	call   c0102da4 <memset>
c01015b2:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c01015b5:	83 c4 10             	add    esp,0x10
c01015b8:	8b 5d fc             	mov    ebx,DWORD PTR [ebp-0x4]
c01015bb:	c9                   	leave  
c01015bc:	c3                   	ret    

c01015bd <get_a_page>:
c01015bd:	55                   	push   ebp
c01015be:	89 e5                	mov    ebp,esp
c01015c0:	57                   	push   edi
c01015c1:	bf cc f2 10 c0       	mov    edi,0xc010f2cc
c01015c6:	56                   	push   esi
c01015c7:	53                   	push   ebx
c01015c8:	83 ec 0c             	sub    esp,0xc
c01015cb:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c01015ce:	8b 75 0c             	mov    esi,DWORD PTR [ebp+0xc]
c01015d1:	83 fb 01             	cmp    ebx,0x1
c01015d4:	75 05                	jne    c01015db <get_a_page+0x1e>
c01015d6:	bf 3c ed 11 c0       	mov    edi,0xc011ed3c
c01015db:	e8 e6 03 00 00       	call   c01019c6 <running_thread>
c01015e0:	83 fb 02             	cmp    ebx,0x2
c01015e3:	8b 40 38             	mov    eax,DWORD PTR [eax+0x38]
c01015e6:	75 04                	jne    c01015ec <get_a_page+0x2f>
c01015e8:	85 c0                	test   eax,eax
c01015ea:	75 33                	jne    c010161f <get_a_page+0x62>
c01015ec:	4b                   	dec    ebx
c01015ed:	75 14                	jne    c0101603 <get_a_page+0x46>
c01015ef:	85 c0                	test   eax,eax
c01015f1:	75 10                	jne    c0101603 <get_a_page+0x46>
c01015f3:	50                   	push   eax
c01015f4:	50                   	push   eax
c01015f5:	6a 01                	push   0x1
c01015f7:	68 04 f3 10 c0       	push   0xc010f304
c01015fc:	e8 dd fa ff ff       	call   c01010de <mem_alloc_page>
c0101601:	eb 19                	jmp    c010161c <get_a_page+0x5f>
c0101603:	68 fb 67 10 c0       	push   0xc01067fb
c0101608:	68 a8 68 10 c0       	push   0xc01068a8
c010160d:	68 41 01 00 00       	push   0x141
c0101612:	68 9d 67 10 c0       	push   0xc010679d
c0101617:	e8 2c ee ff ff       	call   c0100448 <panic_spin>
c010161c:	83 c4 10             	add    esp,0x10
c010161f:	53                   	push   ebx
c0101620:	53                   	push   ebx
c0101621:	6a 01                	push   0x1
c0101623:	57                   	push   edi
c0101624:	e8 b5 fa ff ff       	call   c01010de <mem_alloc_page>
c0101629:	83 c4 10             	add    esp,0x10
c010162c:	85 c0                	test   eax,eax
c010162e:	89 c3                	mov    ebx,eax
c0101630:	75 1c                	jne    c010164e <get_a_page+0x91>
c0101632:	68 52 68 10 c0       	push   0xc0106852
c0101637:	68 a8 68 10 c0       	push   0xc01068a8
c010163c:	68 44 01 00 00       	push   0x144
c0101641:	68 9d 67 10 c0       	push   0xc010679d
c0101646:	e8 fd ed ff ff       	call   c0100448 <panic_spin>
c010164b:	83 c4 10             	add    esp,0x10
c010164e:	51                   	push   ecx
c010164f:	51                   	push   ecx
c0101650:	53                   	push   ebx
c0101651:	56                   	push   esi
c0101652:	e8 ff fd ff ff       	call   c0101456 <page_table_add>
c0101657:	8d 65 f4             	lea    esp,[ebp-0xc]
c010165a:	89 f0                	mov    eax,esi
c010165c:	5b                   	pop    ebx
c010165d:	5e                   	pop    esi
c010165e:	5f                   	pop    edi
c010165f:	5d                   	pop    ebp
c0101660:	c3                   	ret    

c0101661 <addr_v2p>:
c0101661:	55                   	push   ebp
c0101662:	89 e5                	mov    ebp,esp
c0101664:	53                   	push   ebx
c0101665:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c0101668:	53                   	push   ebx
c0101669:	81 e3 ff 0f 00 00    	and    ebx,0xfff
c010166f:	e8 c0 fd ff ff       	call   c0101434 <pte_ptr>
c0101674:	5a                   	pop    edx
c0101675:	8b 00                	mov    eax,DWORD PTR [eax]
c0101677:	25 00 f0 ff ff       	and    eax,0xfffff000
c010167c:	09 d8                	or     eax,ebx
c010167e:	8b 5d fc             	mov    ebx,DWORD PTR [ebp-0x4]
c0101681:	c9                   	leave  
c0101682:	c3                   	ret    
	...

c0101684 <sema_init>:
c0101684:	55                   	push   ebp
c0101685:	89 e5                	mov    ebp,esp
c0101687:	56                   	push   esi
c0101688:	0f b6 75 0c          	movzx  esi,BYTE PTR [ebp+0xc]
c010168c:	53                   	push   ebx
c010168d:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c0101690:	83 ec 0c             	sub    esp,0xc
c0101693:	8d 43 04             	lea    eax,[ebx+0x4]
c0101696:	89 33                	mov    DWORD PTR [ebx],esi
c0101698:	50                   	push   eax
c0101699:	e8 4a 13 00 00       	call   c01029e8 <list_init>
c010169e:	8b 03                	mov    eax,DWORD PTR [ebx]
c01016a0:	83 c4 10             	add    esp,0x10
c01016a3:	39 f0                	cmp    eax,esi
c01016a5:	74 19                	je     c01016c0 <sema_init+0x3c>
c01016a7:	68 b4 68 10 c0       	push   0xc01068b4
c01016ac:	68 f8 69 10 c0       	push   0xc01069f8
c01016b1:	6a 0d                	push   0xd
c01016b3:	68 ca 68 10 c0       	push   0xc01068ca
c01016b8:	e8 8b ed ff ff       	call   c0100448 <panic_spin>
c01016bd:	83 c4 10             	add    esp,0x10
c01016c0:	8d 65 f8             	lea    esp,[ebp-0x8]
c01016c3:	5b                   	pop    ebx
c01016c4:	5e                   	pop    esi
c01016c5:	5d                   	pop    ebp
c01016c6:	c3                   	ret    

c01016c7 <lock_init>:
c01016c7:	55                   	push   ebp
c01016c8:	89 e5                	mov    ebp,esp
c01016ca:	83 ec 10             	sub    esp,0x10
c01016cd:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01016d0:	c7 00 00 00 00 00    	mov    DWORD PTR [eax],0x0
c01016d6:	c7 40 20 00 00 00 00 	mov    DWORD PTR [eax+0x20],0x0
c01016dd:	83 c0 04             	add    eax,0x4
c01016e0:	6a 01                	push   0x1
c01016e2:	50                   	push   eax
c01016e3:	e8 9c ff ff ff       	call   c0101684 <sema_init>
c01016e8:	83 c4 10             	add    esp,0x10
c01016eb:	c9                   	leave  
c01016ec:	c3                   	ret    

c01016ed <sema_down>:
c01016ed:	55                   	push   ebp
c01016ee:	89 e5                	mov    ebp,esp
c01016f0:	57                   	push   edi
c01016f1:	56                   	push   esi
c01016f2:	53                   	push   ebx
c01016f3:	83 ec 0c             	sub    esp,0xc
c01016f6:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c01016f9:	e8 bb f6 ff ff       	call   c0100db9 <intr_disable>
c01016fe:	8d 73 04             	lea    esi,[ebx+0x4]
c0101701:	89 c7                	mov    edi,eax
c0101703:	e9 82 00 00 00       	jmp    c010178a <sema_down+0x9d>
c0101708:	e8 b9 02 00 00       	call   c01019c6 <running_thread>
c010170d:	52                   	push   edx
c010170e:	83 c0 2c             	add    eax,0x2c
c0101711:	52                   	push   edx
c0101712:	50                   	push   eax
c0101713:	56                   	push   esi
c0101714:	e8 87 13 00 00       	call   c0102aa0 <list_find>
c0101719:	83 c4 10             	add    esp,0x10
c010171c:	85 c0                	test   eax,eax
c010171e:	74 19                	je     c0101739 <sema_down+0x4c>
c0101720:	68 d8 68 10 c0       	push   0xc01068d8
c0101725:	68 04 6a 10 c0       	push   0xc0106a04
c010172a:	6a 24                	push   0x24
c010172c:	68 ca 68 10 c0       	push   0xc01068ca
c0101731:	e8 12 ed ff ff       	call   c0100448 <panic_spin>
c0101736:	83 c4 10             	add    esp,0x10
c0101739:	e8 88 02 00 00       	call   c01019c6 <running_thread>
c010173e:	51                   	push   ecx
c010173f:	83 c0 2c             	add    eax,0x2c
c0101742:	51                   	push   ecx
c0101743:	50                   	push   eax
c0101744:	56                   	push   esi
c0101745:	e8 56 13 00 00       	call   c0102aa0 <list_find>
c010174a:	83 c4 10             	add    esp,0x10
c010174d:	85 c0                	test   eax,eax
c010174f:	74 19                	je     c010176a <sema_down+0x7d>
c0101751:	68 19 69 10 c0       	push   0xc0106919
c0101756:	68 04 6a 10 c0       	push   0xc0106a04
c010175b:	6a 27                	push   0x27
c010175d:	68 ca 68 10 c0       	push   0xc01068ca
c0101762:	e8 e1 ec ff ff       	call   c0100448 <panic_spin>
c0101767:	83 c4 10             	add    esp,0x10
c010176a:	e8 57 02 00 00       	call   c01019c6 <running_thread>
c010176f:	52                   	push   edx
c0101770:	83 c0 2c             	add    eax,0x2c
c0101773:	52                   	push   edx
c0101774:	50                   	push   eax
c0101775:	56                   	push   esi
c0101776:	e8 cc 12 00 00       	call   c0102a47 <list_append>
c010177b:	c7 04 24 02 00 00 00 	mov    DWORD PTR [esp],0x2
c0101782:	e8 ed 04 00 00       	call   c0101c74 <thread_block>
c0101787:	83 c4 10             	add    esp,0x10
c010178a:	8b 03                	mov    eax,DWORD PTR [ebx]
c010178c:	85 c0                	test   eax,eax
c010178e:	0f 84 74 ff ff ff    	je     c0101708 <sema_down+0x1b>
c0101794:	8b 03                	mov    eax,DWORD PTR [ebx]
c0101796:	48                   	dec    eax
c0101797:	89 03                	mov    DWORD PTR [ebx],eax
c0101799:	8b 03                	mov    eax,DWORD PTR [ebx]
c010179b:	85 c0                	test   eax,eax
c010179d:	74 19                	je     c01017b8 <sema_down+0xcb>
c010179f:	68 4d 69 10 c0       	push   0xc010694d
c01017a4:	68 04 6a 10 c0       	push   0xc0106a04
c01017a9:	6a 2d                	push   0x2d
c01017ab:	68 ca 68 10 c0       	push   0xc01068ca
c01017b0:	e8 93 ec ff ff       	call   c0100448 <panic_spin>
c01017b5:	83 c4 10             	add    esp,0x10
c01017b8:	89 7d 08             	mov    DWORD PTR [ebp+0x8],edi
c01017bb:	8d 65 f4             	lea    esp,[ebp-0xc]
c01017be:	5b                   	pop    ebx
c01017bf:	5e                   	pop    esi
c01017c0:	5f                   	pop    edi
c01017c1:	5d                   	pop    ebp
c01017c2:	e9 fa f7 ff ff       	jmp    c0100fc1 <intr_set_status>

c01017c7 <sema_up>:
c01017c7:	55                   	push   ebp
c01017c8:	89 e5                	mov    ebp,esp
c01017ca:	57                   	push   edi
c01017cb:	56                   	push   esi
c01017cc:	53                   	push   ebx
c01017cd:	83 ec 0c             	sub    esp,0xc
c01017d0:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c01017d3:	e8 e1 f5 ff ff       	call   c0100db9 <intr_disable>
c01017d8:	89 c7                	mov    edi,eax
c01017da:	8b 03                	mov    eax,DWORD PTR [ebx]
c01017dc:	85 c0                	test   eax,eax
c01017de:	74 19                	je     c01017f9 <sema_up+0x32>
c01017e0:	68 4d 69 10 c0       	push   0xc010694d
c01017e5:	68 10 6a 10 c0       	push   0xc0106a10
c01017ea:	6a 38                	push   0x38
c01017ec:	68 ca 68 10 c0       	push   0xc01068ca
c01017f1:	e8 52 ec ff ff       	call   c0100448 <panic_spin>
c01017f6:	83 c4 10             	add    esp,0x10
c01017f9:	83 ec 0c             	sub    esp,0xc
c01017fc:	8d 73 04             	lea    esi,[ebx+0x4]
c01017ff:	56                   	push   esi
c0101800:	e8 14 13 00 00       	call   c0102b19 <list_empty>
c0101805:	83 c4 10             	add    esp,0x10
c0101808:	85 c0                	test   eax,eax
c010180a:	75 15                	jne    c0101821 <sema_up+0x5a>
c010180c:	83 ec 0c             	sub    esp,0xc
c010180f:	56                   	push   esi
c0101810:	e8 71 12 00 00       	call   c0102a86 <list_pop>
c0101815:	59                   	pop    ecx
c0101816:	ff 70 04             	push   DWORD PTR [eax+0x4]
c0101819:	e8 a1 04 00 00       	call   c0101cbf <thread_unblock>
c010181e:	83 c4 10             	add    esp,0x10
c0101821:	8b 03                	mov    eax,DWORD PTR [ebx]
c0101823:	40                   	inc    eax
c0101824:	89 03                	mov    DWORD PTR [ebx],eax
c0101826:	8b 03                	mov    eax,DWORD PTR [ebx]
c0101828:	48                   	dec    eax
c0101829:	74 19                	je     c0101844 <sema_up+0x7d>
c010182b:	68 5f 69 10 c0       	push   0xc010695f
c0101830:	68 10 6a 10 c0       	push   0xc0106a10
c0101835:	6a 3f                	push   0x3f
c0101837:	68 ca 68 10 c0       	push   0xc01068ca
c010183c:	e8 07 ec ff ff       	call   c0100448 <panic_spin>
c0101841:	83 c4 10             	add    esp,0x10
c0101844:	89 7d 08             	mov    DWORD PTR [ebp+0x8],edi
c0101847:	8d 65 f4             	lea    esp,[ebp-0xc]
c010184a:	5b                   	pop    ebx
c010184b:	5e                   	pop    esi
c010184c:	5f                   	pop    edi
c010184d:	5d                   	pop    ebp
c010184e:	e9 6e f7 ff ff       	jmp    c0100fc1 <intr_set_status>

c0101853 <lock_acquire>:
c0101853:	55                   	push   ebp
c0101854:	89 e5                	mov    ebp,esp
c0101856:	56                   	push   esi
c0101857:	53                   	push   ebx
c0101858:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c010185b:	8b 33                	mov    esi,DWORD PTR [ebx]
c010185d:	e8 64 01 00 00       	call   c01019c6 <running_thread>
c0101862:	39 c6                	cmp    esi,eax
c0101864:	74 3e                	je     c01018a4 <lock_acquire+0x51>
c0101866:	83 ec 0c             	sub    esp,0xc
c0101869:	8d 43 04             	lea    eax,[ebx+0x4]
c010186c:	50                   	push   eax
c010186d:	e8 7b fe ff ff       	call   c01016ed <sema_down>
c0101872:	e8 4f 01 00 00       	call   c01019c6 <running_thread>
c0101877:	83 c4 10             	add    esp,0x10
c010187a:	83 7b 20 00          	cmp    DWORD PTR [ebx+0x20],0x0
c010187e:	89 03                	mov    DWORD PTR [ebx],eax
c0101880:	74 19                	je     c010189b <lock_acquire+0x48>
c0101882:	68 71 69 10 c0       	push   0xc0106971
c0101887:	68 18 6a 10 c0       	push   0xc0106a18
c010188c:	6a 4d                	push   0x4d
c010188e:	68 ca 68 10 c0       	push   0xc01068ca
c0101893:	e8 b0 eb ff ff       	call   c0100448 <panic_spin>
c0101898:	83 c4 10             	add    esp,0x10
c010189b:	c7 43 20 01 00 00 00 	mov    DWORD PTR [ebx+0x20],0x1
c01018a2:	eb 03                	jmp    c01018a7 <lock_acquire+0x54>
c01018a4:	ff 43 20             	inc    DWORD PTR [ebx+0x20]
c01018a7:	8d 65 f8             	lea    esp,[ebp-0x8]
c01018aa:	5b                   	pop    ebx
c01018ab:	5e                   	pop    esi
c01018ac:	5d                   	pop    ebp
c01018ad:	c3                   	ret    

c01018ae <lock_release>:
c01018ae:	55                   	push   ebp
c01018af:	89 e5                	mov    ebp,esp
c01018b1:	56                   	push   esi
c01018b2:	53                   	push   ebx
c01018b3:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c01018b6:	8b 33                	mov    esi,DWORD PTR [ebx]
c01018b8:	e8 09 01 00 00       	call   c01019c6 <running_thread>
c01018bd:	39 c6                	cmp    esi,eax
c01018bf:	74 19                	je     c01018da <lock_release+0x2c>
c01018c1:	68 8e 69 10 c0       	push   0xc010698e
c01018c6:	68 28 6a 10 c0       	push   0xc0106a28
c01018cb:	6a 5c                	push   0x5c
c01018cd:	68 ca 68 10 c0       	push   0xc01068ca
c01018d2:	e8 71 eb ff ff       	call   c0100448 <panic_spin>
c01018d7:	83 c4 10             	add    esp,0x10
c01018da:	8b 43 20             	mov    eax,DWORD PTR [ebx+0x20]
c01018dd:	83 f8 01             	cmp    eax,0x1
c01018e0:	76 0b                	jbe    c01018ed <lock_release+0x3f>
c01018e2:	48                   	dec    eax
c01018e3:	89 43 20             	mov    DWORD PTR [ebx+0x20],eax
c01018e6:	8d 65 f8             	lea    esp,[ebp-0x8]
c01018e9:	5b                   	pop    ebx
c01018ea:	5e                   	pop    esi
c01018eb:	5d                   	pop    ebp
c01018ec:	c3                   	ret    
c01018ed:	74 19                	je     c0101908 <lock_release+0x5a>
c01018ef:	68 b0 69 10 c0       	push   0xc01069b0
c01018f4:	68 28 6a 10 c0       	push   0xc0106a28
c01018f9:	6a 62                	push   0x62
c01018fb:	68 ca 68 10 c0       	push   0xc01068ca
c0101900:	e8 43 eb ff ff       	call   c0100448 <panic_spin>
c0101905:	83 c4 10             	add    esp,0x10
c0101908:	c7 03 00 00 00 00    	mov    DWORD PTR [ebx],0x0
c010190e:	c7 43 20 00 00 00 00 	mov    DWORD PTR [ebx+0x20],0x0
c0101915:	83 c3 04             	add    ebx,0x4
c0101918:	89 5d 08             	mov    DWORD PTR [ebp+0x8],ebx
c010191b:	8d 65 f8             	lea    esp,[ebp-0x8]
c010191e:	5b                   	pop    ebx
c010191f:	5e                   	pop    esi
c0101920:	5d                   	pop    ebp
c0101921:	e9 a1 fe ff ff       	jmp    c01017c7 <sema_up>
	...

c0101930 <switch_to>:
c0101930:	56                   	push   esi
c0101931:	57                   	push   edi
c0101932:	53                   	push   ebx
c0101933:	55                   	push   ebp
c0101934:	8b 44 24 14          	mov    eax,DWORD PTR [esp+0x14]
c0101938:	89 20                	mov    DWORD PTR [eax],esp
c010193a:	8b 44 24 18          	mov    eax,DWORD PTR [esp+0x18]
c010193e:	8b 20                	mov    esp,DWORD PTR [eax]
c0101940:	5d                   	pop    ebp
c0101941:	5b                   	pop    ebx
c0101942:	5f                   	pop    edi
c0101943:	5e                   	pop    esi
c0101944:	c3                   	ret    
c0101945:	00 00                	add    BYTE PTR [eax],al
	...

c0101948 <kernel_thread>:
c0101948:	55                   	push   ebp
c0101949:	89 e5                	mov    ebp,esp
c010194b:	56                   	push   esi
c010194c:	8b 75 0c             	mov    esi,DWORD PTR [ebp+0xc]
c010194f:	53                   	push   ebx
c0101950:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c0101953:	e8 52 f6 ff ff       	call   c0100faa <intr_enable>
c0101958:	89 75 08             	mov    DWORD PTR [ebp+0x8],esi
c010195b:	89 d8                	mov    eax,ebx
c010195d:	5b                   	pop    ebx
c010195e:	5e                   	pop    esi
c010195f:	5d                   	pop    ebp
c0101960:	ff e0                	jmp    eax

c0101962 <thread_init>:
c0101962:	55                   	push   ebp
c0101963:	89 e5                	mov    ebp,esp
c0101965:	53                   	push   ebx
c0101966:	83 ec 18             	sub    esp,0x18
c0101969:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c010196c:	8a 55 10             	mov    dl,BYTE PTR [ebp+0x10]
c010196f:	6a 78                	push   0x78
c0101971:	6a 00                	push   0x0
c0101973:	53                   	push   ebx
c0101974:	88 55 f4             	mov    BYTE PTR [ebp-0xc],dl
c0101977:	e8 28 14 00 00       	call   c0102da4 <memset>
c010197c:	58                   	pop    eax
c010197d:	5a                   	pop    edx
c010197e:	ff 75 0c             	push   DWORD PTR [ebp+0xc]
c0101981:	8d 43 08             	lea    eax,[ebx+0x8]
c0101984:	50                   	push   eax
c0101985:	e8 ed 14 00 00       	call   c0102e77 <strcpy>
c010198a:	83 c4 10             	add    esp,0x10
c010198d:	8a 55 f4             	mov    dl,BYTE PTR [ebp-0xc]
c0101990:	3b 1d a4 ed 11 c0    	cmp    ebx,DWORD PTR ds:0xc011eda4
c0101996:	75 09                	jne    c01019a1 <thread_init+0x3f>
c0101998:	c7 43 04 00 00 00 00 	mov    DWORD PTR [ebx+0x4],0x0
c010199f:	eb 07                	jmp    c01019a8 <thread_init+0x46>
c01019a1:	c7 43 04 01 00 00 00 	mov    DWORD PTR [ebx+0x4],0x1
c01019a8:	8d 83 00 10 00 00    	lea    eax,[ebx+0x1000]
c01019ae:	88 53 18             	mov    BYTE PTR [ebx+0x18],dl
c01019b1:	89 03                	mov    DWORD PTR [ebx],eax
c01019b3:	c7 43 38 00 00 00 00 	mov    DWORD PTR [ebx+0x38],0x0
c01019ba:	c7 43 74 78 56 34 12 	mov    DWORD PTR [ebx+0x74],0x12345678
c01019c1:	8b 5d fc             	mov    ebx,DWORD PTR [ebp-0x4]
c01019c4:	c9                   	leave  
c01019c5:	c3                   	ret    

c01019c6 <running_thread>:
c01019c6:	55                   	push   ebp
c01019c7:	89 e5                	mov    ebp,esp
c01019c9:	89 e0                	mov    eax,esp
c01019cb:	25 00 f0 ff ff       	and    eax,0xfffff000
c01019d0:	5d                   	pop    ebp
c01019d1:	c3                   	ret    

c01019d2 <init_thread>:
c01019d2:	55                   	push   ebp
c01019d3:	89 e5                	mov    ebp,esp
c01019d5:	83 ec 14             	sub    esp,0x14
c01019d8:	68 74 ed 11 c0       	push   0xc011ed74
c01019dd:	e8 06 10 00 00       	call   c01029e8 <list_init>
c01019e2:	c7 04 24 8c ed 11 c0 	mov    DWORD PTR [esp],0xc011ed8c
c01019e9:	e8 fa 0f 00 00       	call   c01029e8 <list_init>
c01019ee:	e8 d3 ff ff ff       	call   c01019c6 <running_thread>
c01019f3:	83 c4 0c             	add    esp,0xc
c01019f6:	6a 1f                	push   0x1f
c01019f8:	68 38 6a 10 c0       	push   0xc0106a38
c01019fd:	50                   	push   eax
c01019fe:	a3 a4 ed 11 c0       	mov    ds:0xc011eda4,eax
c0101a03:	e8 5a ff ff ff       	call   c0101962 <thread_init>
c0101a08:	a1 a4 ed 11 c0       	mov    eax,ds:0xc011eda4
c0101a0d:	89 40 24             	mov    DWORD PTR [eax+0x24],eax
c0101a10:	89 40 30             	mov    DWORD PTR [eax+0x30],eax
c0101a13:	83 c0 20             	add    eax,0x20
c0101a16:	59                   	pop    ecx
c0101a17:	5a                   	pop    edx
c0101a18:	50                   	push   eax
c0101a19:	68 8c ed 11 c0       	push   0xc011ed8c
c0101a1e:	e8 24 10 00 00       	call   c0102a47 <list_append>
c0101a23:	83 c4 10             	add    esp,0x10
c0101a26:	c9                   	leave  
c0101a27:	c3                   	ret    

c0101a28 <thread_create>:
c0101a28:	55                   	push   ebp
c0101a29:	89 e5                	mov    ebp,esp
c0101a2b:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c0101a2e:	8b 02                	mov    eax,DWORD PTR [edx]
c0101a30:	8d 88 50 fe ff ff    	lea    ecx,[eax-0x1b0]
c0101a36:	89 0a                	mov    DWORD PTR [edx],ecx
c0101a38:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
c0101a3b:	c7 80 60 fe ff ff 48 	mov    DWORD PTR [eax-0x1a0],0xc0101948
c0101a42:	19 10 c0 
c0101a45:	c7 80 50 fe ff ff 00 	mov    DWORD PTR [eax-0x1b0],0x0
c0101a4c:	00 00 00 
c0101a4f:	c7 80 54 fe ff ff 00 	mov    DWORD PTR [eax-0x1ac],0x0
c0101a56:	00 00 00 
c0101a59:	89 90 68 fe ff ff    	mov    DWORD PTR [eax-0x198],edx
c0101a5f:	8b 55 10             	mov    edx,DWORD PTR [ebp+0x10]
c0101a62:	c7 80 5c fe ff ff 00 	mov    DWORD PTR [eax-0x1a4],0x0
c0101a69:	00 00 00 
c0101a6c:	c7 80 58 fe ff ff 00 	mov    DWORD PTR [eax-0x1a8],0x0
c0101a73:	00 00 00 
c0101a76:	89 90 6c fe ff ff    	mov    DWORD PTR [eax-0x194],edx
c0101a7c:	5d                   	pop    ebp
c0101a7d:	c3                   	ret    

c0101a7e <thread_start>:
c0101a7e:	55                   	push   ebp
c0101a7f:	89 e5                	mov    ebp,esp
c0101a81:	56                   	push   esi
c0101a82:	8b 75 0c             	mov    esi,DWORD PTR [ebp+0xc]
c0101a85:	53                   	push   ebx
c0101a86:	83 ec 0c             	sub    esp,0xc
c0101a89:	6a 01                	push   0x1
c0101a8b:	e8 aa fa ff ff       	call   c010153a <get_kernel_page>
c0101a90:	81 e6 ff 00 00 00    	and    esi,0xff
c0101a96:	83 c4 0c             	add    esp,0xc
c0101a99:	56                   	push   esi
c0101a9a:	ff 75 08             	push   DWORD PTR [ebp+0x8]
c0101a9d:	50                   	push   eax
c0101a9e:	89 c3                	mov    ebx,eax
c0101aa0:	e8 bd fe ff ff       	call   c0101962 <thread_init>
c0101aa5:	83 c4 0c             	add    esp,0xc
c0101aa8:	ff 75 14             	push   DWORD PTR [ebp+0x14]
c0101aab:	ff 75 10             	push   DWORD PTR [ebp+0x10]
c0101aae:	8d 73 2c             	lea    esi,[ebx+0x2c]
c0101ab1:	53                   	push   ebx
c0101ab2:	e8 71 ff ff ff       	call   c0101a28 <thread_create>
c0101ab7:	89 5b 24             	mov    DWORD PTR [ebx+0x24],ebx
c0101aba:	89 5b 30             	mov    DWORD PTR [ebx+0x30],ebx
c0101abd:	59                   	pop    ecx
c0101abe:	58                   	pop    eax
c0101abf:	56                   	push   esi
c0101ac0:	68 74 ed 11 c0       	push   0xc011ed74
c0101ac5:	e8 d6 0f 00 00       	call   c0102aa0 <list_find>
c0101aca:	83 c4 10             	add    esp,0x10
c0101acd:	85 c0                	test   eax,eax
c0101acf:	74 19                	je     c0101aea <thread_start+0x6c>
c0101ad1:	68 44 6a 10 c0       	push   0xc0106a44
c0101ad6:	68 0c 6c 10 c0       	push   0xc0106c0c
c0101adb:	6a 61                	push   0x61
c0101add:	68 73 6a 10 c0       	push   0xc0106a73
c0101ae2:	e8 61 e9 ff ff       	call   c0100448 <panic_spin>
c0101ae7:	83 c4 10             	add    esp,0x10
c0101aea:	50                   	push   eax
c0101aeb:	50                   	push   eax
c0101aec:	56                   	push   esi
c0101aed:	68 74 ed 11 c0       	push   0xc011ed74
c0101af2:	e8 50 0f 00 00       	call   c0102a47 <list_append>
c0101af7:	8d 73 20             	lea    esi,[ebx+0x20]
c0101afa:	58                   	pop    eax
c0101afb:	5a                   	pop    edx
c0101afc:	56                   	push   esi
c0101afd:	68 8c ed 11 c0       	push   0xc011ed8c
c0101b02:	e8 99 0f 00 00       	call   c0102aa0 <list_find>
c0101b07:	83 c4 10             	add    esp,0x10
c0101b0a:	85 c0                	test   eax,eax
c0101b0c:	74 19                	je     c0101b27 <thread_start+0xa9>
c0101b0e:	68 83 6a 10 c0       	push   0xc0106a83
c0101b13:	68 0c 6c 10 c0       	push   0xc0106c0c
c0101b18:	6a 64                	push   0x64
c0101b1a:	68 73 6a 10 c0       	push   0xc0106a73
c0101b1f:	e8 24 e9 ff ff       	call   c0100448 <panic_spin>
c0101b24:	83 c4 10             	add    esp,0x10
c0101b27:	51                   	push   ecx
c0101b28:	51                   	push   ecx
c0101b29:	56                   	push   esi
c0101b2a:	68 8c ed 11 c0       	push   0xc011ed8c
c0101b2f:	e8 13 0f 00 00       	call   c0102a47 <list_append>
c0101b34:	8d 65 f8             	lea    esp,[ebp-0x8]
c0101b37:	89 d8                	mov    eax,ebx
c0101b39:	5b                   	pop    ebx
c0101b3a:	5e                   	pop    esi
c0101b3b:	5d                   	pop    ebp
c0101b3c:	c3                   	ret    

c0101b3d <schedule>:
c0101b3d:	55                   	push   ebp
c0101b3e:	89 e5                	mov    ebp,esp
c0101b40:	56                   	push   esi
c0101b41:	53                   	push   ebx
c0101b42:	e8 7f fe ff ff       	call   c01019c6 <running_thread>
c0101b47:	81 78 74 78 56 34 12 	cmp    DWORD PTR [eax+0x74],0x12345678
c0101b4e:	89 c3                	mov    ebx,eax
c0101b50:	74 19                	je     c0101b6b <schedule+0x2e>
c0101b52:	68 ac 6a 10 c0       	push   0xc0106aac
c0101b57:	68 1c 6c 10 c0       	push   0xc0106c1c
c0101b5c:	6a 76                	push   0x76
c0101b5e:	68 73 6a 10 c0       	push   0xc0106a73
c0101b63:	e8 e0 e8 ff ff       	call   c0100448 <panic_spin>
c0101b68:	83 c4 10             	add    esp,0x10
c0101b6b:	8b 43 04             	mov    eax,DWORD PTR [ebx+0x4]
c0101b6e:	85 c0                	test   eax,eax
c0101b70:	75 47                	jne    c0101bb9 <schedule+0x7c>
c0101b72:	50                   	push   eax
c0101b73:	50                   	push   eax
c0101b74:	8d 73 2c             	lea    esi,[ebx+0x2c]
c0101b77:	56                   	push   esi
c0101b78:	68 74 ed 11 c0       	push   0xc011ed74
c0101b7d:	e8 1e 0f 00 00       	call   c0102aa0 <list_find>
c0101b82:	83 c4 10             	add    esp,0x10
c0101b85:	85 c0                	test   eax,eax
c0101b87:	74 19                	je     c0101ba2 <schedule+0x65>
c0101b89:	68 d2 6a 10 c0       	push   0xc0106ad2
c0101b8e:	68 1c 6c 10 c0       	push   0xc0106c1c
c0101b93:	6a 7a                	push   0x7a
c0101b95:	68 73 6a 10 c0       	push   0xc0106a73
c0101b9a:	e8 a9 e8 ff ff       	call   c0100448 <panic_spin>
c0101b9f:	83 c4 10             	add    esp,0x10
c0101ba2:	50                   	push   eax
c0101ba3:	50                   	push   eax
c0101ba4:	56                   	push   esi
c0101ba5:	68 74 ed 11 c0       	push   0xc011ed74
c0101baa:	e8 98 0e 00 00       	call   c0102a47 <list_append>
c0101baf:	83 c4 10             	add    esp,0x10
c0101bb2:	c7 43 04 00 00 00 00 	mov    DWORD PTR [ebx+0x4],0x0
c0101bb9:	83 ec 0c             	sub    esp,0xc
c0101bbc:	68 74 ed 11 c0       	push   0xc011ed74
c0101bc1:	c7 05 ec 71 10 c0 00 	mov    DWORD PTR ds:0xc01071ec,0x0
c0101bc8:	00 00 00 
c0101bcb:	e8 49 0f 00 00       	call   c0102b19 <list_empty>
c0101bd0:	83 c4 10             	add    esp,0x10
c0101bd3:	85 c0                	test   eax,eax
c0101bd5:	74 1c                	je     c0101bf3 <schedule+0xb6>
c0101bd7:	68 07 6b 10 c0       	push   0xc0106b07
c0101bdc:	68 1c 6c 10 c0       	push   0xc0106c1c
c0101be1:	68 86 00 00 00       	push   0x86
c0101be6:	68 73 6a 10 c0       	push   0xc0106a73
c0101beb:	e8 58 e8 ff ff       	call   c0100448 <panic_spin>
c0101bf0:	83 c4 10             	add    esp,0x10
c0101bf3:	81 3d 80 ed 11 c0 74 	cmp    DWORD PTR ds:0xc011ed80,0xc011ed74
c0101bfa:	ed 11 c0 
c0101bfd:	75 1c                	jne    c0101c1b <schedule+0xde>
c0101bff:	68 22 6b 10 c0       	push   0xc0106b22
c0101c04:	68 1c 6c 10 c0       	push   0xc0106c1c
c0101c09:	68 87 00 00 00       	push   0x87
c0101c0e:	68 73 6a 10 c0       	push   0xc0106a73
c0101c13:	e8 30 e8 ff ff       	call   c0100448 <panic_spin>
c0101c18:	83 c4 10             	add    esp,0x10
c0101c1b:	83 ec 0c             	sub    esp,0xc
c0101c1e:	68 74 ed 11 c0       	push   0xc011ed74
c0101c23:	e8 5e 0e 00 00       	call   c0102a86 <list_pop>
c0101c28:	8b 70 04             	mov    esi,DWORD PTR [eax+0x4]
c0101c2b:	a3 ec 71 10 c0       	mov    ds:0xc01071ec,eax
c0101c30:	c7 46 04 00 00 00 00 	mov    DWORD PTR [esi+0x4],0x0
c0101c37:	0f 20 da             	mov    edx,cr3
c0101c3a:	8b 46 38             	mov    eax,DWORD PTR [esi+0x38]
c0101c3d:	83 c4 10             	add    esp,0x10
c0101c40:	85 c0                	test   eax,eax
c0101c42:	74 1d                	je     c0101c61 <schedule+0x124>
c0101c44:	39 c2                	cmp    edx,eax
c0101c46:	74 19                	je     c0101c61 <schedule+0x124>
c0101c48:	50                   	push   eax
c0101c49:	50                   	push   eax
c0101c4a:	68 4b 6b 10 c0       	push   0xc0106b4b
c0101c4f:	6a 70                	push   0x70
c0101c51:	e8 af 10 00 00       	call   c0102d05 <put_str>
c0101c56:	89 34 24             	mov    DWORD PTR [esp],esi
c0101c59:	e8 04 03 00 00       	call   c0101f62 <process_activate>
c0101c5e:	83 c4 10             	add    esp,0x10
c0101c61:	50                   	push   eax
c0101c62:	50                   	push   eax
c0101c63:	56                   	push   esi
c0101c64:	53                   	push   ebx
c0101c65:	e8 c6 fc ff ff       	call   c0101930 <switch_to>
c0101c6a:	83 c4 10             	add    esp,0x10
c0101c6d:	8d 65 f8             	lea    esp,[ebp-0x8]
c0101c70:	5b                   	pop    ebx
c0101c71:	5e                   	pop    esi
c0101c72:	5d                   	pop    ebp
c0101c73:	c3                   	ret    

c0101c74 <thread_block>:
c0101c74:	55                   	push   ebp
c0101c75:	89 e5                	mov    ebp,esp
c0101c77:	56                   	push   esi
c0101c78:	53                   	push   ebx
c0101c79:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c0101c7c:	83 fb 01             	cmp    ebx,0x1
c0101c7f:	77 1c                	ja     c0101c9d <thread_block+0x29>
c0101c81:	68 55 6b 10 c0       	push   0xc0106b55
c0101c86:	68 28 6c 10 c0       	push   0xc0106c28
c0101c8b:	68 a0 00 00 00       	push   0xa0
c0101c90:	68 73 6a 10 c0       	push   0xc0106a73
c0101c95:	e8 ae e7 ff ff       	call   c0100448 <panic_spin>
c0101c9a:	83 c4 10             	add    esp,0x10
c0101c9d:	e8 17 f1 ff ff       	call   c0100db9 <intr_disable>
c0101ca2:	89 c6                	mov    esi,eax
c0101ca4:	e8 1d fd ff ff       	call   c01019c6 <running_thread>
c0101ca9:	89 58 04             	mov    DWORD PTR [eax+0x4],ebx
c0101cac:	e8 8c fe ff ff       	call   c0101b3d <schedule>
c0101cb1:	89 75 08             	mov    DWORD PTR [ebp+0x8],esi
c0101cb4:	8d 65 f8             	lea    esp,[ebp-0x8]
c0101cb7:	5b                   	pop    ebx
c0101cb8:	5e                   	pop    esi
c0101cb9:	5d                   	pop    ebp
c0101cba:	e9 02 f3 ff ff       	jmp    c0100fc1 <intr_set_status>

c0101cbf <thread_unblock>:
c0101cbf:	55                   	push   ebp
c0101cc0:	89 e5                	mov    ebp,esp
c0101cc2:	57                   	push   edi
c0101cc3:	56                   	push   esi
c0101cc4:	53                   	push   ebx
c0101cc5:	83 ec 0c             	sub    esp,0xc
c0101cc8:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c0101ccb:	e8 e9 f0 ff ff       	call   c0100db9 <intr_disable>
c0101cd0:	89 c7                	mov    edi,eax
c0101cd2:	8b 43 04             	mov    eax,DWORD PTR [ebx+0x4]
c0101cd5:	48                   	dec    eax
c0101cd6:	74 7a                	je     c0101d52 <thread_unblock+0x93>
c0101cd8:	51                   	push   ecx
c0101cd9:	51                   	push   ecx
c0101cda:	8d 73 2c             	lea    esi,[ebx+0x2c]
c0101cdd:	56                   	push   esi
c0101cde:	68 74 ed 11 c0       	push   0xc011ed74
c0101ce3:	e8 b8 0d 00 00       	call   c0102aa0 <list_find>
c0101ce8:	83 c4 10             	add    esp,0x10
c0101ceb:	85 c0                	test   eax,eax
c0101ced:	74 1c                	je     c0101d0b <thread_unblock+0x4c>
c0101cef:	68 84 6b 10 c0       	push   0xc0106b84
c0101cf4:	68 38 6c 10 c0       	push   0xc0106c38
c0101cf9:	68 ae 00 00 00       	push   0xae
c0101cfe:	68 73 6a 10 c0       	push   0xc0106a73
c0101d03:	e8 40 e7 ff ff       	call   c0100448 <panic_spin>
c0101d08:	83 c4 10             	add    esp,0x10
c0101d0b:	52                   	push   edx
c0101d0c:	52                   	push   edx
c0101d0d:	56                   	push   esi
c0101d0e:	68 74 ed 11 c0       	push   0xc011ed74
c0101d13:	e8 88 0d 00 00       	call   c0102aa0 <list_find>
c0101d18:	83 c4 10             	add    esp,0x10
c0101d1b:	85 c0                	test   eax,eax
c0101d1d:	74 1c                	je     c0101d3b <thread_unblock+0x7c>
c0101d1f:	68 b4 6b 10 c0       	push   0xc0106bb4
c0101d24:	68 38 6c 10 c0       	push   0xc0106c38
c0101d29:	68 b1 00 00 00       	push   0xb1
c0101d2e:	68 73 6a 10 c0       	push   0xc0106a73
c0101d33:	e8 10 e7 ff ff       	call   c0100448 <panic_spin>
c0101d38:	83 c4 10             	add    esp,0x10
c0101d3b:	50                   	push   eax
c0101d3c:	50                   	push   eax
c0101d3d:	56                   	push   esi
c0101d3e:	68 74 ed 11 c0       	push   0xc011ed74
c0101d43:	e8 e7 0c 00 00       	call   c0102a2f <list_push>
c0101d48:	83 c4 10             	add    esp,0x10
c0101d4b:	c7 43 04 01 00 00 00 	mov    DWORD PTR [ebx+0x4],0x1
c0101d52:	89 7d 08             	mov    DWORD PTR [ebp+0x8],edi
c0101d55:	8d 65 f4             	lea    esp,[ebp-0xc]
c0101d58:	5b                   	pop    ebx
c0101d59:	5e                   	pop    esi
c0101d5a:	5f                   	pop    edi
c0101d5b:	5d                   	pop    ebp
c0101d5c:	e9 60 f2 ff ff       	jmp    c0100fc1 <intr_set_status>
c0101d61:	00 00                	add    BYTE PTR [eax],al
	...

c0101d64 <set_segmdesc>:
c0101d64:	55                   	push   ebp
c0101d65:	89 e5                	mov    ebp,esp
c0101d67:	57                   	push   edi
c0101d68:	8b 7d 08             	mov    edi,DWORD PTR [ebp+0x8]
c0101d6b:	56                   	push   esi
c0101d6c:	89 d6                	mov    esi,edx
c0101d6e:	c1 ee 10             	shr    esi,0x10
c0101d71:	53                   	push   ebx
c0101d72:	89 f3                	mov    ebx,esi
c0101d74:	88 58 04             	mov    BYTE PTR [eax+0x4],bl
c0101d77:	89 fb                	mov    ebx,edi
c0101d79:	88 58 05             	mov    BYTE PTR [eax+0x5],bl
c0101d7c:	89 fb                	mov    ebx,edi
c0101d7e:	66 89 08             	mov    WORD PTR [eax],cx
c0101d81:	66 c1 eb 08          	shr    bx,0x8
c0101d85:	c1 e9 10             	shr    ecx,0x10
c0101d88:	83 e3 f0             	and    ebx,0xfffffff0
c0101d8b:	83 e1 0f             	and    ecx,0xf
c0101d8e:	09 cb                	or     ebx,ecx
c0101d90:	66 89 50 02          	mov    WORD PTR [eax+0x2],dx
c0101d94:	c1 ea 18             	shr    edx,0x18
c0101d97:	88 58 06             	mov    BYTE PTR [eax+0x6],bl
c0101d9a:	88 50 07             	mov    BYTE PTR [eax+0x7],dl
c0101d9d:	5b                   	pop    ebx
c0101d9e:	5e                   	pop    esi
c0101d9f:	5f                   	pop    edi
c0101da0:	5d                   	pop    ebp
c0101da1:	c3                   	ret    

c0101da2 <init_tss>:
c0101da2:	55                   	push   ebp
c0101da3:	89 e5                	mov    ebp,esp
c0101da5:	83 ec 1c             	sub    esp,0x1c
c0101da8:	6a 6c                	push   0x6c
c0101daa:	6a 00                	push   0x0
c0101dac:	68 f0 71 10 c0       	push   0xc01071f0
c0101db1:	e8 ee 0f 00 00       	call   c0102da4 <memset>
c0101db6:	b9 6b 00 00 00       	mov    ecx,0x6b
c0101dbb:	ba f0 71 10 c0       	mov    edx,0xc01071f0
c0101dc0:	b8 18 10 00 00       	mov    eax,0x1018
c0101dc5:	c7 04 24 89 80 00 00 	mov    DWORD PTR [esp],0x8089
c0101dcc:	c7 05 f8 71 10 c0 10 	mov    DWORD PTR ds:0xc01071f8,0x10
c0101dd3:	00 00 00 
c0101dd6:	c7 05 58 72 10 c0 6c 	mov    DWORD PTR ds:0xc0107258,0x6c
c0101ddd:	00 00 00 
c0101de0:	e8 7f ff ff ff       	call   c0101d64 <set_segmdesc>
c0101de5:	31 d2                	xor    edx,edx
c0101de7:	b9 ff ff 0f 00       	mov    ecx,0xfffff
c0101dec:	b8 20 10 00 00       	mov    eax,0x1020
c0101df1:	c7 04 24 f8 c0 00 00 	mov    DWORD PTR [esp],0xc0f8
c0101df8:	e8 67 ff ff ff       	call   c0101d64 <set_segmdesc>
c0101dfd:	b9 ff ff 0f 00       	mov    ecx,0xfffff
c0101e02:	31 d2                	xor    edx,edx
c0101e04:	b8 28 10 00 00       	mov    eax,0x1028
c0101e09:	c7 04 24 f2 c0 00 00 	mov    DWORD PTR [esp],0xc0f2
c0101e10:	e8 4f ff ff ff       	call   c0101d64 <set_segmdesc>
c0101e15:	c7 45 f0 37 00 00 10 	mov    DWORD PTR [ebp-0x10],0x10000037
c0101e1c:	c7 45 f4 00 00 00 00 	mov    DWORD PTR [ebp-0xc],0x0
c0101e23:	0f 01 55 f0          	lgdtd  [ebp-0x10]
c0101e27:	b8 18 00 00 00       	mov    eax,0x18
c0101e2c:	0f 00 d8             	ltr    ax
c0101e2f:	83 c4 10             	add    esp,0x10
c0101e32:	c9                   	leave  
c0101e33:	c3                   	ret    

c0101e34 <update_tss_esp0>:
c0101e34:	55                   	push   ebp
c0101e35:	89 e5                	mov    ebp,esp
c0101e37:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0101e3a:	5d                   	pop    ebp
c0101e3b:	05 00 10 00 00       	add    eax,0x1000
c0101e40:	a3 f4 71 10 c0       	mov    ds:0xc01071f4,eax
c0101e45:	c3                   	ret    
	...

c0101e48 <start_process>:
c0101e48:	55                   	push   ebp
c0101e49:	89 e5                	mov    ebp,esp
c0101e4b:	56                   	push   esi
c0101e4c:	53                   	push   ebx
c0101e4d:	e8 74 fb ff ff       	call   c01019c6 <running_thread>
c0101e52:	8b 18                	mov    ebx,DWORD PTR [eax]
c0101e54:	8d b3 80 00 00 00    	lea    esi,[ebx+0x80]
c0101e5a:	89 30                	mov    DWORD PTR [eax],esi
c0101e5c:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0101e5f:	c7 83 84 00 00 00 00 	mov    DWORD PTR [ebx+0x84],0x0
c0101e66:	00 00 00 
c0101e69:	c7 83 88 00 00 00 00 	mov    DWORD PTR [ebx+0x88],0x0
c0101e70:	00 00 00 
c0101e73:	c7 83 8c 00 00 00 00 	mov    DWORD PTR [ebx+0x8c],0x0
c0101e7a:	00 00 00 
c0101e7d:	89 83 b8 00 00 00    	mov    DWORD PTR [ebx+0xb8],eax
c0101e83:	c7 83 90 00 00 00 00 	mov    DWORD PTR [ebx+0x90],0x0
c0101e8a:	00 00 00 
c0101e8d:	c7 83 94 00 00 00 00 	mov    DWORD PTR [ebx+0x94],0x0
c0101e94:	00 00 00 
c0101e97:	c7 83 98 00 00 00 00 	mov    DWORD PTR [ebx+0x98],0x0
c0101e9e:	00 00 00 
c0101ea1:	c7 83 9c 00 00 00 00 	mov    DWORD PTR [ebx+0x9c],0x0
c0101ea8:	00 00 00 
c0101eab:	c7 83 a0 00 00 00 00 	mov    DWORD PTR [ebx+0xa0],0x0
c0101eb2:	00 00 00 
c0101eb5:	c7 83 a4 00 00 00 00 	mov    DWORD PTR [ebx+0xa4],0x0
c0101ebc:	00 00 00 
c0101ebf:	c7 83 b0 00 00 00 2b 	mov    DWORD PTR [ebx+0xb0],0x2b
c0101ec6:	00 00 00 
c0101ec9:	c7 83 ac 00 00 00 2b 	mov    DWORD PTR [ebx+0xac],0x2b
c0101ed0:	00 00 00 
c0101ed3:	c7 83 a8 00 00 00 2b 	mov    DWORD PTR [ebx+0xa8],0x2b
c0101eda:	00 00 00 
c0101edd:	c7 83 bc 00 00 00 23 	mov    DWORD PTR [ebx+0xbc],0x23
c0101ee4:	00 00 00 
c0101ee7:	c7 83 c0 00 00 00 02 	mov    DWORD PTR [ebx+0xc0],0x202
c0101eee:	02 00 00 
c0101ef1:	50                   	push   eax
c0101ef2:	50                   	push   eax
c0101ef3:	68 00 f0 ff bf       	push   0xbffff000
c0101ef8:	6a 02                	push   0x2
c0101efa:	e8 be f6 ff ff       	call   c01015bd <get_a_page>
c0101eff:	c7 83 c8 00 00 00 2b 	mov    DWORD PTR [ebx+0xc8],0x2b
c0101f06:	00 00 00 
c0101f09:	05 00 10 00 00       	add    eax,0x1000
c0101f0e:	89 83 c4 00 00 00    	mov    DWORD PTR [ebx+0xc4],eax
c0101f14:	89 f4                	mov    esp,esi
c0101f16:	e9 35 e6 ff ff       	jmp    c0100550 <intr_exit>
c0101f1b:	83 c4 10             	add    esp,0x10
c0101f1e:	8d 65 f8             	lea    esp,[ebp-0x8]
c0101f21:	5b                   	pop    ebx
c0101f22:	5e                   	pop    esi
c0101f23:	5d                   	pop    ebp
c0101f24:	c3                   	ret    

c0101f25 <page_dir_activate>:
c0101f25:	55                   	push   ebp
c0101f26:	89 e5                	mov    ebp,esp
c0101f28:	53                   	push   ebx
c0101f29:	52                   	push   edx
c0101f2a:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c0101f2d:	83 7b 38 00          	cmp    DWORD PTR [ebx+0x38],0x0
c0101f31:	75 19                	jne    c0101f4c <page_dir_activate+0x27>
c0101f33:	68 70 6c 10 c0       	push   0xc0106c70
c0101f38:	68 78 6d 10 c0       	push   0xc0106d78
c0101f3d:	6a 2c                	push   0x2c
c0101f3f:	68 8a 6c 10 c0       	push   0xc0106c8a
c0101f44:	e8 ff e4 ff ff       	call   c0100448 <panic_spin>
c0101f49:	83 c4 10             	add    esp,0x10
c0101f4c:	83 ec 0c             	sub    esp,0xc
c0101f4f:	ff 73 38             	push   DWORD PTR [ebx+0x38]
c0101f52:	e8 0a f7 ff ff       	call   c0101661 <addr_v2p>
c0101f57:	0f 22 d8             	mov    cr3,eax
c0101f5a:	83 c4 10             	add    esp,0x10
c0101f5d:	8b 5d fc             	mov    ebx,DWORD PTR [ebp-0x4]
c0101f60:	c9                   	leave  
c0101f61:	c3                   	ret    

c0101f62 <process_activate>:
c0101f62:	55                   	push   ebp
c0101f63:	89 e5                	mov    ebp,esp
c0101f65:	53                   	push   ebx
c0101f66:	51                   	push   ecx
c0101f67:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c0101f6a:	85 db                	test   ebx,ebx
c0101f6c:	75 19                	jne    c0101f87 <process_activate+0x25>
c0101f6e:	68 9d 6c 10 c0       	push   0xc0106c9d
c0101f73:	68 8c 6d 10 c0       	push   0xc0106d8c
c0101f78:	6a 3e                	push   0x3e
c0101f7a:	68 8a 6c 10 c0       	push   0xc0106c8a
c0101f7f:	e8 c4 e4 ff ff       	call   c0100448 <panic_spin>
c0101f84:	83 c4 10             	add    esp,0x10
c0101f87:	83 ec 0c             	sub    esp,0xc
c0101f8a:	53                   	push   ebx
c0101f8b:	e8 95 ff ff ff       	call   c0101f25 <page_dir_activate>
c0101f90:	83 c4 10             	add    esp,0x10
c0101f93:	83 7b 38 00          	cmp    DWORD PTR [ebx+0x38],0x0
c0101f97:	74 0c                	je     c0101fa5 <process_activate+0x43>
c0101f99:	89 5d 08             	mov    DWORD PTR [ebp+0x8],ebx
c0101f9c:	8b 5d fc             	mov    ebx,DWORD PTR [ebp-0x4]
c0101f9f:	c9                   	leave  
c0101fa0:	e9 8f fe ff ff       	jmp    c0101e34 <update_tss_esp0>
c0101fa5:	8b 5d fc             	mov    ebx,DWORD PTR [ebp-0x4]
c0101fa8:	c9                   	leave  
c0101fa9:	c3                   	ret    

c0101faa <create_page_dir>:
c0101faa:	55                   	push   ebp
c0101fab:	89 e5                	mov    ebp,esp
c0101fad:	53                   	push   ebx
c0101fae:	83 ec 10             	sub    esp,0x10
c0101fb1:	6a 01                	push   0x1
c0101fb3:	e8 82 f5 ff ff       	call   c010153a <get_kernel_page>
c0101fb8:	83 c4 10             	add    esp,0x10
c0101fbb:	85 c0                	test   eax,eax
c0101fbd:	89 c3                	mov    ebx,eax
c0101fbf:	75 10                	jne    c0101fd1 <create_page_dir+0x27>
c0101fc1:	50                   	push   eax
c0101fc2:	50                   	push   eax
c0101fc3:	68 ad 6c 10 c0       	push   0xc0106cad
c0101fc8:	6a 04                	push   0x4
c0101fca:	e8 bc 01 00 00       	call   c010218b <console_str>
c0101fcf:	eb 28                	jmp    c0101ff9 <create_page_dir+0x4f>
c0101fd1:	50                   	push   eax
c0101fd2:	68 00 04 00 00       	push   0x400
c0101fd7:	68 00 fc ff ff       	push   0xfffffc00
c0101fdc:	8d 83 00 0c 00 00    	lea    eax,[ebx+0xc00]
c0101fe2:	50                   	push   eax
c0101fe3:	e8 03 0e 00 00       	call   c0102deb <memcpy>
c0101fe8:	89 1c 24             	mov    DWORD PTR [esp],ebx
c0101feb:	e8 71 f6 ff ff       	call   c0101661 <addr_v2p>
c0101ff0:	83 c8 07             	or     eax,0x7
c0101ff3:	89 83 fc 0f 00 00    	mov    DWORD PTR [ebx+0xffc],eax
c0101ff9:	89 d8                	mov    eax,ebx
c0101ffb:	83 c4 10             	add    esp,0x10
c0101ffe:	8b 5d fc             	mov    ebx,DWORD PTR [ebp-0x4]
c0102001:	c9                   	leave  
c0102002:	c3                   	ret    

c0102003 <create_user_vaddr_memman>:
c0102003:	55                   	push   ebp
c0102004:	89 e5                	mov    ebp,esp
c0102006:	83 ec 14             	sub    esp,0x14
c0102009:	6a 08                	push   0x8
c010200b:	e8 2a f5 ff ff       	call   c010153a <get_kernel_page>
c0102010:	5a                   	pop    edx
c0102011:	59                   	pop    ecx
c0102012:	50                   	push   eax
c0102013:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102016:	83 c0 3c             	add    eax,0x3c
c0102019:	50                   	push   eax
c010201a:	e8 b9 ef ff ff       	call   c0100fd8 <init_memman>
c010201f:	83 c4 10             	add    esp,0x10
c0102022:	c9                   	leave  
c0102023:	c3                   	ret    

c0102024 <process_execute>:
c0102024:	55                   	push   ebp
c0102025:	89 e5                	mov    ebp,esp
c0102027:	57                   	push   edi
c0102028:	56                   	push   esi
c0102029:	53                   	push   ebx
c010202a:	83 ec 18             	sub    esp,0x18
c010202d:	8b 75 08             	mov    esi,DWORD PTR [ebp+0x8]
c0102030:	6a 01                	push   0x1
c0102032:	8b 7d 0c             	mov    edi,DWORD PTR [ebp+0xc]
c0102035:	e8 00 f5 ff ff       	call   c010153a <get_kernel_page>
c010203a:	83 c4 0c             	add    esp,0xc
c010203d:	6a 1f                	push   0x1f
c010203f:	57                   	push   edi
c0102040:	89 c3                	mov    ebx,eax
c0102042:	50                   	push   eax
c0102043:	e8 1a f9 ff ff       	call   c0101962 <thread_init>
c0102048:	89 1c 24             	mov    DWORD PTR [esp],ebx
c010204b:	e8 b3 ff ff ff       	call   c0102003 <create_user_vaddr_memman>
c0102050:	83 c4 0c             	add    esp,0xc
c0102053:	56                   	push   esi
c0102054:	68 48 1e 10 c0       	push   0xc0101e48
c0102059:	53                   	push   ebx
c010205a:	e8 c9 f9 ff ff       	call   c0101a28 <thread_create>
c010205f:	e8 46 ff ff ff       	call   c0101faa <create_page_dir>
c0102064:	89 43 38             	mov    DWORD PTR [ebx+0x38],eax
c0102067:	59                   	pop    ecx
c0102068:	5e                   	pop    esi
c0102069:	8d 73 20             	lea    esi,[ebx+0x20]
c010206c:	68 d7 6c 10 c0       	push   0xc0106cd7
c0102071:	6a 70                	push   0x70
c0102073:	e8 8d 0c 00 00       	call   c0102d05 <put_str>
c0102078:	83 c4 0c             	add    esp,0xc
c010207b:	6a 10                	push   0x10
c010207d:	53                   	push   ebx
c010207e:	6a 70                	push   0x70
c0102080:	e8 a8 0c 00 00       	call   c0102d2d <put_uint>
c0102085:	5f                   	pop    edi
c0102086:	58                   	pop    eax
c0102087:	68 e2 6c 10 c0       	push   0xc0106ce2
c010208c:	6a 70                	push   0x70
c010208e:	e8 72 0c 00 00       	call   c0102d05 <put_str>
c0102093:	83 c4 0c             	add    esp,0xc
c0102096:	6a 10                	push   0x10
c0102098:	ff 73 38             	push   DWORD PTR [ebx+0x38]
c010209b:	6a 70                	push   0x70
c010209d:	e8 8b 0c 00 00       	call   c0102d2d <put_uint>
c01020a2:	89 5b 30             	mov    DWORD PTR [ebx+0x30],ebx
c01020a5:	89 5b 24             	mov    DWORD PTR [ebx+0x24],ebx
c01020a8:	e8 0c ed ff ff       	call   c0100db9 <intr_disable>
c01020ad:	89 c7                	mov    edi,eax
c01020af:	58                   	pop    eax
c01020b0:	5a                   	pop    edx
c01020b1:	56                   	push   esi
c01020b2:	68 8c ed 11 c0       	push   0xc011ed8c
c01020b7:	e8 e4 09 00 00       	call   c0102aa0 <list_find>
c01020bc:	83 c4 10             	add    esp,0x10
c01020bf:	85 c0                	test   eax,eax
c01020c1:	74 19                	je     c01020dc <process_execute+0xb8>
c01020c3:	68 f0 6c 10 c0       	push   0xc0106cf0
c01020c8:	68 a0 6d 10 c0       	push   0xc0106da0
c01020cd:	6a 73                	push   0x73
c01020cf:	68 8a 6c 10 c0       	push   0xc0106c8a
c01020d4:	e8 6f e3 ff ff       	call   c0100448 <panic_spin>
c01020d9:	83 c4 10             	add    esp,0x10
c01020dc:	50                   	push   eax
c01020dd:	83 c3 2c             	add    ebx,0x2c
c01020e0:	50                   	push   eax
c01020e1:	56                   	push   esi
c01020e2:	68 8c ed 11 c0       	push   0xc011ed8c
c01020e7:	e8 5b 09 00 00       	call   c0102a47 <list_append>
c01020ec:	58                   	pop    eax
c01020ed:	5a                   	pop    edx
c01020ee:	53                   	push   ebx
c01020ef:	68 74 ed 11 c0       	push   0xc011ed74
c01020f4:	e8 a7 09 00 00       	call   c0102aa0 <list_find>
c01020f9:	83 c4 10             	add    esp,0x10
c01020fc:	85 c0                	test   eax,eax
c01020fe:	74 19                	je     c0102119 <process_execute+0xf5>
c0102100:	68 1c 6d 10 c0       	push   0xc0106d1c
c0102105:	68 a0 6d 10 c0       	push   0xc0106da0
c010210a:	6a 76                	push   0x76
c010210c:	68 8a 6c 10 c0       	push   0xc0106c8a
c0102111:	e8 32 e3 ff ff       	call   c0100448 <panic_spin>
c0102116:	83 c4 10             	add    esp,0x10
c0102119:	56                   	push   esi
c010211a:	56                   	push   esi
c010211b:	53                   	push   ebx
c010211c:	68 74 ed 11 c0       	push   0xc011ed74
c0102121:	e8 21 09 00 00       	call   c0102a47 <list_append>
c0102126:	83 c4 10             	add    esp,0x10
c0102129:	89 7d 08             	mov    DWORD PTR [ebp+0x8],edi
c010212c:	8d 65 f4             	lea    esp,[ebp-0xc]
c010212f:	5b                   	pop    ebx
c0102130:	5e                   	pop    esi
c0102131:	5f                   	pop    edi
c0102132:	5d                   	pop    ebp
c0102133:	e9 89 ee ff ff       	jmp    c0100fc1 <intr_set_status>

c0102138 <init_console>:
c0102138:	55                   	push   ebp
c0102139:	89 e5                	mov    ebp,esp
c010213b:	83 ec 14             	sub    esp,0x14
c010213e:	68 5c 72 10 c0       	push   0xc010725c
c0102143:	e8 7f f5 ff ff       	call   c01016c7 <lock_init>
c0102148:	83 c4 10             	add    esp,0x10
c010214b:	c9                   	leave  
c010214c:	c3                   	ret    

c010214d <console_char>:
c010214d:	55                   	push   ebp
c010214e:	89 e5                	mov    ebp,esp
c0102150:	56                   	push   esi
c0102151:	8b 75 0c             	mov    esi,DWORD PTR [ebp+0xc]
c0102154:	53                   	push   ebx
c0102155:	8a 5d 08             	mov    bl,BYTE PTR [ebp+0x8]
c0102158:	83 ec 0c             	sub    esp,0xc
c010215b:	68 5c 72 10 c0       	push   0xc010725c
c0102160:	e8 ee f6 ff ff       	call   c0101853 <lock_acquire>
c0102165:	58                   	pop    eax
c0102166:	5a                   	pop    edx
c0102167:	89 f2                	mov    edx,esi
c0102169:	0f b6 c2             	movzx  eax,dl
c010216c:	50                   	push   eax
c010216d:	0f b6 c3             	movzx  eax,bl
c0102170:	50                   	push   eax
c0102171:	e8 ee 0a 00 00       	call   c0102c64 <put_char>
c0102176:	83 c4 10             	add    esp,0x10
c0102179:	c7 45 08 5c 72 10 c0 	mov    DWORD PTR [ebp+0x8],0xc010725c
c0102180:	8d 65 f8             	lea    esp,[ebp-0x8]
c0102183:	5b                   	pop    ebx
c0102184:	5e                   	pop    esi
c0102185:	5d                   	pop    ebp
c0102186:	e9 23 f7 ff ff       	jmp    c01018ae <lock_release>

c010218b <console_str>:
c010218b:	55                   	push   ebp
c010218c:	89 e5                	mov    ebp,esp
c010218e:	56                   	push   esi
c010218f:	8b 75 0c             	mov    esi,DWORD PTR [ebp+0xc]
c0102192:	53                   	push   ebx
c0102193:	8a 5d 08             	mov    bl,BYTE PTR [ebp+0x8]
c0102196:	83 ec 0c             	sub    esp,0xc
c0102199:	68 5c 72 10 c0       	push   0xc010725c
c010219e:	e8 b0 f6 ff ff       	call   c0101853 <lock_acquire>
c01021a3:	59                   	pop    ecx
c01021a4:	58                   	pop    eax
c01021a5:	0f b6 c3             	movzx  eax,bl
c01021a8:	56                   	push   esi
c01021a9:	50                   	push   eax
c01021aa:	e8 56 0b 00 00       	call   c0102d05 <put_str>
c01021af:	83 c4 10             	add    esp,0x10
c01021b2:	c7 45 08 5c 72 10 c0 	mov    DWORD PTR [ebp+0x8],0xc010725c
c01021b9:	8d 65 f8             	lea    esp,[ebp-0x8]
c01021bc:	5b                   	pop    ebx
c01021bd:	5e                   	pop    esi
c01021be:	5d                   	pop    ebp
c01021bf:	e9 ea f6 ff ff       	jmp    c01018ae <lock_release>

c01021c4 <console_int>:
c01021c4:	55                   	push   ebp
c01021c5:	89 e5                	mov    ebp,esp
c01021c7:	57                   	push   edi
c01021c8:	56                   	push   esi
c01021c9:	53                   	push   ebx
c01021ca:	83 ec 18             	sub    esp,0x18
c01021cd:	8b 7d 10             	mov    edi,DWORD PTR [ebp+0x10]
c01021d0:	8b 75 0c             	mov    esi,DWORD PTR [ebp+0xc]
c01021d3:	8a 5d 08             	mov    bl,BYTE PTR [ebp+0x8]
c01021d6:	68 5c 72 10 c0       	push   0xc010725c
c01021db:	e8 73 f6 ff ff       	call   c0101853 <lock_acquire>
c01021e0:	83 c4 0c             	add    esp,0xc
c01021e3:	57                   	push   edi
c01021e4:	56                   	push   esi
c01021e5:	0f b6 c3             	movzx  eax,bl
c01021e8:	50                   	push   eax
c01021e9:	e8 79 0b 00 00       	call   c0102d67 <put_int>
c01021ee:	83 c4 10             	add    esp,0x10
c01021f1:	c7 45 08 5c 72 10 c0 	mov    DWORD PTR [ebp+0x8],0xc010725c
c01021f8:	8d 65 f4             	lea    esp,[ebp-0xc]
c01021fb:	5b                   	pop    ebx
c01021fc:	5e                   	pop    esi
c01021fd:	5f                   	pop    edi
c01021fe:	5d                   	pop    ebp
c01021ff:	e9 aa f6 ff ff       	jmp    c01018ae <lock_release>

c0102204 <console_uint>:
c0102204:	55                   	push   ebp
c0102205:	89 e5                	mov    ebp,esp
c0102207:	57                   	push   edi
c0102208:	56                   	push   esi
c0102209:	53                   	push   ebx
c010220a:	83 ec 18             	sub    esp,0x18
c010220d:	8b 7d 10             	mov    edi,DWORD PTR [ebp+0x10]
c0102210:	8b 75 0c             	mov    esi,DWORD PTR [ebp+0xc]
c0102213:	8a 5d 08             	mov    bl,BYTE PTR [ebp+0x8]
c0102216:	68 5c 72 10 c0       	push   0xc010725c
c010221b:	e8 33 f6 ff ff       	call   c0101853 <lock_acquire>
c0102220:	83 c4 0c             	add    esp,0xc
c0102223:	57                   	push   edi
c0102224:	56                   	push   esi
c0102225:	0f b6 c3             	movzx  eax,bl
c0102228:	50                   	push   eax
c0102229:	e8 ff 0a 00 00       	call   c0102d2d <put_uint>
c010222e:	83 c4 10             	add    esp,0x10
c0102231:	c7 45 08 5c 72 10 c0 	mov    DWORD PTR [ebp+0x8],0xc010725c
c0102238:	8d 65 f4             	lea    esp,[ebp-0xc]
c010223b:	5b                   	pop    ebx
c010223c:	5e                   	pop    esi
c010223d:	5f                   	pop    edi
c010223e:	5d                   	pop    ebp
c010223f:	e9 6a f6 ff ff       	jmp    c01018ae <lock_release>

c0102244 <init_cpu>:
c0102244:	55                   	push   ebp
c0102245:	31 c0                	xor    eax,eax
c0102247:	89 e5                	mov    ebp,esp
c0102249:	b9 04 00 00 00       	mov    ecx,0x4
c010224e:	57                   	push   edi
c010224f:	56                   	push   esi
c0102250:	53                   	push   ebx
c0102251:	8d 7d d8             	lea    edi,[ebp-0x28]
c0102254:	83 ec 3c             	sub    esp,0x3c
c0102257:	f3 ab                	rep stos DWORD PTR es:[edi],eax
c0102259:	8d 7d c7             	lea    edi,[ebp-0x39]
c010225c:	8d 75 c7             	lea    esi,[ebp-0x39]
c010225f:	b1 11                	mov    cl,0x11
c0102261:	f3 aa                	rep stos BYTE PTR es:[edi],al
c0102263:	bf 02 00 00 80       	mov    edi,0x80000002
c0102268:	eb 30                	jmp    c010229a <init_cpu+0x56>
c010226a:	89 f8                	mov    eax,edi
c010226c:	31 c9                	xor    ecx,ecx
c010226e:	0f a2                	cpuid  
c0102270:	89 45 d8             	mov    DWORD PTR [ebp-0x28],eax
c0102273:	47                   	inc    edi
c0102274:	89 45 c7             	mov    DWORD PTR [ebp-0x39],eax
c0102277:	50                   	push   eax
c0102278:	50                   	push   eax
c0102279:	56                   	push   esi
c010227a:	6a 07                	push   0x7
c010227c:	89 5d dc             	mov    DWORD PTR [ebp-0x24],ebx
c010227f:	89 4d e0             	mov    DWORD PTR [ebp-0x20],ecx
c0102282:	89 55 e4             	mov    DWORD PTR [ebp-0x1c],edx
c0102285:	89 5d cb             	mov    DWORD PTR [ebp-0x35],ebx
c0102288:	89 4d cf             	mov    DWORD PTR [ebp-0x31],ecx
c010228b:	89 55 d3             	mov    DWORD PTR [ebp-0x2d],edx
c010228e:	c6 45 d7 00          	mov    BYTE PTR [ebp-0x29],0x0
c0102292:	e8 6e 0a 00 00       	call   c0102d05 <put_str>
c0102297:	83 c4 10             	add    esp,0x10
c010229a:	81 ff 05 00 00 80    	cmp    edi,0x80000005
c01022a0:	75 c8                	jne    c010226a <init_cpu+0x26>
c01022a2:	8d 65 f4             	lea    esp,[ebp-0xc]
c01022a5:	5b                   	pop    ebx
c01022a6:	5e                   	pop    esi
c01022a7:	5f                   	pop    edi
c01022a8:	5d                   	pop    ebp
c01022a9:	c3                   	ret    

c01022aa <cpu_info>:
c01022aa:	55                   	push   ebp
c01022ab:	31 c0                	xor    eax,eax
c01022ad:	89 e5                	mov    ebp,esp
c01022af:	b9 04 00 00 00       	mov    ecx,0x4
c01022b4:	57                   	push   edi
c01022b5:	56                   	push   esi
c01022b6:	53                   	push   ebx
c01022b7:	8d 7d d8             	lea    edi,[ebp-0x28]
c01022ba:	83 ec 3c             	sub    esp,0x3c
c01022bd:	f3 ab                	rep stos DWORD PTR es:[edi],eax
c01022bf:	8d 7d c7             	lea    edi,[ebp-0x39]
c01022c2:	8d 75 c7             	lea    esi,[ebp-0x39]
c01022c5:	b1 11                	mov    cl,0x11
c01022c7:	f3 aa                	rep stos BYTE PTR es:[edi],al
c01022c9:	bf 02 00 00 80       	mov    edi,0x80000002
c01022ce:	eb 30                	jmp    c0102300 <cpu_info+0x56>
c01022d0:	89 f8                	mov    eax,edi
c01022d2:	31 c9                	xor    ecx,ecx
c01022d4:	0f a2                	cpuid  
c01022d6:	89 55 e4             	mov    DWORD PTR [ebp-0x1c],edx
c01022d9:	47                   	inc    edi
c01022da:	89 55 d3             	mov    DWORD PTR [ebp-0x2d],edx
c01022dd:	52                   	push   edx
c01022de:	52                   	push   edx
c01022df:	56                   	push   esi
c01022e0:	6a 07                	push   0x7
c01022e2:	89 45 d8             	mov    DWORD PTR [ebp-0x28],eax
c01022e5:	89 5d dc             	mov    DWORD PTR [ebp-0x24],ebx
c01022e8:	89 4d e0             	mov    DWORD PTR [ebp-0x20],ecx
c01022eb:	89 45 c7             	mov    DWORD PTR [ebp-0x39],eax
c01022ee:	89 5d cb             	mov    DWORD PTR [ebp-0x35],ebx
c01022f1:	89 4d cf             	mov    DWORD PTR [ebp-0x31],ecx
c01022f4:	c6 45 d7 00          	mov    BYTE PTR [ebp-0x29],0x0
c01022f8:	e8 08 0a 00 00       	call   c0102d05 <put_str>
c01022fd:	83 c4 10             	add    esp,0x10
c0102300:	81 ff 05 00 00 80    	cmp    edi,0x80000005
c0102306:	75 c8                	jne    c01022d0 <cpu_info+0x26>
c0102308:	8d 65 f4             	lea    esp,[ebp-0xc]
c010230b:	5b                   	pop    ebx
c010230c:	5e                   	pop    esi
c010230d:	5f                   	pop    edi
c010230e:	5d                   	pop    ebp
c010230f:	c3                   	ret    

c0102310 <init_keyboard>:
c0102310:	55                   	push   ebp
c0102311:	89 e5                	mov    ebp,esp
c0102313:	83 ec 08             	sub    esp,0x8
c0102316:	6a 40                	push   0x40
c0102318:	6a 08                	push   0x8
c010231a:	68 80 72 10 c0       	push   0xc0107280
c010231f:	68 a8 ed 11 c0       	push   0xc011eda8
c0102324:	e8 27 04 00 00       	call   c0102750 <init_fifo>
c0102329:	83 c4 10             	add    esp,0x10
c010232c:	c9                   	leave  
c010232d:	c3                   	ret    

c010232e <intr0x21_handler>:
c010232e:	55                   	push   ebp
c010232f:	b8 20 00 00 00       	mov    eax,0x20
c0102334:	89 e5                	mov    ebp,esp
c0102336:	89 c2                	mov    edx,eax
c0102338:	53                   	push   ebx
c0102339:	83 ec 14             	sub    esp,0x14
c010233c:	ee                   	out    dx,al
c010233d:	8b 0d c0 72 10 c0    	mov    ecx,DWORD PTR ds:0xc01072c0
c0102343:	b2 60                	mov    dl,0x60
c0102345:	8b 1d c4 72 10 c0    	mov    ebx,DWORD PTR ds:0xc01072c4
c010234b:	ec                   	in     al,dx
c010234c:	66 3d e0 00          	cmp    ax,0xe0
c0102350:	75 0f                	jne    c0102361 <intr0x21_handler+0x33>
c0102352:	c7 05 c8 72 10 c0 01 	mov    DWORD PTR ds:0xc01072c8,0x1
c0102359:	00 00 00 
c010235c:	e9 87 01 00 00       	jmp    c01024e8 <intr0x21_handler+0x1ba>
c0102361:	83 3d c8 72 10 c0 01 	cmp    DWORD PTR ds:0xc01072c8,0x1
c0102368:	75 0e                	jne    c0102378 <intr0x21_handler+0x4a>
c010236a:	66 0d 00 e0          	or     ax,0xe000
c010236e:	c7 05 c8 72 10 c0 00 	mov    DWORD PTR ds:0xc01072c8,0x0
c0102375:	00 00 00 
c0102378:	a8 80                	test   al,0x80
c010237a:	74 61                	je     c01023dd <intr0x21_handler+0xaf>
c010237c:	24 7f                	and    al,0x7f
c010237e:	66 83 f8 36          	cmp    ax,0x36
c0102382:	74 3b                	je     c01023bf <intr0x21_handler+0x91>
c0102384:	77 12                	ja     c0102398 <intr0x21_handler+0x6a>
c0102386:	66 83 f8 1d          	cmp    ax,0x1d
c010238a:	74 24                	je     c01023b0 <intr0x21_handler+0x82>
c010238c:	66 83 f8 2a          	cmp    ax,0x2a
c0102390:	0f 85 52 01 00 00    	jne    c01024e8 <intr0x21_handler+0x1ba>
c0102396:	eb 27                	jmp    c01023bf <intr0x21_handler+0x91>
c0102398:	66 3d 1d e0          	cmp    ax,0xe01d
c010239c:	74 12                	je     c01023b0 <intr0x21_handler+0x82>
c010239e:	66 3d 38 e0          	cmp    ax,0xe038
c01023a2:	74 2a                	je     c01023ce <intr0x21_handler+0xa0>
c01023a4:	66 83 f8 38          	cmp    ax,0x38
c01023a8:	0f 85 3a 01 00 00    	jne    c01024e8 <intr0x21_handler+0x1ba>
c01023ae:	eb 1e                	jmp    c01023ce <intr0x21_handler+0xa0>
c01023b0:	c7 05 cc 72 10 c0 00 	mov    DWORD PTR ds:0xc01072cc,0x0
c01023b7:	00 00 00 
c01023ba:	e9 29 01 00 00       	jmp    c01024e8 <intr0x21_handler+0x1ba>
c01023bf:	c7 05 c0 72 10 c0 00 	mov    DWORD PTR ds:0xc01072c0,0x0
c01023c6:	00 00 00 
c01023c9:	e9 1a 01 00 00       	jmp    c01024e8 <intr0x21_handler+0x1ba>
c01023ce:	c7 05 d0 72 10 c0 00 	mov    DWORD PTR ds:0xc01072d0,0x0
c01023d5:	00 00 00 
c01023d8:	e9 0b 01 00 00       	jmp    c01024e8 <intr0x21_handler+0x1ba>
c01023dd:	8d 50 ff             	lea    edx,[eax-0x1]
c01023e0:	66 83 fa 39          	cmp    dx,0x39
c01023e4:	76 10                	jbe    c01023f6 <intr0x21_handler+0xc8>
c01023e6:	66 3d 38 e0          	cmp    ax,0xe038
c01023ea:	74 0a                	je     c01023f6 <intr0x21_handler+0xc8>
c01023ec:	66 3d 1d e0          	cmp    ax,0xe01d
c01023f0:	0f 85 f2 00 00 00    	jne    c01024e8 <intr0x21_handler+0x1ba>
c01023f6:	66 83 f8 29          	cmp    ax,0x29
c01023fa:	74 2d                	je     c0102429 <intr0x21_handler+0xfb>
c01023fc:	66 83 f8 0d          	cmp    ax,0xd
c0102400:	76 27                	jbe    c0102429 <intr0x21_handler+0xfb>
c0102402:	66 83 f8 1b          	cmp    ax,0x1b
c0102406:	74 21                	je     c0102429 <intr0x21_handler+0xfb>
c0102408:	66 83 f8 1a          	cmp    ax,0x1a
c010240c:	74 1b                	je     c0102429 <intr0x21_handler+0xfb>
c010240e:	66 83 f8 27          	cmp    ax,0x27
c0102412:	74 15                	je     c0102429 <intr0x21_handler+0xfb>
c0102414:	66 83 f8 2b          	cmp    ax,0x2b
c0102418:	74 0f                	je     c0102429 <intr0x21_handler+0xfb>
c010241a:	66 83 f8 28          	cmp    ax,0x28
c010241e:	74 09                	je     c0102429 <intr0x21_handler+0xfb>
c0102420:	8d 50 cd             	lea    edx,[eax-0x33]
c0102423:	66 83 fa 02          	cmp    dx,0x2
c0102427:	77 06                	ja     c010242f <intr0x21_handler+0x101>
c0102429:	49                   	dec    ecx
c010242a:	0f 94 c2             	sete   dl
c010242d:	eb 0f                	jmp    c010243e <intr0x21_handler+0x110>
c010242f:	85 db                	test   ebx,ebx
c0102431:	74 06                	je     c0102439 <intr0x21_handler+0x10b>
c0102433:	31 d2                	xor    edx,edx
c0102435:	85 c9                	test   ecx,ecx
c0102437:	75 08                	jne    c0102441 <intr0x21_handler+0x113>
c0102439:	09 cb                	or     ebx,ecx
c010243b:	0f 95 c2             	setne  dl
c010243e:	0f b6 d2             	movzx  edx,dl
c0102441:	66 25 ff 00          	and    ax,0xff
c0102445:	0f b7 c8             	movzx  ecx,ax
c0102448:	8a 94 4a 34 6e 10 c0 	mov    dl,BYTE PTR [edx+ecx*2-0x3fef91cc]
c010244f:	84 d2                	test   dl,dl
c0102451:	88 55 f7             	mov    BYTE PTR [ebp-0x9],dl
c0102454:	74 26                	je     c010247c <intr0x21_handler+0x14e>
c0102456:	83 ec 0c             	sub    esp,0xc
c0102459:	68 a8 ed 11 c0       	push   0xc011eda8
c010245e:	e8 71 05 00 00       	call   c01029d4 <fifo_fill>
c0102463:	83 c4 10             	add    esp,0x10
c0102466:	85 c0                	test   eax,eax
c0102468:	75 7e                	jne    c01024e8 <intr0x21_handler+0x1ba>
c010246a:	51                   	push   ecx
c010246b:	51                   	push   ecx
c010246c:	8d 45 f7             	lea    eax,[ebp-0x9]
c010246f:	50                   	push   eax
c0102470:	68 a8 ed 11 c0       	push   0xc011eda8
c0102475:	e8 40 03 00 00       	call   c01027ba <fifo_put>
c010247a:	eb 69                	jmp    c01024e5 <intr0x21_handler+0x1b7>
c010247c:	66 83 f8 36          	cmp    ax,0x36
c0102480:	74 2a                	je     c01024ac <intr0x21_handler+0x17e>
c0102482:	77 0e                	ja     c0102492 <intr0x21_handler+0x164>
c0102484:	66 83 f8 1d          	cmp    ax,0x1d
c0102488:	74 16                	je     c01024a0 <intr0x21_handler+0x172>
c010248a:	66 83 f8 2a          	cmp    ax,0x2a
c010248e:	75 47                	jne    c01024d7 <intr0x21_handler+0x1a9>
c0102490:	eb 1a                	jmp    c01024ac <intr0x21_handler+0x17e>
c0102492:	66 83 f8 38          	cmp    ax,0x38
c0102496:	74 20                	je     c01024b8 <intr0x21_handler+0x18a>
c0102498:	66 83 f8 3a          	cmp    ax,0x3a
c010249c:	75 39                	jne    c01024d7 <intr0x21_handler+0x1a9>
c010249e:	eb 24                	jmp    c01024c4 <intr0x21_handler+0x196>
c01024a0:	c7 05 cc 72 10 c0 01 	mov    DWORD PTR ds:0xc01072cc,0x1
c01024a7:	00 00 00 
c01024aa:	eb 3c                	jmp    c01024e8 <intr0x21_handler+0x1ba>
c01024ac:	c7 05 c0 72 10 c0 01 	mov    DWORD PTR ds:0xc01072c0,0x1
c01024b3:	00 00 00 
c01024b6:	eb 30                	jmp    c01024e8 <intr0x21_handler+0x1ba>
c01024b8:	c7 05 d0 72 10 c0 01 	mov    DWORD PTR ds:0xc01072d0,0x1
c01024bf:	00 00 00 
c01024c2:	eb 24                	jmp    c01024e8 <intr0x21_handler+0x1ba>
c01024c4:	31 c0                	xor    eax,eax
c01024c6:	83 3d c4 72 10 c0 00 	cmp    DWORD PTR ds:0xc01072c4,0x0
c01024cd:	0f 94 c0             	sete   al
c01024d0:	a3 c4 72 10 c0       	mov    ds:0xc01072c4,eax
c01024d5:	eb 11                	jmp    c01024e8 <intr0x21_handler+0x1ba>
c01024d7:	52                   	push   edx
c01024d8:	52                   	push   edx
c01024d9:	68 00 6e 10 c0       	push   0xc0106e00
c01024de:	6a 04                	push   0x4
c01024e0:	e8 20 08 00 00       	call   c0102d05 <put_str>
c01024e5:	83 c4 10             	add    esp,0x10
c01024e8:	8b 5d fc             	mov    ebx,DWORD PTR [ebp-0x4]
c01024eb:	c9                   	leave  
c01024ec:	c3                   	ret    
c01024ed:	00 00                	add    BYTE PTR [eax],al
	...

c01024f0 <get_time>:
c01024f0:	55                   	push   ebp
c01024f1:	89 e5                	mov    ebp,esp
c01024f3:	57                   	push   edi
c01024f4:	56                   	push   esi
c01024f5:	be 70 00 00 00       	mov    esi,0x70
c01024fa:	53                   	push   ebx
c01024fb:	83 ec 1c             	sub    esp,0x1c
c01024fe:	8b 7d 08             	mov    edi,DWORD PTR [ebp+0x8]
c0102501:	e8 a3 e8 ff ff       	call   c0100da9 <intr_get_status>
c0102506:	89 45 e0             	mov    DWORD PTR [ebp-0x20],eax
c0102509:	b8 89 00 00 00       	mov    eax,0x89
c010250e:	89 f2                	mov    edx,esi
c0102510:	ee                   	out    dx,al
c0102511:	bb 71 00 00 00       	mov    ebx,0x71
c0102516:	89 da                	mov    edx,ebx
c0102518:	ec                   	in     al,dx
c0102519:	89 c1                	mov    ecx,eax
c010251b:	89 f2                	mov    edx,esi
c010251d:	b8 b2 00 00 00       	mov    eax,0xb2
c0102522:	ee                   	out    dx,al
c0102523:	89 da                	mov    edx,ebx
c0102525:	ec                   	in     al,dx
c0102526:	c1 e0 08             	shl    eax,0x8
c0102529:	89 f2                	mov    edx,esi
c010252b:	01 c1                	add    ecx,eax
c010252d:	b8 88 00 00 00       	mov    eax,0x88
c0102532:	89 4f 14             	mov    DWORD PTR [edi+0x14],ecx
c0102535:	ee                   	out    dx,al
c0102536:	89 da                	mov    edx,ebx
c0102538:	ec                   	in     al,dx
c0102539:	89 47 10             	mov    DWORD PTR [edi+0x10],eax
c010253c:	89 f2                	mov    edx,esi
c010253e:	b8 87 00 00 00       	mov    eax,0x87
c0102543:	ee                   	out    dx,al
c0102544:	89 da                	mov    edx,ebx
c0102546:	ec                   	in     al,dx
c0102547:	89 47 0c             	mov    DWORD PTR [edi+0xc],eax
c010254a:	89 f2                	mov    edx,esi
c010254c:	b8 84 00 00 00       	mov    eax,0x84
c0102551:	ee                   	out    dx,al
c0102552:	89 da                	mov    edx,ebx
c0102554:	ec                   	in     al,dx
c0102555:	89 47 08             	mov    DWORD PTR [edi+0x8],eax
c0102558:	89 f2                	mov    edx,esi
c010255a:	b8 82 00 00 00       	mov    eax,0x82
c010255f:	ee                   	out    dx,al
c0102560:	89 da                	mov    edx,ebx
c0102562:	ec                   	in     al,dx
c0102563:	b9 80 00 00 00       	mov    ecx,0x80
c0102568:	89 f2                	mov    edx,esi
c010256a:	89 47 04             	mov    DWORD PTR [edi+0x4],eax
c010256d:	89 c8                	mov    eax,ecx
c010256f:	ee                   	out    dx,al
c0102570:	89 da                	mov    edx,ebx
c0102572:	ec                   	in     al,dx
c0102573:	89 45 e4             	mov    DWORD PTR [ebp-0x1c],eax
c0102576:	89 f2                	mov    edx,esi
c0102578:	89 07                	mov    DWORD PTR [edi],eax
c010257a:	89 c8                	mov    eax,ecx
c010257c:	ee                   	out    dx,al
c010257d:	89 da                	mov    edx,ebx
c010257f:	ec                   	in     al,dx
c0102580:	39 45 e4             	cmp    DWORD PTR [ebp-0x1c],eax
c0102583:	75 84                	jne    c0102509 <get_time+0x19>
c0102585:	b2 70                	mov    dl,0x70
c0102587:	31 c0                	xor    eax,eax
c0102589:	ee                   	out    dx,al
c010258a:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
c010258d:	89 45 08             	mov    DWORD PTR [ebp+0x8],eax
c0102590:	83 c4 1c             	add    esp,0x1c
c0102593:	5b                   	pop    ebx
c0102594:	5e                   	pop    esi
c0102595:	5f                   	pop    edi
c0102596:	5d                   	pop    ebp
c0102597:	e9 25 ea ff ff       	jmp    c0100fc1 <intr_set_status>

c010259c <init_pit>:
c010259c:	55                   	push   ebp
c010259d:	ba 43 00 00 00       	mov    edx,0x43
c01025a2:	89 e5                	mov    ebp,esp
c01025a4:	b8 34 00 00 00       	mov    eax,0x34
c01025a9:	ee                   	out    dx,al
c01025aa:	b2 40                	mov    dl,0x40
c01025ac:	b0 9c                	mov    al,0x9c
c01025ae:	ee                   	out    dx,al
c01025af:	b0 2e                	mov    al,0x2e
c01025b1:	ee                   	out    dx,al
c01025b2:	5d                   	pop    ebp
c01025b3:	c3                   	ret    

c01025b4 <intr0x20_handler>:
c01025b4:	55                   	push   ebp
c01025b5:	b8 20 00 00 00       	mov    eax,0x20
c01025ba:	89 e5                	mov    ebp,esp
c01025bc:	83 ec 08             	sub    esp,0x8
c01025bf:	89 c2                	mov    edx,eax
c01025c1:	ee                   	out    dx,al
c01025c2:	e8 ff f3 ff ff       	call   c01019c6 <running_thread>
c01025c7:	8b 15 d8 72 10 c0    	mov    edx,DWORD PTR ds:0xc01072d8
c01025cd:	42                   	inc    edx
c01025ce:	89 15 d8 72 10 c0    	mov    DWORD PTR ds:0xc01072d8,edx
c01025d4:	8a 50 19             	mov    dl,BYTE PTR [eax+0x19]
c01025d7:	ff 40 1c             	inc    DWORD PTR [eax+0x1c]
c01025da:	84 d2                	test   dl,dl
c01025dc:	75 06                	jne    c01025e4 <intr0x20_handler+0x30>
c01025de:	c9                   	leave  
c01025df:	e9 59 f5 ff ff       	jmp    c0101b3d <schedule>
c01025e4:	4a                   	dec    edx
c01025e5:	88 50 19             	mov    BYTE PTR [eax+0x19],dl
c01025e8:	c9                   	leave  
c01025e9:	c3                   	ret    
	...

c01025ec <bitmap_init>:
c01025ec:	55                   	push   ebp
c01025ed:	89 e5                	mov    ebp,esp
c01025ef:	83 ec 0c             	sub    esp,0xc
c01025f2:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01025f5:	ff 30                	push   DWORD PTR [eax]
c01025f7:	6a 00                	push   0x0
c01025f9:	ff 70 04             	push   DWORD PTR [eax+0x4]
c01025fc:	e8 a3 07 00 00       	call   c0102da4 <memset>
c0102601:	83 c4 10             	add    esp,0x10
c0102604:	c9                   	leave  
c0102605:	c3                   	ret    

c0102606 <bitmap_scan_test>:
c0102606:	55                   	push   ebp
c0102607:	89 e5                	mov    ebp,esp
c0102609:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c010260c:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
c010260f:	5d                   	pop    ebp
c0102610:	8b 52 04             	mov    edx,DWORD PTR [edx+0x4]
c0102613:	89 c8                	mov    eax,ecx
c0102615:	83 e1 07             	and    ecx,0x7
c0102618:	c1 e8 03             	shr    eax,0x3
c010261b:	0f b6 04 02          	movzx  eax,BYTE PTR [edx+eax*1]
c010261f:	ba 01 00 00 00       	mov    edx,0x1
c0102624:	d3 e2                	shl    edx,cl
c0102626:	21 d0                	and    eax,edx
c0102628:	c3                   	ret    

c0102629 <bitmap_alloc>:
c0102629:	55                   	push   ebp
c010262a:	89 e5                	mov    ebp,esp
c010262c:	57                   	push   edi
c010262d:	56                   	push   esi
c010262e:	31 f6                	xor    esi,esi
c0102630:	53                   	push   ebx
c0102631:	83 ec 1c             	sub    esp,0x1c
c0102634:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c0102637:	8b 43 04             	mov    eax,DWORD PTR [ebx+0x4]
c010263a:	eb 01                	jmp    c010263d <bitmap_alloc+0x14>
c010263c:	46                   	inc    esi
c010263d:	80 3c 30 ff          	cmp    BYTE PTR [eax+esi*1],0xff
c0102641:	75 04                	jne    c0102647 <bitmap_alloc+0x1e>
c0102643:	3b 33                	cmp    esi,DWORD PTR [ebx]
c0102645:	72 f5                	jb     c010263c <bitmap_alloc+0x13>
c0102647:	3b 33                	cmp    esi,DWORD PTR [ebx]
c0102649:	72 19                	jb     c0102664 <bitmap_alloc+0x3b>
c010264b:	68 fc 6e 10 c0       	push   0xc0106efc
c0102650:	68 70 6f 10 c0       	push   0xc0106f70
c0102655:	6a 2e                	push   0x2e
c0102657:	68 20 6f 10 c0       	push   0xc0106f20
c010265c:	e8 e7 dd ff ff       	call   c0100448 <panic_spin>
c0102661:	83 c4 10             	add    esp,0x10
c0102664:	8b 13                	mov    edx,DWORD PTR [ebx]
c0102666:	83 c8 ff             	or     eax,0xffffffff
c0102669:	39 d6                	cmp    esi,edx
c010266b:	74 72                	je     c01026df <bitmap_alloc+0xb6>
c010266d:	8b 43 04             	mov    eax,DWORD PTR [ebx+0x4]
c0102670:	31 c9                	xor    ecx,ecx
c0102672:	bf 01 00 00 00       	mov    edi,0x1
c0102677:	89 75 e4             	mov    DWORD PTR [ebp-0x1c],esi
c010267a:	89 55 dc             	mov    DWORD PTR [ebp-0x24],edx
c010267d:	8a 04 30             	mov    al,BYTE PTR [eax+esi*1]
c0102680:	eb 01                	jmp    c0102683 <bitmap_alloc+0x5a>
c0102682:	41                   	inc    ecx
c0102683:	89 fe                	mov    esi,edi
c0102685:	d3 e6                	shl    esi,cl
c0102687:	89 f2                	mov    edx,esi
c0102689:	84 d0                	test   al,dl
c010268b:	75 f5                	jne    c0102682 <bitmap_alloc+0x59>
c010268d:	8b 75 e4             	mov    esi,DWORD PTR [ebp-0x1c]
c0102690:	83 7d 0c 01          	cmp    DWORD PTR [ebp+0xc],0x1
c0102694:	8b 55 dc             	mov    edx,DWORD PTR [ebp-0x24]
c0102697:	8d 0c f1             	lea    ecx,[ecx+esi*8]
c010269a:	89 c8                	mov    eax,ecx
c010269c:	74 41                	je     c01026df <bitmap_alloc+0xb6>
c010269e:	8d 3c d5 00 00 00 00 	lea    edi,[edx*8+0x0]
c01026a5:	be 01 00 00 00       	mov    esi,0x1
c01026aa:	29 cf                	sub    edi,ecx
c01026ac:	8d 51 01             	lea    edx,[ecx+0x1]
c01026af:	eb 27                	jmp    c01026d8 <bitmap_alloc+0xaf>
c01026b1:	50                   	push   eax
c01026b2:	46                   	inc    esi
c01026b3:	50                   	push   eax
c01026b4:	52                   	push   edx
c01026b5:	53                   	push   ebx
c01026b6:	89 55 e0             	mov    DWORD PTR [ebp-0x20],edx
c01026b9:	e8 48 ff ff ff       	call   c0102606 <bitmap_scan_test>
c01026be:	83 c4 10             	add    esp,0x10
c01026c1:	8b 55 e0             	mov    edx,DWORD PTR [ebp-0x20]
c01026c4:	85 c0                	test   eax,eax
c01026c6:	74 02                	je     c01026ca <bitmap_alloc+0xa1>
c01026c8:	31 f6                	xor    esi,esi
c01026ca:	3b 75 0c             	cmp    esi,DWORD PTR [ebp+0xc]
c01026cd:	75 07                	jne    c01026d6 <bitmap_alloc+0xad>
c01026cf:	29 f2                	sub    edx,esi
c01026d1:	8d 42 01             	lea    eax,[edx+0x1]
c01026d4:	eb 09                	jmp    c01026df <bitmap_alloc+0xb6>
c01026d6:	4f                   	dec    edi
c01026d7:	42                   	inc    edx
c01026d8:	85 ff                	test   edi,edi
c01026da:	75 d5                	jne    c01026b1 <bitmap_alloc+0x88>
c01026dc:	83 c8 ff             	or     eax,0xffffffff
c01026df:	8d 65 f4             	lea    esp,[ebp-0xc]
c01026e2:	5b                   	pop    ebx
c01026e3:	5e                   	pop    esi
c01026e4:	5f                   	pop    edi
c01026e5:	5d                   	pop    ebp
c01026e6:	c3                   	ret    

c01026e7 <bitmap_set>:
c01026e7:	55                   	push   ebp
c01026e8:	89 e5                	mov    ebp,esp
c01026ea:	57                   	push   edi
c01026eb:	56                   	push   esi
c01026ec:	53                   	push   ebx
c01026ed:	83 ec 0c             	sub    esp,0xc
c01026f0:	8a 5d 10             	mov    bl,BYTE PTR [ebp+0x10]
c01026f3:	8b 75 08             	mov    esi,DWORD PTR [ebp+0x8]
c01026f6:	8b 7d 0c             	mov    edi,DWORD PTR [ebp+0xc]
c01026f9:	80 fb 01             	cmp    bl,0x1
c01026fc:	76 19                	jbe    c0102717 <bitmap_set+0x30>
c01026fe:	68 2d 6f 10 c0       	push   0xc0106f2d
c0102703:	68 80 6f 10 c0       	push   0xc0106f80
c0102708:	6a 65                	push   0x65
c010270a:	68 20 6f 10 c0       	push   0xc0106f20
c010270f:	e8 34 dd ff ff       	call   c0100448 <panic_spin>
c0102714:	83 c4 10             	add    esp,0x10
c0102717:	89 fa                	mov    edx,edi
c0102719:	89 f9                	mov    ecx,edi
c010271b:	c1 ea 03             	shr    edx,0x3
c010271e:	83 e1 07             	and    ecx,0x7
c0102721:	84 db                	test   bl,bl
c0102723:	74 06                	je     c010272b <bitmap_set+0x44>
c0102725:	fe cb                	dec    bl
c0102727:	75 1e                	jne    c0102747 <bitmap_set+0x60>
c0102729:	eb 10                	jmp    c010273b <bitmap_set+0x54>
c010272b:	03 56 04             	add    edx,DWORD PTR [esi+0x4]
c010272e:	b8 01 00 00 00       	mov    eax,0x1
c0102733:	d3 e0                	shl    eax,cl
c0102735:	f7 d0                	not    eax
c0102737:	20 02                	and    BYTE PTR [edx],al
c0102739:	eb 0c                	jmp    c0102747 <bitmap_set+0x60>
c010273b:	03 56 04             	add    edx,DWORD PTR [esi+0x4]
c010273e:	b8 01 00 00 00       	mov    eax,0x1
c0102743:	d3 e0                	shl    eax,cl
c0102745:	08 02                	or     BYTE PTR [edx],al
c0102747:	8d 65 f4             	lea    esp,[ebp-0xc]
c010274a:	5b                   	pop    ebx
c010274b:	5e                   	pop    esi
c010274c:	5f                   	pop    edi
c010274d:	5d                   	pop    ebp
c010274e:	c3                   	ret    
	...

c0102750 <init_fifo>:
c0102750:	55                   	push   ebp
c0102751:	89 e5                	mov    ebp,esp
c0102753:	57                   	push   edi
c0102754:	56                   	push   esi
c0102755:	53                   	push   ebx
c0102756:	83 ec 28             	sub    esp,0x28
c0102759:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c010275c:	8b 75 10             	mov    esi,DWORD PTR [ebp+0x10]
c010275f:	8b 45 14             	mov    eax,DWORD PTR [ebp+0x14]
c0102762:	8b 7d 0c             	mov    edi,DWORD PTR [ebp+0xc]
c0102765:	53                   	push   ebx
c0102766:	89 45 e4             	mov    DWORD PTR [ebp-0x1c],eax
c0102769:	e8 59 ef ff ff       	call   c01016c7 <lock_init>
c010276e:	83 c4 10             	add    esp,0x10
c0102771:	83 fe 10             	cmp    esi,0x10
c0102774:	c7 43 24 00 00 00 00 	mov    DWORD PTR [ebx+0x24],0x0
c010277b:	c7 43 28 00 00 00 00 	mov    DWORD PTR [ebx+0x28],0x0
c0102782:	89 73 30             	mov    DWORD PTR [ebx+0x30],esi
c0102785:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
c0102788:	74 11                	je     c010279b <init_fifo+0x4b>
c010278a:	7f 05                	jg     c0102791 <init_fifo+0x41>
c010278c:	83 fe 08             	cmp    esi,0x8
c010278f:	eb 08                	jmp    c0102799 <init_fifo+0x49>
c0102791:	83 fe 20             	cmp    esi,0x20
c0102794:	74 05                	je     c010279b <init_fifo+0x4b>
c0102796:	83 fe 40             	cmp    esi,0x40
c0102799:	75 03                	jne    c010279e <init_fifo+0x4e>
c010279b:	89 7b 2c             	mov    DWORD PTR [ebx+0x2c],edi
c010279e:	89 43 34             	mov    DWORD PTR [ebx+0x34],eax
c01027a1:	89 43 38             	mov    DWORD PTR [ebx+0x38],eax
c01027a4:	c7 43 3c 00 00 00 00 	mov    DWORD PTR [ebx+0x3c],0x0
c01027ab:	c7 43 40 00 00 00 00 	mov    DWORD PTR [ebx+0x40],0x0
c01027b2:	8d 65 f4             	lea    esp,[ebp-0xc]
c01027b5:	5b                   	pop    ebx
c01027b6:	5e                   	pop    esi
c01027b7:	5f                   	pop    edi
c01027b8:	5d                   	pop    ebp
c01027b9:	c3                   	ret    

c01027ba <fifo_put>:
c01027ba:	55                   	push   ebp
c01027bb:	89 e5                	mov    ebp,esp
c01027bd:	57                   	push   edi
c01027be:	56                   	push   esi
c01027bf:	53                   	push   ebx
c01027c0:	83 ec 1c             	sub    esp,0x1c
c01027c3:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c01027c6:	8b 75 0c             	mov    esi,DWORD PTR [ebp+0xc]
c01027c9:	e8 eb e5 ff ff       	call   c0100db9 <intr_disable>
c01027ce:	89 45 e4             	mov    DWORD PTR [ebp-0x1c],eax
c01027d1:	eb 28                	jmp    c01027fb <fifo_put+0x41>
c01027d3:	83 ec 0c             	sub    esp,0xc
c01027d6:	53                   	push   ebx
c01027d7:	e8 77 f0 ff ff       	call   c0101853 <lock_acquire>
c01027dc:	e8 e5 f1 ff ff       	call   c01019c6 <running_thread>
c01027e1:	89 43 24             	mov    DWORD PTR [ebx+0x24],eax
c01027e4:	c7 04 24 02 00 00 00 	mov    DWORD PTR [esp],0x2
c01027eb:	e8 84 f4 ff ff       	call   c0101c74 <thread_block>
c01027f0:	89 1c 24             	mov    DWORD PTR [esp],ebx
c01027f3:	e8 b6 f0 ff ff       	call   c01018ae <lock_release>
c01027f8:	83 c4 10             	add    esp,0x10
c01027fb:	8b 43 38             	mov    eax,DWORD PTR [ebx+0x38]
c01027fe:	85 c0                	test   eax,eax
c0102800:	74 d1                	je     c01027d3 <fifo_put+0x19>
c0102802:	48                   	dec    eax
c0102803:	89 43 38             	mov    DWORD PTR [ebx+0x38],eax
c0102806:	8b 43 30             	mov    eax,DWORD PTR [ebx+0x30]
c0102809:	83 f8 10             	cmp    eax,0x10
c010280c:	74 28                	je     c0102836 <fifo_put+0x7c>
c010280e:	83 f8 08             	cmp    eax,0x8
c0102811:	74 23                	je     c0102836 <fifo_put+0x7c>
c0102813:	83 f8 20             	cmp    eax,0x20
c0102816:	74 1e                	je     c0102836 <fifo_put+0x7c>
c0102818:	83 f8 40             	cmp    eax,0x40
c010281b:	74 19                	je     c0102836 <fifo_put+0x7c>
c010281d:	68 8c 6f 10 c0       	push   0xc0106f8c
c0102822:	68 10 70 10 c0       	push   0xc0107010
c0102827:	6a 3b                	push   0x3b
c0102829:	68 d8 6f 10 c0       	push   0xc0106fd8
c010282e:	e8 15 dc ff ff       	call   c0100448 <panic_spin>
c0102833:	83 c4 10             	add    esp,0x10
c0102836:	8b 53 30             	mov    edx,DWORD PTR [ebx+0x30]
c0102839:	8b 43 40             	mov    eax,DWORD PTR [ebx+0x40]
c010283c:	83 fa 10             	cmp    edx,0x10
c010283f:	74 1f                	je     c0102860 <fifo_put+0xa6>
c0102841:	7f 07                	jg     c010284a <fifo_put+0x90>
c0102843:	83 fa 08             	cmp    edx,0x8
c0102846:	75 3d                	jne    c0102885 <fifo_put+0xcb>
c0102848:	eb 0c                	jmp    c0102856 <fifo_put+0x9c>
c010284a:	83 fa 20             	cmp    edx,0x20
c010284d:	74 1d                	je     c010286c <fifo_put+0xb2>
c010284f:	83 fa 40             	cmp    edx,0x40
c0102852:	75 31                	jne    c0102885 <fifo_put+0xcb>
c0102854:	eb 20                	jmp    c0102876 <fifo_put+0xbc>
c0102856:	8a 0e                	mov    cl,BYTE PTR [esi]
c0102858:	8b 53 2c             	mov    edx,DWORD PTR [ebx+0x2c]
c010285b:	88 0c 02             	mov    BYTE PTR [edx+eax*1],cl
c010285e:	eb 25                	jmp    c0102885 <fifo_put+0xcb>
c0102860:	66 8b 0e             	mov    cx,WORD PTR [esi]
c0102863:	8b 53 2c             	mov    edx,DWORD PTR [ebx+0x2c]
c0102866:	66 89 0c 42          	mov    WORD PTR [edx+eax*2],cx
c010286a:	eb 19                	jmp    c0102885 <fifo_put+0xcb>
c010286c:	8b 0e                	mov    ecx,DWORD PTR [esi]
c010286e:	8b 53 2c             	mov    edx,DWORD PTR [ebx+0x2c]
c0102871:	89 0c 82             	mov    DWORD PTR [edx+eax*4],ecx
c0102874:	eb 0f                	jmp    c0102885 <fifo_put+0xcb>
c0102876:	8b 7e 04             	mov    edi,DWORD PTR [esi+0x4]
c0102879:	8b 53 2c             	mov    edx,DWORD PTR [ebx+0x2c]
c010287c:	8b 36                	mov    esi,DWORD PTR [esi]
c010287e:	89 7c c2 04          	mov    DWORD PTR [edx+eax*8+0x4],edi
c0102882:	89 34 c2             	mov    DWORD PTR [edx+eax*8],esi
c0102885:	8b 43 40             	mov    eax,DWORD PTR [ebx+0x40]
c0102888:	40                   	inc    eax
c0102889:	99                   	cdq    
c010288a:	f7 7b 34             	idiv   DWORD PTR [ebx+0x34]
c010288d:	8b 43 28             	mov    eax,DWORD PTR [ebx+0x28]
c0102890:	85 c0                	test   eax,eax
c0102892:	89 53 40             	mov    DWORD PTR [ebx+0x40],edx
c0102895:	74 13                	je     c01028aa <fifo_put+0xf0>
c0102897:	83 ec 0c             	sub    esp,0xc
c010289a:	50                   	push   eax
c010289b:	e8 1f f4 ff ff       	call   c0101cbf <thread_unblock>
c01028a0:	83 c4 10             	add    esp,0x10
c01028a3:	c7 43 28 00 00 00 00 	mov    DWORD PTR [ebx+0x28],0x0
c01028aa:	83 ec 0c             	sub    esp,0xc
c01028ad:	ff 75 e4             	push   DWORD PTR [ebp-0x1c]
c01028b0:	e8 0c e7 ff ff       	call   c0100fc1 <intr_set_status>
c01028b5:	8d 65 f4             	lea    esp,[ebp-0xc]
c01028b8:	31 c0                	xor    eax,eax
c01028ba:	5b                   	pop    ebx
c01028bb:	5e                   	pop    esi
c01028bc:	5f                   	pop    edi
c01028bd:	5d                   	pop    ebp
c01028be:	c3                   	ret    

c01028bf <fifo_get>:
c01028bf:	55                   	push   ebp
c01028c0:	89 e5                	mov    ebp,esp
c01028c2:	57                   	push   edi
c01028c3:	56                   	push   esi
c01028c4:	53                   	push   ebx
c01028c5:	83 ec 0c             	sub    esp,0xc
c01028c8:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c01028cb:	8b 75 0c             	mov    esi,DWORD PTR [ebp+0xc]
c01028ce:	e8 e6 e4 ff ff       	call   c0100db9 <intr_disable>
c01028d3:	89 c7                	mov    edi,eax
c01028d5:	8b 43 30             	mov    eax,DWORD PTR [ebx+0x30]
c01028d8:	83 f8 10             	cmp    eax,0x10
c01028db:	74 4f                	je     c010292c <fifo_get+0x6d>
c01028dd:	83 f8 08             	cmp    eax,0x8
c01028e0:	74 4a                	je     c010292c <fifo_get+0x6d>
c01028e2:	83 f8 20             	cmp    eax,0x20
c01028e5:	74 45                	je     c010292c <fifo_get+0x6d>
c01028e7:	83 f8 40             	cmp    eax,0x40
c01028ea:	74 40                	je     c010292c <fifo_get+0x6d>
c01028ec:	68 8c 6f 10 c0       	push   0xc0106f8c
c01028f1:	68 1c 70 10 c0       	push   0xc010701c
c01028f6:	6a 5a                	push   0x5a
c01028f8:	68 d8 6f 10 c0       	push   0xc0106fd8
c01028fd:	e8 46 db ff ff       	call   c0100448 <panic_spin>
c0102902:	eb 25                	jmp    c0102929 <fifo_get+0x6a>
c0102904:	83 ec 0c             	sub    esp,0xc
c0102907:	53                   	push   ebx
c0102908:	e8 46 ef ff ff       	call   c0101853 <lock_acquire>
c010290d:	e8 b4 f0 ff ff       	call   c01019c6 <running_thread>
c0102912:	89 43 28             	mov    DWORD PTR [ebx+0x28],eax
c0102915:	c7 04 24 02 00 00 00 	mov    DWORD PTR [esp],0x2
c010291c:	e8 53 f3 ff ff       	call   c0101c74 <thread_block>
c0102921:	89 1c 24             	mov    DWORD PTR [esp],ebx
c0102924:	e8 85 ef ff ff       	call   c01018ae <lock_release>
c0102929:	83 c4 10             	add    esp,0x10
c010292c:	8b 43 38             	mov    eax,DWORD PTR [ebx+0x38]
c010292f:	3b 43 34             	cmp    eax,DWORD PTR [ebx+0x34]
c0102932:	74 d0                	je     c0102904 <fifo_get+0x45>
c0102934:	8b 53 30             	mov    edx,DWORD PTR [ebx+0x30]
c0102937:	40                   	inc    eax
c0102938:	89 43 38             	mov    DWORD PTR [ebx+0x38],eax
c010293b:	8b 43 3c             	mov    eax,DWORD PTR [ebx+0x3c]
c010293e:	83 fa 10             	cmp    edx,0x10
c0102941:	74 1f                	je     c0102962 <fifo_get+0xa3>
c0102943:	7f 07                	jg     c010294c <fifo_get+0x8d>
c0102945:	83 fa 08             	cmp    edx,0x8
c0102948:	75 3e                	jne    c0102988 <fifo_get+0xc9>
c010294a:	eb 0c                	jmp    c0102958 <fifo_get+0x99>
c010294c:	83 fa 20             	cmp    edx,0x20
c010294f:	74 1d                	je     c010296e <fifo_get+0xaf>
c0102951:	83 fa 40             	cmp    edx,0x40
c0102954:	75 32                	jne    c0102988 <fifo_get+0xc9>
c0102956:	eb 20                	jmp    c0102978 <fifo_get+0xb9>
c0102958:	8b 53 2c             	mov    edx,DWORD PTR [ebx+0x2c]
c010295b:	8a 04 02             	mov    al,BYTE PTR [edx+eax*1]
c010295e:	88 06                	mov    BYTE PTR [esi],al
c0102960:	eb 26                	jmp    c0102988 <fifo_get+0xc9>
c0102962:	8b 53 2c             	mov    edx,DWORD PTR [ebx+0x2c]
c0102965:	66 8b 04 42          	mov    ax,WORD PTR [edx+eax*2]
c0102969:	66 89 06             	mov    WORD PTR [esi],ax
c010296c:	eb 1a                	jmp    c0102988 <fifo_get+0xc9>
c010296e:	8b 53 2c             	mov    edx,DWORD PTR [ebx+0x2c]
c0102971:	8b 04 82             	mov    eax,DWORD PTR [edx+eax*4]
c0102974:	89 06                	mov    DWORD PTR [esi],eax
c0102976:	eb 10                	jmp    c0102988 <fifo_get+0xc9>
c0102978:	8b 53 2c             	mov    edx,DWORD PTR [ebx+0x2c]
c010297b:	8d 14 c2             	lea    edx,[edx+eax*8]
c010297e:	8b 02                	mov    eax,DWORD PTR [edx]
c0102980:	8b 52 04             	mov    edx,DWORD PTR [edx+0x4]
c0102983:	89 06                	mov    DWORD PTR [esi],eax
c0102985:	89 56 04             	mov    DWORD PTR [esi+0x4],edx
c0102988:	8b 43 3c             	mov    eax,DWORD PTR [ebx+0x3c]
c010298b:	40                   	inc    eax
c010298c:	99                   	cdq    
c010298d:	f7 7b 34             	idiv   DWORD PTR [ebx+0x34]
c0102990:	8b 43 24             	mov    eax,DWORD PTR [ebx+0x24]
c0102993:	85 c0                	test   eax,eax
c0102995:	89 53 3c             	mov    DWORD PTR [ebx+0x3c],edx
c0102998:	74 13                	je     c01029ad <fifo_get+0xee>
c010299a:	83 ec 0c             	sub    esp,0xc
c010299d:	50                   	push   eax
c010299e:	e8 1c f3 ff ff       	call   c0101cbf <thread_unblock>
c01029a3:	83 c4 10             	add    esp,0x10
c01029a6:	c7 43 24 00 00 00 00 	mov    DWORD PTR [ebx+0x24],0x0
c01029ad:	83 ec 0c             	sub    esp,0xc
c01029b0:	57                   	push   edi
c01029b1:	e8 0b e6 ff ff       	call   c0100fc1 <intr_set_status>
c01029b6:	8d 65 f4             	lea    esp,[ebp-0xc]
c01029b9:	31 c0                	xor    eax,eax
c01029bb:	5b                   	pop    ebx
c01029bc:	5e                   	pop    esi
c01029bd:	5f                   	pop    edi
c01029be:	5d                   	pop    ebp
c01029bf:	c3                   	ret    

c01029c0 <fifo_empty>:
c01029c0:	55                   	push   ebp
c01029c1:	89 e5                	mov    ebp,esp
c01029c3:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01029c6:	5d                   	pop    ebp
c01029c7:	8b 50 34             	mov    edx,DWORD PTR [eax+0x34]
c01029ca:	39 50 38             	cmp    DWORD PTR [eax+0x38],edx
c01029cd:	0f 94 c0             	sete   al
c01029d0:	0f b6 c0             	movzx  eax,al
c01029d3:	c3                   	ret    

c01029d4 <fifo_fill>:
c01029d4:	55                   	push   ebp
c01029d5:	89 e5                	mov    ebp,esp
c01029d7:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01029da:	5d                   	pop    ebp
c01029db:	83 78 38 00          	cmp    DWORD PTR [eax+0x38],0x0
c01029df:	0f 94 c0             	sete   al
c01029e2:	0f b6 c0             	movzx  eax,al
c01029e5:	c3                   	ret    
	...

c01029e8 <list_init>:
c01029e8:	55                   	push   ebp
c01029e9:	89 e5                	mov    ebp,esp
c01029eb:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01029ee:	8d 50 0c             	lea    edx,[eax+0xc]
c01029f1:	c7 00 00 00 00 00    	mov    DWORD PTR [eax],0x0
c01029f7:	89 50 08             	mov    DWORD PTR [eax+0x8],edx
c01029fa:	89 40 0c             	mov    DWORD PTR [eax+0xc],eax
c01029fd:	c7 40 14 00 00 00 00 	mov    DWORD PTR [eax+0x14],0x0
c0102a04:	5d                   	pop    ebp
c0102a05:	c3                   	ret    

c0102a06 <list_in>:
c0102a06:	55                   	push   ebp
c0102a07:	89 e5                	mov    ebp,esp
c0102a09:	56                   	push   esi
c0102a0a:	8b 75 08             	mov    esi,DWORD PTR [ebp+0x8]
c0102a0d:	53                   	push   ebx
c0102a0e:	8b 5d 0c             	mov    ebx,DWORD PTR [ebp+0xc]
c0102a11:	e8 a3 e3 ff ff       	call   c0100db9 <intr_disable>
c0102a16:	8b 13                	mov    edx,DWORD PTR [ebx]
c0102a18:	89 72 08             	mov    DWORD PTR [edx+0x8],esi
c0102a1b:	8b 13                	mov    edx,DWORD PTR [ebx]
c0102a1d:	89 5e 08             	mov    DWORD PTR [esi+0x8],ebx
c0102a20:	89 16                	mov    DWORD PTR [esi],edx
c0102a22:	89 33                	mov    DWORD PTR [ebx],esi
c0102a24:	89 45 08             	mov    DWORD PTR [ebp+0x8],eax
c0102a27:	5b                   	pop    ebx
c0102a28:	5e                   	pop    esi
c0102a29:	5d                   	pop    ebp
c0102a2a:	e9 92 e5 ff ff       	jmp    c0100fc1 <intr_set_status>

c0102a2f <list_push>:
c0102a2f:	55                   	push   ebp
c0102a30:	89 e5                	mov    ebp,esp
c0102a32:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c0102a35:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c0102a38:	8b 52 08             	mov    edx,DWORD PTR [edx+0x8]
c0102a3b:	89 45 08             	mov    DWORD PTR [ebp+0x8],eax
c0102a3e:	89 55 0c             	mov    DWORD PTR [ebp+0xc],edx
c0102a41:	5d                   	pop    ebp
c0102a42:	e9 bf ff ff ff       	jmp    c0102a06 <list_in>

c0102a47 <list_append>:
c0102a47:	55                   	push   ebp
c0102a48:	89 e5                	mov    ebp,esp
c0102a4a:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c0102a4d:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c0102a50:	83 c2 0c             	add    edx,0xc
c0102a53:	89 55 0c             	mov    DWORD PTR [ebp+0xc],edx
c0102a56:	89 45 08             	mov    DWORD PTR [ebp+0x8],eax
c0102a59:	5d                   	pop    ebp
c0102a5a:	e9 a7 ff ff ff       	jmp    c0102a06 <list_in>

c0102a5f <list_remove>:
c0102a5f:	55                   	push   ebp
c0102a60:	89 e5                	mov    ebp,esp
c0102a62:	53                   	push   ebx
c0102a63:	50                   	push   eax
c0102a64:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c0102a67:	e8 4d e3 ff ff       	call   c0100db9 <intr_disable>
c0102a6c:	8b 13                	mov    edx,DWORD PTR [ebx]
c0102a6e:	8b 4b 08             	mov    ecx,DWORD PTR [ebx+0x8]
c0102a71:	89 4a 08             	mov    DWORD PTR [edx+0x8],ecx
c0102a74:	8b 53 08             	mov    edx,DWORD PTR [ebx+0x8]
c0102a77:	8b 0b                	mov    ecx,DWORD PTR [ebx]
c0102a79:	89 0a                	mov    DWORD PTR [edx],ecx
c0102a7b:	89 45 08             	mov    DWORD PTR [ebp+0x8],eax
c0102a7e:	5a                   	pop    edx
c0102a7f:	5b                   	pop    ebx
c0102a80:	5d                   	pop    ebp
c0102a81:	e9 3b e5 ff ff       	jmp    c0100fc1 <intr_set_status>

c0102a86 <list_pop>:
c0102a86:	55                   	push   ebp
c0102a87:	89 e5                	mov    ebp,esp
c0102a89:	53                   	push   ebx
c0102a8a:	83 ec 10             	sub    esp,0x10
c0102a8d:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102a90:	8b 58 08             	mov    ebx,DWORD PTR [eax+0x8]
c0102a93:	53                   	push   ebx
c0102a94:	e8 c6 ff ff ff       	call   c0102a5f <list_remove>
c0102a99:	89 d8                	mov    eax,ebx
c0102a9b:	8b 5d fc             	mov    ebx,DWORD PTR [ebp-0x4]
c0102a9e:	c9                   	leave  
c0102a9f:	c3                   	ret    

c0102aa0 <list_find>:
c0102aa0:	55                   	push   ebp
c0102aa1:	89 e5                	mov    ebp,esp
c0102aa3:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c0102aa6:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
c0102aa9:	8b 42 08             	mov    eax,DWORD PTR [edx+0x8]
c0102aac:	83 c2 0c             	add    edx,0xc
c0102aaf:	eb 07                	jmp    c0102ab8 <list_find+0x18>
c0102ab1:	39 c8                	cmp    eax,ecx
c0102ab3:	74 0b                	je     c0102ac0 <list_find+0x20>
c0102ab5:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
c0102ab8:	39 d0                	cmp    eax,edx
c0102aba:	75 f5                	jne    c0102ab1 <list_find+0x11>
c0102abc:	31 c0                	xor    eax,eax
c0102abe:	eb 05                	jmp    c0102ac5 <list_find+0x25>
c0102ac0:	b8 01 00 00 00       	mov    eax,0x1
c0102ac5:	5d                   	pop    ebp
c0102ac6:	c3                   	ret    

c0102ac7 <list_traversal>:
c0102ac7:	55                   	push   ebp
c0102ac8:	89 e5                	mov    ebp,esp
c0102aca:	57                   	push   edi
c0102acb:	56                   	push   esi
c0102acc:	53                   	push   ebx
c0102acd:	83 ec 0c             	sub    esp,0xc
c0102ad0:	8b 75 08             	mov    esi,DWORD PTR [ebp+0x8]
c0102ad3:	8b 7d 10             	mov    edi,DWORD PTR [ebp+0x10]
c0102ad6:	8b 5e 08             	mov    ebx,DWORD PTR [esi+0x8]
c0102ad9:	83 c6 0c             	add    esi,0xc
c0102adc:	eb 11                	jmp    c0102aef <list_traversal+0x28>
c0102ade:	51                   	push   ecx
c0102adf:	51                   	push   ecx
c0102ae0:	57                   	push   edi
c0102ae1:	53                   	push   ebx
c0102ae2:	ff 55 0c             	call   DWORD PTR [ebp+0xc]
c0102ae5:	83 c4 10             	add    esp,0x10
c0102ae8:	85 c0                	test   eax,eax
c0102aea:	75 09                	jne    c0102af5 <list_traversal+0x2e>
c0102aec:	8b 5b 08             	mov    ebx,DWORD PTR [ebx+0x8]
c0102aef:	39 f3                	cmp    ebx,esi
c0102af1:	75 eb                	jne    c0102ade <list_traversal+0x17>
c0102af3:	31 db                	xor    ebx,ebx
c0102af5:	8d 65 f4             	lea    esp,[ebp-0xc]
c0102af8:	89 d8                	mov    eax,ebx
c0102afa:	5b                   	pop    ebx
c0102afb:	5e                   	pop    esi
c0102afc:	5f                   	pop    edi
c0102afd:	5d                   	pop    ebp
c0102afe:	c3                   	ret    

c0102aff <list_len>:
c0102aff:	55                   	push   ebp
c0102b00:	31 c0                	xor    eax,eax
c0102b02:	89 e5                	mov    ebp,esp
c0102b04:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
c0102b07:	8b 51 08             	mov    edx,DWORD PTR [ecx+0x8]
c0102b0a:	83 c1 0c             	add    ecx,0xc
c0102b0d:	eb 04                	jmp    c0102b13 <list_len+0x14>
c0102b0f:	8b 52 08             	mov    edx,DWORD PTR [edx+0x8]
c0102b12:	40                   	inc    eax
c0102b13:	39 ca                	cmp    edx,ecx
c0102b15:	75 f8                	jne    c0102b0f <list_len+0x10>
c0102b17:	5d                   	pop    ebp
c0102b18:	c3                   	ret    

c0102b19 <list_empty>:
c0102b19:	55                   	push   ebp
c0102b1a:	89 e5                	mov    ebp,esp
c0102b1c:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102b1f:	5d                   	pop    ebp
c0102b20:	8d 50 0c             	lea    edx,[eax+0xc]
c0102b23:	39 50 08             	cmp    DWORD PTR [eax+0x8],edx
c0102b26:	0f 94 c0             	sete   al
c0102b29:	0f b6 c0             	movzx  eax,al
c0102b2c:	c3                   	ret    
c0102b2d:	00 00                	add    BYTE PTR [eax],al
	...

c0102b30 <itoa>:
c0102b30:	55                   	push   ebp
c0102b31:	89 e5                	mov    ebp,esp
c0102b33:	57                   	push   edi
c0102b34:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
c0102b37:	56                   	push   esi
c0102b38:	8b 75 08             	mov    esi,DWORD PTR [ebp+0x8]
c0102b3b:	53                   	push   ebx
c0102b3c:	8b 7d 10             	mov    edi,DWORD PTR [ebp+0x10]
c0102b3f:	31 db                	xor    ebx,ebx
c0102b41:	89 f0                	mov    eax,esi
c0102b43:	99                   	cdq    
c0102b44:	89 d0                	mov    eax,edx
c0102b46:	31 f0                	xor    eax,esi
c0102b48:	29 d0                	sub    eax,edx
c0102b4a:	eb 02                	jmp    c0102b4e <itoa+0x1e>
c0102b4c:	89 d3                	mov    ebx,edx
c0102b4e:	99                   	cdq    
c0102b4f:	f7 ff                	idiv   edi
c0102b51:	8a 92 b0 70 10 c0    	mov    dl,BYTE PTR [edx-0x3fef8f50]
c0102b57:	85 c0                	test   eax,eax
c0102b59:	88 14 19             	mov    BYTE PTR [ecx+ebx*1],dl
c0102b5c:	8d 53 01             	lea    edx,[ebx+0x1]
c0102b5f:	7f eb                	jg     c0102b4c <itoa+0x1c>
c0102b61:	85 f6                	test   esi,esi
c0102b63:	79 07                	jns    c0102b6c <itoa+0x3c>
c0102b65:	c6 04 11 2d          	mov    BYTE PTR [ecx+edx*1],0x2d
c0102b69:	8d 53 02             	lea    edx,[ebx+0x2]
c0102b6c:	c6 04 11 00          	mov    BYTE PTR [ecx+edx*1],0x0
c0102b70:	89 c8                	mov    eax,ecx
c0102b72:	eb 01                	jmp    c0102b75 <itoa+0x45>
c0102b74:	40                   	inc    eax
c0102b75:	80 38 00             	cmp    BYTE PTR [eax],0x0
c0102b78:	75 fa                	jne    c0102b74 <itoa+0x44>
c0102b7a:	eb 09                	jmp    c0102b85 <itoa+0x55>
c0102b7c:	8a 11                	mov    dl,BYTE PTR [ecx]
c0102b7e:	8a 18                	mov    bl,BYTE PTR [eax]
c0102b80:	88 19                	mov    BYTE PTR [ecx],bl
c0102b82:	41                   	inc    ecx
c0102b83:	88 10                	mov    BYTE PTR [eax],dl
c0102b85:	48                   	dec    eax
c0102b86:	39 c8                	cmp    eax,ecx
c0102b88:	77 f2                	ja     c0102b7c <itoa+0x4c>
c0102b8a:	5b                   	pop    ebx
c0102b8b:	5e                   	pop    esi
c0102b8c:	5f                   	pop    edi
c0102b8d:	5d                   	pop    ebp
c0102b8e:	c3                   	ret    

c0102b8f <utoa>:
c0102b8f:	55                   	push   ebp
c0102b90:	89 e5                	mov    ebp,esp
c0102b92:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102b95:	56                   	push   esi
c0102b96:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
c0102b99:	8b 75 10             	mov    esi,DWORD PTR [ebp+0x10]
c0102b9c:	53                   	push   ebx
c0102b9d:	31 db                	xor    ebx,ebx
c0102b9f:	31 d2                	xor    edx,edx
c0102ba1:	f7 f6                	div    esi
c0102ba3:	8a 92 d8 70 10 c0    	mov    dl,BYTE PTR [edx-0x3fef8f28]
c0102ba9:	88 14 19             	mov    BYTE PTR [ecx+ebx*1],dl
c0102bac:	43                   	inc    ebx
c0102bad:	85 c0                	test   eax,eax
c0102baf:	75 ee                	jne    c0102b9f <utoa+0x10>
c0102bb1:	c6 04 19 00          	mov    BYTE PTR [ecx+ebx*1],0x0
c0102bb5:	89 c8                	mov    eax,ecx
c0102bb7:	eb 01                	jmp    c0102bba <utoa+0x2b>
c0102bb9:	40                   	inc    eax
c0102bba:	80 38 00             	cmp    BYTE PTR [eax],0x0
c0102bbd:	75 fa                	jne    c0102bb9 <utoa+0x2a>
c0102bbf:	eb 09                	jmp    c0102bca <utoa+0x3b>
c0102bc1:	8a 11                	mov    dl,BYTE PTR [ecx]
c0102bc3:	8a 18                	mov    bl,BYTE PTR [eax]
c0102bc5:	88 19                	mov    BYTE PTR [ecx],bl
c0102bc7:	41                   	inc    ecx
c0102bc8:	88 10                	mov    BYTE PTR [eax],dl
c0102bca:	48                   	dec    eax
c0102bcb:	39 c8                	cmp    eax,ecx
c0102bcd:	77 f2                	ja     c0102bc1 <utoa+0x32>
c0102bcf:	5b                   	pop    ebx
c0102bd0:	5e                   	pop    esi
c0102bd1:	5d                   	pop    ebp
c0102bd2:	c3                   	ret    

c0102bd3 <roll_screen>:
c0102bd3:	55                   	push   ebp
c0102bd4:	89 e5                	mov    ebp,esp
c0102bd6:	53                   	push   ebx
c0102bd7:	83 3d 14 7c 00 00 00 	cmp    DWORD PTR ds:0x7c14,0x0
c0102bde:	75 2c                	jne    c0102c0c <roll_screen+0x39>
c0102be0:	a1 20 7c 00 00       	mov    eax,ds:0x7c20
c0102be5:	8b 0d 18 7c 00 00    	mov    ecx,DWORD PTR ds:0x7c18
c0102beb:	8d 1c 41             	lea    ebx,[ecx+eax*2]
c0102bee:	31 c0                	xor    eax,eax
c0102bf0:	eb 09                	jmp    c0102bfb <roll_screen+0x28>
c0102bf2:	66 8b 14 43          	mov    dx,WORD PTR [ebx+eax*2]
c0102bf6:	66 89 14 41          	mov    WORD PTR [ecx+eax*2],dx
c0102bfa:	40                   	inc    eax
c0102bfb:	8b 15 24 7c 00 00    	mov    edx,DWORD PTR ds:0x7c24
c0102c01:	0f af 15 20 7c 00 00 	imul   edx,DWORD PTR ds:0x7c20
c0102c08:	39 d0                	cmp    eax,edx
c0102c0a:	72 e6                	jb     c0102bf2 <roll_screen+0x1f>
c0102c0c:	5b                   	pop    ebx
c0102c0d:	5d                   	pop    ebp
c0102c0e:	c3                   	ret    

c0102c0f <get_cursor>:
c0102c0f:	55                   	push   ebp
c0102c10:	ba d4 03 00 00       	mov    edx,0x3d4
c0102c15:	89 e5                	mov    ebp,esp
c0102c17:	b8 0e 00 00 00       	mov    eax,0xe
c0102c1c:	53                   	push   ebx
c0102c1d:	ee                   	out    dx,al
c0102c1e:	bb d5 03 00 00       	mov    ebx,0x3d5
c0102c23:	89 da                	mov    edx,ebx
c0102c25:	ec                   	in     al,dx
c0102c26:	89 c1                	mov    ecx,eax
c0102c28:	b2 d4                	mov    dl,0xd4
c0102c2a:	b8 0f 00 00 00       	mov    eax,0xf
c0102c2f:	ee                   	out    dx,al
c0102c30:	89 da                	mov    edx,ebx
c0102c32:	ec                   	in     al,dx
c0102c33:	c1 e1 08             	shl    ecx,0x8
c0102c36:	09 c1                	or     ecx,eax
c0102c38:	89 c8                	mov    eax,ecx
c0102c3a:	5b                   	pop    ebx
c0102c3b:	5d                   	pop    ebp
c0102c3c:	c3                   	ret    

c0102c3d <set_cursor>:
c0102c3d:	55                   	push   ebp
c0102c3e:	ba d4 03 00 00       	mov    edx,0x3d4
c0102c43:	89 e5                	mov    ebp,esp
c0102c45:	b8 0e 00 00 00       	mov    eax,0xe
c0102c4a:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
c0102c4d:	ee                   	out    dx,al
c0102c4e:	0f b6 c5             	movzx  eax,ch
c0102c51:	b2 d5                	mov    dl,0xd5
c0102c53:	ee                   	out    dx,al
c0102c54:	b8 0f 00 00 00       	mov    eax,0xf
c0102c59:	b2 d4                	mov    dl,0xd4
c0102c5b:	ee                   	out    dx,al
c0102c5c:	0f b6 c1             	movzx  eax,cl
c0102c5f:	b2 d5                	mov    dl,0xd5
c0102c61:	ee                   	out    dx,al
c0102c62:	5d                   	pop    ebp
c0102c63:	c3                   	ret    

c0102c64 <put_char>:
c0102c64:	55                   	push   ebp
c0102c65:	89 e5                	mov    ebp,esp
c0102c67:	53                   	push   ebx
c0102c68:	51                   	push   ecx
c0102c69:	8a 4d 08             	mov    cl,BYTE PTR [ebp+0x8]
c0102c6c:	83 3d 14 7c 00 00 00 	cmp    DWORD PTR ds:0x7c14,0x0
c0102c73:	8a 5d 0c             	mov    bl,BYTE PTR [ebp+0xc]
c0102c76:	0f 85 85 00 00 00    	jne    c0102d01 <put_char+0x9d>
c0102c7c:	88 4d f8             	mov    BYTE PTR [ebp-0x8],cl
c0102c7f:	e8 8b ff ff ff       	call   c0102c0f <get_cursor>
c0102c84:	80 fb 0d             	cmp    bl,0xd
c0102c87:	8a 4d f8             	mov    cl,BYTE PTR [ebp-0x8]
c0102c8a:	77 31                	ja     c0102cbd <put_char+0x59>
c0102c8c:	0f b6 d3             	movzx  edx,bl
c0102c8f:	ff 24 95 50 70 10 c0 	jmp    DWORD PTR [edx*4-0x3fef8fb0]
c0102c96:	8d 48 ff             	lea    ecx,[eax-0x1]
c0102c99:	a1 18 7c 00 00       	mov    eax,ds:0x7c18
c0102c9e:	c6 04 48 20          	mov    BYTE PTR [eax+ecx*2],0x20
c0102ca2:	eb 2f                	jmp    c0102cd3 <put_char+0x6f>
c0102ca4:	8b 1d 20 7c 00 00    	mov    ebx,DWORD PTR ds:0x7c20
c0102caa:	31 d2                	xor    edx,edx
c0102cac:	8d 0c 18             	lea    ecx,[eax+ebx*1]
c0102caf:	f7 f3                	div    ebx
c0102cb1:	29 d1                	sub    ecx,edx
c0102cb3:	eb 1e                	jmp    c0102cd3 <put_char+0x6f>
c0102cb5:	8d 48 04             	lea    ecx,[eax+0x4]
c0102cb8:	83 e1 fc             	and    ecx,0xfffffffc
c0102cbb:	eb 16                	jmp    c0102cd3 <put_char+0x6f>
c0102cbd:	8b 15 18 7c 00 00    	mov    edx,DWORD PTR ds:0x7c18
c0102cc3:	88 1c 42             	mov    BYTE PTR [edx+eax*2],bl
c0102cc6:	8b 15 18 7c 00 00    	mov    edx,DWORD PTR ds:0x7c18
c0102ccc:	88 4c 42 01          	mov    BYTE PTR [edx+eax*2+0x1],cl
c0102cd0:	8d 48 01             	lea    ecx,[eax+0x1]
c0102cd3:	a1 24 7c 00 00       	mov    eax,ds:0x7c24
c0102cd8:	0f af 05 20 7c 00 00 	imul   eax,DWORD PTR ds:0x7c20
c0102cdf:	39 c1                	cmp    ecx,eax
c0102ce1:	72 13                	jb     c0102cf6 <put_char+0x92>
c0102ce3:	e8 eb fe ff ff       	call   c0102bd3 <roll_screen>
c0102ce8:	8b 0d 24 7c 00 00    	mov    ecx,DWORD PTR ds:0x7c24
c0102cee:	49                   	dec    ecx
c0102cef:	0f af 0d 20 7c 00 00 	imul   ecx,DWORD PTR ds:0x7c20
c0102cf6:	89 4d 08             	mov    DWORD PTR [ebp+0x8],ecx
c0102cf9:	5a                   	pop    edx
c0102cfa:	5b                   	pop    ebx
c0102cfb:	5d                   	pop    ebp
c0102cfc:	e9 3c ff ff ff       	jmp    c0102c3d <set_cursor>
c0102d01:	58                   	pop    eax
c0102d02:	5b                   	pop    ebx
c0102d03:	5d                   	pop    ebp
c0102d04:	c3                   	ret    

c0102d05 <put_str>:
c0102d05:	55                   	push   ebp
c0102d06:	89 e5                	mov    ebp,esp
c0102d08:	56                   	push   esi
c0102d09:	0f b6 75 08          	movzx  esi,BYTE PTR [ebp+0x8]
c0102d0d:	53                   	push   ebx
c0102d0e:	8b 5d 0c             	mov    ebx,DWORD PTR [ebp+0xc]
c0102d11:	eb 0d                	jmp    c0102d20 <put_str+0x1b>
c0102d13:	0f b6 c0             	movzx  eax,al
c0102d16:	43                   	inc    ebx
c0102d17:	50                   	push   eax
c0102d18:	56                   	push   esi
c0102d19:	e8 46 ff ff ff       	call   c0102c64 <put_char>
c0102d1e:	58                   	pop    eax
c0102d1f:	5a                   	pop    edx
c0102d20:	8a 03                	mov    al,BYTE PTR [ebx]
c0102d22:	84 c0                	test   al,al
c0102d24:	75 ed                	jne    c0102d13 <put_str+0xe>
c0102d26:	8d 65 f8             	lea    esp,[ebp-0x8]
c0102d29:	5b                   	pop    ebx
c0102d2a:	5e                   	pop    esi
c0102d2b:	5d                   	pop    ebp
c0102d2c:	c3                   	ret    

c0102d2d <put_uint>:
c0102d2d:	55                   	push   ebp
c0102d2e:	31 c0                	xor    eax,eax
c0102d30:	89 e5                	mov    ebp,esp
c0102d32:	b9 42 00 00 00       	mov    ecx,0x42
c0102d37:	57                   	push   edi
c0102d38:	53                   	push   ebx
c0102d39:	8d 7d b6             	lea    edi,[ebp-0x4a]
c0102d3c:	83 ec 50             	sub    esp,0x50
c0102d3f:	8a 5d 08             	mov    bl,BYTE PTR [ebp+0x8]
c0102d42:	f3 aa                	rep stos BYTE PTR es:[edi],al
c0102d44:	8d 7d b6             	lea    edi,[ebp-0x4a]
c0102d47:	ff 75 10             	push   DWORD PTR [ebp+0x10]
c0102d4a:	0f b6 db             	movzx  ebx,bl
c0102d4d:	57                   	push   edi
c0102d4e:	ff 75 0c             	push   DWORD PTR [ebp+0xc]
c0102d51:	e8 39 fe ff ff       	call   c0102b8f <utoa>
c0102d56:	57                   	push   edi
c0102d57:	53                   	push   ebx
c0102d58:	e8 a8 ff ff ff       	call   c0102d05 <put_str>
c0102d5d:	83 c4 14             	add    esp,0x14
c0102d60:	8d 65 f8             	lea    esp,[ebp-0x8]
c0102d63:	5b                   	pop    ebx
c0102d64:	5f                   	pop    edi
c0102d65:	5d                   	pop    ebp
c0102d66:	c3                   	ret    

c0102d67 <put_int>:
c0102d67:	55                   	push   ebp
c0102d68:	31 c0                	xor    eax,eax
c0102d6a:	89 e5                	mov    ebp,esp
c0102d6c:	b9 42 00 00 00       	mov    ecx,0x42
c0102d71:	57                   	push   edi
c0102d72:	53                   	push   ebx
c0102d73:	8d 7d b6             	lea    edi,[ebp-0x4a]
c0102d76:	83 ec 50             	sub    esp,0x50
c0102d79:	8a 5d 08             	mov    bl,BYTE PTR [ebp+0x8]
c0102d7c:	f3 aa                	rep stos BYTE PTR es:[edi],al
c0102d7e:	8d 7d b6             	lea    edi,[ebp-0x4a]
c0102d81:	ff 75 10             	push   DWORD PTR [ebp+0x10]
c0102d84:	0f b6 db             	movzx  ebx,bl
c0102d87:	57                   	push   edi
c0102d88:	ff 75 0c             	push   DWORD PTR [ebp+0xc]
c0102d8b:	e8 a0 fd ff ff       	call   c0102b30 <itoa>
c0102d90:	57                   	push   edi
c0102d91:	53                   	push   ebx
c0102d92:	e8 6e ff ff ff       	call   c0102d05 <put_str>
c0102d97:	83 c4 14             	add    esp,0x14
c0102d9a:	8d 65 f8             	lea    esp,[ebp-0x8]
c0102d9d:	5b                   	pop    ebx
c0102d9e:	5f                   	pop    edi
c0102d9f:	5d                   	pop    ebp
c0102da0:	c3                   	ret    
c0102da1:	00 00                	add    BYTE PTR [eax],al
	...

c0102da4 <memset>:
c0102da4:	55                   	push   ebp
c0102da5:	89 e5                	mov    ebp,esp
c0102da7:	56                   	push   esi
c0102da8:	53                   	push   ebx
c0102da9:	83 ec 10             	sub    esp,0x10
c0102dac:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c0102daf:	8b 75 10             	mov    esi,DWORD PTR [ebp+0x10]
c0102db2:	8a 55 0c             	mov    dl,BYTE PTR [ebp+0xc]
c0102db5:	85 db                	test   ebx,ebx
c0102db7:	75 1f                	jne    c0102dd8 <memset+0x34>
c0102db9:	68 00 71 10 c0       	push   0xc0107100
c0102dbe:	68 80 71 10 c0       	push   0xc0107180
c0102dc3:	6a 0f                	push   0xf
c0102dc5:	68 0e 71 10 c0       	push   0xc010710e
c0102dca:	88 55 f4             	mov    BYTE PTR [ebp-0xc],dl
c0102dcd:	e8 76 d6 ff ff       	call   c0100448 <panic_spin>
c0102dd2:	8a 55 f4             	mov    dl,BYTE PTR [ebp-0xc]
c0102dd5:	83 c4 10             	add    esp,0x10
c0102dd8:	31 c0                	xor    eax,eax
c0102dda:	eb 04                	jmp    c0102de0 <memset+0x3c>
c0102ddc:	88 14 03             	mov    BYTE PTR [ebx+eax*1],dl
c0102ddf:	40                   	inc    eax
c0102de0:	39 f0                	cmp    eax,esi
c0102de2:	75 f8                	jne    c0102ddc <memset+0x38>
c0102de4:	8d 65 f8             	lea    esp,[ebp-0x8]
c0102de7:	5b                   	pop    ebx
c0102de8:	5e                   	pop    esi
c0102de9:	5d                   	pop    ebp
c0102dea:	c3                   	ret    

c0102deb <memcpy>:
c0102deb:	55                   	push   ebp
c0102dec:	89 e5                	mov    ebp,esp
c0102dee:	57                   	push   edi
c0102def:	56                   	push   esi
c0102df0:	53                   	push   ebx
c0102df1:	83 ec 0c             	sub    esp,0xc
c0102df4:	8b 75 0c             	mov    esi,DWORD PTR [ebp+0xc]
c0102df7:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c0102dfa:	8b 7d 10             	mov    edi,DWORD PTR [ebp+0x10]
c0102dfd:	85 f6                	test   esi,esi
c0102dff:	74 04                	je     c0102e05 <memcpy+0x1a>
c0102e01:	85 db                	test   ebx,ebx
c0102e03:	75 19                	jne    c0102e1e <memcpy+0x33>
c0102e05:	68 1c 71 10 c0       	push   0xc010711c
c0102e0a:	68 88 71 10 c0       	push   0xc0107188
c0102e0f:	6a 22                	push   0x22
c0102e11:	68 0e 71 10 c0       	push   0xc010710e
c0102e16:	e8 2d d6 ff ff       	call   c0100448 <panic_spin>
c0102e1b:	83 c4 10             	add    esp,0x10
c0102e1e:	31 c0                	xor    eax,eax
c0102e20:	eb 07                	jmp    c0102e29 <memcpy+0x3e>
c0102e22:	8a 14 06             	mov    dl,BYTE PTR [esi+eax*1]
c0102e25:	88 14 03             	mov    BYTE PTR [ebx+eax*1],dl
c0102e28:	40                   	inc    eax
c0102e29:	39 f8                	cmp    eax,edi
c0102e2b:	75 f5                	jne    c0102e22 <memcpy+0x37>
c0102e2d:	8d 65 f4             	lea    esp,[ebp-0xc]
c0102e30:	5b                   	pop    ebx
c0102e31:	5e                   	pop    esi
c0102e32:	5f                   	pop    edi
c0102e33:	5d                   	pop    ebp
c0102e34:	c3                   	ret    

c0102e35 <memcmp>:
c0102e35:	55                   	push   ebp
c0102e36:	89 e5                	mov    ebp,esp
c0102e38:	56                   	push   esi
c0102e39:	8b 75 08             	mov    esi,DWORD PTR [ebp+0x8]
c0102e3c:	53                   	push   ebx
c0102e3d:	8b 5d 0c             	mov    ebx,DWORD PTR [ebp+0xc]
c0102e40:	85 db                	test   ebx,ebx
c0102e42:	74 04                	je     c0102e48 <memcmp+0x13>
c0102e44:	85 f6                	test   esi,esi
c0102e46:	75 19                	jne    c0102e61 <memcmp+0x2c>
c0102e48:	68 3b 71 10 c0       	push   0xc010713b
c0102e4d:	68 90 71 10 c0       	push   0xc0107190
c0102e52:	6a 3b                	push   0x3b
c0102e54:	68 0e 71 10 c0       	push   0xc010710e
c0102e59:	e8 ea d5 ff ff       	call   c0100448 <panic_spin>
c0102e5e:	83 c4 10             	add    esp,0x10
c0102e61:	8a 13                	mov    dl,BYTE PTR [ebx]
c0102e63:	83 c8 ff             	or     eax,0xffffffff
c0102e66:	38 16                	cmp    BYTE PTR [esi],dl
c0102e68:	72 06                	jb     c0102e70 <memcmp+0x3b>
c0102e6a:	0f 97 c0             	seta   al
c0102e6d:	0f b6 c0             	movzx  eax,al
c0102e70:	8d 65 f8             	lea    esp,[ebp-0x8]
c0102e73:	5b                   	pop    ebx
c0102e74:	5e                   	pop    esi
c0102e75:	5d                   	pop    ebp
c0102e76:	c3                   	ret    

c0102e77 <strcpy>:
c0102e77:	55                   	push   ebp
c0102e78:	31 d2                	xor    edx,edx
c0102e7a:	89 e5                	mov    ebp,esp
c0102e7c:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102e7f:	53                   	push   ebx
c0102e80:	8b 5d 0c             	mov    ebx,DWORD PTR [ebp+0xc]
c0102e83:	8a 0c 13             	mov    cl,BYTE PTR [ebx+edx*1]
c0102e86:	88 0c 10             	mov    BYTE PTR [eax+edx*1],cl
c0102e89:	42                   	inc    edx
c0102e8a:	84 c9                	test   cl,cl
c0102e8c:	75 f5                	jne    c0102e83 <strcpy+0xc>
c0102e8e:	5b                   	pop    ebx
c0102e8f:	5d                   	pop    ebp
c0102e90:	c3                   	ret    

c0102e91 <strlen>:
c0102e91:	55                   	push   ebp
c0102e92:	31 c0                	xor    eax,eax
c0102e94:	89 e5                	mov    ebp,esp
c0102e96:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c0102e99:	eb 01                	jmp    c0102e9c <strlen+0xb>
c0102e9b:	40                   	inc    eax
c0102e9c:	80 3c 02 00          	cmp    BYTE PTR [edx+eax*1],0x0
c0102ea0:	75 f9                	jne    c0102e9b <strlen+0xa>
c0102ea2:	5d                   	pop    ebp
c0102ea3:	c3                   	ret    

c0102ea4 <vsprintf>:
c0102ea4:	55                   	push   ebp
c0102ea5:	89 e5                	mov    ebp,esp
c0102ea7:	57                   	push   edi
c0102ea8:	56                   	push   esi
c0102ea9:	53                   	push   ebx
c0102eaa:	83 ec 5c             	sub    esp,0x5c
c0102ead:	8b 75 0c             	mov    esi,DWORD PTR [ebp+0xc]
c0102eb0:	8b 7d 10             	mov    edi,DWORD PTR [ebp+0x10]
c0102eb3:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c0102eb6:	e9 6c 01 00 00       	jmp    c0103027 <vsprintf+0x183>
c0102ebb:	3c 25                	cmp    al,0x25
c0102ebd:	74 08                	je     c0102ec7 <vsprintf+0x23>
c0102ebf:	88 03                	mov    BYTE PTR [ebx],al
c0102ec1:	43                   	inc    ebx
c0102ec2:	e9 5f 01 00 00       	jmp    c0103026 <vsprintf+0x182>
c0102ec7:	46                   	inc    esi
c0102ec8:	ba 01 00 00 00       	mov    edx,0x1
c0102ecd:	c6 45 c3 00          	mov    BYTE PTR [ebp-0x3d],0x0
c0102ed1:	c7 45 b0 01 00 00 00 	mov    DWORD PTR [ebp-0x50],0x1
c0102ed8:	c7 45 a8 00 00 00 00 	mov    DWORD PTR [ebp-0x58],0x0
c0102edf:	8a 06                	mov    al,BYTE PTR [esi]
c0102ee1:	3c 2b                	cmp    al,0x2b
c0102ee3:	74 28                	je     c0102f0d <vsprintf+0x69>
c0102ee5:	7f 0a                	jg     c0102ef1 <vsprintf+0x4d>
c0102ee7:	3c 20                	cmp    al,0x20
c0102ee9:	74 27                	je     c0102f12 <vsprintf+0x6e>
c0102eeb:	3c 23                	cmp    al,0x23
c0102eed:	75 19                	jne    c0102f08 <vsprintf+0x64>
c0102eef:	eb 21                	jmp    c0102f12 <vsprintf+0x6e>
c0102ef1:	3c 2d                	cmp    al,0x2d
c0102ef3:	74 06                	je     c0102efb <vsprintf+0x57>
c0102ef5:	3c 30                	cmp    al,0x30
c0102ef7:	75 0f                	jne    c0102f08 <vsprintf+0x64>
c0102ef9:	eb 04                	jmp    c0102eff <vsprintf+0x5b>
c0102efb:	31 d2                	xor    edx,edx
c0102efd:	eb 13                	jmp    c0102f12 <vsprintf+0x6e>
c0102eff:	c7 45 a8 01 00 00 00 	mov    DWORD PTR [ebp-0x58],0x1
c0102f06:	eb 0a                	jmp    c0102f12 <vsprintf+0x6e>
c0102f08:	4e                   	dec    esi
c0102f09:	31 c0                	xor    eax,eax
c0102f0b:	eb 0a                	jmp    c0102f17 <vsprintf+0x73>
c0102f0d:	ba 01 00 00 00       	mov    edx,0x1
c0102f12:	b8 01 00 00 00       	mov    eax,0x1
c0102f17:	46                   	inc    esi
c0102f18:	85 c0                	test   eax,eax
c0102f1a:	75 c3                	jne    c0102edf <vsprintf+0x3b>
c0102f1c:	89 55 b0             	mov    DWORD PTR [ebp-0x50],edx
c0102f1f:	c7 45 ac 00 00 00 00 	mov    DWORD PTR [ebp-0x54],0x0
c0102f26:	eb 0f                	jmp    c0102f37 <vsprintf+0x93>
c0102f28:	6b 55 ac 0a          	imul   edx,DWORD PTR [ebp-0x54],0xa
c0102f2c:	0f be c0             	movsx  eax,al
c0102f2f:	46                   	inc    esi
c0102f30:	8d 44 02 d0          	lea    eax,[edx+eax*1-0x30]
c0102f34:	89 45 ac             	mov    DWORD PTR [ebp-0x54],eax
c0102f37:	8a 06                	mov    al,BYTE PTR [esi]
c0102f39:	8d 50 d0             	lea    edx,[eax-0x30]
c0102f3c:	80 fa 09             	cmp    dl,0x9
c0102f3f:	76 e7                	jbe    c0102f28 <vsprintf+0x84>
c0102f41:	31 d2                	xor    edx,edx
c0102f43:	83 7d ac 00          	cmp    DWORD PTR [ebp-0x54],0x0
c0102f47:	0f 95 c2             	setne  dl
c0102f4a:	f7 da                	neg    edx
c0102f4c:	21 55 b0             	and    DWORD PTR [ebp-0x50],edx
c0102f4f:	3c 6f                	cmp    al,0x6f
c0102f51:	74 2d                	je     c0102f80 <vsprintf+0xdc>
c0102f53:	7f 0e                	jg     c0102f63 <vsprintf+0xbf>
c0102f55:	3c 63                	cmp    al,0x63
c0102f57:	74 1a                	je     c0102f73 <vsprintf+0xcf>
c0102f59:	3c 64                	cmp    al,0x64
c0102f5b:	74 18                	je     c0102f75 <vsprintf+0xd1>
c0102f5d:	3c 25                	cmp    al,0x25
c0102f5f:	75 61                	jne    c0102fc2 <vsprintf+0x11e>
c0102f61:	eb 0a                	jmp    c0102f6d <vsprintf+0xc9>
c0102f63:	3c 73                	cmp    al,0x73
c0102f65:	74 24                	je     c0102f8b <vsprintf+0xe7>
c0102f67:	3c 78                	cmp    al,0x78
c0102f69:	75 57                	jne    c0102fc2 <vsprintf+0x11e>
c0102f6b:	eb 3b                	jmp    c0102fa8 <vsprintf+0x104>
c0102f6d:	c6 03 25             	mov    BYTE PTR [ebx],0x25
c0102f70:	43                   	inc    ebx
c0102f71:	eb 4f                	jmp    c0102fc2 <vsprintf+0x11e>
c0102f73:	0f 0b                	ud2    
c0102f75:	8d 47 04             	lea    eax,[edi+0x4]
c0102f78:	89 45 b4             	mov    DWORD PTR [ebp-0x4c],eax
c0102f7b:	50                   	push   eax
c0102f7c:	6a 0a                	push   0xa
c0102f7e:	eb 31                	jmp    c0102fb1 <vsprintf+0x10d>
c0102f80:	8d 47 04             	lea    eax,[edi+0x4]
c0102f83:	89 45 b4             	mov    DWORD PTR [ebp-0x4c],eax
c0102f86:	50                   	push   eax
c0102f87:	6a 08                	push   0x8
c0102f89:	eb 26                	jmp    c0102fb1 <vsprintf+0x10d>
c0102f8b:	8d 47 04             	lea    eax,[edi+0x4]
c0102f8e:	8b 3f                	mov    edi,DWORD PTR [edi]
c0102f90:	51                   	push   ecx
c0102f91:	51                   	push   ecx
c0102f92:	57                   	push   edi
c0102f93:	53                   	push   ebx
c0102f94:	89 45 b4             	mov    DWORD PTR [ebp-0x4c],eax
c0102f97:	e8 db fe ff ff       	call   c0102e77 <strcpy>
c0102f9c:	89 3c 24             	mov    DWORD PTR [esp],edi
c0102f9f:	e8 ed fe ff ff       	call   c0102e91 <strlen>
c0102fa4:	01 c3                	add    ebx,eax
c0102fa6:	eb 14                	jmp    c0102fbc <vsprintf+0x118>
c0102fa8:	8d 47 04             	lea    eax,[edi+0x4]
c0102fab:	52                   	push   edx
c0102fac:	6a 10                	push   0x10
c0102fae:	89 45 b4             	mov    DWORD PTR [ebp-0x4c],eax
c0102fb1:	8d 45 c3             	lea    eax,[ebp-0x3d]
c0102fb4:	50                   	push   eax
c0102fb5:	ff 37                	push   DWORD PTR [edi]
c0102fb7:	e8 74 fb ff ff       	call   c0102b30 <itoa>
c0102fbc:	8b 7d b4             	mov    edi,DWORD PTR [ebp-0x4c]
c0102fbf:	83 c4 10             	add    esp,0x10
c0102fc2:	83 ec 0c             	sub    esp,0xc
c0102fc5:	8d 45 c3             	lea    eax,[ebp-0x3d]
c0102fc8:	50                   	push   eax
c0102fc9:	e8 c3 fe ff ff       	call   c0102e91 <strlen>
c0102fce:	8b 55 ac             	mov    edx,DWORD PTR [ebp-0x54]
c0102fd1:	83 c4 10             	add    esp,0x10
c0102fd4:	8a 4d b0             	mov    cl,BYTE PTR [ebp-0x50]
c0102fd7:	29 c2                	sub    edx,eax
c0102fd9:	eb 10                	jmp    c0102feb <vsprintf+0x147>
c0102fdb:	83 7d a8 01          	cmp    DWORD PTR [ebp-0x58],0x1
c0102fdf:	19 c0                	sbb    eax,eax
c0102fe1:	4a                   	dec    edx
c0102fe2:	83 e0 f0             	and    eax,0xfffffff0
c0102fe5:	83 c0 30             	add    eax,0x30
c0102fe8:	88 03                	mov    BYTE PTR [ebx],al
c0102fea:	43                   	inc    ebx
c0102feb:	85 d2                	test   edx,edx
c0102fed:	7e 04                	jle    c0102ff3 <vsprintf+0x14f>
c0102fef:	84 c9                	test   cl,cl
c0102ff1:	75 e8                	jne    c0102fdb <vsprintf+0x137>
c0102ff3:	50                   	push   eax
c0102ff4:	50                   	push   eax
c0102ff5:	8d 45 c3             	lea    eax,[ebp-0x3d]
c0102ff8:	50                   	push   eax
c0102ff9:	53                   	push   ebx
c0102ffa:	89 55 a4             	mov    DWORD PTR [ebp-0x5c],edx
c0102ffd:	e8 75 fe ff ff       	call   c0102e77 <strcpy>
c0103002:	8d 45 c3             	lea    eax,[ebp-0x3d]
c0103005:	89 04 24             	mov    DWORD PTR [esp],eax
c0103008:	e8 84 fe ff ff       	call   c0102e91 <strlen>
c010300d:	83 c4 10             	add    esp,0x10
c0103010:	8b 55 a4             	mov    edx,DWORD PTR [ebp-0x5c]
c0103013:	01 c3                	add    ebx,eax
c0103015:	eb 05                	jmp    c010301c <vsprintf+0x178>
c0103017:	c6 03 20             	mov    BYTE PTR [ebx],0x20
c010301a:	4a                   	dec    edx
c010301b:	43                   	inc    ebx
c010301c:	85 d2                	test   edx,edx
c010301e:	7e 06                	jle    c0103026 <vsprintf+0x182>
c0103020:	83 7d b0 00          	cmp    DWORD PTR [ebp-0x50],0x0
c0103024:	74 f1                	je     c0103017 <vsprintf+0x173>
c0103026:	46                   	inc    esi
c0103027:	8a 06                	mov    al,BYTE PTR [esi]
c0103029:	84 c0                	test   al,al
c010302b:	0f 85 8a fe ff ff    	jne    c0102ebb <vsprintf+0x17>
c0103031:	83 ec 0c             	sub    esp,0xc
c0103034:	ff 75 08             	push   DWORD PTR [ebp+0x8]
c0103037:	e8 55 fe ff ff       	call   c0102e91 <strlen>
c010303c:	8d 65 f4             	lea    esp,[ebp-0xc]
c010303f:	5b                   	pop    ebx
c0103040:	5e                   	pop    esi
c0103041:	5f                   	pop    edi
c0103042:	5d                   	pop    ebp
c0103043:	c3                   	ret    

c0103044 <sprintf>:
c0103044:	55                   	push   ebp
c0103045:	89 e5                	mov    ebp,esp
c0103047:	83 ec 0c             	sub    esp,0xc
c010304a:	8d 45 10             	lea    eax,[ebp+0x10]
c010304d:	50                   	push   eax
c010304e:	ff 75 0c             	push   DWORD PTR [ebp+0xc]
c0103051:	ff 75 08             	push   DWORD PTR [ebp+0x8]
c0103054:	e8 4b fe ff ff       	call   c0102ea4 <vsprintf>
c0103059:	c9                   	leave  
c010305a:	c3                   	ret    
	...

c010305c <RectangleFill>:
c010305c:	55                   	push   ebp
c010305d:	89 e5                	mov    ebp,esp
c010305f:	57                   	push   edi
c0103060:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
c0103063:	56                   	push   esi
c0103064:	8b 45 14             	mov    eax,DWORD PTR [ebp+0x14]
c0103067:	53                   	push   ebx
c0103068:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c010306b:	83 3d 14 7c 00 00 01 	cmp    DWORD PTR ds:0x7c14,0x1
c0103072:	75 30                	jne    c01030a4 <RectangleFill+0x48>
c0103074:	89 ca                	mov    edx,ecx
c0103076:	81 e2 00 00 00 ff    	and    edx,0xff000000
c010307c:	81 fa 00 00 00 ff    	cmp    edx,0xff000000
c0103082:	75 16                	jne    c010309a <RectangleFill+0x3e>
c0103084:	eb 1e                	jmp    c01030a4 <RectangleFill+0x48>
c0103086:	8b 7b 04             	mov    edi,DWORD PTR [ebx+0x4]
c0103089:	8b 33                	mov    esi,DWORD PTR [ebx]
c010308b:	0f af f8             	imul   edi,eax
c010308e:	01 d7                	add    edi,edx
c0103090:	42                   	inc    edx
c0103091:	89 0c be             	mov    DWORD PTR [esi+edi*4],ecx
c0103094:	3b 55 18             	cmp    edx,DWORD PTR [ebp+0x18]
c0103097:	7e ed                	jle    c0103086 <RectangleFill+0x2a>
c0103099:	40                   	inc    eax
c010309a:	3b 45 1c             	cmp    eax,DWORD PTR [ebp+0x1c]
c010309d:	7f 05                	jg     c01030a4 <RectangleFill+0x48>
c010309f:	8b 55 10             	mov    edx,DWORD PTR [ebp+0x10]
c01030a2:	eb f0                	jmp    c0103094 <RectangleFill+0x38>
c01030a4:	5b                   	pop    ebx
c01030a5:	5e                   	pop    esi
c01030a6:	5f                   	pop    edi
c01030a7:	5d                   	pop    ebp
c01030a8:	c3                   	ret    

c01030a9 <init_Rectangle>:
c01030a9:	55                   	push   ebp
c01030aa:	89 e5                	mov    ebp,esp
c01030ac:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01030af:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
c01030b2:	89 10                	mov    DWORD PTR [eax],edx
c01030b4:	8b 55 10             	mov    edx,DWORD PTR [ebp+0x10]
c01030b7:	89 50 04             	mov    DWORD PTR [eax+0x4],edx
c01030ba:	8b 55 14             	mov    edx,DWORD PTR [ebp+0x14]
c01030bd:	89 50 08             	mov    DWORD PTR [eax+0x8],edx
c01030c0:	8b 55 18             	mov    edx,DWORD PTR [ebp+0x18]
c01030c3:	89 50 0c             	mov    DWORD PTR [eax+0xc],edx
c01030c6:	8b 55 1c             	mov    edx,DWORD PTR [ebp+0x1c]
c01030c9:	89 50 10             	mov    DWORD PTR [eax+0x10],edx
c01030cc:	5d                   	pop    ebp
c01030cd:	c3                   	ret    

c01030ce <init_screen>:
c01030ce:	55                   	push   ebp
c01030cf:	89 e5                	mov    ebp,esp
c01030d1:	53                   	push   ebx
c01030d2:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c01030d5:	83 3d 14 7c 00 00 01 	cmp    DWORD PTR ds:0x7c14,0x1
c01030dc:	0f 85 df 00 00 00    	jne    c01031c1 <init_screen+0xf3>
c01030e2:	a1 24 7c 00 00       	mov    eax,ds:0x7c24
c01030e7:	8b 15 20 7c 00 00    	mov    edx,DWORD PTR ds:0x7c20
c01030ed:	c7 03 00 00 00 e0    	mov    DWORD PTR [ebx],0xe0000000
c01030f3:	c7 43 0c 00 00 00 00 	mov    DWORD PTR [ebx+0xc],0x0
c01030fa:	89 43 08             	mov    DWORD PTR [ebx+0x8],eax
c01030fd:	89 53 04             	mov    DWORD PTR [ebx+0x4],edx
c0103100:	c7 43 10 00 00 00 00 	mov    DWORD PTR [ebx+0x10],0x0
c0103107:	a1 24 7c 00 00       	mov    eax,ds:0x7c24
c010310c:	83 e8 33             	sub    eax,0x33
c010310f:	50                   	push   eax
c0103110:	a1 20 7c 00 00       	mov    eax,ds:0x7c20
c0103115:	48                   	dec    eax
c0103116:	50                   	push   eax
c0103117:	6a 00                	push   0x0
c0103119:	6a 00                	push   0x0
c010311b:	68 84 84 00 00       	push   0x8484
c0103120:	53                   	push   ebx
c0103121:	e8 36 ff ff ff       	call   c010305c <RectangleFill>
c0103126:	a1 24 7c 00 00       	mov    eax,ds:0x7c24
c010312b:	8d 50 ff             	lea    edx,[eax-0x1]
c010312e:	83 e8 33             	sub    eax,0x33
c0103131:	52                   	push   edx
c0103132:	8b 15 20 7c 00 00    	mov    edx,DWORD PTR ds:0x7c20
c0103138:	4a                   	dec    edx
c0103139:	52                   	push   edx
c010313a:	50                   	push   eax
c010313b:	6a 00                	push   0x0
c010313d:	68 c6 c6 c6 00       	push   0xc6c6c6
c0103142:	53                   	push   ebx
c0103143:	e8 14 ff ff ff       	call   c010305c <RectangleFill>
c0103148:	a1 24 7c 00 00       	mov    eax,ds:0x7c24
c010314d:	83 c4 30             	add    esp,0x30
c0103150:	8d 50 f8             	lea    edx,[eax-0x8]
c0103153:	83 e8 26             	sub    eax,0x26
c0103156:	52                   	push   edx
c0103157:	6a 2b                	push   0x2b
c0103159:	50                   	push   eax
c010315a:	6a 0d                	push   0xd
c010315c:	68 84 84 84 00       	push   0x848484
c0103161:	53                   	push   ebx
c0103162:	e8 f5 fe ff ff       	call   c010305c <RectangleFill>
c0103167:	a1 24 7c 00 00       	mov    eax,ds:0x7c24
c010316c:	8d 50 f5             	lea    edx,[eax-0xb]
c010316f:	83 e8 29             	sub    eax,0x29
c0103172:	52                   	push   edx
c0103173:	6a 28                	push   0x28
c0103175:	50                   	push   eax
c0103176:	6a 0a                	push   0xa
c0103178:	68 ff ff ff 00       	push   0xffffff
c010317d:	53                   	push   ebx
c010317e:	e8 d9 fe ff ff       	call   c010305c <RectangleFill>
c0103183:	a1 24 7c 00 00       	mov    eax,ds:0x7c24
c0103188:	83 c4 30             	add    esp,0x30
c010318b:	8d 50 f8             	lea    edx,[eax-0x8]
c010318e:	83 e8 26             	sub    eax,0x26
c0103191:	52                   	push   edx
c0103192:	6a 3a                	push   0x3a
c0103194:	50                   	push   eax
c0103195:	6a 35                	push   0x35
c0103197:	68 84 84 84 00       	push   0x848484
c010319c:	53                   	push   ebx
c010319d:	e8 ba fe ff ff       	call   c010305c <RectangleFill>
c01031a2:	a1 24 7c 00 00       	mov    eax,ds:0x7c24
c01031a7:	8d 50 f5             	lea    edx,[eax-0xb]
c01031aa:	83 e8 29             	sub    eax,0x29
c01031ad:	52                   	push   edx
c01031ae:	6a 37                	push   0x37
c01031b0:	50                   	push   eax
c01031b1:	6a 32                	push   0x32
c01031b3:	68 ff ff ff 00       	push   0xffffff
c01031b8:	53                   	push   ebx
c01031b9:	e8 9e fe ff ff       	call   c010305c <RectangleFill>
c01031be:	83 c4 30             	add    esp,0x30
c01031c1:	8b 5d fc             	mov    ebx,DWORD PTR [ebp-0x4]
c01031c4:	c9                   	leave  
c01031c5:	c3                   	ret    

c01031c6 <put_char_graphic>:
c01031c6:	55                   	push   ebp
c01031c7:	89 e5                	mov    ebp,esp
c01031c9:	57                   	push   edi
c01031ca:	0f be 7d 18          	movsx  edi,BYTE PTR [ebp+0x18]
c01031ce:	56                   	push   esi
c01031cf:	8b 55 14             	mov    edx,DWORD PTR [ebp+0x14]
c01031d2:	53                   	push   ebx
c01031d3:	8b 75 08             	mov    esi,DWORD PTR [ebp+0x8]
c01031d6:	c1 e7 04             	shl    edi,0x4
c01031d9:	81 c7 50 33 10 c0    	add    edi,0xc0103350
c01031df:	83 3d 14 7c 00 00 01 	cmp    DWORD PTR ds:0x7c14,0x1
c01031e6:	75 5d                	jne    c0103245 <put_char_graphic+0x7f>
c01031e8:	31 db                	xor    ebx,ebx
c01031ea:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
c01031ed:	8b 0e                	mov    ecx,DWORD PTR [esi]
c01031ef:	01 d8                	add    eax,ebx
c01031f1:	0f af 46 04          	imul   eax,DWORD PTR [esi+0x4]
c01031f5:	03 45 0c             	add    eax,DWORD PTR [ebp+0xc]
c01031f8:	8d 04 81             	lea    eax,[ecx+eax*4]
c01031fb:	8a 0c 1f             	mov    cl,BYTE PTR [edi+ebx*1]
c01031fe:	84 c9                	test   cl,cl
c0103200:	79 02                	jns    c0103204 <put_char_graphic+0x3e>
c0103202:	89 10                	mov    DWORD PTR [eax],edx
c0103204:	0f b6 c9             	movzx  ecx,cl
c0103207:	f6 c1 40             	test   cl,0x40
c010320a:	74 03                	je     c010320f <put_char_graphic+0x49>
c010320c:	89 50 04             	mov    DWORD PTR [eax+0x4],edx
c010320f:	f6 c1 20             	test   cl,0x20
c0103212:	74 03                	je     c0103217 <put_char_graphic+0x51>
c0103214:	89 50 08             	mov    DWORD PTR [eax+0x8],edx
c0103217:	f6 c1 10             	test   cl,0x10
c010321a:	74 03                	je     c010321f <put_char_graphic+0x59>
c010321c:	89 50 0c             	mov    DWORD PTR [eax+0xc],edx
c010321f:	f6 c1 08             	test   cl,0x8
c0103222:	74 03                	je     c0103227 <put_char_graphic+0x61>
c0103224:	89 50 10             	mov    DWORD PTR [eax+0x10],edx
c0103227:	f6 c1 04             	test   cl,0x4
c010322a:	74 03                	je     c010322f <put_char_graphic+0x69>
c010322c:	89 50 14             	mov    DWORD PTR [eax+0x14],edx
c010322f:	f6 c1 02             	test   cl,0x2
c0103232:	74 03                	je     c0103237 <put_char_graphic+0x71>
c0103234:	89 50 18             	mov    DWORD PTR [eax+0x18],edx
c0103237:	80 e1 01             	and    cl,0x1
c010323a:	74 03                	je     c010323f <put_char_graphic+0x79>
c010323c:	89 50 1c             	mov    DWORD PTR [eax+0x1c],edx
c010323f:	43                   	inc    ebx
c0103240:	83 fb 10             	cmp    ebx,0x10
c0103243:	75 a5                	jne    c01031ea <put_char_graphic+0x24>
c0103245:	5b                   	pop    ebx
c0103246:	5e                   	pop    esi
c0103247:	5f                   	pop    edi
c0103248:	5d                   	pop    ebp
c0103249:	c3                   	ret    

c010324a <put_str_graphic>:
c010324a:	55                   	push   ebp
c010324b:	89 e5                	mov    ebp,esp
c010324d:	57                   	push   edi
c010324e:	8b 7d 18             	mov    edi,DWORD PTR [ebp+0x18]
c0103251:	56                   	push   esi
c0103252:	8b 75 10             	mov    esi,DWORD PTR [ebp+0x10]
c0103255:	53                   	push   ebx
c0103256:	8b 5d 0c             	mov    ebx,DWORD PTR [ebp+0xc]
c0103259:	eb 22                	jmp    c010327d <put_str_graphic+0x33>
c010325b:	3c 0a                	cmp    al,0xa
c010325d:	75 06                	jne    c0103265 <put_str_graphic+0x1b>
c010325f:	8b 5d 0c             	mov    ebx,DWORD PTR [ebp+0xc]
c0103262:	83 c6 10             	add    esi,0x10
c0103265:	0f be c0             	movsx  eax,al
c0103268:	47                   	inc    edi
c0103269:	50                   	push   eax
c010326a:	ff 75 14             	push   DWORD PTR [ebp+0x14]
c010326d:	56                   	push   esi
c010326e:	53                   	push   ebx
c010326f:	83 c3 08             	add    ebx,0x8
c0103272:	ff 75 08             	push   DWORD PTR [ebp+0x8]
c0103275:	e8 4c ff ff ff       	call   c01031c6 <put_char_graphic>
c010327a:	83 c4 14             	add    esp,0x14
c010327d:	8a 07                	mov    al,BYTE PTR [edi]
c010327f:	84 c0                	test   al,al
c0103281:	75 d8                	jne    c010325b <put_str_graphic+0x11>
c0103283:	8d 65 f4             	lea    esp,[ebp-0xc]
c0103286:	5b                   	pop    ebx
c0103287:	5e                   	pop    esi
c0103288:	5f                   	pop    edi
c0103289:	5d                   	pop    ebp
c010328a:	c3                   	ret    

Disassembly of section .data:

c0103290 <_data>:
c0103290:	64 05 10 c0 87 05    	fs add eax,0x587c010
c0103296:	10 c0                	adc    al,al
c0103298:	aa                   	stos   BYTE PTR es:[edi],al
c0103299:	05 10 c0 cd 05       	add    eax,0x5cdc010
c010329e:	10 c0                	adc    al,al
c01032a0:	f0 05 10 c0 13 06    	lock add eax,0x613c010
c01032a6:	10 c0                	adc    al,al
c01032a8:	36 06                	ss push es
c01032aa:	10 c0                	adc    al,al
c01032ac:	59                   	pop    ecx
c01032ad:	06                   	push   es
c01032ae:	10 c0                	adc    al,al
c01032b0:	7c 06                	jl     c01032b8 <_data+0x28>
c01032b2:	10 c0                	adc    al,al
c01032b4:	9b                   	fwait
c01032b5:	06                   	push   es
c01032b6:	10 c0                	adc    al,al
c01032b8:	be 06 10 c0 dd       	mov    esi,0xddc01006
c01032bd:	06                   	push   es
c01032be:	10 c0                	adc    al,al
c01032c0:	fc                   	cld    
c01032c1:	06                   	push   es
c01032c2:	10 c0                	adc    al,al
c01032c4:	1f                   	pop    ds
c01032c5:	07                   	pop    es
c01032c6:	10 c0                	adc    al,al
c01032c8:	3e 07                	ds pop es
c01032ca:	10 c0                	adc    al,al
c01032cc:	5d                   	pop    ebp
c01032cd:	07                   	pop    es
c01032ce:	10 c0                	adc    al,al
c01032d0:	80 07 10             	add    BYTE PTR [edi],0x10
c01032d3:	c0 a3 07 10 c0 c2 07 	shl    BYTE PTR [ebx-0x3d3feff9],0x7
c01032da:	10 c0                	adc    al,al
c01032dc:	e5 07                	in     eax,0x7
c01032de:	10 c0                	adc    al,al
c01032e0:	08 08                	or     BYTE PTR [eax],cl
c01032e2:	10 c0                	adc    al,al
c01032e4:	2b 08                	sub    ecx,DWORD PTR [eax]
c01032e6:	10 c0                	adc    al,al
c01032e8:	4e                   	dec    esi
c01032e9:	08 10                	or     BYTE PTR [eax],dl
c01032eb:	c0                   	(bad)  
c01032ec:	71 08                	jno    c01032f6 <_data+0x66>
c01032ee:	10 c0                	adc    al,al
c01032f0:	94                   	xchg   esp,eax
c01032f1:	08 10                	or     BYTE PTR [eax],dl
c01032f3:	c0                   	(bad)  
c01032f4:	b3 08                	mov    bl,0x8
c01032f6:	10 c0                	adc    al,al
c01032f8:	d6                   	(bad)  
c01032f9:	08 10                	or     BYTE PTR [eax],dl
c01032fb:	c0                   	(bad)  
c01032fc:	f5                   	cmc    
c01032fd:	08 10                	or     BYTE PTR [eax],dl
c01032ff:	c0 14 09 10          	rcl    BYTE PTR [ecx+ecx*1],0x10
c0103303:	c0                   	(bad)  
c0103304:	37                   	aaa    
c0103305:	09 10                	or     DWORD PTR [eax],edx
c0103307:	c0 56 09 10          	rcl    BYTE PTR [esi+0x9],0x10
c010330b:	c0                   	(bad)  
c010330c:	75 09                	jne    c0103317 <_data+0x87>
c010330e:	10 c0                	adc    al,al
c0103310:	98                   	cwde   
c0103311:	09 10                	or     DWORD PTR [eax],edx
c0103313:	c0 bb 09 10 c0 de 09 	sar    BYTE PTR [ebx-0x213feff7],0x9
c010331a:	10 c0                	adc    al,al
c010331c:	01 0a                	add    DWORD PTR [edx],ecx
c010331e:	10 c0                	adc    al,al
c0103320:	24 0a                	and    al,0xa
c0103322:	10 c0                	adc    al,al
c0103324:	47                   	inc    edi
c0103325:	0a 10                	or     dl,BYTE PTR [eax]
c0103327:	c0 6a 0a 10          	shr    BYTE PTR [edx+0xa],0x10
c010332b:	c0 8d 0a 10 c0 b0 0a 	ror    BYTE PTR [ebp-0x4f3feff6],0xa
c0103332:	10 c0                	adc    al,al
c0103334:	d3 0a                	ror    DWORD PTR [edx],cl
c0103336:	10 c0                	adc    al,al
c0103338:	f6                   	(bad)  
c0103339:	0a 10                	or     dl,BYTE PTR [eax]
c010333b:	c0 19 0b             	rcr    BYTE PTR [ecx],0xb
c010333e:	10 c0                	adc    al,al
c0103340:	3c 0b                	cmp    al,0xb
c0103342:	10 c0                	adc    al,al
c0103344:	5f                   	pop    edi
c0103345:	0b 10                	or     edx,DWORD PTR [eax]
c0103347:	c0 82 0b 10 c0 a5 0b 	rol    BYTE PTR [edx-0x5a3feff5],0xb
c010334e:	10 c0                	adc    al,al

c0103350 <PKnFont>:
	...
c0103560:	00 10                	add    BYTE PTR [eax],dl
c0103562:	10 10                	adc    BYTE PTR [eax],dl
c0103564:	10 10                	adc    BYTE PTR [eax],dl
c0103566:	10 10                	adc    BYTE PTR [eax],dl
c0103568:	10 10                	adc    BYTE PTR [eax],dl
c010356a:	00 00                	add    BYTE PTR [eax],al
c010356c:	10 10                	adc    BYTE PTR [eax],dl
c010356e:	00 00                	add    BYTE PTR [eax],al
c0103570:	28 28                	sub    BYTE PTR [eax],ch
c0103572:	28 00                	sub    BYTE PTR [eax],al
	...
c0103580:	00 44 44 44          	add    BYTE PTR [esp+eax*2+0x44],al
c0103584:	fe 44 44 44          	inc    BYTE PTR [esp+eax*2+0x44]
c0103588:	44                   	inc    esp
c0103589:	44                   	inc    esp
c010358a:	fe 44 44 44          	inc    BYTE PTR [esp+eax*2+0x44]
c010358e:	00 00                	add    BYTE PTR [eax],al
c0103590:	10 3a                	adc    BYTE PTR [edx],bh
c0103592:	56                   	push   esi
c0103593:	92                   	xchg   edx,eax
c0103594:	92                   	xchg   edx,eax
c0103595:	90                   	nop
c0103596:	50                   	push   eax
c0103597:	38 14 12             	cmp    BYTE PTR [edx+edx*1],dl
c010359a:	92                   	xchg   edx,eax
c010359b:	92                   	xchg   edx,eax
c010359c:	d4 b8                	aam    0xb8
c010359e:	10 10                	adc    BYTE PTR [eax],dl
c01035a0:	62 92 94 94 68 08    	bound  edx,QWORD PTR [edx+0x8689494]
c01035a6:	10 10                	adc    BYTE PTR [eax],dl
c01035a8:	20 2c 52             	and    BYTE PTR [edx+edx*2],ch
c01035ab:	52                   	push   edx
c01035ac:	92                   	xchg   edx,eax
c01035ad:	8c 00                	mov    WORD PTR [eax],es
c01035af:	00 00                	add    BYTE PTR [eax],al
c01035b1:	70 88                	jo     c010353b <PKnFont+0x1eb>
c01035b3:	88 88 90 60 47 a2    	mov    BYTE PTR [eax-0x5db89f70],cl
c01035b9:	92                   	xchg   edx,eax
c01035ba:	8a 84 46 39 00 00 04 	mov    al,BYTE PTR [esi+eax*2+0x4000039]
c01035c1:	08 10                	or     BYTE PTR [eax],dl
	...
c01035cf:	00 02                	add    BYTE PTR [edx],al
c01035d1:	04 08                	add    al,0x8
c01035d3:	08 10                	or     BYTE PTR [eax],dl
c01035d5:	10 10                	adc    BYTE PTR [eax],dl
c01035d7:	10 10                	adc    BYTE PTR [eax],dl
c01035d9:	10 10                	adc    BYTE PTR [eax],dl
c01035db:	08 08                	or     BYTE PTR [eax],cl
c01035dd:	04 02                	add    al,0x2
c01035df:	00 80 40 20 20 10    	add    BYTE PTR [eax+0x10202040],al
c01035e5:	10 10                	adc    BYTE PTR [eax],dl
c01035e7:	10 10                	adc    BYTE PTR [eax],dl
c01035e9:	10 10                	adc    BYTE PTR [eax],dl
c01035eb:	20 20                	and    BYTE PTR [eax],ah
c01035ed:	40                   	inc    eax
c01035ee:	80 00 00             	add    BYTE PTR [eax],0x0
c01035f1:	00 00                	add    BYTE PTR [eax],al
c01035f3:	00 00                	add    BYTE PTR [eax],al
c01035f5:	10 92 54 38 54 92    	adc    BYTE PTR [edx-0x6dabc7ac],dl
c01035fb:	10 00                	adc    BYTE PTR [eax],al
	...
c0103605:	10 10                	adc    BYTE PTR [eax],dl
c0103607:	10 fe                	adc    dh,bh
c0103609:	10 10                	adc    BYTE PTR [eax],dl
c010360b:	10 00                	adc    BYTE PTR [eax],al
	...
c0103619:	00 00                	add    BYTE PTR [eax],al
c010361b:	18 18                	sbb    BYTE PTR [eax],bl
c010361d:	08 08                	or     BYTE PTR [eax],cl
c010361f:	10 00                	adc    BYTE PTR [eax],al
c0103621:	00 00                	add    BYTE PTR [eax],al
c0103623:	00 00                	add    BYTE PTR [eax],al
c0103625:	00 00                	add    BYTE PTR [eax],al
c0103627:	00 fe                	add    dh,bh
	...
c0103639:	00 00                	add    BYTE PTR [eax],al
c010363b:	00 18                	add    BYTE PTR [eax],bl
c010363d:	18 00                	sbb    BYTE PTR [eax],al
c010363f:	00 02                	add    BYTE PTR [edx],al
c0103641:	02 04 04             	add    al,BYTE PTR [esp+eax*1]
c0103644:	08 08                	or     BYTE PTR [eax],cl
c0103646:	08 10                	or     BYTE PTR [eax],dl
c0103648:	10 20                	adc    BYTE PTR [eax],ah
c010364a:	20 40 40             	and    BYTE PTR [eax+0x40],al
c010364d:	40                   	inc    eax
c010364e:	80 80 00 18 24 24 42 	add    BYTE PTR [eax+0x24241800],0x42
c0103655:	42                   	inc    edx
c0103656:	42                   	inc    edx
c0103657:	42                   	inc    edx
c0103658:	42                   	inc    edx
c0103659:	42                   	inc    edx
c010365a:	42                   	inc    edx
c010365b:	24 24                	and    al,0x24
c010365d:	18 00                	sbb    BYTE PTR [eax],al
c010365f:	00 00                	add    BYTE PTR [eax],al
c0103661:	08 18                	or     BYTE PTR [eax],bl
c0103663:	28 08                	sub    BYTE PTR [eax],cl
c0103665:	08 08                	or     BYTE PTR [eax],cl
c0103667:	08 08                	or     BYTE PTR [eax],cl
c0103669:	08 08                	or     BYTE PTR [eax],cl
c010366b:	08 08                	or     BYTE PTR [eax],cl
c010366d:	3e 00 00             	add    BYTE PTR ds:[eax],al
c0103670:	00 18                	add    BYTE PTR [eax],bl
c0103672:	24 42                	and    al,0x42
c0103674:	42                   	inc    edx
c0103675:	02 04 08             	add    al,BYTE PTR [eax+ecx*1]
c0103678:	10 20                	adc    BYTE PTR [eax],ah
c010367a:	20 40 40             	and    BYTE PTR [eax+0x40],al
c010367d:	7e 00                	jle    c010367f <PKnFont+0x32f>
c010367f:	00 00                	add    BYTE PTR [eax],al
c0103681:	18 24 42             	sbb    BYTE PTR [edx+eax*2],ah
c0103684:	02 02                	add    al,BYTE PTR [edx]
c0103686:	04 18                	add    al,0x18
c0103688:	04 02                	add    al,0x2
c010368a:	02 42 24             	add    al,BYTE PTR [edx+0x24]
c010368d:	18 00                	sbb    BYTE PTR [eax],al
c010368f:	00 00                	add    BYTE PTR [eax],al
c0103691:	0c 0c                	or     al,0xc
c0103693:	0c 14                	or     al,0x14
c0103695:	14 14                	adc    al,0x14
c0103697:	24 24                	and    al,0x24
c0103699:	44                   	inc    esp
c010369a:	7e 04                	jle    c01036a0 <PKnFont+0x350>
c010369c:	04 1e                	add    al,0x1e
c010369e:	00 00                	add    BYTE PTR [eax],al
c01036a0:	00 7c 40 40          	add    BYTE PTR [eax+eax*2+0x40],bh
c01036a4:	40                   	inc    eax
c01036a5:	58                   	pop    eax
c01036a6:	64 02 02             	add    al,BYTE PTR fs:[edx]
c01036a9:	02 02                	add    al,BYTE PTR [edx]
c01036ab:	42                   	inc    edx
c01036ac:	24 18                	and    al,0x18
c01036ae:	00 00                	add    BYTE PTR [eax],al
c01036b0:	00 18                	add    BYTE PTR [eax],bl
c01036b2:	24 42                	and    al,0x42
c01036b4:	40                   	inc    eax
c01036b5:	58                   	pop    eax
c01036b6:	64 42                	fs inc edx
c01036b8:	42                   	inc    edx
c01036b9:	42                   	inc    edx
c01036ba:	42                   	inc    edx
c01036bb:	42                   	inc    edx
c01036bc:	24 18                	and    al,0x18
c01036be:	00 00                	add    BYTE PTR [eax],al
c01036c0:	00 7e 42             	add    BYTE PTR [esi+0x42],bh
c01036c3:	42                   	inc    edx
c01036c4:	04 04                	add    al,0x4
c01036c6:	08 08                	or     BYTE PTR [eax],cl
c01036c8:	08 10                	or     BYTE PTR [eax],dl
c01036ca:	10 10                	adc    BYTE PTR [eax],dl
c01036cc:	10 38                	adc    BYTE PTR [eax],bh
c01036ce:	00 00                	add    BYTE PTR [eax],al
c01036d0:	00 18                	add    BYTE PTR [eax],bl
c01036d2:	24 42                	and    al,0x42
c01036d4:	42                   	inc    edx
c01036d5:	42                   	inc    edx
c01036d6:	24 18                	and    al,0x18
c01036d8:	24 42                	and    al,0x42
c01036da:	42                   	inc    edx
c01036db:	42                   	inc    edx
c01036dc:	24 18                	and    al,0x18
c01036de:	00 00                	add    BYTE PTR [eax],al
c01036e0:	00 18                	add    BYTE PTR [eax],bl
c01036e2:	24 42                	and    al,0x42
c01036e4:	42                   	inc    edx
c01036e5:	42                   	inc    edx
c01036e6:	42                   	inc    edx
c01036e7:	42                   	inc    edx
c01036e8:	26 1a 02             	sbb    al,BYTE PTR es:[edx]
c01036eb:	42                   	inc    edx
c01036ec:	24 18                	and    al,0x18
c01036ee:	00 00                	add    BYTE PTR [eax],al
c01036f0:	00 00                	add    BYTE PTR [eax],al
c01036f2:	00 00                	add    BYTE PTR [eax],al
c01036f4:	00 18                	add    BYTE PTR [eax],bl
c01036f6:	18 00                	sbb    BYTE PTR [eax],al
c01036f8:	00 00                	add    BYTE PTR [eax],al
c01036fa:	00 00                	add    BYTE PTR [eax],al
c01036fc:	18 18                	sbb    BYTE PTR [eax],bl
c01036fe:	00 00                	add    BYTE PTR [eax],al
c0103700:	00 00                	add    BYTE PTR [eax],al
c0103702:	00 00                	add    BYTE PTR [eax],al
c0103704:	00 18                	add    BYTE PTR [eax],bl
c0103706:	18 00                	sbb    BYTE PTR [eax],al
c0103708:	00 00                	add    BYTE PTR [eax],al
c010370a:	00 18                	add    BYTE PTR [eax],bl
c010370c:	18 08                	sbb    BYTE PTR [eax],cl
c010370e:	08 10                	or     BYTE PTR [eax],dl
c0103710:	00 02                	add    BYTE PTR [edx],al
c0103712:	04 08                	add    al,0x8
c0103714:	10 20                	adc    BYTE PTR [eax],ah
c0103716:	40                   	inc    eax
c0103717:	80 80 40 20 10 08 04 	add    BYTE PTR [eax+0x8102040],0x4
c010371e:	02 00                	add    al,BYTE PTR [eax]
c0103720:	00 00                	add    BYTE PTR [eax],al
c0103722:	00 00                	add    BYTE PTR [eax],al
c0103724:	00 00                	add    BYTE PTR [eax],al
c0103726:	fe 00                	inc    BYTE PTR [eax]
c0103728:	00 fe                	add    dh,bh
c010372a:	00 00                	add    BYTE PTR [eax],al
c010372c:	00 00                	add    BYTE PTR [eax],al
c010372e:	00 00                	add    BYTE PTR [eax],al
c0103730:	00 80 40 20 10 08    	add    BYTE PTR [eax+0x8102040],al
c0103736:	04 02                	add    al,0x2
c0103738:	02 04 08             	add    al,BYTE PTR [eax+ecx*1]
c010373b:	10 20                	adc    BYTE PTR [eax],ah
c010373d:	40                   	inc    eax
c010373e:	80 00 00             	add    BYTE PTR [eax],0x0
c0103741:	38 44 82 82          	cmp    BYTE PTR [edx+eax*4-0x7e],al
c0103745:	82                   	(bad)  
c0103746:	04 08                	add    al,0x8
c0103748:	10 10                	adc    BYTE PTR [eax],dl
c010374a:	00 00                	add    BYTE PTR [eax],al
c010374c:	18 18                	sbb    BYTE PTR [eax],bl
c010374e:	00 00                	add    BYTE PTR [eax],al
c0103750:	00 38                	add    BYTE PTR [eax],bh
c0103752:	44                   	inc    esp
c0103753:	82                   	(bad)  
c0103754:	9a aa aa aa aa aa 9c 	call   0x9caa:0xaaaaaaaa
c010375b:	80 46 38 00          	add    BYTE PTR [esi+0x38],0x0
c010375f:	00 00                	add    BYTE PTR [eax],al
c0103761:	18 18                	sbb    BYTE PTR [eax],bl
c0103763:	18 18                	sbb    BYTE PTR [eax],bl
c0103765:	24 24                	and    al,0x24
c0103767:	24 24                	and    al,0x24
c0103769:	7e 42                	jle    c01037ad <PKnFont+0x45d>
c010376b:	42                   	inc    edx
c010376c:	42                   	inc    edx
c010376d:	e7 00                	out    0x0,eax
c010376f:	00 00                	add    BYTE PTR [eax],al
c0103771:	f0 48                	lock dec eax
c0103773:	44                   	inc    esp
c0103774:	44                   	inc    esp
c0103775:	44                   	inc    esp
c0103776:	48                   	dec    eax
c0103777:	78 44                	js     c01037bd <PKnFont+0x46d>
c0103779:	42                   	inc    edx
c010377a:	42                   	inc    edx
c010377b:	42                   	inc    edx
c010377c:	44                   	inc    esp
c010377d:	f8                   	clc    
c010377e:	00 00                	add    BYTE PTR [eax],al
c0103780:	00 3a                	add    BYTE PTR [edx],bh
c0103782:	46                   	inc    esi
c0103783:	42                   	inc    edx
c0103784:	82                   	(bad)  
c0103785:	80 80 80 80 80 82 42 	add    BYTE PTR [eax-0x7d7f7f80],0x42
c010378c:	44                   	inc    esp
c010378d:	38 00                	cmp    BYTE PTR [eax],al
c010378f:	00 00                	add    BYTE PTR [eax],al
c0103791:	f8                   	clc    
c0103792:	44                   	inc    esp
c0103793:	44                   	inc    esp
c0103794:	42                   	inc    edx
c0103795:	42                   	inc    edx
c0103796:	42                   	inc    edx
c0103797:	42                   	inc    edx
c0103798:	42                   	inc    edx
c0103799:	42                   	inc    edx
c010379a:	42                   	inc    edx
c010379b:	44                   	inc    esp
c010379c:	44                   	inc    esp
c010379d:	f8                   	clc    
c010379e:	00 00                	add    BYTE PTR [eax],al
c01037a0:	00 fe                	add    dh,bh
c01037a2:	42                   	inc    edx
c01037a3:	42                   	inc    edx
c01037a4:	40                   	inc    eax
c01037a5:	40                   	inc    eax
c01037a6:	44                   	inc    esp
c01037a7:	7c 44                	jl     c01037ed <PKnFont+0x49d>
c01037a9:	40                   	inc    eax
c01037aa:	40                   	inc    eax
c01037ab:	42                   	inc    edx
c01037ac:	42                   	inc    edx
c01037ad:	fe 00                	inc    BYTE PTR [eax]
c01037af:	00 00                	add    BYTE PTR [eax],al
c01037b1:	fe 42 42             	inc    BYTE PTR [edx+0x42]
c01037b4:	40                   	inc    eax
c01037b5:	40                   	inc    eax
c01037b6:	44                   	inc    esp
c01037b7:	7c 44                	jl     c01037fd <PKnFont+0x4ad>
c01037b9:	44                   	inc    esp
c01037ba:	40                   	inc    eax
c01037bb:	40                   	inc    eax
c01037bc:	40                   	inc    eax
c01037bd:	f0 00 00             	lock add BYTE PTR [eax],al
c01037c0:	00 3a                	add    BYTE PTR [edx],bh
c01037c2:	46                   	inc    esi
c01037c3:	42                   	inc    edx
c01037c4:	82                   	(bad)  
c01037c5:	80 80 9e 82 82 82 42 	add    BYTE PTR [eax-0x7d7d7d62],0x42
c01037cc:	46                   	inc    esi
c01037cd:	38 00                	cmp    BYTE PTR [eax],al
c01037cf:	00 00                	add    BYTE PTR [eax],al
c01037d1:	e7 42                	out    0x42,eax
c01037d3:	42                   	inc    edx
c01037d4:	42                   	inc    edx
c01037d5:	42                   	inc    edx
c01037d6:	42                   	inc    edx
c01037d7:	7e 42                	jle    c010381b <PKnFont+0x4cb>
c01037d9:	42                   	inc    edx
c01037da:	42                   	inc    edx
c01037db:	42                   	inc    edx
c01037dc:	42                   	inc    edx
c01037dd:	e7 00                	out    0x0,eax
c01037df:	00 00                	add    BYTE PTR [eax],al
c01037e1:	7c 10                	jl     c01037f3 <PKnFont+0x4a3>
c01037e3:	10 10                	adc    BYTE PTR [eax],dl
c01037e5:	10 10                	adc    BYTE PTR [eax],dl
c01037e7:	10 10                	adc    BYTE PTR [eax],dl
c01037e9:	10 10                	adc    BYTE PTR [eax],dl
c01037eb:	10 10                	adc    BYTE PTR [eax],dl
c01037ed:	7c 00                	jl     c01037ef <PKnFont+0x49f>
c01037ef:	00 00                	add    BYTE PTR [eax],al
c01037f1:	1f                   	pop    ds
c01037f2:	04 04                	add    al,0x4
c01037f4:	04 04                	add    al,0x4
c01037f6:	04 04                	add    al,0x4
c01037f8:	04 04                	add    al,0x4
c01037fa:	04 04                	add    al,0x4
c01037fc:	84 48 30             	test   BYTE PTR [eax+0x30],cl
c01037ff:	00 00                	add    BYTE PTR [eax],al
c0103801:	e7 42                	out    0x42,eax
c0103803:	44                   	inc    esp
c0103804:	48                   	dec    eax
c0103805:	50                   	push   eax
c0103806:	50                   	push   eax
c0103807:	60                   	pusha  
c0103808:	50                   	push   eax
c0103809:	50                   	push   eax
c010380a:	48                   	dec    eax
c010380b:	44                   	inc    esp
c010380c:	42                   	inc    edx
c010380d:	e7 00                	out    0x0,eax
c010380f:	00 00                	add    BYTE PTR [eax],al
c0103811:	f0 40                	lock inc eax
c0103813:	40                   	inc    eax
c0103814:	40                   	inc    eax
c0103815:	40                   	inc    eax
c0103816:	40                   	inc    eax
c0103817:	40                   	inc    eax
c0103818:	40                   	inc    eax
c0103819:	40                   	inc    eax
c010381a:	40                   	inc    eax
c010381b:	42                   	inc    edx
c010381c:	42                   	inc    edx
c010381d:	fe 00                	inc    BYTE PTR [eax]
c010381f:	00 00                	add    BYTE PTR [eax],al
c0103821:	c3                   	ret    
c0103822:	42                   	inc    edx
c0103823:	66 66 66 5a          	data16 data16 pop dx
c0103827:	5a                   	pop    edx
c0103828:	5a                   	pop    edx
c0103829:	42                   	inc    edx
c010382a:	42                   	inc    edx
c010382b:	42                   	inc    edx
c010382c:	42                   	inc    edx
c010382d:	e7 00                	out    0x0,eax
c010382f:	00 00                	add    BYTE PTR [eax],al
c0103831:	c7 42 62 62 52 52 52 	mov    DWORD PTR [edx+0x62],0x52525262
c0103838:	4a                   	dec    edx
c0103839:	4a                   	dec    edx
c010383a:	4a                   	dec    edx
c010383b:	46                   	inc    esi
c010383c:	46                   	inc    esi
c010383d:	e2 00                	loop   c010383f <PKnFont+0x4ef>
c010383f:	00 00                	add    BYTE PTR [eax],al
c0103841:	38 44 82 82          	cmp    BYTE PTR [edx+eax*4-0x7e],al
c0103845:	82                   	(bad)  
c0103846:	82                   	(bad)  
c0103847:	82                   	(bad)  
c0103848:	82                   	(bad)  
c0103849:	82                   	(bad)  
c010384a:	82                   	(bad)  
c010384b:	82                   	(bad)  
c010384c:	44                   	inc    esp
c010384d:	38 00                	cmp    BYTE PTR [eax],al
c010384f:	00 00                	add    BYTE PTR [eax],al
c0103851:	f8                   	clc    
c0103852:	44                   	inc    esp
c0103853:	42                   	inc    edx
c0103854:	42                   	inc    edx
c0103855:	42                   	inc    edx
c0103856:	44                   	inc    esp
c0103857:	78 40                	js     c0103899 <PKnFont+0x549>
c0103859:	40                   	inc    eax
c010385a:	40                   	inc    eax
c010385b:	40                   	inc    eax
c010385c:	40                   	inc    eax
c010385d:	f0 00 00             	lock add BYTE PTR [eax],al
c0103860:	00 38                	add    BYTE PTR [eax],bh
c0103862:	44                   	inc    esp
c0103863:	82                   	(bad)  
c0103864:	82                   	(bad)  
c0103865:	82                   	(bad)  
c0103866:	82                   	(bad)  
c0103867:	82                   	(bad)  
c0103868:	82                   	(bad)  
c0103869:	82                   	(bad)  
c010386a:	92                   	xchg   edx,eax
c010386b:	8a 44 3a 00          	mov    al,BYTE PTR [edx+edi*1+0x0]
c010386f:	00 00                	add    BYTE PTR [eax],al
c0103871:	fc                   	cld    
c0103872:	42                   	inc    edx
c0103873:	42                   	inc    edx
c0103874:	42                   	inc    edx
c0103875:	42                   	inc    edx
c0103876:	7c 44                	jl     c01038bc <PKnFont+0x56c>
c0103878:	42                   	inc    edx
c0103879:	42                   	inc    edx
c010387a:	42                   	inc    edx
c010387b:	42                   	inc    edx
c010387c:	42                   	inc    edx
c010387d:	e7 00                	out    0x0,eax
c010387f:	00 00                	add    BYTE PTR [eax],al
c0103881:	3a 46 82             	cmp    al,BYTE PTR [esi-0x7e]
c0103884:	82                   	(bad)  
c0103885:	80 40 38 04          	add    BYTE PTR [eax+0x38],0x4
c0103889:	02 82 82 c4 b8 00    	add    al,BYTE PTR [edx+0xb8c482]
c010388f:	00 00                	add    BYTE PTR [eax],al
c0103891:	fe                   	(bad)  
c0103892:	92                   	xchg   edx,eax
c0103893:	92                   	xchg   edx,eax
c0103894:	10 10                	adc    BYTE PTR [eax],dl
c0103896:	10 10                	adc    BYTE PTR [eax],dl
c0103898:	10 10                	adc    BYTE PTR [eax],dl
c010389a:	10 10                	adc    BYTE PTR [eax],dl
c010389c:	10 7c 00 00          	adc    BYTE PTR [eax+eax*1+0x0],bh
c01038a0:	00 e7                	add    bh,ah
c01038a2:	42                   	inc    edx
c01038a3:	42                   	inc    edx
c01038a4:	42                   	inc    edx
c01038a5:	42                   	inc    edx
c01038a6:	42                   	inc    edx
c01038a7:	42                   	inc    edx
c01038a8:	42                   	inc    edx
c01038a9:	42                   	inc    edx
c01038aa:	42                   	inc    edx
c01038ab:	42                   	inc    edx
c01038ac:	24 3c                	and    al,0x3c
c01038ae:	00 00                	add    BYTE PTR [eax],al
c01038b0:	00 e7                	add    bh,ah
c01038b2:	42                   	inc    edx
c01038b3:	42                   	inc    edx
c01038b4:	42                   	inc    edx
c01038b5:	42                   	inc    edx
c01038b6:	24 24                	and    al,0x24
c01038b8:	24 24                	and    al,0x24
c01038ba:	18 18                	sbb    BYTE PTR [eax],bl
c01038bc:	18 18                	sbb    BYTE PTR [eax],bl
c01038be:	00 00                	add    BYTE PTR [eax],al
c01038c0:	00 e7                	add    bh,ah
c01038c2:	42                   	inc    edx
c01038c3:	42                   	inc    edx
c01038c4:	42                   	inc    edx
c01038c5:	5a                   	pop    edx
c01038c6:	5a                   	pop    edx
c01038c7:	5a                   	pop    edx
c01038c8:	5a                   	pop    edx
c01038c9:	24 24                	and    al,0x24
c01038cb:	24 24                	and    al,0x24
c01038cd:	24 00                	and    al,0x0
c01038cf:	00 00                	add    BYTE PTR [eax],al
c01038d1:	e7 42                	out    0x42,eax
c01038d3:	42                   	inc    edx
c01038d4:	24 24                	and    al,0x24
c01038d6:	24 18                	and    al,0x18
c01038d8:	24 24                	and    al,0x24
c01038da:	24 42                	and    al,0x42
c01038dc:	42                   	inc    edx
c01038dd:	e7 00                	out    0x0,eax
c01038df:	00 00                	add    BYTE PTR [eax],al
c01038e1:	ee                   	out    dx,al
c01038e2:	44                   	inc    esp
c01038e3:	44                   	inc    esp
c01038e4:	44                   	inc    esp
c01038e5:	28 28                	sub    BYTE PTR [eax],ch
c01038e7:	28 10                	sub    BYTE PTR [eax],dl
c01038e9:	10 10                	adc    BYTE PTR [eax],dl
c01038eb:	10 10                	adc    BYTE PTR [eax],dl
c01038ed:	7c 00                	jl     c01038ef <PKnFont+0x59f>
c01038ef:	00 00                	add    BYTE PTR [eax],al
c01038f1:	fe 84 84 08 08 10 10 	inc    BYTE PTR [esp+eax*4+0x10100808]
c01038f8:	20 20                	and    BYTE PTR [eax],ah
c01038fa:	40                   	inc    eax
c01038fb:	42                   	inc    edx
c01038fc:	82                   	(bad)  
c01038fd:	fe 00                	inc    BYTE PTR [eax]
c01038ff:	00 00                	add    BYTE PTR [eax],al
c0103901:	3e 20 20             	and    BYTE PTR ds:[eax],ah
c0103904:	20 20                	and    BYTE PTR [eax],ah
c0103906:	20 20                	and    BYTE PTR [eax],ah
c0103908:	20 20                	and    BYTE PTR [eax],ah
c010390a:	20 20                	and    BYTE PTR [eax],ah
c010390c:	20 20                	and    BYTE PTR [eax],ah
c010390e:	3e 00 80 80 40 40 20 	add    BYTE PTR ds:[eax+0x20404080],al
c0103915:	20 20                	and    BYTE PTR [eax],ah
c0103917:	10 10                	adc    BYTE PTR [eax],dl
c0103919:	08 08                	or     BYTE PTR [eax],cl
c010391b:	04 04                	add    al,0x4
c010391d:	04 02                	add    al,0x2
c010391f:	02 00                	add    al,BYTE PTR [eax]
c0103921:	7c 04                	jl     c0103927 <PKnFont+0x5d7>
c0103923:	04 04                	add    al,0x4
c0103925:	04 04                	add    al,0x4
c0103927:	04 04                	add    al,0x4
c0103929:	04 04                	add    al,0x4
c010392b:	04 04                	add    al,0x4
c010392d:	04 7c                	add    al,0x7c
c010392f:	00 00                	add    BYTE PTR [eax],al
c0103931:	10 28                	adc    BYTE PTR [eax],ch
c0103933:	44                   	inc    esp
c0103934:	82                   	(bad)  
	...
c010394d:	00 fe                	add    dh,bh
c010394f:	00 10                	add    BYTE PTR [eax],dl
c0103951:	08 04 00             	or     BYTE PTR [eax+eax*1],al
	...
c0103964:	00 70 08             	add    BYTE PTR [eax+0x8],dh
c0103967:	04 3c                	add    al,0x3c
c0103969:	44                   	inc    esp
c010396a:	84 84 8c 76 00 00 c0 	test   BYTE PTR [esp+ecx*4-0x3fffff8a],al
c0103971:	40                   	inc    eax
c0103972:	40                   	inc    eax
c0103973:	40                   	inc    eax
c0103974:	40                   	inc    eax
c0103975:	58                   	pop    eax
c0103976:	64 42                	fs inc edx
c0103978:	42                   	inc    edx
c0103979:	42                   	inc    edx
c010397a:	42                   	inc    edx
c010397b:	42                   	inc    edx
c010397c:	64 58                	fs pop eax
c010397e:	00 00                	add    BYTE PTR [eax],al
c0103980:	00 00                	add    BYTE PTR [eax],al
c0103982:	00 00                	add    BYTE PTR [eax],al
c0103984:	00 30                	add    BYTE PTR [eax],dh
c0103986:	4c                   	dec    esp
c0103987:	84 84 80 80 82 44 38 	test   BYTE PTR [eax+eax*4+0x38448280],al
c010398e:	00 00                	add    BYTE PTR [eax],al
c0103990:	0c 04                	or     al,0x4
c0103992:	04 04                	add    al,0x4
c0103994:	04 34                	add    al,0x34
c0103996:	4c                   	dec    esp
c0103997:	84 84 84 84 84 4c 36 	test   BYTE PTR [esp+eax*4+0x364c8484],al
c010399e:	00 00                	add    BYTE PTR [eax],al
c01039a0:	00 00                	add    BYTE PTR [eax],al
c01039a2:	00 00                	add    BYTE PTR [eax],al
c01039a4:	00 38                	add    BYTE PTR [eax],bh
c01039a6:	44                   	inc    esp
c01039a7:	82                   	(bad)  
c01039a8:	82                   	(bad)  
c01039a9:	fc                   	cld    
c01039aa:	80 82 42 3c 00 00 0e 	add    BYTE PTR [edx+0x3c42],0xe
c01039b1:	10 10                	adc    BYTE PTR [eax],dl
c01039b3:	10 10                	adc    BYTE PTR [eax],dl
c01039b5:	7c 10                	jl     c01039c7 <PKnFont+0x677>
c01039b7:	10 10                	adc    BYTE PTR [eax],dl
c01039b9:	10 10                	adc    BYTE PTR [eax],dl
c01039bb:	10 10                	adc    BYTE PTR [eax],dl
c01039bd:	7c 00                	jl     c01039bf <PKnFont+0x66f>
c01039bf:	00 00                	add    BYTE PTR [eax],al
c01039c1:	00 00                	add    BYTE PTR [eax],al
c01039c3:	00 00                	add    BYTE PTR [eax],al
c01039c5:	36 4c                	ss dec esp
c01039c7:	84 84 84 84 4c 34 04 	test   BYTE PTR [esp+eax*4+0x4344c84],al
c01039ce:	04 38                	add    al,0x38
c01039d0:	c0 40 40 40          	rol    BYTE PTR [eax+0x40],0x40
c01039d4:	40                   	inc    eax
c01039d5:	58                   	pop    eax
c01039d6:	64 42                	fs inc edx
c01039d8:	42                   	inc    edx
c01039d9:	42                   	inc    edx
c01039da:	42                   	inc    edx
c01039db:	42                   	inc    edx
c01039dc:	42                   	inc    edx
c01039dd:	e3 00                	jecxz  c01039df <PKnFont+0x68f>
c01039df:	00 00                	add    BYTE PTR [eax],al
c01039e1:	10 10                	adc    BYTE PTR [eax],dl
c01039e3:	00 00                	add    BYTE PTR [eax],al
c01039e5:	30 10                	xor    BYTE PTR [eax],dl
c01039e7:	10 10                	adc    BYTE PTR [eax],dl
c01039e9:	10 10                	adc    BYTE PTR [eax],dl
c01039eb:	10 10                	adc    BYTE PTR [eax],dl
c01039ed:	38 00                	cmp    BYTE PTR [eax],al
c01039ef:	00 00                	add    BYTE PTR [eax],al
c01039f1:	04 04                	add    al,0x4
c01039f3:	00 00                	add    BYTE PTR [eax],al
c01039f5:	0c 04                	or     al,0x4
c01039f7:	04 04                	add    al,0x4
c01039f9:	04 04                	add    al,0x4
c01039fb:	04 04                	add    al,0x4
c01039fd:	08 08                	or     BYTE PTR [eax],cl
c01039ff:	30 c0                	xor    al,al
c0103a01:	40                   	inc    eax
c0103a02:	40                   	inc    eax
c0103a03:	40                   	inc    eax
c0103a04:	40                   	inc    eax
c0103a05:	4e                   	dec    esi
c0103a06:	44                   	inc    esp
c0103a07:	48                   	dec    eax
c0103a08:	50                   	push   eax
c0103a09:	60                   	pusha  
c0103a0a:	50                   	push   eax
c0103a0b:	48                   	dec    eax
c0103a0c:	44                   	inc    esp
c0103a0d:	e6 00                	out    0x0,al
c0103a0f:	00 30                	add    BYTE PTR [eax],dh
c0103a11:	10 10                	adc    BYTE PTR [eax],dl
c0103a13:	10 10                	adc    BYTE PTR [eax],dl
c0103a15:	10 10                	adc    BYTE PTR [eax],dl
c0103a17:	10 10                	adc    BYTE PTR [eax],dl
c0103a19:	10 10                	adc    BYTE PTR [eax],dl
c0103a1b:	10 10                	adc    BYTE PTR [eax],dl
c0103a1d:	38 00                	cmp    BYTE PTR [eax],al
c0103a1f:	00 00                	add    BYTE PTR [eax],al
c0103a21:	00 00                	add    BYTE PTR [eax],al
c0103a23:	00 00                	add    BYTE PTR [eax],al
c0103a25:	f6                   	(bad)  
c0103a26:	49                   	dec    ecx
c0103a27:	49                   	dec    ecx
c0103a28:	49                   	dec    ecx
c0103a29:	49                   	dec    ecx
c0103a2a:	49                   	dec    ecx
c0103a2b:	49                   	dec    ecx
c0103a2c:	49                   	dec    ecx
c0103a2d:	db 00                	fild   DWORD PTR [eax]
c0103a2f:	00 00                	add    BYTE PTR [eax],al
c0103a31:	00 00                	add    BYTE PTR [eax],al
c0103a33:	00 00                	add    BYTE PTR [eax],al
c0103a35:	d8 64 42 42          	fsub   DWORD PTR [edx+eax*2+0x42]
c0103a39:	42                   	inc    edx
c0103a3a:	42                   	inc    edx
c0103a3b:	42                   	inc    edx
c0103a3c:	42                   	inc    edx
c0103a3d:	e3 00                	jecxz  c0103a3f <PKnFont+0x6ef>
c0103a3f:	00 00                	add    BYTE PTR [eax],al
c0103a41:	00 00                	add    BYTE PTR [eax],al
c0103a43:	00 00                	add    BYTE PTR [eax],al
c0103a45:	38 44 82 82          	cmp    BYTE PTR [edx+eax*4-0x7e],al
c0103a49:	82                   	(bad)  
c0103a4a:	82                   	(bad)  
c0103a4b:	82                   	(bad)  
c0103a4c:	44                   	inc    esp
c0103a4d:	38 00                	cmp    BYTE PTR [eax],al
c0103a4f:	00 00                	add    BYTE PTR [eax],al
c0103a51:	00 00                	add    BYTE PTR [eax],al
c0103a53:	00 d8                	add    al,bl
c0103a55:	64 42                	fs inc edx
c0103a57:	42                   	inc    edx
c0103a58:	42                   	inc    edx
c0103a59:	42                   	inc    edx
c0103a5a:	42                   	inc    edx
c0103a5b:	64 58                	fs pop eax
c0103a5d:	40                   	inc    eax
c0103a5e:	40                   	inc    eax
c0103a5f:	e0 00                	loopne c0103a61 <PKnFont+0x711>
c0103a61:	00 00                	add    BYTE PTR [eax],al
c0103a63:	00 34 4c             	add    BYTE PTR [esp+ecx*2],dh
c0103a66:	84 84 84 84 84 4c 34 	test   BYTE PTR [esp+eax*4+0x344c8484],al
c0103a6d:	04 04                	add    al,0x4
c0103a6f:	0e                   	push   cs
c0103a70:	00 00                	add    BYTE PTR [eax],al
c0103a72:	00 00                	add    BYTE PTR [eax],al
c0103a74:	00 dc                	add    ah,bl
c0103a76:	62 42 40             	bound  eax,QWORD PTR [edx+0x40]
c0103a79:	40                   	inc    eax
c0103a7a:	40                   	inc    eax
c0103a7b:	40                   	inc    eax
c0103a7c:	40                   	inc    eax
c0103a7d:	e0 00                	loopne c0103a7f <PKnFont+0x72f>
c0103a7f:	00 00                	add    BYTE PTR [eax],al
c0103a81:	00 00                	add    BYTE PTR [eax],al
c0103a83:	00 00                	add    BYTE PTR [eax],al
c0103a85:	7a 86                	jp     c0103a0d <PKnFont+0x6bd>
c0103a87:	82                   	(bad)  
c0103a88:	c0 38 06             	sar    BYTE PTR [eax],0x6
c0103a8b:	82                   	(bad)  
c0103a8c:	c2 bc 00             	ret    0xbc
c0103a8f:	00 00                	add    BYTE PTR [eax],al
c0103a91:	00 10                	add    BYTE PTR [eax],dl
c0103a93:	10 10                	adc    BYTE PTR [eax],dl
c0103a95:	7c 10                	jl     c0103aa7 <PKnFont+0x757>
c0103a97:	10 10                	adc    BYTE PTR [eax],dl
c0103a99:	10 10                	adc    BYTE PTR [eax],dl
c0103a9b:	10 10                	adc    BYTE PTR [eax],dl
c0103a9d:	0e                   	push   cs
c0103a9e:	00 00                	add    BYTE PTR [eax],al
c0103aa0:	00 00                	add    BYTE PTR [eax],al
c0103aa2:	00 00                	add    BYTE PTR [eax],al
c0103aa4:	00 c6                	add    dh,al
c0103aa6:	42                   	inc    edx
c0103aa7:	42                   	inc    edx
c0103aa8:	42                   	inc    edx
c0103aa9:	42                   	inc    edx
c0103aaa:	42                   	inc    edx
c0103aab:	42                   	inc    edx
c0103aac:	46                   	inc    esi
c0103aad:	3b 00                	cmp    eax,DWORD PTR [eax]
c0103aaf:	00 00                	add    BYTE PTR [eax],al
c0103ab1:	00 00                	add    BYTE PTR [eax],al
c0103ab3:	00 00                	add    BYTE PTR [eax],al
c0103ab5:	e7 42                	out    0x42,eax
c0103ab7:	42                   	inc    edx
c0103ab8:	42                   	inc    edx
c0103ab9:	24 24                	and    al,0x24
c0103abb:	24 18                	and    al,0x18
c0103abd:	18 00                	sbb    BYTE PTR [eax],al
c0103abf:	00 00                	add    BYTE PTR [eax],al
c0103ac1:	00 00                	add    BYTE PTR [eax],al
c0103ac3:	00 00                	add    BYTE PTR [eax],al
c0103ac5:	e7 42                	out    0x42,eax
c0103ac7:	42                   	inc    edx
c0103ac8:	5a                   	pop    edx
c0103ac9:	5a                   	pop    edx
c0103aca:	5a                   	pop    edx
c0103acb:	24 24                	and    al,0x24
c0103acd:	24 00                	and    al,0x0
c0103acf:	00 00                	add    BYTE PTR [eax],al
c0103ad1:	00 00                	add    BYTE PTR [eax],al
c0103ad3:	00 00                	add    BYTE PTR [eax],al
c0103ad5:	c6 44 28 28 10       	mov    BYTE PTR [eax+ebp*1+0x28],0x10
c0103ada:	28 28                	sub    BYTE PTR [eax],ch
c0103adc:	44                   	inc    esp
c0103add:	c6 00 00             	mov    BYTE PTR [eax],0x0
c0103ae0:	00 00                	add    BYTE PTR [eax],al
c0103ae2:	00 00                	add    BYTE PTR [eax],al
c0103ae4:	00 e7                	add    bh,ah
c0103ae6:	42                   	inc    edx
c0103ae7:	42                   	inc    edx
c0103ae8:	24 24                	and    al,0x24
c0103aea:	24 18                	and    al,0x18
c0103aec:	18 10                	sbb    BYTE PTR [eax],dl
c0103aee:	10 60 00             	adc    BYTE PTR [eax+0x0],ah
c0103af1:	00 00                	add    BYTE PTR [eax],al
c0103af3:	00 00                	add    BYTE PTR [eax],al
c0103af5:	fe 82 84 08 10 20    	inc    BYTE PTR [edx+0x20100884]
c0103afb:	42                   	inc    edx
c0103afc:	82                   	(bad)  
c0103afd:	fe 00                	inc    BYTE PTR [eax]
c0103aff:	00 00                	add    BYTE PTR [eax],al
c0103b01:	06                   	push   es
c0103b02:	08 10                	or     BYTE PTR [eax],dl
c0103b04:	10 10                	adc    BYTE PTR [eax],dl
c0103b06:	10 60 10             	adc    BYTE PTR [eax+0x10],ah
c0103b09:	10 10                	adc    BYTE PTR [eax],dl
c0103b0b:	10 08                	adc    BYTE PTR [eax],cl
c0103b0d:	06                   	push   es
c0103b0e:	00 00                	add    BYTE PTR [eax],al
c0103b10:	10 10                	adc    BYTE PTR [eax],dl
c0103b12:	10 10                	adc    BYTE PTR [eax],dl
c0103b14:	10 10                	adc    BYTE PTR [eax],dl
c0103b16:	10 10                	adc    BYTE PTR [eax],dl
c0103b18:	10 10                	adc    BYTE PTR [eax],dl
c0103b1a:	10 10                	adc    BYTE PTR [eax],dl
c0103b1c:	10 10                	adc    BYTE PTR [eax],dl
c0103b1e:	10 10                	adc    BYTE PTR [eax],dl
c0103b20:	00 60 10             	add    BYTE PTR [eax+0x10],ah
c0103b23:	08 08                	or     BYTE PTR [eax],cl
c0103b25:	08 08                	or     BYTE PTR [eax],cl
c0103b27:	06                   	push   es
c0103b28:	08 08                	or     BYTE PTR [eax],cl
c0103b2a:	08 08                	or     BYTE PTR [eax],cl
c0103b2c:	10 60 00             	adc    BYTE PTR [eax+0x0],ah
c0103b2f:	00 00                	add    BYTE PTR [eax],al
c0103b31:	72 8c                	jb     c0103abf <PKnFont+0x76f>
	...

Disassembly of section .eh_frame:

c0104350 <.eh_frame>:
c0104350:	10 00                	adc    BYTE PTR [eax],al
c0104352:	00 00                	add    BYTE PTR [eax],al
c0104354:	00 00                	add    BYTE PTR [eax],al
c0104356:	00 00                	add    BYTE PTR [eax],al
c0104358:	01 00                	add    DWORD PTR [eax],eax
c010435a:	01 7c 08 0c          	add    DWORD PTR [eax+ecx*1+0xc],edi
c010435e:	04 04                	add    al,0x4
c0104360:	88 01                	mov    BYTE PTR [ecx],al
c0104362:	00 00                	add    BYTE PTR [eax],al
c0104364:	74 00                	je     c0104366 <_edata+0x16>
c0104366:	00 00                	add    BYTE PTR [eax],al
c0104368:	18 00                	sbb    BYTE PTR [eax],al
c010436a:	00 00                	add    BYTE PTR [eax],al
c010436c:	20 00                	and    BYTE PTR [eax],al
c010436e:	10 c0                	adc    al,al
c0104370:	81 00 00 00 41 0e    	add    DWORD PTR [eax],0xe410000
c0104376:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010437c:	44                   	inc    esp
c010437d:	2e 08 83 03 45 2e 0c 	or     BYTE PTR cs:[ebx+0xc2e4503],al
c0104384:	42                   	inc    edx
c0104385:	2e 10 4b 2e          	adc    BYTE PTR cs:[ebx+0x2e],cl
c0104389:	00 43 2e             	add    BYTE PTR [ebx+0x2e],al
c010438c:	0c 45                	or     al,0x45
c010438e:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c0104392:	00 45 2e             	add    BYTE PTR [ebp+0x2e],al
c0104395:	04 04                	add    al,0x4
c0104397:	01 00                	add    DWORD PTR [eax],eax
c0104399:	00 00                	add    BYTE PTR [eax],al
c010439b:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c010439f:	0c 45                	or     al,0x45
c01043a1:	2e 10 4a 2e          	adc    BYTE PTR cs:[edx+0x2e],cl
c01043a5:	0c 41                	or     al,0x41
c01043a7:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c01043ab:	0c 42                	or     al,0x42
c01043ad:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c01043b1:	0c 41                	or     al,0x41
c01043b3:	2e 08 42 2e          	or     BYTE PTR cs:[edx+0x2e],al
c01043b7:	0c 42                	or     al,0x42
c01043b9:	2e 10 42 2e          	adc    BYTE PTR cs:[edx+0x2e],al
c01043bd:	14 42                	adc    al,0x42
c01043bf:	2e 18 45 2e          	sbb    BYTE PTR cs:[ebp+0x2e],al
c01043c3:	1c 45                	sbb    al,0x45
c01043c5:	2e 20 4c 2e 0c       	and    BYTE PTR cs:[esi+ebp*1+0xc],cl
c01043ca:	41                   	inc    ecx
c01043cb:	2e 10 45 2e          	adc    BYTE PTR cs:[ebp+0x2e],al
c01043cf:	14 42                	adc    al,0x42
c01043d1:	2e 18 42 2e          	sbb    BYTE PTR cs:[edx+0x2e],al
c01043d5:	1c 45                	sbb    al,0x45
c01043d7:	2e 20 48 2e          	and    BYTE PTR cs:[eax+0x2e],cl
c01043db:	00 98 00 00 00 90    	add    BYTE PTR [eax-0x70000000],bl
c01043e1:	00 00                	add    BYTE PTR [eax],al
c01043e3:	00 a1 00 10 c0 73    	add    BYTE PTR [ecx+0x73c01000],ah
c01043e9:	02 00                	add    al,BYTE PTR [eax]
c01043eb:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c01043ee:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c01043f4:	46                   	inc    esi
c01043f5:	2e 0c 83             	cs or  al,0x83
c01043f8:	05 86 04 87 03       	add    eax,0x3870486
c01043fd:	44                   	inc    esp
c01043fe:	2e 10 02             	adc    BYTE PTR cs:[edx],al
c0104401:	a4                   	movs   BYTE PTR es:[edi],BYTE PTR ds:[esi]
c0104402:	2e 0c 41             	cs or  al,0x41
c0104405:	2e 08 57 2e          	or     BYTE PTR cs:[edi+0x2e],dl
c0104409:	0c 49                	or     al,0x49
c010440b:	2e 10 41 2e          	adc    BYTE PTR cs:[ecx+0x2e],al
c010440f:	14 41                	adc    al,0x41
c0104411:	2e 18 45 2e          	sbb    BYTE PTR cs:[ebp+0x2e],al
c0104415:	1c 45                	sbb    al,0x45
c0104417:	2e 20 4e 2e          	and    BYTE PTR cs:[esi+0x2e],cl
c010441b:	08 4c 2e 0c          	or     BYTE PTR [esi+ebp*1+0xc],cl
c010441f:	49                   	dec    ecx
c0104420:	2e 10 41 2e          	adc    BYTE PTR cs:[ecx+0x2e],al
c0104424:	14 41                	adc    al,0x41
c0104426:	2e 18 45 2e          	sbb    BYTE PTR cs:[ebp+0x2e],al
c010442a:	1c 45                	sbb    al,0x45
c010442c:	2e 20 52 2e          	and    BYTE PTR cs:[edx+0x2e],dl
c0104430:	00 75 2e             	add    BYTE PTR [ebp+0x2e],dh
c0104433:	04 04                	add    al,0x4
c0104435:	04 00                	add    al,0x0
c0104437:	00 00                	add    BYTE PTR [eax],al
c0104439:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c010443d:	0c 41                	or     al,0x41
c010443f:	2e 10 43 2e          	adc    BYTE PTR cs:[ebx+0x2e],al
c0104443:	14 43                	adc    al,0x43
c0104445:	2e 18 45 2e          	sbb    BYTE PTR cs:[ebp+0x2e],al
c0104449:	1c 41                	sbb    al,0x41
c010444b:	2e 20 4e 2e          	and    BYTE PTR cs:[esi+0x2e],cl
c010444f:	08 4c 2e 0c          	or     BYTE PTR [esi+ebp*1+0xc],cl
c0104453:	49                   	dec    ecx
c0104454:	2e 10 41 2e          	adc    BYTE PTR cs:[ecx+0x2e],al
c0104458:	14 41                	adc    al,0x41
c010445a:	2e 18 45 2e          	sbb    BYTE PTR cs:[ebp+0x2e],al
c010445e:	1c 45                	sbb    al,0x45
c0104460:	2e 20 48 2e          	and    BYTE PTR cs:[eax+0x2e],cl
c0104464:	0c 44                	or     al,0x44
c0104466:	2e 10 42 2e          	adc    BYTE PTR cs:[edx+0x2e],al
c010446a:	14 49                	adc    al,0x49
c010446c:	2e 18 4b 2e          	sbb    BYTE PTR cs:[ebx+0x2e],cl
c0104470:	1c 45                	sbb    al,0x45
c0104472:	2e 20 48 2e          	and    BYTE PTR cs:[eax+0x2e],cl
c0104476:	00 00                	add    BYTE PTR [eax],al
c0104478:	fc                   	cld    
c0104479:	00 00                	add    BYTE PTR [eax],al
c010447b:	00 2c 01             	add    BYTE PTR [ecx+eax*1],ch
c010447e:	00 00                	add    BYTE PTR [eax],al
c0104480:	14 03                	adc    al,0x3
c0104482:	10 c0                	adc    al,al
c0104484:	2f                   	das    
c0104485:	01 00                	add    DWORD PTR [eax],eax
c0104487:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c010448a:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0104490:	41                   	inc    ecx
c0104491:	83 03 47             	add    DWORD PTR [ebx],0x47
c0104494:	2e 04 04             	cs add al,0x4
c0104497:	01 00                	add    DWORD PTR [eax],eax
c0104499:	00 00                	add    BYTE PTR [eax],al
c010449b:	2e 08 42 2e          	or     BYTE PTR cs:[edx+0x2e],al
c010449f:	0c 42                	or     al,0x42
c01044a1:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c01044a5:	00 46 2e             	add    BYTE PTR [esi+0x2e],al
c01044a8:	0c 42                	or     al,0x42
c01044aa:	2e 10 4c 2e 0c       	adc    BYTE PTR cs:[esi+ebp*1+0xc],cl
c01044af:	41                   	inc    ecx
c01044b0:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c01044b4:	0c 42                	or     al,0x42
c01044b6:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c01044ba:	0c 41                	or     al,0x41
c01044bc:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c01044c0:	0c 42                	or     al,0x42
c01044c2:	2e 10 4b 2e          	adc    BYTE PTR cs:[ebx+0x2e],cl
c01044c6:	0c 41                	or     al,0x41
c01044c8:	2e 08 42 2e          	or     BYTE PTR cs:[edx+0x2e],al
c01044cc:	0c 42                	or     al,0x42
c01044ce:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c01044d2:	0c 41                	or     al,0x41
c01044d4:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c01044d8:	0c 42                	or     al,0x42
c01044da:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c01044de:	04 04                	add    al,0x4
c01044e0:	02 00                	add    al,BYTE PTR [eax]
c01044e2:	00 00                	add    BYTE PTR [eax],al
c01044e4:	2e 08 49 2e          	or     BYTE PTR cs:[ecx+0x2e],cl
c01044e8:	0c 42                	or     al,0x42
c01044ea:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c01044ee:	0c 41                	or     al,0x41
c01044f0:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c01044f4:	0c 42                	or     al,0x42
c01044f6:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c01044fa:	04 04                	add    al,0x4
c01044fc:	02 00                	add    al,BYTE PTR [eax]
c01044fe:	00 00                	add    BYTE PTR [eax],al
c0104500:	2e 08 49 2e          	or     BYTE PTR cs:[ecx+0x2e],cl
c0104504:	0c 42                	or     al,0x42
c0104506:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c010450a:	0c 41                	or     al,0x41
c010450c:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c0104510:	0c 42                	or     al,0x42
c0104512:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c0104516:	0c 41                	or     al,0x41
c0104518:	2e 08 42 2e          	or     BYTE PTR cs:[edx+0x2e],al
c010451c:	0c 42                	or     al,0x42
c010451e:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c0104522:	0c 41                	or     al,0x41
c0104524:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c0104528:	0c 42                	or     al,0x42
c010452a:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c010452e:	04 04                	add    al,0x4
c0104530:	02 00                	add    al,BYTE PTR [eax]
c0104532:	00 00                	add    BYTE PTR [eax],al
c0104534:	2e 08 46 2e          	or     BYTE PTR cs:[esi+0x2e],al
c0104538:	0c 42                	or     al,0x42
c010453a:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c010453e:	0c 41                	or     al,0x41
c0104540:	2e 08 42 2e          	or     BYTE PTR cs:[edx+0x2e],al
c0104544:	0c 42                	or     al,0x42
c0104546:	2e 10 51 2e          	adc    BYTE PTR cs:[ecx+0x2e],dl
c010454a:	14 42                	adc    al,0x42
c010454c:	2e 18 42 2e          	sbb    BYTE PTR cs:[edx+0x2e],al
c0104550:	1c 45                	sbb    al,0x45
c0104552:	2e 20 48 2e          	and    BYTE PTR cs:[eax+0x2e],cl
c0104556:	00 45 2e             	add    BYTE PTR [ebp+0x2e],al
c0104559:	04 04                	add    al,0x4
c010455b:	05 00 00 00 2e       	add    eax,0x2e000000
c0104560:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c0104563:	0c 45                	or     al,0x45
c0104565:	2e 10 4a 2e          	adc    BYTE PTR cs:[edx+0x2e],cl
c0104569:	14 45                	adc    al,0x45
c010456b:	2e 18 42 2e          	sbb    BYTE PTR cs:[edx+0x2e],al
c010456f:	1c 45                	sbb    al,0x45
c0104571:	2e 20 48 2e          	and    BYTE PTR cs:[eax+0x2e],cl
c0104575:	00 00                	add    BYTE PTR [eax],al
c0104577:	00 14 00             	add    BYTE PTR [eax+eax*1],dl
c010457a:	00 00                	add    BYTE PTR [eax],al
c010457c:	2c 02                	sub    al,0x2
c010457e:	00 00                	add    BYTE PTR [eax],al
c0104580:	43                   	inc    ebx
c0104581:	04 10                	add    al,0x10
c0104583:	c0 05 00 00 00 41 0e 	rol    BYTE PTR ds:0x41000000,0xe
c010458a:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0104590:	b0 00                	mov    al,0x0
c0104592:	00 00                	add    BYTE PTR [eax],al
c0104594:	44                   	inc    esp
c0104595:	02 00                	add    al,BYTE PTR [eax]
c0104597:	00 48 04             	add    BYTE PTR [eax+0x4],cl
c010459a:	10 c0                	adc    al,al
c010459c:	aa                   	stos   BYTE PTR es:[edi],al
c010459d:	00 00                	add    BYTE PTR [eax],al
c010459f:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c01045a2:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c01045a8:	49                   	dec    ecx
c01045a9:	2e 04 04             	cs add al,0x4
c01045ac:	01 00                	add    DWORD PTR [eax],eax
c01045ae:	00 00                	add    BYTE PTR [eax],al
c01045b0:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c01045b4:	0c 42                	or     al,0x42
c01045b6:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c01045ba:	0c 41                	or     al,0x41
c01045bc:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c01045c0:	0c 42                	or     al,0x42
c01045c2:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c01045c6:	0c 41                	or     al,0x41
c01045c8:	2e 08 43 2e          	or     BYTE PTR cs:[ebx+0x2e],al
c01045cc:	0c 42                	or     al,0x42
c01045ce:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c01045d2:	0c 41                	or     al,0x41
c01045d4:	2e 08 42 2e          	or     BYTE PTR cs:[edx+0x2e],al
c01045d8:	0c 42                	or     al,0x42
c01045da:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c01045de:	0c 41                	or     al,0x41
c01045e0:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c01045e4:	0c 42                	or     al,0x42
c01045e6:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c01045ea:	0c 41                	or     al,0x41
c01045ec:	2e 08 43 2e          	or     BYTE PTR cs:[ebx+0x2e],al
c01045f0:	0c 42                	or     al,0x42
c01045f2:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c01045f6:	0c 41                	or     al,0x41
c01045f8:	2e 08 42 2e          	or     BYTE PTR cs:[edx+0x2e],al
c01045fc:	0c 42                	or     al,0x42
c01045fe:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c0104602:	0c 41                	or     al,0x41
c0104604:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c0104608:	0c 42                	or     al,0x42
c010460a:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c010460e:	04 04                	add    al,0x4
c0104610:	02 00                	add    al,BYTE PTR [eax]
c0104612:	00 00                	add    BYTE PTR [eax],al
c0104614:	2e 08 43 2e          	or     BYTE PTR cs:[ebx+0x2e],al
c0104618:	0c 42                	or     al,0x42
c010461a:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c010461e:	0c 41                	or     al,0x41
c0104620:	2e 08 42 2e          	or     BYTE PTR cs:[edx+0x2e],al
c0104624:	0c 42                	or     al,0x42
c0104626:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c010462a:	0c 41                	or     al,0x41
c010462c:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c0104630:	0c 42                	or     al,0x42
c0104632:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c0104636:	0c 41                	or     al,0x41
c0104638:	2e 08 43 2e          	or     BYTE PTR cs:[ebx+0x2e],al
c010463c:	0c 42                	or     al,0x42
c010463e:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c0104642:	00 00                	add    BYTE PTR [eax],al
c0104644:	34 00                	xor    al,0x0
c0104646:	00 00                	add    BYTE PTR [eax],al
c0104648:	f8                   	clc    
c0104649:	02 00                	add    al,BYTE PTR [eax]
c010464b:	00 f4                	add    ah,dh
c010464d:	04 10                	add    al,0x10
c010464f:	c0 54 00 00 00       	rcl    BYTE PTR [eax+eax*1+0x0],0x0
c0104654:	41                   	inc    ecx
c0104655:	0e                   	push   cs
c0104656:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010465c:	43                   	inc    ebx
c010465d:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c0104661:	0c 42                	or     al,0x42
c0104663:	2e 10 75 2e          	adc    BYTE PTR cs:[ebp+0x2e],dh
c0104667:	0c 41                	or     al,0x41
c0104669:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c010466d:	0c 42                	or     al,0x42
c010466f:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c0104673:	00 41 c5             	add    BYTE PTR [ecx-0x3b],al
c0104676:	0c 04                	or     al,0x4
c0104678:	04 00                	add    al,0x0
c010467a:	00 00                	add    BYTE PTR [eax],al
c010467c:	1c 00                	sbb    al,0x0
c010467e:	00 00                	add    BYTE PTR [eax],al
c0104680:	30 03                	xor    BYTE PTR [ebx],al
c0104682:	00 00                	add    BYTE PTR [eax],al
c0104684:	c8 0b 10 c0          	enter  0x100b,0xc0
c0104688:	10 00                	adc    BYTE PTR [eax],al
c010468a:	00 00                	add    BYTE PTR [eax],al
c010468c:	41                   	inc    ecx
c010468d:	0e                   	push   cs
c010468e:	08 85 02 47 0d 05    	or     BYTE PTR [ebp+0x50d4702],al
c0104694:	47                   	inc    edi
c0104695:	0c 04                	or     al,0x4
c0104697:	04 c5                	add    al,0xc5
c0104699:	00 00                	add    BYTE PTR [eax],al
c010469b:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c010469e:	00 00                	add    BYTE PTR [eax],al
c01046a0:	50                   	push   eax
c01046a1:	03 00                	add    eax,DWORD PTR [eax]
c01046a3:	00 d8                	add    al,bl
c01046a5:	0b 10                	or     edx,DWORD PTR [eax]
c01046a7:	c0 3d 00 00 00 41 0e 	sar    BYTE PTR ds:0x41000000,0xe
c01046ae:	08 85 02 47 0d 05    	or     BYTE PTR [ebp+0x50d4702],al
c01046b4:	74 0c                	je     c01046c2 <_edata+0x372>
c01046b6:	04 04                	add    al,0x4
c01046b8:	c5 00                	lds    eax,FWORD PTR [eax]
c01046ba:	00 00                	add    BYTE PTR [eax],al
c01046bc:	1c 00                	sbb    al,0x0
c01046be:	00 00                	add    BYTE PTR [eax],al
c01046c0:	70 03                	jo     c01046c5 <_edata+0x375>
c01046c2:	00 00                	add    BYTE PTR [eax],al
c01046c4:	15 0c 10 c0 69       	adc    eax,0x69c0100c
c01046c9:	00 00                	add    BYTE PTR [eax],al
c01046cb:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c01046ce:	08 85 02 44 0d 05    	or     BYTE PTR [ebp+0x50d4402],al
c01046d4:	02 63 0c             	add    ah,BYTE PTR [ebx+0xc]
c01046d7:	04 04                	add    al,0x4
c01046d9:	c5 00                	lds    eax,FWORD PTR [eax]
c01046db:	00 20                	add    BYTE PTR [eax],ah
c01046dd:	00 00                	add    BYTE PTR [eax],al
c01046df:	00 90 03 00 00 7e    	add    BYTE PTR [eax+0x7e000003],dl
c01046e5:	0c 10                	or     al,0x10
c01046e7:	c0 2c 00 00          	shr    BYTE PTR [eax+eax*1],0x0
c01046eb:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c01046ee:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c01046f4:	44                   	inc    esp
c01046f5:	83 03 63             	add    DWORD PTR [ebx],0x63
c01046f8:	c3                   	ret    
c01046f9:	41                   	inc    ecx
c01046fa:	0c 04                	or     al,0x4
c01046fc:	04 c5                	add    al,0xc5
c01046fe:	00 00                	add    BYTE PTR [eax],al
c0104700:	1c 00                	sbb    al,0x0
c0104702:	00 00                	add    BYTE PTR [eax],al
c0104704:	b4 03                	mov    ah,0x3
c0104706:	00 00                	add    BYTE PTR [eax],al
c0104708:	aa                   	stos   BYTE PTR es:[edi],al
c0104709:	0c 10                	or     al,0x10
c010470b:	c0 cd 00             	ror    ch,0x0
c010470e:	00 00                	add    BYTE PTR [eax],al
c0104710:	41                   	inc    ecx
c0104711:	0e                   	push   cs
c0104712:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0104718:	02 c9                	add    cl,cl
c010471a:	0c 04                	or     al,0x4
c010471c:	04 c5                	add    al,0xc5
c010471e:	00 00                	add    BYTE PTR [eax],al
c0104720:	1c 00                	sbb    al,0x0
c0104722:	00 00                	add    BYTE PTR [eax],al
c0104724:	d4 03                	aam    0x3
c0104726:	00 00                	add    BYTE PTR [eax],al
c0104728:	77 0d                	ja     c0104737 <_edata+0x3e7>
c010472a:	10 c0                	adc    al,al
c010472c:	32 00                	xor    al,BYTE PTR [eax]
c010472e:	00 00                	add    BYTE PTR [eax],al
c0104730:	41                   	inc    ecx
c0104731:	0e                   	push   cs
c0104732:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0104738:	6e                   	outs   dx,BYTE PTR ds:[esi]
c0104739:	c5 0c 04             	lds    ecx,FWORD PTR [esp+eax*1]
c010473c:	04 00                	add    al,0x0
c010473e:	00 00                	add    BYTE PTR [eax],al
c0104740:	1c 00                	sbb    al,0x0
c0104742:	00 00                	add    BYTE PTR [eax],al
c0104744:	f4                   	hlt    
c0104745:	03 00                	add    eax,DWORD PTR [eax]
c0104747:	00 a9 0d 10 c0 10    	add    BYTE PTR [ecx+0x10c0100d],ch
c010474d:	00 00                	add    BYTE PTR [eax],al
c010474f:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c0104752:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0104758:	4c                   	dec    esp
c0104759:	0c 04                	or     al,0x4
c010475b:	04 c5                	add    al,0xc5
c010475d:	00 00                	add    BYTE PTR [eax],al
c010475f:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c0104762:	00 00                	add    BYTE PTR [eax],al
c0104764:	14 04                	adc    al,0x4
c0104766:	00 00                	add    BYTE PTR [eax],al
c0104768:	b9 0d 10 c0 14       	mov    ecx,0x14c0100d
c010476d:	00 00                	add    BYTE PTR [eax],al
c010476f:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c0104772:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0104778:	50                   	push   eax
c0104779:	0c 04                	or     al,0x4
c010477b:	04 c5                	add    al,0xc5
c010477d:	00 00                	add    BYTE PTR [eax],al
c010477f:	00 70 01             	add    BYTE PTR [eax+0x1],dh
c0104782:	00 00                	add    BYTE PTR [eax],al
c0104784:	34 04                	xor    al,0x4
c0104786:	00 00                	add    BYTE PTR [eax],al
c0104788:	cd 0d                	int    0xd
c010478a:	10 c0                	adc    al,al
c010478c:	dd 01                	fld    QWORD PTR [ecx]
c010478e:	00 00                	add    BYTE PTR [eax],al
c0104790:	41                   	inc    ecx
c0104791:	0e                   	push   cs
c0104792:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0104798:	42                   	inc    edx
c0104799:	86 04 87             	xchg   BYTE PTR [edi+eax*4],al
c010479c:	03 49 83             	add    ecx,DWORD PTR [ecx-0x7d]
c010479f:	05 4b 2e 0c 42       	add    eax,0x420c2e4b
c01047a4:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c01047a8:	00 41 2e             	add    BYTE PTR [ecx+0x2e],al
c01047ab:	04 04                	add    al,0x4
c01047ad:	01 00                	add    DWORD PTR [eax],eax
c01047af:	00 00                	add    BYTE PTR [eax],al
c01047b1:	2e 08 42 2e          	or     BYTE PTR cs:[edx+0x2e],al
c01047b5:	0c 42                	or     al,0x42
c01047b7:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c01047bb:	00 46 2e             	add    BYTE PTR [esi+0x2e],al
c01047be:	0c 42                	or     al,0x42
c01047c0:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c01047c4:	0c 41                	or     al,0x41
c01047c6:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c01047ca:	0c 42                	or     al,0x42
c01047cc:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c01047d0:	0c 41                	or     al,0x41
c01047d2:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c01047d6:	0c 42                	or     al,0x42
c01047d8:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c01047dc:	0c 41                	or     al,0x41
c01047de:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c01047e2:	0c 42                	or     al,0x42
c01047e4:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c01047e8:	0c 44                	or     al,0x44
c01047ea:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c01047ee:	0c 42                	or     al,0x42
c01047f0:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c01047f4:	04 04                	add    al,0x4
c01047f6:	02 00                	add    al,BYTE PTR [eax]
c01047f8:	00 00                	add    BYTE PTR [eax],al
c01047fa:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c01047fe:	0c 42                	or     al,0x42
c0104800:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c0104804:	0c 41                	or     al,0x41
c0104806:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c010480a:	0c 42                	or     al,0x42
c010480c:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c0104810:	00 4d 2e             	add    BYTE PTR [ebp+0x2e],cl
c0104813:	04 04                	add    al,0x4
c0104815:	01 00                	add    DWORD PTR [eax],eax
c0104817:	00 00                	add    BYTE PTR [eax],al
c0104819:	2e 08 47 2e          	or     BYTE PTR cs:[edi+0x2e],al
c010481d:	0c 42                	or     al,0x42
c010481f:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c0104823:	00 4c 2e 04          	add    BYTE PTR [esi+ebp*1+0x4],cl
c0104827:	04 01                	add    al,0x1
c0104829:	00 00                	add    BYTE PTR [eax],al
c010482b:	00 2e                	add    BYTE PTR [esi],ch
c010482d:	08 45 2e             	or     BYTE PTR [ebp+0x2e],al
c0104830:	0c 42                	or     al,0x42
c0104832:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c0104836:	04 04                	add    al,0x4
c0104838:	02 00                	add    al,BYTE PTR [eax]
c010483a:	00 00                	add    BYTE PTR [eax],al
c010483c:	2e 08 43 2e          	or     BYTE PTR cs:[ebx+0x2e],al
c0104840:	0c 42                	or     al,0x42
c0104842:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c0104846:	0c 41                	or     al,0x41
c0104848:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c010484c:	0c 42                	or     al,0x42
c010484e:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c0104852:	00 41 2e             	add    BYTE PTR [ecx+0x2e],al
c0104855:	04 04                	add    al,0x4
c0104857:	01 00                	add    DWORD PTR [eax],eax
c0104859:	00 00                	add    BYTE PTR [eax],al
c010485b:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c010485f:	0c 42                	or     al,0x42
c0104861:	2e 10 50 2e          	adc    BYTE PTR cs:[eax+0x2e],dl
c0104865:	0c 41                	or     al,0x41
c0104867:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c010486b:	0c 47                	or     al,0x47
c010486d:	2e 10 42 2e          	adc    BYTE PTR cs:[edx+0x2e],al
c0104871:	14 42                	adc    al,0x42
c0104873:	2e 18 45 2e          	sbb    BYTE PTR cs:[ebp+0x2e],al
c0104877:	1c 45                	sbb    al,0x45
c0104879:	2e 20 48 2e          	and    BYTE PTR cs:[eax+0x2e],cl
c010487d:	0c 45                	or     al,0x45
c010487f:	2e 10 45 2e          	adc    BYTE PTR cs:[ebp+0x2e],al
c0104883:	14 42                	adc    al,0x42
c0104885:	2e 18 42 2e          	sbb    BYTE PTR cs:[edx+0x2e],al
c0104889:	1c 45                	sbb    al,0x45
c010488b:	2e 20 48 2e          	and    BYTE PTR cs:[eax+0x2e],cl
c010488f:	0c 45                	or     al,0x45
c0104891:	2e 10 45 2e          	adc    BYTE PTR cs:[ebp+0x2e],al
c0104895:	14 42                	adc    al,0x42
c0104897:	2e 18 42 2e          	sbb    BYTE PTR cs:[edx+0x2e],al
c010489b:	1c 45                	sbb    al,0x45
c010489d:	2e 20 48 2e          	and    BYTE PTR cs:[eax+0x2e],cl
c01048a1:	04 04                	add    al,0x4
c01048a3:	01 00                	add    DWORD PTR [eax],eax
c01048a5:	00 00                	add    BYTE PTR [eax],al
c01048a7:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c01048ab:	0c 41                	or     al,0x41
c01048ad:	2e 10 4d 2e          	adc    BYTE PTR cs:[ebp+0x2e],cl
c01048b1:	14 42                	adc    al,0x42
c01048b3:	2e 18 42 2e          	sbb    BYTE PTR cs:[edx+0x2e],al
c01048b7:	1c 45                	sbb    al,0x45
c01048b9:	2e 20 48 2e          	and    BYTE PTR cs:[eax+0x2e],cl
c01048bd:	00 48 2e             	add    BYTE PTR [eax+0x2e],cl
c01048c0:	0c 47                	or     al,0x47
c01048c2:	2e 10 45 2e          	adc    BYTE PTR cs:[ebp+0x2e],al
c01048c6:	14 42                	adc    al,0x42
c01048c8:	2e 18 42 2e          	sbb    BYTE PTR cs:[edx+0x2e],al
c01048cc:	1c 45                	sbb    al,0x45
c01048ce:	2e 20 48 2e          	and    BYTE PTR cs:[eax+0x2e],cl
c01048d2:	00 46 2e             	add    BYTE PTR [esi+0x2e],al
c01048d5:	04 04                	add    al,0x4
c01048d7:	03 00                	add    eax,DWORD PTR [eax]
c01048d9:	00 00                	add    BYTE PTR [eax],al
c01048db:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c01048df:	0c 41                	or     al,0x41
c01048e1:	2e 10 4d 2e          	adc    BYTE PTR cs:[ebp+0x2e],cl
c01048e5:	14 45                	adc    al,0x45
c01048e7:	2e 18 42 2e          	sbb    BYTE PTR cs:[edx+0x2e],al
c01048eb:	1c 45                	sbb    al,0x45
c01048ed:	2e 20 48 2e          	and    BYTE PTR cs:[eax+0x2e],cl
c01048f1:	00 00                	add    BYTE PTR [eax],al
c01048f3:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c01048f6:	00 00                	add    BYTE PTR [eax],al
c01048f8:	a8 05                	test   al,0x5
c01048fa:	00 00                	add    BYTE PTR [eax],al
c01048fc:	aa                   	stos   BYTE PTR es:[edi],al
c01048fd:	0f 10 c0             	movups xmm0,xmm0
c0104900:	17                   	pop    ss
c0104901:	00 00                	add    BYTE PTR [eax],al
c0104903:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c0104906:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010490c:	53                   	push   ebx
c010490d:	0c 04                	or     al,0x4
c010490f:	04 c5                	add    al,0xc5
c0104911:	00 00                	add    BYTE PTR [eax],al
c0104913:	00 24 00             	add    BYTE PTR [eax+eax*1],ah
c0104916:	00 00                	add    BYTE PTR [eax],al
c0104918:	c8 05 00 00          	enter  0x5,0x0
c010491c:	c1 0f 10             	ror    DWORD PTR [edi],0x10
c010491f:	c0 15 00 00 00 41 0e 	rcl    BYTE PTR ds:0x41000000,0xe
c0104926:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010492c:	47                   	inc    edi
c010492d:	0a 0c 04             	or     cl,BYTE PTR [esp+eax*1]
c0104930:	04 c5                	add    al,0xc5
c0104932:	45                   	inc    ebp
c0104933:	0b 41 0c             	or     eax,DWORD PTR [ecx+0xc]
c0104936:	04 04                	add    al,0x4
c0104938:	c5 00                	lds    eax,FWORD PTR [eax]
c010493a:	00 00                	add    BYTE PTR [eax],al
c010493c:	44                   	inc    esp
c010493d:	00 00                	add    BYTE PTR [eax],al
c010493f:	00 f0                	add    al,dh
c0104941:	05 00 00 d8 0f       	add    eax,0xfd80000
c0104946:	10 c0                	adc    al,al
c0104948:	5a                   	pop    edx
c0104949:	00 00                	add    BYTE PTR [eax],al
c010494b:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c010494e:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0104954:	41                   	inc    ecx
c0104955:	86 03                	xchg   BYTE PTR [ebx],al
c0104957:	44                   	inc    esp
c0104958:	83 04 04 06          	add    DWORD PTR [esp+eax*1],0x6
c010495c:	00 00                	add    BYTE PTR [eax],al
c010495e:	00 2e                	add    BYTE PTR [esi],ch
c0104960:	0c 41                	or     al,0x41
c0104962:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c0104966:	00 65 2e             	add    BYTE PTR [ebp+0x2e],ah
c0104969:	04 04                	add    al,0x4
c010496b:	05 00 00 00 2e       	add    eax,0x2e000000
c0104970:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c0104973:	0c 45                	or     al,0x45
c0104975:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c0104979:	00 47 c3             	add    BYTE PTR [edi-0x3d],al
c010497c:	41                   	inc    ecx
c010497d:	c6 41 0c 04          	mov    BYTE PTR [ecx+0xc],0x4
c0104981:	04 c5                	add    al,0xc5
c0104983:	00 24 00             	add    BYTE PTR [eax+eax*1],ah
c0104986:	00 00                	add    BYTE PTR [eax],al
c0104988:	38 06                	cmp    BYTE PTR [esi],al
c010498a:	00 00                	add    BYTE PTR [eax],al
c010498c:	32 10                	xor    dl,BYTE PTR [eax]
c010498e:	10 c0                	adc    al,al
c0104990:	21 00                	and    DWORD PTR [eax],eax
c0104992:	00 00                	add    BYTE PTR [eax],al
c0104994:	41                   	inc    ecx
c0104995:	0e                   	push   cs
c0104996:	08 85 02 44 0d 05    	or     BYTE PTR [ebp+0x50d4402],al
c010499c:	47                   	inc    edi
c010499d:	83 04 86 03          	add    DWORD PTR [esi+eax*4],0x3
c01049a1:	52                   	push   edx
c01049a2:	c3                   	ret    
c01049a3:	41                   	inc    ecx
c01049a4:	c6 41 0c 04          	mov    BYTE PTR [ecx+0xc],0x4
c01049a8:	04 c5                	add    al,0xc5
c01049aa:	00 00                	add    BYTE PTR [eax],al
c01049ac:	28 00                	sub    BYTE PTR [eax],al
c01049ae:	00 00                	add    BYTE PTR [eax],al
c01049b0:	60                   	pusha  
c01049b1:	06                   	push   es
c01049b2:	00 00                	add    BYTE PTR [eax],al
c01049b4:	53                   	push   ebx
c01049b5:	10 10                	adc    BYTE PTR [eax],dl
c01049b7:	c0 8b 00 00 00 41 0e 	ror    BYTE PTR [ebx+0x41000000],0xe
c01049be:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c01049c4:	42                   	inc    edx
c01049c5:	86 04 87             	xchg   BYTE PTR [edi+eax*4],al
c01049c8:	03 46 83             	add    eax,DWORD PTR [esi-0x7d]
c01049cb:	05 02 7c c3 41       	add    eax,0x41c37c02
c01049d0:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c01049d4:	0c 04                	or     al,0x4
c01049d6:	04 c5                	add    al,0xc5
c01049d8:	34 00                	xor    al,0x0
c01049da:	00 00                	add    BYTE PTR [eax],al
c01049dc:	8c 06                	mov    WORD PTR [esi],es
c01049de:	00 00                	add    BYTE PTR [eax],al
c01049e0:	de 10                	ficom  WORD PTR [eax]
c01049e2:	10 c0                	adc    al,al
c01049e4:	32 00                	xor    al,BYTE PTR [eax]
c01049e6:	00 00                	add    BYTE PTR [eax],al
c01049e8:	41                   	inc    ecx
c01049e9:	0e                   	push   cs
c01049ea:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c01049f0:	44                   	inc    esp
c01049f1:	2e 0c 83             	cs or  al,0x83
c01049f4:	03 44 2e 10          	add    eax,DWORD PTR [esi+ebp*1+0x10]
c01049f8:	46                   	inc    esi
c01049f9:	2e 0c 44             	cs or  al,0x44
c01049fc:	2e 08 44 2e 0c       	or     BYTE PTR cs:[esi+ebp*1+0xc],al
c0104a01:	41                   	inc    ecx
c0104a02:	2e 10 57 c5          	adc    BYTE PTR cs:[edi-0x3b],dl
c0104a06:	0c 04                	or     al,0x4
c0104a08:	04 c3                	add    al,0xc3
c0104a0a:	41                   	inc    ecx
c0104a0b:	13 03                	adc    eax,DWORD PTR [ebx]
c0104a0d:	2e 00 00             	add    BYTE PTR cs:[eax],al
c0104a10:	28 00                	sub    BYTE PTR [eax],al
c0104a12:	00 00                	add    BYTE PTR [eax],al
c0104a14:	c4 06                	les    eax,FWORD PTR [esi]
c0104a16:	00 00                	add    BYTE PTR [eax],al
c0104a18:	10 11                	adc    BYTE PTR [ecx],dl
c0104a1a:	10 c0                	adc    al,al
c0104a1c:	3c 01                	cmp    al,0x1
c0104a1e:	00 00                	add    BYTE PTR [eax],al
c0104a20:	41                   	inc    ecx
c0104a21:	0e                   	push   cs
c0104a22:	08 85 02 44 0d 05    	or     BYTE PTR [ebp+0x50d4402],al
c0104a28:	46                   	inc    esi
c0104a29:	83 05 86 04 87 03 03 	add    DWORD PTR ds:0x3870486,0x3
c0104a30:	2d 01 c3 41 c6       	sub    eax,0xc641c301
c0104a35:	41                   	inc    ecx
c0104a36:	c7 41 0c 04 04 c5 38 	mov    DWORD PTR [ecx+0xc],0x38c50404
c0104a3d:	00 00                	add    BYTE PTR [eax],al
c0104a3f:	00 f0                	add    al,dh
c0104a41:	06                   	push   es
c0104a42:	00 00                	add    BYTE PTR [eax],al
c0104a44:	4c                   	dec    esp
c0104a45:	12 10                	adc    dl,BYTE PTR [eax]
c0104a47:	c0                   	(bad)  
c0104a48:	36 00 00             	add    BYTE PTR ss:[eax],al
c0104a4b:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c0104a4e:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0104a54:	44                   	inc    esp
c0104a55:	2e 0c 83             	cs or  al,0x83
c0104a58:	03 44 2e 10          	add    eax,DWORD PTR [esi+ebp*1+0x10]
c0104a5c:	4b                   	dec    ebx
c0104a5d:	2e 04 04             	cs add al,0x4
c0104a60:	04 00                	add    al,0x0
c0104a62:	00 00                	add    BYTE PTR [eax],al
c0104a64:	2e 08 43 2e          	or     BYTE PTR cs:[ebx+0x2e],al
c0104a68:	0c 41                	or     al,0x41
c0104a6a:	2e 10 57 c5          	adc    BYTE PTR cs:[edi-0x3b],dl
c0104a6e:	0c 04                	or     al,0x4
c0104a70:	04 c3                	add    al,0xc3
c0104a72:	41                   	inc    ecx
c0104a73:	13 03                	adc    eax,DWORD PTR [ebx]
c0104a75:	2e 00 00             	add    BYTE PTR cs:[eax],al
c0104a78:	10 01                	adc    BYTE PTR [ecx],al
c0104a7a:	00 00                	add    BYTE PTR [eax],al
c0104a7c:	2c 07                	sub    al,0x7
c0104a7e:	00 00                	add    BYTE PTR [eax],al
c0104a80:	82                   	(bad)  
c0104a81:	12 10                	adc    dl,BYTE PTR [eax]
c0104a83:	c0 a0 01 00 00 41 0e 	shl    BYTE PTR [eax+0x41000001],0xe
c0104a8a:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0104a90:	46                   	inc    esi
c0104a91:	83 05 86 04 87 03 63 	add    DWORD PTR ds:0x3870486,0x63
c0104a98:	2e 04 04             	cs add al,0x4
c0104a9b:	01 00                	add    DWORD PTR [eax],eax
c0104a9d:	00 00                	add    BYTE PTR [eax],al
c0104a9f:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c0104aa3:	0c 42                	or     al,0x42
c0104aa5:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c0104aa9:	00 46 2e             	add    BYTE PTR [esi+0x2e],al
c0104aac:	04 04                	add    al,0x4
c0104aae:	01 00                	add    DWORD PTR [eax],eax
c0104ab0:	00 00                	add    BYTE PTR [eax],al
c0104ab2:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c0104ab6:	0c 42                	or     al,0x42
c0104ab8:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c0104abc:	04 04                	add    al,0x4
c0104abe:	02 00                	add    al,BYTE PTR [eax]
c0104ac0:	00 00                	add    BYTE PTR [eax],al
c0104ac2:	2e 08 42 2e          	or     BYTE PTR cs:[edx+0x2e],al
c0104ac6:	0c 42                	or     al,0x42
c0104ac8:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c0104acc:	0c 41                	or     al,0x41
c0104ace:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c0104ad2:	0c 42                	or     al,0x42
c0104ad4:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c0104ad8:	04 04                	add    al,0x4
c0104ada:	02 00                	add    al,BYTE PTR [eax]
c0104adc:	00 00                	add    BYTE PTR [eax],al
c0104ade:	2e 08 43 2e          	or     BYTE PTR cs:[ebx+0x2e],al
c0104ae2:	0c 42                	or     al,0x42
c0104ae4:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c0104ae8:	0c 41                	or     al,0x41
c0104aea:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c0104aee:	0c 42                	or     al,0x42
c0104af0:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c0104af4:	04 04                	add    al,0x4
c0104af6:	02 00                	add    al,BYTE PTR [eax]
c0104af8:	00 00                	add    BYTE PTR [eax],al
c0104afa:	2e 08 43 2e          	or     BYTE PTR cs:[ebx+0x2e],al
c0104afe:	0c 42                	or     al,0x42
c0104b00:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c0104b04:	0c 41                	or     al,0x41
c0104b06:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c0104b0a:	0c 42                	or     al,0x42
c0104b0c:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c0104b10:	00 74 2e 04          	add    BYTE PTR [esi+ebp*1+0x4],dh
c0104b14:	04 05                	add    al,0x5
c0104b16:	00 00                	add    BYTE PTR [eax],al
c0104b18:	00 2e                	add    BYTE PTR [esi],ch
c0104b1a:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c0104b1d:	0c 45                	or     al,0x45
c0104b1f:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c0104b23:	00 62 2e             	add    BYTE PTR [edx+0x2e],ah
c0104b26:	04 04                	add    al,0x4
c0104b28:	01 00                	add    DWORD PTR [eax],eax
c0104b2a:	00 00                	add    BYTE PTR [eax],al
c0104b2c:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c0104b30:	0c 45                	or     al,0x45
c0104b32:	2e 10 4c 2e 0c       	adc    BYTE PTR cs:[esi+ebp*1+0xc],cl
c0104b37:	43                   	inc    ebx
c0104b38:	2e 08 4a 2e          	or     BYTE PTR cs:[edx+0x2e],cl
c0104b3c:	0c 47                	or     al,0x47
c0104b3e:	2e 10 4f 2e          	adc    BYTE PTR cs:[edi+0x2e],cl
c0104b42:	0c 41                	or     al,0x41
c0104b44:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c0104b48:	0c 45                	or     al,0x45
c0104b4a:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c0104b4e:	04 04                	add    al,0x4
c0104b50:	01 00                	add    DWORD PTR [eax],eax
c0104b52:	00 00                	add    BYTE PTR [eax],al
c0104b54:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c0104b58:	0c 45                	or     al,0x45
c0104b5a:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c0104b5e:	04 04                	add    al,0x4
c0104b60:	01 00                	add    DWORD PTR [eax],eax
c0104b62:	00 00                	add    BYTE PTR [eax],al
c0104b64:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c0104b68:	0c 45                	or     al,0x45
c0104b6a:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c0104b6e:	04 04                	add    al,0x4
c0104b70:	05 00 00 00 2e       	add    eax,0x2e000000
c0104b75:	08 45 2e             	or     BYTE PTR [ebp+0x2e],al
c0104b78:	0c 45                	or     al,0x45
c0104b7a:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c0104b7e:	00 44 c3 41          	add    BYTE PTR [ebx+eax*8+0x41],al
c0104b82:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c0104b86:	0c 04                	or     al,0x4
c0104b88:	04 c5                	add    al,0xc5
c0104b8a:	00 00                	add    BYTE PTR [eax],al
c0104b8c:	1c 00                	sbb    al,0x0
c0104b8e:	00 00                	add    BYTE PTR [eax],al
c0104b90:	40                   	inc    eax
c0104b91:	08 00                	or     BYTE PTR [eax],al
c0104b93:	00 22                	add    BYTE PTR [edx],ah
c0104b95:	14 10                	adc    al,0x10
c0104b97:	c0 12 00             	rcl    BYTE PTR [edx],0x0
c0104b9a:	00 00                	add    BYTE PTR [eax],al
c0104b9c:	41                   	inc    ecx
c0104b9d:	0e                   	push   cs
c0104b9e:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0104ba4:	44                   	inc    esp
c0104ba5:	0c 04                	or     al,0x4
c0104ba7:	04 c5                	add    al,0xc5
c0104ba9:	00 00                	add    BYTE PTR [eax],al
c0104bab:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c0104bae:	00 00                	add    BYTE PTR [eax],al
c0104bb0:	60                   	pusha  
c0104bb1:	08 00                	or     BYTE PTR [eax],al
c0104bb3:	00 34 14             	add    BYTE PTR [esp+edx*1],dh
c0104bb6:	10 c0                	adc    al,al
c0104bb8:	22 00                	and    al,BYTE PTR [eax]
c0104bba:	00 00                	add    BYTE PTR [eax],al
c0104bbc:	41                   	inc    ecx
c0104bbd:	0e                   	push   cs
c0104bbe:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0104bc4:	44                   	inc    esp
c0104bc5:	0c 04                	or     al,0x4
c0104bc7:	04 c5                	add    al,0xc5
c0104bc9:	00 00                	add    BYTE PTR [eax],al
c0104bcb:	00 54 00 00          	add    BYTE PTR [eax+eax*1+0x0],dl
c0104bcf:	00 80 08 00 00 56    	add    BYTE PTR [eax+0x56000008],al
c0104bd5:	14 10                	adc    al,0x10
c0104bd7:	c0                   	(bad)  
c0104bd8:	72 00                	jb     c0104bda <_edata+0x88a>
c0104bda:	00 00                	add    BYTE PTR [eax],al
c0104bdc:	41                   	inc    ecx
c0104bdd:	0e                   	push   cs
c0104bde:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0104be4:	46                   	inc    esi
c0104be5:	83 05 86 04 87 03 47 	add    DWORD PTR ds:0x3870486,0x47
c0104bec:	2e 04 04             	cs add al,0x4
c0104bef:	13 00                	adc    eax,DWORD PTR [eax]
c0104bf1:	00 00                	add    BYTE PTR [eax],al
c0104bf3:	2e 00 51 2e          	add    BYTE PTR cs:[ecx+0x2e],dl
c0104bf7:	04 04                	add    al,0x4
c0104bf9:	04 00                	add    al,0x0
c0104bfb:	00 00                	add    BYTE PTR [eax],al
c0104bfd:	2e 08 42 2e          	or     BYTE PTR cs:[edx+0x2e],al
c0104c01:	0c 45                	or     al,0x45
c0104c03:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c0104c07:	04 04                	add    al,0x4
c0104c09:	11 00                	adc    DWORD PTR [eax],eax
c0104c0b:	00 00                	add    BYTE PTR [eax],al
c0104c0d:	2e 08 47 2e          	or     BYTE PTR cs:[edi+0x2e],al
c0104c11:	0c 41                	or     al,0x41
c0104c13:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c0104c17:	00 46 c3             	add    BYTE PTR [esi-0x3d],al
c0104c1a:	41                   	inc    ecx
c0104c1b:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c0104c1f:	0c 04                	or     al,0x4
c0104c21:	04 c5                	add    al,0xc5
c0104c23:	00 60 00             	add    BYTE PTR [eax+0x0],ah
c0104c26:	00 00                	add    BYTE PTR [eax],al
c0104c28:	d8 08                	fmul   DWORD PTR [eax]
c0104c2a:	00 00                	add    BYTE PTR [eax],al
c0104c2c:	c8 14 10 c0          	enter  0x1014,0xc0
c0104c30:	72 00                	jb     c0104c32 <_edata+0x8e2>
c0104c32:	00 00                	add    BYTE PTR [eax],al
c0104c34:	41                   	inc    ecx
c0104c35:	0e                   	push   cs
c0104c36:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0104c3c:	46                   	inc    esi
c0104c3d:	83 05 86 04 87 03 58 	add    DWORD PTR ds:0x3870486,0x58
c0104c44:	2e 04 04             	cs add al,0x4
c0104c47:	01 00                	add    DWORD PTR [eax],eax
c0104c49:	00 00                	add    BYTE PTR [eax],al
c0104c4b:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c0104c4f:	0c 45                	or     al,0x45
c0104c51:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c0104c55:	00 4b 2e             	add    BYTE PTR [ebx+0x2e],cl
c0104c58:	04 04                	add    al,0x4
c0104c5a:	01 00                	add    DWORD PTR [eax],eax
c0104c5c:	00 00                	add    BYTE PTR [eax],al
c0104c5e:	2e 08 42 2e          	or     BYTE PTR cs:[edx+0x2e],al
c0104c62:	0c 43                	or     al,0x43
c0104c64:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c0104c68:	00 45 2e             	add    BYTE PTR [ebp+0x2e],al
c0104c6b:	04 04                	add    al,0x4
c0104c6d:	02 00                	add    al,BYTE PTR [eax]
c0104c6f:	00 00                	add    BYTE PTR [eax],al
c0104c71:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c0104c75:	0c 41                	or     al,0x41
c0104c77:	2e 10 4e 2e          	adc    BYTE PTR cs:[esi+0x2e],cl
c0104c7b:	00 4e c3             	add    BYTE PTR [esi-0x3d],cl
c0104c7e:	41                   	inc    ecx
c0104c7f:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c0104c83:	0c 04                	or     al,0x4
c0104c85:	04 c5                	add    al,0xc5
c0104c87:	00 70 00             	add    BYTE PTR [eax+0x0],dh
c0104c8a:	00 00                	add    BYTE PTR [eax],al
c0104c8c:	3c 09                	cmp    al,0x9
c0104c8e:	00 00                	add    BYTE PTR [eax],al
c0104c90:	3a 15 10 c0 4f 00    	cmp    dl,BYTE PTR ds:0x4fc010
c0104c96:	00 00                	add    BYTE PTR [eax],al
c0104c98:	41                   	inc    ecx
c0104c99:	0e                   	push   cs
c0104c9a:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0104ca0:	42                   	inc    edx
c0104ca1:	83 04 86 03          	add    DWORD PTR [esi+eax*4],0x3
c0104ca5:	44                   	inc    esp
c0104ca6:	2e 04 04             	cs add al,0x4
c0104ca9:	01 00                	add    DWORD PTR [eax],eax
c0104cab:	00 00                	add    BYTE PTR [eax],al
c0104cad:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c0104cb1:	0c 42                	or     al,0x42
c0104cb3:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c0104cb7:	00 4a 2e             	add    BYTE PTR [edx+0x2e],cl
c0104cba:	04 04                	add    al,0x4
c0104cbc:	01 00                	add    DWORD PTR [eax],eax
c0104cbe:	00 00                	add    BYTE PTR [eax],al
c0104cc0:	2e 08 42 2e          	or     BYTE PTR cs:[edx+0x2e],al
c0104cc4:	0c 41                	or     al,0x41
c0104cc6:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c0104cca:	00 41 2e             	add    BYTE PTR [ecx+0x2e],al
c0104ccd:	04 04                	add    al,0x4
c0104ccf:	01 00                	add    DWORD PTR [eax],eax
c0104cd1:	00 00                	add    BYTE PTR [eax],al
c0104cd3:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c0104cd7:	0c 42                	or     al,0x42
c0104cd9:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c0104cdd:	04 04                	add    al,0x4
c0104cdf:	02 00                	add    al,BYTE PTR [eax]
c0104ce1:	00 00                	add    BYTE PTR [eax],al
c0104ce3:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c0104ce7:	0c 42                	or     al,0x42
c0104ce9:	2e 10 4b c3          	adc    BYTE PTR cs:[ebx-0x3d],cl
c0104ced:	41                   	inc    ecx
c0104cee:	c6 41 0c 04          	mov    BYTE PTR [ecx+0xc],0x4
c0104cf2:	04 c5                	add    al,0xc5
c0104cf4:	41                   	inc    ecx
c0104cf5:	13 03                	adc    eax,DWORD PTR [ebx]
c0104cf7:	2e 00 00             	add    BYTE PTR cs:[eax],al
c0104cfa:	00 00                	add    BYTE PTR [eax],al
c0104cfc:	3c 00                	cmp    al,0x0
c0104cfe:	00 00                	add    BYTE PTR [eax],al
c0104d00:	b0 09                	mov    al,0x9
c0104d02:	00 00                	add    BYTE PTR [eax],al
c0104d04:	89 15 10 c0 34 00    	mov    DWORD PTR ds:0x34c010,edx
c0104d0a:	00 00                	add    BYTE PTR [eax],al
c0104d0c:	41                   	inc    ecx
c0104d0d:	0e                   	push   cs
c0104d0e:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0104d14:	44                   	inc    esp
c0104d15:	2e 08 83 03 44 2e 0c 	or     BYTE PTR cs:[ebx+0xc2e4403],al
c0104d1c:	42                   	inc    edx
c0104d1d:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c0104d21:	00 48 2e             	add    BYTE PTR [eax+0x2e],cl
c0104d24:	04 04                	add    al,0x4
c0104d26:	01 00                	add    DWORD PTR [eax],eax
c0104d28:	00 00                	add    BYTE PTR [eax],al
c0104d2a:	2e 08 42 2e          	or     BYTE PTR cs:[edx+0x2e],al
c0104d2e:	0c 41                	or     al,0x41
c0104d30:	2e 10 4e 2e          	adc    BYTE PTR cs:[esi+0x2e],cl
c0104d34:	00 44 c5 0c          	add    BYTE PTR [ebp+eax*8+0xc],al
c0104d38:	04 04                	add    al,0x4
c0104d3a:	c3                   	ret    
c0104d3b:	00 8c 00 00 00 f0 09 	add    BYTE PTR [eax+eax*1+0x9f00000],cl
c0104d42:	00 00                	add    BYTE PTR [eax],al
c0104d44:	bd 15 10 c0 a4       	mov    ebp,0xa4c01015
c0104d49:	00 00                	add    BYTE PTR [eax],al
c0104d4b:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c0104d4e:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0104d54:	41                   	inc    ecx
c0104d55:	87 03                	xchg   DWORD PTR [ebx],eax
c0104d57:	4a                   	dec    edx
c0104d58:	83 05 86 04 04 29 00 	add    DWORD PTR ds:0x29040486,0x0
c0104d5f:	00 00                	add    BYTE PTR [eax],al
c0104d61:	2e 04 04             	cs add al,0x4
c0104d64:	01 00                	add    DWORD PTR [eax],eax
c0104d66:	00 00                	add    BYTE PTR [eax],al
c0104d68:	2e 08 42 2e          	or     BYTE PTR cs:[edx+0x2e],al
c0104d6c:	0c 45                	or     al,0x45
c0104d6e:	2e 10 47 2e          	adc    BYTE PTR cs:[edi+0x2e],al
c0104d72:	00 45 2e             	add    BYTE PTR [ebp+0x2e],al
c0104d75:	04 04                	add    al,0x4
c0104d77:	05 00 00 00 2e       	add    eax,0x2e000000
c0104d7c:	08 45 2e             	or     BYTE PTR [ebp+0x2e],al
c0104d7f:	0c 45                	or     al,0x45
c0104d81:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c0104d85:	00 41 2e             	add    BYTE PTR [ecx+0x2e],al
c0104d88:	04 04                	add    al,0x4
c0104d8a:	01 00                	add    DWORD PTR [eax],eax
c0104d8c:	00 00                	add    BYTE PTR [eax],al
c0104d8e:	2e 08 42 2e          	or     BYTE PTR cs:[edx+0x2e],al
c0104d92:	0c 41                	or     al,0x41
c0104d94:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c0104d98:	00 4b 2e             	add    BYTE PTR [ebx+0x2e],cl
c0104d9b:	04 04                	add    al,0x4
c0104d9d:	05 00 00 00 2e       	add    eax,0x2e000000
c0104da2:	08 45 2e             	or     BYTE PTR [ebp+0x2e],al
c0104da5:	0c 45                	or     al,0x45
c0104da7:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c0104dab:	00 41 2e             	add    BYTE PTR [ecx+0x2e],al
c0104dae:	04 04                	add    al,0x4
c0104db0:	01 00                	add    DWORD PTR [eax],eax
c0104db2:	00 00                	add    BYTE PTR [eax],al
c0104db4:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c0104db8:	0c 41                	or     al,0x41
c0104dba:	2e 10 4b c3          	adc    BYTE PTR cs:[ebx-0x3d],cl
c0104dbe:	41                   	inc    ecx
c0104dbf:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c0104dc3:	0c 04                	or     al,0x4
c0104dc5:	04 c5                	add    al,0xc5
c0104dc7:	41                   	inc    ecx
c0104dc8:	13 03                	adc    eax,DWORD PTR [ebx]
c0104dca:	2e 00 28             	add    BYTE PTR cs:[eax],ch
c0104dcd:	00 00                	add    BYTE PTR [eax],al
c0104dcf:	00 80 0a 00 00 61    	add    BYTE PTR [eax+0x6100000a],al
c0104dd5:	16                   	push   ss
c0104dd6:	10 c0                	adc    al,al
c0104dd8:	22 00                	and    al,BYTE PTR [eax]
c0104dda:	00 00                	add    BYTE PTR [eax],al
c0104ddc:	41                   	inc    ecx
c0104ddd:	0e                   	push   cs
c0104dde:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0104de4:	41                   	inc    ecx
c0104de5:	83 03 44             	add    DWORD PTR [ebx],0x44
c0104de8:	2e 04 04             	cs add al,0x4
c0104deb:	0c 00                	or     al,0x0
c0104ded:	00 00                	add    BYTE PTR [eax],al
c0104def:	2e 00 4d c5          	add    BYTE PTR cs:[ebp-0x3b],cl
c0104df3:	0c 04                	or     al,0x4
c0104df5:	04 c3                	add    al,0xc3
c0104df7:	00 44 00 00          	add    BYTE PTR [eax+eax*1+0x0],al
c0104dfb:	00 ac 0a 00 00 84 16 	add    BYTE PTR [edx+ecx*1+0x16840000],ch
c0104e02:	10 c0                	adc    al,al
c0104e04:	43                   	inc    ebx
c0104e05:	00 00                	add    BYTE PTR [eax],al
c0104e07:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c0104e0a:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0104e10:	41                   	inc    ecx
c0104e11:	86 03                	xchg   BYTE PTR [ebx],al
c0104e13:	45                   	inc    ebp
c0104e14:	83 04 04 06          	add    DWORD PTR [esp+eax*1],0x6
c0104e18:	00 00                	add    BYTE PTR [eax],al
c0104e1a:	00 2e                	add    BYTE PTR [esi],ch
c0104e1c:	0c 46                	or     al,0x46
c0104e1e:	2e 10 4a 2e          	adc    BYTE PTR cs:[edx+0x2e],cl
c0104e22:	00 49 2e             	add    BYTE PTR [ecx+0x2e],cl
c0104e25:	04 04                	add    al,0x4
c0104e27:	05 00 00 00 2e       	add    eax,0x2e000000
c0104e2c:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c0104e2f:	0c 45                	or     al,0x45
c0104e31:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c0104e35:	00 44 c3 41          	add    BYTE PTR [ebx+eax*8+0x41],al
c0104e39:	c6 41 0c 04          	mov    BYTE PTR [ecx+0xc],0x4
c0104e3d:	04 c5                	add    al,0xc5
c0104e3f:	00 28                	add    BYTE PTR [eax],ch
c0104e41:	00 00                	add    BYTE PTR [eax],al
c0104e43:	00 f4                	add    ah,dh
c0104e45:	0a 00                	or     al,BYTE PTR [eax]
c0104e47:	00 c7                	add    bh,al
c0104e49:	16                   	push   ss
c0104e4a:	10 c0                	adc    al,al
c0104e4c:	26 00 00             	add    BYTE PTR es:[eax],al
c0104e4f:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c0104e52:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0104e58:	43                   	inc    ebx
c0104e59:	2e 08 55 2e          	or     BYTE PTR cs:[ebp+0x2e],dl
c0104e5d:	0c 41                	or     al,0x41
c0104e5f:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c0104e63:	00 41 c5             	add    BYTE PTR [ecx-0x3b],al
c0104e66:	0c 04                	or     al,0x4
c0104e68:	04 00                	add    al,0x0
c0104e6a:	00 00                	add    BYTE PTR [eax],al
c0104e6c:	98                   	cwde   
c0104e6d:	00 00                	add    BYTE PTR [eax],al
c0104e6f:	00 20                	add    BYTE PTR [eax],ah
c0104e71:	0b 00                	or     eax,DWORD PTR [eax]
c0104e73:	00 ed                	add    ch,ch
c0104e75:	16                   	push   ss
c0104e76:	10 c0                	adc    al,al
c0104e78:	da 00                	fiadd  DWORD PTR [eax]
c0104e7a:	00 00                	add    BYTE PTR [eax],al
c0104e7c:	41                   	inc    ecx
c0104e7d:	0e                   	push   cs
c0104e7e:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0104e84:	46                   	inc    esi
c0104e85:	83 05 86 04 87 03 58 	add    DWORD PTR ds:0x3870486,0x58
c0104e8c:	2e 04 04             	cs add al,0x4
c0104e8f:	04 00                	add    al,0x0
c0104e91:	00 00                	add    BYTE PTR [eax],al
c0104e93:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c0104e97:	0c 41                	or     al,0x41
c0104e99:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c0104e9d:	00 49 2e             	add    BYTE PTR [ecx+0x2e],cl
c0104ea0:	04 04                	add    al,0x4
c0104ea2:	05 00 00 00 2e       	add    eax,0x2e000000
c0104ea7:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c0104eaa:	0c 45                	or     al,0x45
c0104eac:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c0104eb0:	00 46 2e             	add    BYTE PTR [esi+0x2e],al
c0104eb3:	04 04                	add    al,0x4
c0104eb5:	04 00                	add    al,0x0
c0104eb7:	00 00                	add    BYTE PTR [eax],al
c0104eb9:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c0104ebd:	0c 41                	or     al,0x41
c0104ebf:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c0104ec3:	00 49 2e             	add    BYTE PTR [ecx+0x2e],cl
c0104ec6:	04 04                	add    al,0x4
c0104ec8:	05 00 00 00 2e       	add    eax,0x2e000000
c0104ecd:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c0104ed0:	0c 45                	or     al,0x45
c0104ed2:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c0104ed6:	00 46 2e             	add    BYTE PTR [esi+0x2e],al
c0104ed9:	04 04                	add    al,0x4
c0104edb:	04 00                	add    al,0x0
c0104edd:	00 00                	add    BYTE PTR [eax],al
c0104edf:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c0104ee3:	0c 41                	or     al,0x41
c0104ee5:	2e 10 54 2e 00       	adc    BYTE PTR cs:[esi+ebp*1+0x0],dl
c0104eea:	5a                   	pop    edx
c0104eeb:	2e 04 04             	cs add al,0x4
c0104eee:	05 00 00 00 2e       	add    eax,0x2e000000
c0104ef3:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c0104ef6:	0c 45                	or     al,0x45
c0104ef8:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c0104efc:	00 47 c3             	add    BYTE PTR [edi-0x3d],al
c0104eff:	41                   	inc    ecx
c0104f00:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c0104f04:	0c 04                	or     al,0x4
c0104f06:	04 c5                	add    al,0xc5
c0104f08:	64 00 00             	add    BYTE PTR fs:[eax],al
c0104f0b:	00 bc 0b 00 00 c7 17 	add    BYTE PTR [ebx+ecx*1+0x17c70000],bh
c0104f12:	10 c0                	adc    al,al
c0104f14:	8c 00                	mov    WORD PTR [eax],es
c0104f16:	00 00                	add    BYTE PTR [eax],al
c0104f18:	41                   	inc    ecx
c0104f19:	0e                   	push   cs
c0104f1a:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0104f20:	46                   	inc    esi
c0104f21:	83 05 86 04 87 03 55 	add    DWORD PTR ds:0x3870486,0x55
c0104f28:	2e 04 04             	cs add al,0x4
c0104f2b:	05 00 00 00 2e       	add    eax,0x2e000000
c0104f30:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c0104f33:	0c 45                	or     al,0x45
c0104f35:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c0104f39:	00 43 2e             	add    BYTE PTR [ebx+0x2e],al
c0104f3c:	0c 44                	or     al,0x44
c0104f3e:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c0104f42:	00 47 2e             	add    BYTE PTR [edi+0x2e],al
c0104f45:	0c 41                	or     al,0x41
c0104f47:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c0104f4b:	0c 43                	or     al,0x43
c0104f4d:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c0104f51:	00 4f 2e             	add    BYTE PTR [edi+0x2e],cl
c0104f54:	04 04                	add    al,0x4
c0104f56:	05 00 00 00 2e       	add    eax,0x2e000000
c0104f5b:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c0104f5e:	0c 45                	or     al,0x45
c0104f60:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c0104f64:	00 47 c3             	add    BYTE PTR [edi-0x3d],al
c0104f67:	41                   	inc    ecx
c0104f68:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c0104f6c:	0c 04                	or     al,0x4
c0104f6e:	04 c5                	add    al,0xc5
c0104f70:	40                   	inc    eax
c0104f71:	00 00                	add    BYTE PTR [eax],al
c0104f73:	00 24 0c             	add    BYTE PTR [esp+ecx*1],ah
c0104f76:	00 00                	add    BYTE PTR [eax],al
c0104f78:	53                   	push   ebx
c0104f79:	18 10                	sbb    BYTE PTR [eax],dl
c0104f7b:	c0 5b 00 00          	rcr    BYTE PTR [ebx+0x0],0x0
c0104f7f:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c0104f82:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0104f88:	42                   	inc    edx
c0104f89:	83 04 86 03          	add    DWORD PTR [esi+eax*4],0x3
c0104f8d:	51                   	push   ecx
c0104f8e:	2e 0c 44             	cs or  al,0x44
c0104f91:	2e 10 4d 2e          	adc    BYTE PTR cs:[ebp+0x2e],cl
c0104f95:	00 4d 2e             	add    BYTE PTR [ebp+0x2e],cl
c0104f98:	04 04                	add    al,0x4
c0104f9a:	05 00 00 00 2e       	add    eax,0x2e000000
c0104f9f:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c0104fa2:	0c 45                	or     al,0x45
c0104fa4:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c0104fa8:	00 50 c3             	add    BYTE PTR [eax-0x3d],dl
c0104fab:	41                   	inc    ecx
c0104fac:	c6 41 0c 04          	mov    BYTE PTR [ecx+0xc],0x4
c0104fb0:	04 c5                	add    al,0xc5
c0104fb2:	00 00                	add    BYTE PTR [eax],al
c0104fb4:	54                   	push   esp
c0104fb5:	00 00                	add    BYTE PTR [eax],al
c0104fb7:	00 68 0c             	add    BYTE PTR [eax+0xc],ch
c0104fba:	00 00                	add    BYTE PTR [eax],al
c0104fbc:	ae                   	scas   al,BYTE PTR es:[edi]
c0104fbd:	18 10                	sbb    BYTE PTR [eax],dl
c0104fbf:	c0 78 00 00          	sar    BYTE PTR [eax+0x0],0x0
c0104fc3:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c0104fc6:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0104fcc:	42                   	inc    edx
c0104fcd:	83 04 86 03          	add    DWORD PTR [esi+eax*4],0x3
c0104fd1:	53                   	push   ebx
c0104fd2:	2e 04 04             	cs add al,0x4
c0104fd5:	05 00 00 00 2e       	add    eax,0x2e000000
c0104fda:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c0104fdd:	0c 45                	or     al,0x45
c0104fdf:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c0104fe3:	00 50 0a             	add    BYTE PTR [eax+0xa],dl
c0104fe6:	c3                   	ret    
c0104fe7:	41                   	inc    ecx
c0104fe8:	c6 41 0c 04          	mov    BYTE PTR [ecx+0xc],0x4
c0104fec:	04 c5                	add    al,0xc5
c0104fee:	41                   	inc    ecx
c0104fef:	0b 47 2e             	or     eax,DWORD PTR [edi+0x2e]
c0104ff2:	04 04                	add    al,0x4
c0104ff4:	05 00 00 00 2e       	add    eax,0x2e000000
c0104ff9:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c0104ffc:	0c 45                	or     al,0x45
c0104ffe:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c0105002:	00 57 c3             	add    BYTE PTR [edi-0x3d],dl
c0105005:	41                   	inc    ecx
c0105006:	c6 41 0c 04          	mov    BYTE PTR [ecx+0xc],0x4
c010500a:	04 c5                	add    al,0xc5
c010500c:	28 00                	sub    BYTE PTR [eax],al
c010500e:	00 00                	add    BYTE PTR [eax],al
c0105010:	c0 0c 00 00          	ror    BYTE PTR [eax+eax*1],0x0
c0105014:	48                   	dec    eax
c0105015:	19 10                	sbb    DWORD PTR [eax],edx
c0105017:	c0 1a 00             	rcr    BYTE PTR [edx],0x0
c010501a:	00 00                	add    BYTE PTR [eax],al
c010501c:	41                   	inc    ecx
c010501d:	0e                   	push   cs
c010501e:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0105024:	41                   	inc    ecx
c0105025:	86 03                	xchg   BYTE PTR [ebx],al
c0105027:	44                   	inc    esp
c0105028:	83 04 04 0e          	add    DWORD PTR [esp+eax*1],0xe
c010502c:	00 00                	add    BYTE PTR [eax],al
c010502e:	00 c3                	add    bl,al
c0105030:	41                   	inc    ecx
c0105031:	c6 41 0c 04          	mov    BYTE PTR [ecx+0xc],0x4
c0105035:	04 c5                	add    al,0xc5
c0105037:	00 38                	add    BYTE PTR [eax],bh
c0105039:	00 00                	add    BYTE PTR [eax],al
c010503b:	00 ec                	add    ah,ch
c010503d:	0c 00                	or     al,0x0
c010503f:	00 62 19             	add    BYTE PTR [edx+0x19],ah
c0105042:	10 c0                	adc    al,al
c0105044:	64 00 00             	add    BYTE PTR fs:[eax],al
c0105047:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c010504a:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0105050:	44                   	inc    esp
c0105051:	2e 04 83             	cs add al,0x83
c0105054:	03 48 2e             	add    ecx,DWORD PTR [eax+0x2e]
c0105057:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c010505a:	0c 41                	or     al,0x41
c010505c:	2e 10 49 2e          	adc    BYTE PTR cs:[ecx+0x2e],cl
c0105060:	0c 41                	or     al,0x41
c0105062:	2e 08 43 2e          	or     BYTE PTR cs:[ebx+0x2e],al
c0105066:	0c 44                	or     al,0x44
c0105068:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c010506c:	00 78 c5             	add    BYTE PTR [eax-0x3b],bh
c010506f:	0c 04                	or     al,0x4
c0105071:	04 c3                	add    al,0xc3
c0105073:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c0105076:	00 00                	add    BYTE PTR [eax],al
c0105078:	28 0d 00 00 c6 19    	sub    BYTE PTR ds:0x19c60000,cl
c010507e:	10 c0                	adc    al,al
c0105080:	0c 00                	or     al,0x0
c0105082:	00 00                	add    BYTE PTR [eax],al
c0105084:	41                   	inc    ecx
c0105085:	0e                   	push   cs
c0105086:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010508c:	48                   	dec    eax
c010508d:	0c 04                	or     al,0x4
c010508f:	04 c5                	add    al,0xc5
c0105091:	00 00                	add    BYTE PTR [eax],al
c0105093:	00 40 00             	add    BYTE PTR [eax+0x0],al
c0105096:	00 00                	add    BYTE PTR [eax],al
c0105098:	48                   	dec    eax
c0105099:	0d 00 00 d2 19       	or     eax,0x19d20000
c010509e:	10 c0                	adc    al,al
c01050a0:	56                   	push   esi
c01050a1:	00 00                	add    BYTE PTR [eax],al
c01050a3:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c01050a6:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c01050ac:	43                   	inc    ebx
c01050ad:	2e 0c 45             	cs or  al,0x45
c01050b0:	2e 10 59 2e          	adc    BYTE PTR cs:[ecx+0x2e],bl
c01050b4:	04 04                	add    al,0x4
c01050b6:	02 00                	add    al,BYTE PTR [eax]
c01050b8:	00 00                	add    BYTE PTR [eax],al
c01050ba:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c01050be:	0c 41                	or     al,0x41
c01050c0:	2e 10 59 2e          	adc    BYTE PTR cs:[ecx+0x2e],bl
c01050c4:	0c 41                	or     al,0x41
c01050c6:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c01050ca:	0c 45                	or     al,0x45
c01050cc:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c01050d0:	00 41 c5             	add    BYTE PTR [ecx-0x3b],al
c01050d3:	0c 04                	or     al,0x4
c01050d5:	04 00                	add    al,0x0
c01050d7:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c01050da:	00 00                	add    BYTE PTR [eax],al
c01050dc:	8c 0d 00 00 28 1a    	mov    WORD PTR ds:0x1a280000,cs
c01050e2:	10 c0                	adc    al,al
c01050e4:	56                   	push   esi
c01050e5:	00 00                	add    BYTE PTR [eax],al
c01050e7:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c01050ea:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c01050f0:	02 52 0c             	add    dl,BYTE PTR [edx+0xc]
c01050f3:	04 04                	add    al,0x4
c01050f5:	c5 00                	lds    eax,FWORD PTR [eax]
c01050f7:	00 b8 00 00 00 ac    	add    BYTE PTR [eax-0x54000000],bh
c01050fd:	0d 00 00 7e 1a       	or     eax,0x1a7e0000
c0105102:	10 c0                	adc    al,al
c0105104:	bf 00 00 00 41       	mov    edi,0x41000000
c0105109:	0e                   	push   cs
c010510a:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0105110:	41                   	inc    ecx
c0105111:	86 03                	xchg   BYTE PTR [ebx],al
c0105113:	47                   	inc    edi
c0105114:	2e 0c 42             	cs or  al,0x42
c0105117:	2e 10 83 04 04 0e 00 	adc    BYTE PTR cs:[ebx+0xe0404],al
c010511e:	00 00                	add    BYTE PTR [eax],al
c0105120:	2e 04 04             	cs add al,0x4
c0105123:	01 00                	add    DWORD PTR [eax],eax
c0105125:	00 00                	add    BYTE PTR [eax],al
c0105127:	2e 08 43 2e          	or     BYTE PTR cs:[ebx+0x2e],al
c010512b:	0c 41                	or     al,0x41
c010512d:	2e 10 4a 2e          	adc    BYTE PTR cs:[edx+0x2e],cl
c0105131:	04 04                	add    al,0x4
c0105133:	03 00                	add    eax,DWORD PTR [eax]
c0105135:	00 00                	add    BYTE PTR [eax],al
c0105137:	2e 08 43 2e          	or     BYTE PTR cs:[ebx+0x2e],al
c010513b:	0c 44                	or     al,0x44
c010513d:	2e 10 4c 2e 0c       	adc    BYTE PTR cs:[esi+ebp*1+0xc],cl
c0105142:	41                   	inc    ecx
c0105143:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c0105147:	0c 45                	or     al,0x45
c0105149:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c010514d:	00 49 2e             	add    BYTE PTR [ecx+0x2e],cl
c0105150:	04 04                	add    al,0x4
c0105152:	05 00 00 00 2e       	add    eax,0x2e000000
c0105157:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c010515a:	0c 45                	or     al,0x45
c010515c:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c0105160:	00 41 2e             	add    BYTE PTR [ecx+0x2e],al
c0105163:	04 04                	add    al,0x4
c0105165:	01 00                	add    DWORD PTR [eax],eax
c0105167:	00 00                	add    BYTE PTR [eax],al
c0105169:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c010516d:	0c 45                	or     al,0x45
c010516f:	2e 10 49 2e          	adc    BYTE PTR cs:[ecx+0x2e],cl
c0105173:	0c 41                	or     al,0x41
c0105175:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c0105179:	0c 45                	or     al,0x45
c010517b:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c010517f:	00 49 2e             	add    BYTE PTR [ecx+0x2e],cl
c0105182:	04 04                	add    al,0x4
c0105184:	05 00 00 00 2e       	add    eax,0x2e000000
c0105189:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c010518c:	0c 45                	or     al,0x45
c010518e:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c0105192:	00 41 2e             	add    BYTE PTR [ecx+0x2e],al
c0105195:	04 04                	add    al,0x4
c0105197:	01 00                	add    DWORD PTR [eax],eax
c0105199:	00 00                	add    BYTE PTR [eax],al
c010519b:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c010519f:	0c 45                	or     al,0x45
c01051a1:	2e 10 4b c3          	adc    BYTE PTR cs:[ebx-0x3d],cl
c01051a5:	41                   	inc    ecx
c01051a6:	c6 41 0c 04          	mov    BYTE PTR [ecx+0xc],0x4
c01051aa:	04 c5                	add    al,0xc5
c01051ac:	41                   	inc    ecx
c01051ad:	13 03                	adc    eax,DWORD PTR [ebx]
c01051af:	2e 00 00             	add    BYTE PTR cs:[eax],al
c01051b2:	00 00                	add    BYTE PTR [eax],al
c01051b4:	cc                   	int3   
c01051b5:	00 00                	add    BYTE PTR [eax],al
c01051b7:	00 68 0e             	add    BYTE PTR [eax+0xe],ch
c01051ba:	00 00                	add    BYTE PTR [eax],al
c01051bc:	3d 1b 10 c0 37       	cmp    eax,0x37c0101b
c01051c1:	01 00                	add    DWORD PTR [eax],eax
c01051c3:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c01051c6:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c01051cc:	42                   	inc    edx
c01051cd:	83 04 86 03          	add    DWORD PTR [esi+eax*4],0x3
c01051d1:	55                   	push   ebp
c01051d2:	2e 04 04             	cs add al,0x4
c01051d5:	05 00 00 00 2e       	add    eax,0x2e000000
c01051da:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c01051dd:	0c 45                	or     al,0x45
c01051df:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c01051e3:	00 48 2e             	add    BYTE PTR [eax+0x2e],cl
c01051e6:	04 04                	add    al,0x4
c01051e8:	01 00                	add    DWORD PTR [eax],eax
c01051ea:	00 00                	add    BYTE PTR [eax],al
c01051ec:	2e 08 44 2e 0c       	or     BYTE PTR cs:[esi+ebp*1+0xc],al
c01051f1:	45                   	inc    ebp
c01051f2:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c01051f6:	00 49 2e             	add    BYTE PTR [ecx+0x2e],cl
c01051f9:	04 04                	add    al,0x4
c01051fb:	05 00 00 00 2e       	add    eax,0x2e000000
c0105200:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c0105203:	0c 45                	or     al,0x45
c0105205:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c0105209:	00 41 2e             	add    BYTE PTR [ecx+0x2e],al
c010520c:	04 04                	add    al,0x4
c010520e:	01 00                	add    DWORD PTR [eax],eax
c0105210:	00 00                	add    BYTE PTR [eax],al
c0105212:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c0105216:	0c 45                	or     al,0x45
c0105218:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c010521c:	00 4a 2e             	add    BYTE PTR [edx+0x2e],cl
c010521f:	0c 45                	or     al,0x45
c0105221:	2e 10 52 2e          	adc    BYTE PTR cs:[edx+0x2e],dl
c0105225:	00 49 2e             	add    BYTE PTR [ecx+0x2e],cl
c0105228:	04 04                	add    al,0x4
c010522a:	05 00 00 00 2e       	add    eax,0x2e000000
c010522f:	08 45 2e             	or     BYTE PTR [ebp+0x2e],al
c0105232:	0c 45                	or     al,0x45
c0105234:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c0105238:	00 51 2e             	add    BYTE PTR [ecx+0x2e],dl
c010523b:	04 04                	add    al,0x4
c010523d:	05 00 00 00 2e       	add    eax,0x2e000000
c0105242:	08 45 2e             	or     BYTE PTR [ebp+0x2e],al
c0105245:	0c 45                	or     al,0x45
c0105247:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c010524b:	00 43 2e             	add    BYTE PTR [ebx+0x2e],al
c010524e:	0c 45                	or     al,0x45
c0105250:	2e 10 5d 2e          	adc    BYTE PTR cs:[ebp+0x2e],bl
c0105254:	00 49 2e             	add    BYTE PTR [ecx+0x2e],cl
c0105257:	04 04                	add    al,0x4
c0105259:	01 00                	add    DWORD PTR [eax],eax
c010525b:	00 00                	add    BYTE PTR [eax],al
c010525d:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c0105261:	0c 42                	or     al,0x42
c0105263:	2e 10 50 2e          	adc    BYTE PTR cs:[eax+0x2e],dl
c0105267:	00 41 2e             	add    BYTE PTR [ecx+0x2e],al
c010526a:	04 04                	add    al,0x4
c010526c:	01 00                	add    DWORD PTR [eax],eax
c010526e:	00 00                	add    BYTE PTR [eax],al
c0105270:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c0105274:	0c 41                	or     al,0x41
c0105276:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c010527a:	00 44 c3 41          	add    BYTE PTR [ebx+eax*8+0x41],al
c010527e:	c6 41 0c 04          	mov    BYTE PTR [ecx+0xc],0x4
c0105282:	04 c5                	add    al,0xc5
c0105284:	38 00                	cmp    BYTE PTR [eax],al
c0105286:	00 00                	add    BYTE PTR [eax],al
c0105288:	38 0f                	cmp    BYTE PTR [edi],cl
c010528a:	00 00                	add    BYTE PTR [eax],al
c010528c:	74 1c                	je     c01052aa <_edata+0xf5a>
c010528e:	10 c0                	adc    al,al
c0105290:	4b                   	dec    ebx
c0105291:	00 00                	add    BYTE PTR [eax],al
c0105293:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c0105296:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010529c:	42                   	inc    edx
c010529d:	83 04 86 03          	add    DWORD PTR [esi+eax*4],0x3
c01052a1:	4d                   	dec    ebp
c01052a2:	2e 04 04             	cs add al,0x4
c01052a5:	05 00 00 00 2e       	add    eax,0x2e000000
c01052aa:	08 45 2e             	or     BYTE PTR [ebp+0x2e],al
c01052ad:	0c 45                	or     al,0x45
c01052af:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c01052b3:	00 5b c3             	add    BYTE PTR [ebx-0x3d],bl
c01052b6:	41                   	inc    ecx
c01052b7:	c6 41 0c 04          	mov    BYTE PTR [ecx+0xc],0x4
c01052bb:	04 c5                	add    al,0xc5
c01052bd:	00 00                	add    BYTE PTR [eax],al
c01052bf:	00 88 00 00 00 74    	add    BYTE PTR [eax+0x74000000],cl
c01052c5:	0f 00 00             	sldt   WORD PTR [eax]
c01052c8:	bf 1c 10 c0 a2       	mov    edi,0xa2c0101c
c01052cd:	00 00                	add    BYTE PTR [eax],al
c01052cf:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c01052d2:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c01052d8:	46                   	inc    esi
c01052d9:	83 05 86 04 87 03 51 	add    DWORD PTR ds:0x3870486,0x51
c01052e0:	2e 04 04             	cs add al,0x4
c01052e3:	01 00                	add    DWORD PTR [eax],eax
c01052e5:	00 00                	add    BYTE PTR [eax],al
c01052e7:	2e 08 44 2e 0c       	or     BYTE PTR cs:[esi+ebp*1+0xc],al
c01052ec:	45                   	inc    ebp
c01052ed:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c01052f1:	00 49 2e             	add    BYTE PTR [ecx+0x2e],cl
c01052f4:	04 04                	add    al,0x4
c01052f6:	05 00 00 00 2e       	add    eax,0x2e000000
c01052fb:	08 45 2e             	or     BYTE PTR [ebp+0x2e],al
c01052fe:	0c 45                	or     al,0x45
c0105300:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c0105304:	00 41 2e             	add    BYTE PTR [ecx+0x2e],al
c0105307:	04 04                	add    al,0x4
c0105309:	01 00                	add    DWORD PTR [eax],eax
c010530b:	00 00                	add    BYTE PTR [eax],al
c010530d:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c0105311:	0c 45                	or     al,0x45
c0105313:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c0105317:	00 49 2e             	add    BYTE PTR [ecx+0x2e],cl
c010531a:	04 04                	add    al,0x4
c010531c:	05 00 00 00 2e       	add    eax,0x2e000000
c0105321:	08 45 2e             	or     BYTE PTR [ebp+0x2e],al
c0105324:	0c 45                	or     al,0x45
c0105326:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c010532a:	00 41 2e             	add    BYTE PTR [ecx+0x2e],al
c010532d:	04 04                	add    al,0x4
c010532f:	01 00                	add    DWORD PTR [eax],eax
c0105331:	00 00                	add    BYTE PTR [eax],al
c0105333:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c0105337:	0c 45                	or     al,0x45
c0105339:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c010533d:	00 4e c3             	add    BYTE PTR [esi-0x3d],cl
c0105340:	41                   	inc    ecx
c0105341:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c0105345:	0c 04                	or     al,0x4
c0105347:	04 c5                	add    al,0xc5
c0105349:	00 00                	add    BYTE PTR [eax],al
c010534b:	00 2c 00             	add    BYTE PTR [eax+eax*1],ch
c010534e:	00 00                	add    BYTE PTR [eax],al
c0105350:	00 10                	add    BYTE PTR [eax],dl
c0105352:	00 00                	add    BYTE PTR [eax],al
c0105354:	64 1d 10 c0 3e 00    	fs sbb eax,0x3ec010
c010535a:	00 00                	add    BYTE PTR [eax],al
c010535c:	41                   	inc    ecx
c010535d:	0e                   	push   cs
c010535e:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0105364:	41                   	inc    ecx
c0105365:	87 03                	xchg   DWORD PTR [ebx],eax
c0105367:	44                   	inc    esp
c0105368:	86 04 04             	xchg   BYTE PTR [esp+eax*1],al
c010536b:	06                   	push   es
c010536c:	00 00                	add    BYTE PTR [eax],al
c010536e:	00 83 05 6c c3 41    	add    BYTE PTR [ebx+0x41c36c05],al
c0105374:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c0105378:	0c 04                	or     al,0x4
c010537a:	04 c5                	add    al,0xc5
c010537c:	30 00                	xor    BYTE PTR [eax],al
c010537e:	00 00                	add    BYTE PTR [eax],al
c0105380:	30 10                	xor    BYTE PTR [eax],dl
c0105382:	00 00                	add    BYTE PTR [eax],al
c0105384:	a2 1d 10 c0 92       	mov    ds:0x92c0101d,al
c0105389:	00 00                	add    BYTE PTR [eax],al
c010538b:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c010538e:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0105394:	43                   	inc    ebx
c0105395:	2e 04 04             	cs add al,0x4
c0105398:	02 00                	add    al,BYTE PTR [eax]
c010539a:	00 00                	add    BYTE PTR [eax],al
c010539c:	2e 08 42 2e          	or     BYTE PTR cs:[edx+0x2e],al
c01053a0:	0c 45                	or     al,0x45
c01053a2:	2e 10 02             	adc    BYTE PTR cs:[edx],al
c01053a5:	81 2e 00 41 c5 0c    	sub    DWORD PTR [esi],0xcc54100
c01053ab:	04 04                	add    al,0x4
c01053ad:	00 00                	add    BYTE PTR [eax],al
c01053af:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c01053b2:	00 00                	add    BYTE PTR [eax],al
c01053b4:	64 10 00             	adc    BYTE PTR fs:[eax],al
c01053b7:	00 34 1e             	add    BYTE PTR [esi+ebx*1],dh
c01053ba:	10 c0                	adc    al,al
c01053bc:	12 00                	adc    al,BYTE PTR [eax]
c01053be:	00 00                	add    BYTE PTR [eax],al
c01053c0:	41                   	inc    ecx
c01053c1:	0e                   	push   cs
c01053c2:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c01053c8:	44                   	inc    esp
c01053c9:	0c 04                	or     al,0x4
c01053cb:	04 c5                	add    al,0xc5
c01053cd:	00 00                	add    BYTE PTR [eax],al
c01053cf:	00 38                	add    BYTE PTR [eax],bh
c01053d1:	00 00                	add    BYTE PTR [eax],al
c01053d3:	00 84 10 00 00 48 1e 	add    BYTE PTR [eax+edx*1+0x1e480000],al
c01053da:	10 c0                	adc    al,al
c01053dc:	dd 00                	fld    QWORD PTR [eax]
c01053de:	00 00                	add    BYTE PTR [eax],al
c01053e0:	41                   	inc    ecx
c01053e1:	0e                   	push   cs
c01053e2:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c01053e8:	42                   	inc    edx
c01053e9:	83 04 86 03          	add    DWORD PTR [esi+eax*4],0x3
c01053ed:	02 a5 2e 04 04 01    	add    ah,BYTE PTR [ebp+0x104042e]
c01053f3:	00 00                	add    BYTE PTR [eax],al
c01053f5:	00 2e                	add    BYTE PTR [esi],ch
c01053f7:	08 45 2e             	or     BYTE PTR [ebp+0x2e],al
c01053fa:	0c 42                	or     al,0x42
c01053fc:	2e 10 64 2e 00       	adc    BYTE PTR cs:[esi+ebp*1+0x0],ah
c0105401:	44                   	inc    esp
c0105402:	c3                   	ret    
c0105403:	41                   	inc    ecx
c0105404:	c6 41 0c 04          	mov    BYTE PTR [ecx+0xc],0x4
c0105408:	04 c5                	add    al,0xc5
c010540a:	00 00                	add    BYTE PTR [eax],al
c010540c:	3c 00                	cmp    al,0x0
c010540e:	00 00                	add    BYTE PTR [eax],al
c0105410:	c0 10 00             	rcl    BYTE PTR [eax],0x0
c0105413:	00 25 1f 10 c0 3d    	add    BYTE PTR ds:0x3dc0101f,ah
c0105419:	00 00                	add    BYTE PTR [eax],al
c010541b:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c010541e:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0105424:	42                   	inc    edx
c0105425:	83 03 4e             	add    DWORD PTR [ebx],0x4e
c0105428:	2e 04 04             	cs add al,0x4
c010542b:	05 00 00 00 2e       	add    eax,0x2e000000
c0105430:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c0105433:	0c 45                	or     al,0x45
c0105435:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c0105439:	00 43 2e             	add    BYTE PTR [ebx+0x2e],al
c010543c:	0c 43                	or     al,0x43
c010543e:	2e 10 4b 2e          	adc    BYTE PTR cs:[ebx+0x2e],cl
c0105442:	00 44 c5 0c          	add    BYTE PTR [ebp+eax*8+0xc],al
c0105446:	04 04                	add    al,0x4
c0105448:	c3                   	ret    
c0105449:	00 00                	add    BYTE PTR [eax],al
c010544b:	00 44 00 00          	add    BYTE PTR [eax+eax*1+0x0],al
c010544f:	00 00                	add    BYTE PTR [eax],al
c0105451:	11 00                	adc    DWORD PTR [eax],eax
c0105453:	00 62 1f             	add    BYTE PTR [edx+0x1f],ah
c0105456:	10 c0                	adc    al,al
c0105458:	48                   	dec    eax
c0105459:	00 00                	add    BYTE PTR [eax],al
c010545b:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c010545e:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0105464:	42                   	inc    edx
c0105465:	83 03 4c             	add    DWORD PTR [ebx],0x4c
c0105468:	2e 04 04             	cs add al,0x4
c010546b:	05 00 00 00 2e       	add    eax,0x2e000000
c0105470:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c0105473:	0c 45                	or     al,0x45
c0105475:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c0105479:	00 43 2e             	add    BYTE PTR [ebx+0x2e],al
c010547c:	0c 41                	or     al,0x41
c010547e:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c0105482:	00 4d 0a             	add    BYTE PTR [ebp+0xa],cl
c0105485:	c5 0c 04             	lds    ecx,FWORD PTR [esp+eax*1]
c0105488:	04 c3                	add    al,0xc3
c010548a:	45                   	inc    ebp
c010548b:	0b 44 c5 0c          	or     eax,DWORD PTR [ebp+eax*8+0xc]
c010548f:	04 04                	add    al,0x4
c0105491:	c3                   	ret    
c0105492:	00 00                	add    BYTE PTR [eax],al
c0105494:	4c                   	dec    esp
c0105495:	00 00                	add    BYTE PTR [eax],al
c0105497:	00 48 11             	add    BYTE PTR [eax+0x11],cl
c010549a:	00 00                	add    BYTE PTR [eax],al
c010549c:	aa                   	stos   BYTE PTR es:[edi],al
c010549d:	1f                   	pop    ds
c010549e:	10 c0                	adc    al,al
c01054a0:	59                   	pop    ecx
c01054a1:	00 00                	add    BYTE PTR [eax],al
c01054a3:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c01054a6:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c01054ac:	44                   	inc    esp
c01054ad:	2e 0c 83             	cs or  al,0x83
c01054b0:	03 42 2e             	add    eax,DWORD PTR [edx+0x2e]
c01054b3:	10 48 2e             	adc    BYTE PTR [eax+0x2e],cl
c01054b6:	00 47 2e             	add    BYTE PTR [edi+0x2e],al
c01054b9:	04 04                	add    al,0x4
c01054bb:	01 00                	add    DWORD PTR [eax],eax
c01054bd:	00 00                	add    BYTE PTR [eax],al
c01054bf:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c01054c3:	0c 42                	or     al,0x42
c01054c5:	2e 10 47 2e          	adc    BYTE PTR cs:[edi+0x2e],al
c01054c9:	00 41 2e             	add    BYTE PTR [ecx+0x2e],al
c01054cc:	04 04                	add    al,0x4
c01054ce:	05 00 00 00 2e       	add    eax,0x2e000000
c01054d3:	08 45 2e             	or     BYTE PTR [ebp+0x2e],al
c01054d6:	0c 47                	or     al,0x47
c01054d8:	2e 10 5b 2e          	adc    BYTE PTR cs:[ebx+0x2e],bl
c01054dc:	00 44 c5 0c          	add    BYTE PTR [ebp+eax*8+0xc],al
c01054e0:	04 04                	add    al,0x4
c01054e2:	c3                   	ret    
c01054e3:	00 30                	add    BYTE PTR [eax],dh
c01054e5:	00 00                	add    BYTE PTR [eax],al
c01054e7:	00 98 11 00 00 03    	add    BYTE PTR [eax+0x3000011],bl
c01054ed:	20 10                	and    BYTE PTR [eax],dl
c01054ef:	c0 21 00             	shl    BYTE PTR [ecx],0x0
c01054f2:	00 00                	add    BYTE PTR [eax],al
c01054f4:	41                   	inc    ecx
c01054f5:	0e                   	push   cs
c01054f6:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c01054fc:	43                   	inc    ebx
c01054fd:	2e 0c 42             	cs or  al,0x42
c0105500:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c0105504:	0c 41                	or     al,0x41
c0105506:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c010550a:	0c 47                	or     al,0x47
c010550c:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c0105510:	00 41 c5             	add    BYTE PTR [ecx-0x3b],al
c0105513:	0c 04                	or     al,0x4
c0105515:	04 00                	add    al,0x0
c0105517:	00 ec                	add    ah,ch
c0105519:	00 00                	add    BYTE PTR [eax],al
c010551b:	00 cc                	add    ah,cl
c010551d:	11 00                	adc    DWORD PTR [eax],eax
c010551f:	00 24 20             	add    BYTE PTR [eax+eiz*1],ah
c0105522:	10 c0                	adc    al,al
c0105524:	14 01                	adc    al,0x1
c0105526:	00 00                	add    BYTE PTR [eax],al
c0105528:	41                   	inc    ecx
c0105529:	0e                   	push   cs
c010552a:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0105530:	46                   	inc    esi
c0105531:	2e 0c 83             	cs or  al,0x83
c0105534:	05 86 04 87 03       	add    eax,0x3870486
c0105539:	45                   	inc    ebp
c010553a:	2e 10 4b 2e          	adc    BYTE PTR cs:[ebx+0x2e],cl
c010553e:	04 04                	add    al,0x4
c0105540:	02 00                	add    al,BYTE PTR [eax]
c0105542:	00 00                	add    BYTE PTR [eax],al
c0105544:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c0105548:	0c 43                	or     al,0x43
c010554a:	2e 10 50 2e          	adc    BYTE PTR cs:[eax+0x2e],dl
c010554e:	04 04                	add    al,0x4
c0105550:	01 00                	add    DWORD PTR [eax],eax
c0105552:	00 00                	add    BYTE PTR [eax],al
c0105554:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c0105558:	0c 41                	or     al,0x41
c010555a:	2e 10 4e 2e          	adc    BYTE PTR cs:[esi+0x2e],cl
c010555e:	0c 41                	or     al,0x41
c0105560:	2e 08 48 2e          	or     BYTE PTR cs:[eax+0x2e],cl
c0105564:	0c 42                	or     al,0x42
c0105566:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c010556a:	04 04                	add    al,0x4
c010556c:	02 00                	add    al,BYTE PTR [eax]
c010556e:	00 00                	add    BYTE PTR [eax],al
c0105570:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c0105574:	0c 42                	or     al,0x42
c0105576:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c010557a:	0c 41                	or     al,0x41
c010557c:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c0105580:	0c 42                	or     al,0x42
c0105582:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c0105586:	04 04                	add    al,0x4
c0105588:	02 00                	add    al,BYTE PTR [eax]
c010558a:	00 00                	add    BYTE PTR [eax],al
c010558c:	2e 08 43 2e          	or     BYTE PTR cs:[ebx+0x2e],al
c0105590:	0c 42                	or     al,0x42
c0105592:	2e 10 53 2e          	adc    BYTE PTR cs:[ebx+0x2e],dl
c0105596:	0c 41                	or     al,0x41
c0105598:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c010559c:	0c 45                	or     al,0x45
c010559e:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c01055a2:	00 49 2e             	add    BYTE PTR [ecx+0x2e],cl
c01055a5:	04 04                	add    al,0x4
c01055a7:	05 00 00 00 2e       	add    eax,0x2e000000
c01055ac:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c01055af:	0c 45                	or     al,0x45
c01055b1:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c01055b5:	00 41 2e             	add    BYTE PTR [ecx+0x2e],al
c01055b8:	04 04                	add    al,0x4
c01055ba:	04 00                	add    al,0x0
c01055bc:	00 00                	add    BYTE PTR [eax],al
c01055be:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c01055c2:	0c 45                	or     al,0x45
c01055c4:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c01055c8:	0c 41                	or     al,0x41
c01055ca:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c01055ce:	0c 45                	or     al,0x45
c01055d0:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c01055d4:	00 49 2e             	add    BYTE PTR [ecx+0x2e],cl
c01055d7:	04 04                	add    al,0x4
c01055d9:	05 00 00 00 2e       	add    eax,0x2e000000
c01055de:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c01055e1:	0c 45                	or     al,0x45
c01055e3:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c01055e7:	00 41 2e             	add    BYTE PTR [ecx+0x2e],al
c01055ea:	04 04                	add    al,0x4
c01055ec:	01 00                	add    DWORD PTR [eax],eax
c01055ee:	00 00                	add    BYTE PTR [eax],al
c01055f0:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c01055f4:	0c 45                	or     al,0x45
c01055f6:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c01055fa:	00 47 c3             	add    BYTE PTR [edi-0x3d],al
c01055fd:	41                   	inc    ecx
c01055fe:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c0105602:	0c 04                	or     al,0x4
c0105604:	04 c5                	add    al,0xc5
c0105606:	00 00                	add    BYTE PTR [eax],al
c0105608:	24 00                	and    al,0x0
c010560a:	00 00                	add    BYTE PTR [eax],al
c010560c:	bc 12 00 00 38       	mov    esp,0x38000012
c0105611:	21 10                	and    DWORD PTR [eax],edx
c0105613:	c0 15 00 00 00 41 0e 	rcl    BYTE PTR ds:0x41000000,0xe
c010561a:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0105620:	43                   	inc    ebx
c0105621:	2e 0c 45             	cs or  al,0x45
c0105624:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c0105628:	00 41 c5             	add    BYTE PTR [ecx-0x3b],al
c010562b:	0c 04                	or     al,0x4
c010562d:	04 00                	add    al,0x0
c010562f:	00 3c 00             	add    BYTE PTR [eax+eax*1],bh
c0105632:	00 00                	add    BYTE PTR [eax],al
c0105634:	e4 12                	in     al,0x12
c0105636:	00 00                	add    BYTE PTR [eax],al
c0105638:	4d                   	dec    ebp
c0105639:	21 10                	and    DWORD PTR [eax],edx
c010563b:	c0 3e 00             	sar    BYTE PTR [esi],0x0
c010563e:	00 00                	add    BYTE PTR [eax],al
c0105640:	41                   	inc    ecx
c0105641:	0e                   	push   cs
c0105642:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0105648:	41                   	inc    ecx
c0105649:	86 03                	xchg   BYTE PTR [ebx],al
c010564b:	44                   	inc    esp
c010564c:	83 04 04 06          	add    DWORD PTR [esp+eax*1],0x6
c0105650:	00 00                	add    BYTE PTR [eax],al
c0105652:	00 2e                	add    BYTE PTR [esi],ch
c0105654:	0c 45                	or     al,0x45
c0105656:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c010565a:	0c 41                	or     al,0x41
c010565c:	2e 08 46 2e          	or     BYTE PTR cs:[esi+0x2e],al
c0105660:	0c 44                	or     al,0x44
c0105662:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c0105666:	00 4b c3             	add    BYTE PTR [ebx-0x3d],cl
c0105669:	41                   	inc    ecx
c010566a:	c6 41 0c 04          	mov    BYTE PTR [ecx+0xc],0x4
c010566e:	04 c5                	add    al,0xc5
c0105670:	3c 00                	cmp    al,0x0
c0105672:	00 00                	add    BYTE PTR [eax],al
c0105674:	24 13                	and    al,0x13
c0105676:	00 00                	add    BYTE PTR [eax],al
c0105678:	8b 21                	mov    esp,DWORD PTR [ecx]
c010567a:	10 c0                	adc    al,al
c010567c:	39 00                	cmp    DWORD PTR [eax],eax
c010567e:	00 00                	add    BYTE PTR [eax],al
c0105680:	41                   	inc    ecx
c0105681:	0e                   	push   cs
c0105682:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0105688:	41                   	inc    ecx
c0105689:	86 03                	xchg   BYTE PTR [ebx],al
c010568b:	44                   	inc    esp
c010568c:	83 04 04 06          	add    DWORD PTR [esp+eax*1],0x6
c0105690:	00 00                	add    BYTE PTR [eax],al
c0105692:	00 2e                	add    BYTE PTR [esi],ch
c0105694:	0c 45                	or     al,0x45
c0105696:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c010569a:	0c 41                	or     al,0x41
c010569c:	2e 08 44 2e 0c       	or     BYTE PTR cs:[esi+ebp*1+0xc],al
c01056a1:	41                   	inc    ecx
c01056a2:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c01056a6:	00 4b c3             	add    BYTE PTR [ebx-0x3d],cl
c01056a9:	41                   	inc    ecx
c01056aa:	c6 41 0c 04          	mov    BYTE PTR [ecx+0xc],0x4
c01056ae:	04 c5                	add    al,0xc5
c01056b0:	40                   	inc    eax
c01056b1:	00 00                	add    BYTE PTR [eax],al
c01056b3:	00 64 13 00          	add    BYTE PTR [ebx+edx*1+0x0],ah
c01056b7:	00 c4                	add    ah,al
c01056b9:	21 10                	and    DWORD PTR [eax],edx
c01056bb:	c0 40 00 00          	rol    BYTE PTR [eax+0x0],0x0
c01056bf:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c01056c2:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c01056c8:	46                   	inc    esi
c01056c9:	2e 0c 83             	cs or  al,0x83
c01056cc:	05 86 04 87 03       	add    eax,0x3870486
c01056d1:	4e                   	dec    esi
c01056d2:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c01056d6:	04 04                	add    al,0x4
c01056d8:	01 00                	add    DWORD PTR [eax],eax
c01056da:	00 00                	add    BYTE PTR [eax],al
c01056dc:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c01056e0:	0c 44                	or     al,0x44
c01056e2:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c01056e6:	00 4b c3             	add    BYTE PTR [ebx-0x3d],cl
c01056e9:	41                   	inc    ecx
c01056ea:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c01056ee:	0c 04                	or     al,0x4
c01056f0:	04 c5                	add    al,0xc5
c01056f2:	00 00                	add    BYTE PTR [eax],al
c01056f4:	40                   	inc    eax
c01056f5:	00 00                	add    BYTE PTR [eax],al
c01056f7:	00 a8 13 00 00 04    	add    BYTE PTR [eax+0x4000013],ch
c01056fd:	22 10                	and    dl,BYTE PTR [eax]
c01056ff:	c0 40 00 00          	rol    BYTE PTR [eax+0x0],0x0
c0105703:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c0105706:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010570c:	46                   	inc    esi
c010570d:	2e 0c 83             	cs or  al,0x83
c0105710:	05 86 04 87 03       	add    eax,0x3870486
c0105715:	4e                   	dec    esi
c0105716:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c010571a:	04 04                	add    al,0x4
c010571c:	01 00                	add    DWORD PTR [eax],eax
c010571e:	00 00                	add    BYTE PTR [eax],al
c0105720:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c0105724:	0c 44                	or     al,0x44
c0105726:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c010572a:	00 4b c3             	add    BYTE PTR [ebx-0x3d],cl
c010572d:	41                   	inc    ecx
c010572e:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c0105732:	0c 04                	or     al,0x4
c0105734:	04 c5                	add    al,0xc5
c0105736:	00 00                	add    BYTE PTR [eax],al
c0105738:	3c 00                	cmp    al,0x0
c010573a:	00 00                	add    BYTE PTR [eax],al
c010573c:	ec                   	in     al,dx
c010573d:	13 00                	adc    eax,DWORD PTR [eax]
c010573f:	00 44 22 10          	add    BYTE PTR [edx+eiz*1+0x10],al
c0105743:	c0 66 00 00          	shl    BYTE PTR [esi+0x0],0x0
c0105747:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c010574a:	08 85 02 44 0d 05    	or     BYTE PTR [ebp+0x50d4402],al
c0105750:	48                   	dec    eax
c0105751:	83 05 86 04 87 03 67 	add    DWORD PTR ds:0x3870486,0x67
c0105758:	2e 04 04             	cs add al,0x4
c010575b:	01 00                	add    DWORD PTR [eax],eax
c010575d:	00 00                	add    BYTE PTR [eax],al
c010575f:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c0105763:	0c 42                	or     al,0x42
c0105765:	2e 10 5e 2e          	adc    BYTE PTR cs:[esi+0x2e],bl
c0105769:	00 4c c3 41          	add    BYTE PTR [ebx+eax*8+0x41],cl
c010576d:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c0105771:	0c 04                	or     al,0x4
c0105773:	04 c5                	add    al,0xc5
c0105775:	00 00                	add    BYTE PTR [eax],al
c0105777:	00 3c 00             	add    BYTE PTR [eax+eax*1],bh
c010577a:	00 00                	add    BYTE PTR [eax],al
c010577c:	2c 14                	sub    al,0x14
c010577e:	00 00                	add    BYTE PTR [eax],al
c0105780:	aa                   	stos   BYTE PTR es:[edi],al
c0105781:	22 10                	and    dl,BYTE PTR [eax]
c0105783:	c0 66 00 00          	shl    BYTE PTR [esi+0x0],0x0
c0105787:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c010578a:	08 85 02 44 0d 05    	or     BYTE PTR [ebp+0x50d4402],al
c0105790:	48                   	dec    eax
c0105791:	83 05 86 04 87 03 67 	add    DWORD PTR ds:0x3870486,0x67
c0105798:	2e 04 04             	cs add al,0x4
c010579b:	01 00                	add    DWORD PTR [eax],eax
c010579d:	00 00                	add    BYTE PTR [eax],al
c010579f:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c01057a3:	0c 42                	or     al,0x42
c01057a5:	2e 10 5e 2e          	adc    BYTE PTR cs:[esi+0x2e],bl
c01057a9:	00 4c c3 41          	add    BYTE PTR [ebx+eax*8+0x41],cl
c01057ad:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c01057b1:	0c 04                	or     al,0x4
c01057b3:	04 c5                	add    al,0xc5
c01057b5:	00 00                	add    BYTE PTR [eax],al
c01057b7:	00 2c 00             	add    BYTE PTR [eax+eax*1],ch
c01057ba:	00 00                	add    BYTE PTR [eax],al
c01057bc:	6c                   	ins    BYTE PTR es:[edi],dx
c01057bd:	14 00                	adc    al,0x0
c01057bf:	00 10                	add    BYTE PTR [eax],dl
c01057c1:	23 10                	and    edx,DWORD PTR [eax]
c01057c3:	c0 1e 00             	rcr    BYTE PTR [esi],0x0
c01057c6:	00 00                	add    BYTE PTR [eax],al
c01057c8:	41                   	inc    ecx
c01057c9:	0e                   	push   cs
c01057ca:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c01057d0:	45                   	inc    ebp
c01057d1:	2e 04 04             	cs add al,0x4
c01057d4:	02 00                	add    al,BYTE PTR [eax]
c01057d6:	00 00                	add    BYTE PTR [eax],al
c01057d8:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c01057dc:	0c 45                	or     al,0x45
c01057de:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c01057e2:	00 41 c5             	add    BYTE PTR [ecx-0x3b],al
c01057e5:	0c 04                	or     al,0x4
c01057e7:	04 50                	add    al,0x50
c01057e9:	00 00                	add    BYTE PTR [eax],al
c01057eb:	00 9c 14 00 00 2e 23 	add    BYTE PTR [esp+edx*1+0x232e0000],bl
c01057f2:	10 c0                	adc    al,al
c01057f4:	bf 01 00 00 41       	mov    edi,0x41000001
c01057f9:	0e                   	push   cs
c01057fa:	08 85 02 47 0d 05    	or     BYTE PTR [ebp+0x50d4702],al
c0105800:	46                   	inc    esi
c0105801:	83 03 03             	add    DWORD PTR [ebx],0x3
c0105804:	1d 01 2e 0c 45       	sbb    eax,0x450c2e01
c0105809:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c010580d:	00 45 2e             	add    BYTE PTR [ebp+0x2e],al
c0105810:	04 04                	add    al,0x4
c0105812:	01 00                	add    DWORD PTR [eax],eax
c0105814:	00 00                	add    BYTE PTR [eax],al
c0105816:	2e 08 44 2e 0c       	or     BYTE PTR cs:[esi+ebp*1+0xc],al
c010581b:	45                   	inc    ebp
c010581c:	2e 10 47 2e          	adc    BYTE PTR cs:[edi+0x2e],al
c0105820:	00 02                	add    BYTE PTR [edx],al
c0105822:	5c                   	pop    esp
c0105823:	2e 04 04             	cs add al,0x4
c0105826:	01 00                	add    DWORD PTR [eax],eax
c0105828:	00 00                	add    BYTE PTR [eax],al
c010582a:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c010582e:	0c 42                	or     al,0x42
c0105830:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c0105834:	00 44 c5 0c          	add    BYTE PTR [ebp+eax*8+0xc],al
c0105838:	04 04                	add    al,0x4
c010583a:	c3                   	ret    
c010583b:	00 28                	add    BYTE PTR [eax],ch
c010583d:	00 00                	add    BYTE PTR [eax],al
c010583f:	00 f0                	add    al,dh
c0105841:	14 00                	adc    al,0x0
c0105843:	00 f0                	add    al,dh
c0105845:	24 10                	and    al,0x10
c0105847:	c0 ac 00 00 00 41 0e 	shr    BYTE PTR [eax+eax*1+0xe410000],0x8
c010584e:	08 
c010584f:	85 02                	test   DWORD PTR [edx],eax
c0105851:	42                   	inc    edx
c0105852:	0d 05 42 86 04       	or     eax,0x4864205
c0105857:	87 03                	xchg   DWORD PTR [ebx],eax
c0105859:	49                   	dec    ecx
c010585a:	83 05 02 96 c3 41 c6 	add    DWORD PTR ds:0x41c39602,0xffffffc6
c0105861:	41                   	inc    ecx
c0105862:	c7 41 0c 04 04 c5 1c 	mov    DWORD PTR [ecx+0xc],0x1cc50404
c0105869:	00 00                	add    BYTE PTR [eax],al
c010586b:	00 1c 15 00 00 9c 25 	add    BYTE PTR [edx*1+0x259c0000],bl
c0105872:	10 c0                	adc    al,al
c0105874:	18 00                	sbb    BYTE PTR [eax],al
c0105876:	00 00                	add    BYTE PTR [eax],al
c0105878:	41                   	inc    ecx
c0105879:	0e                   	push   cs
c010587a:	08 85 02 47 0d 05    	or     BYTE PTR [ebp+0x50d4702],al
c0105880:	4f                   	dec    edi
c0105881:	0c 04                	or     al,0x4
c0105883:	04 c5                	add    al,0xc5
c0105885:	00 00                	add    BYTE PTR [eax],al
c0105887:	00 24 00             	add    BYTE PTR [eax+eax*1],ah
c010588a:	00 00                	add    BYTE PTR [eax],al
c010588c:	3c 15                	cmp    al,0x15
c010588e:	00 00                	add    BYTE PTR [eax],al
c0105890:	b4 25                	mov    ah,0x25
c0105892:	10 c0                	adc    al,al
c0105894:	36 00 00             	add    BYTE PTR ss:[eax],al
c0105897:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c010589a:	08 85 02 47 0d 05    	or     BYTE PTR [ebp+0x50d4702],al
c01058a0:	63 0a                	arpl   WORD PTR [edx],cx
c01058a2:	c5 0c 04             	lds    ecx,FWORD PTR [esp+eax*1]
c01058a5:	04 45                	add    al,0x45
c01058a7:	0b 45 c5             	or     eax,DWORD PTR [ebp-0x3b]
c01058aa:	0c 04                	or     al,0x4
c01058ac:	04 00                	add    al,0x0
c01058ae:	00 00                	add    BYTE PTR [eax],al
c01058b0:	2c 00                	sub    al,0x0
c01058b2:	00 00                	add    BYTE PTR [eax],al
c01058b4:	64 15 00 00 ec 25    	fs adc eax,0x25ec0000
c01058ba:	10 c0                	adc    al,al
c01058bc:	1a 00                	sbb    al,BYTE PTR [eax]
c01058be:	00 00                	add    BYTE PTR [eax],al
c01058c0:	41                   	inc    ecx
c01058c1:	0e                   	push   cs
c01058c2:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c01058c8:	43                   	inc    ebx
c01058c9:	2e 04 04             	cs add al,0x4
c01058cc:	05 00 00 00 2e       	add    eax,0x2e000000
c01058d1:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c01058d4:	0c 43                	or     al,0x43
c01058d6:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c01058da:	00 41 c5             	add    BYTE PTR [ecx-0x3b],al
c01058dd:	0c 04                	or     al,0x4
c01058df:	04 1c                	add    al,0x1c
c01058e1:	00 00                	add    BYTE PTR [eax],al
c01058e3:	00 94 15 00 00 06 26 	add    BYTE PTR [ebp+edx*1+0x26060000],dl
c01058ea:	10 c0                	adc    al,al
c01058ec:	23 00                	and    eax,DWORD PTR [eax]
c01058ee:	00 00                	add    BYTE PTR [eax],al
c01058f0:	41                   	inc    ecx
c01058f1:	0e                   	push   cs
c01058f2:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c01058f8:	47                   	inc    edi
c01058f9:	0c 04                	or     al,0x4
c01058fb:	04 c5                	add    al,0xc5
c01058fd:	00 00                	add    BYTE PTR [eax],al
c01058ff:	00 50 00             	add    BYTE PTR [eax+0x0],dl
c0105902:	00 00                	add    BYTE PTR [eax],al
c0105904:	b4 15                	mov    ah,0x15
c0105906:	00 00                	add    BYTE PTR [eax],al
c0105908:	29 26                	sub    DWORD PTR [esi],esp
c010590a:	10 c0                	adc    al,al
c010590c:	be 00 00 00 41       	mov    esi,0x41000000
c0105911:	0e                   	push   cs
c0105912:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0105918:	42                   	inc    edx
c0105919:	86 04 87             	xchg   BYTE PTR [edi+eax*4],al
c010591c:	03 46 83             	add    eax,DWORD PTR [esi-0x7d]
c010591f:	05 5c 2e 04 04       	add    eax,0x4042e5c
c0105924:	05 00 00 00 2e       	add    eax,0x2e000000
c0105929:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c010592c:	0c 45                	or     al,0x45
c010592e:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c0105932:	00 02                	add    BYTE PTR [edx],al
c0105934:	4e                   	dec    esi
c0105935:	2e 04 04             	cs add al,0x4
c0105938:	02 00                	add    al,BYTE PTR [eax]
c010593a:	00 00                	add    BYTE PTR [eax],al
c010593c:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c0105940:	0c 41                	or     al,0x41
c0105942:	2e 10 4b 2e          	adc    BYTE PTR cs:[ebx+0x2e],cl
c0105946:	00 62 c3             	add    BYTE PTR [edx-0x3d],ah
c0105949:	41                   	inc    ecx
c010594a:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c010594e:	0c 04                	or     al,0x4
c0105950:	04 c5                	add    al,0xc5
c0105952:	00 00                	add    BYTE PTR [eax],al
c0105954:	3c 00                	cmp    al,0x0
c0105956:	00 00                	add    BYTE PTR [eax],al
c0105958:	08 16                	or     BYTE PTR [esi],dl
c010595a:	00 00                	add    BYTE PTR [eax],al
c010595c:	e7 26                	out    0x26,eax
c010595e:	10 c0                	adc    al,al
c0105960:	68 00 00 00 41       	push   0x41000000
c0105965:	0e                   	push   cs
c0105966:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010596c:	46                   	inc    esi
c010596d:	83 05 86 04 87 03 53 	add    DWORD PTR ds:0x3870486,0x53
c0105974:	2e 04 04             	cs add al,0x4
c0105977:	05 00 00 00 2e       	add    eax,0x2e000000
c010597c:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c010597f:	0c 45                	or     al,0x45
c0105981:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c0105985:	00 74 c3 41          	add    BYTE PTR [ebx+eax*8+0x41],dh
c0105989:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c010598d:	0c 04                	or     al,0x4
c010598f:	04 c5                	add    al,0xc5
c0105991:	00 00                	add    BYTE PTR [eax],al
c0105993:	00 30                	add    BYTE PTR [eax],dh
c0105995:	00 00                	add    BYTE PTR [eax],al
c0105997:	00 48 16             	add    BYTE PTR [eax+0x16],cl
c010599a:	00 00                	add    BYTE PTR [eax],al
c010599c:	50                   	push   eax
c010599d:	27                   	daa    
c010599e:	10 c0                	adc    al,al
c01059a0:	6a 00                	push   0x0
c01059a2:	00 00                	add    BYTE PTR [eax],al
c01059a4:	41                   	inc    ecx
c01059a5:	0e                   	push   cs
c01059a6:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c01059ac:	46                   	inc    esi
c01059ad:	2e 0c 83             	cs or  al,0x83
c01059b0:	05 86 04 87 03       	add    eax,0x3870486
c01059b5:	4d                   	dec    ebp
c01059b6:	2e 10 4b 2e          	adc    BYTE PTR cs:[ebx+0x2e],cl
c01059ba:	00 02                	add    BYTE PTR [edx],al
c01059bc:	45                   	inc    ebp
c01059bd:	c3                   	ret    
c01059be:	41                   	inc    ecx
c01059bf:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c01059c3:	0c 04                	or     al,0x4
c01059c5:	04 c5                	add    al,0xc5
c01059c7:	00 58 00             	add    BYTE PTR [eax+0x0],bl
c01059ca:	00 00                	add    BYTE PTR [eax],al
c01059cc:	7c 16                	jl     c01059e4 <_edata+0x1694>
c01059ce:	00 00                	add    BYTE PTR [eax],al
c01059d0:	ba 27 10 c0 05       	mov    edx,0x5c01027
c01059d5:	01 00                	add    DWORD PTR [eax],eax
c01059d7:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c01059da:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c01059e0:	46                   	inc    esi
c01059e1:	83 05 86 04 87 03 53 	add    DWORD PTR ds:0x3870486,0x53
c01059e8:	2e 0c 41             	cs or  al,0x41
c01059eb:	2e 10 64 2e 00       	adc    BYTE PTR cs:[esi+ebp*1+0x0],ah
c01059f0:	67 2e 04 04          	addr16 cs add al,0x4
c01059f4:	05 00 00 00 2e       	add    eax,0x2e000000
c01059f9:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c01059fc:	0c 45                	or     al,0x45
c01059fe:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c0105a02:	00 02                	add    BYTE PTR [edx],al
c0105a04:	64 2e 0c 41          	fs cs or al,0x41
c0105a08:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c0105a0c:	00 4a 2e             	add    BYTE PTR [edx+0x2e],cl
c0105a0f:	0c 43                	or     al,0x43
c0105a11:	2e 10 4b c3          	adc    BYTE PTR cs:[ebx-0x3d],cl
c0105a15:	41                   	inc    ecx
c0105a16:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c0105a1a:	0c 04                	or     al,0x4
c0105a1c:	04 c5                	add    al,0xc5
c0105a1e:	41                   	inc    ecx
c0105a1f:	13 03                	adc    eax,DWORD PTR [ebx]
c0105a21:	2e 00 00             	add    BYTE PTR cs:[eax],al
c0105a24:	58                   	pop    eax
c0105a25:	00 00                	add    BYTE PTR [eax],al
c0105a27:	00 d8                	add    al,bl
c0105a29:	16                   	push   ss
c0105a2a:	00 00                	add    BYTE PTR [eax],al
c0105a2c:	bf 28 10 c0 01       	mov    edi,0x1c01028
c0105a31:	01 00                	add    DWORD PTR [eax],eax
c0105a33:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c0105a36:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0105a3c:	46                   	inc    esi
c0105a3d:	83 05 86 04 87 03 69 	add    DWORD PTR ds:0x3870486,0x69
c0105a44:	2e 04 04             	cs add al,0x4
c0105a47:	05 00 00 00 2e       	add    eax,0x2e000000
c0105a4c:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c0105a4f:	0c 45                	or     al,0x45
c0105a51:	2e 10 47 2e          	adc    BYTE PTR cs:[edi+0x2e],al
c0105a55:	00 43 2e             	add    BYTE PTR [ebx+0x2e],al
c0105a58:	0c 41                	or     al,0x41
c0105a5a:	2e 10 64 2e 00       	adc    BYTE PTR cs:[esi+ebp*1+0x0],ah
c0105a5f:	02 71 2e             	add    dh,BYTE PTR [ecx+0x2e]
c0105a62:	0c 41                	or     al,0x41
c0105a64:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c0105a68:	00 4a 2e             	add    BYTE PTR [edx+0x2e],cl
c0105a6b:	0c 41                	or     al,0x41
c0105a6d:	2e 10 4b c3          	adc    BYTE PTR cs:[ebx-0x3d],cl
c0105a71:	41                   	inc    ecx
c0105a72:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c0105a76:	0c 04                	or     al,0x4
c0105a78:	04 c5                	add    al,0xc5
c0105a7a:	41                   	inc    ecx
c0105a7b:	13 03                	adc    eax,DWORD PTR [ebx]
c0105a7d:	2e 00 00             	add    BYTE PTR cs:[eax],al
c0105a80:	1c 00                	sbb    al,0x0
c0105a82:	00 00                	add    BYTE PTR [eax],al
c0105a84:	34 17                	xor    al,0x17
c0105a86:	00 00                	add    BYTE PTR [eax],al
c0105a88:	c0 29 10             	shr    BYTE PTR [ecx],0x10
c0105a8b:	c0 14 00 00          	rcl    BYTE PTR [eax+eax*1],0x0
c0105a8f:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c0105a92:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0105a98:	44                   	inc    esp
c0105a99:	0c 04                	or     al,0x4
c0105a9b:	04 c5                	add    al,0xc5
c0105a9d:	00 00                	add    BYTE PTR [eax],al
c0105a9f:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c0105aa2:	00 00                	add    BYTE PTR [eax],al
c0105aa4:	54                   	push   esp
c0105aa5:	17                   	pop    ss
c0105aa6:	00 00                	add    BYTE PTR [eax],al
c0105aa8:	d4 29                	aam    0x29
c0105aaa:	10 c0                	adc    al,al
c0105aac:	12 00                	adc    al,BYTE PTR [eax]
c0105aae:	00 00                	add    BYTE PTR [eax],al
c0105ab0:	41                   	inc    ecx
c0105ab1:	0e                   	push   cs
c0105ab2:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0105ab8:	44                   	inc    esp
c0105ab9:	0c 04                	or     al,0x4
c0105abb:	04 c5                	add    al,0xc5
c0105abd:	00 00                	add    BYTE PTR [eax],al
c0105abf:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c0105ac2:	00 00                	add    BYTE PTR [eax],al
c0105ac4:	74 17                	je     c0105add <_edata+0x178d>
c0105ac6:	00 00                	add    BYTE PTR [eax],al
c0105ac8:	e8 29 10 c0 1e       	call   ded06af6 <_kernel_end+0x1ebe7cae>
c0105acd:	00 00                	add    BYTE PTR [eax],al
c0105acf:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c0105ad2:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0105ad8:	5a                   	pop    edx
c0105ad9:	0c 04                	or     al,0x4
c0105adb:	04 c5                	add    al,0xc5
c0105add:	00 00                	add    BYTE PTR [eax],al
c0105adf:	00 28                	add    BYTE PTR [eax],ch
c0105ae1:	00 00                	add    BYTE PTR [eax],al
c0105ae3:	00 94 17 00 00 06 2a 	add    BYTE PTR [edi+edx*1+0x2a060000],dl
c0105aea:	10 c0                	adc    al,al
c0105aec:	29 00                	sub    DWORD PTR [eax],eax
c0105aee:	00 00                	add    BYTE PTR [eax],al
c0105af0:	41                   	inc    ecx
c0105af1:	0e                   	push   cs
c0105af2:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0105af8:	41                   	inc    ecx
c0105af9:	86 03                	xchg   BYTE PTR [ebx],al
c0105afb:	44                   	inc    esp
c0105afc:	83 04 04 1a          	add    DWORD PTR [esp+eax*1],0x1a
c0105b00:	00 00                	add    BYTE PTR [eax],al
c0105b02:	00 c3                	add    bl,al
c0105b04:	41                   	inc    ecx
c0105b05:	c6 41 0c 04          	mov    BYTE PTR [ecx+0xc],0x4
c0105b09:	04 c5                	add    al,0xc5
c0105b0b:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c0105b0e:	00 00                	add    BYTE PTR [eax],al
c0105b10:	c0 17 00             	rcl    BYTE PTR [edi],0x0
c0105b13:	00 2f                	add    BYTE PTR [edi],ch
c0105b15:	2a 10                	sub    dl,BYTE PTR [eax]
c0105b17:	c0 18 00             	rcr    BYTE PTR [eax],0x0
c0105b1a:	00 00                	add    BYTE PTR [eax],al
c0105b1c:	41                   	inc    ecx
c0105b1d:	0e                   	push   cs
c0105b1e:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0105b24:	50                   	push   eax
c0105b25:	0c 04                	or     al,0x4
c0105b27:	04 c5                	add    al,0xc5
c0105b29:	00 00                	add    BYTE PTR [eax],al
c0105b2b:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c0105b2e:	00 00                	add    BYTE PTR [eax],al
c0105b30:	e0 17                	loopne c0105b49 <_edata+0x17f9>
c0105b32:	00 00                	add    BYTE PTR [eax],al
c0105b34:	47                   	inc    edi
c0105b35:	2a 10                	sub    dl,BYTE PTR [eax]
c0105b37:	c0 18 00             	rcr    BYTE PTR [eax],0x0
c0105b3a:	00 00                	add    BYTE PTR [eax],al
c0105b3c:	41                   	inc    ecx
c0105b3d:	0e                   	push   cs
c0105b3e:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0105b44:	50                   	push   eax
c0105b45:	0c 04                	or     al,0x4
c0105b47:	04 c5                	add    al,0xc5
c0105b49:	00 00                	add    BYTE PTR [eax],al
c0105b4b:	00 20                	add    BYTE PTR [eax],ah
c0105b4d:	00 00                	add    BYTE PTR [eax],al
c0105b4f:	00 00                	add    BYTE PTR [eax],al
c0105b51:	18 00                	sbb    BYTE PTR [eax],al
c0105b53:	00 5f 2a             	add    BYTE PTR [edi+0x2a],bl
c0105b56:	10 c0                	adc    al,al
c0105b58:	27                   	daa    
c0105b59:	00 00                	add    BYTE PTR [eax],al
c0105b5b:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c0105b5e:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0105b64:	42                   	inc    edx
c0105b65:	83 03 5c             	add    DWORD PTR [ebx],0x5c
c0105b68:	c3                   	ret    
c0105b69:	41                   	inc    ecx
c0105b6a:	0c 04                	or     al,0x4
c0105b6c:	04 c5                	add    al,0xc5
c0105b6e:	00 00                	add    BYTE PTR [eax],al
c0105b70:	28 00                	sub    BYTE PTR [eax],al
c0105b72:	00 00                	add    BYTE PTR [eax],al
c0105b74:	24 18                	and    al,0x18
c0105b76:	00 00                	add    BYTE PTR [eax],al
c0105b78:	86 2a                	xchg   BYTE PTR [edx],ch
c0105b7a:	10 c0                	adc    al,al
c0105b7c:	1a 00                	sbb    al,BYTE PTR [eax]
c0105b7e:	00 00                	add    BYTE PTR [eax],al
c0105b80:	41                   	inc    ecx
c0105b81:	0e                   	push   cs
c0105b82:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0105b88:	44                   	inc    esp
c0105b89:	2e 0c 83             	cs or  al,0x83
c0105b8c:	03 47 2e             	add    eax,DWORD PTR [edi+0x2e]
c0105b8f:	10 4b c5             	adc    BYTE PTR [ebx-0x3b],cl
c0105b92:	0c 04                	or     al,0x4
c0105b94:	04 c3                	add    al,0xc3
c0105b96:	41                   	inc    ecx
c0105b97:	13 03                	adc    eax,DWORD PTR [ebx]
c0105b99:	2e 00 00             	add    BYTE PTR cs:[eax],al
c0105b9c:	1c 00                	sbb    al,0x0
c0105b9e:	00 00                	add    BYTE PTR [eax],al
c0105ba0:	50                   	push   eax
c0105ba1:	18 00                	sbb    BYTE PTR [eax],al
c0105ba3:	00 a0 2a 10 c0 27    	add    BYTE PTR [eax+0x27c0102a],ah
c0105ba9:	00 00                	add    BYTE PTR [eax],al
c0105bab:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c0105bae:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0105bb4:	63 0c 04             	arpl   WORD PTR [esp+eax*1],cx
c0105bb7:	04 c5                	add    al,0xc5
c0105bb9:	00 00                	add    BYTE PTR [eax],al
c0105bbb:	00 3c 00             	add    BYTE PTR [eax+eax*1],bh
c0105bbe:	00 00                	add    BYTE PTR [eax],al
c0105bc0:	70 18                	jo     c0105bda <_edata+0x188a>
c0105bc2:	00 00                	add    BYTE PTR [eax],al
c0105bc4:	c7                   	(bad)  
c0105bc5:	2a 10                	sub    dl,BYTE PTR [eax]
c0105bc7:	c0 38 00             	sar    BYTE PTR [eax],0x0
c0105bca:	00 00                	add    BYTE PTR [eax],al
c0105bcc:	41                   	inc    ecx
c0105bcd:	0e                   	push   cs
c0105bce:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0105bd4:	46                   	inc    esi
c0105bd5:	83 05 86 04 87 03 4f 	add    DWORD PTR ds:0x3870486,0x4f
c0105bdc:	2e 04 04             	cs add al,0x4
c0105bdf:	01 00                	add    DWORD PTR [eax],eax
c0105be1:	00 00                	add    BYTE PTR [eax],al
c0105be3:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c0105be7:	0c 41                	or     al,0x41
c0105be9:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c0105bed:	00 53 c3             	add    BYTE PTR [ebx-0x3d],dl
c0105bf0:	41                   	inc    ecx
c0105bf1:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c0105bf5:	0c 04                	or     al,0x4
c0105bf7:	04 c5                	add    al,0xc5
c0105bf9:	00 00                	add    BYTE PTR [eax],al
c0105bfb:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c0105bfe:	00 00                	add    BYTE PTR [eax],al
c0105c00:	b0 18                	mov    al,0x18
c0105c02:	00 00                	add    BYTE PTR [eax],al
c0105c04:	ff 2a                	jmp    FWORD PTR [edx]
c0105c06:	10 c0                	adc    al,al
c0105c08:	1a 00                	sbb    al,BYTE PTR [eax]
c0105c0a:	00 00                	add    BYTE PTR [eax],al
c0105c0c:	41                   	inc    ecx
c0105c0d:	0e                   	push   cs
c0105c0e:	08 85 02 44 0d 05    	or     BYTE PTR [ebp+0x50d4402],al
c0105c14:	54                   	push   esp
c0105c15:	0c 04                	or     al,0x4
c0105c17:	04 c5                	add    al,0xc5
c0105c19:	00 00                	add    BYTE PTR [eax],al
c0105c1b:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c0105c1e:	00 00                	add    BYTE PTR [eax],al
c0105c20:	d0 18                	rcr    BYTE PTR [eax],1
c0105c22:	00 00                	add    BYTE PTR [eax],al
c0105c24:	19 2b                	sbb    DWORD PTR [ebx],ebp
c0105c26:	10 c0                	adc    al,al
c0105c28:	14 00                	adc    al,0x0
c0105c2a:	00 00                	add    BYTE PTR [eax],al
c0105c2c:	41                   	inc    ecx
c0105c2d:	0e                   	push   cs
c0105c2e:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0105c34:	44                   	inc    esp
c0105c35:	0c 04                	or     al,0x4
c0105c37:	04 c5                	add    al,0xc5
c0105c39:	00 00                	add    BYTE PTR [eax],al
c0105c3b:	00 28                	add    BYTE PTR [eax],ch
c0105c3d:	00 00                	add    BYTE PTR [eax],al
c0105c3f:	00 f0                	add    al,dh
c0105c41:	18 00                	sbb    BYTE PTR [eax],al
c0105c43:	00 30                	add    BYTE PTR [eax],dh
c0105c45:	2b 10                	sub    edx,DWORD PTR [eax]
c0105c47:	c0 5f 00 00          	rcr    BYTE PTR [edi+0x0],0x0
c0105c4b:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c0105c4e:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0105c54:	45                   	inc    ebp
c0105c55:	86 04 87             	xchg   BYTE PTR [edi+eax*4],al
c0105c58:	03 44 83 05          	add    eax,DWORD PTR [ebx+eax*4+0x5]
c0105c5c:	02 4f c3             	add    cl,BYTE PTR [edi-0x3d]
c0105c5f:	41                   	inc    ecx
c0105c60:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c0105c64:	0c 04                	or     al,0x4
c0105c66:	04 c5                	add    al,0xc5
c0105c68:	28 00                	sub    BYTE PTR [eax],al
c0105c6a:	00 00                	add    BYTE PTR [eax],al
c0105c6c:	1c 19                	sbb    al,0x19
c0105c6e:	00 00                	add    BYTE PTR [eax],al
c0105c70:	8f                   	(bad)  
c0105c71:	2b 10                	sub    edx,DWORD PTR [eax]
c0105c73:	c0 44 00 00 00       	rol    BYTE PTR [eax+eax*1+0x0],0x0
c0105c78:	41                   	inc    ecx
c0105c79:	0e                   	push   cs
c0105c7a:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0105c80:	44                   	inc    esp
c0105c81:	86 03                	xchg   BYTE PTR [ebx],al
c0105c83:	47                   	inc    edi
c0105c84:	83 04 04 33          	add    DWORD PTR [esp+eax*1],0x33
c0105c88:	00 00                	add    BYTE PTR [eax],al
c0105c8a:	00 c3                	add    bl,al
c0105c8c:	41                   	inc    ecx
c0105c8d:	c6 41 0c 04          	mov    BYTE PTR [ecx+0xc],0x4
c0105c91:	04 c5                	add    al,0xc5
c0105c93:	00 20                	add    BYTE PTR [eax],ah
c0105c95:	00 00                	add    BYTE PTR [eax],al
c0105c97:	00 48 19             	add    BYTE PTR [eax+0x19],cl
c0105c9a:	00 00                	add    BYTE PTR [eax],al
c0105c9c:	d3 2b                	shr    DWORD PTR [ebx],cl
c0105c9e:	10 c0                	adc    al,al
c0105ca0:	3c 00                	cmp    al,0x0
c0105ca2:	00 00                	add    BYTE PTR [eax],al
c0105ca4:	41                   	inc    ecx
c0105ca5:	0e                   	push   cs
c0105ca6:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0105cac:	41                   	inc    ecx
c0105cad:	83 03 76             	add    DWORD PTR [ebx],0x76
c0105cb0:	c3                   	ret    
c0105cb1:	41                   	inc    ecx
c0105cb2:	0c 04                	or     al,0x4
c0105cb4:	04 c5                	add    al,0xc5
c0105cb6:	00 00                	add    BYTE PTR [eax],al
c0105cb8:	20 00                	and    BYTE PTR [eax],al
c0105cba:	00 00                	add    BYTE PTR [eax],al
c0105cbc:	6c                   	ins    BYTE PTR es:[edi],dx
c0105cbd:	19 00                	sbb    DWORD PTR [eax],eax
c0105cbf:	00 0f                	add    BYTE PTR [edi],cl
c0105cc1:	2c 10                	sub    al,0x10
c0105cc3:	c0 2e 00             	shr    BYTE PTR [esi],0x0
c0105cc6:	00 00                	add    BYTE PTR [eax],al
c0105cc8:	41                   	inc    ecx
c0105cc9:	0e                   	push   cs
c0105cca:	08 85 02 47 0d 05    	or     BYTE PTR [ebp+0x50d4702],al
c0105cd0:	46                   	inc    esi
c0105cd1:	83 03 5e             	add    DWORD PTR [ebx],0x5e
c0105cd4:	c3                   	ret    
c0105cd5:	41                   	inc    ecx
c0105cd6:	0c 04                	or     al,0x4
c0105cd8:	04 c5                	add    al,0xc5
c0105cda:	00 00                	add    BYTE PTR [eax],al
c0105cdc:	1c 00                	sbb    al,0x0
c0105cde:	00 00                	add    BYTE PTR [eax],al
c0105ce0:	90                   	nop
c0105ce1:	19 00                	sbb    DWORD PTR [eax],eax
c0105ce3:	00 3d 2c 10 c0 27    	add    BYTE PTR ds:0x27c0102c,bh
c0105ce9:	00 00                	add    BYTE PTR [eax],al
c0105ceb:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c0105cee:	08 85 02 47 0d 05    	or     BYTE PTR [ebp+0x50d4702],al
c0105cf4:	5e                   	pop    esi
c0105cf5:	0c 04                	or     al,0x4
c0105cf7:	04 c5                	add    al,0xc5
c0105cf9:	00 00                	add    BYTE PTR [eax],al
c0105cfb:	00 2c 00             	add    BYTE PTR [eax+eax*1],ch
c0105cfe:	00 00                	add    BYTE PTR [eax],al
c0105d00:	b0 19                	mov    al,0x19
c0105d02:	00 00                	add    BYTE PTR [eax],al
c0105d04:	64 2c 10             	fs sub al,0x10
c0105d07:	c0 a1 00 00 00 41 0e 	shl    BYTE PTR [ecx+0x41000000],0xe
c0105d0e:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0105d14:	42                   	inc    edx
c0105d15:	83 03 02             	add    DWORD PTR [ebx],0x2
c0105d18:	92                   	xchg   edx,eax
c0105d19:	0a c3                	or     al,bl
c0105d1b:	41                   	inc    ecx
c0105d1c:	0c 04                	or     al,0x4
c0105d1e:	04 c5                	add    al,0xc5
c0105d20:	45                   	inc    ebp
c0105d21:	0b 42 c3             	or     eax,DWORD PTR [edx-0x3d]
c0105d24:	41                   	inc    ecx
c0105d25:	0c 04                	or     al,0x4
c0105d27:	04 c5                	add    al,0xc5
c0105d29:	00 00                	add    BYTE PTR [eax],al
c0105d2b:	00 3c 00             	add    BYTE PTR [eax+eax*1],bh
c0105d2e:	00 00                	add    BYTE PTR [eax],al
c0105d30:	e0 19                	loopne c0105d4b <_edata+0x19fb>
c0105d32:	00 00                	add    BYTE PTR [eax],al
c0105d34:	05 2d 10 c0 28       	add    eax,0x28c0102d
c0105d39:	00 00                	add    BYTE PTR [eax],al
c0105d3b:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c0105d3e:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0105d44:	41                   	inc    ecx
c0105d45:	86 03                	xchg   BYTE PTR [ebx],al
c0105d47:	45                   	inc    ebp
c0105d48:	83 04 04 0a          	add    DWORD PTR [esp+eax*1],0xa
c0105d4c:	00 00                	add    BYTE PTR [eax],al
c0105d4e:	00 2e                	add    BYTE PTR [esi],ch
c0105d50:	04 04                	add    al,0x4
c0105d52:	01 00                	add    DWORD PTR [eax],eax
c0105d54:	00 00                	add    BYTE PTR [eax],al
c0105d56:	2e 08 46 2e          	or     BYTE PTR cs:[esi+0x2e],al
c0105d5a:	04 04                	add    al,0x4
c0105d5c:	01 00                	add    DWORD PTR [eax],eax
c0105d5e:	00 00                	add    BYTE PTR [eax],al
c0105d60:	2e 00 4a c3          	add    BYTE PTR cs:[edx-0x3d],cl
c0105d64:	41                   	inc    ecx
c0105d65:	c6 41 0c 04          	mov    BYTE PTR [ecx+0xc],0x4
c0105d69:	04 c5                	add    al,0xc5
c0105d6b:	00 38                	add    BYTE PTR [eax],bh
c0105d6d:	00 00                	add    BYTE PTR [eax],al
c0105d6f:	00 20                	add    BYTE PTR [eax],ah
c0105d71:	1a 00                	sbb    al,BYTE PTR [eax]
c0105d73:	00 2d 2d 10 c0 3a    	add    BYTE PTR ds:0x3ac0102d,ch
c0105d79:	00 00                	add    BYTE PTR [eax],al
c0105d7b:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c0105d7e:	08 85 02 44 0d 05    	or     BYTE PTR [ebp+0x50d4402],al
c0105d84:	47                   	inc    edi
c0105d85:	83 04 87 03          	add    DWORD PTR [edi+eax*4],0x3
c0105d89:	51                   	push   ecx
c0105d8a:	2e 04 04             	cs add al,0x4
c0105d8d:	04 00                	add    al,0x0
c0105d8f:	00 00                	add    BYTE PTR [eax],al
c0105d91:	2e 08 43 2e          	or     BYTE PTR cs:[ebx+0x2e],al
c0105d95:	0c 46                	or     al,0x46
c0105d97:	2e 10 41 2e          	adc    BYTE PTR cs:[ecx+0x2e],al
c0105d9b:	14 48                	adc    al,0x48
c0105d9d:	2e 00 44 c3 41       	add    BYTE PTR cs:[ebx+eax*8+0x41],al
c0105da2:	c7 41 0c 04 04 c5 38 	mov    DWORD PTR [ecx+0xc],0x38c50404
c0105da9:	00 00                	add    BYTE PTR [eax],al
c0105dab:	00 5c 1a 00          	add    BYTE PTR [edx+ebx*1+0x0],bl
c0105daf:	00 67 2d             	add    BYTE PTR [edi+0x2d],ah
c0105db2:	10 c0                	adc    al,al
c0105db4:	3a 00                	cmp    al,BYTE PTR [eax]
c0105db6:	00 00                	add    BYTE PTR [eax],al
c0105db8:	41                   	inc    ecx
c0105db9:	0e                   	push   cs
c0105dba:	08 85 02 44 0d 05    	or     BYTE PTR [ebp+0x50d4402],al
c0105dc0:	47                   	inc    edi
c0105dc1:	83 04 87 03          	add    DWORD PTR [edi+eax*4],0x3
c0105dc5:	51                   	push   ecx
c0105dc6:	2e 04 04             	cs add al,0x4
c0105dc9:	04 00                	add    al,0x0
c0105dcb:	00 00                	add    BYTE PTR [eax],al
c0105dcd:	2e 08 43 2e          	or     BYTE PTR cs:[ebx+0x2e],al
c0105dd1:	0c 46                	or     al,0x46
c0105dd3:	2e 10 41 2e          	adc    BYTE PTR cs:[ecx+0x2e],al
c0105dd7:	14 48                	adc    al,0x48
c0105dd9:	2e 00 44 c3 41       	add    BYTE PTR cs:[ebx+eax*8+0x41],al
c0105dde:	c7 41 0c 04 04 c5 38 	mov    DWORD PTR [ecx+0xc],0x38c50404
c0105de5:	00 00                	add    BYTE PTR [eax],al
c0105de7:	00 98 1a 00 00 a4    	add    BYTE PTR [eax-0x5bffffe6],bl
c0105ded:	2d 10 c0 47 00       	sub    eax,0x47c010
c0105df2:	00 00                	add    BYTE PTR [eax],al
c0105df4:	41                   	inc    ecx
c0105df5:	0e                   	push   cs
c0105df6:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0105dfc:	45                   	inc    ebp
c0105dfd:	83 04 86 03          	add    DWORD PTR [esi+eax*4],0x3
c0105e01:	52                   	push   edx
c0105e02:	2e 04 04             	cs add al,0x4
c0105e05:	05 00 00 00 2e       	add    eax,0x2e000000
c0105e0a:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c0105e0d:	0c 45                	or     al,0x45
c0105e0f:	2e 10 4e 2e          	adc    BYTE PTR cs:[esi+0x2e],cl
c0105e13:	00 50 c3             	add    BYTE PTR [eax-0x3d],dl
c0105e16:	41                   	inc    ecx
c0105e17:	c6 41 0c 04          	mov    BYTE PTR [ecx+0xc],0x4
c0105e1b:	04 c5                	add    al,0xc5
c0105e1d:	00 00                	add    BYTE PTR [eax],al
c0105e1f:	00 3c 00             	add    BYTE PTR [eax+eax*1],bh
c0105e22:	00 00                	add    BYTE PTR [eax],al
c0105e24:	d4 1a                	aam    0x1a
c0105e26:	00 00                	add    BYTE PTR [eax],al
c0105e28:	eb 2d                	jmp    c0105e57 <_edata+0x1b07>
c0105e2a:	10 c0                	adc    al,al
c0105e2c:	4a                   	dec    edx
c0105e2d:	00 00                	add    BYTE PTR [eax],al
c0105e2f:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c0105e32:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0105e38:	46                   	inc    esi
c0105e39:	83 05 86 04 87 03 56 	add    DWORD PTR ds:0x3870486,0x56
c0105e40:	2e 04 04             	cs add al,0x4
c0105e43:	05 00 00 00 2e       	add    eax,0x2e000000
c0105e48:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c0105e4b:	0c 45                	or     al,0x45
c0105e4d:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c0105e51:	00 53 c3             	add    BYTE PTR [ebx-0x3d],dl
c0105e54:	41                   	inc    ecx
c0105e55:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c0105e59:	0c 04                	or     al,0x4
c0105e5b:	04 c5                	add    al,0xc5
c0105e5d:	00 00                	add    BYTE PTR [eax],al
c0105e5f:	00 3c 00             	add    BYTE PTR [eax+eax*1],bh
c0105e62:	00 00                	add    BYTE PTR [eax],al
c0105e64:	14 1b                	adc    al,0x1b
c0105e66:	00 00                	add    BYTE PTR [eax],al
c0105e68:	35 2e 10 c0 42       	xor    eax,0x42c0102e
c0105e6d:	00 00                	add    BYTE PTR [eax],al
c0105e6f:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c0105e72:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0105e78:	41                   	inc    ecx
c0105e79:	86 03                	xchg   BYTE PTR [ebx],al
c0105e7b:	44                   	inc    esp
c0105e7c:	83 04 04 10          	add    DWORD PTR [esp+eax*1],0x10
c0105e80:	00 00                	add    BYTE PTR [eax],al
c0105e82:	00 2e                	add    BYTE PTR [esi],ch
c0105e84:	04 04                	add    al,0x4
c0105e86:	05 00 00 00 2e       	add    eax,0x2e000000
c0105e8b:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c0105e8e:	0c 45                	or     al,0x45
c0105e90:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c0105e94:	00 53 c3             	add    BYTE PTR [ebx-0x3d],dl
c0105e97:	41                   	inc    ecx
c0105e98:	c6 41 0c 04          	mov    BYTE PTR [ecx+0xc],0x4
c0105e9c:	04 c5                	add    al,0xc5
c0105e9e:	00 00                	add    BYTE PTR [eax],al
c0105ea0:	20 00                	and    BYTE PTR [eax],al
c0105ea2:	00 00                	add    BYTE PTR [eax],al
c0105ea4:	54                   	push   esp
c0105ea5:	1b 00                	sbb    eax,DWORD PTR [eax]
c0105ea7:	00 77 2e             	add    BYTE PTR [edi+0x2e],dh
c0105eaa:	10 c0                	adc    al,al
c0105eac:	1a 00                	sbb    al,BYTE PTR [eax]
c0105eae:	00 00                	add    BYTE PTR [eax],al
c0105eb0:	41                   	inc    ecx
c0105eb1:	0e                   	push   cs
c0105eb2:	08 85 02 44 0d 05    	or     BYTE PTR [ebp+0x50d4402],al
c0105eb8:	44                   	inc    esp
c0105eb9:	83 03 4f             	add    DWORD PTR [ebx],0x4f
c0105ebc:	c3                   	ret    
c0105ebd:	41                   	inc    ecx
c0105ebe:	0c 04                	or     al,0x4
c0105ec0:	04 c5                	add    al,0xc5
c0105ec2:	00 00                	add    BYTE PTR [eax],al
c0105ec4:	1c 00                	sbb    al,0x0
c0105ec6:	00 00                	add    BYTE PTR [eax],al
c0105ec8:	78 1b                	js     c0105ee5 <_edata+0x1b95>
c0105eca:	00 00                	add    BYTE PTR [eax],al
c0105ecc:	91                   	xchg   ecx,eax
c0105ecd:	2e 10 c0             	cs adc al,al
c0105ed0:	13 00                	adc    eax,DWORD PTR [eax]
c0105ed2:	00 00                	add    BYTE PTR [eax],al
c0105ed4:	41                   	inc    ecx
c0105ed5:	0e                   	push   cs
c0105ed6:	08 85 02 44 0d 05    	or     BYTE PTR [ebp+0x50d4402],al
c0105edc:	4d                   	dec    ebp
c0105edd:	0c 04                	or     al,0x4
c0105edf:	04 c5                	add    al,0xc5
c0105ee1:	00 00                	add    BYTE PTR [eax],al
c0105ee3:	00 90 00 00 00 98    	add    BYTE PTR [eax-0x68000000],dl
c0105ee9:	1b 00                	sbb    eax,DWORD PTR [eax]
c0105eeb:	00 a4 2e 10 c0 a0 01 	add    BYTE PTR [esi+ebp*1+0x1a0c010],ah
c0105ef2:	00 00                	add    BYTE PTR [eax],al
c0105ef4:	41                   	inc    ecx
c0105ef5:	0e                   	push   cs
c0105ef6:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0105efc:	46                   	inc    esi
c0105efd:	83 05 86 04 87 03 02 	add    DWORD PTR ds:0x3870486,0x2
c0105f04:	cf                   	iret   
c0105f05:	2e 04 04             	cs add al,0x4
c0105f08:	02 00                	add    al,BYTE PTR [eax]
c0105f0a:	00 00                	add    BYTE PTR [eax],al
c0105f0c:	2e 08 42 2e          	or     BYTE PTR cs:[edx+0x2e],al
c0105f10:	00 47 2e             	add    BYTE PTR [edi+0x2e],al
c0105f13:	04 04                	add    al,0x4
c0105f15:	02 00                	add    al,BYTE PTR [eax]
c0105f17:	00 00                	add    BYTE PTR [eax],al
c0105f19:	2e 08 42 2e          	or     BYTE PTR cs:[edx+0x2e],al
c0105f1d:	00 46 2e             	add    BYTE PTR [esi+0x2e],al
c0105f20:	04 04                	add    al,0x4
c0105f22:	01 00                	add    DWORD PTR [eax],eax
c0105f24:	00 00                	add    BYTE PTR [eax],al
c0105f26:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c0105f2a:	0c 41                	or     al,0x41
c0105f2c:	2e 10 54 2e 00       	adc    BYTE PTR cs:[esi+ebp*1+0x0],dl
c0105f31:	44                   	inc    esp
c0105f32:	2e 04 04             	cs add al,0x4
c0105f35:	02 00                	add    al,BYTE PTR [eax]
c0105f37:	00 00                	add    BYTE PTR [eax],al
c0105f39:	2e 08 47 2e          	or     BYTE PTR cs:[edi+0x2e],al
c0105f3d:	0c 42                	or     al,0x42
c0105f3f:	2e 10 4b 2e          	adc    BYTE PTR cs:[ebx+0x2e],cl
c0105f43:	00 43 2e             	add    BYTE PTR [ebx+0x2e],al
c0105f46:	0c 44                	or     al,0x44
c0105f48:	2e 10 4b 2e          	adc    BYTE PTR cs:[ebx+0x2e],cl
c0105f4c:	00 60 2e             	add    BYTE PTR [eax+0x2e],ah
c0105f4f:	04 04                	add    al,0x4
c0105f51:	01 00                	add    DWORD PTR [eax],eax
c0105f53:	00 00                	add    BYTE PTR [eax],al
c0105f55:	2e 08 44 2e 0c       	or     BYTE PTR cs:[esi+ebp*1+0xc],al
c0105f5a:	41                   	inc    ecx
c0105f5b:	2e 10 56 2e          	adc    BYTE PTR cs:[esi+0x2e],dl
c0105f5f:	00 64 2e 0c          	add    BYTE PTR [esi+ebp*1+0xc],ah
c0105f63:	43                   	inc    ebx
c0105f64:	2e 10 49 c3          	adc    BYTE PTR cs:[ecx-0x3d],cl
c0105f68:	41                   	inc    ecx
c0105f69:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c0105f6d:	0c 04                	or     al,0x4
c0105f6f:	04 c5                	add    al,0xc5
c0105f71:	41                   	inc    ecx
c0105f72:	13 03                	adc    eax,DWORD PTR [ebx]
c0105f74:	2e 00 00             	add    BYTE PTR cs:[eax],al
c0105f77:	00 30                	add    BYTE PTR [eax],dh
c0105f79:	00 00                	add    BYTE PTR [eax],al
c0105f7b:	00 2c 1c             	add    BYTE PTR [esp+ebx*1],ch
c0105f7e:	00 00                	add    BYTE PTR [eax],al
c0105f80:	44                   	inc    esp
c0105f81:	30 10                	xor    BYTE PTR [eax],dl
c0105f83:	c0 17 00             	rcl    BYTE PTR [edi],0x0
c0105f86:	00 00                	add    BYTE PTR [eax],al
c0105f88:	41                   	inc    ecx
c0105f89:	0e                   	push   cs
c0105f8a:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0105f90:	43                   	inc    ebx
c0105f91:	2e 04 04             	cs add al,0x4
c0105f94:	04 00                	add    al,0x0
c0105f96:	00 00                	add    BYTE PTR [eax],al
c0105f98:	2e 08 43 2e          	or     BYTE PTR cs:[ebx+0x2e],al
c0105f9c:	0c 43                	or     al,0x43
c0105f9e:	2e 10 46 c5          	adc    BYTE PTR cs:[esi-0x3b],al
c0105fa2:	0c 04                	or     al,0x4
c0105fa4:	04 41                	add    al,0x41
c0105fa6:	13 03                	adc    eax,DWORD PTR [ebx]
c0105fa8:	2e 00 00             	add    BYTE PTR cs:[eax],al
c0105fab:	00 28                	add    BYTE PTR [eax],ch
c0105fad:	00 00                	add    BYTE PTR [eax],al
c0105faf:	00 60 1c             	add    BYTE PTR [eax+0x1c],ah
c0105fb2:	00 00                	add    BYTE PTR [eax],al
c0105fb4:	5c                   	pop    esp
c0105fb5:	30 10                	xor    BYTE PTR [eax],dl
c0105fb7:	c0 4d 00 00          	ror    BYTE PTR [ebp+0x0],0x0
c0105fbb:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c0105fbe:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0105fc4:	49                   	dec    ecx
c0105fc5:	83 05 86 04 87 03 7d 	add    DWORD PTR ds:0x3870486,0x7d
c0105fcc:	c3                   	ret    
c0105fcd:	41                   	inc    ecx
c0105fce:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c0105fd2:	0c 04                	or     al,0x4
c0105fd4:	04 c5                	add    al,0xc5
c0105fd6:	00 00                	add    BYTE PTR [eax],al
c0105fd8:	1c 00                	sbb    al,0x0
c0105fda:	00 00                	add    BYTE PTR [eax],al
c0105fdc:	8c 1c 00             	mov    WORD PTR [eax+eax*1],ds
c0105fdf:	00 a9 30 10 c0 25    	add    BYTE PTR [ecx+0x25c01030],ch
c0105fe5:	00 00                	add    BYTE PTR [eax],al
c0105fe7:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c0105fea:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0105ff0:	61                   	popa   
c0105ff1:	0c 04                	or     al,0x4
c0105ff3:	04 c5                	add    al,0xc5
c0105ff5:	00 00                	add    BYTE PTR [eax],al
c0105ff7:	00 a0 00 00 00 ac    	add    BYTE PTR [eax-0x54000000],ah
c0105ffd:	1c 00                	sbb    al,0x0
c0105fff:	00 ce                	add    dh,cl
c0106001:	30 10                	xor    BYTE PTR [eax],dl
c0106003:	c0 f8 00             	sar    al,0x0
c0106006:	00 00                	add    BYTE PTR [eax],al
c0106008:	41                   	inc    ecx
c0106009:	0e                   	push   cs
c010600a:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0106010:	41                   	inc    ecx
c0106011:	83 03 7e             	add    DWORD PTR [ebx],0x7e
c0106014:	2e 04 04             	cs add al,0x4
c0106017:	07                   	pop    es
c0106018:	00 00                	add    BYTE PTR [eax],al
c010601a:	00 2e                	add    BYTE PTR [esi],ch
c010601c:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c010601f:	0c 42                	or     al,0x42
c0106021:	2e 10 45 2e          	adc    BYTE PTR cs:[ebp+0x2e],al
c0106025:	14 41                	adc    al,0x41
c0106027:	2e 18 51 2e          	sbb    BYTE PTR cs:[ecx+0x2e],dl
c010602b:	1c 48                	sbb    al,0x48
c010602d:	2e 20 41 2e          	and    BYTE PTR cs:[ecx+0x2e],al
c0106031:	24 42                	and    al,0x42
c0106033:	2e 28 45 2e          	sub    BYTE PTR cs:[ebp+0x2e],al
c0106037:	2c 41                	sub    al,0x41
c0106039:	2e 30 4d 2e          	xor    BYTE PTR cs:[ebp+0x2e],cl
c010603d:	00 47 2e             	add    BYTE PTR [edi+0x2e],al
c0106040:	04 04                	add    al,0x4
c0106042:	02 00                	add    al,BYTE PTR [eax]
c0106044:	00 00                	add    BYTE PTR [eax],al
c0106046:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c010604a:	0c 42                	or     al,0x42
c010604c:	2e 10 45 2e          	adc    BYTE PTR cs:[ebp+0x2e],al
c0106050:	14 41                	adc    al,0x41
c0106052:	2e 18 51 2e          	sbb    BYTE PTR cs:[ecx+0x2e],dl
c0106056:	1c 42                	sbb    al,0x42
c0106058:	2e 20 41 2e          	and    BYTE PTR cs:[ecx+0x2e],al
c010605c:	24 42                	and    al,0x42
c010605e:	2e 28 45 2e          	sub    BYTE PTR cs:[ebp+0x2e],al
c0106062:	2c 41                	sub    al,0x41
c0106064:	2e 30 4d 2e          	xor    BYTE PTR cs:[ebp+0x2e],cl
c0106068:	00 47 2e             	add    BYTE PTR [edi+0x2e],al
c010606b:	04 04                	add    al,0x4
c010606d:	02 00                	add    al,BYTE PTR [eax]
c010606f:	00 00                	add    BYTE PTR [eax],al
c0106071:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c0106075:	0c 42                	or     al,0x42
c0106077:	2e 10 45 2e          	adc    BYTE PTR cs:[ebp+0x2e],al
c010607b:	14 41                	adc    al,0x41
c010607d:	2e 18 51 2e          	sbb    BYTE PTR cs:[ecx+0x2e],dl
c0106081:	1c 42                	sbb    al,0x42
c0106083:	2e 20 41 2e          	and    BYTE PTR cs:[ecx+0x2e],al
c0106087:	24 42                	and    al,0x42
c0106089:	2e 28 45 2e          	sub    BYTE PTR cs:[ebp+0x2e],al
c010608d:	2c 41                	sub    al,0x41
c010608f:	2e 30 48 2e          	xor    BYTE PTR cs:[eax+0x2e],cl
c0106093:	00 44 c5 0c          	add    BYTE PTR [ebp+eax*8+0xc],al
c0106097:	04 04                	add    al,0x4
c0106099:	c3                   	ret    
c010609a:	00 00                	add    BYTE PTR [eax],al
c010609c:	2c 00                	sub    al,0x0
c010609e:	00 00                	add    BYTE PTR [eax],al
c01060a0:	50                   	push   eax
c01060a1:	1d 00 00 c6 31       	sbb    eax,0x31c60000
c01060a6:	10 c0                	adc    al,al
c01060a8:	84 00                	test   BYTE PTR [eax],al
c01060aa:	00 00                	add    BYTE PTR [eax],al
c01060ac:	41                   	inc    ecx
c01060ad:	0e                   	push   cs
c01060ae:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c01060b4:	41                   	inc    ecx
c01060b5:	87 03                	xchg   DWORD PTR [ebx],eax
c01060b7:	49                   	dec    ecx
c01060b8:	83 05 86 04 04 73 00 	add    DWORD PTR ds:0x73040486,0x0
c01060bf:	00 00                	add    BYTE PTR [eax],al
c01060c1:	c3                   	ret    
c01060c2:	41                   	inc    ecx
c01060c3:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c01060c7:	0c 04                	or     al,0x4
c01060c9:	04 c5                	add    al,0xc5
c01060cb:	00 44 00 00          	add    BYTE PTR [eax+eax*1+0x0],al
c01060cf:	00 80 1d 00 00 4a    	add    BYTE PTR [eax+0x4a00001d],al
c01060d5:	32 10                	xor    dl,BYTE PTR [eax]
c01060d7:	c0 41 00 00          	rol    BYTE PTR [ecx+0x0],0x0
c01060db:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c01060de:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c01060e4:	41                   	inc    ecx
c01060e5:	87 03                	xchg   DWORD PTR [ebx],eax
c01060e7:	44                   	inc    esp
c01060e8:	86 04 04             	xchg   BYTE PTR [esp+eax*1],al
c01060eb:	04 00                	add    al,0x0
c01060ed:	00 00                	add    BYTE PTR [eax],al
c01060ef:	83 05 54 2e 04 04 03 	add    DWORD PTR ds:0x4042e54,0x3
c01060f6:	00 00                	add    BYTE PTR [eax],al
c01060f8:	00 2e                	add    BYTE PTR [esi],ch
c01060fa:	08 41 2e             	or     BYTE PTR [ecx+0x2e],al
c01060fd:	0c 41                	or     al,0x41
c01060ff:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c0106103:	14 48                	adc    al,0x48
c0106105:	2e 00 4a c3          	add    BYTE PTR cs:[edx-0x3d],cl
c0106109:	41                   	inc    ecx
c010610a:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c010610e:	0c 04                	or     al,0x4
c0106110:	04 c5                	add    al,0xc5
	...

Disassembly of section .rodata:

c0106114 <_rodata>:
c0106114:	5b                   	pop    ebx
c0106115:	55                   	push   ebp
c0106116:	73 65                	jae    c010617d <_rodata+0x69>
c0106118:	72 5d                	jb     c0106177 <_rodata+0x63>
c010611a:	3a 00                	cmp    al,BYTE PTR [eax]
c010611c:	25 30 34 64 2f       	and    eax,0x2f643430
c0106121:	25 30 32 64 2f       	and    eax,0x2f643230
c0106126:	25 30 32 64 20       	and    eax,0x20643230
c010612b:	25 30 32 64 3a       	and    eax,0x3a643230
c0106130:	25 30 32 64 3a       	and    eax,0x3a643230
c0106135:	25 30 32 64 00       	and    eax,0x643230
c010613a:	0a 50 65             	or     dl,BYTE PTR [eax+0x65]
c010613d:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010613e:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c0106141:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c0106146:	65 6c                	gs ins BYTE PTR es:[edi],dx
c0106148:	20 28                	and    BYTE PTR [eax],ch
c010614a:	50                   	push   eax
c010614b:	4b                   	dec    ebx
c010614c:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010614d:	29 20                	sub    DWORD PTR [eax],esp
c010614f:	76 65                	jbe    c01061b6 <_rodata+0xa2>
c0106151:	72 73                	jb     c01061c6 <_rodata+0xb2>
c0106153:	69 6f 6e 20 30 2e 30 	imul   ebp,DWORD PTR [edi+0x6e],0x302e3020
c010615a:	2e 30 20             	xor    BYTE PTR cs:[eax],ah
c010615d:	74 65                	je     c01061c4 <_rodata+0xb0>
c010615f:	73 74                	jae    c01061d5 <PKn_Version+0xd>
c0106161:	0a 00                	or     al,BYTE PTR [eax]
c0106163:	43                   	inc    ebx
c0106164:	50                   	push   eax
c0106165:	55                   	push   ebp
c0106166:	20 20                	and    BYTE PTR [eax],ah
c0106168:	20 20                	and    BYTE PTR [eax],ah
c010616a:	3a 00                	cmp    al,BYTE PTR [eax]
c010616c:	4d                   	dec    ebp
c010616d:	65 6d                	gs ins DWORD PTR es:[edi],dx
c010616f:	6f                   	outs   dx,DWORD PTR ds:[esi]
c0106170:	72 79                	jb     c01061eb <PKn_Version+0x23>
c0106172:	20 3a                	and    BYTE PTR [edx],bh
c0106174:	00 4d 42             	add    BYTE PTR [ebp+0x42],cl
c0106177:	20 28                	and    BYTE PTR [eax],ch
c0106179:	20 00                	and    BYTE PTR [eax],al
c010617b:	4b                   	dec    ebx
c010617c:	42                   	inc    edx
c010617d:	20 29                	and    BYTE PTR [ecx],ch
c010617f:	20 00                	and    BYTE PTR [eax],al
c0106181:	44                   	inc    esp
c0106182:	69 73 6b 20 20 20 3a 	imul   esi,DWORD PTR [ebx+0x6b],0x3a202020
c0106189:	00 50 65             	add    BYTE PTR [eax+0x65],dl
c010618c:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010618d:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c0106190:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c0106195:	65 6c                	gs ins BYTE PTR es:[edi],dx
c0106197:	20 28                	and    BYTE PTR [eax],ch
c0106199:	50                   	push   eax
c010619a:	4b                   	dec    ebx
c010619b:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010619c:	29 20                	sub    DWORD PTR [eax],esp
c010619e:	76 65                	jbe    c0106205 <PKn_Version+0x3d>
c01061a0:	72 73                	jb     c0106215 <PKn_Version+0x4d>
c01061a2:	69 6f 6e 20 30 2e 30 	imul   ebp,DWORD PTR [edi+0x6e],0x302e3020
c01061a9:	2e 30 20             	xor    BYTE PTR cs:[eax],ah
c01061ac:	74 65                	je     c0106213 <PKn_Version+0x4b>
c01061ae:	73 74                	jae    c0106224 <PKn_Version+0x5c>
c01061b0:	00 61 72             	add    BYTE PTR [ecx+0x72],ah
c01061b3:	67 5f                	addr16 pop edi
c01061b5:	41                   	inc    ecx
c01061b6:	20 00                	and    BYTE PTR [eax],al
c01061b8:	6b 5f 61 00          	imul   ebx,DWORD PTR [edi+0x61],0x0
c01061bc:	61                   	popa   
c01061bd:	72 67                	jb     c0106226 <PKn_Version+0x5e>
c01061bf:	5f                   	pop    edi
c01061c0:	42                   	inc    edx
c01061c1:	20 00                	and    BYTE PTR [eax],al
c01061c3:	6b 5f 62 00          	imul   ebx,DWORD PTR [edi+0x62],0x0
	...

c01061c8 <PKn_Version>:
c01061c8:	50                   	push   eax
c01061c9:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c01061cb:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c01061ce:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c01061d3:	65 6c                	gs ins BYTE PTR es:[edi],dx
c01061d5:	20 28                	and    BYTE PTR [eax],ch
c01061d7:	50                   	push   eax
c01061d8:	4b                   	dec    ebx
c01061d9:	6e                   	outs   dx,BYTE PTR ds:[esi]
c01061da:	29 20                	sub    DWORD PTR [eax],esp
c01061dc:	76 65                	jbe    c0106243 <PKn_Version+0x7b>
c01061de:	72 73                	jb     c0106253 <PKn_Version+0x8b>
c01061e0:	69 6f 6e 20 30 2e 30 	imul   ebp,DWORD PTR [edi+0x6e],0x302e3020
c01061e7:	2e 30 20             	xor    BYTE PTR cs:[eax],ah
c01061ea:	74 65                	je     c0106251 <PKn_Version+0x89>
c01061ec:	73 74                	jae    c0106262 <PKn_Version+0x9a>
c01061ee:	00 00                	add    BYTE PTR [eax],al
c01061f0:	20 45 72             	and    BYTE PTR [ebp+0x72],al
c01061f3:	72 6f                	jb     c0106264 <PKn_Version+0x9c>
c01061f5:	72 0a                	jb     c0106201 <PKn_Version+0x39>
c01061f7:	00 20                	add    BYTE PTR [eax],ah
c01061f9:	46                   	inc    esi
c01061fa:	69 6c 65 3a 20 20 20 	imul   ebp,DWORD PTR [ebp+eiz*2+0x3a],0x20202020
c0106201:	20 
c0106202:	20 20                	and    BYTE PTR [eax],ah
c0106204:	20 20                	and    BYTE PTR [eax],ah
c0106206:	00 20                	add    BYTE PTR [eax],ah
c0106208:	49                   	dec    ecx
c0106209:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010620a:	20 66 75             	and    BYTE PTR [esi+0x75],ah
c010620d:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010620e:	63 74 69 6f          	arpl   WORD PTR [ecx+ebp*2+0x6f],si
c0106212:	6e                   	outs   dx,BYTE PTR ds:[esi]
c0106213:	3a 20                	cmp    ah,BYTE PTR [eax]
c0106215:	00 20                	add    BYTE PTR [eax],ah
c0106217:	4c                   	dec    esp
c0106218:	69 6e 65 3a 20 20 20 	imul   ebp,DWORD PTR [esi+0x65],0x2020203a
c010621f:	20 20                	and    BYTE PTR [eax],ah
c0106221:	20 20                	and    BYTE PTR [eax],ah
c0106223:	20 00                	and    BYTE PTR [eax],al
c0106225:	20 43 6f             	and    BYTE PTR [ebx+0x6f],al
c0106228:	6e                   	outs   dx,BYTE PTR ds:[esi]
c0106229:	64 69 74 69 6f 6e 3a 	imul   esi,DWORD PTR fs:[ecx+ebp*2+0x6f],0x20203a6e
c0106230:	20 20 
c0106232:	20 00                	and    BYTE PTR [eax],al
c0106234:	50                   	push   eax
c0106235:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c0106237:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c010623a:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c010623f:	65 6c                	gs ins BYTE PTR es:[edi],dx
c0106241:	20 28                	and    BYTE PTR [eax],ch
c0106243:	50                   	push   eax
c0106244:	4b                   	dec    ebx
c0106245:	6e                   	outs   dx,BYTE PTR ds:[esi]
c0106246:	29 20                	sub    DWORD PTR [eax],esp
c0106248:	76 65                	jbe    c01062af <PKn_Version+0xe7>
c010624a:	72 73                	jb     c01062bf <PKn_Version+0xf7>
c010624c:	69 6f 6e 20 30 2e 30 	imul   ebp,DWORD PTR [edi+0x6e],0x302e3020
c0106253:	2e 30 20             	xor    BYTE PTR cs:[eax],ah
c0106256:	74 65                	je     c01062bd <PKn_Version+0xf5>
c0106258:	73 74                	jae    c01062ce <PKn_Version+0x106>
c010625a:	00 00                	add    BYTE PTR [eax],al
c010625c:	5b                   	pop    ebx
c010625d:	69 6e 69 6e 5d 3a 61 	imul   ebp,DWORD PTR [esi+0x69],0x613a5d6e
c0106264:	6c                   	ins    BYTE PTR es:[edi],dx
c0106265:	6c                   	ins    BYTE PTR es:[edi],dx
c0106266:	0a 00                	or     al,BYTE PTR [eax]
c0106268:	5b                   	pop    ebx
c0106269:	69 6e 69 74 5d 3a 69 	imul   ebp,DWORD PTR [esi+0x69],0x693a5d74
c0106270:	6e                   	outs   dx,BYTE PTR ds:[esi]
c0106271:	69 74 20 64 6f 77 6e 	imul   esi,DWORD PTR [eax+eiz*1+0x64],0x2e6e776f
c0106278:	2e 
c0106279:	0a 00                	or     al,BYTE PTR [eax]
c010627b:	00 50 65             	add    BYTE PTR [eax+0x65],dl
c010627e:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010627f:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c0106282:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c0106287:	65 6c                	gs ins BYTE PTR es:[edi],dx
c0106289:	20 28                	and    BYTE PTR [eax],ch
c010628b:	50                   	push   eax
c010628c:	4b                   	dec    ebx
c010628d:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010628e:	29 20                	sub    DWORD PTR [eax],esp
c0106290:	76 65                	jbe    c01062f7 <PKn_Version+0x12f>
c0106292:	72 73                	jb     c0106307 <PKn_Version+0x13f>
c0106294:	69 6f 6e 20 30 2e 30 	imul   ebp,DWORD PTR [edi+0x6e],0x302e3020
c010629b:	2e 30 20             	xor    BYTE PTR cs:[eax],ah
c010629e:	74 65                	je     c0106305 <PKn_Version+0x13d>
c01062a0:	73 74                	jae    c0106316 <PKn_Version+0x14e>
c01062a2:	00 00                	add    BYTE PTR [eax],al
c01062a4:	23 44 45 20          	and    eax,DWORD PTR [ebp+eax*2+0x20]
c01062a8:	44                   	inc    esp
c01062a9:	69 76 69 64 65 20 45 	imul   esi,DWORD PTR [esi+0x69],0x45206564
c01062b0:	72 72                	jb     c0106324 <PKn_Version+0x15c>
c01062b2:	6f                   	outs   dx,DWORD PTR ds:[esi]
c01062b3:	72 00                	jb     c01062b5 <PKn_Version+0xed>
c01062b5:	23 44 42 20          	and    eax,DWORD PTR [edx+eax*2+0x20]
c01062b9:	44                   	inc    esp
c01062ba:	65 62 75 67          	bound  esi,QWORD PTR gs:[ebp+0x67]
c01062be:	20 45 78             	and    BYTE PTR [ebp+0x78],al
c01062c1:	63 65 70             	arpl   WORD PTR [ebp+0x70],sp
c01062c4:	74 69                	je     c010632f <PKn_Version+0x167>
c01062c6:	6f                   	outs   dx,DWORD PTR ds:[esi]
c01062c7:	6e                   	outs   dx,BYTE PTR ds:[esi]
c01062c8:	00 4e 4d             	add    BYTE PTR [esi+0x4d],cl
c01062cb:	49                   	dec    ecx
c01062cc:	20 49 6e             	and    BYTE PTR [ecx+0x6e],cl
c01062cf:	74 65                	je     c0106336 <PKn_Version+0x16e>
c01062d1:	72 72                	jb     c0106345 <PKn_Version+0x17d>
c01062d3:	75 70                	jne    c0106345 <PKn_Version+0x17d>
c01062d5:	74 00                	je     c01062d7 <PKn_Version+0x10f>
c01062d7:	23 42 50             	and    eax,DWORD PTR [edx+0x50]
c01062da:	20 42 72             	and    BYTE PTR [edx+0x72],al
c01062dd:	65 61                	gs popa 
c01062df:	6b 70 6f 69          	imul   esi,DWORD PTR [eax+0x6f],0x69
c01062e3:	6e                   	outs   dx,BYTE PTR ds:[esi]
c01062e4:	74 20                	je     c0106306 <PKn_Version+0x13e>
c01062e6:	45                   	inc    ebp
c01062e7:	78 63                	js     c010634c <PKn_Version+0x184>
c01062e9:	65 70 74             	gs jo  c0106360 <PKn_Version+0x198>
c01062ec:	69 6f 6e 00 23 4f 46 	imul   ebp,DWORD PTR [edi+0x6e],0x464f2300
c01062f3:	20 4f 76             	and    BYTE PTR [edi+0x76],cl
c01062f6:	65 72 66             	gs jb  c010635f <PKn_Version+0x197>
c01062f9:	6c                   	ins    BYTE PTR es:[edi],dx
c01062fa:	6f                   	outs   dx,DWORD PTR ds:[esi]
c01062fb:	77 20                	ja     c010631d <PKn_Version+0x155>
c01062fd:	45                   	inc    ebp
c01062fe:	78 63                	js     c0106363 <PKn_Version+0x19b>
c0106300:	65 70 74             	gs jo  c0106377 <PKn_Version+0x1af>
c0106303:	69 6f 6e 00 23 42 52 	imul   ebp,DWORD PTR [edi+0x6e],0x52422300
c010630a:	20 42 4f             	and    BYTE PTR [edx+0x4f],al
c010630d:	55                   	push   ebp
c010630e:	4e                   	dec    esi
c010630f:	44                   	inc    esp
c0106310:	20 52 61             	and    BYTE PTR [edx+0x61],dl
c0106313:	6e                   	outs   dx,BYTE PTR ds:[esi]
c0106314:	67 65 20 45 78       	and    BYTE PTR gs:[di+0x78],al
c0106319:	63 65 65             	arpl   WORD PTR [ebp+0x65],sp
c010631c:	64 65 64 20 45 78    	fs gs and BYTE PTR fs:[ebp+0x78],al
c0106322:	63 65 70             	arpl   WORD PTR [ebp+0x70],sp
c0106325:	74 69                	je     c0106390 <PKn_Version+0x1c8>
c0106327:	6f                   	outs   dx,DWORD PTR ds:[esi]
c0106328:	6e                   	outs   dx,BYTE PTR ds:[esi]
c0106329:	00 23                	add    BYTE PTR [ebx],ah
c010632b:	55                   	push   ebp
c010632c:	44                   	inc    esp
c010632d:	20 49 6e             	and    BYTE PTR [ecx+0x6e],cl
c0106330:	76 61                	jbe    c0106393 <PKn_Version+0x1cb>
c0106332:	6c                   	ins    BYTE PTR es:[edi],dx
c0106333:	69 64 20 4f 70 63 6f 	imul   esp,DWORD PTR [eax+eiz*1+0x4f],0x646f6370
c010633a:	64 
c010633b:	65 20 45 78          	and    BYTE PTR gs:[ebp+0x78],al
c010633f:	63 65 70             	arpl   WORD PTR [ebp+0x70],sp
c0106342:	74 69                	je     c01063ad <PKn_Version+0x1e5>
c0106344:	6f                   	outs   dx,DWORD PTR ds:[esi]
c0106345:	6e                   	outs   dx,BYTE PTR ds:[esi]
c0106346:	00 23                	add    BYTE PTR [ebx],ah
c0106348:	4e                   	dec    esi
c0106349:	4d                   	dec    ebp
c010634a:	20 44 65 76          	and    BYTE PTR [ebp+eiz*2+0x76],al
c010634e:	69 63 65 20 4e 6f 74 	imul   esp,DWORD PTR [ebx+0x65],0x746f4e20
c0106355:	20 41 76             	and    BYTE PTR [ecx+0x76],al
c0106358:	61                   	popa   
c0106359:	69 6c 61 62 6c 65 20 	imul   ebp,DWORD PTR [ecx+eiz*2+0x62],0x4520656c
c0106360:	45 
c0106361:	78 63                	js     c01063c6 <PKn_Version+0x1fe>
c0106363:	65 70 74             	gs jo  c01063da <PKn_Version+0x212>
c0106366:	69 6f 6e 00 23 44 46 	imul   ebp,DWORD PTR [edi+0x6e],0x46442300
c010636d:	20 44 6f 75          	and    BYTE PTR [edi+ebp*2+0x75],al
c0106371:	62 6c 65 20          	bound  ebp,QWORD PTR [ebp+eiz*2+0x20]
c0106375:	46                   	inc    esi
c0106376:	61                   	popa   
c0106377:	75 6c                	jne    c01063e5 <PKn_Version+0x21d>
c0106379:	74 20                	je     c010639b <PKn_Version+0x1d3>
c010637b:	45                   	inc    ebp
c010637c:	78 63                	js     c01063e1 <PKn_Version+0x219>
c010637e:	65 70 74             	gs jo  c01063f5 <PKn_Version+0x22d>
c0106381:	69 6f 6e 00 43 6f 70 	imul   ebp,DWORD PTR [edi+0x6e],0x706f4300
c0106388:	72 6f                	jb     c01063f9 <PKn_Version+0x231>
c010638a:	63 65 73             	arpl   WORD PTR [ebp+0x73],sp
c010638d:	73 6f                	jae    c01063fe <PKn_Version+0x236>
c010638f:	72 20                	jb     c01063b1 <PKn_Version+0x1e9>
c0106391:	53                   	push   ebx
c0106392:	65 67 6d             	gs ins DWORD PTR es:[di],dx
c0106395:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c0106397:	74 20                	je     c01063b9 <PKn_Version+0x1f1>
c0106399:	4f                   	dec    edi
c010639a:	76 65                	jbe    c0106401 <PKn_Version+0x239>
c010639c:	72 72                	jb     c0106410 <PKn_Version+0x248>
c010639e:	75 6e                	jne    c010640e <PKn_Version+0x246>
c01063a0:	00 23                	add    BYTE PTR [ebx],ah
c01063a2:	54                   	push   esp
c01063a3:	53                   	push   ebx
c01063a4:	20 49 6e             	and    BYTE PTR [ecx+0x6e],cl
c01063a7:	76 61                	jbe    c010640a <PKn_Version+0x242>
c01063a9:	6c                   	ins    BYTE PTR es:[edi],dx
c01063aa:	69 64 20 54 53 53 20 	imul   esp,DWORD PTR [eax+eiz*1+0x54],0x45205353
c01063b1:	45 
c01063b2:	78 63                	js     c0106417 <PKn_Version+0x24f>
c01063b4:	65 70 74             	gs jo  c010642b <PKn_Version+0x263>
c01063b7:	69 6f 6e 00 23 4e 50 	imul   ebp,DWORD PTR [edi+0x6e],0x504e2300
c01063be:	20 53 65             	and    BYTE PTR [ebx+0x65],dl
c01063c1:	67 6d                	ins    DWORD PTR es:[di],dx
c01063c3:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c01063c5:	74 20                	je     c01063e7 <PKn_Version+0x21f>
c01063c7:	4e                   	dec    esi
c01063c8:	6f                   	outs   dx,DWORD PTR ds:[esi]
c01063c9:	74 20                	je     c01063eb <PKn_Version+0x223>
c01063cb:	50                   	push   eax
c01063cc:	72 65                	jb     c0106433 <PKn_Version+0x26b>
c01063ce:	73 65                	jae    c0106435 <PKn_Version+0x26d>
c01063d0:	6e                   	outs   dx,BYTE PTR ds:[esi]
c01063d1:	74 00                	je     c01063d3 <PKn_Version+0x20b>
c01063d3:	23 53 53             	and    edx,DWORD PTR [ebx+0x53]
c01063d6:	20 53 74             	and    BYTE PTR [ebx+0x74],dl
c01063d9:	61                   	popa   
c01063da:	63 6b 20             	arpl   WORD PTR [ebx+0x20],bp
c01063dd:	46                   	inc    esi
c01063de:	61                   	popa   
c01063df:	75 6c                	jne    c010644d <PKn_Version+0x285>
c01063e1:	74 20                	je     c0106403 <PKn_Version+0x23b>
c01063e3:	45                   	inc    ebp
c01063e4:	78 63                	js     c0106449 <PKn_Version+0x281>
c01063e6:	65 70 74             	gs jo  c010645d <PKn_Version+0x295>
c01063e9:	69 6f 6e 00 23 47 50 	imul   ebp,DWORD PTR [edi+0x6e],0x50472300
c01063f0:	20 47 65             	and    BYTE PTR [edi+0x65],al
c01063f3:	6e                   	outs   dx,BYTE PTR ds:[esi]
c01063f4:	65 72 61             	gs jb  c0106458 <PKn_Version+0x290>
c01063f7:	6c                   	ins    BYTE PTR es:[edi],dx
c01063f8:	20 50 72             	and    BYTE PTR [eax+0x72],dl
c01063fb:	6f                   	outs   dx,DWORD PTR ds:[esi]
c01063fc:	74 65                	je     c0106463 <PKn_Version+0x29b>
c01063fe:	63 74 69 6f          	arpl   WORD PTR [ecx+ebp*2+0x6f],si
c0106402:	6e                   	outs   dx,BYTE PTR ds:[esi]
c0106403:	20 45 78             	and    BYTE PTR [ebp+0x78],al
c0106406:	63 65 70             	arpl   WORD PTR [ebp+0x70],sp
c0106409:	74 69                	je     c0106474 <PKn_Version+0x2ac>
c010640b:	6f                   	outs   dx,DWORD PTR ds:[esi]
c010640c:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010640d:	00 23                	add    BYTE PTR [ebx],ah
c010640f:	50                   	push   eax
c0106410:	46                   	inc    esi
c0106411:	20 50 61             	and    BYTE PTR [eax+0x61],dl
c0106414:	67 65 2d 46 61 75 6c 	addr16 gs sub eax,0x6c756146
c010641b:	74 20                	je     c010643d <PKn_Version+0x275>
c010641d:	45                   	inc    ebp
c010641e:	78 63                	js     c0106483 <PKn_Version+0x2bb>
c0106420:	65 70 74             	gs jo  c0106497 <PKn_Version+0x2cf>
c0106423:	69 6f 6e 00 52 65 73 	imul   ebp,DWORD PTR [edi+0x6e],0x73655200
c010642a:	65 72 76             	gs jb  c01064a3 <PKn_Version+0x2db>
c010642d:	65 64 00 23          	gs add BYTE PTR fs:[ebx],ah
c0106431:	4d                   	dec    ebp
c0106432:	46                   	inc    esi
c0106433:	20 78 38             	and    BYTE PTR [eax+0x38],bh
c0106436:	37                   	aaa    
c0106437:	20 46 50             	and    BYTE PTR [esi+0x50],al
c010643a:	55                   	push   ebp
c010643b:	20 46 6c             	and    BYTE PTR [esi+0x6c],al
c010643e:	6f                   	outs   dx,DWORD PTR ds:[esi]
c010643f:	61                   	popa   
c0106440:	74 69                	je     c01064ab <PKn_Version+0x2e3>
c0106442:	6e                   	outs   dx,BYTE PTR ds:[esi]
c0106443:	67 2d 50 6f 69 6e    	addr16 sub eax,0x6e696f50
c0106449:	74 20                	je     c010646b <PKn_Version+0x2a3>
c010644b:	45                   	inc    ebp
c010644c:	72 72                	jb     c01064c0 <PKn_Version+0x2f8>
c010644e:	6f                   	outs   dx,DWORD PTR ds:[esi]
c010644f:	72 00                	jb     c0106451 <PKn_Version+0x289>
c0106451:	23 41 43             	and    eax,DWORD PTR [ecx+0x43]
c0106454:	20 41 6c             	and    BYTE PTR [ecx+0x6c],al
c0106457:	69 67 6e 6d 65 6e 74 	imul   esp,DWORD PTR [edi+0x6e],0x746e656d
c010645e:	20 43 68             	and    BYTE PTR [ebx+0x68],al
c0106461:	65 63 6b 20          	arpl   WORD PTR gs:[ebx+0x20],bp
c0106465:	45                   	inc    ebp
c0106466:	78 63                	js     c01064cb <PKn_Version+0x303>
c0106468:	65 70 74             	gs jo  c01064df <PKn_Version+0x317>
c010646b:	69 6f 6e 00 23 4d 43 	imul   ebp,DWORD PTR [edi+0x6e],0x434d2300
c0106472:	20 4d 61             	and    BYTE PTR [ebp+0x61],cl
c0106475:	63 68 69             	arpl   WORD PTR [eax+0x69],bp
c0106478:	6e                   	outs   dx,BYTE PTR ds:[esi]
c0106479:	65 2d 43 68 65 63    	gs sub eax,0x63656843
c010647f:	6b 20 45             	imul   esp,DWORD PTR [eax],0x45
c0106482:	78 63                	js     c01064e7 <PKn_Version+0x31f>
c0106484:	65 70 74             	gs jo  c01064fb <PKn_Version+0x333>
c0106487:	69 6f 6e 00 23 58 46 	imul   ebp,DWORD PTR [edi+0x6e],0x46582300
c010648e:	20 53 49             	and    BYTE PTR [ebx+0x49],dl
c0106491:	4d                   	dec    ebp
c0106492:	44                   	inc    esp
c0106493:	20 46 6c             	and    BYTE PTR [esi+0x6c],al
c0106496:	6f                   	outs   dx,DWORD PTR ds:[esi]
c0106497:	61                   	popa   
c0106498:	74 69                	je     c0106503 <PKn_Version+0x33b>
c010649a:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010649b:	67 2d 50 6f 69 6e    	addr16 sub eax,0x6e696f50
c01064a1:	74 20                	je     c01064c3 <PKn_Version+0x2fb>
c01064a3:	45                   	inc    ebp
c01064a4:	78 63                	js     c0106509 <PKn_Version+0x341>
c01064a6:	65 70 74             	gs jo  c010651d <PKn_Version+0x355>
c01064a9:	69 6f 6e 00 53 6f 72 	imul   ebp,DWORD PTR [edi+0x6e],0x726f5300
c01064b0:	72 79                	jb     c010652b <PKn_Version+0x363>
c01064b2:	2c 20                	sub    al,0x20
c01064b4:	61                   	popa   
c01064b5:	20 70 72             	and    BYTE PTR [eax+0x72],dh
c01064b8:	6f                   	outs   dx,DWORD PTR ds:[esi]
c01064b9:	62 6c 65 6d          	bound  ebp,QWORD PTR [ebp+eiz*2+0x6d]
c01064bd:	20 62 65             	and    BYTE PTR [edx+0x65],ah
c01064c0:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c01064c2:	20 64 65 74          	and    BYTE PTR [ebp+eiz*2+0x74],ah
c01064c6:	65 63 74 65 64       	arpl   WORD PTR gs:[ebp+eiz*2+0x64],si
c01064cb:	20 61 6e             	and    BYTE PTR [ecx+0x6e],ah
c01064ce:	64 20 50 4b          	and    BYTE PTR fs:[eax+0x4b],dl
c01064d2:	6e                   	outs   dx,BYTE PTR ds:[esi]
c01064d3:	20 73 68             	and    BYTE PTR [ebx+0x68],dh
c01064d6:	75 74                	jne    c010654c <PKn_Version+0x384>
c01064d8:	20 64 6f 77          	and    BYTE PTR [edi+ebp*2+0x77],ah
c01064dc:	6e                   	outs   dx,BYTE PTR ds:[esi]
c01064dd:	20 74 6f 20          	and    BYTE PTR [edi+ebp*2+0x20],dh
c01064e1:	70 72                	jo     c0106555 <PKn_Version+0x38d>
c01064e3:	65 76 65             	gs jbe c010654b <PKn_Version+0x383>
c01064e6:	6e                   	outs   dx,BYTE PTR ds:[esi]
c01064e7:	74 20                	je     c0106509 <PKn_Version+0x341>
c01064e9:	64 61                	fs popa 
c01064eb:	6d                   	ins    DWORD PTR es:[edi],dx
c01064ec:	61                   	popa   
c01064ed:	67 65 20 74 6f       	and    BYTE PTR gs:[si+0x6f],dh
c01064f2:	20 79 6f             	and    BYTE PTR [ecx+0x6f],bh
c01064f5:	75 72                	jne    c0106569 <PKn_Version+0x3a1>
c01064f7:	20 63 6f             	and    BYTE PTR [ebx+0x6f],ah
c01064fa:	6d                   	ins    DWORD PTR es:[edi],dx
c01064fb:	70 75                	jo     c0106572 <PKn_Version+0x3aa>
c01064fd:	74 65                	je     c0106564 <PKn_Version+0x39c>
c01064ff:	72 2e                	jb     c010652f <PKn_Version+0x367>
c0106501:	0a 49 66             	or     cl,BYTE PTR [ecx+0x66]
c0106504:	20 74 68 69          	and    BYTE PTR [eax+ebp*2+0x69],dh
c0106508:	73 20                	jae    c010652a <PKn_Version+0x362>
c010650a:	69 73 20 74 68 65 20 	imul   esi,DWORD PTR [ebx+0x20],0x20656874
c0106511:	66 69 72 73 74 20    	imul   si,WORD PTR [edx+0x73],0x2074
c0106517:	74 69                	je     c0106582 <PKn_Version+0x3ba>
c0106519:	6d                   	ins    DWORD PTR es:[edi],dx
c010651a:	65 20 79 6f          	and    BYTE PTR gs:[ecx+0x6f],bh
c010651e:	75 27                	jne    c0106547 <PKn_Version+0x37f>
c0106520:	76 65                	jbe    c0106587 <PKn_Version+0x3bf>
c0106522:	20 73 65             	and    BYTE PTR [ebx+0x65],dh
c0106525:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c0106527:	20 74 68 69          	and    BYTE PTR [eax+ebp*2+0x69],dh
c010652b:	73 20                	jae    c010654d <PKn_Version+0x385>
c010652d:	73 74                	jae    c01065a3 <PKn_Version+0x3db>
c010652f:	6f                   	outs   dx,DWORD PTR ds:[esi]
c0106530:	70 20                	jo     c0106552 <PKn_Version+0x38a>
c0106532:	65 72 72             	gs jb  c01065a7 <PKn_Version+0x3df>
c0106535:	6f                   	outs   dx,DWORD PTR ds:[esi]
c0106536:	72 20                	jb     c0106558 <PKn_Version+0x390>
c0106538:	73 65                	jae    c010659f <PKn_Version+0x3d7>
c010653a:	72 65                	jb     c01065a1 <PKn_Version+0x3d9>
c010653c:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c010653e:	2c 20                	sub    al,0x20
c0106540:	72 65                	jb     c01065a7 <PKn_Version+0x3df>
c0106542:	73 74                	jae    c01065b8 <PKn_Version+0x3f0>
c0106544:	61                   	popa   
c0106545:	72 74                	jb     c01065bb <PKn_Version+0x3f3>
c0106547:	20 79 6f             	and    BYTE PTR [ecx+0x6f],bh
c010654a:	75 72                	jne    c01065be <PKn_Version+0x3f6>
c010654c:	20 63 6f             	and    BYTE PTR [ebx+0x6f],ah
c010654f:	6d                   	ins    DWORD PTR es:[edi],dx
c0106550:	70 75                	jo     c01065c7 <PKn_Version+0x3ff>
c0106552:	74 65                	je     c01065b9 <PKn_Version+0x3f1>
c0106554:	72 2e                	jb     c0106584 <PKn_Version+0x3bc>
c0106556:	49                   	dec    ecx
c0106557:	66 20 74 68 69       	data16 and BYTE PTR [eax+ebp*2+0x69],dh
c010655c:	73 20                	jae    c010657e <PKn_Version+0x3b6>
c010655e:	73 63                	jae    c01065c3 <PKn_Version+0x3fb>
c0106560:	72 65                	jb     c01065c7 <PKn_Version+0x3ff>
c0106562:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c0106564:	20 61 70             	and    BYTE PTR [ecx+0x70],ah
c0106567:	70 65                	jo     c01065ce <PKn_Version+0x406>
c0106569:	72 73                	jb     c01065de <PKn_Version+0x416>
c010656b:	20 61 67             	and    BYTE PTR [ecx+0x67],ah
c010656e:	61                   	popa   
c010656f:	69 6e 2c 66 6f 6c 6c 	imul   ebp,DWORD PTR [esi+0x2c],0x6c6c6f66
c0106576:	6f                   	outs   dx,DWORD PTR ds:[esi]
c0106577:	77 20                	ja     c0106599 <PKn_Version+0x3d1>
c0106579:	74 68                	je     c01065e3 <PKn_Version+0x41b>
c010657b:	65 73 65             	gs jae c01065e3 <PKn_Version+0x41b>
c010657e:	20 73 74             	and    BYTE PTR [ebx+0x74],dh
c0106581:	65 70 73             	gs jo  c01065f7 <PKn_Version+0x42f>
c0106584:	3a 0a                	cmp    cl,BYTE PTR [edx]
c0106586:	20 31                	and    BYTE PTR [ecx],dh
c0106588:	2e 20 52 65          	and    BYTE PTR cs:[edx+0x65],dl
c010658c:	62 75 69             	bound  esi,QWORD PTR [ebp+0x69]
c010658f:	6c                   	ins    BYTE PTR es:[edi],dx
c0106590:	64 20 50 65          	and    BYTE PTR fs:[eax+0x65],dl
c0106594:	6e                   	outs   dx,BYTE PTR ds:[esi]
c0106595:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c0106598:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c010659d:	65 6c                	gs ins BYTE PTR es:[edi],dx
c010659f:	2e 20 0a             	and    BYTE PTR cs:[edx],cl
c01065a2:	20 32                	and    BYTE PTR [edx],dh
c01065a4:	2e 20 44 65 62       	and    BYTE PTR cs:[ebp+eiz*2+0x62],al
c01065a9:	75 67                	jne    c0106612 <PKn_Version+0x44a>
c01065ab:	20 50 65             	and    BYTE PTR [eax+0x65],dl
c01065ae:	6e                   	outs   dx,BYTE PTR ds:[esi]
c01065af:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c01065b2:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c01065b7:	65 6c                	gs ins BYTE PTR es:[edi],dx
c01065b9:	20 6f 6e             	and    BYTE PTR [edi+0x6e],ch
c01065bc:	20 62 6f             	and    BYTE PTR [edx+0x6f],ah
c01065bf:	63 68 73             	arpl   WORD PTR [eax+0x73],bp
c01065c2:	20 6f 72             	and    BYTE PTR [edi+0x72],ch
c01065c5:	20 6f 74             	and    BYTE PTR [edi+0x74],ch
c01065c8:	68 65 72 20 76       	push   0x76207265
c01065cd:	69 72 74 75 61 6c 20 	imul   esi,DWORD PTR [edx+0x74],0x206c6175
c01065d4:	6d                   	ins    DWORD PTR es:[edi],dx
c01065d5:	61                   	popa   
c01065d6:	63 68 69             	arpl   WORD PTR [eax+0x69],bp
c01065d9:	6e                   	outs   dx,BYTE PTR ds:[esi]
c01065da:	65 2e 0a 00          	gs or  al,BYTE PTR cs:[eax]
c01065de:	0a 20                	or     ah,BYTE PTR [eax]
c01065e0:	00 0a                	add    BYTE PTR [edx],cl
c01065e2:	20 69 6e             	and    BYTE PTR [ecx+0x6e],ch
c01065e5:	74 72                	je     c0106659 <PKn_Version+0x491>
c01065e7:	3a 20                	cmp    ah,BYTE PTR [eax]
c01065e9:	30 78 00             	xor    BYTE PTR [eax+0x0],bh
c01065ec:	20 28                	and    BYTE PTR [eax],ch
c01065ee:	20 66 61             	and    BYTE PTR [esi+0x61],ah
c01065f1:	75 6c                	jne    c010665f <PKn_Version+0x497>
c01065f3:	74 20                	je     c0106615 <PKn_Version+0x44d>
c01065f5:	61                   	popa   
c01065f6:	64 64 72 65          	fs fs jb c010665f <PKn_Version+0x497>
c01065fa:	73 73                	jae    c010666f <PKn_Version+0x4a7>
c01065fc:	3a 20                	cmp    ah,BYTE PTR [eax]
c01065fe:	30 78 00             	xor    BYTE PTR [eax+0x0],bh
c0106601:	20 29                	and    BYTE PTR [ecx],ch
c0106603:	0a 00                	or     al,BYTE PTR [eax]
c0106605:	0a 20                	or     ah,BYTE PTR [eax]
c0106607:	43                   	inc    ebx
c0106608:	50                   	push   eax
c0106609:	55                   	push   ebp
c010660a:	20 3a                	and    BYTE PTR [edx],bh
c010660c:	00 53 6f             	add    BYTE PTR [ebx+0x6f],dl
c010660f:	72 72                	jb     c0106683 <PKn_Version+0x4bb>
c0106611:	79 2c                	jns    c010663f <PKn_Version+0x477>
c0106613:	20 61 20             	and    BYTE PTR [ecx+0x20],ah
c0106616:	70 72                	jo     c010668a <PKn_Version+0x4c2>
c0106618:	6f                   	outs   dx,DWORD PTR ds:[esi]
c0106619:	62 6c 65 6d          	bound  ebp,QWORD PTR [ebp+eiz*2+0x6d]
c010661d:	20 62 65             	and    BYTE PTR [edx+0x65],ah
c0106620:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c0106622:	20 64 65 74          	and    BYTE PTR [ebp+eiz*2+0x74],ah
c0106626:	65 63 74 65 64       	arpl   WORD PTR gs:[ebp+eiz*2+0x64],si
c010662b:	20 61 6e             	and    BYTE PTR [ecx+0x6e],ah
c010662e:	64 20 50 4b          	and    BYTE PTR fs:[eax+0x4b],dl
c0106632:	6e                   	outs   dx,BYTE PTR ds:[esi]
c0106633:	20 73 68             	and    BYTE PTR [ebx+0x68],dh
c0106636:	75 74                	jne    c01066ac <PKn_Version+0x4e4>
c0106638:	20 64 6f 77          	and    BYTE PTR [edi+ebp*2+0x77],ah
c010663c:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010663d:	20 74 6f 20          	and    BYTE PTR [edi+ebp*2+0x20],dh
c0106641:	70 72                	jo     c01066b5 <PKn_Version+0x4ed>
c0106643:	65 76 65             	gs jbe c01066ab <PKn_Version+0x4e3>
c0106646:	6e                   	outs   dx,BYTE PTR ds:[esi]
c0106647:	74 20                	je     c0106669 <PKn_Version+0x4a1>
c0106649:	64 61                	fs popa 
c010664b:	6d                   	ins    DWORD PTR es:[edi],dx
c010664c:	61                   	popa   
c010664d:	67 65 20 74 6f       	and    BYTE PTR gs:[si+0x6f],dh
c0106652:	20 79 6f             	and    BYTE PTR [ecx+0x6f],bh
c0106655:	75 72                	jne    c01066c9 <PKn_Version+0x501>
c0106657:	20 63 6f             	and    BYTE PTR [ebx+0x6f],ah
c010665a:	6d                   	ins    DWORD PTR es:[edi],dx
c010665b:	70 75                	jo     c01066d2 <PKn_Version+0x50a>
c010665d:	74 65                	je     c01066c4 <PKn_Version+0x4fc>
c010665f:	72 2e                	jb     c010668f <PKn_Version+0x4c7>
c0106661:	0a 49 66             	or     cl,BYTE PTR [ecx+0x66]
c0106664:	20 74 68 69          	and    BYTE PTR [eax+ebp*2+0x69],dh
c0106668:	73 20                	jae    c010668a <PKn_Version+0x4c2>
c010666a:	69 73 20 74 68 65 20 	imul   esi,DWORD PTR [ebx+0x20],0x20656874
c0106671:	66 69 72 73 74 20    	imul   si,WORD PTR [edx+0x73],0x2074
c0106677:	74 69                	je     c01066e2 <PKn_Version+0x51a>
c0106679:	6d                   	ins    DWORD PTR es:[edi],dx
c010667a:	65 20 79 6f          	and    BYTE PTR gs:[ecx+0x6f],bh
c010667e:	75 27                	jne    c01066a7 <PKn_Version+0x4df>
c0106680:	76 65                	jbe    c01066e7 <PKn_Version+0x51f>
c0106682:	20 73 65             	and    BYTE PTR [ebx+0x65],dh
c0106685:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c0106687:	20 74 68 69          	and    BYTE PTR [eax+ebp*2+0x69],dh
c010668b:	73 20                	jae    c01066ad <PKn_Version+0x4e5>
c010668d:	73 74                	jae    c0106703 <PKn_Version+0x53b>
c010668f:	6f                   	outs   dx,DWORD PTR ds:[esi]
c0106690:	70 20                	jo     c01066b2 <PKn_Version+0x4ea>
c0106692:	65 72 72             	gs jb  c0106707 <PKn_Version+0x53f>
c0106695:	6f                   	outs   dx,DWORD PTR ds:[esi]
c0106696:	72 20                	jb     c01066b8 <PKn_Version+0x4f0>
c0106698:	73 65                	jae    c01066ff <PKn_Version+0x537>
c010669a:	72 65                	jb     c0106701 <PKn_Version+0x539>
c010669c:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c010669e:	2c 20                	sub    al,0x20
c01066a0:	72 65                	jb     c0106707 <PKn_Version+0x53f>
c01066a2:	73 74                	jae    c0106718 <PKn_Version+0x550>
c01066a4:	61                   	popa   
c01066a5:	72 74                	jb     c010671b <PKn_Version+0x553>
c01066a7:	20 79 6f             	and    BYTE PTR [ecx+0x6f],bh
c01066aa:	75 72                	jne    c010671e <PKn_Version+0x556>
c01066ac:	20 63 6f             	and    BYTE PTR [ebx+0x6f],ah
c01066af:	6d                   	ins    DWORD PTR es:[edi],dx
c01066b0:	70 75                	jo     c0106727 <PKn_Version+0x55f>
c01066b2:	74 65                	je     c0106719 <PKn_Version+0x551>
c01066b4:	72 2e                	jb     c01066e4 <PKn_Version+0x51c>
c01066b6:	0a 49 66             	or     cl,BYTE PTR [ecx+0x66]
c01066b9:	20 74 68 69          	and    BYTE PTR [eax+ebp*2+0x69],dh
c01066bd:	73 20                	jae    c01066df <PKn_Version+0x517>
c01066bf:	73 63                	jae    c0106724 <PKn_Version+0x55c>
c01066c1:	72 65                	jb     c0106728 <PKn_Version+0x560>
c01066c3:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c01066c5:	20 61 70             	and    BYTE PTR [ecx+0x70],ah
c01066c8:	70 65                	jo     c010672f <PKn_Version+0x567>
c01066ca:	72 73                	jb     c010673f <PKn_Version+0x577>
c01066cc:	20 61 67             	and    BYTE PTR [ecx+0x67],ah
c01066cf:	61                   	popa   
c01066d0:	69 6e 2c 66 6f 6c 6c 	imul   ebp,DWORD PTR [esi+0x2c],0x6c6c6f66
c01066d7:	6f                   	outs   dx,DWORD PTR ds:[esi]
c01066d8:	77 20                	ja     c01066fa <PKn_Version+0x532>
c01066da:	74 68                	je     c0106744 <PKn_Version+0x57c>
c01066dc:	65 73 65             	gs jae c0106744 <PKn_Version+0x57c>
c01066df:	20 73 74             	and    BYTE PTR [ebx+0x74],dh
c01066e2:	65 70 73             	gs jo  c0106758 <PKn_Version+0x590>
c01066e5:	3a 0a                	cmp    cl,BYTE PTR [edx]
c01066e7:	20 31                	and    BYTE PTR [ecx],dh
c01066e9:	2e 20 52 65          	and    BYTE PTR cs:[edx+0x65],dl
c01066ed:	62 75 69             	bound  esi,QWORD PTR [ebp+0x69]
c01066f0:	6c                   	ins    BYTE PTR es:[edi],dx
c01066f1:	64 20 50 65          	and    BYTE PTR fs:[eax+0x65],dl
c01066f5:	6e                   	outs   dx,BYTE PTR ds:[esi]
c01066f6:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c01066f9:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c01066fe:	65 6c                	gs ins BYTE PTR es:[edi],dx
c0106700:	2e 20 0a             	and    BYTE PTR cs:[edx],cl
c0106703:	20 32                	and    BYTE PTR [edx],dh
c0106705:	2e 20 44 65 62       	and    BYTE PTR cs:[ebp+eiz*2+0x62],al
c010670a:	75 67                	jne    c0106773 <PKn_Version+0x5ab>
c010670c:	20 50 65             	and    BYTE PTR [eax+0x65],dl
c010670f:	6e                   	outs   dx,BYTE PTR ds:[esi]
c0106710:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c0106713:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c0106718:	65 6c                	gs ins BYTE PTR es:[edi],dx
c010671a:	20 6f 6e             	and    BYTE PTR [edi+0x6e],ch
c010671d:	20 62 6f             	and    BYTE PTR [edx+0x6f],ah
c0106720:	63 68 73             	arpl   WORD PTR [eax+0x73],bp
c0106723:	20 6f 72             	and    BYTE PTR [edi+0x72],ch
c0106726:	20 6f 74             	and    BYTE PTR [edi+0x74],ch
c0106729:	68 65 72 20 76       	push   0x76207265
c010672e:	69 72 74 75 61 6c 20 	imul   esi,DWORD PTR [edx+0x74],0x206c6175
c0106735:	6d                   	ins    DWORD PTR es:[edi],dx
c0106736:	61                   	popa   
c0106737:	63 68 69             	arpl   WORD PTR [eax+0x69],bp
c010673a:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010673b:	65 2e 0a 00          	gs or  al,BYTE PTR cs:[eax]
c010673f:	69 6e 74 72 3a 20 30 	imul   ebp,DWORD PTR [esi+0x74],0x30203a72
c0106746:	78 25                	js     c010676d <PKn_Version+0x5a5>
c0106748:	30 32                	xor    BYTE PTR [edx],dh
c010674a:	78 00                	js     c010674c <PKn_Version+0x584>
c010674c:	28 20                	sub    BYTE PTR [eax],ah
c010674e:	46                   	inc    esi
c010674f:	61                   	popa   
c0106750:	75 6c                	jne    c01067be <PKn_Version+0x5f6>
c0106752:	74 20                	je     c0106774 <PKn_Version+0x5ac>
c0106754:	61                   	popa   
c0106755:	64 64 72 65          	fs fs jb c01067be <PKn_Version+0x5f6>
c0106759:	73 73                	jae    c01067ce <PKn_Version+0x606>
c010675b:	3a 20                	cmp    ah,BYTE PTR [eax]
c010675d:	30 78 25             	xor    BYTE PTR [eax+0x25],bh
c0106760:	30 38                	xor    BYTE PTR [eax],bh
c0106762:	78 20                	js     c0106784 <PKn_Version+0x5bc>
c0106764:	29 00                	sub    DWORD PTR [eax],eax
c0106766:	00 00                	add    BYTE PTR [eax],al
c0106768:	50                   	push   eax
c0106769:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c010676b:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c010676e:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c0106773:	65 6c                	gs ins BYTE PTR es:[edi],dx
c0106775:	20 28                	and    BYTE PTR [eax],ch
c0106777:	50                   	push   eax
c0106778:	4b                   	dec    ebx
c0106779:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010677a:	29 20                	sub    DWORD PTR [eax],esp
c010677c:	76 65                	jbe    c01067e3 <PKn_Version+0x61b>
c010677e:	72 73                	jb     c01067f3 <PKn_Version+0x62b>
c0106780:	69 6f 6e 20 30 2e 30 	imul   ebp,DWORD PTR [edi+0x6e],0x302e3020
c0106787:	2e 30 20             	xor    BYTE PTR cs:[eax],ah
c010678a:	74 65                	je     c01067f1 <PKn_Version+0x629>
c010678c:	73 74                	jae    c0106802 <PKn_Version+0x63a>
c010678e:	00 00                	add    BYTE PTR [eax],al
c0106790:	66 72 65             	data16 jb c01067f8 <PKn_Version+0x630>
c0106793:	65 20 21             	and    BYTE PTR gs:[ecx],ah
c0106796:	3d 20 4e 55 4c       	cmp    eax,0x4c554e20
c010679b:	4c                   	dec    esp
c010679c:	00 6d 65             	add    BYTE PTR [ebp+0x65],ch
c010679f:	6d                   	ins    DWORD PTR es:[edi],dx
c01067a0:	6f                   	outs   dx,DWORD PTR ds:[esi]
c01067a1:	72 79                	jb     c010681c <PKn_Version+0x654>
c01067a3:	2f                   	das    
c01067a4:	6d                   	ins    DWORD PTR es:[edi],dx
c01067a5:	65 6d                	gs ins DWORD PTR es:[edi],dx
c01067a7:	6f                   	outs   dx,DWORD PTR ds:[esi]
c01067a8:	72 79                	jb     c0106823 <PKn_Version+0x65b>
c01067aa:	2e 63 00             	arpl   WORD PTR cs:[eax],ax
c01067ad:	41                   	inc    ecx
c01067ae:	72 64                	jb     c0106814 <PKn_Version+0x64c>
c01067b0:	73 3a                	jae    c01067ec <PKn_Version+0x624>
c01067b2:	0a 00                	or     al,BYTE PTR [eax]
c01067b4:	20 42 61             	and    BYTE PTR [edx+0x61],al
c01067b7:	73 65                	jae    c010681e <PKn_Version+0x656>
c01067b9:	3a 09                	cmp    cl,BYTE PTR [ecx]
c01067bb:	09 30                	or     DWORD PTR [eax],esi
c01067bd:	78 00                	js     c01067bf <PKn_Version+0x5f7>
c01067bf:	20 0a                	and    BYTE PTR [edx],cl
c01067c1:	20 4c 65 6e          	and    BYTE PTR [ebp+eiz*2+0x6e],cl
c01067c5:	67 74 68             	addr16 je c0106830 <PKn_Version+0x668>
c01067c8:	3a 09                	cmp    cl,BYTE PTR [ecx]
c01067ca:	30 78 00             	xor    BYTE PTR [eax+0x0],bh
c01067cd:	20 0a                	and    BYTE PTR [edx],cl
c01067cf:	20 74 79 70          	and    BYTE PTR [ecx+edi*2+0x70],dh
c01067d3:	65 3a 09             	cmp    cl,BYTE PTR gs:[ecx]
c01067d6:	09 00                	or     DWORD PTR [eax],eax
c01067d8:	0a 00                	or     al,BYTE PTR [eax]
c01067da:	4e                   	dec    esi
c01067db:	6f                   	outs   dx,DWORD PTR ds:[esi]
c01067dc:	20 4d 65             	and    BYTE PTR [ebp+0x65],cl
c01067df:	6d                   	ins    DWORD PTR es:[edi],dx
c01067e0:	6f                   	outs   dx,DWORD PTR ds:[esi]
c01067e1:	72 79                	jb     c010685c <PKn_Version+0x694>
c01067e3:	20 61 76             	and    BYTE PTR [ecx+0x76],ah
c01067e6:	61                   	popa   
c01067e7:	69 6c 61 62 6c 65 21 	imul   ebp,DWORD PTR [ecx+eiz*2+0x62],0x21656c
c01067ee:	00 
c01067ef:	20 4d 65             	and    BYTE PTR [ebp+0x65],cl
c01067f2:	6d                   	ins    DWORD PTR es:[edi],dx
c01067f3:	61                   	popa   
c01067f4:	6c                   	ins    BYTE PTR es:[edi],dx
c01067f5:	6c                   	ins    BYTE PTR es:[edi],dx
c01067f6:	6f                   	outs   dx,DWORD PTR ds:[esi]
c01067f7:	63 3a                	arpl   WORD PTR [edx],di
c01067f9:	20 00                	and    BYTE PTR [eax],al
c01067fb:	67 65 74 5f          	addr16 gs je c010685e <PKn_Version+0x696>
c01067ff:	61                   	popa   
c0106800:	5f                   	pop    edi
c0106801:	70 61                	jo     c0106864 <PKn_Version+0x69c>
c0106803:	67 65 3a 20          	cmp    ah,BYTE PTR gs:[bx+si]
c0106807:	6e                   	outs   dx,BYTE PTR ds:[esi]
c0106808:	6f                   	outs   dx,DWORD PTR ds:[esi]
c0106809:	74 20                	je     c010682b <PKn_Version+0x663>
c010680b:	61                   	popa   
c010680c:	6c                   	ins    BYTE PTR es:[edi],dx
c010680d:	6c                   	ins    BYTE PTR es:[edi],dx
c010680e:	6f                   	outs   dx,DWORD PTR ds:[esi]
c010680f:	77 20                	ja     c0106831 <PKn_Version+0x669>
c0106811:	6b 65 72 6e          	imul   esp,DWORD PTR [ebp+0x72],0x6e
c0106815:	65 6c                	gs ins BYTE PTR es:[edi],dx
c0106817:	20 61 6c             	and    BYTE PTR [ecx+0x6c],ah
c010681a:	6c                   	ins    BYTE PTR es:[edi],dx
c010681b:	6f                   	outs   dx,DWORD PTR ds:[esi]
c010681c:	63 20                	arpl   WORD PTR [eax],sp
c010681e:	75 73                	jne    c0106893 <__func__.1119+0x3>
c0106820:	65 72 73             	gs jb  c0106896 <__func__.1119+0x6>
c0106823:	70 61                	jo     c0106886 <PKn_Version+0x6be>
c0106825:	63 65 20             	arpl   WORD PTR [ebp+0x20],sp
c0106828:	6f                   	outs   dx,DWORD PTR ds:[esi]
c0106829:	72 20                	jb     c010684b <PKn_Version+0x683>
c010682b:	75 73                	jne    c01068a0 <__func__.1126+0x4>
c010682d:	65 72 20             	gs jb  c0106850 <PKn_Version+0x688>
c0106830:	61                   	popa   
c0106831:	6c                   	ins    BYTE PTR es:[edi],dx
c0106832:	6c                   	ins    BYTE PTR es:[edi],dx
c0106833:	6f                   	outs   dx,DWORD PTR ds:[esi]
c0106834:	63 20                	arpl   WORD PTR [eax],sp
c0106836:	6b 65 72 6e          	imul   esp,DWORD PTR [ebp+0x72],0x6e
c010683a:	65 6c                	gs ins BYTE PTR es:[edi],dx
c010683c:	73 70                	jae    c01068ae <__func__.1217+0x6>
c010683e:	61                   	popa   
c010683f:	63 65 20             	arpl   WORD PTR [ebp+0x20],sp
c0106842:	62 79 20             	bound  edi,QWORD PTR [ecx+0x20]
c0106845:	67 65 74 5f          	addr16 gs je c01068a8 <__func__.1217>
c0106849:	61                   	popa   
c010684a:	5f                   	pop    edi
c010684b:	70 61                	jo     c01068ae <__func__.1217+0x6>
c010684d:	67 65 28 29          	sub    BYTE PTR gs:[bx+di],ch
c0106851:	00 70 61             	add    BYTE PTR [eax+0x61],dh
c0106854:	67 65 5f             	addr16 gs pop edi
c0106857:	70 61                	jo     c01068ba <__func__.1217+0x12>
c0106859:	64 64 72 20          	fs fs jb c010687d <PKn_Version+0x6b5>
c010685d:	21 3d 20 4e 55 4c    	and    DWORD PTR ds:0x4c554e20,edi
c0106863:	4c                   	dec    esp
c0106864:	00 00                	add    BYTE PTR [eax],al
c0106866:	00 00                	add    BYTE PTR [eax],al
c0106868:	50                   	push   eax
c0106869:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c010686b:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c010686e:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c0106873:	65 6c                	gs ins BYTE PTR es:[edi],dx
c0106875:	20 28                	and    BYTE PTR [eax],ch
c0106877:	50                   	push   eax
c0106878:	4b                   	dec    ebx
c0106879:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010687a:	29 20                	sub    DWORD PTR [eax],esp
c010687c:	76 65                	jbe    c01068e3 <__func__.1217+0x3b>
c010687e:	72 73                	jb     c01068f3 <__func__.1217+0x4b>
c0106880:	69 6f 6e 20 30 2e 30 	imul   ebp,DWORD PTR [edi+0x6e],0x302e3020
c0106887:	2e 30 20             	xor    BYTE PTR cs:[eax],ah
c010688a:	74 65                	je     c01068f1 <__func__.1217+0x49>
c010688c:	73 74                	jae    c0106902 <__func__.1217+0x5a>
	...

c0106890 <__func__.1119>:
c0106890:	69 6e 69 74 5f 6d 65 	imul   ebp,DWORD PTR [esi+0x69],0x656d5f74
c0106897:	6d                   	ins    DWORD PTR es:[edi],dx
c0106898:	6f                   	outs   dx,DWORD PTR ds:[esi]
c0106899:	72 79                	jb     c0106914 <__func__.1217+0x6c>
	...

c010689c <__func__.1126>:
c010689c:	69 6e 69 74 5f 6d 65 	imul   ebp,DWORD PTR [esi+0x69],0x656d5f74
c01068a3:	6d                   	ins    DWORD PTR es:[edi],dx
c01068a4:	6d                   	ins    DWORD PTR es:[edi],dx
c01068a5:	61                   	popa   
c01068a6:	6e                   	outs   dx,BYTE PTR ds:[esi]
	...

c01068a8 <__func__.1217>:
c01068a8:	67 65 74 5f          	addr16 gs je c010690b <__func__.1217+0x63>
c01068ac:	61                   	popa   
c01068ad:	5f                   	pop    edi
c01068ae:	70 61                	jo     c0106911 <__func__.1217+0x69>
c01068b0:	67 65 00 00          	add    BYTE PTR gs:[bx+si],al
c01068b4:	70 73                	jo     c0106929 <__func__.1217+0x81>
c01068b6:	65 6d                	gs ins DWORD PTR es:[edi],dx
c01068b8:	61                   	popa   
c01068b9:	2d 3e 76 61 6c       	sub    eax,0x6c61763e
c01068be:	75 65                	jne    c0106925 <__func__.1217+0x7d>
c01068c0:	20 3d 3d 20 76 61    	and    BYTE PTR ds:0x6176203d,bh
c01068c6:	6c                   	ins    BYTE PTR es:[edi],dx
c01068c7:	75 65                	jne    c010692e <__func__.1217+0x86>
c01068c9:	00 74 68 72          	add    BYTE PTR [eax+ebp*2+0x72],dh
c01068cd:	65 61                	gs popa 
c01068cf:	64 2f                	fs das 
c01068d1:	73 79                	jae    c010694c <__func__.1217+0xa4>
c01068d3:	6e                   	outs   dx,BYTE PTR ds:[esi]
c01068d4:	63 2e                	arpl   WORD PTR [esi],bp
c01068d6:	63 00                	arpl   WORD PTR [eax],ax
c01068d8:	21 28                	and    DWORD PTR [eax],ebp
c01068da:	6c                   	ins    BYTE PTR es:[edi],dx
c01068db:	69 73 74 5f 66 69 6e 	imul   esi,DWORD PTR [ebx+0x74],0x6e69665f
c01068e2:	64 28 26             	sub    BYTE PTR fs:[esi],ah
c01068e5:	28 70 73             	sub    BYTE PTR [eax+0x73],dh
c01068e8:	65 6d                	gs ins DWORD PTR es:[edi],dx
c01068ea:	61                   	popa   
c01068eb:	2d 3e 77 61 69       	sub    eax,0x6961773e
c01068f0:	74 65                	je     c0106957 <__func__.1217+0xaf>
c01068f2:	72 73                	jb     c0106967 <__func__.1217+0xbf>
c01068f4:	29 2c 26             	sub    DWORD PTR [esi+eiz*1],ebp
c01068f7:	28 72 75             	sub    BYTE PTR [edx+0x75],dh
c01068fa:	6e                   	outs   dx,BYTE PTR ds:[esi]
c01068fb:	6e                   	outs   dx,BYTE PTR ds:[esi]
c01068fc:	69 6e 67 5f 74 68 72 	imul   ebp,DWORD PTR [esi+0x67],0x7268745f
c0106903:	65 61                	gs popa 
c0106905:	64 28 29             	sub    BYTE PTR fs:[ecx],ch
c0106908:	2d 3e 67 65 6e       	sub    eax,0x6e65673e
c010690d:	65 72 61             	gs jb  c0106971 <__func__.1217+0xc9>
c0106910:	6c                   	ins    BYTE PTR es:[edi],dx
c0106911:	5f                   	pop    edi
c0106912:	74 61                	je     c0106975 <__func__.1217+0xcd>
c0106914:	67 29 29             	sub    DWORD PTR [bx+di],ebp
c0106917:	29 00                	sub    DWORD PTR [eax],eax
c0106919:	73 65                	jae    c0106980 <__func__.1217+0xd8>
c010691b:	6d                   	ins    DWORD PTR es:[edi],dx
c010691c:	61                   	popa   
c010691d:	20 64 6f 77          	and    BYTE PTR [edi+ebp*2+0x77],ah
c0106921:	6e                   	outs   dx,BYTE PTR ds:[esi]
c0106922:	3a 74 68 72          	cmp    dh,BYTE PTR [eax+ebp*2+0x72]
c0106926:	65 61                	gs popa 
c0106928:	64 20 62 6c          	and    BYTE PTR fs:[edx+0x6c],ah
c010692c:	6f                   	outs   dx,DWORD PTR ds:[esi]
c010692d:	63 6b 65             	arpl   WORD PTR [ebx+0x65],bp
c0106930:	64 20 68 61          	and    BYTE PTR fs:[eax+0x61],ch
c0106934:	73 20                	jae    c0106956 <__func__.1217+0xae>
c0106936:	62 65 65             	bound  esp,QWORD PTR [ebp+0x65]
c0106939:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010693a:	20 69 6e             	and    BYTE PTR [ecx+0x6e],ch
c010693d:	20 77 61             	and    BYTE PTR [edi+0x61],dh
c0106940:	69 74 65 72 73 20 6c 	imul   esi,DWORD PTR [ebp+eiz*2+0x72],0x696c2073
c0106947:	69 
c0106948:	73 74                	jae    c01069be <__func__.1217+0x116>
c010694a:	21 0a                	and    DWORD PTR [edx],ecx
c010694c:	00 70 73             	add    BYTE PTR [eax+0x73],dh
c010694f:	65 6d                	gs ins DWORD PTR es:[edi],dx
c0106951:	61                   	popa   
c0106952:	2d 3e 76 61 6c       	sub    eax,0x6c61763e
c0106957:	75 65                	jne    c01069be <__func__.1217+0x116>
c0106959:	20 3d 3d 20 30 00    	and    BYTE PTR ds:0x30203d,bh
c010695f:	70 73                	jo     c01069d4 <__func__.1217+0x12c>
c0106961:	65 6d                	gs ins DWORD PTR es:[edi],dx
c0106963:	61                   	popa   
c0106964:	2d 3e 76 61 6c       	sub    eax,0x6c61763e
c0106969:	75 65                	jne    c01069d0 <__func__.1217+0x128>
c010696b:	20 3d 3d 20 31 00    	and    BYTE PTR ds:0x31203d,bh
c0106971:	70 6c                	jo     c01069df <__func__.1217+0x137>
c0106973:	6f                   	outs   dx,DWORD PTR ds:[esi]
c0106974:	63 6b 2d             	arpl   WORD PTR [ebx+0x2d],bp
c0106977:	3e 68 6f 6c 64 65    	ds push 0x65646c6f
c010697d:	72 5f                	jb     c01069de <__func__.1217+0x136>
c010697f:	72 65                	jb     c01069e6 <__func__.1217+0x13e>
c0106981:	70 65                	jo     c01069e8 <__func__.1217+0x140>
c0106983:	61                   	popa   
c0106984:	74 5f                	je     c01069e5 <__func__.1217+0x13d>
c0106986:	6e                   	outs   dx,BYTE PTR ds:[esi]
c0106987:	72 20                	jb     c01069a9 <__func__.1217+0x101>
c0106989:	3d 3d 20 30 00       	cmp    eax,0x30203d
c010698e:	70 6c                	jo     c01069fc <__func__.1040+0x4>
c0106990:	6f                   	outs   dx,DWORD PTR ds:[esi]
c0106991:	63 6b 2d             	arpl   WORD PTR [ebx+0x2d],bp
c0106994:	3e 68 6f 6c 64 65    	ds push 0x65646c6f
c010699a:	72 20                	jb     c01069bc <__func__.1217+0x114>
c010699c:	3d 3d 20 72 75       	cmp    eax,0x7572203d
c01069a1:	6e                   	outs   dx,BYTE PTR ds:[esi]
c01069a2:	6e                   	outs   dx,BYTE PTR ds:[esi]
c01069a3:	69 6e 67 5f 74 68 72 	imul   ebp,DWORD PTR [esi+0x67],0x7268745f
c01069aa:	65 61                	gs popa 
c01069ac:	64 28 29             	sub    BYTE PTR fs:[ecx],ch
c01069af:	00 70 6c             	add    BYTE PTR [eax+0x6c],dh
c01069b2:	6f                   	outs   dx,DWORD PTR ds:[esi]
c01069b3:	63 6b 2d             	arpl   WORD PTR [ebx+0x2d],bp
c01069b6:	3e 68 6f 6c 64 65    	ds push 0x65646c6f
c01069bc:	72 5f                	jb     c0106a1d <__func__.1061+0x5>
c01069be:	72 65                	jb     c0106a25 <__func__.1061+0xd>
c01069c0:	70 65                	jo     c0106a27 <__func__.1061+0xf>
c01069c2:	61                   	popa   
c01069c3:	74 5f                	je     c0106a24 <__func__.1061+0xc>
c01069c5:	6e                   	outs   dx,BYTE PTR ds:[esi]
c01069c6:	72 20                	jb     c01069e8 <__func__.1217+0x140>
c01069c8:	3d 3d 20 31 00       	cmp    eax,0x31203d
c01069cd:	00 00                	add    BYTE PTR [eax],al
c01069cf:	00 50 65             	add    BYTE PTR [eax+0x65],dl
c01069d2:	6e                   	outs   dx,BYTE PTR ds:[esi]
c01069d3:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c01069d6:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c01069db:	65 6c                	gs ins BYTE PTR es:[edi],dx
c01069dd:	20 28                	and    BYTE PTR [eax],ch
c01069df:	50                   	push   eax
c01069e0:	4b                   	dec    ebx
c01069e1:	6e                   	outs   dx,BYTE PTR ds:[esi]
c01069e2:	29 20                	sub    DWORD PTR [eax],esp
c01069e4:	76 65                	jbe    c0106a4b <__func__.1065+0x23>
c01069e6:	72 73                	jb     c0106a5b <__func__.1065+0x33>
c01069e8:	69 6f 6e 20 30 2e 30 	imul   ebp,DWORD PTR [edi+0x6e],0x302e3020
c01069ef:	2e 30 20             	xor    BYTE PTR cs:[eax],ah
c01069f2:	74 65                	je     c0106a59 <__func__.1065+0x31>
c01069f4:	73 74                	jae    c0106a6a <__func__.1065+0x42>
	...

c01069f8 <__func__.1040>:
c01069f8:	73 65                	jae    c0106a5f <__func__.1065+0x37>
c01069fa:	6d                   	ins    DWORD PTR es:[edi],dx
c01069fb:	61                   	popa   
c01069fc:	5f                   	pop    edi
c01069fd:	69 6e 69 74 00 00 00 	imul   ebp,DWORD PTR [esi+0x69],0x74

c0106a04 <__func__.1048>:
c0106a04:	73 65                	jae    c0106a6b <__func__.1065+0x43>
c0106a06:	6d                   	ins    DWORD PTR es:[edi],dx
c0106a07:	61                   	popa   
c0106a08:	5f                   	pop    edi
c0106a09:	64 6f                	outs   dx,DWORD PTR fs:[esi]
c0106a0b:	77 6e                	ja     c0106a7b <__func__.1065+0x53>
c0106a0d:	00 00                	add    BYTE PTR [eax],al
	...

c0106a10 <__func__.1056>:
c0106a10:	73 65                	jae    c0106a77 <__func__.1065+0x4f>
c0106a12:	6d                   	ins    DWORD PTR es:[edi],dx
c0106a13:	61                   	popa   
c0106a14:	5f                   	pop    edi
c0106a15:	75 70                	jne    c0106a87 <__func__.1065+0x5f>
	...

c0106a18 <__func__.1061>:
c0106a18:	6c                   	ins    BYTE PTR es:[edi],dx
c0106a19:	6f                   	outs   dx,DWORD PTR ds:[esi]
c0106a1a:	63 6b 5f             	arpl   WORD PTR [ebx+0x5f],bp
c0106a1d:	61                   	popa   
c0106a1e:	63 71 75             	arpl   WORD PTR [ecx+0x75],si
c0106a21:	69 72 65 00 00 00 00 	imul   esi,DWORD PTR [edx+0x65],0x0

c0106a28 <__func__.1065>:
c0106a28:	6c                   	ins    BYTE PTR es:[edi],dx
c0106a29:	6f                   	outs   dx,DWORD PTR ds:[esi]
c0106a2a:	63 6b 5f             	arpl   WORD PTR [ebx+0x5f],bp
c0106a2d:	72 65                	jb     c0106a94 <__func__.1065+0x6c>
c0106a2f:	6c                   	ins    BYTE PTR es:[edi],dx
c0106a30:	65 61                	gs popa 
c0106a32:	73 65                	jae    c0106a99 <__func__.1065+0x71>
c0106a34:	00 00                	add    BYTE PTR [eax],al
c0106a36:	00 00                	add    BYTE PTR [eax],al
c0106a38:	4d                   	dec    ebp
c0106a39:	61                   	popa   
c0106a3a:	69 6e 20 74 68 72 65 	imul   ebp,DWORD PTR [esi+0x20],0x65726874
c0106a41:	61                   	popa   
c0106a42:	64 00 21             	add    BYTE PTR fs:[ecx],ah
c0106a45:	6c                   	ins    BYTE PTR es:[edi],dx
c0106a46:	69 73 74 5f 66 69 6e 	imul   esi,DWORD PTR [ebx+0x74],0x6e69665f
c0106a4d:	64 28 26             	sub    BYTE PTR fs:[esi],ah
c0106a50:	72 65                	jb     c0106ab7 <__func__.1065+0x8f>
c0106a52:	61                   	popa   
c0106a53:	64 79 5f             	fs jns c0106ab5 <__func__.1065+0x8d>
c0106a56:	6c                   	ins    BYTE PTR es:[edi],dx
c0106a57:	69 73 74 2c 26 28 74 	imul   esi,DWORD PTR [ebx+0x74],0x7428262c
c0106a5e:	68 72 65 61 64       	push   0x64616572
c0106a63:	2d 3e 67 65 6e       	sub    eax,0x6e65673e
c0106a68:	65 72 61             	gs jb  c0106acc <__func__.1065+0xa4>
c0106a6b:	6c                   	ins    BYTE PTR es:[edi],dx
c0106a6c:	5f                   	pop    edi
c0106a6d:	74 61                	je     c0106ad0 <__func__.1065+0xa8>
c0106a6f:	67 29 29             	sub    DWORD PTR [bx+di],ebp
c0106a72:	00 74 68 72          	add    BYTE PTR [eax+ebp*2+0x72],dh
c0106a76:	65 61                	gs popa 
c0106a78:	64 2f                	fs das 
c0106a7a:	74 68                	je     c0106ae4 <__func__.1065+0xbc>
c0106a7c:	72 65                	jb     c0106ae3 <__func__.1065+0xbb>
c0106a7e:	61                   	popa   
c0106a7f:	64 2e 63 00          	fs arpl WORD PTR cs:[eax],ax
c0106a83:	21 6c 69 73          	and    DWORD PTR [ecx+ebp*2+0x73],ebp
c0106a87:	74 5f                	je     c0106ae8 <__func__.1065+0xc0>
c0106a89:	66 69 6e 64 28 26    	imul   bp,WORD PTR [esi+0x64],0x2628
c0106a8f:	61                   	popa   
c0106a90:	6c                   	ins    BYTE PTR es:[edi],dx
c0106a91:	6c                   	ins    BYTE PTR es:[edi],dx
c0106a92:	5f                   	pop    edi
c0106a93:	6c                   	ins    BYTE PTR es:[edi],dx
c0106a94:	69 73 74 2c 26 28 74 	imul   esi,DWORD PTR [ebx+0x74],0x7428262c
c0106a9b:	68 72 65 61 64       	push   0x64616572
c0106aa0:	2d 3e 61 6c 6c       	sub    eax,0x6c6c613e
c0106aa5:	5f                   	pop    edi
c0106aa6:	74 61                	je     c0106b09 <__func__.1065+0xe1>
c0106aa8:	67 29 29             	sub    DWORD PTR [bx+di],ebp
c0106aab:	00 63 75             	add    BYTE PTR [ebx+0x75],ah
c0106aae:	72 5f                	jb     c0106b0f <__func__.1065+0xe7>
c0106ab0:	74 68                	je     c0106b1a <__func__.1065+0xf2>
c0106ab2:	72 65                	jb     c0106b19 <__func__.1065+0xf1>
c0106ab4:	61                   	popa   
c0106ab5:	64 2d 3e 73 74 61    	fs sub eax,0x6174733e
c0106abb:	63 6b 5f             	arpl   WORD PTR [ebx+0x5f],bp
c0106abe:	6d                   	ins    DWORD PTR es:[edi],dx
c0106abf:	61                   	popa   
c0106ac0:	67 69 63 20 3d 3d 20 	imul   esp,DWORD PTR [bp+di+0x20],0x30203d3d
c0106ac7:	30 
c0106ac8:	78 31                	js     c0106afb <__func__.1065+0xd3>
c0106aca:	32 33                	xor    dh,BYTE PTR [ebx]
c0106acc:	34 35                	xor    al,0x35
c0106ace:	36 37                	ss aaa 
c0106ad0:	38 00                	cmp    BYTE PTR [eax],al
c0106ad2:	21 28                	and    DWORD PTR [eax],ebp
c0106ad4:	6c                   	ins    BYTE PTR es:[edi],dx
c0106ad5:	69 73 74 5f 66 69 6e 	imul   esi,DWORD PTR [ebx+0x74],0x6e69665f
c0106adc:	64 28 26             	sub    BYTE PTR fs:[esi],ah
c0106adf:	72 65                	jb     c0106b46 <__func__.1065+0x11e>
c0106ae1:	61                   	popa   
c0106ae2:	64 79 5f             	fs jns c0106b44 <__func__.1065+0x11c>
c0106ae5:	6c                   	ins    BYTE PTR es:[edi],dx
c0106ae6:	69 73 74 2c 26 28 63 	imul   esi,DWORD PTR [ebx+0x74],0x6328262c
c0106aed:	75 72                	jne    c0106b61 <__func__.1065+0x139>
c0106aef:	5f                   	pop    edi
c0106af0:	74 68                	je     c0106b5a <__func__.1065+0x132>
c0106af2:	72 65                	jb     c0106b59 <__func__.1065+0x131>
c0106af4:	61                   	popa   
c0106af5:	64 2d 3e 67 65 6e    	fs sub eax,0x6e65673e
c0106afb:	65 72 61             	gs jb  c0106b5f <__func__.1065+0x137>
c0106afe:	6c                   	ins    BYTE PTR es:[edi],dx
c0106aff:	5f                   	pop    edi
c0106b00:	74 61                	je     c0106b63 <__func__.1065+0x13b>
c0106b02:	67 29 29             	sub    DWORD PTR [bx+di],ebp
c0106b05:	29 00                	sub    DWORD PTR [eax],eax
c0106b07:	21 28                	and    DWORD PTR [eax],ebp
c0106b09:	6c                   	ins    BYTE PTR es:[edi],dx
c0106b0a:	69 73 74 5f 65 6d 70 	imul   esi,DWORD PTR [ebx+0x74],0x706d655f
c0106b11:	74 79                	je     c0106b8c <__func__.1065+0x164>
c0106b13:	28 26                	sub    BYTE PTR [esi],ah
c0106b15:	72 65                	jb     c0106b7c <__func__.1065+0x154>
c0106b17:	61                   	popa   
c0106b18:	64 79 5f             	fs jns c0106b7a <__func__.1065+0x152>
c0106b1b:	6c                   	ins    BYTE PTR es:[edi],dx
c0106b1c:	69 73 74 29 29 00 72 	imul   esi,DWORD PTR [ebx+0x74],0x72002929
c0106b23:	65 61                	gs popa 
c0106b25:	64 79 5f             	fs jns c0106b87 <__func__.1065+0x15f>
c0106b28:	6c                   	ins    BYTE PTR es:[edi],dx
c0106b29:	69 73 74 2e 74 61 69 	imul   esi,DWORD PTR [ebx+0x74],0x6961742e
c0106b30:	6c                   	ins    BYTE PTR es:[edi],dx
c0106b31:	2e 70 72             	cs jo  c0106ba6 <__func__.1065+0x17e>
c0106b34:	65 76 20             	gs jbe c0106b57 <__func__.1065+0x12f>
c0106b37:	21 3d 20 26 72 65    	and    DWORD PTR ds:0x65722620,edi
c0106b3d:	61                   	popa   
c0106b3e:	64 79 5f             	fs jns c0106ba0 <__func__.1065+0x178>
c0106b41:	6c                   	ins    BYTE PTR es:[edi],dx
c0106b42:	69 73 74 2e 68 65 61 	imul   esi,DWORD PTR [ebx+0x74],0x6165682e
c0106b49:	64 00 75 73          	add    BYTE PTR fs:[ebp+0x73],dh
c0106b4d:	65 72 5f             	gs jb  c0106baf <__func__.1065+0x187>
c0106b50:	70 72                	jo     c0106bc4 <__func__.1065+0x19c>
c0106b52:	6f                   	outs   dx,DWORD PTR ds:[esi]
c0106b53:	67 00 73 74          	add    BYTE PTR [bp+di+0x74],dh
c0106b57:	61                   	popa   
c0106b58:	74 75                	je     c0106bcf <__func__.1065+0x1a7>
c0106b5a:	73 20                	jae    c0106b7c <__func__.1065+0x154>
c0106b5c:	21 3d 20 54 41 53    	and    DWORD PTR ds:0x53415420,edi
c0106b62:	4b                   	dec    ebx
c0106b63:	5f                   	pop    edi
c0106b64:	52                   	push   edx
c0106b65:	55                   	push   ebp
c0106b66:	4e                   	dec    esi
c0106b67:	4e                   	dec    esi
c0106b68:	49                   	dec    ecx
c0106b69:	4e                   	dec    esi
c0106b6a:	47                   	inc    edi
c0106b6b:	20 26                	and    BYTE PTR [esi],ah
c0106b6d:	26 20 73 74          	and    BYTE PTR es:[ebx+0x74],dh
c0106b71:	61                   	popa   
c0106b72:	74 75                	je     c0106be9 <__func__.1065+0x1c1>
c0106b74:	73 20                	jae    c0106b96 <__func__.1065+0x16e>
c0106b76:	21 3d 20 54 41 53    	and    DWORD PTR ds:0x53415420,edi
c0106b7c:	4b                   	dec    ebx
c0106b7d:	5f                   	pop    edi
c0106b7e:	52                   	push   edx
c0106b7f:	45                   	inc    ebp
c0106b80:	41                   	inc    ecx
c0106b81:	44                   	inc    esp
c0106b82:	59                   	pop    ecx
c0106b83:	00 21                	add    BYTE PTR [ecx],ah
c0106b85:	6c                   	ins    BYTE PTR es:[edi],dx
c0106b86:	69 73 74 5f 66 69 6e 	imul   esi,DWORD PTR [ebx+0x74],0x6e69665f
c0106b8d:	64 28 26             	sub    BYTE PTR fs:[esi],ah
c0106b90:	72 65                	jb     c0106bf7 <__func__.1065+0x1cf>
c0106b92:	61                   	popa   
c0106b93:	64 79 5f             	fs jns c0106bf5 <__func__.1065+0x1cd>
c0106b96:	6c                   	ins    BYTE PTR es:[edi],dx
c0106b97:	69 73 74 2c 26 28 70 	imul   esi,DWORD PTR [ebx+0x74],0x7028262c
c0106b9e:	74 68                	je     c0106c08 <__func__.1065+0x1e0>
c0106ba0:	72 65                	jb     c0106c07 <__func__.1065+0x1df>
c0106ba2:	61                   	popa   
c0106ba3:	64 2d 3e 67 65 6e    	fs sub eax,0x6e65673e
c0106ba9:	65 72 61             	gs jb  c0106c0d <__func__.1215+0x1>
c0106bac:	6c                   	ins    BYTE PTR es:[edi],dx
c0106bad:	5f                   	pop    edi
c0106bae:	74 61                	je     c0106c11 <__func__.1215+0x5>
c0106bb0:	67 29 29             	sub    DWORD PTR [bx+di],ebp
c0106bb3:	00 74 68 72          	add    BYTE PTR [eax+ebp*2+0x72],dh
c0106bb7:	65 61                	gs popa 
c0106bb9:	64 20 75 6e          	and    BYTE PTR fs:[ebp+0x6e],dh
c0106bbd:	62 6c 6f 63          	bound  ebp,QWORD PTR [edi+ebp*2+0x63]
c0106bc1:	6b 3a 20             	imul   edi,DWORD PTR [edx],0x20
c0106bc4:	62 6c 6f 63          	bound  ebp,QWORD PTR [edi+ebp*2+0x63]
c0106bc8:	6b 65 64 20          	imul   esp,DWORD PTR [ebp+0x64],0x20
c0106bcc:	74 68                	je     c0106c36 <__func__.1228+0xe>
c0106bce:	72 65                	jb     c0106c35 <__func__.1228+0xd>
c0106bd0:	61                   	popa   
c0106bd1:	64 20 69 6e          	and    BYTE PTR fs:[ecx+0x6e],ch
c0106bd5:	20 72 65             	and    BYTE PTR [edx+0x65],dh
c0106bd8:	61                   	popa   
c0106bd9:	64 79 20             	fs jns c0106bfc <__func__.1065+0x1d4>
c0106bdc:	6c                   	ins    BYTE PTR es:[edi],dx
c0106bdd:	69 73 74 00 00 00 00 	imul   esi,DWORD PTR [ebx+0x74],0x0
c0106be4:	50                   	push   eax
c0106be5:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c0106be7:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c0106bea:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c0106bef:	65 6c                	gs ins BYTE PTR es:[edi],dx
c0106bf1:	20 28                	and    BYTE PTR [eax],ch
c0106bf3:	50                   	push   eax
c0106bf4:	4b                   	dec    ebx
c0106bf5:	6e                   	outs   dx,BYTE PTR ds:[esi]
c0106bf6:	29 20                	sub    DWORD PTR [eax],esp
c0106bf8:	76 65                	jbe    c0106c5f <__func__.1235+0x27>
c0106bfa:	72 73                	jb     c0106c6f <__func__.1235+0x37>
c0106bfc:	69 6f 6e 20 30 2e 30 	imul   ebp,DWORD PTR [edi+0x6e],0x302e3020
c0106c03:	2e 30 20             	xor    BYTE PTR cs:[eax],ah
c0106c06:	74 65                	je     c0106c6d <__func__.1235+0x35>
c0106c08:	73 74                	jae    c0106c7e <__func__.1235+0x46>
	...

c0106c0c <__func__.1215>:
c0106c0c:	74 68                	je     c0106c76 <__func__.1235+0x3e>
c0106c0e:	72 65                	jb     c0106c75 <__func__.1235+0x3d>
c0106c10:	61                   	popa   
c0106c11:	64 5f                	fs pop edi
c0106c13:	73 74                	jae    c0106c89 <__func__.1235+0x51>
c0106c15:	61                   	popa   
c0106c16:	72 74                	jb     c0106c8c <__func__.1235+0x54>
c0106c18:	00 00                	add    BYTE PTR [eax],al
	...

c0106c1c <__func__.1222>:
c0106c1c:	73 63                	jae    c0106c81 <__func__.1235+0x49>
c0106c1e:	68 65 64 75 6c       	push   0x6c756465
c0106c23:	65 00 00             	add    BYTE PTR gs:[eax],al
	...

c0106c28 <__func__.1228>:
c0106c28:	74 68                	je     c0106c92 <__func__.1235+0x5a>
c0106c2a:	72 65                	jb     c0106c91 <__func__.1235+0x59>
c0106c2c:	61                   	popa   
c0106c2d:	64 5f                	fs pop edi
c0106c2f:	62 6c 6f 63          	bound  ebp,QWORD PTR [edi+ebp*2+0x63]
c0106c33:	6b 00 00             	imul   eax,DWORD PTR [eax],0x0
	...

c0106c38 <__func__.1235>:
c0106c38:	74 68                	je     c0106ca2 <__func__.1235+0x6a>
c0106c3a:	72 65                	jb     c0106ca1 <__func__.1235+0x69>
c0106c3c:	61                   	popa   
c0106c3d:	64 5f                	fs pop edi
c0106c3f:	75 6e                	jne    c0106caf <__func__.1235+0x77>
c0106c41:	62 6c 6f 63          	bound  ebp,QWORD PTR [edi+ebp*2+0x63]
c0106c45:	6b 00 00             	imul   eax,DWORD PTR [eax],0x0
c0106c48:	50                   	push   eax
c0106c49:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c0106c4b:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c0106c4e:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c0106c53:	65 6c                	gs ins BYTE PTR es:[edi],dx
c0106c55:	20 28                	and    BYTE PTR [eax],ch
c0106c57:	50                   	push   eax
c0106c58:	4b                   	dec    ebx
c0106c59:	6e                   	outs   dx,BYTE PTR ds:[esi]
c0106c5a:	29 20                	sub    DWORD PTR [eax],esp
c0106c5c:	76 65                	jbe    c0106cc3 <__func__.1235+0x8b>
c0106c5e:	72 73                	jb     c0106cd3 <__func__.1235+0x9b>
c0106c60:	69 6f 6e 20 30 2e 30 	imul   ebp,DWORD PTR [edi+0x6e],0x302e3020
c0106c67:	2e 30 20             	xor    BYTE PTR cs:[eax],ah
c0106c6a:	74 65                	je     c0106cd1 <__func__.1235+0x99>
c0106c6c:	73 74                	jae    c0106ce2 <__func__.1235+0xaa>
c0106c6e:	00 00                	add    BYTE PTR [eax],al
c0106c70:	70 74                	jo     c0106ce6 <__func__.1235+0xae>
c0106c72:	68 72 65 61 64       	push   0x64616572
c0106c77:	2d 3e 70 61 67       	sub    eax,0x6761703e
c0106c7c:	65 5f                	gs pop edi
c0106c7e:	64 69 72 20 21 3d 20 	imul   esi,DWORD PTR fs:[edx+0x20],0x4e203d21
c0106c85:	4e 
c0106c86:	55                   	push   ebp
c0106c87:	4c                   	dec    esp
c0106c88:	4c                   	dec    esp
c0106c89:	00 75 73             	add    BYTE PTR [ebp+0x73],dh
c0106c8c:	65 72 70             	gs jb  c0106cff <__func__.1235+0xc7>
c0106c8f:	72 6f                	jb     c0106d00 <__func__.1235+0xc8>
c0106c91:	67 2f                	addr16 das 
c0106c93:	70 72                	jo     c0106d07 <__func__.1235+0xcf>
c0106c95:	6f                   	outs   dx,DWORD PTR ds:[esi]
c0106c96:	63 65 73             	arpl   WORD PTR [ebp+0x73],sp
c0106c99:	73 2e                	jae    c0106cc9 <__func__.1235+0x91>
c0106c9b:	63 00                	arpl   WORD PTR [eax],ax
c0106c9d:	70 74                	jo     c0106d13 <__func__.1235+0xdb>
c0106c9f:	68 72 65 61 64       	push   0x64616572
c0106ca4:	20 21                	and    BYTE PTR [ecx],ah
c0106ca6:	3d 20 4e 55 4c       	cmp    eax,0x4c554e20
c0106cab:	4c                   	dec    esp
c0106cac:	00 63 72             	add    BYTE PTR [ebx+0x72],ah
c0106caf:	65 61                	gs popa 
c0106cb1:	74 65                	je     c0106d18 <__func__.1235+0xe0>
c0106cb3:	5f                   	pop    edi
c0106cb4:	70 61                	jo     c0106d17 <__func__.1235+0xdf>
c0106cb6:	67 65 5f             	addr16 gs pop edi
c0106cb9:	64 69 72 3a 20 67 65 	imul   esi,DWORD PTR fs:[edx+0x3a],0x74656720
c0106cc0:	74 
c0106cc1:	20 6b 65             	and    BYTE PTR [ebx+0x65],ch
c0106cc4:	72 6e                	jb     c0106d34 <__func__.1235+0xfc>
c0106cc6:	65 6c                	gs ins BYTE PTR es:[edi],dx
c0106cc8:	20 70 61             	and    BYTE PTR [eax+0x61],dh
c0106ccb:	67 65 20 66 61       	and    BYTE PTR gs:[bp+0x61],ah
c0106cd0:	69 6c 65 64 21 0a 00 	imul   ebp,DWORD PTR [ebp+eiz*2+0x64],0x70000a21
c0106cd7:	70 
c0106cd8:	72 6f                	jb     c0106d49 <__func__.1235+0x111>
c0106cda:	67 20 50 43          	and    BYTE PTR [bx+si+0x43],dl
c0106cde:	42                   	inc    edx
c0106cdf:	3a 20                	cmp    ah,BYTE PTR [eax]
c0106ce1:	00 20                	add    BYTE PTR [eax],ah
c0106ce3:	70 72                	jo     c0106d57 <__func__.1235+0x11f>
c0106ce5:	6f                   	outs   dx,DWORD PTR ds:[esi]
c0106ce6:	67 20 70 67          	and    BYTE PTR [bx+si+0x67],dh
c0106cea:	64 69 72 3a 20 00 21 	imul   esi,DWORD PTR fs:[edx+0x3a],0x28210020
c0106cf1:	28 
c0106cf2:	6c                   	ins    BYTE PTR es:[edi],dx
c0106cf3:	69 73 74 5f 66 69 6e 	imul   esi,DWORD PTR [ebx+0x74],0x6e69665f
c0106cfa:	64 28 26             	sub    BYTE PTR fs:[esi],ah
c0106cfd:	61                   	popa   
c0106cfe:	6c                   	ins    BYTE PTR es:[edi],dx
c0106cff:	6c                   	ins    BYTE PTR es:[edi],dx
c0106d00:	5f                   	pop    edi
c0106d01:	6c                   	ins    BYTE PTR es:[edi],dx
c0106d02:	69 73 74 2c 26 28 70 	imul   esi,DWORD PTR [ebx+0x74],0x7028262c
c0106d09:	74 68                	je     c0106d73 <__func__.1235+0x13b>
c0106d0b:	72 65                	jb     c0106d72 <__func__.1235+0x13a>
c0106d0d:	61                   	popa   
c0106d0e:	64 2d 3e 61 6c 6c    	fs sub eax,0x6c6c613e
c0106d14:	5f                   	pop    edi
c0106d15:	74 61                	je     c0106d78 <__func__.1139>
c0106d17:	67 29 29             	sub    DWORD PTR [bx+di],ebp
c0106d1a:	29 00                	sub    DWORD PTR [eax],eax
c0106d1c:	21 28                	and    DWORD PTR [eax],ebp
c0106d1e:	6c                   	ins    BYTE PTR es:[edi],dx
c0106d1f:	69 73 74 5f 66 69 6e 	imul   esi,DWORD PTR [ebx+0x74],0x6e69665f
c0106d26:	64 28 26             	sub    BYTE PTR fs:[esi],ah
c0106d29:	72 65                	jb     c0106d90 <__func__.1144+0x4>
c0106d2b:	61                   	popa   
c0106d2c:	64 79 5f             	fs jns c0106d8e <__func__.1144+0x2>
c0106d2f:	6c                   	ins    BYTE PTR es:[edi],dx
c0106d30:	69 73 74 2c 26 28 70 	imul   esi,DWORD PTR [ebx+0x74],0x7028262c
c0106d37:	74 68                	je     c0106da1 <__func__.1161+0x1>
c0106d39:	72 65                	jb     c0106da0 <__func__.1161>
c0106d3b:	61                   	popa   
c0106d3c:	64 2d 3e 67 65 6e    	fs sub eax,0x6e65673e
c0106d42:	65 72 61             	gs jb  c0106da6 <__func__.1161+0x6>
c0106d45:	6c                   	ins    BYTE PTR es:[edi],dx
c0106d46:	5f                   	pop    edi
c0106d47:	74 61                	je     c0106daa <__func__.1161+0xa>
c0106d49:	67 29 29             	sub    DWORD PTR [bx+di],ebp
c0106d4c:	29 00                	sub    DWORD PTR [eax],eax
c0106d4e:	00 00                	add    BYTE PTR [eax],al
c0106d50:	50                   	push   eax
c0106d51:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c0106d53:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c0106d56:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c0106d5b:	65 6c                	gs ins BYTE PTR es:[edi],dx
c0106d5d:	20 28                	and    BYTE PTR [eax],ch
c0106d5f:	50                   	push   eax
c0106d60:	4b                   	dec    ebx
c0106d61:	6e                   	outs   dx,BYTE PTR ds:[esi]
c0106d62:	29 20                	sub    DWORD PTR [eax],esp
c0106d64:	76 65                	jbe    c0106dcb <__func__.1161+0x2b>
c0106d66:	72 73                	jb     c0106ddb <__func__.1161+0x3b>
c0106d68:	69 6f 6e 20 30 2e 30 	imul   ebp,DWORD PTR [edi+0x6e],0x302e3020
c0106d6f:	2e 30 20             	xor    BYTE PTR cs:[eax],ah
c0106d72:	74 65                	je     c0106dd9 <__func__.1161+0x39>
c0106d74:	73 74                	jae    c0106dea <__func__.1161+0x4a>
	...

c0106d78 <__func__.1139>:
c0106d78:	70 61                	jo     c0106ddb <__func__.1161+0x3b>
c0106d7a:	67 65 5f             	addr16 gs pop edi
c0106d7d:	64 69 72 5f 61 63 74 	imul   esi,DWORD PTR fs:[edx+0x5f],0x69746361
c0106d84:	69 
c0106d85:	76 61                	jbe    c0106de8 <__func__.1161+0x48>
c0106d87:	74 65                	je     c0106dee <__func__.1161+0x4e>
c0106d89:	00 00                	add    BYTE PTR [eax],al
	...

c0106d8c <__func__.1144>:
c0106d8c:	70 72                	jo     c0106e00 <__func__.1161+0x60>
c0106d8e:	6f                   	outs   dx,DWORD PTR ds:[esi]
c0106d8f:	63 65 73             	arpl   WORD PTR [ebp+0x73],sp
c0106d92:	73 5f                	jae    c0106df3 <__func__.1161+0x53>
c0106d94:	61                   	popa   
c0106d95:	63 74 69 76          	arpl   WORD PTR [ecx+ebp*2+0x76],si
c0106d99:	61                   	popa   
c0106d9a:	74 65                	je     c0106e01 <__func__.1161+0x61>
c0106d9c:	00 00                	add    BYTE PTR [eax],al
	...

c0106da0 <__func__.1161>:
c0106da0:	70 72                	jo     c0106e14 <__func__.1161+0x74>
c0106da2:	6f                   	outs   dx,DWORD PTR ds:[esi]
c0106da3:	63 65 73             	arpl   WORD PTR [ebp+0x73],sp
c0106da6:	73 5f                	jae    c0106e07 <__func__.1161+0x67>
c0106da8:	65 78 65             	gs js  c0106e10 <__func__.1161+0x70>
c0106dab:	63 75 74             	arpl   WORD PTR [ebp+0x74],si
c0106dae:	65 00 50 65          	add    BYTE PTR gs:[eax+0x65],dl
c0106db2:	6e                   	outs   dx,BYTE PTR ds:[esi]
c0106db3:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c0106db6:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c0106dbb:	65 6c                	gs ins BYTE PTR es:[edi],dx
c0106dbd:	20 28                	and    BYTE PTR [eax],ch
c0106dbf:	50                   	push   eax
c0106dc0:	4b                   	dec    ebx
c0106dc1:	6e                   	outs   dx,BYTE PTR ds:[esi]
c0106dc2:	29 20                	sub    DWORD PTR [eax],esp
c0106dc4:	76 65                	jbe    c0106e2b <__func__.1161+0x8b>
c0106dc6:	72 73                	jb     c0106e3b <keymap+0x7>
c0106dc8:	69 6f 6e 20 30 2e 30 	imul   ebp,DWORD PTR [edi+0x6e],0x302e3020
c0106dcf:	2e 30 20             	xor    BYTE PTR cs:[eax],ah
c0106dd2:	74 65                	je     c0106e39 <keymap+0x5>
c0106dd4:	73 74                	jae    c0106e4a <keymap+0x16>
c0106dd6:	00 00                	add    BYTE PTR [eax],al
c0106dd8:	50                   	push   eax
c0106dd9:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c0106ddb:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c0106dde:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c0106de3:	65 6c                	gs ins BYTE PTR es:[edi],dx
c0106de5:	20 28                	and    BYTE PTR [eax],ch
c0106de7:	50                   	push   eax
c0106de8:	4b                   	dec    ebx
c0106de9:	6e                   	outs   dx,BYTE PTR ds:[esi]
c0106dea:	29 20                	sub    DWORD PTR [eax],esp
c0106dec:	76 65                	jbe    c0106e53 <keymap+0x1f>
c0106dee:	72 73                	jb     c0106e63 <keymap+0x2f>
c0106df0:	69 6f 6e 20 30 2e 30 	imul   ebp,DWORD PTR [edi+0x6e],0x302e3020
c0106df7:	2e 30 20             	xor    BYTE PTR cs:[eax],ah
c0106dfa:	74 65                	je     c0106e61 <keymap+0x2d>
c0106dfc:	73 74                	jae    c0106e72 <keymap+0x3e>
c0106dfe:	00 00                	add    BYTE PTR [eax],al
c0106e00:	75 6e                	jne    c0106e70 <keymap+0x3c>
c0106e02:	6b 6e 6f 77          	imul   ebp,DWORD PTR [esi+0x6f],0x77
c0106e06:	20 6b 65             	and    BYTE PTR [ebx+0x65],ch
c0106e09:	79 00                	jns    c0106e0b <__func__.1161+0x6b>
c0106e0b:	00 50 65             	add    BYTE PTR [eax+0x65],dl
c0106e0e:	6e                   	outs   dx,BYTE PTR ds:[esi]
c0106e0f:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c0106e12:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c0106e17:	65 6c                	gs ins BYTE PTR es:[edi],dx
c0106e19:	20 28                	and    BYTE PTR [eax],ch
c0106e1b:	50                   	push   eax
c0106e1c:	4b                   	dec    ebx
c0106e1d:	6e                   	outs   dx,BYTE PTR ds:[esi]
c0106e1e:	29 20                	sub    DWORD PTR [eax],esp
c0106e20:	76 65                	jbe    c0106e87 <keymap+0x53>
c0106e22:	72 73                	jb     c0106e97 <keymap+0x63>
c0106e24:	69 6f 6e 20 30 2e 30 	imul   ebp,DWORD PTR [edi+0x6e],0x302e3020
c0106e2b:	2e 30 20             	xor    BYTE PTR cs:[eax],ah
c0106e2e:	74 65                	je     c0106e95 <keymap+0x61>
c0106e30:	73 74                	jae    c0106ea6 <keymap+0x72>
	...

c0106e34 <keymap>:
c0106e34:	00 00                	add    BYTE PTR [eax],al
c0106e36:	1b 1b                	sbb    ebx,DWORD PTR [ebx]
c0106e38:	31 21                	xor    DWORD PTR [ecx],esp
c0106e3a:	32 40 33             	xor    al,BYTE PTR [eax+0x33]
c0106e3d:	23 34 24             	and    esi,DWORD PTR [esp]
c0106e40:	35 25 36 5e 37       	xor    eax,0x375e3625
c0106e45:	26 38 2a             	cmp    BYTE PTR es:[edx],ch
c0106e48:	39 28                	cmp    DWORD PTR [eax],ebp
c0106e4a:	30 29                	xor    BYTE PTR [ecx],ch
c0106e4c:	2d 5f 3d 2b 08       	sub    eax,0x82b3d5f
c0106e51:	08 09                	or     BYTE PTR [ecx],cl
c0106e53:	09 71 51             	or     DWORD PTR [ecx+0x51],esi
c0106e56:	77 57                	ja     c0106eaf <keymap+0x7b>
c0106e58:	65 45                	gs inc ebp
c0106e5a:	72 52                	jb     c0106eae <keymap+0x7a>
c0106e5c:	74 54                	je     c0106eb2 <keymap+0x7e>
c0106e5e:	79 59                	jns    c0106eb9 <keymap+0x85>
c0106e60:	75 55                	jne    c0106eb7 <keymap+0x83>
c0106e62:	69 49 6f 4f 70 50 5b 	imul   ecx,DWORD PTR [ecx+0x6f],0x5b50704f
c0106e69:	7b 5d                	jnp    c0106ec8 <keymap+0x94>
c0106e6b:	7d 0d                	jge    c0106e7a <keymap+0x46>
c0106e6d:	0d 00 00 61 41       	or     eax,0x41610000
c0106e72:	73 53                	jae    c0106ec7 <keymap+0x93>
c0106e74:	64 44                	fs inc esp
c0106e76:	66 46                	inc    si
c0106e78:	67 47                	addr16 inc edi
c0106e7a:	68 48 6a 4a 6b       	push   0x6b4a6a48
c0106e7f:	4b                   	dec    ebx
c0106e80:	6c                   	ins    BYTE PTR es:[edi],dx
c0106e81:	4c                   	dec    esp
c0106e82:	3b 3a                	cmp    edi,DWORD PTR [edx]
c0106e84:	27                   	daa    
c0106e85:	22 60 7e             	and    ah,BYTE PTR [eax+0x7e]
c0106e88:	00 00                	add    BYTE PTR [eax],al
c0106e8a:	5c                   	pop    esp
c0106e8b:	7c 7a                	jl     c0106f07 <keymap+0xd3>
c0106e8d:	5a                   	pop    edx
c0106e8e:	78 58                	js     c0106ee8 <keymap+0xb4>
c0106e90:	63 43 76             	arpl   WORD PTR [ebx+0x76],ax
c0106e93:	56                   	push   esi
c0106e94:	62 42 6e             	bound  eax,QWORD PTR [edx+0x6e]
c0106e97:	4e                   	dec    esi
c0106e98:	6d                   	ins    DWORD PTR es:[edi],dx
c0106e99:	4d                   	dec    ebp
c0106e9a:	2c 3c                	sub    al,0x3c
c0106e9c:	2e 3e 2f             	cs ds das 
c0106e9f:	3f                   	aas    
c0106ea0:	00 00                	add    BYTE PTR [eax],al
c0106ea2:	2a 2a                	sub    ch,BYTE PTR [edx]
c0106ea4:	00 00                	add    BYTE PTR [eax],al
c0106ea6:	20 20                	and    BYTE PTR [eax],ah
c0106ea8:	00 00                	add    BYTE PTR [eax],al
c0106eaa:	00 00                	add    BYTE PTR [eax],al
c0106eac:	50                   	push   eax
c0106ead:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c0106eaf:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c0106eb2:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c0106eb7:	65 6c                	gs ins BYTE PTR es:[edi],dx
c0106eb9:	20 28                	and    BYTE PTR [eax],ch
c0106ebb:	50                   	push   eax
c0106ebc:	4b                   	dec    ebx
c0106ebd:	6e                   	outs   dx,BYTE PTR ds:[esi]
c0106ebe:	29 20                	sub    DWORD PTR [eax],esp
c0106ec0:	76 65                	jbe    c0106f27 <keymap+0xf3>
c0106ec2:	72 73                	jb     c0106f37 <keymap+0x103>
c0106ec4:	69 6f 6e 20 30 2e 30 	imul   ebp,DWORD PTR [edi+0x6e],0x302e3020
c0106ecb:	2e 30 20             	xor    BYTE PTR cs:[eax],ah
c0106ece:	74 65                	je     c0106f35 <keymap+0x101>
c0106ed0:	73 74                	jae    c0106f46 <keymap+0x112>
c0106ed2:	00 00                	add    BYTE PTR [eax],al
c0106ed4:	50                   	push   eax
c0106ed5:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c0106ed7:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c0106eda:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c0106edf:	65 6c                	gs ins BYTE PTR es:[edi],dx
c0106ee1:	20 28                	and    BYTE PTR [eax],ch
c0106ee3:	50                   	push   eax
c0106ee4:	4b                   	dec    ebx
c0106ee5:	6e                   	outs   dx,BYTE PTR ds:[esi]
c0106ee6:	29 20                	sub    DWORD PTR [eax],esp
c0106ee8:	76 65                	jbe    c0106f4f <keymap+0x11b>
c0106eea:	72 73                	jb     c0106f5f <keymap+0x12b>
c0106eec:	69 6f 6e 20 30 2e 30 	imul   ebp,DWORD PTR [edi+0x6e],0x302e3020
c0106ef3:	2e 30 20             	xor    BYTE PTR cs:[eax],ah
c0106ef6:	74 65                	je     c0106f5d <keymap+0x129>
c0106ef8:	73 74                	jae    c0106f6e <keymap+0x13a>
c0106efa:	00 00                	add    BYTE PTR [eax],al
c0106efc:	62 79 74             	bound  edi,QWORD PTR [ecx+0x74]
c0106eff:	65 5f                	gs pop edi
c0106f01:	69 6e 64 65 78 20 3c 	imul   ebp,DWORD PTR [esi+0x64],0x3c207865
c0106f08:	20 28                	and    BYTE PTR [eax],ch
c0106f0a:	62 74 6d 70          	bound  esi,QWORD PTR [ebp+ebp*2+0x70]
c0106f0e:	2d 3e 62 74 6d       	sub    eax,0x6d74623e
c0106f13:	70 5f                	jo     c0106f74 <__func__.866+0x4>
c0106f15:	62 79 74             	bound  edi,QWORD PTR [ecx+0x74]
c0106f18:	65 73 5f             	gs jae c0106f7a <__func__.866+0xa>
c0106f1b:	6c                   	ins    BYTE PTR es:[edi],dx
c0106f1c:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c0106f1e:	29 00                	sub    DWORD PTR [eax],eax
c0106f20:	6c                   	ins    BYTE PTR es:[edi],dx
c0106f21:	69 62 2f 62 69 74 6d 	imul   esp,DWORD PTR [edx+0x2f],0x6d746962
c0106f28:	61                   	popa   
c0106f29:	70 2e                	jo     c0106f59 <keymap+0x125>
c0106f2b:	63 00                	arpl   WORD PTR [eax],ax
c0106f2d:	76 61                	jbe    c0106f90 <__func__.883+0x10>
c0106f2f:	6c                   	ins    BYTE PTR es:[edi],dx
c0106f30:	75 65                	jne    c0106f97 <__func__.883+0x17>
c0106f32:	20 3d 3d 20 30 20    	and    BYTE PTR ds:0x2030203d,bh
c0106f38:	7c 7c                	jl     c0106fb6 <__func__.883+0x36>
c0106f3a:	20 76 61             	and    BYTE PTR [esi+0x61],dh
c0106f3d:	6c                   	ins    BYTE PTR es:[edi],dx
c0106f3e:	75 65                	jne    c0106fa5 <__func__.883+0x25>
c0106f40:	20 3d 3d 20 31 00    	and    BYTE PTR ds:0x31203d,bh
c0106f46:	00 00                	add    BYTE PTR [eax],al
c0106f48:	50                   	push   eax
c0106f49:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c0106f4b:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c0106f4e:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c0106f53:	65 6c                	gs ins BYTE PTR es:[edi],dx
c0106f55:	20 28                	and    BYTE PTR [eax],ch
c0106f57:	50                   	push   eax
c0106f58:	4b                   	dec    ebx
c0106f59:	6e                   	outs   dx,BYTE PTR ds:[esi]
c0106f5a:	29 20                	sub    DWORD PTR [eax],esp
c0106f5c:	76 65                	jbe    c0106fc3 <__func__.883+0x43>
c0106f5e:	72 73                	jb     c0106fd3 <__func__.883+0x53>
c0106f60:	69 6f 6e 20 30 2e 30 	imul   ebp,DWORD PTR [edi+0x6e],0x302e3020
c0106f67:	2e 30 20             	xor    BYTE PTR cs:[eax],ah
c0106f6a:	74 65                	je     c0106fd1 <__func__.883+0x51>
c0106f6c:	73 74                	jae    c0106fe2 <__func__.883+0x62>
	...

c0106f70 <__func__.866>:
c0106f70:	62 69 74             	bound  ebp,QWORD PTR [ecx+0x74]
c0106f73:	6d                   	ins    DWORD PTR es:[edi],dx
c0106f74:	61                   	popa   
c0106f75:	70 5f                	jo     c0106fd6 <__func__.883+0x56>
c0106f77:	61                   	popa   
c0106f78:	6c                   	ins    BYTE PTR es:[edi],dx
c0106f79:	6c                   	ins    BYTE PTR es:[edi],dx
c0106f7a:	6f                   	outs   dx,DWORD PTR ds:[esi]
c0106f7b:	63 00                	arpl   WORD PTR [eax],ax
c0106f7d:	00 00                	add    BYTE PTR [eax],al
	...

c0106f80 <__func__.883>:
c0106f80:	62 69 74             	bound  ebp,QWORD PTR [ecx+0x74]
c0106f83:	6d                   	ins    DWORD PTR es:[edi],dx
c0106f84:	61                   	popa   
c0106f85:	70 5f                	jo     c0106fe6 <__func__.883+0x66>
c0106f87:	73 65                	jae    c0106fee <__func__.883+0x6e>
c0106f89:	74 00                	je     c0106f8b <__func__.883+0xb>
c0106f8b:	00 66 69             	add    BYTE PTR [esi+0x69],ah
c0106f8e:	66 6f                	outs   dx,WORD PTR ds:[esi]
c0106f90:	2d 3e 74 79 70       	sub    eax,0x7079743e
c0106f95:	65 20 3d 3d 20 38 20 	and    BYTE PTR gs:0x2038203d,bh
c0106f9c:	7c 7c                	jl     c010701a <__func__.1085+0xa>
c0106f9e:	20 66 69             	and    BYTE PTR [esi+0x69],ah
c0106fa1:	66 6f                	outs   dx,WORD PTR ds:[esi]
c0106fa3:	2d 3e 74 79 70       	sub    eax,0x7079743e
c0106fa8:	65 20 3d 3d 20 31 36 	and    BYTE PTR gs:0x3631203d,bh
c0106faf:	20 7c 7c 20          	and    BYTE PTR [esp+edi*2+0x20],bh
c0106fb3:	66 69 66 6f 2d 3e    	imul   sp,WORD PTR [esi+0x6f],0x3e2d
c0106fb9:	74 79                	je     c0107034 <__func__.1096+0x18>
c0106fbb:	70 65                	jo     c0107022 <__func__.1096+0x6>
c0106fbd:	20 3d 3d 20 33 32    	and    BYTE PTR ds:0x3233203d,bh
c0106fc3:	20 7c 7c 20          	and    BYTE PTR [esp+edi*2+0x20],bh
c0106fc7:	66 69 66 6f 2d 3e    	imul   sp,WORD PTR [esi+0x6f],0x3e2d
c0106fcd:	74 79                	je     c0107048 <__func__.1096+0x2c>
c0106fcf:	70 65                	jo     c0107036 <__func__.1096+0x1a>
c0106fd1:	20 3d 3d 20 36 34    	and    BYTE PTR ds:0x3436203d,bh
c0106fd7:	00 64 65 76          	add    BYTE PTR [ebp+eiz*2+0x76],ah
c0106fdb:	69 63 65 2f 66 69 66 	imul   esp,DWORD PTR [ebx+0x65],0x6669662f
c0106fe2:	6f                   	outs   dx,DWORD PTR ds:[esi]
c0106fe3:	2e 63 00             	arpl   WORD PTR cs:[eax],ax
c0106fe6:	00 00                	add    BYTE PTR [eax],al
c0106fe8:	50                   	push   eax
c0106fe9:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c0106feb:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c0106fee:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c0106ff3:	65 6c                	gs ins BYTE PTR es:[edi],dx
c0106ff5:	20 28                	and    BYTE PTR [eax],ch
c0106ff7:	50                   	push   eax
c0106ff8:	4b                   	dec    ebx
c0106ff9:	6e                   	outs   dx,BYTE PTR ds:[esi]
c0106ffa:	29 20                	sub    DWORD PTR [eax],esp
c0106ffc:	76 65                	jbe    c0107063 <__func__.1096+0x47>
c0106ffe:	72 73                	jb     c0107073 <__func__.1096+0x57>
c0107000:	69 6f 6e 20 30 2e 30 	imul   ebp,DWORD PTR [edi+0x6e],0x302e3020
c0107007:	2e 30 20             	xor    BYTE PTR cs:[eax],ah
c010700a:	74 65                	je     c0107071 <__func__.1096+0x55>
c010700c:	73 74                	jae    c0107082 <__func__.1096+0x66>
	...

c0107010 <__func__.1085>:
c0107010:	66 69 66 6f 5f 70    	imul   sp,WORD PTR [esi+0x6f],0x705f
c0107016:	75 74                	jne    c010708c <__func__.1096+0x70>
c0107018:	00 00                	add    BYTE PTR [eax],al
	...

c010701c <__func__.1096>:
c010701c:	66 69 66 6f 5f 67    	imul   sp,WORD PTR [esi+0x6f],0x675f
c0107022:	65 74 00             	gs je  c0107025 <__func__.1096+0x9>
c0107025:	00 00                	add    BYTE PTR [eax],al
c0107027:	00 50 65             	add    BYTE PTR [eax+0x65],dl
c010702a:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010702b:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c010702e:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c0107033:	65 6c                	gs ins BYTE PTR es:[edi],dx
c0107035:	20 28                	and    BYTE PTR [eax],ch
c0107037:	50                   	push   eax
c0107038:	4b                   	dec    ebx
c0107039:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010703a:	29 20                	sub    DWORD PTR [eax],esp
c010703c:	76 65                	jbe    c01070a3 <__func__.1096+0x87>
c010703e:	72 73                	jb     c01070b3 <digits.979+0x3>
c0107040:	69 6f 6e 20 30 2e 30 	imul   ebp,DWORD PTR [edi+0x6e],0x302e3020
c0107047:	2e 30 20             	xor    BYTE PTR cs:[eax],ah
c010704a:	74 65                	je     c01070b1 <digits.979+0x1>
c010704c:	73 74                	jae    c01070c2 <digits.979+0x12>
c010704e:	00 00                	add    BYTE PTR [eax],al
c0107050:	01 2d 10 c0 bd 2c    	add    DWORD PTR ds:0x2cbdc010,ebp
c0107056:	10 c0                	adc    al,al
c0107058:	bd 2c 10 c0 bd       	mov    ebp,0xbdc0102c
c010705d:	2c 10                	sub    al,0x10
c010705f:	c0 bd 2c 10 c0 bd 2c 	sar    BYTE PTR [ebp-0x423fefd4],0x2c
c0107066:	10 c0                	adc    al,al
c0107068:	bd 2c 10 c0 bd       	mov    ebp,0xbdc0102c
c010706d:	2c 10                	sub    al,0x10
c010706f:	c0 96 2c 10 c0 b5 2c 	rcl    BYTE PTR [esi-0x4a3fefd4],0x2c
c0107076:	10 c0                	adc    al,al
c0107078:	a4                   	movs   BYTE PTR es:[edi],BYTE PTR ds:[esi]
c0107079:	2c 10                	sub    al,0x10
c010707b:	c0 bd 2c 10 c0 bd 2c 	sar    BYTE PTR [ebp-0x423fefd4],0x2c
c0107082:	10 c0                	adc    al,al
c0107084:	a4                   	movs   BYTE PTR es:[edi],BYTE PTR ds:[esi]
c0107085:	2c 10                	sub    al,0x10
c0107087:	c0 50 65 6e          	rcl    BYTE PTR [eax+0x65],0x6e
c010708b:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c010708e:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c0107093:	65 6c                	gs ins BYTE PTR es:[edi],dx
c0107095:	20 28                	and    BYTE PTR [eax],ch
c0107097:	50                   	push   eax
c0107098:	4b                   	dec    ebx
c0107099:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010709a:	29 20                	sub    DWORD PTR [eax],esp
c010709c:	76 65                	jbe    c0107103 <digits.998+0x2b>
c010709e:	72 73                	jb     c0107113 <digits.998+0x3b>
c01070a0:	69 6f 6e 20 30 2e 30 	imul   ebp,DWORD PTR [edi+0x6e],0x302e3020
c01070a7:	2e 30 20             	xor    BYTE PTR cs:[eax],ah
c01070aa:	74 65                	je     c0107111 <digits.998+0x39>
c01070ac:	73 74                	jae    c0107122 <digits.998+0x4a>
	...

c01070b0 <digits.979>:
c01070b0:	30 31                	xor    BYTE PTR [ecx],dh
c01070b2:	32 33                	xor    dh,BYTE PTR [ebx]
c01070b4:	34 35                	xor    al,0x35
c01070b6:	36 37                	ss aaa 
c01070b8:	38 39                	cmp    BYTE PTR [ecx],bh
c01070ba:	41                   	inc    ecx
c01070bb:	42                   	inc    edx
c01070bc:	43                   	inc    ebx
c01070bd:	44                   	inc    esp
c01070be:	45                   	inc    ebp
c01070bf:	46                   	inc    esi
c01070c0:	47                   	inc    edi
c01070c1:	48                   	dec    eax
c01070c2:	49                   	dec    ecx
c01070c3:	4a                   	dec    edx
c01070c4:	4b                   	dec    ebx
c01070c5:	4c                   	dec    esp
c01070c6:	4d                   	dec    ebp
c01070c7:	4e                   	dec    esi
c01070c8:	4f                   	dec    edi
c01070c9:	50                   	push   eax
c01070ca:	51                   	push   ecx
c01070cb:	52                   	push   edx
c01070cc:	53                   	push   ebx
c01070cd:	54                   	push   esp
c01070ce:	55                   	push   ebp
c01070cf:	56                   	push   esi
c01070d0:	57                   	push   edi
c01070d1:	58                   	pop    eax
c01070d2:	59                   	pop    ecx
c01070d3:	5a                   	pop    edx
c01070d4:	00 00                	add    BYTE PTR [eax],al
	...

c01070d8 <digits.998>:
c01070d8:	30 31                	xor    BYTE PTR [ecx],dh
c01070da:	32 33                	xor    dh,BYTE PTR [ebx]
c01070dc:	34 35                	xor    al,0x35
c01070de:	36 37                	ss aaa 
c01070e0:	38 39                	cmp    BYTE PTR [ecx],bh
c01070e2:	41                   	inc    ecx
c01070e3:	42                   	inc    edx
c01070e4:	43                   	inc    ebx
c01070e5:	44                   	inc    esp
c01070e6:	45                   	inc    ebp
c01070e7:	46                   	inc    esi
c01070e8:	47                   	inc    edi
c01070e9:	48                   	dec    eax
c01070ea:	49                   	dec    ecx
c01070eb:	4a                   	dec    edx
c01070ec:	4b                   	dec    ebx
c01070ed:	4c                   	dec    esp
c01070ee:	4d                   	dec    ebp
c01070ef:	4e                   	dec    esi
c01070f0:	4f                   	dec    edi
c01070f1:	50                   	push   eax
c01070f2:	51                   	push   ecx
c01070f3:	52                   	push   edx
c01070f4:	53                   	push   ebx
c01070f5:	54                   	push   esp
c01070f6:	55                   	push   ebp
c01070f7:	56                   	push   esi
c01070f8:	57                   	push   edi
c01070f9:	58                   	pop    eax
c01070fa:	59                   	pop    ecx
c01070fb:	5a                   	pop    edx
c01070fc:	00 00                	add    BYTE PTR [eax],al
c01070fe:	00 00                	add    BYTE PTR [eax],al
c0107100:	64 73 74             	fs jae c0107177 <digits.998+0x9f>
c0107103:	5f                   	pop    edi
c0107104:	5f                   	pop    edi
c0107105:	20 21                	and    BYTE PTR [ecx],ah
c0107107:	3d 20 4e 55 4c       	cmp    eax,0x4c554e20
c010710c:	4c                   	dec    esp
c010710d:	00 6c 69 62          	add    BYTE PTR [ecx+ebp*2+0x62],ch
c0107111:	63 2f                	arpl   WORD PTR [edi],bp
c0107113:	73 74                	jae    c0107189 <__func__.850+0x1>
c0107115:	72 69                	jb     c0107180 <__func__.839>
c0107117:	6e                   	outs   dx,BYTE PTR ds:[esi]
c0107118:	67 2e 63 00          	arpl   WORD PTR cs:[bx+si],ax
c010711c:	64 73 74             	fs jae c0107193 <__func__.862+0x3>
c010711f:	5f                   	pop    edi
c0107120:	5f                   	pop    edi
c0107121:	20 21                	and    BYTE PTR [ecx],ah
c0107123:	3d 20 4e 55 4c       	cmp    eax,0x4c554e20
c0107128:	4c                   	dec    esp
c0107129:	20 26                	and    BYTE PTR [esi],ah
c010712b:	26 20 73 72          	and    BYTE PTR es:[ebx+0x72],dh
c010712f:	63 5f 5f             	arpl   WORD PTR [edi+0x5f],bx
c0107132:	20 21                	and    BYTE PTR [ecx],ah
c0107134:	3d 20 4e 55 4c       	cmp    eax,0x4c554e20
c0107139:	4c                   	dec    esp
c010713a:	00 70 31             	add    BYTE PTR [eax+0x31],dh
c010713d:	5f                   	pop    edi
c010713e:	5f                   	pop    edi
c010713f:	20 21                	and    BYTE PTR [ecx],ah
c0107141:	3d 20 4e 55 4c       	cmp    eax,0x4c554e20
c0107146:	4c                   	dec    esp
c0107147:	20 26                	and    BYTE PTR [esi],ah
c0107149:	26 20 70 32          	and    BYTE PTR es:[eax+0x32],dh
c010714d:	5f                   	pop    edi
c010714e:	5f                   	pop    edi
c010714f:	20 21                	and    BYTE PTR [ecx],ah
c0107151:	3d 20 4e 55 4c       	cmp    eax,0x4c554e20
c0107156:	4c                   	dec    esp
c0107157:	00 50 65             	add    BYTE PTR [eax+0x65],dl
c010715a:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010715b:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c010715e:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c0107163:	65 6c                	gs ins BYTE PTR es:[edi],dx
c0107165:	20 28                	and    BYTE PTR [eax],ch
c0107167:	50                   	push   eax
c0107168:	4b                   	dec    ebx
c0107169:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010716a:	29 20                	sub    DWORD PTR [eax],esp
c010716c:	76 65                	jbe    c01071d3 <__func__.862+0x43>
c010716e:	72 73                	jb     c01071e3 <__func__.862+0x53>
c0107170:	69 6f 6e 20 30 2e 30 	imul   ebp,DWORD PTR [edi+0x6e],0x302e3020
c0107177:	2e 30 20             	xor    BYTE PTR cs:[eax],ah
c010717a:	74 65                	je     c01071e1 <__func__.862+0x51>
c010717c:	73 74                	jae    c01071f2 <tss+0x2>
	...

c0107180 <__func__.839>:
c0107180:	6d                   	ins    DWORD PTR es:[edi],dx
c0107181:	65 6d                	gs ins DWORD PTR es:[edi],dx
c0107183:	73 65                	jae    c01071ea <_bss+0x2>
c0107185:	74 00                	je     c0107187 <__func__.839+0x7>
	...

c0107188 <__func__.850>:
c0107188:	6d                   	ins    DWORD PTR es:[edi],dx
c0107189:	65 6d                	gs ins DWORD PTR es:[edi],dx
c010718b:	63 70 79             	arpl   WORD PTR [eax+0x79],si
	...

c0107190 <__func__.862>:
c0107190:	6d                   	ins    DWORD PTR es:[edi],dx
c0107191:	65 6d                	gs ins DWORD PTR es:[edi],dx
c0107193:	63 6d 70             	arpl   WORD PTR [ebp+0x70],bp
c0107196:	00 00                	add    BYTE PTR [eax],al
c0107198:	50                   	push   eax
c0107199:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c010719b:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c010719e:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c01071a3:	65 6c                	gs ins BYTE PTR es:[edi],dx
c01071a5:	20 28                	and    BYTE PTR [eax],ch
c01071a7:	50                   	push   eax
c01071a8:	4b                   	dec    ebx
c01071a9:	6e                   	outs   dx,BYTE PTR ds:[esi]
c01071aa:	29 20                	sub    DWORD PTR [eax],esp
c01071ac:	76 65                	jbe    c0107213 <tss+0x23>
c01071ae:	72 73                	jb     c0107223 <tss+0x33>
c01071b0:	69 6f 6e 20 30 2e 30 	imul   ebp,DWORD PTR [edi+0x6e],0x302e3020
c01071b7:	2e 30 20             	xor    BYTE PTR cs:[eax],ah
c01071ba:	74 65                	je     c0107221 <tss+0x31>
c01071bc:	73 74                	jae    c0107232 <tss+0x42>
c01071be:	00 00                	add    BYTE PTR [eax],al
c01071c0:	50                   	push   eax
c01071c1:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c01071c3:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c01071c6:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c01071cb:	65 6c                	gs ins BYTE PTR es:[edi],dx
c01071cd:	20 28                	and    BYTE PTR [eax],ch
c01071cf:	50                   	push   eax
c01071d0:	4b                   	dec    ebx
c01071d1:	6e                   	outs   dx,BYTE PTR ds:[esi]
c01071d2:	29 20                	sub    DWORD PTR [eax],esp
c01071d4:	76 65                	jbe    c010723b <tss+0x4b>
c01071d6:	72 73                	jb     c010724b <tss+0x5b>
c01071d8:	69 6f 6e 20 30 2e 30 	imul   ebp,DWORD PTR [edi+0x6e],0x302e3020
c01071df:	2e 30 20             	xor    BYTE PTR cs:[eax],ah
c01071e2:	74 65                	je     c0107249 <tss+0x59>
c01071e4:	73 74                	jae    c010725a <tss+0x6a>
	...

Disassembly of section .bss:

c01071e8 <_bss>:
c01071e8:	00 00                	add    BYTE PTR [eax],al
	...

c01071ec <this_thread_tag>:
c01071ec:	00 00                	add    BYTE PTR [eax],al
	...

c01071f0 <tss>:
	...

c010725c <console_lock>:
	...

c0107280 <buf>:
	...

c01072c0 <shift_status>:
c01072c0:	00 00                	add    BYTE PTR [eax],al
	...

c01072c4 <casplock_status>:
c01072c4:	00 00                	add    BYTE PTR [eax],al
	...

c01072c8 <ext_scandcode>:
c01072c8:	00 00                	add    BYTE PTR [eax],al
	...

c01072cc <ctrl_status>:
c01072cc:	00 00                	add    BYTE PTR [eax],al
	...

c01072d0 <alt_status>:
c01072d0:	00 00                	add    BYTE PTR [eax],al
	...

c01072d4 <i>:
c01072d4:	00 00                	add    BYTE PTR [eax],al
	...

c01072d8 <ticks>:
c01072d8:	00 00                	add    BYTE PTR [eax],al
	...

c01072dc <_ebss>:
	...

c0107398 <idt>:
	...

c0107510 <idt_table>:
	...

c01075cc <kvinfo>:
	...

c010f2cc <user_pool>:
	...

c010f304 <kernel_vaddr>:
	...

c010f33c <upinfo>:
	...

c011703c <kpinfo>:
	...

c011ed3c <kernel_pool>:
	...

c011ed74 <ready_list>:
	...

c011ed8c <all_list>:
	...

c011eda4 <main_thread>:
c011eda4:	00 00                	add    BYTE PTR [eax],al
	...

c011eda8 <keybuf>:
	...

c011edec <Screen>:
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
