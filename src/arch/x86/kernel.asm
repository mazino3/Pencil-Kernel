
kernel\kernel.o:     file format elf32-i386


Disassembly of section .text:

c0007f00 <_start>:
c0007f00:	66 b8 10 00          	mov    ax,0x10
c0007f04:	8e d8                	mov    ds,eax
c0007f06:	8e c0                	mov    es,eax
c0007f08:	8e d0                	mov    ss,eax
c0007f0a:	8e e0                	mov    fs,eax
c0007f0c:	8e e8                	mov    gs,eax
c0007f0e:	bc 00 70 00 c0       	mov    esp,0xc0007000
c0007f13:	0f 01 15 1c 81 00 c0 	lgdtd  ds:0xc000811c
c0007f1a:	e9 3b 04 00 00       	jmp    c000835a <kernel_main>
c0007f1f:	e9 fb ff ff ff       	jmp    c0007f1f <_start+0x1f>

c0007f24 <_GDT>:
	...

c0007f2c <SectionCode32>:
c0007f2c:	ff                   	(bad)  
c0007f2d:	ff 00                	inc    DWORD PTR [eax]
c0007f2f:	00 00                	add    BYTE PTR [eax],al
c0007f31:	98                   	cwde   
c0007f32:	cf                   	iret   
	...

c0007f34 <SectionData32>:
c0007f34:	ff                   	(bad)  
c0007f35:	ff 00                	inc    DWORD PTR [eax]
c0007f37:	00 00                	add    BYTE PTR [eax],al
c0007f39:	92                   	xchg   edx,eax
c0007f3a:	cf                   	iret   
	...

c000811c <gdt_ptr>:
c000811c:	17                   	pop    ss
c000811d:	00 24 7f             	add    BYTE PTR [edi+edi*2],ah
c0008120:	00 c0                	add    al,al
	...

c0008124 <k_thread_b>:
c0008124:	55                   	push   ebp
c0008125:	89 e5                	mov    ebp,esp
c0008127:	53                   	push   ebx
c0008128:	83 ec 1c             	sub    esp,0x1c
c000812b:	68 04 df 00 c0       	push   0xc000df04
c0008130:	6a 07                	push   0x7
c0008132:	e8 d8 21 00 00       	call   c000a30f <console_str>
c0008137:	8d 5d f7             	lea    ebx,[ebp-0x9]
c000813a:	83 c4 10             	add    esp,0x10
c000813d:	83 ec 0c             	sub    esp,0xc
c0008140:	68 a8 e6 02 c0       	push   0xc002e6a8
c0008145:	e8 f2 29 00 00       	call   c000ab3c <fifo_empty>
c000814a:	83 c4 10             	add    esp,0x10
c000814d:	85 c0                	test   eax,eax
c000814f:	75 ec                	jne    c000813d <k_thread_b+0x19>
c0008151:	52                   	push   edx
c0008152:	52                   	push   edx
c0008153:	53                   	push   ebx
c0008154:	68 a8 e6 02 c0       	push   0xc002e6a8
c0008159:	e8 dd 28 00 00       	call   c000aa3b <fifo_get>
c000815e:	59                   	pop    ecx
c000815f:	58                   	pop    eax
c0008160:	0f be 45 f7          	movsx  eax,BYTE PTR [ebp-0x9]
c0008164:	50                   	push   eax
c0008165:	6a 07                	push   0x7
c0008167:	e8 65 21 00 00       	call   c000a2d1 <console_char>
c000816c:	83 c4 10             	add    esp,0x10
c000816f:	80 7d f7 1c          	cmp    BYTE PTR [ebp-0x9],0x1c
c0008173:	75 c8                	jne    c000813d <k_thread_b+0x19>
c0008175:	50                   	push   eax
c0008176:	50                   	push   eax
c0008177:	68 04 df 00 c0       	push   0xc000df04
c000817c:	6a 07                	push   0x7
c000817e:	e8 8c 21 00 00       	call   c000a30f <console_str>
c0008183:	83 c4 10             	add    esp,0x10
c0008186:	eb b5                	jmp    c000813d <k_thread_b+0x19>

c0008188 <k_thread_a>:
c0008188:	55                   	push   ebp
c0008189:	89 e5                	mov    ebp,esp
c000818b:	57                   	push   edi
c000818c:	56                   	push   esi
c000818d:	53                   	push   ebx
c000818e:	83 ec 38             	sub    esp,0x38
c0008191:	8b 35 24 7c 00 00    	mov    esi,DWORD PTR ds:0x7c24
c0008197:	8d 7d c8             	lea    edi,[ebp-0x38]
c000819a:	57                   	push   edi
c000819b:	e8 d4 24 00 00       	call   c000a674 <get_time>
c00081a0:	8d 5d e2             	lea    ebx,[ebp-0x1e]
c00081a3:	83 c4 10             	add    esp,0x10
c00081a6:	83 ee 22             	sub    esi,0x22
c00081a9:	8b 15 24 7c 00 00    	mov    edx,DWORD PTR ds:0x7c24
c00081af:	a1 20 7c 00 00       	mov    eax,ds:0x7c20
c00081b4:	51                   	push   ecx
c00081b5:	8b 7d cc             	mov    edi,DWORD PTR [ebp-0x34]
c00081b8:	51                   	push   ecx
c00081b9:	8d 4a f8             	lea    ecx,[edx-0x8]
c00081bc:	83 ea 26             	sub    edx,0x26
c00081bf:	51                   	push   ecx
c00081c0:	8d 48 f9             	lea    ecx,[eax-0x7]
c00081c3:	2d b3 00 00 00       	sub    eax,0xb3
c00081c8:	51                   	push   ecx
c00081c9:	52                   	push   edx
c00081ca:	50                   	push   eax
c00081cb:	68 84 84 84 00       	push   0x848484
c00081d0:	68 ec e6 02 c0       	push   0xc002e6ec
c00081d5:	e8 36 2e 00 00       	call   c000b010 <RectangleFill>
c00081da:	8b 15 24 7c 00 00    	mov    edx,DWORD PTR ds:0x7c24
c00081e0:	83 c4 18             	add    esp,0x18
c00081e3:	a1 20 7c 00 00       	mov    eax,ds:0x7c20
c00081e8:	8d 4a f5             	lea    ecx,[edx-0xb]
c00081eb:	83 ea 29             	sub    edx,0x29
c00081ee:	51                   	push   ecx
c00081ef:	8d 48 f6             	lea    ecx,[eax-0xa]
c00081f2:	2d b6 00 00 00       	sub    eax,0xb6
c00081f7:	51                   	push   ecx
c00081f8:	52                   	push   edx
c00081f9:	50                   	push   eax
c00081fa:	68 ff ff ff 00       	push   0xffffff
c00081ff:	68 ec e6 02 c0       	push   0xc002e6ec
c0008204:	e8 07 2e 00 00       	call   c000b010 <RectangleFill>
c0008209:	83 c4 1c             	add    esp,0x1c
c000820c:	6a 10                	push   0x10
c000820e:	53                   	push   ebx
c000820f:	ff 75 dc             	push   DWORD PTR [ebp-0x24]
c0008212:	e8 95 2a 00 00       	call   c000acac <itoa>
c0008217:	89 1c 24             	mov    DWORD PTR [esp],ebx
c000821a:	6a 00                	push   0x0
c000821c:	56                   	push   esi
c000821d:	a1 20 7c 00 00       	mov    eax,ds:0x7c20
c0008222:	2d ac 00 00 00       	sub    eax,0xac
c0008227:	50                   	push   eax
c0008228:	68 ec e6 02 c0       	push   0xc002e6ec
c000822d:	e8 cc 2f 00 00       	call   c000b1fe <put_str_graphic>
c0008232:	83 c4 14             	add    esp,0x14
c0008235:	6a 2f                	push   0x2f
c0008237:	6a 00                	push   0x0
c0008239:	56                   	push   esi
c000823a:	a1 20 7c 00 00       	mov    eax,ds:0x7c20
c000823f:	2d 84 00 00 00       	sub    eax,0x84
c0008244:	50                   	push   eax
c0008245:	68 ec e6 02 c0       	push   0xc002e6ec
c000824a:	e8 2b 2f 00 00       	call   c000b17a <put_char_graphic>
c000824f:	83 c4 1c             	add    esp,0x1c
c0008252:	6a 10                	push   0x10
c0008254:	53                   	push   ebx
c0008255:	ff 75 d8             	push   DWORD PTR [ebp-0x28]
c0008258:	e8 4f 2a 00 00       	call   c000acac <itoa>
c000825d:	89 1c 24             	mov    DWORD PTR [esp],ebx
c0008260:	6a 00                	push   0x0
c0008262:	56                   	push   esi
c0008263:	a1 20 7c 00 00       	mov    eax,ds:0x7c20
c0008268:	83 e8 7a             	sub    eax,0x7a
c000826b:	50                   	push   eax
c000826c:	68 ec e6 02 c0       	push   0xc002e6ec
c0008271:	e8 88 2f 00 00       	call   c000b1fe <put_str_graphic>
c0008276:	83 c4 14             	add    esp,0x14
c0008279:	6a 2f                	push   0x2f
c000827b:	6a 00                	push   0x0
c000827d:	56                   	push   esi
c000827e:	a1 20 7c 00 00       	mov    eax,ds:0x7c20
c0008283:	83 e8 66             	sub    eax,0x66
c0008286:	50                   	push   eax
c0008287:	68 ec e6 02 c0       	push   0xc002e6ec
c000828c:	e8 e9 2e 00 00       	call   c000b17a <put_char_graphic>
c0008291:	83 c4 1c             	add    esp,0x1c
c0008294:	6a 10                	push   0x10
c0008296:	53                   	push   ebx
c0008297:	ff 75 d4             	push   DWORD PTR [ebp-0x2c]
c000829a:	e8 0d 2a 00 00       	call   c000acac <itoa>
c000829f:	89 1c 24             	mov    DWORD PTR [esp],ebx
c00082a2:	6a 00                	push   0x0
c00082a4:	56                   	push   esi
c00082a5:	a1 20 7c 00 00       	mov    eax,ds:0x7c20
c00082aa:	83 e8 5c             	sub    eax,0x5c
c00082ad:	50                   	push   eax
c00082ae:	68 ec e6 02 c0       	push   0xc002e6ec
c00082b3:	e8 46 2f 00 00       	call   c000b1fe <put_str_graphic>
c00082b8:	83 c4 14             	add    esp,0x14
c00082bb:	6a 7c                	push   0x7c
c00082bd:	6a 00                	push   0x0
c00082bf:	56                   	push   esi
c00082c0:	a1 20 7c 00 00       	mov    eax,ds:0x7c20
c00082c5:	83 e8 48             	sub    eax,0x48
c00082c8:	50                   	push   eax
c00082c9:	68 ec e6 02 c0       	push   0xc002e6ec
c00082ce:	e8 a7 2e 00 00       	call   c000b17a <put_char_graphic>
c00082d3:	83 c4 1c             	add    esp,0x1c
c00082d6:	6a 10                	push   0x10
c00082d8:	53                   	push   ebx
c00082d9:	ff 75 d0             	push   DWORD PTR [ebp-0x30]
c00082dc:	e8 cb 29 00 00       	call   c000acac <itoa>
c00082e1:	89 1c 24             	mov    DWORD PTR [esp],ebx
c00082e4:	6a 00                	push   0x0
c00082e6:	56                   	push   esi
c00082e7:	a1 20 7c 00 00       	mov    eax,ds:0x7c20
c00082ec:	83 e8 3e             	sub    eax,0x3e
c00082ef:	50                   	push   eax
c00082f0:	68 ec e6 02 c0       	push   0xc002e6ec
c00082f5:	e8 04 2f 00 00       	call   c000b1fe <put_str_graphic>
c00082fa:	83 c4 14             	add    esp,0x14
c00082fd:	6a 3a                	push   0x3a
c00082ff:	6a 00                	push   0x0
c0008301:	56                   	push   esi
c0008302:	a1 20 7c 00 00       	mov    eax,ds:0x7c20
c0008307:	83 e8 2a             	sub    eax,0x2a
c000830a:	50                   	push   eax
c000830b:	68 ec e6 02 c0       	push   0xc002e6ec
c0008310:	e8 65 2e 00 00       	call   c000b17a <put_char_graphic>
c0008315:	83 c4 1c             	add    esp,0x1c
c0008318:	6a 10                	push   0x10
c000831a:	53                   	push   ebx
c000831b:	ff 75 cc             	push   DWORD PTR [ebp-0x34]
c000831e:	e8 89 29 00 00       	call   c000acac <itoa>
c0008323:	89 1c 24             	mov    DWORD PTR [esp],ebx
c0008326:	6a 00                	push   0x0
c0008328:	56                   	push   esi
c0008329:	a1 20 7c 00 00       	mov    eax,ds:0x7c20
c000832e:	83 e8 20             	sub    eax,0x20
c0008331:	50                   	push   eax
c0008332:	68 ec e6 02 c0       	push   0xc002e6ec
c0008337:	e8 c2 2e 00 00       	call   c000b1fe <put_str_graphic>
c000833c:	83 c4 20             	add    esp,0x20
c000833f:	eb 0f                	jmp    c0008350 <k_thread_a+0x1c8>
c0008341:	83 ec 0c             	sub    esp,0xc
c0008344:	8d 45 c8             	lea    eax,[ebp-0x38]
c0008347:	50                   	push   eax
c0008348:	e8 27 23 00 00       	call   c000a674 <get_time>
c000834d:	83 c4 10             	add    esp,0x10
c0008350:	39 7d cc             	cmp    DWORD PTR [ebp-0x34],edi
c0008353:	74 ec                	je     c0008341 <k_thread_a+0x1b9>
c0008355:	e9 4f fe ff ff       	jmp    c00081a9 <k_thread_a+0x21>

c000835a <kernel_main>:
c000835a:	55                   	push   ebp
c000835b:	89 e5                	mov    ebp,esp
c000835d:	53                   	push   ebx
c000835e:	bb 23 00 00 00       	mov    ebx,0x23
c0008363:	50                   	push   eax
c0008364:	50                   	push   eax
c0008365:	50                   	push   eax
c0008366:	6a 0a                	push   0xa
c0008368:	6a 07                	push   0x7
c000836a:	e8 71 2a 00 00       	call   c000ade0 <put_char>
c000836f:	83 c4 10             	add    esp,0x10
c0008372:	4b                   	dec    ebx
c0008373:	75 ef                	jne    c0008364 <kernel_main+0xa>
c0008375:	83 ec 0c             	sub    esp,0xc
c0008378:	6a 00                	push   0x0
c000837a:	e8 3a 2a 00 00       	call   c000adb9 <set_cursor>
c000837f:	e8 b8 01 00 00       	call   c000853c <init_all>
c0008384:	e8 4b 0e 00 00       	call   c00091d4 <intr_enable>
c0008389:	5b                   	pop    ebx
c000838a:	58                   	pop    eax
c000838b:	68 0c df 00 c0       	push   0xc000df0c
c0008390:	6a 07                	push   0x7
c0008392:	e8 78 1f 00 00       	call   c000a30f <console_str>
c0008397:	58                   	pop    eax
c0008398:	5a                   	pop    edx
c0008399:	68 35 df 00 c0       	push   0xc000df35
c000839e:	6a 07                	push   0x7
c00083a0:	e8 6a 1f 00 00       	call   c000a30f <console_str>
c00083a5:	e8 84 20 00 00       	call   c000a42e <cpu_info>
c00083aa:	59                   	pop    ecx
c00083ab:	5b                   	pop    ebx
c00083ac:	6a 0a                	push   0xa
c00083ae:	6a 07                	push   0x7
c00083b0:	e8 1c 1f 00 00       	call   c000a2d1 <console_char>
c00083b5:	58                   	pop    eax
c00083b6:	5a                   	pop    edx
c00083b7:	68 3e df 00 c0       	push   0xc000df3e
c00083bc:	6a 07                	push   0x7
c00083be:	e8 4c 1f 00 00       	call   c000a30f <console_str>
c00083c3:	83 c4 0c             	add    esp,0xc
c00083c6:	6a 0a                	push   0xa
c00083c8:	a1 08 7c 00 00       	mov    eax,ds:0x7c08
c00083cd:	c1 e8 14             	shr    eax,0x14
c00083d0:	50                   	push   eax
c00083d1:	6a 07                	push   0x7
c00083d3:	e8 70 1f 00 00       	call   c000a348 <console_int>
c00083d8:	59                   	pop    ecx
c00083d9:	5b                   	pop    ebx
c00083da:	68 47 df 00 c0       	push   0xc000df47
c00083df:	6a 07                	push   0x7
c00083e1:	e8 29 1f 00 00       	call   c000a30f <console_str>
c00083e6:	83 c4 0c             	add    esp,0xc
c00083e9:	6a 0a                	push   0xa
c00083eb:	a1 08 7c 00 00       	mov    eax,ds:0x7c08
c00083f0:	c1 e8 0a             	shr    eax,0xa
c00083f3:	50                   	push   eax
c00083f4:	6a 07                	push   0x7
c00083f6:	e8 4d 1f 00 00       	call   c000a348 <console_int>
c00083fb:	58                   	pop    eax
c00083fc:	5a                   	pop    edx
c00083fd:	68 4d df 00 c0       	push   0xc000df4d
c0008402:	6a 07                	push   0x7
c0008404:	e8 78 2a 00 00       	call   c000ae81 <put_str>
c0008409:	59                   	pop    ecx
c000840a:	5b                   	pop    ebx
c000840b:	6a 0a                	push   0xa
c000840d:	6a 07                	push   0x7
c000840f:	e8 cc 29 00 00       	call   c000ade0 <put_char>
c0008414:	58                   	pop    eax
c0008415:	5a                   	pop    edx
c0008416:	68 53 df 00 c0       	push   0xc000df53
c000841b:	6a 07                	push   0x7
c000841d:	e8 ed 1e 00 00       	call   c000a30f <console_str>
c0008422:	83 c4 0c             	add    esp,0xc
c0008425:	6a 0a                	push   0xa
c0008427:	ff 35 10 7c 00 00    	push   DWORD PTR ds:0x7c10
c000842d:	6a 07                	push   0x7
c000842f:	e8 14 1f 00 00       	call   c000a348 <console_int>
c0008434:	59                   	pop    ecx
c0008435:	5b                   	pop    ebx
c0008436:	6a 0a                	push   0xa
c0008438:	6a 07                	push   0x7
c000843a:	e8 92 1e 00 00       	call   c000a2d1 <console_char>
c000843f:	c7 04 24 5c df 00 c0 	mov    DWORD PTR [esp],0xc000df5c
c0008446:	68 ff ff ff 00       	push   0xffffff
c000844b:	6a 14                	push   0x14
c000844d:	6a 14                	push   0x14
c000844f:	68 ec e6 02 c0       	push   0xc002e6ec
c0008454:	e8 a5 2d 00 00       	call   c000b1fe <put_str_graphic>
c0008459:	83 c4 20             	add    esp,0x20
c000845c:	68 83 df 00 c0       	push   0xc000df83
c0008461:	68 88 81 00 c0       	push   0xc0008188
c0008466:	6a 1f                	push   0x1f
c0008468:	68 8a df 00 c0       	push   0xc000df8a
c000846d:	e8 2c 18 00 00       	call   c0009c9e <thread_start>
c0008472:	68 8e df 00 c0       	push   0xc000df8e
c0008477:	68 24 81 00 c0       	push   0xc0008124
c000847c:	6a 1f                	push   0x1f
c000847e:	68 95 df 00 c0       	push   0xc000df95
c0008483:	e8 16 18 00 00       	call   c0009c9e <thread_start>
c0008488:	83 c4 20             	add    esp,0x20
c000848b:	eb fe                	jmp    c000848b <kernel_main+0x131>
c000848d:	00 00                	add    BYTE PTR [eax],al
	...

c0008490 <panic_spin>:
c0008490:	55                   	push   ebp
c0008491:	89 e5                	mov    ebp,esp
c0008493:	83 ec 08             	sub    esp,0x8
c0008496:	e8 2e 0c 00 00       	call   c00090c9 <intr_disable>
c000849b:	52                   	push   edx
c000849c:	52                   	push   edx
c000849d:	68 c4 df 00 c0       	push   0xc000dfc4
c00084a2:	6a 04                	push   0x4
c00084a4:	e8 d8 29 00 00       	call   c000ae81 <put_str>
c00084a9:	59                   	pop    ecx
c00084aa:	58                   	pop    eax
c00084ab:	68 cc df 00 c0       	push   0xc000dfcc
c00084b0:	6a 04                	push   0x4
c00084b2:	e8 ca 29 00 00       	call   c000ae81 <put_str>
c00084b7:	58                   	pop    eax
c00084b8:	5a                   	pop    edx
c00084b9:	ff 75 08             	push   DWORD PTR [ebp+0x8]
c00084bc:	6a 04                	push   0x4
c00084be:	e8 be 29 00 00       	call   c000ae81 <put_str>
c00084c3:	59                   	pop    ecx
c00084c4:	58                   	pop    eax
c00084c5:	6a 0a                	push   0xa
c00084c7:	6a 04                	push   0x4
c00084c9:	e8 12 29 00 00       	call   c000ade0 <put_char>
c00084ce:	58                   	pop    eax
c00084cf:	5a                   	pop    edx
c00084d0:	68 db df 00 c0       	push   0xc000dfdb
c00084d5:	6a 04                	push   0x4
c00084d7:	e8 a5 29 00 00       	call   c000ae81 <put_str>
c00084dc:	59                   	pop    ecx
c00084dd:	58                   	pop    eax
c00084de:	ff 75 10             	push   DWORD PTR [ebp+0x10]
c00084e1:	6a 04                	push   0x4
c00084e3:	e8 99 29 00 00       	call   c000ae81 <put_str>
c00084e8:	58                   	pop    eax
c00084e9:	5a                   	pop    edx
c00084ea:	6a 0a                	push   0xa
c00084ec:	6a 04                	push   0x4
c00084ee:	e8 ed 28 00 00       	call   c000ade0 <put_char>
c00084f3:	59                   	pop    ecx
c00084f4:	58                   	pop    eax
c00084f5:	68 ea df 00 c0       	push   0xc000dfea
c00084fa:	6a 04                	push   0x4
c00084fc:	e8 80 29 00 00       	call   c000ae81 <put_str>
c0008501:	83 c4 0c             	add    esp,0xc
c0008504:	6a 0a                	push   0xa
c0008506:	ff 75 0c             	push   DWORD PTR [ebp+0xc]
c0008509:	6a 04                	push   0x4
c000850b:	e8 d3 29 00 00       	call   c000aee3 <put_int>
c0008510:	58                   	pop    eax
c0008511:	5a                   	pop    edx
c0008512:	6a 0a                	push   0xa
c0008514:	6a 04                	push   0x4
c0008516:	e8 c5 28 00 00       	call   c000ade0 <put_char>
c000851b:	59                   	pop    ecx
c000851c:	58                   	pop    eax
c000851d:	68 f9 df 00 c0       	push   0xc000dff9
c0008522:	6a 04                	push   0x4
c0008524:	e8 58 29 00 00       	call   c000ae81 <put_str>
c0008529:	58                   	pop    eax
c000852a:	5a                   	pop    edx
c000852b:	ff 75 14             	push   DWORD PTR [ebp+0x14]
c000852e:	6a 04                	push   0x4
c0008530:	e8 4c 29 00 00       	call   c000ae81 <put_str>
c0008535:	83 c4 10             	add    esp,0x10
c0008538:	eb fe                	jmp    c0008538 <panic_spin+0xa8>
	...

c000853c <init_all>:
c000853c:	55                   	push   ebp
c000853d:	89 e5                	mov    ebp,esp
c000853f:	83 ec 10             	sub    esp,0x10
c0008542:	68 30 e0 00 c0       	push   0xc000e030
c0008547:	6a 02                	push   0x2
c0008549:	e8 33 29 00 00       	call   c000ae81 <put_str>
c000854e:	e8 34 0b 00 00       	call   c0009087 <init_idt>
c0008553:	e8 32 1a 00 00       	call   c0009f8a <init_tss>
c0008558:	e8 c3 21 00 00       	call   c000a720 <init_pit>
c000855d:	e8 48 0f 00 00       	call   c00094aa <init_memory>
c0008562:	e8 2d 1f 00 00       	call   c000a494 <init_keyboard>
c0008567:	e8 86 16 00 00       	call   c0009bf2 <init_thread>
c000856c:	e8 4b 1d 00 00       	call   c000a2bc <init_console>
c0008571:	c7 04 24 ec e6 02 c0 	mov    DWORD PTR [esp],0xc002e6ec
c0008578:	e8 05 2b 00 00       	call   c000b082 <init_screen>
c000857d:	58                   	pop    eax
c000857e:	5a                   	pop    edx
c000857f:	68 3c e0 00 c0       	push   0xc000e03c
c0008584:	6a 02                	push   0x2
c0008586:	e8 f6 28 00 00       	call   c000ae81 <put_str>
c000858b:	83 c4 10             	add    esp,0x10
c000858e:	c9                   	leave  
c000858f:	c3                   	ret    

c0008590 <asm_intr0x00_handler>:
c0008590:	68 00 00 00 00       	push   0x0
c0008595:	1e                   	push   ds
c0008596:	06                   	push   es
c0008597:	0f a0                	push   fs
c0008599:	0f a8                	push   gs
c000859b:	60                   	pusha  
c000859c:	68 00 00 00 00       	push   0x0
c00085a1:	66 8c d0             	mov    ax,ss
c00085a4:	8e d8                	mov    ds,eax
c00085a6:	8e c0                	mov    es,eax
c00085a8:	ff 15 d8 f0 00 c0    	call   DWORD PTR ds:0xc000f0d8
c00085ae:	81 c4 04 00 00 00    	add    esp,0x4
c00085b4:	61                   	popa   
c00085b5:	0f a9                	pop    gs
c00085b7:	0f a1                	pop    fs
c00085b9:	07                   	pop    es
c00085ba:	1f                   	pop    ds
c00085bb:	81 c4 04 00 00 00    	add    esp,0x4
c00085c1:	cf                   	iret   

c00085c2 <asm_intr0x01_handler>:
c00085c2:	68 00 00 00 00       	push   0x0
c00085c7:	1e                   	push   ds
c00085c8:	06                   	push   es
c00085c9:	0f a0                	push   fs
c00085cb:	0f a8                	push   gs
c00085cd:	60                   	pusha  
c00085ce:	68 01 00 00 00       	push   0x1
c00085d3:	66 8c d0             	mov    ax,ss
c00085d6:	8e d8                	mov    ds,eax
c00085d8:	8e c0                	mov    es,eax
c00085da:	ff 15 dc f0 00 c0    	call   DWORD PTR ds:0xc000f0dc
c00085e0:	81 c4 04 00 00 00    	add    esp,0x4
c00085e6:	61                   	popa   
c00085e7:	0f a9                	pop    gs
c00085e9:	0f a1                	pop    fs
c00085eb:	07                   	pop    es
c00085ec:	1f                   	pop    ds
c00085ed:	81 c4 04 00 00 00    	add    esp,0x4
c00085f3:	cf                   	iret   

c00085f4 <asm_intr0x02_handler>:
c00085f4:	68 00 00 00 00       	push   0x0
c00085f9:	1e                   	push   ds
c00085fa:	06                   	push   es
c00085fb:	0f a0                	push   fs
c00085fd:	0f a8                	push   gs
c00085ff:	60                   	pusha  
c0008600:	68 02 00 00 00       	push   0x2
c0008605:	66 8c d0             	mov    ax,ss
c0008608:	8e d8                	mov    ds,eax
c000860a:	8e c0                	mov    es,eax
c000860c:	ff 15 e0 f0 00 c0    	call   DWORD PTR ds:0xc000f0e0
c0008612:	81 c4 04 00 00 00    	add    esp,0x4
c0008618:	61                   	popa   
c0008619:	0f a9                	pop    gs
c000861b:	0f a1                	pop    fs
c000861d:	07                   	pop    es
c000861e:	1f                   	pop    ds
c000861f:	81 c4 04 00 00 00    	add    esp,0x4
c0008625:	cf                   	iret   

c0008626 <asm_intr0x03_handler>:
c0008626:	68 00 00 00 00       	push   0x0
c000862b:	1e                   	push   ds
c000862c:	06                   	push   es
c000862d:	0f a0                	push   fs
c000862f:	0f a8                	push   gs
c0008631:	60                   	pusha  
c0008632:	68 03 00 00 00       	push   0x3
c0008637:	66 8c d0             	mov    ax,ss
c000863a:	8e d8                	mov    ds,eax
c000863c:	8e c0                	mov    es,eax
c000863e:	ff 15 e4 f0 00 c0    	call   DWORD PTR ds:0xc000f0e4
c0008644:	81 c4 04 00 00 00    	add    esp,0x4
c000864a:	61                   	popa   
c000864b:	0f a9                	pop    gs
c000864d:	0f a1                	pop    fs
c000864f:	07                   	pop    es
c0008650:	1f                   	pop    ds
c0008651:	81 c4 04 00 00 00    	add    esp,0x4
c0008657:	cf                   	iret   

c0008658 <asm_intr0x04_handler>:
c0008658:	68 00 00 00 00       	push   0x0
c000865d:	1e                   	push   ds
c000865e:	06                   	push   es
c000865f:	0f a0                	push   fs
c0008661:	0f a8                	push   gs
c0008663:	60                   	pusha  
c0008664:	68 04 00 00 00       	push   0x4
c0008669:	66 8c d0             	mov    ax,ss
c000866c:	8e d8                	mov    ds,eax
c000866e:	8e c0                	mov    es,eax
c0008670:	ff 15 e8 f0 00 c0    	call   DWORD PTR ds:0xc000f0e8
c0008676:	81 c4 04 00 00 00    	add    esp,0x4
c000867c:	61                   	popa   
c000867d:	0f a9                	pop    gs
c000867f:	0f a1                	pop    fs
c0008681:	07                   	pop    es
c0008682:	1f                   	pop    ds
c0008683:	81 c4 04 00 00 00    	add    esp,0x4
c0008689:	cf                   	iret   

c000868a <asm_intr0x05_handler>:
c000868a:	68 00 00 00 00       	push   0x0
c000868f:	1e                   	push   ds
c0008690:	06                   	push   es
c0008691:	0f a0                	push   fs
c0008693:	0f a8                	push   gs
c0008695:	60                   	pusha  
c0008696:	68 05 00 00 00       	push   0x5
c000869b:	66 8c d0             	mov    ax,ss
c000869e:	8e d8                	mov    ds,eax
c00086a0:	8e c0                	mov    es,eax
c00086a2:	ff 15 ec f0 00 c0    	call   DWORD PTR ds:0xc000f0ec
c00086a8:	81 c4 04 00 00 00    	add    esp,0x4
c00086ae:	61                   	popa   
c00086af:	0f a9                	pop    gs
c00086b1:	0f a1                	pop    fs
c00086b3:	07                   	pop    es
c00086b4:	1f                   	pop    ds
c00086b5:	81 c4 04 00 00 00    	add    esp,0x4
c00086bb:	cf                   	iret   

c00086bc <asm_intr0x06_handler>:
c00086bc:	68 00 00 00 00       	push   0x0
c00086c1:	1e                   	push   ds
c00086c2:	06                   	push   es
c00086c3:	0f a0                	push   fs
c00086c5:	0f a8                	push   gs
c00086c7:	60                   	pusha  
c00086c8:	68 06 00 00 00       	push   0x6
c00086cd:	66 8c d0             	mov    ax,ss
c00086d0:	8e d8                	mov    ds,eax
c00086d2:	8e c0                	mov    es,eax
c00086d4:	ff 15 f0 f0 00 c0    	call   DWORD PTR ds:0xc000f0f0
c00086da:	81 c4 04 00 00 00    	add    esp,0x4
c00086e0:	61                   	popa   
c00086e1:	0f a9                	pop    gs
c00086e3:	0f a1                	pop    fs
c00086e5:	07                   	pop    es
c00086e6:	1f                   	pop    ds
c00086e7:	81 c4 04 00 00 00    	add    esp,0x4
c00086ed:	cf                   	iret   

c00086ee <asm_intr0x07_handler>:
c00086ee:	68 00 00 00 00       	push   0x0
c00086f3:	1e                   	push   ds
c00086f4:	06                   	push   es
c00086f5:	0f a0                	push   fs
c00086f7:	0f a8                	push   gs
c00086f9:	60                   	pusha  
c00086fa:	68 07 00 00 00       	push   0x7
c00086ff:	66 8c d0             	mov    ax,ss
c0008702:	8e d8                	mov    ds,eax
c0008704:	8e c0                	mov    es,eax
c0008706:	ff 15 f4 f0 00 c0    	call   DWORD PTR ds:0xc000f0f4
c000870c:	81 c4 04 00 00 00    	add    esp,0x4
c0008712:	61                   	popa   
c0008713:	0f a9                	pop    gs
c0008715:	0f a1                	pop    fs
c0008717:	07                   	pop    es
c0008718:	1f                   	pop    ds
c0008719:	81 c4 04 00 00 00    	add    esp,0x4
c000871f:	cf                   	iret   

c0008720 <asm_intr0x08_handler>:
c0008720:	90                   	nop
c0008721:	1e                   	push   ds
c0008722:	06                   	push   es
c0008723:	0f a0                	push   fs
c0008725:	0f a8                	push   gs
c0008727:	60                   	pusha  
c0008728:	68 08 00 00 00       	push   0x8
c000872d:	66 8c d0             	mov    ax,ss
c0008730:	8e d8                	mov    ds,eax
c0008732:	8e c0                	mov    es,eax
c0008734:	ff 15 f8 f0 00 c0    	call   DWORD PTR ds:0xc000f0f8
c000873a:	81 c4 04 00 00 00    	add    esp,0x4
c0008740:	61                   	popa   
c0008741:	0f a9                	pop    gs
c0008743:	0f a1                	pop    fs
c0008745:	07                   	pop    es
c0008746:	1f                   	pop    ds
c0008747:	81 c4 04 00 00 00    	add    esp,0x4
c000874d:	cf                   	iret   

c000874e <asm_intr0x09_handler>:
c000874e:	68 00 00 00 00       	push   0x0
c0008753:	1e                   	push   ds
c0008754:	06                   	push   es
c0008755:	0f a0                	push   fs
c0008757:	0f a8                	push   gs
c0008759:	60                   	pusha  
c000875a:	68 09 00 00 00       	push   0x9
c000875f:	66 8c d0             	mov    ax,ss
c0008762:	8e d8                	mov    ds,eax
c0008764:	8e c0                	mov    es,eax
c0008766:	ff 15 fc f0 00 c0    	call   DWORD PTR ds:0xc000f0fc
c000876c:	81 c4 04 00 00 00    	add    esp,0x4
c0008772:	61                   	popa   
c0008773:	0f a9                	pop    gs
c0008775:	0f a1                	pop    fs
c0008777:	07                   	pop    es
c0008778:	1f                   	pop    ds
c0008779:	81 c4 04 00 00 00    	add    esp,0x4
c000877f:	cf                   	iret   

c0008780 <asm_intr0x0a_handler>:
c0008780:	90                   	nop
c0008781:	1e                   	push   ds
c0008782:	06                   	push   es
c0008783:	0f a0                	push   fs
c0008785:	0f a8                	push   gs
c0008787:	60                   	pusha  
c0008788:	68 0a 00 00 00       	push   0xa
c000878d:	66 8c d0             	mov    ax,ss
c0008790:	8e d8                	mov    ds,eax
c0008792:	8e c0                	mov    es,eax
c0008794:	ff 15 00 f1 00 c0    	call   DWORD PTR ds:0xc000f100
c000879a:	81 c4 04 00 00 00    	add    esp,0x4
c00087a0:	61                   	popa   
c00087a1:	0f a9                	pop    gs
c00087a3:	0f a1                	pop    fs
c00087a5:	07                   	pop    es
c00087a6:	1f                   	pop    ds
c00087a7:	81 c4 04 00 00 00    	add    esp,0x4
c00087ad:	cf                   	iret   

c00087ae <asm_intr0x0b_handler>:
c00087ae:	90                   	nop
c00087af:	1e                   	push   ds
c00087b0:	06                   	push   es
c00087b1:	0f a0                	push   fs
c00087b3:	0f a8                	push   gs
c00087b5:	60                   	pusha  
c00087b6:	68 0b 00 00 00       	push   0xb
c00087bb:	66 8c d0             	mov    ax,ss
c00087be:	8e d8                	mov    ds,eax
c00087c0:	8e c0                	mov    es,eax
c00087c2:	ff 15 04 f1 00 c0    	call   DWORD PTR ds:0xc000f104
c00087c8:	81 c4 04 00 00 00    	add    esp,0x4
c00087ce:	61                   	popa   
c00087cf:	0f a9                	pop    gs
c00087d1:	0f a1                	pop    fs
c00087d3:	07                   	pop    es
c00087d4:	1f                   	pop    ds
c00087d5:	81 c4 04 00 00 00    	add    esp,0x4
c00087db:	cf                   	iret   

c00087dc <asm_intr0x0c_handler>:
c00087dc:	68 00 00 00 00       	push   0x0
c00087e1:	1e                   	push   ds
c00087e2:	06                   	push   es
c00087e3:	0f a0                	push   fs
c00087e5:	0f a8                	push   gs
c00087e7:	60                   	pusha  
c00087e8:	68 0c 00 00 00       	push   0xc
c00087ed:	66 8c d0             	mov    ax,ss
c00087f0:	8e d8                	mov    ds,eax
c00087f2:	8e c0                	mov    es,eax
c00087f4:	ff 15 08 f1 00 c0    	call   DWORD PTR ds:0xc000f108
c00087fa:	81 c4 04 00 00 00    	add    esp,0x4
c0008800:	61                   	popa   
c0008801:	0f a9                	pop    gs
c0008803:	0f a1                	pop    fs
c0008805:	07                   	pop    es
c0008806:	1f                   	pop    ds
c0008807:	81 c4 04 00 00 00    	add    esp,0x4
c000880d:	cf                   	iret   

c000880e <asm_intr0x0d_handler>:
c000880e:	90                   	nop
c000880f:	1e                   	push   ds
c0008810:	06                   	push   es
c0008811:	0f a0                	push   fs
c0008813:	0f a8                	push   gs
c0008815:	60                   	pusha  
c0008816:	68 0d 00 00 00       	push   0xd
c000881b:	66 8c d0             	mov    ax,ss
c000881e:	8e d8                	mov    ds,eax
c0008820:	8e c0                	mov    es,eax
c0008822:	ff 15 0c f1 00 c0    	call   DWORD PTR ds:0xc000f10c
c0008828:	81 c4 04 00 00 00    	add    esp,0x4
c000882e:	61                   	popa   
c000882f:	0f a9                	pop    gs
c0008831:	0f a1                	pop    fs
c0008833:	07                   	pop    es
c0008834:	1f                   	pop    ds
c0008835:	81 c4 04 00 00 00    	add    esp,0x4
c000883b:	cf                   	iret   

c000883c <asm_intr0x0e_handler>:
c000883c:	90                   	nop
c000883d:	1e                   	push   ds
c000883e:	06                   	push   es
c000883f:	0f a0                	push   fs
c0008841:	0f a8                	push   gs
c0008843:	60                   	pusha  
c0008844:	68 0e 00 00 00       	push   0xe
c0008849:	66 8c d0             	mov    ax,ss
c000884c:	8e d8                	mov    ds,eax
c000884e:	8e c0                	mov    es,eax
c0008850:	ff 15 10 f1 00 c0    	call   DWORD PTR ds:0xc000f110
c0008856:	81 c4 04 00 00 00    	add    esp,0x4
c000885c:	61                   	popa   
c000885d:	0f a9                	pop    gs
c000885f:	0f a1                	pop    fs
c0008861:	07                   	pop    es
c0008862:	1f                   	pop    ds
c0008863:	81 c4 04 00 00 00    	add    esp,0x4
c0008869:	cf                   	iret   

c000886a <asm_intr0x0f_handler>:
c000886a:	68 00 00 00 00       	push   0x0
c000886f:	1e                   	push   ds
c0008870:	06                   	push   es
c0008871:	0f a0                	push   fs
c0008873:	0f a8                	push   gs
c0008875:	60                   	pusha  
c0008876:	68 0f 00 00 00       	push   0xf
c000887b:	66 8c d0             	mov    ax,ss
c000887e:	8e d8                	mov    ds,eax
c0008880:	8e c0                	mov    es,eax
c0008882:	ff 15 14 f1 00 c0    	call   DWORD PTR ds:0xc000f114
c0008888:	81 c4 04 00 00 00    	add    esp,0x4
c000888e:	61                   	popa   
c000888f:	0f a9                	pop    gs
c0008891:	0f a1                	pop    fs
c0008893:	07                   	pop    es
c0008894:	1f                   	pop    ds
c0008895:	81 c4 04 00 00 00    	add    esp,0x4
c000889b:	cf                   	iret   

c000889c <asm_intr0x10_handler>:
c000889c:	68 00 00 00 00       	push   0x0
c00088a1:	1e                   	push   ds
c00088a2:	06                   	push   es
c00088a3:	0f a0                	push   fs
c00088a5:	0f a8                	push   gs
c00088a7:	60                   	pusha  
c00088a8:	68 10 00 00 00       	push   0x10
c00088ad:	66 8c d0             	mov    ax,ss
c00088b0:	8e d8                	mov    ds,eax
c00088b2:	8e c0                	mov    es,eax
c00088b4:	ff 15 18 f1 00 c0    	call   DWORD PTR ds:0xc000f118
c00088ba:	81 c4 04 00 00 00    	add    esp,0x4
c00088c0:	61                   	popa   
c00088c1:	0f a9                	pop    gs
c00088c3:	0f a1                	pop    fs
c00088c5:	07                   	pop    es
c00088c6:	1f                   	pop    ds
c00088c7:	81 c4 04 00 00 00    	add    esp,0x4
c00088cd:	cf                   	iret   

c00088ce <asm_intr0x11_handler>:
c00088ce:	90                   	nop
c00088cf:	1e                   	push   ds
c00088d0:	06                   	push   es
c00088d1:	0f a0                	push   fs
c00088d3:	0f a8                	push   gs
c00088d5:	60                   	pusha  
c00088d6:	68 11 00 00 00       	push   0x11
c00088db:	66 8c d0             	mov    ax,ss
c00088de:	8e d8                	mov    ds,eax
c00088e0:	8e c0                	mov    es,eax
c00088e2:	ff 15 1c f1 00 c0    	call   DWORD PTR ds:0xc000f11c
c00088e8:	81 c4 04 00 00 00    	add    esp,0x4
c00088ee:	61                   	popa   
c00088ef:	0f a9                	pop    gs
c00088f1:	0f a1                	pop    fs
c00088f3:	07                   	pop    es
c00088f4:	1f                   	pop    ds
c00088f5:	81 c4 04 00 00 00    	add    esp,0x4
c00088fb:	cf                   	iret   

c00088fc <asm_intr0x12_handler>:
c00088fc:	68 00 00 00 00       	push   0x0
c0008901:	1e                   	push   ds
c0008902:	06                   	push   es
c0008903:	0f a0                	push   fs
c0008905:	0f a8                	push   gs
c0008907:	60                   	pusha  
c0008908:	68 12 00 00 00       	push   0x12
c000890d:	66 8c d0             	mov    ax,ss
c0008910:	8e d8                	mov    ds,eax
c0008912:	8e c0                	mov    es,eax
c0008914:	ff 15 20 f1 00 c0    	call   DWORD PTR ds:0xc000f120
c000891a:	81 c4 04 00 00 00    	add    esp,0x4
c0008920:	61                   	popa   
c0008921:	0f a9                	pop    gs
c0008923:	0f a1                	pop    fs
c0008925:	07                   	pop    es
c0008926:	1f                   	pop    ds
c0008927:	81 c4 04 00 00 00    	add    esp,0x4
c000892d:	cf                   	iret   

c000892e <asm_intr0x13_handler>:
c000892e:	68 00 00 00 00       	push   0x0
c0008933:	1e                   	push   ds
c0008934:	06                   	push   es
c0008935:	0f a0                	push   fs
c0008937:	0f a8                	push   gs
c0008939:	60                   	pusha  
c000893a:	68 13 00 00 00       	push   0x13
c000893f:	66 8c d0             	mov    ax,ss
c0008942:	8e d8                	mov    ds,eax
c0008944:	8e c0                	mov    es,eax
c0008946:	ff 15 24 f1 00 c0    	call   DWORD PTR ds:0xc000f124
c000894c:	81 c4 04 00 00 00    	add    esp,0x4
c0008952:	61                   	popa   
c0008953:	0f a9                	pop    gs
c0008955:	0f a1                	pop    fs
c0008957:	07                   	pop    es
c0008958:	1f                   	pop    ds
c0008959:	81 c4 04 00 00 00    	add    esp,0x4
c000895f:	cf                   	iret   

c0008960 <asm_intr0x14_handler>:
c0008960:	68 00 00 00 00       	push   0x0
c0008965:	1e                   	push   ds
c0008966:	06                   	push   es
c0008967:	0f a0                	push   fs
c0008969:	0f a8                	push   gs
c000896b:	60                   	pusha  
c000896c:	68 14 00 00 00       	push   0x14
c0008971:	66 8c d0             	mov    ax,ss
c0008974:	8e d8                	mov    ds,eax
c0008976:	8e c0                	mov    es,eax
c0008978:	ff 15 28 f1 00 c0    	call   DWORD PTR ds:0xc000f128
c000897e:	81 c4 04 00 00 00    	add    esp,0x4
c0008984:	61                   	popa   
c0008985:	0f a9                	pop    gs
c0008987:	0f a1                	pop    fs
c0008989:	07                   	pop    es
c000898a:	1f                   	pop    ds
c000898b:	81 c4 04 00 00 00    	add    esp,0x4
c0008991:	cf                   	iret   

c0008992 <asm_intr0x15_handler>:
c0008992:	68 00 00 00 00       	push   0x0
c0008997:	1e                   	push   ds
c0008998:	06                   	push   es
c0008999:	0f a0                	push   fs
c000899b:	0f a8                	push   gs
c000899d:	60                   	pusha  
c000899e:	68 15 00 00 00       	push   0x15
c00089a3:	66 8c d0             	mov    ax,ss
c00089a6:	8e d8                	mov    ds,eax
c00089a8:	8e c0                	mov    es,eax
c00089aa:	ff 15 2c f1 00 c0    	call   DWORD PTR ds:0xc000f12c
c00089b0:	81 c4 04 00 00 00    	add    esp,0x4
c00089b6:	61                   	popa   
c00089b7:	0f a9                	pop    gs
c00089b9:	0f a1                	pop    fs
c00089bb:	07                   	pop    es
c00089bc:	1f                   	pop    ds
c00089bd:	81 c4 04 00 00 00    	add    esp,0x4
c00089c3:	cf                   	iret   

c00089c4 <asm_intr0x16_handler>:
c00089c4:	68 00 00 00 00       	push   0x0
c00089c9:	1e                   	push   ds
c00089ca:	06                   	push   es
c00089cb:	0f a0                	push   fs
c00089cd:	0f a8                	push   gs
c00089cf:	60                   	pusha  
c00089d0:	68 16 00 00 00       	push   0x16
c00089d5:	66 8c d0             	mov    ax,ss
c00089d8:	8e d8                	mov    ds,eax
c00089da:	8e c0                	mov    es,eax
c00089dc:	ff 15 30 f1 00 c0    	call   DWORD PTR ds:0xc000f130
c00089e2:	81 c4 04 00 00 00    	add    esp,0x4
c00089e8:	61                   	popa   
c00089e9:	0f a9                	pop    gs
c00089eb:	0f a1                	pop    fs
c00089ed:	07                   	pop    es
c00089ee:	1f                   	pop    ds
c00089ef:	81 c4 04 00 00 00    	add    esp,0x4
c00089f5:	cf                   	iret   

c00089f6 <asm_intr0x17_handler>:
c00089f6:	68 00 00 00 00       	push   0x0
c00089fb:	1e                   	push   ds
c00089fc:	06                   	push   es
c00089fd:	0f a0                	push   fs
c00089ff:	0f a8                	push   gs
c0008a01:	60                   	pusha  
c0008a02:	68 17 00 00 00       	push   0x17
c0008a07:	66 8c d0             	mov    ax,ss
c0008a0a:	8e d8                	mov    ds,eax
c0008a0c:	8e c0                	mov    es,eax
c0008a0e:	ff 15 34 f1 00 c0    	call   DWORD PTR ds:0xc000f134
c0008a14:	81 c4 04 00 00 00    	add    esp,0x4
c0008a1a:	61                   	popa   
c0008a1b:	0f a9                	pop    gs
c0008a1d:	0f a1                	pop    fs
c0008a1f:	07                   	pop    es
c0008a20:	1f                   	pop    ds
c0008a21:	81 c4 04 00 00 00    	add    esp,0x4
c0008a27:	cf                   	iret   

c0008a28 <asm_intr0x18_handler>:
c0008a28:	90                   	nop
c0008a29:	1e                   	push   ds
c0008a2a:	06                   	push   es
c0008a2b:	0f a0                	push   fs
c0008a2d:	0f a8                	push   gs
c0008a2f:	60                   	pusha  
c0008a30:	68 18 00 00 00       	push   0x18
c0008a35:	66 8c d0             	mov    ax,ss
c0008a38:	8e d8                	mov    ds,eax
c0008a3a:	8e c0                	mov    es,eax
c0008a3c:	ff 15 38 f1 00 c0    	call   DWORD PTR ds:0xc000f138
c0008a42:	81 c4 04 00 00 00    	add    esp,0x4
c0008a48:	61                   	popa   
c0008a49:	0f a9                	pop    gs
c0008a4b:	0f a1                	pop    fs
c0008a4d:	07                   	pop    es
c0008a4e:	1f                   	pop    ds
c0008a4f:	81 c4 04 00 00 00    	add    esp,0x4
c0008a55:	cf                   	iret   

c0008a56 <asm_intr0x19_handler>:
c0008a56:	68 00 00 00 00       	push   0x0
c0008a5b:	1e                   	push   ds
c0008a5c:	06                   	push   es
c0008a5d:	0f a0                	push   fs
c0008a5f:	0f a8                	push   gs
c0008a61:	60                   	pusha  
c0008a62:	68 19 00 00 00       	push   0x19
c0008a67:	66 8c d0             	mov    ax,ss
c0008a6a:	8e d8                	mov    ds,eax
c0008a6c:	8e c0                	mov    es,eax
c0008a6e:	ff 15 3c f1 00 c0    	call   DWORD PTR ds:0xc000f13c
c0008a74:	81 c4 04 00 00 00    	add    esp,0x4
c0008a7a:	61                   	popa   
c0008a7b:	0f a9                	pop    gs
c0008a7d:	0f a1                	pop    fs
c0008a7f:	07                   	pop    es
c0008a80:	1f                   	pop    ds
c0008a81:	81 c4 04 00 00 00    	add    esp,0x4
c0008a87:	cf                   	iret   

c0008a88 <asm_intr0x1a_handler>:
c0008a88:	90                   	nop
c0008a89:	1e                   	push   ds
c0008a8a:	06                   	push   es
c0008a8b:	0f a0                	push   fs
c0008a8d:	0f a8                	push   gs
c0008a8f:	60                   	pusha  
c0008a90:	68 1a 00 00 00       	push   0x1a
c0008a95:	66 8c d0             	mov    ax,ss
c0008a98:	8e d8                	mov    ds,eax
c0008a9a:	8e c0                	mov    es,eax
c0008a9c:	ff 15 40 f1 00 c0    	call   DWORD PTR ds:0xc000f140
c0008aa2:	81 c4 04 00 00 00    	add    esp,0x4
c0008aa8:	61                   	popa   
c0008aa9:	0f a9                	pop    gs
c0008aab:	0f a1                	pop    fs
c0008aad:	07                   	pop    es
c0008aae:	1f                   	pop    ds
c0008aaf:	81 c4 04 00 00 00    	add    esp,0x4
c0008ab5:	cf                   	iret   

c0008ab6 <asm_intr0x1b_handler>:
c0008ab6:	90                   	nop
c0008ab7:	1e                   	push   ds
c0008ab8:	06                   	push   es
c0008ab9:	0f a0                	push   fs
c0008abb:	0f a8                	push   gs
c0008abd:	60                   	pusha  
c0008abe:	68 1b 00 00 00       	push   0x1b
c0008ac3:	66 8c d0             	mov    ax,ss
c0008ac6:	8e d8                	mov    ds,eax
c0008ac8:	8e c0                	mov    es,eax
c0008aca:	ff 15 44 f1 00 c0    	call   DWORD PTR ds:0xc000f144
c0008ad0:	81 c4 04 00 00 00    	add    esp,0x4
c0008ad6:	61                   	popa   
c0008ad7:	0f a9                	pop    gs
c0008ad9:	0f a1                	pop    fs
c0008adb:	07                   	pop    es
c0008adc:	1f                   	pop    ds
c0008add:	81 c4 04 00 00 00    	add    esp,0x4
c0008ae3:	cf                   	iret   

c0008ae4 <asm_intr0x1c_handler>:
c0008ae4:	68 00 00 00 00       	push   0x0
c0008ae9:	1e                   	push   ds
c0008aea:	06                   	push   es
c0008aeb:	0f a0                	push   fs
c0008aed:	0f a8                	push   gs
c0008aef:	60                   	pusha  
c0008af0:	68 1c 00 00 00       	push   0x1c
c0008af5:	66 8c d0             	mov    ax,ss
c0008af8:	8e d8                	mov    ds,eax
c0008afa:	8e c0                	mov    es,eax
c0008afc:	ff 15 48 f1 00 c0    	call   DWORD PTR ds:0xc000f148
c0008b02:	81 c4 04 00 00 00    	add    esp,0x4
c0008b08:	61                   	popa   
c0008b09:	0f a9                	pop    gs
c0008b0b:	0f a1                	pop    fs
c0008b0d:	07                   	pop    es
c0008b0e:	1f                   	pop    ds
c0008b0f:	81 c4 04 00 00 00    	add    esp,0x4
c0008b15:	cf                   	iret   

c0008b16 <asm_intr0x1d_handler>:
c0008b16:	90                   	nop
c0008b17:	1e                   	push   ds
c0008b18:	06                   	push   es
c0008b19:	0f a0                	push   fs
c0008b1b:	0f a8                	push   gs
c0008b1d:	60                   	pusha  
c0008b1e:	68 1d 00 00 00       	push   0x1d
c0008b23:	66 8c d0             	mov    ax,ss
c0008b26:	8e d8                	mov    ds,eax
c0008b28:	8e c0                	mov    es,eax
c0008b2a:	ff 15 4c f1 00 c0    	call   DWORD PTR ds:0xc000f14c
c0008b30:	81 c4 04 00 00 00    	add    esp,0x4
c0008b36:	61                   	popa   
c0008b37:	0f a9                	pop    gs
c0008b39:	0f a1                	pop    fs
c0008b3b:	07                   	pop    es
c0008b3c:	1f                   	pop    ds
c0008b3d:	81 c4 04 00 00 00    	add    esp,0x4
c0008b43:	cf                   	iret   

c0008b44 <asm_intr0x1e_handler>:
c0008b44:	90                   	nop
c0008b45:	1e                   	push   ds
c0008b46:	06                   	push   es
c0008b47:	0f a0                	push   fs
c0008b49:	0f a8                	push   gs
c0008b4b:	60                   	pusha  
c0008b4c:	68 1e 00 00 00       	push   0x1e
c0008b51:	66 8c d0             	mov    ax,ss
c0008b54:	8e d8                	mov    ds,eax
c0008b56:	8e c0                	mov    es,eax
c0008b58:	ff 15 50 f1 00 c0    	call   DWORD PTR ds:0xc000f150
c0008b5e:	81 c4 04 00 00 00    	add    esp,0x4
c0008b64:	61                   	popa   
c0008b65:	0f a9                	pop    gs
c0008b67:	0f a1                	pop    fs
c0008b69:	07                   	pop    es
c0008b6a:	1f                   	pop    ds
c0008b6b:	81 c4 04 00 00 00    	add    esp,0x4
c0008b71:	cf                   	iret   

c0008b72 <asm_intr0x1f_handler>:
c0008b72:	68 00 00 00 00       	push   0x0
c0008b77:	1e                   	push   ds
c0008b78:	06                   	push   es
c0008b79:	0f a0                	push   fs
c0008b7b:	0f a8                	push   gs
c0008b7d:	60                   	pusha  
c0008b7e:	68 1f 00 00 00       	push   0x1f
c0008b83:	66 8c d0             	mov    ax,ss
c0008b86:	8e d8                	mov    ds,eax
c0008b88:	8e c0                	mov    es,eax
c0008b8a:	ff 15 54 f1 00 c0    	call   DWORD PTR ds:0xc000f154
c0008b90:	81 c4 04 00 00 00    	add    esp,0x4
c0008b96:	61                   	popa   
c0008b97:	0f a9                	pop    gs
c0008b99:	0f a1                	pop    fs
c0008b9b:	07                   	pop    es
c0008b9c:	1f                   	pop    ds
c0008b9d:	81 c4 04 00 00 00    	add    esp,0x4
c0008ba3:	cf                   	iret   

c0008ba4 <asm_intr0x20_handler>:
c0008ba4:	68 00 00 00 00       	push   0x0
c0008ba9:	1e                   	push   ds
c0008baa:	06                   	push   es
c0008bab:	0f a0                	push   fs
c0008bad:	0f a8                	push   gs
c0008baf:	60                   	pusha  
c0008bb0:	68 20 00 00 00       	push   0x20
c0008bb5:	66 8c d0             	mov    ax,ss
c0008bb8:	8e d8                	mov    ds,eax
c0008bba:	8e c0                	mov    es,eax
c0008bbc:	ff 15 58 f1 00 c0    	call   DWORD PTR ds:0xc000f158
c0008bc2:	81 c4 04 00 00 00    	add    esp,0x4
c0008bc8:	61                   	popa   
c0008bc9:	0f a9                	pop    gs
c0008bcb:	0f a1                	pop    fs
c0008bcd:	07                   	pop    es
c0008bce:	1f                   	pop    ds
c0008bcf:	81 c4 04 00 00 00    	add    esp,0x4
c0008bd5:	cf                   	iret   

c0008bd6 <asm_intr0x21_handler>:
c0008bd6:	68 00 00 00 00       	push   0x0
c0008bdb:	1e                   	push   ds
c0008bdc:	06                   	push   es
c0008bdd:	0f a0                	push   fs
c0008bdf:	0f a8                	push   gs
c0008be1:	60                   	pusha  
c0008be2:	68 21 00 00 00       	push   0x21
c0008be7:	66 8c d0             	mov    ax,ss
c0008bea:	8e d8                	mov    ds,eax
c0008bec:	8e c0                	mov    es,eax
c0008bee:	ff 15 5c f1 00 c0    	call   DWORD PTR ds:0xc000f15c
c0008bf4:	81 c4 04 00 00 00    	add    esp,0x4
c0008bfa:	61                   	popa   
c0008bfb:	0f a9                	pop    gs
c0008bfd:	0f a1                	pop    fs
c0008bff:	07                   	pop    es
c0008c00:	1f                   	pop    ds
c0008c01:	81 c4 04 00 00 00    	add    esp,0x4
c0008c07:	cf                   	iret   

c0008c08 <asm_intr0x22_handler>:
c0008c08:	68 00 00 00 00       	push   0x0
c0008c0d:	1e                   	push   ds
c0008c0e:	06                   	push   es
c0008c0f:	0f a0                	push   fs
c0008c11:	0f a8                	push   gs
c0008c13:	60                   	pusha  
c0008c14:	68 22 00 00 00       	push   0x22
c0008c19:	66 8c d0             	mov    ax,ss
c0008c1c:	8e d8                	mov    ds,eax
c0008c1e:	8e c0                	mov    es,eax
c0008c20:	ff 15 60 f1 00 c0    	call   DWORD PTR ds:0xc000f160
c0008c26:	81 c4 04 00 00 00    	add    esp,0x4
c0008c2c:	61                   	popa   
c0008c2d:	0f a9                	pop    gs
c0008c2f:	0f a1                	pop    fs
c0008c31:	07                   	pop    es
c0008c32:	1f                   	pop    ds
c0008c33:	81 c4 04 00 00 00    	add    esp,0x4
c0008c39:	cf                   	iret   

c0008c3a <asm_intr0x23_handler>:
c0008c3a:	68 00 00 00 00       	push   0x0
c0008c3f:	1e                   	push   ds
c0008c40:	06                   	push   es
c0008c41:	0f a0                	push   fs
c0008c43:	0f a8                	push   gs
c0008c45:	60                   	pusha  
c0008c46:	68 23 00 00 00       	push   0x23
c0008c4b:	66 8c d0             	mov    ax,ss
c0008c4e:	8e d8                	mov    ds,eax
c0008c50:	8e c0                	mov    es,eax
c0008c52:	ff 15 64 f1 00 c0    	call   DWORD PTR ds:0xc000f164
c0008c58:	81 c4 04 00 00 00    	add    esp,0x4
c0008c5e:	61                   	popa   
c0008c5f:	0f a9                	pop    gs
c0008c61:	0f a1                	pop    fs
c0008c63:	07                   	pop    es
c0008c64:	1f                   	pop    ds
c0008c65:	81 c4 04 00 00 00    	add    esp,0x4
c0008c6b:	cf                   	iret   

c0008c6c <asm_intr0x24_handler>:
c0008c6c:	68 00 00 00 00       	push   0x0
c0008c71:	1e                   	push   ds
c0008c72:	06                   	push   es
c0008c73:	0f a0                	push   fs
c0008c75:	0f a8                	push   gs
c0008c77:	60                   	pusha  
c0008c78:	68 24 00 00 00       	push   0x24
c0008c7d:	66 8c d0             	mov    ax,ss
c0008c80:	8e d8                	mov    ds,eax
c0008c82:	8e c0                	mov    es,eax
c0008c84:	ff 15 68 f1 00 c0    	call   DWORD PTR ds:0xc000f168
c0008c8a:	81 c4 04 00 00 00    	add    esp,0x4
c0008c90:	61                   	popa   
c0008c91:	0f a9                	pop    gs
c0008c93:	0f a1                	pop    fs
c0008c95:	07                   	pop    es
c0008c96:	1f                   	pop    ds
c0008c97:	81 c4 04 00 00 00    	add    esp,0x4
c0008c9d:	cf                   	iret   

c0008c9e <asm_intr0x25_handler>:
c0008c9e:	68 00 00 00 00       	push   0x0
c0008ca3:	1e                   	push   ds
c0008ca4:	06                   	push   es
c0008ca5:	0f a0                	push   fs
c0008ca7:	0f a8                	push   gs
c0008ca9:	60                   	pusha  
c0008caa:	68 25 00 00 00       	push   0x25
c0008caf:	66 8c d0             	mov    ax,ss
c0008cb2:	8e d8                	mov    ds,eax
c0008cb4:	8e c0                	mov    es,eax
c0008cb6:	ff 15 6c f1 00 c0    	call   DWORD PTR ds:0xc000f16c
c0008cbc:	81 c4 04 00 00 00    	add    esp,0x4
c0008cc2:	61                   	popa   
c0008cc3:	0f a9                	pop    gs
c0008cc5:	0f a1                	pop    fs
c0008cc7:	07                   	pop    es
c0008cc8:	1f                   	pop    ds
c0008cc9:	81 c4 04 00 00 00    	add    esp,0x4
c0008ccf:	cf                   	iret   

c0008cd0 <asm_intr0x26_handler>:
c0008cd0:	68 00 00 00 00       	push   0x0
c0008cd5:	1e                   	push   ds
c0008cd6:	06                   	push   es
c0008cd7:	0f a0                	push   fs
c0008cd9:	0f a8                	push   gs
c0008cdb:	60                   	pusha  
c0008cdc:	68 26 00 00 00       	push   0x26
c0008ce1:	66 8c d0             	mov    ax,ss
c0008ce4:	8e d8                	mov    ds,eax
c0008ce6:	8e c0                	mov    es,eax
c0008ce8:	ff 15 70 f1 00 c0    	call   DWORD PTR ds:0xc000f170
c0008cee:	81 c4 04 00 00 00    	add    esp,0x4
c0008cf4:	61                   	popa   
c0008cf5:	0f a9                	pop    gs
c0008cf7:	0f a1                	pop    fs
c0008cf9:	07                   	pop    es
c0008cfa:	1f                   	pop    ds
c0008cfb:	81 c4 04 00 00 00    	add    esp,0x4
c0008d01:	cf                   	iret   

c0008d02 <asm_intr0x27_handler>:
c0008d02:	68 00 00 00 00       	push   0x0
c0008d07:	1e                   	push   ds
c0008d08:	06                   	push   es
c0008d09:	0f a0                	push   fs
c0008d0b:	0f a8                	push   gs
c0008d0d:	60                   	pusha  
c0008d0e:	68 27 00 00 00       	push   0x27
c0008d13:	66 8c d0             	mov    ax,ss
c0008d16:	8e d8                	mov    ds,eax
c0008d18:	8e c0                	mov    es,eax
c0008d1a:	ff 15 74 f1 00 c0    	call   DWORD PTR ds:0xc000f174
c0008d20:	81 c4 04 00 00 00    	add    esp,0x4
c0008d26:	61                   	popa   
c0008d27:	0f a9                	pop    gs
c0008d29:	0f a1                	pop    fs
c0008d2b:	07                   	pop    es
c0008d2c:	1f                   	pop    ds
c0008d2d:	81 c4 04 00 00 00    	add    esp,0x4
c0008d33:	cf                   	iret   

c0008d34 <asm_intr0x28_handler>:
c0008d34:	68 00 00 00 00       	push   0x0
c0008d39:	1e                   	push   ds
c0008d3a:	06                   	push   es
c0008d3b:	0f a0                	push   fs
c0008d3d:	0f a8                	push   gs
c0008d3f:	60                   	pusha  
c0008d40:	68 28 00 00 00       	push   0x28
c0008d45:	66 8c d0             	mov    ax,ss
c0008d48:	8e d8                	mov    ds,eax
c0008d4a:	8e c0                	mov    es,eax
c0008d4c:	ff 15 78 f1 00 c0    	call   DWORD PTR ds:0xc000f178
c0008d52:	81 c4 04 00 00 00    	add    esp,0x4
c0008d58:	61                   	popa   
c0008d59:	0f a9                	pop    gs
c0008d5b:	0f a1                	pop    fs
c0008d5d:	07                   	pop    es
c0008d5e:	1f                   	pop    ds
c0008d5f:	81 c4 04 00 00 00    	add    esp,0x4
c0008d65:	cf                   	iret   

c0008d66 <asm_intr0x29_handler>:
c0008d66:	68 00 00 00 00       	push   0x0
c0008d6b:	1e                   	push   ds
c0008d6c:	06                   	push   es
c0008d6d:	0f a0                	push   fs
c0008d6f:	0f a8                	push   gs
c0008d71:	60                   	pusha  
c0008d72:	68 29 00 00 00       	push   0x29
c0008d77:	66 8c d0             	mov    ax,ss
c0008d7a:	8e d8                	mov    ds,eax
c0008d7c:	8e c0                	mov    es,eax
c0008d7e:	ff 15 7c f1 00 c0    	call   DWORD PTR ds:0xc000f17c
c0008d84:	81 c4 04 00 00 00    	add    esp,0x4
c0008d8a:	61                   	popa   
c0008d8b:	0f a9                	pop    gs
c0008d8d:	0f a1                	pop    fs
c0008d8f:	07                   	pop    es
c0008d90:	1f                   	pop    ds
c0008d91:	81 c4 04 00 00 00    	add    esp,0x4
c0008d97:	cf                   	iret   

c0008d98 <asm_intr0x2a_handler>:
c0008d98:	68 00 00 00 00       	push   0x0
c0008d9d:	1e                   	push   ds
c0008d9e:	06                   	push   es
c0008d9f:	0f a0                	push   fs
c0008da1:	0f a8                	push   gs
c0008da3:	60                   	pusha  
c0008da4:	68 2a 00 00 00       	push   0x2a
c0008da9:	66 8c d0             	mov    ax,ss
c0008dac:	8e d8                	mov    ds,eax
c0008dae:	8e c0                	mov    es,eax
c0008db0:	ff 15 80 f1 00 c0    	call   DWORD PTR ds:0xc000f180
c0008db6:	81 c4 04 00 00 00    	add    esp,0x4
c0008dbc:	61                   	popa   
c0008dbd:	0f a9                	pop    gs
c0008dbf:	0f a1                	pop    fs
c0008dc1:	07                   	pop    es
c0008dc2:	1f                   	pop    ds
c0008dc3:	81 c4 04 00 00 00    	add    esp,0x4
c0008dc9:	cf                   	iret   

c0008dca <asm_intr0x2b_handler>:
c0008dca:	68 00 00 00 00       	push   0x0
c0008dcf:	1e                   	push   ds
c0008dd0:	06                   	push   es
c0008dd1:	0f a0                	push   fs
c0008dd3:	0f a8                	push   gs
c0008dd5:	60                   	pusha  
c0008dd6:	68 2b 00 00 00       	push   0x2b
c0008ddb:	66 8c d0             	mov    ax,ss
c0008dde:	8e d8                	mov    ds,eax
c0008de0:	8e c0                	mov    es,eax
c0008de2:	ff 15 84 f1 00 c0    	call   DWORD PTR ds:0xc000f184
c0008de8:	81 c4 04 00 00 00    	add    esp,0x4
c0008dee:	61                   	popa   
c0008def:	0f a9                	pop    gs
c0008df1:	0f a1                	pop    fs
c0008df3:	07                   	pop    es
c0008df4:	1f                   	pop    ds
c0008df5:	81 c4 04 00 00 00    	add    esp,0x4
c0008dfb:	cf                   	iret   

c0008dfc <asm_intr0x2c_handler>:
c0008dfc:	68 00 00 00 00       	push   0x0
c0008e01:	1e                   	push   ds
c0008e02:	06                   	push   es
c0008e03:	0f a0                	push   fs
c0008e05:	0f a8                	push   gs
c0008e07:	60                   	pusha  
c0008e08:	68 2c 00 00 00       	push   0x2c
c0008e0d:	66 8c d0             	mov    ax,ss
c0008e10:	8e d8                	mov    ds,eax
c0008e12:	8e c0                	mov    es,eax
c0008e14:	ff 15 88 f1 00 c0    	call   DWORD PTR ds:0xc000f188
c0008e1a:	81 c4 04 00 00 00    	add    esp,0x4
c0008e20:	61                   	popa   
c0008e21:	0f a9                	pop    gs
c0008e23:	0f a1                	pop    fs
c0008e25:	07                   	pop    es
c0008e26:	1f                   	pop    ds
c0008e27:	81 c4 04 00 00 00    	add    esp,0x4
c0008e2d:	cf                   	iret   

c0008e2e <asm_intr0x2d_handler>:
c0008e2e:	68 00 00 00 00       	push   0x0
c0008e33:	1e                   	push   ds
c0008e34:	06                   	push   es
c0008e35:	0f a0                	push   fs
c0008e37:	0f a8                	push   gs
c0008e39:	60                   	pusha  
c0008e3a:	68 2d 00 00 00       	push   0x2d
c0008e3f:	66 8c d0             	mov    ax,ss
c0008e42:	8e d8                	mov    ds,eax
c0008e44:	8e c0                	mov    es,eax
c0008e46:	ff 15 8c f1 00 c0    	call   DWORD PTR ds:0xc000f18c
c0008e4c:	81 c4 04 00 00 00    	add    esp,0x4
c0008e52:	61                   	popa   
c0008e53:	0f a9                	pop    gs
c0008e55:	0f a1                	pop    fs
c0008e57:	07                   	pop    es
c0008e58:	1f                   	pop    ds
c0008e59:	81 c4 04 00 00 00    	add    esp,0x4
c0008e5f:	cf                   	iret   

c0008e60 <asm_intr0x2e_handler>:
c0008e60:	68 00 00 00 00       	push   0x0
c0008e65:	1e                   	push   ds
c0008e66:	06                   	push   es
c0008e67:	0f a0                	push   fs
c0008e69:	0f a8                	push   gs
c0008e6b:	60                   	pusha  
c0008e6c:	68 2e 00 00 00       	push   0x2e
c0008e71:	66 8c d0             	mov    ax,ss
c0008e74:	8e d8                	mov    ds,eax
c0008e76:	8e c0                	mov    es,eax
c0008e78:	ff 15 90 f1 00 c0    	call   DWORD PTR ds:0xc000f190
c0008e7e:	81 c4 04 00 00 00    	add    esp,0x4
c0008e84:	61                   	popa   
c0008e85:	0f a9                	pop    gs
c0008e87:	0f a1                	pop    fs
c0008e89:	07                   	pop    es
c0008e8a:	1f                   	pop    ds
c0008e8b:	81 c4 04 00 00 00    	add    esp,0x4
c0008e91:	cf                   	iret   

c0008e92 <asm_intr0x2f_handler>:
c0008e92:	68 00 00 00 00       	push   0x0
c0008e97:	1e                   	push   ds
c0008e98:	06                   	push   es
c0008e99:	0f a0                	push   fs
c0008e9b:	0f a8                	push   gs
c0008e9d:	60                   	pusha  
c0008e9e:	68 2f 00 00 00       	push   0x2f
c0008ea3:	66 8c d0             	mov    ax,ss
c0008ea6:	8e d8                	mov    ds,eax
c0008ea8:	8e c0                	mov    es,eax
c0008eaa:	ff 15 94 f1 00 c0    	call   DWORD PTR ds:0xc000f194
c0008eb0:	81 c4 04 00 00 00    	add    esp,0x4
c0008eb6:	61                   	popa   
c0008eb7:	0f a9                	pop    gs
c0008eb9:	0f a1                	pop    fs
c0008ebb:	07                   	pop    es
c0008ebc:	1f                   	pop    ds
c0008ebd:	81 c4 04 00 00 00    	add    esp,0x4
c0008ec3:	cf                   	iret   

c0008ec4 <intr_exit>:
c0008ec4:	81 c4 04 00 00 00    	add    esp,0x4
c0008eca:	61                   	popa   
c0008ecb:	0f a9                	pop    gs
c0008ecd:	0f a1                	pop    fs
c0008ecf:	07                   	pop    es
c0008ed0:	1f                   	pop    ds
c0008ed1:	81 c4 04 00 00 00    	add    esp,0x4
c0008ed7:	cf                   	iret   

c0008ed8 <intr0x27_handler>:
c0008ed8:	55                   	push   ebp
c0008ed9:	ba 20 00 00 00       	mov    edx,0x20
c0008ede:	89 e5                	mov    ebp,esp
c0008ee0:	b8 20 00 00 00       	mov    eax,0x20
c0008ee5:	ee                   	out    dx,al
c0008ee6:	5d                   	pop    ebp
c0008ee7:	c3                   	ret    

c0008ee8 <init_pic>:
c0008ee8:	55                   	push   ebp
c0008ee9:	ba 21 00 00 00       	mov    edx,0x21
c0008eee:	89 e5                	mov    ebp,esp
c0008ef0:	b8 ff 00 00 00       	mov    eax,0xff
c0008ef5:	ee                   	out    dx,al
c0008ef6:	b2 a1                	mov    dl,0xa1
c0008ef8:	ee                   	out    dx,al
c0008ef9:	b2 20                	mov    dl,0x20
c0008efb:	b0 11                	mov    al,0x11
c0008efd:	ee                   	out    dx,al
c0008efe:	b2 21                	mov    dl,0x21
c0008f00:	b0 20                	mov    al,0x20
c0008f02:	ee                   	out    dx,al
c0008f03:	b0 04                	mov    al,0x4
c0008f05:	ee                   	out    dx,al
c0008f06:	b0 01                	mov    al,0x1
c0008f08:	ee                   	out    dx,al
c0008f09:	b2 a0                	mov    dl,0xa0
c0008f0b:	b0 11                	mov    al,0x11
c0008f0d:	ee                   	out    dx,al
c0008f0e:	b2 a1                	mov    dl,0xa1
c0008f10:	b0 28                	mov    al,0x28
c0008f12:	ee                   	out    dx,al
c0008f13:	b0 02                	mov    al,0x2
c0008f15:	ee                   	out    dx,al
c0008f16:	b0 01                	mov    al,0x1
c0008f18:	ee                   	out    dx,al
c0008f19:	b2 21                	mov    dl,0x21
c0008f1b:	b0 fc                	mov    al,0xfc
c0008f1d:	ee                   	out    dx,al
c0008f1e:	b2 a1                	mov    dl,0xa1
c0008f20:	b0 ff                	mov    al,0xff
c0008f22:	ee                   	out    dx,al
c0008f23:	5d                   	pop    ebp
c0008f24:	c3                   	ret    

c0008f25 <idt_desc_init>:
c0008f25:	55                   	push   ebp
c0008f26:	31 c0                	xor    eax,eax
c0008f28:	89 e5                	mov    ebp,esp
c0008f2a:	c7 04 85 d8 f0 00 c0 	mov    DWORD PTR [eax*4-0x3fff0f28],0xc00090dd
c0008f31:	dd 90 00 c0 
c0008f35:	40                   	inc    eax
c0008f36:	83 f8 2f             	cmp    eax,0x2f
c0008f39:	75 ef                	jne    c0008f2a <idt_desc_init+0x5>
c0008f3b:	c7 05 58 f1 00 c0 38 	mov    DWORD PTR ds:0xc000f158,0xc000a738
c0008f42:	a7 00 c0 
c0008f45:	30 c0                	xor    al,al
c0008f47:	c7 05 5c f1 00 c0 b2 	mov    DWORD PTR ds:0xc000f15c,0xc000a4b2
c0008f4e:	a4 00 c0 
c0008f51:	c7 05 74 f1 00 c0 d8 	mov    DWORD PTR ds:0xc000f174,0xc0008ed8
c0008f58:	8e 00 c0 
c0008f5b:	8b 0c 85 38 b2 00 c0 	mov    ecx,DWORD PTR [eax*4-0x3fff4dc8]
c0008f62:	8d 14 c5 60 ef 00 c0 	lea    edx,[eax*8-0x3fff10a0]
c0008f69:	66 89 0c c5 60 ef 00 	mov    WORD PTR [eax*8-0x3fff10a0],cx
c0008f70:	c0 
c0008f71:	40                   	inc    eax
c0008f72:	c1 e9 10             	shr    ecx,0x10
c0008f75:	83 f8 2f             	cmp    eax,0x2f
c0008f78:	66 c7 42 02 08 00    	mov    WORD PTR [edx+0x2],0x8
c0008f7e:	c6 42 04 00          	mov    BYTE PTR [edx+0x4],0x0
c0008f82:	c6 42 05 8e          	mov    BYTE PTR [edx+0x5],0x8e
c0008f86:	66 89 4a 06          	mov    WORD PTR [edx+0x6],cx
c0008f8a:	75 cf                	jne    c0008f5b <idt_desc_init+0x36>
c0008f8c:	5d                   	pop    ebp
c0008f8d:	c3                   	ret    

c0008f8e <set_gatedesc>:
c0008f8e:	55                   	push   ebp
c0008f8f:	89 e5                	mov    ebp,esp
c0008f91:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0008f94:	53                   	push   ebx
c0008f95:	8b 4d 14             	mov    ecx,DWORD PTR [ebp+0x14]
c0008f98:	8b 5d 10             	mov    ebx,DWORD PTR [ebp+0x10]
c0008f9b:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
c0008f9e:	88 48 05             	mov    BYTE PTR [eax+0x5],cl
c0008fa1:	66 89 58 02          	mov    WORD PTR [eax+0x2],bx
c0008fa5:	89 cb                	mov    ebx,ecx
c0008fa7:	66 89 10             	mov    WORD PTR [eax],dx
c0008faa:	c1 fb 08             	sar    ebx,0x8
c0008fad:	c1 ea 10             	shr    edx,0x10
c0008fb0:	88 58 04             	mov    BYTE PTR [eax+0x4],bl
c0008fb3:	66 89 50 06          	mov    WORD PTR [eax+0x6],dx
c0008fb7:	5b                   	pop    ebx
c0008fb8:	5d                   	pop    ebp
c0008fb9:	c3                   	ret    

c0008fba <exception_init>:
c0008fba:	55                   	push   ebp
c0008fbb:	89 e5                	mov    ebp,esp
c0008fbd:	c7 05 a4 ee 00 c0 78 	mov    DWORD PTR ds:0xc000eea4,0xc000e078
c0008fc4:	e0 00 c0 
c0008fc7:	c7 05 a8 ee 00 c0 89 	mov    DWORD PTR ds:0xc000eea8,0xc000e089
c0008fce:	e0 00 c0 
c0008fd1:	c7 05 ac ee 00 c0 9d 	mov    DWORD PTR ds:0xc000eeac,0xc000e09d
c0008fd8:	e0 00 c0 
c0008fdb:	c7 05 b0 ee 00 c0 ab 	mov    DWORD PTR ds:0xc000eeb0,0xc000e0ab
c0008fe2:	e0 00 c0 
c0008fe5:	c7 05 b4 ee 00 c0 c4 	mov    DWORD PTR ds:0xc000eeb4,0xc000e0c4
c0008fec:	e0 00 c0 
c0008fef:	c7 05 b8 ee 00 c0 db 	mov    DWORD PTR ds:0xc000eeb8,0xc000e0db
c0008ff6:	e0 00 c0 
c0008ff9:	c7 05 bc ee 00 c0 fe 	mov    DWORD PTR ds:0xc000eebc,0xc000e0fe
c0009000:	e0 00 c0 
c0009003:	c7 05 c0 ee 00 c0 1b 	mov    DWORD PTR ds:0xc000eec0,0xc000e11b
c000900a:	e1 00 c0 
c000900d:	c7 05 c4 ee 00 c0 3e 	mov    DWORD PTR ds:0xc000eec4,0xc000e13e
c0009014:	e1 00 c0 
c0009017:	c7 05 c8 ee 00 c0 59 	mov    DWORD PTR ds:0xc000eec8,0xc000e159
c000901e:	e1 00 c0 
c0009021:	c7 05 cc ee 00 c0 75 	mov    DWORD PTR ds:0xc000eecc,0xc000e175
c0009028:	e1 00 c0 
c000902b:	c7 05 d0 ee 00 c0 8f 	mov    DWORD PTR ds:0xc000eed0,0xc000e18f
c0009032:	e1 00 c0 
c0009035:	c7 05 d4 ee 00 c0 a7 	mov    DWORD PTR ds:0xc000eed4,0xc000e1a7
c000903c:	e1 00 c0 
c000903f:	c7 05 d8 ee 00 c0 c1 	mov    DWORD PTR ds:0xc000eed8,0xc000e1c1
c0009046:	e1 00 c0 
c0009049:	c7 05 dc ee 00 c0 e2 	mov    DWORD PTR ds:0xc000eedc,0xc000e1e2
c0009050:	e1 00 c0 
c0009053:	c7 05 e0 ee 00 c0 fb 	mov    DWORD PTR ds:0xc000eee0,0xc000e1fb
c000905a:	e1 00 c0 
c000905d:	c7 05 e4 ee 00 c0 04 	mov    DWORD PTR ds:0xc000eee4,0xc000e204
c0009064:	e2 00 c0 
c0009067:	c7 05 e8 ee 00 c0 25 	mov    DWORD PTR ds:0xc000eee8,0xc000e225
c000906e:	e2 00 c0 
c0009071:	c7 05 ec ee 00 c0 43 	mov    DWORD PTR ds:0xc000eeec,0xc000e243
c0009078:	e2 00 c0 
c000907b:	c7 05 f0 ee 00 c0 5f 	mov    DWORD PTR ds:0xc000eef0,0xc000e25f
c0009082:	e2 00 c0 
c0009085:	5d                   	pop    ebp
c0009086:	c3                   	ret    

c0009087 <init_idt>:
c0009087:	55                   	push   ebp
c0009088:	89 e5                	mov    ebp,esp
c000908a:	83 ec 10             	sub    esp,0x10
c000908d:	e8 93 fe ff ff       	call   c0008f25 <idt_desc_init>
c0009092:	e8 51 fe ff ff       	call   c0008ee8 <init_pic>
c0009097:	b8 60 ef 00 c0       	mov    eax,0xc000ef60
c000909c:	c1 e0 10             	shl    eax,0x10
c000909f:	0d 77 01 00 00       	or     eax,0x177
c00090a4:	89 45 f8             	mov    DWORD PTR [ebp-0x8],eax
c00090a7:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [ebp-0x4],0x0
c00090ae:	e8 07 ff ff ff       	call   c0008fba <exception_init>
c00090b3:	0f 01 5d f8          	lidtd  [ebp-0x8]
c00090b7:	c9                   	leave  
c00090b8:	c3                   	ret    

c00090b9 <intr_get_status>:
c00090b9:	55                   	push   ebp
c00090ba:	89 e5                	mov    ebp,esp
c00090bc:	9c                   	pushf  
c00090bd:	58                   	pop    eax
c00090be:	f6 c4 02             	test   ah,0x2
c00090c1:	0f 95 c0             	setne  al
c00090c4:	0f b6 c0             	movzx  eax,al
c00090c7:	5d                   	pop    ebp
c00090c8:	c3                   	ret    

c00090c9 <intr_disable>:
c00090c9:	55                   	push   ebp
c00090ca:	89 e5                	mov    ebp,esp
c00090cc:	e8 e8 ff ff ff       	call   c00090b9 <intr_get_status>
c00090d1:	31 d2                	xor    edx,edx
c00090d3:	48                   	dec    eax
c00090d4:	75 03                	jne    c00090d9 <intr_disable+0x10>
c00090d6:	fa                   	cli    
c00090d7:	b2 01                	mov    dl,0x1
c00090d9:	89 d0                	mov    eax,edx
c00090db:	5d                   	pop    ebp
c00090dc:	c3                   	ret    

c00090dd <general_intr_handler>:
c00090dd:	55                   	push   ebp
c00090de:	89 e5                	mov    ebp,esp
c00090e0:	56                   	push   esi
c00090e1:	be 80 07 00 00       	mov    esi,0x780
c00090e6:	53                   	push   ebx
c00090e7:	8a 5d 08             	mov    bl,BYTE PTR [ebp+0x8]
c00090ea:	e8 da ff ff ff       	call   c00090c9 <intr_disable>
c00090ef:	83 ec 0c             	sub    esp,0xc
c00090f2:	6a 00                	push   0x0
c00090f4:	e8 c0 1c 00 00       	call   c000adb9 <set_cursor>
c00090f9:	83 c4 10             	add    esp,0x10
c00090fc:	51                   	push   ecx
c00090fd:	51                   	push   ecx
c00090fe:	6a 20                	push   0x20
c0009100:	6a 17                	push   0x17
c0009102:	e8 d9 1c 00 00       	call   c000ade0 <put_char>
c0009107:	83 c4 10             	add    esp,0x10
c000910a:	4e                   	dec    esi
c000910b:	75 ef                	jne    c00090fc <general_intr_handler+0x1f>
c000910d:	83 ec 0c             	sub    esp,0xc
c0009110:	6a 00                	push   0x0
c0009112:	e8 a2 1c 00 00       	call   c000adb9 <set_cursor>
c0009117:	58                   	pop    eax
c0009118:	5a                   	pop    edx
c0009119:	68 81 e2 00 c0       	push   0xc000e281
c000911e:	6a 17                	push   0x17
c0009120:	e8 5c 1d 00 00       	call   c000ae81 <put_str>
c0009125:	59                   	pop    ecx
c0009126:	5e                   	pop    esi
c0009127:	68 b2 e3 00 c0       	push   0xc000e3b2
c000912c:	6a 17                	push   0x17
c000912e:	e8 4e 1d 00 00       	call   c000ae81 <put_str>
c0009133:	58                   	pop    eax
c0009134:	5a                   	pop    edx
c0009135:	68 9c df 00 c0       	push   0xc000df9c
c000913a:	6a 17                	push   0x17
c000913c:	e8 40 1d 00 00       	call   c000ae81 <put_str>
c0009141:	59                   	pop    ecx
c0009142:	5e                   	pop    esi
c0009143:	0f b6 f3             	movzx  esi,bl
c0009146:	68 b5 e3 00 c0       	push   0xc000e3b5
c000914b:	6a 17                	push   0x17
c000914d:	e8 2f 1d 00 00       	call   c000ae81 <put_str>
c0009152:	83 c4 0c             	add    esp,0xc
c0009155:	6a 10                	push   0x10
c0009157:	56                   	push   esi
c0009158:	6a 17                	push   0x17
c000915a:	e8 84 1d 00 00       	call   c000aee3 <put_int>
c000915f:	58                   	pop    eax
c0009160:	5a                   	pop    edx
c0009161:	68 b2 e3 00 c0       	push   0xc000e3b2
c0009166:	6a 17                	push   0x17
c0009168:	e8 14 1d 00 00       	call   c000ae81 <put_str>
c000916d:	83 c4 10             	add    esp,0x10
c0009170:	80 fb 13             	cmp    bl,0x13
c0009173:	77 47                	ja     c00091bc <general_intr_handler+0xdf>
c0009175:	50                   	push   eax
c0009176:	50                   	push   eax
c0009177:	ff 34 b5 a4 ee 00 c0 	push   DWORD PTR [esi*4-0x3fff115c]
c000917e:	6a 17                	push   0x17
c0009180:	e8 fc 1c 00 00       	call   c000ae81 <put_str>
c0009185:	83 c4 10             	add    esp,0x10
c0009188:	80 fb 0e             	cmp    bl,0xe
c000918b:	75 2f                	jne    c00091bc <general_intr_handler+0xdf>
c000918d:	0f 20 d3             	mov    ebx,cr2
c0009190:	52                   	push   edx
c0009191:	52                   	push   edx
c0009192:	68 c0 e3 00 c0       	push   0xc000e3c0
c0009197:	6a 17                	push   0x17
c0009199:	e8 e3 1c 00 00       	call   c000ae81 <put_str>
c000919e:	83 c4 0c             	add    esp,0xc
c00091a1:	6a 10                	push   0x10
c00091a3:	53                   	push   ebx
c00091a4:	6a 17                	push   0x17
c00091a6:	e8 fe 1c 00 00       	call   c000aea9 <put_uint>
c00091ab:	59                   	pop    ecx
c00091ac:	5b                   	pop    ebx
c00091ad:	68 d5 e3 00 c0       	push   0xc000e3d5
c00091b2:	6a 17                	push   0x17
c00091b4:	e8 c8 1c 00 00       	call   c000ae81 <put_str>
c00091b9:	83 c4 10             	add    esp,0x10
c00091bc:	50                   	push   eax
c00091bd:	50                   	push   eax
c00091be:	68 d9 e3 00 c0       	push   0xc000e3d9
c00091c3:	6a 17                	push   0x17
c00091c5:	e8 b7 1c 00 00       	call   c000ae81 <put_str>
c00091ca:	e8 5f 12 00 00       	call   c000a42e <cpu_info>
c00091cf:	83 c4 10             	add    esp,0x10
c00091d2:	eb fe                	jmp    c00091d2 <general_intr_handler+0xf5>

c00091d4 <intr_enable>:
c00091d4:	55                   	push   ebp
c00091d5:	89 e5                	mov    ebp,esp
c00091d7:	e8 dd fe ff ff       	call   c00090b9 <intr_get_status>
c00091dc:	ba 01 00 00 00       	mov    edx,0x1
c00091e1:	48                   	dec    eax
c00091e2:	74 03                	je     c00091e7 <intr_enable+0x13>
c00091e4:	fb                   	sti    
c00091e5:	30 d2                	xor    dl,dl
c00091e7:	89 d0                	mov    eax,edx
c00091e9:	5d                   	pop    ebp
c00091ea:	c3                   	ret    

c00091eb <intr_set_status>:
c00091eb:	55                   	push   ebp
c00091ec:	89 e5                	mov    ebp,esp
c00091ee:	83 7d 08 01          	cmp    DWORD PTR [ebp+0x8],0x1
c00091f2:	75 06                	jne    c00091fa <intr_set_status+0xf>
c00091f4:	5d                   	pop    ebp
c00091f5:	e9 da ff ff ff       	jmp    c00091d4 <intr_enable>
c00091fa:	5d                   	pop    ebp
c00091fb:	e9 c9 fe ff ff       	jmp    c00090c9 <intr_disable>

c0009200 <init_memman>:
c0009200:	55                   	push   ebp
c0009201:	89 e5                	mov    ebp,esp
c0009203:	56                   	push   esi
c0009204:	8b 75 0c             	mov    esi,DWORD PTR [ebp+0xc]
c0009207:	53                   	push   ebx
c0009208:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c000920b:	83 ec 0c             	sub    esp,0xc
c000920e:	53                   	push   ebx
c000920f:	e8 db 06 00 00       	call   c00098ef <lock_init>
c0009214:	83 c4 10             	add    esp,0x10
c0009217:	85 f6                	test   esi,esi
c0009219:	c7 43 24 00 00 00 00 	mov    DWORD PTR [ebx+0x24],0x0
c0009220:	c7 43 28 00 00 00 00 	mov    DWORD PTR [ebx+0x28],0x0
c0009227:	c7 43 2c 00 00 00 00 	mov    DWORD PTR [ebx+0x2c],0x0
c000922e:	c7 43 30 00 00 00 00 	mov    DWORD PTR [ebx+0x30],0x0
c0009235:	75 19                	jne    c0009250 <init_memman+0x50>
c0009237:	68 0c e4 00 c0       	push   0xc000e40c
c000923c:	68 0c e5 00 c0       	push   0xc000e50c
c0009241:	6a 53                	push   0x53
c0009243:	68 19 e4 00 c0       	push   0xc000e419
c0009248:	e8 43 f2 ff ff       	call   c0008490 <panic_spin>
c000924d:	83 c4 10             	add    esp,0x10
c0009250:	89 73 34             	mov    DWORD PTR [ebx+0x34],esi
c0009253:	8d 65 f8             	lea    esp,[ebp-0x8]
c0009256:	5b                   	pop    ebx
c0009257:	5e                   	pop    esi
c0009258:	5d                   	pop    ebp
c0009259:	c3                   	ret    

c000925a <TotalFreeSize>:
c000925a:	55                   	push   ebp
c000925b:	31 d2                	xor    edx,edx
c000925d:	89 e5                	mov    ebp,esp
c000925f:	31 c0                	xor    eax,eax
c0009261:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
c0009264:	56                   	push   esi
c0009265:	53                   	push   ebx
c0009266:	8b 59 24             	mov    ebx,DWORD PTR [ecx+0x24]
c0009269:	eb 08                	jmp    c0009273 <TotalFreeSize+0x19>
c000926b:	8b 71 34             	mov    esi,DWORD PTR [ecx+0x34]
c000926e:	03 44 d6 04          	add    eax,DWORD PTR [esi+edx*8+0x4]
c0009272:	42                   	inc    edx
c0009273:	39 da                	cmp    edx,ebx
c0009275:	75 f4                	jne    c000926b <TotalFreeSize+0x11>
c0009277:	5b                   	pop    ebx
c0009278:	5e                   	pop    esi
c0009279:	5d                   	pop    ebp
c000927a:	c3                   	ret    

c000927b <mem_alloc>:
c000927b:	55                   	push   ebp
c000927c:	89 e5                	mov    ebp,esp
c000927e:	57                   	push   edi
c000927f:	56                   	push   esi
c0009280:	31 f6                	xor    esi,esi
c0009282:	53                   	push   ebx
c0009283:	83 ec 08             	sub    esp,0x8
c0009286:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c0009289:	8b 5d 0c             	mov    ebx,DWORD PTR [ebp+0xc]
c000928c:	8b 42 24             	mov    eax,DWORD PTR [edx+0x24]
c000928f:	eb 68                	jmp    c00092f9 <mem_alloc+0x7e>
c0009291:	8b 7a 34             	mov    edi,DWORD PTR [edx+0x34]
c0009294:	8d 0c f5 00 00 00 00 	lea    ecx,[esi*8+0x0]
c000929b:	01 cf                	add    edi,ecx
c000929d:	39 5f 04             	cmp    DWORD PTR [edi+0x4],ebx
c00092a0:	72 56                	jb     c00092f8 <mem_alloc+0x7d>
c00092a2:	8b 07                	mov    eax,DWORD PTR [edi]
c00092a4:	89 4d f0             	mov    DWORD PTR [ebp-0x10],ecx
c00092a7:	8d 0c 18             	lea    ecx,[eax+ebx*1]
c00092aa:	89 0f                	mov    DWORD PTR [edi],ecx
c00092ac:	8b 7d f0             	mov    edi,DWORD PTR [ebp-0x10]
c00092af:	03 7a 34             	add    edi,DWORD PTR [edx+0x34]
c00092b2:	29 5f 04             	sub    DWORD PTR [edi+0x4],ebx
c00092b5:	8b 5a 34             	mov    ebx,DWORD PTR [edx+0x34]
c00092b8:	8b 7d f0             	mov    edi,DWORD PTR [ebp-0x10]
c00092bb:	83 7c 3b 04 00       	cmp    DWORD PTR [ebx+edi*1+0x4],0x0
c00092c0:	75 3d                	jne    c00092ff <mem_alloc+0x84>
c00092c2:	ff 4a 24             	dec    DWORD PTR [edx+0x24]
c00092c5:	89 f9                	mov    ecx,edi
c00092c7:	89 c3                	mov    ebx,eax
c00092c9:	89 75 ec             	mov    DWORD PTR [ebp-0x14],esi
c00092cc:	eb 18                	jmp    c00092e6 <mem_alloc+0x6b>
c00092ce:	8b 42 34             	mov    eax,DWORD PTR [edx+0x34]
c00092d1:	ff 45 ec             	inc    DWORD PTR [ebp-0x14]
c00092d4:	8b 74 08 08          	mov    esi,DWORD PTR [eax+ecx*1+0x8]
c00092d8:	8b 7c 08 0c          	mov    edi,DWORD PTR [eax+ecx*1+0xc]
c00092dc:	89 34 08             	mov    DWORD PTR [eax+ecx*1],esi
c00092df:	89 7c 08 04          	mov    DWORD PTR [eax+ecx*1+0x4],edi
c00092e3:	8b 4d f0             	mov    ecx,DWORD PTR [ebp-0x10]
c00092e6:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
c00092e9:	8d 79 08             	lea    edi,[ecx+0x8]
c00092ec:	3b 42 24             	cmp    eax,DWORD PTR [edx+0x24]
c00092ef:	89 7d f0             	mov    DWORD PTR [ebp-0x10],edi
c00092f2:	72 da                	jb     c00092ce <mem_alloc+0x53>
c00092f4:	89 d8                	mov    eax,ebx
c00092f6:	eb 07                	jmp    c00092ff <mem_alloc+0x84>
c00092f8:	46                   	inc    esi
c00092f9:	39 c6                	cmp    esi,eax
c00092fb:	75 94                	jne    c0009291 <mem_alloc+0x16>
c00092fd:	31 c0                	xor    eax,eax
c00092ff:	5a                   	pop    edx
c0009300:	59                   	pop    ecx
c0009301:	5b                   	pop    ebx
c0009302:	5e                   	pop    esi
c0009303:	5f                   	pop    edi
c0009304:	5d                   	pop    ebp
c0009305:	c3                   	ret    

c0009306 <mem_alloc_page>:
c0009306:	55                   	push   ebp
c0009307:	89 e5                	mov    ebp,esp
c0009309:	53                   	push   ebx
c000930a:	83 ec 20             	sub    esp,0x20
c000930d:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c0009310:	53                   	push   ebx
c0009311:	e8 65 07 00 00       	call   c0009a7b <lock_acquire>
c0009316:	58                   	pop    eax
c0009317:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c000931a:	5a                   	pop    edx
c000931b:	c1 e0 0c             	shl    eax,0xc
c000931e:	50                   	push   eax
c000931f:	53                   	push   ebx
c0009320:	e8 56 ff ff ff       	call   c000927b <mem_alloc>
c0009325:	89 1c 24             	mov    DWORD PTR [esp],ebx
c0009328:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
c000932b:	e8 a6 07 00 00       	call   c0009ad6 <lock_release>
c0009330:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0009333:	8b 5d fc             	mov    ebx,DWORD PTR [ebp-0x4]
c0009336:	c9                   	leave  
c0009337:	c3                   	ret    

c0009338 <mem_free>:
c0009338:	55                   	push   ebp
c0009339:	31 c9                	xor    ecx,ecx
c000933b:	89 e5                	mov    ebp,esp
c000933d:	57                   	push   edi
c000933e:	56                   	push   esi
c000933f:	53                   	push   ebx
c0009340:	83 ec 10             	sub    esp,0x10
c0009343:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c0009346:	8b 5d 0c             	mov    ebx,DWORD PTR [ebp+0xc]
c0009349:	8b 72 24             	mov    esi,DWORD PTR [edx+0x24]
c000934c:	89 75 ec             	mov    DWORD PTR [ebp-0x14],esi
c000934f:	eb 09                	jmp    c000935a <mem_free+0x22>
c0009351:	8b 42 34             	mov    eax,DWORD PTR [edx+0x34]
c0009354:	39 1c c8             	cmp    DWORD PTR [eax+ecx*8],ebx
c0009357:	77 05                	ja     c000935e <mem_free+0x26>
c0009359:	41                   	inc    ecx
c000935a:	39 f1                	cmp    ecx,esi
c000935c:	75 f3                	jne    c0009351 <mem_free+0x19>
c000935e:	85 c9                	test   ecx,ecx
c0009360:	74 7c                	je     c00093de <mem_free+0xa6>
c0009362:	8d 04 cd f8 ff ff ff 	lea    eax,[ecx*8-0x8]
c0009369:	89 45 e4             	mov    DWORD PTR [ebp-0x1c],eax
c000936c:	03 42 34             	add    eax,DWORD PTR [edx+0x34]
c000936f:	8b 78 04             	mov    edi,DWORD PTR [eax+0x4]
c0009372:	89 7d f0             	mov    DWORD PTR [ebp-0x10],edi
c0009375:	03 38                	add    edi,DWORD PTR [eax]
c0009377:	39 df                	cmp    edi,ebx
c0009379:	75 63                	jne    c00093de <mem_free+0xa6>
c000937b:	8b 75 10             	mov    esi,DWORD PTR [ebp+0x10]
c000937e:	03 75 f0             	add    esi,DWORD PTR [ebp-0x10]
c0009381:	89 70 04             	mov    DWORD PTR [eax+0x4],esi
c0009384:	31 c0                	xor    eax,eax
c0009386:	3b 4a 24             	cmp    ecx,DWORD PTR [edx+0x24]
c0009389:	0f 83 dd 00 00 00    	jae    c000946c <mem_free+0x134>
c000938f:	8b 72 34             	mov    esi,DWORD PTR [edx+0x34]
c0009392:	8d 3c cd 00 00 00 00 	lea    edi,[ecx*8+0x0]
c0009399:	89 7d f0             	mov    DWORD PTR [ebp-0x10],edi
c000939c:	03 5d 10             	add    ebx,DWORD PTR [ebp+0x10]
c000939f:	01 f7                	add    edi,esi
c00093a1:	39 1f                	cmp    DWORD PTR [edi],ebx
c00093a3:	89 7d ec             	mov    DWORD PTR [ebp-0x14],edi
c00093a6:	0f 85 c0 00 00 00    	jne    c000946c <mem_free+0x134>
c00093ac:	8b 5d e4             	mov    ebx,DWORD PTR [ebp-0x1c]
c00093af:	8b 47 04             	mov    eax,DWORD PTR [edi+0x4]
c00093b2:	01 44 1e 04          	add    DWORD PTR [esi+ebx*1+0x4],eax
c00093b6:	ff 4a 24             	dec    DWORD PTR [edx+0x24]
c00093b9:	eb 13                	jmp    c00093ce <mem_free+0x96>
c00093bb:	8b 5a 34             	mov    ebx,DWORD PTR [edx+0x34]
c00093be:	41                   	inc    ecx
c00093bf:	8b 74 03 08          	mov    esi,DWORD PTR [ebx+eax*1+0x8]
c00093c3:	8b 7c 03 0c          	mov    edi,DWORD PTR [ebx+eax*1+0xc]
c00093c7:	89 34 03             	mov    DWORD PTR [ebx+eax*1],esi
c00093ca:	89 7c 03 04          	mov    DWORD PTR [ebx+eax*1+0x4],edi
c00093ce:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c00093d1:	3b 4a 24             	cmp    ecx,DWORD PTR [edx+0x24]
c00093d4:	8d 78 08             	lea    edi,[eax+0x8]
c00093d7:	89 7d f0             	mov    DWORD PTR [ebp-0x10],edi
c00093da:	72 df                	jb     c00093bb <mem_free+0x83>
c00093dc:	eb 2a                	jmp    c0009408 <mem_free+0xd0>
c00093de:	39 f1                	cmp    ecx,esi
c00093e0:	73 2a                	jae    c000940c <mem_free+0xd4>
c00093e2:	8b 7a 34             	mov    edi,DWORD PTR [edx+0x34]
c00093e5:	8d 04 cd 00 00 00 00 	lea    eax,[ecx*8+0x0]
c00093ec:	89 45 e8             	mov    DWORD PTR [ebp-0x18],eax
c00093ef:	01 c7                	add    edi,eax
c00093f1:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
c00093f4:	01 d8                	add    eax,ebx
c00093f6:	39 07                	cmp    DWORD PTR [edi],eax
c00093f8:	75 12                	jne    c000940c <mem_free+0xd4>
c00093fa:	8b 45 e8             	mov    eax,DWORD PTR [ebp-0x18]
c00093fd:	89 1f                	mov    DWORD PTR [edi],ebx
c00093ff:	03 42 34             	add    eax,DWORD PTR [edx+0x34]
c0009402:	8b 55 10             	mov    edx,DWORD PTR [ebp+0x10]
c0009405:	01 50 04             	add    DWORD PTR [eax+0x4],edx
c0009408:	31 c0                	xor    eax,eax
c000940a:	eb 60                	jmp    c000946c <mem_free+0x134>
c000940c:	81 fe 9f 0f 00 00    	cmp    esi,0xf9f
c0009412:	77 4a                	ja     c000945e <mem_free+0x126>
c0009414:	c1 e6 03             	shl    esi,0x3
c0009417:	89 cf                	mov    edi,ecx
c0009419:	89 5d f0             	mov    DWORD PTR [ebp-0x10],ebx
c000941c:	eb 15                	jmp    c0009433 <mem_free+0xfb>
c000941e:	8b 4c 30 f8          	mov    ecx,DWORD PTR [eax+esi*1-0x8]
c0009422:	8b 5c 30 fc          	mov    ebx,DWORD PTR [eax+esi*1-0x4]
c0009426:	ff 45 ec             	inc    DWORD PTR [ebp-0x14]
c0009429:	89 0c 30             	mov    DWORD PTR [eax+esi*1],ecx
c000942c:	89 5c 30 04          	mov    DWORD PTR [eax+esi*1+0x4],ebx
c0009430:	83 c6 08             	add    esi,0x8
c0009433:	39 7d ec             	cmp    DWORD PTR [ebp-0x14],edi
c0009436:	8b 42 34             	mov    eax,DWORD PTR [edx+0x34]
c0009439:	7f e3                	jg     c000941e <mem_free+0xe6>
c000943b:	8b 72 24             	mov    esi,DWORD PTR [edx+0x24]
c000943e:	89 f9                	mov    ecx,edi
c0009440:	8b 5d f0             	mov    ebx,DWORD PTR [ebp-0x10]
c0009443:	46                   	inc    esi
c0009444:	39 72 28             	cmp    DWORD PTR [edx+0x28],esi
c0009447:	89 72 24             	mov    DWORD PTR [edx+0x24],esi
c000944a:	73 03                	jae    c000944f <mem_free+0x117>
c000944c:	89 72 28             	mov    DWORD PTR [edx+0x28],esi
c000944f:	89 1c c8             	mov    DWORD PTR [eax+ecx*8],ebx
c0009452:	8b 5d 10             	mov    ebx,DWORD PTR [ebp+0x10]
c0009455:	8b 42 34             	mov    eax,DWORD PTR [edx+0x34]
c0009458:	89 5c c8 04          	mov    DWORD PTR [eax+ecx*8+0x4],ebx
c000945c:	eb aa                	jmp    c0009408 <mem_free+0xd0>
c000945e:	8b 75 10             	mov    esi,DWORD PTR [ebp+0x10]
c0009461:	b8 01 00 00 00       	mov    eax,0x1
c0009466:	ff 42 30             	inc    DWORD PTR [edx+0x30]
c0009469:	01 72 2c             	add    DWORD PTR [edx+0x2c],esi
c000946c:	83 c4 10             	add    esp,0x10
c000946f:	5b                   	pop    ebx
c0009470:	5e                   	pop    esi
c0009471:	5f                   	pop    edi
c0009472:	5d                   	pop    ebp
c0009473:	c3                   	ret    

c0009474 <mem_free_page>:
c0009474:	55                   	push   ebp
c0009475:	89 e5                	mov    ebp,esp
c0009477:	53                   	push   ebx
c0009478:	83 ec 20             	sub    esp,0x20
c000947b:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c000947e:	53                   	push   ebx
c000947f:	e8 f7 05 00 00       	call   c0009a7b <lock_acquire>
c0009484:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
c0009487:	83 c4 0c             	add    esp,0xc
c000948a:	c1 e0 0c             	shl    eax,0xc
c000948d:	50                   	push   eax
c000948e:	ff 75 0c             	push   DWORD PTR [ebp+0xc]
c0009491:	53                   	push   ebx
c0009492:	e8 a1 fe ff ff       	call   c0009338 <mem_free>
c0009497:	89 1c 24             	mov    DWORD PTR [esp],ebx
c000949a:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
c000949d:	e8 34 06 00 00       	call   c0009ad6 <lock_release>
c00094a2:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c00094a5:	8b 5d fc             	mov    ebx,DWORD PTR [ebp-0x4]
c00094a8:	c9                   	leave  
c00094a9:	c3                   	ret    

c00094aa <init_memory>:
c00094aa:	55                   	push   ebp
c00094ab:	89 e5                	mov    ebp,esp
c00094ad:	57                   	push   edi
c00094ae:	56                   	push   esi
c00094af:	53                   	push   ebx
c00094b0:	83 ec 0c             	sub    esp,0xc
c00094b3:	83 3d 08 7c 00 00 00 	cmp    DWORD PTR ds:0x7c08,0x0
c00094ba:	0f 85 f5 00 00 00    	jne    c00095b5 <init_memory+0x10b>
c00094c0:	83 3d 0c 7c 00 00 00 	cmp    DWORD PTR ds:0x7c0c,0x0
c00094c7:	0f 85 e8 00 00 00    	jne    c00095b5 <init_memory+0x10b>
c00094cd:	8b 1d 00 7c 00 00    	mov    ebx,DWORD PTR ds:0x7c00
c00094d3:	31 f6                	xor    esi,esi
c00094d5:	50                   	push   eax
c00094d6:	50                   	push   eax
c00094d7:	68 29 e4 00 c0       	push   0xc000e429
c00094dc:	6a 07                	push   0x7
c00094de:	e8 9e 19 00 00       	call   c000ae81 <put_str>
c00094e3:	83 c4 10             	add    esp,0x10
c00094e6:	e9 8a 00 00 00       	jmp    c0009575 <init_memory+0xcb>
c00094eb:	51                   	push   ecx
c00094ec:	51                   	push   ecx
c00094ed:	68 30 e4 00 c0       	push   0xc000e430
c00094f2:	6a 07                	push   0x7
c00094f4:	e8 88 19 00 00       	call   c000ae81 <put_str>
c00094f9:	83 c4 0c             	add    esp,0xc
c00094fc:	6a 10                	push   0x10
c00094fe:	ff 33                	push   DWORD PTR [ebx]
c0009500:	6a 07                	push   0x7
c0009502:	e8 a2 19 00 00       	call   c000aea9 <put_uint>
c0009507:	5f                   	pop    edi
c0009508:	58                   	pop    eax
c0009509:	68 3b e4 00 c0       	push   0xc000e43b
c000950e:	6a 07                	push   0x7
c0009510:	e8 6c 19 00 00       	call   c000ae81 <put_str>
c0009515:	83 c4 0c             	add    esp,0xc
c0009518:	6a 10                	push   0x10
c000951a:	ff 73 08             	push   DWORD PTR [ebx+0x8]
c000951d:	6a 07                	push   0x7
c000951f:	e8 85 19 00 00       	call   c000aea9 <put_uint>
c0009524:	58                   	pop    eax
c0009525:	5a                   	pop    edx
c0009526:	68 49 e4 00 c0       	push   0xc000e449
c000952b:	6a 07                	push   0x7
c000952d:	e8 4f 19 00 00       	call   c000ae81 <put_str>
c0009532:	83 c4 0c             	add    esp,0xc
c0009535:	6a 10                	push   0x10
c0009537:	ff 73 10             	push   DWORD PTR [ebx+0x10]
c000953a:	6a 07                	push   0x7
c000953c:	e8 68 19 00 00       	call   c000aea9 <put_uint>
c0009541:	59                   	pop    ecx
c0009542:	5f                   	pop    edi
c0009543:	68 54 e4 00 c0       	push   0xc000e454
c0009548:	6a 07                	push   0x7
c000954a:	e8 32 19 00 00       	call   c000ae81 <put_str>
c000954f:	83 c4 10             	add    esp,0x10
c0009552:	81 3b 00 00 10 00    	cmp    DWORD PTR [ebx],0x100000
c0009558:	75 17                	jne    c0009571 <init_memory+0xc7>
c000955a:	83 7b 10 01          	cmp    DWORD PTR [ebx+0x10],0x1
c000955e:	75 11                	jne    c0009571 <init_memory+0xc7>
c0009560:	8b 4b 08             	mov    ecx,DWORD PTR [ebx+0x8]
c0009563:	81 c1 00 00 10 00    	add    ecx,0x100000
c0009569:	85 c9                	test   ecx,ecx
c000956b:	89 c8                	mov    eax,ecx
c000956d:	75 2f                	jne    c000959e <init_memory+0xf4>
c000956f:	eb 10                	jmp    c0009581 <init_memory+0xd7>
c0009571:	83 c3 14             	add    ebx,0x14
c0009574:	46                   	inc    esi
c0009575:	3b 35 04 7c 00 00    	cmp    esi,DWORD PTR ds:0x7c04
c000957b:	0f 82 6a ff ff ff    	jb     c00094eb <init_memory+0x41>
c0009581:	68 56 e4 00 c0       	push   0xc000e456
c0009586:	68 00 e5 00 c0       	push   0xc000e500
c000958b:	6a 34                	push   0x34
c000958d:	68 19 e4 00 c0       	push   0xc000e419
c0009592:	e8 f9 ee ff ff       	call   c0008490 <panic_spin>
c0009597:	83 c4 10             	add    esp,0x10
c000959a:	31 c0                	xor    eax,eax
c000959c:	eb 0d                	jmp    c00095ab <init_memory+0x101>
c000959e:	81 f9 ff ff ff 3f    	cmp    ecx,0x3fffffff
c00095a4:	76 05                	jbe    c00095ab <init_memory+0x101>
c00095a6:	b8 ff ff ff 3f       	mov    eax,0x3fffffff
c00095ab:	05 00 00 10 00       	add    eax,0x100000
c00095b0:	a3 08 7c 00 00       	mov    ds:0x7c08,eax
c00095b5:	8b 35 08 7c 00 00    	mov    esi,DWORD PTR ds:0x7c08
c00095bb:	51                   	push   ecx
c00095bc:	51                   	push   ecx
c00095bd:	68 3c ec 01 c0       	push   0xc001ec3c
c00095c2:	68 3c e6 02 c0       	push   0xc002e63c
c00095c7:	e8 34 fc ff ff       	call   c0009200 <init_memman>
c00095cc:	8d be 00 e0 5f ff    	lea    edi,[esi-0xa02000]
c00095d2:	58                   	pop    eax
c00095d3:	89 fb                	mov    ebx,edi
c00095d5:	5a                   	pop    edx
c00095d6:	c1 ef 0d             	shr    edi,0xd
c00095d9:	d1 eb                	shr    ebx,1
c00095db:	68 94 f1 00 c0       	push   0xc000f194
c00095e0:	29 de                	sub    esi,ebx
c00095e2:	68 04 6f 01 c0       	push   0xc0016f04
c00095e7:	81 c3 00 20 40 00    	add    ebx,0x402000
c00095ed:	e8 0e fc ff ff       	call   c0009200 <init_memman>
c00095f2:	c1 ee 0c             	shr    esi,0xc
c00095f5:	59                   	pop    ecx
c00095f6:	58                   	pop    eax
c00095f7:	68 3c 6f 01 c0       	push   0xc0016f3c
c00095fc:	68 94 6e 01 c0       	push   0xc0016e94
c0009601:	e8 fa fb ff ff       	call   c0009200 <init_memman>
c0009606:	58                   	pop    eax
c0009607:	5a                   	pop    edx
c0009608:	68 3c 69 02 c0       	push   0xc002693c
c000960d:	68 cc 6e 01 c0       	push   0xc0016ecc
c0009612:	e8 e9 fb ff ff       	call   c0009200 <init_memman>
c0009617:	83 c4 0c             	add    esp,0xc
c000961a:	57                   	push   edi
c000961b:	68 00 20 40 00       	push   0x402000
c0009620:	68 3c e6 02 c0       	push   0xc002e63c
c0009625:	e8 4a fe ff ff       	call   c0009474 <mem_free_page>
c000962a:	83 c4 0c             	add    esp,0xc
c000962d:	56                   	push   esi
c000962e:	53                   	push   ebx
c000962f:	68 94 6e 01 c0       	push   0xc0016e94
c0009634:	e8 3b fe ff ff       	call   c0009474 <mem_free_page>
c0009639:	83 c4 0c             	add    esp,0xc
c000963c:	68 fe db 03 00       	push   0x3dbfe
c0009641:	68 00 20 40 c0       	push   0xc0402000
c0009646:	68 04 6f 01 c0       	push   0xc0016f04
c000964b:	e8 24 fe ff ff       	call   c0009474 <mem_free_page>
c0009650:	83 c4 10             	add    esp,0x10
c0009653:	8d 65 f4             	lea    esp,[ebp-0xc]
c0009656:	5b                   	pop    ebx
c0009657:	5e                   	pop    esi
c0009658:	5f                   	pop    edi
c0009659:	5d                   	pop    ebp
c000965a:	c3                   	ret    

c000965b <pde_ptr>:
c000965b:	55                   	push   ebp
c000965c:	89 e5                	mov    ebp,esp
c000965e:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0009661:	5d                   	pop    ebp
c0009662:	c1 e8 16             	shr    eax,0x16
c0009665:	8d 04 85 00 f0 ff ff 	lea    eax,[eax*4-0x1000]
c000966c:	c3                   	ret    

c000966d <pte_ptr>:
c000966d:	55                   	push   ebp
c000966e:	89 e5                	mov    ebp,esp
c0009670:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0009673:	5d                   	pop    ebp
c0009674:	89 c2                	mov    edx,eax
c0009676:	25 00 f0 3f 00       	and    eax,0x3ff000
c000967b:	81 e2 00 00 c0 ff    	and    edx,0xffc00000
c0009681:	c1 ea 0a             	shr    edx,0xa
c0009684:	c1 e8 0a             	shr    eax,0xa
c0009687:	8d 84 02 00 00 c0 ff 	lea    eax,[edx+eax*1-0x400000]
c000968e:	c3                   	ret    

c000968f <page_table_add>:
c000968f:	55                   	push   ebp
c0009690:	89 e5                	mov    ebp,esp
c0009692:	57                   	push   edi
c0009693:	56                   	push   esi
c0009694:	53                   	push   ebx
c0009695:	83 ec 0c             	sub    esp,0xc
c0009698:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c000969b:	8b 75 0c             	mov    esi,DWORD PTR [ebp+0xc]
c000969e:	50                   	push   eax
c000969f:	89 c7                	mov    edi,eax
c00096a1:	e8 c7 ff ff ff       	call   c000966d <pte_ptr>
c00096a6:	c1 ef 16             	shr    edi,0x16
c00096a9:	f6 04 bd 00 f0 ff ff 	test   BYTE PTR [edi*4-0x1000],0x1
c00096b0:	01 
c00096b1:	5a                   	pop    edx
c00096b2:	89 c3                	mov    ebx,eax
c00096b4:	74 0c                	je     c00096c2 <page_table_add+0x33>
c00096b6:	f6 00 01             	test   BYTE PTR [eax],0x1
c00096b9:	75 3e                	jne    c00096f9 <page_table_add+0x6a>
c00096bb:	83 ce 07             	or     esi,0x7
c00096be:	89 30                	mov    DWORD PTR [eax],esi
c00096c0:	eb 37                	jmp    c00096f9 <page_table_add+0x6a>
c00096c2:	50                   	push   eax
c00096c3:	83 ce 07             	or     esi,0x7
c00096c6:	50                   	push   eax
c00096c7:	6a 01                	push   0x1
c00096c9:	68 3c e6 02 c0       	push   0xc002e63c
c00096ce:	e8 33 fc ff ff       	call   c0009306 <mem_alloc_page>
c00096d3:	83 c4 0c             	add    esp,0xc
c00096d6:	83 c8 07             	or     eax,0x7
c00096d9:	89 04 bd 00 f0 ff ff 	mov    DWORD PTR [edi*4-0x1000],eax
c00096e0:	89 d8                	mov    eax,ebx
c00096e2:	68 00 10 00 00       	push   0x1000
c00096e7:	25 00 f0 ff ff       	and    eax,0xfffff000
c00096ec:	6a 00                	push   0x0
c00096ee:	50                   	push   eax
c00096ef:	e8 2c 18 00 00       	call   c000af20 <memset>
c00096f4:	83 c4 10             	add    esp,0x10
c00096f7:	89 33                	mov    DWORD PTR [ebx],esi
c00096f9:	8d 65 f4             	lea    esp,[ebp-0xc]
c00096fc:	5b                   	pop    ebx
c00096fd:	5e                   	pop    esi
c00096fe:	5f                   	pop    edi
c00096ff:	5d                   	pop    ebp
c0009700:	c3                   	ret    

c0009701 <page_alloc>:
c0009701:	55                   	push   ebp
c0009702:	89 e5                	mov    ebp,esp
c0009704:	57                   	push   edi
c0009705:	56                   	push   esi
c0009706:	53                   	push   ebx
c0009707:	83 ec 1c             	sub    esp,0x1c
c000970a:	8b 75 0c             	mov    esi,DWORD PTR [ebp+0xc]
c000970d:	83 7d 08 01          	cmp    DWORD PTR [ebp+0x8],0x1
c0009711:	75 0e                	jne    c0009721 <page_alloc+0x20>
c0009713:	c7 45 e4 3c e6 02 c0 	mov    DWORD PTR [ebp-0x1c],0xc002e63c
c000971a:	b8 04 6f 01 c0       	mov    eax,0xc0016f04
c000971f:	eb 0c                	jmp    c000972d <page_alloc+0x2c>
c0009721:	c7 45 e4 94 6e 01 c0 	mov    DWORD PTR [ebp-0x1c],0xc0016e94
c0009728:	b8 cc 6e 01 c0       	mov    eax,0xc0016ecc
c000972d:	52                   	push   edx
c000972e:	52                   	push   edx
c000972f:	56                   	push   esi
c0009730:	50                   	push   eax
c0009731:	e8 d0 fb ff ff       	call   c0009306 <mem_alloc_page>
c0009736:	83 c4 10             	add    esp,0x10
c0009739:	85 c0                	test   eax,eax
c000973b:	89 c3                	mov    ebx,eax
c000973d:	89 c7                	mov    edi,eax
c000973f:	75 28                	jne    c0009769 <page_alloc+0x68>
c0009741:	eb 2e                	jmp    c0009771 <page_alloc+0x70>
c0009743:	50                   	push   eax
c0009744:	50                   	push   eax
c0009745:	6a 01                	push   0x1
c0009747:	ff 75 e4             	push   DWORD PTR [ebp-0x1c]
c000974a:	e8 b7 fb ff ff       	call   c0009306 <mem_alloc_page>
c000974f:	83 c4 10             	add    esp,0x10
c0009752:	85 c0                	test   eax,eax
c0009754:	74 19                	je     c000976f <page_alloc+0x6e>
c0009756:	51                   	push   ecx
c0009757:	4e                   	dec    esi
c0009758:	51                   	push   ecx
c0009759:	50                   	push   eax
c000975a:	57                   	push   edi
c000975b:	81 c7 00 10 00 00    	add    edi,0x1000
c0009761:	e8 29 ff ff ff       	call   c000968f <page_table_add>
c0009766:	83 c4 10             	add    esp,0x10
c0009769:	85 f6                	test   esi,esi
c000976b:	75 d6                	jne    c0009743 <page_alloc+0x42>
c000976d:	eb 02                	jmp    c0009771 <page_alloc+0x70>
c000976f:	31 db                	xor    ebx,ebx
c0009771:	8d 65 f4             	lea    esp,[ebp-0xc]
c0009774:	89 d8                	mov    eax,ebx
c0009776:	5b                   	pop    ebx
c0009777:	5e                   	pop    esi
c0009778:	5f                   	pop    edi
c0009779:	5d                   	pop    ebp
c000977a:	c3                   	ret    

c000977b <get_kernel_page>:
c000977b:	55                   	push   ebp
c000977c:	89 e5                	mov    ebp,esp
c000977e:	53                   	push   ebx
c000977f:	83 ec 1c             	sub    esp,0x1c
c0009782:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c0009785:	53                   	push   ebx
c0009786:	6a 01                	push   0x1
c0009788:	e8 74 ff ff ff       	call   c0009701 <page_alloc>
c000978d:	83 c4 10             	add    esp,0x10
c0009790:	85 c0                	test   eax,eax
c0009792:	74 16                	je     c00097aa <get_kernel_page+0x2f>
c0009794:	c1 e3 0c             	shl    ebx,0xc
c0009797:	51                   	push   ecx
c0009798:	53                   	push   ebx
c0009799:	6a 00                	push   0x0
c000979b:	50                   	push   eax
c000979c:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
c000979f:	e8 7c 17 00 00       	call   c000af20 <memset>
c00097a4:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c00097a7:	83 c4 10             	add    esp,0x10
c00097aa:	8b 5d fc             	mov    ebx,DWORD PTR [ebp-0x4]
c00097ad:	c9                   	leave  
c00097ae:	c3                   	ret    

c00097af <get_user_page>:
c00097af:	55                   	push   ebp
c00097b0:	89 e5                	mov    ebp,esp
c00097b2:	53                   	push   ebx
c00097b3:	83 ec 1c             	sub    esp,0x1c
c00097b6:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c00097b9:	53                   	push   ebx
c00097ba:	6a 02                	push   0x2
c00097bc:	e8 40 ff ff ff       	call   c0009701 <page_alloc>
c00097c1:	83 c4 10             	add    esp,0x10
c00097c4:	85 c0                	test   eax,eax
c00097c6:	74 16                	je     c00097de <get_user_page+0x2f>
c00097c8:	c1 e3 0c             	shl    ebx,0xc
c00097cb:	52                   	push   edx
c00097cc:	53                   	push   ebx
c00097cd:	6a 00                	push   0x0
c00097cf:	50                   	push   eax
c00097d0:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
c00097d3:	e8 48 17 00 00       	call   c000af20 <memset>
c00097d8:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c00097db:	83 c4 10             	add    esp,0x10
c00097de:	8b 5d fc             	mov    ebx,DWORD PTR [ebp-0x4]
c00097e1:	c9                   	leave  
c00097e2:	c3                   	ret    

c00097e3 <get_a_page>:
c00097e3:	55                   	push   ebp
c00097e4:	89 e5                	mov    ebp,esp
c00097e6:	57                   	push   edi
c00097e7:	bf 94 6e 01 c0       	mov    edi,0xc0016e94
c00097ec:	56                   	push   esi
c00097ed:	53                   	push   ebx
c00097ee:	83 ec 0c             	sub    esp,0xc
c00097f1:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c00097f4:	8b 75 0c             	mov    esi,DWORD PTR [ebp+0xc]
c00097f7:	83 fb 01             	cmp    ebx,0x1
c00097fa:	75 05                	jne    c0009801 <get_a_page+0x1e>
c00097fc:	bf 3c e6 02 c0       	mov    edi,0xc002e63c
c0009801:	e8 e0 03 00 00       	call   c0009be6 <running_thread>
c0009806:	83 fb 02             	cmp    ebx,0x2
c0009809:	8b 40 38             	mov    eax,DWORD PTR [eax+0x38]
c000980c:	75 04                	jne    c0009812 <get_a_page+0x2f>
c000980e:	85 c0                	test   eax,eax
c0009810:	75 33                	jne    c0009845 <get_a_page+0x62>
c0009812:	4b                   	dec    ebx
c0009813:	75 14                	jne    c0009829 <get_a_page+0x46>
c0009815:	85 c0                	test   eax,eax
c0009817:	75 10                	jne    c0009829 <get_a_page+0x46>
c0009819:	50                   	push   eax
c000981a:	50                   	push   eax
c000981b:	6a 01                	push   0x1
c000981d:	68 04 6f 01 c0       	push   0xc0016f04
c0009822:	e8 df fa ff ff       	call   c0009306 <mem_alloc_page>
c0009827:	eb 19                	jmp    c0009842 <get_a_page+0x5f>
c0009829:	68 6b e4 00 c0       	push   0xc000e46b
c000982e:	68 18 e5 00 c0       	push   0xc000e518
c0009833:	68 42 01 00 00       	push   0x142
c0009838:	68 19 e4 00 c0       	push   0xc000e419
c000983d:	e8 4e ec ff ff       	call   c0008490 <panic_spin>
c0009842:	83 c4 10             	add    esp,0x10
c0009845:	53                   	push   ebx
c0009846:	53                   	push   ebx
c0009847:	6a 01                	push   0x1
c0009849:	57                   	push   edi
c000984a:	e8 b7 fa ff ff       	call   c0009306 <mem_alloc_page>
c000984f:	83 c4 10             	add    esp,0x10
c0009852:	85 c0                	test   eax,eax
c0009854:	89 c3                	mov    ebx,eax
c0009856:	75 1c                	jne    c0009874 <get_a_page+0x91>
c0009858:	68 c2 e4 00 c0       	push   0xc000e4c2
c000985d:	68 18 e5 00 c0       	push   0xc000e518
c0009862:	68 45 01 00 00       	push   0x145
c0009867:	68 19 e4 00 c0       	push   0xc000e419
c000986c:	e8 1f ec ff ff       	call   c0008490 <panic_spin>
c0009871:	83 c4 10             	add    esp,0x10
c0009874:	51                   	push   ecx
c0009875:	51                   	push   ecx
c0009876:	53                   	push   ebx
c0009877:	56                   	push   esi
c0009878:	e8 12 fe ff ff       	call   c000968f <page_table_add>
c000987d:	8d 65 f4             	lea    esp,[ebp-0xc]
c0009880:	89 f0                	mov    eax,esi
c0009882:	5b                   	pop    ebx
c0009883:	5e                   	pop    esi
c0009884:	5f                   	pop    edi
c0009885:	5d                   	pop    ebp
c0009886:	c3                   	ret    

c0009887 <addr_v2p>:
c0009887:	55                   	push   ebp
c0009888:	89 e5                	mov    ebp,esp
c000988a:	53                   	push   ebx
c000988b:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c000988e:	53                   	push   ebx
c000988f:	81 e3 ff 0f 00 00    	and    ebx,0xfff
c0009895:	e8 d3 fd ff ff       	call   c000966d <pte_ptr>
c000989a:	5a                   	pop    edx
c000989b:	8b 00                	mov    eax,DWORD PTR [eax]
c000989d:	25 00 f0 ff ff       	and    eax,0xfffff000
c00098a2:	09 d8                	or     eax,ebx
c00098a4:	8b 5d fc             	mov    ebx,DWORD PTR [ebp-0x4]
c00098a7:	c9                   	leave  
c00098a8:	c3                   	ret    
c00098a9:	00 00                	add    BYTE PTR [eax],al
	...

c00098ac <sema_init>:
c00098ac:	55                   	push   ebp
c00098ad:	89 e5                	mov    ebp,esp
c00098af:	56                   	push   esi
c00098b0:	0f b6 75 0c          	movzx  esi,BYTE PTR [ebp+0xc]
c00098b4:	53                   	push   ebx
c00098b5:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c00098b8:	83 ec 0c             	sub    esp,0xc
c00098bb:	8d 43 04             	lea    eax,[ebx+0x4]
c00098be:	89 33                	mov    DWORD PTR [ebx],esi
c00098c0:	50                   	push   eax
c00098c1:	e8 9e 12 00 00       	call   c000ab64 <list_init>
c00098c6:	8b 03                	mov    eax,DWORD PTR [ebx]
c00098c8:	83 c4 10             	add    esp,0x10
c00098cb:	39 f0                	cmp    eax,esi
c00098cd:	74 19                	je     c00098e8 <sema_init+0x3c>
c00098cf:	68 24 e5 00 c0       	push   0xc000e524
c00098d4:	68 68 e6 00 c0       	push   0xc000e668
c00098d9:	6a 0d                	push   0xd
c00098db:	68 3a e5 00 c0       	push   0xc000e53a
c00098e0:	e8 ab eb ff ff       	call   c0008490 <panic_spin>
c00098e5:	83 c4 10             	add    esp,0x10
c00098e8:	8d 65 f8             	lea    esp,[ebp-0x8]
c00098eb:	5b                   	pop    ebx
c00098ec:	5e                   	pop    esi
c00098ed:	5d                   	pop    ebp
c00098ee:	c3                   	ret    

c00098ef <lock_init>:
c00098ef:	55                   	push   ebp
c00098f0:	89 e5                	mov    ebp,esp
c00098f2:	83 ec 10             	sub    esp,0x10
c00098f5:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c00098f8:	c7 00 00 00 00 00    	mov    DWORD PTR [eax],0x0
c00098fe:	c7 40 20 00 00 00 00 	mov    DWORD PTR [eax+0x20],0x0
c0009905:	83 c0 04             	add    eax,0x4
c0009908:	6a 01                	push   0x1
c000990a:	50                   	push   eax
c000990b:	e8 9c ff ff ff       	call   c00098ac <sema_init>
c0009910:	83 c4 10             	add    esp,0x10
c0009913:	c9                   	leave  
c0009914:	c3                   	ret    

c0009915 <sema_down>:
c0009915:	55                   	push   ebp
c0009916:	89 e5                	mov    ebp,esp
c0009918:	57                   	push   edi
c0009919:	56                   	push   esi
c000991a:	53                   	push   ebx
c000991b:	83 ec 0c             	sub    esp,0xc
c000991e:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c0009921:	e8 a3 f7 ff ff       	call   c00090c9 <intr_disable>
c0009926:	8d 73 04             	lea    esi,[ebx+0x4]
c0009929:	89 c7                	mov    edi,eax
c000992b:	e9 82 00 00 00       	jmp    c00099b2 <sema_down+0x9d>
c0009930:	e8 b1 02 00 00       	call   c0009be6 <running_thread>
c0009935:	52                   	push   edx
c0009936:	83 c0 2c             	add    eax,0x2c
c0009939:	52                   	push   edx
c000993a:	50                   	push   eax
c000993b:	56                   	push   esi
c000993c:	e8 db 12 00 00       	call   c000ac1c <list_find>
c0009941:	83 c4 10             	add    esp,0x10
c0009944:	85 c0                	test   eax,eax
c0009946:	74 19                	je     c0009961 <sema_down+0x4c>
c0009948:	68 48 e5 00 c0       	push   0xc000e548
c000994d:	68 74 e6 00 c0       	push   0xc000e674
c0009952:	6a 24                	push   0x24
c0009954:	68 3a e5 00 c0       	push   0xc000e53a
c0009959:	e8 32 eb ff ff       	call   c0008490 <panic_spin>
c000995e:	83 c4 10             	add    esp,0x10
c0009961:	e8 80 02 00 00       	call   c0009be6 <running_thread>
c0009966:	51                   	push   ecx
c0009967:	83 c0 2c             	add    eax,0x2c
c000996a:	51                   	push   ecx
c000996b:	50                   	push   eax
c000996c:	56                   	push   esi
c000996d:	e8 aa 12 00 00       	call   c000ac1c <list_find>
c0009972:	83 c4 10             	add    esp,0x10
c0009975:	85 c0                	test   eax,eax
c0009977:	74 19                	je     c0009992 <sema_down+0x7d>
c0009979:	68 89 e5 00 c0       	push   0xc000e589
c000997e:	68 74 e6 00 c0       	push   0xc000e674
c0009983:	6a 27                	push   0x27
c0009985:	68 3a e5 00 c0       	push   0xc000e53a
c000998a:	e8 01 eb ff ff       	call   c0008490 <panic_spin>
c000998f:	83 c4 10             	add    esp,0x10
c0009992:	e8 4f 02 00 00       	call   c0009be6 <running_thread>
c0009997:	52                   	push   edx
c0009998:	83 c0 2c             	add    eax,0x2c
c000999b:	52                   	push   edx
c000999c:	50                   	push   eax
c000999d:	56                   	push   esi
c000999e:	e8 20 12 00 00       	call   c000abc3 <list_append>
c00099a3:	c7 04 24 02 00 00 00 	mov    DWORD PTR [esp],0x2
c00099aa:	e8 ad 04 00 00       	call   c0009e5c <thread_block>
c00099af:	83 c4 10             	add    esp,0x10
c00099b2:	8b 03                	mov    eax,DWORD PTR [ebx]
c00099b4:	85 c0                	test   eax,eax
c00099b6:	0f 84 74 ff ff ff    	je     c0009930 <sema_down+0x1b>
c00099bc:	8b 03                	mov    eax,DWORD PTR [ebx]
c00099be:	48                   	dec    eax
c00099bf:	89 03                	mov    DWORD PTR [ebx],eax
c00099c1:	8b 03                	mov    eax,DWORD PTR [ebx]
c00099c3:	85 c0                	test   eax,eax
c00099c5:	74 19                	je     c00099e0 <sema_down+0xcb>
c00099c7:	68 bd e5 00 c0       	push   0xc000e5bd
c00099cc:	68 74 e6 00 c0       	push   0xc000e674
c00099d1:	6a 2d                	push   0x2d
c00099d3:	68 3a e5 00 c0       	push   0xc000e53a
c00099d8:	e8 b3 ea ff ff       	call   c0008490 <panic_spin>
c00099dd:	83 c4 10             	add    esp,0x10
c00099e0:	89 7d 08             	mov    DWORD PTR [ebp+0x8],edi
c00099e3:	8d 65 f4             	lea    esp,[ebp-0xc]
c00099e6:	5b                   	pop    ebx
c00099e7:	5e                   	pop    esi
c00099e8:	5f                   	pop    edi
c00099e9:	5d                   	pop    ebp
c00099ea:	e9 fc f7 ff ff       	jmp    c00091eb <intr_set_status>

c00099ef <sema_up>:
c00099ef:	55                   	push   ebp
c00099f0:	89 e5                	mov    ebp,esp
c00099f2:	57                   	push   edi
c00099f3:	56                   	push   esi
c00099f4:	53                   	push   ebx
c00099f5:	83 ec 0c             	sub    esp,0xc
c00099f8:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c00099fb:	e8 c9 f6 ff ff       	call   c00090c9 <intr_disable>
c0009a00:	89 c7                	mov    edi,eax
c0009a02:	8b 03                	mov    eax,DWORD PTR [ebx]
c0009a04:	85 c0                	test   eax,eax
c0009a06:	74 19                	je     c0009a21 <sema_up+0x32>
c0009a08:	68 bd e5 00 c0       	push   0xc000e5bd
c0009a0d:	68 80 e6 00 c0       	push   0xc000e680
c0009a12:	6a 38                	push   0x38
c0009a14:	68 3a e5 00 c0       	push   0xc000e53a
c0009a19:	e8 72 ea ff ff       	call   c0008490 <panic_spin>
c0009a1e:	83 c4 10             	add    esp,0x10
c0009a21:	83 ec 0c             	sub    esp,0xc
c0009a24:	8d 73 04             	lea    esi,[ebx+0x4]
c0009a27:	56                   	push   esi
c0009a28:	e8 68 12 00 00       	call   c000ac95 <list_empty>
c0009a2d:	83 c4 10             	add    esp,0x10
c0009a30:	85 c0                	test   eax,eax
c0009a32:	75 15                	jne    c0009a49 <sema_up+0x5a>
c0009a34:	83 ec 0c             	sub    esp,0xc
c0009a37:	56                   	push   esi
c0009a38:	e8 c5 11 00 00       	call   c000ac02 <list_pop>
c0009a3d:	59                   	pop    ecx
c0009a3e:	ff 70 04             	push   DWORD PTR [eax+0x4]
c0009a41:	e8 61 04 00 00       	call   c0009ea7 <thread_unblock>
c0009a46:	83 c4 10             	add    esp,0x10
c0009a49:	8b 03                	mov    eax,DWORD PTR [ebx]
c0009a4b:	40                   	inc    eax
c0009a4c:	89 03                	mov    DWORD PTR [ebx],eax
c0009a4e:	8b 03                	mov    eax,DWORD PTR [ebx]
c0009a50:	48                   	dec    eax
c0009a51:	74 19                	je     c0009a6c <sema_up+0x7d>
c0009a53:	68 cf e5 00 c0       	push   0xc000e5cf
c0009a58:	68 80 e6 00 c0       	push   0xc000e680
c0009a5d:	6a 3f                	push   0x3f
c0009a5f:	68 3a e5 00 c0       	push   0xc000e53a
c0009a64:	e8 27 ea ff ff       	call   c0008490 <panic_spin>
c0009a69:	83 c4 10             	add    esp,0x10
c0009a6c:	89 7d 08             	mov    DWORD PTR [ebp+0x8],edi
c0009a6f:	8d 65 f4             	lea    esp,[ebp-0xc]
c0009a72:	5b                   	pop    ebx
c0009a73:	5e                   	pop    esi
c0009a74:	5f                   	pop    edi
c0009a75:	5d                   	pop    ebp
c0009a76:	e9 70 f7 ff ff       	jmp    c00091eb <intr_set_status>

c0009a7b <lock_acquire>:
c0009a7b:	55                   	push   ebp
c0009a7c:	89 e5                	mov    ebp,esp
c0009a7e:	56                   	push   esi
c0009a7f:	53                   	push   ebx
c0009a80:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c0009a83:	8b 33                	mov    esi,DWORD PTR [ebx]
c0009a85:	e8 5c 01 00 00       	call   c0009be6 <running_thread>
c0009a8a:	39 c6                	cmp    esi,eax
c0009a8c:	74 3e                	je     c0009acc <lock_acquire+0x51>
c0009a8e:	83 ec 0c             	sub    esp,0xc
c0009a91:	8d 43 04             	lea    eax,[ebx+0x4]
c0009a94:	50                   	push   eax
c0009a95:	e8 7b fe ff ff       	call   c0009915 <sema_down>
c0009a9a:	e8 47 01 00 00       	call   c0009be6 <running_thread>
c0009a9f:	83 c4 10             	add    esp,0x10
c0009aa2:	83 7b 20 00          	cmp    DWORD PTR [ebx+0x20],0x0
c0009aa6:	89 03                	mov    DWORD PTR [ebx],eax
c0009aa8:	74 19                	je     c0009ac3 <lock_acquire+0x48>
c0009aaa:	68 e1 e5 00 c0       	push   0xc000e5e1
c0009aaf:	68 88 e6 00 c0       	push   0xc000e688
c0009ab4:	6a 4d                	push   0x4d
c0009ab6:	68 3a e5 00 c0       	push   0xc000e53a
c0009abb:	e8 d0 e9 ff ff       	call   c0008490 <panic_spin>
c0009ac0:	83 c4 10             	add    esp,0x10
c0009ac3:	c7 43 20 01 00 00 00 	mov    DWORD PTR [ebx+0x20],0x1
c0009aca:	eb 03                	jmp    c0009acf <lock_acquire+0x54>
c0009acc:	ff 43 20             	inc    DWORD PTR [ebx+0x20]
c0009acf:	8d 65 f8             	lea    esp,[ebp-0x8]
c0009ad2:	5b                   	pop    ebx
c0009ad3:	5e                   	pop    esi
c0009ad4:	5d                   	pop    ebp
c0009ad5:	c3                   	ret    

c0009ad6 <lock_release>:
c0009ad6:	55                   	push   ebp
c0009ad7:	89 e5                	mov    ebp,esp
c0009ad9:	56                   	push   esi
c0009ada:	53                   	push   ebx
c0009adb:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c0009ade:	8b 33                	mov    esi,DWORD PTR [ebx]
c0009ae0:	e8 01 01 00 00       	call   c0009be6 <running_thread>
c0009ae5:	39 c6                	cmp    esi,eax
c0009ae7:	74 19                	je     c0009b02 <lock_release+0x2c>
c0009ae9:	68 fe e5 00 c0       	push   0xc000e5fe
c0009aee:	68 98 e6 00 c0       	push   0xc000e698
c0009af3:	6a 5c                	push   0x5c
c0009af5:	68 3a e5 00 c0       	push   0xc000e53a
c0009afa:	e8 91 e9 ff ff       	call   c0008490 <panic_spin>
c0009aff:	83 c4 10             	add    esp,0x10
c0009b02:	8b 43 20             	mov    eax,DWORD PTR [ebx+0x20]
c0009b05:	83 f8 01             	cmp    eax,0x1
c0009b08:	76 0b                	jbe    c0009b15 <lock_release+0x3f>
c0009b0a:	48                   	dec    eax
c0009b0b:	89 43 20             	mov    DWORD PTR [ebx+0x20],eax
c0009b0e:	8d 65 f8             	lea    esp,[ebp-0x8]
c0009b11:	5b                   	pop    ebx
c0009b12:	5e                   	pop    esi
c0009b13:	5d                   	pop    ebp
c0009b14:	c3                   	ret    
c0009b15:	74 19                	je     c0009b30 <lock_release+0x5a>
c0009b17:	68 20 e6 00 c0       	push   0xc000e620
c0009b1c:	68 98 e6 00 c0       	push   0xc000e698
c0009b21:	6a 62                	push   0x62
c0009b23:	68 3a e5 00 c0       	push   0xc000e53a
c0009b28:	e8 63 e9 ff ff       	call   c0008490 <panic_spin>
c0009b2d:	83 c4 10             	add    esp,0x10
c0009b30:	c7 03 00 00 00 00    	mov    DWORD PTR [ebx],0x0
c0009b36:	c7 43 20 00 00 00 00 	mov    DWORD PTR [ebx+0x20],0x0
c0009b3d:	83 c3 04             	add    ebx,0x4
c0009b40:	89 5d 08             	mov    DWORD PTR [ebp+0x8],ebx
c0009b43:	8d 65 f8             	lea    esp,[ebp-0x8]
c0009b46:	5b                   	pop    ebx
c0009b47:	5e                   	pop    esi
c0009b48:	5d                   	pop    ebp
c0009b49:	e9 a1 fe ff ff       	jmp    c00099ef <sema_up>
	...

c0009b50 <switch_to>:
c0009b50:	56                   	push   esi
c0009b51:	57                   	push   edi
c0009b52:	53                   	push   ebx
c0009b53:	55                   	push   ebp
c0009b54:	8b 44 24 14          	mov    eax,DWORD PTR [esp+0x14]
c0009b58:	89 20                	mov    DWORD PTR [eax],esp
c0009b5a:	8b 44 24 18          	mov    eax,DWORD PTR [esp+0x18]
c0009b5e:	8b 20                	mov    esp,DWORD PTR [eax]
c0009b60:	5d                   	pop    ebp
c0009b61:	5b                   	pop    ebx
c0009b62:	5f                   	pop    edi
c0009b63:	5e                   	pop    esi
c0009b64:	c3                   	ret    
c0009b65:	00 00                	add    BYTE PTR [eax],al
	...

c0009b68 <kernel_thread>:
c0009b68:	55                   	push   ebp
c0009b69:	89 e5                	mov    ebp,esp
c0009b6b:	56                   	push   esi
c0009b6c:	8b 75 0c             	mov    esi,DWORD PTR [ebp+0xc]
c0009b6f:	53                   	push   ebx
c0009b70:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c0009b73:	e8 5c f6 ff ff       	call   c00091d4 <intr_enable>
c0009b78:	89 75 08             	mov    DWORD PTR [ebp+0x8],esi
c0009b7b:	89 d8                	mov    eax,ebx
c0009b7d:	5b                   	pop    ebx
c0009b7e:	5e                   	pop    esi
c0009b7f:	5d                   	pop    ebp
c0009b80:	ff e0                	jmp    eax

c0009b82 <thread_init>:
c0009b82:	55                   	push   ebp
c0009b83:	89 e5                	mov    ebp,esp
c0009b85:	53                   	push   ebx
c0009b86:	83 ec 18             	sub    esp,0x18
c0009b89:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c0009b8c:	8a 55 10             	mov    dl,BYTE PTR [ebp+0x10]
c0009b8f:	6a 78                	push   0x78
c0009b91:	6a 00                	push   0x0
c0009b93:	53                   	push   ebx
c0009b94:	88 55 f4             	mov    BYTE PTR [ebp-0xc],dl
c0009b97:	e8 84 13 00 00       	call   c000af20 <memset>
c0009b9c:	58                   	pop    eax
c0009b9d:	5a                   	pop    edx
c0009b9e:	ff 75 0c             	push   DWORD PTR [ebp+0xc]
c0009ba1:	8d 43 08             	lea    eax,[ebx+0x8]
c0009ba4:	50                   	push   eax
c0009ba5:	e8 49 14 00 00       	call   c000aff3 <strcpy>
c0009baa:	83 c4 10             	add    esp,0x10
c0009bad:	8a 55 f4             	mov    dl,BYTE PTR [ebp-0xc]
c0009bb0:	3b 1d a4 e6 02 c0    	cmp    ebx,DWORD PTR ds:0xc002e6a4
c0009bb6:	75 09                	jne    c0009bc1 <thread_init+0x3f>
c0009bb8:	c7 43 04 00 00 00 00 	mov    DWORD PTR [ebx+0x4],0x0
c0009bbf:	eb 07                	jmp    c0009bc8 <thread_init+0x46>
c0009bc1:	c7 43 04 01 00 00 00 	mov    DWORD PTR [ebx+0x4],0x1
c0009bc8:	8d 83 00 10 00 00    	lea    eax,[ebx+0x1000]
c0009bce:	88 53 18             	mov    BYTE PTR [ebx+0x18],dl
c0009bd1:	89 03                	mov    DWORD PTR [ebx],eax
c0009bd3:	c7 43 38 00 00 00 00 	mov    DWORD PTR [ebx+0x38],0x0
c0009bda:	c7 43 74 78 56 34 12 	mov    DWORD PTR [ebx+0x74],0x12345678
c0009be1:	8b 5d fc             	mov    ebx,DWORD PTR [ebp-0x4]
c0009be4:	c9                   	leave  
c0009be5:	c3                   	ret    

c0009be6 <running_thread>:
c0009be6:	55                   	push   ebp
c0009be7:	89 e5                	mov    ebp,esp
c0009be9:	89 e0                	mov    eax,esp
c0009beb:	25 00 f0 ff ff       	and    eax,0xfffff000
c0009bf0:	5d                   	pop    ebp
c0009bf1:	c3                   	ret    

c0009bf2 <init_thread>:
c0009bf2:	55                   	push   ebp
c0009bf3:	89 e5                	mov    ebp,esp
c0009bf5:	83 ec 14             	sub    esp,0x14
c0009bf8:	68 74 e6 02 c0       	push   0xc002e674
c0009bfd:	e8 62 0f 00 00       	call   c000ab64 <list_init>
c0009c02:	c7 04 24 8c e6 02 c0 	mov    DWORD PTR [esp],0xc002e68c
c0009c09:	e8 56 0f 00 00       	call   c000ab64 <list_init>
c0009c0e:	e8 d3 ff ff ff       	call   c0009be6 <running_thread>
c0009c13:	83 c4 0c             	add    esp,0xc
c0009c16:	6a 1f                	push   0x1f
c0009c18:	68 a8 e6 00 c0       	push   0xc000e6a8
c0009c1d:	50                   	push   eax
c0009c1e:	a3 a4 e6 02 c0       	mov    ds:0xc002e6a4,eax
c0009c23:	e8 5a ff ff ff       	call   c0009b82 <thread_init>
c0009c28:	a1 a4 e6 02 c0       	mov    eax,ds:0xc002e6a4
c0009c2d:	89 40 24             	mov    DWORD PTR [eax+0x24],eax
c0009c30:	89 40 30             	mov    DWORD PTR [eax+0x30],eax
c0009c33:	83 c0 20             	add    eax,0x20
c0009c36:	59                   	pop    ecx
c0009c37:	5a                   	pop    edx
c0009c38:	50                   	push   eax
c0009c39:	68 8c e6 02 c0       	push   0xc002e68c
c0009c3e:	e8 80 0f 00 00       	call   c000abc3 <list_append>
c0009c43:	83 c4 10             	add    esp,0x10
c0009c46:	c9                   	leave  
c0009c47:	c3                   	ret    

c0009c48 <thread_create>:
c0009c48:	55                   	push   ebp
c0009c49:	89 e5                	mov    ebp,esp
c0009c4b:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c0009c4e:	8b 02                	mov    eax,DWORD PTR [edx]
c0009c50:	8d 88 50 fe ff ff    	lea    ecx,[eax-0x1b0]
c0009c56:	89 0a                	mov    DWORD PTR [edx],ecx
c0009c58:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
c0009c5b:	c7 80 60 fe ff ff 68 	mov    DWORD PTR [eax-0x1a0],0xc0009b68
c0009c62:	9b 00 c0 
c0009c65:	c7 80 50 fe ff ff 00 	mov    DWORD PTR [eax-0x1b0],0x0
c0009c6c:	00 00 00 
c0009c6f:	c7 80 54 fe ff ff 00 	mov    DWORD PTR [eax-0x1ac],0x0
c0009c76:	00 00 00 
c0009c79:	89 90 68 fe ff ff    	mov    DWORD PTR [eax-0x198],edx
c0009c7f:	8b 55 10             	mov    edx,DWORD PTR [ebp+0x10]
c0009c82:	c7 80 5c fe ff ff 00 	mov    DWORD PTR [eax-0x1a4],0x0
c0009c89:	00 00 00 
c0009c8c:	c7 80 58 fe ff ff 00 	mov    DWORD PTR [eax-0x1a8],0x0
c0009c93:	00 00 00 
c0009c96:	89 90 6c fe ff ff    	mov    DWORD PTR [eax-0x194],edx
c0009c9c:	5d                   	pop    ebp
c0009c9d:	c3                   	ret    

c0009c9e <thread_start>:
c0009c9e:	55                   	push   ebp
c0009c9f:	89 e5                	mov    ebp,esp
c0009ca1:	56                   	push   esi
c0009ca2:	8b 75 0c             	mov    esi,DWORD PTR [ebp+0xc]
c0009ca5:	53                   	push   ebx
c0009ca6:	83 ec 0c             	sub    esp,0xc
c0009ca9:	6a 01                	push   0x1
c0009cab:	e8 cb fa ff ff       	call   c000977b <get_kernel_page>
c0009cb0:	81 e6 ff 00 00 00    	and    esi,0xff
c0009cb6:	83 c4 0c             	add    esp,0xc
c0009cb9:	56                   	push   esi
c0009cba:	ff 75 08             	push   DWORD PTR [ebp+0x8]
c0009cbd:	50                   	push   eax
c0009cbe:	89 c3                	mov    ebx,eax
c0009cc0:	e8 bd fe ff ff       	call   c0009b82 <thread_init>
c0009cc5:	83 c4 0c             	add    esp,0xc
c0009cc8:	ff 75 14             	push   DWORD PTR [ebp+0x14]
c0009ccb:	ff 75 10             	push   DWORD PTR [ebp+0x10]
c0009cce:	8d 73 2c             	lea    esi,[ebx+0x2c]
c0009cd1:	53                   	push   ebx
c0009cd2:	e8 71 ff ff ff       	call   c0009c48 <thread_create>
c0009cd7:	89 5b 24             	mov    DWORD PTR [ebx+0x24],ebx
c0009cda:	89 5b 30             	mov    DWORD PTR [ebx+0x30],ebx
c0009cdd:	59                   	pop    ecx
c0009cde:	58                   	pop    eax
c0009cdf:	56                   	push   esi
c0009ce0:	68 74 e6 02 c0       	push   0xc002e674
c0009ce5:	e8 32 0f 00 00       	call   c000ac1c <list_find>
c0009cea:	83 c4 10             	add    esp,0x10
c0009ced:	85 c0                	test   eax,eax
c0009cef:	74 19                	je     c0009d0a <thread_start+0x6c>
c0009cf1:	68 b4 e6 00 c0       	push   0xc000e6b4
c0009cf6:	68 4c e8 00 c0       	push   0xc000e84c
c0009cfb:	6a 61                	push   0x61
c0009cfd:	68 e3 e6 00 c0       	push   0xc000e6e3
c0009d02:	e8 89 e7 ff ff       	call   c0008490 <panic_spin>
c0009d07:	83 c4 10             	add    esp,0x10
c0009d0a:	50                   	push   eax
c0009d0b:	50                   	push   eax
c0009d0c:	56                   	push   esi
c0009d0d:	68 74 e6 02 c0       	push   0xc002e674
c0009d12:	e8 ac 0e 00 00       	call   c000abc3 <list_append>
c0009d17:	8d 73 20             	lea    esi,[ebx+0x20]
c0009d1a:	58                   	pop    eax
c0009d1b:	5a                   	pop    edx
c0009d1c:	56                   	push   esi
c0009d1d:	68 8c e6 02 c0       	push   0xc002e68c
c0009d22:	e8 f5 0e 00 00       	call   c000ac1c <list_find>
c0009d27:	83 c4 10             	add    esp,0x10
c0009d2a:	85 c0                	test   eax,eax
c0009d2c:	74 19                	je     c0009d47 <thread_start+0xa9>
c0009d2e:	68 f3 e6 00 c0       	push   0xc000e6f3
c0009d33:	68 4c e8 00 c0       	push   0xc000e84c
c0009d38:	6a 64                	push   0x64
c0009d3a:	68 e3 e6 00 c0       	push   0xc000e6e3
c0009d3f:	e8 4c e7 ff ff       	call   c0008490 <panic_spin>
c0009d44:	83 c4 10             	add    esp,0x10
c0009d47:	51                   	push   ecx
c0009d48:	51                   	push   ecx
c0009d49:	56                   	push   esi
c0009d4a:	68 8c e6 02 c0       	push   0xc002e68c
c0009d4f:	e8 6f 0e 00 00       	call   c000abc3 <list_append>
c0009d54:	8d 65 f8             	lea    esp,[ebp-0x8]
c0009d57:	89 d8                	mov    eax,ebx
c0009d59:	5b                   	pop    ebx
c0009d5a:	5e                   	pop    esi
c0009d5b:	5d                   	pop    ebp
c0009d5c:	c3                   	ret    

c0009d5d <schedule>:
c0009d5d:	55                   	push   ebp
c0009d5e:	89 e5                	mov    ebp,esp
c0009d60:	56                   	push   esi
c0009d61:	53                   	push   ebx
c0009d62:	e8 7f fe ff ff       	call   c0009be6 <running_thread>
c0009d67:	89 c3                	mov    ebx,eax
c0009d69:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
c0009d6c:	85 c0                	test   eax,eax
c0009d6e:	75 53                	jne    c0009dc3 <schedule+0x66>
c0009d70:	50                   	push   eax
c0009d71:	50                   	push   eax
c0009d72:	8d 73 2c             	lea    esi,[ebx+0x2c]
c0009d75:	56                   	push   esi
c0009d76:	68 74 e6 02 c0       	push   0xc002e674
c0009d7b:	e8 9c 0e 00 00       	call   c000ac1c <list_find>
c0009d80:	83 c4 10             	add    esp,0x10
c0009d83:	85 c0                	test   eax,eax
c0009d85:	74 19                	je     c0009da0 <schedule+0x43>
c0009d87:	68 1c e7 00 c0       	push   0xc000e71c
c0009d8c:	68 5c e8 00 c0       	push   0xc000e85c
c0009d91:	6a 79                	push   0x79
c0009d93:	68 e3 e6 00 c0       	push   0xc000e6e3
c0009d98:	e8 f3 e6 ff ff       	call   c0008490 <panic_spin>
c0009d9d:	83 c4 10             	add    esp,0x10
c0009da0:	51                   	push   ecx
c0009da1:	51                   	push   ecx
c0009da2:	56                   	push   esi
c0009da3:	68 74 e6 02 c0       	push   0xc002e674
c0009da8:	e8 16 0e 00 00       	call   c000abc3 <list_append>
c0009dad:	83 c4 10             	add    esp,0x10
c0009db0:	80 7b 19 00          	cmp    BYTE PTR [ebx+0x19],0x0
c0009db4:	75 06                	jne    c0009dbc <schedule+0x5f>
c0009db6:	8a 43 18             	mov    al,BYTE PTR [ebx+0x18]
c0009db9:	88 43 19             	mov    BYTE PTR [ebx+0x19],al
c0009dbc:	c7 43 04 00 00 00 00 	mov    DWORD PTR [ebx+0x4],0x0
c0009dc3:	83 ec 0c             	sub    esp,0xc
c0009dc6:	68 74 e6 02 c0       	push   0xc002e674
c0009dcb:	c7 05 b4 ed 00 c0 00 	mov    DWORD PTR ds:0xc000edb4,0x0
c0009dd2:	00 00 00 
c0009dd5:	e8 bb 0e 00 00       	call   c000ac95 <list_empty>
c0009dda:	83 c4 10             	add    esp,0x10
c0009ddd:	85 c0                	test   eax,eax
c0009ddf:	74 1c                	je     c0009dfd <schedule+0xa0>
c0009de1:	68 51 e7 00 c0       	push   0xc000e751
c0009de6:	68 5c e8 00 c0       	push   0xc000e85c
c0009deb:	68 89 00 00 00       	push   0x89
c0009df0:	68 e3 e6 00 c0       	push   0xc000e6e3
c0009df5:	e8 96 e6 ff ff       	call   c0008490 <panic_spin>
c0009dfa:	83 c4 10             	add    esp,0x10
c0009dfd:	81 3d 80 e6 02 c0 74 	cmp    DWORD PTR ds:0xc002e680,0xc002e674
c0009e04:	e6 02 c0 
c0009e07:	75 1c                	jne    c0009e25 <schedule+0xc8>
c0009e09:	68 6c e7 00 c0       	push   0xc000e76c
c0009e0e:	68 5c e8 00 c0       	push   0xc000e85c
c0009e13:	68 8a 00 00 00       	push   0x8a
c0009e18:	68 e3 e6 00 c0       	push   0xc000e6e3
c0009e1d:	e8 6e e6 ff ff       	call   c0008490 <panic_spin>
c0009e22:	83 c4 10             	add    esp,0x10
c0009e25:	83 ec 0c             	sub    esp,0xc
c0009e28:	68 74 e6 02 c0       	push   0xc002e674
c0009e2d:	e8 d0 0d 00 00       	call   c000ac02 <list_pop>
c0009e32:	8b 70 04             	mov    esi,DWORD PTR [eax+0x4]
c0009e35:	a3 b4 ed 00 c0       	mov    ds:0xc000edb4,eax
c0009e3a:	c7 46 04 00 00 00 00 	mov    DWORD PTR [esi+0x4],0x0
c0009e41:	89 34 24             	mov    DWORD PTR [esp],esi
c0009e44:	e8 d9 02 00 00       	call   c000a122 <process_activate>
c0009e49:	58                   	pop    eax
c0009e4a:	5a                   	pop    edx
c0009e4b:	56                   	push   esi
c0009e4c:	53                   	push   ebx
c0009e4d:	e8 fe fc ff ff       	call   c0009b50 <switch_to>
c0009e52:	83 c4 10             	add    esp,0x10
c0009e55:	8d 65 f8             	lea    esp,[ebp-0x8]
c0009e58:	5b                   	pop    ebx
c0009e59:	5e                   	pop    esi
c0009e5a:	5d                   	pop    ebp
c0009e5b:	c3                   	ret    

c0009e5c <thread_block>:
c0009e5c:	55                   	push   ebp
c0009e5d:	89 e5                	mov    ebp,esp
c0009e5f:	56                   	push   esi
c0009e60:	53                   	push   ebx
c0009e61:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c0009e64:	83 fb 01             	cmp    ebx,0x1
c0009e67:	77 1c                	ja     c0009e85 <thread_block+0x29>
c0009e69:	68 95 e7 00 c0       	push   0xc000e795
c0009e6e:	68 68 e8 00 c0       	push   0xc000e868
c0009e73:	68 97 00 00 00       	push   0x97
c0009e78:	68 e3 e6 00 c0       	push   0xc000e6e3
c0009e7d:	e8 0e e6 ff ff       	call   c0008490 <panic_spin>
c0009e82:	83 c4 10             	add    esp,0x10
c0009e85:	e8 3f f2 ff ff       	call   c00090c9 <intr_disable>
c0009e8a:	89 c6                	mov    esi,eax
c0009e8c:	e8 55 fd ff ff       	call   c0009be6 <running_thread>
c0009e91:	89 58 04             	mov    DWORD PTR [eax+0x4],ebx
c0009e94:	e8 c4 fe ff ff       	call   c0009d5d <schedule>
c0009e99:	89 75 08             	mov    DWORD PTR [ebp+0x8],esi
c0009e9c:	8d 65 f8             	lea    esp,[ebp-0x8]
c0009e9f:	5b                   	pop    ebx
c0009ea0:	5e                   	pop    esi
c0009ea1:	5d                   	pop    ebp
c0009ea2:	e9 44 f3 ff ff       	jmp    c00091eb <intr_set_status>

c0009ea7 <thread_unblock>:
c0009ea7:	55                   	push   ebp
c0009ea8:	89 e5                	mov    ebp,esp
c0009eaa:	57                   	push   edi
c0009eab:	56                   	push   esi
c0009eac:	53                   	push   ebx
c0009ead:	83 ec 0c             	sub    esp,0xc
c0009eb0:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c0009eb3:	e8 11 f2 ff ff       	call   c00090c9 <intr_disable>
c0009eb8:	89 c7                	mov    edi,eax
c0009eba:	8b 43 04             	mov    eax,DWORD PTR [ebx+0x4]
c0009ebd:	48                   	dec    eax
c0009ebe:	74 7a                	je     c0009f3a <thread_unblock+0x93>
c0009ec0:	50                   	push   eax
c0009ec1:	50                   	push   eax
c0009ec2:	8d 73 2c             	lea    esi,[ebx+0x2c]
c0009ec5:	56                   	push   esi
c0009ec6:	68 74 e6 02 c0       	push   0xc002e674
c0009ecb:	e8 4c 0d 00 00       	call   c000ac1c <list_find>
c0009ed0:	83 c4 10             	add    esp,0x10
c0009ed3:	85 c0                	test   eax,eax
c0009ed5:	74 1c                	je     c0009ef3 <thread_unblock+0x4c>
c0009ed7:	68 c4 e7 00 c0       	push   0xc000e7c4
c0009edc:	68 78 e8 00 c0       	push   0xc000e878
c0009ee1:	68 a5 00 00 00       	push   0xa5
c0009ee6:	68 e3 e6 00 c0       	push   0xc000e6e3
c0009eeb:	e8 a0 e5 ff ff       	call   c0008490 <panic_spin>
c0009ef0:	83 c4 10             	add    esp,0x10
c0009ef3:	50                   	push   eax
c0009ef4:	50                   	push   eax
c0009ef5:	56                   	push   esi
c0009ef6:	68 74 e6 02 c0       	push   0xc002e674
c0009efb:	e8 1c 0d 00 00       	call   c000ac1c <list_find>
c0009f00:	83 c4 10             	add    esp,0x10
c0009f03:	85 c0                	test   eax,eax
c0009f05:	74 1c                	je     c0009f23 <thread_unblock+0x7c>
c0009f07:	68 f4 e7 00 c0       	push   0xc000e7f4
c0009f0c:	68 78 e8 00 c0       	push   0xc000e878
c0009f11:	68 a8 00 00 00       	push   0xa8
c0009f16:	68 e3 e6 00 c0       	push   0xc000e6e3
c0009f1b:	e8 70 e5 ff ff       	call   c0008490 <panic_spin>
c0009f20:	83 c4 10             	add    esp,0x10
c0009f23:	50                   	push   eax
c0009f24:	50                   	push   eax
c0009f25:	56                   	push   esi
c0009f26:	68 74 e6 02 c0       	push   0xc002e674
c0009f2b:	e8 7b 0c 00 00       	call   c000abab <list_push>
c0009f30:	83 c4 10             	add    esp,0x10
c0009f33:	c7 43 04 01 00 00 00 	mov    DWORD PTR [ebx+0x4],0x1
c0009f3a:	89 7d 08             	mov    DWORD PTR [ebp+0x8],edi
c0009f3d:	8d 65 f4             	lea    esp,[ebp-0xc]
c0009f40:	5b                   	pop    ebx
c0009f41:	5e                   	pop    esi
c0009f42:	5f                   	pop    edi
c0009f43:	5d                   	pop    ebp
c0009f44:	e9 a2 f2 ff ff       	jmp    c00091eb <intr_set_status>
c0009f49:	00 00                	add    BYTE PTR [eax],al
	...

c0009f4c <set_segmdesc>:
c0009f4c:	55                   	push   ebp
c0009f4d:	89 e5                	mov    ebp,esp
c0009f4f:	57                   	push   edi
c0009f50:	8b 7d 08             	mov    edi,DWORD PTR [ebp+0x8]
c0009f53:	56                   	push   esi
c0009f54:	89 d6                	mov    esi,edx
c0009f56:	c1 ee 10             	shr    esi,0x10
c0009f59:	53                   	push   ebx
c0009f5a:	89 f3                	mov    ebx,esi
c0009f5c:	88 58 04             	mov    BYTE PTR [eax+0x4],bl
c0009f5f:	89 fb                	mov    ebx,edi
c0009f61:	88 58 05             	mov    BYTE PTR [eax+0x5],bl
c0009f64:	89 fb                	mov    ebx,edi
c0009f66:	66 89 08             	mov    WORD PTR [eax],cx
c0009f69:	66 c1 eb 08          	shr    bx,0x8
c0009f6d:	c1 e9 10             	shr    ecx,0x10
c0009f70:	83 e3 f0             	and    ebx,0xfffffff0
c0009f73:	83 e1 0f             	and    ecx,0xf
c0009f76:	09 cb                	or     ebx,ecx
c0009f78:	66 89 50 02          	mov    WORD PTR [eax+0x2],dx
c0009f7c:	c1 ea 18             	shr    edx,0x18
c0009f7f:	88 58 06             	mov    BYTE PTR [eax+0x6],bl
c0009f82:	88 50 07             	mov    BYTE PTR [eax+0x7],dl
c0009f85:	5b                   	pop    ebx
c0009f86:	5e                   	pop    esi
c0009f87:	5f                   	pop    edi
c0009f88:	5d                   	pop    ebp
c0009f89:	c3                   	ret    

c0009f8a <init_tss>:
c0009f8a:	55                   	push   ebp
c0009f8b:	89 e5                	mov    ebp,esp
c0009f8d:	83 ec 1c             	sub    esp,0x1c
c0009f90:	6a 6c                	push   0x6c
c0009f92:	6a 00                	push   0x0
c0009f94:	68 b8 ed 00 c0       	push   0xc000edb8
c0009f99:	e8 82 0f 00 00       	call   c000af20 <memset>
c0009f9e:	b9 6b 00 00 00       	mov    ecx,0x6b
c0009fa3:	ba b8 ed 00 c0       	mov    edx,0xc000edb8
c0009fa8:	b8 3c 7f 00 c0       	mov    eax,0xc0007f3c
c0009fad:	c7 04 24 89 80 00 00 	mov    DWORD PTR [esp],0x8089
c0009fb4:	c7 05 c0 ed 00 c0 10 	mov    DWORD PTR ds:0xc000edc0,0x10
c0009fbb:	00 00 00 
c0009fbe:	c7 05 20 ee 00 c0 6c 	mov    DWORD PTR ds:0xc000ee20,0x6c
c0009fc5:	00 00 00 
c0009fc8:	e8 7f ff ff ff       	call   c0009f4c <set_segmdesc>
c0009fcd:	31 d2                	xor    edx,edx
c0009fcf:	b9 ff ff 0f 00       	mov    ecx,0xfffff
c0009fd4:	b8 44 7f 00 c0       	mov    eax,0xc0007f44
c0009fd9:	c7 04 24 f8 c0 00 00 	mov    DWORD PTR [esp],0xc0f8
c0009fe0:	e8 67 ff ff ff       	call   c0009f4c <set_segmdesc>
c0009fe5:	b9 ff ff 0f 00       	mov    ecx,0xfffff
c0009fea:	31 d2                	xor    edx,edx
c0009fec:	b8 4c 7f 00 c0       	mov    eax,0xc0007f4c
c0009ff1:	c7 04 24 f2 c0 00 00 	mov    DWORD PTR [esp],0xc0f2
c0009ff8:	e8 4f ff ff ff       	call   c0009f4c <set_segmdesc>
c0009ffd:	b8 24 7f 00 c0       	mov    eax,0xc0007f24
c000a002:	c1 e0 10             	shl    eax,0x10
c000a005:	83 c8 37             	or     eax,0x37
c000a008:	89 45 f0             	mov    DWORD PTR [ebp-0x10],eax
c000a00b:	c7 45 f4 00 00 00 00 	mov    DWORD PTR [ebp-0xc],0x0
c000a012:	0f 01 55 f0          	lgdtd  [ebp-0x10]
c000a016:	b8 18 00 00 00       	mov    eax,0x18
c000a01b:	0f 00 d8             	ltr    ax
c000a01e:	83 c4 10             	add    esp,0x10
c000a021:	c9                   	leave  
c000a022:	c3                   	ret    

c000a023 <update_tss_esp0>:
c000a023:	55                   	push   ebp
c000a024:	89 e5                	mov    ebp,esp
c000a026:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c000a029:	5d                   	pop    ebp
c000a02a:	05 00 10 00 00       	add    eax,0x1000
c000a02f:	a3 bc ed 00 c0       	mov    ds:0xc000edbc,eax
c000a034:	c3                   	ret    
c000a035:	00 00                	add    BYTE PTR [eax],al
	...

c000a038 <start_process>:
c000a038:	55                   	push   ebp
c000a039:	89 e5                	mov    ebp,esp
c000a03b:	56                   	push   esi
c000a03c:	53                   	push   ebx
c000a03d:	e8 a4 fb ff ff       	call   c0009be6 <running_thread>
c000a042:	8b 18                	mov    ebx,DWORD PTR [eax]
c000a044:	8d b3 80 00 00 00    	lea    esi,[ebx+0x80]
c000a04a:	89 30                	mov    DWORD PTR [eax],esi
c000a04c:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c000a04f:	c7 83 84 00 00 00 00 	mov    DWORD PTR [ebx+0x84],0x0
c000a056:	00 00 00 
c000a059:	c7 83 88 00 00 00 00 	mov    DWORD PTR [ebx+0x88],0x0
c000a060:	00 00 00 
c000a063:	c7 83 8c 00 00 00 00 	mov    DWORD PTR [ebx+0x8c],0x0
c000a06a:	00 00 00 
c000a06d:	89 83 b8 00 00 00    	mov    DWORD PTR [ebx+0xb8],eax
c000a073:	c7 83 90 00 00 00 00 	mov    DWORD PTR [ebx+0x90],0x0
c000a07a:	00 00 00 
c000a07d:	c7 83 94 00 00 00 00 	mov    DWORD PTR [ebx+0x94],0x0
c000a084:	00 00 00 
c000a087:	c7 83 98 00 00 00 00 	mov    DWORD PTR [ebx+0x98],0x0
c000a08e:	00 00 00 
c000a091:	c7 83 9c 00 00 00 00 	mov    DWORD PTR [ebx+0x9c],0x0
c000a098:	00 00 00 
c000a09b:	c7 83 a0 00 00 00 00 	mov    DWORD PTR [ebx+0xa0],0x0
c000a0a2:	00 00 00 
c000a0a5:	c7 83 a4 00 00 00 00 	mov    DWORD PTR [ebx+0xa4],0x0
c000a0ac:	00 00 00 
c000a0af:	c7 83 b0 00 00 00 2b 	mov    DWORD PTR [ebx+0xb0],0x2b
c000a0b6:	00 00 00 
c000a0b9:	c7 83 ac 00 00 00 2b 	mov    DWORD PTR [ebx+0xac],0x2b
c000a0c0:	00 00 00 
c000a0c3:	c7 83 a8 00 00 00 2b 	mov    DWORD PTR [ebx+0xa8],0x2b
c000a0ca:	00 00 00 
c000a0cd:	c7 83 bc 00 00 00 23 	mov    DWORD PTR [ebx+0xbc],0x23
c000a0d4:	00 00 00 
c000a0d7:	c7 83 c0 00 00 00 02 	mov    DWORD PTR [ebx+0xc0],0x202
c000a0de:	02 00 00 
c000a0e1:	50                   	push   eax
c000a0e2:	50                   	push   eax
c000a0e3:	68 00 f0 ff bf       	push   0xbffff000
c000a0e8:	6a 02                	push   0x2
c000a0ea:	e8 f4 f6 ff ff       	call   c00097e3 <get_a_page>
c000a0ef:	c7 83 c8 00 00 00 2b 	mov    DWORD PTR [ebx+0xc8],0x2b
c000a0f6:	00 00 00 
c000a0f9:	05 00 10 00 00       	add    eax,0x1000
c000a0fe:	89 83 c4 00 00 00    	mov    DWORD PTR [ebx+0xc4],eax
c000a104:	89 f4                	mov    esp,esi
c000a106:	e9 b9 ed ff ff       	jmp    c0008ec4 <intr_exit>
c000a10b:	83 c4 10             	add    esp,0x10
c000a10e:	8d 65 f8             	lea    esp,[ebp-0x8]
c000a111:	5b                   	pop    ebx
c000a112:	5e                   	pop    esi
c000a113:	5d                   	pop    ebp
c000a114:	c3                   	ret    

c000a115 <page_dir_activate>:
c000a115:	55                   	push   ebp
c000a116:	b8 00 00 40 00       	mov    eax,0x400000
c000a11b:	89 e5                	mov    ebp,esp
c000a11d:	0f 22 d8             	mov    cr3,eax
c000a120:	5d                   	pop    ebp
c000a121:	c3                   	ret    

c000a122 <process_activate>:
c000a122:	55                   	push   ebp
c000a123:	89 e5                	mov    ebp,esp
c000a125:	53                   	push   ebx
c000a126:	52                   	push   edx
c000a127:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c000a12a:	85 db                	test   ebx,ebx
c000a12c:	75 19                	jne    c000a147 <process_activate+0x25>
c000a12e:	68 b0 e8 00 c0       	push   0xc000e8b0
c000a133:	68 84 e9 00 c0       	push   0xc000e984
c000a138:	6a 40                	push   0x40
c000a13a:	68 c0 e8 00 c0       	push   0xc000e8c0
c000a13f:	e8 4c e3 ff ff       	call   c0008490 <panic_spin>
c000a144:	83 c4 10             	add    esp,0x10
c000a147:	b8 00 00 40 00       	mov    eax,0x400000
c000a14c:	0f 22 d8             	mov    cr3,eax
c000a14f:	83 7b 38 00          	cmp    DWORD PTR [ebx+0x38],0x0
c000a153:	74 0c                	je     c000a161 <process_activate+0x3f>
c000a155:	89 5d 08             	mov    DWORD PTR [ebp+0x8],ebx
c000a158:	8b 5d fc             	mov    ebx,DWORD PTR [ebp-0x4]
c000a15b:	c9                   	leave  
c000a15c:	e9 c2 fe ff ff       	jmp    c000a023 <update_tss_esp0>
c000a161:	8b 5d fc             	mov    ebx,DWORD PTR [ebp-0x4]
c000a164:	c9                   	leave  
c000a165:	c3                   	ret    

c000a166 <create_page_dir>:
c000a166:	55                   	push   ebp
c000a167:	89 e5                	mov    ebp,esp
c000a169:	53                   	push   ebx
c000a16a:	83 ec 10             	sub    esp,0x10
c000a16d:	6a 01                	push   0x1
c000a16f:	e8 07 f6 ff ff       	call   c000977b <get_kernel_page>
c000a174:	83 c4 10             	add    esp,0x10
c000a177:	85 c0                	test   eax,eax
c000a179:	89 c3                	mov    ebx,eax
c000a17b:	75 10                	jne    c000a18d <create_page_dir+0x27>
c000a17d:	50                   	push   eax
c000a17e:	50                   	push   eax
c000a17f:	68 d3 e8 00 c0       	push   0xc000e8d3
c000a184:	6a 04                	push   0x4
c000a186:	e8 84 01 00 00       	call   c000a30f <console_str>
c000a18b:	eb 28                	jmp    c000a1b5 <create_page_dir+0x4f>
c000a18d:	51                   	push   ecx
c000a18e:	68 00 04 00 00       	push   0x400
c000a193:	68 00 fc ff ff       	push   0xfffffc00
c000a198:	8d 80 00 30 00 00    	lea    eax,[eax+0x3000]
c000a19e:	50                   	push   eax
c000a19f:	e8 c3 0d 00 00       	call   c000af67 <memcpy>
c000a1a4:	89 1c 24             	mov    DWORD PTR [esp],ebx
c000a1a7:	e8 db f6 ff ff       	call   c0009887 <addr_v2p>
c000a1ac:	83 c8 07             	or     eax,0x7
c000a1af:	89 83 fc 0f 00 00    	mov    DWORD PTR [ebx+0xffc],eax
c000a1b5:	89 d8                	mov    eax,ebx
c000a1b7:	83 c4 10             	add    esp,0x10
c000a1ba:	8b 5d fc             	mov    ebx,DWORD PTR [ebp-0x4]
c000a1bd:	c9                   	leave  
c000a1be:	c3                   	ret    

c000a1bf <create_user_vaddr_memman>:
c000a1bf:	55                   	push   ebp
c000a1c0:	89 e5                	mov    ebp,esp
c000a1c2:	83 ec 14             	sub    esp,0x14
c000a1c5:	6a 08                	push   0x8
c000a1c7:	e8 af f5 ff ff       	call   c000977b <get_kernel_page>
c000a1cc:	5a                   	pop    edx
c000a1cd:	59                   	pop    ecx
c000a1ce:	50                   	push   eax
c000a1cf:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c000a1d2:	83 c0 3c             	add    eax,0x3c
c000a1d5:	50                   	push   eax
c000a1d6:	e8 25 f0 ff ff       	call   c0009200 <init_memman>
c000a1db:	83 c4 10             	add    esp,0x10
c000a1de:	c9                   	leave  
c000a1df:	c3                   	ret    

c000a1e0 <process_execute>:
c000a1e0:	55                   	push   ebp
c000a1e1:	89 e5                	mov    ebp,esp
c000a1e3:	57                   	push   edi
c000a1e4:	56                   	push   esi
c000a1e5:	53                   	push   ebx
c000a1e6:	83 ec 18             	sub    esp,0x18
c000a1e9:	8b 75 08             	mov    esi,DWORD PTR [ebp+0x8]
c000a1ec:	6a 01                	push   0x1
c000a1ee:	8b 7d 0c             	mov    edi,DWORD PTR [ebp+0xc]
c000a1f1:	e8 85 f5 ff ff       	call   c000977b <get_kernel_page>
c000a1f6:	83 c4 0c             	add    esp,0xc
c000a1f9:	6a 1f                	push   0x1f
c000a1fb:	57                   	push   edi
c000a1fc:	89 c3                	mov    ebx,eax
c000a1fe:	50                   	push   eax
c000a1ff:	e8 7e f9 ff ff       	call   c0009b82 <thread_init>
c000a204:	89 1c 24             	mov    DWORD PTR [esp],ebx
c000a207:	e8 b3 ff ff ff       	call   c000a1bf <create_user_vaddr_memman>
c000a20c:	83 c4 0c             	add    esp,0xc
c000a20f:	56                   	push   esi
c000a210:	68 38 a0 00 c0       	push   0xc000a038
c000a215:	53                   	push   ebx
c000a216:	e8 2d fa ff ff       	call   c0009c48 <thread_create>
c000a21b:	8d 73 20             	lea    esi,[ebx+0x20]
c000a21e:	e8 43 ff ff ff       	call   c000a166 <create_page_dir>
c000a223:	89 5b 30             	mov    DWORD PTR [ebx+0x30],ebx
c000a226:	89 5b 24             	mov    DWORD PTR [ebx+0x24],ebx
c000a229:	89 43 38             	mov    DWORD PTR [ebx+0x38],eax
c000a22c:	e8 98 ee ff ff       	call   c00090c9 <intr_disable>
c000a231:	59                   	pop    ecx
c000a232:	89 c7                	mov    edi,eax
c000a234:	58                   	pop    eax
c000a235:	56                   	push   esi
c000a236:	68 8c e6 02 c0       	push   0xc002e68c
c000a23b:	e8 dc 09 00 00       	call   c000ac1c <list_find>
c000a240:	83 c4 10             	add    esp,0x10
c000a243:	85 c0                	test   eax,eax
c000a245:	74 19                	je     c000a260 <process_execute+0x80>
c000a247:	68 fd e8 00 c0       	push   0xc000e8fd
c000a24c:	68 98 e9 00 c0       	push   0xc000e998
c000a251:	6a 70                	push   0x70
c000a253:	68 c0 e8 00 c0       	push   0xc000e8c0
c000a258:	e8 33 e2 ff ff       	call   c0008490 <panic_spin>
c000a25d:	83 c4 10             	add    esp,0x10
c000a260:	50                   	push   eax
c000a261:	83 c3 2c             	add    ebx,0x2c
c000a264:	50                   	push   eax
c000a265:	56                   	push   esi
c000a266:	68 8c e6 02 c0       	push   0xc002e68c
c000a26b:	e8 53 09 00 00       	call   c000abc3 <list_append>
c000a270:	58                   	pop    eax
c000a271:	5a                   	pop    edx
c000a272:	53                   	push   ebx
c000a273:	68 74 e6 02 c0       	push   0xc002e674
c000a278:	e8 9f 09 00 00       	call   c000ac1c <list_find>
c000a27d:	83 c4 10             	add    esp,0x10
c000a280:	85 c0                	test   eax,eax
c000a282:	74 19                	je     c000a29d <process_execute+0xbd>
c000a284:	68 29 e9 00 c0       	push   0xc000e929
c000a289:	68 98 e9 00 c0       	push   0xc000e998
c000a28e:	6a 73                	push   0x73
c000a290:	68 c0 e8 00 c0       	push   0xc000e8c0
c000a295:	e8 f6 e1 ff ff       	call   c0008490 <panic_spin>
c000a29a:	83 c4 10             	add    esp,0x10
c000a29d:	56                   	push   esi
c000a29e:	56                   	push   esi
c000a29f:	53                   	push   ebx
c000a2a0:	68 74 e6 02 c0       	push   0xc002e674
c000a2a5:	e8 19 09 00 00       	call   c000abc3 <list_append>
c000a2aa:	83 c4 10             	add    esp,0x10
c000a2ad:	89 7d 08             	mov    DWORD PTR [ebp+0x8],edi
c000a2b0:	8d 65 f4             	lea    esp,[ebp-0xc]
c000a2b3:	5b                   	pop    ebx
c000a2b4:	5e                   	pop    esi
c000a2b5:	5f                   	pop    edi
c000a2b6:	5d                   	pop    ebp
c000a2b7:	e9 2f ef ff ff       	jmp    c00091eb <intr_set_status>

c000a2bc <init_console>:
c000a2bc:	55                   	push   ebp
c000a2bd:	89 e5                	mov    ebp,esp
c000a2bf:	83 ec 14             	sub    esp,0x14
c000a2c2:	68 24 ee 00 c0       	push   0xc000ee24
c000a2c7:	e8 23 f6 ff ff       	call   c00098ef <lock_init>
c000a2cc:	83 c4 10             	add    esp,0x10
c000a2cf:	c9                   	leave  
c000a2d0:	c3                   	ret    

c000a2d1 <console_char>:
c000a2d1:	55                   	push   ebp
c000a2d2:	89 e5                	mov    ebp,esp
c000a2d4:	56                   	push   esi
c000a2d5:	8b 75 0c             	mov    esi,DWORD PTR [ebp+0xc]
c000a2d8:	53                   	push   ebx
c000a2d9:	8a 5d 08             	mov    bl,BYTE PTR [ebp+0x8]
c000a2dc:	83 ec 0c             	sub    esp,0xc
c000a2df:	68 24 ee 00 c0       	push   0xc000ee24
c000a2e4:	e8 92 f7 ff ff       	call   c0009a7b <lock_acquire>
c000a2e9:	58                   	pop    eax
c000a2ea:	5a                   	pop    edx
c000a2eb:	89 f2                	mov    edx,esi
c000a2ed:	0f b6 c2             	movzx  eax,dl
c000a2f0:	50                   	push   eax
c000a2f1:	0f b6 c3             	movzx  eax,bl
c000a2f4:	50                   	push   eax
c000a2f5:	e8 e6 0a 00 00       	call   c000ade0 <put_char>
c000a2fa:	83 c4 10             	add    esp,0x10
c000a2fd:	c7 45 08 24 ee 00 c0 	mov    DWORD PTR [ebp+0x8],0xc000ee24
c000a304:	8d 65 f8             	lea    esp,[ebp-0x8]
c000a307:	5b                   	pop    ebx
c000a308:	5e                   	pop    esi
c000a309:	5d                   	pop    ebp
c000a30a:	e9 c7 f7 ff ff       	jmp    c0009ad6 <lock_release>

c000a30f <console_str>:
c000a30f:	55                   	push   ebp
c000a310:	89 e5                	mov    ebp,esp
c000a312:	56                   	push   esi
c000a313:	8b 75 0c             	mov    esi,DWORD PTR [ebp+0xc]
c000a316:	53                   	push   ebx
c000a317:	8a 5d 08             	mov    bl,BYTE PTR [ebp+0x8]
c000a31a:	83 ec 0c             	sub    esp,0xc
c000a31d:	68 24 ee 00 c0       	push   0xc000ee24
c000a322:	e8 54 f7 ff ff       	call   c0009a7b <lock_acquire>
c000a327:	59                   	pop    ecx
c000a328:	58                   	pop    eax
c000a329:	0f b6 c3             	movzx  eax,bl
c000a32c:	56                   	push   esi
c000a32d:	50                   	push   eax
c000a32e:	e8 4e 0b 00 00       	call   c000ae81 <put_str>
c000a333:	83 c4 10             	add    esp,0x10
c000a336:	c7 45 08 24 ee 00 c0 	mov    DWORD PTR [ebp+0x8],0xc000ee24
c000a33d:	8d 65 f8             	lea    esp,[ebp-0x8]
c000a340:	5b                   	pop    ebx
c000a341:	5e                   	pop    esi
c000a342:	5d                   	pop    ebp
c000a343:	e9 8e f7 ff ff       	jmp    c0009ad6 <lock_release>

c000a348 <console_int>:
c000a348:	55                   	push   ebp
c000a349:	89 e5                	mov    ebp,esp
c000a34b:	57                   	push   edi
c000a34c:	56                   	push   esi
c000a34d:	53                   	push   ebx
c000a34e:	83 ec 18             	sub    esp,0x18
c000a351:	8b 7d 10             	mov    edi,DWORD PTR [ebp+0x10]
c000a354:	8b 75 0c             	mov    esi,DWORD PTR [ebp+0xc]
c000a357:	8a 5d 08             	mov    bl,BYTE PTR [ebp+0x8]
c000a35a:	68 24 ee 00 c0       	push   0xc000ee24
c000a35f:	e8 17 f7 ff ff       	call   c0009a7b <lock_acquire>
c000a364:	83 c4 0c             	add    esp,0xc
c000a367:	57                   	push   edi
c000a368:	56                   	push   esi
c000a369:	0f b6 c3             	movzx  eax,bl
c000a36c:	50                   	push   eax
c000a36d:	e8 71 0b 00 00       	call   c000aee3 <put_int>
c000a372:	83 c4 10             	add    esp,0x10
c000a375:	c7 45 08 24 ee 00 c0 	mov    DWORD PTR [ebp+0x8],0xc000ee24
c000a37c:	8d 65 f4             	lea    esp,[ebp-0xc]
c000a37f:	5b                   	pop    ebx
c000a380:	5e                   	pop    esi
c000a381:	5f                   	pop    edi
c000a382:	5d                   	pop    ebp
c000a383:	e9 4e f7 ff ff       	jmp    c0009ad6 <lock_release>

c000a388 <console_uint>:
c000a388:	55                   	push   ebp
c000a389:	89 e5                	mov    ebp,esp
c000a38b:	57                   	push   edi
c000a38c:	56                   	push   esi
c000a38d:	53                   	push   ebx
c000a38e:	83 ec 18             	sub    esp,0x18
c000a391:	8b 7d 10             	mov    edi,DWORD PTR [ebp+0x10]
c000a394:	8b 75 0c             	mov    esi,DWORD PTR [ebp+0xc]
c000a397:	8a 5d 08             	mov    bl,BYTE PTR [ebp+0x8]
c000a39a:	68 24 ee 00 c0       	push   0xc000ee24
c000a39f:	e8 d7 f6 ff ff       	call   c0009a7b <lock_acquire>
c000a3a4:	83 c4 0c             	add    esp,0xc
c000a3a7:	57                   	push   edi
c000a3a8:	56                   	push   esi
c000a3a9:	0f b6 c3             	movzx  eax,bl
c000a3ac:	50                   	push   eax
c000a3ad:	e8 f7 0a 00 00       	call   c000aea9 <put_uint>
c000a3b2:	83 c4 10             	add    esp,0x10
c000a3b5:	c7 45 08 24 ee 00 c0 	mov    DWORD PTR [ebp+0x8],0xc000ee24
c000a3bc:	8d 65 f4             	lea    esp,[ebp-0xc]
c000a3bf:	5b                   	pop    ebx
c000a3c0:	5e                   	pop    esi
c000a3c1:	5f                   	pop    edi
c000a3c2:	5d                   	pop    ebp
c000a3c3:	e9 0e f7 ff ff       	jmp    c0009ad6 <lock_release>

c000a3c8 <init_cpu>:
c000a3c8:	55                   	push   ebp
c000a3c9:	31 c0                	xor    eax,eax
c000a3cb:	89 e5                	mov    ebp,esp
c000a3cd:	b9 04 00 00 00       	mov    ecx,0x4
c000a3d2:	57                   	push   edi
c000a3d3:	56                   	push   esi
c000a3d4:	53                   	push   ebx
c000a3d5:	8d 7d d8             	lea    edi,[ebp-0x28]
c000a3d8:	83 ec 3c             	sub    esp,0x3c
c000a3db:	f3 ab                	rep stos DWORD PTR es:[edi],eax
c000a3dd:	8d 7d c7             	lea    edi,[ebp-0x39]
c000a3e0:	8d 75 c7             	lea    esi,[ebp-0x39]
c000a3e3:	b1 11                	mov    cl,0x11
c000a3e5:	f3 aa                	rep stos BYTE PTR es:[edi],al
c000a3e7:	bf 02 00 00 80       	mov    edi,0x80000002
c000a3ec:	eb 30                	jmp    c000a41e <init_cpu+0x56>
c000a3ee:	89 f8                	mov    eax,edi
c000a3f0:	31 c9                	xor    ecx,ecx
c000a3f2:	0f a2                	cpuid  
c000a3f4:	89 45 d8             	mov    DWORD PTR [ebp-0x28],eax
c000a3f7:	47                   	inc    edi
c000a3f8:	89 45 c7             	mov    DWORD PTR [ebp-0x39],eax
c000a3fb:	50                   	push   eax
c000a3fc:	50                   	push   eax
c000a3fd:	56                   	push   esi
c000a3fe:	6a 07                	push   0x7
c000a400:	89 5d dc             	mov    DWORD PTR [ebp-0x24],ebx
c000a403:	89 4d e0             	mov    DWORD PTR [ebp-0x20],ecx
c000a406:	89 55 e4             	mov    DWORD PTR [ebp-0x1c],edx
c000a409:	89 5d cb             	mov    DWORD PTR [ebp-0x35],ebx
c000a40c:	89 4d cf             	mov    DWORD PTR [ebp-0x31],ecx
c000a40f:	89 55 d3             	mov    DWORD PTR [ebp-0x2d],edx
c000a412:	c6 45 d7 00          	mov    BYTE PTR [ebp-0x29],0x0
c000a416:	e8 66 0a 00 00       	call   c000ae81 <put_str>
c000a41b:	83 c4 10             	add    esp,0x10
c000a41e:	81 ff 05 00 00 80    	cmp    edi,0x80000005
c000a424:	75 c8                	jne    c000a3ee <init_cpu+0x26>
c000a426:	8d 65 f4             	lea    esp,[ebp-0xc]
c000a429:	5b                   	pop    ebx
c000a42a:	5e                   	pop    esi
c000a42b:	5f                   	pop    edi
c000a42c:	5d                   	pop    ebp
c000a42d:	c3                   	ret    

c000a42e <cpu_info>:
c000a42e:	55                   	push   ebp
c000a42f:	31 c0                	xor    eax,eax
c000a431:	89 e5                	mov    ebp,esp
c000a433:	b9 04 00 00 00       	mov    ecx,0x4
c000a438:	57                   	push   edi
c000a439:	56                   	push   esi
c000a43a:	53                   	push   ebx
c000a43b:	8d 7d d8             	lea    edi,[ebp-0x28]
c000a43e:	83 ec 3c             	sub    esp,0x3c
c000a441:	f3 ab                	rep stos DWORD PTR es:[edi],eax
c000a443:	8d 7d c7             	lea    edi,[ebp-0x39]
c000a446:	8d 75 c7             	lea    esi,[ebp-0x39]
c000a449:	b1 11                	mov    cl,0x11
c000a44b:	f3 aa                	rep stos BYTE PTR es:[edi],al
c000a44d:	bf 02 00 00 80       	mov    edi,0x80000002
c000a452:	eb 30                	jmp    c000a484 <cpu_info+0x56>
c000a454:	89 f8                	mov    eax,edi
c000a456:	31 c9                	xor    ecx,ecx
c000a458:	0f a2                	cpuid  
c000a45a:	89 55 e4             	mov    DWORD PTR [ebp-0x1c],edx
c000a45d:	47                   	inc    edi
c000a45e:	89 55 d3             	mov    DWORD PTR [ebp-0x2d],edx
c000a461:	52                   	push   edx
c000a462:	52                   	push   edx
c000a463:	56                   	push   esi
c000a464:	6a 07                	push   0x7
c000a466:	89 45 d8             	mov    DWORD PTR [ebp-0x28],eax
c000a469:	89 5d dc             	mov    DWORD PTR [ebp-0x24],ebx
c000a46c:	89 4d e0             	mov    DWORD PTR [ebp-0x20],ecx
c000a46f:	89 45 c7             	mov    DWORD PTR [ebp-0x39],eax
c000a472:	89 5d cb             	mov    DWORD PTR [ebp-0x35],ebx
c000a475:	89 4d cf             	mov    DWORD PTR [ebp-0x31],ecx
c000a478:	c6 45 d7 00          	mov    BYTE PTR [ebp-0x29],0x0
c000a47c:	e8 00 0a 00 00       	call   c000ae81 <put_str>
c000a481:	83 c4 10             	add    esp,0x10
c000a484:	81 ff 05 00 00 80    	cmp    edi,0x80000005
c000a48a:	75 c8                	jne    c000a454 <cpu_info+0x26>
c000a48c:	8d 65 f4             	lea    esp,[ebp-0xc]
c000a48f:	5b                   	pop    ebx
c000a490:	5e                   	pop    esi
c000a491:	5f                   	pop    edi
c000a492:	5d                   	pop    ebp
c000a493:	c3                   	ret    

c000a494 <init_keyboard>:
c000a494:	55                   	push   ebp
c000a495:	89 e5                	mov    ebp,esp
c000a497:	83 ec 08             	sub    esp,0x8
c000a49a:	6a 40                	push   0x40
c000a49c:	6a 08                	push   0x8
c000a49e:	68 48 ee 00 c0       	push   0xc000ee48
c000a4a3:	68 a8 e6 02 c0       	push   0xc002e6a8
c000a4a8:	e8 1f 04 00 00       	call   c000a8cc <init_fifo>
c000a4ad:	83 c4 10             	add    esp,0x10
c000a4b0:	c9                   	leave  
c000a4b1:	c3                   	ret    

c000a4b2 <intr0x21_handler>:
c000a4b2:	55                   	push   ebp
c000a4b3:	b8 20 00 00 00       	mov    eax,0x20
c000a4b8:	89 e5                	mov    ebp,esp
c000a4ba:	89 c2                	mov    edx,eax
c000a4bc:	53                   	push   ebx
c000a4bd:	83 ec 14             	sub    esp,0x14
c000a4c0:	ee                   	out    dx,al
c000a4c1:	8b 0d 88 ee 00 c0    	mov    ecx,DWORD PTR ds:0xc000ee88
c000a4c7:	b2 60                	mov    dl,0x60
c000a4c9:	8b 1d 8c ee 00 c0    	mov    ebx,DWORD PTR ds:0xc000ee8c
c000a4cf:	ec                   	in     al,dx
c000a4d0:	66 3d e0 00          	cmp    ax,0xe0
c000a4d4:	75 0f                	jne    c000a4e5 <intr0x21_handler+0x33>
c000a4d6:	c7 05 90 ee 00 c0 01 	mov    DWORD PTR ds:0xc000ee90,0x1
c000a4dd:	00 00 00 
c000a4e0:	e9 87 01 00 00       	jmp    c000a66c <intr0x21_handler+0x1ba>
c000a4e5:	83 3d 90 ee 00 c0 01 	cmp    DWORD PTR ds:0xc000ee90,0x1
c000a4ec:	75 0e                	jne    c000a4fc <intr0x21_handler+0x4a>
c000a4ee:	66 0d 00 e0          	or     ax,0xe000
c000a4f2:	c7 05 90 ee 00 c0 00 	mov    DWORD PTR ds:0xc000ee90,0x0
c000a4f9:	00 00 00 
c000a4fc:	a8 80                	test   al,0x80
c000a4fe:	74 61                	je     c000a561 <intr0x21_handler+0xaf>
c000a500:	24 7f                	and    al,0x7f
c000a502:	66 83 f8 36          	cmp    ax,0x36
c000a506:	74 3b                	je     c000a543 <intr0x21_handler+0x91>
c000a508:	77 12                	ja     c000a51c <intr0x21_handler+0x6a>
c000a50a:	66 83 f8 1d          	cmp    ax,0x1d
c000a50e:	74 24                	je     c000a534 <intr0x21_handler+0x82>
c000a510:	66 83 f8 2a          	cmp    ax,0x2a
c000a514:	0f 85 52 01 00 00    	jne    c000a66c <intr0x21_handler+0x1ba>
c000a51a:	eb 27                	jmp    c000a543 <intr0x21_handler+0x91>
c000a51c:	66 3d 1d e0          	cmp    ax,0xe01d
c000a520:	74 12                	je     c000a534 <intr0x21_handler+0x82>
c000a522:	66 3d 38 e0          	cmp    ax,0xe038
c000a526:	74 2a                	je     c000a552 <intr0x21_handler+0xa0>
c000a528:	66 83 f8 38          	cmp    ax,0x38
c000a52c:	0f 85 3a 01 00 00    	jne    c000a66c <intr0x21_handler+0x1ba>
c000a532:	eb 1e                	jmp    c000a552 <intr0x21_handler+0xa0>
c000a534:	c7 05 94 ee 00 c0 00 	mov    DWORD PTR ds:0xc000ee94,0x0
c000a53b:	00 00 00 
c000a53e:	e9 29 01 00 00       	jmp    c000a66c <intr0x21_handler+0x1ba>
c000a543:	c7 05 88 ee 00 c0 00 	mov    DWORD PTR ds:0xc000ee88,0x0
c000a54a:	00 00 00 
c000a54d:	e9 1a 01 00 00       	jmp    c000a66c <intr0x21_handler+0x1ba>
c000a552:	c7 05 98 ee 00 c0 00 	mov    DWORD PTR ds:0xc000ee98,0x0
c000a559:	00 00 00 
c000a55c:	e9 0b 01 00 00       	jmp    c000a66c <intr0x21_handler+0x1ba>
c000a561:	8d 50 ff             	lea    edx,[eax-0x1]
c000a564:	66 83 fa 39          	cmp    dx,0x39
c000a568:	76 10                	jbe    c000a57a <intr0x21_handler+0xc8>
c000a56a:	66 3d 38 e0          	cmp    ax,0xe038
c000a56e:	74 0a                	je     c000a57a <intr0x21_handler+0xc8>
c000a570:	66 3d 1d e0          	cmp    ax,0xe01d
c000a574:	0f 85 f2 00 00 00    	jne    c000a66c <intr0x21_handler+0x1ba>
c000a57a:	66 83 f8 29          	cmp    ax,0x29
c000a57e:	74 2d                	je     c000a5ad <intr0x21_handler+0xfb>
c000a580:	66 83 f8 0d          	cmp    ax,0xd
c000a584:	76 27                	jbe    c000a5ad <intr0x21_handler+0xfb>
c000a586:	66 83 f8 1b          	cmp    ax,0x1b
c000a58a:	74 21                	je     c000a5ad <intr0x21_handler+0xfb>
c000a58c:	66 83 f8 1a          	cmp    ax,0x1a
c000a590:	74 1b                	je     c000a5ad <intr0x21_handler+0xfb>
c000a592:	66 83 f8 27          	cmp    ax,0x27
c000a596:	74 15                	je     c000a5ad <intr0x21_handler+0xfb>
c000a598:	66 83 f8 2b          	cmp    ax,0x2b
c000a59c:	74 0f                	je     c000a5ad <intr0x21_handler+0xfb>
c000a59e:	66 83 f8 28          	cmp    ax,0x28
c000a5a2:	74 09                	je     c000a5ad <intr0x21_handler+0xfb>
c000a5a4:	8d 50 cd             	lea    edx,[eax-0x33]
c000a5a7:	66 83 fa 02          	cmp    dx,0x2
c000a5ab:	77 06                	ja     c000a5b3 <intr0x21_handler+0x101>
c000a5ad:	49                   	dec    ecx
c000a5ae:	0f 94 c2             	sete   dl
c000a5b1:	eb 0f                	jmp    c000a5c2 <intr0x21_handler+0x110>
c000a5b3:	85 db                	test   ebx,ebx
c000a5b5:	74 06                	je     c000a5bd <intr0x21_handler+0x10b>
c000a5b7:	31 d2                	xor    edx,edx
c000a5b9:	85 c9                	test   ecx,ecx
c000a5bb:	75 08                	jne    c000a5c5 <intr0x21_handler+0x113>
c000a5bd:	09 cb                	or     ebx,ecx
c000a5bf:	0f 95 c2             	setne  dl
c000a5c2:	0f b6 d2             	movzx  edx,dl
c000a5c5:	66 25 ff 00          	and    ax,0xff
c000a5c9:	0f b7 c8             	movzx  ecx,ax
c000a5cc:	8a 94 4a 2c ea 00 c0 	mov    dl,BYTE PTR [edx+ecx*2-0x3fff15d4]
c000a5d3:	84 d2                	test   dl,dl
c000a5d5:	88 55 f7             	mov    BYTE PTR [ebp-0x9],dl
c000a5d8:	74 26                	je     c000a600 <intr0x21_handler+0x14e>
c000a5da:	83 ec 0c             	sub    esp,0xc
c000a5dd:	68 a8 e6 02 c0       	push   0xc002e6a8
c000a5e2:	e8 69 05 00 00       	call   c000ab50 <fifo_fill>
c000a5e7:	83 c4 10             	add    esp,0x10
c000a5ea:	85 c0                	test   eax,eax
c000a5ec:	75 7e                	jne    c000a66c <intr0x21_handler+0x1ba>
c000a5ee:	51                   	push   ecx
c000a5ef:	51                   	push   ecx
c000a5f0:	8d 45 f7             	lea    eax,[ebp-0x9]
c000a5f3:	50                   	push   eax
c000a5f4:	68 a8 e6 02 c0       	push   0xc002e6a8
c000a5f9:	e8 38 03 00 00       	call   c000a936 <fifo_put>
c000a5fe:	eb 69                	jmp    c000a669 <intr0x21_handler+0x1b7>
c000a600:	66 83 f8 36          	cmp    ax,0x36
c000a604:	74 2a                	je     c000a630 <intr0x21_handler+0x17e>
c000a606:	77 0e                	ja     c000a616 <intr0x21_handler+0x164>
c000a608:	66 83 f8 1d          	cmp    ax,0x1d
c000a60c:	74 16                	je     c000a624 <intr0x21_handler+0x172>
c000a60e:	66 83 f8 2a          	cmp    ax,0x2a
c000a612:	75 47                	jne    c000a65b <intr0x21_handler+0x1a9>
c000a614:	eb 1a                	jmp    c000a630 <intr0x21_handler+0x17e>
c000a616:	66 83 f8 38          	cmp    ax,0x38
c000a61a:	74 20                	je     c000a63c <intr0x21_handler+0x18a>
c000a61c:	66 83 f8 3a          	cmp    ax,0x3a
c000a620:	75 39                	jne    c000a65b <intr0x21_handler+0x1a9>
c000a622:	eb 24                	jmp    c000a648 <intr0x21_handler+0x196>
c000a624:	c7 05 94 ee 00 c0 01 	mov    DWORD PTR ds:0xc000ee94,0x1
c000a62b:	00 00 00 
c000a62e:	eb 3c                	jmp    c000a66c <intr0x21_handler+0x1ba>
c000a630:	c7 05 88 ee 00 c0 01 	mov    DWORD PTR ds:0xc000ee88,0x1
c000a637:	00 00 00 
c000a63a:	eb 30                	jmp    c000a66c <intr0x21_handler+0x1ba>
c000a63c:	c7 05 98 ee 00 c0 01 	mov    DWORD PTR ds:0xc000ee98,0x1
c000a643:	00 00 00 
c000a646:	eb 24                	jmp    c000a66c <intr0x21_handler+0x1ba>
c000a648:	31 c0                	xor    eax,eax
c000a64a:	83 3d 8c ee 00 c0 00 	cmp    DWORD PTR ds:0xc000ee8c,0x0
c000a651:	0f 94 c0             	sete   al
c000a654:	a3 8c ee 00 c0       	mov    ds:0xc000ee8c,eax
c000a659:	eb 11                	jmp    c000a66c <intr0x21_handler+0x1ba>
c000a65b:	52                   	push   edx
c000a65c:	52                   	push   edx
c000a65d:	68 f8 e9 00 c0       	push   0xc000e9f8
c000a662:	6a 04                	push   0x4
c000a664:	e8 18 08 00 00       	call   c000ae81 <put_str>
c000a669:	83 c4 10             	add    esp,0x10
c000a66c:	8b 5d fc             	mov    ebx,DWORD PTR [ebp-0x4]
c000a66f:	c9                   	leave  
c000a670:	c3                   	ret    
c000a671:	00 00                	add    BYTE PTR [eax],al
	...

c000a674 <get_time>:
c000a674:	55                   	push   ebp
c000a675:	89 e5                	mov    ebp,esp
c000a677:	57                   	push   edi
c000a678:	56                   	push   esi
c000a679:	be 70 00 00 00       	mov    esi,0x70
c000a67e:	53                   	push   ebx
c000a67f:	83 ec 1c             	sub    esp,0x1c
c000a682:	8b 7d 08             	mov    edi,DWORD PTR [ebp+0x8]
c000a685:	e8 2f ea ff ff       	call   c00090b9 <intr_get_status>
c000a68a:	89 45 e0             	mov    DWORD PTR [ebp-0x20],eax
c000a68d:	b8 89 00 00 00       	mov    eax,0x89
c000a692:	89 f2                	mov    edx,esi
c000a694:	ee                   	out    dx,al
c000a695:	bb 71 00 00 00       	mov    ebx,0x71
c000a69a:	89 da                	mov    edx,ebx
c000a69c:	ec                   	in     al,dx
c000a69d:	89 c1                	mov    ecx,eax
c000a69f:	89 f2                	mov    edx,esi
c000a6a1:	b8 b2 00 00 00       	mov    eax,0xb2
c000a6a6:	ee                   	out    dx,al
c000a6a7:	89 da                	mov    edx,ebx
c000a6a9:	ec                   	in     al,dx
c000a6aa:	c1 e0 08             	shl    eax,0x8
c000a6ad:	89 f2                	mov    edx,esi
c000a6af:	01 c1                	add    ecx,eax
c000a6b1:	b8 88 00 00 00       	mov    eax,0x88
c000a6b6:	89 4f 14             	mov    DWORD PTR [edi+0x14],ecx
c000a6b9:	ee                   	out    dx,al
c000a6ba:	89 da                	mov    edx,ebx
c000a6bc:	ec                   	in     al,dx
c000a6bd:	89 47 10             	mov    DWORD PTR [edi+0x10],eax
c000a6c0:	89 f2                	mov    edx,esi
c000a6c2:	b8 87 00 00 00       	mov    eax,0x87
c000a6c7:	ee                   	out    dx,al
c000a6c8:	89 da                	mov    edx,ebx
c000a6ca:	ec                   	in     al,dx
c000a6cb:	89 47 0c             	mov    DWORD PTR [edi+0xc],eax
c000a6ce:	89 f2                	mov    edx,esi
c000a6d0:	b8 84 00 00 00       	mov    eax,0x84
c000a6d5:	ee                   	out    dx,al
c000a6d6:	89 da                	mov    edx,ebx
c000a6d8:	ec                   	in     al,dx
c000a6d9:	89 47 08             	mov    DWORD PTR [edi+0x8],eax
c000a6dc:	89 f2                	mov    edx,esi
c000a6de:	b8 82 00 00 00       	mov    eax,0x82
c000a6e3:	ee                   	out    dx,al
c000a6e4:	89 da                	mov    edx,ebx
c000a6e6:	ec                   	in     al,dx
c000a6e7:	b9 80 00 00 00       	mov    ecx,0x80
c000a6ec:	89 f2                	mov    edx,esi
c000a6ee:	89 47 04             	mov    DWORD PTR [edi+0x4],eax
c000a6f1:	89 c8                	mov    eax,ecx
c000a6f3:	ee                   	out    dx,al
c000a6f4:	89 da                	mov    edx,ebx
c000a6f6:	ec                   	in     al,dx
c000a6f7:	89 45 e4             	mov    DWORD PTR [ebp-0x1c],eax
c000a6fa:	89 f2                	mov    edx,esi
c000a6fc:	89 07                	mov    DWORD PTR [edi],eax
c000a6fe:	89 c8                	mov    eax,ecx
c000a700:	ee                   	out    dx,al
c000a701:	89 da                	mov    edx,ebx
c000a703:	ec                   	in     al,dx
c000a704:	39 45 e4             	cmp    DWORD PTR [ebp-0x1c],eax
c000a707:	75 84                	jne    c000a68d <get_time+0x19>
c000a709:	b2 70                	mov    dl,0x70
c000a70b:	31 c0                	xor    eax,eax
c000a70d:	ee                   	out    dx,al
c000a70e:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
c000a711:	89 45 08             	mov    DWORD PTR [ebp+0x8],eax
c000a714:	83 c4 1c             	add    esp,0x1c
c000a717:	5b                   	pop    ebx
c000a718:	5e                   	pop    esi
c000a719:	5f                   	pop    edi
c000a71a:	5d                   	pop    ebp
c000a71b:	e9 cb ea ff ff       	jmp    c00091eb <intr_set_status>

c000a720 <init_pit>:
c000a720:	55                   	push   ebp
c000a721:	ba 43 00 00 00       	mov    edx,0x43
c000a726:	89 e5                	mov    ebp,esp
c000a728:	b8 34 00 00 00       	mov    eax,0x34
c000a72d:	ee                   	out    dx,al
c000a72e:	b2 40                	mov    dl,0x40
c000a730:	b0 9c                	mov    al,0x9c
c000a732:	ee                   	out    dx,al
c000a733:	b0 2e                	mov    al,0x2e
c000a735:	ee                   	out    dx,al
c000a736:	5d                   	pop    ebp
c000a737:	c3                   	ret    

c000a738 <intr0x20_handler>:
c000a738:	55                   	push   ebp
c000a739:	b8 20 00 00 00       	mov    eax,0x20
c000a73e:	89 e5                	mov    ebp,esp
c000a740:	83 ec 08             	sub    esp,0x8
c000a743:	89 c2                	mov    edx,eax
c000a745:	ee                   	out    dx,al
c000a746:	e8 9b f4 ff ff       	call   c0009be6 <running_thread>
c000a74b:	ff 05 a0 ee 00 c0    	inc    DWORD PTR ds:0xc000eea0
c000a751:	8a 50 19             	mov    dl,BYTE PTR [eax+0x19]
c000a754:	ff 40 1c             	inc    DWORD PTR [eax+0x1c]
c000a757:	84 d2                	test   dl,dl
c000a759:	75 06                	jne    c000a761 <intr0x20_handler+0x29>
c000a75b:	c9                   	leave  
c000a75c:	e9 fc f5 ff ff       	jmp    c0009d5d <schedule>
c000a761:	4a                   	dec    edx
c000a762:	88 50 19             	mov    BYTE PTR [eax+0x19],dl
c000a765:	c9                   	leave  
c000a766:	c3                   	ret    
	...

c000a768 <bitmap_init>:
c000a768:	55                   	push   ebp
c000a769:	89 e5                	mov    ebp,esp
c000a76b:	83 ec 0c             	sub    esp,0xc
c000a76e:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c000a771:	ff 30                	push   DWORD PTR [eax]
c000a773:	6a 00                	push   0x0
c000a775:	ff 70 04             	push   DWORD PTR [eax+0x4]
c000a778:	e8 a3 07 00 00       	call   c000af20 <memset>
c000a77d:	83 c4 10             	add    esp,0x10
c000a780:	c9                   	leave  
c000a781:	c3                   	ret    

c000a782 <bitmap_scan_test>:
c000a782:	55                   	push   ebp
c000a783:	89 e5                	mov    ebp,esp
c000a785:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c000a788:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
c000a78b:	5d                   	pop    ebp
c000a78c:	8b 52 04             	mov    edx,DWORD PTR [edx+0x4]
c000a78f:	89 c8                	mov    eax,ecx
c000a791:	83 e1 07             	and    ecx,0x7
c000a794:	c1 e8 03             	shr    eax,0x3
c000a797:	0f b6 04 02          	movzx  eax,BYTE PTR [edx+eax*1]
c000a79b:	ba 01 00 00 00       	mov    edx,0x1
c000a7a0:	d3 e2                	shl    edx,cl
c000a7a2:	21 d0                	and    eax,edx
c000a7a4:	c3                   	ret    

c000a7a5 <bitmap_alloc>:
c000a7a5:	55                   	push   ebp
c000a7a6:	89 e5                	mov    ebp,esp
c000a7a8:	57                   	push   edi
c000a7a9:	56                   	push   esi
c000a7aa:	31 f6                	xor    esi,esi
c000a7ac:	53                   	push   ebx
c000a7ad:	83 ec 1c             	sub    esp,0x1c
c000a7b0:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c000a7b3:	8b 43 04             	mov    eax,DWORD PTR [ebx+0x4]
c000a7b6:	eb 01                	jmp    c000a7b9 <bitmap_alloc+0x14>
c000a7b8:	46                   	inc    esi
c000a7b9:	80 3c 30 ff          	cmp    BYTE PTR [eax+esi*1],0xff
c000a7bd:	75 04                	jne    c000a7c3 <bitmap_alloc+0x1e>
c000a7bf:	3b 33                	cmp    esi,DWORD PTR [ebx]
c000a7c1:	72 f5                	jb     c000a7b8 <bitmap_alloc+0x13>
c000a7c3:	3b 33                	cmp    esi,DWORD PTR [ebx]
c000a7c5:	72 19                	jb     c000a7e0 <bitmap_alloc+0x3b>
c000a7c7:	68 f4 ea 00 c0       	push   0xc000eaf4
c000a7cc:	68 68 eb 00 c0       	push   0xc000eb68
c000a7d1:	6a 2e                	push   0x2e
c000a7d3:	68 18 eb 00 c0       	push   0xc000eb18
c000a7d8:	e8 b3 dc ff ff       	call   c0008490 <panic_spin>
c000a7dd:	83 c4 10             	add    esp,0x10
c000a7e0:	8b 13                	mov    edx,DWORD PTR [ebx]
c000a7e2:	83 c8 ff             	or     eax,0xffffffff
c000a7e5:	39 d6                	cmp    esi,edx
c000a7e7:	74 72                	je     c000a85b <bitmap_alloc+0xb6>
c000a7e9:	8b 43 04             	mov    eax,DWORD PTR [ebx+0x4]
c000a7ec:	31 c9                	xor    ecx,ecx
c000a7ee:	bf 01 00 00 00       	mov    edi,0x1
c000a7f3:	89 75 e4             	mov    DWORD PTR [ebp-0x1c],esi
c000a7f6:	89 55 dc             	mov    DWORD PTR [ebp-0x24],edx
c000a7f9:	8a 04 30             	mov    al,BYTE PTR [eax+esi*1]
c000a7fc:	eb 01                	jmp    c000a7ff <bitmap_alloc+0x5a>
c000a7fe:	41                   	inc    ecx
c000a7ff:	89 fe                	mov    esi,edi
c000a801:	d3 e6                	shl    esi,cl
c000a803:	89 f2                	mov    edx,esi
c000a805:	84 d0                	test   al,dl
c000a807:	75 f5                	jne    c000a7fe <bitmap_alloc+0x59>
c000a809:	8b 75 e4             	mov    esi,DWORD PTR [ebp-0x1c]
c000a80c:	83 7d 0c 01          	cmp    DWORD PTR [ebp+0xc],0x1
c000a810:	8b 55 dc             	mov    edx,DWORD PTR [ebp-0x24]
c000a813:	8d 0c f1             	lea    ecx,[ecx+esi*8]
c000a816:	89 c8                	mov    eax,ecx
c000a818:	74 41                	je     c000a85b <bitmap_alloc+0xb6>
c000a81a:	8d 3c d5 00 00 00 00 	lea    edi,[edx*8+0x0]
c000a821:	be 01 00 00 00       	mov    esi,0x1
c000a826:	29 cf                	sub    edi,ecx
c000a828:	8d 51 01             	lea    edx,[ecx+0x1]
c000a82b:	eb 27                	jmp    c000a854 <bitmap_alloc+0xaf>
c000a82d:	50                   	push   eax
c000a82e:	46                   	inc    esi
c000a82f:	50                   	push   eax
c000a830:	52                   	push   edx
c000a831:	53                   	push   ebx
c000a832:	89 55 e0             	mov    DWORD PTR [ebp-0x20],edx
c000a835:	e8 48 ff ff ff       	call   c000a782 <bitmap_scan_test>
c000a83a:	83 c4 10             	add    esp,0x10
c000a83d:	8b 55 e0             	mov    edx,DWORD PTR [ebp-0x20]
c000a840:	85 c0                	test   eax,eax
c000a842:	74 02                	je     c000a846 <bitmap_alloc+0xa1>
c000a844:	31 f6                	xor    esi,esi
c000a846:	3b 75 0c             	cmp    esi,DWORD PTR [ebp+0xc]
c000a849:	75 07                	jne    c000a852 <bitmap_alloc+0xad>
c000a84b:	29 f2                	sub    edx,esi
c000a84d:	8d 42 01             	lea    eax,[edx+0x1]
c000a850:	eb 09                	jmp    c000a85b <bitmap_alloc+0xb6>
c000a852:	4f                   	dec    edi
c000a853:	42                   	inc    edx
c000a854:	85 ff                	test   edi,edi
c000a856:	75 d5                	jne    c000a82d <bitmap_alloc+0x88>
c000a858:	83 c8 ff             	or     eax,0xffffffff
c000a85b:	8d 65 f4             	lea    esp,[ebp-0xc]
c000a85e:	5b                   	pop    ebx
c000a85f:	5e                   	pop    esi
c000a860:	5f                   	pop    edi
c000a861:	5d                   	pop    ebp
c000a862:	c3                   	ret    

c000a863 <bitmap_set>:
c000a863:	55                   	push   ebp
c000a864:	89 e5                	mov    ebp,esp
c000a866:	57                   	push   edi
c000a867:	56                   	push   esi
c000a868:	53                   	push   ebx
c000a869:	83 ec 0c             	sub    esp,0xc
c000a86c:	8a 5d 10             	mov    bl,BYTE PTR [ebp+0x10]
c000a86f:	8b 75 08             	mov    esi,DWORD PTR [ebp+0x8]
c000a872:	8b 7d 0c             	mov    edi,DWORD PTR [ebp+0xc]
c000a875:	80 fb 01             	cmp    bl,0x1
c000a878:	76 19                	jbe    c000a893 <bitmap_set+0x30>
c000a87a:	68 25 eb 00 c0       	push   0xc000eb25
c000a87f:	68 78 eb 00 c0       	push   0xc000eb78
c000a884:	6a 65                	push   0x65
c000a886:	68 18 eb 00 c0       	push   0xc000eb18
c000a88b:	e8 00 dc ff ff       	call   c0008490 <panic_spin>
c000a890:	83 c4 10             	add    esp,0x10
c000a893:	89 fa                	mov    edx,edi
c000a895:	89 f9                	mov    ecx,edi
c000a897:	c1 ea 03             	shr    edx,0x3
c000a89a:	83 e1 07             	and    ecx,0x7
c000a89d:	84 db                	test   bl,bl
c000a89f:	74 06                	je     c000a8a7 <bitmap_set+0x44>
c000a8a1:	fe cb                	dec    bl
c000a8a3:	75 1e                	jne    c000a8c3 <bitmap_set+0x60>
c000a8a5:	eb 10                	jmp    c000a8b7 <bitmap_set+0x54>
c000a8a7:	03 56 04             	add    edx,DWORD PTR [esi+0x4]
c000a8aa:	b8 01 00 00 00       	mov    eax,0x1
c000a8af:	d3 e0                	shl    eax,cl
c000a8b1:	f7 d0                	not    eax
c000a8b3:	20 02                	and    BYTE PTR [edx],al
c000a8b5:	eb 0c                	jmp    c000a8c3 <bitmap_set+0x60>
c000a8b7:	03 56 04             	add    edx,DWORD PTR [esi+0x4]
c000a8ba:	b8 01 00 00 00       	mov    eax,0x1
c000a8bf:	d3 e0                	shl    eax,cl
c000a8c1:	08 02                	or     BYTE PTR [edx],al
c000a8c3:	8d 65 f4             	lea    esp,[ebp-0xc]
c000a8c6:	5b                   	pop    ebx
c000a8c7:	5e                   	pop    esi
c000a8c8:	5f                   	pop    edi
c000a8c9:	5d                   	pop    ebp
c000a8ca:	c3                   	ret    
	...

c000a8cc <init_fifo>:
c000a8cc:	55                   	push   ebp
c000a8cd:	89 e5                	mov    ebp,esp
c000a8cf:	57                   	push   edi
c000a8d0:	56                   	push   esi
c000a8d1:	53                   	push   ebx
c000a8d2:	83 ec 28             	sub    esp,0x28
c000a8d5:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c000a8d8:	8b 75 10             	mov    esi,DWORD PTR [ebp+0x10]
c000a8db:	8b 45 14             	mov    eax,DWORD PTR [ebp+0x14]
c000a8de:	8b 7d 0c             	mov    edi,DWORD PTR [ebp+0xc]
c000a8e1:	53                   	push   ebx
c000a8e2:	89 45 e4             	mov    DWORD PTR [ebp-0x1c],eax
c000a8e5:	e8 05 f0 ff ff       	call   c00098ef <lock_init>
c000a8ea:	83 c4 10             	add    esp,0x10
c000a8ed:	83 fe 10             	cmp    esi,0x10
c000a8f0:	c7 43 24 00 00 00 00 	mov    DWORD PTR [ebx+0x24],0x0
c000a8f7:	c7 43 28 00 00 00 00 	mov    DWORD PTR [ebx+0x28],0x0
c000a8fe:	89 73 30             	mov    DWORD PTR [ebx+0x30],esi
c000a901:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
c000a904:	74 11                	je     c000a917 <init_fifo+0x4b>
c000a906:	7f 05                	jg     c000a90d <init_fifo+0x41>
c000a908:	83 fe 08             	cmp    esi,0x8
c000a90b:	eb 08                	jmp    c000a915 <init_fifo+0x49>
c000a90d:	83 fe 20             	cmp    esi,0x20
c000a910:	74 05                	je     c000a917 <init_fifo+0x4b>
c000a912:	83 fe 40             	cmp    esi,0x40
c000a915:	75 03                	jne    c000a91a <init_fifo+0x4e>
c000a917:	89 7b 2c             	mov    DWORD PTR [ebx+0x2c],edi
c000a91a:	89 43 34             	mov    DWORD PTR [ebx+0x34],eax
c000a91d:	89 43 38             	mov    DWORD PTR [ebx+0x38],eax
c000a920:	c7 43 3c 00 00 00 00 	mov    DWORD PTR [ebx+0x3c],0x0
c000a927:	c7 43 40 00 00 00 00 	mov    DWORD PTR [ebx+0x40],0x0
c000a92e:	8d 65 f4             	lea    esp,[ebp-0xc]
c000a931:	5b                   	pop    ebx
c000a932:	5e                   	pop    esi
c000a933:	5f                   	pop    edi
c000a934:	5d                   	pop    ebp
c000a935:	c3                   	ret    

c000a936 <fifo_put>:
c000a936:	55                   	push   ebp
c000a937:	89 e5                	mov    ebp,esp
c000a939:	57                   	push   edi
c000a93a:	56                   	push   esi
c000a93b:	53                   	push   ebx
c000a93c:	83 ec 1c             	sub    esp,0x1c
c000a93f:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c000a942:	8b 75 0c             	mov    esi,DWORD PTR [ebp+0xc]
c000a945:	e8 7f e7 ff ff       	call   c00090c9 <intr_disable>
c000a94a:	89 45 e4             	mov    DWORD PTR [ebp-0x1c],eax
c000a94d:	eb 28                	jmp    c000a977 <fifo_put+0x41>
c000a94f:	83 ec 0c             	sub    esp,0xc
c000a952:	53                   	push   ebx
c000a953:	e8 23 f1 ff ff       	call   c0009a7b <lock_acquire>
c000a958:	e8 89 f2 ff ff       	call   c0009be6 <running_thread>
c000a95d:	89 43 24             	mov    DWORD PTR [ebx+0x24],eax
c000a960:	c7 04 24 02 00 00 00 	mov    DWORD PTR [esp],0x2
c000a967:	e8 f0 f4 ff ff       	call   c0009e5c <thread_block>
c000a96c:	89 1c 24             	mov    DWORD PTR [esp],ebx
c000a96f:	e8 62 f1 ff ff       	call   c0009ad6 <lock_release>
c000a974:	83 c4 10             	add    esp,0x10
c000a977:	8b 43 38             	mov    eax,DWORD PTR [ebx+0x38]
c000a97a:	85 c0                	test   eax,eax
c000a97c:	74 d1                	je     c000a94f <fifo_put+0x19>
c000a97e:	48                   	dec    eax
c000a97f:	89 43 38             	mov    DWORD PTR [ebx+0x38],eax
c000a982:	8b 43 30             	mov    eax,DWORD PTR [ebx+0x30]
c000a985:	83 f8 10             	cmp    eax,0x10
c000a988:	74 28                	je     c000a9b2 <fifo_put+0x7c>
c000a98a:	83 f8 08             	cmp    eax,0x8
c000a98d:	74 23                	je     c000a9b2 <fifo_put+0x7c>
c000a98f:	83 f8 20             	cmp    eax,0x20
c000a992:	74 1e                	je     c000a9b2 <fifo_put+0x7c>
c000a994:	83 f8 40             	cmp    eax,0x40
c000a997:	74 19                	je     c000a9b2 <fifo_put+0x7c>
c000a999:	68 84 eb 00 c0       	push   0xc000eb84
c000a99e:	68 04 ec 00 c0       	push   0xc000ec04
c000a9a3:	6a 3b                	push   0x3b
c000a9a5:	68 d0 eb 00 c0       	push   0xc000ebd0
c000a9aa:	e8 e1 da ff ff       	call   c0008490 <panic_spin>
c000a9af:	83 c4 10             	add    esp,0x10
c000a9b2:	8b 53 30             	mov    edx,DWORD PTR [ebx+0x30]
c000a9b5:	8b 43 40             	mov    eax,DWORD PTR [ebx+0x40]
c000a9b8:	83 fa 10             	cmp    edx,0x10
c000a9bb:	74 1f                	je     c000a9dc <fifo_put+0xa6>
c000a9bd:	7f 07                	jg     c000a9c6 <fifo_put+0x90>
c000a9bf:	83 fa 08             	cmp    edx,0x8
c000a9c2:	75 3d                	jne    c000aa01 <fifo_put+0xcb>
c000a9c4:	eb 0c                	jmp    c000a9d2 <fifo_put+0x9c>
c000a9c6:	83 fa 20             	cmp    edx,0x20
c000a9c9:	74 1d                	je     c000a9e8 <fifo_put+0xb2>
c000a9cb:	83 fa 40             	cmp    edx,0x40
c000a9ce:	75 31                	jne    c000aa01 <fifo_put+0xcb>
c000a9d0:	eb 20                	jmp    c000a9f2 <fifo_put+0xbc>
c000a9d2:	8a 0e                	mov    cl,BYTE PTR [esi]
c000a9d4:	8b 53 2c             	mov    edx,DWORD PTR [ebx+0x2c]
c000a9d7:	88 0c 02             	mov    BYTE PTR [edx+eax*1],cl
c000a9da:	eb 25                	jmp    c000aa01 <fifo_put+0xcb>
c000a9dc:	66 8b 0e             	mov    cx,WORD PTR [esi]
c000a9df:	8b 53 2c             	mov    edx,DWORD PTR [ebx+0x2c]
c000a9e2:	66 89 0c 42          	mov    WORD PTR [edx+eax*2],cx
c000a9e6:	eb 19                	jmp    c000aa01 <fifo_put+0xcb>
c000a9e8:	8b 0e                	mov    ecx,DWORD PTR [esi]
c000a9ea:	8b 53 2c             	mov    edx,DWORD PTR [ebx+0x2c]
c000a9ed:	89 0c 82             	mov    DWORD PTR [edx+eax*4],ecx
c000a9f0:	eb 0f                	jmp    c000aa01 <fifo_put+0xcb>
c000a9f2:	8b 7e 04             	mov    edi,DWORD PTR [esi+0x4]
c000a9f5:	8b 53 2c             	mov    edx,DWORD PTR [ebx+0x2c]
c000a9f8:	8b 36                	mov    esi,DWORD PTR [esi]
c000a9fa:	89 7c c2 04          	mov    DWORD PTR [edx+eax*8+0x4],edi
c000a9fe:	89 34 c2             	mov    DWORD PTR [edx+eax*8],esi
c000aa01:	8b 43 40             	mov    eax,DWORD PTR [ebx+0x40]
c000aa04:	40                   	inc    eax
c000aa05:	99                   	cdq    
c000aa06:	f7 7b 34             	idiv   DWORD PTR [ebx+0x34]
c000aa09:	8b 43 28             	mov    eax,DWORD PTR [ebx+0x28]
c000aa0c:	85 c0                	test   eax,eax
c000aa0e:	89 53 40             	mov    DWORD PTR [ebx+0x40],edx
c000aa11:	74 13                	je     c000aa26 <fifo_put+0xf0>
c000aa13:	83 ec 0c             	sub    esp,0xc
c000aa16:	50                   	push   eax
c000aa17:	e8 8b f4 ff ff       	call   c0009ea7 <thread_unblock>
c000aa1c:	83 c4 10             	add    esp,0x10
c000aa1f:	c7 43 28 00 00 00 00 	mov    DWORD PTR [ebx+0x28],0x0
c000aa26:	83 ec 0c             	sub    esp,0xc
c000aa29:	ff 75 e4             	push   DWORD PTR [ebp-0x1c]
c000aa2c:	e8 ba e7 ff ff       	call   c00091eb <intr_set_status>
c000aa31:	8d 65 f4             	lea    esp,[ebp-0xc]
c000aa34:	31 c0                	xor    eax,eax
c000aa36:	5b                   	pop    ebx
c000aa37:	5e                   	pop    esi
c000aa38:	5f                   	pop    edi
c000aa39:	5d                   	pop    ebp
c000aa3a:	c3                   	ret    

c000aa3b <fifo_get>:
c000aa3b:	55                   	push   ebp
c000aa3c:	89 e5                	mov    ebp,esp
c000aa3e:	57                   	push   edi
c000aa3f:	56                   	push   esi
c000aa40:	53                   	push   ebx
c000aa41:	83 ec 0c             	sub    esp,0xc
c000aa44:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c000aa47:	8b 75 0c             	mov    esi,DWORD PTR [ebp+0xc]
c000aa4a:	e8 7a e6 ff ff       	call   c00090c9 <intr_disable>
c000aa4f:	89 c7                	mov    edi,eax
c000aa51:	8b 43 30             	mov    eax,DWORD PTR [ebx+0x30]
c000aa54:	83 f8 10             	cmp    eax,0x10
c000aa57:	74 4f                	je     c000aaa8 <fifo_get+0x6d>
c000aa59:	83 f8 08             	cmp    eax,0x8
c000aa5c:	74 4a                	je     c000aaa8 <fifo_get+0x6d>
c000aa5e:	83 f8 20             	cmp    eax,0x20
c000aa61:	74 45                	je     c000aaa8 <fifo_get+0x6d>
c000aa63:	83 f8 40             	cmp    eax,0x40
c000aa66:	74 40                	je     c000aaa8 <fifo_get+0x6d>
c000aa68:	68 84 eb 00 c0       	push   0xc000eb84
c000aa6d:	68 10 ec 00 c0       	push   0xc000ec10
c000aa72:	6a 5a                	push   0x5a
c000aa74:	68 d0 eb 00 c0       	push   0xc000ebd0
c000aa79:	e8 12 da ff ff       	call   c0008490 <panic_spin>
c000aa7e:	eb 25                	jmp    c000aaa5 <fifo_get+0x6a>
c000aa80:	83 ec 0c             	sub    esp,0xc
c000aa83:	53                   	push   ebx
c000aa84:	e8 f2 ef ff ff       	call   c0009a7b <lock_acquire>
c000aa89:	e8 58 f1 ff ff       	call   c0009be6 <running_thread>
c000aa8e:	89 43 28             	mov    DWORD PTR [ebx+0x28],eax
c000aa91:	c7 04 24 02 00 00 00 	mov    DWORD PTR [esp],0x2
c000aa98:	e8 bf f3 ff ff       	call   c0009e5c <thread_block>
c000aa9d:	89 1c 24             	mov    DWORD PTR [esp],ebx
c000aaa0:	e8 31 f0 ff ff       	call   c0009ad6 <lock_release>
c000aaa5:	83 c4 10             	add    esp,0x10
c000aaa8:	8b 43 38             	mov    eax,DWORD PTR [ebx+0x38]
c000aaab:	3b 43 34             	cmp    eax,DWORD PTR [ebx+0x34]
c000aaae:	74 d0                	je     c000aa80 <fifo_get+0x45>
c000aab0:	8b 53 30             	mov    edx,DWORD PTR [ebx+0x30]
c000aab3:	40                   	inc    eax
c000aab4:	89 43 38             	mov    DWORD PTR [ebx+0x38],eax
c000aab7:	8b 43 3c             	mov    eax,DWORD PTR [ebx+0x3c]
c000aaba:	83 fa 10             	cmp    edx,0x10
c000aabd:	74 1f                	je     c000aade <fifo_get+0xa3>
c000aabf:	7f 07                	jg     c000aac8 <fifo_get+0x8d>
c000aac1:	83 fa 08             	cmp    edx,0x8
c000aac4:	75 3e                	jne    c000ab04 <fifo_get+0xc9>
c000aac6:	eb 0c                	jmp    c000aad4 <fifo_get+0x99>
c000aac8:	83 fa 20             	cmp    edx,0x20
c000aacb:	74 1d                	je     c000aaea <fifo_get+0xaf>
c000aacd:	83 fa 40             	cmp    edx,0x40
c000aad0:	75 32                	jne    c000ab04 <fifo_get+0xc9>
c000aad2:	eb 20                	jmp    c000aaf4 <fifo_get+0xb9>
c000aad4:	8b 53 2c             	mov    edx,DWORD PTR [ebx+0x2c]
c000aad7:	8a 04 02             	mov    al,BYTE PTR [edx+eax*1]
c000aada:	88 06                	mov    BYTE PTR [esi],al
c000aadc:	eb 26                	jmp    c000ab04 <fifo_get+0xc9>
c000aade:	8b 53 2c             	mov    edx,DWORD PTR [ebx+0x2c]
c000aae1:	66 8b 04 42          	mov    ax,WORD PTR [edx+eax*2]
c000aae5:	66 89 06             	mov    WORD PTR [esi],ax
c000aae8:	eb 1a                	jmp    c000ab04 <fifo_get+0xc9>
c000aaea:	8b 53 2c             	mov    edx,DWORD PTR [ebx+0x2c]
c000aaed:	8b 04 82             	mov    eax,DWORD PTR [edx+eax*4]
c000aaf0:	89 06                	mov    DWORD PTR [esi],eax
c000aaf2:	eb 10                	jmp    c000ab04 <fifo_get+0xc9>
c000aaf4:	8b 53 2c             	mov    edx,DWORD PTR [ebx+0x2c]
c000aaf7:	8d 14 c2             	lea    edx,[edx+eax*8]
c000aafa:	8b 02                	mov    eax,DWORD PTR [edx]
c000aafc:	8b 52 04             	mov    edx,DWORD PTR [edx+0x4]
c000aaff:	89 06                	mov    DWORD PTR [esi],eax
c000ab01:	89 56 04             	mov    DWORD PTR [esi+0x4],edx
c000ab04:	8b 43 3c             	mov    eax,DWORD PTR [ebx+0x3c]
c000ab07:	40                   	inc    eax
c000ab08:	99                   	cdq    
c000ab09:	f7 7b 34             	idiv   DWORD PTR [ebx+0x34]
c000ab0c:	8b 43 24             	mov    eax,DWORD PTR [ebx+0x24]
c000ab0f:	85 c0                	test   eax,eax
c000ab11:	89 53 3c             	mov    DWORD PTR [ebx+0x3c],edx
c000ab14:	74 13                	je     c000ab29 <fifo_get+0xee>
c000ab16:	83 ec 0c             	sub    esp,0xc
c000ab19:	50                   	push   eax
c000ab1a:	e8 88 f3 ff ff       	call   c0009ea7 <thread_unblock>
c000ab1f:	83 c4 10             	add    esp,0x10
c000ab22:	c7 43 24 00 00 00 00 	mov    DWORD PTR [ebx+0x24],0x0
c000ab29:	83 ec 0c             	sub    esp,0xc
c000ab2c:	57                   	push   edi
c000ab2d:	e8 b9 e6 ff ff       	call   c00091eb <intr_set_status>
c000ab32:	8d 65 f4             	lea    esp,[ebp-0xc]
c000ab35:	31 c0                	xor    eax,eax
c000ab37:	5b                   	pop    ebx
c000ab38:	5e                   	pop    esi
c000ab39:	5f                   	pop    edi
c000ab3a:	5d                   	pop    ebp
c000ab3b:	c3                   	ret    

c000ab3c <fifo_empty>:
c000ab3c:	55                   	push   ebp
c000ab3d:	89 e5                	mov    ebp,esp
c000ab3f:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c000ab42:	5d                   	pop    ebp
c000ab43:	8b 50 34             	mov    edx,DWORD PTR [eax+0x34]
c000ab46:	39 50 38             	cmp    DWORD PTR [eax+0x38],edx
c000ab49:	0f 94 c0             	sete   al
c000ab4c:	0f b6 c0             	movzx  eax,al
c000ab4f:	c3                   	ret    

c000ab50 <fifo_fill>:
c000ab50:	55                   	push   ebp
c000ab51:	89 e5                	mov    ebp,esp
c000ab53:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c000ab56:	5d                   	pop    ebp
c000ab57:	83 78 38 00          	cmp    DWORD PTR [eax+0x38],0x0
c000ab5b:	0f 94 c0             	sete   al
c000ab5e:	0f b6 c0             	movzx  eax,al
c000ab61:	c3                   	ret    
	...

c000ab64 <list_init>:
c000ab64:	55                   	push   ebp
c000ab65:	89 e5                	mov    ebp,esp
c000ab67:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c000ab6a:	8d 50 0c             	lea    edx,[eax+0xc]
c000ab6d:	c7 00 00 00 00 00    	mov    DWORD PTR [eax],0x0
c000ab73:	89 50 08             	mov    DWORD PTR [eax+0x8],edx
c000ab76:	89 40 0c             	mov    DWORD PTR [eax+0xc],eax
c000ab79:	c7 40 14 00 00 00 00 	mov    DWORD PTR [eax+0x14],0x0
c000ab80:	5d                   	pop    ebp
c000ab81:	c3                   	ret    

c000ab82 <list_in>:
c000ab82:	55                   	push   ebp
c000ab83:	89 e5                	mov    ebp,esp
c000ab85:	56                   	push   esi
c000ab86:	8b 75 08             	mov    esi,DWORD PTR [ebp+0x8]
c000ab89:	53                   	push   ebx
c000ab8a:	8b 5d 0c             	mov    ebx,DWORD PTR [ebp+0xc]
c000ab8d:	e8 37 e5 ff ff       	call   c00090c9 <intr_disable>
c000ab92:	8b 13                	mov    edx,DWORD PTR [ebx]
c000ab94:	89 72 08             	mov    DWORD PTR [edx+0x8],esi
c000ab97:	8b 13                	mov    edx,DWORD PTR [ebx]
c000ab99:	89 5e 08             	mov    DWORD PTR [esi+0x8],ebx
c000ab9c:	89 16                	mov    DWORD PTR [esi],edx
c000ab9e:	89 33                	mov    DWORD PTR [ebx],esi
c000aba0:	89 45 08             	mov    DWORD PTR [ebp+0x8],eax
c000aba3:	5b                   	pop    ebx
c000aba4:	5e                   	pop    esi
c000aba5:	5d                   	pop    ebp
c000aba6:	e9 40 e6 ff ff       	jmp    c00091eb <intr_set_status>

c000abab <list_push>:
c000abab:	55                   	push   ebp
c000abac:	89 e5                	mov    ebp,esp
c000abae:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c000abb1:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c000abb4:	8b 52 08             	mov    edx,DWORD PTR [edx+0x8]
c000abb7:	89 45 08             	mov    DWORD PTR [ebp+0x8],eax
c000abba:	89 55 0c             	mov    DWORD PTR [ebp+0xc],edx
c000abbd:	5d                   	pop    ebp
c000abbe:	e9 bf ff ff ff       	jmp    c000ab82 <list_in>

c000abc3 <list_append>:
c000abc3:	55                   	push   ebp
c000abc4:	89 e5                	mov    ebp,esp
c000abc6:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c000abc9:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c000abcc:	83 c2 0c             	add    edx,0xc
c000abcf:	89 55 0c             	mov    DWORD PTR [ebp+0xc],edx
c000abd2:	89 45 08             	mov    DWORD PTR [ebp+0x8],eax
c000abd5:	5d                   	pop    ebp
c000abd6:	e9 a7 ff ff ff       	jmp    c000ab82 <list_in>

c000abdb <list_remove>:
c000abdb:	55                   	push   ebp
c000abdc:	89 e5                	mov    ebp,esp
c000abde:	53                   	push   ebx
c000abdf:	50                   	push   eax
c000abe0:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c000abe3:	e8 e1 e4 ff ff       	call   c00090c9 <intr_disable>
c000abe8:	8b 13                	mov    edx,DWORD PTR [ebx]
c000abea:	8b 4b 08             	mov    ecx,DWORD PTR [ebx+0x8]
c000abed:	89 4a 08             	mov    DWORD PTR [edx+0x8],ecx
c000abf0:	8b 53 08             	mov    edx,DWORD PTR [ebx+0x8]
c000abf3:	8b 0b                	mov    ecx,DWORD PTR [ebx]
c000abf5:	89 0a                	mov    DWORD PTR [edx],ecx
c000abf7:	89 45 08             	mov    DWORD PTR [ebp+0x8],eax
c000abfa:	5a                   	pop    edx
c000abfb:	5b                   	pop    ebx
c000abfc:	5d                   	pop    ebp
c000abfd:	e9 e9 e5 ff ff       	jmp    c00091eb <intr_set_status>

c000ac02 <list_pop>:
c000ac02:	55                   	push   ebp
c000ac03:	89 e5                	mov    ebp,esp
c000ac05:	53                   	push   ebx
c000ac06:	83 ec 10             	sub    esp,0x10
c000ac09:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c000ac0c:	8b 58 08             	mov    ebx,DWORD PTR [eax+0x8]
c000ac0f:	53                   	push   ebx
c000ac10:	e8 c6 ff ff ff       	call   c000abdb <list_remove>
c000ac15:	89 d8                	mov    eax,ebx
c000ac17:	8b 5d fc             	mov    ebx,DWORD PTR [ebp-0x4]
c000ac1a:	c9                   	leave  
c000ac1b:	c3                   	ret    

c000ac1c <list_find>:
c000ac1c:	55                   	push   ebp
c000ac1d:	89 e5                	mov    ebp,esp
c000ac1f:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c000ac22:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
c000ac25:	8b 42 08             	mov    eax,DWORD PTR [edx+0x8]
c000ac28:	83 c2 0c             	add    edx,0xc
c000ac2b:	eb 07                	jmp    c000ac34 <list_find+0x18>
c000ac2d:	39 c8                	cmp    eax,ecx
c000ac2f:	74 0b                	je     c000ac3c <list_find+0x20>
c000ac31:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
c000ac34:	39 d0                	cmp    eax,edx
c000ac36:	75 f5                	jne    c000ac2d <list_find+0x11>
c000ac38:	31 c0                	xor    eax,eax
c000ac3a:	eb 05                	jmp    c000ac41 <list_find+0x25>
c000ac3c:	b8 01 00 00 00       	mov    eax,0x1
c000ac41:	5d                   	pop    ebp
c000ac42:	c3                   	ret    

c000ac43 <list_traversal>:
c000ac43:	55                   	push   ebp
c000ac44:	89 e5                	mov    ebp,esp
c000ac46:	57                   	push   edi
c000ac47:	56                   	push   esi
c000ac48:	53                   	push   ebx
c000ac49:	83 ec 0c             	sub    esp,0xc
c000ac4c:	8b 75 08             	mov    esi,DWORD PTR [ebp+0x8]
c000ac4f:	8b 7d 10             	mov    edi,DWORD PTR [ebp+0x10]
c000ac52:	8b 5e 08             	mov    ebx,DWORD PTR [esi+0x8]
c000ac55:	83 c6 0c             	add    esi,0xc
c000ac58:	eb 11                	jmp    c000ac6b <list_traversal+0x28>
c000ac5a:	51                   	push   ecx
c000ac5b:	51                   	push   ecx
c000ac5c:	57                   	push   edi
c000ac5d:	53                   	push   ebx
c000ac5e:	ff 55 0c             	call   DWORD PTR [ebp+0xc]
c000ac61:	83 c4 10             	add    esp,0x10
c000ac64:	85 c0                	test   eax,eax
c000ac66:	75 09                	jne    c000ac71 <list_traversal+0x2e>
c000ac68:	8b 5b 08             	mov    ebx,DWORD PTR [ebx+0x8]
c000ac6b:	39 f3                	cmp    ebx,esi
c000ac6d:	75 eb                	jne    c000ac5a <list_traversal+0x17>
c000ac6f:	31 db                	xor    ebx,ebx
c000ac71:	8d 65 f4             	lea    esp,[ebp-0xc]
c000ac74:	89 d8                	mov    eax,ebx
c000ac76:	5b                   	pop    ebx
c000ac77:	5e                   	pop    esi
c000ac78:	5f                   	pop    edi
c000ac79:	5d                   	pop    ebp
c000ac7a:	c3                   	ret    

c000ac7b <list_len>:
c000ac7b:	55                   	push   ebp
c000ac7c:	31 c0                	xor    eax,eax
c000ac7e:	89 e5                	mov    ebp,esp
c000ac80:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
c000ac83:	8b 51 08             	mov    edx,DWORD PTR [ecx+0x8]
c000ac86:	83 c1 0c             	add    ecx,0xc
c000ac89:	eb 04                	jmp    c000ac8f <list_len+0x14>
c000ac8b:	8b 52 08             	mov    edx,DWORD PTR [edx+0x8]
c000ac8e:	40                   	inc    eax
c000ac8f:	39 ca                	cmp    edx,ecx
c000ac91:	75 f8                	jne    c000ac8b <list_len+0x10>
c000ac93:	5d                   	pop    ebp
c000ac94:	c3                   	ret    

c000ac95 <list_empty>:
c000ac95:	55                   	push   ebp
c000ac96:	89 e5                	mov    ebp,esp
c000ac98:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c000ac9b:	5d                   	pop    ebp
c000ac9c:	8d 50 0c             	lea    edx,[eax+0xc]
c000ac9f:	39 50 08             	cmp    DWORD PTR [eax+0x8],edx
c000aca2:	0f 94 c0             	sete   al
c000aca5:	0f b6 c0             	movzx  eax,al
c000aca8:	c3                   	ret    
c000aca9:	00 00                	add    BYTE PTR [eax],al
	...

c000acac <itoa>:
c000acac:	55                   	push   ebp
c000acad:	89 e5                	mov    ebp,esp
c000acaf:	57                   	push   edi
c000acb0:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
c000acb3:	56                   	push   esi
c000acb4:	8b 75 08             	mov    esi,DWORD PTR [ebp+0x8]
c000acb7:	53                   	push   ebx
c000acb8:	8b 7d 10             	mov    edi,DWORD PTR [ebp+0x10]
c000acbb:	31 db                	xor    ebx,ebx
c000acbd:	89 f0                	mov    eax,esi
c000acbf:	99                   	cdq    
c000acc0:	89 d0                	mov    eax,edx
c000acc2:	31 f0                	xor    eax,esi
c000acc4:	29 d0                	sub    eax,edx
c000acc6:	eb 02                	jmp    c000acca <itoa+0x1e>
c000acc8:	89 d3                	mov    ebx,edx
c000acca:	99                   	cdq    
c000accb:	f7 ff                	idiv   edi
c000accd:	8a 92 a4 ec 00 c0    	mov    dl,BYTE PTR [edx-0x3fff135c]
c000acd3:	85 c0                	test   eax,eax
c000acd5:	88 14 19             	mov    BYTE PTR [ecx+ebx*1],dl
c000acd8:	8d 53 01             	lea    edx,[ebx+0x1]
c000acdb:	7f eb                	jg     c000acc8 <itoa+0x1c>
c000acdd:	85 f6                	test   esi,esi
c000acdf:	79 07                	jns    c000ace8 <itoa+0x3c>
c000ace1:	c6 04 11 2d          	mov    BYTE PTR [ecx+edx*1],0x2d
c000ace5:	8d 53 02             	lea    edx,[ebx+0x2]
c000ace8:	c6 04 11 00          	mov    BYTE PTR [ecx+edx*1],0x0
c000acec:	89 c8                	mov    eax,ecx
c000acee:	eb 01                	jmp    c000acf1 <itoa+0x45>
c000acf0:	40                   	inc    eax
c000acf1:	80 38 00             	cmp    BYTE PTR [eax],0x0
c000acf4:	75 fa                	jne    c000acf0 <itoa+0x44>
c000acf6:	eb 09                	jmp    c000ad01 <itoa+0x55>
c000acf8:	8a 11                	mov    dl,BYTE PTR [ecx]
c000acfa:	8a 18                	mov    bl,BYTE PTR [eax]
c000acfc:	88 19                	mov    BYTE PTR [ecx],bl
c000acfe:	41                   	inc    ecx
c000acff:	88 10                	mov    BYTE PTR [eax],dl
c000ad01:	48                   	dec    eax
c000ad02:	39 c8                	cmp    eax,ecx
c000ad04:	77 f2                	ja     c000acf8 <itoa+0x4c>
c000ad06:	5b                   	pop    ebx
c000ad07:	5e                   	pop    esi
c000ad08:	5f                   	pop    edi
c000ad09:	5d                   	pop    ebp
c000ad0a:	c3                   	ret    

c000ad0b <utoa>:
c000ad0b:	55                   	push   ebp
c000ad0c:	89 e5                	mov    ebp,esp
c000ad0e:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c000ad11:	56                   	push   esi
c000ad12:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
c000ad15:	8b 75 10             	mov    esi,DWORD PTR [ebp+0x10]
c000ad18:	53                   	push   ebx
c000ad19:	31 db                	xor    ebx,ebx
c000ad1b:	31 d2                	xor    edx,edx
c000ad1d:	f7 f6                	div    esi
c000ad1f:	8a 92 cc ec 00 c0    	mov    dl,BYTE PTR [edx-0x3fff1334]
c000ad25:	88 14 19             	mov    BYTE PTR [ecx+ebx*1],dl
c000ad28:	43                   	inc    ebx
c000ad29:	85 c0                	test   eax,eax
c000ad2b:	75 ee                	jne    c000ad1b <utoa+0x10>
c000ad2d:	c6 04 19 00          	mov    BYTE PTR [ecx+ebx*1],0x0
c000ad31:	89 c8                	mov    eax,ecx
c000ad33:	eb 01                	jmp    c000ad36 <utoa+0x2b>
c000ad35:	40                   	inc    eax
c000ad36:	80 38 00             	cmp    BYTE PTR [eax],0x0
c000ad39:	75 fa                	jne    c000ad35 <utoa+0x2a>
c000ad3b:	eb 09                	jmp    c000ad46 <utoa+0x3b>
c000ad3d:	8a 11                	mov    dl,BYTE PTR [ecx]
c000ad3f:	8a 18                	mov    bl,BYTE PTR [eax]
c000ad41:	88 19                	mov    BYTE PTR [ecx],bl
c000ad43:	41                   	inc    ecx
c000ad44:	88 10                	mov    BYTE PTR [eax],dl
c000ad46:	48                   	dec    eax
c000ad47:	39 c8                	cmp    eax,ecx
c000ad49:	77 f2                	ja     c000ad3d <utoa+0x32>
c000ad4b:	5b                   	pop    ebx
c000ad4c:	5e                   	pop    esi
c000ad4d:	5d                   	pop    ebp
c000ad4e:	c3                   	ret    

c000ad4f <roll_screen>:
c000ad4f:	55                   	push   ebp
c000ad50:	89 e5                	mov    ebp,esp
c000ad52:	53                   	push   ebx
c000ad53:	83 3d 14 7c 00 00 00 	cmp    DWORD PTR ds:0x7c14,0x0
c000ad5a:	75 2c                	jne    c000ad88 <roll_screen+0x39>
c000ad5c:	a1 20 7c 00 00       	mov    eax,ds:0x7c20
c000ad61:	8b 0d 18 7c 00 00    	mov    ecx,DWORD PTR ds:0x7c18
c000ad67:	8d 1c 41             	lea    ebx,[ecx+eax*2]
c000ad6a:	31 c0                	xor    eax,eax
c000ad6c:	eb 09                	jmp    c000ad77 <roll_screen+0x28>
c000ad6e:	66 8b 14 43          	mov    dx,WORD PTR [ebx+eax*2]
c000ad72:	66 89 14 41          	mov    WORD PTR [ecx+eax*2],dx
c000ad76:	40                   	inc    eax
c000ad77:	8b 15 24 7c 00 00    	mov    edx,DWORD PTR ds:0x7c24
c000ad7d:	0f af 15 20 7c 00 00 	imul   edx,DWORD PTR ds:0x7c20
c000ad84:	39 d0                	cmp    eax,edx
c000ad86:	72 e6                	jb     c000ad6e <roll_screen+0x1f>
c000ad88:	5b                   	pop    ebx
c000ad89:	5d                   	pop    ebp
c000ad8a:	c3                   	ret    

c000ad8b <get_cursor>:
c000ad8b:	55                   	push   ebp
c000ad8c:	ba d4 03 00 00       	mov    edx,0x3d4
c000ad91:	89 e5                	mov    ebp,esp
c000ad93:	b8 0e 00 00 00       	mov    eax,0xe
c000ad98:	53                   	push   ebx
c000ad99:	ee                   	out    dx,al
c000ad9a:	bb d5 03 00 00       	mov    ebx,0x3d5
c000ad9f:	89 da                	mov    edx,ebx
c000ada1:	ec                   	in     al,dx
c000ada2:	89 c1                	mov    ecx,eax
c000ada4:	b2 d4                	mov    dl,0xd4
c000ada6:	b8 0f 00 00 00       	mov    eax,0xf
c000adab:	ee                   	out    dx,al
c000adac:	89 da                	mov    edx,ebx
c000adae:	ec                   	in     al,dx
c000adaf:	c1 e1 08             	shl    ecx,0x8
c000adb2:	09 c1                	or     ecx,eax
c000adb4:	89 c8                	mov    eax,ecx
c000adb6:	5b                   	pop    ebx
c000adb7:	5d                   	pop    ebp
c000adb8:	c3                   	ret    

c000adb9 <set_cursor>:
c000adb9:	55                   	push   ebp
c000adba:	ba d4 03 00 00       	mov    edx,0x3d4
c000adbf:	89 e5                	mov    ebp,esp
c000adc1:	b8 0e 00 00 00       	mov    eax,0xe
c000adc6:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
c000adc9:	ee                   	out    dx,al
c000adca:	0f b6 c5             	movzx  eax,ch
c000adcd:	b2 d5                	mov    dl,0xd5
c000adcf:	ee                   	out    dx,al
c000add0:	b8 0f 00 00 00       	mov    eax,0xf
c000add5:	b2 d4                	mov    dl,0xd4
c000add7:	ee                   	out    dx,al
c000add8:	0f b6 c1             	movzx  eax,cl
c000addb:	b2 d5                	mov    dl,0xd5
c000addd:	ee                   	out    dx,al
c000adde:	5d                   	pop    ebp
c000addf:	c3                   	ret    

c000ade0 <put_char>:
c000ade0:	55                   	push   ebp
c000ade1:	89 e5                	mov    ebp,esp
c000ade3:	53                   	push   ebx
c000ade4:	51                   	push   ecx
c000ade5:	8a 4d 08             	mov    cl,BYTE PTR [ebp+0x8]
c000ade8:	83 3d 14 7c 00 00 00 	cmp    DWORD PTR ds:0x7c14,0x0
c000adef:	8a 5d 0c             	mov    bl,BYTE PTR [ebp+0xc]
c000adf2:	0f 85 85 00 00 00    	jne    c000ae7d <put_char+0x9d>
c000adf8:	88 4d f8             	mov    BYTE PTR [ebp-0x8],cl
c000adfb:	e8 8b ff ff ff       	call   c000ad8b <get_cursor>
c000ae00:	80 fb 0d             	cmp    bl,0xd
c000ae03:	8a 4d f8             	mov    cl,BYTE PTR [ebp-0x8]
c000ae06:	77 31                	ja     c000ae39 <put_char+0x59>
c000ae08:	0f b6 d3             	movzx  edx,bl
c000ae0b:	ff 24 95 44 ec 00 c0 	jmp    DWORD PTR [edx*4-0x3fff13bc]
c000ae12:	8d 48 ff             	lea    ecx,[eax-0x1]
c000ae15:	a1 18 7c 00 00       	mov    eax,ds:0x7c18
c000ae1a:	c6 04 48 20          	mov    BYTE PTR [eax+ecx*2],0x20
c000ae1e:	eb 2f                	jmp    c000ae4f <put_char+0x6f>
c000ae20:	8b 1d 20 7c 00 00    	mov    ebx,DWORD PTR ds:0x7c20
c000ae26:	31 d2                	xor    edx,edx
c000ae28:	8d 0c 18             	lea    ecx,[eax+ebx*1]
c000ae2b:	f7 f3                	div    ebx
c000ae2d:	29 d1                	sub    ecx,edx
c000ae2f:	eb 1e                	jmp    c000ae4f <put_char+0x6f>
c000ae31:	8d 48 04             	lea    ecx,[eax+0x4]
c000ae34:	83 e1 fc             	and    ecx,0xfffffffc
c000ae37:	eb 16                	jmp    c000ae4f <put_char+0x6f>
c000ae39:	8b 15 18 7c 00 00    	mov    edx,DWORD PTR ds:0x7c18
c000ae3f:	88 1c 42             	mov    BYTE PTR [edx+eax*2],bl
c000ae42:	8b 15 18 7c 00 00    	mov    edx,DWORD PTR ds:0x7c18
c000ae48:	88 4c 42 01          	mov    BYTE PTR [edx+eax*2+0x1],cl
c000ae4c:	8d 48 01             	lea    ecx,[eax+0x1]
c000ae4f:	a1 24 7c 00 00       	mov    eax,ds:0x7c24
c000ae54:	0f af 05 20 7c 00 00 	imul   eax,DWORD PTR ds:0x7c20
c000ae5b:	39 c1                	cmp    ecx,eax
c000ae5d:	72 13                	jb     c000ae72 <put_char+0x92>
c000ae5f:	e8 eb fe ff ff       	call   c000ad4f <roll_screen>
c000ae64:	8b 0d 24 7c 00 00    	mov    ecx,DWORD PTR ds:0x7c24
c000ae6a:	49                   	dec    ecx
c000ae6b:	0f af 0d 20 7c 00 00 	imul   ecx,DWORD PTR ds:0x7c20
c000ae72:	89 4d 08             	mov    DWORD PTR [ebp+0x8],ecx
c000ae75:	5a                   	pop    edx
c000ae76:	5b                   	pop    ebx
c000ae77:	5d                   	pop    ebp
c000ae78:	e9 3c ff ff ff       	jmp    c000adb9 <set_cursor>
c000ae7d:	58                   	pop    eax
c000ae7e:	5b                   	pop    ebx
c000ae7f:	5d                   	pop    ebp
c000ae80:	c3                   	ret    

c000ae81 <put_str>:
c000ae81:	55                   	push   ebp
c000ae82:	89 e5                	mov    ebp,esp
c000ae84:	56                   	push   esi
c000ae85:	0f b6 75 08          	movzx  esi,BYTE PTR [ebp+0x8]
c000ae89:	53                   	push   ebx
c000ae8a:	8b 5d 0c             	mov    ebx,DWORD PTR [ebp+0xc]
c000ae8d:	eb 0d                	jmp    c000ae9c <put_str+0x1b>
c000ae8f:	0f b6 c0             	movzx  eax,al
c000ae92:	43                   	inc    ebx
c000ae93:	50                   	push   eax
c000ae94:	56                   	push   esi
c000ae95:	e8 46 ff ff ff       	call   c000ade0 <put_char>
c000ae9a:	58                   	pop    eax
c000ae9b:	5a                   	pop    edx
c000ae9c:	8a 03                	mov    al,BYTE PTR [ebx]
c000ae9e:	84 c0                	test   al,al
c000aea0:	75 ed                	jne    c000ae8f <put_str+0xe>
c000aea2:	8d 65 f8             	lea    esp,[ebp-0x8]
c000aea5:	5b                   	pop    ebx
c000aea6:	5e                   	pop    esi
c000aea7:	5d                   	pop    ebp
c000aea8:	c3                   	ret    

c000aea9 <put_uint>:
c000aea9:	55                   	push   ebp
c000aeaa:	31 c0                	xor    eax,eax
c000aeac:	89 e5                	mov    ebp,esp
c000aeae:	b9 42 00 00 00       	mov    ecx,0x42
c000aeb3:	57                   	push   edi
c000aeb4:	53                   	push   ebx
c000aeb5:	8d 7d b6             	lea    edi,[ebp-0x4a]
c000aeb8:	83 ec 50             	sub    esp,0x50
c000aebb:	8a 5d 08             	mov    bl,BYTE PTR [ebp+0x8]
c000aebe:	f3 aa                	rep stos BYTE PTR es:[edi],al
c000aec0:	8d 7d b6             	lea    edi,[ebp-0x4a]
c000aec3:	ff 75 10             	push   DWORD PTR [ebp+0x10]
c000aec6:	0f b6 db             	movzx  ebx,bl
c000aec9:	57                   	push   edi
c000aeca:	ff 75 0c             	push   DWORD PTR [ebp+0xc]
c000aecd:	e8 39 fe ff ff       	call   c000ad0b <utoa>
c000aed2:	57                   	push   edi
c000aed3:	53                   	push   ebx
c000aed4:	e8 a8 ff ff ff       	call   c000ae81 <put_str>
c000aed9:	83 c4 14             	add    esp,0x14
c000aedc:	8d 65 f8             	lea    esp,[ebp-0x8]
c000aedf:	5b                   	pop    ebx
c000aee0:	5f                   	pop    edi
c000aee1:	5d                   	pop    ebp
c000aee2:	c3                   	ret    

c000aee3 <put_int>:
c000aee3:	55                   	push   ebp
c000aee4:	31 c0                	xor    eax,eax
c000aee6:	89 e5                	mov    ebp,esp
c000aee8:	b9 42 00 00 00       	mov    ecx,0x42
c000aeed:	57                   	push   edi
c000aeee:	53                   	push   ebx
c000aeef:	8d 7d b6             	lea    edi,[ebp-0x4a]
c000aef2:	83 ec 50             	sub    esp,0x50
c000aef5:	8a 5d 08             	mov    bl,BYTE PTR [ebp+0x8]
c000aef8:	f3 aa                	rep stos BYTE PTR es:[edi],al
c000aefa:	8d 7d b6             	lea    edi,[ebp-0x4a]
c000aefd:	ff 75 10             	push   DWORD PTR [ebp+0x10]
c000af00:	0f b6 db             	movzx  ebx,bl
c000af03:	57                   	push   edi
c000af04:	ff 75 0c             	push   DWORD PTR [ebp+0xc]
c000af07:	e8 a0 fd ff ff       	call   c000acac <itoa>
c000af0c:	57                   	push   edi
c000af0d:	53                   	push   ebx
c000af0e:	e8 6e ff ff ff       	call   c000ae81 <put_str>
c000af13:	83 c4 14             	add    esp,0x14
c000af16:	8d 65 f8             	lea    esp,[ebp-0x8]
c000af19:	5b                   	pop    ebx
c000af1a:	5f                   	pop    edi
c000af1b:	5d                   	pop    ebp
c000af1c:	c3                   	ret    
c000af1d:	00 00                	add    BYTE PTR [eax],al
	...

c000af20 <memset>:
c000af20:	55                   	push   ebp
c000af21:	89 e5                	mov    ebp,esp
c000af23:	56                   	push   esi
c000af24:	53                   	push   ebx
c000af25:	83 ec 10             	sub    esp,0x10
c000af28:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c000af2b:	8b 75 10             	mov    esi,DWORD PTR [ebp+0x10]
c000af2e:	8a 55 0c             	mov    dl,BYTE PTR [ebp+0xc]
c000af31:	85 db                	test   ebx,ebx
c000af33:	75 1f                	jne    c000af54 <memset+0x34>
c000af35:	68 f4 ec 00 c0       	push   0xc000ecf4
c000af3a:	68 74 ed 00 c0       	push   0xc000ed74
c000af3f:	6a 0f                	push   0xf
c000af41:	68 02 ed 00 c0       	push   0xc000ed02
c000af46:	88 55 f4             	mov    BYTE PTR [ebp-0xc],dl
c000af49:	e8 42 d5 ff ff       	call   c0008490 <panic_spin>
c000af4e:	8a 55 f4             	mov    dl,BYTE PTR [ebp-0xc]
c000af51:	83 c4 10             	add    esp,0x10
c000af54:	31 c0                	xor    eax,eax
c000af56:	eb 04                	jmp    c000af5c <memset+0x3c>
c000af58:	88 14 03             	mov    BYTE PTR [ebx+eax*1],dl
c000af5b:	40                   	inc    eax
c000af5c:	39 f0                	cmp    eax,esi
c000af5e:	75 f8                	jne    c000af58 <memset+0x38>
c000af60:	8d 65 f8             	lea    esp,[ebp-0x8]
c000af63:	5b                   	pop    ebx
c000af64:	5e                   	pop    esi
c000af65:	5d                   	pop    ebp
c000af66:	c3                   	ret    

c000af67 <memcpy>:
c000af67:	55                   	push   ebp
c000af68:	89 e5                	mov    ebp,esp
c000af6a:	57                   	push   edi
c000af6b:	56                   	push   esi
c000af6c:	53                   	push   ebx
c000af6d:	83 ec 0c             	sub    esp,0xc
c000af70:	8b 75 0c             	mov    esi,DWORD PTR [ebp+0xc]
c000af73:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c000af76:	8b 7d 10             	mov    edi,DWORD PTR [ebp+0x10]
c000af79:	85 f6                	test   esi,esi
c000af7b:	74 04                	je     c000af81 <memcpy+0x1a>
c000af7d:	85 db                	test   ebx,ebx
c000af7f:	75 19                	jne    c000af9a <memcpy+0x33>
c000af81:	68 0f ed 00 c0       	push   0xc000ed0f
c000af86:	68 7c ed 00 c0       	push   0xc000ed7c
c000af8b:	6a 22                	push   0x22
c000af8d:	68 02 ed 00 c0       	push   0xc000ed02
c000af92:	e8 f9 d4 ff ff       	call   c0008490 <panic_spin>
c000af97:	83 c4 10             	add    esp,0x10
c000af9a:	31 c0                	xor    eax,eax
c000af9c:	eb 07                	jmp    c000afa5 <memcpy+0x3e>
c000af9e:	8a 14 06             	mov    dl,BYTE PTR [esi+eax*1]
c000afa1:	88 14 03             	mov    BYTE PTR [ebx+eax*1],dl
c000afa4:	40                   	inc    eax
c000afa5:	39 f8                	cmp    eax,edi
c000afa7:	75 f5                	jne    c000af9e <memcpy+0x37>
c000afa9:	8d 65 f4             	lea    esp,[ebp-0xc]
c000afac:	5b                   	pop    ebx
c000afad:	5e                   	pop    esi
c000afae:	5f                   	pop    edi
c000afaf:	5d                   	pop    ebp
c000afb0:	c3                   	ret    

c000afb1 <memcmp>:
c000afb1:	55                   	push   ebp
c000afb2:	89 e5                	mov    ebp,esp
c000afb4:	56                   	push   esi
c000afb5:	8b 75 08             	mov    esi,DWORD PTR [ebp+0x8]
c000afb8:	53                   	push   ebx
c000afb9:	8b 5d 0c             	mov    ebx,DWORD PTR [ebp+0xc]
c000afbc:	85 db                	test   ebx,ebx
c000afbe:	74 04                	je     c000afc4 <memcmp+0x13>
c000afc0:	85 f6                	test   esi,esi
c000afc2:	75 19                	jne    c000afdd <memcmp+0x2c>
c000afc4:	68 2e ed 00 c0       	push   0xc000ed2e
c000afc9:	68 84 ed 00 c0       	push   0xc000ed84
c000afce:	6a 3b                	push   0x3b
c000afd0:	68 02 ed 00 c0       	push   0xc000ed02
c000afd5:	e8 b6 d4 ff ff       	call   c0008490 <panic_spin>
c000afda:	83 c4 10             	add    esp,0x10
c000afdd:	8a 13                	mov    dl,BYTE PTR [ebx]
c000afdf:	83 c8 ff             	or     eax,0xffffffff
c000afe2:	38 16                	cmp    BYTE PTR [esi],dl
c000afe4:	72 06                	jb     c000afec <memcmp+0x3b>
c000afe6:	0f 97 c0             	seta   al
c000afe9:	0f b6 c0             	movzx  eax,al
c000afec:	8d 65 f8             	lea    esp,[ebp-0x8]
c000afef:	5b                   	pop    ebx
c000aff0:	5e                   	pop    esi
c000aff1:	5d                   	pop    ebp
c000aff2:	c3                   	ret    

c000aff3 <strcpy>:
c000aff3:	55                   	push   ebp
c000aff4:	31 d2                	xor    edx,edx
c000aff6:	89 e5                	mov    ebp,esp
c000aff8:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c000affb:	53                   	push   ebx
c000affc:	8b 5d 0c             	mov    ebx,DWORD PTR [ebp+0xc]
c000afff:	8a 0c 13             	mov    cl,BYTE PTR [ebx+edx*1]
c000b002:	88 0c 10             	mov    BYTE PTR [eax+edx*1],cl
c000b005:	42                   	inc    edx
c000b006:	84 c9                	test   cl,cl
c000b008:	75 f5                	jne    c000afff <strcpy+0xc>
c000b00a:	5b                   	pop    ebx
c000b00b:	5d                   	pop    ebp
c000b00c:	c3                   	ret    
c000b00d:	00 00                	add    BYTE PTR [eax],al
	...

c000b010 <RectangleFill>:
c000b010:	55                   	push   ebp
c000b011:	89 e5                	mov    ebp,esp
c000b013:	57                   	push   edi
c000b014:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
c000b017:	56                   	push   esi
c000b018:	8b 45 14             	mov    eax,DWORD PTR [ebp+0x14]
c000b01b:	53                   	push   ebx
c000b01c:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c000b01f:	83 3d 14 7c 00 00 01 	cmp    DWORD PTR ds:0x7c14,0x1
c000b026:	75 30                	jne    c000b058 <RectangleFill+0x48>
c000b028:	89 ca                	mov    edx,ecx
c000b02a:	81 e2 00 00 00 ff    	and    edx,0xff000000
c000b030:	81 fa 00 00 00 ff    	cmp    edx,0xff000000
c000b036:	75 16                	jne    c000b04e <RectangleFill+0x3e>
c000b038:	eb 1e                	jmp    c000b058 <RectangleFill+0x48>
c000b03a:	8b 7b 04             	mov    edi,DWORD PTR [ebx+0x4]
c000b03d:	8b 33                	mov    esi,DWORD PTR [ebx]
c000b03f:	0f af f8             	imul   edi,eax
c000b042:	01 d7                	add    edi,edx
c000b044:	42                   	inc    edx
c000b045:	89 0c be             	mov    DWORD PTR [esi+edi*4],ecx
c000b048:	3b 55 18             	cmp    edx,DWORD PTR [ebp+0x18]
c000b04b:	7e ed                	jle    c000b03a <RectangleFill+0x2a>
c000b04d:	40                   	inc    eax
c000b04e:	3b 45 1c             	cmp    eax,DWORD PTR [ebp+0x1c]
c000b051:	7f 05                	jg     c000b058 <RectangleFill+0x48>
c000b053:	8b 55 10             	mov    edx,DWORD PTR [ebp+0x10]
c000b056:	eb f0                	jmp    c000b048 <RectangleFill+0x38>
c000b058:	5b                   	pop    ebx
c000b059:	5e                   	pop    esi
c000b05a:	5f                   	pop    edi
c000b05b:	5d                   	pop    ebp
c000b05c:	c3                   	ret    

c000b05d <init_Rectangle>:
c000b05d:	55                   	push   ebp
c000b05e:	89 e5                	mov    ebp,esp
c000b060:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c000b063:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
c000b066:	89 10                	mov    DWORD PTR [eax],edx
c000b068:	8b 55 10             	mov    edx,DWORD PTR [ebp+0x10]
c000b06b:	89 50 04             	mov    DWORD PTR [eax+0x4],edx
c000b06e:	8b 55 14             	mov    edx,DWORD PTR [ebp+0x14]
c000b071:	89 50 08             	mov    DWORD PTR [eax+0x8],edx
c000b074:	8b 55 18             	mov    edx,DWORD PTR [ebp+0x18]
c000b077:	89 50 0c             	mov    DWORD PTR [eax+0xc],edx
c000b07a:	8b 55 1c             	mov    edx,DWORD PTR [ebp+0x1c]
c000b07d:	89 50 10             	mov    DWORD PTR [eax+0x10],edx
c000b080:	5d                   	pop    ebp
c000b081:	c3                   	ret    

c000b082 <init_screen>:
c000b082:	55                   	push   ebp
c000b083:	89 e5                	mov    ebp,esp
c000b085:	53                   	push   ebx
c000b086:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c000b089:	83 3d 14 7c 00 00 01 	cmp    DWORD PTR ds:0x7c14,0x1
c000b090:	0f 85 df 00 00 00    	jne    c000b175 <init_screen+0xf3>
c000b096:	a1 24 7c 00 00       	mov    eax,ds:0x7c24
c000b09b:	8b 15 20 7c 00 00    	mov    edx,DWORD PTR ds:0x7c20
c000b0a1:	c7 03 00 00 00 fe    	mov    DWORD PTR [ebx],0xfe000000
c000b0a7:	c7 43 0c 00 00 00 00 	mov    DWORD PTR [ebx+0xc],0x0
c000b0ae:	89 43 08             	mov    DWORD PTR [ebx+0x8],eax
c000b0b1:	89 53 04             	mov    DWORD PTR [ebx+0x4],edx
c000b0b4:	c7 43 10 00 00 00 00 	mov    DWORD PTR [ebx+0x10],0x0
c000b0bb:	a1 24 7c 00 00       	mov    eax,ds:0x7c24
c000b0c0:	83 e8 33             	sub    eax,0x33
c000b0c3:	50                   	push   eax
c000b0c4:	a1 20 7c 00 00       	mov    eax,ds:0x7c20
c000b0c9:	48                   	dec    eax
c000b0ca:	50                   	push   eax
c000b0cb:	6a 00                	push   0x0
c000b0cd:	6a 00                	push   0x0
c000b0cf:	68 84 84 00 00       	push   0x8484
c000b0d4:	53                   	push   ebx
c000b0d5:	e8 36 ff ff ff       	call   c000b010 <RectangleFill>
c000b0da:	a1 24 7c 00 00       	mov    eax,ds:0x7c24
c000b0df:	8d 50 ff             	lea    edx,[eax-0x1]
c000b0e2:	83 e8 33             	sub    eax,0x33
c000b0e5:	52                   	push   edx
c000b0e6:	8b 15 20 7c 00 00    	mov    edx,DWORD PTR ds:0x7c20
c000b0ec:	4a                   	dec    edx
c000b0ed:	52                   	push   edx
c000b0ee:	50                   	push   eax
c000b0ef:	6a 00                	push   0x0
c000b0f1:	68 c6 c6 c6 00       	push   0xc6c6c6
c000b0f6:	53                   	push   ebx
c000b0f7:	e8 14 ff ff ff       	call   c000b010 <RectangleFill>
c000b0fc:	a1 24 7c 00 00       	mov    eax,ds:0x7c24
c000b101:	83 c4 30             	add    esp,0x30
c000b104:	8d 50 f8             	lea    edx,[eax-0x8]
c000b107:	83 e8 26             	sub    eax,0x26
c000b10a:	52                   	push   edx
c000b10b:	6a 2b                	push   0x2b
c000b10d:	50                   	push   eax
c000b10e:	6a 0d                	push   0xd
c000b110:	68 84 84 84 00       	push   0x848484
c000b115:	53                   	push   ebx
c000b116:	e8 f5 fe ff ff       	call   c000b010 <RectangleFill>
c000b11b:	a1 24 7c 00 00       	mov    eax,ds:0x7c24
c000b120:	8d 50 f5             	lea    edx,[eax-0xb]
c000b123:	83 e8 29             	sub    eax,0x29
c000b126:	52                   	push   edx
c000b127:	6a 28                	push   0x28
c000b129:	50                   	push   eax
c000b12a:	6a 0a                	push   0xa
c000b12c:	68 ff ff ff 00       	push   0xffffff
c000b131:	53                   	push   ebx
c000b132:	e8 d9 fe ff ff       	call   c000b010 <RectangleFill>
c000b137:	a1 24 7c 00 00       	mov    eax,ds:0x7c24
c000b13c:	83 c4 30             	add    esp,0x30
c000b13f:	8d 50 f8             	lea    edx,[eax-0x8]
c000b142:	83 e8 26             	sub    eax,0x26
c000b145:	52                   	push   edx
c000b146:	6a 3a                	push   0x3a
c000b148:	50                   	push   eax
c000b149:	6a 35                	push   0x35
c000b14b:	68 84 84 84 00       	push   0x848484
c000b150:	53                   	push   ebx
c000b151:	e8 ba fe ff ff       	call   c000b010 <RectangleFill>
c000b156:	a1 24 7c 00 00       	mov    eax,ds:0x7c24
c000b15b:	8d 50 f5             	lea    edx,[eax-0xb]
c000b15e:	83 e8 29             	sub    eax,0x29
c000b161:	52                   	push   edx
c000b162:	6a 37                	push   0x37
c000b164:	50                   	push   eax
c000b165:	6a 32                	push   0x32
c000b167:	68 ff ff ff 00       	push   0xffffff
c000b16c:	53                   	push   ebx
c000b16d:	e8 9e fe ff ff       	call   c000b010 <RectangleFill>
c000b172:	83 c4 30             	add    esp,0x30
c000b175:	8b 5d fc             	mov    ebx,DWORD PTR [ebp-0x4]
c000b178:	c9                   	leave  
c000b179:	c3                   	ret    

c000b17a <put_char_graphic>:
c000b17a:	55                   	push   ebp
c000b17b:	89 e5                	mov    ebp,esp
c000b17d:	57                   	push   edi
c000b17e:	0f be 7d 18          	movsx  edi,BYTE PTR [ebp+0x18]
c000b182:	56                   	push   esi
c000b183:	8b 55 14             	mov    edx,DWORD PTR [ebp+0x14]
c000b186:	53                   	push   ebx
c000b187:	8b 75 08             	mov    esi,DWORD PTR [ebp+0x8]
c000b18a:	c1 e7 04             	shl    edi,0x4
c000b18d:	81 c7 f8 b2 00 c0    	add    edi,0xc000b2f8
c000b193:	83 3d 14 7c 00 00 01 	cmp    DWORD PTR ds:0x7c14,0x1
c000b19a:	75 5d                	jne    c000b1f9 <put_char_graphic+0x7f>
c000b19c:	31 db                	xor    ebx,ebx
c000b19e:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
c000b1a1:	8b 0e                	mov    ecx,DWORD PTR [esi]
c000b1a3:	01 d8                	add    eax,ebx
c000b1a5:	0f af 46 04          	imul   eax,DWORD PTR [esi+0x4]
c000b1a9:	03 45 0c             	add    eax,DWORD PTR [ebp+0xc]
c000b1ac:	8d 04 81             	lea    eax,[ecx+eax*4]
c000b1af:	8a 0c 1f             	mov    cl,BYTE PTR [edi+ebx*1]
c000b1b2:	84 c9                	test   cl,cl
c000b1b4:	79 02                	jns    c000b1b8 <put_char_graphic+0x3e>
c000b1b6:	89 10                	mov    DWORD PTR [eax],edx
c000b1b8:	0f b6 c9             	movzx  ecx,cl
c000b1bb:	f6 c1 40             	test   cl,0x40
c000b1be:	74 03                	je     c000b1c3 <put_char_graphic+0x49>
c000b1c0:	89 50 04             	mov    DWORD PTR [eax+0x4],edx
c000b1c3:	f6 c1 20             	test   cl,0x20
c000b1c6:	74 03                	je     c000b1cb <put_char_graphic+0x51>
c000b1c8:	89 50 08             	mov    DWORD PTR [eax+0x8],edx
c000b1cb:	f6 c1 10             	test   cl,0x10
c000b1ce:	74 03                	je     c000b1d3 <put_char_graphic+0x59>
c000b1d0:	89 50 0c             	mov    DWORD PTR [eax+0xc],edx
c000b1d3:	f6 c1 08             	test   cl,0x8
c000b1d6:	74 03                	je     c000b1db <put_char_graphic+0x61>
c000b1d8:	89 50 10             	mov    DWORD PTR [eax+0x10],edx
c000b1db:	f6 c1 04             	test   cl,0x4
c000b1de:	74 03                	je     c000b1e3 <put_char_graphic+0x69>
c000b1e0:	89 50 14             	mov    DWORD PTR [eax+0x14],edx
c000b1e3:	f6 c1 02             	test   cl,0x2
c000b1e6:	74 03                	je     c000b1eb <put_char_graphic+0x71>
c000b1e8:	89 50 18             	mov    DWORD PTR [eax+0x18],edx
c000b1eb:	80 e1 01             	and    cl,0x1
c000b1ee:	74 03                	je     c000b1f3 <put_char_graphic+0x79>
c000b1f0:	89 50 1c             	mov    DWORD PTR [eax+0x1c],edx
c000b1f3:	43                   	inc    ebx
c000b1f4:	83 fb 10             	cmp    ebx,0x10
c000b1f7:	75 a5                	jne    c000b19e <put_char_graphic+0x24>
c000b1f9:	5b                   	pop    ebx
c000b1fa:	5e                   	pop    esi
c000b1fb:	5f                   	pop    edi
c000b1fc:	5d                   	pop    ebp
c000b1fd:	c3                   	ret    

c000b1fe <put_str_graphic>:
c000b1fe:	55                   	push   ebp
c000b1ff:	89 e5                	mov    ebp,esp
c000b201:	57                   	push   edi
c000b202:	8b 7d 14             	mov    edi,DWORD PTR [ebp+0x14]
c000b205:	56                   	push   esi
c000b206:	8b 75 0c             	mov    esi,DWORD PTR [ebp+0xc]
c000b209:	53                   	push   ebx
c000b20a:	8b 5d 18             	mov    ebx,DWORD PTR [ebp+0x18]
c000b20d:	eb 18                	jmp    c000b227 <put_str_graphic+0x29>
c000b20f:	0f be c0             	movsx  eax,al
c000b212:	43                   	inc    ebx
c000b213:	50                   	push   eax
c000b214:	57                   	push   edi
c000b215:	ff 75 10             	push   DWORD PTR [ebp+0x10]
c000b218:	56                   	push   esi
c000b219:	83 c6 0a             	add    esi,0xa
c000b21c:	ff 75 08             	push   DWORD PTR [ebp+0x8]
c000b21f:	e8 56 ff ff ff       	call   c000b17a <put_char_graphic>
c000b224:	83 c4 14             	add    esp,0x14
c000b227:	8a 03                	mov    al,BYTE PTR [ebx]
c000b229:	84 c0                	test   al,al
c000b22b:	75 e2                	jne    c000b20f <put_str_graphic+0x11>
c000b22d:	8d 65 f4             	lea    esp,[ebp-0xc]
c000b230:	5b                   	pop    ebx
c000b231:	5e                   	pop    esi
c000b232:	5f                   	pop    edi
c000b233:	5d                   	pop    ebp
c000b234:	c3                   	ret    

Disassembly of section .data:

c000b238 <_data>:
c000b238:	90                   	nop
c000b239:	85 00                	test   DWORD PTR [eax],eax
c000b23b:	c0 c2 85             	rol    dl,0x85
c000b23e:	00 c0                	add    al,al
c000b240:	f4                   	hlt    
c000b241:	85 00                	test   DWORD PTR [eax],eax
c000b243:	c0 26 86             	shl    BYTE PTR [esi],0x86
c000b246:	00 c0                	add    al,al
c000b248:	58                   	pop    eax
c000b249:	86 00                	xchg   BYTE PTR [eax],al
c000b24b:	c0 8a 86 00 c0 bc 86 	ror    BYTE PTR [edx-0x433fff7a],0x86
c000b252:	00 c0                	add    al,al
c000b254:	ee                   	out    dx,al
c000b255:	86 00                	xchg   BYTE PTR [eax],al
c000b257:	c0 20 87             	shl    BYTE PTR [eax],0x87
c000b25a:	00 c0                	add    al,al
c000b25c:	4e                   	dec    esi
c000b25d:	87 00                	xchg   DWORD PTR [eax],eax
c000b25f:	c0 80 87 00 c0 ae 87 	rol    BYTE PTR [eax-0x513fff79],0x87
c000b266:	00 c0                	add    al,al
c000b268:	dc 87 00 c0 0e 88    	fadd   QWORD PTR [edi-0x77f14000]
c000b26e:	00 c0                	add    al,al
c000b270:	3c 88                	cmp    al,0x88
c000b272:	00 c0                	add    al,al
c000b274:	6a 88                	push   0xffffff88
c000b276:	00 c0                	add    al,al
c000b278:	9c                   	pushf  
c000b279:	88 00                	mov    BYTE PTR [eax],al
c000b27b:	c0 ce 88             	ror    dh,0x88
c000b27e:	00 c0                	add    al,al
c000b280:	fc                   	cld    
c000b281:	88 00                	mov    BYTE PTR [eax],al
c000b283:	c0 2e 89             	shr    BYTE PTR [esi],0x89
c000b286:	00 c0                	add    al,al
c000b288:	60                   	pusha  
c000b289:	89 00                	mov    DWORD PTR [eax],eax
c000b28b:	c0 92 89 00 c0 c4 89 	rcl    BYTE PTR [edx-0x3b3fff77],0x89
c000b292:	00 c0                	add    al,al
c000b294:	f6                   	(bad)  
c000b295:	89 00                	mov    DWORD PTR [eax],eax
c000b297:	c0 28 8a             	shr    BYTE PTR [eax],0x8a
c000b29a:	00 c0                	add    al,al
c000b29c:	56                   	push   esi
c000b29d:	8a 00                	mov    al,BYTE PTR [eax]
c000b29f:	c0 88 8a 00 c0 b6 8a 	ror    BYTE PTR [eax-0x493fff76],0x8a
c000b2a6:	00 c0                	add    al,al
c000b2a8:	e4 8a                	in     al,0x8a
c000b2aa:	00 c0                	add    al,al
c000b2ac:	16                   	push   ss
c000b2ad:	8b 00                	mov    eax,DWORD PTR [eax]
c000b2af:	c0 44 8b 00 c0       	rol    BYTE PTR [ebx+ecx*4+0x0],0xc0
c000b2b4:	72 8b                	jb     c000b241 <_data+0x9>
c000b2b6:	00 c0                	add    al,al
c000b2b8:	a4                   	movs   BYTE PTR es:[edi],BYTE PTR ds:[esi]
c000b2b9:	8b 00                	mov    eax,DWORD PTR [eax]
c000b2bb:	c0 d6 8b             	rcl    dh,0x8b
c000b2be:	00 c0                	add    al,al
c000b2c0:	08 8c 00 c0 3a 8c 00 	or     BYTE PTR [eax+eax*1+0x8c3ac0],cl
c000b2c7:	c0 6c 8c 00 c0       	shr    BYTE PTR [esp+ecx*4+0x0],0xc0
c000b2cc:	9e                   	sahf   
c000b2cd:	8c 00                	mov    WORD PTR [eax],es
c000b2cf:	c0 d0 8c             	rcl    al,0x8c
c000b2d2:	00 c0                	add    al,al
c000b2d4:	02 8d 00 c0 34 8d    	add    cl,BYTE PTR [ebp-0x72cb4000]
c000b2da:	00 c0                	add    al,al
c000b2dc:	66 8d 00             	lea    ax,[eax]
c000b2df:	c0 98 8d 00 c0 ca 8d 	rcr    BYTE PTR [eax-0x353fff73],0x8d
c000b2e6:	00 c0                	add    al,al
c000b2e8:	fc                   	cld    
c000b2e9:	8d 00                	lea    eax,[eax]
c000b2eb:	c0 2e 8e             	shr    BYTE PTR [esi],0x8e
c000b2ee:	00 c0                	add    al,al
c000b2f0:	60                   	pusha  
c000b2f1:	8e 00                	mov    es,WORD PTR [eax]
c000b2f3:	c0 92 8e 00 c0 00 00 	rcl    BYTE PTR [edx+0xc0008e],0x0

c000b2f8 <PKnFont>:
	...
c000b508:	00 10                	add    BYTE PTR [eax],dl
c000b50a:	10 10                	adc    BYTE PTR [eax],dl
c000b50c:	10 10                	adc    BYTE PTR [eax],dl
c000b50e:	10 10                	adc    BYTE PTR [eax],dl
c000b510:	10 10                	adc    BYTE PTR [eax],dl
c000b512:	00 00                	add    BYTE PTR [eax],al
c000b514:	10 10                	adc    BYTE PTR [eax],dl
c000b516:	00 00                	add    BYTE PTR [eax],al
c000b518:	28 28                	sub    BYTE PTR [eax],ch
c000b51a:	28 00                	sub    BYTE PTR [eax],al
	...
c000b528:	00 44 44 44          	add    BYTE PTR [esp+eax*2+0x44],al
c000b52c:	fe 44 44 44          	inc    BYTE PTR [esp+eax*2+0x44]
c000b530:	44                   	inc    esp
c000b531:	44                   	inc    esp
c000b532:	fe 44 44 44          	inc    BYTE PTR [esp+eax*2+0x44]
c000b536:	00 00                	add    BYTE PTR [eax],al
c000b538:	10 3a                	adc    BYTE PTR [edx],bh
c000b53a:	56                   	push   esi
c000b53b:	92                   	xchg   edx,eax
c000b53c:	92                   	xchg   edx,eax
c000b53d:	90                   	nop
c000b53e:	50                   	push   eax
c000b53f:	38 14 12             	cmp    BYTE PTR [edx+edx*1],dl
c000b542:	92                   	xchg   edx,eax
c000b543:	92                   	xchg   edx,eax
c000b544:	d4 b8                	aam    0xb8
c000b546:	10 10                	adc    BYTE PTR [eax],dl
c000b548:	62 92 94 94 68 08    	bound  edx,QWORD PTR [edx+0x8689494]
c000b54e:	10 10                	adc    BYTE PTR [eax],dl
c000b550:	20 2c 52             	and    BYTE PTR [edx+edx*2],ch
c000b553:	52                   	push   edx
c000b554:	92                   	xchg   edx,eax
c000b555:	8c 00                	mov    WORD PTR [eax],es
c000b557:	00 00                	add    BYTE PTR [eax],al
c000b559:	70 88                	jo     c000b4e3 <PKnFont+0x1eb>
c000b55b:	88 88 90 60 47 a2    	mov    BYTE PTR [eax-0x5db89f70],cl
c000b561:	92                   	xchg   edx,eax
c000b562:	8a 84 46 39 00 00 04 	mov    al,BYTE PTR [esi+eax*2+0x4000039]
c000b569:	08 10                	or     BYTE PTR [eax],dl
	...
c000b577:	00 02                	add    BYTE PTR [edx],al
c000b579:	04 08                	add    al,0x8
c000b57b:	08 10                	or     BYTE PTR [eax],dl
c000b57d:	10 10                	adc    BYTE PTR [eax],dl
c000b57f:	10 10                	adc    BYTE PTR [eax],dl
c000b581:	10 10                	adc    BYTE PTR [eax],dl
c000b583:	08 08                	or     BYTE PTR [eax],cl
c000b585:	04 02                	add    al,0x2
c000b587:	00 80 40 20 20 10    	add    BYTE PTR [eax+0x10202040],al
c000b58d:	10 10                	adc    BYTE PTR [eax],dl
c000b58f:	10 10                	adc    BYTE PTR [eax],dl
c000b591:	10 10                	adc    BYTE PTR [eax],dl
c000b593:	20 20                	and    BYTE PTR [eax],ah
c000b595:	40                   	inc    eax
c000b596:	80 00 00             	add    BYTE PTR [eax],0x0
c000b599:	00 00                	add    BYTE PTR [eax],al
c000b59b:	00 00                	add    BYTE PTR [eax],al
c000b59d:	10 92 54 38 54 92    	adc    BYTE PTR [edx-0x6dabc7ac],dl
c000b5a3:	10 00                	adc    BYTE PTR [eax],al
	...
c000b5ad:	10 10                	adc    BYTE PTR [eax],dl
c000b5af:	10 fe                	adc    dh,bh
c000b5b1:	10 10                	adc    BYTE PTR [eax],dl
c000b5b3:	10 00                	adc    BYTE PTR [eax],al
	...
c000b5c1:	00 00                	add    BYTE PTR [eax],al
c000b5c3:	18 18                	sbb    BYTE PTR [eax],bl
c000b5c5:	08 08                	or     BYTE PTR [eax],cl
c000b5c7:	10 00                	adc    BYTE PTR [eax],al
c000b5c9:	00 00                	add    BYTE PTR [eax],al
c000b5cb:	00 00                	add    BYTE PTR [eax],al
c000b5cd:	00 00                	add    BYTE PTR [eax],al
c000b5cf:	00 fe                	add    dh,bh
	...
c000b5e1:	00 00                	add    BYTE PTR [eax],al
c000b5e3:	00 18                	add    BYTE PTR [eax],bl
c000b5e5:	18 00                	sbb    BYTE PTR [eax],al
c000b5e7:	00 02                	add    BYTE PTR [edx],al
c000b5e9:	02 04 04             	add    al,BYTE PTR [esp+eax*1]
c000b5ec:	08 08                	or     BYTE PTR [eax],cl
c000b5ee:	08 10                	or     BYTE PTR [eax],dl
c000b5f0:	10 20                	adc    BYTE PTR [eax],ah
c000b5f2:	20 40 40             	and    BYTE PTR [eax+0x40],al
c000b5f5:	40                   	inc    eax
c000b5f6:	80 80 00 18 24 24 42 	add    BYTE PTR [eax+0x24241800],0x42
c000b5fd:	42                   	inc    edx
c000b5fe:	42                   	inc    edx
c000b5ff:	42                   	inc    edx
c000b600:	42                   	inc    edx
c000b601:	42                   	inc    edx
c000b602:	42                   	inc    edx
c000b603:	24 24                	and    al,0x24
c000b605:	18 00                	sbb    BYTE PTR [eax],al
c000b607:	00 00                	add    BYTE PTR [eax],al
c000b609:	08 18                	or     BYTE PTR [eax],bl
c000b60b:	28 08                	sub    BYTE PTR [eax],cl
c000b60d:	08 08                	or     BYTE PTR [eax],cl
c000b60f:	08 08                	or     BYTE PTR [eax],cl
c000b611:	08 08                	or     BYTE PTR [eax],cl
c000b613:	08 08                	or     BYTE PTR [eax],cl
c000b615:	3e 00 00             	add    BYTE PTR ds:[eax],al
c000b618:	00 18                	add    BYTE PTR [eax],bl
c000b61a:	24 42                	and    al,0x42
c000b61c:	42                   	inc    edx
c000b61d:	02 04 08             	add    al,BYTE PTR [eax+ecx*1]
c000b620:	10 20                	adc    BYTE PTR [eax],ah
c000b622:	20 40 40             	and    BYTE PTR [eax+0x40],al
c000b625:	7e 00                	jle    c000b627 <PKnFont+0x32f>
c000b627:	00 00                	add    BYTE PTR [eax],al
c000b629:	18 24 42             	sbb    BYTE PTR [edx+eax*2],ah
c000b62c:	02 02                	add    al,BYTE PTR [edx]
c000b62e:	04 18                	add    al,0x18
c000b630:	04 02                	add    al,0x2
c000b632:	02 42 24             	add    al,BYTE PTR [edx+0x24]
c000b635:	18 00                	sbb    BYTE PTR [eax],al
c000b637:	00 00                	add    BYTE PTR [eax],al
c000b639:	0c 0c                	or     al,0xc
c000b63b:	0c 14                	or     al,0x14
c000b63d:	14 14                	adc    al,0x14
c000b63f:	24 24                	and    al,0x24
c000b641:	44                   	inc    esp
c000b642:	7e 04                	jle    c000b648 <PKnFont+0x350>
c000b644:	04 1e                	add    al,0x1e
c000b646:	00 00                	add    BYTE PTR [eax],al
c000b648:	00 7c 40 40          	add    BYTE PTR [eax+eax*2+0x40],bh
c000b64c:	40                   	inc    eax
c000b64d:	58                   	pop    eax
c000b64e:	64 02 02             	add    al,BYTE PTR fs:[edx]
c000b651:	02 02                	add    al,BYTE PTR [edx]
c000b653:	42                   	inc    edx
c000b654:	24 18                	and    al,0x18
c000b656:	00 00                	add    BYTE PTR [eax],al
c000b658:	00 18                	add    BYTE PTR [eax],bl
c000b65a:	24 42                	and    al,0x42
c000b65c:	40                   	inc    eax
c000b65d:	58                   	pop    eax
c000b65e:	64 42                	fs inc edx
c000b660:	42                   	inc    edx
c000b661:	42                   	inc    edx
c000b662:	42                   	inc    edx
c000b663:	42                   	inc    edx
c000b664:	24 18                	and    al,0x18
c000b666:	00 00                	add    BYTE PTR [eax],al
c000b668:	00 7e 42             	add    BYTE PTR [esi+0x42],bh
c000b66b:	42                   	inc    edx
c000b66c:	04 04                	add    al,0x4
c000b66e:	08 08                	or     BYTE PTR [eax],cl
c000b670:	08 10                	or     BYTE PTR [eax],dl
c000b672:	10 10                	adc    BYTE PTR [eax],dl
c000b674:	10 38                	adc    BYTE PTR [eax],bh
c000b676:	00 00                	add    BYTE PTR [eax],al
c000b678:	00 18                	add    BYTE PTR [eax],bl
c000b67a:	24 42                	and    al,0x42
c000b67c:	42                   	inc    edx
c000b67d:	42                   	inc    edx
c000b67e:	24 18                	and    al,0x18
c000b680:	24 42                	and    al,0x42
c000b682:	42                   	inc    edx
c000b683:	42                   	inc    edx
c000b684:	24 18                	and    al,0x18
c000b686:	00 00                	add    BYTE PTR [eax],al
c000b688:	00 18                	add    BYTE PTR [eax],bl
c000b68a:	24 42                	and    al,0x42
c000b68c:	42                   	inc    edx
c000b68d:	42                   	inc    edx
c000b68e:	42                   	inc    edx
c000b68f:	42                   	inc    edx
c000b690:	26 1a 02             	sbb    al,BYTE PTR es:[edx]
c000b693:	42                   	inc    edx
c000b694:	24 18                	and    al,0x18
c000b696:	00 00                	add    BYTE PTR [eax],al
c000b698:	00 00                	add    BYTE PTR [eax],al
c000b69a:	00 00                	add    BYTE PTR [eax],al
c000b69c:	00 18                	add    BYTE PTR [eax],bl
c000b69e:	18 00                	sbb    BYTE PTR [eax],al
c000b6a0:	00 00                	add    BYTE PTR [eax],al
c000b6a2:	00 00                	add    BYTE PTR [eax],al
c000b6a4:	18 18                	sbb    BYTE PTR [eax],bl
c000b6a6:	00 00                	add    BYTE PTR [eax],al
c000b6a8:	00 00                	add    BYTE PTR [eax],al
c000b6aa:	00 00                	add    BYTE PTR [eax],al
c000b6ac:	00 18                	add    BYTE PTR [eax],bl
c000b6ae:	18 00                	sbb    BYTE PTR [eax],al
c000b6b0:	00 00                	add    BYTE PTR [eax],al
c000b6b2:	00 18                	add    BYTE PTR [eax],bl
c000b6b4:	18 08                	sbb    BYTE PTR [eax],cl
c000b6b6:	08 10                	or     BYTE PTR [eax],dl
c000b6b8:	00 02                	add    BYTE PTR [edx],al
c000b6ba:	04 08                	add    al,0x8
c000b6bc:	10 20                	adc    BYTE PTR [eax],ah
c000b6be:	40                   	inc    eax
c000b6bf:	80 80 40 20 10 08 04 	add    BYTE PTR [eax+0x8102040],0x4
c000b6c6:	02 00                	add    al,BYTE PTR [eax]
c000b6c8:	00 00                	add    BYTE PTR [eax],al
c000b6ca:	00 00                	add    BYTE PTR [eax],al
c000b6cc:	00 00                	add    BYTE PTR [eax],al
c000b6ce:	fe 00                	inc    BYTE PTR [eax]
c000b6d0:	00 fe                	add    dh,bh
c000b6d2:	00 00                	add    BYTE PTR [eax],al
c000b6d4:	00 00                	add    BYTE PTR [eax],al
c000b6d6:	00 00                	add    BYTE PTR [eax],al
c000b6d8:	00 80 40 20 10 08    	add    BYTE PTR [eax+0x8102040],al
c000b6de:	04 02                	add    al,0x2
c000b6e0:	02 04 08             	add    al,BYTE PTR [eax+ecx*1]
c000b6e3:	10 20                	adc    BYTE PTR [eax],ah
c000b6e5:	40                   	inc    eax
c000b6e6:	80 00 00             	add    BYTE PTR [eax],0x0
c000b6e9:	38 44 82 82          	cmp    BYTE PTR [edx+eax*4-0x7e],al
c000b6ed:	82                   	(bad)  
c000b6ee:	04 08                	add    al,0x8
c000b6f0:	10 10                	adc    BYTE PTR [eax],dl
c000b6f2:	00 00                	add    BYTE PTR [eax],al
c000b6f4:	18 18                	sbb    BYTE PTR [eax],bl
c000b6f6:	00 00                	add    BYTE PTR [eax],al
c000b6f8:	00 38                	add    BYTE PTR [eax],bh
c000b6fa:	44                   	inc    esp
c000b6fb:	82                   	(bad)  
c000b6fc:	9a aa aa aa aa aa 9c 	call   0x9caa:0xaaaaaaaa
c000b703:	80 46 38 00          	add    BYTE PTR [esi+0x38],0x0
c000b707:	00 00                	add    BYTE PTR [eax],al
c000b709:	18 18                	sbb    BYTE PTR [eax],bl
c000b70b:	18 18                	sbb    BYTE PTR [eax],bl
c000b70d:	24 24                	and    al,0x24
c000b70f:	24 24                	and    al,0x24
c000b711:	7e 42                	jle    c000b755 <PKnFont+0x45d>
c000b713:	42                   	inc    edx
c000b714:	42                   	inc    edx
c000b715:	e7 00                	out    0x0,eax
c000b717:	00 00                	add    BYTE PTR [eax],al
c000b719:	f0 48                	lock dec eax
c000b71b:	44                   	inc    esp
c000b71c:	44                   	inc    esp
c000b71d:	44                   	inc    esp
c000b71e:	48                   	dec    eax
c000b71f:	78 44                	js     c000b765 <PKnFont+0x46d>
c000b721:	42                   	inc    edx
c000b722:	42                   	inc    edx
c000b723:	42                   	inc    edx
c000b724:	44                   	inc    esp
c000b725:	f8                   	clc    
c000b726:	00 00                	add    BYTE PTR [eax],al
c000b728:	00 3a                	add    BYTE PTR [edx],bh
c000b72a:	46                   	inc    esi
c000b72b:	42                   	inc    edx
c000b72c:	82                   	(bad)  
c000b72d:	80 80 80 80 80 82 42 	add    BYTE PTR [eax-0x7d7f7f80],0x42
c000b734:	44                   	inc    esp
c000b735:	38 00                	cmp    BYTE PTR [eax],al
c000b737:	00 00                	add    BYTE PTR [eax],al
c000b739:	f8                   	clc    
c000b73a:	44                   	inc    esp
c000b73b:	44                   	inc    esp
c000b73c:	42                   	inc    edx
c000b73d:	42                   	inc    edx
c000b73e:	42                   	inc    edx
c000b73f:	42                   	inc    edx
c000b740:	42                   	inc    edx
c000b741:	42                   	inc    edx
c000b742:	42                   	inc    edx
c000b743:	44                   	inc    esp
c000b744:	44                   	inc    esp
c000b745:	f8                   	clc    
c000b746:	00 00                	add    BYTE PTR [eax],al
c000b748:	00 fe                	add    dh,bh
c000b74a:	42                   	inc    edx
c000b74b:	42                   	inc    edx
c000b74c:	40                   	inc    eax
c000b74d:	40                   	inc    eax
c000b74e:	44                   	inc    esp
c000b74f:	7c 44                	jl     c000b795 <PKnFont+0x49d>
c000b751:	40                   	inc    eax
c000b752:	40                   	inc    eax
c000b753:	42                   	inc    edx
c000b754:	42                   	inc    edx
c000b755:	fe 00                	inc    BYTE PTR [eax]
c000b757:	00 00                	add    BYTE PTR [eax],al
c000b759:	fe 42 42             	inc    BYTE PTR [edx+0x42]
c000b75c:	40                   	inc    eax
c000b75d:	40                   	inc    eax
c000b75e:	44                   	inc    esp
c000b75f:	7c 44                	jl     c000b7a5 <PKnFont+0x4ad>
c000b761:	44                   	inc    esp
c000b762:	40                   	inc    eax
c000b763:	40                   	inc    eax
c000b764:	40                   	inc    eax
c000b765:	f0 00 00             	lock add BYTE PTR [eax],al
c000b768:	00 3a                	add    BYTE PTR [edx],bh
c000b76a:	46                   	inc    esi
c000b76b:	42                   	inc    edx
c000b76c:	82                   	(bad)  
c000b76d:	80 80 9e 82 82 82 42 	add    BYTE PTR [eax-0x7d7d7d62],0x42
c000b774:	46                   	inc    esi
c000b775:	38 00                	cmp    BYTE PTR [eax],al
c000b777:	00 00                	add    BYTE PTR [eax],al
c000b779:	e7 42                	out    0x42,eax
c000b77b:	42                   	inc    edx
c000b77c:	42                   	inc    edx
c000b77d:	42                   	inc    edx
c000b77e:	42                   	inc    edx
c000b77f:	7e 42                	jle    c000b7c3 <PKnFont+0x4cb>
c000b781:	42                   	inc    edx
c000b782:	42                   	inc    edx
c000b783:	42                   	inc    edx
c000b784:	42                   	inc    edx
c000b785:	e7 00                	out    0x0,eax
c000b787:	00 00                	add    BYTE PTR [eax],al
c000b789:	7c 10                	jl     c000b79b <PKnFont+0x4a3>
c000b78b:	10 10                	adc    BYTE PTR [eax],dl
c000b78d:	10 10                	adc    BYTE PTR [eax],dl
c000b78f:	10 10                	adc    BYTE PTR [eax],dl
c000b791:	10 10                	adc    BYTE PTR [eax],dl
c000b793:	10 10                	adc    BYTE PTR [eax],dl
c000b795:	7c 00                	jl     c000b797 <PKnFont+0x49f>
c000b797:	00 00                	add    BYTE PTR [eax],al
c000b799:	1f                   	pop    ds
c000b79a:	04 04                	add    al,0x4
c000b79c:	04 04                	add    al,0x4
c000b79e:	04 04                	add    al,0x4
c000b7a0:	04 04                	add    al,0x4
c000b7a2:	04 04                	add    al,0x4
c000b7a4:	84 48 30             	test   BYTE PTR [eax+0x30],cl
c000b7a7:	00 00                	add    BYTE PTR [eax],al
c000b7a9:	e7 42                	out    0x42,eax
c000b7ab:	44                   	inc    esp
c000b7ac:	48                   	dec    eax
c000b7ad:	50                   	push   eax
c000b7ae:	50                   	push   eax
c000b7af:	60                   	pusha  
c000b7b0:	50                   	push   eax
c000b7b1:	50                   	push   eax
c000b7b2:	48                   	dec    eax
c000b7b3:	44                   	inc    esp
c000b7b4:	42                   	inc    edx
c000b7b5:	e7 00                	out    0x0,eax
c000b7b7:	00 00                	add    BYTE PTR [eax],al
c000b7b9:	f0 40                	lock inc eax
c000b7bb:	40                   	inc    eax
c000b7bc:	40                   	inc    eax
c000b7bd:	40                   	inc    eax
c000b7be:	40                   	inc    eax
c000b7bf:	40                   	inc    eax
c000b7c0:	40                   	inc    eax
c000b7c1:	40                   	inc    eax
c000b7c2:	40                   	inc    eax
c000b7c3:	42                   	inc    edx
c000b7c4:	42                   	inc    edx
c000b7c5:	fe 00                	inc    BYTE PTR [eax]
c000b7c7:	00 00                	add    BYTE PTR [eax],al
c000b7c9:	c3                   	ret    
c000b7ca:	42                   	inc    edx
c000b7cb:	66 66 66 5a          	data16 data16 pop dx
c000b7cf:	5a                   	pop    edx
c000b7d0:	5a                   	pop    edx
c000b7d1:	42                   	inc    edx
c000b7d2:	42                   	inc    edx
c000b7d3:	42                   	inc    edx
c000b7d4:	42                   	inc    edx
c000b7d5:	e7 00                	out    0x0,eax
c000b7d7:	00 00                	add    BYTE PTR [eax],al
c000b7d9:	c7 42 62 62 52 52 52 	mov    DWORD PTR [edx+0x62],0x52525262
c000b7e0:	4a                   	dec    edx
c000b7e1:	4a                   	dec    edx
c000b7e2:	4a                   	dec    edx
c000b7e3:	46                   	inc    esi
c000b7e4:	46                   	inc    esi
c000b7e5:	e2 00                	loop   c000b7e7 <PKnFont+0x4ef>
c000b7e7:	00 00                	add    BYTE PTR [eax],al
c000b7e9:	38 44 82 82          	cmp    BYTE PTR [edx+eax*4-0x7e],al
c000b7ed:	82                   	(bad)  
c000b7ee:	82                   	(bad)  
c000b7ef:	82                   	(bad)  
c000b7f0:	82                   	(bad)  
c000b7f1:	82                   	(bad)  
c000b7f2:	82                   	(bad)  
c000b7f3:	82                   	(bad)  
c000b7f4:	44                   	inc    esp
c000b7f5:	38 00                	cmp    BYTE PTR [eax],al
c000b7f7:	00 00                	add    BYTE PTR [eax],al
c000b7f9:	f8                   	clc    
c000b7fa:	44                   	inc    esp
c000b7fb:	42                   	inc    edx
c000b7fc:	42                   	inc    edx
c000b7fd:	42                   	inc    edx
c000b7fe:	44                   	inc    esp
c000b7ff:	78 40                	js     c000b841 <PKnFont+0x549>
c000b801:	40                   	inc    eax
c000b802:	40                   	inc    eax
c000b803:	40                   	inc    eax
c000b804:	40                   	inc    eax
c000b805:	f0 00 00             	lock add BYTE PTR [eax],al
c000b808:	00 38                	add    BYTE PTR [eax],bh
c000b80a:	44                   	inc    esp
c000b80b:	82                   	(bad)  
c000b80c:	82                   	(bad)  
c000b80d:	82                   	(bad)  
c000b80e:	82                   	(bad)  
c000b80f:	82                   	(bad)  
c000b810:	82                   	(bad)  
c000b811:	82                   	(bad)  
c000b812:	92                   	xchg   edx,eax
c000b813:	8a 44 3a 00          	mov    al,BYTE PTR [edx+edi*1+0x0]
c000b817:	00 00                	add    BYTE PTR [eax],al
c000b819:	fc                   	cld    
c000b81a:	42                   	inc    edx
c000b81b:	42                   	inc    edx
c000b81c:	42                   	inc    edx
c000b81d:	42                   	inc    edx
c000b81e:	7c 44                	jl     c000b864 <PKnFont+0x56c>
c000b820:	42                   	inc    edx
c000b821:	42                   	inc    edx
c000b822:	42                   	inc    edx
c000b823:	42                   	inc    edx
c000b824:	42                   	inc    edx
c000b825:	e7 00                	out    0x0,eax
c000b827:	00 00                	add    BYTE PTR [eax],al
c000b829:	3a 46 82             	cmp    al,BYTE PTR [esi-0x7e]
c000b82c:	82                   	(bad)  
c000b82d:	80 40 38 04          	add    BYTE PTR [eax+0x38],0x4
c000b831:	02 82 82 c4 b8 00    	add    al,BYTE PTR [edx+0xb8c482]
c000b837:	00 00                	add    BYTE PTR [eax],al
c000b839:	fe                   	(bad)  
c000b83a:	92                   	xchg   edx,eax
c000b83b:	92                   	xchg   edx,eax
c000b83c:	10 10                	adc    BYTE PTR [eax],dl
c000b83e:	10 10                	adc    BYTE PTR [eax],dl
c000b840:	10 10                	adc    BYTE PTR [eax],dl
c000b842:	10 10                	adc    BYTE PTR [eax],dl
c000b844:	10 7c 00 00          	adc    BYTE PTR [eax+eax*1+0x0],bh
c000b848:	00 e7                	add    bh,ah
c000b84a:	42                   	inc    edx
c000b84b:	42                   	inc    edx
c000b84c:	42                   	inc    edx
c000b84d:	42                   	inc    edx
c000b84e:	42                   	inc    edx
c000b84f:	42                   	inc    edx
c000b850:	42                   	inc    edx
c000b851:	42                   	inc    edx
c000b852:	42                   	inc    edx
c000b853:	42                   	inc    edx
c000b854:	24 3c                	and    al,0x3c
c000b856:	00 00                	add    BYTE PTR [eax],al
c000b858:	00 e7                	add    bh,ah
c000b85a:	42                   	inc    edx
c000b85b:	42                   	inc    edx
c000b85c:	42                   	inc    edx
c000b85d:	42                   	inc    edx
c000b85e:	24 24                	and    al,0x24
c000b860:	24 24                	and    al,0x24
c000b862:	18 18                	sbb    BYTE PTR [eax],bl
c000b864:	18 18                	sbb    BYTE PTR [eax],bl
c000b866:	00 00                	add    BYTE PTR [eax],al
c000b868:	00 e7                	add    bh,ah
c000b86a:	42                   	inc    edx
c000b86b:	42                   	inc    edx
c000b86c:	42                   	inc    edx
c000b86d:	5a                   	pop    edx
c000b86e:	5a                   	pop    edx
c000b86f:	5a                   	pop    edx
c000b870:	5a                   	pop    edx
c000b871:	24 24                	and    al,0x24
c000b873:	24 24                	and    al,0x24
c000b875:	24 00                	and    al,0x0
c000b877:	00 00                	add    BYTE PTR [eax],al
c000b879:	e7 42                	out    0x42,eax
c000b87b:	42                   	inc    edx
c000b87c:	24 24                	and    al,0x24
c000b87e:	24 18                	and    al,0x18
c000b880:	24 24                	and    al,0x24
c000b882:	24 42                	and    al,0x42
c000b884:	42                   	inc    edx
c000b885:	e7 00                	out    0x0,eax
c000b887:	00 00                	add    BYTE PTR [eax],al
c000b889:	ee                   	out    dx,al
c000b88a:	44                   	inc    esp
c000b88b:	44                   	inc    esp
c000b88c:	44                   	inc    esp
c000b88d:	28 28                	sub    BYTE PTR [eax],ch
c000b88f:	28 10                	sub    BYTE PTR [eax],dl
c000b891:	10 10                	adc    BYTE PTR [eax],dl
c000b893:	10 10                	adc    BYTE PTR [eax],dl
c000b895:	7c 00                	jl     c000b897 <PKnFont+0x59f>
c000b897:	00 00                	add    BYTE PTR [eax],al
c000b899:	fe 84 84 08 08 10 10 	inc    BYTE PTR [esp+eax*4+0x10100808]
c000b8a0:	20 20                	and    BYTE PTR [eax],ah
c000b8a2:	40                   	inc    eax
c000b8a3:	42                   	inc    edx
c000b8a4:	82                   	(bad)  
c000b8a5:	fe 00                	inc    BYTE PTR [eax]
c000b8a7:	00 00                	add    BYTE PTR [eax],al
c000b8a9:	3e 20 20             	and    BYTE PTR ds:[eax],ah
c000b8ac:	20 20                	and    BYTE PTR [eax],ah
c000b8ae:	20 20                	and    BYTE PTR [eax],ah
c000b8b0:	20 20                	and    BYTE PTR [eax],ah
c000b8b2:	20 20                	and    BYTE PTR [eax],ah
c000b8b4:	20 20                	and    BYTE PTR [eax],ah
c000b8b6:	3e 00 80 80 40 40 20 	add    BYTE PTR ds:[eax+0x20404080],al
c000b8bd:	20 20                	and    BYTE PTR [eax],ah
c000b8bf:	10 10                	adc    BYTE PTR [eax],dl
c000b8c1:	08 08                	or     BYTE PTR [eax],cl
c000b8c3:	04 04                	add    al,0x4
c000b8c5:	04 02                	add    al,0x2
c000b8c7:	02 00                	add    al,BYTE PTR [eax]
c000b8c9:	7c 04                	jl     c000b8cf <PKnFont+0x5d7>
c000b8cb:	04 04                	add    al,0x4
c000b8cd:	04 04                	add    al,0x4
c000b8cf:	04 04                	add    al,0x4
c000b8d1:	04 04                	add    al,0x4
c000b8d3:	04 04                	add    al,0x4
c000b8d5:	04 7c                	add    al,0x7c
c000b8d7:	00 00                	add    BYTE PTR [eax],al
c000b8d9:	10 28                	adc    BYTE PTR [eax],ch
c000b8db:	44                   	inc    esp
c000b8dc:	82                   	(bad)  
	...
c000b8f5:	00 fe                	add    dh,bh
c000b8f7:	00 10                	add    BYTE PTR [eax],dl
c000b8f9:	08 04 00             	or     BYTE PTR [eax+eax*1],al
	...
c000b90c:	00 70 08             	add    BYTE PTR [eax+0x8],dh
c000b90f:	04 3c                	add    al,0x3c
c000b911:	44                   	inc    esp
c000b912:	84 84 8c 76 00 00 c0 	test   BYTE PTR [esp+ecx*4-0x3fffff8a],al
c000b919:	40                   	inc    eax
c000b91a:	40                   	inc    eax
c000b91b:	40                   	inc    eax
c000b91c:	40                   	inc    eax
c000b91d:	58                   	pop    eax
c000b91e:	64 42                	fs inc edx
c000b920:	42                   	inc    edx
c000b921:	42                   	inc    edx
c000b922:	42                   	inc    edx
c000b923:	42                   	inc    edx
c000b924:	64 58                	fs pop eax
c000b926:	00 00                	add    BYTE PTR [eax],al
c000b928:	00 00                	add    BYTE PTR [eax],al
c000b92a:	00 00                	add    BYTE PTR [eax],al
c000b92c:	00 30                	add    BYTE PTR [eax],dh
c000b92e:	4c                   	dec    esp
c000b92f:	84 84 80 80 82 44 38 	test   BYTE PTR [eax+eax*4+0x38448280],al
c000b936:	00 00                	add    BYTE PTR [eax],al
c000b938:	0c 04                	or     al,0x4
c000b93a:	04 04                	add    al,0x4
c000b93c:	04 34                	add    al,0x34
c000b93e:	4c                   	dec    esp
c000b93f:	84 84 84 84 84 4c 36 	test   BYTE PTR [esp+eax*4+0x364c8484],al
c000b946:	00 00                	add    BYTE PTR [eax],al
c000b948:	00 00                	add    BYTE PTR [eax],al
c000b94a:	00 00                	add    BYTE PTR [eax],al
c000b94c:	00 38                	add    BYTE PTR [eax],bh
c000b94e:	44                   	inc    esp
c000b94f:	82                   	(bad)  
c000b950:	82                   	(bad)  
c000b951:	fc                   	cld    
c000b952:	80 82 42 3c 00 00 0e 	add    BYTE PTR [edx+0x3c42],0xe
c000b959:	10 10                	adc    BYTE PTR [eax],dl
c000b95b:	10 10                	adc    BYTE PTR [eax],dl
c000b95d:	7c 10                	jl     c000b96f <PKnFont+0x677>
c000b95f:	10 10                	adc    BYTE PTR [eax],dl
c000b961:	10 10                	adc    BYTE PTR [eax],dl
c000b963:	10 10                	adc    BYTE PTR [eax],dl
c000b965:	7c 00                	jl     c000b967 <PKnFont+0x66f>
c000b967:	00 00                	add    BYTE PTR [eax],al
c000b969:	00 00                	add    BYTE PTR [eax],al
c000b96b:	00 00                	add    BYTE PTR [eax],al
c000b96d:	36 4c                	ss dec esp
c000b96f:	84 84 84 84 4c 34 04 	test   BYTE PTR [esp+eax*4+0x4344c84],al
c000b976:	04 38                	add    al,0x38
c000b978:	c0 40 40 40          	rol    BYTE PTR [eax+0x40],0x40
c000b97c:	40                   	inc    eax
c000b97d:	58                   	pop    eax
c000b97e:	64 42                	fs inc edx
c000b980:	42                   	inc    edx
c000b981:	42                   	inc    edx
c000b982:	42                   	inc    edx
c000b983:	42                   	inc    edx
c000b984:	42                   	inc    edx
c000b985:	e3 00                	jecxz  c000b987 <PKnFont+0x68f>
c000b987:	00 00                	add    BYTE PTR [eax],al
c000b989:	10 10                	adc    BYTE PTR [eax],dl
c000b98b:	00 00                	add    BYTE PTR [eax],al
c000b98d:	30 10                	xor    BYTE PTR [eax],dl
c000b98f:	10 10                	adc    BYTE PTR [eax],dl
c000b991:	10 10                	adc    BYTE PTR [eax],dl
c000b993:	10 10                	adc    BYTE PTR [eax],dl
c000b995:	38 00                	cmp    BYTE PTR [eax],al
c000b997:	00 00                	add    BYTE PTR [eax],al
c000b999:	04 04                	add    al,0x4
c000b99b:	00 00                	add    BYTE PTR [eax],al
c000b99d:	0c 04                	or     al,0x4
c000b99f:	04 04                	add    al,0x4
c000b9a1:	04 04                	add    al,0x4
c000b9a3:	04 04                	add    al,0x4
c000b9a5:	08 08                	or     BYTE PTR [eax],cl
c000b9a7:	30 c0                	xor    al,al
c000b9a9:	40                   	inc    eax
c000b9aa:	40                   	inc    eax
c000b9ab:	40                   	inc    eax
c000b9ac:	40                   	inc    eax
c000b9ad:	4e                   	dec    esi
c000b9ae:	44                   	inc    esp
c000b9af:	48                   	dec    eax
c000b9b0:	50                   	push   eax
c000b9b1:	60                   	pusha  
c000b9b2:	50                   	push   eax
c000b9b3:	48                   	dec    eax
c000b9b4:	44                   	inc    esp
c000b9b5:	e6 00                	out    0x0,al
c000b9b7:	00 30                	add    BYTE PTR [eax],dh
c000b9b9:	10 10                	adc    BYTE PTR [eax],dl
c000b9bb:	10 10                	adc    BYTE PTR [eax],dl
c000b9bd:	10 10                	adc    BYTE PTR [eax],dl
c000b9bf:	10 10                	adc    BYTE PTR [eax],dl
c000b9c1:	10 10                	adc    BYTE PTR [eax],dl
c000b9c3:	10 10                	adc    BYTE PTR [eax],dl
c000b9c5:	38 00                	cmp    BYTE PTR [eax],al
c000b9c7:	00 00                	add    BYTE PTR [eax],al
c000b9c9:	00 00                	add    BYTE PTR [eax],al
c000b9cb:	00 00                	add    BYTE PTR [eax],al
c000b9cd:	f6                   	(bad)  
c000b9ce:	49                   	dec    ecx
c000b9cf:	49                   	dec    ecx
c000b9d0:	49                   	dec    ecx
c000b9d1:	49                   	dec    ecx
c000b9d2:	49                   	dec    ecx
c000b9d3:	49                   	dec    ecx
c000b9d4:	49                   	dec    ecx
c000b9d5:	db 00                	fild   DWORD PTR [eax]
c000b9d7:	00 00                	add    BYTE PTR [eax],al
c000b9d9:	00 00                	add    BYTE PTR [eax],al
c000b9db:	00 00                	add    BYTE PTR [eax],al
c000b9dd:	d8 64 42 42          	fsub   DWORD PTR [edx+eax*2+0x42]
c000b9e1:	42                   	inc    edx
c000b9e2:	42                   	inc    edx
c000b9e3:	42                   	inc    edx
c000b9e4:	42                   	inc    edx
c000b9e5:	e3 00                	jecxz  c000b9e7 <PKnFont+0x6ef>
c000b9e7:	00 00                	add    BYTE PTR [eax],al
c000b9e9:	00 00                	add    BYTE PTR [eax],al
c000b9eb:	00 00                	add    BYTE PTR [eax],al
c000b9ed:	38 44 82 82          	cmp    BYTE PTR [edx+eax*4-0x7e],al
c000b9f1:	82                   	(bad)  
c000b9f2:	82                   	(bad)  
c000b9f3:	82                   	(bad)  
c000b9f4:	44                   	inc    esp
c000b9f5:	38 00                	cmp    BYTE PTR [eax],al
c000b9f7:	00 00                	add    BYTE PTR [eax],al
c000b9f9:	00 00                	add    BYTE PTR [eax],al
c000b9fb:	00 d8                	add    al,bl
c000b9fd:	64 42                	fs inc edx
c000b9ff:	42                   	inc    edx
c000ba00:	42                   	inc    edx
c000ba01:	42                   	inc    edx
c000ba02:	42                   	inc    edx
c000ba03:	64 58                	fs pop eax
c000ba05:	40                   	inc    eax
c000ba06:	40                   	inc    eax
c000ba07:	e0 00                	loopne c000ba09 <PKnFont+0x711>
c000ba09:	00 00                	add    BYTE PTR [eax],al
c000ba0b:	00 34 4c             	add    BYTE PTR [esp+ecx*2],dh
c000ba0e:	84 84 84 84 84 4c 34 	test   BYTE PTR [esp+eax*4+0x344c8484],al
c000ba15:	04 04                	add    al,0x4
c000ba17:	0e                   	push   cs
c000ba18:	00 00                	add    BYTE PTR [eax],al
c000ba1a:	00 00                	add    BYTE PTR [eax],al
c000ba1c:	00 dc                	add    ah,bl
c000ba1e:	62 42 40             	bound  eax,QWORD PTR [edx+0x40]
c000ba21:	40                   	inc    eax
c000ba22:	40                   	inc    eax
c000ba23:	40                   	inc    eax
c000ba24:	40                   	inc    eax
c000ba25:	e0 00                	loopne c000ba27 <PKnFont+0x72f>
c000ba27:	00 00                	add    BYTE PTR [eax],al
c000ba29:	00 00                	add    BYTE PTR [eax],al
c000ba2b:	00 00                	add    BYTE PTR [eax],al
c000ba2d:	7a 86                	jp     c000b9b5 <PKnFont+0x6bd>
c000ba2f:	82                   	(bad)  
c000ba30:	c0 38 06             	sar    BYTE PTR [eax],0x6
c000ba33:	82                   	(bad)  
c000ba34:	c2 bc 00             	ret    0xbc
c000ba37:	00 00                	add    BYTE PTR [eax],al
c000ba39:	00 10                	add    BYTE PTR [eax],dl
c000ba3b:	10 10                	adc    BYTE PTR [eax],dl
c000ba3d:	7c 10                	jl     c000ba4f <PKnFont+0x757>
c000ba3f:	10 10                	adc    BYTE PTR [eax],dl
c000ba41:	10 10                	adc    BYTE PTR [eax],dl
c000ba43:	10 10                	adc    BYTE PTR [eax],dl
c000ba45:	0e                   	push   cs
c000ba46:	00 00                	add    BYTE PTR [eax],al
c000ba48:	00 00                	add    BYTE PTR [eax],al
c000ba4a:	00 00                	add    BYTE PTR [eax],al
c000ba4c:	00 c6                	add    dh,al
c000ba4e:	42                   	inc    edx
c000ba4f:	42                   	inc    edx
c000ba50:	42                   	inc    edx
c000ba51:	42                   	inc    edx
c000ba52:	42                   	inc    edx
c000ba53:	42                   	inc    edx
c000ba54:	46                   	inc    esi
c000ba55:	3b 00                	cmp    eax,DWORD PTR [eax]
c000ba57:	00 00                	add    BYTE PTR [eax],al
c000ba59:	00 00                	add    BYTE PTR [eax],al
c000ba5b:	00 00                	add    BYTE PTR [eax],al
c000ba5d:	e7 42                	out    0x42,eax
c000ba5f:	42                   	inc    edx
c000ba60:	42                   	inc    edx
c000ba61:	24 24                	and    al,0x24
c000ba63:	24 18                	and    al,0x18
c000ba65:	18 00                	sbb    BYTE PTR [eax],al
c000ba67:	00 00                	add    BYTE PTR [eax],al
c000ba69:	00 00                	add    BYTE PTR [eax],al
c000ba6b:	00 00                	add    BYTE PTR [eax],al
c000ba6d:	e7 42                	out    0x42,eax
c000ba6f:	42                   	inc    edx
c000ba70:	5a                   	pop    edx
c000ba71:	5a                   	pop    edx
c000ba72:	5a                   	pop    edx
c000ba73:	24 24                	and    al,0x24
c000ba75:	24 00                	and    al,0x0
c000ba77:	00 00                	add    BYTE PTR [eax],al
c000ba79:	00 00                	add    BYTE PTR [eax],al
c000ba7b:	00 00                	add    BYTE PTR [eax],al
c000ba7d:	c6 44 28 28 10       	mov    BYTE PTR [eax+ebp*1+0x28],0x10
c000ba82:	28 28                	sub    BYTE PTR [eax],ch
c000ba84:	44                   	inc    esp
c000ba85:	c6 00 00             	mov    BYTE PTR [eax],0x0
c000ba88:	00 00                	add    BYTE PTR [eax],al
c000ba8a:	00 00                	add    BYTE PTR [eax],al
c000ba8c:	00 e7                	add    bh,ah
c000ba8e:	42                   	inc    edx
c000ba8f:	42                   	inc    edx
c000ba90:	24 24                	and    al,0x24
c000ba92:	24 18                	and    al,0x18
c000ba94:	18 10                	sbb    BYTE PTR [eax],dl
c000ba96:	10 60 00             	adc    BYTE PTR [eax+0x0],ah
c000ba99:	00 00                	add    BYTE PTR [eax],al
c000ba9b:	00 00                	add    BYTE PTR [eax],al
c000ba9d:	fe 82 84 08 10 20    	inc    BYTE PTR [edx+0x20100884]
c000baa3:	42                   	inc    edx
c000baa4:	82                   	(bad)  
c000baa5:	fe 00                	inc    BYTE PTR [eax]
c000baa7:	00 00                	add    BYTE PTR [eax],al
c000baa9:	06                   	push   es
c000baaa:	08 10                	or     BYTE PTR [eax],dl
c000baac:	10 10                	adc    BYTE PTR [eax],dl
c000baae:	10 60 10             	adc    BYTE PTR [eax+0x10],ah
c000bab1:	10 10                	adc    BYTE PTR [eax],dl
c000bab3:	10 08                	adc    BYTE PTR [eax],cl
c000bab5:	06                   	push   es
c000bab6:	00 00                	add    BYTE PTR [eax],al
c000bab8:	10 10                	adc    BYTE PTR [eax],dl
c000baba:	10 10                	adc    BYTE PTR [eax],dl
c000babc:	10 10                	adc    BYTE PTR [eax],dl
c000babe:	10 10                	adc    BYTE PTR [eax],dl
c000bac0:	10 10                	adc    BYTE PTR [eax],dl
c000bac2:	10 10                	adc    BYTE PTR [eax],dl
c000bac4:	10 10                	adc    BYTE PTR [eax],dl
c000bac6:	10 10                	adc    BYTE PTR [eax],dl
c000bac8:	00 60 10             	add    BYTE PTR [eax+0x10],ah
c000bacb:	08 08                	or     BYTE PTR [eax],cl
c000bacd:	08 08                	or     BYTE PTR [eax],cl
c000bacf:	06                   	push   es
c000bad0:	08 08                	or     BYTE PTR [eax],cl
c000bad2:	08 08                	or     BYTE PTR [eax],cl
c000bad4:	10 60 00             	adc    BYTE PTR [eax+0x0],ah
c000bad7:	00 00                	add    BYTE PTR [eax],al
c000bad9:	72 8c                	jb     c000ba67 <PKnFont+0x76f>
	...

Disassembly of section .eh_frame:

c000c2f8 <.eh_frame>:
c000c2f8:	10 00                	adc    BYTE PTR [eax],al
c000c2fa:	00 00                	add    BYTE PTR [eax],al
c000c2fc:	00 00                	add    BYTE PTR [eax],al
c000c2fe:	00 00                	add    BYTE PTR [eax],al
c000c300:	01 00                	add    DWORD PTR [eax],eax
c000c302:	01 7c 08 0c          	add    DWORD PTR [eax+ecx*1+0xc],edi
c000c306:	04 04                	add    al,0x4
c000c308:	88 01                	mov    BYTE PTR [ecx],al
c000c30a:	00 00                	add    BYTE PTR [eax],al
c000c30c:	60                   	pusha  
c000c30d:	00 00                	add    BYTE PTR [eax],al
c000c30f:	00 18                	add    BYTE PTR [eax],bl
c000c311:	00 00                	add    BYTE PTR [eax],al
c000c313:	00 24 81             	add    BYTE PTR [ecx+eax*4],ah
c000c316:	00 c0                	add    al,al
c000c318:	64 00 00             	add    BYTE PTR fs:[eax],al
c000c31b:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000c31e:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000c324:	44                   	inc    esp
c000c325:	2e 08 83 03 45 2e 0c 	or     BYTE PTR cs:[ebx+0xc2e4503],al
c000c32c:	42                   	inc    edx
c000c32d:	2e 10 4b 2e          	adc    BYTE PTR cs:[ebx+0x2e],cl
c000c331:	00 43 2e             	add    BYTE PTR [ebx+0x2e],al
c000c334:	0c 45                	or     al,0x45
c000c336:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000c33a:	00 45 2e             	add    BYTE PTR [ebp+0x2e],al
c000c33d:	04 04                	add    al,0x4
c000c33f:	01 00                	add    DWORD PTR [eax],eax
c000c341:	00 00                	add    BYTE PTR [eax],al
c000c343:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c000c347:	0c 45                	or     al,0x45
c000c349:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c000c34d:	0c 41                	or     al,0x41
c000c34f:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c000c353:	0c 42                	or     al,0x42
c000c355:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000c359:	00 47 2e             	add    BYTE PTR [edi+0x2e],al
c000c35c:	04 04                	add    al,0x4
c000c35e:	01 00                	add    DWORD PTR [eax],eax
c000c360:	00 00                	add    BYTE PTR [eax],al
c000c362:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c000c366:	0c 42                	or     al,0x42
c000c368:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000c36c:	00 00                	add    BYTE PTR [eax],al
c000c36e:	00 00                	add    BYTE PTR [eax],al
c000c370:	34 01                	xor    al,0x1
c000c372:	00 00                	add    BYTE PTR [eax],al
c000c374:	7c 00                	jl     c000c376 <_edata+0x7e>
c000c376:	00 00                	add    BYTE PTR [eax],al
c000c378:	88 81 00 c0 d2 01    	mov    BYTE PTR [ecx+0x1d2c000],al
c000c37e:	00 00                	add    BYTE PTR [eax],al
c000c380:	41                   	inc    ecx
c000c381:	0e                   	push   cs
c000c382:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000c388:	46                   	inc    esi
c000c389:	2e 0c 83             	cs or  al,0x83
c000c38c:	05 86 04 87 03       	add    eax,0x3870486
c000c391:	4a                   	dec    edx
c000c392:	2e 10 4b 2e          	adc    BYTE PTR cs:[ebx+0x2e],cl
c000c396:	00 4f 2e             	add    BYTE PTR [edi+0x2e],cl
c000c399:	04 04                	add    al,0x4
c000c39b:	04 00                	add    al,0x0
c000c39d:	00 00                	add    BYTE PTR [eax],al
c000c39f:	2e 08 47 2e          	or     BYTE PTR cs:[edi+0x2e],al
c000c3a3:	0c 49                	or     al,0x49
c000c3a5:	2e 10 41 2e          	adc    BYTE PTR cs:[ecx+0x2e],al
c000c3a9:	14 41                	adc    al,0x41
c000c3ab:	2e 18 45 2e          	sbb    BYTE PTR cs:[ebp+0x2e],al
c000c3af:	1c 45                	sbb    al,0x45
c000c3b1:	2e 20 4e 2e          	and    BYTE PTR cs:[esi+0x2e],cl
c000c3b5:	08 4c 2e 0c          	or     BYTE PTR [esi+ebp*1+0xc],cl
c000c3b9:	49                   	dec    ecx
c000c3ba:	2e 10 41 2e          	adc    BYTE PTR cs:[ecx+0x2e],al
c000c3be:	14 41                	adc    al,0x41
c000c3c0:	2e 18 45 2e          	sbb    BYTE PTR cs:[ebp+0x2e],al
c000c3c4:	1c 45                	sbb    al,0x45
c000c3c6:	2e 20 48 2e          	and    BYTE PTR cs:[eax+0x2e],cl
c000c3ca:	04 04                	add    al,0x4
c000c3cc:	02 00                	add    al,BYTE PTR [eax]
c000c3ce:	00 00                	add    BYTE PTR [eax],al
c000c3d0:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c000c3d4:	0c 43                	or     al,0x43
c000c3d6:	2e 10 4a 2e          	adc    BYTE PTR cs:[edx+0x2e],cl
c000c3da:	14 41                	adc    al,0x41
c000c3dc:	2e 18 4b 2e          	sbb    BYTE PTR cs:[ebx+0x2e],cl
c000c3e0:	1c 45                	sbb    al,0x45
c000c3e2:	2e 20 48 2e          	and    BYTE PTR cs:[eax+0x2e],cl
c000c3e6:	0c 42                	or     al,0x42
c000c3e8:	2e 10 42 2e          	adc    BYTE PTR cs:[edx+0x2e],al
c000c3ec:	14 41                	adc    al,0x41
c000c3ee:	2e 18 4b 2e          	sbb    BYTE PTR cs:[ebx+0x2e],cl
c000c3f2:	1c 45                	sbb    al,0x45
c000c3f4:	2e 20 48 2e          	and    BYTE PTR cs:[eax+0x2e],cl
c000c3f8:	04 04                	add    al,0x4
c000c3fa:	02 00                	add    al,BYTE PTR [eax]
c000c3fc:	00 00                	add    BYTE PTR [eax],al
c000c3fe:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c000c402:	0c 43                	or     al,0x43
c000c404:	2e 10 4a 2e          	adc    BYTE PTR cs:[edx+0x2e],cl
c000c408:	14 41                	adc    al,0x41
c000c40a:	2e 18 49 2e          	sbb    BYTE PTR cs:[ecx+0x2e],cl
c000c40e:	1c 45                	sbb    al,0x45
c000c410:	2e 20 48 2e          	and    BYTE PTR cs:[eax+0x2e],cl
c000c414:	0c 42                	or     al,0x42
c000c416:	2e 10 42 2e          	adc    BYTE PTR cs:[edx+0x2e],al
c000c41a:	14 41                	adc    al,0x41
c000c41c:	2e 18 49 2e          	sbb    BYTE PTR cs:[ecx+0x2e],cl
c000c420:	1c 45                	sbb    al,0x45
c000c422:	2e 20 48 2e          	and    BYTE PTR cs:[eax+0x2e],cl
c000c426:	04 04                	add    al,0x4
c000c428:	02 00                	add    al,BYTE PTR [eax]
c000c42a:	00 00                	add    BYTE PTR [eax],al
c000c42c:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c000c430:	0c 43                	or     al,0x43
c000c432:	2e 10 4a 2e          	adc    BYTE PTR cs:[edx+0x2e],cl
c000c436:	14 41                	adc    al,0x41
c000c438:	2e 18 49 2e          	sbb    BYTE PTR cs:[ecx+0x2e],cl
c000c43c:	1c 45                	sbb    al,0x45
c000c43e:	2e 20 48 2e          	and    BYTE PTR cs:[eax+0x2e],cl
c000c442:	0c 42                	or     al,0x42
c000c444:	2e 10 42 2e          	adc    BYTE PTR cs:[edx+0x2e],al
c000c448:	14 41                	adc    al,0x41
c000c44a:	2e 18 49 2e          	sbb    BYTE PTR cs:[ecx+0x2e],cl
c000c44e:	1c 45                	sbb    al,0x45
c000c450:	2e 20 48 2e          	and    BYTE PTR cs:[eax+0x2e],cl
c000c454:	04 04                	add    al,0x4
c000c456:	02 00                	add    al,BYTE PTR [eax]
c000c458:	00 00                	add    BYTE PTR [eax],al
c000c45a:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c000c45e:	0c 43                	or     al,0x43
c000c460:	2e 10 4a 2e          	adc    BYTE PTR cs:[edx+0x2e],cl
c000c464:	14 41                	adc    al,0x41
c000c466:	2e 18 49 2e          	sbb    BYTE PTR cs:[ecx+0x2e],cl
c000c46a:	1c 45                	sbb    al,0x45
c000c46c:	2e 20 48 2e          	and    BYTE PTR cs:[eax+0x2e],cl
c000c470:	0c 42                	or     al,0x42
c000c472:	2e 10 42 2e          	adc    BYTE PTR cs:[edx+0x2e],al
c000c476:	14 41                	adc    al,0x41
c000c478:	2e 18 49 2e          	sbb    BYTE PTR cs:[ecx+0x2e],cl
c000c47c:	1c 45                	sbb    al,0x45
c000c47e:	2e 20 48 2e          	and    BYTE PTR cs:[eax+0x2e],cl
c000c482:	04 04                	add    al,0x4
c000c484:	02 00                	add    al,BYTE PTR [eax]
c000c486:	00 00                	add    BYTE PTR [eax],al
c000c488:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c000c48c:	0c 43                	or     al,0x43
c000c48e:	2e 10 4a 2e          	adc    BYTE PTR cs:[edx+0x2e],cl
c000c492:	14 41                	adc    al,0x41
c000c494:	2e 18 49 2e          	sbb    BYTE PTR cs:[ecx+0x2e],cl
c000c498:	1c 45                	sbb    al,0x45
c000c49a:	2e 20 48 2e          	and    BYTE PTR cs:[eax+0x2e],cl
c000c49e:	00 45 2e             	add    BYTE PTR [ebp+0x2e],al
c000c4a1:	0c 44                	or     al,0x44
c000c4a3:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000c4a7:	00 fc                	add    ah,bh
c000c4a9:	00 00                	add    BYTE PTR [eax],al
c000c4ab:	00 b4 01 00 00 5a 83 	add    BYTE PTR [ecx+eax*1-0x7ca60000],dh
c000c4b2:	00 c0                	add    al,al
c000c4b4:	33 01                	xor    eax,DWORD PTR [ecx]
c000c4b6:	00 00                	add    BYTE PTR [eax],al
c000c4b8:	41                   	inc    ecx
c000c4b9:	0e                   	push   cs
c000c4ba:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000c4c0:	41                   	inc    ecx
c000c4c1:	83 03 47             	add    DWORD PTR [ebx],0x47
c000c4c4:	2e 04 04             	cs add al,0x4
c000c4c7:	01 00                	add    DWORD PTR [eax],eax
c000c4c9:	00 00                	add    BYTE PTR [eax],al
c000c4cb:	2e 08 42 2e          	or     BYTE PTR cs:[edx+0x2e],al
c000c4cf:	0c 42                	or     al,0x42
c000c4d1:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000c4d5:	00 46 2e             	add    BYTE PTR [esi+0x2e],al
c000c4d8:	0c 42                	or     al,0x42
c000c4da:	2e 10 50 2e          	adc    BYTE PTR cs:[eax+0x2e],dl
c000c4de:	0c 41                	or     al,0x41
c000c4e0:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c000c4e4:	0c 42                	or     al,0x42
c000c4e6:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c000c4ea:	0c 41                	or     al,0x41
c000c4ec:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c000c4f0:	0c 42                	or     al,0x42
c000c4f2:	2e 10 4b 2e          	adc    BYTE PTR cs:[ebx+0x2e],cl
c000c4f6:	0c 41                	or     al,0x41
c000c4f8:	2e 08 42 2e          	or     BYTE PTR cs:[edx+0x2e],al
c000c4fc:	0c 42                	or     al,0x42
c000c4fe:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c000c502:	0c 41                	or     al,0x41
c000c504:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c000c508:	0c 42                	or     al,0x42
c000c50a:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000c50e:	04 04                	add    al,0x4
c000c510:	02 00                	add    al,BYTE PTR [eax]
c000c512:	00 00                	add    BYTE PTR [eax],al
c000c514:	2e 08 49 2e          	or     BYTE PTR cs:[ecx+0x2e],cl
c000c518:	0c 42                	or     al,0x42
c000c51a:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c000c51e:	0c 41                	or     al,0x41
c000c520:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c000c524:	0c 42                	or     al,0x42
c000c526:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000c52a:	04 04                	add    al,0x4
c000c52c:	02 00                	add    al,BYTE PTR [eax]
c000c52e:	00 00                	add    BYTE PTR [eax],al
c000c530:	2e 08 49 2e          	or     BYTE PTR cs:[ecx+0x2e],cl
c000c534:	0c 42                	or     al,0x42
c000c536:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c000c53a:	0c 41                	or     al,0x41
c000c53c:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c000c540:	0c 42                	or     al,0x42
c000c542:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c000c546:	0c 41                	or     al,0x41
c000c548:	2e 08 42 2e          	or     BYTE PTR cs:[edx+0x2e],al
c000c54c:	0c 42                	or     al,0x42
c000c54e:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c000c552:	0c 41                	or     al,0x41
c000c554:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c000c558:	0c 42                	or     al,0x42
c000c55a:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000c55e:	04 04                	add    al,0x4
c000c560:	02 00                	add    al,BYTE PTR [eax]
c000c562:	00 00                	add    BYTE PTR [eax],al
c000c564:	2e 08 46 2e          	or     BYTE PTR cs:[esi+0x2e],al
c000c568:	0c 42                	or     al,0x42
c000c56a:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c000c56e:	0c 41                	or     al,0x41
c000c570:	2e 08 42 2e          	or     BYTE PTR cs:[edx+0x2e],al
c000c574:	0c 42                	or     al,0x42
c000c576:	2e 10 51 2e          	adc    BYTE PTR cs:[ecx+0x2e],dl
c000c57a:	14 42                	adc    al,0x42
c000c57c:	2e 18 42 2e          	sbb    BYTE PTR cs:[edx+0x2e],al
c000c580:	1c 45                	sbb    al,0x45
c000c582:	2e 20 48 2e          	and    BYTE PTR cs:[eax+0x2e],cl
c000c586:	00 45 2e             	add    BYTE PTR [ebp+0x2e],al
c000c589:	04 04                	add    al,0x4
c000c58b:	05 00 00 00 2e       	add    eax,0x2e000000
c000c590:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c000c593:	0c 45                	or     al,0x45
c000c595:	2e 10 4a 2e          	adc    BYTE PTR cs:[edx+0x2e],cl
c000c599:	14 45                	adc    al,0x45
c000c59b:	2e 18 42 2e          	sbb    BYTE PTR cs:[edx+0x2e],al
c000c59f:	1c 45                	sbb    al,0x45
c000c5a1:	2e 20 48 2e          	and    BYTE PTR cs:[eax+0x2e],cl
c000c5a5:	00 00                	add    BYTE PTR [eax],al
c000c5a7:	00 b0 00 00 00 b4    	add    BYTE PTR [eax-0x4c000000],dh
c000c5ad:	02 00                	add    al,BYTE PTR [eax]
c000c5af:	00 90 84 00 c0 aa    	add    BYTE PTR [eax-0x553fff7c],dl
c000c5b5:	00 00                	add    BYTE PTR [eax],al
c000c5b7:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000c5ba:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000c5c0:	49                   	dec    ecx
c000c5c1:	2e 04 04             	cs add al,0x4
c000c5c4:	01 00                	add    DWORD PTR [eax],eax
c000c5c6:	00 00                	add    BYTE PTR [eax],al
c000c5c8:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c000c5cc:	0c 42                	or     al,0x42
c000c5ce:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c000c5d2:	0c 41                	or     al,0x41
c000c5d4:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c000c5d8:	0c 42                	or     al,0x42
c000c5da:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c000c5de:	0c 41                	or     al,0x41
c000c5e0:	2e 08 43 2e          	or     BYTE PTR cs:[ebx+0x2e],al
c000c5e4:	0c 42                	or     al,0x42
c000c5e6:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c000c5ea:	0c 41                	or     al,0x41
c000c5ec:	2e 08 42 2e          	or     BYTE PTR cs:[edx+0x2e],al
c000c5f0:	0c 42                	or     al,0x42
c000c5f2:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c000c5f6:	0c 41                	or     al,0x41
c000c5f8:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c000c5fc:	0c 42                	or     al,0x42
c000c5fe:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c000c602:	0c 41                	or     al,0x41
c000c604:	2e 08 43 2e          	or     BYTE PTR cs:[ebx+0x2e],al
c000c608:	0c 42                	or     al,0x42
c000c60a:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c000c60e:	0c 41                	or     al,0x41
c000c610:	2e 08 42 2e          	or     BYTE PTR cs:[edx+0x2e],al
c000c614:	0c 42                	or     al,0x42
c000c616:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c000c61a:	0c 41                	or     al,0x41
c000c61c:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c000c620:	0c 42                	or     al,0x42
c000c622:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000c626:	04 04                	add    al,0x4
c000c628:	02 00                	add    al,BYTE PTR [eax]
c000c62a:	00 00                	add    BYTE PTR [eax],al
c000c62c:	2e 08 43 2e          	or     BYTE PTR cs:[ebx+0x2e],al
c000c630:	0c 42                	or     al,0x42
c000c632:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c000c636:	0c 41                	or     al,0x41
c000c638:	2e 08 42 2e          	or     BYTE PTR cs:[edx+0x2e],al
c000c63c:	0c 42                	or     al,0x42
c000c63e:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c000c642:	0c 41                	or     al,0x41
c000c644:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c000c648:	0c 42                	or     al,0x42
c000c64a:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c000c64e:	0c 41                	or     al,0x41
c000c650:	2e 08 43 2e          	or     BYTE PTR cs:[ebx+0x2e],al
c000c654:	0c 42                	or     al,0x42
c000c656:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000c65a:	00 00                	add    BYTE PTR [eax],al
c000c65c:	34 00                	xor    al,0x0
c000c65e:	00 00                	add    BYTE PTR [eax],al
c000c660:	68 03 00 00 3c       	push   0x3c000003
c000c665:	85 00                	test   DWORD PTR [eax],eax
c000c667:	c0 54 00 00 00       	rcl    BYTE PTR [eax+eax*1+0x0],0x0
c000c66c:	41                   	inc    ecx
c000c66d:	0e                   	push   cs
c000c66e:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000c674:	43                   	inc    ebx
c000c675:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c000c679:	0c 42                	or     al,0x42
c000c67b:	2e 10 75 2e          	adc    BYTE PTR cs:[ebp+0x2e],dh
c000c67f:	0c 41                	or     al,0x41
c000c681:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c000c685:	0c 42                	or     al,0x42
c000c687:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000c68b:	00 41 c5             	add    BYTE PTR [ecx-0x3b],al
c000c68e:	0c 04                	or     al,0x4
c000c690:	04 00                	add    al,0x0
c000c692:	00 00                	add    BYTE PTR [eax],al
c000c694:	1c 00                	sbb    al,0x0
c000c696:	00 00                	add    BYTE PTR [eax],al
c000c698:	a0 03 00 00 d8       	mov    al,ds:0xd8000003
c000c69d:	8e 00                	mov    es,WORD PTR [eax]
c000c69f:	c0 10 00             	rcl    BYTE PTR [eax],0x0
c000c6a2:	00 00                	add    BYTE PTR [eax],al
c000c6a4:	41                   	inc    ecx
c000c6a5:	0e                   	push   cs
c000c6a6:	08 85 02 47 0d 05    	or     BYTE PTR [ebp+0x50d4702],al
c000c6ac:	47                   	inc    edi
c000c6ad:	0c 04                	or     al,0x4
c000c6af:	04 c5                	add    al,0xc5
c000c6b1:	00 00                	add    BYTE PTR [eax],al
c000c6b3:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c000c6b6:	00 00                	add    BYTE PTR [eax],al
c000c6b8:	c0 03 00             	rol    BYTE PTR [ebx],0x0
c000c6bb:	00 e8                	add    al,ch
c000c6bd:	8e 00                	mov    es,WORD PTR [eax]
c000c6bf:	c0 3d 00 00 00 41 0e 	sar    BYTE PTR ds:0x41000000,0xe
c000c6c6:	08 85 02 47 0d 05    	or     BYTE PTR [ebp+0x50d4702],al
c000c6cc:	74 0c                	je     c000c6da <_edata+0x3e2>
c000c6ce:	04 04                	add    al,0x4
c000c6d0:	c5 00                	lds    eax,FWORD PTR [eax]
c000c6d2:	00 00                	add    BYTE PTR [eax],al
c000c6d4:	1c 00                	sbb    al,0x0
c000c6d6:	00 00                	add    BYTE PTR [eax],al
c000c6d8:	e0 03                	loopne c000c6dd <_edata+0x3e5>
c000c6da:	00 00                	add    BYTE PTR [eax],al
c000c6dc:	25 8f 00 c0 69       	and    eax,0x69c0008f
c000c6e1:	00 00                	add    BYTE PTR [eax],al
c000c6e3:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000c6e6:	08 85 02 44 0d 05    	or     BYTE PTR [ebp+0x50d4402],al
c000c6ec:	02 63 0c             	add    ah,BYTE PTR [ebx+0xc]
c000c6ef:	04 04                	add    al,0x4
c000c6f1:	c5 00                	lds    eax,FWORD PTR [eax]
c000c6f3:	00 20                	add    BYTE PTR [eax],ah
c000c6f5:	00 00                	add    BYTE PTR [eax],al
c000c6f7:	00 00                	add    BYTE PTR [eax],al
c000c6f9:	04 00                	add    al,0x0
c000c6fb:	00 8e 8f 00 c0 2c    	add    BYTE PTR [esi+0x2cc0008f],cl
c000c701:	00 00                	add    BYTE PTR [eax],al
c000c703:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000c706:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000c70c:	44                   	inc    esp
c000c70d:	83 03 63             	add    DWORD PTR [ebx],0x63
c000c710:	c3                   	ret    
c000c711:	41                   	inc    ecx
c000c712:	0c 04                	or     al,0x4
c000c714:	04 c5                	add    al,0xc5
c000c716:	00 00                	add    BYTE PTR [eax],al
c000c718:	1c 00                	sbb    al,0x0
c000c71a:	00 00                	add    BYTE PTR [eax],al
c000c71c:	24 04                	and    al,0x4
c000c71e:	00 00                	add    BYTE PTR [eax],al
c000c720:	ba 8f 00 c0 cd       	mov    edx,0xcdc0008f
c000c725:	00 00                	add    BYTE PTR [eax],al
c000c727:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000c72a:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000c730:	02 c9                	add    cl,cl
c000c732:	0c 04                	or     al,0x4
c000c734:	04 c5                	add    al,0xc5
c000c736:	00 00                	add    BYTE PTR [eax],al
c000c738:	1c 00                	sbb    al,0x0
c000c73a:	00 00                	add    BYTE PTR [eax],al
c000c73c:	44                   	inc    esp
c000c73d:	04 00                	add    al,0x0
c000c73f:	00 87 90 00 c0 32    	add    BYTE PTR [edi+0x32c00090],al
c000c745:	00 00                	add    BYTE PTR [eax],al
c000c747:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000c74a:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000c750:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000c751:	c5 0c 04             	lds    ecx,FWORD PTR [esp+eax*1]
c000c754:	04 00                	add    al,0x0
c000c756:	00 00                	add    BYTE PTR [eax],al
c000c758:	1c 00                	sbb    al,0x0
c000c75a:	00 00                	add    BYTE PTR [eax],al
c000c75c:	64 04 00             	fs add al,0x0
c000c75f:	00 b9 90 00 c0 10    	add    BYTE PTR [ecx+0x10c00090],bh
c000c765:	00 00                	add    BYTE PTR [eax],al
c000c767:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000c76a:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000c770:	4c                   	dec    esp
c000c771:	0c 04                	or     al,0x4
c000c773:	04 c5                	add    al,0xc5
c000c775:	00 00                	add    BYTE PTR [eax],al
c000c777:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c000c77a:	00 00                	add    BYTE PTR [eax],al
c000c77c:	84 04 00             	test   BYTE PTR [eax+eax*1],al
c000c77f:	00 c9                	add    cl,cl
c000c781:	90                   	nop
c000c782:	00 c0                	add    al,al
c000c784:	14 00                	adc    al,0x0
c000c786:	00 00                	add    BYTE PTR [eax],al
c000c788:	41                   	inc    ecx
c000c789:	0e                   	push   cs
c000c78a:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000c790:	50                   	push   eax
c000c791:	0c 04                	or     al,0x4
c000c793:	04 c5                	add    al,0xc5
c000c795:	00 00                	add    BYTE PTR [eax],al
c000c797:	00 e4                	add    ah,ah
c000c799:	00 00                	add    BYTE PTR [eax],al
c000c79b:	00 a4 04 00 00 dd 90 	add    BYTE PTR [esp+eax*1-0x6f230000],ah
c000c7a2:	00 c0                	add    al,al
c000c7a4:	f7 00 00 00 41 0e    	test   DWORD PTR [eax],0xe410000
c000c7aa:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000c7b0:	41                   	inc    ecx
c000c7b1:	86 03                	xchg   BYTE PTR [ebx],al
c000c7b3:	46                   	inc    esi
c000c7b4:	83 04 04 0b          	add    DWORD PTR [esp+eax*1],0xb
c000c7b8:	00 00                	add    BYTE PTR [eax],al
c000c7ba:	00 2e                	add    BYTE PTR [esi],ch
c000c7bc:	0c 42                	or     al,0x42
c000c7be:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000c7c2:	00 41 2e             	add    BYTE PTR [ecx+0x2e],al
c000c7c5:	04 04                	add    al,0x4
c000c7c7:	01 00                	add    DWORD PTR [eax],eax
c000c7c9:	00 00                	add    BYTE PTR [eax],al
c000c7cb:	2e 08 42 2e          	or     BYTE PTR cs:[edx+0x2e],al
c000c7cf:	0c 42                	or     al,0x42
c000c7d1:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000c7d5:	00 46 2e             	add    BYTE PTR [esi+0x2e],al
c000c7d8:	0c 42                	or     al,0x42
c000c7da:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c000c7de:	0c 41                	or     al,0x41
c000c7e0:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c000c7e4:	0c 42                	or     al,0x42
c000c7e6:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c000c7ea:	0c 41                	or     al,0x41
c000c7ec:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c000c7f0:	0c 42                	or     al,0x42
c000c7f2:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c000c7f6:	0c 41                	or     al,0x41
c000c7f8:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c000c7fc:	0c 42                	or     al,0x42
c000c7fe:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c000c802:	0c 41                	or     al,0x41
c000c804:	2e 08 48 2e          	or     BYTE PTR cs:[eax+0x2e],cl
c000c808:	0c 42                	or     al,0x42
c000c80a:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000c80e:	04 04                	add    al,0x4
c000c810:	02 00                	add    al,BYTE PTR [eax]
c000c812:	00 00                	add    BYTE PTR [eax],al
c000c814:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c000c818:	0c 42                	or     al,0x42
c000c81a:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c000c81e:	0c 41                	or     al,0x41
c000c820:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c000c824:	0c 42                	or     al,0x42
c000c826:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000c82a:	00 46 2e             	add    BYTE PTR [esi+0x2e],al
c000c82d:	04 04                	add    al,0x4
c000c82f:	01 00                	add    DWORD PTR [eax],eax
c000c831:	00 00                	add    BYTE PTR [eax],al
c000c833:	2e 08 47 2e          	or     BYTE PTR cs:[edi+0x2e],al
c000c837:	0c 42                	or     al,0x42
c000c839:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000c83d:	00 49 2e             	add    BYTE PTR [ecx+0x2e],cl
c000c840:	04 04                	add    al,0x4
c000c842:	01 00                	add    DWORD PTR [eax],eax
c000c844:	00 00                	add    BYTE PTR [eax],al
c000c846:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c000c84a:	0c 42                	or     al,0x42
c000c84c:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000c850:	04 04                	add    al,0x4
c000c852:	02 00                	add    al,BYTE PTR [eax]
c000c854:	00 00                	add    BYTE PTR [eax],al
c000c856:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c000c85a:	0c 42                	or     al,0x42
c000c85c:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c000c860:	0c 41                	or     al,0x41
c000c862:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c000c866:	0c 42                	or     al,0x42
c000c868:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000c86c:	00 41 2e             	add    BYTE PTR [ecx+0x2e],al
c000c86f:	04 04                	add    al,0x4
c000c871:	01 00                	add    DWORD PTR [eax],eax
c000c873:	00 00                	add    BYTE PTR [eax],al
c000c875:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c000c879:	0c 42                	or     al,0x42
c000c87b:	2e 10 4d 2e          	adc    BYTE PTR cs:[ebp+0x2e],cl
c000c87f:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c000c882:	00 00                	add    BYTE PTR [eax],al
c000c884:	8c 05 00 00 d4 91    	mov    WORD PTR ds:0x91d40000,es
c000c88a:	00 c0                	add    al,al
c000c88c:	17                   	pop    ss
c000c88d:	00 00                	add    BYTE PTR [eax],al
c000c88f:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000c892:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000c898:	53                   	push   ebx
c000c899:	0c 04                	or     al,0x4
c000c89b:	04 c5                	add    al,0xc5
c000c89d:	00 00                	add    BYTE PTR [eax],al
c000c89f:	00 24 00             	add    BYTE PTR [eax+eax*1],ah
c000c8a2:	00 00                	add    BYTE PTR [eax],al
c000c8a4:	ac                   	lods   al,BYTE PTR ds:[esi]
c000c8a5:	05 00 00 eb 91       	add    eax,0x91eb0000
c000c8aa:	00 c0                	add    al,al
c000c8ac:	15 00 00 00 41       	adc    eax,0x41000000
c000c8b1:	0e                   	push   cs
c000c8b2:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000c8b8:	47                   	inc    edi
c000c8b9:	0a 0c 04             	or     cl,BYTE PTR [esp+eax*1]
c000c8bc:	04 c5                	add    al,0xc5
c000c8be:	45                   	inc    ebp
c000c8bf:	0b 41 0c             	or     eax,DWORD PTR [ecx+0xc]
c000c8c2:	04 04                	add    al,0x4
c000c8c4:	c5 00                	lds    eax,FWORD PTR [eax]
c000c8c6:	00 00                	add    BYTE PTR [eax],al
c000c8c8:	44                   	inc    esp
c000c8c9:	00 00                	add    BYTE PTR [eax],al
c000c8cb:	00 d4                	add    ah,dl
c000c8cd:	05 00 00 00 92       	add    eax,0x92000000
c000c8d2:	00 c0                	add    al,al
c000c8d4:	5a                   	pop    edx
c000c8d5:	00 00                	add    BYTE PTR [eax],al
c000c8d7:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000c8da:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000c8e0:	41                   	inc    ecx
c000c8e1:	86 03                	xchg   BYTE PTR [ebx],al
c000c8e3:	44                   	inc    esp
c000c8e4:	83 04 04 06          	add    DWORD PTR [esp+eax*1],0x6
c000c8e8:	00 00                	add    BYTE PTR [eax],al
c000c8ea:	00 2e                	add    BYTE PTR [esi],ch
c000c8ec:	0c 41                	or     al,0x41
c000c8ee:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000c8f2:	00 65 2e             	add    BYTE PTR [ebp+0x2e],ah
c000c8f5:	04 04                	add    al,0x4
c000c8f7:	05 00 00 00 2e       	add    eax,0x2e000000
c000c8fc:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c000c8ff:	0c 45                	or     al,0x45
c000c901:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000c905:	00 47 c3             	add    BYTE PTR [edi-0x3d],al
c000c908:	41                   	inc    ecx
c000c909:	c6 41 0c 04          	mov    BYTE PTR [ecx+0xc],0x4
c000c90d:	04 c5                	add    al,0xc5
c000c90f:	00 24 00             	add    BYTE PTR [eax+eax*1],ah
c000c912:	00 00                	add    BYTE PTR [eax],al
c000c914:	1c 06                	sbb    al,0x6
c000c916:	00 00                	add    BYTE PTR [eax],al
c000c918:	5a                   	pop    edx
c000c919:	92                   	xchg   edx,eax
c000c91a:	00 c0                	add    al,al
c000c91c:	21 00                	and    DWORD PTR [eax],eax
c000c91e:	00 00                	add    BYTE PTR [eax],al
c000c920:	41                   	inc    ecx
c000c921:	0e                   	push   cs
c000c922:	08 85 02 44 0d 05    	or     BYTE PTR [ebp+0x50d4402],al
c000c928:	47                   	inc    edi
c000c929:	83 04 86 03          	add    DWORD PTR [esi+eax*4],0x3
c000c92d:	52                   	push   edx
c000c92e:	c3                   	ret    
c000c92f:	41                   	inc    ecx
c000c930:	c6 41 0c 04          	mov    BYTE PTR [ecx+0xc],0x4
c000c934:	04 c5                	add    al,0xc5
c000c936:	00 00                	add    BYTE PTR [eax],al
c000c938:	28 00                	sub    BYTE PTR [eax],al
c000c93a:	00 00                	add    BYTE PTR [eax],al
c000c93c:	44                   	inc    esp
c000c93d:	06                   	push   es
c000c93e:	00 00                	add    BYTE PTR [eax],al
c000c940:	7b 92                	jnp    c000c8d4 <_edata+0x5dc>
c000c942:	00 c0                	add    al,al
c000c944:	8b 00                	mov    eax,DWORD PTR [eax]
c000c946:	00 00                	add    BYTE PTR [eax],al
c000c948:	41                   	inc    ecx
c000c949:	0e                   	push   cs
c000c94a:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000c950:	42                   	inc    edx
c000c951:	86 04 87             	xchg   BYTE PTR [edi+eax*4],al
c000c954:	03 46 83             	add    eax,DWORD PTR [esi-0x7d]
c000c957:	05 02 7c c3 41       	add    eax,0x41c37c02
c000c95c:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c000c960:	0c 04                	or     al,0x4
c000c962:	04 c5                	add    al,0xc5
c000c964:	34 00                	xor    al,0x0
c000c966:	00 00                	add    BYTE PTR [eax],al
c000c968:	70 06                	jo     c000c970 <_edata+0x678>
c000c96a:	00 00                	add    BYTE PTR [eax],al
c000c96c:	06                   	push   es
c000c96d:	93                   	xchg   ebx,eax
c000c96e:	00 c0                	add    al,al
c000c970:	32 00                	xor    al,BYTE PTR [eax]
c000c972:	00 00                	add    BYTE PTR [eax],al
c000c974:	41                   	inc    ecx
c000c975:	0e                   	push   cs
c000c976:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000c97c:	44                   	inc    esp
c000c97d:	2e 0c 83             	cs or  al,0x83
c000c980:	03 44 2e 10          	add    eax,DWORD PTR [esi+ebp*1+0x10]
c000c984:	46                   	inc    esi
c000c985:	2e 0c 44             	cs or  al,0x44
c000c988:	2e 08 44 2e 0c       	or     BYTE PTR cs:[esi+ebp*1+0xc],al
c000c98d:	41                   	inc    ecx
c000c98e:	2e 10 57 c5          	adc    BYTE PTR cs:[edi-0x3b],dl
c000c992:	0c 04                	or     al,0x4
c000c994:	04 c3                	add    al,0xc3
c000c996:	41                   	inc    ecx
c000c997:	13 03                	adc    eax,DWORD PTR [ebx]
c000c999:	2e 00 00             	add    BYTE PTR cs:[eax],al
c000c99c:	28 00                	sub    BYTE PTR [eax],al
c000c99e:	00 00                	add    BYTE PTR [eax],al
c000c9a0:	a8 06                	test   al,0x6
c000c9a2:	00 00                	add    BYTE PTR [eax],al
c000c9a4:	38 93 00 c0 3c 01    	cmp    BYTE PTR [ebx+0x13cc000],dl
c000c9aa:	00 00                	add    BYTE PTR [eax],al
c000c9ac:	41                   	inc    ecx
c000c9ad:	0e                   	push   cs
c000c9ae:	08 85 02 44 0d 05    	or     BYTE PTR [ebp+0x50d4402],al
c000c9b4:	46                   	inc    esi
c000c9b5:	83 05 86 04 87 03 03 	add    DWORD PTR ds:0x3870486,0x3
c000c9bc:	2d 01 c3 41 c6       	sub    eax,0xc641c301
c000c9c1:	41                   	inc    ecx
c000c9c2:	c7 41 0c 04 04 c5 38 	mov    DWORD PTR [ecx+0xc],0x38c50404
c000c9c9:	00 00                	add    BYTE PTR [eax],al
c000c9cb:	00 d4                	add    ah,dl
c000c9cd:	06                   	push   es
c000c9ce:	00 00                	add    BYTE PTR [eax],al
c000c9d0:	74 94                	je     c000c966 <_edata+0x66e>
c000c9d2:	00 c0                	add    al,al
c000c9d4:	36 00 00             	add    BYTE PTR ss:[eax],al
c000c9d7:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000c9da:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000c9e0:	44                   	inc    esp
c000c9e1:	2e 0c 83             	cs or  al,0x83
c000c9e4:	03 44 2e 10          	add    eax,DWORD PTR [esi+ebp*1+0x10]
c000c9e8:	4b                   	dec    ebx
c000c9e9:	2e 04 04             	cs add al,0x4
c000c9ec:	04 00                	add    al,0x0
c000c9ee:	00 00                	add    BYTE PTR [eax],al
c000c9f0:	2e 08 43 2e          	or     BYTE PTR cs:[ebx+0x2e],al
c000c9f4:	0c 41                	or     al,0x41
c000c9f6:	2e 10 57 c5          	adc    BYTE PTR cs:[edi-0x3b],dl
c000c9fa:	0c 04                	or     al,0x4
c000c9fc:	04 c3                	add    al,0xc3
c000c9fe:	41                   	inc    ecx
c000c9ff:	13 03                	adc    eax,DWORD PTR [ebx]
c000ca01:	2e 00 00             	add    BYTE PTR cs:[eax],al
c000ca04:	1c 01                	sbb    al,0x1
c000ca06:	00 00                	add    BYTE PTR [eax],al
c000ca08:	10 07                	adc    BYTE PTR [edi],al
c000ca0a:	00 00                	add    BYTE PTR [eax],al
c000ca0c:	aa                   	stos   BYTE PTR es:[edi],al
c000ca0d:	94                   	xchg   esp,eax
c000ca0e:	00 c0                	add    al,al
c000ca10:	b1 01                	mov    cl,0x1
c000ca12:	00 00                	add    BYTE PTR [eax],al
c000ca14:	41                   	inc    ecx
c000ca15:	0e                   	push   cs
c000ca16:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000ca1c:	46                   	inc    esi
c000ca1d:	83 05 86 04 87 03 63 	add    DWORD PTR ds:0x3870486,0x63
c000ca24:	2e 04 04             	cs add al,0x4
c000ca27:	01 00                	add    DWORD PTR [eax],eax
c000ca29:	00 00                	add    BYTE PTR [eax],al
c000ca2b:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c000ca2f:	0c 42                	or     al,0x42
c000ca31:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000ca35:	00 46 2e             	add    BYTE PTR [esi+0x2e],al
c000ca38:	04 04                	add    al,0x4
c000ca3a:	01 00                	add    DWORD PTR [eax],eax
c000ca3c:	00 00                	add    BYTE PTR [eax],al
c000ca3e:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c000ca42:	0c 42                	or     al,0x42
c000ca44:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000ca48:	04 04                	add    al,0x4
c000ca4a:	02 00                	add    al,BYTE PTR [eax]
c000ca4c:	00 00                	add    BYTE PTR [eax],al
c000ca4e:	2e 08 42 2e          	or     BYTE PTR cs:[edx+0x2e],al
c000ca52:	0c 42                	or     al,0x42
c000ca54:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c000ca58:	0c 41                	or     al,0x41
c000ca5a:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c000ca5e:	0c 42                	or     al,0x42
c000ca60:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000ca64:	04 04                	add    al,0x4
c000ca66:	02 00                	add    al,BYTE PTR [eax]
c000ca68:	00 00                	add    BYTE PTR [eax],al
c000ca6a:	2e 08 43 2e          	or     BYTE PTR cs:[ebx+0x2e],al
c000ca6e:	0c 42                	or     al,0x42
c000ca70:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c000ca74:	0c 41                	or     al,0x41
c000ca76:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c000ca7a:	0c 42                	or     al,0x42
c000ca7c:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000ca80:	04 04                	add    al,0x4
c000ca82:	02 00                	add    al,BYTE PTR [eax]
c000ca84:	00 00                	add    BYTE PTR [eax],al
c000ca86:	2e 08 43 2e          	or     BYTE PTR cs:[ebx+0x2e],al
c000ca8a:	0c 42                	or     al,0x42
c000ca8c:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c000ca90:	0c 41                	or     al,0x41
c000ca92:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c000ca96:	0c 42                	or     al,0x42
c000ca98:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000ca9c:	00 74 2e 04          	add    BYTE PTR [esi+ebp*1+0x4],dh
c000caa0:	04 05                	add    al,0x5
c000caa2:	00 00                	add    BYTE PTR [eax],al
c000caa4:	00 2e                	add    BYTE PTR [esi],ch
c000caa6:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c000caa9:	0c 45                	or     al,0x45
c000caab:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000caaf:	00 62 2e             	add    BYTE PTR [edx+0x2e],ah
c000cab2:	04 04                	add    al,0x4
c000cab4:	01 00                	add    DWORD PTR [eax],eax
c000cab6:	00 00                	add    BYTE PTR [eax],al
c000cab8:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c000cabc:	0c 45                	or     al,0x45
c000cabe:	2e 10 4c 2e 0c       	adc    BYTE PTR cs:[esi+ebp*1+0xc],cl
c000cac3:	43                   	inc    ebx
c000cac4:	2e 08 4a 2e          	or     BYTE PTR cs:[edx+0x2e],cl
c000cac8:	0c 47                	or     al,0x47
c000caca:	2e 10 4f 2e          	adc    BYTE PTR cs:[edi+0x2e],cl
c000cace:	0c 41                	or     al,0x41
c000cad0:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c000cad4:	0c 45                	or     al,0x45
c000cad6:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c000cada:	0c 41                	or     al,0x41
c000cadc:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c000cae0:	0c 45                	or     al,0x45
c000cae2:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000cae6:	04 04                	add    al,0x4
c000cae8:	01 00                	add    DWORD PTR [eax],eax
c000caea:	00 00                	add    BYTE PTR [eax],al
c000caec:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c000caf0:	0c 45                	or     al,0x45
c000caf2:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000caf6:	04 04                	add    al,0x4
c000caf8:	01 00                	add    DWORD PTR [eax],eax
c000cafa:	00 00                	add    BYTE PTR [eax],al
c000cafc:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c000cb00:	0c 45                	or     al,0x45
c000cb02:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000cb06:	04 04                	add    al,0x4
c000cb08:	05 00 00 00 2e       	add    eax,0x2e000000
c000cb0d:	08 45 2e             	or     BYTE PTR [ebp+0x2e],al
c000cb10:	0c 45                	or     al,0x45
c000cb12:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000cb16:	00 44 c3 41          	add    BYTE PTR [ebx+eax*8+0x41],al
c000cb1a:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c000cb1e:	0c 04                	or     al,0x4
c000cb20:	04 c5                	add    al,0xc5
c000cb22:	00 00                	add    BYTE PTR [eax],al
c000cb24:	1c 00                	sbb    al,0x0
c000cb26:	00 00                	add    BYTE PTR [eax],al
c000cb28:	30 08                	xor    BYTE PTR [eax],cl
c000cb2a:	00 00                	add    BYTE PTR [eax],al
c000cb2c:	5b                   	pop    ebx
c000cb2d:	96                   	xchg   esi,eax
c000cb2e:	00 c0                	add    al,al
c000cb30:	12 00                	adc    al,BYTE PTR [eax]
c000cb32:	00 00                	add    BYTE PTR [eax],al
c000cb34:	41                   	inc    ecx
c000cb35:	0e                   	push   cs
c000cb36:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000cb3c:	44                   	inc    esp
c000cb3d:	0c 04                	or     al,0x4
c000cb3f:	04 c5                	add    al,0xc5
c000cb41:	00 00                	add    BYTE PTR [eax],al
c000cb43:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c000cb46:	00 00                	add    BYTE PTR [eax],al
c000cb48:	50                   	push   eax
c000cb49:	08 00                	or     BYTE PTR [eax],al
c000cb4b:	00 6d 96             	add    BYTE PTR [ebp-0x6a],ch
c000cb4e:	00 c0                	add    al,al
c000cb50:	22 00                	and    al,BYTE PTR [eax]
c000cb52:	00 00                	add    BYTE PTR [eax],al
c000cb54:	41                   	inc    ecx
c000cb55:	0e                   	push   cs
c000cb56:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000cb5c:	44                   	inc    esp
c000cb5d:	0c 04                	or     al,0x4
c000cb5f:	04 c5                	add    al,0xc5
c000cb61:	00 00                	add    BYTE PTR [eax],al
c000cb63:	00 54 00 00          	add    BYTE PTR [eax+eax*1+0x0],dl
c000cb67:	00 70 08             	add    BYTE PTR [eax+0x8],dh
c000cb6a:	00 00                	add    BYTE PTR [eax],al
c000cb6c:	8f                   	(bad)  
c000cb6d:	96                   	xchg   esi,eax
c000cb6e:	00 c0                	add    al,al
c000cb70:	72 00                	jb     c000cb72 <_edata+0x87a>
c000cb72:	00 00                	add    BYTE PTR [eax],al
c000cb74:	41                   	inc    ecx
c000cb75:	0e                   	push   cs
c000cb76:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000cb7c:	46                   	inc    esi
c000cb7d:	83 05 86 04 87 03 47 	add    DWORD PTR ds:0x3870486,0x47
c000cb84:	2e 04 04             	cs add al,0x4
c000cb87:	13 00                	adc    eax,DWORD PTR [eax]
c000cb89:	00 00                	add    BYTE PTR [eax],al
c000cb8b:	2e 00 51 2e          	add    BYTE PTR cs:[ecx+0x2e],dl
c000cb8f:	04 04                	add    al,0x4
c000cb91:	04 00                	add    al,0x0
c000cb93:	00 00                	add    BYTE PTR [eax],al
c000cb95:	2e 08 42 2e          	or     BYTE PTR cs:[edx+0x2e],al
c000cb99:	0c 45                	or     al,0x45
c000cb9b:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000cb9f:	04 04                	add    al,0x4
c000cba1:	11 00                	adc    DWORD PTR [eax],eax
c000cba3:	00 00                	add    BYTE PTR [eax],al
c000cba5:	2e 08 47 2e          	or     BYTE PTR cs:[edi+0x2e],al
c000cba9:	0c 41                	or     al,0x41
c000cbab:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000cbaf:	00 46 c3             	add    BYTE PTR [esi-0x3d],al
c000cbb2:	41                   	inc    ecx
c000cbb3:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c000cbb7:	0c 04                	or     al,0x4
c000cbb9:	04 c5                	add    al,0xc5
c000cbbb:	00 60 00             	add    BYTE PTR [eax+0x0],ah
c000cbbe:	00 00                	add    BYTE PTR [eax],al
c000cbc0:	c8 08 00 00          	enter  0x8,0x0
c000cbc4:	01 97 00 c0 7a 00    	add    DWORD PTR [edi+0x7ac000],edx
c000cbca:	00 00                	add    BYTE PTR [eax],al
c000cbcc:	41                   	inc    ecx
c000cbcd:	0e                   	push   cs
c000cbce:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000cbd4:	46                   	inc    esi
c000cbd5:	83 05 86 04 87 03 64 	add    DWORD PTR ds:0x3870486,0x64
c000cbdc:	2e 04 04             	cs add al,0x4
c000cbdf:	01 00                	add    DWORD PTR [eax],eax
c000cbe1:	00 00                	add    BYTE PTR [eax],al
c000cbe3:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c000cbe7:	0c 41                	or     al,0x41
c000cbe9:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000cbed:	00 4b 2e             	add    BYTE PTR [ebx+0x2e],cl
c000cbf0:	04 04                	add    al,0x4
c000cbf2:	01 00                	add    DWORD PTR [eax],eax
c000cbf4:	00 00                	add    BYTE PTR [eax],al
c000cbf6:	2e 08 42 2e          	or     BYTE PTR cs:[edx+0x2e],al
c000cbfa:	0c 43                	or     al,0x43
c000cbfc:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000cc00:	00 45 2e             	add    BYTE PTR [ebp+0x2e],al
c000cc03:	04 04                	add    al,0x4
c000cc05:	02 00                	add    al,BYTE PTR [eax]
c000cc07:	00 00                	add    BYTE PTR [eax],al
c000cc09:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c000cc0d:	0c 41                	or     al,0x41
c000cc0f:	2e 10 4e 2e          	adc    BYTE PTR cs:[esi+0x2e],cl
c000cc13:	00 4e c3             	add    BYTE PTR [esi-0x3d],cl
c000cc16:	41                   	inc    ecx
c000cc17:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c000cc1b:	0c 04                	or     al,0x4
c000cc1d:	04 c5                	add    al,0xc5
c000cc1f:	00 3c 00             	add    BYTE PTR [eax+eax*1],bh
c000cc22:	00 00                	add    BYTE PTR [eax],al
c000cc24:	2c 09                	sub    al,0x9
c000cc26:	00 00                	add    BYTE PTR [eax],al
c000cc28:	7b 97                	jnp    c000cbc1 <_edata+0x8c9>
c000cc2a:	00 c0                	add    al,al
c000cc2c:	34 00                	xor    al,0x0
c000cc2e:	00 00                	add    BYTE PTR [eax],al
c000cc30:	41                   	inc    ecx
c000cc31:	0e                   	push   cs
c000cc32:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000cc38:	44                   	inc    esp
c000cc39:	2e 08 83 03 44 2e 0c 	or     BYTE PTR cs:[ebx+0xc2e4403],al
c000cc40:	42                   	inc    edx
c000cc41:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000cc45:	00 48 2e             	add    BYTE PTR [eax+0x2e],cl
c000cc48:	04 04                	add    al,0x4
c000cc4a:	01 00                	add    DWORD PTR [eax],eax
c000cc4c:	00 00                	add    BYTE PTR [eax],al
c000cc4e:	2e 08 42 2e          	or     BYTE PTR cs:[edx+0x2e],al
c000cc52:	0c 41                	or     al,0x41
c000cc54:	2e 10 4e 2e          	adc    BYTE PTR cs:[esi+0x2e],cl
c000cc58:	00 44 c5 0c          	add    BYTE PTR [ebp+eax*8+0xc],al
c000cc5c:	04 04                	add    al,0x4
c000cc5e:	c3                   	ret    
c000cc5f:	00 3c 00             	add    BYTE PTR [eax+eax*1],bh
c000cc62:	00 00                	add    BYTE PTR [eax],al
c000cc64:	6c                   	ins    BYTE PTR es:[edi],dx
c000cc65:	09 00                	or     DWORD PTR [eax],eax
c000cc67:	00 af 97 00 c0 34    	add    BYTE PTR [edi+0x34c00097],ch
c000cc6d:	00 00                	add    BYTE PTR [eax],al
c000cc6f:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000cc72:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000cc78:	44                   	inc    esp
c000cc79:	2e 08 83 03 44 2e 0c 	or     BYTE PTR cs:[ebx+0xc2e4403],al
c000cc80:	42                   	inc    edx
c000cc81:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000cc85:	00 48 2e             	add    BYTE PTR [eax+0x2e],cl
c000cc88:	04 04                	add    al,0x4
c000cc8a:	01 00                	add    DWORD PTR [eax],eax
c000cc8c:	00 00                	add    BYTE PTR [eax],al
c000cc8e:	2e 08 42 2e          	or     BYTE PTR cs:[edx+0x2e],al
c000cc92:	0c 41                	or     al,0x41
c000cc94:	2e 10 4e 2e          	adc    BYTE PTR cs:[esi+0x2e],cl
c000cc98:	00 44 c5 0c          	add    BYTE PTR [ebp+eax*8+0xc],al
c000cc9c:	04 04                	add    al,0x4
c000cc9e:	c3                   	ret    
c000cc9f:	00 8c 00 00 00 ac 09 	add    BYTE PTR [eax+eax*1+0x9ac0000],cl
c000cca6:	00 00                	add    BYTE PTR [eax],al
c000cca8:	e3 97                	jecxz  c000cc41 <_edata+0x949>
c000ccaa:	00 c0                	add    al,al
c000ccac:	a4                   	movs   BYTE PTR es:[edi],BYTE PTR ds:[esi]
c000ccad:	00 00                	add    BYTE PTR [eax],al
c000ccaf:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000ccb2:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000ccb8:	41                   	inc    ecx
c000ccb9:	87 03                	xchg   DWORD PTR [ebx],eax
c000ccbb:	4a                   	dec    edx
c000ccbc:	83 05 86 04 04 29 00 	add    DWORD PTR ds:0x29040486,0x0
c000ccc3:	00 00                	add    BYTE PTR [eax],al
c000ccc5:	2e 04 04             	cs add al,0x4
c000ccc8:	01 00                	add    DWORD PTR [eax],eax
c000ccca:	00 00                	add    BYTE PTR [eax],al
c000cccc:	2e 08 42 2e          	or     BYTE PTR cs:[edx+0x2e],al
c000ccd0:	0c 45                	or     al,0x45
c000ccd2:	2e 10 47 2e          	adc    BYTE PTR cs:[edi+0x2e],al
c000ccd6:	00 45 2e             	add    BYTE PTR [ebp+0x2e],al
c000ccd9:	04 04                	add    al,0x4
c000ccdb:	05 00 00 00 2e       	add    eax,0x2e000000
c000cce0:	08 45 2e             	or     BYTE PTR [ebp+0x2e],al
c000cce3:	0c 45                	or     al,0x45
c000cce5:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000cce9:	00 41 2e             	add    BYTE PTR [ecx+0x2e],al
c000ccec:	04 04                	add    al,0x4
c000ccee:	01 00                	add    DWORD PTR [eax],eax
c000ccf0:	00 00                	add    BYTE PTR [eax],al
c000ccf2:	2e 08 42 2e          	or     BYTE PTR cs:[edx+0x2e],al
c000ccf6:	0c 41                	or     al,0x41
c000ccf8:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000ccfc:	00 4b 2e             	add    BYTE PTR [ebx+0x2e],cl
c000ccff:	04 04                	add    al,0x4
c000cd01:	05 00 00 00 2e       	add    eax,0x2e000000
c000cd06:	08 45 2e             	or     BYTE PTR [ebp+0x2e],al
c000cd09:	0c 45                	or     al,0x45
c000cd0b:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000cd0f:	00 41 2e             	add    BYTE PTR [ecx+0x2e],al
c000cd12:	04 04                	add    al,0x4
c000cd14:	01 00                	add    DWORD PTR [eax],eax
c000cd16:	00 00                	add    BYTE PTR [eax],al
c000cd18:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c000cd1c:	0c 41                	or     al,0x41
c000cd1e:	2e 10 4b c3          	adc    BYTE PTR cs:[ebx-0x3d],cl
c000cd22:	41                   	inc    ecx
c000cd23:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c000cd27:	0c 04                	or     al,0x4
c000cd29:	04 c5                	add    al,0xc5
c000cd2b:	41                   	inc    ecx
c000cd2c:	13 03                	adc    eax,DWORD PTR [ebx]
c000cd2e:	2e 00 28             	add    BYTE PTR cs:[eax],ch
c000cd31:	00 00                	add    BYTE PTR [eax],al
c000cd33:	00 3c 0a             	add    BYTE PTR [edx+ecx*1],bh
c000cd36:	00 00                	add    BYTE PTR [eax],al
c000cd38:	87 98 00 c0 22 00    	xchg   DWORD PTR [eax+0x22c000],ebx
c000cd3e:	00 00                	add    BYTE PTR [eax],al
c000cd40:	41                   	inc    ecx
c000cd41:	0e                   	push   cs
c000cd42:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000cd48:	41                   	inc    ecx
c000cd49:	83 03 44             	add    DWORD PTR [ebx],0x44
c000cd4c:	2e 04 04             	cs add al,0x4
c000cd4f:	0c 00                	or     al,0x0
c000cd51:	00 00                	add    BYTE PTR [eax],al
c000cd53:	2e 00 4d c5          	add    BYTE PTR cs:[ebp-0x3b],cl
c000cd57:	0c 04                	or     al,0x4
c000cd59:	04 c3                	add    al,0xc3
c000cd5b:	00 44 00 00          	add    BYTE PTR [eax+eax*1+0x0],al
c000cd5f:	00 68 0a             	add    BYTE PTR [eax+0xa],ch
c000cd62:	00 00                	add    BYTE PTR [eax],al
c000cd64:	ac                   	lods   al,BYTE PTR ds:[esi]
c000cd65:	98                   	cwde   
c000cd66:	00 c0                	add    al,al
c000cd68:	43                   	inc    ebx
c000cd69:	00 00                	add    BYTE PTR [eax],al
c000cd6b:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000cd6e:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000cd74:	41                   	inc    ecx
c000cd75:	86 03                	xchg   BYTE PTR [ebx],al
c000cd77:	45                   	inc    ebp
c000cd78:	83 04 04 06          	add    DWORD PTR [esp+eax*1],0x6
c000cd7c:	00 00                	add    BYTE PTR [eax],al
c000cd7e:	00 2e                	add    BYTE PTR [esi],ch
c000cd80:	0c 46                	or     al,0x46
c000cd82:	2e 10 4a 2e          	adc    BYTE PTR cs:[edx+0x2e],cl
c000cd86:	00 49 2e             	add    BYTE PTR [ecx+0x2e],cl
c000cd89:	04 04                	add    al,0x4
c000cd8b:	05 00 00 00 2e       	add    eax,0x2e000000
c000cd90:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c000cd93:	0c 45                	or     al,0x45
c000cd95:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000cd99:	00 44 c3 41          	add    BYTE PTR [ebx+eax*8+0x41],al
c000cd9d:	c6 41 0c 04          	mov    BYTE PTR [ecx+0xc],0x4
c000cda1:	04 c5                	add    al,0xc5
c000cda3:	00 28                	add    BYTE PTR [eax],ch
c000cda5:	00 00                	add    BYTE PTR [eax],al
c000cda7:	00 b0 0a 00 00 ef    	add    BYTE PTR [eax-0x10fffff6],dh
c000cdad:	98                   	cwde   
c000cdae:	00 c0                	add    al,al
c000cdb0:	26 00 00             	add    BYTE PTR es:[eax],al
c000cdb3:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000cdb6:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000cdbc:	43                   	inc    ebx
c000cdbd:	2e 08 55 2e          	or     BYTE PTR cs:[ebp+0x2e],dl
c000cdc1:	0c 41                	or     al,0x41
c000cdc3:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000cdc7:	00 41 c5             	add    BYTE PTR [ecx-0x3b],al
c000cdca:	0c 04                	or     al,0x4
c000cdcc:	04 00                	add    al,0x0
c000cdce:	00 00                	add    BYTE PTR [eax],al
c000cdd0:	98                   	cwde   
c000cdd1:	00 00                	add    BYTE PTR [eax],al
c000cdd3:	00 dc                	add    ah,bl
c000cdd5:	0a 00                	or     al,BYTE PTR [eax]
c000cdd7:	00 15 99 00 c0 da    	add    BYTE PTR ds:0xdac00099,dl
c000cddd:	00 00                	add    BYTE PTR [eax],al
c000cddf:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000cde2:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000cde8:	46                   	inc    esi
c000cde9:	83 05 86 04 87 03 58 	add    DWORD PTR ds:0x3870486,0x58
c000cdf0:	2e 04 04             	cs add al,0x4
c000cdf3:	04 00                	add    al,0x0
c000cdf5:	00 00                	add    BYTE PTR [eax],al
c000cdf7:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c000cdfb:	0c 41                	or     al,0x41
c000cdfd:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000ce01:	00 49 2e             	add    BYTE PTR [ecx+0x2e],cl
c000ce04:	04 04                	add    al,0x4
c000ce06:	05 00 00 00 2e       	add    eax,0x2e000000
c000ce0b:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c000ce0e:	0c 45                	or     al,0x45
c000ce10:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000ce14:	00 46 2e             	add    BYTE PTR [esi+0x2e],al
c000ce17:	04 04                	add    al,0x4
c000ce19:	04 00                	add    al,0x0
c000ce1b:	00 00                	add    BYTE PTR [eax],al
c000ce1d:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c000ce21:	0c 41                	or     al,0x41
c000ce23:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000ce27:	00 49 2e             	add    BYTE PTR [ecx+0x2e],cl
c000ce2a:	04 04                	add    al,0x4
c000ce2c:	05 00 00 00 2e       	add    eax,0x2e000000
c000ce31:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c000ce34:	0c 45                	or     al,0x45
c000ce36:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000ce3a:	00 46 2e             	add    BYTE PTR [esi+0x2e],al
c000ce3d:	04 04                	add    al,0x4
c000ce3f:	04 00                	add    al,0x0
c000ce41:	00 00                	add    BYTE PTR [eax],al
c000ce43:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c000ce47:	0c 41                	or     al,0x41
c000ce49:	2e 10 54 2e 00       	adc    BYTE PTR cs:[esi+ebp*1+0x0],dl
c000ce4e:	5a                   	pop    edx
c000ce4f:	2e 04 04             	cs add al,0x4
c000ce52:	05 00 00 00 2e       	add    eax,0x2e000000
c000ce57:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c000ce5a:	0c 45                	or     al,0x45
c000ce5c:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000ce60:	00 47 c3             	add    BYTE PTR [edi-0x3d],al
c000ce63:	41                   	inc    ecx
c000ce64:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c000ce68:	0c 04                	or     al,0x4
c000ce6a:	04 c5                	add    al,0xc5
c000ce6c:	64 00 00             	add    BYTE PTR fs:[eax],al
c000ce6f:	00 78 0b             	add    BYTE PTR [eax+0xb],bh
c000ce72:	00 00                	add    BYTE PTR [eax],al
c000ce74:	ef                   	out    dx,eax
c000ce75:	99                   	cdq    
c000ce76:	00 c0                	add    al,al
c000ce78:	8c 00                	mov    WORD PTR [eax],es
c000ce7a:	00 00                	add    BYTE PTR [eax],al
c000ce7c:	41                   	inc    ecx
c000ce7d:	0e                   	push   cs
c000ce7e:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000ce84:	46                   	inc    esi
c000ce85:	83 05 86 04 87 03 55 	add    DWORD PTR ds:0x3870486,0x55
c000ce8c:	2e 04 04             	cs add al,0x4
c000ce8f:	05 00 00 00 2e       	add    eax,0x2e000000
c000ce94:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c000ce97:	0c 45                	or     al,0x45
c000ce99:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000ce9d:	00 43 2e             	add    BYTE PTR [ebx+0x2e],al
c000cea0:	0c 44                	or     al,0x44
c000cea2:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000cea6:	00 47 2e             	add    BYTE PTR [edi+0x2e],al
c000cea9:	0c 41                	or     al,0x41
c000ceab:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c000ceaf:	0c 43                	or     al,0x43
c000ceb1:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000ceb5:	00 4f 2e             	add    BYTE PTR [edi+0x2e],cl
c000ceb8:	04 04                	add    al,0x4
c000ceba:	05 00 00 00 2e       	add    eax,0x2e000000
c000cebf:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c000cec2:	0c 45                	or     al,0x45
c000cec4:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000cec8:	00 47 c3             	add    BYTE PTR [edi-0x3d],al
c000cecb:	41                   	inc    ecx
c000cecc:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c000ced0:	0c 04                	or     al,0x4
c000ced2:	04 c5                	add    al,0xc5
c000ced4:	40                   	inc    eax
c000ced5:	00 00                	add    BYTE PTR [eax],al
c000ced7:	00 e0                	add    al,ah
c000ced9:	0b 00                	or     eax,DWORD PTR [eax]
c000cedb:	00 7b 9a             	add    BYTE PTR [ebx-0x66],bh
c000cede:	00 c0                	add    al,al
c000cee0:	5b                   	pop    ebx
c000cee1:	00 00                	add    BYTE PTR [eax],al
c000cee3:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000cee6:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000ceec:	42                   	inc    edx
c000ceed:	83 04 86 03          	add    DWORD PTR [esi+eax*4],0x3
c000cef1:	51                   	push   ecx
c000cef2:	2e 0c 44             	cs or  al,0x44
c000cef5:	2e 10 4d 2e          	adc    BYTE PTR cs:[ebp+0x2e],cl
c000cef9:	00 4d 2e             	add    BYTE PTR [ebp+0x2e],cl
c000cefc:	04 04                	add    al,0x4
c000cefe:	05 00 00 00 2e       	add    eax,0x2e000000
c000cf03:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c000cf06:	0c 45                	or     al,0x45
c000cf08:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000cf0c:	00 50 c3             	add    BYTE PTR [eax-0x3d],dl
c000cf0f:	41                   	inc    ecx
c000cf10:	c6 41 0c 04          	mov    BYTE PTR [ecx+0xc],0x4
c000cf14:	04 c5                	add    al,0xc5
c000cf16:	00 00                	add    BYTE PTR [eax],al
c000cf18:	54                   	push   esp
c000cf19:	00 00                	add    BYTE PTR [eax],al
c000cf1b:	00 24 0c             	add    BYTE PTR [esp+ecx*1],ah
c000cf1e:	00 00                	add    BYTE PTR [eax],al
c000cf20:	d6                   	(bad)  
c000cf21:	9a 00 c0 78 00 00 00 	call   0x0:0x78c000
c000cf28:	41                   	inc    ecx
c000cf29:	0e                   	push   cs
c000cf2a:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000cf30:	42                   	inc    edx
c000cf31:	83 04 86 03          	add    DWORD PTR [esi+eax*4],0x3
c000cf35:	53                   	push   ebx
c000cf36:	2e 04 04             	cs add al,0x4
c000cf39:	05 00 00 00 2e       	add    eax,0x2e000000
c000cf3e:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c000cf41:	0c 45                	or     al,0x45
c000cf43:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000cf47:	00 50 0a             	add    BYTE PTR [eax+0xa],dl
c000cf4a:	c3                   	ret    
c000cf4b:	41                   	inc    ecx
c000cf4c:	c6 41 0c 04          	mov    BYTE PTR [ecx+0xc],0x4
c000cf50:	04 c5                	add    al,0xc5
c000cf52:	41                   	inc    ecx
c000cf53:	0b 47 2e             	or     eax,DWORD PTR [edi+0x2e]
c000cf56:	04 04                	add    al,0x4
c000cf58:	05 00 00 00 2e       	add    eax,0x2e000000
c000cf5d:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c000cf60:	0c 45                	or     al,0x45
c000cf62:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000cf66:	00 57 c3             	add    BYTE PTR [edi-0x3d],dl
c000cf69:	41                   	inc    ecx
c000cf6a:	c6 41 0c 04          	mov    BYTE PTR [ecx+0xc],0x4
c000cf6e:	04 c5                	add    al,0xc5
c000cf70:	28 00                	sub    BYTE PTR [eax],al
c000cf72:	00 00                	add    BYTE PTR [eax],al
c000cf74:	7c 0c                	jl     c000cf82 <_edata+0xc8a>
c000cf76:	00 00                	add    BYTE PTR [eax],al
c000cf78:	68 9b 00 c0 1a       	push   0x1ac0009b
c000cf7d:	00 00                	add    BYTE PTR [eax],al
c000cf7f:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000cf82:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000cf88:	41                   	inc    ecx
c000cf89:	86 03                	xchg   BYTE PTR [ebx],al
c000cf8b:	44                   	inc    esp
c000cf8c:	83 04 04 0e          	add    DWORD PTR [esp+eax*1],0xe
c000cf90:	00 00                	add    BYTE PTR [eax],al
c000cf92:	00 c3                	add    bl,al
c000cf94:	41                   	inc    ecx
c000cf95:	c6 41 0c 04          	mov    BYTE PTR [ecx+0xc],0x4
c000cf99:	04 c5                	add    al,0xc5
c000cf9b:	00 38                	add    BYTE PTR [eax],bh
c000cf9d:	00 00                	add    BYTE PTR [eax],al
c000cf9f:	00 a8 0c 00 00 82    	add    BYTE PTR [eax-0x7dfffff4],ch
c000cfa5:	9b                   	fwait
c000cfa6:	00 c0                	add    al,al
c000cfa8:	64 00 00             	add    BYTE PTR fs:[eax],al
c000cfab:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000cfae:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000cfb4:	44                   	inc    esp
c000cfb5:	2e 04 83             	cs add al,0x83
c000cfb8:	03 48 2e             	add    ecx,DWORD PTR [eax+0x2e]
c000cfbb:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c000cfbe:	0c 41                	or     al,0x41
c000cfc0:	2e 10 49 2e          	adc    BYTE PTR cs:[ecx+0x2e],cl
c000cfc4:	0c 41                	or     al,0x41
c000cfc6:	2e 08 43 2e          	or     BYTE PTR cs:[ebx+0x2e],al
c000cfca:	0c 44                	or     al,0x44
c000cfcc:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000cfd0:	00 78 c5             	add    BYTE PTR [eax-0x3b],bh
c000cfd3:	0c 04                	or     al,0x4
c000cfd5:	04 c3                	add    al,0xc3
c000cfd7:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c000cfda:	00 00                	add    BYTE PTR [eax],al
c000cfdc:	e4 0c                	in     al,0xc
c000cfde:	00 00                	add    BYTE PTR [eax],al
c000cfe0:	e6 9b                	out    0x9b,al
c000cfe2:	00 c0                	add    al,al
c000cfe4:	0c 00                	or     al,0x0
c000cfe6:	00 00                	add    BYTE PTR [eax],al
c000cfe8:	41                   	inc    ecx
c000cfe9:	0e                   	push   cs
c000cfea:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000cff0:	48                   	dec    eax
c000cff1:	0c 04                	or     al,0x4
c000cff3:	04 c5                	add    al,0xc5
c000cff5:	00 00                	add    BYTE PTR [eax],al
c000cff7:	00 40 00             	add    BYTE PTR [eax+0x0],al
c000cffa:	00 00                	add    BYTE PTR [eax],al
c000cffc:	04 0d                	add    al,0xd
c000cffe:	00 00                	add    BYTE PTR [eax],al
c000d000:	f2 9b                	repnz fwait
c000d002:	00 c0                	add    al,al
c000d004:	56                   	push   esi
c000d005:	00 00                	add    BYTE PTR [eax],al
c000d007:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000d00a:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000d010:	43                   	inc    ebx
c000d011:	2e 0c 45             	cs or  al,0x45
c000d014:	2e 10 59 2e          	adc    BYTE PTR cs:[ecx+0x2e],bl
c000d018:	04 04                	add    al,0x4
c000d01a:	02 00                	add    al,BYTE PTR [eax]
c000d01c:	00 00                	add    BYTE PTR [eax],al
c000d01e:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c000d022:	0c 41                	or     al,0x41
c000d024:	2e 10 59 2e          	adc    BYTE PTR cs:[ecx+0x2e],bl
c000d028:	0c 41                	or     al,0x41
c000d02a:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c000d02e:	0c 45                	or     al,0x45
c000d030:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000d034:	00 41 c5             	add    BYTE PTR [ecx-0x3b],al
c000d037:	0c 04                	or     al,0x4
c000d039:	04 00                	add    al,0x0
c000d03b:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c000d03e:	00 00                	add    BYTE PTR [eax],al
c000d040:	48                   	dec    eax
c000d041:	0d 00 00 48 9c       	or     eax,0x9c480000
c000d046:	00 c0                	add    al,al
c000d048:	56                   	push   esi
c000d049:	00 00                	add    BYTE PTR [eax],al
c000d04b:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000d04e:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000d054:	02 52 0c             	add    dl,BYTE PTR [edx+0xc]
c000d057:	04 04                	add    al,0x4
c000d059:	c5 00                	lds    eax,FWORD PTR [eax]
c000d05b:	00 b8 00 00 00 68    	add    BYTE PTR [eax+0x68000000],bh
c000d061:	0d 00 00 9e 9c       	or     eax,0x9c9e0000
c000d066:	00 c0                	add    al,al
c000d068:	bf 00 00 00 41       	mov    edi,0x41000000
c000d06d:	0e                   	push   cs
c000d06e:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000d074:	41                   	inc    ecx
c000d075:	86 03                	xchg   BYTE PTR [ebx],al
c000d077:	47                   	inc    edi
c000d078:	2e 0c 42             	cs or  al,0x42
c000d07b:	2e 10 83 04 04 0e 00 	adc    BYTE PTR cs:[ebx+0xe0404],al
c000d082:	00 00                	add    BYTE PTR [eax],al
c000d084:	2e 04 04             	cs add al,0x4
c000d087:	01 00                	add    DWORD PTR [eax],eax
c000d089:	00 00                	add    BYTE PTR [eax],al
c000d08b:	2e 08 43 2e          	or     BYTE PTR cs:[ebx+0x2e],al
c000d08f:	0c 41                	or     al,0x41
c000d091:	2e 10 4a 2e          	adc    BYTE PTR cs:[edx+0x2e],cl
c000d095:	04 04                	add    al,0x4
c000d097:	03 00                	add    eax,DWORD PTR [eax]
c000d099:	00 00                	add    BYTE PTR [eax],al
c000d09b:	2e 08 43 2e          	or     BYTE PTR cs:[ebx+0x2e],al
c000d09f:	0c 44                	or     al,0x44
c000d0a1:	2e 10 4c 2e 0c       	adc    BYTE PTR cs:[esi+ebp*1+0xc],cl
c000d0a6:	41                   	inc    ecx
c000d0a7:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c000d0ab:	0c 45                	or     al,0x45
c000d0ad:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000d0b1:	00 49 2e             	add    BYTE PTR [ecx+0x2e],cl
c000d0b4:	04 04                	add    al,0x4
c000d0b6:	05 00 00 00 2e       	add    eax,0x2e000000
c000d0bb:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c000d0be:	0c 45                	or     al,0x45
c000d0c0:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000d0c4:	00 41 2e             	add    BYTE PTR [ecx+0x2e],al
c000d0c7:	04 04                	add    al,0x4
c000d0c9:	01 00                	add    DWORD PTR [eax],eax
c000d0cb:	00 00                	add    BYTE PTR [eax],al
c000d0cd:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c000d0d1:	0c 45                	or     al,0x45
c000d0d3:	2e 10 49 2e          	adc    BYTE PTR cs:[ecx+0x2e],cl
c000d0d7:	0c 41                	or     al,0x41
c000d0d9:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c000d0dd:	0c 45                	or     al,0x45
c000d0df:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000d0e3:	00 49 2e             	add    BYTE PTR [ecx+0x2e],cl
c000d0e6:	04 04                	add    al,0x4
c000d0e8:	05 00 00 00 2e       	add    eax,0x2e000000
c000d0ed:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c000d0f0:	0c 45                	or     al,0x45
c000d0f2:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000d0f6:	00 41 2e             	add    BYTE PTR [ecx+0x2e],al
c000d0f9:	04 04                	add    al,0x4
c000d0fb:	01 00                	add    DWORD PTR [eax],eax
c000d0fd:	00 00                	add    BYTE PTR [eax],al
c000d0ff:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c000d103:	0c 45                	or     al,0x45
c000d105:	2e 10 4b c3          	adc    BYTE PTR cs:[ebx-0x3d],cl
c000d109:	41                   	inc    ecx
c000d10a:	c6 41 0c 04          	mov    BYTE PTR [ecx+0xc],0x4
c000d10e:	04 c5                	add    al,0xc5
c000d110:	41                   	inc    ecx
c000d111:	13 03                	adc    eax,DWORD PTR [ebx]
c000d113:	2e 00 00             	add    BYTE PTR cs:[eax],al
c000d116:	00 00                	add    BYTE PTR [eax],al
c000d118:	a0 00 00 00 24       	mov    al,ds:0x24000000
c000d11d:	0e                   	push   cs
c000d11e:	00 00                	add    BYTE PTR [eax],al
c000d120:	5d                   	pop    ebp
c000d121:	9d                   	popf   
c000d122:	00 c0                	add    al,al
c000d124:	ff 00                	inc    DWORD PTR [eax]
c000d126:	00 00                	add    BYTE PTR [eax],al
c000d128:	41                   	inc    ecx
c000d129:	0e                   	push   cs
c000d12a:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000d130:	42                   	inc    edx
c000d131:	83 04 86 03          	add    DWORD PTR [esi+eax*4],0x3
c000d135:	4f                   	dec    edi
c000d136:	2e 04 04             	cs add al,0x4
c000d139:	01 00                	add    DWORD PTR [eax],eax
c000d13b:	00 00                	add    BYTE PTR [eax],al
c000d13d:	2e 08 44 2e 0c       	or     BYTE PTR cs:[esi+ebp*1+0xc],al
c000d142:	45                   	inc    ebp
c000d143:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000d147:	00 49 2e             	add    BYTE PTR [ecx+0x2e],cl
c000d14a:	04 04                	add    al,0x4
c000d14c:	05 00 00 00 2e       	add    eax,0x2e000000
c000d151:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c000d154:	0c 45                	or     al,0x45
c000d156:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000d15a:	00 41 2e             	add    BYTE PTR [ecx+0x2e],al
c000d15d:	04 04                	add    al,0x4
c000d15f:	01 00                	add    DWORD PTR [eax],eax
c000d161:	00 00                	add    BYTE PTR [eax],al
c000d163:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c000d167:	0c 45                	or     al,0x45
c000d169:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000d16d:	00 56 2e             	add    BYTE PTR [esi+0x2e],dl
c000d170:	0c 45                	or     al,0x45
c000d172:	2e 10 52 2e          	adc    BYTE PTR cs:[edx+0x2e],dl
c000d176:	00 49 2e             	add    BYTE PTR [ecx+0x2e],cl
c000d179:	04 04                	add    al,0x4
c000d17b:	05 00 00 00 2e       	add    eax,0x2e000000
c000d180:	08 45 2e             	or     BYTE PTR [ebp+0x2e],al
c000d183:	0c 45                	or     al,0x45
c000d185:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000d189:	00 51 2e             	add    BYTE PTR [ecx+0x2e],dl
c000d18c:	04 04                	add    al,0x4
c000d18e:	05 00 00 00 2e       	add    eax,0x2e000000
c000d193:	08 45 2e             	or     BYTE PTR [ebp+0x2e],al
c000d196:	0c 45                	or     al,0x45
c000d198:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000d19c:	00 43 2e             	add    BYTE PTR [ebx+0x2e],al
c000d19f:	0c 45                	or     al,0x45
c000d1a1:	2e 10 5d 2e          	adc    BYTE PTR cs:[ebp+0x2e],bl
c000d1a5:	0c 41                	or     al,0x41
c000d1a7:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c000d1ab:	0c 41                	or     al,0x41
c000d1ad:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000d1b1:	00 44 c3 41          	add    BYTE PTR [ebx+eax*8+0x41],al
c000d1b5:	c6 41 0c 04          	mov    BYTE PTR [ecx+0xc],0x4
c000d1b9:	04 c5                	add    al,0xc5
c000d1bb:	00 38                	add    BYTE PTR [eax],bh
c000d1bd:	00 00                	add    BYTE PTR [eax],al
c000d1bf:	00 c8                	add    al,cl
c000d1c1:	0e                   	push   cs
c000d1c2:	00 00                	add    BYTE PTR [eax],al
c000d1c4:	5c                   	pop    esp
c000d1c5:	9e                   	sahf   
c000d1c6:	00 c0                	add    al,al
c000d1c8:	4b                   	dec    ebx
c000d1c9:	00 00                	add    BYTE PTR [eax],al
c000d1cb:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000d1ce:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000d1d4:	42                   	inc    edx
c000d1d5:	83 04 86 03          	add    DWORD PTR [esi+eax*4],0x3
c000d1d9:	4d                   	dec    ebp
c000d1da:	2e 04 04             	cs add al,0x4
c000d1dd:	05 00 00 00 2e       	add    eax,0x2e000000
c000d1e2:	08 45 2e             	or     BYTE PTR [ebp+0x2e],al
c000d1e5:	0c 45                	or     al,0x45
c000d1e7:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000d1eb:	00 5b c3             	add    BYTE PTR [ebx-0x3d],bl
c000d1ee:	41                   	inc    ecx
c000d1ef:	c6 41 0c 04          	mov    BYTE PTR [ecx+0xc],0x4
c000d1f3:	04 c5                	add    al,0xc5
c000d1f5:	00 00                	add    BYTE PTR [eax],al
c000d1f7:	00 88 00 00 00 04    	add    BYTE PTR [eax+0x4000000],cl
c000d1fd:	0f 00 00             	sldt   WORD PTR [eax]
c000d200:	a7                   	cmps   DWORD PTR ds:[esi],DWORD PTR es:[edi]
c000d201:	9e                   	sahf   
c000d202:	00 c0                	add    al,al
c000d204:	a2 00 00 00 41       	mov    ds:0x41000000,al
c000d209:	0e                   	push   cs
c000d20a:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000d210:	46                   	inc    esi
c000d211:	83 05 86 04 87 03 51 	add    DWORD PTR ds:0x3870486,0x51
c000d218:	2e 04 04             	cs add al,0x4
c000d21b:	01 00                	add    DWORD PTR [eax],eax
c000d21d:	00 00                	add    BYTE PTR [eax],al
c000d21f:	2e 08 44 2e 0c       	or     BYTE PTR cs:[esi+ebp*1+0xc],al
c000d224:	45                   	inc    ebp
c000d225:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000d229:	00 49 2e             	add    BYTE PTR [ecx+0x2e],cl
c000d22c:	04 04                	add    al,0x4
c000d22e:	05 00 00 00 2e       	add    eax,0x2e000000
c000d233:	08 45 2e             	or     BYTE PTR [ebp+0x2e],al
c000d236:	0c 45                	or     al,0x45
c000d238:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000d23c:	00 41 2e             	add    BYTE PTR [ecx+0x2e],al
c000d23f:	04 04                	add    al,0x4
c000d241:	01 00                	add    DWORD PTR [eax],eax
c000d243:	00 00                	add    BYTE PTR [eax],al
c000d245:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c000d249:	0c 45                	or     al,0x45
c000d24b:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000d24f:	00 49 2e             	add    BYTE PTR [ecx+0x2e],cl
c000d252:	04 04                	add    al,0x4
c000d254:	05 00 00 00 2e       	add    eax,0x2e000000
c000d259:	08 45 2e             	or     BYTE PTR [ebp+0x2e],al
c000d25c:	0c 45                	or     al,0x45
c000d25e:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000d262:	00 41 2e             	add    BYTE PTR [ecx+0x2e],al
c000d265:	04 04                	add    al,0x4
c000d267:	01 00                	add    DWORD PTR [eax],eax
c000d269:	00 00                	add    BYTE PTR [eax],al
c000d26b:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c000d26f:	0c 45                	or     al,0x45
c000d271:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000d275:	00 4e c3             	add    BYTE PTR [esi-0x3d],cl
c000d278:	41                   	inc    ecx
c000d279:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c000d27d:	0c 04                	or     al,0x4
c000d27f:	04 c5                	add    al,0xc5
c000d281:	00 00                	add    BYTE PTR [eax],al
c000d283:	00 2c 00             	add    BYTE PTR [eax+eax*1],ch
c000d286:	00 00                	add    BYTE PTR [eax],al
c000d288:	90                   	nop
c000d289:	0f 00 00             	sldt   WORD PTR [eax]
c000d28c:	4c                   	dec    esp
c000d28d:	9f                   	lahf   
c000d28e:	00 c0                	add    al,al
c000d290:	3e 00 00             	add    BYTE PTR ds:[eax],al
c000d293:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000d296:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000d29c:	41                   	inc    ecx
c000d29d:	87 03                	xchg   DWORD PTR [ebx],eax
c000d29f:	44                   	inc    esp
c000d2a0:	86 04 04             	xchg   BYTE PTR [esp+eax*1],al
c000d2a3:	06                   	push   es
c000d2a4:	00 00                	add    BYTE PTR [eax],al
c000d2a6:	00 83 05 6c c3 41    	add    BYTE PTR [ebx+0x41c36c05],al
c000d2ac:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c000d2b0:	0c 04                	or     al,0x4
c000d2b2:	04 c5                	add    al,0xc5
c000d2b4:	30 00                	xor    BYTE PTR [eax],al
c000d2b6:	00 00                	add    BYTE PTR [eax],al
c000d2b8:	c0 0f 00             	ror    BYTE PTR [edi],0x0
c000d2bb:	00 8a 9f 00 c0 99    	add    BYTE PTR [edx-0x663fff61],cl
c000d2c1:	00 00                	add    BYTE PTR [eax],al
c000d2c3:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000d2c6:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000d2cc:	43                   	inc    ebx
c000d2cd:	2e 04 04             	cs add al,0x4
c000d2d0:	02 00                	add    al,BYTE PTR [eax]
c000d2d2:	00 00                	add    BYTE PTR [eax],al
c000d2d4:	2e 08 42 2e          	or     BYTE PTR cs:[edx+0x2e],al
c000d2d8:	0c 45                	or     al,0x45
c000d2da:	2e 10 02             	adc    BYTE PTR cs:[edx],al
c000d2dd:	88 2e                	mov    BYTE PTR [esi],ch
c000d2df:	00 41 c5             	add    BYTE PTR [ecx-0x3b],al
c000d2e2:	0c 04                	or     al,0x4
c000d2e4:	04 00                	add    al,0x0
c000d2e6:	00 00                	add    BYTE PTR [eax],al
c000d2e8:	1c 00                	sbb    al,0x0
c000d2ea:	00 00                	add    BYTE PTR [eax],al
c000d2ec:	f4                   	hlt    
c000d2ed:	0f 00 00             	sldt   WORD PTR [eax]
c000d2f0:	23 a0 00 c0 12 00    	and    esp,DWORD PTR [eax+0x12c000]
c000d2f6:	00 00                	add    BYTE PTR [eax],al
c000d2f8:	41                   	inc    ecx
c000d2f9:	0e                   	push   cs
c000d2fa:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000d300:	44                   	inc    esp
c000d301:	0c 04                	or     al,0x4
c000d303:	04 c5                	add    al,0xc5
c000d305:	00 00                	add    BYTE PTR [eax],al
c000d307:	00 38                	add    BYTE PTR [eax],bh
c000d309:	00 00                	add    BYTE PTR [eax],al
c000d30b:	00 14 10             	add    BYTE PTR [eax+edx*1],dl
c000d30e:	00 00                	add    BYTE PTR [eax],al
c000d310:	38 a0 00 c0 dd 00    	cmp    BYTE PTR [eax+0xddc000],ah
c000d316:	00 00                	add    BYTE PTR [eax],al
c000d318:	41                   	inc    ecx
c000d319:	0e                   	push   cs
c000d31a:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000d320:	42                   	inc    edx
c000d321:	83 04 86 03          	add    DWORD PTR [esi+eax*4],0x3
c000d325:	02 a5 2e 04 04 01    	add    ah,BYTE PTR [ebp+0x104042e]
c000d32b:	00 00                	add    BYTE PTR [eax],al
c000d32d:	00 2e                	add    BYTE PTR [esi],ch
c000d32f:	08 45 2e             	or     BYTE PTR [ebp+0x2e],al
c000d332:	0c 42                	or     al,0x42
c000d334:	2e 10 64 2e 00       	adc    BYTE PTR cs:[esi+ebp*1+0x0],ah
c000d339:	44                   	inc    esp
c000d33a:	c3                   	ret    
c000d33b:	41                   	inc    ecx
c000d33c:	c6 41 0c 04          	mov    BYTE PTR [ecx+0xc],0x4
c000d340:	04 c5                	add    al,0xc5
c000d342:	00 00                	add    BYTE PTR [eax],al
c000d344:	1c 00                	sbb    al,0x0
c000d346:	00 00                	add    BYTE PTR [eax],al
c000d348:	50                   	push   eax
c000d349:	10 00                	adc    BYTE PTR [eax],al
c000d34b:	00 15 a1 00 c0 0d    	add    BYTE PTR ds:0xdc000a1,dl
c000d351:	00 00                	add    BYTE PTR [eax],al
c000d353:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000d356:	08 85 02 47 0d 05    	or     BYTE PTR [ebp+0x50d4702],al
c000d35c:	44                   	inc    esp
c000d35d:	0c 04                	or     al,0x4
c000d35f:	04 c5                	add    al,0xc5
c000d361:	00 00                	add    BYTE PTR [eax],al
c000d363:	00 3c 00             	add    BYTE PTR [eax+eax*1],bh
c000d366:	00 00                	add    BYTE PTR [eax],al
c000d368:	70 10                	jo     c000d37a <_edata+0x1082>
c000d36a:	00 00                	add    BYTE PTR [eax],al
c000d36c:	22 a1 00 c0 44 00    	and    ah,BYTE PTR [ecx+0x44c000]
c000d372:	00 00                	add    BYTE PTR [eax],al
c000d374:	41                   	inc    ecx
c000d375:	0e                   	push   cs
c000d376:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000d37c:	42                   	inc    edx
c000d37d:	83 03 4c             	add    DWORD PTR [ebx],0x4c
c000d380:	2e 04 04             	cs add al,0x4
c000d383:	05 00 00 00 2e       	add    eax,0x2e000000
c000d388:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c000d38b:	0c 45                	or     al,0x45
c000d38d:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000d391:	00 55 0a             	add    BYTE PTR [ebp+0xa],dl
c000d394:	c5 0c 04             	lds    ecx,FWORD PTR [esp+eax*1]
c000d397:	04 c3                	add    al,0xc3
c000d399:	45                   	inc    ebp
c000d39a:	0b 44 c5 0c          	or     eax,DWORD PTR [ebp+eax*8+0xc]
c000d39e:	04 04                	add    al,0x4
c000d3a0:	c3                   	ret    
c000d3a1:	00 00                	add    BYTE PTR [eax],al
c000d3a3:	00 4c 00 00          	add    BYTE PTR [eax+eax*1+0x0],cl
c000d3a7:	00 b0 10 00 00 66    	add    BYTE PTR [eax+0x66000010],dh
c000d3ad:	a1 00 c0 59 00       	mov    eax,ds:0x59c000
c000d3b2:	00 00                	add    BYTE PTR [eax],al
c000d3b4:	41                   	inc    ecx
c000d3b5:	0e                   	push   cs
c000d3b6:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000d3bc:	44                   	inc    esp
c000d3bd:	2e 0c 83             	cs or  al,0x83
c000d3c0:	03 42 2e             	add    eax,DWORD PTR [edx+0x2e]
c000d3c3:	10 48 2e             	adc    BYTE PTR [eax+0x2e],cl
c000d3c6:	00 47 2e             	add    BYTE PTR [edi+0x2e],al
c000d3c9:	04 04                	add    al,0x4
c000d3cb:	01 00                	add    DWORD PTR [eax],eax
c000d3cd:	00 00                	add    BYTE PTR [eax],al
c000d3cf:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c000d3d3:	0c 42                	or     al,0x42
c000d3d5:	2e 10 47 2e          	adc    BYTE PTR cs:[edi+0x2e],al
c000d3d9:	00 41 2e             	add    BYTE PTR [ecx+0x2e],al
c000d3dc:	04 04                	add    al,0x4
c000d3de:	05 00 00 00 2e       	add    eax,0x2e000000
c000d3e3:	08 45 2e             	or     BYTE PTR [ebp+0x2e],al
c000d3e6:	0c 47                	or     al,0x47
c000d3e8:	2e 10 5b 2e          	adc    BYTE PTR cs:[ebx+0x2e],bl
c000d3ec:	00 44 c5 0c          	add    BYTE PTR [ebp+eax*8+0xc],al
c000d3f0:	04 04                	add    al,0x4
c000d3f2:	c3                   	ret    
c000d3f3:	00 30                	add    BYTE PTR [eax],dh
c000d3f5:	00 00                	add    BYTE PTR [eax],al
c000d3f7:	00 00                	add    BYTE PTR [eax],al
c000d3f9:	11 00                	adc    DWORD PTR [eax],eax
c000d3fb:	00 bf a1 00 c0 21    	add    BYTE PTR [edi+0x21c000a1],bh
c000d401:	00 00                	add    BYTE PTR [eax],al
c000d403:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000d406:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000d40c:	43                   	inc    ebx
c000d40d:	2e 0c 42             	cs or  al,0x42
c000d410:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c000d414:	0c 41                	or     al,0x41
c000d416:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c000d41a:	0c 47                	or     al,0x47
c000d41c:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000d420:	00 41 c5             	add    BYTE PTR [ecx-0x3b],al
c000d423:	0c 04                	or     al,0x4
c000d425:	04 00                	add    al,0x0
c000d427:	00 b4 00 00 00 34 11 	add    BYTE PTR [eax+eax*1+0x11340000],dh
c000d42e:	00 00                	add    BYTE PTR [eax],al
c000d430:	e0 a1                	loopne c000d3d3 <_edata+0x10db>
c000d432:	00 c0                	add    al,al
c000d434:	dc 00                	fadd   QWORD PTR [eax]
c000d436:	00 00                	add    BYTE PTR [eax],al
c000d438:	41                   	inc    ecx
c000d439:	0e                   	push   cs
c000d43a:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000d440:	46                   	inc    esi
c000d441:	2e 0c 83             	cs or  al,0x83
c000d444:	05 86 04 87 03       	add    eax,0x3870486
c000d449:	45                   	inc    ebp
c000d44a:	2e 10 4b 2e          	adc    BYTE PTR cs:[ebx+0x2e],cl
c000d44e:	04 04                	add    al,0x4
c000d450:	02 00                	add    al,BYTE PTR [eax]
c000d452:	00 00                	add    BYTE PTR [eax],al
c000d454:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c000d458:	0c 43                	or     al,0x43
c000d45a:	2e 10 50 2e          	adc    BYTE PTR cs:[eax+0x2e],dl
c000d45e:	04 04                	add    al,0x4
c000d460:	01 00                	add    DWORD PTR [eax],eax
c000d462:	00 00                	add    BYTE PTR [eax],al
c000d464:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c000d468:	0c 41                	or     al,0x41
c000d46a:	2e 10 5c 2e 0c       	adc    BYTE PTR cs:[esi+ebp*1+0xc],bl
c000d46f:	43                   	inc    ebx
c000d470:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c000d474:	0c 45                	or     al,0x45
c000d476:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000d47a:	00 49 2e             	add    BYTE PTR [ecx+0x2e],cl
c000d47d:	04 04                	add    al,0x4
c000d47f:	05 00 00 00 2e       	add    eax,0x2e000000
c000d484:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c000d487:	0c 45                	or     al,0x45
c000d489:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000d48d:	00 41 2e             	add    BYTE PTR [ecx+0x2e],al
c000d490:	04 04                	add    al,0x4
c000d492:	04 00                	add    al,0x0
c000d494:	00 00                	add    BYTE PTR [eax],al
c000d496:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c000d49a:	0c 45                	or     al,0x45
c000d49c:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c000d4a0:	0c 41                	or     al,0x41
c000d4a2:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c000d4a6:	0c 45                	or     al,0x45
c000d4a8:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000d4ac:	00 49 2e             	add    BYTE PTR [ecx+0x2e],cl
c000d4af:	04 04                	add    al,0x4
c000d4b1:	05 00 00 00 2e       	add    eax,0x2e000000
c000d4b6:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c000d4b9:	0c 45                	or     al,0x45
c000d4bb:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000d4bf:	00 41 2e             	add    BYTE PTR [ecx+0x2e],al
c000d4c2:	04 04                	add    al,0x4
c000d4c4:	01 00                	add    DWORD PTR [eax],eax
c000d4c6:	00 00                	add    BYTE PTR [eax],al
c000d4c8:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c000d4cc:	0c 45                	or     al,0x45
c000d4ce:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000d4d2:	00 47 c3             	add    BYTE PTR [edi-0x3d],al
c000d4d5:	41                   	inc    ecx
c000d4d6:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c000d4da:	0c 04                	or     al,0x4
c000d4dc:	04 c5                	add    al,0xc5
c000d4de:	00 00                	add    BYTE PTR [eax],al
c000d4e0:	24 00                	and    al,0x0
c000d4e2:	00 00                	add    BYTE PTR [eax],al
c000d4e4:	ec                   	in     al,dx
c000d4e5:	11 00                	adc    DWORD PTR [eax],eax
c000d4e7:	00 bc a2 00 c0 15 00 	add    BYTE PTR [edx+eiz*4+0x15c000],bh
c000d4ee:	00 00                	add    BYTE PTR [eax],al
c000d4f0:	41                   	inc    ecx
c000d4f1:	0e                   	push   cs
c000d4f2:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000d4f8:	43                   	inc    ebx
c000d4f9:	2e 0c 45             	cs or  al,0x45
c000d4fc:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000d500:	00 41 c5             	add    BYTE PTR [ecx-0x3b],al
c000d503:	0c 04                	or     al,0x4
c000d505:	04 00                	add    al,0x0
c000d507:	00 3c 00             	add    BYTE PTR [eax+eax*1],bh
c000d50a:	00 00                	add    BYTE PTR [eax],al
c000d50c:	14 12                	adc    al,0x12
c000d50e:	00 00                	add    BYTE PTR [eax],al
c000d510:	d1 a2 00 c0 3e 00    	shl    DWORD PTR [edx+0x3ec000],1
c000d516:	00 00                	add    BYTE PTR [eax],al
c000d518:	41                   	inc    ecx
c000d519:	0e                   	push   cs
c000d51a:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000d520:	41                   	inc    ecx
c000d521:	86 03                	xchg   BYTE PTR [ebx],al
c000d523:	44                   	inc    esp
c000d524:	83 04 04 06          	add    DWORD PTR [esp+eax*1],0x6
c000d528:	00 00                	add    BYTE PTR [eax],al
c000d52a:	00 2e                	add    BYTE PTR [esi],ch
c000d52c:	0c 45                	or     al,0x45
c000d52e:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c000d532:	0c 41                	or     al,0x41
c000d534:	2e 08 46 2e          	or     BYTE PTR cs:[esi+0x2e],al
c000d538:	0c 44                	or     al,0x44
c000d53a:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000d53e:	00 4b c3             	add    BYTE PTR [ebx-0x3d],cl
c000d541:	41                   	inc    ecx
c000d542:	c6 41 0c 04          	mov    BYTE PTR [ecx+0xc],0x4
c000d546:	04 c5                	add    al,0xc5
c000d548:	3c 00                	cmp    al,0x0
c000d54a:	00 00                	add    BYTE PTR [eax],al
c000d54c:	54                   	push   esp
c000d54d:	12 00                	adc    al,BYTE PTR [eax]
c000d54f:	00 0f                	add    BYTE PTR [edi],cl
c000d551:	a3 00 c0 39 00       	mov    ds:0x39c000,eax
c000d556:	00 00                	add    BYTE PTR [eax],al
c000d558:	41                   	inc    ecx
c000d559:	0e                   	push   cs
c000d55a:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000d560:	41                   	inc    ecx
c000d561:	86 03                	xchg   BYTE PTR [ebx],al
c000d563:	44                   	inc    esp
c000d564:	83 04 04 06          	add    DWORD PTR [esp+eax*1],0x6
c000d568:	00 00                	add    BYTE PTR [eax],al
c000d56a:	00 2e                	add    BYTE PTR [esi],ch
c000d56c:	0c 45                	or     al,0x45
c000d56e:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c000d572:	0c 41                	or     al,0x41
c000d574:	2e 08 44 2e 0c       	or     BYTE PTR cs:[esi+ebp*1+0xc],al
c000d579:	41                   	inc    ecx
c000d57a:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000d57e:	00 4b c3             	add    BYTE PTR [ebx-0x3d],cl
c000d581:	41                   	inc    ecx
c000d582:	c6 41 0c 04          	mov    BYTE PTR [ecx+0xc],0x4
c000d586:	04 c5                	add    al,0xc5
c000d588:	40                   	inc    eax
c000d589:	00 00                	add    BYTE PTR [eax],al
c000d58b:	00 94 12 00 00 48 a3 	add    BYTE PTR [edx+edx*1-0x5cb80000],dl
c000d592:	00 c0                	add    al,al
c000d594:	40                   	inc    eax
c000d595:	00 00                	add    BYTE PTR [eax],al
c000d597:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000d59a:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000d5a0:	46                   	inc    esi
c000d5a1:	2e 0c 83             	cs or  al,0x83
c000d5a4:	05 86 04 87 03       	add    eax,0x3870486
c000d5a9:	4e                   	dec    esi
c000d5aa:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000d5ae:	04 04                	add    al,0x4
c000d5b0:	01 00                	add    DWORD PTR [eax],eax
c000d5b2:	00 00                	add    BYTE PTR [eax],al
c000d5b4:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c000d5b8:	0c 44                	or     al,0x44
c000d5ba:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000d5be:	00 4b c3             	add    BYTE PTR [ebx-0x3d],cl
c000d5c1:	41                   	inc    ecx
c000d5c2:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c000d5c6:	0c 04                	or     al,0x4
c000d5c8:	04 c5                	add    al,0xc5
c000d5ca:	00 00                	add    BYTE PTR [eax],al
c000d5cc:	40                   	inc    eax
c000d5cd:	00 00                	add    BYTE PTR [eax],al
c000d5cf:	00 d8                	add    al,bl
c000d5d1:	12 00                	adc    al,BYTE PTR [eax]
c000d5d3:	00 88 a3 00 c0 40    	add    BYTE PTR [eax+0x40c000a3],cl
c000d5d9:	00 00                	add    BYTE PTR [eax],al
c000d5db:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000d5de:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000d5e4:	46                   	inc    esi
c000d5e5:	2e 0c 83             	cs or  al,0x83
c000d5e8:	05 86 04 87 03       	add    eax,0x3870486
c000d5ed:	4e                   	dec    esi
c000d5ee:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000d5f2:	04 04                	add    al,0x4
c000d5f4:	01 00                	add    DWORD PTR [eax],eax
c000d5f6:	00 00                	add    BYTE PTR [eax],al
c000d5f8:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c000d5fc:	0c 44                	or     al,0x44
c000d5fe:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000d602:	00 4b c3             	add    BYTE PTR [ebx-0x3d],cl
c000d605:	41                   	inc    ecx
c000d606:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c000d60a:	0c 04                	or     al,0x4
c000d60c:	04 c5                	add    al,0xc5
c000d60e:	00 00                	add    BYTE PTR [eax],al
c000d610:	3c 00                	cmp    al,0x0
c000d612:	00 00                	add    BYTE PTR [eax],al
c000d614:	1c 13                	sbb    al,0x13
c000d616:	00 00                	add    BYTE PTR [eax],al
c000d618:	c8 a3 00 c0          	enter  0xa3,0xc0
c000d61c:	66 00 00             	data16 add BYTE PTR [eax],al
c000d61f:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000d622:	08 85 02 44 0d 05    	or     BYTE PTR [ebp+0x50d4402],al
c000d628:	48                   	dec    eax
c000d629:	83 05 86 04 87 03 67 	add    DWORD PTR ds:0x3870486,0x67
c000d630:	2e 04 04             	cs add al,0x4
c000d633:	01 00                	add    DWORD PTR [eax],eax
c000d635:	00 00                	add    BYTE PTR [eax],al
c000d637:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c000d63b:	0c 42                	or     al,0x42
c000d63d:	2e 10 5e 2e          	adc    BYTE PTR cs:[esi+0x2e],bl
c000d641:	00 4c c3 41          	add    BYTE PTR [ebx+eax*8+0x41],cl
c000d645:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c000d649:	0c 04                	or     al,0x4
c000d64b:	04 c5                	add    al,0xc5
c000d64d:	00 00                	add    BYTE PTR [eax],al
c000d64f:	00 3c 00             	add    BYTE PTR [eax+eax*1],bh
c000d652:	00 00                	add    BYTE PTR [eax],al
c000d654:	5c                   	pop    esp
c000d655:	13 00                	adc    eax,DWORD PTR [eax]
c000d657:	00 2e                	add    BYTE PTR [esi],ch
c000d659:	a4                   	movs   BYTE PTR es:[edi],BYTE PTR ds:[esi]
c000d65a:	00 c0                	add    al,al
c000d65c:	66 00 00             	data16 add BYTE PTR [eax],al
c000d65f:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000d662:	08 85 02 44 0d 05    	or     BYTE PTR [ebp+0x50d4402],al
c000d668:	48                   	dec    eax
c000d669:	83 05 86 04 87 03 67 	add    DWORD PTR ds:0x3870486,0x67
c000d670:	2e 04 04             	cs add al,0x4
c000d673:	01 00                	add    DWORD PTR [eax],eax
c000d675:	00 00                	add    BYTE PTR [eax],al
c000d677:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c000d67b:	0c 42                	or     al,0x42
c000d67d:	2e 10 5e 2e          	adc    BYTE PTR cs:[esi+0x2e],bl
c000d681:	00 4c c3 41          	add    BYTE PTR [ebx+eax*8+0x41],cl
c000d685:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c000d689:	0c 04                	or     al,0x4
c000d68b:	04 c5                	add    al,0xc5
c000d68d:	00 00                	add    BYTE PTR [eax],al
c000d68f:	00 2c 00             	add    BYTE PTR [eax+eax*1],ch
c000d692:	00 00                	add    BYTE PTR [eax],al
c000d694:	9c                   	pushf  
c000d695:	13 00                	adc    eax,DWORD PTR [eax]
c000d697:	00 94 a4 00 c0 1e 00 	add    BYTE PTR [esp+eiz*4+0x1ec000],dl
c000d69e:	00 00                	add    BYTE PTR [eax],al
c000d6a0:	41                   	inc    ecx
c000d6a1:	0e                   	push   cs
c000d6a2:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000d6a8:	45                   	inc    ebp
c000d6a9:	2e 04 04             	cs add al,0x4
c000d6ac:	02 00                	add    al,BYTE PTR [eax]
c000d6ae:	00 00                	add    BYTE PTR [eax],al
c000d6b0:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c000d6b4:	0c 45                	or     al,0x45
c000d6b6:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000d6ba:	00 41 c5             	add    BYTE PTR [ecx-0x3b],al
c000d6bd:	0c 04                	or     al,0x4
c000d6bf:	04 50                	add    al,0x50
c000d6c1:	00 00                	add    BYTE PTR [eax],al
c000d6c3:	00 cc                	add    ah,cl
c000d6c5:	13 00                	adc    eax,DWORD PTR [eax]
c000d6c7:	00 b2 a4 00 c0 bf    	add    BYTE PTR [edx-0x403fff5c],dh
c000d6cd:	01 00                	add    DWORD PTR [eax],eax
c000d6cf:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000d6d2:	08 85 02 47 0d 05    	or     BYTE PTR [ebp+0x50d4702],al
c000d6d8:	46                   	inc    esi
c000d6d9:	83 03 03             	add    DWORD PTR [ebx],0x3
c000d6dc:	1d 01 2e 0c 45       	sbb    eax,0x450c2e01
c000d6e1:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000d6e5:	00 45 2e             	add    BYTE PTR [ebp+0x2e],al
c000d6e8:	04 04                	add    al,0x4
c000d6ea:	01 00                	add    DWORD PTR [eax],eax
c000d6ec:	00 00                	add    BYTE PTR [eax],al
c000d6ee:	2e 08 44 2e 0c       	or     BYTE PTR cs:[esi+ebp*1+0xc],al
c000d6f3:	45                   	inc    ebp
c000d6f4:	2e 10 47 2e          	adc    BYTE PTR cs:[edi+0x2e],al
c000d6f8:	00 02                	add    BYTE PTR [edx],al
c000d6fa:	5c                   	pop    esp
c000d6fb:	2e 04 04             	cs add al,0x4
c000d6fe:	01 00                	add    DWORD PTR [eax],eax
c000d700:	00 00                	add    BYTE PTR [eax],al
c000d702:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c000d706:	0c 42                	or     al,0x42
c000d708:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000d70c:	00 44 c5 0c          	add    BYTE PTR [ebp+eax*8+0xc],al
c000d710:	04 04                	add    al,0x4
c000d712:	c3                   	ret    
c000d713:	00 28                	add    BYTE PTR [eax],ch
c000d715:	00 00                	add    BYTE PTR [eax],al
c000d717:	00 20                	add    BYTE PTR [eax],ah
c000d719:	14 00                	adc    al,0x0
c000d71b:	00 74 a6 00          	add    BYTE PTR [esi+eiz*4+0x0],dh
c000d71f:	c0 ac 00 00 00 41 0e 	shr    BYTE PTR [eax+eax*1+0xe410000],0x8
c000d726:	08 
c000d727:	85 02                	test   DWORD PTR [edx],eax
c000d729:	42                   	inc    edx
c000d72a:	0d 05 42 86 04       	or     eax,0x4864205
c000d72f:	87 03                	xchg   DWORD PTR [ebx],eax
c000d731:	49                   	dec    ecx
c000d732:	83 05 02 96 c3 41 c6 	add    DWORD PTR ds:0x41c39602,0xffffffc6
c000d739:	41                   	inc    ecx
c000d73a:	c7 41 0c 04 04 c5 1c 	mov    DWORD PTR [ecx+0xc],0x1cc50404
c000d741:	00 00                	add    BYTE PTR [eax],al
c000d743:	00 4c 14 00          	add    BYTE PTR [esp+edx*1+0x0],cl
c000d747:	00 20                	add    BYTE PTR [eax],ah
c000d749:	a7                   	cmps   DWORD PTR ds:[esi],DWORD PTR es:[edi]
c000d74a:	00 c0                	add    al,al
c000d74c:	18 00                	sbb    BYTE PTR [eax],al
c000d74e:	00 00                	add    BYTE PTR [eax],al
c000d750:	41                   	inc    ecx
c000d751:	0e                   	push   cs
c000d752:	08 85 02 47 0d 05    	or     BYTE PTR [ebp+0x50d4702],al
c000d758:	4f                   	dec    edi
c000d759:	0c 04                	or     al,0x4
c000d75b:	04 c5                	add    al,0xc5
c000d75d:	00 00                	add    BYTE PTR [eax],al
c000d75f:	00 24 00             	add    BYTE PTR [eax+eax*1],ah
c000d762:	00 00                	add    BYTE PTR [eax],al
c000d764:	6c                   	ins    BYTE PTR es:[edi],dx
c000d765:	14 00                	adc    al,0x0
c000d767:	00 38                	add    BYTE PTR [eax],bh
c000d769:	a7                   	cmps   DWORD PTR ds:[esi],DWORD PTR es:[edi]
c000d76a:	00 c0                	add    al,al
c000d76c:	2f                   	das    
c000d76d:	00 00                	add    BYTE PTR [eax],al
c000d76f:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000d772:	08 85 02 47 0d 05    	or     BYTE PTR [ebp+0x50d4702],al
c000d778:	5c                   	pop    esp
c000d779:	0a c5                	or     al,ch
c000d77b:	0c 04                	or     al,0x4
c000d77d:	04 45                	add    al,0x45
c000d77f:	0b 45 c5             	or     eax,DWORD PTR [ebp-0x3b]
c000d782:	0c 04                	or     al,0x4
c000d784:	04 00                	add    al,0x0
c000d786:	00 00                	add    BYTE PTR [eax],al
c000d788:	2c 00                	sub    al,0x0
c000d78a:	00 00                	add    BYTE PTR [eax],al
c000d78c:	94                   	xchg   esp,eax
c000d78d:	14 00                	adc    al,0x0
c000d78f:	00 68 a7             	add    BYTE PTR [eax-0x59],ch
c000d792:	00 c0                	add    al,al
c000d794:	1a 00                	sbb    al,BYTE PTR [eax]
c000d796:	00 00                	add    BYTE PTR [eax],al
c000d798:	41                   	inc    ecx
c000d799:	0e                   	push   cs
c000d79a:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000d7a0:	43                   	inc    ebx
c000d7a1:	2e 04 04             	cs add al,0x4
c000d7a4:	05 00 00 00 2e       	add    eax,0x2e000000
c000d7a9:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c000d7ac:	0c 43                	or     al,0x43
c000d7ae:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000d7b2:	00 41 c5             	add    BYTE PTR [ecx-0x3b],al
c000d7b5:	0c 04                	or     al,0x4
c000d7b7:	04 1c                	add    al,0x1c
c000d7b9:	00 00                	add    BYTE PTR [eax],al
c000d7bb:	00 c4                	add    ah,al
c000d7bd:	14 00                	adc    al,0x0
c000d7bf:	00 82 a7 00 c0 23    	add    BYTE PTR [edx+0x23c000a7],al
c000d7c5:	00 00                	add    BYTE PTR [eax],al
c000d7c7:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000d7ca:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000d7d0:	47                   	inc    edi
c000d7d1:	0c 04                	or     al,0x4
c000d7d3:	04 c5                	add    al,0xc5
c000d7d5:	00 00                	add    BYTE PTR [eax],al
c000d7d7:	00 50 00             	add    BYTE PTR [eax+0x0],dl
c000d7da:	00 00                	add    BYTE PTR [eax],al
c000d7dc:	e4 14                	in     al,0x14
c000d7de:	00 00                	add    BYTE PTR [eax],al
c000d7e0:	a5                   	movs   DWORD PTR es:[edi],DWORD PTR ds:[esi]
c000d7e1:	a7                   	cmps   DWORD PTR ds:[esi],DWORD PTR es:[edi]
c000d7e2:	00 c0                	add    al,al
c000d7e4:	be 00 00 00 41       	mov    esi,0x41000000
c000d7e9:	0e                   	push   cs
c000d7ea:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000d7f0:	42                   	inc    edx
c000d7f1:	86 04 87             	xchg   BYTE PTR [edi+eax*4],al
c000d7f4:	03 46 83             	add    eax,DWORD PTR [esi-0x7d]
c000d7f7:	05 5c 2e 04 04       	add    eax,0x4042e5c
c000d7fc:	05 00 00 00 2e       	add    eax,0x2e000000
c000d801:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c000d804:	0c 45                	or     al,0x45
c000d806:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000d80a:	00 02                	add    BYTE PTR [edx],al
c000d80c:	4e                   	dec    esi
c000d80d:	2e 04 04             	cs add al,0x4
c000d810:	02 00                	add    al,BYTE PTR [eax]
c000d812:	00 00                	add    BYTE PTR [eax],al
c000d814:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c000d818:	0c 41                	or     al,0x41
c000d81a:	2e 10 4b 2e          	adc    BYTE PTR cs:[ebx+0x2e],cl
c000d81e:	00 62 c3             	add    BYTE PTR [edx-0x3d],ah
c000d821:	41                   	inc    ecx
c000d822:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c000d826:	0c 04                	or     al,0x4
c000d828:	04 c5                	add    al,0xc5
c000d82a:	00 00                	add    BYTE PTR [eax],al
c000d82c:	3c 00                	cmp    al,0x0
c000d82e:	00 00                	add    BYTE PTR [eax],al
c000d830:	38 15 00 00 63 a8    	cmp    BYTE PTR ds:0xa8630000,dl
c000d836:	00 c0                	add    al,al
c000d838:	68 00 00 00 41       	push   0x41000000
c000d83d:	0e                   	push   cs
c000d83e:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000d844:	46                   	inc    esi
c000d845:	83 05 86 04 87 03 53 	add    DWORD PTR ds:0x3870486,0x53
c000d84c:	2e 04 04             	cs add al,0x4
c000d84f:	05 00 00 00 2e       	add    eax,0x2e000000
c000d854:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c000d857:	0c 45                	or     al,0x45
c000d859:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000d85d:	00 74 c3 41          	add    BYTE PTR [ebx+eax*8+0x41],dh
c000d861:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c000d865:	0c 04                	or     al,0x4
c000d867:	04 c5                	add    al,0xc5
c000d869:	00 00                	add    BYTE PTR [eax],al
c000d86b:	00 30                	add    BYTE PTR [eax],dh
c000d86d:	00 00                	add    BYTE PTR [eax],al
c000d86f:	00 78 15             	add    BYTE PTR [eax+0x15],bh
c000d872:	00 00                	add    BYTE PTR [eax],al
c000d874:	cc                   	int3   
c000d875:	a8 00                	test   al,0x0
c000d877:	c0 6a 00 00          	shr    BYTE PTR [edx+0x0],0x0
c000d87b:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000d87e:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000d884:	46                   	inc    esi
c000d885:	2e 0c 83             	cs or  al,0x83
c000d888:	05 86 04 87 03       	add    eax,0x3870486
c000d88d:	4d                   	dec    ebp
c000d88e:	2e 10 4b 2e          	adc    BYTE PTR cs:[ebx+0x2e],cl
c000d892:	00 02                	add    BYTE PTR [edx],al
c000d894:	45                   	inc    ebp
c000d895:	c3                   	ret    
c000d896:	41                   	inc    ecx
c000d897:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c000d89b:	0c 04                	or     al,0x4
c000d89d:	04 c5                	add    al,0xc5
c000d89f:	00 58 00             	add    BYTE PTR [eax+0x0],bl
c000d8a2:	00 00                	add    BYTE PTR [eax],al
c000d8a4:	ac                   	lods   al,BYTE PTR ds:[esi]
c000d8a5:	15 00 00 36 a9       	adc    eax,0xa9360000
c000d8aa:	00 c0                	add    al,al
c000d8ac:	05 01 00 00 41       	add    eax,0x41000001
c000d8b1:	0e                   	push   cs
c000d8b2:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000d8b8:	46                   	inc    esi
c000d8b9:	83 05 86 04 87 03 53 	add    DWORD PTR ds:0x3870486,0x53
c000d8c0:	2e 0c 41             	cs or  al,0x41
c000d8c3:	2e 10 64 2e 00       	adc    BYTE PTR cs:[esi+ebp*1+0x0],ah
c000d8c8:	67 2e 04 04          	addr16 cs add al,0x4
c000d8cc:	05 00 00 00 2e       	add    eax,0x2e000000
c000d8d1:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c000d8d4:	0c 45                	or     al,0x45
c000d8d6:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000d8da:	00 02                	add    BYTE PTR [edx],al
c000d8dc:	64 2e 0c 41          	fs cs or al,0x41
c000d8e0:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000d8e4:	00 4a 2e             	add    BYTE PTR [edx+0x2e],cl
c000d8e7:	0c 43                	or     al,0x43
c000d8e9:	2e 10 4b c3          	adc    BYTE PTR cs:[ebx-0x3d],cl
c000d8ed:	41                   	inc    ecx
c000d8ee:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c000d8f2:	0c 04                	or     al,0x4
c000d8f4:	04 c5                	add    al,0xc5
c000d8f6:	41                   	inc    ecx
c000d8f7:	13 03                	adc    eax,DWORD PTR [ebx]
c000d8f9:	2e 00 00             	add    BYTE PTR cs:[eax],al
c000d8fc:	58                   	pop    eax
c000d8fd:	00 00                	add    BYTE PTR [eax],al
c000d8ff:	00 08                	add    BYTE PTR [eax],cl
c000d901:	16                   	push   ss
c000d902:	00 00                	add    BYTE PTR [eax],al
c000d904:	3b aa 00 c0 01 01    	cmp    ebp,DWORD PTR [edx+0x101c000]
c000d90a:	00 00                	add    BYTE PTR [eax],al
c000d90c:	41                   	inc    ecx
c000d90d:	0e                   	push   cs
c000d90e:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000d914:	46                   	inc    esi
c000d915:	83 05 86 04 87 03 69 	add    DWORD PTR ds:0x3870486,0x69
c000d91c:	2e 04 04             	cs add al,0x4
c000d91f:	05 00 00 00 2e       	add    eax,0x2e000000
c000d924:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c000d927:	0c 45                	or     al,0x45
c000d929:	2e 10 47 2e          	adc    BYTE PTR cs:[edi+0x2e],al
c000d92d:	00 43 2e             	add    BYTE PTR [ebx+0x2e],al
c000d930:	0c 41                	or     al,0x41
c000d932:	2e 10 64 2e 00       	adc    BYTE PTR cs:[esi+ebp*1+0x0],ah
c000d937:	02 71 2e             	add    dh,BYTE PTR [ecx+0x2e]
c000d93a:	0c 41                	or     al,0x41
c000d93c:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000d940:	00 4a 2e             	add    BYTE PTR [edx+0x2e],cl
c000d943:	0c 41                	or     al,0x41
c000d945:	2e 10 4b c3          	adc    BYTE PTR cs:[ebx-0x3d],cl
c000d949:	41                   	inc    ecx
c000d94a:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c000d94e:	0c 04                	or     al,0x4
c000d950:	04 c5                	add    al,0xc5
c000d952:	41                   	inc    ecx
c000d953:	13 03                	adc    eax,DWORD PTR [ebx]
c000d955:	2e 00 00             	add    BYTE PTR cs:[eax],al
c000d958:	1c 00                	sbb    al,0x0
c000d95a:	00 00                	add    BYTE PTR [eax],al
c000d95c:	64 16                	fs push ss
c000d95e:	00 00                	add    BYTE PTR [eax],al
c000d960:	3c ab                	cmp    al,0xab
c000d962:	00 c0                	add    al,al
c000d964:	14 00                	adc    al,0x0
c000d966:	00 00                	add    BYTE PTR [eax],al
c000d968:	41                   	inc    ecx
c000d969:	0e                   	push   cs
c000d96a:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000d970:	44                   	inc    esp
c000d971:	0c 04                	or     al,0x4
c000d973:	04 c5                	add    al,0xc5
c000d975:	00 00                	add    BYTE PTR [eax],al
c000d977:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c000d97a:	00 00                	add    BYTE PTR [eax],al
c000d97c:	84 16                	test   BYTE PTR [esi],dl
c000d97e:	00 00                	add    BYTE PTR [eax],al
c000d980:	50                   	push   eax
c000d981:	ab                   	stos   DWORD PTR es:[edi],eax
c000d982:	00 c0                	add    al,al
c000d984:	12 00                	adc    al,BYTE PTR [eax]
c000d986:	00 00                	add    BYTE PTR [eax],al
c000d988:	41                   	inc    ecx
c000d989:	0e                   	push   cs
c000d98a:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000d990:	44                   	inc    esp
c000d991:	0c 04                	or     al,0x4
c000d993:	04 c5                	add    al,0xc5
c000d995:	00 00                	add    BYTE PTR [eax],al
c000d997:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c000d99a:	00 00                	add    BYTE PTR [eax],al
c000d99c:	a4                   	movs   BYTE PTR es:[edi],BYTE PTR ds:[esi]
c000d99d:	16                   	push   ss
c000d99e:	00 00                	add    BYTE PTR [eax],al
c000d9a0:	64 ab                	fs stos DWORD PTR es:[edi],eax
c000d9a2:	00 c0                	add    al,al
c000d9a4:	1e                   	push   ds
c000d9a5:	00 00                	add    BYTE PTR [eax],al
c000d9a7:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000d9aa:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000d9b0:	5a                   	pop    edx
c000d9b1:	0c 04                	or     al,0x4
c000d9b3:	04 c5                	add    al,0xc5
c000d9b5:	00 00                	add    BYTE PTR [eax],al
c000d9b7:	00 28                	add    BYTE PTR [eax],ch
c000d9b9:	00 00                	add    BYTE PTR [eax],al
c000d9bb:	00 c4                	add    ah,al
c000d9bd:	16                   	push   ss
c000d9be:	00 00                	add    BYTE PTR [eax],al
c000d9c0:	82                   	(bad)  
c000d9c1:	ab                   	stos   DWORD PTR es:[edi],eax
c000d9c2:	00 c0                	add    al,al
c000d9c4:	29 00                	sub    DWORD PTR [eax],eax
c000d9c6:	00 00                	add    BYTE PTR [eax],al
c000d9c8:	41                   	inc    ecx
c000d9c9:	0e                   	push   cs
c000d9ca:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000d9d0:	41                   	inc    ecx
c000d9d1:	86 03                	xchg   BYTE PTR [ebx],al
c000d9d3:	44                   	inc    esp
c000d9d4:	83 04 04 1a          	add    DWORD PTR [esp+eax*1],0x1a
c000d9d8:	00 00                	add    BYTE PTR [eax],al
c000d9da:	00 c3                	add    bl,al
c000d9dc:	41                   	inc    ecx
c000d9dd:	c6 41 0c 04          	mov    BYTE PTR [ecx+0xc],0x4
c000d9e1:	04 c5                	add    al,0xc5
c000d9e3:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c000d9e6:	00 00                	add    BYTE PTR [eax],al
c000d9e8:	f0 16                	lock push ss
c000d9ea:	00 00                	add    BYTE PTR [eax],al
c000d9ec:	ab                   	stos   DWORD PTR es:[edi],eax
c000d9ed:	ab                   	stos   DWORD PTR es:[edi],eax
c000d9ee:	00 c0                	add    al,al
c000d9f0:	18 00                	sbb    BYTE PTR [eax],al
c000d9f2:	00 00                	add    BYTE PTR [eax],al
c000d9f4:	41                   	inc    ecx
c000d9f5:	0e                   	push   cs
c000d9f6:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000d9fc:	50                   	push   eax
c000d9fd:	0c 04                	or     al,0x4
c000d9ff:	04 c5                	add    al,0xc5
c000da01:	00 00                	add    BYTE PTR [eax],al
c000da03:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c000da06:	00 00                	add    BYTE PTR [eax],al
c000da08:	10 17                	adc    BYTE PTR [edi],dl
c000da0a:	00 00                	add    BYTE PTR [eax],al
c000da0c:	c3                   	ret    
c000da0d:	ab                   	stos   DWORD PTR es:[edi],eax
c000da0e:	00 c0                	add    al,al
c000da10:	18 00                	sbb    BYTE PTR [eax],al
c000da12:	00 00                	add    BYTE PTR [eax],al
c000da14:	41                   	inc    ecx
c000da15:	0e                   	push   cs
c000da16:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000da1c:	50                   	push   eax
c000da1d:	0c 04                	or     al,0x4
c000da1f:	04 c5                	add    al,0xc5
c000da21:	00 00                	add    BYTE PTR [eax],al
c000da23:	00 20                	add    BYTE PTR [eax],ah
c000da25:	00 00                	add    BYTE PTR [eax],al
c000da27:	00 30                	add    BYTE PTR [eax],dh
c000da29:	17                   	pop    ss
c000da2a:	00 00                	add    BYTE PTR [eax],al
c000da2c:	db ab 00 c0 27 00    	fld    TBYTE PTR [ebx+0x27c000]
c000da32:	00 00                	add    BYTE PTR [eax],al
c000da34:	41                   	inc    ecx
c000da35:	0e                   	push   cs
c000da36:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000da3c:	42                   	inc    edx
c000da3d:	83 03 5c             	add    DWORD PTR [ebx],0x5c
c000da40:	c3                   	ret    
c000da41:	41                   	inc    ecx
c000da42:	0c 04                	or     al,0x4
c000da44:	04 c5                	add    al,0xc5
c000da46:	00 00                	add    BYTE PTR [eax],al
c000da48:	28 00                	sub    BYTE PTR [eax],al
c000da4a:	00 00                	add    BYTE PTR [eax],al
c000da4c:	54                   	push   esp
c000da4d:	17                   	pop    ss
c000da4e:	00 00                	add    BYTE PTR [eax],al
c000da50:	02 ac 00 c0 1a 00 00 	add    ch,BYTE PTR [eax+eax*1+0x1ac0]
c000da57:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000da5a:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000da60:	44                   	inc    esp
c000da61:	2e 0c 83             	cs or  al,0x83
c000da64:	03 47 2e             	add    eax,DWORD PTR [edi+0x2e]
c000da67:	10 4b c5             	adc    BYTE PTR [ebx-0x3b],cl
c000da6a:	0c 04                	or     al,0x4
c000da6c:	04 c3                	add    al,0xc3
c000da6e:	41                   	inc    ecx
c000da6f:	13 03                	adc    eax,DWORD PTR [ebx]
c000da71:	2e 00 00             	add    BYTE PTR cs:[eax],al
c000da74:	1c 00                	sbb    al,0x0
c000da76:	00 00                	add    BYTE PTR [eax],al
c000da78:	80 17 00             	adc    BYTE PTR [edi],0x0
c000da7b:	00 1c ac             	add    BYTE PTR [esp+ebp*4],bl
c000da7e:	00 c0                	add    al,al
c000da80:	27                   	daa    
c000da81:	00 00                	add    BYTE PTR [eax],al
c000da83:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000da86:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000da8c:	63 0c 04             	arpl   WORD PTR [esp+eax*1],cx
c000da8f:	04 c5                	add    al,0xc5
c000da91:	00 00                	add    BYTE PTR [eax],al
c000da93:	00 3c 00             	add    BYTE PTR [eax+eax*1],bh
c000da96:	00 00                	add    BYTE PTR [eax],al
c000da98:	a0 17 00 00 43       	mov    al,ds:0x43000017
c000da9d:	ac                   	lods   al,BYTE PTR ds:[esi]
c000da9e:	00 c0                	add    al,al
c000daa0:	38 00                	cmp    BYTE PTR [eax],al
c000daa2:	00 00                	add    BYTE PTR [eax],al
c000daa4:	41                   	inc    ecx
c000daa5:	0e                   	push   cs
c000daa6:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000daac:	46                   	inc    esi
c000daad:	83 05 86 04 87 03 4f 	add    DWORD PTR ds:0x3870486,0x4f
c000dab4:	2e 04 04             	cs add al,0x4
c000dab7:	01 00                	add    DWORD PTR [eax],eax
c000dab9:	00 00                	add    BYTE PTR [eax],al
c000dabb:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c000dabf:	0c 41                	or     al,0x41
c000dac1:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c000dac5:	00 53 c3             	add    BYTE PTR [ebx-0x3d],dl
c000dac8:	41                   	inc    ecx
c000dac9:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c000dacd:	0c 04                	or     al,0x4
c000dacf:	04 c5                	add    al,0xc5
c000dad1:	00 00                	add    BYTE PTR [eax],al
c000dad3:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c000dad6:	00 00                	add    BYTE PTR [eax],al
c000dad8:	e0 17                	loopne c000daf1 <_edata+0x17f9>
c000dada:	00 00                	add    BYTE PTR [eax],al
c000dadc:	7b ac                	jnp    c000da8a <_edata+0x1792>
c000dade:	00 c0                	add    al,al
c000dae0:	1a 00                	sbb    al,BYTE PTR [eax]
c000dae2:	00 00                	add    BYTE PTR [eax],al
c000dae4:	41                   	inc    ecx
c000dae5:	0e                   	push   cs
c000dae6:	08 85 02 44 0d 05    	or     BYTE PTR [ebp+0x50d4402],al
c000daec:	54                   	push   esp
c000daed:	0c 04                	or     al,0x4
c000daef:	04 c5                	add    al,0xc5
c000daf1:	00 00                	add    BYTE PTR [eax],al
c000daf3:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c000daf6:	00 00                	add    BYTE PTR [eax],al
c000daf8:	00 18                	add    BYTE PTR [eax],bl
c000dafa:	00 00                	add    BYTE PTR [eax],al
c000dafc:	95                   	xchg   ebp,eax
c000dafd:	ac                   	lods   al,BYTE PTR ds:[esi]
c000dafe:	00 c0                	add    al,al
c000db00:	14 00                	adc    al,0x0
c000db02:	00 00                	add    BYTE PTR [eax],al
c000db04:	41                   	inc    ecx
c000db05:	0e                   	push   cs
c000db06:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000db0c:	44                   	inc    esp
c000db0d:	0c 04                	or     al,0x4
c000db0f:	04 c5                	add    al,0xc5
c000db11:	00 00                	add    BYTE PTR [eax],al
c000db13:	00 28                	add    BYTE PTR [eax],ch
c000db15:	00 00                	add    BYTE PTR [eax],al
c000db17:	00 20                	add    BYTE PTR [eax],ah
c000db19:	18 00                	sbb    BYTE PTR [eax],al
c000db1b:	00 ac ac 00 c0 5f 00 	add    BYTE PTR [esp+ebp*4+0x5fc000],ch
c000db22:	00 00                	add    BYTE PTR [eax],al
c000db24:	41                   	inc    ecx
c000db25:	0e                   	push   cs
c000db26:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000db2c:	45                   	inc    ebp
c000db2d:	86 04 87             	xchg   BYTE PTR [edi+eax*4],al
c000db30:	03 44 83 05          	add    eax,DWORD PTR [ebx+eax*4+0x5]
c000db34:	02 4f c3             	add    cl,BYTE PTR [edi-0x3d]
c000db37:	41                   	inc    ecx
c000db38:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c000db3c:	0c 04                	or     al,0x4
c000db3e:	04 c5                	add    al,0xc5
c000db40:	28 00                	sub    BYTE PTR [eax],al
c000db42:	00 00                	add    BYTE PTR [eax],al
c000db44:	4c                   	dec    esp
c000db45:	18 00                	sbb    BYTE PTR [eax],al
c000db47:	00 0b                	add    BYTE PTR [ebx],cl
c000db49:	ad                   	lods   eax,DWORD PTR ds:[esi]
c000db4a:	00 c0                	add    al,al
c000db4c:	44                   	inc    esp
c000db4d:	00 00                	add    BYTE PTR [eax],al
c000db4f:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000db52:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000db58:	44                   	inc    esp
c000db59:	86 03                	xchg   BYTE PTR [ebx],al
c000db5b:	47                   	inc    edi
c000db5c:	83 04 04 33          	add    DWORD PTR [esp+eax*1],0x33
c000db60:	00 00                	add    BYTE PTR [eax],al
c000db62:	00 c3                	add    bl,al
c000db64:	41                   	inc    ecx
c000db65:	c6 41 0c 04          	mov    BYTE PTR [ecx+0xc],0x4
c000db69:	04 c5                	add    al,0xc5
c000db6b:	00 20                	add    BYTE PTR [eax],ah
c000db6d:	00 00                	add    BYTE PTR [eax],al
c000db6f:	00 78 18             	add    BYTE PTR [eax+0x18],bh
c000db72:	00 00                	add    BYTE PTR [eax],al
c000db74:	4f                   	dec    edi
c000db75:	ad                   	lods   eax,DWORD PTR ds:[esi]
c000db76:	00 c0                	add    al,al
c000db78:	3c 00                	cmp    al,0x0
c000db7a:	00 00                	add    BYTE PTR [eax],al
c000db7c:	41                   	inc    ecx
c000db7d:	0e                   	push   cs
c000db7e:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000db84:	41                   	inc    ecx
c000db85:	83 03 76             	add    DWORD PTR [ebx],0x76
c000db88:	c3                   	ret    
c000db89:	41                   	inc    ecx
c000db8a:	0c 04                	or     al,0x4
c000db8c:	04 c5                	add    al,0xc5
c000db8e:	00 00                	add    BYTE PTR [eax],al
c000db90:	20 00                	and    BYTE PTR [eax],al
c000db92:	00 00                	add    BYTE PTR [eax],al
c000db94:	9c                   	pushf  
c000db95:	18 00                	sbb    BYTE PTR [eax],al
c000db97:	00 8b ad 00 c0 2e    	add    BYTE PTR [ebx+0x2ec000ad],cl
c000db9d:	00 00                	add    BYTE PTR [eax],al
c000db9f:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000dba2:	08 85 02 47 0d 05    	or     BYTE PTR [ebp+0x50d4702],al
c000dba8:	46                   	inc    esi
c000dba9:	83 03 5e             	add    DWORD PTR [ebx],0x5e
c000dbac:	c3                   	ret    
c000dbad:	41                   	inc    ecx
c000dbae:	0c 04                	or     al,0x4
c000dbb0:	04 c5                	add    al,0xc5
c000dbb2:	00 00                	add    BYTE PTR [eax],al
c000dbb4:	1c 00                	sbb    al,0x0
c000dbb6:	00 00                	add    BYTE PTR [eax],al
c000dbb8:	c0 18 00             	rcr    BYTE PTR [eax],0x0
c000dbbb:	00 b9 ad 00 c0 27    	add    BYTE PTR [ecx+0x27c000ad],bh
c000dbc1:	00 00                	add    BYTE PTR [eax],al
c000dbc3:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000dbc6:	08 85 02 47 0d 05    	or     BYTE PTR [ebp+0x50d4702],al
c000dbcc:	5e                   	pop    esi
c000dbcd:	0c 04                	or     al,0x4
c000dbcf:	04 c5                	add    al,0xc5
c000dbd1:	00 00                	add    BYTE PTR [eax],al
c000dbd3:	00 2c 00             	add    BYTE PTR [eax+eax*1],ch
c000dbd6:	00 00                	add    BYTE PTR [eax],al
c000dbd8:	e0 18                	loopne c000dbf2 <_edata+0x18fa>
c000dbda:	00 00                	add    BYTE PTR [eax],al
c000dbdc:	e0 ad                	loopne c000db8b <_edata+0x1893>
c000dbde:	00 c0                	add    al,al
c000dbe0:	a1 00 00 00 41       	mov    eax,ds:0x41000000
c000dbe5:	0e                   	push   cs
c000dbe6:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000dbec:	42                   	inc    edx
c000dbed:	83 03 02             	add    DWORD PTR [ebx],0x2
c000dbf0:	92                   	xchg   edx,eax
c000dbf1:	0a c3                	or     al,bl
c000dbf3:	41                   	inc    ecx
c000dbf4:	0c 04                	or     al,0x4
c000dbf6:	04 c5                	add    al,0xc5
c000dbf8:	45                   	inc    ebp
c000dbf9:	0b 42 c3             	or     eax,DWORD PTR [edx-0x3d]
c000dbfc:	41                   	inc    ecx
c000dbfd:	0c 04                	or     al,0x4
c000dbff:	04 c5                	add    al,0xc5
c000dc01:	00 00                	add    BYTE PTR [eax],al
c000dc03:	00 3c 00             	add    BYTE PTR [eax+eax*1],bh
c000dc06:	00 00                	add    BYTE PTR [eax],al
c000dc08:	10 19                	adc    BYTE PTR [ecx],bl
c000dc0a:	00 00                	add    BYTE PTR [eax],al
c000dc0c:	81 ae 00 c0 28 00 00 	sub    DWORD PTR [esi+0x28c000],0xe410000
c000dc13:	00 41 0e 
c000dc16:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000dc1c:	41                   	inc    ecx
c000dc1d:	86 03                	xchg   BYTE PTR [ebx],al
c000dc1f:	45                   	inc    ebp
c000dc20:	83 04 04 0a          	add    DWORD PTR [esp+eax*1],0xa
c000dc24:	00 00                	add    BYTE PTR [eax],al
c000dc26:	00 2e                	add    BYTE PTR [esi],ch
c000dc28:	04 04                	add    al,0x4
c000dc2a:	01 00                	add    DWORD PTR [eax],eax
c000dc2c:	00 00                	add    BYTE PTR [eax],al
c000dc2e:	2e 08 46 2e          	or     BYTE PTR cs:[esi+0x2e],al
c000dc32:	04 04                	add    al,0x4
c000dc34:	01 00                	add    DWORD PTR [eax],eax
c000dc36:	00 00                	add    BYTE PTR [eax],al
c000dc38:	2e 00 4a c3          	add    BYTE PTR cs:[edx-0x3d],cl
c000dc3c:	41                   	inc    ecx
c000dc3d:	c6 41 0c 04          	mov    BYTE PTR [ecx+0xc],0x4
c000dc41:	04 c5                	add    al,0xc5
c000dc43:	00 38                	add    BYTE PTR [eax],bh
c000dc45:	00 00                	add    BYTE PTR [eax],al
c000dc47:	00 50 19             	add    BYTE PTR [eax+0x19],dl
c000dc4a:	00 00                	add    BYTE PTR [eax],al
c000dc4c:	a9 ae 00 c0 3a       	test   eax,0x3ac000ae
c000dc51:	00 00                	add    BYTE PTR [eax],al
c000dc53:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000dc56:	08 85 02 44 0d 05    	or     BYTE PTR [ebp+0x50d4402],al
c000dc5c:	47                   	inc    edi
c000dc5d:	83 04 87 03          	add    DWORD PTR [edi+eax*4],0x3
c000dc61:	51                   	push   ecx
c000dc62:	2e 04 04             	cs add al,0x4
c000dc65:	04 00                	add    al,0x0
c000dc67:	00 00                	add    BYTE PTR [eax],al
c000dc69:	2e 08 43 2e          	or     BYTE PTR cs:[ebx+0x2e],al
c000dc6d:	0c 46                	or     al,0x46
c000dc6f:	2e 10 41 2e          	adc    BYTE PTR cs:[ecx+0x2e],al
c000dc73:	14 48                	adc    al,0x48
c000dc75:	2e 00 44 c3 41       	add    BYTE PTR cs:[ebx+eax*8+0x41],al
c000dc7a:	c7 41 0c 04 04 c5 38 	mov    DWORD PTR [ecx+0xc],0x38c50404
c000dc81:	00 00                	add    BYTE PTR [eax],al
c000dc83:	00 8c 19 00 00 e3 ae 	add    BYTE PTR [ecx+ebx*1-0x511d0000],cl
c000dc8a:	00 c0                	add    al,al
c000dc8c:	3a 00                	cmp    al,BYTE PTR [eax]
c000dc8e:	00 00                	add    BYTE PTR [eax],al
c000dc90:	41                   	inc    ecx
c000dc91:	0e                   	push   cs
c000dc92:	08 85 02 44 0d 05    	or     BYTE PTR [ebp+0x50d4402],al
c000dc98:	47                   	inc    edi
c000dc99:	83 04 87 03          	add    DWORD PTR [edi+eax*4],0x3
c000dc9d:	51                   	push   ecx
c000dc9e:	2e 04 04             	cs add al,0x4
c000dca1:	04 00                	add    al,0x0
c000dca3:	00 00                	add    BYTE PTR [eax],al
c000dca5:	2e 08 43 2e          	or     BYTE PTR cs:[ebx+0x2e],al
c000dca9:	0c 46                	or     al,0x46
c000dcab:	2e 10 41 2e          	adc    BYTE PTR cs:[ecx+0x2e],al
c000dcaf:	14 48                	adc    al,0x48
c000dcb1:	2e 00 44 c3 41       	add    BYTE PTR cs:[ebx+eax*8+0x41],al
c000dcb6:	c7 41 0c 04 04 c5 38 	mov    DWORD PTR [ecx+0xc],0x38c50404
c000dcbd:	00 00                	add    BYTE PTR [eax],al
c000dcbf:	00 c8                	add    al,cl
c000dcc1:	19 00                	sbb    DWORD PTR [eax],eax
c000dcc3:	00 20                	add    BYTE PTR [eax],ah
c000dcc5:	af                   	scas   eax,DWORD PTR es:[edi]
c000dcc6:	00 c0                	add    al,al
c000dcc8:	47                   	inc    edi
c000dcc9:	00 00                	add    BYTE PTR [eax],al
c000dccb:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000dcce:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000dcd4:	45                   	inc    ebp
c000dcd5:	83 04 86 03          	add    DWORD PTR [esi+eax*4],0x3
c000dcd9:	52                   	push   edx
c000dcda:	2e 04 04             	cs add al,0x4
c000dcdd:	05 00 00 00 2e       	add    eax,0x2e000000
c000dce2:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c000dce5:	0c 45                	or     al,0x45
c000dce7:	2e 10 4e 2e          	adc    BYTE PTR cs:[esi+0x2e],cl
c000dceb:	00 50 c3             	add    BYTE PTR [eax-0x3d],dl
c000dcee:	41                   	inc    ecx
c000dcef:	c6 41 0c 04          	mov    BYTE PTR [ecx+0xc],0x4
c000dcf3:	04 c5                	add    al,0xc5
c000dcf5:	00 00                	add    BYTE PTR [eax],al
c000dcf7:	00 3c 00             	add    BYTE PTR [eax+eax*1],bh
c000dcfa:	00 00                	add    BYTE PTR [eax],al
c000dcfc:	04 1a                	add    al,0x1a
c000dcfe:	00 00                	add    BYTE PTR [eax],al
c000dd00:	67 af                	scas   eax,DWORD PTR es:[di]
c000dd02:	00 c0                	add    al,al
c000dd04:	4a                   	dec    edx
c000dd05:	00 00                	add    BYTE PTR [eax],al
c000dd07:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000dd0a:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000dd10:	46                   	inc    esi
c000dd11:	83 05 86 04 87 03 56 	add    DWORD PTR ds:0x3870486,0x56
c000dd18:	2e 04 04             	cs add al,0x4
c000dd1b:	05 00 00 00 2e       	add    eax,0x2e000000
c000dd20:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c000dd23:	0c 45                	or     al,0x45
c000dd25:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000dd29:	00 53 c3             	add    BYTE PTR [ebx-0x3d],dl
c000dd2c:	41                   	inc    ecx
c000dd2d:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c000dd31:	0c 04                	or     al,0x4
c000dd33:	04 c5                	add    al,0xc5
c000dd35:	00 00                	add    BYTE PTR [eax],al
c000dd37:	00 3c 00             	add    BYTE PTR [eax+eax*1],bh
c000dd3a:	00 00                	add    BYTE PTR [eax],al
c000dd3c:	44                   	inc    esp
c000dd3d:	1a 00                	sbb    al,BYTE PTR [eax]
c000dd3f:	00 b1 af 00 c0 42    	add    BYTE PTR [ecx+0x42c000af],dh
c000dd45:	00 00                	add    BYTE PTR [eax],al
c000dd47:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000dd4a:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000dd50:	41                   	inc    ecx
c000dd51:	86 03                	xchg   BYTE PTR [ebx],al
c000dd53:	44                   	inc    esp
c000dd54:	83 04 04 10          	add    DWORD PTR [esp+eax*1],0x10
c000dd58:	00 00                	add    BYTE PTR [eax],al
c000dd5a:	00 2e                	add    BYTE PTR [esi],ch
c000dd5c:	04 04                	add    al,0x4
c000dd5e:	05 00 00 00 2e       	add    eax,0x2e000000
c000dd63:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c000dd66:	0c 45                	or     al,0x45
c000dd68:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000dd6c:	00 53 c3             	add    BYTE PTR [ebx-0x3d],dl
c000dd6f:	41                   	inc    ecx
c000dd70:	c6 41 0c 04          	mov    BYTE PTR [ecx+0xc],0x4
c000dd74:	04 c5                	add    al,0xc5
c000dd76:	00 00                	add    BYTE PTR [eax],al
c000dd78:	20 00                	and    BYTE PTR [eax],al
c000dd7a:	00 00                	add    BYTE PTR [eax],al
c000dd7c:	84 1a                	test   BYTE PTR [edx],bl
c000dd7e:	00 00                	add    BYTE PTR [eax],al
c000dd80:	f3 af                	repz scas eax,DWORD PTR es:[edi]
c000dd82:	00 c0                	add    al,al
c000dd84:	1a 00                	sbb    al,BYTE PTR [eax]
c000dd86:	00 00                	add    BYTE PTR [eax],al
c000dd88:	41                   	inc    ecx
c000dd89:	0e                   	push   cs
c000dd8a:	08 85 02 44 0d 05    	or     BYTE PTR [ebp+0x50d4402],al
c000dd90:	44                   	inc    esp
c000dd91:	83 03 4f             	add    DWORD PTR [ebx],0x4f
c000dd94:	c3                   	ret    
c000dd95:	41                   	inc    ecx
c000dd96:	0c 04                	or     al,0x4
c000dd98:	04 c5                	add    al,0xc5
c000dd9a:	00 00                	add    BYTE PTR [eax],al
c000dd9c:	28 00                	sub    BYTE PTR [eax],al
c000dd9e:	00 00                	add    BYTE PTR [eax],al
c000dda0:	a8 1a                	test   al,0x1a
c000dda2:	00 00                	add    BYTE PTR [eax],al
c000dda4:	10 b0 00 c0 4d 00    	adc    BYTE PTR [eax+0x4dc000],dh
c000ddaa:	00 00                	add    BYTE PTR [eax],al
c000ddac:	41                   	inc    ecx
c000ddad:	0e                   	push   cs
c000ddae:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000ddb4:	49                   	dec    ecx
c000ddb5:	83 05 86 04 87 03 7d 	add    DWORD PTR ds:0x3870486,0x7d
c000ddbc:	c3                   	ret    
c000ddbd:	41                   	inc    ecx
c000ddbe:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c000ddc2:	0c 04                	or     al,0x4
c000ddc4:	04 c5                	add    al,0xc5
c000ddc6:	00 00                	add    BYTE PTR [eax],al
c000ddc8:	1c 00                	sbb    al,0x0
c000ddca:	00 00                	add    BYTE PTR [eax],al
c000ddcc:	d4 1a                	aam    0x1a
c000ddce:	00 00                	add    BYTE PTR [eax],al
c000ddd0:	5d                   	pop    ebp
c000ddd1:	b0 00                	mov    al,0x0
c000ddd3:	c0 25 00 00 00 41 0e 	shl    BYTE PTR ds:0x41000000,0xe
c000ddda:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000dde0:	61                   	popa   
c000dde1:	0c 04                	or     al,0x4
c000dde3:	04 c5                	add    al,0xc5
c000dde5:	00 00                	add    BYTE PTR [eax],al
c000dde7:	00 a0 00 00 00 f4    	add    BYTE PTR [eax-0xc000000],ah
c000dded:	1a 00                	sbb    al,BYTE PTR [eax]
c000ddef:	00 82 b0 00 c0 f8    	add    BYTE PTR [edx-0x73fff50],al
c000ddf5:	00 00                	add    BYTE PTR [eax],al
c000ddf7:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000ddfa:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000de00:	41                   	inc    ecx
c000de01:	83 03 7e             	add    DWORD PTR [ebx],0x7e
c000de04:	2e 04 04             	cs add al,0x4
c000de07:	07                   	pop    es
c000de08:	00 00                	add    BYTE PTR [eax],al
c000de0a:	00 2e                	add    BYTE PTR [esi],ch
c000de0c:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c000de0f:	0c 42                	or     al,0x42
c000de11:	2e 10 45 2e          	adc    BYTE PTR cs:[ebp+0x2e],al
c000de15:	14 41                	adc    al,0x41
c000de17:	2e 18 51 2e          	sbb    BYTE PTR cs:[ecx+0x2e],dl
c000de1b:	1c 48                	sbb    al,0x48
c000de1d:	2e 20 41 2e          	and    BYTE PTR cs:[ecx+0x2e],al
c000de21:	24 42                	and    al,0x42
c000de23:	2e 28 45 2e          	sub    BYTE PTR cs:[ebp+0x2e],al
c000de27:	2c 41                	sub    al,0x41
c000de29:	2e 30 4d 2e          	xor    BYTE PTR cs:[ebp+0x2e],cl
c000de2d:	00 47 2e             	add    BYTE PTR [edi+0x2e],al
c000de30:	04 04                	add    al,0x4
c000de32:	02 00                	add    al,BYTE PTR [eax]
c000de34:	00 00                	add    BYTE PTR [eax],al
c000de36:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c000de3a:	0c 42                	or     al,0x42
c000de3c:	2e 10 45 2e          	adc    BYTE PTR cs:[ebp+0x2e],al
c000de40:	14 41                	adc    al,0x41
c000de42:	2e 18 51 2e          	sbb    BYTE PTR cs:[ecx+0x2e],dl
c000de46:	1c 42                	sbb    al,0x42
c000de48:	2e 20 41 2e          	and    BYTE PTR cs:[ecx+0x2e],al
c000de4c:	24 42                	and    al,0x42
c000de4e:	2e 28 45 2e          	sub    BYTE PTR cs:[ebp+0x2e],al
c000de52:	2c 41                	sub    al,0x41
c000de54:	2e 30 4d 2e          	xor    BYTE PTR cs:[ebp+0x2e],cl
c000de58:	00 47 2e             	add    BYTE PTR [edi+0x2e],al
c000de5b:	04 04                	add    al,0x4
c000de5d:	02 00                	add    al,BYTE PTR [eax]
c000de5f:	00 00                	add    BYTE PTR [eax],al
c000de61:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c000de65:	0c 42                	or     al,0x42
c000de67:	2e 10 45 2e          	adc    BYTE PTR cs:[ebp+0x2e],al
c000de6b:	14 41                	adc    al,0x41
c000de6d:	2e 18 51 2e          	sbb    BYTE PTR cs:[ecx+0x2e],dl
c000de71:	1c 42                	sbb    al,0x42
c000de73:	2e 20 41 2e          	and    BYTE PTR cs:[ecx+0x2e],al
c000de77:	24 42                	and    al,0x42
c000de79:	2e 28 45 2e          	sub    BYTE PTR cs:[ebp+0x2e],al
c000de7d:	2c 41                	sub    al,0x41
c000de7f:	2e 30 48 2e          	xor    BYTE PTR cs:[eax+0x2e],cl
c000de83:	00 44 c5 0c          	add    BYTE PTR [ebp+eax*8+0xc],al
c000de87:	04 04                	add    al,0x4
c000de89:	c3                   	ret    
c000de8a:	00 00                	add    BYTE PTR [eax],al
c000de8c:	2c 00                	sub    al,0x0
c000de8e:	00 00                	add    BYTE PTR [eax],al
c000de90:	98                   	cwde   
c000de91:	1b 00                	sbb    eax,DWORD PTR [eax]
c000de93:	00 7a b1             	add    BYTE PTR [edx-0x4f],bh
c000de96:	00 c0                	add    al,al
c000de98:	84 00                	test   BYTE PTR [eax],al
c000de9a:	00 00                	add    BYTE PTR [eax],al
c000de9c:	41                   	inc    ecx
c000de9d:	0e                   	push   cs
c000de9e:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000dea4:	41                   	inc    ecx
c000dea5:	87 03                	xchg   DWORD PTR [ebx],eax
c000dea7:	49                   	dec    ecx
c000dea8:	83 05 86 04 04 73 00 	add    DWORD PTR ds:0x73040486,0x0
c000deaf:	00 00                	add    BYTE PTR [eax],al
c000deb1:	c3                   	ret    
c000deb2:	41                   	inc    ecx
c000deb3:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c000deb7:	0c 04                	or     al,0x4
c000deb9:	04 c5                	add    al,0xc5
c000debb:	00 44 00 00          	add    BYTE PTR [eax+eax*1+0x0],al
c000debf:	00 c8                	add    al,cl
c000dec1:	1b 00                	sbb    eax,DWORD PTR [eax]
c000dec3:	00 fe                	add    dh,bh
c000dec5:	b1 00                	mov    cl,0x0
c000dec7:	c0                   	(bad)  
c000dec8:	37                   	aaa    
c000dec9:	00 00                	add    BYTE PTR [eax],al
c000decb:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000dece:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000ded4:	41                   	inc    ecx
c000ded5:	87 03                	xchg   DWORD PTR [ebx],eax
c000ded7:	44                   	inc    esp
c000ded8:	86 04 04             	xchg   BYTE PTR [esp+eax*1],al
c000dedb:	04 00                	add    al,0x0
c000dedd:	00 00                	add    BYTE PTR [eax],al
c000dedf:	83 05 4a 2e 04 04 01 	add    DWORD PTR ds:0x4042e4a,0x1
c000dee6:	00 00                	add    BYTE PTR [eax],al
c000dee8:	00 2e                	add    BYTE PTR [esi],ch
c000deea:	08 43 2e             	or     BYTE PTR [ebx+0x2e],al
c000deed:	0c 41                	or     al,0x41
c000deef:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c000def3:	14 48                	adc    al,0x48
c000def5:	2e 00 4a c3          	add    BYTE PTR cs:[edx-0x3d],cl
c000def9:	41                   	inc    ecx
c000defa:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c000defe:	0c 04                	or     al,0x4
c000df00:	04 c5                	add    al,0xc5
	...

Disassembly of section .rodata:

c000df04 <_rodata>:
c000df04:	5b                   	pop    ebx
c000df05:	55                   	push   ebp
c000df06:	73 65                	jae    c000df6d <_rodata+0x69>
c000df08:	72 5d                	jb     c000df67 <_rodata+0x63>
c000df0a:	3a 00                	cmp    al,BYTE PTR [eax]
c000df0c:	0a 50 65             	or     dl,BYTE PTR [eax+0x65]
c000df0f:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000df10:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c000df13:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c000df18:	65 6c                	gs ins BYTE PTR es:[edi],dx
c000df1a:	20 28                	and    BYTE PTR [eax],ch
c000df1c:	50                   	push   eax
c000df1d:	4b                   	dec    ebx
c000df1e:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000df1f:	29 20                	sub    DWORD PTR [eax],esp
c000df21:	76 65                	jbe    c000df88 <_rodata+0x84>
c000df23:	72 73                	jb     c000df98 <_rodata+0x94>
c000df25:	69 6f 6e 20 30 2e 30 	imul   ebp,DWORD PTR [edi+0x6e],0x302e3020
c000df2c:	2e 30 20             	xor    BYTE PTR cs:[eax],ah
c000df2f:	74 65                	je     c000df96 <_rodata+0x92>
c000df31:	73 74                	jae    c000dfa7 <PKn_Version+0xb>
c000df33:	0a 00                	or     al,BYTE PTR [eax]
c000df35:	43                   	inc    ebx
c000df36:	50                   	push   eax
c000df37:	55                   	push   ebp
c000df38:	20 20                	and    BYTE PTR [eax],ah
c000df3a:	20 20                	and    BYTE PTR [eax],ah
c000df3c:	3a 00                	cmp    al,BYTE PTR [eax]
c000df3e:	4d                   	dec    ebp
c000df3f:	65 6d                	gs ins DWORD PTR es:[edi],dx
c000df41:	6f                   	outs   dx,DWORD PTR ds:[esi]
c000df42:	72 79                	jb     c000dfbd <PKn_Version+0x21>
c000df44:	20 3a                	and    BYTE PTR [edx],bh
c000df46:	00 4d 42             	add    BYTE PTR [ebp+0x42],cl
c000df49:	20 28                	and    BYTE PTR [eax],ch
c000df4b:	20 00                	and    BYTE PTR [eax],al
c000df4d:	4b                   	dec    ebx
c000df4e:	42                   	inc    edx
c000df4f:	20 29                	and    BYTE PTR [ecx],ch
c000df51:	20 00                	and    BYTE PTR [eax],al
c000df53:	44                   	inc    esp
c000df54:	69 73 6b 20 20 20 3a 	imul   esi,DWORD PTR [ebx+0x6b],0x3a202020
c000df5b:	00 50 65             	add    BYTE PTR [eax+0x65],dl
c000df5e:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000df5f:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c000df62:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c000df67:	65 6c                	gs ins BYTE PTR es:[edi],dx
c000df69:	20 28                	and    BYTE PTR [eax],ch
c000df6b:	50                   	push   eax
c000df6c:	4b                   	dec    ebx
c000df6d:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000df6e:	29 20                	sub    DWORD PTR [eax],esp
c000df70:	76 65                	jbe    c000dfd7 <PKn_Version+0x3b>
c000df72:	72 73                	jb     c000dfe7 <PKn_Version+0x4b>
c000df74:	69 6f 6e 20 30 2e 30 	imul   ebp,DWORD PTR [edi+0x6e],0x302e3020
c000df7b:	2e 30 20             	xor    BYTE PTR cs:[eax],ah
c000df7e:	74 65                	je     c000dfe5 <PKn_Version+0x49>
c000df80:	73 74                	jae    c000dff6 <PKn_Version+0x5a>
c000df82:	00 61 72             	add    BYTE PTR [ecx+0x72],ah
c000df85:	67 5f                	addr16 pop edi
c000df87:	41                   	inc    ecx
c000df88:	20 00                	and    BYTE PTR [eax],al
c000df8a:	6b 5f 61 00          	imul   ebx,DWORD PTR [edi+0x61],0x0
c000df8e:	61                   	popa   
c000df8f:	72 67                	jb     c000dff8 <PKn_Version+0x5c>
c000df91:	5f                   	pop    edi
c000df92:	42                   	inc    edx
c000df93:	20 00                	and    BYTE PTR [eax],al
c000df95:	6b 5f 62 00          	imul   ebx,DWORD PTR [edi+0x62],0x0
c000df99:	00 00                	add    BYTE PTR [eax],al
	...

c000df9c <PKn_Version>:
c000df9c:	50                   	push   eax
c000df9d:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c000df9f:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c000dfa2:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c000dfa7:	65 6c                	gs ins BYTE PTR es:[edi],dx
c000dfa9:	20 28                	and    BYTE PTR [eax],ch
c000dfab:	50                   	push   eax
c000dfac:	4b                   	dec    ebx
c000dfad:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000dfae:	29 20                	sub    DWORD PTR [eax],esp
c000dfb0:	76 65                	jbe    c000e017 <PKn_Version+0x7b>
c000dfb2:	72 73                	jb     c000e027 <PKn_Version+0x8b>
c000dfb4:	69 6f 6e 20 30 2e 30 	imul   ebp,DWORD PTR [edi+0x6e],0x302e3020
c000dfbb:	2e 30 20             	xor    BYTE PTR cs:[eax],ah
c000dfbe:	74 65                	je     c000e025 <PKn_Version+0x89>
c000dfc0:	73 74                	jae    c000e036 <PKn_Version+0x9a>
c000dfc2:	00 00                	add    BYTE PTR [eax],al
c000dfc4:	20 45 72             	and    BYTE PTR [ebp+0x72],al
c000dfc7:	72 6f                	jb     c000e038 <PKn_Version+0x9c>
c000dfc9:	72 0a                	jb     c000dfd5 <PKn_Version+0x39>
c000dfcb:	00 20                	add    BYTE PTR [eax],ah
c000dfcd:	46                   	inc    esi
c000dfce:	69 6c 65 3a 20 20 20 	imul   ebp,DWORD PTR [ebp+eiz*2+0x3a],0x20202020
c000dfd5:	20 
c000dfd6:	20 20                	and    BYTE PTR [eax],ah
c000dfd8:	20 20                	and    BYTE PTR [eax],ah
c000dfda:	00 20                	add    BYTE PTR [eax],ah
c000dfdc:	49                   	dec    ecx
c000dfdd:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000dfde:	20 66 75             	and    BYTE PTR [esi+0x75],ah
c000dfe1:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000dfe2:	63 74 69 6f          	arpl   WORD PTR [ecx+ebp*2+0x6f],si
c000dfe6:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000dfe7:	3a 20                	cmp    ah,BYTE PTR [eax]
c000dfe9:	00 20                	add    BYTE PTR [eax],ah
c000dfeb:	4c                   	dec    esp
c000dfec:	69 6e 65 3a 20 20 20 	imul   ebp,DWORD PTR [esi+0x65],0x2020203a
c000dff3:	20 20                	and    BYTE PTR [eax],ah
c000dff5:	20 20                	and    BYTE PTR [eax],ah
c000dff7:	20 00                	and    BYTE PTR [eax],al
c000dff9:	20 43 6f             	and    BYTE PTR [ebx+0x6f],al
c000dffc:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000dffd:	64 69 74 69 6f 6e 3a 	imul   esi,DWORD PTR fs:[ecx+ebp*2+0x6f],0x20203a6e
c000e004:	20 20 
c000e006:	20 00                	and    BYTE PTR [eax],al
c000e008:	50                   	push   eax
c000e009:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c000e00b:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c000e00e:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c000e013:	65 6c                	gs ins BYTE PTR es:[edi],dx
c000e015:	20 28                	and    BYTE PTR [eax],ch
c000e017:	50                   	push   eax
c000e018:	4b                   	dec    ebx
c000e019:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000e01a:	29 20                	sub    DWORD PTR [eax],esp
c000e01c:	76 65                	jbe    c000e083 <PKn_Version+0xe7>
c000e01e:	72 73                	jb     c000e093 <PKn_Version+0xf7>
c000e020:	69 6f 6e 20 30 2e 30 	imul   ebp,DWORD PTR [edi+0x6e],0x302e3020
c000e027:	2e 30 20             	xor    BYTE PTR cs:[eax],ah
c000e02a:	74 65                	je     c000e091 <PKn_Version+0xf5>
c000e02c:	73 74                	jae    c000e0a2 <PKn_Version+0x106>
c000e02e:	00 00                	add    BYTE PTR [eax],al
c000e030:	5b                   	pop    ebx
c000e031:	69 6e 69 6e 5d 3a 61 	imul   ebp,DWORD PTR [esi+0x69],0x613a5d6e
c000e038:	6c                   	ins    BYTE PTR es:[edi],dx
c000e039:	6c                   	ins    BYTE PTR es:[edi],dx
c000e03a:	0a 00                	or     al,BYTE PTR [eax]
c000e03c:	5b                   	pop    ebx
c000e03d:	69 6e 69 74 5d 3a 69 	imul   ebp,DWORD PTR [esi+0x69],0x693a5d74
c000e044:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000e045:	69 74 20 64 6f 77 6e 	imul   esi,DWORD PTR [eax+eiz*1+0x64],0x2e6e776f
c000e04c:	2e 
c000e04d:	0a 00                	or     al,BYTE PTR [eax]
c000e04f:	00 50 65             	add    BYTE PTR [eax+0x65],dl
c000e052:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000e053:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c000e056:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c000e05b:	65 6c                	gs ins BYTE PTR es:[edi],dx
c000e05d:	20 28                	and    BYTE PTR [eax],ch
c000e05f:	50                   	push   eax
c000e060:	4b                   	dec    ebx
c000e061:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000e062:	29 20                	sub    DWORD PTR [eax],esp
c000e064:	76 65                	jbe    c000e0cb <PKn_Version+0x12f>
c000e066:	72 73                	jb     c000e0db <PKn_Version+0x13f>
c000e068:	69 6f 6e 20 30 2e 30 	imul   ebp,DWORD PTR [edi+0x6e],0x302e3020
c000e06f:	2e 30 20             	xor    BYTE PTR cs:[eax],ah
c000e072:	74 65                	je     c000e0d9 <PKn_Version+0x13d>
c000e074:	73 74                	jae    c000e0ea <PKn_Version+0x14e>
c000e076:	00 00                	add    BYTE PTR [eax],al
c000e078:	23 44 45 20          	and    eax,DWORD PTR [ebp+eax*2+0x20]
c000e07c:	44                   	inc    esp
c000e07d:	69 76 69 64 65 20 45 	imul   esi,DWORD PTR [esi+0x69],0x45206564
c000e084:	72 72                	jb     c000e0f8 <PKn_Version+0x15c>
c000e086:	6f                   	outs   dx,DWORD PTR ds:[esi]
c000e087:	72 00                	jb     c000e089 <PKn_Version+0xed>
c000e089:	23 44 42 20          	and    eax,DWORD PTR [edx+eax*2+0x20]
c000e08d:	44                   	inc    esp
c000e08e:	65 62 75 67          	bound  esi,QWORD PTR gs:[ebp+0x67]
c000e092:	20 45 78             	and    BYTE PTR [ebp+0x78],al
c000e095:	63 65 70             	arpl   WORD PTR [ebp+0x70],sp
c000e098:	74 69                	je     c000e103 <PKn_Version+0x167>
c000e09a:	6f                   	outs   dx,DWORD PTR ds:[esi]
c000e09b:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000e09c:	00 4e 4d             	add    BYTE PTR [esi+0x4d],cl
c000e09f:	49                   	dec    ecx
c000e0a0:	20 49 6e             	and    BYTE PTR [ecx+0x6e],cl
c000e0a3:	74 65                	je     c000e10a <PKn_Version+0x16e>
c000e0a5:	72 72                	jb     c000e119 <PKn_Version+0x17d>
c000e0a7:	75 70                	jne    c000e119 <PKn_Version+0x17d>
c000e0a9:	74 00                	je     c000e0ab <PKn_Version+0x10f>
c000e0ab:	23 42 50             	and    eax,DWORD PTR [edx+0x50]
c000e0ae:	20 42 72             	and    BYTE PTR [edx+0x72],al
c000e0b1:	65 61                	gs popa 
c000e0b3:	6b 70 6f 69          	imul   esi,DWORD PTR [eax+0x6f],0x69
c000e0b7:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000e0b8:	74 20                	je     c000e0da <PKn_Version+0x13e>
c000e0ba:	45                   	inc    ebp
c000e0bb:	78 63                	js     c000e120 <PKn_Version+0x184>
c000e0bd:	65 70 74             	gs jo  c000e134 <PKn_Version+0x198>
c000e0c0:	69 6f 6e 00 23 4f 46 	imul   ebp,DWORD PTR [edi+0x6e],0x464f2300
c000e0c7:	20 4f 76             	and    BYTE PTR [edi+0x76],cl
c000e0ca:	65 72 66             	gs jb  c000e133 <PKn_Version+0x197>
c000e0cd:	6c                   	ins    BYTE PTR es:[edi],dx
c000e0ce:	6f                   	outs   dx,DWORD PTR ds:[esi]
c000e0cf:	77 20                	ja     c000e0f1 <PKn_Version+0x155>
c000e0d1:	45                   	inc    ebp
c000e0d2:	78 63                	js     c000e137 <PKn_Version+0x19b>
c000e0d4:	65 70 74             	gs jo  c000e14b <PKn_Version+0x1af>
c000e0d7:	69 6f 6e 00 23 42 52 	imul   ebp,DWORD PTR [edi+0x6e],0x52422300
c000e0de:	20 42 4f             	and    BYTE PTR [edx+0x4f],al
c000e0e1:	55                   	push   ebp
c000e0e2:	4e                   	dec    esi
c000e0e3:	44                   	inc    esp
c000e0e4:	20 52 61             	and    BYTE PTR [edx+0x61],dl
c000e0e7:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000e0e8:	67 65 20 45 78       	and    BYTE PTR gs:[di+0x78],al
c000e0ed:	63 65 65             	arpl   WORD PTR [ebp+0x65],sp
c000e0f0:	64 65 64 20 45 78    	fs gs and BYTE PTR fs:[ebp+0x78],al
c000e0f6:	63 65 70             	arpl   WORD PTR [ebp+0x70],sp
c000e0f9:	74 69                	je     c000e164 <PKn_Version+0x1c8>
c000e0fb:	6f                   	outs   dx,DWORD PTR ds:[esi]
c000e0fc:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000e0fd:	00 23                	add    BYTE PTR [ebx],ah
c000e0ff:	55                   	push   ebp
c000e100:	44                   	inc    esp
c000e101:	20 49 6e             	and    BYTE PTR [ecx+0x6e],cl
c000e104:	76 61                	jbe    c000e167 <PKn_Version+0x1cb>
c000e106:	6c                   	ins    BYTE PTR es:[edi],dx
c000e107:	69 64 20 4f 70 63 6f 	imul   esp,DWORD PTR [eax+eiz*1+0x4f],0x646f6370
c000e10e:	64 
c000e10f:	65 20 45 78          	and    BYTE PTR gs:[ebp+0x78],al
c000e113:	63 65 70             	arpl   WORD PTR [ebp+0x70],sp
c000e116:	74 69                	je     c000e181 <PKn_Version+0x1e5>
c000e118:	6f                   	outs   dx,DWORD PTR ds:[esi]
c000e119:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000e11a:	00 23                	add    BYTE PTR [ebx],ah
c000e11c:	4e                   	dec    esi
c000e11d:	4d                   	dec    ebp
c000e11e:	20 44 65 76          	and    BYTE PTR [ebp+eiz*2+0x76],al
c000e122:	69 63 65 20 4e 6f 74 	imul   esp,DWORD PTR [ebx+0x65],0x746f4e20
c000e129:	20 41 76             	and    BYTE PTR [ecx+0x76],al
c000e12c:	61                   	popa   
c000e12d:	69 6c 61 62 6c 65 20 	imul   ebp,DWORD PTR [ecx+eiz*2+0x62],0x4520656c
c000e134:	45 
c000e135:	78 63                	js     c000e19a <PKn_Version+0x1fe>
c000e137:	65 70 74             	gs jo  c000e1ae <PKn_Version+0x212>
c000e13a:	69 6f 6e 00 23 44 46 	imul   ebp,DWORD PTR [edi+0x6e],0x46442300
c000e141:	20 44 6f 75          	and    BYTE PTR [edi+ebp*2+0x75],al
c000e145:	62 6c 65 20          	bound  ebp,QWORD PTR [ebp+eiz*2+0x20]
c000e149:	46                   	inc    esi
c000e14a:	61                   	popa   
c000e14b:	75 6c                	jne    c000e1b9 <PKn_Version+0x21d>
c000e14d:	74 20                	je     c000e16f <PKn_Version+0x1d3>
c000e14f:	45                   	inc    ebp
c000e150:	78 63                	js     c000e1b5 <PKn_Version+0x219>
c000e152:	65 70 74             	gs jo  c000e1c9 <PKn_Version+0x22d>
c000e155:	69 6f 6e 00 43 6f 70 	imul   ebp,DWORD PTR [edi+0x6e],0x706f4300
c000e15c:	72 6f                	jb     c000e1cd <PKn_Version+0x231>
c000e15e:	63 65 73             	arpl   WORD PTR [ebp+0x73],sp
c000e161:	73 6f                	jae    c000e1d2 <PKn_Version+0x236>
c000e163:	72 20                	jb     c000e185 <PKn_Version+0x1e9>
c000e165:	53                   	push   ebx
c000e166:	65 67 6d             	gs ins DWORD PTR es:[di],dx
c000e169:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c000e16b:	74 20                	je     c000e18d <PKn_Version+0x1f1>
c000e16d:	4f                   	dec    edi
c000e16e:	76 65                	jbe    c000e1d5 <PKn_Version+0x239>
c000e170:	72 72                	jb     c000e1e4 <PKn_Version+0x248>
c000e172:	75 6e                	jne    c000e1e2 <PKn_Version+0x246>
c000e174:	00 23                	add    BYTE PTR [ebx],ah
c000e176:	54                   	push   esp
c000e177:	53                   	push   ebx
c000e178:	20 49 6e             	and    BYTE PTR [ecx+0x6e],cl
c000e17b:	76 61                	jbe    c000e1de <PKn_Version+0x242>
c000e17d:	6c                   	ins    BYTE PTR es:[edi],dx
c000e17e:	69 64 20 54 53 53 20 	imul   esp,DWORD PTR [eax+eiz*1+0x54],0x45205353
c000e185:	45 
c000e186:	78 63                	js     c000e1eb <PKn_Version+0x24f>
c000e188:	65 70 74             	gs jo  c000e1ff <PKn_Version+0x263>
c000e18b:	69 6f 6e 00 23 4e 50 	imul   ebp,DWORD PTR [edi+0x6e],0x504e2300
c000e192:	20 53 65             	and    BYTE PTR [ebx+0x65],dl
c000e195:	67 6d                	ins    DWORD PTR es:[di],dx
c000e197:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c000e199:	74 20                	je     c000e1bb <PKn_Version+0x21f>
c000e19b:	4e                   	dec    esi
c000e19c:	6f                   	outs   dx,DWORD PTR ds:[esi]
c000e19d:	74 20                	je     c000e1bf <PKn_Version+0x223>
c000e19f:	50                   	push   eax
c000e1a0:	72 65                	jb     c000e207 <PKn_Version+0x26b>
c000e1a2:	73 65                	jae    c000e209 <PKn_Version+0x26d>
c000e1a4:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000e1a5:	74 00                	je     c000e1a7 <PKn_Version+0x20b>
c000e1a7:	23 53 53             	and    edx,DWORD PTR [ebx+0x53]
c000e1aa:	20 53 74             	and    BYTE PTR [ebx+0x74],dl
c000e1ad:	61                   	popa   
c000e1ae:	63 6b 20             	arpl   WORD PTR [ebx+0x20],bp
c000e1b1:	46                   	inc    esi
c000e1b2:	61                   	popa   
c000e1b3:	75 6c                	jne    c000e221 <PKn_Version+0x285>
c000e1b5:	74 20                	je     c000e1d7 <PKn_Version+0x23b>
c000e1b7:	45                   	inc    ebp
c000e1b8:	78 63                	js     c000e21d <PKn_Version+0x281>
c000e1ba:	65 70 74             	gs jo  c000e231 <PKn_Version+0x295>
c000e1bd:	69 6f 6e 00 23 47 50 	imul   ebp,DWORD PTR [edi+0x6e],0x50472300
c000e1c4:	20 47 65             	and    BYTE PTR [edi+0x65],al
c000e1c7:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000e1c8:	65 72 61             	gs jb  c000e22c <PKn_Version+0x290>
c000e1cb:	6c                   	ins    BYTE PTR es:[edi],dx
c000e1cc:	20 50 72             	and    BYTE PTR [eax+0x72],dl
c000e1cf:	6f                   	outs   dx,DWORD PTR ds:[esi]
c000e1d0:	74 65                	je     c000e237 <PKn_Version+0x29b>
c000e1d2:	63 74 69 6f          	arpl   WORD PTR [ecx+ebp*2+0x6f],si
c000e1d6:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000e1d7:	20 45 78             	and    BYTE PTR [ebp+0x78],al
c000e1da:	63 65 70             	arpl   WORD PTR [ebp+0x70],sp
c000e1dd:	74 69                	je     c000e248 <PKn_Version+0x2ac>
c000e1df:	6f                   	outs   dx,DWORD PTR ds:[esi]
c000e1e0:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000e1e1:	00 23                	add    BYTE PTR [ebx],ah
c000e1e3:	50                   	push   eax
c000e1e4:	46                   	inc    esi
c000e1e5:	20 50 61             	and    BYTE PTR [eax+0x61],dl
c000e1e8:	67 65 2d 46 61 75 6c 	addr16 gs sub eax,0x6c756146
c000e1ef:	74 20                	je     c000e211 <PKn_Version+0x275>
c000e1f1:	45                   	inc    ebp
c000e1f2:	78 63                	js     c000e257 <PKn_Version+0x2bb>
c000e1f4:	65 70 74             	gs jo  c000e26b <PKn_Version+0x2cf>
c000e1f7:	69 6f 6e 00 52 65 73 	imul   ebp,DWORD PTR [edi+0x6e],0x73655200
c000e1fe:	65 72 76             	gs jb  c000e277 <PKn_Version+0x2db>
c000e201:	65 64 00 23          	gs add BYTE PTR fs:[ebx],ah
c000e205:	4d                   	dec    ebp
c000e206:	46                   	inc    esi
c000e207:	20 78 38             	and    BYTE PTR [eax+0x38],bh
c000e20a:	37                   	aaa    
c000e20b:	20 46 50             	and    BYTE PTR [esi+0x50],al
c000e20e:	55                   	push   ebp
c000e20f:	20 46 6c             	and    BYTE PTR [esi+0x6c],al
c000e212:	6f                   	outs   dx,DWORD PTR ds:[esi]
c000e213:	61                   	popa   
c000e214:	74 69                	je     c000e27f <PKn_Version+0x2e3>
c000e216:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000e217:	67 2d 50 6f 69 6e    	addr16 sub eax,0x6e696f50
c000e21d:	74 20                	je     c000e23f <PKn_Version+0x2a3>
c000e21f:	45                   	inc    ebp
c000e220:	72 72                	jb     c000e294 <PKn_Version+0x2f8>
c000e222:	6f                   	outs   dx,DWORD PTR ds:[esi]
c000e223:	72 00                	jb     c000e225 <PKn_Version+0x289>
c000e225:	23 41 43             	and    eax,DWORD PTR [ecx+0x43]
c000e228:	20 41 6c             	and    BYTE PTR [ecx+0x6c],al
c000e22b:	69 67 6e 6d 65 6e 74 	imul   esp,DWORD PTR [edi+0x6e],0x746e656d
c000e232:	20 43 68             	and    BYTE PTR [ebx+0x68],al
c000e235:	65 63 6b 20          	arpl   WORD PTR gs:[ebx+0x20],bp
c000e239:	45                   	inc    ebp
c000e23a:	78 63                	js     c000e29f <PKn_Version+0x303>
c000e23c:	65 70 74             	gs jo  c000e2b3 <PKn_Version+0x317>
c000e23f:	69 6f 6e 00 23 4d 43 	imul   ebp,DWORD PTR [edi+0x6e],0x434d2300
c000e246:	20 4d 61             	and    BYTE PTR [ebp+0x61],cl
c000e249:	63 68 69             	arpl   WORD PTR [eax+0x69],bp
c000e24c:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000e24d:	65 2d 43 68 65 63    	gs sub eax,0x63656843
c000e253:	6b 20 45             	imul   esp,DWORD PTR [eax],0x45
c000e256:	78 63                	js     c000e2bb <PKn_Version+0x31f>
c000e258:	65 70 74             	gs jo  c000e2cf <PKn_Version+0x333>
c000e25b:	69 6f 6e 00 23 58 46 	imul   ebp,DWORD PTR [edi+0x6e],0x46582300
c000e262:	20 53 49             	and    BYTE PTR [ebx+0x49],dl
c000e265:	4d                   	dec    ebp
c000e266:	44                   	inc    esp
c000e267:	20 46 6c             	and    BYTE PTR [esi+0x6c],al
c000e26a:	6f                   	outs   dx,DWORD PTR ds:[esi]
c000e26b:	61                   	popa   
c000e26c:	74 69                	je     c000e2d7 <PKn_Version+0x33b>
c000e26e:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000e26f:	67 2d 50 6f 69 6e    	addr16 sub eax,0x6e696f50
c000e275:	74 20                	je     c000e297 <PKn_Version+0x2fb>
c000e277:	45                   	inc    ebp
c000e278:	78 63                	js     c000e2dd <PKn_Version+0x341>
c000e27a:	65 70 74             	gs jo  c000e2f1 <PKn_Version+0x355>
c000e27d:	69 6f 6e 00 53 6f 72 	imul   ebp,DWORD PTR [edi+0x6e],0x726f5300
c000e284:	72 79                	jb     c000e2ff <PKn_Version+0x363>
c000e286:	2c 20                	sub    al,0x20
c000e288:	61                   	popa   
c000e289:	20 70 72             	and    BYTE PTR [eax+0x72],dh
c000e28c:	6f                   	outs   dx,DWORD PTR ds:[esi]
c000e28d:	62 6c 65 6d          	bound  ebp,QWORD PTR [ebp+eiz*2+0x6d]
c000e291:	20 62 65             	and    BYTE PTR [edx+0x65],ah
c000e294:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c000e296:	20 64 65 74          	and    BYTE PTR [ebp+eiz*2+0x74],ah
c000e29a:	65 63 74 65 64       	arpl   WORD PTR gs:[ebp+eiz*2+0x64],si
c000e29f:	20 61 6e             	and    BYTE PTR [ecx+0x6e],ah
c000e2a2:	64 20 50 4b          	and    BYTE PTR fs:[eax+0x4b],dl
c000e2a6:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000e2a7:	20 73 68             	and    BYTE PTR [ebx+0x68],dh
c000e2aa:	75 74                	jne    c000e320 <PKn_Version+0x384>
c000e2ac:	20 64 6f 77          	and    BYTE PTR [edi+ebp*2+0x77],ah
c000e2b0:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000e2b1:	20 74 6f 20          	and    BYTE PTR [edi+ebp*2+0x20],dh
c000e2b5:	70 72                	jo     c000e329 <PKn_Version+0x38d>
c000e2b7:	65 76 65             	gs jbe c000e31f <PKn_Version+0x383>
c000e2ba:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000e2bb:	74 20                	je     c000e2dd <PKn_Version+0x341>
c000e2bd:	64 61                	fs popa 
c000e2bf:	6d                   	ins    DWORD PTR es:[edi],dx
c000e2c0:	61                   	popa   
c000e2c1:	67 65 20 74 6f       	and    BYTE PTR gs:[si+0x6f],dh
c000e2c6:	20 79 6f             	and    BYTE PTR [ecx+0x6f],bh
c000e2c9:	75 72                	jne    c000e33d <PKn_Version+0x3a1>
c000e2cb:	20 63 6f             	and    BYTE PTR [ebx+0x6f],ah
c000e2ce:	6d                   	ins    DWORD PTR es:[edi],dx
c000e2cf:	70 75                	jo     c000e346 <PKn_Version+0x3aa>
c000e2d1:	74 65                	je     c000e338 <PKn_Version+0x39c>
c000e2d3:	72 2e                	jb     c000e303 <PKn_Version+0x367>
c000e2d5:	0a 49 66             	or     cl,BYTE PTR [ecx+0x66]
c000e2d8:	20 74 68 69          	and    BYTE PTR [eax+ebp*2+0x69],dh
c000e2dc:	73 20                	jae    c000e2fe <PKn_Version+0x362>
c000e2de:	69 73 20 74 68 65 20 	imul   esi,DWORD PTR [ebx+0x20],0x20656874
c000e2e5:	66 69 72 73 74 20    	imul   si,WORD PTR [edx+0x73],0x2074
c000e2eb:	74 69                	je     c000e356 <PKn_Version+0x3ba>
c000e2ed:	6d                   	ins    DWORD PTR es:[edi],dx
c000e2ee:	65 20 79 6f          	and    BYTE PTR gs:[ecx+0x6f],bh
c000e2f2:	75 27                	jne    c000e31b <PKn_Version+0x37f>
c000e2f4:	76 65                	jbe    c000e35b <PKn_Version+0x3bf>
c000e2f6:	20 73 65             	and    BYTE PTR [ebx+0x65],dh
c000e2f9:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c000e2fb:	20 74 68 69          	and    BYTE PTR [eax+ebp*2+0x69],dh
c000e2ff:	73 20                	jae    c000e321 <PKn_Version+0x385>
c000e301:	73 74                	jae    c000e377 <PKn_Version+0x3db>
c000e303:	6f                   	outs   dx,DWORD PTR ds:[esi]
c000e304:	70 20                	jo     c000e326 <PKn_Version+0x38a>
c000e306:	65 72 72             	gs jb  c000e37b <PKn_Version+0x3df>
c000e309:	6f                   	outs   dx,DWORD PTR ds:[esi]
c000e30a:	72 20                	jb     c000e32c <PKn_Version+0x390>
c000e30c:	73 65                	jae    c000e373 <PKn_Version+0x3d7>
c000e30e:	72 65                	jb     c000e375 <PKn_Version+0x3d9>
c000e310:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c000e312:	2c 20                	sub    al,0x20
c000e314:	72 65                	jb     c000e37b <PKn_Version+0x3df>
c000e316:	73 74                	jae    c000e38c <PKn_Version+0x3f0>
c000e318:	61                   	popa   
c000e319:	72 74                	jb     c000e38f <PKn_Version+0x3f3>
c000e31b:	20 79 6f             	and    BYTE PTR [ecx+0x6f],bh
c000e31e:	75 72                	jne    c000e392 <PKn_Version+0x3f6>
c000e320:	20 63 6f             	and    BYTE PTR [ebx+0x6f],ah
c000e323:	6d                   	ins    DWORD PTR es:[edi],dx
c000e324:	70 75                	jo     c000e39b <PKn_Version+0x3ff>
c000e326:	74 65                	je     c000e38d <PKn_Version+0x3f1>
c000e328:	72 2e                	jb     c000e358 <PKn_Version+0x3bc>
c000e32a:	49                   	dec    ecx
c000e32b:	66 20 74 68 69       	data16 and BYTE PTR [eax+ebp*2+0x69],dh
c000e330:	73 20                	jae    c000e352 <PKn_Version+0x3b6>
c000e332:	73 63                	jae    c000e397 <PKn_Version+0x3fb>
c000e334:	72 65                	jb     c000e39b <PKn_Version+0x3ff>
c000e336:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c000e338:	20 61 70             	and    BYTE PTR [ecx+0x70],ah
c000e33b:	70 65                	jo     c000e3a2 <PKn_Version+0x406>
c000e33d:	72 73                	jb     c000e3b2 <PKn_Version+0x416>
c000e33f:	20 61 67             	and    BYTE PTR [ecx+0x67],ah
c000e342:	61                   	popa   
c000e343:	69 6e 2c 66 6f 6c 6c 	imul   ebp,DWORD PTR [esi+0x2c],0x6c6c6f66
c000e34a:	6f                   	outs   dx,DWORD PTR ds:[esi]
c000e34b:	77 20                	ja     c000e36d <PKn_Version+0x3d1>
c000e34d:	74 68                	je     c000e3b7 <PKn_Version+0x41b>
c000e34f:	65 73 65             	gs jae c000e3b7 <PKn_Version+0x41b>
c000e352:	20 73 74             	and    BYTE PTR [ebx+0x74],dh
c000e355:	65 70 73             	gs jo  c000e3cb <PKn_Version+0x42f>
c000e358:	3a 0a                	cmp    cl,BYTE PTR [edx]
c000e35a:	20 31                	and    BYTE PTR [ecx],dh
c000e35c:	2e 20 52 65          	and    BYTE PTR cs:[edx+0x65],dl
c000e360:	62 75 69             	bound  esi,QWORD PTR [ebp+0x69]
c000e363:	6c                   	ins    BYTE PTR es:[edi],dx
c000e364:	64 20 50 65          	and    BYTE PTR fs:[eax+0x65],dl
c000e368:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000e369:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c000e36c:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c000e371:	65 6c                	gs ins BYTE PTR es:[edi],dx
c000e373:	2e 20 0a             	and    BYTE PTR cs:[edx],cl
c000e376:	20 32                	and    BYTE PTR [edx],dh
c000e378:	2e 20 44 65 62       	and    BYTE PTR cs:[ebp+eiz*2+0x62],al
c000e37d:	75 67                	jne    c000e3e6 <PKn_Version+0x44a>
c000e37f:	20 50 65             	and    BYTE PTR [eax+0x65],dl
c000e382:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000e383:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c000e386:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c000e38b:	65 6c                	gs ins BYTE PTR es:[edi],dx
c000e38d:	20 6f 6e             	and    BYTE PTR [edi+0x6e],ch
c000e390:	20 62 6f             	and    BYTE PTR [edx+0x6f],ah
c000e393:	63 68 73             	arpl   WORD PTR [eax+0x73],bp
c000e396:	20 6f 72             	and    BYTE PTR [edi+0x72],ch
c000e399:	20 6f 74             	and    BYTE PTR [edi+0x74],ch
c000e39c:	68 65 72 20 76       	push   0x76207265
c000e3a1:	69 72 74 75 61 6c 20 	imul   esi,DWORD PTR [edx+0x74],0x206c6175
c000e3a8:	6d                   	ins    DWORD PTR es:[edi],dx
c000e3a9:	61                   	popa   
c000e3aa:	63 68 69             	arpl   WORD PTR [eax+0x69],bp
c000e3ad:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000e3ae:	65 2e 0a 00          	gs or  al,BYTE PTR cs:[eax]
c000e3b2:	0a 20                	or     ah,BYTE PTR [eax]
c000e3b4:	00 0a                	add    BYTE PTR [edx],cl
c000e3b6:	20 69 6e             	and    BYTE PTR [ecx+0x6e],ch
c000e3b9:	74 72                	je     c000e42d <PKn_Version+0x491>
c000e3bb:	3a 20                	cmp    ah,BYTE PTR [eax]
c000e3bd:	30 78 00             	xor    BYTE PTR [eax+0x0],bh
c000e3c0:	20 28                	and    BYTE PTR [eax],ch
c000e3c2:	20 66 61             	and    BYTE PTR [esi+0x61],ah
c000e3c5:	75 6c                	jne    c000e433 <PKn_Version+0x497>
c000e3c7:	74 20                	je     c000e3e9 <PKn_Version+0x44d>
c000e3c9:	61                   	popa   
c000e3ca:	64 64 72 65          	fs fs jb c000e433 <PKn_Version+0x497>
c000e3ce:	73 73                	jae    c000e443 <PKn_Version+0x4a7>
c000e3d0:	3a 20                	cmp    ah,BYTE PTR [eax]
c000e3d2:	30 78 00             	xor    BYTE PTR [eax+0x0],bh
c000e3d5:	20 29                	and    BYTE PTR [ecx],ch
c000e3d7:	0a 00                	or     al,BYTE PTR [eax]
c000e3d9:	0a 20                	or     ah,BYTE PTR [eax]
c000e3db:	43                   	inc    ebx
c000e3dc:	50                   	push   eax
c000e3dd:	55                   	push   ebp
c000e3de:	20 3a                	and    BYTE PTR [edx],bh
c000e3e0:	00 00                	add    BYTE PTR [eax],al
c000e3e2:	00 00                	add    BYTE PTR [eax],al
c000e3e4:	50                   	push   eax
c000e3e5:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c000e3e7:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c000e3ea:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c000e3ef:	65 6c                	gs ins BYTE PTR es:[edi],dx
c000e3f1:	20 28                	and    BYTE PTR [eax],ch
c000e3f3:	50                   	push   eax
c000e3f4:	4b                   	dec    ebx
c000e3f5:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000e3f6:	29 20                	sub    DWORD PTR [eax],esp
c000e3f8:	76 65                	jbe    c000e45f <PKn_Version+0x4c3>
c000e3fa:	72 73                	jb     c000e46f <PKn_Version+0x4d3>
c000e3fc:	69 6f 6e 20 30 2e 30 	imul   ebp,DWORD PTR [edi+0x6e],0x302e3020
c000e403:	2e 30 20             	xor    BYTE PTR cs:[eax],ah
c000e406:	74 65                	je     c000e46d <PKn_Version+0x4d1>
c000e408:	73 74                	jae    c000e47e <PKn_Version+0x4e2>
c000e40a:	00 00                	add    BYTE PTR [eax],al
c000e40c:	66 72 65             	data16 jb c000e474 <PKn_Version+0x4d8>
c000e40f:	65 20 21             	and    BYTE PTR gs:[ecx],ah
c000e412:	3d 20 4e 55 4c       	cmp    eax,0x4c554e20
c000e417:	4c                   	dec    esp
c000e418:	00 6b 65             	add    BYTE PTR [ebx+0x65],ch
c000e41b:	72 6e                	jb     c000e48b <PKn_Version+0x4ef>
c000e41d:	65 6c                	gs ins BYTE PTR es:[edi],dx
c000e41f:	2f                   	das    
c000e420:	6d                   	ins    DWORD PTR es:[edi],dx
c000e421:	65 6d                	gs ins DWORD PTR es:[edi],dx
c000e423:	6f                   	outs   dx,DWORD PTR ds:[esi]
c000e424:	72 79                	jb     c000e49f <PKn_Version+0x503>
c000e426:	2e 63 00             	arpl   WORD PTR cs:[eax],ax
c000e429:	41                   	inc    ecx
c000e42a:	72 64                	jb     c000e490 <PKn_Version+0x4f4>
c000e42c:	73 3a                	jae    c000e468 <PKn_Version+0x4cc>
c000e42e:	0a 00                	or     al,BYTE PTR [eax]
c000e430:	20 42 61             	and    BYTE PTR [edx+0x61],al
c000e433:	73 65                	jae    c000e49a <PKn_Version+0x4fe>
c000e435:	3a 09                	cmp    cl,BYTE PTR [ecx]
c000e437:	09 30                	or     DWORD PTR [eax],esi
c000e439:	78 00                	js     c000e43b <PKn_Version+0x49f>
c000e43b:	20 0a                	and    BYTE PTR [edx],cl
c000e43d:	20 4c 65 6e          	and    BYTE PTR [ebp+eiz*2+0x6e],cl
c000e441:	67 74 68             	addr16 je c000e4ac <PKn_Version+0x510>
c000e444:	3a 09                	cmp    cl,BYTE PTR [ecx]
c000e446:	30 78 00             	xor    BYTE PTR [eax+0x0],bh
c000e449:	20 0a                	and    BYTE PTR [edx],cl
c000e44b:	20 74 79 70          	and    BYTE PTR [ecx+edi*2+0x70],dh
c000e44f:	65 3a 09             	cmp    cl,BYTE PTR gs:[ecx]
c000e452:	09 00                	or     DWORD PTR [eax],eax
c000e454:	0a 00                	or     al,BYTE PTR [eax]
c000e456:	4e                   	dec    esi
c000e457:	6f                   	outs   dx,DWORD PTR ds:[esi]
c000e458:	20 4d 65             	and    BYTE PTR [ebp+0x65],cl
c000e45b:	6d                   	ins    DWORD PTR es:[edi],dx
c000e45c:	6f                   	outs   dx,DWORD PTR ds:[esi]
c000e45d:	72 79                	jb     c000e4d8 <PKn_Version+0x53c>
c000e45f:	20 61 76             	and    BYTE PTR [ecx+0x76],ah
c000e462:	61                   	popa   
c000e463:	69 6c 61 62 6c 65 21 	imul   ebp,DWORD PTR [ecx+eiz*2+0x62],0x21656c
c000e46a:	00 
c000e46b:	67 65 74 5f          	addr16 gs je c000e4ce <PKn_Version+0x532>
c000e46f:	61                   	popa   
c000e470:	5f                   	pop    edi
c000e471:	70 61                	jo     c000e4d4 <PKn_Version+0x538>
c000e473:	67 65 3a 20          	cmp    ah,BYTE PTR gs:[bx+si]
c000e477:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000e478:	6f                   	outs   dx,DWORD PTR ds:[esi]
c000e479:	74 20                	je     c000e49b <PKn_Version+0x4ff>
c000e47b:	61                   	popa   
c000e47c:	6c                   	ins    BYTE PTR es:[edi],dx
c000e47d:	6c                   	ins    BYTE PTR es:[edi],dx
c000e47e:	6f                   	outs   dx,DWORD PTR ds:[esi]
c000e47f:	77 20                	ja     c000e4a1 <PKn_Version+0x505>
c000e481:	6b 65 72 6e          	imul   esp,DWORD PTR [ebp+0x72],0x6e
c000e485:	65 6c                	gs ins BYTE PTR es:[edi],dx
c000e487:	20 61 6c             	and    BYTE PTR [ecx+0x6c],ah
c000e48a:	6c                   	ins    BYTE PTR es:[edi],dx
c000e48b:	6f                   	outs   dx,DWORD PTR ds:[esi]
c000e48c:	63 20                	arpl   WORD PTR [eax],sp
c000e48e:	75 73                	jne    c000e503 <__func__.1121+0x3>
c000e490:	65 72 73             	gs jb  c000e506 <__func__.1121+0x6>
c000e493:	70 61                	jo     c000e4f6 <PKn_Version+0x55a>
c000e495:	63 65 20             	arpl   WORD PTR [ebp+0x20],sp
c000e498:	6f                   	outs   dx,DWORD PTR ds:[esi]
c000e499:	72 20                	jb     c000e4bb <PKn_Version+0x51f>
c000e49b:	75 73                	jne    c000e510 <__func__.1128+0x4>
c000e49d:	65 72 20             	gs jb  c000e4c0 <PKn_Version+0x524>
c000e4a0:	61                   	popa   
c000e4a1:	6c                   	ins    BYTE PTR es:[edi],dx
c000e4a2:	6c                   	ins    BYTE PTR es:[edi],dx
c000e4a3:	6f                   	outs   dx,DWORD PTR ds:[esi]
c000e4a4:	63 20                	arpl   WORD PTR [eax],sp
c000e4a6:	6b 65 72 6e          	imul   esp,DWORD PTR [ebp+0x72],0x6e
c000e4aa:	65 6c                	gs ins BYTE PTR es:[edi],dx
c000e4ac:	73 70                	jae    c000e51e <__func__.1219+0x6>
c000e4ae:	61                   	popa   
c000e4af:	63 65 20             	arpl   WORD PTR [ebp+0x20],sp
c000e4b2:	62 79 20             	bound  edi,QWORD PTR [ecx+0x20]
c000e4b5:	67 65 74 5f          	addr16 gs je c000e518 <__func__.1219>
c000e4b9:	61                   	popa   
c000e4ba:	5f                   	pop    edi
c000e4bb:	70 61                	jo     c000e51e <__func__.1219+0x6>
c000e4bd:	67 65 28 29          	sub    BYTE PTR gs:[bx+di],ch
c000e4c1:	00 70 61             	add    BYTE PTR [eax+0x61],dh
c000e4c4:	67 65 5f             	addr16 gs pop edi
c000e4c7:	70 61                	jo     c000e52a <__func__.1219+0x12>
c000e4c9:	64 64 72 20          	fs fs jb c000e4ed <PKn_Version+0x551>
c000e4cd:	21 3d 20 4e 55 4c    	and    DWORD PTR ds:0x4c554e20,edi
c000e4d3:	4c                   	dec    esp
c000e4d4:	00 00                	add    BYTE PTR [eax],al
c000e4d6:	00 00                	add    BYTE PTR [eax],al
c000e4d8:	50                   	push   eax
c000e4d9:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c000e4db:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c000e4de:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c000e4e3:	65 6c                	gs ins BYTE PTR es:[edi],dx
c000e4e5:	20 28                	and    BYTE PTR [eax],ch
c000e4e7:	50                   	push   eax
c000e4e8:	4b                   	dec    ebx
c000e4e9:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000e4ea:	29 20                	sub    DWORD PTR [eax],esp
c000e4ec:	76 65                	jbe    c000e553 <__func__.1219+0x3b>
c000e4ee:	72 73                	jb     c000e563 <__func__.1219+0x4b>
c000e4f0:	69 6f 6e 20 30 2e 30 	imul   ebp,DWORD PTR [edi+0x6e],0x302e3020
c000e4f7:	2e 30 20             	xor    BYTE PTR cs:[eax],ah
c000e4fa:	74 65                	je     c000e561 <__func__.1219+0x49>
c000e4fc:	73 74                	jae    c000e572 <__func__.1219+0x5a>
	...

c000e500 <__func__.1121>:
c000e500:	69 6e 69 74 5f 6d 65 	imul   ebp,DWORD PTR [esi+0x69],0x656d5f74
c000e507:	6d                   	ins    DWORD PTR es:[edi],dx
c000e508:	6f                   	outs   dx,DWORD PTR ds:[esi]
c000e509:	72 79                	jb     c000e584 <__func__.1219+0x6c>
	...

c000e50c <__func__.1128>:
c000e50c:	69 6e 69 74 5f 6d 65 	imul   ebp,DWORD PTR [esi+0x69],0x656d5f74
c000e513:	6d                   	ins    DWORD PTR es:[edi],dx
c000e514:	6d                   	ins    DWORD PTR es:[edi],dx
c000e515:	61                   	popa   
c000e516:	6e                   	outs   dx,BYTE PTR ds:[esi]
	...

c000e518 <__func__.1219>:
c000e518:	67 65 74 5f          	addr16 gs je c000e57b <__func__.1219+0x63>
c000e51c:	61                   	popa   
c000e51d:	5f                   	pop    edi
c000e51e:	70 61                	jo     c000e581 <__func__.1219+0x69>
c000e520:	67 65 00 00          	add    BYTE PTR gs:[bx+si],al
c000e524:	70 73                	jo     c000e599 <__func__.1219+0x81>
c000e526:	65 6d                	gs ins DWORD PTR es:[edi],dx
c000e528:	61                   	popa   
c000e529:	2d 3e 76 61 6c       	sub    eax,0x6c61763e
c000e52e:	75 65                	jne    c000e595 <__func__.1219+0x7d>
c000e530:	20 3d 3d 20 76 61    	and    BYTE PTR ds:0x6176203d,bh
c000e536:	6c                   	ins    BYTE PTR es:[edi],dx
c000e537:	75 65                	jne    c000e59e <__func__.1219+0x86>
c000e539:	00 74 68 72          	add    BYTE PTR [eax+ebp*2+0x72],dh
c000e53d:	65 61                	gs popa 
c000e53f:	64 2f                	fs das 
c000e541:	73 79                	jae    c000e5bc <__func__.1219+0xa4>
c000e543:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000e544:	63 2e                	arpl   WORD PTR [esi],bp
c000e546:	63 00                	arpl   WORD PTR [eax],ax
c000e548:	21 28                	and    DWORD PTR [eax],ebp
c000e54a:	6c                   	ins    BYTE PTR es:[edi],dx
c000e54b:	69 73 74 5f 66 69 6e 	imul   esi,DWORD PTR [ebx+0x74],0x6e69665f
c000e552:	64 28 26             	sub    BYTE PTR fs:[esi],ah
c000e555:	28 70 73             	sub    BYTE PTR [eax+0x73],dh
c000e558:	65 6d                	gs ins DWORD PTR es:[edi],dx
c000e55a:	61                   	popa   
c000e55b:	2d 3e 77 61 69       	sub    eax,0x6961773e
c000e560:	74 65                	je     c000e5c7 <__func__.1219+0xaf>
c000e562:	72 73                	jb     c000e5d7 <__func__.1219+0xbf>
c000e564:	29 2c 26             	sub    DWORD PTR [esi+eiz*1],ebp
c000e567:	28 72 75             	sub    BYTE PTR [edx+0x75],dh
c000e56a:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000e56b:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000e56c:	69 6e 67 5f 74 68 72 	imul   ebp,DWORD PTR [esi+0x67],0x7268745f
c000e573:	65 61                	gs popa 
c000e575:	64 28 29             	sub    BYTE PTR fs:[ecx],ch
c000e578:	2d 3e 67 65 6e       	sub    eax,0x6e65673e
c000e57d:	65 72 61             	gs jb  c000e5e1 <__func__.1219+0xc9>
c000e580:	6c                   	ins    BYTE PTR es:[edi],dx
c000e581:	5f                   	pop    edi
c000e582:	74 61                	je     c000e5e5 <__func__.1219+0xcd>
c000e584:	67 29 29             	sub    DWORD PTR [bx+di],ebp
c000e587:	29 00                	sub    DWORD PTR [eax],eax
c000e589:	73 65                	jae    c000e5f0 <__func__.1219+0xd8>
c000e58b:	6d                   	ins    DWORD PTR es:[edi],dx
c000e58c:	61                   	popa   
c000e58d:	20 64 6f 77          	and    BYTE PTR [edi+ebp*2+0x77],ah
c000e591:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000e592:	3a 74 68 72          	cmp    dh,BYTE PTR [eax+ebp*2+0x72]
c000e596:	65 61                	gs popa 
c000e598:	64 20 62 6c          	and    BYTE PTR fs:[edx+0x6c],ah
c000e59c:	6f                   	outs   dx,DWORD PTR ds:[esi]
c000e59d:	63 6b 65             	arpl   WORD PTR [ebx+0x65],bp
c000e5a0:	64 20 68 61          	and    BYTE PTR fs:[eax+0x61],ch
c000e5a4:	73 20                	jae    c000e5c6 <__func__.1219+0xae>
c000e5a6:	62 65 65             	bound  esp,QWORD PTR [ebp+0x65]
c000e5a9:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000e5aa:	20 69 6e             	and    BYTE PTR [ecx+0x6e],ch
c000e5ad:	20 77 61             	and    BYTE PTR [edi+0x61],dh
c000e5b0:	69 74 65 72 73 20 6c 	imul   esi,DWORD PTR [ebp+eiz*2+0x72],0x696c2073
c000e5b7:	69 
c000e5b8:	73 74                	jae    c000e62e <__func__.1219+0x116>
c000e5ba:	21 0a                	and    DWORD PTR [edx],ecx
c000e5bc:	00 70 73             	add    BYTE PTR [eax+0x73],dh
c000e5bf:	65 6d                	gs ins DWORD PTR es:[edi],dx
c000e5c1:	61                   	popa   
c000e5c2:	2d 3e 76 61 6c       	sub    eax,0x6c61763e
c000e5c7:	75 65                	jne    c000e62e <__func__.1219+0x116>
c000e5c9:	20 3d 3d 20 30 00    	and    BYTE PTR ds:0x30203d,bh
c000e5cf:	70 73                	jo     c000e644 <__func__.1219+0x12c>
c000e5d1:	65 6d                	gs ins DWORD PTR es:[edi],dx
c000e5d3:	61                   	popa   
c000e5d4:	2d 3e 76 61 6c       	sub    eax,0x6c61763e
c000e5d9:	75 65                	jne    c000e640 <__func__.1219+0x128>
c000e5db:	20 3d 3d 20 31 00    	and    BYTE PTR ds:0x31203d,bh
c000e5e1:	70 6c                	jo     c000e64f <__func__.1219+0x137>
c000e5e3:	6f                   	outs   dx,DWORD PTR ds:[esi]
c000e5e4:	63 6b 2d             	arpl   WORD PTR [ebx+0x2d],bp
c000e5e7:	3e 68 6f 6c 64 65    	ds push 0x65646c6f
c000e5ed:	72 5f                	jb     c000e64e <__func__.1219+0x136>
c000e5ef:	72 65                	jb     c000e656 <__func__.1219+0x13e>
c000e5f1:	70 65                	jo     c000e658 <__func__.1219+0x140>
c000e5f3:	61                   	popa   
c000e5f4:	74 5f                	je     c000e655 <__func__.1219+0x13d>
c000e5f6:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000e5f7:	72 20                	jb     c000e619 <__func__.1219+0x101>
c000e5f9:	3d 3d 20 30 00       	cmp    eax,0x30203d
c000e5fe:	70 6c                	jo     c000e66c <__func__.1040+0x4>
c000e600:	6f                   	outs   dx,DWORD PTR ds:[esi]
c000e601:	63 6b 2d             	arpl   WORD PTR [ebx+0x2d],bp
c000e604:	3e 68 6f 6c 64 65    	ds push 0x65646c6f
c000e60a:	72 20                	jb     c000e62c <__func__.1219+0x114>
c000e60c:	3d 3d 20 72 75       	cmp    eax,0x7572203d
c000e611:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000e612:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000e613:	69 6e 67 5f 74 68 72 	imul   ebp,DWORD PTR [esi+0x67],0x7268745f
c000e61a:	65 61                	gs popa 
c000e61c:	64 28 29             	sub    BYTE PTR fs:[ecx],ch
c000e61f:	00 70 6c             	add    BYTE PTR [eax+0x6c],dh
c000e622:	6f                   	outs   dx,DWORD PTR ds:[esi]
c000e623:	63 6b 2d             	arpl   WORD PTR [ebx+0x2d],bp
c000e626:	3e 68 6f 6c 64 65    	ds push 0x65646c6f
c000e62c:	72 5f                	jb     c000e68d <__func__.1061+0x5>
c000e62e:	72 65                	jb     c000e695 <__func__.1061+0xd>
c000e630:	70 65                	jo     c000e697 <__func__.1061+0xf>
c000e632:	61                   	popa   
c000e633:	74 5f                	je     c000e694 <__func__.1061+0xc>
c000e635:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000e636:	72 20                	jb     c000e658 <__func__.1219+0x140>
c000e638:	3d 3d 20 31 00       	cmp    eax,0x31203d
c000e63d:	00 00                	add    BYTE PTR [eax],al
c000e63f:	00 50 65             	add    BYTE PTR [eax+0x65],dl
c000e642:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000e643:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c000e646:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c000e64b:	65 6c                	gs ins BYTE PTR es:[edi],dx
c000e64d:	20 28                	and    BYTE PTR [eax],ch
c000e64f:	50                   	push   eax
c000e650:	4b                   	dec    ebx
c000e651:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000e652:	29 20                	sub    DWORD PTR [eax],esp
c000e654:	76 65                	jbe    c000e6bb <__func__.1065+0x23>
c000e656:	72 73                	jb     c000e6cb <__func__.1065+0x33>
c000e658:	69 6f 6e 20 30 2e 30 	imul   ebp,DWORD PTR [edi+0x6e],0x302e3020
c000e65f:	2e 30 20             	xor    BYTE PTR cs:[eax],ah
c000e662:	74 65                	je     c000e6c9 <__func__.1065+0x31>
c000e664:	73 74                	jae    c000e6da <__func__.1065+0x42>
	...

c000e668 <__func__.1040>:
c000e668:	73 65                	jae    c000e6cf <__func__.1065+0x37>
c000e66a:	6d                   	ins    DWORD PTR es:[edi],dx
c000e66b:	61                   	popa   
c000e66c:	5f                   	pop    edi
c000e66d:	69 6e 69 74 00 00 00 	imul   ebp,DWORD PTR [esi+0x69],0x74

c000e674 <__func__.1048>:
c000e674:	73 65                	jae    c000e6db <__func__.1065+0x43>
c000e676:	6d                   	ins    DWORD PTR es:[edi],dx
c000e677:	61                   	popa   
c000e678:	5f                   	pop    edi
c000e679:	64 6f                	outs   dx,DWORD PTR fs:[esi]
c000e67b:	77 6e                	ja     c000e6eb <__func__.1065+0x53>
c000e67d:	00 00                	add    BYTE PTR [eax],al
	...

c000e680 <__func__.1056>:
c000e680:	73 65                	jae    c000e6e7 <__func__.1065+0x4f>
c000e682:	6d                   	ins    DWORD PTR es:[edi],dx
c000e683:	61                   	popa   
c000e684:	5f                   	pop    edi
c000e685:	75 70                	jne    c000e6f7 <__func__.1065+0x5f>
	...

c000e688 <__func__.1061>:
c000e688:	6c                   	ins    BYTE PTR es:[edi],dx
c000e689:	6f                   	outs   dx,DWORD PTR ds:[esi]
c000e68a:	63 6b 5f             	arpl   WORD PTR [ebx+0x5f],bp
c000e68d:	61                   	popa   
c000e68e:	63 71 75             	arpl   WORD PTR [ecx+0x75],si
c000e691:	69 72 65 00 00 00 00 	imul   esi,DWORD PTR [edx+0x65],0x0

c000e698 <__func__.1065>:
c000e698:	6c                   	ins    BYTE PTR es:[edi],dx
c000e699:	6f                   	outs   dx,DWORD PTR ds:[esi]
c000e69a:	63 6b 5f             	arpl   WORD PTR [ebx+0x5f],bp
c000e69d:	72 65                	jb     c000e704 <__func__.1065+0x6c>
c000e69f:	6c                   	ins    BYTE PTR es:[edi],dx
c000e6a0:	65 61                	gs popa 
c000e6a2:	73 65                	jae    c000e709 <__func__.1065+0x71>
c000e6a4:	00 00                	add    BYTE PTR [eax],al
c000e6a6:	00 00                	add    BYTE PTR [eax],al
c000e6a8:	4d                   	dec    ebp
c000e6a9:	61                   	popa   
c000e6aa:	69 6e 20 74 68 72 65 	imul   ebp,DWORD PTR [esi+0x20],0x65726874
c000e6b1:	61                   	popa   
c000e6b2:	64 00 21             	add    BYTE PTR fs:[ecx],ah
c000e6b5:	6c                   	ins    BYTE PTR es:[edi],dx
c000e6b6:	69 73 74 5f 66 69 6e 	imul   esi,DWORD PTR [ebx+0x74],0x6e69665f
c000e6bd:	64 28 26             	sub    BYTE PTR fs:[esi],ah
c000e6c0:	72 65                	jb     c000e727 <__func__.1065+0x8f>
c000e6c2:	61                   	popa   
c000e6c3:	64 79 5f             	fs jns c000e725 <__func__.1065+0x8d>
c000e6c6:	6c                   	ins    BYTE PTR es:[edi],dx
c000e6c7:	69 73 74 2c 26 28 74 	imul   esi,DWORD PTR [ebx+0x74],0x7428262c
c000e6ce:	68 72 65 61 64       	push   0x64616572
c000e6d3:	2d 3e 67 65 6e       	sub    eax,0x6e65673e
c000e6d8:	65 72 61             	gs jb  c000e73c <__func__.1065+0xa4>
c000e6db:	6c                   	ins    BYTE PTR es:[edi],dx
c000e6dc:	5f                   	pop    edi
c000e6dd:	74 61                	je     c000e740 <__func__.1065+0xa8>
c000e6df:	67 29 29             	sub    DWORD PTR [bx+di],ebp
c000e6e2:	00 74 68 72          	add    BYTE PTR [eax+ebp*2+0x72],dh
c000e6e6:	65 61                	gs popa 
c000e6e8:	64 2f                	fs das 
c000e6ea:	74 68                	je     c000e754 <__func__.1065+0xbc>
c000e6ec:	72 65                	jb     c000e753 <__func__.1065+0xbb>
c000e6ee:	61                   	popa   
c000e6ef:	64 2e 63 00          	fs arpl WORD PTR cs:[eax],ax
c000e6f3:	21 6c 69 73          	and    DWORD PTR [ecx+ebp*2+0x73],ebp
c000e6f7:	74 5f                	je     c000e758 <__func__.1065+0xc0>
c000e6f9:	66 69 6e 64 28 26    	imul   bp,WORD PTR [esi+0x64],0x2628
c000e6ff:	61                   	popa   
c000e700:	6c                   	ins    BYTE PTR es:[edi],dx
c000e701:	6c                   	ins    BYTE PTR es:[edi],dx
c000e702:	5f                   	pop    edi
c000e703:	6c                   	ins    BYTE PTR es:[edi],dx
c000e704:	69 73 74 2c 26 28 74 	imul   esi,DWORD PTR [ebx+0x74],0x7428262c
c000e70b:	68 72 65 61 64       	push   0x64616572
c000e710:	2d 3e 61 6c 6c       	sub    eax,0x6c6c613e
c000e715:	5f                   	pop    edi
c000e716:	74 61                	je     c000e779 <__func__.1065+0xe1>
c000e718:	67 29 29             	sub    DWORD PTR [bx+di],ebp
c000e71b:	00 21                	add    BYTE PTR [ecx],ah
c000e71d:	28 6c 69 73          	sub    BYTE PTR [ecx+ebp*2+0x73],ch
c000e721:	74 5f                	je     c000e782 <__func__.1065+0xea>
c000e723:	66 69 6e 64 28 26    	imul   bp,WORD PTR [esi+0x64],0x2628
c000e729:	72 65                	jb     c000e790 <__func__.1065+0xf8>
c000e72b:	61                   	popa   
c000e72c:	64 79 5f             	fs jns c000e78e <__func__.1065+0xf6>
c000e72f:	6c                   	ins    BYTE PTR es:[edi],dx
c000e730:	69 73 74 2c 26 28 63 	imul   esi,DWORD PTR [ebx+0x74],0x6328262c
c000e737:	75 72                	jne    c000e7ab <__func__.1065+0x113>
c000e739:	5f                   	pop    edi
c000e73a:	74 68                	je     c000e7a4 <__func__.1065+0x10c>
c000e73c:	72 65                	jb     c000e7a3 <__func__.1065+0x10b>
c000e73e:	61                   	popa   
c000e73f:	64 2d 3e 67 65 6e    	fs sub eax,0x6e65673e
c000e745:	65 72 61             	gs jb  c000e7a9 <__func__.1065+0x111>
c000e748:	6c                   	ins    BYTE PTR es:[edi],dx
c000e749:	5f                   	pop    edi
c000e74a:	74 61                	je     c000e7ad <__func__.1065+0x115>
c000e74c:	67 29 29             	sub    DWORD PTR [bx+di],ebp
c000e74f:	29 00                	sub    DWORD PTR [eax],eax
c000e751:	21 28                	and    DWORD PTR [eax],ebp
c000e753:	6c                   	ins    BYTE PTR es:[edi],dx
c000e754:	69 73 74 5f 65 6d 70 	imul   esi,DWORD PTR [ebx+0x74],0x706d655f
c000e75b:	74 79                	je     c000e7d6 <__func__.1065+0x13e>
c000e75d:	28 26                	sub    BYTE PTR [esi],ah
c000e75f:	72 65                	jb     c000e7c6 <__func__.1065+0x12e>
c000e761:	61                   	popa   
c000e762:	64 79 5f             	fs jns c000e7c4 <__func__.1065+0x12c>
c000e765:	6c                   	ins    BYTE PTR es:[edi],dx
c000e766:	69 73 74 29 29 00 72 	imul   esi,DWORD PTR [ebx+0x74],0x72002929
c000e76d:	65 61                	gs popa 
c000e76f:	64 79 5f             	fs jns c000e7d1 <__func__.1065+0x139>
c000e772:	6c                   	ins    BYTE PTR es:[edi],dx
c000e773:	69 73 74 2e 74 61 69 	imul   esi,DWORD PTR [ebx+0x74],0x6961742e
c000e77a:	6c                   	ins    BYTE PTR es:[edi],dx
c000e77b:	2e 70 72             	cs jo  c000e7f0 <__func__.1065+0x158>
c000e77e:	65 76 20             	gs jbe c000e7a1 <__func__.1065+0x109>
c000e781:	21 3d 20 26 72 65    	and    DWORD PTR ds:0x65722620,edi
c000e787:	61                   	popa   
c000e788:	64 79 5f             	fs jns c000e7ea <__func__.1065+0x152>
c000e78b:	6c                   	ins    BYTE PTR es:[edi],dx
c000e78c:	69 73 74 2e 68 65 61 	imul   esi,DWORD PTR [ebx+0x74],0x6165682e
c000e793:	64 00 73 74          	add    BYTE PTR fs:[ebx+0x74],dh
c000e797:	61                   	popa   
c000e798:	74 75                	je     c000e80f <__func__.1065+0x177>
c000e79a:	73 20                	jae    c000e7bc <__func__.1065+0x124>
c000e79c:	21 3d 20 54 41 53    	and    DWORD PTR ds:0x53415420,edi
c000e7a2:	4b                   	dec    ebx
c000e7a3:	5f                   	pop    edi
c000e7a4:	52                   	push   edx
c000e7a5:	55                   	push   ebp
c000e7a6:	4e                   	dec    esi
c000e7a7:	4e                   	dec    esi
c000e7a8:	49                   	dec    ecx
c000e7a9:	4e                   	dec    esi
c000e7aa:	47                   	inc    edi
c000e7ab:	20 26                	and    BYTE PTR [esi],ah
c000e7ad:	26 20 73 74          	and    BYTE PTR es:[ebx+0x74],dh
c000e7b1:	61                   	popa   
c000e7b2:	74 75                	je     c000e829 <__func__.1065+0x191>
c000e7b4:	73 20                	jae    c000e7d6 <__func__.1065+0x13e>
c000e7b6:	21 3d 20 54 41 53    	and    DWORD PTR ds:0x53415420,edi
c000e7bc:	4b                   	dec    ebx
c000e7bd:	5f                   	pop    edi
c000e7be:	52                   	push   edx
c000e7bf:	45                   	inc    ebp
c000e7c0:	41                   	inc    ecx
c000e7c1:	44                   	inc    esp
c000e7c2:	59                   	pop    ecx
c000e7c3:	00 21                	add    BYTE PTR [ecx],ah
c000e7c5:	6c                   	ins    BYTE PTR es:[edi],dx
c000e7c6:	69 73 74 5f 66 69 6e 	imul   esi,DWORD PTR [ebx+0x74],0x6e69665f
c000e7cd:	64 28 26             	sub    BYTE PTR fs:[esi],ah
c000e7d0:	72 65                	jb     c000e837 <__func__.1065+0x19f>
c000e7d2:	61                   	popa   
c000e7d3:	64 79 5f             	fs jns c000e835 <__func__.1065+0x19d>
c000e7d6:	6c                   	ins    BYTE PTR es:[edi],dx
c000e7d7:	69 73 74 2c 26 28 70 	imul   esi,DWORD PTR [ebx+0x74],0x7028262c
c000e7de:	74 68                	je     c000e848 <__func__.1065+0x1b0>
c000e7e0:	72 65                	jb     c000e847 <__func__.1065+0x1af>
c000e7e2:	61                   	popa   
c000e7e3:	64 2d 3e 67 65 6e    	fs sub eax,0x6e65673e
c000e7e9:	65 72 61             	gs jb  c000e84d <__func__.1215+0x1>
c000e7ec:	6c                   	ins    BYTE PTR es:[edi],dx
c000e7ed:	5f                   	pop    edi
c000e7ee:	74 61                	je     c000e851 <__func__.1215+0x5>
c000e7f0:	67 29 29             	sub    DWORD PTR [bx+di],ebp
c000e7f3:	00 74 68 72          	add    BYTE PTR [eax+ebp*2+0x72],dh
c000e7f7:	65 61                	gs popa 
c000e7f9:	64 20 75 6e          	and    BYTE PTR fs:[ebp+0x6e],dh
c000e7fd:	62 6c 6f 63          	bound  ebp,QWORD PTR [edi+ebp*2+0x63]
c000e801:	6b 3a 20             	imul   edi,DWORD PTR [edx],0x20
c000e804:	62 6c 6f 63          	bound  ebp,QWORD PTR [edi+ebp*2+0x63]
c000e808:	6b 65 64 20          	imul   esp,DWORD PTR [ebp+0x64],0x20
c000e80c:	74 68                	je     c000e876 <__func__.1227+0xe>
c000e80e:	72 65                	jb     c000e875 <__func__.1227+0xd>
c000e810:	61                   	popa   
c000e811:	64 20 69 6e          	and    BYTE PTR fs:[ecx+0x6e],ch
c000e815:	20 72 65             	and    BYTE PTR [edx+0x65],dh
c000e818:	61                   	popa   
c000e819:	64 79 20             	fs jns c000e83c <__func__.1065+0x1a4>
c000e81c:	6c                   	ins    BYTE PTR es:[edi],dx
c000e81d:	69 73 74 00 00 00 00 	imul   esi,DWORD PTR [ebx+0x74],0x0
c000e824:	50                   	push   eax
c000e825:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c000e827:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c000e82a:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c000e82f:	65 6c                	gs ins BYTE PTR es:[edi],dx
c000e831:	20 28                	and    BYTE PTR [eax],ch
c000e833:	50                   	push   eax
c000e834:	4b                   	dec    ebx
c000e835:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000e836:	29 20                	sub    DWORD PTR [eax],esp
c000e838:	76 65                	jbe    c000e89f <__func__.1234+0x27>
c000e83a:	72 73                	jb     c000e8af <__func__.1234+0x37>
c000e83c:	69 6f 6e 20 30 2e 30 	imul   ebp,DWORD PTR [edi+0x6e],0x302e3020
c000e843:	2e 30 20             	xor    BYTE PTR cs:[eax],ah
c000e846:	74 65                	je     c000e8ad <__func__.1234+0x35>
c000e848:	73 74                	jae    c000e8be <__func__.1234+0x46>
	...

c000e84c <__func__.1215>:
c000e84c:	74 68                	je     c000e8b6 <__func__.1234+0x3e>
c000e84e:	72 65                	jb     c000e8b5 <__func__.1234+0x3d>
c000e850:	61                   	popa   
c000e851:	64 5f                	fs pop edi
c000e853:	73 74                	jae    c000e8c9 <__func__.1234+0x51>
c000e855:	61                   	popa   
c000e856:	72 74                	jb     c000e8cc <__func__.1234+0x54>
c000e858:	00 00                	add    BYTE PTR [eax],al
	...

c000e85c <__func__.1222>:
c000e85c:	73 63                	jae    c000e8c1 <__func__.1234+0x49>
c000e85e:	68 65 64 75 6c       	push   0x6c756465
c000e863:	65 00 00             	add    BYTE PTR gs:[eax],al
	...

c000e868 <__func__.1227>:
c000e868:	74 68                	je     c000e8d2 <__func__.1234+0x5a>
c000e86a:	72 65                	jb     c000e8d1 <__func__.1234+0x59>
c000e86c:	61                   	popa   
c000e86d:	64 5f                	fs pop edi
c000e86f:	62 6c 6f 63          	bound  ebp,QWORD PTR [edi+ebp*2+0x63]
c000e873:	6b 00 00             	imul   eax,DWORD PTR [eax],0x0
	...

c000e878 <__func__.1234>:
c000e878:	74 68                	je     c000e8e2 <__func__.1234+0x6a>
c000e87a:	72 65                	jb     c000e8e1 <__func__.1234+0x69>
c000e87c:	61                   	popa   
c000e87d:	64 5f                	fs pop edi
c000e87f:	75 6e                	jne    c000e8ef <__func__.1234+0x77>
c000e881:	62 6c 6f 63          	bound  ebp,QWORD PTR [edi+ebp*2+0x63]
c000e885:	6b 00 00             	imul   eax,DWORD PTR [eax],0x0
c000e888:	50                   	push   eax
c000e889:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c000e88b:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c000e88e:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c000e893:	65 6c                	gs ins BYTE PTR es:[edi],dx
c000e895:	20 28                	and    BYTE PTR [eax],ch
c000e897:	50                   	push   eax
c000e898:	4b                   	dec    ebx
c000e899:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000e89a:	29 20                	sub    DWORD PTR [eax],esp
c000e89c:	76 65                	jbe    c000e903 <__func__.1234+0x8b>
c000e89e:	72 73                	jb     c000e913 <__func__.1234+0x9b>
c000e8a0:	69 6f 6e 20 30 2e 30 	imul   ebp,DWORD PTR [edi+0x6e],0x302e3020
c000e8a7:	2e 30 20             	xor    BYTE PTR cs:[eax],ah
c000e8aa:	74 65                	je     c000e911 <__func__.1234+0x99>
c000e8ac:	73 74                	jae    c000e922 <__func__.1234+0xaa>
c000e8ae:	00 00                	add    BYTE PTR [eax],al
c000e8b0:	70 74                	jo     c000e926 <__func__.1234+0xae>
c000e8b2:	68 72 65 61 64       	push   0x64616572
c000e8b7:	20 21                	and    BYTE PTR [ecx],ah
c000e8b9:	3d 20 4e 55 4c       	cmp    eax,0x4c554e20
c000e8be:	4c                   	dec    esp
c000e8bf:	00 75 73             	add    BYTE PTR [ebp+0x73],dh
c000e8c2:	65 72 70             	gs jb  c000e935 <__func__.1234+0xbd>
c000e8c5:	72 6f                	jb     c000e936 <__func__.1234+0xbe>
c000e8c7:	67 2f                	addr16 das 
c000e8c9:	70 72                	jo     c000e93d <__func__.1234+0xc5>
c000e8cb:	6f                   	outs   dx,DWORD PTR ds:[esi]
c000e8cc:	63 65 73             	arpl   WORD PTR [ebp+0x73],sp
c000e8cf:	73 2e                	jae    c000e8ff <__func__.1234+0x87>
c000e8d1:	63 00                	arpl   WORD PTR [eax],ax
c000e8d3:	63 72 65             	arpl   WORD PTR [edx+0x65],si
c000e8d6:	61                   	popa   
c000e8d7:	74 65                	je     c000e93e <__func__.1234+0xc6>
c000e8d9:	5f                   	pop    edi
c000e8da:	70 61                	jo     c000e93d <__func__.1234+0xc5>
c000e8dc:	67 65 5f             	addr16 gs pop edi
c000e8df:	64 69 72 3a 20 67 65 	imul   esi,DWORD PTR fs:[edx+0x3a],0x74656720
c000e8e6:	74 
c000e8e7:	20 6b 65             	and    BYTE PTR [ebx+0x65],ch
c000e8ea:	72 6e                	jb     c000e95a <__func__.1234+0xe2>
c000e8ec:	65 6c                	gs ins BYTE PTR es:[edi],dx
c000e8ee:	20 70 61             	and    BYTE PTR [eax+0x61],dh
c000e8f1:	67 65 20 66 61       	and    BYTE PTR gs:[bp+0x61],ah
c000e8f6:	69 6c 65 64 21 0a 00 	imul   ebp,DWORD PTR [ebp+eiz*2+0x64],0x21000a21
c000e8fd:	21 
c000e8fe:	28 6c 69 73          	sub    BYTE PTR [ecx+ebp*2+0x73],ch
c000e902:	74 5f                	je     c000e963 <__func__.1234+0xeb>
c000e904:	66 69 6e 64 28 26    	imul   bp,WORD PTR [esi+0x64],0x2628
c000e90a:	61                   	popa   
c000e90b:	6c                   	ins    BYTE PTR es:[edi],dx
c000e90c:	6c                   	ins    BYTE PTR es:[edi],dx
c000e90d:	5f                   	pop    edi
c000e90e:	6c                   	ins    BYTE PTR es:[edi],dx
c000e90f:	69 73 74 2c 26 28 70 	imul   esi,DWORD PTR [ebx+0x74],0x7028262c
c000e916:	74 68                	je     c000e980 <__func__.1234+0x108>
c000e918:	72 65                	jb     c000e97f <__func__.1234+0x107>
c000e91a:	61                   	popa   
c000e91b:	64 2d 3e 61 6c 6c    	fs sub eax,0x6c6c613e
c000e921:	5f                   	pop    edi
c000e922:	74 61                	je     c000e985 <__func__.1143+0x1>
c000e924:	67 29 29             	sub    DWORD PTR [bx+di],ebp
c000e927:	29 00                	sub    DWORD PTR [eax],eax
c000e929:	21 28                	and    DWORD PTR [eax],ebp
c000e92b:	6c                   	ins    BYTE PTR es:[edi],dx
c000e92c:	69 73 74 5f 66 69 6e 	imul   esi,DWORD PTR [ebx+0x74],0x6e69665f
c000e933:	64 28 26             	sub    BYTE PTR fs:[esi],ah
c000e936:	72 65                	jb     c000e99d <__func__.1158+0x5>
c000e938:	61                   	popa   
c000e939:	64 79 5f             	fs jns c000e99b <__func__.1158+0x3>
c000e93c:	6c                   	ins    BYTE PTR es:[edi],dx
c000e93d:	69 73 74 2c 26 28 70 	imul   esi,DWORD PTR [ebx+0x74],0x7028262c
c000e944:	74 68                	je     c000e9ae <__func__.1158+0x16>
c000e946:	72 65                	jb     c000e9ad <__func__.1158+0x15>
c000e948:	61                   	popa   
c000e949:	64 2d 3e 67 65 6e    	fs sub eax,0x6e65673e
c000e94f:	65 72 61             	gs jb  c000e9b3 <__func__.1158+0x1b>
c000e952:	6c                   	ins    BYTE PTR es:[edi],dx
c000e953:	5f                   	pop    edi
c000e954:	74 61                	je     c000e9b7 <__func__.1158+0x1f>
c000e956:	67 29 29             	sub    DWORD PTR [bx+di],ebp
c000e959:	29 00                	sub    DWORD PTR [eax],eax
c000e95b:	00 50 65             	add    BYTE PTR [eax+0x65],dl
c000e95e:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000e95f:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c000e962:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c000e967:	65 6c                	gs ins BYTE PTR es:[edi],dx
c000e969:	20 28                	and    BYTE PTR [eax],ch
c000e96b:	50                   	push   eax
c000e96c:	4b                   	dec    ebx
c000e96d:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000e96e:	29 20                	sub    DWORD PTR [eax],esp
c000e970:	76 65                	jbe    c000e9d7 <__func__.1158+0x3f>
c000e972:	72 73                	jb     c000e9e7 <__func__.1158+0x4f>
c000e974:	69 6f 6e 20 30 2e 30 	imul   ebp,DWORD PTR [edi+0x6e],0x302e3020
c000e97b:	2e 30 20             	xor    BYTE PTR cs:[eax],ah
c000e97e:	74 65                	je     c000e9e5 <__func__.1158+0x4d>
c000e980:	73 74                	jae    c000e9f6 <__func__.1158+0x5e>
	...

c000e984 <__func__.1143>:
c000e984:	70 72                	jo     c000e9f8 <__func__.1158+0x60>
c000e986:	6f                   	outs   dx,DWORD PTR ds:[esi]
c000e987:	63 65 73             	arpl   WORD PTR [ebp+0x73],sp
c000e98a:	73 5f                	jae    c000e9eb <__func__.1158+0x53>
c000e98c:	61                   	popa   
c000e98d:	63 74 69 76          	arpl   WORD PTR [ecx+ebp*2+0x76],si
c000e991:	61                   	popa   
c000e992:	74 65                	je     c000e9f9 <__func__.1158+0x61>
c000e994:	00 00                	add    BYTE PTR [eax],al
	...

c000e998 <__func__.1158>:
c000e998:	70 72                	jo     c000ea0c <__func__.1158+0x74>
c000e99a:	6f                   	outs   dx,DWORD PTR ds:[esi]
c000e99b:	63 65 73             	arpl   WORD PTR [ebp+0x73],sp
c000e99e:	73 5f                	jae    c000e9ff <__func__.1158+0x67>
c000e9a0:	65 78 65             	gs js  c000ea08 <__func__.1158+0x70>
c000e9a3:	63 75 74             	arpl   WORD PTR [ebp+0x74],si
c000e9a6:	65 00 50 65          	add    BYTE PTR gs:[eax+0x65],dl
c000e9aa:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000e9ab:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c000e9ae:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c000e9b3:	65 6c                	gs ins BYTE PTR es:[edi],dx
c000e9b5:	20 28                	and    BYTE PTR [eax],ch
c000e9b7:	50                   	push   eax
c000e9b8:	4b                   	dec    ebx
c000e9b9:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000e9ba:	29 20                	sub    DWORD PTR [eax],esp
c000e9bc:	76 65                	jbe    c000ea23 <__func__.1158+0x8b>
c000e9be:	72 73                	jb     c000ea33 <keymap+0x7>
c000e9c0:	69 6f 6e 20 30 2e 30 	imul   ebp,DWORD PTR [edi+0x6e],0x302e3020
c000e9c7:	2e 30 20             	xor    BYTE PTR cs:[eax],ah
c000e9ca:	74 65                	je     c000ea31 <keymap+0x5>
c000e9cc:	73 74                	jae    c000ea42 <keymap+0x16>
c000e9ce:	00 00                	add    BYTE PTR [eax],al
c000e9d0:	50                   	push   eax
c000e9d1:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c000e9d3:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c000e9d6:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c000e9db:	65 6c                	gs ins BYTE PTR es:[edi],dx
c000e9dd:	20 28                	and    BYTE PTR [eax],ch
c000e9df:	50                   	push   eax
c000e9e0:	4b                   	dec    ebx
c000e9e1:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000e9e2:	29 20                	sub    DWORD PTR [eax],esp
c000e9e4:	76 65                	jbe    c000ea4b <keymap+0x1f>
c000e9e6:	72 73                	jb     c000ea5b <keymap+0x2f>
c000e9e8:	69 6f 6e 20 30 2e 30 	imul   ebp,DWORD PTR [edi+0x6e],0x302e3020
c000e9ef:	2e 30 20             	xor    BYTE PTR cs:[eax],ah
c000e9f2:	74 65                	je     c000ea59 <keymap+0x2d>
c000e9f4:	73 74                	jae    c000ea6a <keymap+0x3e>
c000e9f6:	00 00                	add    BYTE PTR [eax],al
c000e9f8:	75 6e                	jne    c000ea68 <keymap+0x3c>
c000e9fa:	6b 6e 6f 77          	imul   ebp,DWORD PTR [esi+0x6f],0x77
c000e9fe:	20 6b 65             	and    BYTE PTR [ebx+0x65],ch
c000ea01:	79 00                	jns    c000ea03 <__func__.1158+0x6b>
c000ea03:	00 50 65             	add    BYTE PTR [eax+0x65],dl
c000ea06:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000ea07:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c000ea0a:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c000ea0f:	65 6c                	gs ins BYTE PTR es:[edi],dx
c000ea11:	20 28                	and    BYTE PTR [eax],ch
c000ea13:	50                   	push   eax
c000ea14:	4b                   	dec    ebx
c000ea15:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000ea16:	29 20                	sub    DWORD PTR [eax],esp
c000ea18:	76 65                	jbe    c000ea7f <keymap+0x53>
c000ea1a:	72 73                	jb     c000ea8f <keymap+0x63>
c000ea1c:	69 6f 6e 20 30 2e 30 	imul   ebp,DWORD PTR [edi+0x6e],0x302e3020
c000ea23:	2e 30 20             	xor    BYTE PTR cs:[eax],ah
c000ea26:	74 65                	je     c000ea8d <keymap+0x61>
c000ea28:	73 74                	jae    c000ea9e <keymap+0x72>
	...

c000ea2c <keymap>:
c000ea2c:	00 00                	add    BYTE PTR [eax],al
c000ea2e:	1b 1b                	sbb    ebx,DWORD PTR [ebx]
c000ea30:	31 21                	xor    DWORD PTR [ecx],esp
c000ea32:	32 40 33             	xor    al,BYTE PTR [eax+0x33]
c000ea35:	23 34 24             	and    esi,DWORD PTR [esp]
c000ea38:	35 25 36 5e 37       	xor    eax,0x375e3625
c000ea3d:	26 38 2a             	cmp    BYTE PTR es:[edx],ch
c000ea40:	39 28                	cmp    DWORD PTR [eax],ebp
c000ea42:	30 29                	xor    BYTE PTR [ecx],ch
c000ea44:	2d 5f 3d 2b 08       	sub    eax,0x82b3d5f
c000ea49:	08 09                	or     BYTE PTR [ecx],cl
c000ea4b:	09 71 51             	or     DWORD PTR [ecx+0x51],esi
c000ea4e:	77 57                	ja     c000eaa7 <keymap+0x7b>
c000ea50:	65 45                	gs inc ebp
c000ea52:	72 52                	jb     c000eaa6 <keymap+0x7a>
c000ea54:	74 54                	je     c000eaaa <keymap+0x7e>
c000ea56:	79 59                	jns    c000eab1 <keymap+0x85>
c000ea58:	75 55                	jne    c000eaaf <keymap+0x83>
c000ea5a:	69 49 6f 4f 70 50 5b 	imul   ecx,DWORD PTR [ecx+0x6f],0x5b50704f
c000ea61:	7b 5d                	jnp    c000eac0 <keymap+0x94>
c000ea63:	7d 0d                	jge    c000ea72 <keymap+0x46>
c000ea65:	0d 00 00 61 41       	or     eax,0x41610000
c000ea6a:	73 53                	jae    c000eabf <keymap+0x93>
c000ea6c:	64 44                	fs inc esp
c000ea6e:	66 46                	inc    si
c000ea70:	67 47                	addr16 inc edi
c000ea72:	68 48 6a 4a 6b       	push   0x6b4a6a48
c000ea77:	4b                   	dec    ebx
c000ea78:	6c                   	ins    BYTE PTR es:[edi],dx
c000ea79:	4c                   	dec    esp
c000ea7a:	3b 3a                	cmp    edi,DWORD PTR [edx]
c000ea7c:	27                   	daa    
c000ea7d:	22 60 7e             	and    ah,BYTE PTR [eax+0x7e]
c000ea80:	00 00                	add    BYTE PTR [eax],al
c000ea82:	5c                   	pop    esp
c000ea83:	7c 7a                	jl     c000eaff <keymap+0xd3>
c000ea85:	5a                   	pop    edx
c000ea86:	78 58                	js     c000eae0 <keymap+0xb4>
c000ea88:	63 43 76             	arpl   WORD PTR [ebx+0x76],ax
c000ea8b:	56                   	push   esi
c000ea8c:	62 42 6e             	bound  eax,QWORD PTR [edx+0x6e]
c000ea8f:	4e                   	dec    esi
c000ea90:	6d                   	ins    DWORD PTR es:[edi],dx
c000ea91:	4d                   	dec    ebp
c000ea92:	2c 3c                	sub    al,0x3c
c000ea94:	2e 3e 2f             	cs ds das 
c000ea97:	3f                   	aas    
c000ea98:	00 00                	add    BYTE PTR [eax],al
c000ea9a:	2a 2a                	sub    ch,BYTE PTR [edx]
c000ea9c:	00 00                	add    BYTE PTR [eax],al
c000ea9e:	20 20                	and    BYTE PTR [eax],ah
c000eaa0:	00 00                	add    BYTE PTR [eax],al
c000eaa2:	00 00                	add    BYTE PTR [eax],al
c000eaa4:	50                   	push   eax
c000eaa5:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c000eaa7:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c000eaaa:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c000eaaf:	65 6c                	gs ins BYTE PTR es:[edi],dx
c000eab1:	20 28                	and    BYTE PTR [eax],ch
c000eab3:	50                   	push   eax
c000eab4:	4b                   	dec    ebx
c000eab5:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000eab6:	29 20                	sub    DWORD PTR [eax],esp
c000eab8:	76 65                	jbe    c000eb1f <keymap+0xf3>
c000eaba:	72 73                	jb     c000eb2f <keymap+0x103>
c000eabc:	69 6f 6e 20 30 2e 30 	imul   ebp,DWORD PTR [edi+0x6e],0x302e3020
c000eac3:	2e 30 20             	xor    BYTE PTR cs:[eax],ah
c000eac6:	74 65                	je     c000eb2d <keymap+0x101>
c000eac8:	73 74                	jae    c000eb3e <keymap+0x112>
c000eaca:	00 00                	add    BYTE PTR [eax],al
c000eacc:	50                   	push   eax
c000eacd:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c000eacf:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c000ead2:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c000ead7:	65 6c                	gs ins BYTE PTR es:[edi],dx
c000ead9:	20 28                	and    BYTE PTR [eax],ch
c000eadb:	50                   	push   eax
c000eadc:	4b                   	dec    ebx
c000eadd:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000eade:	29 20                	sub    DWORD PTR [eax],esp
c000eae0:	76 65                	jbe    c000eb47 <keymap+0x11b>
c000eae2:	72 73                	jb     c000eb57 <keymap+0x12b>
c000eae4:	69 6f 6e 20 30 2e 30 	imul   ebp,DWORD PTR [edi+0x6e],0x302e3020
c000eaeb:	2e 30 20             	xor    BYTE PTR cs:[eax],ah
c000eaee:	74 65                	je     c000eb55 <keymap+0x129>
c000eaf0:	73 74                	jae    c000eb66 <keymap+0x13a>
c000eaf2:	00 00                	add    BYTE PTR [eax],al
c000eaf4:	62 79 74             	bound  edi,QWORD PTR [ecx+0x74]
c000eaf7:	65 5f                	gs pop edi
c000eaf9:	69 6e 64 65 78 20 3c 	imul   ebp,DWORD PTR [esi+0x64],0x3c207865
c000eb00:	20 28                	and    BYTE PTR [eax],ch
c000eb02:	62 74 6d 70          	bound  esi,QWORD PTR [ebp+ebp*2+0x70]
c000eb06:	2d 3e 62 74 6d       	sub    eax,0x6d74623e
c000eb0b:	70 5f                	jo     c000eb6c <__func__.866+0x4>
c000eb0d:	62 79 74             	bound  edi,QWORD PTR [ecx+0x74]
c000eb10:	65 73 5f             	gs jae c000eb72 <__func__.866+0xa>
c000eb13:	6c                   	ins    BYTE PTR es:[edi],dx
c000eb14:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c000eb16:	29 00                	sub    DWORD PTR [eax],eax
c000eb18:	6c                   	ins    BYTE PTR es:[edi],dx
c000eb19:	69 62 2f 62 69 74 6d 	imul   esp,DWORD PTR [edx+0x2f],0x6d746962
c000eb20:	61                   	popa   
c000eb21:	70 2e                	jo     c000eb51 <keymap+0x125>
c000eb23:	63 00                	arpl   WORD PTR [eax],ax
c000eb25:	76 61                	jbe    c000eb88 <__func__.883+0x10>
c000eb27:	6c                   	ins    BYTE PTR es:[edi],dx
c000eb28:	75 65                	jne    c000eb8f <__func__.883+0x17>
c000eb2a:	20 3d 3d 20 30 20    	and    BYTE PTR ds:0x2030203d,bh
c000eb30:	7c 7c                	jl     c000ebae <__func__.883+0x36>
c000eb32:	20 76 61             	and    BYTE PTR [esi+0x61],dh
c000eb35:	6c                   	ins    BYTE PTR es:[edi],dx
c000eb36:	75 65                	jne    c000eb9d <__func__.883+0x25>
c000eb38:	20 3d 3d 20 31 00    	and    BYTE PTR ds:0x31203d,bh
c000eb3e:	00 00                	add    BYTE PTR [eax],al
c000eb40:	50                   	push   eax
c000eb41:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c000eb43:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c000eb46:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c000eb4b:	65 6c                	gs ins BYTE PTR es:[edi],dx
c000eb4d:	20 28                	and    BYTE PTR [eax],ch
c000eb4f:	50                   	push   eax
c000eb50:	4b                   	dec    ebx
c000eb51:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000eb52:	29 20                	sub    DWORD PTR [eax],esp
c000eb54:	76 65                	jbe    c000ebbb <__func__.883+0x43>
c000eb56:	72 73                	jb     c000ebcb <__func__.883+0x53>
c000eb58:	69 6f 6e 20 30 2e 30 	imul   ebp,DWORD PTR [edi+0x6e],0x302e3020
c000eb5f:	2e 30 20             	xor    BYTE PTR cs:[eax],ah
c000eb62:	74 65                	je     c000ebc9 <__func__.883+0x51>
c000eb64:	73 74                	jae    c000ebda <__func__.883+0x62>
	...

c000eb68 <__func__.866>:
c000eb68:	62 69 74             	bound  ebp,QWORD PTR [ecx+0x74]
c000eb6b:	6d                   	ins    DWORD PTR es:[edi],dx
c000eb6c:	61                   	popa   
c000eb6d:	70 5f                	jo     c000ebce <__func__.883+0x56>
c000eb6f:	61                   	popa   
c000eb70:	6c                   	ins    BYTE PTR es:[edi],dx
c000eb71:	6c                   	ins    BYTE PTR es:[edi],dx
c000eb72:	6f                   	outs   dx,DWORD PTR ds:[esi]
c000eb73:	63 00                	arpl   WORD PTR [eax],ax
c000eb75:	00 00                	add    BYTE PTR [eax],al
	...

c000eb78 <__func__.883>:
c000eb78:	62 69 74             	bound  ebp,QWORD PTR [ecx+0x74]
c000eb7b:	6d                   	ins    DWORD PTR es:[edi],dx
c000eb7c:	61                   	popa   
c000eb7d:	70 5f                	jo     c000ebde <__func__.883+0x66>
c000eb7f:	73 65                	jae    c000ebe6 <__func__.883+0x6e>
c000eb81:	74 00                	je     c000eb83 <__func__.883+0xb>
c000eb83:	00 66 69             	add    BYTE PTR [esi+0x69],ah
c000eb86:	66 6f                	outs   dx,WORD PTR ds:[esi]
c000eb88:	2d 3e 74 79 70       	sub    eax,0x7079743e
c000eb8d:	65 20 3d 3d 20 38 20 	and    BYTE PTR gs:0x2038203d,bh
c000eb94:	7c 7c                	jl     c000ec12 <__func__.1096+0x2>
c000eb96:	20 66 69             	and    BYTE PTR [esi+0x69],ah
c000eb99:	66 6f                	outs   dx,WORD PTR ds:[esi]
c000eb9b:	2d 3e 74 79 70       	sub    eax,0x7079743e
c000eba0:	65 20 3d 3d 20 31 36 	and    BYTE PTR gs:0x3631203d,bh
c000eba7:	20 7c 7c 20          	and    BYTE PTR [esp+edi*2+0x20],bh
c000ebab:	66 69 66 6f 2d 3e    	imul   sp,WORD PTR [esi+0x6f],0x3e2d
c000ebb1:	74 79                	je     c000ec2c <__func__.1096+0x1c>
c000ebb3:	70 65                	jo     c000ec1a <__func__.1096+0xa>
c000ebb5:	20 3d 3d 20 33 32    	and    BYTE PTR ds:0x3233203d,bh
c000ebbb:	20 7c 7c 20          	and    BYTE PTR [esp+edi*2+0x20],bh
c000ebbf:	66 69 66 6f 2d 3e    	imul   sp,WORD PTR [esi+0x6f],0x3e2d
c000ebc5:	74 79                	je     c000ec40 <__func__.1096+0x30>
c000ebc7:	70 65                	jo     c000ec2e <__func__.1096+0x1e>
c000ebc9:	20 3d 3d 20 36 34    	and    BYTE PTR ds:0x3436203d,bh
c000ebcf:	00 6c 69 62          	add    BYTE PTR [ecx+ebp*2+0x62],ch
c000ebd3:	2f                   	das    
c000ebd4:	66 69 66 6f 2e 63    	imul   sp,WORD PTR [esi+0x6f],0x632e
c000ebda:	00 00                	add    BYTE PTR [eax],al
c000ebdc:	50                   	push   eax
c000ebdd:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c000ebdf:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c000ebe2:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c000ebe7:	65 6c                	gs ins BYTE PTR es:[edi],dx
c000ebe9:	20 28                	and    BYTE PTR [eax],ch
c000ebeb:	50                   	push   eax
c000ebec:	4b                   	dec    ebx
c000ebed:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000ebee:	29 20                	sub    DWORD PTR [eax],esp
c000ebf0:	76 65                	jbe    c000ec57 <__func__.1096+0x47>
c000ebf2:	72 73                	jb     c000ec67 <__func__.1096+0x57>
c000ebf4:	69 6f 6e 20 30 2e 30 	imul   ebp,DWORD PTR [edi+0x6e],0x302e3020
c000ebfb:	2e 30 20             	xor    BYTE PTR cs:[eax],ah
c000ebfe:	74 65                	je     c000ec65 <__func__.1096+0x55>
c000ec00:	73 74                	jae    c000ec76 <__func__.1096+0x66>
	...

c000ec04 <__func__.1085>:
c000ec04:	66 69 66 6f 5f 70    	imul   sp,WORD PTR [esi+0x6f],0x705f
c000ec0a:	75 74                	jne    c000ec80 <__func__.1096+0x70>
c000ec0c:	00 00                	add    BYTE PTR [eax],al
	...

c000ec10 <__func__.1096>:
c000ec10:	66 69 66 6f 5f 67    	imul   sp,WORD PTR [esi+0x6f],0x675f
c000ec16:	65 74 00             	gs je  c000ec19 <__func__.1096+0x9>
c000ec19:	00 00                	add    BYTE PTR [eax],al
c000ec1b:	00 50 65             	add    BYTE PTR [eax+0x65],dl
c000ec1e:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000ec1f:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c000ec22:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c000ec27:	65 6c                	gs ins BYTE PTR es:[edi],dx
c000ec29:	20 28                	and    BYTE PTR [eax],ch
c000ec2b:	50                   	push   eax
c000ec2c:	4b                   	dec    ebx
c000ec2d:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000ec2e:	29 20                	sub    DWORD PTR [eax],esp
c000ec30:	76 65                	jbe    c000ec97 <__func__.1096+0x87>
c000ec32:	72 73                	jb     c000eca7 <digits.979+0x3>
c000ec34:	69 6f 6e 20 30 2e 30 	imul   ebp,DWORD PTR [edi+0x6e],0x302e3020
c000ec3b:	2e 30 20             	xor    BYTE PTR cs:[eax],ah
c000ec3e:	74 65                	je     c000eca5 <digits.979+0x1>
c000ec40:	73 74                	jae    c000ecb6 <digits.979+0x12>
c000ec42:	00 00                	add    BYTE PTR [eax],al
c000ec44:	7d ae                	jge    c000ebf4 <__func__.883+0x7c>
c000ec46:	00 c0                	add    al,al
c000ec48:	39 ae 00 c0 39 ae    	cmp    DWORD PTR [esi-0x51c64000],ebp
c000ec4e:	00 c0                	add    al,al
c000ec50:	39 ae 00 c0 39 ae    	cmp    DWORD PTR [esi-0x51c64000],ebp
c000ec56:	00 c0                	add    al,al
c000ec58:	39 ae 00 c0 39 ae    	cmp    DWORD PTR [esi-0x51c64000],ebp
c000ec5e:	00 c0                	add    al,al
c000ec60:	39 ae 00 c0 12 ae    	cmp    DWORD PTR [esi-0x51ed4000],ebp
c000ec66:	00 c0                	add    al,al
c000ec68:	31 ae 00 c0 20 ae    	xor    DWORD PTR [esi-0x51df4000],ebp
c000ec6e:	00 c0                	add    al,al
c000ec70:	39 ae 00 c0 39 ae    	cmp    DWORD PTR [esi-0x51c64000],ebp
c000ec76:	00 c0                	add    al,al
c000ec78:	20 ae 00 c0 50 65    	and    BYTE PTR [esi+0x6550c000],ch
c000ec7e:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000ec7f:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c000ec82:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c000ec87:	65 6c                	gs ins BYTE PTR es:[edi],dx
c000ec89:	20 28                	and    BYTE PTR [eax],ch
c000ec8b:	50                   	push   eax
c000ec8c:	4b                   	dec    ebx
c000ec8d:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000ec8e:	29 20                	sub    DWORD PTR [eax],esp
c000ec90:	76 65                	jbe    c000ecf7 <digits.998+0x2b>
c000ec92:	72 73                	jb     c000ed07 <digits.998+0x3b>
c000ec94:	69 6f 6e 20 30 2e 30 	imul   ebp,DWORD PTR [edi+0x6e],0x302e3020
c000ec9b:	2e 30 20             	xor    BYTE PTR cs:[eax],ah
c000ec9e:	74 65                	je     c000ed05 <digits.998+0x39>
c000eca0:	73 74                	jae    c000ed16 <digits.998+0x4a>
	...

c000eca4 <digits.979>:
c000eca4:	30 31                	xor    BYTE PTR [ecx],dh
c000eca6:	32 33                	xor    dh,BYTE PTR [ebx]
c000eca8:	34 35                	xor    al,0x35
c000ecaa:	36 37                	ss aaa 
c000ecac:	38 39                	cmp    BYTE PTR [ecx],bh
c000ecae:	41                   	inc    ecx
c000ecaf:	42                   	inc    edx
c000ecb0:	43                   	inc    ebx
c000ecb1:	44                   	inc    esp
c000ecb2:	45                   	inc    ebp
c000ecb3:	46                   	inc    esi
c000ecb4:	47                   	inc    edi
c000ecb5:	48                   	dec    eax
c000ecb6:	49                   	dec    ecx
c000ecb7:	4a                   	dec    edx
c000ecb8:	4b                   	dec    ebx
c000ecb9:	4c                   	dec    esp
c000ecba:	4d                   	dec    ebp
c000ecbb:	4e                   	dec    esi
c000ecbc:	4f                   	dec    edi
c000ecbd:	50                   	push   eax
c000ecbe:	51                   	push   ecx
c000ecbf:	52                   	push   edx
c000ecc0:	53                   	push   ebx
c000ecc1:	54                   	push   esp
c000ecc2:	55                   	push   ebp
c000ecc3:	56                   	push   esi
c000ecc4:	57                   	push   edi
c000ecc5:	58                   	pop    eax
c000ecc6:	59                   	pop    ecx
c000ecc7:	5a                   	pop    edx
c000ecc8:	00 00                	add    BYTE PTR [eax],al
	...

c000eccc <digits.998>:
c000eccc:	30 31                	xor    BYTE PTR [ecx],dh
c000ecce:	32 33                	xor    dh,BYTE PTR [ebx]
c000ecd0:	34 35                	xor    al,0x35
c000ecd2:	36 37                	ss aaa 
c000ecd4:	38 39                	cmp    BYTE PTR [ecx],bh
c000ecd6:	41                   	inc    ecx
c000ecd7:	42                   	inc    edx
c000ecd8:	43                   	inc    ebx
c000ecd9:	44                   	inc    esp
c000ecda:	45                   	inc    ebp
c000ecdb:	46                   	inc    esi
c000ecdc:	47                   	inc    edi
c000ecdd:	48                   	dec    eax
c000ecde:	49                   	dec    ecx
c000ecdf:	4a                   	dec    edx
c000ece0:	4b                   	dec    ebx
c000ece1:	4c                   	dec    esp
c000ece2:	4d                   	dec    ebp
c000ece3:	4e                   	dec    esi
c000ece4:	4f                   	dec    edi
c000ece5:	50                   	push   eax
c000ece6:	51                   	push   ecx
c000ece7:	52                   	push   edx
c000ece8:	53                   	push   ebx
c000ece9:	54                   	push   esp
c000ecea:	55                   	push   ebp
c000eceb:	56                   	push   esi
c000ecec:	57                   	push   edi
c000eced:	58                   	pop    eax
c000ecee:	59                   	pop    ecx
c000ecef:	5a                   	pop    edx
c000ecf0:	00 00                	add    BYTE PTR [eax],al
c000ecf2:	00 00                	add    BYTE PTR [eax],al
c000ecf4:	64 73 74             	fs jae c000ed6b <digits.998+0x9f>
c000ecf7:	5f                   	pop    edi
c000ecf8:	5f                   	pop    edi
c000ecf9:	20 21                	and    BYTE PTR [ecx],ah
c000ecfb:	3d 20 4e 55 4c       	cmp    eax,0x4c554e20
c000ed00:	4c                   	dec    esp
c000ed01:	00 6c 69 62          	add    BYTE PTR [ecx+ebp*2+0x62],ch
c000ed05:	2f                   	das    
c000ed06:	73 74                	jae    c000ed7c <__func__.850>
c000ed08:	72 69                	jb     c000ed73 <digits.998+0xa7>
c000ed0a:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000ed0b:	67 2e 63 00          	arpl   WORD PTR cs:[bx+si],ax
c000ed0f:	64 73 74             	fs jae c000ed86 <__func__.862+0x2>
c000ed12:	5f                   	pop    edi
c000ed13:	5f                   	pop    edi
c000ed14:	20 21                	and    BYTE PTR [ecx],ah
c000ed16:	3d 20 4e 55 4c       	cmp    eax,0x4c554e20
c000ed1b:	4c                   	dec    esp
c000ed1c:	20 26                	and    BYTE PTR [esi],ah
c000ed1e:	26 20 73 72          	and    BYTE PTR es:[ebx+0x72],dh
c000ed22:	63 5f 5f             	arpl   WORD PTR [edi+0x5f],bx
c000ed25:	20 21                	and    BYTE PTR [ecx],ah
c000ed27:	3d 20 4e 55 4c       	cmp    eax,0x4c554e20
c000ed2c:	4c                   	dec    esp
c000ed2d:	00 70 31             	add    BYTE PTR [eax+0x31],dh
c000ed30:	5f                   	pop    edi
c000ed31:	5f                   	pop    edi
c000ed32:	20 21                	and    BYTE PTR [ecx],ah
c000ed34:	3d 20 4e 55 4c       	cmp    eax,0x4c554e20
c000ed39:	4c                   	dec    esp
c000ed3a:	20 26                	and    BYTE PTR [esi],ah
c000ed3c:	26 20 70 32          	and    BYTE PTR es:[eax+0x32],dh
c000ed40:	5f                   	pop    edi
c000ed41:	5f                   	pop    edi
c000ed42:	20 21                	and    BYTE PTR [ecx],ah
c000ed44:	3d 20 4e 55 4c       	cmp    eax,0x4c554e20
c000ed49:	4c                   	dec    esp
c000ed4a:	00 00                	add    BYTE PTR [eax],al
c000ed4c:	50                   	push   eax
c000ed4d:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c000ed4f:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c000ed52:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c000ed57:	65 6c                	gs ins BYTE PTR es:[edi],dx
c000ed59:	20 28                	and    BYTE PTR [eax],ch
c000ed5b:	50                   	push   eax
c000ed5c:	4b                   	dec    ebx
c000ed5d:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000ed5e:	29 20                	sub    DWORD PTR [eax],esp
c000ed60:	76 65                	jbe    c000edc7 <tss+0xf>
c000ed62:	72 73                	jb     c000edd7 <tss+0x1f>
c000ed64:	69 6f 6e 20 30 2e 30 	imul   ebp,DWORD PTR [edi+0x6e],0x302e3020
c000ed6b:	2e 30 20             	xor    BYTE PTR cs:[eax],ah
c000ed6e:	74 65                	je     c000edd5 <tss+0x1d>
c000ed70:	73 74                	jae    c000ede6 <tss+0x2e>
	...

c000ed74 <__func__.839>:
c000ed74:	6d                   	ins    DWORD PTR es:[edi],dx
c000ed75:	65 6d                	gs ins DWORD PTR es:[edi],dx
c000ed77:	73 65                	jae    c000edde <tss+0x26>
c000ed79:	74 00                	je     c000ed7b <__func__.839+0x7>
	...

c000ed7c <__func__.850>:
c000ed7c:	6d                   	ins    DWORD PTR es:[edi],dx
c000ed7d:	65 6d                	gs ins DWORD PTR es:[edi],dx
c000ed7f:	63 70 79             	arpl   WORD PTR [eax+0x79],si
	...

c000ed84 <__func__.862>:
c000ed84:	6d                   	ins    DWORD PTR es:[edi],dx
c000ed85:	65 6d                	gs ins DWORD PTR es:[edi],dx
c000ed87:	63 6d 70             	arpl   WORD PTR [ebp+0x70],bp
c000ed8a:	00 00                	add    BYTE PTR [eax],al
c000ed8c:	50                   	push   eax
c000ed8d:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c000ed8f:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c000ed92:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c000ed97:	65 6c                	gs ins BYTE PTR es:[edi],dx
c000ed99:	20 28                	and    BYTE PTR [eax],ch
c000ed9b:	50                   	push   eax
c000ed9c:	4b                   	dec    ebx
c000ed9d:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000ed9e:	29 20                	sub    DWORD PTR [eax],esp
c000eda0:	76 65                	jbe    c000ee07 <tss+0x4f>
c000eda2:	72 73                	jb     c000ee17 <tss+0x5f>
c000eda4:	69 6f 6e 20 30 2e 30 	imul   ebp,DWORD PTR [edi+0x6e],0x302e3020
c000edab:	2e 30 20             	xor    BYTE PTR cs:[eax],ah
c000edae:	74 65                	je     c000ee15 <tss+0x5d>
c000edb0:	73 74                	jae    c000ee26 <console_lock+0x2>
	...

Disassembly of section .bss:

c000edb4 <_bss>:
c000edb4:	00 00                	add    BYTE PTR [eax],al
	...

c000edb8 <tss>:
	...

c000ee24 <console_lock>:
	...

c000ee48 <buf>:
	...

c000ee88 <shift_status>:
c000ee88:	00 00                	add    BYTE PTR [eax],al
	...

c000ee8c <casplock_status>:
c000ee8c:	00 00                	add    BYTE PTR [eax],al
	...

c000ee90 <ext_scandcode>:
c000ee90:	00 00                	add    BYTE PTR [eax],al
	...

c000ee94 <ctrl_status>:
c000ee94:	00 00                	add    BYTE PTR [eax],al
	...

c000ee98 <alt_status>:
c000ee98:	00 00                	add    BYTE PTR [eax],al
	...

c000ee9c <i>:
c000ee9c:	00 00                	add    BYTE PTR [eax],al
	...

c000eea0 <ticks>:
c000eea0:	00 00                	add    BYTE PTR [eax],al
	...

c000eea4 <_ebss>:
	...

c000ef60 <idt>:
	...

c000f0d8 <idt_table>:
	...

c000f194 <kvinfo>:
	...

c0016e94 <user_pool>:
	...

c0016ecc <user_vaddr>:
	...

c0016f04 <kernel_vaddr>:
	...

c0016f3c <upinfo>:
	...

c001ec3c <kpinfo>:
	...

c002693c <uvinfo>:
	...

c002e63c <kernel_pool>:
	...

c002e674 <ready_list>:
	...

c002e68c <all_list>:
	...

c002e6a4 <main_thread>:
c002e6a4:	00 00                	add    BYTE PTR [eax],al
	...

c002e6a8 <keybuf>:
	...

c002e6ec <Screen>:
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
