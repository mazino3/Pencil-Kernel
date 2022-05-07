
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
c0007f1a:	e9 29 04 00 00       	jmp    c0008348 <kernel_main>
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

c0008124 <u_prog_a>:
c0008124:	55                   	push   ebp
c0008125:	89 e5                	mov    ebp,esp
c0008127:	eb fe                	jmp    c0008127 <u_prog_a+0x3>

c0008129 <k_thread_b>:
c0008129:	55                   	push   ebp
c000812a:	89 e5                	mov    ebp,esp
c000812c:	53                   	push   ebx
c000812d:	83 ec 1c             	sub    esp,0x1c
c0008130:	68 2c e0 00 c0       	push   0xc000e02c
c0008135:	6a 07                	push   0x7
c0008137:	e8 57 22 00 00       	call   c000a393 <console_str>
c000813c:	8d 5d f7             	lea    ebx,[ebp-0x9]
c000813f:	83 c4 10             	add    esp,0x10
c0008142:	83 ec 0c             	sub    esp,0xc
c0008145:	68 2c e7 02 c0       	push   0xc002e72c
c000814a:	e8 71 2a 00 00       	call   c000abc0 <fifo_empty>
c000814f:	83 c4 10             	add    esp,0x10
c0008152:	85 c0                	test   eax,eax
c0008154:	75 ec                	jne    c0008142 <k_thread_b+0x19>
c0008156:	50                   	push   eax
c0008157:	50                   	push   eax
c0008158:	53                   	push   ebx
c0008159:	68 2c e7 02 c0       	push   0xc002e72c
c000815e:	e8 5c 29 00 00       	call   c000aabf <fifo_get>
c0008163:	0f be 45 f7          	movsx  eax,BYTE PTR [ebp-0x9]
c0008167:	5a                   	pop    edx
c0008168:	59                   	pop    ecx
c0008169:	50                   	push   eax
c000816a:	6a 07                	push   0x7
c000816c:	e8 e4 21 00 00       	call   c000a355 <console_char>
c0008171:	83 c4 10             	add    esp,0x10
c0008174:	eb cc                	jmp    c0008142 <k_thread_b+0x19>

c0008176 <k_thread_a>:
c0008176:	55                   	push   ebp
c0008177:	89 e5                	mov    ebp,esp
c0008179:	57                   	push   edi
c000817a:	56                   	push   esi
c000817b:	53                   	push   ebx
c000817c:	83 ec 38             	sub    esp,0x38
c000817f:	8b 35 24 7c 00 00    	mov    esi,DWORD PTR ds:0x7c24
c0008185:	8d 7d c8             	lea    edi,[ebp-0x38]
c0008188:	57                   	push   edi
c0008189:	e8 6a 25 00 00       	call   c000a6f8 <get_time>
c000818e:	8d 5d e2             	lea    ebx,[ebp-0x1e]
c0008191:	83 c4 10             	add    esp,0x10
c0008194:	83 ee 22             	sub    esi,0x22
c0008197:	8b 15 24 7c 00 00    	mov    edx,DWORD PTR ds:0x7c24
c000819d:	a1 20 7c 00 00       	mov    eax,ds:0x7c20
c00081a2:	51                   	push   ecx
c00081a3:	8b 7d cc             	mov    edi,DWORD PTR [ebp-0x34]
c00081a6:	51                   	push   ecx
c00081a7:	8d 4a f8             	lea    ecx,[edx-0x8]
c00081aa:	83 ea 26             	sub    edx,0x26
c00081ad:	51                   	push   ecx
c00081ae:	8d 48 f9             	lea    ecx,[eax-0x7]
c00081b1:	2d b3 00 00 00       	sub    eax,0xb3
c00081b6:	51                   	push   ecx
c00081b7:	52                   	push   edx
c00081b8:	50                   	push   eax
c00081b9:	68 84 84 84 00       	push   0x848484
c00081be:	68 70 e7 02 c0       	push   0xc002e770
c00081c3:	e8 cc 2e 00 00       	call   c000b094 <RectangleFill>
c00081c8:	8b 15 24 7c 00 00    	mov    edx,DWORD PTR ds:0x7c24
c00081ce:	83 c4 18             	add    esp,0x18
c00081d1:	a1 20 7c 00 00       	mov    eax,ds:0x7c20
c00081d6:	8d 4a f5             	lea    ecx,[edx-0xb]
c00081d9:	83 ea 29             	sub    edx,0x29
c00081dc:	51                   	push   ecx
c00081dd:	8d 48 f6             	lea    ecx,[eax-0xa]
c00081e0:	2d b6 00 00 00       	sub    eax,0xb6
c00081e5:	51                   	push   ecx
c00081e6:	52                   	push   edx
c00081e7:	50                   	push   eax
c00081e8:	68 ff ff ff 00       	push   0xffffff
c00081ed:	68 70 e7 02 c0       	push   0xc002e770
c00081f2:	e8 9d 2e 00 00       	call   c000b094 <RectangleFill>
c00081f7:	83 c4 1c             	add    esp,0x1c
c00081fa:	6a 10                	push   0x10
c00081fc:	53                   	push   ebx
c00081fd:	ff 75 dc             	push   DWORD PTR [ebp-0x24]
c0008200:	e8 2b 2b 00 00       	call   c000ad30 <itoa>
c0008205:	89 1c 24             	mov    DWORD PTR [esp],ebx
c0008208:	6a 00                	push   0x0
c000820a:	56                   	push   esi
c000820b:	a1 20 7c 00 00       	mov    eax,ds:0x7c20
c0008210:	2d ac 00 00 00       	sub    eax,0xac
c0008215:	50                   	push   eax
c0008216:	68 70 e7 02 c0       	push   0xc002e770
c000821b:	e8 62 30 00 00       	call   c000b282 <put_str_graphic>
c0008220:	83 c4 14             	add    esp,0x14
c0008223:	6a 2f                	push   0x2f
c0008225:	6a 00                	push   0x0
c0008227:	56                   	push   esi
c0008228:	a1 20 7c 00 00       	mov    eax,ds:0x7c20
c000822d:	2d 84 00 00 00       	sub    eax,0x84
c0008232:	50                   	push   eax
c0008233:	68 70 e7 02 c0       	push   0xc002e770
c0008238:	e8 c1 2f 00 00       	call   c000b1fe <put_char_graphic>
c000823d:	83 c4 1c             	add    esp,0x1c
c0008240:	6a 10                	push   0x10
c0008242:	53                   	push   ebx
c0008243:	ff 75 d8             	push   DWORD PTR [ebp-0x28]
c0008246:	e8 e5 2a 00 00       	call   c000ad30 <itoa>
c000824b:	89 1c 24             	mov    DWORD PTR [esp],ebx
c000824e:	6a 00                	push   0x0
c0008250:	56                   	push   esi
c0008251:	a1 20 7c 00 00       	mov    eax,ds:0x7c20
c0008256:	83 e8 7a             	sub    eax,0x7a
c0008259:	50                   	push   eax
c000825a:	68 70 e7 02 c0       	push   0xc002e770
c000825f:	e8 1e 30 00 00       	call   c000b282 <put_str_graphic>
c0008264:	83 c4 14             	add    esp,0x14
c0008267:	6a 2f                	push   0x2f
c0008269:	6a 00                	push   0x0
c000826b:	56                   	push   esi
c000826c:	a1 20 7c 00 00       	mov    eax,ds:0x7c20
c0008271:	83 e8 66             	sub    eax,0x66
c0008274:	50                   	push   eax
c0008275:	68 70 e7 02 c0       	push   0xc002e770
c000827a:	e8 7f 2f 00 00       	call   c000b1fe <put_char_graphic>
c000827f:	83 c4 1c             	add    esp,0x1c
c0008282:	6a 10                	push   0x10
c0008284:	53                   	push   ebx
c0008285:	ff 75 d4             	push   DWORD PTR [ebp-0x2c]
c0008288:	e8 a3 2a 00 00       	call   c000ad30 <itoa>
c000828d:	89 1c 24             	mov    DWORD PTR [esp],ebx
c0008290:	6a 00                	push   0x0
c0008292:	56                   	push   esi
c0008293:	a1 20 7c 00 00       	mov    eax,ds:0x7c20
c0008298:	83 e8 5c             	sub    eax,0x5c
c000829b:	50                   	push   eax
c000829c:	68 70 e7 02 c0       	push   0xc002e770
c00082a1:	e8 dc 2f 00 00       	call   c000b282 <put_str_graphic>
c00082a6:	83 c4 14             	add    esp,0x14
c00082a9:	6a 7c                	push   0x7c
c00082ab:	6a 00                	push   0x0
c00082ad:	56                   	push   esi
c00082ae:	a1 20 7c 00 00       	mov    eax,ds:0x7c20
c00082b3:	83 e8 48             	sub    eax,0x48
c00082b6:	50                   	push   eax
c00082b7:	68 70 e7 02 c0       	push   0xc002e770
c00082bc:	e8 3d 2f 00 00       	call   c000b1fe <put_char_graphic>
c00082c1:	83 c4 1c             	add    esp,0x1c
c00082c4:	6a 10                	push   0x10
c00082c6:	53                   	push   ebx
c00082c7:	ff 75 d0             	push   DWORD PTR [ebp-0x30]
c00082ca:	e8 61 2a 00 00       	call   c000ad30 <itoa>
c00082cf:	89 1c 24             	mov    DWORD PTR [esp],ebx
c00082d2:	6a 00                	push   0x0
c00082d4:	56                   	push   esi
c00082d5:	a1 20 7c 00 00       	mov    eax,ds:0x7c20
c00082da:	83 e8 3e             	sub    eax,0x3e
c00082dd:	50                   	push   eax
c00082de:	68 70 e7 02 c0       	push   0xc002e770
c00082e3:	e8 9a 2f 00 00       	call   c000b282 <put_str_graphic>
c00082e8:	83 c4 14             	add    esp,0x14
c00082eb:	6a 3a                	push   0x3a
c00082ed:	6a 00                	push   0x0
c00082ef:	56                   	push   esi
c00082f0:	a1 20 7c 00 00       	mov    eax,ds:0x7c20
c00082f5:	83 e8 2a             	sub    eax,0x2a
c00082f8:	50                   	push   eax
c00082f9:	68 70 e7 02 c0       	push   0xc002e770
c00082fe:	e8 fb 2e 00 00       	call   c000b1fe <put_char_graphic>
c0008303:	83 c4 1c             	add    esp,0x1c
c0008306:	6a 10                	push   0x10
c0008308:	53                   	push   ebx
c0008309:	ff 75 cc             	push   DWORD PTR [ebp-0x34]
c000830c:	e8 1f 2a 00 00       	call   c000ad30 <itoa>
c0008311:	89 1c 24             	mov    DWORD PTR [esp],ebx
c0008314:	6a 00                	push   0x0
c0008316:	56                   	push   esi
c0008317:	a1 20 7c 00 00       	mov    eax,ds:0x7c20
c000831c:	83 e8 20             	sub    eax,0x20
c000831f:	50                   	push   eax
c0008320:	68 70 e7 02 c0       	push   0xc002e770
c0008325:	e8 58 2f 00 00       	call   c000b282 <put_str_graphic>
c000832a:	83 c4 20             	add    esp,0x20
c000832d:	eb 0f                	jmp    c000833e <k_thread_a+0x1c8>
c000832f:	83 ec 0c             	sub    esp,0xc
c0008332:	8d 45 c8             	lea    eax,[ebp-0x38]
c0008335:	50                   	push   eax
c0008336:	e8 bd 23 00 00       	call   c000a6f8 <get_time>
c000833b:	83 c4 10             	add    esp,0x10
c000833e:	39 7d cc             	cmp    DWORD PTR [ebp-0x34],edi
c0008341:	74 ec                	je     c000832f <k_thread_a+0x1b9>
c0008343:	e9 4f fe ff ff       	jmp    c0008197 <k_thread_a+0x21>

c0008348 <kernel_main>:
c0008348:	55                   	push   ebp
c0008349:	89 e5                	mov    ebp,esp
c000834b:	53                   	push   ebx
c000834c:	bb 23 00 00 00       	mov    ebx,0x23
c0008351:	50                   	push   eax
c0008352:	50                   	push   eax
c0008353:	50                   	push   eax
c0008354:	6a 0a                	push   0xa
c0008356:	6a 07                	push   0x7
c0008358:	e8 07 2b 00 00       	call   c000ae64 <put_char>
c000835d:	83 c4 10             	add    esp,0x10
c0008360:	4b                   	dec    ebx
c0008361:	75 ef                	jne    c0008352 <kernel_main+0xa>
c0008363:	83 ec 0c             	sub    esp,0xc
c0008366:	6a 00                	push   0x0
c0008368:	e8 d0 2a 00 00       	call   c000ae3d <set_cursor>
c000836d:	e8 ca 01 00 00       	call   c000853c <init_all>
c0008372:	e8 22 0e 00 00       	call   c0009199 <intr_enable>
c0008377:	5b                   	pop    ebx
c0008378:	58                   	pop    eax
c0008379:	68 34 e0 00 c0       	push   0xc000e034
c000837e:	6a 07                	push   0x7
c0008380:	e8 0e 20 00 00       	call   c000a393 <console_str>
c0008385:	58                   	pop    eax
c0008386:	5a                   	pop    edx
c0008387:	68 5d e0 00 c0       	push   0xc000e05d
c000838c:	6a 07                	push   0x7
c000838e:	e8 00 20 00 00       	call   c000a393 <console_str>
c0008393:	e8 1a 21 00 00       	call   c000a4b2 <cpu_info>
c0008398:	59                   	pop    ecx
c0008399:	5b                   	pop    ebx
c000839a:	6a 0a                	push   0xa
c000839c:	6a 07                	push   0x7
c000839e:	e8 b2 1f 00 00       	call   c000a355 <console_char>
c00083a3:	58                   	pop    eax
c00083a4:	5a                   	pop    edx
c00083a5:	68 66 e0 00 c0       	push   0xc000e066
c00083aa:	6a 07                	push   0x7
c00083ac:	e8 e2 1f 00 00       	call   c000a393 <console_str>
c00083b1:	83 c4 0c             	add    esp,0xc
c00083b4:	6a 0a                	push   0xa
c00083b6:	a1 08 7c 00 00       	mov    eax,ds:0x7c08
c00083bb:	c1 e8 14             	shr    eax,0x14
c00083be:	50                   	push   eax
c00083bf:	6a 07                	push   0x7
c00083c1:	e8 06 20 00 00       	call   c000a3cc <console_int>
c00083c6:	59                   	pop    ecx
c00083c7:	5b                   	pop    ebx
c00083c8:	68 6f e0 00 c0       	push   0xc000e06f
c00083cd:	6a 07                	push   0x7
c00083cf:	e8 bf 1f 00 00       	call   c000a393 <console_str>
c00083d4:	83 c4 0c             	add    esp,0xc
c00083d7:	6a 0a                	push   0xa
c00083d9:	a1 08 7c 00 00       	mov    eax,ds:0x7c08
c00083de:	c1 e8 0a             	shr    eax,0xa
c00083e1:	50                   	push   eax
c00083e2:	6a 07                	push   0x7
c00083e4:	e8 e3 1f 00 00       	call   c000a3cc <console_int>
c00083e9:	58                   	pop    eax
c00083ea:	5a                   	pop    edx
c00083eb:	68 75 e0 00 c0       	push   0xc000e075
c00083f0:	6a 07                	push   0x7
c00083f2:	e8 0e 2b 00 00       	call   c000af05 <put_str>
c00083f7:	59                   	pop    ecx
c00083f8:	5b                   	pop    ebx
c00083f9:	6a 0a                	push   0xa
c00083fb:	6a 07                	push   0x7
c00083fd:	e8 62 2a 00 00       	call   c000ae64 <put_char>
c0008402:	58                   	pop    eax
c0008403:	5a                   	pop    edx
c0008404:	68 7b e0 00 c0       	push   0xc000e07b
c0008409:	6a 07                	push   0x7
c000840b:	e8 83 1f 00 00       	call   c000a393 <console_str>
c0008410:	83 c4 0c             	add    esp,0xc
c0008413:	6a 0a                	push   0xa
c0008415:	ff 35 10 7c 00 00    	push   DWORD PTR ds:0x7c10
c000841b:	6a 07                	push   0x7
c000841d:	e8 aa 1f 00 00       	call   c000a3cc <console_int>
c0008422:	59                   	pop    ecx
c0008423:	5b                   	pop    ebx
c0008424:	6a 0a                	push   0xa
c0008426:	6a 07                	push   0x7
c0008428:	e8 28 1f 00 00       	call   c000a355 <console_char>
c000842d:	c7 04 24 84 e0 00 c0 	mov    DWORD PTR [esp],0xc000e084
c0008434:	68 ff ff ff 00       	push   0xffffff
c0008439:	6a 14                	push   0x14
c000843b:	6a 14                	push   0x14
c000843d:	68 70 e7 02 c0       	push   0xc002e770
c0008442:	e8 3b 2e 00 00       	call   c000b282 <put_str_graphic>
c0008447:	83 c4 20             	add    esp,0x20
c000844a:	68 ab e0 00 c0       	push   0xc000e0ab
c000844f:	68 76 81 00 c0       	push   0xc0008176
c0008454:	6a 1f                	push   0x1f
c0008456:	68 b2 e0 00 c0       	push   0xc000e0b2
c000845b:	e8 1e 18 00 00       	call   c0009c7e <thread_start>
c0008460:	68 b6 e0 00 c0       	push   0xc000e0b6
c0008465:	68 29 81 00 c0       	push   0xc0008129
c000846a:	6a 1f                	push   0x1f
c000846c:	68 bd e0 00 c0       	push   0xc000e0bd
c0008471:	e8 08 18 00 00       	call   c0009c7e <thread_start>
c0008476:	83 c4 18             	add    esp,0x18
c0008479:	68 c1 e0 00 c0       	push   0xc000e0c1
c000847e:	68 24 81 00 c0       	push   0xc0008124
c0008483:	e8 a4 1d 00 00       	call   c000a22c <process_execute>
c0008488:	83 c4 10             	add    esp,0x10
c000848b:	eb fe                	jmp    c000848b <kernel_main+0x143>
c000848d:	00 00                	add    BYTE PTR [eax],al
	...

c0008490 <panic_spin>:
c0008490:	55                   	push   ebp
c0008491:	89 e5                	mov    ebp,esp
c0008493:	83 ec 08             	sub    esp,0x8
c0008496:	e8 2e 0c 00 00       	call   c00090c9 <intr_disable>
c000849b:	52                   	push   edx
c000849c:	52                   	push   edx
c000849d:	68 f4 e0 00 c0       	push   0xc000e0f4
c00084a2:	6a 04                	push   0x4
c00084a4:	e8 5c 2a 00 00       	call   c000af05 <put_str>
c00084a9:	59                   	pop    ecx
c00084aa:	58                   	pop    eax
c00084ab:	68 fc e0 00 c0       	push   0xc000e0fc
c00084b0:	6a 04                	push   0x4
c00084b2:	e8 4e 2a 00 00       	call   c000af05 <put_str>
c00084b7:	58                   	pop    eax
c00084b8:	5a                   	pop    edx
c00084b9:	ff 75 08             	push   DWORD PTR [ebp+0x8]
c00084bc:	6a 04                	push   0x4
c00084be:	e8 42 2a 00 00       	call   c000af05 <put_str>
c00084c3:	59                   	pop    ecx
c00084c4:	58                   	pop    eax
c00084c5:	6a 0a                	push   0xa
c00084c7:	6a 04                	push   0x4
c00084c9:	e8 96 29 00 00       	call   c000ae64 <put_char>
c00084ce:	58                   	pop    eax
c00084cf:	5a                   	pop    edx
c00084d0:	68 0b e1 00 c0       	push   0xc000e10b
c00084d5:	6a 04                	push   0x4
c00084d7:	e8 29 2a 00 00       	call   c000af05 <put_str>
c00084dc:	59                   	pop    ecx
c00084dd:	58                   	pop    eax
c00084de:	ff 75 10             	push   DWORD PTR [ebp+0x10]
c00084e1:	6a 04                	push   0x4
c00084e3:	e8 1d 2a 00 00       	call   c000af05 <put_str>
c00084e8:	58                   	pop    eax
c00084e9:	5a                   	pop    edx
c00084ea:	6a 0a                	push   0xa
c00084ec:	6a 04                	push   0x4
c00084ee:	e8 71 29 00 00       	call   c000ae64 <put_char>
c00084f3:	59                   	pop    ecx
c00084f4:	58                   	pop    eax
c00084f5:	68 1a e1 00 c0       	push   0xc000e11a
c00084fa:	6a 04                	push   0x4
c00084fc:	e8 04 2a 00 00       	call   c000af05 <put_str>
c0008501:	83 c4 0c             	add    esp,0xc
c0008504:	6a 0a                	push   0xa
c0008506:	ff 75 0c             	push   DWORD PTR [ebp+0xc]
c0008509:	6a 04                	push   0x4
c000850b:	e8 57 2a 00 00       	call   c000af67 <put_int>
c0008510:	58                   	pop    eax
c0008511:	5a                   	pop    edx
c0008512:	6a 0a                	push   0xa
c0008514:	6a 04                	push   0x4
c0008516:	e8 49 29 00 00       	call   c000ae64 <put_char>
c000851b:	59                   	pop    ecx
c000851c:	58                   	pop    eax
c000851d:	68 29 e1 00 c0       	push   0xc000e129
c0008522:	6a 04                	push   0x4
c0008524:	e8 dc 29 00 00       	call   c000af05 <put_str>
c0008529:	58                   	pop    eax
c000852a:	5a                   	pop    edx
c000852b:	ff 75 14             	push   DWORD PTR [ebp+0x14]
c000852e:	6a 04                	push   0x4
c0008530:	e8 d0 29 00 00       	call   c000af05 <put_str>
c0008535:	83 c4 10             	add    esp,0x10
c0008538:	eb fe                	jmp    c0008538 <panic_spin+0xa8>
	...

c000853c <init_all>:
c000853c:	55                   	push   ebp
c000853d:	89 e5                	mov    ebp,esp
c000853f:	83 ec 10             	sub    esp,0x10
c0008542:	68 60 e1 00 c0       	push   0xc000e160
c0008547:	6a 02                	push   0x2
c0008549:	e8 b7 29 00 00       	call   c000af05 <put_str>
c000854e:	e8 34 0b 00 00       	call   c0009087 <init_idt>
c0008553:	e8 4a 1a 00 00       	call   c0009fa2 <init_tss>
c0008558:	e8 47 22 00 00       	call   c000a7a4 <init_pit>
c000855d:	e8 10 0f 00 00       	call   c0009472 <init_memory>
c0008562:	e8 b1 1f 00 00       	call   c000a518 <init_keyboard>
c0008567:	e8 66 16 00 00       	call   c0009bd2 <init_thread>
c000856c:	e8 cf 1d 00 00       	call   c000a340 <init_console>
c0008571:	c7 04 24 70 e7 02 c0 	mov    DWORD PTR [esp],0xc002e770
c0008578:	e8 89 2b 00 00       	call   c000b106 <init_screen>
c000857d:	58                   	pop    eax
c000857e:	5a                   	pop    edx
c000857f:	68 6c e1 00 c0       	push   0xc000e16c
c0008584:	6a 02                	push   0x2
c0008586:	e8 7a 29 00 00       	call   c000af05 <put_str>
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
c00085a8:	ff 15 5c f1 00 c0    	call   DWORD PTR ds:0xc000f15c
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
c00085da:	ff 15 60 f1 00 c0    	call   DWORD PTR ds:0xc000f160
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
c000860c:	ff 15 64 f1 00 c0    	call   DWORD PTR ds:0xc000f164
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
c000863e:	ff 15 68 f1 00 c0    	call   DWORD PTR ds:0xc000f168
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
c0008670:	ff 15 6c f1 00 c0    	call   DWORD PTR ds:0xc000f16c
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
c00086a2:	ff 15 70 f1 00 c0    	call   DWORD PTR ds:0xc000f170
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
c00086d4:	ff 15 74 f1 00 c0    	call   DWORD PTR ds:0xc000f174
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
c0008706:	ff 15 78 f1 00 c0    	call   DWORD PTR ds:0xc000f178
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
c0008734:	ff 15 7c f1 00 c0    	call   DWORD PTR ds:0xc000f17c
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
c0008766:	ff 15 80 f1 00 c0    	call   DWORD PTR ds:0xc000f180
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
c0008794:	ff 15 84 f1 00 c0    	call   DWORD PTR ds:0xc000f184
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
c00087c2:	ff 15 88 f1 00 c0    	call   DWORD PTR ds:0xc000f188
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
c00087f4:	ff 15 8c f1 00 c0    	call   DWORD PTR ds:0xc000f18c
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
c0008822:	ff 15 90 f1 00 c0    	call   DWORD PTR ds:0xc000f190
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
c0008850:	ff 15 94 f1 00 c0    	call   DWORD PTR ds:0xc000f194
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
c0008882:	ff 15 98 f1 00 c0    	call   DWORD PTR ds:0xc000f198
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
c00088b4:	ff 15 9c f1 00 c0    	call   DWORD PTR ds:0xc000f19c
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
c00088e2:	ff 15 a0 f1 00 c0    	call   DWORD PTR ds:0xc000f1a0
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
c0008914:	ff 15 a4 f1 00 c0    	call   DWORD PTR ds:0xc000f1a4
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
c0008946:	ff 15 a8 f1 00 c0    	call   DWORD PTR ds:0xc000f1a8
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
c0008978:	ff 15 ac f1 00 c0    	call   DWORD PTR ds:0xc000f1ac
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
c00089aa:	ff 15 b0 f1 00 c0    	call   DWORD PTR ds:0xc000f1b0
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
c00089dc:	ff 15 b4 f1 00 c0    	call   DWORD PTR ds:0xc000f1b4
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
c0008a0e:	ff 15 b8 f1 00 c0    	call   DWORD PTR ds:0xc000f1b8
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
c0008a3c:	ff 15 bc f1 00 c0    	call   DWORD PTR ds:0xc000f1bc
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
c0008a6e:	ff 15 c0 f1 00 c0    	call   DWORD PTR ds:0xc000f1c0
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
c0008a9c:	ff 15 c4 f1 00 c0    	call   DWORD PTR ds:0xc000f1c4
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
c0008aca:	ff 15 c8 f1 00 c0    	call   DWORD PTR ds:0xc000f1c8
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
c0008afc:	ff 15 cc f1 00 c0    	call   DWORD PTR ds:0xc000f1cc
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
c0008b2a:	ff 15 d0 f1 00 c0    	call   DWORD PTR ds:0xc000f1d0
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
c0008b58:	ff 15 d4 f1 00 c0    	call   DWORD PTR ds:0xc000f1d4
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
c0008b8a:	ff 15 d8 f1 00 c0    	call   DWORD PTR ds:0xc000f1d8
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
c0008bbc:	ff 15 dc f1 00 c0    	call   DWORD PTR ds:0xc000f1dc
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
c0008bee:	ff 15 e0 f1 00 c0    	call   DWORD PTR ds:0xc000f1e0
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
c0008c20:	ff 15 e4 f1 00 c0    	call   DWORD PTR ds:0xc000f1e4
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
c0008c52:	ff 15 e8 f1 00 c0    	call   DWORD PTR ds:0xc000f1e8
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
c0008c84:	ff 15 ec f1 00 c0    	call   DWORD PTR ds:0xc000f1ec
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
c0008cb6:	ff 15 f0 f1 00 c0    	call   DWORD PTR ds:0xc000f1f0
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
c0008ce8:	ff 15 f4 f1 00 c0    	call   DWORD PTR ds:0xc000f1f4
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
c0008d1a:	ff 15 f8 f1 00 c0    	call   DWORD PTR ds:0xc000f1f8
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
c0008d4c:	ff 15 fc f1 00 c0    	call   DWORD PTR ds:0xc000f1fc
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
c0008d7e:	ff 15 00 f2 00 c0    	call   DWORD PTR ds:0xc000f200
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
c0008db0:	ff 15 04 f2 00 c0    	call   DWORD PTR ds:0xc000f204
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
c0008de2:	ff 15 08 f2 00 c0    	call   DWORD PTR ds:0xc000f208
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
c0008e14:	ff 15 0c f2 00 c0    	call   DWORD PTR ds:0xc000f20c
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
c0008e46:	ff 15 10 f2 00 c0    	call   DWORD PTR ds:0xc000f210
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
c0008e78:	ff 15 14 f2 00 c0    	call   DWORD PTR ds:0xc000f214
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
c0008eaa:	ff 15 18 f2 00 c0    	call   DWORD PTR ds:0xc000f218
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
c0008f2a:	c7 04 85 5c f1 00 c0 	mov    DWORD PTR [eax*4-0x3fff0ea4],0xc00090dd
c0008f31:	dd 90 00 c0 
c0008f35:	40                   	inc    eax
c0008f36:	83 f8 2f             	cmp    eax,0x2f
c0008f39:	75 ef                	jne    c0008f2a <idt_desc_init+0x5>
c0008f3b:	c7 05 dc f1 00 c0 bc 	mov    DWORD PTR ds:0xc000f1dc,0xc000a7bc
c0008f42:	a7 00 c0 
c0008f45:	30 c0                	xor    al,al
c0008f47:	c7 05 e0 f1 00 c0 36 	mov    DWORD PTR ds:0xc000f1e0,0xc000a536
c0008f4e:	a5 00 c0 
c0008f51:	c7 05 f8 f1 00 c0 d8 	mov    DWORD PTR ds:0xc000f1f8,0xc0008ed8
c0008f58:	8e 00 c0 
c0008f5b:	8b 0c 85 c0 b2 00 c0 	mov    ecx,DWORD PTR [eax*4-0x3fff4d40]
c0008f62:	8d 14 c5 e4 ef 00 c0 	lea    edx,[eax*8-0x3fff101c]
c0008f69:	66 89 0c c5 e4 ef 00 	mov    WORD PTR [eax*8-0x3fff101c],cx
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
c0008fbd:	c7 05 28 ef 00 c0 a8 	mov    DWORD PTR ds:0xc000ef28,0xc000e1a8
c0008fc4:	e1 00 c0 
c0008fc7:	c7 05 2c ef 00 c0 b9 	mov    DWORD PTR ds:0xc000ef2c,0xc000e1b9
c0008fce:	e1 00 c0 
c0008fd1:	c7 05 30 ef 00 c0 cd 	mov    DWORD PTR ds:0xc000ef30,0xc000e1cd
c0008fd8:	e1 00 c0 
c0008fdb:	c7 05 34 ef 00 c0 db 	mov    DWORD PTR ds:0xc000ef34,0xc000e1db
c0008fe2:	e1 00 c0 
c0008fe5:	c7 05 38 ef 00 c0 f4 	mov    DWORD PTR ds:0xc000ef38,0xc000e1f4
c0008fec:	e1 00 c0 
c0008fef:	c7 05 3c ef 00 c0 0b 	mov    DWORD PTR ds:0xc000ef3c,0xc000e20b
c0008ff6:	e2 00 c0 
c0008ff9:	c7 05 40 ef 00 c0 2e 	mov    DWORD PTR ds:0xc000ef40,0xc000e22e
c0009000:	e2 00 c0 
c0009003:	c7 05 44 ef 00 c0 4b 	mov    DWORD PTR ds:0xc000ef44,0xc000e24b
c000900a:	e2 00 c0 
c000900d:	c7 05 48 ef 00 c0 6e 	mov    DWORD PTR ds:0xc000ef48,0xc000e26e
c0009014:	e2 00 c0 
c0009017:	c7 05 4c ef 00 c0 89 	mov    DWORD PTR ds:0xc000ef4c,0xc000e289
c000901e:	e2 00 c0 
c0009021:	c7 05 50 ef 00 c0 a5 	mov    DWORD PTR ds:0xc000ef50,0xc000e2a5
c0009028:	e2 00 c0 
c000902b:	c7 05 54 ef 00 c0 bf 	mov    DWORD PTR ds:0xc000ef54,0xc000e2bf
c0009032:	e2 00 c0 
c0009035:	c7 05 58 ef 00 c0 d7 	mov    DWORD PTR ds:0xc000ef58,0xc000e2d7
c000903c:	e2 00 c0 
c000903f:	c7 05 5c ef 00 c0 f1 	mov    DWORD PTR ds:0xc000ef5c,0xc000e2f1
c0009046:	e2 00 c0 
c0009049:	c7 05 60 ef 00 c0 12 	mov    DWORD PTR ds:0xc000ef60,0xc000e312
c0009050:	e3 00 c0 
c0009053:	c7 05 64 ef 00 c0 2b 	mov    DWORD PTR ds:0xc000ef64,0xc000e32b
c000905a:	e3 00 c0 
c000905d:	c7 05 68 ef 00 c0 34 	mov    DWORD PTR ds:0xc000ef68,0xc000e334
c0009064:	e3 00 c0 
c0009067:	c7 05 6c ef 00 c0 55 	mov    DWORD PTR ds:0xc000ef6c,0xc000e355
c000906e:	e3 00 c0 
c0009071:	c7 05 70 ef 00 c0 73 	mov    DWORD PTR ds:0xc000ef70,0xc000e373
c0009078:	e3 00 c0 
c000907b:	c7 05 74 ef 00 c0 8f 	mov    DWORD PTR ds:0xc000ef74,0xc000e38f
c0009082:	e3 00 c0 
c0009085:	5d                   	pop    ebp
c0009086:	c3                   	ret    

c0009087 <init_idt>:
c0009087:	55                   	push   ebp
c0009088:	89 e5                	mov    ebp,esp
c000908a:	83 ec 10             	sub    esp,0x10
c000908d:	e8 93 fe ff ff       	call   c0008f25 <idt_desc_init>
c0009092:	e8 51 fe ff ff       	call   c0008ee8 <init_pic>
c0009097:	b8 e4 ef 00 c0       	mov    eax,0xc000efe4
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
c00090e1:	53                   	push   ebx
c00090e2:	8a 5d 08             	mov    bl,BYTE PTR [ebp+0x8]
c00090e5:	e8 df ff ff ff       	call   c00090c9 <intr_disable>
c00090ea:	50                   	push   eax
c00090eb:	50                   	push   eax
c00090ec:	68 b1 e3 00 c0       	push   0xc000e3b1
c00090f1:	6a 17                	push   0x17
c00090f3:	e8 0d 1e 00 00       	call   c000af05 <put_str>
c00090f8:	58                   	pop    eax
c00090f9:	5a                   	pop    edx
c00090fa:	68 cc e0 00 c0       	push   0xc000e0cc
c00090ff:	6a 17                	push   0x17
c0009101:	e8 ff 1d 00 00       	call   c000af05 <put_str>
c0009106:	59                   	pop    ecx
c0009107:	5e                   	pop    esi
c0009108:	0f b6 f3             	movzx  esi,bl
c000910b:	68 b4 e3 00 c0       	push   0xc000e3b4
c0009110:	6a 17                	push   0x17
c0009112:	e8 ee 1d 00 00       	call   c000af05 <put_str>
c0009117:	83 c4 0c             	add    esp,0xc
c000911a:	6a 10                	push   0x10
c000911c:	56                   	push   esi
c000911d:	6a 17                	push   0x17
c000911f:	e8 43 1e 00 00       	call   c000af67 <put_int>
c0009124:	58                   	pop    eax
c0009125:	5a                   	pop    edx
c0009126:	68 b1 e3 00 c0       	push   0xc000e3b1
c000912b:	6a 17                	push   0x17
c000912d:	e8 d3 1d 00 00       	call   c000af05 <put_str>
c0009132:	83 c4 10             	add    esp,0x10
c0009135:	80 fb 13             	cmp    bl,0x13
c0009138:	77 47                	ja     c0009181 <general_intr_handler+0xa4>
c000913a:	50                   	push   eax
c000913b:	50                   	push   eax
c000913c:	ff 34 b5 28 ef 00 c0 	push   DWORD PTR [esi*4-0x3fff10d8]
c0009143:	6a 17                	push   0x17
c0009145:	e8 bb 1d 00 00       	call   c000af05 <put_str>
c000914a:	83 c4 10             	add    esp,0x10
c000914d:	80 fb 0e             	cmp    bl,0xe
c0009150:	75 2f                	jne    c0009181 <general_intr_handler+0xa4>
c0009152:	0f 20 d3             	mov    ebx,cr2
c0009155:	52                   	push   edx
c0009156:	52                   	push   edx
c0009157:	68 bf e3 00 c0       	push   0xc000e3bf
c000915c:	6a 17                	push   0x17
c000915e:	e8 a2 1d 00 00       	call   c000af05 <put_str>
c0009163:	83 c4 0c             	add    esp,0xc
c0009166:	6a 10                	push   0x10
c0009168:	53                   	push   ebx
c0009169:	6a 17                	push   0x17
c000916b:	e8 bd 1d 00 00       	call   c000af2d <put_uint>
c0009170:	59                   	pop    ecx
c0009171:	5b                   	pop    ebx
c0009172:	68 d4 e3 00 c0       	push   0xc000e3d4
c0009177:	6a 17                	push   0x17
c0009179:	e8 87 1d 00 00       	call   c000af05 <put_str>
c000917e:	83 c4 10             	add    esp,0x10
c0009181:	50                   	push   eax
c0009182:	50                   	push   eax
c0009183:	68 d8 e3 00 c0       	push   0xc000e3d8
c0009188:	6a 17                	push   0x17
c000918a:	e8 76 1d 00 00       	call   c000af05 <put_str>
c000918f:	e8 1e 13 00 00       	call   c000a4b2 <cpu_info>
c0009194:	83 c4 10             	add    esp,0x10
c0009197:	eb fe                	jmp    c0009197 <general_intr_handler+0xba>

c0009199 <intr_enable>:
c0009199:	55                   	push   ebp
c000919a:	89 e5                	mov    ebp,esp
c000919c:	e8 18 ff ff ff       	call   c00090b9 <intr_get_status>
c00091a1:	ba 01 00 00 00       	mov    edx,0x1
c00091a6:	48                   	dec    eax
c00091a7:	74 03                	je     c00091ac <intr_enable+0x13>
c00091a9:	fb                   	sti    
c00091aa:	30 d2                	xor    dl,dl
c00091ac:	89 d0                	mov    eax,edx
c00091ae:	5d                   	pop    ebp
c00091af:	c3                   	ret    

c00091b0 <intr_set_status>:
c00091b0:	55                   	push   ebp
c00091b1:	89 e5                	mov    ebp,esp
c00091b3:	83 7d 08 01          	cmp    DWORD PTR [ebp+0x8],0x1
c00091b7:	75 06                	jne    c00091bf <intr_set_status+0xf>
c00091b9:	5d                   	pop    ebp
c00091ba:	e9 da ff ff ff       	jmp    c0009199 <intr_enable>
c00091bf:	5d                   	pop    ebp
c00091c0:	e9 04 ff ff ff       	jmp    c00090c9 <intr_disable>
c00091c5:	00 00                	add    BYTE PTR [eax],al
	...

c00091c8 <init_memman>:
c00091c8:	55                   	push   ebp
c00091c9:	89 e5                	mov    ebp,esp
c00091cb:	56                   	push   esi
c00091cc:	8b 75 0c             	mov    esi,DWORD PTR [ebp+0xc]
c00091cf:	53                   	push   ebx
c00091d0:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c00091d3:	83 ec 0c             	sub    esp,0xc
c00091d6:	53                   	push   ebx
c00091d7:	e8 f3 06 00 00       	call   c00098cf <lock_init>
c00091dc:	83 c4 10             	add    esp,0x10
c00091df:	85 f6                	test   esi,esi
c00091e1:	c7 43 24 00 00 00 00 	mov    DWORD PTR [ebx+0x24],0x0
c00091e8:	c7 43 28 00 00 00 00 	mov    DWORD PTR [ebx+0x28],0x0
c00091ef:	c7 43 2c 00 00 00 00 	mov    DWORD PTR [ebx+0x2c],0x0
c00091f6:	c7 43 30 00 00 00 00 	mov    DWORD PTR [ebx+0x30],0x0
c00091fd:	75 19                	jne    c0009218 <init_memman+0x50>
c00091ff:	68 08 e4 00 c0       	push   0xc000e408
c0009204:	68 14 e5 00 c0       	push   0xc000e514
c0009209:	6a 53                	push   0x53
c000920b:	68 15 e4 00 c0       	push   0xc000e415
c0009210:	e8 7b f2 ff ff       	call   c0008490 <panic_spin>
c0009215:	83 c4 10             	add    esp,0x10
c0009218:	89 73 34             	mov    DWORD PTR [ebx+0x34],esi
c000921b:	8d 65 f8             	lea    esp,[ebp-0x8]
c000921e:	5b                   	pop    ebx
c000921f:	5e                   	pop    esi
c0009220:	5d                   	pop    ebp
c0009221:	c3                   	ret    

c0009222 <TotalFreeSize>:
c0009222:	55                   	push   ebp
c0009223:	31 d2                	xor    edx,edx
c0009225:	89 e5                	mov    ebp,esp
c0009227:	31 c0                	xor    eax,eax
c0009229:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
c000922c:	56                   	push   esi
c000922d:	53                   	push   ebx
c000922e:	8b 59 24             	mov    ebx,DWORD PTR [ecx+0x24]
c0009231:	eb 08                	jmp    c000923b <TotalFreeSize+0x19>
c0009233:	8b 71 34             	mov    esi,DWORD PTR [ecx+0x34]
c0009236:	03 44 d6 04          	add    eax,DWORD PTR [esi+edx*8+0x4]
c000923a:	42                   	inc    edx
c000923b:	39 da                	cmp    edx,ebx
c000923d:	75 f4                	jne    c0009233 <TotalFreeSize+0x11>
c000923f:	5b                   	pop    ebx
c0009240:	5e                   	pop    esi
c0009241:	5d                   	pop    ebp
c0009242:	c3                   	ret    

c0009243 <mem_alloc>:
c0009243:	55                   	push   ebp
c0009244:	89 e5                	mov    ebp,esp
c0009246:	57                   	push   edi
c0009247:	56                   	push   esi
c0009248:	31 f6                	xor    esi,esi
c000924a:	53                   	push   ebx
c000924b:	83 ec 08             	sub    esp,0x8
c000924e:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c0009251:	8b 5d 0c             	mov    ebx,DWORD PTR [ebp+0xc]
c0009254:	8b 42 24             	mov    eax,DWORD PTR [edx+0x24]
c0009257:	eb 68                	jmp    c00092c1 <mem_alloc+0x7e>
c0009259:	8b 7a 34             	mov    edi,DWORD PTR [edx+0x34]
c000925c:	8d 0c f5 00 00 00 00 	lea    ecx,[esi*8+0x0]
c0009263:	01 cf                	add    edi,ecx
c0009265:	39 5f 04             	cmp    DWORD PTR [edi+0x4],ebx
c0009268:	72 56                	jb     c00092c0 <mem_alloc+0x7d>
c000926a:	8b 07                	mov    eax,DWORD PTR [edi]
c000926c:	89 4d f0             	mov    DWORD PTR [ebp-0x10],ecx
c000926f:	8d 0c 18             	lea    ecx,[eax+ebx*1]
c0009272:	89 0f                	mov    DWORD PTR [edi],ecx
c0009274:	8b 7d f0             	mov    edi,DWORD PTR [ebp-0x10]
c0009277:	03 7a 34             	add    edi,DWORD PTR [edx+0x34]
c000927a:	29 5f 04             	sub    DWORD PTR [edi+0x4],ebx
c000927d:	8b 5a 34             	mov    ebx,DWORD PTR [edx+0x34]
c0009280:	8b 7d f0             	mov    edi,DWORD PTR [ebp-0x10]
c0009283:	83 7c 3b 04 00       	cmp    DWORD PTR [ebx+edi*1+0x4],0x0
c0009288:	75 3d                	jne    c00092c7 <mem_alloc+0x84>
c000928a:	ff 4a 24             	dec    DWORD PTR [edx+0x24]
c000928d:	89 f9                	mov    ecx,edi
c000928f:	89 c3                	mov    ebx,eax
c0009291:	89 75 ec             	mov    DWORD PTR [ebp-0x14],esi
c0009294:	eb 18                	jmp    c00092ae <mem_alloc+0x6b>
c0009296:	8b 42 34             	mov    eax,DWORD PTR [edx+0x34]
c0009299:	ff 45 ec             	inc    DWORD PTR [ebp-0x14]
c000929c:	8b 74 08 08          	mov    esi,DWORD PTR [eax+ecx*1+0x8]
c00092a0:	8b 7c 08 0c          	mov    edi,DWORD PTR [eax+ecx*1+0xc]
c00092a4:	89 34 08             	mov    DWORD PTR [eax+ecx*1],esi
c00092a7:	89 7c 08 04          	mov    DWORD PTR [eax+ecx*1+0x4],edi
c00092ab:	8b 4d f0             	mov    ecx,DWORD PTR [ebp-0x10]
c00092ae:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
c00092b1:	8d 79 08             	lea    edi,[ecx+0x8]
c00092b4:	3b 42 24             	cmp    eax,DWORD PTR [edx+0x24]
c00092b7:	89 7d f0             	mov    DWORD PTR [ebp-0x10],edi
c00092ba:	72 da                	jb     c0009296 <mem_alloc+0x53>
c00092bc:	89 d8                	mov    eax,ebx
c00092be:	eb 07                	jmp    c00092c7 <mem_alloc+0x84>
c00092c0:	46                   	inc    esi
c00092c1:	39 c6                	cmp    esi,eax
c00092c3:	75 94                	jne    c0009259 <mem_alloc+0x16>
c00092c5:	31 c0                	xor    eax,eax
c00092c7:	5a                   	pop    edx
c00092c8:	59                   	pop    ecx
c00092c9:	5b                   	pop    ebx
c00092ca:	5e                   	pop    esi
c00092cb:	5f                   	pop    edi
c00092cc:	5d                   	pop    ebp
c00092cd:	c3                   	ret    

c00092ce <mem_alloc_page>:
c00092ce:	55                   	push   ebp
c00092cf:	89 e5                	mov    ebp,esp
c00092d1:	53                   	push   ebx
c00092d2:	83 ec 20             	sub    esp,0x20
c00092d5:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c00092d8:	53                   	push   ebx
c00092d9:	e8 7d 07 00 00       	call   c0009a5b <lock_acquire>
c00092de:	58                   	pop    eax
c00092df:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c00092e2:	5a                   	pop    edx
c00092e3:	c1 e0 0c             	shl    eax,0xc
c00092e6:	50                   	push   eax
c00092e7:	53                   	push   ebx
c00092e8:	e8 56 ff ff ff       	call   c0009243 <mem_alloc>
c00092ed:	89 1c 24             	mov    DWORD PTR [esp],ebx
c00092f0:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
c00092f3:	e8 be 07 00 00       	call   c0009ab6 <lock_release>
c00092f8:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c00092fb:	8b 5d fc             	mov    ebx,DWORD PTR [ebp-0x4]
c00092fe:	c9                   	leave  
c00092ff:	c3                   	ret    

c0009300 <mem_free>:
c0009300:	55                   	push   ebp
c0009301:	31 c9                	xor    ecx,ecx
c0009303:	89 e5                	mov    ebp,esp
c0009305:	57                   	push   edi
c0009306:	56                   	push   esi
c0009307:	53                   	push   ebx
c0009308:	83 ec 10             	sub    esp,0x10
c000930b:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c000930e:	8b 5d 0c             	mov    ebx,DWORD PTR [ebp+0xc]
c0009311:	8b 72 24             	mov    esi,DWORD PTR [edx+0x24]
c0009314:	89 75 ec             	mov    DWORD PTR [ebp-0x14],esi
c0009317:	eb 09                	jmp    c0009322 <mem_free+0x22>
c0009319:	8b 42 34             	mov    eax,DWORD PTR [edx+0x34]
c000931c:	39 1c c8             	cmp    DWORD PTR [eax+ecx*8],ebx
c000931f:	77 05                	ja     c0009326 <mem_free+0x26>
c0009321:	41                   	inc    ecx
c0009322:	39 f1                	cmp    ecx,esi
c0009324:	75 f3                	jne    c0009319 <mem_free+0x19>
c0009326:	85 c9                	test   ecx,ecx
c0009328:	74 7c                	je     c00093a6 <mem_free+0xa6>
c000932a:	8d 04 cd f8 ff ff ff 	lea    eax,[ecx*8-0x8]
c0009331:	89 45 e4             	mov    DWORD PTR [ebp-0x1c],eax
c0009334:	03 42 34             	add    eax,DWORD PTR [edx+0x34]
c0009337:	8b 78 04             	mov    edi,DWORD PTR [eax+0x4]
c000933a:	89 7d f0             	mov    DWORD PTR [ebp-0x10],edi
c000933d:	03 38                	add    edi,DWORD PTR [eax]
c000933f:	39 df                	cmp    edi,ebx
c0009341:	75 63                	jne    c00093a6 <mem_free+0xa6>
c0009343:	8b 75 10             	mov    esi,DWORD PTR [ebp+0x10]
c0009346:	03 75 f0             	add    esi,DWORD PTR [ebp-0x10]
c0009349:	89 70 04             	mov    DWORD PTR [eax+0x4],esi
c000934c:	31 c0                	xor    eax,eax
c000934e:	3b 4a 24             	cmp    ecx,DWORD PTR [edx+0x24]
c0009351:	0f 83 dd 00 00 00    	jae    c0009434 <mem_free+0x134>
c0009357:	8b 72 34             	mov    esi,DWORD PTR [edx+0x34]
c000935a:	8d 3c cd 00 00 00 00 	lea    edi,[ecx*8+0x0]
c0009361:	89 7d f0             	mov    DWORD PTR [ebp-0x10],edi
c0009364:	03 5d 10             	add    ebx,DWORD PTR [ebp+0x10]
c0009367:	01 f7                	add    edi,esi
c0009369:	39 1f                	cmp    DWORD PTR [edi],ebx
c000936b:	89 7d ec             	mov    DWORD PTR [ebp-0x14],edi
c000936e:	0f 85 c0 00 00 00    	jne    c0009434 <mem_free+0x134>
c0009374:	8b 5d e4             	mov    ebx,DWORD PTR [ebp-0x1c]
c0009377:	8b 47 04             	mov    eax,DWORD PTR [edi+0x4]
c000937a:	01 44 1e 04          	add    DWORD PTR [esi+ebx*1+0x4],eax
c000937e:	ff 4a 24             	dec    DWORD PTR [edx+0x24]
c0009381:	eb 13                	jmp    c0009396 <mem_free+0x96>
c0009383:	8b 5a 34             	mov    ebx,DWORD PTR [edx+0x34]
c0009386:	41                   	inc    ecx
c0009387:	8b 74 03 08          	mov    esi,DWORD PTR [ebx+eax*1+0x8]
c000938b:	8b 7c 03 0c          	mov    edi,DWORD PTR [ebx+eax*1+0xc]
c000938f:	89 34 03             	mov    DWORD PTR [ebx+eax*1],esi
c0009392:	89 7c 03 04          	mov    DWORD PTR [ebx+eax*1+0x4],edi
c0009396:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c0009399:	3b 4a 24             	cmp    ecx,DWORD PTR [edx+0x24]
c000939c:	8d 78 08             	lea    edi,[eax+0x8]
c000939f:	89 7d f0             	mov    DWORD PTR [ebp-0x10],edi
c00093a2:	72 df                	jb     c0009383 <mem_free+0x83>
c00093a4:	eb 2a                	jmp    c00093d0 <mem_free+0xd0>
c00093a6:	39 f1                	cmp    ecx,esi
c00093a8:	73 2a                	jae    c00093d4 <mem_free+0xd4>
c00093aa:	8b 7a 34             	mov    edi,DWORD PTR [edx+0x34]
c00093ad:	8d 04 cd 00 00 00 00 	lea    eax,[ecx*8+0x0]
c00093b4:	89 45 e8             	mov    DWORD PTR [ebp-0x18],eax
c00093b7:	01 c7                	add    edi,eax
c00093b9:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
c00093bc:	01 d8                	add    eax,ebx
c00093be:	39 07                	cmp    DWORD PTR [edi],eax
c00093c0:	75 12                	jne    c00093d4 <mem_free+0xd4>
c00093c2:	8b 45 e8             	mov    eax,DWORD PTR [ebp-0x18]
c00093c5:	89 1f                	mov    DWORD PTR [edi],ebx
c00093c7:	03 42 34             	add    eax,DWORD PTR [edx+0x34]
c00093ca:	8b 55 10             	mov    edx,DWORD PTR [ebp+0x10]
c00093cd:	01 50 04             	add    DWORD PTR [eax+0x4],edx
c00093d0:	31 c0                	xor    eax,eax
c00093d2:	eb 60                	jmp    c0009434 <mem_free+0x134>
c00093d4:	81 fe 9f 0f 00 00    	cmp    esi,0xf9f
c00093da:	77 4a                	ja     c0009426 <mem_free+0x126>
c00093dc:	c1 e6 03             	shl    esi,0x3
c00093df:	89 cf                	mov    edi,ecx
c00093e1:	89 5d f0             	mov    DWORD PTR [ebp-0x10],ebx
c00093e4:	eb 15                	jmp    c00093fb <mem_free+0xfb>
c00093e6:	8b 4c 30 f8          	mov    ecx,DWORD PTR [eax+esi*1-0x8]
c00093ea:	8b 5c 30 fc          	mov    ebx,DWORD PTR [eax+esi*1-0x4]
c00093ee:	ff 45 ec             	inc    DWORD PTR [ebp-0x14]
c00093f1:	89 0c 30             	mov    DWORD PTR [eax+esi*1],ecx
c00093f4:	89 5c 30 04          	mov    DWORD PTR [eax+esi*1+0x4],ebx
c00093f8:	83 c6 08             	add    esi,0x8
c00093fb:	39 7d ec             	cmp    DWORD PTR [ebp-0x14],edi
c00093fe:	8b 42 34             	mov    eax,DWORD PTR [edx+0x34]
c0009401:	7f e3                	jg     c00093e6 <mem_free+0xe6>
c0009403:	8b 72 24             	mov    esi,DWORD PTR [edx+0x24]
c0009406:	89 f9                	mov    ecx,edi
c0009408:	8b 5d f0             	mov    ebx,DWORD PTR [ebp-0x10]
c000940b:	46                   	inc    esi
c000940c:	39 72 28             	cmp    DWORD PTR [edx+0x28],esi
c000940f:	89 72 24             	mov    DWORD PTR [edx+0x24],esi
c0009412:	73 03                	jae    c0009417 <mem_free+0x117>
c0009414:	89 72 28             	mov    DWORD PTR [edx+0x28],esi
c0009417:	89 1c c8             	mov    DWORD PTR [eax+ecx*8],ebx
c000941a:	8b 5d 10             	mov    ebx,DWORD PTR [ebp+0x10]
c000941d:	8b 42 34             	mov    eax,DWORD PTR [edx+0x34]
c0009420:	89 5c c8 04          	mov    DWORD PTR [eax+ecx*8+0x4],ebx
c0009424:	eb aa                	jmp    c00093d0 <mem_free+0xd0>
c0009426:	8b 75 10             	mov    esi,DWORD PTR [ebp+0x10]
c0009429:	b8 01 00 00 00       	mov    eax,0x1
c000942e:	ff 42 30             	inc    DWORD PTR [edx+0x30]
c0009431:	01 72 2c             	add    DWORD PTR [edx+0x2c],esi
c0009434:	83 c4 10             	add    esp,0x10
c0009437:	5b                   	pop    ebx
c0009438:	5e                   	pop    esi
c0009439:	5f                   	pop    edi
c000943a:	5d                   	pop    ebp
c000943b:	c3                   	ret    

c000943c <mem_free_page>:
c000943c:	55                   	push   ebp
c000943d:	89 e5                	mov    ebp,esp
c000943f:	53                   	push   ebx
c0009440:	83 ec 20             	sub    esp,0x20
c0009443:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c0009446:	53                   	push   ebx
c0009447:	e8 0f 06 00 00       	call   c0009a5b <lock_acquire>
c000944c:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
c000944f:	83 c4 0c             	add    esp,0xc
c0009452:	c1 e0 0c             	shl    eax,0xc
c0009455:	50                   	push   eax
c0009456:	ff 75 0c             	push   DWORD PTR [ebp+0xc]
c0009459:	53                   	push   ebx
c000945a:	e8 a1 fe ff ff       	call   c0009300 <mem_free>
c000945f:	89 1c 24             	mov    DWORD PTR [esp],ebx
c0009462:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
c0009465:	e8 4c 06 00 00       	call   c0009ab6 <lock_release>
c000946a:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c000946d:	8b 5d fc             	mov    ebx,DWORD PTR [ebp-0x4]
c0009470:	c9                   	leave  
c0009471:	c3                   	ret    

c0009472 <init_memory>:
c0009472:	55                   	push   ebp
c0009473:	89 e5                	mov    ebp,esp
c0009475:	57                   	push   edi
c0009476:	56                   	push   esi
c0009477:	53                   	push   ebx
c0009478:	83 ec 0c             	sub    esp,0xc
c000947b:	83 3d 08 7c 00 00 00 	cmp    DWORD PTR ds:0x7c08,0x0
c0009482:	0f 85 f5 00 00 00    	jne    c000957d <init_memory+0x10b>
c0009488:	83 3d 0c 7c 00 00 00 	cmp    DWORD PTR ds:0x7c0c,0x0
c000948f:	0f 85 e8 00 00 00    	jne    c000957d <init_memory+0x10b>
c0009495:	8b 1d 00 7c 00 00    	mov    ebx,DWORD PTR ds:0x7c00
c000949b:	31 f6                	xor    esi,esi
c000949d:	50                   	push   eax
c000949e:	50                   	push   eax
c000949f:	68 25 e4 00 c0       	push   0xc000e425
c00094a4:	6a 07                	push   0x7
c00094a6:	e8 5a 1a 00 00       	call   c000af05 <put_str>
c00094ab:	83 c4 10             	add    esp,0x10
c00094ae:	e9 8a 00 00 00       	jmp    c000953d <init_memory+0xcb>
c00094b3:	51                   	push   ecx
c00094b4:	51                   	push   ecx
c00094b5:	68 2c e4 00 c0       	push   0xc000e42c
c00094ba:	6a 07                	push   0x7
c00094bc:	e8 44 1a 00 00       	call   c000af05 <put_str>
c00094c1:	83 c4 0c             	add    esp,0xc
c00094c4:	6a 10                	push   0x10
c00094c6:	ff 33                	push   DWORD PTR [ebx]
c00094c8:	6a 07                	push   0x7
c00094ca:	e8 5e 1a 00 00       	call   c000af2d <put_uint>
c00094cf:	5f                   	pop    edi
c00094d0:	58                   	pop    eax
c00094d1:	68 37 e4 00 c0       	push   0xc000e437
c00094d6:	6a 07                	push   0x7
c00094d8:	e8 28 1a 00 00       	call   c000af05 <put_str>
c00094dd:	83 c4 0c             	add    esp,0xc
c00094e0:	6a 10                	push   0x10
c00094e2:	ff 73 08             	push   DWORD PTR [ebx+0x8]
c00094e5:	6a 07                	push   0x7
c00094e7:	e8 41 1a 00 00       	call   c000af2d <put_uint>
c00094ec:	58                   	pop    eax
c00094ed:	5a                   	pop    edx
c00094ee:	68 45 e4 00 c0       	push   0xc000e445
c00094f3:	6a 07                	push   0x7
c00094f5:	e8 0b 1a 00 00       	call   c000af05 <put_str>
c00094fa:	83 c4 0c             	add    esp,0xc
c00094fd:	6a 10                	push   0x10
c00094ff:	ff 73 10             	push   DWORD PTR [ebx+0x10]
c0009502:	6a 07                	push   0x7
c0009504:	e8 24 1a 00 00       	call   c000af2d <put_uint>
c0009509:	59                   	pop    ecx
c000950a:	5f                   	pop    edi
c000950b:	68 50 e4 00 c0       	push   0xc000e450
c0009510:	6a 07                	push   0x7
c0009512:	e8 ee 19 00 00       	call   c000af05 <put_str>
c0009517:	83 c4 10             	add    esp,0x10
c000951a:	81 3b 00 00 10 00    	cmp    DWORD PTR [ebx],0x100000
c0009520:	75 17                	jne    c0009539 <init_memory+0xc7>
c0009522:	83 7b 10 01          	cmp    DWORD PTR [ebx+0x10],0x1
c0009526:	75 11                	jne    c0009539 <init_memory+0xc7>
c0009528:	8b 4b 08             	mov    ecx,DWORD PTR [ebx+0x8]
c000952b:	81 c1 00 00 10 00    	add    ecx,0x100000
c0009531:	85 c9                	test   ecx,ecx
c0009533:	89 c8                	mov    eax,ecx
c0009535:	75 2f                	jne    c0009566 <init_memory+0xf4>
c0009537:	eb 10                	jmp    c0009549 <init_memory+0xd7>
c0009539:	83 c3 14             	add    ebx,0x14
c000953c:	46                   	inc    esi
c000953d:	3b 35 04 7c 00 00    	cmp    esi,DWORD PTR ds:0x7c04
c0009543:	0f 82 6a ff ff ff    	jb     c00094b3 <init_memory+0x41>
c0009549:	68 52 e4 00 c0       	push   0xc000e452
c000954e:	68 08 e5 00 c0       	push   0xc000e508
c0009553:	6a 34                	push   0x34
c0009555:	68 15 e4 00 c0       	push   0xc000e415
c000955a:	e8 31 ef ff ff       	call   c0008490 <panic_spin>
c000955f:	83 c4 10             	add    esp,0x10
c0009562:	31 c0                	xor    eax,eax
c0009564:	eb 0d                	jmp    c0009573 <init_memory+0x101>
c0009566:	81 f9 ff ff ff 3f    	cmp    ecx,0x3fffffff
c000956c:	76 05                	jbe    c0009573 <init_memory+0x101>
c000956e:	b8 ff ff ff 3f       	mov    eax,0x3fffffff
c0009573:	05 00 00 10 00       	add    eax,0x100000
c0009578:	a3 08 7c 00 00       	mov    ds:0x7c08,eax
c000957d:	8b 35 08 7c 00 00    	mov    esi,DWORD PTR ds:0x7c08
c0009583:	51                   	push   ecx
c0009584:	51                   	push   ecx
c0009585:	68 c0 ec 01 c0       	push   0xc001ecc0
c000958a:	68 c0 e6 02 c0       	push   0xc002e6c0
c000958f:	e8 34 fc ff ff       	call   c00091c8 <init_memman>
c0009594:	8d be 00 e0 5f ff    	lea    edi,[esi-0xa02000]
c000959a:	58                   	pop    eax
c000959b:	89 fb                	mov    ebx,edi
c000959d:	5a                   	pop    edx
c000959e:	c1 ef 0d             	shr    edi,0xd
c00095a1:	d1 eb                	shr    ebx,1
c00095a3:	68 18 f2 00 c0       	push   0xc000f218
c00095a8:	29 de                	sub    esi,ebx
c00095aa:	68 88 6f 01 c0       	push   0xc0016f88
c00095af:	81 c3 00 20 40 00    	add    ebx,0x402000
c00095b5:	e8 0e fc ff ff       	call   c00091c8 <init_memman>
c00095ba:	c1 ee 0c             	shr    esi,0xc
c00095bd:	59                   	pop    ecx
c00095be:	58                   	pop    eax
c00095bf:	68 c0 6f 01 c0       	push   0xc0016fc0
c00095c4:	68 18 6f 01 c0       	push   0xc0016f18
c00095c9:	e8 fa fb ff ff       	call   c00091c8 <init_memman>
c00095ce:	58                   	pop    eax
c00095cf:	5a                   	pop    edx
c00095d0:	68 c0 69 02 c0       	push   0xc00269c0
c00095d5:	68 50 6f 01 c0       	push   0xc0016f50
c00095da:	e8 e9 fb ff ff       	call   c00091c8 <init_memman>
c00095df:	83 c4 0c             	add    esp,0xc
c00095e2:	57                   	push   edi
c00095e3:	68 00 20 40 00       	push   0x402000
c00095e8:	68 c0 e6 02 c0       	push   0xc002e6c0
c00095ed:	e8 4a fe ff ff       	call   c000943c <mem_free_page>
c00095f2:	83 c4 0c             	add    esp,0xc
c00095f5:	56                   	push   esi
c00095f6:	53                   	push   ebx
c00095f7:	68 18 6f 01 c0       	push   0xc0016f18
c00095fc:	e8 3b fe ff ff       	call   c000943c <mem_free_page>
c0009601:	83 c4 0c             	add    esp,0xc
c0009604:	68 fe db 03 00       	push   0x3dbfe
c0009609:	68 00 20 40 c0       	push   0xc0402000
c000960e:	68 88 6f 01 c0       	push   0xc0016f88
c0009613:	e8 24 fe ff ff       	call   c000943c <mem_free_page>
c0009618:	83 c4 10             	add    esp,0x10
c000961b:	8d 65 f4             	lea    esp,[ebp-0xc]
c000961e:	5b                   	pop    ebx
c000961f:	5e                   	pop    esi
c0009620:	5f                   	pop    edi
c0009621:	5d                   	pop    ebp
c0009622:	c3                   	ret    

c0009623 <pde_ptr>:
c0009623:	55                   	push   ebp
c0009624:	89 e5                	mov    ebp,esp
c0009626:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0009629:	5d                   	pop    ebp
c000962a:	c1 e8 16             	shr    eax,0x16
c000962d:	8d 04 85 00 f0 ff ff 	lea    eax,[eax*4-0x1000]
c0009634:	c3                   	ret    

c0009635 <pte_ptr>:
c0009635:	55                   	push   ebp
c0009636:	89 e5                	mov    ebp,esp
c0009638:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c000963b:	5d                   	pop    ebp
c000963c:	89 c2                	mov    edx,eax
c000963e:	25 00 f0 3f 00       	and    eax,0x3ff000
c0009643:	81 e2 00 00 c0 ff    	and    edx,0xffc00000
c0009649:	c1 ea 0a             	shr    edx,0xa
c000964c:	c1 e8 0a             	shr    eax,0xa
c000964f:	8d 84 02 00 00 c0 ff 	lea    eax,[edx+eax*1-0x400000]
c0009656:	c3                   	ret    

c0009657 <page_table_add>:
c0009657:	55                   	push   ebp
c0009658:	89 e5                	mov    ebp,esp
c000965a:	57                   	push   edi
c000965b:	56                   	push   esi
c000965c:	53                   	push   ebx
c000965d:	83 ec 0c             	sub    esp,0xc
c0009660:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0009663:	8b 75 0c             	mov    esi,DWORD PTR [ebp+0xc]
c0009666:	50                   	push   eax
c0009667:	89 c7                	mov    edi,eax
c0009669:	e8 c7 ff ff ff       	call   c0009635 <pte_ptr>
c000966e:	c1 ef 16             	shr    edi,0x16
c0009671:	f6 04 bd 00 f0 ff ff 	test   BYTE PTR [edi*4-0x1000],0x1
c0009678:	01 
c0009679:	5a                   	pop    edx
c000967a:	89 c3                	mov    ebx,eax
c000967c:	74 0c                	je     c000968a <page_table_add+0x33>
c000967e:	f6 00 01             	test   BYTE PTR [eax],0x1
c0009681:	75 3e                	jne    c00096c1 <page_table_add+0x6a>
c0009683:	83 ce 07             	or     esi,0x7
c0009686:	89 30                	mov    DWORD PTR [eax],esi
c0009688:	eb 37                	jmp    c00096c1 <page_table_add+0x6a>
c000968a:	50                   	push   eax
c000968b:	83 ce 07             	or     esi,0x7
c000968e:	50                   	push   eax
c000968f:	6a 01                	push   0x1
c0009691:	68 c0 e6 02 c0       	push   0xc002e6c0
c0009696:	e8 33 fc ff ff       	call   c00092ce <mem_alloc_page>
c000969b:	83 c4 0c             	add    esp,0xc
c000969e:	83 c8 07             	or     eax,0x7
c00096a1:	89 04 bd 00 f0 ff ff 	mov    DWORD PTR [edi*4-0x1000],eax
c00096a8:	89 d8                	mov    eax,ebx
c00096aa:	68 00 10 00 00       	push   0x1000
c00096af:	25 00 f0 ff ff       	and    eax,0xfffff000
c00096b4:	6a 00                	push   0x0
c00096b6:	50                   	push   eax
c00096b7:	e8 e8 18 00 00       	call   c000afa4 <memset>
c00096bc:	83 c4 10             	add    esp,0x10
c00096bf:	89 33                	mov    DWORD PTR [ebx],esi
c00096c1:	8d 65 f4             	lea    esp,[ebp-0xc]
c00096c4:	5b                   	pop    ebx
c00096c5:	5e                   	pop    esi
c00096c6:	5f                   	pop    edi
c00096c7:	5d                   	pop    ebp
c00096c8:	c3                   	ret    

c00096c9 <page_alloc>:
c00096c9:	55                   	push   ebp
c00096ca:	89 e5                	mov    ebp,esp
c00096cc:	57                   	push   edi
c00096cd:	56                   	push   esi
c00096ce:	53                   	push   ebx
c00096cf:	83 ec 1c             	sub    esp,0x1c
c00096d2:	8b 75 0c             	mov    esi,DWORD PTR [ebp+0xc]
c00096d5:	83 7d 08 01          	cmp    DWORD PTR [ebp+0x8],0x1
c00096d9:	75 0e                	jne    c00096e9 <page_alloc+0x20>
c00096db:	c7 45 e4 c0 e6 02 c0 	mov    DWORD PTR [ebp-0x1c],0xc002e6c0
c00096e2:	b8 88 6f 01 c0       	mov    eax,0xc0016f88
c00096e7:	eb 0c                	jmp    c00096f5 <page_alloc+0x2c>
c00096e9:	c7 45 e4 18 6f 01 c0 	mov    DWORD PTR [ebp-0x1c],0xc0016f18
c00096f0:	b8 50 6f 01 c0       	mov    eax,0xc0016f50
c00096f5:	52                   	push   edx
c00096f6:	52                   	push   edx
c00096f7:	56                   	push   esi
c00096f8:	50                   	push   eax
c00096f9:	e8 d0 fb ff ff       	call   c00092ce <mem_alloc_page>
c00096fe:	83 c4 10             	add    esp,0x10
c0009701:	85 c0                	test   eax,eax
c0009703:	89 c3                	mov    ebx,eax
c0009705:	89 c7                	mov    edi,eax
c0009707:	75 28                	jne    c0009731 <page_alloc+0x68>
c0009709:	eb 2e                	jmp    c0009739 <page_alloc+0x70>
c000970b:	50                   	push   eax
c000970c:	50                   	push   eax
c000970d:	6a 01                	push   0x1
c000970f:	ff 75 e4             	push   DWORD PTR [ebp-0x1c]
c0009712:	e8 b7 fb ff ff       	call   c00092ce <mem_alloc_page>
c0009717:	83 c4 10             	add    esp,0x10
c000971a:	85 c0                	test   eax,eax
c000971c:	74 19                	je     c0009737 <page_alloc+0x6e>
c000971e:	51                   	push   ecx
c000971f:	4e                   	dec    esi
c0009720:	51                   	push   ecx
c0009721:	50                   	push   eax
c0009722:	57                   	push   edi
c0009723:	81 c7 00 10 00 00    	add    edi,0x1000
c0009729:	e8 29 ff ff ff       	call   c0009657 <page_table_add>
c000972e:	83 c4 10             	add    esp,0x10
c0009731:	85 f6                	test   esi,esi
c0009733:	75 d6                	jne    c000970b <page_alloc+0x42>
c0009735:	eb 02                	jmp    c0009739 <page_alloc+0x70>
c0009737:	31 db                	xor    ebx,ebx
c0009739:	8d 65 f4             	lea    esp,[ebp-0xc]
c000973c:	89 d8                	mov    eax,ebx
c000973e:	5b                   	pop    ebx
c000973f:	5e                   	pop    esi
c0009740:	5f                   	pop    edi
c0009741:	5d                   	pop    ebp
c0009742:	c3                   	ret    

c0009743 <get_kernel_page>:
c0009743:	55                   	push   ebp
c0009744:	89 e5                	mov    ebp,esp
c0009746:	56                   	push   esi
c0009747:	53                   	push   ebx
c0009748:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c000974b:	50                   	push   eax
c000974c:	50                   	push   eax
c000974d:	53                   	push   ebx
c000974e:	6a 01                	push   0x1
c0009750:	e8 74 ff ff ff       	call   c00096c9 <page_alloc>
c0009755:	83 c4 10             	add    esp,0x10
c0009758:	85 c0                	test   eax,eax
c000975a:	89 c6                	mov    esi,eax
c000975c:	74 10                	je     c000976e <get_kernel_page+0x2b>
c000975e:	c1 e3 0c             	shl    ebx,0xc
c0009761:	50                   	push   eax
c0009762:	53                   	push   ebx
c0009763:	6a 00                	push   0x0
c0009765:	56                   	push   esi
c0009766:	e8 39 18 00 00       	call   c000afa4 <memset>
c000976b:	83 c4 10             	add    esp,0x10
c000976e:	51                   	push   ecx
c000976f:	51                   	push   ecx
c0009770:	68 67 e4 00 c0       	push   0xc000e467
c0009775:	6a 07                	push   0x7
c0009777:	e8 89 17 00 00       	call   c000af05 <put_str>
c000977c:	83 c4 0c             	add    esp,0xc
c000977f:	6a 10                	push   0x10
c0009781:	56                   	push   esi
c0009782:	6a 07                	push   0x7
c0009784:	e8 a4 17 00 00       	call   c000af2d <put_uint>
c0009789:	8d 65 f8             	lea    esp,[ebp-0x8]
c000978c:	89 f0                	mov    eax,esi
c000978e:	5b                   	pop    ebx
c000978f:	5e                   	pop    esi
c0009790:	5d                   	pop    ebp
c0009791:	c3                   	ret    

c0009792 <get_user_page>:
c0009792:	55                   	push   ebp
c0009793:	89 e5                	mov    ebp,esp
c0009795:	53                   	push   ebx
c0009796:	83 ec 1c             	sub    esp,0x1c
c0009799:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c000979c:	53                   	push   ebx
c000979d:	6a 02                	push   0x2
c000979f:	e8 25 ff ff ff       	call   c00096c9 <page_alloc>
c00097a4:	83 c4 10             	add    esp,0x10
c00097a7:	85 c0                	test   eax,eax
c00097a9:	74 16                	je     c00097c1 <get_user_page+0x2f>
c00097ab:	c1 e3 0c             	shl    ebx,0xc
c00097ae:	52                   	push   edx
c00097af:	53                   	push   ebx
c00097b0:	6a 00                	push   0x0
c00097b2:	50                   	push   eax
c00097b3:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
c00097b6:	e8 e9 17 00 00       	call   c000afa4 <memset>
c00097bb:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c00097be:	83 c4 10             	add    esp,0x10
c00097c1:	8b 5d fc             	mov    ebx,DWORD PTR [ebp-0x4]
c00097c4:	c9                   	leave  
c00097c5:	c3                   	ret    

c00097c6 <get_a_page>:
c00097c6:	55                   	push   ebp
c00097c7:	89 e5                	mov    ebp,esp
c00097c9:	57                   	push   edi
c00097ca:	bf 18 6f 01 c0       	mov    edi,0xc0016f18
c00097cf:	56                   	push   esi
c00097d0:	53                   	push   ebx
c00097d1:	83 ec 0c             	sub    esp,0xc
c00097d4:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c00097d7:	8b 75 0c             	mov    esi,DWORD PTR [ebp+0xc]
c00097da:	83 fb 01             	cmp    ebx,0x1
c00097dd:	75 05                	jne    c00097e4 <get_a_page+0x1e>
c00097df:	bf c0 e6 02 c0       	mov    edi,0xc002e6c0
c00097e4:	e8 dd 03 00 00       	call   c0009bc6 <running_thread>
c00097e9:	83 fb 02             	cmp    ebx,0x2
c00097ec:	8b 40 38             	mov    eax,DWORD PTR [eax+0x38]
c00097ef:	75 04                	jne    c00097f5 <get_a_page+0x2f>
c00097f1:	85 c0                	test   eax,eax
c00097f3:	75 33                	jne    c0009828 <get_a_page+0x62>
c00097f5:	4b                   	dec    ebx
c00097f6:	75 14                	jne    c000980c <get_a_page+0x46>
c00097f8:	85 c0                	test   eax,eax
c00097fa:	75 10                	jne    c000980c <get_a_page+0x46>
c00097fc:	50                   	push   eax
c00097fd:	50                   	push   eax
c00097fe:	6a 01                	push   0x1
c0009800:	68 88 6f 01 c0       	push   0xc0016f88
c0009805:	e8 c4 fa ff ff       	call   c00092ce <mem_alloc_page>
c000980a:	eb 19                	jmp    c0009825 <get_a_page+0x5f>
c000980c:	68 73 e4 00 c0       	push   0xc000e473
c0009811:	68 20 e5 00 c0       	push   0xc000e520
c0009816:	68 44 01 00 00       	push   0x144
c000981b:	68 15 e4 00 c0       	push   0xc000e415
c0009820:	e8 6b ec ff ff       	call   c0008490 <panic_spin>
c0009825:	83 c4 10             	add    esp,0x10
c0009828:	53                   	push   ebx
c0009829:	53                   	push   ebx
c000982a:	6a 01                	push   0x1
c000982c:	57                   	push   edi
c000982d:	e8 9c fa ff ff       	call   c00092ce <mem_alloc_page>
c0009832:	83 c4 10             	add    esp,0x10
c0009835:	85 c0                	test   eax,eax
c0009837:	89 c3                	mov    ebx,eax
c0009839:	75 1c                	jne    c0009857 <get_a_page+0x91>
c000983b:	68 ca e4 00 c0       	push   0xc000e4ca
c0009840:	68 20 e5 00 c0       	push   0xc000e520
c0009845:	68 47 01 00 00       	push   0x147
c000984a:	68 15 e4 00 c0       	push   0xc000e415
c000984f:	e8 3c ec ff ff       	call   c0008490 <panic_spin>
c0009854:	83 c4 10             	add    esp,0x10
c0009857:	51                   	push   ecx
c0009858:	51                   	push   ecx
c0009859:	53                   	push   ebx
c000985a:	56                   	push   esi
c000985b:	e8 f7 fd ff ff       	call   c0009657 <page_table_add>
c0009860:	8d 65 f4             	lea    esp,[ebp-0xc]
c0009863:	89 f0                	mov    eax,esi
c0009865:	5b                   	pop    ebx
c0009866:	5e                   	pop    esi
c0009867:	5f                   	pop    edi
c0009868:	5d                   	pop    ebp
c0009869:	c3                   	ret    

c000986a <addr_v2p>:
c000986a:	55                   	push   ebp
c000986b:	89 e5                	mov    ebp,esp
c000986d:	53                   	push   ebx
c000986e:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c0009871:	53                   	push   ebx
c0009872:	81 e3 ff 0f 00 00    	and    ebx,0xfff
c0009878:	e8 b8 fd ff ff       	call   c0009635 <pte_ptr>
c000987d:	5a                   	pop    edx
c000987e:	8b 00                	mov    eax,DWORD PTR [eax]
c0009880:	25 00 f0 ff ff       	and    eax,0xfffff000
c0009885:	09 d8                	or     eax,ebx
c0009887:	8b 5d fc             	mov    ebx,DWORD PTR [ebp-0x4]
c000988a:	c9                   	leave  
c000988b:	c3                   	ret    

c000988c <sema_init>:
c000988c:	55                   	push   ebp
c000988d:	89 e5                	mov    ebp,esp
c000988f:	56                   	push   esi
c0009890:	0f b6 75 0c          	movzx  esi,BYTE PTR [ebp+0xc]
c0009894:	53                   	push   ebx
c0009895:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c0009898:	83 ec 0c             	sub    esp,0xc
c000989b:	8d 43 04             	lea    eax,[ebx+0x4]
c000989e:	89 33                	mov    DWORD PTR [ebx],esi
c00098a0:	50                   	push   eax
c00098a1:	e8 42 13 00 00       	call   c000abe8 <list_init>
c00098a6:	8b 03                	mov    eax,DWORD PTR [ebx]
c00098a8:	83 c4 10             	add    esp,0x10
c00098ab:	39 f0                	cmp    eax,esi
c00098ad:	74 19                	je     c00098c8 <sema_init+0x3c>
c00098af:	68 2c e5 00 c0       	push   0xc000e52c
c00098b4:	68 70 e6 00 c0       	push   0xc000e670
c00098b9:	6a 0d                	push   0xd
c00098bb:	68 42 e5 00 c0       	push   0xc000e542
c00098c0:	e8 cb eb ff ff       	call   c0008490 <panic_spin>
c00098c5:	83 c4 10             	add    esp,0x10
c00098c8:	8d 65 f8             	lea    esp,[ebp-0x8]
c00098cb:	5b                   	pop    ebx
c00098cc:	5e                   	pop    esi
c00098cd:	5d                   	pop    ebp
c00098ce:	c3                   	ret    

c00098cf <lock_init>:
c00098cf:	55                   	push   ebp
c00098d0:	89 e5                	mov    ebp,esp
c00098d2:	83 ec 10             	sub    esp,0x10
c00098d5:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c00098d8:	c7 00 00 00 00 00    	mov    DWORD PTR [eax],0x0
c00098de:	c7 40 20 00 00 00 00 	mov    DWORD PTR [eax+0x20],0x0
c00098e5:	83 c0 04             	add    eax,0x4
c00098e8:	6a 01                	push   0x1
c00098ea:	50                   	push   eax
c00098eb:	e8 9c ff ff ff       	call   c000988c <sema_init>
c00098f0:	83 c4 10             	add    esp,0x10
c00098f3:	c9                   	leave  
c00098f4:	c3                   	ret    

c00098f5 <sema_down>:
c00098f5:	55                   	push   ebp
c00098f6:	89 e5                	mov    ebp,esp
c00098f8:	57                   	push   edi
c00098f9:	56                   	push   esi
c00098fa:	53                   	push   ebx
c00098fb:	83 ec 0c             	sub    esp,0xc
c00098fe:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c0009901:	e8 c3 f7 ff ff       	call   c00090c9 <intr_disable>
c0009906:	8d 73 04             	lea    esi,[ebx+0x4]
c0009909:	89 c7                	mov    edi,eax
c000990b:	e9 82 00 00 00       	jmp    c0009992 <sema_down+0x9d>
c0009910:	e8 b1 02 00 00       	call   c0009bc6 <running_thread>
c0009915:	52                   	push   edx
c0009916:	83 c0 2c             	add    eax,0x2c
c0009919:	52                   	push   edx
c000991a:	50                   	push   eax
c000991b:	56                   	push   esi
c000991c:	e8 7f 13 00 00       	call   c000aca0 <list_find>
c0009921:	83 c4 10             	add    esp,0x10
c0009924:	85 c0                	test   eax,eax
c0009926:	74 19                	je     c0009941 <sema_down+0x4c>
c0009928:	68 50 e5 00 c0       	push   0xc000e550
c000992d:	68 7c e6 00 c0       	push   0xc000e67c
c0009932:	6a 24                	push   0x24
c0009934:	68 42 e5 00 c0       	push   0xc000e542
c0009939:	e8 52 eb ff ff       	call   c0008490 <panic_spin>
c000993e:	83 c4 10             	add    esp,0x10
c0009941:	e8 80 02 00 00       	call   c0009bc6 <running_thread>
c0009946:	51                   	push   ecx
c0009947:	83 c0 2c             	add    eax,0x2c
c000994a:	51                   	push   ecx
c000994b:	50                   	push   eax
c000994c:	56                   	push   esi
c000994d:	e8 4e 13 00 00       	call   c000aca0 <list_find>
c0009952:	83 c4 10             	add    esp,0x10
c0009955:	85 c0                	test   eax,eax
c0009957:	74 19                	je     c0009972 <sema_down+0x7d>
c0009959:	68 91 e5 00 c0       	push   0xc000e591
c000995e:	68 7c e6 00 c0       	push   0xc000e67c
c0009963:	6a 27                	push   0x27
c0009965:	68 42 e5 00 c0       	push   0xc000e542
c000996a:	e8 21 eb ff ff       	call   c0008490 <panic_spin>
c000996f:	83 c4 10             	add    esp,0x10
c0009972:	e8 4f 02 00 00       	call   c0009bc6 <running_thread>
c0009977:	52                   	push   edx
c0009978:	83 c0 2c             	add    eax,0x2c
c000997b:	52                   	push   edx
c000997c:	50                   	push   eax
c000997d:	56                   	push   esi
c000997e:	e8 c4 12 00 00       	call   c000ac47 <list_append>
c0009983:	c7 04 24 02 00 00 00 	mov    DWORD PTR [esp],0x2
c000998a:	e8 e5 04 00 00       	call   c0009e74 <thread_block>
c000998f:	83 c4 10             	add    esp,0x10
c0009992:	8b 03                	mov    eax,DWORD PTR [ebx]
c0009994:	85 c0                	test   eax,eax
c0009996:	0f 84 74 ff ff ff    	je     c0009910 <sema_down+0x1b>
c000999c:	8b 03                	mov    eax,DWORD PTR [ebx]
c000999e:	48                   	dec    eax
c000999f:	89 03                	mov    DWORD PTR [ebx],eax
c00099a1:	8b 03                	mov    eax,DWORD PTR [ebx]
c00099a3:	85 c0                	test   eax,eax
c00099a5:	74 19                	je     c00099c0 <sema_down+0xcb>
c00099a7:	68 c5 e5 00 c0       	push   0xc000e5c5
c00099ac:	68 7c e6 00 c0       	push   0xc000e67c
c00099b1:	6a 2d                	push   0x2d
c00099b3:	68 42 e5 00 c0       	push   0xc000e542
c00099b8:	e8 d3 ea ff ff       	call   c0008490 <panic_spin>
c00099bd:	83 c4 10             	add    esp,0x10
c00099c0:	89 7d 08             	mov    DWORD PTR [ebp+0x8],edi
c00099c3:	8d 65 f4             	lea    esp,[ebp-0xc]
c00099c6:	5b                   	pop    ebx
c00099c7:	5e                   	pop    esi
c00099c8:	5f                   	pop    edi
c00099c9:	5d                   	pop    ebp
c00099ca:	e9 e1 f7 ff ff       	jmp    c00091b0 <intr_set_status>

c00099cf <sema_up>:
c00099cf:	55                   	push   ebp
c00099d0:	89 e5                	mov    ebp,esp
c00099d2:	57                   	push   edi
c00099d3:	56                   	push   esi
c00099d4:	53                   	push   ebx
c00099d5:	83 ec 0c             	sub    esp,0xc
c00099d8:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c00099db:	e8 e9 f6 ff ff       	call   c00090c9 <intr_disable>
c00099e0:	89 c7                	mov    edi,eax
c00099e2:	8b 03                	mov    eax,DWORD PTR [ebx]
c00099e4:	85 c0                	test   eax,eax
c00099e6:	74 19                	je     c0009a01 <sema_up+0x32>
c00099e8:	68 c5 e5 00 c0       	push   0xc000e5c5
c00099ed:	68 88 e6 00 c0       	push   0xc000e688
c00099f2:	6a 38                	push   0x38
c00099f4:	68 42 e5 00 c0       	push   0xc000e542
c00099f9:	e8 92 ea ff ff       	call   c0008490 <panic_spin>
c00099fe:	83 c4 10             	add    esp,0x10
c0009a01:	83 ec 0c             	sub    esp,0xc
c0009a04:	8d 73 04             	lea    esi,[ebx+0x4]
c0009a07:	56                   	push   esi
c0009a08:	e8 0c 13 00 00       	call   c000ad19 <list_empty>
c0009a0d:	83 c4 10             	add    esp,0x10
c0009a10:	85 c0                	test   eax,eax
c0009a12:	75 15                	jne    c0009a29 <sema_up+0x5a>
c0009a14:	83 ec 0c             	sub    esp,0xc
c0009a17:	56                   	push   esi
c0009a18:	e8 69 12 00 00       	call   c000ac86 <list_pop>
c0009a1d:	59                   	pop    ecx
c0009a1e:	ff 70 04             	push   DWORD PTR [eax+0x4]
c0009a21:	e8 99 04 00 00       	call   c0009ebf <thread_unblock>
c0009a26:	83 c4 10             	add    esp,0x10
c0009a29:	8b 03                	mov    eax,DWORD PTR [ebx]
c0009a2b:	40                   	inc    eax
c0009a2c:	89 03                	mov    DWORD PTR [ebx],eax
c0009a2e:	8b 03                	mov    eax,DWORD PTR [ebx]
c0009a30:	48                   	dec    eax
c0009a31:	74 19                	je     c0009a4c <sema_up+0x7d>
c0009a33:	68 d7 e5 00 c0       	push   0xc000e5d7
c0009a38:	68 88 e6 00 c0       	push   0xc000e688
c0009a3d:	6a 3f                	push   0x3f
c0009a3f:	68 42 e5 00 c0       	push   0xc000e542
c0009a44:	e8 47 ea ff ff       	call   c0008490 <panic_spin>
c0009a49:	83 c4 10             	add    esp,0x10
c0009a4c:	89 7d 08             	mov    DWORD PTR [ebp+0x8],edi
c0009a4f:	8d 65 f4             	lea    esp,[ebp-0xc]
c0009a52:	5b                   	pop    ebx
c0009a53:	5e                   	pop    esi
c0009a54:	5f                   	pop    edi
c0009a55:	5d                   	pop    ebp
c0009a56:	e9 55 f7 ff ff       	jmp    c00091b0 <intr_set_status>

c0009a5b <lock_acquire>:
c0009a5b:	55                   	push   ebp
c0009a5c:	89 e5                	mov    ebp,esp
c0009a5e:	56                   	push   esi
c0009a5f:	53                   	push   ebx
c0009a60:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c0009a63:	8b 33                	mov    esi,DWORD PTR [ebx]
c0009a65:	e8 5c 01 00 00       	call   c0009bc6 <running_thread>
c0009a6a:	39 c6                	cmp    esi,eax
c0009a6c:	74 3e                	je     c0009aac <lock_acquire+0x51>
c0009a6e:	83 ec 0c             	sub    esp,0xc
c0009a71:	8d 43 04             	lea    eax,[ebx+0x4]
c0009a74:	50                   	push   eax
c0009a75:	e8 7b fe ff ff       	call   c00098f5 <sema_down>
c0009a7a:	e8 47 01 00 00       	call   c0009bc6 <running_thread>
c0009a7f:	83 c4 10             	add    esp,0x10
c0009a82:	83 7b 20 00          	cmp    DWORD PTR [ebx+0x20],0x0
c0009a86:	89 03                	mov    DWORD PTR [ebx],eax
c0009a88:	74 19                	je     c0009aa3 <lock_acquire+0x48>
c0009a8a:	68 e9 e5 00 c0       	push   0xc000e5e9
c0009a8f:	68 90 e6 00 c0       	push   0xc000e690
c0009a94:	6a 4d                	push   0x4d
c0009a96:	68 42 e5 00 c0       	push   0xc000e542
c0009a9b:	e8 f0 e9 ff ff       	call   c0008490 <panic_spin>
c0009aa0:	83 c4 10             	add    esp,0x10
c0009aa3:	c7 43 20 01 00 00 00 	mov    DWORD PTR [ebx+0x20],0x1
c0009aaa:	eb 03                	jmp    c0009aaf <lock_acquire+0x54>
c0009aac:	ff 43 20             	inc    DWORD PTR [ebx+0x20]
c0009aaf:	8d 65 f8             	lea    esp,[ebp-0x8]
c0009ab2:	5b                   	pop    ebx
c0009ab3:	5e                   	pop    esi
c0009ab4:	5d                   	pop    ebp
c0009ab5:	c3                   	ret    

c0009ab6 <lock_release>:
c0009ab6:	55                   	push   ebp
c0009ab7:	89 e5                	mov    ebp,esp
c0009ab9:	56                   	push   esi
c0009aba:	53                   	push   ebx
c0009abb:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c0009abe:	8b 33                	mov    esi,DWORD PTR [ebx]
c0009ac0:	e8 01 01 00 00       	call   c0009bc6 <running_thread>
c0009ac5:	39 c6                	cmp    esi,eax
c0009ac7:	74 19                	je     c0009ae2 <lock_release+0x2c>
c0009ac9:	68 06 e6 00 c0       	push   0xc000e606
c0009ace:	68 a0 e6 00 c0       	push   0xc000e6a0
c0009ad3:	6a 5c                	push   0x5c
c0009ad5:	68 42 e5 00 c0       	push   0xc000e542
c0009ada:	e8 b1 e9 ff ff       	call   c0008490 <panic_spin>
c0009adf:	83 c4 10             	add    esp,0x10
c0009ae2:	8b 43 20             	mov    eax,DWORD PTR [ebx+0x20]
c0009ae5:	83 f8 01             	cmp    eax,0x1
c0009ae8:	76 0b                	jbe    c0009af5 <lock_release+0x3f>
c0009aea:	48                   	dec    eax
c0009aeb:	89 43 20             	mov    DWORD PTR [ebx+0x20],eax
c0009aee:	8d 65 f8             	lea    esp,[ebp-0x8]
c0009af1:	5b                   	pop    ebx
c0009af2:	5e                   	pop    esi
c0009af3:	5d                   	pop    ebp
c0009af4:	c3                   	ret    
c0009af5:	74 19                	je     c0009b10 <lock_release+0x5a>
c0009af7:	68 28 e6 00 c0       	push   0xc000e628
c0009afc:	68 a0 e6 00 c0       	push   0xc000e6a0
c0009b01:	6a 62                	push   0x62
c0009b03:	68 42 e5 00 c0       	push   0xc000e542
c0009b08:	e8 83 e9 ff ff       	call   c0008490 <panic_spin>
c0009b0d:	83 c4 10             	add    esp,0x10
c0009b10:	c7 03 00 00 00 00    	mov    DWORD PTR [ebx],0x0
c0009b16:	c7 43 20 00 00 00 00 	mov    DWORD PTR [ebx+0x20],0x0
c0009b1d:	83 c3 04             	add    ebx,0x4
c0009b20:	89 5d 08             	mov    DWORD PTR [ebp+0x8],ebx
c0009b23:	8d 65 f8             	lea    esp,[ebp-0x8]
c0009b26:	5b                   	pop    ebx
c0009b27:	5e                   	pop    esi
c0009b28:	5d                   	pop    ebp
c0009b29:	e9 a1 fe ff ff       	jmp    c00099cf <sema_up>
	...

c0009b30 <switch_to>:
c0009b30:	56                   	push   esi
c0009b31:	57                   	push   edi
c0009b32:	53                   	push   ebx
c0009b33:	55                   	push   ebp
c0009b34:	8b 44 24 14          	mov    eax,DWORD PTR [esp+0x14]
c0009b38:	89 20                	mov    DWORD PTR [eax],esp
c0009b3a:	8b 44 24 18          	mov    eax,DWORD PTR [esp+0x18]
c0009b3e:	8b 20                	mov    esp,DWORD PTR [eax]
c0009b40:	5d                   	pop    ebp
c0009b41:	5b                   	pop    ebx
c0009b42:	5f                   	pop    edi
c0009b43:	5e                   	pop    esi
c0009b44:	c3                   	ret    
c0009b45:	00 00                	add    BYTE PTR [eax],al
	...

c0009b48 <kernel_thread>:
c0009b48:	55                   	push   ebp
c0009b49:	89 e5                	mov    ebp,esp
c0009b4b:	56                   	push   esi
c0009b4c:	8b 75 0c             	mov    esi,DWORD PTR [ebp+0xc]
c0009b4f:	53                   	push   ebx
c0009b50:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c0009b53:	e8 41 f6 ff ff       	call   c0009199 <intr_enable>
c0009b58:	89 75 08             	mov    DWORD PTR [ebp+0x8],esi
c0009b5b:	89 d8                	mov    eax,ebx
c0009b5d:	5b                   	pop    ebx
c0009b5e:	5e                   	pop    esi
c0009b5f:	5d                   	pop    ebp
c0009b60:	ff e0                	jmp    eax

c0009b62 <thread_init>:
c0009b62:	55                   	push   ebp
c0009b63:	89 e5                	mov    ebp,esp
c0009b65:	53                   	push   ebx
c0009b66:	83 ec 18             	sub    esp,0x18
c0009b69:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c0009b6c:	8a 55 10             	mov    dl,BYTE PTR [ebp+0x10]
c0009b6f:	6a 78                	push   0x78
c0009b71:	6a 00                	push   0x0
c0009b73:	53                   	push   ebx
c0009b74:	88 55 f4             	mov    BYTE PTR [ebp-0xc],dl
c0009b77:	e8 28 14 00 00       	call   c000afa4 <memset>
c0009b7c:	58                   	pop    eax
c0009b7d:	5a                   	pop    edx
c0009b7e:	ff 75 0c             	push   DWORD PTR [ebp+0xc]
c0009b81:	8d 43 08             	lea    eax,[ebx+0x8]
c0009b84:	50                   	push   eax
c0009b85:	e8 ed 14 00 00       	call   c000b077 <strcpy>
c0009b8a:	83 c4 10             	add    esp,0x10
c0009b8d:	8a 55 f4             	mov    dl,BYTE PTR [ebp-0xc]
c0009b90:	3b 1d 28 e7 02 c0    	cmp    ebx,DWORD PTR ds:0xc002e728
c0009b96:	75 09                	jne    c0009ba1 <thread_init+0x3f>
c0009b98:	c7 43 04 00 00 00 00 	mov    DWORD PTR [ebx+0x4],0x0
c0009b9f:	eb 07                	jmp    c0009ba8 <thread_init+0x46>
c0009ba1:	c7 43 04 01 00 00 00 	mov    DWORD PTR [ebx+0x4],0x1
c0009ba8:	8d 83 00 10 00 00    	lea    eax,[ebx+0x1000]
c0009bae:	88 53 18             	mov    BYTE PTR [ebx+0x18],dl
c0009bb1:	89 03                	mov    DWORD PTR [ebx],eax
c0009bb3:	c7 43 38 00 00 00 00 	mov    DWORD PTR [ebx+0x38],0x0
c0009bba:	c7 43 74 78 56 34 12 	mov    DWORD PTR [ebx+0x74],0x12345678
c0009bc1:	8b 5d fc             	mov    ebx,DWORD PTR [ebp-0x4]
c0009bc4:	c9                   	leave  
c0009bc5:	c3                   	ret    

c0009bc6 <running_thread>:
c0009bc6:	55                   	push   ebp
c0009bc7:	89 e5                	mov    ebp,esp
c0009bc9:	89 e0                	mov    eax,esp
c0009bcb:	25 00 f0 ff ff       	and    eax,0xfffff000
c0009bd0:	5d                   	pop    ebp
c0009bd1:	c3                   	ret    

c0009bd2 <init_thread>:
c0009bd2:	55                   	push   ebp
c0009bd3:	89 e5                	mov    ebp,esp
c0009bd5:	83 ec 14             	sub    esp,0x14
c0009bd8:	68 f8 e6 02 c0       	push   0xc002e6f8
c0009bdd:	e8 06 10 00 00       	call   c000abe8 <list_init>
c0009be2:	c7 04 24 10 e7 02 c0 	mov    DWORD PTR [esp],0xc002e710
c0009be9:	e8 fa 0f 00 00       	call   c000abe8 <list_init>
c0009bee:	e8 d3 ff ff ff       	call   c0009bc6 <running_thread>
c0009bf3:	83 c4 0c             	add    esp,0xc
c0009bf6:	6a 1f                	push   0x1f
c0009bf8:	68 b0 e6 00 c0       	push   0xc000e6b0
c0009bfd:	50                   	push   eax
c0009bfe:	a3 28 e7 02 c0       	mov    ds:0xc002e728,eax
c0009c03:	e8 5a ff ff ff       	call   c0009b62 <thread_init>
c0009c08:	a1 28 e7 02 c0       	mov    eax,ds:0xc002e728
c0009c0d:	89 40 24             	mov    DWORD PTR [eax+0x24],eax
c0009c10:	89 40 30             	mov    DWORD PTR [eax+0x30],eax
c0009c13:	83 c0 20             	add    eax,0x20
c0009c16:	59                   	pop    ecx
c0009c17:	5a                   	pop    edx
c0009c18:	50                   	push   eax
c0009c19:	68 10 e7 02 c0       	push   0xc002e710
c0009c1e:	e8 24 10 00 00       	call   c000ac47 <list_append>
c0009c23:	83 c4 10             	add    esp,0x10
c0009c26:	c9                   	leave  
c0009c27:	c3                   	ret    

c0009c28 <thread_create>:
c0009c28:	55                   	push   ebp
c0009c29:	89 e5                	mov    ebp,esp
c0009c2b:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c0009c2e:	8b 02                	mov    eax,DWORD PTR [edx]
c0009c30:	8d 88 50 fe ff ff    	lea    ecx,[eax-0x1b0]
c0009c36:	89 0a                	mov    DWORD PTR [edx],ecx
c0009c38:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
c0009c3b:	c7 80 60 fe ff ff 48 	mov    DWORD PTR [eax-0x1a0],0xc0009b48
c0009c42:	9b 00 c0 
c0009c45:	c7 80 50 fe ff ff 00 	mov    DWORD PTR [eax-0x1b0],0x0
c0009c4c:	00 00 00 
c0009c4f:	c7 80 54 fe ff ff 00 	mov    DWORD PTR [eax-0x1ac],0x0
c0009c56:	00 00 00 
c0009c59:	89 90 68 fe ff ff    	mov    DWORD PTR [eax-0x198],edx
c0009c5f:	8b 55 10             	mov    edx,DWORD PTR [ebp+0x10]
c0009c62:	c7 80 5c fe ff ff 00 	mov    DWORD PTR [eax-0x1a4],0x0
c0009c69:	00 00 00 
c0009c6c:	c7 80 58 fe ff ff 00 	mov    DWORD PTR [eax-0x1a8],0x0
c0009c73:	00 00 00 
c0009c76:	89 90 6c fe ff ff    	mov    DWORD PTR [eax-0x194],edx
c0009c7c:	5d                   	pop    ebp
c0009c7d:	c3                   	ret    

c0009c7e <thread_start>:
c0009c7e:	55                   	push   ebp
c0009c7f:	89 e5                	mov    ebp,esp
c0009c81:	56                   	push   esi
c0009c82:	8b 75 0c             	mov    esi,DWORD PTR [ebp+0xc]
c0009c85:	53                   	push   ebx
c0009c86:	83 ec 0c             	sub    esp,0xc
c0009c89:	6a 01                	push   0x1
c0009c8b:	e8 b3 fa ff ff       	call   c0009743 <get_kernel_page>
c0009c90:	81 e6 ff 00 00 00    	and    esi,0xff
c0009c96:	83 c4 0c             	add    esp,0xc
c0009c99:	56                   	push   esi
c0009c9a:	ff 75 08             	push   DWORD PTR [ebp+0x8]
c0009c9d:	50                   	push   eax
c0009c9e:	89 c3                	mov    ebx,eax
c0009ca0:	e8 bd fe ff ff       	call   c0009b62 <thread_init>
c0009ca5:	83 c4 0c             	add    esp,0xc
c0009ca8:	ff 75 14             	push   DWORD PTR [ebp+0x14]
c0009cab:	ff 75 10             	push   DWORD PTR [ebp+0x10]
c0009cae:	8d 73 2c             	lea    esi,[ebx+0x2c]
c0009cb1:	53                   	push   ebx
c0009cb2:	e8 71 ff ff ff       	call   c0009c28 <thread_create>
c0009cb7:	89 5b 24             	mov    DWORD PTR [ebx+0x24],ebx
c0009cba:	89 5b 30             	mov    DWORD PTR [ebx+0x30],ebx
c0009cbd:	59                   	pop    ecx
c0009cbe:	58                   	pop    eax
c0009cbf:	56                   	push   esi
c0009cc0:	68 f8 e6 02 c0       	push   0xc002e6f8
c0009cc5:	e8 d6 0f 00 00       	call   c000aca0 <list_find>
c0009cca:	83 c4 10             	add    esp,0x10
c0009ccd:	85 c0                	test   eax,eax
c0009ccf:	74 19                	je     c0009cea <thread_start+0x6c>
c0009cd1:	68 bc e6 00 c0       	push   0xc000e6bc
c0009cd6:	68 84 e8 00 c0       	push   0xc000e884
c0009cdb:	6a 61                	push   0x61
c0009cdd:	68 eb e6 00 c0       	push   0xc000e6eb
c0009ce2:	e8 a9 e7 ff ff       	call   c0008490 <panic_spin>
c0009ce7:	83 c4 10             	add    esp,0x10
c0009cea:	50                   	push   eax
c0009ceb:	50                   	push   eax
c0009cec:	56                   	push   esi
c0009ced:	68 f8 e6 02 c0       	push   0xc002e6f8
c0009cf2:	e8 50 0f 00 00       	call   c000ac47 <list_append>
c0009cf7:	8d 73 20             	lea    esi,[ebx+0x20]
c0009cfa:	58                   	pop    eax
c0009cfb:	5a                   	pop    edx
c0009cfc:	56                   	push   esi
c0009cfd:	68 10 e7 02 c0       	push   0xc002e710
c0009d02:	e8 99 0f 00 00       	call   c000aca0 <list_find>
c0009d07:	83 c4 10             	add    esp,0x10
c0009d0a:	85 c0                	test   eax,eax
c0009d0c:	74 19                	je     c0009d27 <thread_start+0xa9>
c0009d0e:	68 fb e6 00 c0       	push   0xc000e6fb
c0009d13:	68 84 e8 00 c0       	push   0xc000e884
c0009d18:	6a 64                	push   0x64
c0009d1a:	68 eb e6 00 c0       	push   0xc000e6eb
c0009d1f:	e8 6c e7 ff ff       	call   c0008490 <panic_spin>
c0009d24:	83 c4 10             	add    esp,0x10
c0009d27:	51                   	push   ecx
c0009d28:	51                   	push   ecx
c0009d29:	56                   	push   esi
c0009d2a:	68 10 e7 02 c0       	push   0xc002e710
c0009d2f:	e8 13 0f 00 00       	call   c000ac47 <list_append>
c0009d34:	8d 65 f8             	lea    esp,[ebp-0x8]
c0009d37:	89 d8                	mov    eax,ebx
c0009d39:	5b                   	pop    ebx
c0009d3a:	5e                   	pop    esi
c0009d3b:	5d                   	pop    ebp
c0009d3c:	c3                   	ret    

c0009d3d <schedule>:
c0009d3d:	55                   	push   ebp
c0009d3e:	89 e5                	mov    ebp,esp
c0009d40:	56                   	push   esi
c0009d41:	53                   	push   ebx
c0009d42:	e8 7f fe ff ff       	call   c0009bc6 <running_thread>
c0009d47:	81 78 74 78 56 34 12 	cmp    DWORD PTR [eax+0x74],0x12345678
c0009d4e:	89 c3                	mov    ebx,eax
c0009d50:	74 19                	je     c0009d6b <schedule+0x2e>
c0009d52:	68 24 e7 00 c0       	push   0xc000e724
c0009d57:	68 94 e8 00 c0       	push   0xc000e894
c0009d5c:	6a 76                	push   0x76
c0009d5e:	68 eb e6 00 c0       	push   0xc000e6eb
c0009d63:	e8 28 e7 ff ff       	call   c0008490 <panic_spin>
c0009d68:	83 c4 10             	add    esp,0x10
c0009d6b:	8b 43 04             	mov    eax,DWORD PTR [ebx+0x4]
c0009d6e:	85 c0                	test   eax,eax
c0009d70:	75 47                	jne    c0009db9 <schedule+0x7c>
c0009d72:	50                   	push   eax
c0009d73:	50                   	push   eax
c0009d74:	8d 73 2c             	lea    esi,[ebx+0x2c]
c0009d77:	56                   	push   esi
c0009d78:	68 f8 e6 02 c0       	push   0xc002e6f8
c0009d7d:	e8 1e 0f 00 00       	call   c000aca0 <list_find>
c0009d82:	83 c4 10             	add    esp,0x10
c0009d85:	85 c0                	test   eax,eax
c0009d87:	74 19                	je     c0009da2 <schedule+0x65>
c0009d89:	68 4a e7 00 c0       	push   0xc000e74a
c0009d8e:	68 94 e8 00 c0       	push   0xc000e894
c0009d93:	6a 7a                	push   0x7a
c0009d95:	68 eb e6 00 c0       	push   0xc000e6eb
c0009d9a:	e8 f1 e6 ff ff       	call   c0008490 <panic_spin>
c0009d9f:	83 c4 10             	add    esp,0x10
c0009da2:	50                   	push   eax
c0009da3:	50                   	push   eax
c0009da4:	56                   	push   esi
c0009da5:	68 f8 e6 02 c0       	push   0xc002e6f8
c0009daa:	e8 98 0e 00 00       	call   c000ac47 <list_append>
c0009daf:	83 c4 10             	add    esp,0x10
c0009db2:	c7 43 04 00 00 00 00 	mov    DWORD PTR [ebx+0x4],0x0
c0009db9:	83 ec 0c             	sub    esp,0xc
c0009dbc:	68 f8 e6 02 c0       	push   0xc002e6f8
c0009dc1:	c7 05 38 ee 00 c0 00 	mov    DWORD PTR ds:0xc000ee38,0x0
c0009dc8:	00 00 00 
c0009dcb:	e8 49 0f 00 00       	call   c000ad19 <list_empty>
c0009dd0:	83 c4 10             	add    esp,0x10
c0009dd3:	85 c0                	test   eax,eax
c0009dd5:	74 1c                	je     c0009df3 <schedule+0xb6>
c0009dd7:	68 7f e7 00 c0       	push   0xc000e77f
c0009ddc:	68 94 e8 00 c0       	push   0xc000e894
c0009de1:	68 86 00 00 00       	push   0x86
c0009de6:	68 eb e6 00 c0       	push   0xc000e6eb
c0009deb:	e8 a0 e6 ff ff       	call   c0008490 <panic_spin>
c0009df0:	83 c4 10             	add    esp,0x10
c0009df3:	81 3d 04 e7 02 c0 f8 	cmp    DWORD PTR ds:0xc002e704,0xc002e6f8
c0009dfa:	e6 02 c0 
c0009dfd:	75 1c                	jne    c0009e1b <schedule+0xde>
c0009dff:	68 9a e7 00 c0       	push   0xc000e79a
c0009e04:	68 94 e8 00 c0       	push   0xc000e894
c0009e09:	68 87 00 00 00       	push   0x87
c0009e0e:	68 eb e6 00 c0       	push   0xc000e6eb
c0009e13:	e8 78 e6 ff ff       	call   c0008490 <panic_spin>
c0009e18:	83 c4 10             	add    esp,0x10
c0009e1b:	83 ec 0c             	sub    esp,0xc
c0009e1e:	68 f8 e6 02 c0       	push   0xc002e6f8
c0009e23:	e8 5e 0e 00 00       	call   c000ac86 <list_pop>
c0009e28:	8b 70 04             	mov    esi,DWORD PTR [eax+0x4]
c0009e2b:	a3 38 ee 00 c0       	mov    ds:0xc000ee38,eax
c0009e30:	c7 46 04 00 00 00 00 	mov    DWORD PTR [esi+0x4],0x0
c0009e37:	0f 20 da             	mov    edx,cr3
c0009e3a:	8b 46 38             	mov    eax,DWORD PTR [esi+0x38]
c0009e3d:	83 c4 10             	add    esp,0x10
c0009e40:	85 c0                	test   eax,eax
c0009e42:	74 1d                	je     c0009e61 <schedule+0x124>
c0009e44:	39 c2                	cmp    edx,eax
c0009e46:	74 19                	je     c0009e61 <schedule+0x124>
c0009e48:	50                   	push   eax
c0009e49:	50                   	push   eax
c0009e4a:	68 c3 e7 00 c0       	push   0xc000e7c3
c0009e4f:	6a 70                	push   0x70
c0009e51:	e8 af 10 00 00       	call   c000af05 <put_str>
c0009e56:	89 34 24             	mov    DWORD PTR [esp],esi
c0009e59:	e8 0c 03 00 00       	call   c000a16a <process_activate>
c0009e5e:	83 c4 10             	add    esp,0x10
c0009e61:	50                   	push   eax
c0009e62:	50                   	push   eax
c0009e63:	56                   	push   esi
c0009e64:	53                   	push   ebx
c0009e65:	e8 c6 fc ff ff       	call   c0009b30 <switch_to>
c0009e6a:	83 c4 10             	add    esp,0x10
c0009e6d:	8d 65 f8             	lea    esp,[ebp-0x8]
c0009e70:	5b                   	pop    ebx
c0009e71:	5e                   	pop    esi
c0009e72:	5d                   	pop    ebp
c0009e73:	c3                   	ret    

c0009e74 <thread_block>:
c0009e74:	55                   	push   ebp
c0009e75:	89 e5                	mov    ebp,esp
c0009e77:	56                   	push   esi
c0009e78:	53                   	push   ebx
c0009e79:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c0009e7c:	83 fb 01             	cmp    ebx,0x1
c0009e7f:	77 1c                	ja     c0009e9d <thread_block+0x29>
c0009e81:	68 cd e7 00 c0       	push   0xc000e7cd
c0009e86:	68 a0 e8 00 c0       	push   0xc000e8a0
c0009e8b:	68 a0 00 00 00       	push   0xa0
c0009e90:	68 eb e6 00 c0       	push   0xc000e6eb
c0009e95:	e8 f6 e5 ff ff       	call   c0008490 <panic_spin>
c0009e9a:	83 c4 10             	add    esp,0x10
c0009e9d:	e8 27 f2 ff ff       	call   c00090c9 <intr_disable>
c0009ea2:	89 c6                	mov    esi,eax
c0009ea4:	e8 1d fd ff ff       	call   c0009bc6 <running_thread>
c0009ea9:	89 58 04             	mov    DWORD PTR [eax+0x4],ebx
c0009eac:	e8 8c fe ff ff       	call   c0009d3d <schedule>
c0009eb1:	89 75 08             	mov    DWORD PTR [ebp+0x8],esi
c0009eb4:	8d 65 f8             	lea    esp,[ebp-0x8]
c0009eb7:	5b                   	pop    ebx
c0009eb8:	5e                   	pop    esi
c0009eb9:	5d                   	pop    ebp
c0009eba:	e9 f1 f2 ff ff       	jmp    c00091b0 <intr_set_status>

c0009ebf <thread_unblock>:
c0009ebf:	55                   	push   ebp
c0009ec0:	89 e5                	mov    ebp,esp
c0009ec2:	57                   	push   edi
c0009ec3:	56                   	push   esi
c0009ec4:	53                   	push   ebx
c0009ec5:	83 ec 0c             	sub    esp,0xc
c0009ec8:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c0009ecb:	e8 f9 f1 ff ff       	call   c00090c9 <intr_disable>
c0009ed0:	89 c7                	mov    edi,eax
c0009ed2:	8b 43 04             	mov    eax,DWORD PTR [ebx+0x4]
c0009ed5:	48                   	dec    eax
c0009ed6:	74 7a                	je     c0009f52 <thread_unblock+0x93>
c0009ed8:	51                   	push   ecx
c0009ed9:	51                   	push   ecx
c0009eda:	8d 73 2c             	lea    esi,[ebx+0x2c]
c0009edd:	56                   	push   esi
c0009ede:	68 f8 e6 02 c0       	push   0xc002e6f8
c0009ee3:	e8 b8 0d 00 00       	call   c000aca0 <list_find>
c0009ee8:	83 c4 10             	add    esp,0x10
c0009eeb:	85 c0                	test   eax,eax
c0009eed:	74 1c                	je     c0009f0b <thread_unblock+0x4c>
c0009eef:	68 fc e7 00 c0       	push   0xc000e7fc
c0009ef4:	68 b0 e8 00 c0       	push   0xc000e8b0
c0009ef9:	68 ae 00 00 00       	push   0xae
c0009efe:	68 eb e6 00 c0       	push   0xc000e6eb
c0009f03:	e8 88 e5 ff ff       	call   c0008490 <panic_spin>
c0009f08:	83 c4 10             	add    esp,0x10
c0009f0b:	52                   	push   edx
c0009f0c:	52                   	push   edx
c0009f0d:	56                   	push   esi
c0009f0e:	68 f8 e6 02 c0       	push   0xc002e6f8
c0009f13:	e8 88 0d 00 00       	call   c000aca0 <list_find>
c0009f18:	83 c4 10             	add    esp,0x10
c0009f1b:	85 c0                	test   eax,eax
c0009f1d:	74 1c                	je     c0009f3b <thread_unblock+0x7c>
c0009f1f:	68 2c e8 00 c0       	push   0xc000e82c
c0009f24:	68 b0 e8 00 c0       	push   0xc000e8b0
c0009f29:	68 b1 00 00 00       	push   0xb1
c0009f2e:	68 eb e6 00 c0       	push   0xc000e6eb
c0009f33:	e8 58 e5 ff ff       	call   c0008490 <panic_spin>
c0009f38:	83 c4 10             	add    esp,0x10
c0009f3b:	50                   	push   eax
c0009f3c:	50                   	push   eax
c0009f3d:	56                   	push   esi
c0009f3e:	68 f8 e6 02 c0       	push   0xc002e6f8
c0009f43:	e8 e7 0c 00 00       	call   c000ac2f <list_push>
c0009f48:	83 c4 10             	add    esp,0x10
c0009f4b:	c7 43 04 01 00 00 00 	mov    DWORD PTR [ebx+0x4],0x1
c0009f52:	89 7d 08             	mov    DWORD PTR [ebp+0x8],edi
c0009f55:	8d 65 f4             	lea    esp,[ebp-0xc]
c0009f58:	5b                   	pop    ebx
c0009f59:	5e                   	pop    esi
c0009f5a:	5f                   	pop    edi
c0009f5b:	5d                   	pop    ebp
c0009f5c:	e9 4f f2 ff ff       	jmp    c00091b0 <intr_set_status>
c0009f61:	00 00                	add    BYTE PTR [eax],al
	...

c0009f64 <set_segmdesc>:
c0009f64:	55                   	push   ebp
c0009f65:	89 e5                	mov    ebp,esp
c0009f67:	57                   	push   edi
c0009f68:	8b 7d 08             	mov    edi,DWORD PTR [ebp+0x8]
c0009f6b:	56                   	push   esi
c0009f6c:	89 d6                	mov    esi,edx
c0009f6e:	c1 ee 10             	shr    esi,0x10
c0009f71:	53                   	push   ebx
c0009f72:	89 f3                	mov    ebx,esi
c0009f74:	88 58 04             	mov    BYTE PTR [eax+0x4],bl
c0009f77:	89 fb                	mov    ebx,edi
c0009f79:	88 58 05             	mov    BYTE PTR [eax+0x5],bl
c0009f7c:	89 fb                	mov    ebx,edi
c0009f7e:	66 89 08             	mov    WORD PTR [eax],cx
c0009f81:	66 c1 eb 08          	shr    bx,0x8
c0009f85:	c1 e9 10             	shr    ecx,0x10
c0009f88:	83 e3 f0             	and    ebx,0xfffffff0
c0009f8b:	83 e1 0f             	and    ecx,0xf
c0009f8e:	09 cb                	or     ebx,ecx
c0009f90:	66 89 50 02          	mov    WORD PTR [eax+0x2],dx
c0009f94:	c1 ea 18             	shr    edx,0x18
c0009f97:	88 58 06             	mov    BYTE PTR [eax+0x6],bl
c0009f9a:	88 50 07             	mov    BYTE PTR [eax+0x7],dl
c0009f9d:	5b                   	pop    ebx
c0009f9e:	5e                   	pop    esi
c0009f9f:	5f                   	pop    edi
c0009fa0:	5d                   	pop    ebp
c0009fa1:	c3                   	ret    

c0009fa2 <init_tss>:
c0009fa2:	55                   	push   ebp
c0009fa3:	89 e5                	mov    ebp,esp
c0009fa5:	83 ec 1c             	sub    esp,0x1c
c0009fa8:	6a 6c                	push   0x6c
c0009faa:	6a 00                	push   0x0
c0009fac:	68 3c ee 00 c0       	push   0xc000ee3c
c0009fb1:	e8 ee 0f 00 00       	call   c000afa4 <memset>
c0009fb6:	b9 6b 00 00 00       	mov    ecx,0x6b
c0009fbb:	ba 3c ee 00 c0       	mov    edx,0xc000ee3c
c0009fc0:	b8 3c 7f 00 c0       	mov    eax,0xc0007f3c
c0009fc5:	c7 04 24 89 80 00 00 	mov    DWORD PTR [esp],0x8089
c0009fcc:	c7 05 44 ee 00 c0 10 	mov    DWORD PTR ds:0xc000ee44,0x10
c0009fd3:	00 00 00 
c0009fd6:	c7 05 a4 ee 00 c0 6c 	mov    DWORD PTR ds:0xc000eea4,0x6c
c0009fdd:	00 00 00 
c0009fe0:	e8 7f ff ff ff       	call   c0009f64 <set_segmdesc>
c0009fe5:	31 d2                	xor    edx,edx
c0009fe7:	b9 ff ff 0f 00       	mov    ecx,0xfffff
c0009fec:	b8 44 7f 00 c0       	mov    eax,0xc0007f44
c0009ff1:	c7 04 24 f8 c0 00 00 	mov    DWORD PTR [esp],0xc0f8
c0009ff8:	e8 67 ff ff ff       	call   c0009f64 <set_segmdesc>
c0009ffd:	b9 ff ff 0f 00       	mov    ecx,0xfffff
c000a002:	31 d2                	xor    edx,edx
c000a004:	b8 4c 7f 00 c0       	mov    eax,0xc0007f4c
c000a009:	c7 04 24 f2 c0 00 00 	mov    DWORD PTR [esp],0xc0f2
c000a010:	e8 4f ff ff ff       	call   c0009f64 <set_segmdesc>
c000a015:	b8 24 7f 00 c0       	mov    eax,0xc0007f24
c000a01a:	c1 e0 10             	shl    eax,0x10
c000a01d:	83 c8 37             	or     eax,0x37
c000a020:	89 45 f0             	mov    DWORD PTR [ebp-0x10],eax
c000a023:	c7 45 f4 00 00 00 00 	mov    DWORD PTR [ebp-0xc],0x0
c000a02a:	0f 01 55 f0          	lgdtd  [ebp-0x10]
c000a02e:	b8 18 00 00 00       	mov    eax,0x18
c000a033:	0f 00 d8             	ltr    ax
c000a036:	83 c4 10             	add    esp,0x10
c000a039:	c9                   	leave  
c000a03a:	c3                   	ret    

c000a03b <update_tss_esp0>:
c000a03b:	55                   	push   ebp
c000a03c:	89 e5                	mov    ebp,esp
c000a03e:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c000a041:	5d                   	pop    ebp
c000a042:	05 00 10 00 00       	add    eax,0x1000
c000a047:	a3 40 ee 00 c0       	mov    ds:0xc000ee40,eax
c000a04c:	c3                   	ret    
c000a04d:	00 00                	add    BYTE PTR [eax],al
	...

c000a050 <start_process>:
c000a050:	55                   	push   ebp
c000a051:	89 e5                	mov    ebp,esp
c000a053:	56                   	push   esi
c000a054:	53                   	push   ebx
c000a055:	e8 6c fb ff ff       	call   c0009bc6 <running_thread>
c000a05a:	8b 18                	mov    ebx,DWORD PTR [eax]
c000a05c:	8d b3 80 00 00 00    	lea    esi,[ebx+0x80]
c000a062:	89 30                	mov    DWORD PTR [eax],esi
c000a064:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c000a067:	c7 83 84 00 00 00 00 	mov    DWORD PTR [ebx+0x84],0x0
c000a06e:	00 00 00 
c000a071:	c7 83 88 00 00 00 00 	mov    DWORD PTR [ebx+0x88],0x0
c000a078:	00 00 00 
c000a07b:	c7 83 8c 00 00 00 00 	mov    DWORD PTR [ebx+0x8c],0x0
c000a082:	00 00 00 
c000a085:	89 83 b8 00 00 00    	mov    DWORD PTR [ebx+0xb8],eax
c000a08b:	c7 83 90 00 00 00 00 	mov    DWORD PTR [ebx+0x90],0x0
c000a092:	00 00 00 
c000a095:	c7 83 94 00 00 00 00 	mov    DWORD PTR [ebx+0x94],0x0
c000a09c:	00 00 00 
c000a09f:	c7 83 98 00 00 00 00 	mov    DWORD PTR [ebx+0x98],0x0
c000a0a6:	00 00 00 
c000a0a9:	c7 83 9c 00 00 00 00 	mov    DWORD PTR [ebx+0x9c],0x0
c000a0b0:	00 00 00 
c000a0b3:	c7 83 a0 00 00 00 00 	mov    DWORD PTR [ebx+0xa0],0x0
c000a0ba:	00 00 00 
c000a0bd:	c7 83 a4 00 00 00 00 	mov    DWORD PTR [ebx+0xa4],0x0
c000a0c4:	00 00 00 
c000a0c7:	c7 83 b0 00 00 00 2b 	mov    DWORD PTR [ebx+0xb0],0x2b
c000a0ce:	00 00 00 
c000a0d1:	c7 83 ac 00 00 00 2b 	mov    DWORD PTR [ebx+0xac],0x2b
c000a0d8:	00 00 00 
c000a0db:	c7 83 a8 00 00 00 2b 	mov    DWORD PTR [ebx+0xa8],0x2b
c000a0e2:	00 00 00 
c000a0e5:	c7 83 bc 00 00 00 23 	mov    DWORD PTR [ebx+0xbc],0x23
c000a0ec:	00 00 00 
c000a0ef:	c7 83 c0 00 00 00 02 	mov    DWORD PTR [ebx+0xc0],0x202
c000a0f6:	02 00 00 
c000a0f9:	50                   	push   eax
c000a0fa:	50                   	push   eax
c000a0fb:	68 00 f0 ff bf       	push   0xbffff000
c000a100:	6a 02                	push   0x2
c000a102:	e8 bf f6 ff ff       	call   c00097c6 <get_a_page>
c000a107:	c7 83 c8 00 00 00 2b 	mov    DWORD PTR [ebx+0xc8],0x2b
c000a10e:	00 00 00 
c000a111:	05 00 10 00 00       	add    eax,0x1000
c000a116:	89 83 c4 00 00 00    	mov    DWORD PTR [ebx+0xc4],eax
c000a11c:	89 f4                	mov    esp,esi
c000a11e:	e9 a1 ed ff ff       	jmp    c0008ec4 <intr_exit>
c000a123:	83 c4 10             	add    esp,0x10
c000a126:	8d 65 f8             	lea    esp,[ebp-0x8]
c000a129:	5b                   	pop    ebx
c000a12a:	5e                   	pop    esi
c000a12b:	5d                   	pop    ebp
c000a12c:	c3                   	ret    

c000a12d <page_dir_activate>:
c000a12d:	55                   	push   ebp
c000a12e:	89 e5                	mov    ebp,esp
c000a130:	53                   	push   ebx
c000a131:	52                   	push   edx
c000a132:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c000a135:	83 7b 38 00          	cmp    DWORD PTR [ebx+0x38],0x0
c000a139:	75 19                	jne    c000a154 <page_dir_activate+0x27>
c000a13b:	68 e8 e8 00 c0       	push   0xc000e8e8
c000a140:	68 f0 e9 00 c0       	push   0xc000e9f0
c000a145:	6a 2c                	push   0x2c
c000a147:	68 02 e9 00 c0       	push   0xc000e902
c000a14c:	e8 3f e3 ff ff       	call   c0008490 <panic_spin>
c000a151:	83 c4 10             	add    esp,0x10
c000a154:	83 ec 0c             	sub    esp,0xc
c000a157:	ff 73 38             	push   DWORD PTR [ebx+0x38]
c000a15a:	e8 0b f7 ff ff       	call   c000986a <addr_v2p>
c000a15f:	0f 22 d8             	mov    cr3,eax
c000a162:	83 c4 10             	add    esp,0x10
c000a165:	8b 5d fc             	mov    ebx,DWORD PTR [ebp-0x4]
c000a168:	c9                   	leave  
c000a169:	c3                   	ret    

c000a16a <process_activate>:
c000a16a:	55                   	push   ebp
c000a16b:	89 e5                	mov    ebp,esp
c000a16d:	53                   	push   ebx
c000a16e:	51                   	push   ecx
c000a16f:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c000a172:	85 db                	test   ebx,ebx
c000a174:	75 19                	jne    c000a18f <process_activate+0x25>
c000a176:	68 15 e9 00 c0       	push   0xc000e915
c000a17b:	68 04 ea 00 c0       	push   0xc000ea04
c000a180:	6a 3e                	push   0x3e
c000a182:	68 02 e9 00 c0       	push   0xc000e902
c000a187:	e8 04 e3 ff ff       	call   c0008490 <panic_spin>
c000a18c:	83 c4 10             	add    esp,0x10
c000a18f:	83 ec 0c             	sub    esp,0xc
c000a192:	53                   	push   ebx
c000a193:	e8 95 ff ff ff       	call   c000a12d <page_dir_activate>
c000a198:	83 c4 10             	add    esp,0x10
c000a19b:	83 7b 38 00          	cmp    DWORD PTR [ebx+0x38],0x0
c000a19f:	74 0c                	je     c000a1ad <process_activate+0x43>
c000a1a1:	89 5d 08             	mov    DWORD PTR [ebp+0x8],ebx
c000a1a4:	8b 5d fc             	mov    ebx,DWORD PTR [ebp-0x4]
c000a1a7:	c9                   	leave  
c000a1a8:	e9 8e fe ff ff       	jmp    c000a03b <update_tss_esp0>
c000a1ad:	8b 5d fc             	mov    ebx,DWORD PTR [ebp-0x4]
c000a1b0:	c9                   	leave  
c000a1b1:	c3                   	ret    

c000a1b2 <create_page_dir>:
c000a1b2:	55                   	push   ebp
c000a1b3:	89 e5                	mov    ebp,esp
c000a1b5:	53                   	push   ebx
c000a1b6:	83 ec 10             	sub    esp,0x10
c000a1b9:	6a 01                	push   0x1
c000a1bb:	e8 83 f5 ff ff       	call   c0009743 <get_kernel_page>
c000a1c0:	83 c4 10             	add    esp,0x10
c000a1c3:	85 c0                	test   eax,eax
c000a1c5:	89 c3                	mov    ebx,eax
c000a1c7:	75 10                	jne    c000a1d9 <create_page_dir+0x27>
c000a1c9:	50                   	push   eax
c000a1ca:	50                   	push   eax
c000a1cb:	68 25 e9 00 c0       	push   0xc000e925
c000a1d0:	6a 04                	push   0x4
c000a1d2:	e8 bc 01 00 00       	call   c000a393 <console_str>
c000a1d7:	eb 28                	jmp    c000a201 <create_page_dir+0x4f>
c000a1d9:	50                   	push   eax
c000a1da:	68 00 04 00 00       	push   0x400
c000a1df:	68 00 fc ff ff       	push   0xfffffc00
c000a1e4:	8d 83 00 0c 00 00    	lea    eax,[ebx+0xc00]
c000a1ea:	50                   	push   eax
c000a1eb:	e8 fb 0d 00 00       	call   c000afeb <memcpy>
c000a1f0:	89 1c 24             	mov    DWORD PTR [esp],ebx
c000a1f3:	e8 72 f6 ff ff       	call   c000986a <addr_v2p>
c000a1f8:	83 c8 07             	or     eax,0x7
c000a1fb:	89 83 fc 0f 00 00    	mov    DWORD PTR [ebx+0xffc],eax
c000a201:	89 d8                	mov    eax,ebx
c000a203:	83 c4 10             	add    esp,0x10
c000a206:	8b 5d fc             	mov    ebx,DWORD PTR [ebp-0x4]
c000a209:	c9                   	leave  
c000a20a:	c3                   	ret    

c000a20b <create_user_vaddr_memman>:
c000a20b:	55                   	push   ebp
c000a20c:	89 e5                	mov    ebp,esp
c000a20e:	83 ec 14             	sub    esp,0x14
c000a211:	6a 08                	push   0x8
c000a213:	e8 2b f5 ff ff       	call   c0009743 <get_kernel_page>
c000a218:	5a                   	pop    edx
c000a219:	59                   	pop    ecx
c000a21a:	50                   	push   eax
c000a21b:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c000a21e:	83 c0 3c             	add    eax,0x3c
c000a221:	50                   	push   eax
c000a222:	e8 a1 ef ff ff       	call   c00091c8 <init_memman>
c000a227:	83 c4 10             	add    esp,0x10
c000a22a:	c9                   	leave  
c000a22b:	c3                   	ret    

c000a22c <process_execute>:
c000a22c:	55                   	push   ebp
c000a22d:	89 e5                	mov    ebp,esp
c000a22f:	57                   	push   edi
c000a230:	56                   	push   esi
c000a231:	53                   	push   ebx
c000a232:	83 ec 18             	sub    esp,0x18
c000a235:	8b 75 08             	mov    esi,DWORD PTR [ebp+0x8]
c000a238:	6a 01                	push   0x1
c000a23a:	8b 7d 0c             	mov    edi,DWORD PTR [ebp+0xc]
c000a23d:	e8 01 f5 ff ff       	call   c0009743 <get_kernel_page>
c000a242:	83 c4 0c             	add    esp,0xc
c000a245:	6a 1f                	push   0x1f
c000a247:	57                   	push   edi
c000a248:	89 c3                	mov    ebx,eax
c000a24a:	50                   	push   eax
c000a24b:	e8 12 f9 ff ff       	call   c0009b62 <thread_init>
c000a250:	89 1c 24             	mov    DWORD PTR [esp],ebx
c000a253:	e8 b3 ff ff ff       	call   c000a20b <create_user_vaddr_memman>
c000a258:	83 c4 0c             	add    esp,0xc
c000a25b:	56                   	push   esi
c000a25c:	68 50 a0 00 c0       	push   0xc000a050
c000a261:	53                   	push   ebx
c000a262:	e8 c1 f9 ff ff       	call   c0009c28 <thread_create>
c000a267:	e8 46 ff ff ff       	call   c000a1b2 <create_page_dir>
c000a26c:	89 43 38             	mov    DWORD PTR [ebx+0x38],eax
c000a26f:	59                   	pop    ecx
c000a270:	5e                   	pop    esi
c000a271:	8d 73 20             	lea    esi,[ebx+0x20]
c000a274:	68 4f e9 00 c0       	push   0xc000e94f
c000a279:	6a 70                	push   0x70
c000a27b:	e8 85 0c 00 00       	call   c000af05 <put_str>
c000a280:	83 c4 0c             	add    esp,0xc
c000a283:	6a 10                	push   0x10
c000a285:	53                   	push   ebx
c000a286:	6a 70                	push   0x70
c000a288:	e8 a0 0c 00 00       	call   c000af2d <put_uint>
c000a28d:	5f                   	pop    edi
c000a28e:	58                   	pop    eax
c000a28f:	68 5a e9 00 c0       	push   0xc000e95a
c000a294:	6a 70                	push   0x70
c000a296:	e8 6a 0c 00 00       	call   c000af05 <put_str>
c000a29b:	83 c4 0c             	add    esp,0xc
c000a29e:	6a 10                	push   0x10
c000a2a0:	ff 73 38             	push   DWORD PTR [ebx+0x38]
c000a2a3:	6a 70                	push   0x70
c000a2a5:	e8 83 0c 00 00       	call   c000af2d <put_uint>
c000a2aa:	89 5b 30             	mov    DWORD PTR [ebx+0x30],ebx
c000a2ad:	89 5b 24             	mov    DWORD PTR [ebx+0x24],ebx
c000a2b0:	e8 14 ee ff ff       	call   c00090c9 <intr_disable>
c000a2b5:	89 c7                	mov    edi,eax
c000a2b7:	58                   	pop    eax
c000a2b8:	5a                   	pop    edx
c000a2b9:	56                   	push   esi
c000a2ba:	68 10 e7 02 c0       	push   0xc002e710
c000a2bf:	e8 dc 09 00 00       	call   c000aca0 <list_find>
c000a2c4:	83 c4 10             	add    esp,0x10
c000a2c7:	85 c0                	test   eax,eax
c000a2c9:	74 19                	je     c000a2e4 <process_execute+0xb8>
c000a2cb:	68 68 e9 00 c0       	push   0xc000e968
c000a2d0:	68 18 ea 00 c0       	push   0xc000ea18
c000a2d5:	6a 73                	push   0x73
c000a2d7:	68 02 e9 00 c0       	push   0xc000e902
c000a2dc:	e8 af e1 ff ff       	call   c0008490 <panic_spin>
c000a2e1:	83 c4 10             	add    esp,0x10
c000a2e4:	50                   	push   eax
c000a2e5:	83 c3 2c             	add    ebx,0x2c
c000a2e8:	50                   	push   eax
c000a2e9:	56                   	push   esi
c000a2ea:	68 10 e7 02 c0       	push   0xc002e710
c000a2ef:	e8 53 09 00 00       	call   c000ac47 <list_append>
c000a2f4:	58                   	pop    eax
c000a2f5:	5a                   	pop    edx
c000a2f6:	53                   	push   ebx
c000a2f7:	68 f8 e6 02 c0       	push   0xc002e6f8
c000a2fc:	e8 9f 09 00 00       	call   c000aca0 <list_find>
c000a301:	83 c4 10             	add    esp,0x10
c000a304:	85 c0                	test   eax,eax
c000a306:	74 19                	je     c000a321 <process_execute+0xf5>
c000a308:	68 94 e9 00 c0       	push   0xc000e994
c000a30d:	68 18 ea 00 c0       	push   0xc000ea18
c000a312:	6a 76                	push   0x76
c000a314:	68 02 e9 00 c0       	push   0xc000e902
c000a319:	e8 72 e1 ff ff       	call   c0008490 <panic_spin>
c000a31e:	83 c4 10             	add    esp,0x10
c000a321:	56                   	push   esi
c000a322:	56                   	push   esi
c000a323:	53                   	push   ebx
c000a324:	68 f8 e6 02 c0       	push   0xc002e6f8
c000a329:	e8 19 09 00 00       	call   c000ac47 <list_append>
c000a32e:	83 c4 10             	add    esp,0x10
c000a331:	89 7d 08             	mov    DWORD PTR [ebp+0x8],edi
c000a334:	8d 65 f4             	lea    esp,[ebp-0xc]
c000a337:	5b                   	pop    ebx
c000a338:	5e                   	pop    esi
c000a339:	5f                   	pop    edi
c000a33a:	5d                   	pop    ebp
c000a33b:	e9 70 ee ff ff       	jmp    c00091b0 <intr_set_status>

c000a340 <init_console>:
c000a340:	55                   	push   ebp
c000a341:	89 e5                	mov    ebp,esp
c000a343:	83 ec 14             	sub    esp,0x14
c000a346:	68 a8 ee 00 c0       	push   0xc000eea8
c000a34b:	e8 7f f5 ff ff       	call   c00098cf <lock_init>
c000a350:	83 c4 10             	add    esp,0x10
c000a353:	c9                   	leave  
c000a354:	c3                   	ret    

c000a355 <console_char>:
c000a355:	55                   	push   ebp
c000a356:	89 e5                	mov    ebp,esp
c000a358:	56                   	push   esi
c000a359:	8b 75 0c             	mov    esi,DWORD PTR [ebp+0xc]
c000a35c:	53                   	push   ebx
c000a35d:	8a 5d 08             	mov    bl,BYTE PTR [ebp+0x8]
c000a360:	83 ec 0c             	sub    esp,0xc
c000a363:	68 a8 ee 00 c0       	push   0xc000eea8
c000a368:	e8 ee f6 ff ff       	call   c0009a5b <lock_acquire>
c000a36d:	58                   	pop    eax
c000a36e:	5a                   	pop    edx
c000a36f:	89 f2                	mov    edx,esi
c000a371:	0f b6 c2             	movzx  eax,dl
c000a374:	50                   	push   eax
c000a375:	0f b6 c3             	movzx  eax,bl
c000a378:	50                   	push   eax
c000a379:	e8 e6 0a 00 00       	call   c000ae64 <put_char>
c000a37e:	83 c4 10             	add    esp,0x10
c000a381:	c7 45 08 a8 ee 00 c0 	mov    DWORD PTR [ebp+0x8],0xc000eea8
c000a388:	8d 65 f8             	lea    esp,[ebp-0x8]
c000a38b:	5b                   	pop    ebx
c000a38c:	5e                   	pop    esi
c000a38d:	5d                   	pop    ebp
c000a38e:	e9 23 f7 ff ff       	jmp    c0009ab6 <lock_release>

c000a393 <console_str>:
c000a393:	55                   	push   ebp
c000a394:	89 e5                	mov    ebp,esp
c000a396:	56                   	push   esi
c000a397:	8b 75 0c             	mov    esi,DWORD PTR [ebp+0xc]
c000a39a:	53                   	push   ebx
c000a39b:	8a 5d 08             	mov    bl,BYTE PTR [ebp+0x8]
c000a39e:	83 ec 0c             	sub    esp,0xc
c000a3a1:	68 a8 ee 00 c0       	push   0xc000eea8
c000a3a6:	e8 b0 f6 ff ff       	call   c0009a5b <lock_acquire>
c000a3ab:	59                   	pop    ecx
c000a3ac:	58                   	pop    eax
c000a3ad:	0f b6 c3             	movzx  eax,bl
c000a3b0:	56                   	push   esi
c000a3b1:	50                   	push   eax
c000a3b2:	e8 4e 0b 00 00       	call   c000af05 <put_str>
c000a3b7:	83 c4 10             	add    esp,0x10
c000a3ba:	c7 45 08 a8 ee 00 c0 	mov    DWORD PTR [ebp+0x8],0xc000eea8
c000a3c1:	8d 65 f8             	lea    esp,[ebp-0x8]
c000a3c4:	5b                   	pop    ebx
c000a3c5:	5e                   	pop    esi
c000a3c6:	5d                   	pop    ebp
c000a3c7:	e9 ea f6 ff ff       	jmp    c0009ab6 <lock_release>

c000a3cc <console_int>:
c000a3cc:	55                   	push   ebp
c000a3cd:	89 e5                	mov    ebp,esp
c000a3cf:	57                   	push   edi
c000a3d0:	56                   	push   esi
c000a3d1:	53                   	push   ebx
c000a3d2:	83 ec 18             	sub    esp,0x18
c000a3d5:	8b 7d 10             	mov    edi,DWORD PTR [ebp+0x10]
c000a3d8:	8b 75 0c             	mov    esi,DWORD PTR [ebp+0xc]
c000a3db:	8a 5d 08             	mov    bl,BYTE PTR [ebp+0x8]
c000a3de:	68 a8 ee 00 c0       	push   0xc000eea8
c000a3e3:	e8 73 f6 ff ff       	call   c0009a5b <lock_acquire>
c000a3e8:	83 c4 0c             	add    esp,0xc
c000a3eb:	57                   	push   edi
c000a3ec:	56                   	push   esi
c000a3ed:	0f b6 c3             	movzx  eax,bl
c000a3f0:	50                   	push   eax
c000a3f1:	e8 71 0b 00 00       	call   c000af67 <put_int>
c000a3f6:	83 c4 10             	add    esp,0x10
c000a3f9:	c7 45 08 a8 ee 00 c0 	mov    DWORD PTR [ebp+0x8],0xc000eea8
c000a400:	8d 65 f4             	lea    esp,[ebp-0xc]
c000a403:	5b                   	pop    ebx
c000a404:	5e                   	pop    esi
c000a405:	5f                   	pop    edi
c000a406:	5d                   	pop    ebp
c000a407:	e9 aa f6 ff ff       	jmp    c0009ab6 <lock_release>

c000a40c <console_uint>:
c000a40c:	55                   	push   ebp
c000a40d:	89 e5                	mov    ebp,esp
c000a40f:	57                   	push   edi
c000a410:	56                   	push   esi
c000a411:	53                   	push   ebx
c000a412:	83 ec 18             	sub    esp,0x18
c000a415:	8b 7d 10             	mov    edi,DWORD PTR [ebp+0x10]
c000a418:	8b 75 0c             	mov    esi,DWORD PTR [ebp+0xc]
c000a41b:	8a 5d 08             	mov    bl,BYTE PTR [ebp+0x8]
c000a41e:	68 a8 ee 00 c0       	push   0xc000eea8
c000a423:	e8 33 f6 ff ff       	call   c0009a5b <lock_acquire>
c000a428:	83 c4 0c             	add    esp,0xc
c000a42b:	57                   	push   edi
c000a42c:	56                   	push   esi
c000a42d:	0f b6 c3             	movzx  eax,bl
c000a430:	50                   	push   eax
c000a431:	e8 f7 0a 00 00       	call   c000af2d <put_uint>
c000a436:	83 c4 10             	add    esp,0x10
c000a439:	c7 45 08 a8 ee 00 c0 	mov    DWORD PTR [ebp+0x8],0xc000eea8
c000a440:	8d 65 f4             	lea    esp,[ebp-0xc]
c000a443:	5b                   	pop    ebx
c000a444:	5e                   	pop    esi
c000a445:	5f                   	pop    edi
c000a446:	5d                   	pop    ebp
c000a447:	e9 6a f6 ff ff       	jmp    c0009ab6 <lock_release>

c000a44c <init_cpu>:
c000a44c:	55                   	push   ebp
c000a44d:	31 c0                	xor    eax,eax
c000a44f:	89 e5                	mov    ebp,esp
c000a451:	b9 04 00 00 00       	mov    ecx,0x4
c000a456:	57                   	push   edi
c000a457:	56                   	push   esi
c000a458:	53                   	push   ebx
c000a459:	8d 7d d8             	lea    edi,[ebp-0x28]
c000a45c:	83 ec 3c             	sub    esp,0x3c
c000a45f:	f3 ab                	rep stos DWORD PTR es:[edi],eax
c000a461:	8d 7d c7             	lea    edi,[ebp-0x39]
c000a464:	8d 75 c7             	lea    esi,[ebp-0x39]
c000a467:	b1 11                	mov    cl,0x11
c000a469:	f3 aa                	rep stos BYTE PTR es:[edi],al
c000a46b:	bf 02 00 00 80       	mov    edi,0x80000002
c000a470:	eb 30                	jmp    c000a4a2 <init_cpu+0x56>
c000a472:	89 f8                	mov    eax,edi
c000a474:	31 c9                	xor    ecx,ecx
c000a476:	0f a2                	cpuid  
c000a478:	89 45 d8             	mov    DWORD PTR [ebp-0x28],eax
c000a47b:	47                   	inc    edi
c000a47c:	89 45 c7             	mov    DWORD PTR [ebp-0x39],eax
c000a47f:	50                   	push   eax
c000a480:	50                   	push   eax
c000a481:	56                   	push   esi
c000a482:	6a 07                	push   0x7
c000a484:	89 5d dc             	mov    DWORD PTR [ebp-0x24],ebx
c000a487:	89 4d e0             	mov    DWORD PTR [ebp-0x20],ecx
c000a48a:	89 55 e4             	mov    DWORD PTR [ebp-0x1c],edx
c000a48d:	89 5d cb             	mov    DWORD PTR [ebp-0x35],ebx
c000a490:	89 4d cf             	mov    DWORD PTR [ebp-0x31],ecx
c000a493:	89 55 d3             	mov    DWORD PTR [ebp-0x2d],edx
c000a496:	c6 45 d7 00          	mov    BYTE PTR [ebp-0x29],0x0
c000a49a:	e8 66 0a 00 00       	call   c000af05 <put_str>
c000a49f:	83 c4 10             	add    esp,0x10
c000a4a2:	81 ff 05 00 00 80    	cmp    edi,0x80000005
c000a4a8:	75 c8                	jne    c000a472 <init_cpu+0x26>
c000a4aa:	8d 65 f4             	lea    esp,[ebp-0xc]
c000a4ad:	5b                   	pop    ebx
c000a4ae:	5e                   	pop    esi
c000a4af:	5f                   	pop    edi
c000a4b0:	5d                   	pop    ebp
c000a4b1:	c3                   	ret    

c000a4b2 <cpu_info>:
c000a4b2:	55                   	push   ebp
c000a4b3:	31 c0                	xor    eax,eax
c000a4b5:	89 e5                	mov    ebp,esp
c000a4b7:	b9 04 00 00 00       	mov    ecx,0x4
c000a4bc:	57                   	push   edi
c000a4bd:	56                   	push   esi
c000a4be:	53                   	push   ebx
c000a4bf:	8d 7d d8             	lea    edi,[ebp-0x28]
c000a4c2:	83 ec 3c             	sub    esp,0x3c
c000a4c5:	f3 ab                	rep stos DWORD PTR es:[edi],eax
c000a4c7:	8d 7d c7             	lea    edi,[ebp-0x39]
c000a4ca:	8d 75 c7             	lea    esi,[ebp-0x39]
c000a4cd:	b1 11                	mov    cl,0x11
c000a4cf:	f3 aa                	rep stos BYTE PTR es:[edi],al
c000a4d1:	bf 02 00 00 80       	mov    edi,0x80000002
c000a4d6:	eb 30                	jmp    c000a508 <cpu_info+0x56>
c000a4d8:	89 f8                	mov    eax,edi
c000a4da:	31 c9                	xor    ecx,ecx
c000a4dc:	0f a2                	cpuid  
c000a4de:	89 55 e4             	mov    DWORD PTR [ebp-0x1c],edx
c000a4e1:	47                   	inc    edi
c000a4e2:	89 55 d3             	mov    DWORD PTR [ebp-0x2d],edx
c000a4e5:	52                   	push   edx
c000a4e6:	52                   	push   edx
c000a4e7:	56                   	push   esi
c000a4e8:	6a 07                	push   0x7
c000a4ea:	89 45 d8             	mov    DWORD PTR [ebp-0x28],eax
c000a4ed:	89 5d dc             	mov    DWORD PTR [ebp-0x24],ebx
c000a4f0:	89 4d e0             	mov    DWORD PTR [ebp-0x20],ecx
c000a4f3:	89 45 c7             	mov    DWORD PTR [ebp-0x39],eax
c000a4f6:	89 5d cb             	mov    DWORD PTR [ebp-0x35],ebx
c000a4f9:	89 4d cf             	mov    DWORD PTR [ebp-0x31],ecx
c000a4fc:	c6 45 d7 00          	mov    BYTE PTR [ebp-0x29],0x0
c000a500:	e8 00 0a 00 00       	call   c000af05 <put_str>
c000a505:	83 c4 10             	add    esp,0x10
c000a508:	81 ff 05 00 00 80    	cmp    edi,0x80000005
c000a50e:	75 c8                	jne    c000a4d8 <cpu_info+0x26>
c000a510:	8d 65 f4             	lea    esp,[ebp-0xc]
c000a513:	5b                   	pop    ebx
c000a514:	5e                   	pop    esi
c000a515:	5f                   	pop    edi
c000a516:	5d                   	pop    ebp
c000a517:	c3                   	ret    

c000a518 <init_keyboard>:
c000a518:	55                   	push   ebp
c000a519:	89 e5                	mov    ebp,esp
c000a51b:	83 ec 08             	sub    esp,0x8
c000a51e:	6a 40                	push   0x40
c000a520:	6a 08                	push   0x8
c000a522:	68 cc ee 00 c0       	push   0xc000eecc
c000a527:	68 2c e7 02 c0       	push   0xc002e72c
c000a52c:	e8 1f 04 00 00       	call   c000a950 <init_fifo>
c000a531:	83 c4 10             	add    esp,0x10
c000a534:	c9                   	leave  
c000a535:	c3                   	ret    

c000a536 <intr0x21_handler>:
c000a536:	55                   	push   ebp
c000a537:	b8 20 00 00 00       	mov    eax,0x20
c000a53c:	89 e5                	mov    ebp,esp
c000a53e:	89 c2                	mov    edx,eax
c000a540:	53                   	push   ebx
c000a541:	83 ec 14             	sub    esp,0x14
c000a544:	ee                   	out    dx,al
c000a545:	8b 0d 0c ef 00 c0    	mov    ecx,DWORD PTR ds:0xc000ef0c
c000a54b:	b2 60                	mov    dl,0x60
c000a54d:	8b 1d 10 ef 00 c0    	mov    ebx,DWORD PTR ds:0xc000ef10
c000a553:	ec                   	in     al,dx
c000a554:	66 3d e0 00          	cmp    ax,0xe0
c000a558:	75 0f                	jne    c000a569 <intr0x21_handler+0x33>
c000a55a:	c7 05 14 ef 00 c0 01 	mov    DWORD PTR ds:0xc000ef14,0x1
c000a561:	00 00 00 
c000a564:	e9 87 01 00 00       	jmp    c000a6f0 <intr0x21_handler+0x1ba>
c000a569:	83 3d 14 ef 00 c0 01 	cmp    DWORD PTR ds:0xc000ef14,0x1
c000a570:	75 0e                	jne    c000a580 <intr0x21_handler+0x4a>
c000a572:	66 0d 00 e0          	or     ax,0xe000
c000a576:	c7 05 14 ef 00 c0 00 	mov    DWORD PTR ds:0xc000ef14,0x0
c000a57d:	00 00 00 
c000a580:	a8 80                	test   al,0x80
c000a582:	74 61                	je     c000a5e5 <intr0x21_handler+0xaf>
c000a584:	24 7f                	and    al,0x7f
c000a586:	66 83 f8 36          	cmp    ax,0x36
c000a58a:	74 3b                	je     c000a5c7 <intr0x21_handler+0x91>
c000a58c:	77 12                	ja     c000a5a0 <intr0x21_handler+0x6a>
c000a58e:	66 83 f8 1d          	cmp    ax,0x1d
c000a592:	74 24                	je     c000a5b8 <intr0x21_handler+0x82>
c000a594:	66 83 f8 2a          	cmp    ax,0x2a
c000a598:	0f 85 52 01 00 00    	jne    c000a6f0 <intr0x21_handler+0x1ba>
c000a59e:	eb 27                	jmp    c000a5c7 <intr0x21_handler+0x91>
c000a5a0:	66 3d 1d e0          	cmp    ax,0xe01d
c000a5a4:	74 12                	je     c000a5b8 <intr0x21_handler+0x82>
c000a5a6:	66 3d 38 e0          	cmp    ax,0xe038
c000a5aa:	74 2a                	je     c000a5d6 <intr0x21_handler+0xa0>
c000a5ac:	66 83 f8 38          	cmp    ax,0x38
c000a5b0:	0f 85 3a 01 00 00    	jne    c000a6f0 <intr0x21_handler+0x1ba>
c000a5b6:	eb 1e                	jmp    c000a5d6 <intr0x21_handler+0xa0>
c000a5b8:	c7 05 18 ef 00 c0 00 	mov    DWORD PTR ds:0xc000ef18,0x0
c000a5bf:	00 00 00 
c000a5c2:	e9 29 01 00 00       	jmp    c000a6f0 <intr0x21_handler+0x1ba>
c000a5c7:	c7 05 0c ef 00 c0 00 	mov    DWORD PTR ds:0xc000ef0c,0x0
c000a5ce:	00 00 00 
c000a5d1:	e9 1a 01 00 00       	jmp    c000a6f0 <intr0x21_handler+0x1ba>
c000a5d6:	c7 05 1c ef 00 c0 00 	mov    DWORD PTR ds:0xc000ef1c,0x0
c000a5dd:	00 00 00 
c000a5e0:	e9 0b 01 00 00       	jmp    c000a6f0 <intr0x21_handler+0x1ba>
c000a5e5:	8d 50 ff             	lea    edx,[eax-0x1]
c000a5e8:	66 83 fa 39          	cmp    dx,0x39
c000a5ec:	76 10                	jbe    c000a5fe <intr0x21_handler+0xc8>
c000a5ee:	66 3d 38 e0          	cmp    ax,0xe038
c000a5f2:	74 0a                	je     c000a5fe <intr0x21_handler+0xc8>
c000a5f4:	66 3d 1d e0          	cmp    ax,0xe01d
c000a5f8:	0f 85 f2 00 00 00    	jne    c000a6f0 <intr0x21_handler+0x1ba>
c000a5fe:	66 83 f8 29          	cmp    ax,0x29
c000a602:	74 2d                	je     c000a631 <intr0x21_handler+0xfb>
c000a604:	66 83 f8 0d          	cmp    ax,0xd
c000a608:	76 27                	jbe    c000a631 <intr0x21_handler+0xfb>
c000a60a:	66 83 f8 1b          	cmp    ax,0x1b
c000a60e:	74 21                	je     c000a631 <intr0x21_handler+0xfb>
c000a610:	66 83 f8 1a          	cmp    ax,0x1a
c000a614:	74 1b                	je     c000a631 <intr0x21_handler+0xfb>
c000a616:	66 83 f8 27          	cmp    ax,0x27
c000a61a:	74 15                	je     c000a631 <intr0x21_handler+0xfb>
c000a61c:	66 83 f8 2b          	cmp    ax,0x2b
c000a620:	74 0f                	je     c000a631 <intr0x21_handler+0xfb>
c000a622:	66 83 f8 28          	cmp    ax,0x28
c000a626:	74 09                	je     c000a631 <intr0x21_handler+0xfb>
c000a628:	8d 50 cd             	lea    edx,[eax-0x33]
c000a62b:	66 83 fa 02          	cmp    dx,0x2
c000a62f:	77 06                	ja     c000a637 <intr0x21_handler+0x101>
c000a631:	49                   	dec    ecx
c000a632:	0f 94 c2             	sete   dl
c000a635:	eb 0f                	jmp    c000a646 <intr0x21_handler+0x110>
c000a637:	85 db                	test   ebx,ebx
c000a639:	74 06                	je     c000a641 <intr0x21_handler+0x10b>
c000a63b:	31 d2                	xor    edx,edx
c000a63d:	85 c9                	test   ecx,ecx
c000a63f:	75 08                	jne    c000a649 <intr0x21_handler+0x113>
c000a641:	09 cb                	or     ebx,ecx
c000a643:	0f 95 c2             	setne  dl
c000a646:	0f b6 d2             	movzx  edx,dl
c000a649:	66 25 ff 00          	and    ax,0xff
c000a64d:	0f b7 c8             	movzx  ecx,ax
c000a650:	8a 94 4a ac ea 00 c0 	mov    dl,BYTE PTR [edx+ecx*2-0x3fff1554]
c000a657:	84 d2                	test   dl,dl
c000a659:	88 55 f7             	mov    BYTE PTR [ebp-0x9],dl
c000a65c:	74 26                	je     c000a684 <intr0x21_handler+0x14e>
c000a65e:	83 ec 0c             	sub    esp,0xc
c000a661:	68 2c e7 02 c0       	push   0xc002e72c
c000a666:	e8 69 05 00 00       	call   c000abd4 <fifo_fill>
c000a66b:	83 c4 10             	add    esp,0x10
c000a66e:	85 c0                	test   eax,eax
c000a670:	75 7e                	jne    c000a6f0 <intr0x21_handler+0x1ba>
c000a672:	51                   	push   ecx
c000a673:	51                   	push   ecx
c000a674:	8d 45 f7             	lea    eax,[ebp-0x9]
c000a677:	50                   	push   eax
c000a678:	68 2c e7 02 c0       	push   0xc002e72c
c000a67d:	e8 38 03 00 00       	call   c000a9ba <fifo_put>
c000a682:	eb 69                	jmp    c000a6ed <intr0x21_handler+0x1b7>
c000a684:	66 83 f8 36          	cmp    ax,0x36
c000a688:	74 2a                	je     c000a6b4 <intr0x21_handler+0x17e>
c000a68a:	77 0e                	ja     c000a69a <intr0x21_handler+0x164>
c000a68c:	66 83 f8 1d          	cmp    ax,0x1d
c000a690:	74 16                	je     c000a6a8 <intr0x21_handler+0x172>
c000a692:	66 83 f8 2a          	cmp    ax,0x2a
c000a696:	75 47                	jne    c000a6df <intr0x21_handler+0x1a9>
c000a698:	eb 1a                	jmp    c000a6b4 <intr0x21_handler+0x17e>
c000a69a:	66 83 f8 38          	cmp    ax,0x38
c000a69e:	74 20                	je     c000a6c0 <intr0x21_handler+0x18a>
c000a6a0:	66 83 f8 3a          	cmp    ax,0x3a
c000a6a4:	75 39                	jne    c000a6df <intr0x21_handler+0x1a9>
c000a6a6:	eb 24                	jmp    c000a6cc <intr0x21_handler+0x196>
c000a6a8:	c7 05 18 ef 00 c0 01 	mov    DWORD PTR ds:0xc000ef18,0x1
c000a6af:	00 00 00 
c000a6b2:	eb 3c                	jmp    c000a6f0 <intr0x21_handler+0x1ba>
c000a6b4:	c7 05 0c ef 00 c0 01 	mov    DWORD PTR ds:0xc000ef0c,0x1
c000a6bb:	00 00 00 
c000a6be:	eb 30                	jmp    c000a6f0 <intr0x21_handler+0x1ba>
c000a6c0:	c7 05 1c ef 00 c0 01 	mov    DWORD PTR ds:0xc000ef1c,0x1
c000a6c7:	00 00 00 
c000a6ca:	eb 24                	jmp    c000a6f0 <intr0x21_handler+0x1ba>
c000a6cc:	31 c0                	xor    eax,eax
c000a6ce:	83 3d 10 ef 00 c0 00 	cmp    DWORD PTR ds:0xc000ef10,0x0
c000a6d5:	0f 94 c0             	sete   al
c000a6d8:	a3 10 ef 00 c0       	mov    ds:0xc000ef10,eax
c000a6dd:	eb 11                	jmp    c000a6f0 <intr0x21_handler+0x1ba>
c000a6df:	52                   	push   edx
c000a6e0:	52                   	push   edx
c000a6e1:	68 78 ea 00 c0       	push   0xc000ea78
c000a6e6:	6a 04                	push   0x4
c000a6e8:	e8 18 08 00 00       	call   c000af05 <put_str>
c000a6ed:	83 c4 10             	add    esp,0x10
c000a6f0:	8b 5d fc             	mov    ebx,DWORD PTR [ebp-0x4]
c000a6f3:	c9                   	leave  
c000a6f4:	c3                   	ret    
c000a6f5:	00 00                	add    BYTE PTR [eax],al
	...

c000a6f8 <get_time>:
c000a6f8:	55                   	push   ebp
c000a6f9:	89 e5                	mov    ebp,esp
c000a6fb:	57                   	push   edi
c000a6fc:	56                   	push   esi
c000a6fd:	be 70 00 00 00       	mov    esi,0x70
c000a702:	53                   	push   ebx
c000a703:	83 ec 1c             	sub    esp,0x1c
c000a706:	8b 7d 08             	mov    edi,DWORD PTR [ebp+0x8]
c000a709:	e8 ab e9 ff ff       	call   c00090b9 <intr_get_status>
c000a70e:	89 45 e0             	mov    DWORD PTR [ebp-0x20],eax
c000a711:	b8 89 00 00 00       	mov    eax,0x89
c000a716:	89 f2                	mov    edx,esi
c000a718:	ee                   	out    dx,al
c000a719:	bb 71 00 00 00       	mov    ebx,0x71
c000a71e:	89 da                	mov    edx,ebx
c000a720:	ec                   	in     al,dx
c000a721:	89 c1                	mov    ecx,eax
c000a723:	89 f2                	mov    edx,esi
c000a725:	b8 b2 00 00 00       	mov    eax,0xb2
c000a72a:	ee                   	out    dx,al
c000a72b:	89 da                	mov    edx,ebx
c000a72d:	ec                   	in     al,dx
c000a72e:	c1 e0 08             	shl    eax,0x8
c000a731:	89 f2                	mov    edx,esi
c000a733:	01 c1                	add    ecx,eax
c000a735:	b8 88 00 00 00       	mov    eax,0x88
c000a73a:	89 4f 14             	mov    DWORD PTR [edi+0x14],ecx
c000a73d:	ee                   	out    dx,al
c000a73e:	89 da                	mov    edx,ebx
c000a740:	ec                   	in     al,dx
c000a741:	89 47 10             	mov    DWORD PTR [edi+0x10],eax
c000a744:	89 f2                	mov    edx,esi
c000a746:	b8 87 00 00 00       	mov    eax,0x87
c000a74b:	ee                   	out    dx,al
c000a74c:	89 da                	mov    edx,ebx
c000a74e:	ec                   	in     al,dx
c000a74f:	89 47 0c             	mov    DWORD PTR [edi+0xc],eax
c000a752:	89 f2                	mov    edx,esi
c000a754:	b8 84 00 00 00       	mov    eax,0x84
c000a759:	ee                   	out    dx,al
c000a75a:	89 da                	mov    edx,ebx
c000a75c:	ec                   	in     al,dx
c000a75d:	89 47 08             	mov    DWORD PTR [edi+0x8],eax
c000a760:	89 f2                	mov    edx,esi
c000a762:	b8 82 00 00 00       	mov    eax,0x82
c000a767:	ee                   	out    dx,al
c000a768:	89 da                	mov    edx,ebx
c000a76a:	ec                   	in     al,dx
c000a76b:	b9 80 00 00 00       	mov    ecx,0x80
c000a770:	89 f2                	mov    edx,esi
c000a772:	89 47 04             	mov    DWORD PTR [edi+0x4],eax
c000a775:	89 c8                	mov    eax,ecx
c000a777:	ee                   	out    dx,al
c000a778:	89 da                	mov    edx,ebx
c000a77a:	ec                   	in     al,dx
c000a77b:	89 45 e4             	mov    DWORD PTR [ebp-0x1c],eax
c000a77e:	89 f2                	mov    edx,esi
c000a780:	89 07                	mov    DWORD PTR [edi],eax
c000a782:	89 c8                	mov    eax,ecx
c000a784:	ee                   	out    dx,al
c000a785:	89 da                	mov    edx,ebx
c000a787:	ec                   	in     al,dx
c000a788:	39 45 e4             	cmp    DWORD PTR [ebp-0x1c],eax
c000a78b:	75 84                	jne    c000a711 <get_time+0x19>
c000a78d:	b2 70                	mov    dl,0x70
c000a78f:	31 c0                	xor    eax,eax
c000a791:	ee                   	out    dx,al
c000a792:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
c000a795:	89 45 08             	mov    DWORD PTR [ebp+0x8],eax
c000a798:	83 c4 1c             	add    esp,0x1c
c000a79b:	5b                   	pop    ebx
c000a79c:	5e                   	pop    esi
c000a79d:	5f                   	pop    edi
c000a79e:	5d                   	pop    ebp
c000a79f:	e9 0c ea ff ff       	jmp    c00091b0 <intr_set_status>

c000a7a4 <init_pit>:
c000a7a4:	55                   	push   ebp
c000a7a5:	ba 43 00 00 00       	mov    edx,0x43
c000a7aa:	89 e5                	mov    ebp,esp
c000a7ac:	b8 34 00 00 00       	mov    eax,0x34
c000a7b1:	ee                   	out    dx,al
c000a7b2:	b2 40                	mov    dl,0x40
c000a7b4:	b0 9c                	mov    al,0x9c
c000a7b6:	ee                   	out    dx,al
c000a7b7:	b0 2e                	mov    al,0x2e
c000a7b9:	ee                   	out    dx,al
c000a7ba:	5d                   	pop    ebp
c000a7bb:	c3                   	ret    

c000a7bc <intr0x20_handler>:
c000a7bc:	55                   	push   ebp
c000a7bd:	b8 20 00 00 00       	mov    eax,0x20
c000a7c2:	89 e5                	mov    ebp,esp
c000a7c4:	83 ec 08             	sub    esp,0x8
c000a7c7:	89 c2                	mov    edx,eax
c000a7c9:	ee                   	out    dx,al
c000a7ca:	e8 f7 f3 ff ff       	call   c0009bc6 <running_thread>
c000a7cf:	ff 05 24 ef 00 c0    	inc    DWORD PTR ds:0xc000ef24
c000a7d5:	8a 50 19             	mov    dl,BYTE PTR [eax+0x19]
c000a7d8:	ff 40 1c             	inc    DWORD PTR [eax+0x1c]
c000a7db:	84 d2                	test   dl,dl
c000a7dd:	75 06                	jne    c000a7e5 <intr0x20_handler+0x29>
c000a7df:	c9                   	leave  
c000a7e0:	e9 58 f5 ff ff       	jmp    c0009d3d <schedule>
c000a7e5:	4a                   	dec    edx
c000a7e6:	88 50 19             	mov    BYTE PTR [eax+0x19],dl
c000a7e9:	c9                   	leave  
c000a7ea:	c3                   	ret    
	...

c000a7ec <bitmap_init>:
c000a7ec:	55                   	push   ebp
c000a7ed:	89 e5                	mov    ebp,esp
c000a7ef:	83 ec 0c             	sub    esp,0xc
c000a7f2:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c000a7f5:	ff 30                	push   DWORD PTR [eax]
c000a7f7:	6a 00                	push   0x0
c000a7f9:	ff 70 04             	push   DWORD PTR [eax+0x4]
c000a7fc:	e8 a3 07 00 00       	call   c000afa4 <memset>
c000a801:	83 c4 10             	add    esp,0x10
c000a804:	c9                   	leave  
c000a805:	c3                   	ret    

c000a806 <bitmap_scan_test>:
c000a806:	55                   	push   ebp
c000a807:	89 e5                	mov    ebp,esp
c000a809:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c000a80c:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
c000a80f:	5d                   	pop    ebp
c000a810:	8b 52 04             	mov    edx,DWORD PTR [edx+0x4]
c000a813:	89 c8                	mov    eax,ecx
c000a815:	83 e1 07             	and    ecx,0x7
c000a818:	c1 e8 03             	shr    eax,0x3
c000a81b:	0f b6 04 02          	movzx  eax,BYTE PTR [edx+eax*1]
c000a81f:	ba 01 00 00 00       	mov    edx,0x1
c000a824:	d3 e2                	shl    edx,cl
c000a826:	21 d0                	and    eax,edx
c000a828:	c3                   	ret    

c000a829 <bitmap_alloc>:
c000a829:	55                   	push   ebp
c000a82a:	89 e5                	mov    ebp,esp
c000a82c:	57                   	push   edi
c000a82d:	56                   	push   esi
c000a82e:	31 f6                	xor    esi,esi
c000a830:	53                   	push   ebx
c000a831:	83 ec 1c             	sub    esp,0x1c
c000a834:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c000a837:	8b 43 04             	mov    eax,DWORD PTR [ebx+0x4]
c000a83a:	eb 01                	jmp    c000a83d <bitmap_alloc+0x14>
c000a83c:	46                   	inc    esi
c000a83d:	80 3c 30 ff          	cmp    BYTE PTR [eax+esi*1],0xff
c000a841:	75 04                	jne    c000a847 <bitmap_alloc+0x1e>
c000a843:	3b 33                	cmp    esi,DWORD PTR [ebx]
c000a845:	72 f5                	jb     c000a83c <bitmap_alloc+0x13>
c000a847:	3b 33                	cmp    esi,DWORD PTR [ebx]
c000a849:	72 19                	jb     c000a864 <bitmap_alloc+0x3b>
c000a84b:	68 74 eb 00 c0       	push   0xc000eb74
c000a850:	68 e8 eb 00 c0       	push   0xc000ebe8
c000a855:	6a 2e                	push   0x2e
c000a857:	68 98 eb 00 c0       	push   0xc000eb98
c000a85c:	e8 2f dc ff ff       	call   c0008490 <panic_spin>
c000a861:	83 c4 10             	add    esp,0x10
c000a864:	8b 13                	mov    edx,DWORD PTR [ebx]
c000a866:	83 c8 ff             	or     eax,0xffffffff
c000a869:	39 d6                	cmp    esi,edx
c000a86b:	74 72                	je     c000a8df <bitmap_alloc+0xb6>
c000a86d:	8b 43 04             	mov    eax,DWORD PTR [ebx+0x4]
c000a870:	31 c9                	xor    ecx,ecx
c000a872:	bf 01 00 00 00       	mov    edi,0x1
c000a877:	89 75 e4             	mov    DWORD PTR [ebp-0x1c],esi
c000a87a:	89 55 dc             	mov    DWORD PTR [ebp-0x24],edx
c000a87d:	8a 04 30             	mov    al,BYTE PTR [eax+esi*1]
c000a880:	eb 01                	jmp    c000a883 <bitmap_alloc+0x5a>
c000a882:	41                   	inc    ecx
c000a883:	89 fe                	mov    esi,edi
c000a885:	d3 e6                	shl    esi,cl
c000a887:	89 f2                	mov    edx,esi
c000a889:	84 d0                	test   al,dl
c000a88b:	75 f5                	jne    c000a882 <bitmap_alloc+0x59>
c000a88d:	8b 75 e4             	mov    esi,DWORD PTR [ebp-0x1c]
c000a890:	83 7d 0c 01          	cmp    DWORD PTR [ebp+0xc],0x1
c000a894:	8b 55 dc             	mov    edx,DWORD PTR [ebp-0x24]
c000a897:	8d 0c f1             	lea    ecx,[ecx+esi*8]
c000a89a:	89 c8                	mov    eax,ecx
c000a89c:	74 41                	je     c000a8df <bitmap_alloc+0xb6>
c000a89e:	8d 3c d5 00 00 00 00 	lea    edi,[edx*8+0x0]
c000a8a5:	be 01 00 00 00       	mov    esi,0x1
c000a8aa:	29 cf                	sub    edi,ecx
c000a8ac:	8d 51 01             	lea    edx,[ecx+0x1]
c000a8af:	eb 27                	jmp    c000a8d8 <bitmap_alloc+0xaf>
c000a8b1:	50                   	push   eax
c000a8b2:	46                   	inc    esi
c000a8b3:	50                   	push   eax
c000a8b4:	52                   	push   edx
c000a8b5:	53                   	push   ebx
c000a8b6:	89 55 e0             	mov    DWORD PTR [ebp-0x20],edx
c000a8b9:	e8 48 ff ff ff       	call   c000a806 <bitmap_scan_test>
c000a8be:	83 c4 10             	add    esp,0x10
c000a8c1:	8b 55 e0             	mov    edx,DWORD PTR [ebp-0x20]
c000a8c4:	85 c0                	test   eax,eax
c000a8c6:	74 02                	je     c000a8ca <bitmap_alloc+0xa1>
c000a8c8:	31 f6                	xor    esi,esi
c000a8ca:	3b 75 0c             	cmp    esi,DWORD PTR [ebp+0xc]
c000a8cd:	75 07                	jne    c000a8d6 <bitmap_alloc+0xad>
c000a8cf:	29 f2                	sub    edx,esi
c000a8d1:	8d 42 01             	lea    eax,[edx+0x1]
c000a8d4:	eb 09                	jmp    c000a8df <bitmap_alloc+0xb6>
c000a8d6:	4f                   	dec    edi
c000a8d7:	42                   	inc    edx
c000a8d8:	85 ff                	test   edi,edi
c000a8da:	75 d5                	jne    c000a8b1 <bitmap_alloc+0x88>
c000a8dc:	83 c8 ff             	or     eax,0xffffffff
c000a8df:	8d 65 f4             	lea    esp,[ebp-0xc]
c000a8e2:	5b                   	pop    ebx
c000a8e3:	5e                   	pop    esi
c000a8e4:	5f                   	pop    edi
c000a8e5:	5d                   	pop    ebp
c000a8e6:	c3                   	ret    

c000a8e7 <bitmap_set>:
c000a8e7:	55                   	push   ebp
c000a8e8:	89 e5                	mov    ebp,esp
c000a8ea:	57                   	push   edi
c000a8eb:	56                   	push   esi
c000a8ec:	53                   	push   ebx
c000a8ed:	83 ec 0c             	sub    esp,0xc
c000a8f0:	8a 5d 10             	mov    bl,BYTE PTR [ebp+0x10]
c000a8f3:	8b 75 08             	mov    esi,DWORD PTR [ebp+0x8]
c000a8f6:	8b 7d 0c             	mov    edi,DWORD PTR [ebp+0xc]
c000a8f9:	80 fb 01             	cmp    bl,0x1
c000a8fc:	76 19                	jbe    c000a917 <bitmap_set+0x30>
c000a8fe:	68 a5 eb 00 c0       	push   0xc000eba5
c000a903:	68 f8 eb 00 c0       	push   0xc000ebf8
c000a908:	6a 65                	push   0x65
c000a90a:	68 98 eb 00 c0       	push   0xc000eb98
c000a90f:	e8 7c db ff ff       	call   c0008490 <panic_spin>
c000a914:	83 c4 10             	add    esp,0x10
c000a917:	89 fa                	mov    edx,edi
c000a919:	89 f9                	mov    ecx,edi
c000a91b:	c1 ea 03             	shr    edx,0x3
c000a91e:	83 e1 07             	and    ecx,0x7
c000a921:	84 db                	test   bl,bl
c000a923:	74 06                	je     c000a92b <bitmap_set+0x44>
c000a925:	fe cb                	dec    bl
c000a927:	75 1e                	jne    c000a947 <bitmap_set+0x60>
c000a929:	eb 10                	jmp    c000a93b <bitmap_set+0x54>
c000a92b:	03 56 04             	add    edx,DWORD PTR [esi+0x4]
c000a92e:	b8 01 00 00 00       	mov    eax,0x1
c000a933:	d3 e0                	shl    eax,cl
c000a935:	f7 d0                	not    eax
c000a937:	20 02                	and    BYTE PTR [edx],al
c000a939:	eb 0c                	jmp    c000a947 <bitmap_set+0x60>
c000a93b:	03 56 04             	add    edx,DWORD PTR [esi+0x4]
c000a93e:	b8 01 00 00 00       	mov    eax,0x1
c000a943:	d3 e0                	shl    eax,cl
c000a945:	08 02                	or     BYTE PTR [edx],al
c000a947:	8d 65 f4             	lea    esp,[ebp-0xc]
c000a94a:	5b                   	pop    ebx
c000a94b:	5e                   	pop    esi
c000a94c:	5f                   	pop    edi
c000a94d:	5d                   	pop    ebp
c000a94e:	c3                   	ret    
	...

c000a950 <init_fifo>:
c000a950:	55                   	push   ebp
c000a951:	89 e5                	mov    ebp,esp
c000a953:	57                   	push   edi
c000a954:	56                   	push   esi
c000a955:	53                   	push   ebx
c000a956:	83 ec 28             	sub    esp,0x28
c000a959:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c000a95c:	8b 75 10             	mov    esi,DWORD PTR [ebp+0x10]
c000a95f:	8b 45 14             	mov    eax,DWORD PTR [ebp+0x14]
c000a962:	8b 7d 0c             	mov    edi,DWORD PTR [ebp+0xc]
c000a965:	53                   	push   ebx
c000a966:	89 45 e4             	mov    DWORD PTR [ebp-0x1c],eax
c000a969:	e8 61 ef ff ff       	call   c00098cf <lock_init>
c000a96e:	83 c4 10             	add    esp,0x10
c000a971:	83 fe 10             	cmp    esi,0x10
c000a974:	c7 43 24 00 00 00 00 	mov    DWORD PTR [ebx+0x24],0x0
c000a97b:	c7 43 28 00 00 00 00 	mov    DWORD PTR [ebx+0x28],0x0
c000a982:	89 73 30             	mov    DWORD PTR [ebx+0x30],esi
c000a985:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
c000a988:	74 11                	je     c000a99b <init_fifo+0x4b>
c000a98a:	7f 05                	jg     c000a991 <init_fifo+0x41>
c000a98c:	83 fe 08             	cmp    esi,0x8
c000a98f:	eb 08                	jmp    c000a999 <init_fifo+0x49>
c000a991:	83 fe 20             	cmp    esi,0x20
c000a994:	74 05                	je     c000a99b <init_fifo+0x4b>
c000a996:	83 fe 40             	cmp    esi,0x40
c000a999:	75 03                	jne    c000a99e <init_fifo+0x4e>
c000a99b:	89 7b 2c             	mov    DWORD PTR [ebx+0x2c],edi
c000a99e:	89 43 34             	mov    DWORD PTR [ebx+0x34],eax
c000a9a1:	89 43 38             	mov    DWORD PTR [ebx+0x38],eax
c000a9a4:	c7 43 3c 00 00 00 00 	mov    DWORD PTR [ebx+0x3c],0x0
c000a9ab:	c7 43 40 00 00 00 00 	mov    DWORD PTR [ebx+0x40],0x0
c000a9b2:	8d 65 f4             	lea    esp,[ebp-0xc]
c000a9b5:	5b                   	pop    ebx
c000a9b6:	5e                   	pop    esi
c000a9b7:	5f                   	pop    edi
c000a9b8:	5d                   	pop    ebp
c000a9b9:	c3                   	ret    

c000a9ba <fifo_put>:
c000a9ba:	55                   	push   ebp
c000a9bb:	89 e5                	mov    ebp,esp
c000a9bd:	57                   	push   edi
c000a9be:	56                   	push   esi
c000a9bf:	53                   	push   ebx
c000a9c0:	83 ec 1c             	sub    esp,0x1c
c000a9c3:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c000a9c6:	8b 75 0c             	mov    esi,DWORD PTR [ebp+0xc]
c000a9c9:	e8 fb e6 ff ff       	call   c00090c9 <intr_disable>
c000a9ce:	89 45 e4             	mov    DWORD PTR [ebp-0x1c],eax
c000a9d1:	eb 28                	jmp    c000a9fb <fifo_put+0x41>
c000a9d3:	83 ec 0c             	sub    esp,0xc
c000a9d6:	53                   	push   ebx
c000a9d7:	e8 7f f0 ff ff       	call   c0009a5b <lock_acquire>
c000a9dc:	e8 e5 f1 ff ff       	call   c0009bc6 <running_thread>
c000a9e1:	89 43 24             	mov    DWORD PTR [ebx+0x24],eax
c000a9e4:	c7 04 24 02 00 00 00 	mov    DWORD PTR [esp],0x2
c000a9eb:	e8 84 f4 ff ff       	call   c0009e74 <thread_block>
c000a9f0:	89 1c 24             	mov    DWORD PTR [esp],ebx
c000a9f3:	e8 be f0 ff ff       	call   c0009ab6 <lock_release>
c000a9f8:	83 c4 10             	add    esp,0x10
c000a9fb:	8b 43 38             	mov    eax,DWORD PTR [ebx+0x38]
c000a9fe:	85 c0                	test   eax,eax
c000aa00:	74 d1                	je     c000a9d3 <fifo_put+0x19>
c000aa02:	48                   	dec    eax
c000aa03:	89 43 38             	mov    DWORD PTR [ebx+0x38],eax
c000aa06:	8b 43 30             	mov    eax,DWORD PTR [ebx+0x30]
c000aa09:	83 f8 10             	cmp    eax,0x10
c000aa0c:	74 28                	je     c000aa36 <fifo_put+0x7c>
c000aa0e:	83 f8 08             	cmp    eax,0x8
c000aa11:	74 23                	je     c000aa36 <fifo_put+0x7c>
c000aa13:	83 f8 20             	cmp    eax,0x20
c000aa16:	74 1e                	je     c000aa36 <fifo_put+0x7c>
c000aa18:	83 f8 40             	cmp    eax,0x40
c000aa1b:	74 19                	je     c000aa36 <fifo_put+0x7c>
c000aa1d:	68 04 ec 00 c0       	push   0xc000ec04
c000aa22:	68 84 ec 00 c0       	push   0xc000ec84
c000aa27:	6a 3b                	push   0x3b
c000aa29:	68 50 ec 00 c0       	push   0xc000ec50
c000aa2e:	e8 5d da ff ff       	call   c0008490 <panic_spin>
c000aa33:	83 c4 10             	add    esp,0x10
c000aa36:	8b 53 30             	mov    edx,DWORD PTR [ebx+0x30]
c000aa39:	8b 43 40             	mov    eax,DWORD PTR [ebx+0x40]
c000aa3c:	83 fa 10             	cmp    edx,0x10
c000aa3f:	74 1f                	je     c000aa60 <fifo_put+0xa6>
c000aa41:	7f 07                	jg     c000aa4a <fifo_put+0x90>
c000aa43:	83 fa 08             	cmp    edx,0x8
c000aa46:	75 3d                	jne    c000aa85 <fifo_put+0xcb>
c000aa48:	eb 0c                	jmp    c000aa56 <fifo_put+0x9c>
c000aa4a:	83 fa 20             	cmp    edx,0x20
c000aa4d:	74 1d                	je     c000aa6c <fifo_put+0xb2>
c000aa4f:	83 fa 40             	cmp    edx,0x40
c000aa52:	75 31                	jne    c000aa85 <fifo_put+0xcb>
c000aa54:	eb 20                	jmp    c000aa76 <fifo_put+0xbc>
c000aa56:	8a 0e                	mov    cl,BYTE PTR [esi]
c000aa58:	8b 53 2c             	mov    edx,DWORD PTR [ebx+0x2c]
c000aa5b:	88 0c 02             	mov    BYTE PTR [edx+eax*1],cl
c000aa5e:	eb 25                	jmp    c000aa85 <fifo_put+0xcb>
c000aa60:	66 8b 0e             	mov    cx,WORD PTR [esi]
c000aa63:	8b 53 2c             	mov    edx,DWORD PTR [ebx+0x2c]
c000aa66:	66 89 0c 42          	mov    WORD PTR [edx+eax*2],cx
c000aa6a:	eb 19                	jmp    c000aa85 <fifo_put+0xcb>
c000aa6c:	8b 0e                	mov    ecx,DWORD PTR [esi]
c000aa6e:	8b 53 2c             	mov    edx,DWORD PTR [ebx+0x2c]
c000aa71:	89 0c 82             	mov    DWORD PTR [edx+eax*4],ecx
c000aa74:	eb 0f                	jmp    c000aa85 <fifo_put+0xcb>
c000aa76:	8b 7e 04             	mov    edi,DWORD PTR [esi+0x4]
c000aa79:	8b 53 2c             	mov    edx,DWORD PTR [ebx+0x2c]
c000aa7c:	8b 36                	mov    esi,DWORD PTR [esi]
c000aa7e:	89 7c c2 04          	mov    DWORD PTR [edx+eax*8+0x4],edi
c000aa82:	89 34 c2             	mov    DWORD PTR [edx+eax*8],esi
c000aa85:	8b 43 40             	mov    eax,DWORD PTR [ebx+0x40]
c000aa88:	40                   	inc    eax
c000aa89:	99                   	cdq    
c000aa8a:	f7 7b 34             	idiv   DWORD PTR [ebx+0x34]
c000aa8d:	8b 43 28             	mov    eax,DWORD PTR [ebx+0x28]
c000aa90:	85 c0                	test   eax,eax
c000aa92:	89 53 40             	mov    DWORD PTR [ebx+0x40],edx
c000aa95:	74 13                	je     c000aaaa <fifo_put+0xf0>
c000aa97:	83 ec 0c             	sub    esp,0xc
c000aa9a:	50                   	push   eax
c000aa9b:	e8 1f f4 ff ff       	call   c0009ebf <thread_unblock>
c000aaa0:	83 c4 10             	add    esp,0x10
c000aaa3:	c7 43 28 00 00 00 00 	mov    DWORD PTR [ebx+0x28],0x0
c000aaaa:	83 ec 0c             	sub    esp,0xc
c000aaad:	ff 75 e4             	push   DWORD PTR [ebp-0x1c]
c000aab0:	e8 fb e6 ff ff       	call   c00091b0 <intr_set_status>
c000aab5:	8d 65 f4             	lea    esp,[ebp-0xc]
c000aab8:	31 c0                	xor    eax,eax
c000aaba:	5b                   	pop    ebx
c000aabb:	5e                   	pop    esi
c000aabc:	5f                   	pop    edi
c000aabd:	5d                   	pop    ebp
c000aabe:	c3                   	ret    

c000aabf <fifo_get>:
c000aabf:	55                   	push   ebp
c000aac0:	89 e5                	mov    ebp,esp
c000aac2:	57                   	push   edi
c000aac3:	56                   	push   esi
c000aac4:	53                   	push   ebx
c000aac5:	83 ec 0c             	sub    esp,0xc
c000aac8:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c000aacb:	8b 75 0c             	mov    esi,DWORD PTR [ebp+0xc]
c000aace:	e8 f6 e5 ff ff       	call   c00090c9 <intr_disable>
c000aad3:	89 c7                	mov    edi,eax
c000aad5:	8b 43 30             	mov    eax,DWORD PTR [ebx+0x30]
c000aad8:	83 f8 10             	cmp    eax,0x10
c000aadb:	74 4f                	je     c000ab2c <fifo_get+0x6d>
c000aadd:	83 f8 08             	cmp    eax,0x8
c000aae0:	74 4a                	je     c000ab2c <fifo_get+0x6d>
c000aae2:	83 f8 20             	cmp    eax,0x20
c000aae5:	74 45                	je     c000ab2c <fifo_get+0x6d>
c000aae7:	83 f8 40             	cmp    eax,0x40
c000aaea:	74 40                	je     c000ab2c <fifo_get+0x6d>
c000aaec:	68 04 ec 00 c0       	push   0xc000ec04
c000aaf1:	68 90 ec 00 c0       	push   0xc000ec90
c000aaf6:	6a 5a                	push   0x5a
c000aaf8:	68 50 ec 00 c0       	push   0xc000ec50
c000aafd:	e8 8e d9 ff ff       	call   c0008490 <panic_spin>
c000ab02:	eb 25                	jmp    c000ab29 <fifo_get+0x6a>
c000ab04:	83 ec 0c             	sub    esp,0xc
c000ab07:	53                   	push   ebx
c000ab08:	e8 4e ef ff ff       	call   c0009a5b <lock_acquire>
c000ab0d:	e8 b4 f0 ff ff       	call   c0009bc6 <running_thread>
c000ab12:	89 43 28             	mov    DWORD PTR [ebx+0x28],eax
c000ab15:	c7 04 24 02 00 00 00 	mov    DWORD PTR [esp],0x2
c000ab1c:	e8 53 f3 ff ff       	call   c0009e74 <thread_block>
c000ab21:	89 1c 24             	mov    DWORD PTR [esp],ebx
c000ab24:	e8 8d ef ff ff       	call   c0009ab6 <lock_release>
c000ab29:	83 c4 10             	add    esp,0x10
c000ab2c:	8b 43 38             	mov    eax,DWORD PTR [ebx+0x38]
c000ab2f:	3b 43 34             	cmp    eax,DWORD PTR [ebx+0x34]
c000ab32:	74 d0                	je     c000ab04 <fifo_get+0x45>
c000ab34:	8b 53 30             	mov    edx,DWORD PTR [ebx+0x30]
c000ab37:	40                   	inc    eax
c000ab38:	89 43 38             	mov    DWORD PTR [ebx+0x38],eax
c000ab3b:	8b 43 3c             	mov    eax,DWORD PTR [ebx+0x3c]
c000ab3e:	83 fa 10             	cmp    edx,0x10
c000ab41:	74 1f                	je     c000ab62 <fifo_get+0xa3>
c000ab43:	7f 07                	jg     c000ab4c <fifo_get+0x8d>
c000ab45:	83 fa 08             	cmp    edx,0x8
c000ab48:	75 3e                	jne    c000ab88 <fifo_get+0xc9>
c000ab4a:	eb 0c                	jmp    c000ab58 <fifo_get+0x99>
c000ab4c:	83 fa 20             	cmp    edx,0x20
c000ab4f:	74 1d                	je     c000ab6e <fifo_get+0xaf>
c000ab51:	83 fa 40             	cmp    edx,0x40
c000ab54:	75 32                	jne    c000ab88 <fifo_get+0xc9>
c000ab56:	eb 20                	jmp    c000ab78 <fifo_get+0xb9>
c000ab58:	8b 53 2c             	mov    edx,DWORD PTR [ebx+0x2c]
c000ab5b:	8a 04 02             	mov    al,BYTE PTR [edx+eax*1]
c000ab5e:	88 06                	mov    BYTE PTR [esi],al
c000ab60:	eb 26                	jmp    c000ab88 <fifo_get+0xc9>
c000ab62:	8b 53 2c             	mov    edx,DWORD PTR [ebx+0x2c]
c000ab65:	66 8b 04 42          	mov    ax,WORD PTR [edx+eax*2]
c000ab69:	66 89 06             	mov    WORD PTR [esi],ax
c000ab6c:	eb 1a                	jmp    c000ab88 <fifo_get+0xc9>
c000ab6e:	8b 53 2c             	mov    edx,DWORD PTR [ebx+0x2c]
c000ab71:	8b 04 82             	mov    eax,DWORD PTR [edx+eax*4]
c000ab74:	89 06                	mov    DWORD PTR [esi],eax
c000ab76:	eb 10                	jmp    c000ab88 <fifo_get+0xc9>
c000ab78:	8b 53 2c             	mov    edx,DWORD PTR [ebx+0x2c]
c000ab7b:	8d 14 c2             	lea    edx,[edx+eax*8]
c000ab7e:	8b 02                	mov    eax,DWORD PTR [edx]
c000ab80:	8b 52 04             	mov    edx,DWORD PTR [edx+0x4]
c000ab83:	89 06                	mov    DWORD PTR [esi],eax
c000ab85:	89 56 04             	mov    DWORD PTR [esi+0x4],edx
c000ab88:	8b 43 3c             	mov    eax,DWORD PTR [ebx+0x3c]
c000ab8b:	40                   	inc    eax
c000ab8c:	99                   	cdq    
c000ab8d:	f7 7b 34             	idiv   DWORD PTR [ebx+0x34]
c000ab90:	8b 43 24             	mov    eax,DWORD PTR [ebx+0x24]
c000ab93:	85 c0                	test   eax,eax
c000ab95:	89 53 3c             	mov    DWORD PTR [ebx+0x3c],edx
c000ab98:	74 13                	je     c000abad <fifo_get+0xee>
c000ab9a:	83 ec 0c             	sub    esp,0xc
c000ab9d:	50                   	push   eax
c000ab9e:	e8 1c f3 ff ff       	call   c0009ebf <thread_unblock>
c000aba3:	83 c4 10             	add    esp,0x10
c000aba6:	c7 43 24 00 00 00 00 	mov    DWORD PTR [ebx+0x24],0x0
c000abad:	83 ec 0c             	sub    esp,0xc
c000abb0:	57                   	push   edi
c000abb1:	e8 fa e5 ff ff       	call   c00091b0 <intr_set_status>
c000abb6:	8d 65 f4             	lea    esp,[ebp-0xc]
c000abb9:	31 c0                	xor    eax,eax
c000abbb:	5b                   	pop    ebx
c000abbc:	5e                   	pop    esi
c000abbd:	5f                   	pop    edi
c000abbe:	5d                   	pop    ebp
c000abbf:	c3                   	ret    

c000abc0 <fifo_empty>:
c000abc0:	55                   	push   ebp
c000abc1:	89 e5                	mov    ebp,esp
c000abc3:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c000abc6:	5d                   	pop    ebp
c000abc7:	8b 50 34             	mov    edx,DWORD PTR [eax+0x34]
c000abca:	39 50 38             	cmp    DWORD PTR [eax+0x38],edx
c000abcd:	0f 94 c0             	sete   al
c000abd0:	0f b6 c0             	movzx  eax,al
c000abd3:	c3                   	ret    

c000abd4 <fifo_fill>:
c000abd4:	55                   	push   ebp
c000abd5:	89 e5                	mov    ebp,esp
c000abd7:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c000abda:	5d                   	pop    ebp
c000abdb:	83 78 38 00          	cmp    DWORD PTR [eax+0x38],0x0
c000abdf:	0f 94 c0             	sete   al
c000abe2:	0f b6 c0             	movzx  eax,al
c000abe5:	c3                   	ret    
	...

c000abe8 <list_init>:
c000abe8:	55                   	push   ebp
c000abe9:	89 e5                	mov    ebp,esp
c000abeb:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c000abee:	8d 50 0c             	lea    edx,[eax+0xc]
c000abf1:	c7 00 00 00 00 00    	mov    DWORD PTR [eax],0x0
c000abf7:	89 50 08             	mov    DWORD PTR [eax+0x8],edx
c000abfa:	89 40 0c             	mov    DWORD PTR [eax+0xc],eax
c000abfd:	c7 40 14 00 00 00 00 	mov    DWORD PTR [eax+0x14],0x0
c000ac04:	5d                   	pop    ebp
c000ac05:	c3                   	ret    

c000ac06 <list_in>:
c000ac06:	55                   	push   ebp
c000ac07:	89 e5                	mov    ebp,esp
c000ac09:	56                   	push   esi
c000ac0a:	8b 75 08             	mov    esi,DWORD PTR [ebp+0x8]
c000ac0d:	53                   	push   ebx
c000ac0e:	8b 5d 0c             	mov    ebx,DWORD PTR [ebp+0xc]
c000ac11:	e8 b3 e4 ff ff       	call   c00090c9 <intr_disable>
c000ac16:	8b 13                	mov    edx,DWORD PTR [ebx]
c000ac18:	89 72 08             	mov    DWORD PTR [edx+0x8],esi
c000ac1b:	8b 13                	mov    edx,DWORD PTR [ebx]
c000ac1d:	89 5e 08             	mov    DWORD PTR [esi+0x8],ebx
c000ac20:	89 16                	mov    DWORD PTR [esi],edx
c000ac22:	89 33                	mov    DWORD PTR [ebx],esi
c000ac24:	89 45 08             	mov    DWORD PTR [ebp+0x8],eax
c000ac27:	5b                   	pop    ebx
c000ac28:	5e                   	pop    esi
c000ac29:	5d                   	pop    ebp
c000ac2a:	e9 81 e5 ff ff       	jmp    c00091b0 <intr_set_status>

c000ac2f <list_push>:
c000ac2f:	55                   	push   ebp
c000ac30:	89 e5                	mov    ebp,esp
c000ac32:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c000ac35:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c000ac38:	8b 52 08             	mov    edx,DWORD PTR [edx+0x8]
c000ac3b:	89 45 08             	mov    DWORD PTR [ebp+0x8],eax
c000ac3e:	89 55 0c             	mov    DWORD PTR [ebp+0xc],edx
c000ac41:	5d                   	pop    ebp
c000ac42:	e9 bf ff ff ff       	jmp    c000ac06 <list_in>

c000ac47 <list_append>:
c000ac47:	55                   	push   ebp
c000ac48:	89 e5                	mov    ebp,esp
c000ac4a:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c000ac4d:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c000ac50:	83 c2 0c             	add    edx,0xc
c000ac53:	89 55 0c             	mov    DWORD PTR [ebp+0xc],edx
c000ac56:	89 45 08             	mov    DWORD PTR [ebp+0x8],eax
c000ac59:	5d                   	pop    ebp
c000ac5a:	e9 a7 ff ff ff       	jmp    c000ac06 <list_in>

c000ac5f <list_remove>:
c000ac5f:	55                   	push   ebp
c000ac60:	89 e5                	mov    ebp,esp
c000ac62:	53                   	push   ebx
c000ac63:	50                   	push   eax
c000ac64:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c000ac67:	e8 5d e4 ff ff       	call   c00090c9 <intr_disable>
c000ac6c:	8b 13                	mov    edx,DWORD PTR [ebx]
c000ac6e:	8b 4b 08             	mov    ecx,DWORD PTR [ebx+0x8]
c000ac71:	89 4a 08             	mov    DWORD PTR [edx+0x8],ecx
c000ac74:	8b 53 08             	mov    edx,DWORD PTR [ebx+0x8]
c000ac77:	8b 0b                	mov    ecx,DWORD PTR [ebx]
c000ac79:	89 0a                	mov    DWORD PTR [edx],ecx
c000ac7b:	89 45 08             	mov    DWORD PTR [ebp+0x8],eax
c000ac7e:	5a                   	pop    edx
c000ac7f:	5b                   	pop    ebx
c000ac80:	5d                   	pop    ebp
c000ac81:	e9 2a e5 ff ff       	jmp    c00091b0 <intr_set_status>

c000ac86 <list_pop>:
c000ac86:	55                   	push   ebp
c000ac87:	89 e5                	mov    ebp,esp
c000ac89:	53                   	push   ebx
c000ac8a:	83 ec 10             	sub    esp,0x10
c000ac8d:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c000ac90:	8b 58 08             	mov    ebx,DWORD PTR [eax+0x8]
c000ac93:	53                   	push   ebx
c000ac94:	e8 c6 ff ff ff       	call   c000ac5f <list_remove>
c000ac99:	89 d8                	mov    eax,ebx
c000ac9b:	8b 5d fc             	mov    ebx,DWORD PTR [ebp-0x4]
c000ac9e:	c9                   	leave  
c000ac9f:	c3                   	ret    

c000aca0 <list_find>:
c000aca0:	55                   	push   ebp
c000aca1:	89 e5                	mov    ebp,esp
c000aca3:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c000aca6:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
c000aca9:	8b 42 08             	mov    eax,DWORD PTR [edx+0x8]
c000acac:	83 c2 0c             	add    edx,0xc
c000acaf:	eb 07                	jmp    c000acb8 <list_find+0x18>
c000acb1:	39 c8                	cmp    eax,ecx
c000acb3:	74 0b                	je     c000acc0 <list_find+0x20>
c000acb5:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
c000acb8:	39 d0                	cmp    eax,edx
c000acba:	75 f5                	jne    c000acb1 <list_find+0x11>
c000acbc:	31 c0                	xor    eax,eax
c000acbe:	eb 05                	jmp    c000acc5 <list_find+0x25>
c000acc0:	b8 01 00 00 00       	mov    eax,0x1
c000acc5:	5d                   	pop    ebp
c000acc6:	c3                   	ret    

c000acc7 <list_traversal>:
c000acc7:	55                   	push   ebp
c000acc8:	89 e5                	mov    ebp,esp
c000acca:	57                   	push   edi
c000accb:	56                   	push   esi
c000accc:	53                   	push   ebx
c000accd:	83 ec 0c             	sub    esp,0xc
c000acd0:	8b 75 08             	mov    esi,DWORD PTR [ebp+0x8]
c000acd3:	8b 7d 10             	mov    edi,DWORD PTR [ebp+0x10]
c000acd6:	8b 5e 08             	mov    ebx,DWORD PTR [esi+0x8]
c000acd9:	83 c6 0c             	add    esi,0xc
c000acdc:	eb 11                	jmp    c000acef <list_traversal+0x28>
c000acde:	51                   	push   ecx
c000acdf:	51                   	push   ecx
c000ace0:	57                   	push   edi
c000ace1:	53                   	push   ebx
c000ace2:	ff 55 0c             	call   DWORD PTR [ebp+0xc]
c000ace5:	83 c4 10             	add    esp,0x10
c000ace8:	85 c0                	test   eax,eax
c000acea:	75 09                	jne    c000acf5 <list_traversal+0x2e>
c000acec:	8b 5b 08             	mov    ebx,DWORD PTR [ebx+0x8]
c000acef:	39 f3                	cmp    ebx,esi
c000acf1:	75 eb                	jne    c000acde <list_traversal+0x17>
c000acf3:	31 db                	xor    ebx,ebx
c000acf5:	8d 65 f4             	lea    esp,[ebp-0xc]
c000acf8:	89 d8                	mov    eax,ebx
c000acfa:	5b                   	pop    ebx
c000acfb:	5e                   	pop    esi
c000acfc:	5f                   	pop    edi
c000acfd:	5d                   	pop    ebp
c000acfe:	c3                   	ret    

c000acff <list_len>:
c000acff:	55                   	push   ebp
c000ad00:	31 c0                	xor    eax,eax
c000ad02:	89 e5                	mov    ebp,esp
c000ad04:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
c000ad07:	8b 51 08             	mov    edx,DWORD PTR [ecx+0x8]
c000ad0a:	83 c1 0c             	add    ecx,0xc
c000ad0d:	eb 04                	jmp    c000ad13 <list_len+0x14>
c000ad0f:	8b 52 08             	mov    edx,DWORD PTR [edx+0x8]
c000ad12:	40                   	inc    eax
c000ad13:	39 ca                	cmp    edx,ecx
c000ad15:	75 f8                	jne    c000ad0f <list_len+0x10>
c000ad17:	5d                   	pop    ebp
c000ad18:	c3                   	ret    

c000ad19 <list_empty>:
c000ad19:	55                   	push   ebp
c000ad1a:	89 e5                	mov    ebp,esp
c000ad1c:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c000ad1f:	5d                   	pop    ebp
c000ad20:	8d 50 0c             	lea    edx,[eax+0xc]
c000ad23:	39 50 08             	cmp    DWORD PTR [eax+0x8],edx
c000ad26:	0f 94 c0             	sete   al
c000ad29:	0f b6 c0             	movzx  eax,al
c000ad2c:	c3                   	ret    
c000ad2d:	00 00                	add    BYTE PTR [eax],al
	...

c000ad30 <itoa>:
c000ad30:	55                   	push   ebp
c000ad31:	89 e5                	mov    ebp,esp
c000ad33:	57                   	push   edi
c000ad34:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
c000ad37:	56                   	push   esi
c000ad38:	8b 75 08             	mov    esi,DWORD PTR [ebp+0x8]
c000ad3b:	53                   	push   ebx
c000ad3c:	8b 7d 10             	mov    edi,DWORD PTR [ebp+0x10]
c000ad3f:	31 db                	xor    ebx,ebx
c000ad41:	89 f0                	mov    eax,esi
c000ad43:	99                   	cdq    
c000ad44:	89 d0                	mov    eax,edx
c000ad46:	31 f0                	xor    eax,esi
c000ad48:	29 d0                	sub    eax,edx
c000ad4a:	eb 02                	jmp    c000ad4e <itoa+0x1e>
c000ad4c:	89 d3                	mov    ebx,edx
c000ad4e:	99                   	cdq    
c000ad4f:	f7 ff                	idiv   edi
c000ad51:	8a 92 24 ed 00 c0    	mov    dl,BYTE PTR [edx-0x3fff12dc]
c000ad57:	85 c0                	test   eax,eax
c000ad59:	88 14 19             	mov    BYTE PTR [ecx+ebx*1],dl
c000ad5c:	8d 53 01             	lea    edx,[ebx+0x1]
c000ad5f:	7f eb                	jg     c000ad4c <itoa+0x1c>
c000ad61:	85 f6                	test   esi,esi
c000ad63:	79 07                	jns    c000ad6c <itoa+0x3c>
c000ad65:	c6 04 11 2d          	mov    BYTE PTR [ecx+edx*1],0x2d
c000ad69:	8d 53 02             	lea    edx,[ebx+0x2]
c000ad6c:	c6 04 11 00          	mov    BYTE PTR [ecx+edx*1],0x0
c000ad70:	89 c8                	mov    eax,ecx
c000ad72:	eb 01                	jmp    c000ad75 <itoa+0x45>
c000ad74:	40                   	inc    eax
c000ad75:	80 38 00             	cmp    BYTE PTR [eax],0x0
c000ad78:	75 fa                	jne    c000ad74 <itoa+0x44>
c000ad7a:	eb 09                	jmp    c000ad85 <itoa+0x55>
c000ad7c:	8a 11                	mov    dl,BYTE PTR [ecx]
c000ad7e:	8a 18                	mov    bl,BYTE PTR [eax]
c000ad80:	88 19                	mov    BYTE PTR [ecx],bl
c000ad82:	41                   	inc    ecx
c000ad83:	88 10                	mov    BYTE PTR [eax],dl
c000ad85:	48                   	dec    eax
c000ad86:	39 c8                	cmp    eax,ecx
c000ad88:	77 f2                	ja     c000ad7c <itoa+0x4c>
c000ad8a:	5b                   	pop    ebx
c000ad8b:	5e                   	pop    esi
c000ad8c:	5f                   	pop    edi
c000ad8d:	5d                   	pop    ebp
c000ad8e:	c3                   	ret    

c000ad8f <utoa>:
c000ad8f:	55                   	push   ebp
c000ad90:	89 e5                	mov    ebp,esp
c000ad92:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c000ad95:	56                   	push   esi
c000ad96:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
c000ad99:	8b 75 10             	mov    esi,DWORD PTR [ebp+0x10]
c000ad9c:	53                   	push   ebx
c000ad9d:	31 db                	xor    ebx,ebx
c000ad9f:	31 d2                	xor    edx,edx
c000ada1:	f7 f6                	div    esi
c000ada3:	8a 92 4c ed 00 c0    	mov    dl,BYTE PTR [edx-0x3fff12b4]
c000ada9:	88 14 19             	mov    BYTE PTR [ecx+ebx*1],dl
c000adac:	43                   	inc    ebx
c000adad:	85 c0                	test   eax,eax
c000adaf:	75 ee                	jne    c000ad9f <utoa+0x10>
c000adb1:	c6 04 19 00          	mov    BYTE PTR [ecx+ebx*1],0x0
c000adb5:	89 c8                	mov    eax,ecx
c000adb7:	eb 01                	jmp    c000adba <utoa+0x2b>
c000adb9:	40                   	inc    eax
c000adba:	80 38 00             	cmp    BYTE PTR [eax],0x0
c000adbd:	75 fa                	jne    c000adb9 <utoa+0x2a>
c000adbf:	eb 09                	jmp    c000adca <utoa+0x3b>
c000adc1:	8a 11                	mov    dl,BYTE PTR [ecx]
c000adc3:	8a 18                	mov    bl,BYTE PTR [eax]
c000adc5:	88 19                	mov    BYTE PTR [ecx],bl
c000adc7:	41                   	inc    ecx
c000adc8:	88 10                	mov    BYTE PTR [eax],dl
c000adca:	48                   	dec    eax
c000adcb:	39 c8                	cmp    eax,ecx
c000adcd:	77 f2                	ja     c000adc1 <utoa+0x32>
c000adcf:	5b                   	pop    ebx
c000add0:	5e                   	pop    esi
c000add1:	5d                   	pop    ebp
c000add2:	c3                   	ret    

c000add3 <roll_screen>:
c000add3:	55                   	push   ebp
c000add4:	89 e5                	mov    ebp,esp
c000add6:	53                   	push   ebx
c000add7:	83 3d 14 7c 00 00 00 	cmp    DWORD PTR ds:0x7c14,0x0
c000adde:	75 2c                	jne    c000ae0c <roll_screen+0x39>
c000ade0:	a1 20 7c 00 00       	mov    eax,ds:0x7c20
c000ade5:	8b 0d 18 7c 00 00    	mov    ecx,DWORD PTR ds:0x7c18
c000adeb:	8d 1c 41             	lea    ebx,[ecx+eax*2]
c000adee:	31 c0                	xor    eax,eax
c000adf0:	eb 09                	jmp    c000adfb <roll_screen+0x28>
c000adf2:	66 8b 14 43          	mov    dx,WORD PTR [ebx+eax*2]
c000adf6:	66 89 14 41          	mov    WORD PTR [ecx+eax*2],dx
c000adfa:	40                   	inc    eax
c000adfb:	8b 15 24 7c 00 00    	mov    edx,DWORD PTR ds:0x7c24
c000ae01:	0f af 15 20 7c 00 00 	imul   edx,DWORD PTR ds:0x7c20
c000ae08:	39 d0                	cmp    eax,edx
c000ae0a:	72 e6                	jb     c000adf2 <roll_screen+0x1f>
c000ae0c:	5b                   	pop    ebx
c000ae0d:	5d                   	pop    ebp
c000ae0e:	c3                   	ret    

c000ae0f <get_cursor>:
c000ae0f:	55                   	push   ebp
c000ae10:	ba d4 03 00 00       	mov    edx,0x3d4
c000ae15:	89 e5                	mov    ebp,esp
c000ae17:	b8 0e 00 00 00       	mov    eax,0xe
c000ae1c:	53                   	push   ebx
c000ae1d:	ee                   	out    dx,al
c000ae1e:	bb d5 03 00 00       	mov    ebx,0x3d5
c000ae23:	89 da                	mov    edx,ebx
c000ae25:	ec                   	in     al,dx
c000ae26:	89 c1                	mov    ecx,eax
c000ae28:	b2 d4                	mov    dl,0xd4
c000ae2a:	b8 0f 00 00 00       	mov    eax,0xf
c000ae2f:	ee                   	out    dx,al
c000ae30:	89 da                	mov    edx,ebx
c000ae32:	ec                   	in     al,dx
c000ae33:	c1 e1 08             	shl    ecx,0x8
c000ae36:	09 c1                	or     ecx,eax
c000ae38:	89 c8                	mov    eax,ecx
c000ae3a:	5b                   	pop    ebx
c000ae3b:	5d                   	pop    ebp
c000ae3c:	c3                   	ret    

c000ae3d <set_cursor>:
c000ae3d:	55                   	push   ebp
c000ae3e:	ba d4 03 00 00       	mov    edx,0x3d4
c000ae43:	89 e5                	mov    ebp,esp
c000ae45:	b8 0e 00 00 00       	mov    eax,0xe
c000ae4a:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
c000ae4d:	ee                   	out    dx,al
c000ae4e:	0f b6 c5             	movzx  eax,ch
c000ae51:	b2 d5                	mov    dl,0xd5
c000ae53:	ee                   	out    dx,al
c000ae54:	b8 0f 00 00 00       	mov    eax,0xf
c000ae59:	b2 d4                	mov    dl,0xd4
c000ae5b:	ee                   	out    dx,al
c000ae5c:	0f b6 c1             	movzx  eax,cl
c000ae5f:	b2 d5                	mov    dl,0xd5
c000ae61:	ee                   	out    dx,al
c000ae62:	5d                   	pop    ebp
c000ae63:	c3                   	ret    

c000ae64 <put_char>:
c000ae64:	55                   	push   ebp
c000ae65:	89 e5                	mov    ebp,esp
c000ae67:	53                   	push   ebx
c000ae68:	51                   	push   ecx
c000ae69:	8a 4d 08             	mov    cl,BYTE PTR [ebp+0x8]
c000ae6c:	83 3d 14 7c 00 00 00 	cmp    DWORD PTR ds:0x7c14,0x0
c000ae73:	8a 5d 0c             	mov    bl,BYTE PTR [ebp+0xc]
c000ae76:	0f 85 85 00 00 00    	jne    c000af01 <put_char+0x9d>
c000ae7c:	88 4d f8             	mov    BYTE PTR [ebp-0x8],cl
c000ae7f:	e8 8b ff ff ff       	call   c000ae0f <get_cursor>
c000ae84:	80 fb 0d             	cmp    bl,0xd
c000ae87:	8a 4d f8             	mov    cl,BYTE PTR [ebp-0x8]
c000ae8a:	77 31                	ja     c000aebd <put_char+0x59>
c000ae8c:	0f b6 d3             	movzx  edx,bl
c000ae8f:	ff 24 95 c4 ec 00 c0 	jmp    DWORD PTR [edx*4-0x3fff133c]
c000ae96:	8d 48 ff             	lea    ecx,[eax-0x1]
c000ae99:	a1 18 7c 00 00       	mov    eax,ds:0x7c18
c000ae9e:	c6 04 48 20          	mov    BYTE PTR [eax+ecx*2],0x20
c000aea2:	eb 2f                	jmp    c000aed3 <put_char+0x6f>
c000aea4:	8b 1d 20 7c 00 00    	mov    ebx,DWORD PTR ds:0x7c20
c000aeaa:	31 d2                	xor    edx,edx
c000aeac:	8d 0c 18             	lea    ecx,[eax+ebx*1]
c000aeaf:	f7 f3                	div    ebx
c000aeb1:	29 d1                	sub    ecx,edx
c000aeb3:	eb 1e                	jmp    c000aed3 <put_char+0x6f>
c000aeb5:	8d 48 04             	lea    ecx,[eax+0x4]
c000aeb8:	83 e1 fc             	and    ecx,0xfffffffc
c000aebb:	eb 16                	jmp    c000aed3 <put_char+0x6f>
c000aebd:	8b 15 18 7c 00 00    	mov    edx,DWORD PTR ds:0x7c18
c000aec3:	88 1c 42             	mov    BYTE PTR [edx+eax*2],bl
c000aec6:	8b 15 18 7c 00 00    	mov    edx,DWORD PTR ds:0x7c18
c000aecc:	88 4c 42 01          	mov    BYTE PTR [edx+eax*2+0x1],cl
c000aed0:	8d 48 01             	lea    ecx,[eax+0x1]
c000aed3:	a1 24 7c 00 00       	mov    eax,ds:0x7c24
c000aed8:	0f af 05 20 7c 00 00 	imul   eax,DWORD PTR ds:0x7c20
c000aedf:	39 c1                	cmp    ecx,eax
c000aee1:	72 13                	jb     c000aef6 <put_char+0x92>
c000aee3:	e8 eb fe ff ff       	call   c000add3 <roll_screen>
c000aee8:	8b 0d 24 7c 00 00    	mov    ecx,DWORD PTR ds:0x7c24
c000aeee:	49                   	dec    ecx
c000aeef:	0f af 0d 20 7c 00 00 	imul   ecx,DWORD PTR ds:0x7c20
c000aef6:	89 4d 08             	mov    DWORD PTR [ebp+0x8],ecx
c000aef9:	5a                   	pop    edx
c000aefa:	5b                   	pop    ebx
c000aefb:	5d                   	pop    ebp
c000aefc:	e9 3c ff ff ff       	jmp    c000ae3d <set_cursor>
c000af01:	58                   	pop    eax
c000af02:	5b                   	pop    ebx
c000af03:	5d                   	pop    ebp
c000af04:	c3                   	ret    

c000af05 <put_str>:
c000af05:	55                   	push   ebp
c000af06:	89 e5                	mov    ebp,esp
c000af08:	56                   	push   esi
c000af09:	0f b6 75 08          	movzx  esi,BYTE PTR [ebp+0x8]
c000af0d:	53                   	push   ebx
c000af0e:	8b 5d 0c             	mov    ebx,DWORD PTR [ebp+0xc]
c000af11:	eb 0d                	jmp    c000af20 <put_str+0x1b>
c000af13:	0f b6 c0             	movzx  eax,al
c000af16:	43                   	inc    ebx
c000af17:	50                   	push   eax
c000af18:	56                   	push   esi
c000af19:	e8 46 ff ff ff       	call   c000ae64 <put_char>
c000af1e:	58                   	pop    eax
c000af1f:	5a                   	pop    edx
c000af20:	8a 03                	mov    al,BYTE PTR [ebx]
c000af22:	84 c0                	test   al,al
c000af24:	75 ed                	jne    c000af13 <put_str+0xe>
c000af26:	8d 65 f8             	lea    esp,[ebp-0x8]
c000af29:	5b                   	pop    ebx
c000af2a:	5e                   	pop    esi
c000af2b:	5d                   	pop    ebp
c000af2c:	c3                   	ret    

c000af2d <put_uint>:
c000af2d:	55                   	push   ebp
c000af2e:	31 c0                	xor    eax,eax
c000af30:	89 e5                	mov    ebp,esp
c000af32:	b9 42 00 00 00       	mov    ecx,0x42
c000af37:	57                   	push   edi
c000af38:	53                   	push   ebx
c000af39:	8d 7d b6             	lea    edi,[ebp-0x4a]
c000af3c:	83 ec 50             	sub    esp,0x50
c000af3f:	8a 5d 08             	mov    bl,BYTE PTR [ebp+0x8]
c000af42:	f3 aa                	rep stos BYTE PTR es:[edi],al
c000af44:	8d 7d b6             	lea    edi,[ebp-0x4a]
c000af47:	ff 75 10             	push   DWORD PTR [ebp+0x10]
c000af4a:	0f b6 db             	movzx  ebx,bl
c000af4d:	57                   	push   edi
c000af4e:	ff 75 0c             	push   DWORD PTR [ebp+0xc]
c000af51:	e8 39 fe ff ff       	call   c000ad8f <utoa>
c000af56:	57                   	push   edi
c000af57:	53                   	push   ebx
c000af58:	e8 a8 ff ff ff       	call   c000af05 <put_str>
c000af5d:	83 c4 14             	add    esp,0x14
c000af60:	8d 65 f8             	lea    esp,[ebp-0x8]
c000af63:	5b                   	pop    ebx
c000af64:	5f                   	pop    edi
c000af65:	5d                   	pop    ebp
c000af66:	c3                   	ret    

c000af67 <put_int>:
c000af67:	55                   	push   ebp
c000af68:	31 c0                	xor    eax,eax
c000af6a:	89 e5                	mov    ebp,esp
c000af6c:	b9 42 00 00 00       	mov    ecx,0x42
c000af71:	57                   	push   edi
c000af72:	53                   	push   ebx
c000af73:	8d 7d b6             	lea    edi,[ebp-0x4a]
c000af76:	83 ec 50             	sub    esp,0x50
c000af79:	8a 5d 08             	mov    bl,BYTE PTR [ebp+0x8]
c000af7c:	f3 aa                	rep stos BYTE PTR es:[edi],al
c000af7e:	8d 7d b6             	lea    edi,[ebp-0x4a]
c000af81:	ff 75 10             	push   DWORD PTR [ebp+0x10]
c000af84:	0f b6 db             	movzx  ebx,bl
c000af87:	57                   	push   edi
c000af88:	ff 75 0c             	push   DWORD PTR [ebp+0xc]
c000af8b:	e8 a0 fd ff ff       	call   c000ad30 <itoa>
c000af90:	57                   	push   edi
c000af91:	53                   	push   ebx
c000af92:	e8 6e ff ff ff       	call   c000af05 <put_str>
c000af97:	83 c4 14             	add    esp,0x14
c000af9a:	8d 65 f8             	lea    esp,[ebp-0x8]
c000af9d:	5b                   	pop    ebx
c000af9e:	5f                   	pop    edi
c000af9f:	5d                   	pop    ebp
c000afa0:	c3                   	ret    
c000afa1:	00 00                	add    BYTE PTR [eax],al
	...

c000afa4 <memset>:
c000afa4:	55                   	push   ebp
c000afa5:	89 e5                	mov    ebp,esp
c000afa7:	56                   	push   esi
c000afa8:	53                   	push   ebx
c000afa9:	83 ec 10             	sub    esp,0x10
c000afac:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c000afaf:	8b 75 10             	mov    esi,DWORD PTR [ebp+0x10]
c000afb2:	8a 55 0c             	mov    dl,BYTE PTR [ebp+0xc]
c000afb5:	85 db                	test   ebx,ebx
c000afb7:	75 1f                	jne    c000afd8 <memset+0x34>
c000afb9:	68 74 ed 00 c0       	push   0xc000ed74
c000afbe:	68 f4 ed 00 c0       	push   0xc000edf4
c000afc3:	6a 0f                	push   0xf
c000afc5:	68 82 ed 00 c0       	push   0xc000ed82
c000afca:	88 55 f4             	mov    BYTE PTR [ebp-0xc],dl
c000afcd:	e8 be d4 ff ff       	call   c0008490 <panic_spin>
c000afd2:	8a 55 f4             	mov    dl,BYTE PTR [ebp-0xc]
c000afd5:	83 c4 10             	add    esp,0x10
c000afd8:	31 c0                	xor    eax,eax
c000afda:	eb 04                	jmp    c000afe0 <memset+0x3c>
c000afdc:	88 14 03             	mov    BYTE PTR [ebx+eax*1],dl
c000afdf:	40                   	inc    eax
c000afe0:	39 f0                	cmp    eax,esi
c000afe2:	75 f8                	jne    c000afdc <memset+0x38>
c000afe4:	8d 65 f8             	lea    esp,[ebp-0x8]
c000afe7:	5b                   	pop    ebx
c000afe8:	5e                   	pop    esi
c000afe9:	5d                   	pop    ebp
c000afea:	c3                   	ret    

c000afeb <memcpy>:
c000afeb:	55                   	push   ebp
c000afec:	89 e5                	mov    ebp,esp
c000afee:	57                   	push   edi
c000afef:	56                   	push   esi
c000aff0:	53                   	push   ebx
c000aff1:	83 ec 0c             	sub    esp,0xc
c000aff4:	8b 75 0c             	mov    esi,DWORD PTR [ebp+0xc]
c000aff7:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c000affa:	8b 7d 10             	mov    edi,DWORD PTR [ebp+0x10]
c000affd:	85 f6                	test   esi,esi
c000afff:	74 04                	je     c000b005 <memcpy+0x1a>
c000b001:	85 db                	test   ebx,ebx
c000b003:	75 19                	jne    c000b01e <memcpy+0x33>
c000b005:	68 8f ed 00 c0       	push   0xc000ed8f
c000b00a:	68 fc ed 00 c0       	push   0xc000edfc
c000b00f:	6a 22                	push   0x22
c000b011:	68 82 ed 00 c0       	push   0xc000ed82
c000b016:	e8 75 d4 ff ff       	call   c0008490 <panic_spin>
c000b01b:	83 c4 10             	add    esp,0x10
c000b01e:	31 c0                	xor    eax,eax
c000b020:	eb 07                	jmp    c000b029 <memcpy+0x3e>
c000b022:	8a 14 06             	mov    dl,BYTE PTR [esi+eax*1]
c000b025:	88 14 03             	mov    BYTE PTR [ebx+eax*1],dl
c000b028:	40                   	inc    eax
c000b029:	39 f8                	cmp    eax,edi
c000b02b:	75 f5                	jne    c000b022 <memcpy+0x37>
c000b02d:	8d 65 f4             	lea    esp,[ebp-0xc]
c000b030:	5b                   	pop    ebx
c000b031:	5e                   	pop    esi
c000b032:	5f                   	pop    edi
c000b033:	5d                   	pop    ebp
c000b034:	c3                   	ret    

c000b035 <memcmp>:
c000b035:	55                   	push   ebp
c000b036:	89 e5                	mov    ebp,esp
c000b038:	56                   	push   esi
c000b039:	8b 75 08             	mov    esi,DWORD PTR [ebp+0x8]
c000b03c:	53                   	push   ebx
c000b03d:	8b 5d 0c             	mov    ebx,DWORD PTR [ebp+0xc]
c000b040:	85 db                	test   ebx,ebx
c000b042:	74 04                	je     c000b048 <memcmp+0x13>
c000b044:	85 f6                	test   esi,esi
c000b046:	75 19                	jne    c000b061 <memcmp+0x2c>
c000b048:	68 ae ed 00 c0       	push   0xc000edae
c000b04d:	68 04 ee 00 c0       	push   0xc000ee04
c000b052:	6a 3b                	push   0x3b
c000b054:	68 82 ed 00 c0       	push   0xc000ed82
c000b059:	e8 32 d4 ff ff       	call   c0008490 <panic_spin>
c000b05e:	83 c4 10             	add    esp,0x10
c000b061:	8a 13                	mov    dl,BYTE PTR [ebx]
c000b063:	83 c8 ff             	or     eax,0xffffffff
c000b066:	38 16                	cmp    BYTE PTR [esi],dl
c000b068:	72 06                	jb     c000b070 <memcmp+0x3b>
c000b06a:	0f 97 c0             	seta   al
c000b06d:	0f b6 c0             	movzx  eax,al
c000b070:	8d 65 f8             	lea    esp,[ebp-0x8]
c000b073:	5b                   	pop    ebx
c000b074:	5e                   	pop    esi
c000b075:	5d                   	pop    ebp
c000b076:	c3                   	ret    

c000b077 <strcpy>:
c000b077:	55                   	push   ebp
c000b078:	31 d2                	xor    edx,edx
c000b07a:	89 e5                	mov    ebp,esp
c000b07c:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c000b07f:	53                   	push   ebx
c000b080:	8b 5d 0c             	mov    ebx,DWORD PTR [ebp+0xc]
c000b083:	8a 0c 13             	mov    cl,BYTE PTR [ebx+edx*1]
c000b086:	88 0c 10             	mov    BYTE PTR [eax+edx*1],cl
c000b089:	42                   	inc    edx
c000b08a:	84 c9                	test   cl,cl
c000b08c:	75 f5                	jne    c000b083 <strcpy+0xc>
c000b08e:	5b                   	pop    ebx
c000b08f:	5d                   	pop    ebp
c000b090:	c3                   	ret    
c000b091:	00 00                	add    BYTE PTR [eax],al
	...

c000b094 <RectangleFill>:
c000b094:	55                   	push   ebp
c000b095:	89 e5                	mov    ebp,esp
c000b097:	57                   	push   edi
c000b098:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
c000b09b:	56                   	push   esi
c000b09c:	8b 45 14             	mov    eax,DWORD PTR [ebp+0x14]
c000b09f:	53                   	push   ebx
c000b0a0:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c000b0a3:	83 3d 14 7c 00 00 01 	cmp    DWORD PTR ds:0x7c14,0x1
c000b0aa:	75 30                	jne    c000b0dc <RectangleFill+0x48>
c000b0ac:	89 ca                	mov    edx,ecx
c000b0ae:	81 e2 00 00 00 ff    	and    edx,0xff000000
c000b0b4:	81 fa 00 00 00 ff    	cmp    edx,0xff000000
c000b0ba:	75 16                	jne    c000b0d2 <RectangleFill+0x3e>
c000b0bc:	eb 1e                	jmp    c000b0dc <RectangleFill+0x48>
c000b0be:	8b 7b 04             	mov    edi,DWORD PTR [ebx+0x4]
c000b0c1:	8b 33                	mov    esi,DWORD PTR [ebx]
c000b0c3:	0f af f8             	imul   edi,eax
c000b0c6:	01 d7                	add    edi,edx
c000b0c8:	42                   	inc    edx
c000b0c9:	89 0c be             	mov    DWORD PTR [esi+edi*4],ecx
c000b0cc:	3b 55 18             	cmp    edx,DWORD PTR [ebp+0x18]
c000b0cf:	7e ed                	jle    c000b0be <RectangleFill+0x2a>
c000b0d1:	40                   	inc    eax
c000b0d2:	3b 45 1c             	cmp    eax,DWORD PTR [ebp+0x1c]
c000b0d5:	7f 05                	jg     c000b0dc <RectangleFill+0x48>
c000b0d7:	8b 55 10             	mov    edx,DWORD PTR [ebp+0x10]
c000b0da:	eb f0                	jmp    c000b0cc <RectangleFill+0x38>
c000b0dc:	5b                   	pop    ebx
c000b0dd:	5e                   	pop    esi
c000b0de:	5f                   	pop    edi
c000b0df:	5d                   	pop    ebp
c000b0e0:	c3                   	ret    

c000b0e1 <init_Rectangle>:
c000b0e1:	55                   	push   ebp
c000b0e2:	89 e5                	mov    ebp,esp
c000b0e4:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c000b0e7:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
c000b0ea:	89 10                	mov    DWORD PTR [eax],edx
c000b0ec:	8b 55 10             	mov    edx,DWORD PTR [ebp+0x10]
c000b0ef:	89 50 04             	mov    DWORD PTR [eax+0x4],edx
c000b0f2:	8b 55 14             	mov    edx,DWORD PTR [ebp+0x14]
c000b0f5:	89 50 08             	mov    DWORD PTR [eax+0x8],edx
c000b0f8:	8b 55 18             	mov    edx,DWORD PTR [ebp+0x18]
c000b0fb:	89 50 0c             	mov    DWORD PTR [eax+0xc],edx
c000b0fe:	8b 55 1c             	mov    edx,DWORD PTR [ebp+0x1c]
c000b101:	89 50 10             	mov    DWORD PTR [eax+0x10],edx
c000b104:	5d                   	pop    ebp
c000b105:	c3                   	ret    

c000b106 <init_screen>:
c000b106:	55                   	push   ebp
c000b107:	89 e5                	mov    ebp,esp
c000b109:	53                   	push   ebx
c000b10a:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c000b10d:	83 3d 14 7c 00 00 01 	cmp    DWORD PTR ds:0x7c14,0x1
c000b114:	0f 85 df 00 00 00    	jne    c000b1f9 <init_screen+0xf3>
c000b11a:	a1 24 7c 00 00       	mov    eax,ds:0x7c24
c000b11f:	8b 15 20 7c 00 00    	mov    edx,DWORD PTR ds:0x7c20
c000b125:	c7 03 00 00 00 fe    	mov    DWORD PTR [ebx],0xfe000000
c000b12b:	c7 43 0c 00 00 00 00 	mov    DWORD PTR [ebx+0xc],0x0
c000b132:	89 43 08             	mov    DWORD PTR [ebx+0x8],eax
c000b135:	89 53 04             	mov    DWORD PTR [ebx+0x4],edx
c000b138:	c7 43 10 00 00 00 00 	mov    DWORD PTR [ebx+0x10],0x0
c000b13f:	a1 24 7c 00 00       	mov    eax,ds:0x7c24
c000b144:	83 e8 33             	sub    eax,0x33
c000b147:	50                   	push   eax
c000b148:	a1 20 7c 00 00       	mov    eax,ds:0x7c20
c000b14d:	48                   	dec    eax
c000b14e:	50                   	push   eax
c000b14f:	6a 00                	push   0x0
c000b151:	6a 00                	push   0x0
c000b153:	68 84 84 00 00       	push   0x8484
c000b158:	53                   	push   ebx
c000b159:	e8 36 ff ff ff       	call   c000b094 <RectangleFill>
c000b15e:	a1 24 7c 00 00       	mov    eax,ds:0x7c24
c000b163:	8d 50 ff             	lea    edx,[eax-0x1]
c000b166:	83 e8 33             	sub    eax,0x33
c000b169:	52                   	push   edx
c000b16a:	8b 15 20 7c 00 00    	mov    edx,DWORD PTR ds:0x7c20
c000b170:	4a                   	dec    edx
c000b171:	52                   	push   edx
c000b172:	50                   	push   eax
c000b173:	6a 00                	push   0x0
c000b175:	68 c6 c6 c6 00       	push   0xc6c6c6
c000b17a:	53                   	push   ebx
c000b17b:	e8 14 ff ff ff       	call   c000b094 <RectangleFill>
c000b180:	a1 24 7c 00 00       	mov    eax,ds:0x7c24
c000b185:	83 c4 30             	add    esp,0x30
c000b188:	8d 50 f8             	lea    edx,[eax-0x8]
c000b18b:	83 e8 26             	sub    eax,0x26
c000b18e:	52                   	push   edx
c000b18f:	6a 2b                	push   0x2b
c000b191:	50                   	push   eax
c000b192:	6a 0d                	push   0xd
c000b194:	68 84 84 84 00       	push   0x848484
c000b199:	53                   	push   ebx
c000b19a:	e8 f5 fe ff ff       	call   c000b094 <RectangleFill>
c000b19f:	a1 24 7c 00 00       	mov    eax,ds:0x7c24
c000b1a4:	8d 50 f5             	lea    edx,[eax-0xb]
c000b1a7:	83 e8 29             	sub    eax,0x29
c000b1aa:	52                   	push   edx
c000b1ab:	6a 28                	push   0x28
c000b1ad:	50                   	push   eax
c000b1ae:	6a 0a                	push   0xa
c000b1b0:	68 ff ff ff 00       	push   0xffffff
c000b1b5:	53                   	push   ebx
c000b1b6:	e8 d9 fe ff ff       	call   c000b094 <RectangleFill>
c000b1bb:	a1 24 7c 00 00       	mov    eax,ds:0x7c24
c000b1c0:	83 c4 30             	add    esp,0x30
c000b1c3:	8d 50 f8             	lea    edx,[eax-0x8]
c000b1c6:	83 e8 26             	sub    eax,0x26
c000b1c9:	52                   	push   edx
c000b1ca:	6a 3a                	push   0x3a
c000b1cc:	50                   	push   eax
c000b1cd:	6a 35                	push   0x35
c000b1cf:	68 84 84 84 00       	push   0x848484
c000b1d4:	53                   	push   ebx
c000b1d5:	e8 ba fe ff ff       	call   c000b094 <RectangleFill>
c000b1da:	a1 24 7c 00 00       	mov    eax,ds:0x7c24
c000b1df:	8d 50 f5             	lea    edx,[eax-0xb]
c000b1e2:	83 e8 29             	sub    eax,0x29
c000b1e5:	52                   	push   edx
c000b1e6:	6a 37                	push   0x37
c000b1e8:	50                   	push   eax
c000b1e9:	6a 32                	push   0x32
c000b1eb:	68 ff ff ff 00       	push   0xffffff
c000b1f0:	53                   	push   ebx
c000b1f1:	e8 9e fe ff ff       	call   c000b094 <RectangleFill>
c000b1f6:	83 c4 30             	add    esp,0x30
c000b1f9:	8b 5d fc             	mov    ebx,DWORD PTR [ebp-0x4]
c000b1fc:	c9                   	leave  
c000b1fd:	c3                   	ret    

c000b1fe <put_char_graphic>:
c000b1fe:	55                   	push   ebp
c000b1ff:	89 e5                	mov    ebp,esp
c000b201:	57                   	push   edi
c000b202:	0f be 7d 18          	movsx  edi,BYTE PTR [ebp+0x18]
c000b206:	56                   	push   esi
c000b207:	8b 55 14             	mov    edx,DWORD PTR [ebp+0x14]
c000b20a:	53                   	push   ebx
c000b20b:	8b 75 08             	mov    esi,DWORD PTR [ebp+0x8]
c000b20e:	c1 e7 04             	shl    edi,0x4
c000b211:	81 c7 80 b3 00 c0    	add    edi,0xc000b380
c000b217:	83 3d 14 7c 00 00 01 	cmp    DWORD PTR ds:0x7c14,0x1
c000b21e:	75 5d                	jne    c000b27d <put_char_graphic+0x7f>
c000b220:	31 db                	xor    ebx,ebx
c000b222:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
c000b225:	8b 0e                	mov    ecx,DWORD PTR [esi]
c000b227:	01 d8                	add    eax,ebx
c000b229:	0f af 46 04          	imul   eax,DWORD PTR [esi+0x4]
c000b22d:	03 45 0c             	add    eax,DWORD PTR [ebp+0xc]
c000b230:	8d 04 81             	lea    eax,[ecx+eax*4]
c000b233:	8a 0c 1f             	mov    cl,BYTE PTR [edi+ebx*1]
c000b236:	84 c9                	test   cl,cl
c000b238:	79 02                	jns    c000b23c <put_char_graphic+0x3e>
c000b23a:	89 10                	mov    DWORD PTR [eax],edx
c000b23c:	0f b6 c9             	movzx  ecx,cl
c000b23f:	f6 c1 40             	test   cl,0x40
c000b242:	74 03                	je     c000b247 <put_char_graphic+0x49>
c000b244:	89 50 04             	mov    DWORD PTR [eax+0x4],edx
c000b247:	f6 c1 20             	test   cl,0x20
c000b24a:	74 03                	je     c000b24f <put_char_graphic+0x51>
c000b24c:	89 50 08             	mov    DWORD PTR [eax+0x8],edx
c000b24f:	f6 c1 10             	test   cl,0x10
c000b252:	74 03                	je     c000b257 <put_char_graphic+0x59>
c000b254:	89 50 0c             	mov    DWORD PTR [eax+0xc],edx
c000b257:	f6 c1 08             	test   cl,0x8
c000b25a:	74 03                	je     c000b25f <put_char_graphic+0x61>
c000b25c:	89 50 10             	mov    DWORD PTR [eax+0x10],edx
c000b25f:	f6 c1 04             	test   cl,0x4
c000b262:	74 03                	je     c000b267 <put_char_graphic+0x69>
c000b264:	89 50 14             	mov    DWORD PTR [eax+0x14],edx
c000b267:	f6 c1 02             	test   cl,0x2
c000b26a:	74 03                	je     c000b26f <put_char_graphic+0x71>
c000b26c:	89 50 18             	mov    DWORD PTR [eax+0x18],edx
c000b26f:	80 e1 01             	and    cl,0x1
c000b272:	74 03                	je     c000b277 <put_char_graphic+0x79>
c000b274:	89 50 1c             	mov    DWORD PTR [eax+0x1c],edx
c000b277:	43                   	inc    ebx
c000b278:	83 fb 10             	cmp    ebx,0x10
c000b27b:	75 a5                	jne    c000b222 <put_char_graphic+0x24>
c000b27d:	5b                   	pop    ebx
c000b27e:	5e                   	pop    esi
c000b27f:	5f                   	pop    edi
c000b280:	5d                   	pop    ebp
c000b281:	c3                   	ret    

c000b282 <put_str_graphic>:
c000b282:	55                   	push   ebp
c000b283:	89 e5                	mov    ebp,esp
c000b285:	57                   	push   edi
c000b286:	8b 7d 14             	mov    edi,DWORD PTR [ebp+0x14]
c000b289:	56                   	push   esi
c000b28a:	8b 75 0c             	mov    esi,DWORD PTR [ebp+0xc]
c000b28d:	53                   	push   ebx
c000b28e:	8b 5d 18             	mov    ebx,DWORD PTR [ebp+0x18]
c000b291:	eb 18                	jmp    c000b2ab <put_str_graphic+0x29>
c000b293:	0f be c0             	movsx  eax,al
c000b296:	43                   	inc    ebx
c000b297:	50                   	push   eax
c000b298:	57                   	push   edi
c000b299:	ff 75 10             	push   DWORD PTR [ebp+0x10]
c000b29c:	56                   	push   esi
c000b29d:	83 c6 0a             	add    esi,0xa
c000b2a0:	ff 75 08             	push   DWORD PTR [ebp+0x8]
c000b2a3:	e8 56 ff ff ff       	call   c000b1fe <put_char_graphic>
c000b2a8:	83 c4 14             	add    esp,0x14
c000b2ab:	8a 03                	mov    al,BYTE PTR [ebx]
c000b2ad:	84 c0                	test   al,al
c000b2af:	75 e2                	jne    c000b293 <put_str_graphic+0x11>
c000b2b1:	8d 65 f4             	lea    esp,[ebp-0xc]
c000b2b4:	5b                   	pop    ebx
c000b2b5:	5e                   	pop    esi
c000b2b6:	5f                   	pop    edi
c000b2b7:	5d                   	pop    ebp
c000b2b8:	c3                   	ret    

Disassembly of section .data:

c000b2c0 <_data>:
c000b2c0:	90                   	nop
c000b2c1:	85 00                	test   DWORD PTR [eax],eax
c000b2c3:	c0 c2 85             	rol    dl,0x85
c000b2c6:	00 c0                	add    al,al
c000b2c8:	f4                   	hlt    
c000b2c9:	85 00                	test   DWORD PTR [eax],eax
c000b2cb:	c0 26 86             	shl    BYTE PTR [esi],0x86
c000b2ce:	00 c0                	add    al,al
c000b2d0:	58                   	pop    eax
c000b2d1:	86 00                	xchg   BYTE PTR [eax],al
c000b2d3:	c0 8a 86 00 c0 bc 86 	ror    BYTE PTR [edx-0x433fff7a],0x86
c000b2da:	00 c0                	add    al,al
c000b2dc:	ee                   	out    dx,al
c000b2dd:	86 00                	xchg   BYTE PTR [eax],al
c000b2df:	c0 20 87             	shl    BYTE PTR [eax],0x87
c000b2e2:	00 c0                	add    al,al
c000b2e4:	4e                   	dec    esi
c000b2e5:	87 00                	xchg   DWORD PTR [eax],eax
c000b2e7:	c0 80 87 00 c0 ae 87 	rol    BYTE PTR [eax-0x513fff79],0x87
c000b2ee:	00 c0                	add    al,al
c000b2f0:	dc 87 00 c0 0e 88    	fadd   QWORD PTR [edi-0x77f14000]
c000b2f6:	00 c0                	add    al,al
c000b2f8:	3c 88                	cmp    al,0x88
c000b2fa:	00 c0                	add    al,al
c000b2fc:	6a 88                	push   0xffffff88
c000b2fe:	00 c0                	add    al,al
c000b300:	9c                   	pushf  
c000b301:	88 00                	mov    BYTE PTR [eax],al
c000b303:	c0 ce 88             	ror    dh,0x88
c000b306:	00 c0                	add    al,al
c000b308:	fc                   	cld    
c000b309:	88 00                	mov    BYTE PTR [eax],al
c000b30b:	c0 2e 89             	shr    BYTE PTR [esi],0x89
c000b30e:	00 c0                	add    al,al
c000b310:	60                   	pusha  
c000b311:	89 00                	mov    DWORD PTR [eax],eax
c000b313:	c0 92 89 00 c0 c4 89 	rcl    BYTE PTR [edx-0x3b3fff77],0x89
c000b31a:	00 c0                	add    al,al
c000b31c:	f6                   	(bad)  
c000b31d:	89 00                	mov    DWORD PTR [eax],eax
c000b31f:	c0 28 8a             	shr    BYTE PTR [eax],0x8a
c000b322:	00 c0                	add    al,al
c000b324:	56                   	push   esi
c000b325:	8a 00                	mov    al,BYTE PTR [eax]
c000b327:	c0 88 8a 00 c0 b6 8a 	ror    BYTE PTR [eax-0x493fff76],0x8a
c000b32e:	00 c0                	add    al,al
c000b330:	e4 8a                	in     al,0x8a
c000b332:	00 c0                	add    al,al
c000b334:	16                   	push   ss
c000b335:	8b 00                	mov    eax,DWORD PTR [eax]
c000b337:	c0 44 8b 00 c0       	rol    BYTE PTR [ebx+ecx*4+0x0],0xc0
c000b33c:	72 8b                	jb     c000b2c9 <_data+0x9>
c000b33e:	00 c0                	add    al,al
c000b340:	a4                   	movs   BYTE PTR es:[edi],BYTE PTR ds:[esi]
c000b341:	8b 00                	mov    eax,DWORD PTR [eax]
c000b343:	c0 d6 8b             	rcl    dh,0x8b
c000b346:	00 c0                	add    al,al
c000b348:	08 8c 00 c0 3a 8c 00 	or     BYTE PTR [eax+eax*1+0x8c3ac0],cl
c000b34f:	c0 6c 8c 00 c0       	shr    BYTE PTR [esp+ecx*4+0x0],0xc0
c000b354:	9e                   	sahf   
c000b355:	8c 00                	mov    WORD PTR [eax],es
c000b357:	c0 d0 8c             	rcl    al,0x8c
c000b35a:	00 c0                	add    al,al
c000b35c:	02 8d 00 c0 34 8d    	add    cl,BYTE PTR [ebp-0x72cb4000]
c000b362:	00 c0                	add    al,al
c000b364:	66 8d 00             	lea    ax,[eax]
c000b367:	c0 98 8d 00 c0 ca 8d 	rcr    BYTE PTR [eax-0x353fff73],0x8d
c000b36e:	00 c0                	add    al,al
c000b370:	fc                   	cld    
c000b371:	8d 00                	lea    eax,[eax]
c000b373:	c0 2e 8e             	shr    BYTE PTR [esi],0x8e
c000b376:	00 c0                	add    al,al
c000b378:	60                   	pusha  
c000b379:	8e 00                	mov    es,WORD PTR [eax]
c000b37b:	c0 92 8e 00 c0 00 00 	rcl    BYTE PTR [edx+0xc0008e],0x0

c000b380 <PKnFont>:
	...
c000b590:	00 10                	add    BYTE PTR [eax],dl
c000b592:	10 10                	adc    BYTE PTR [eax],dl
c000b594:	10 10                	adc    BYTE PTR [eax],dl
c000b596:	10 10                	adc    BYTE PTR [eax],dl
c000b598:	10 10                	adc    BYTE PTR [eax],dl
c000b59a:	00 00                	add    BYTE PTR [eax],al
c000b59c:	10 10                	adc    BYTE PTR [eax],dl
c000b59e:	00 00                	add    BYTE PTR [eax],al
c000b5a0:	28 28                	sub    BYTE PTR [eax],ch
c000b5a2:	28 00                	sub    BYTE PTR [eax],al
	...
c000b5b0:	00 44 44 44          	add    BYTE PTR [esp+eax*2+0x44],al
c000b5b4:	fe 44 44 44          	inc    BYTE PTR [esp+eax*2+0x44]
c000b5b8:	44                   	inc    esp
c000b5b9:	44                   	inc    esp
c000b5ba:	fe 44 44 44          	inc    BYTE PTR [esp+eax*2+0x44]
c000b5be:	00 00                	add    BYTE PTR [eax],al
c000b5c0:	10 3a                	adc    BYTE PTR [edx],bh
c000b5c2:	56                   	push   esi
c000b5c3:	92                   	xchg   edx,eax
c000b5c4:	92                   	xchg   edx,eax
c000b5c5:	90                   	nop
c000b5c6:	50                   	push   eax
c000b5c7:	38 14 12             	cmp    BYTE PTR [edx+edx*1],dl
c000b5ca:	92                   	xchg   edx,eax
c000b5cb:	92                   	xchg   edx,eax
c000b5cc:	d4 b8                	aam    0xb8
c000b5ce:	10 10                	adc    BYTE PTR [eax],dl
c000b5d0:	62 92 94 94 68 08    	bound  edx,QWORD PTR [edx+0x8689494]
c000b5d6:	10 10                	adc    BYTE PTR [eax],dl
c000b5d8:	20 2c 52             	and    BYTE PTR [edx+edx*2],ch
c000b5db:	52                   	push   edx
c000b5dc:	92                   	xchg   edx,eax
c000b5dd:	8c 00                	mov    WORD PTR [eax],es
c000b5df:	00 00                	add    BYTE PTR [eax],al
c000b5e1:	70 88                	jo     c000b56b <PKnFont+0x1eb>
c000b5e3:	88 88 90 60 47 a2    	mov    BYTE PTR [eax-0x5db89f70],cl
c000b5e9:	92                   	xchg   edx,eax
c000b5ea:	8a 84 46 39 00 00 04 	mov    al,BYTE PTR [esi+eax*2+0x4000039]
c000b5f1:	08 10                	or     BYTE PTR [eax],dl
	...
c000b5ff:	00 02                	add    BYTE PTR [edx],al
c000b601:	04 08                	add    al,0x8
c000b603:	08 10                	or     BYTE PTR [eax],dl
c000b605:	10 10                	adc    BYTE PTR [eax],dl
c000b607:	10 10                	adc    BYTE PTR [eax],dl
c000b609:	10 10                	adc    BYTE PTR [eax],dl
c000b60b:	08 08                	or     BYTE PTR [eax],cl
c000b60d:	04 02                	add    al,0x2
c000b60f:	00 80 40 20 20 10    	add    BYTE PTR [eax+0x10202040],al
c000b615:	10 10                	adc    BYTE PTR [eax],dl
c000b617:	10 10                	adc    BYTE PTR [eax],dl
c000b619:	10 10                	adc    BYTE PTR [eax],dl
c000b61b:	20 20                	and    BYTE PTR [eax],ah
c000b61d:	40                   	inc    eax
c000b61e:	80 00 00             	add    BYTE PTR [eax],0x0
c000b621:	00 00                	add    BYTE PTR [eax],al
c000b623:	00 00                	add    BYTE PTR [eax],al
c000b625:	10 92 54 38 54 92    	adc    BYTE PTR [edx-0x6dabc7ac],dl
c000b62b:	10 00                	adc    BYTE PTR [eax],al
	...
c000b635:	10 10                	adc    BYTE PTR [eax],dl
c000b637:	10 fe                	adc    dh,bh
c000b639:	10 10                	adc    BYTE PTR [eax],dl
c000b63b:	10 00                	adc    BYTE PTR [eax],al
	...
c000b649:	00 00                	add    BYTE PTR [eax],al
c000b64b:	18 18                	sbb    BYTE PTR [eax],bl
c000b64d:	08 08                	or     BYTE PTR [eax],cl
c000b64f:	10 00                	adc    BYTE PTR [eax],al
c000b651:	00 00                	add    BYTE PTR [eax],al
c000b653:	00 00                	add    BYTE PTR [eax],al
c000b655:	00 00                	add    BYTE PTR [eax],al
c000b657:	00 fe                	add    dh,bh
	...
c000b669:	00 00                	add    BYTE PTR [eax],al
c000b66b:	00 18                	add    BYTE PTR [eax],bl
c000b66d:	18 00                	sbb    BYTE PTR [eax],al
c000b66f:	00 02                	add    BYTE PTR [edx],al
c000b671:	02 04 04             	add    al,BYTE PTR [esp+eax*1]
c000b674:	08 08                	or     BYTE PTR [eax],cl
c000b676:	08 10                	or     BYTE PTR [eax],dl
c000b678:	10 20                	adc    BYTE PTR [eax],ah
c000b67a:	20 40 40             	and    BYTE PTR [eax+0x40],al
c000b67d:	40                   	inc    eax
c000b67e:	80 80 00 18 24 24 42 	add    BYTE PTR [eax+0x24241800],0x42
c000b685:	42                   	inc    edx
c000b686:	42                   	inc    edx
c000b687:	42                   	inc    edx
c000b688:	42                   	inc    edx
c000b689:	42                   	inc    edx
c000b68a:	42                   	inc    edx
c000b68b:	24 24                	and    al,0x24
c000b68d:	18 00                	sbb    BYTE PTR [eax],al
c000b68f:	00 00                	add    BYTE PTR [eax],al
c000b691:	08 18                	or     BYTE PTR [eax],bl
c000b693:	28 08                	sub    BYTE PTR [eax],cl
c000b695:	08 08                	or     BYTE PTR [eax],cl
c000b697:	08 08                	or     BYTE PTR [eax],cl
c000b699:	08 08                	or     BYTE PTR [eax],cl
c000b69b:	08 08                	or     BYTE PTR [eax],cl
c000b69d:	3e 00 00             	add    BYTE PTR ds:[eax],al
c000b6a0:	00 18                	add    BYTE PTR [eax],bl
c000b6a2:	24 42                	and    al,0x42
c000b6a4:	42                   	inc    edx
c000b6a5:	02 04 08             	add    al,BYTE PTR [eax+ecx*1]
c000b6a8:	10 20                	adc    BYTE PTR [eax],ah
c000b6aa:	20 40 40             	and    BYTE PTR [eax+0x40],al
c000b6ad:	7e 00                	jle    c000b6af <PKnFont+0x32f>
c000b6af:	00 00                	add    BYTE PTR [eax],al
c000b6b1:	18 24 42             	sbb    BYTE PTR [edx+eax*2],ah
c000b6b4:	02 02                	add    al,BYTE PTR [edx]
c000b6b6:	04 18                	add    al,0x18
c000b6b8:	04 02                	add    al,0x2
c000b6ba:	02 42 24             	add    al,BYTE PTR [edx+0x24]
c000b6bd:	18 00                	sbb    BYTE PTR [eax],al
c000b6bf:	00 00                	add    BYTE PTR [eax],al
c000b6c1:	0c 0c                	or     al,0xc
c000b6c3:	0c 14                	or     al,0x14
c000b6c5:	14 14                	adc    al,0x14
c000b6c7:	24 24                	and    al,0x24
c000b6c9:	44                   	inc    esp
c000b6ca:	7e 04                	jle    c000b6d0 <PKnFont+0x350>
c000b6cc:	04 1e                	add    al,0x1e
c000b6ce:	00 00                	add    BYTE PTR [eax],al
c000b6d0:	00 7c 40 40          	add    BYTE PTR [eax+eax*2+0x40],bh
c000b6d4:	40                   	inc    eax
c000b6d5:	58                   	pop    eax
c000b6d6:	64 02 02             	add    al,BYTE PTR fs:[edx]
c000b6d9:	02 02                	add    al,BYTE PTR [edx]
c000b6db:	42                   	inc    edx
c000b6dc:	24 18                	and    al,0x18
c000b6de:	00 00                	add    BYTE PTR [eax],al
c000b6e0:	00 18                	add    BYTE PTR [eax],bl
c000b6e2:	24 42                	and    al,0x42
c000b6e4:	40                   	inc    eax
c000b6e5:	58                   	pop    eax
c000b6e6:	64 42                	fs inc edx
c000b6e8:	42                   	inc    edx
c000b6e9:	42                   	inc    edx
c000b6ea:	42                   	inc    edx
c000b6eb:	42                   	inc    edx
c000b6ec:	24 18                	and    al,0x18
c000b6ee:	00 00                	add    BYTE PTR [eax],al
c000b6f0:	00 7e 42             	add    BYTE PTR [esi+0x42],bh
c000b6f3:	42                   	inc    edx
c000b6f4:	04 04                	add    al,0x4
c000b6f6:	08 08                	or     BYTE PTR [eax],cl
c000b6f8:	08 10                	or     BYTE PTR [eax],dl
c000b6fa:	10 10                	adc    BYTE PTR [eax],dl
c000b6fc:	10 38                	adc    BYTE PTR [eax],bh
c000b6fe:	00 00                	add    BYTE PTR [eax],al
c000b700:	00 18                	add    BYTE PTR [eax],bl
c000b702:	24 42                	and    al,0x42
c000b704:	42                   	inc    edx
c000b705:	42                   	inc    edx
c000b706:	24 18                	and    al,0x18
c000b708:	24 42                	and    al,0x42
c000b70a:	42                   	inc    edx
c000b70b:	42                   	inc    edx
c000b70c:	24 18                	and    al,0x18
c000b70e:	00 00                	add    BYTE PTR [eax],al
c000b710:	00 18                	add    BYTE PTR [eax],bl
c000b712:	24 42                	and    al,0x42
c000b714:	42                   	inc    edx
c000b715:	42                   	inc    edx
c000b716:	42                   	inc    edx
c000b717:	42                   	inc    edx
c000b718:	26 1a 02             	sbb    al,BYTE PTR es:[edx]
c000b71b:	42                   	inc    edx
c000b71c:	24 18                	and    al,0x18
c000b71e:	00 00                	add    BYTE PTR [eax],al
c000b720:	00 00                	add    BYTE PTR [eax],al
c000b722:	00 00                	add    BYTE PTR [eax],al
c000b724:	00 18                	add    BYTE PTR [eax],bl
c000b726:	18 00                	sbb    BYTE PTR [eax],al
c000b728:	00 00                	add    BYTE PTR [eax],al
c000b72a:	00 00                	add    BYTE PTR [eax],al
c000b72c:	18 18                	sbb    BYTE PTR [eax],bl
c000b72e:	00 00                	add    BYTE PTR [eax],al
c000b730:	00 00                	add    BYTE PTR [eax],al
c000b732:	00 00                	add    BYTE PTR [eax],al
c000b734:	00 18                	add    BYTE PTR [eax],bl
c000b736:	18 00                	sbb    BYTE PTR [eax],al
c000b738:	00 00                	add    BYTE PTR [eax],al
c000b73a:	00 18                	add    BYTE PTR [eax],bl
c000b73c:	18 08                	sbb    BYTE PTR [eax],cl
c000b73e:	08 10                	or     BYTE PTR [eax],dl
c000b740:	00 02                	add    BYTE PTR [edx],al
c000b742:	04 08                	add    al,0x8
c000b744:	10 20                	adc    BYTE PTR [eax],ah
c000b746:	40                   	inc    eax
c000b747:	80 80 40 20 10 08 04 	add    BYTE PTR [eax+0x8102040],0x4
c000b74e:	02 00                	add    al,BYTE PTR [eax]
c000b750:	00 00                	add    BYTE PTR [eax],al
c000b752:	00 00                	add    BYTE PTR [eax],al
c000b754:	00 00                	add    BYTE PTR [eax],al
c000b756:	fe 00                	inc    BYTE PTR [eax]
c000b758:	00 fe                	add    dh,bh
c000b75a:	00 00                	add    BYTE PTR [eax],al
c000b75c:	00 00                	add    BYTE PTR [eax],al
c000b75e:	00 00                	add    BYTE PTR [eax],al
c000b760:	00 80 40 20 10 08    	add    BYTE PTR [eax+0x8102040],al
c000b766:	04 02                	add    al,0x2
c000b768:	02 04 08             	add    al,BYTE PTR [eax+ecx*1]
c000b76b:	10 20                	adc    BYTE PTR [eax],ah
c000b76d:	40                   	inc    eax
c000b76e:	80 00 00             	add    BYTE PTR [eax],0x0
c000b771:	38 44 82 82          	cmp    BYTE PTR [edx+eax*4-0x7e],al
c000b775:	82                   	(bad)  
c000b776:	04 08                	add    al,0x8
c000b778:	10 10                	adc    BYTE PTR [eax],dl
c000b77a:	00 00                	add    BYTE PTR [eax],al
c000b77c:	18 18                	sbb    BYTE PTR [eax],bl
c000b77e:	00 00                	add    BYTE PTR [eax],al
c000b780:	00 38                	add    BYTE PTR [eax],bh
c000b782:	44                   	inc    esp
c000b783:	82                   	(bad)  
c000b784:	9a aa aa aa aa aa 9c 	call   0x9caa:0xaaaaaaaa
c000b78b:	80 46 38 00          	add    BYTE PTR [esi+0x38],0x0
c000b78f:	00 00                	add    BYTE PTR [eax],al
c000b791:	18 18                	sbb    BYTE PTR [eax],bl
c000b793:	18 18                	sbb    BYTE PTR [eax],bl
c000b795:	24 24                	and    al,0x24
c000b797:	24 24                	and    al,0x24
c000b799:	7e 42                	jle    c000b7dd <PKnFont+0x45d>
c000b79b:	42                   	inc    edx
c000b79c:	42                   	inc    edx
c000b79d:	e7 00                	out    0x0,eax
c000b79f:	00 00                	add    BYTE PTR [eax],al
c000b7a1:	f0 48                	lock dec eax
c000b7a3:	44                   	inc    esp
c000b7a4:	44                   	inc    esp
c000b7a5:	44                   	inc    esp
c000b7a6:	48                   	dec    eax
c000b7a7:	78 44                	js     c000b7ed <PKnFont+0x46d>
c000b7a9:	42                   	inc    edx
c000b7aa:	42                   	inc    edx
c000b7ab:	42                   	inc    edx
c000b7ac:	44                   	inc    esp
c000b7ad:	f8                   	clc    
c000b7ae:	00 00                	add    BYTE PTR [eax],al
c000b7b0:	00 3a                	add    BYTE PTR [edx],bh
c000b7b2:	46                   	inc    esi
c000b7b3:	42                   	inc    edx
c000b7b4:	82                   	(bad)  
c000b7b5:	80 80 80 80 80 82 42 	add    BYTE PTR [eax-0x7d7f7f80],0x42
c000b7bc:	44                   	inc    esp
c000b7bd:	38 00                	cmp    BYTE PTR [eax],al
c000b7bf:	00 00                	add    BYTE PTR [eax],al
c000b7c1:	f8                   	clc    
c000b7c2:	44                   	inc    esp
c000b7c3:	44                   	inc    esp
c000b7c4:	42                   	inc    edx
c000b7c5:	42                   	inc    edx
c000b7c6:	42                   	inc    edx
c000b7c7:	42                   	inc    edx
c000b7c8:	42                   	inc    edx
c000b7c9:	42                   	inc    edx
c000b7ca:	42                   	inc    edx
c000b7cb:	44                   	inc    esp
c000b7cc:	44                   	inc    esp
c000b7cd:	f8                   	clc    
c000b7ce:	00 00                	add    BYTE PTR [eax],al
c000b7d0:	00 fe                	add    dh,bh
c000b7d2:	42                   	inc    edx
c000b7d3:	42                   	inc    edx
c000b7d4:	40                   	inc    eax
c000b7d5:	40                   	inc    eax
c000b7d6:	44                   	inc    esp
c000b7d7:	7c 44                	jl     c000b81d <PKnFont+0x49d>
c000b7d9:	40                   	inc    eax
c000b7da:	40                   	inc    eax
c000b7db:	42                   	inc    edx
c000b7dc:	42                   	inc    edx
c000b7dd:	fe 00                	inc    BYTE PTR [eax]
c000b7df:	00 00                	add    BYTE PTR [eax],al
c000b7e1:	fe 42 42             	inc    BYTE PTR [edx+0x42]
c000b7e4:	40                   	inc    eax
c000b7e5:	40                   	inc    eax
c000b7e6:	44                   	inc    esp
c000b7e7:	7c 44                	jl     c000b82d <PKnFont+0x4ad>
c000b7e9:	44                   	inc    esp
c000b7ea:	40                   	inc    eax
c000b7eb:	40                   	inc    eax
c000b7ec:	40                   	inc    eax
c000b7ed:	f0 00 00             	lock add BYTE PTR [eax],al
c000b7f0:	00 3a                	add    BYTE PTR [edx],bh
c000b7f2:	46                   	inc    esi
c000b7f3:	42                   	inc    edx
c000b7f4:	82                   	(bad)  
c000b7f5:	80 80 9e 82 82 82 42 	add    BYTE PTR [eax-0x7d7d7d62],0x42
c000b7fc:	46                   	inc    esi
c000b7fd:	38 00                	cmp    BYTE PTR [eax],al
c000b7ff:	00 00                	add    BYTE PTR [eax],al
c000b801:	e7 42                	out    0x42,eax
c000b803:	42                   	inc    edx
c000b804:	42                   	inc    edx
c000b805:	42                   	inc    edx
c000b806:	42                   	inc    edx
c000b807:	7e 42                	jle    c000b84b <PKnFont+0x4cb>
c000b809:	42                   	inc    edx
c000b80a:	42                   	inc    edx
c000b80b:	42                   	inc    edx
c000b80c:	42                   	inc    edx
c000b80d:	e7 00                	out    0x0,eax
c000b80f:	00 00                	add    BYTE PTR [eax],al
c000b811:	7c 10                	jl     c000b823 <PKnFont+0x4a3>
c000b813:	10 10                	adc    BYTE PTR [eax],dl
c000b815:	10 10                	adc    BYTE PTR [eax],dl
c000b817:	10 10                	adc    BYTE PTR [eax],dl
c000b819:	10 10                	adc    BYTE PTR [eax],dl
c000b81b:	10 10                	adc    BYTE PTR [eax],dl
c000b81d:	7c 00                	jl     c000b81f <PKnFont+0x49f>
c000b81f:	00 00                	add    BYTE PTR [eax],al
c000b821:	1f                   	pop    ds
c000b822:	04 04                	add    al,0x4
c000b824:	04 04                	add    al,0x4
c000b826:	04 04                	add    al,0x4
c000b828:	04 04                	add    al,0x4
c000b82a:	04 04                	add    al,0x4
c000b82c:	84 48 30             	test   BYTE PTR [eax+0x30],cl
c000b82f:	00 00                	add    BYTE PTR [eax],al
c000b831:	e7 42                	out    0x42,eax
c000b833:	44                   	inc    esp
c000b834:	48                   	dec    eax
c000b835:	50                   	push   eax
c000b836:	50                   	push   eax
c000b837:	60                   	pusha  
c000b838:	50                   	push   eax
c000b839:	50                   	push   eax
c000b83a:	48                   	dec    eax
c000b83b:	44                   	inc    esp
c000b83c:	42                   	inc    edx
c000b83d:	e7 00                	out    0x0,eax
c000b83f:	00 00                	add    BYTE PTR [eax],al
c000b841:	f0 40                	lock inc eax
c000b843:	40                   	inc    eax
c000b844:	40                   	inc    eax
c000b845:	40                   	inc    eax
c000b846:	40                   	inc    eax
c000b847:	40                   	inc    eax
c000b848:	40                   	inc    eax
c000b849:	40                   	inc    eax
c000b84a:	40                   	inc    eax
c000b84b:	42                   	inc    edx
c000b84c:	42                   	inc    edx
c000b84d:	fe 00                	inc    BYTE PTR [eax]
c000b84f:	00 00                	add    BYTE PTR [eax],al
c000b851:	c3                   	ret    
c000b852:	42                   	inc    edx
c000b853:	66 66 66 5a          	data16 data16 pop dx
c000b857:	5a                   	pop    edx
c000b858:	5a                   	pop    edx
c000b859:	42                   	inc    edx
c000b85a:	42                   	inc    edx
c000b85b:	42                   	inc    edx
c000b85c:	42                   	inc    edx
c000b85d:	e7 00                	out    0x0,eax
c000b85f:	00 00                	add    BYTE PTR [eax],al
c000b861:	c7 42 62 62 52 52 52 	mov    DWORD PTR [edx+0x62],0x52525262
c000b868:	4a                   	dec    edx
c000b869:	4a                   	dec    edx
c000b86a:	4a                   	dec    edx
c000b86b:	46                   	inc    esi
c000b86c:	46                   	inc    esi
c000b86d:	e2 00                	loop   c000b86f <PKnFont+0x4ef>
c000b86f:	00 00                	add    BYTE PTR [eax],al
c000b871:	38 44 82 82          	cmp    BYTE PTR [edx+eax*4-0x7e],al
c000b875:	82                   	(bad)  
c000b876:	82                   	(bad)  
c000b877:	82                   	(bad)  
c000b878:	82                   	(bad)  
c000b879:	82                   	(bad)  
c000b87a:	82                   	(bad)  
c000b87b:	82                   	(bad)  
c000b87c:	44                   	inc    esp
c000b87d:	38 00                	cmp    BYTE PTR [eax],al
c000b87f:	00 00                	add    BYTE PTR [eax],al
c000b881:	f8                   	clc    
c000b882:	44                   	inc    esp
c000b883:	42                   	inc    edx
c000b884:	42                   	inc    edx
c000b885:	42                   	inc    edx
c000b886:	44                   	inc    esp
c000b887:	78 40                	js     c000b8c9 <PKnFont+0x549>
c000b889:	40                   	inc    eax
c000b88a:	40                   	inc    eax
c000b88b:	40                   	inc    eax
c000b88c:	40                   	inc    eax
c000b88d:	f0 00 00             	lock add BYTE PTR [eax],al
c000b890:	00 38                	add    BYTE PTR [eax],bh
c000b892:	44                   	inc    esp
c000b893:	82                   	(bad)  
c000b894:	82                   	(bad)  
c000b895:	82                   	(bad)  
c000b896:	82                   	(bad)  
c000b897:	82                   	(bad)  
c000b898:	82                   	(bad)  
c000b899:	82                   	(bad)  
c000b89a:	92                   	xchg   edx,eax
c000b89b:	8a 44 3a 00          	mov    al,BYTE PTR [edx+edi*1+0x0]
c000b89f:	00 00                	add    BYTE PTR [eax],al
c000b8a1:	fc                   	cld    
c000b8a2:	42                   	inc    edx
c000b8a3:	42                   	inc    edx
c000b8a4:	42                   	inc    edx
c000b8a5:	42                   	inc    edx
c000b8a6:	7c 44                	jl     c000b8ec <PKnFont+0x56c>
c000b8a8:	42                   	inc    edx
c000b8a9:	42                   	inc    edx
c000b8aa:	42                   	inc    edx
c000b8ab:	42                   	inc    edx
c000b8ac:	42                   	inc    edx
c000b8ad:	e7 00                	out    0x0,eax
c000b8af:	00 00                	add    BYTE PTR [eax],al
c000b8b1:	3a 46 82             	cmp    al,BYTE PTR [esi-0x7e]
c000b8b4:	82                   	(bad)  
c000b8b5:	80 40 38 04          	add    BYTE PTR [eax+0x38],0x4
c000b8b9:	02 82 82 c4 b8 00    	add    al,BYTE PTR [edx+0xb8c482]
c000b8bf:	00 00                	add    BYTE PTR [eax],al
c000b8c1:	fe                   	(bad)  
c000b8c2:	92                   	xchg   edx,eax
c000b8c3:	92                   	xchg   edx,eax
c000b8c4:	10 10                	adc    BYTE PTR [eax],dl
c000b8c6:	10 10                	adc    BYTE PTR [eax],dl
c000b8c8:	10 10                	adc    BYTE PTR [eax],dl
c000b8ca:	10 10                	adc    BYTE PTR [eax],dl
c000b8cc:	10 7c 00 00          	adc    BYTE PTR [eax+eax*1+0x0],bh
c000b8d0:	00 e7                	add    bh,ah
c000b8d2:	42                   	inc    edx
c000b8d3:	42                   	inc    edx
c000b8d4:	42                   	inc    edx
c000b8d5:	42                   	inc    edx
c000b8d6:	42                   	inc    edx
c000b8d7:	42                   	inc    edx
c000b8d8:	42                   	inc    edx
c000b8d9:	42                   	inc    edx
c000b8da:	42                   	inc    edx
c000b8db:	42                   	inc    edx
c000b8dc:	24 3c                	and    al,0x3c
c000b8de:	00 00                	add    BYTE PTR [eax],al
c000b8e0:	00 e7                	add    bh,ah
c000b8e2:	42                   	inc    edx
c000b8e3:	42                   	inc    edx
c000b8e4:	42                   	inc    edx
c000b8e5:	42                   	inc    edx
c000b8e6:	24 24                	and    al,0x24
c000b8e8:	24 24                	and    al,0x24
c000b8ea:	18 18                	sbb    BYTE PTR [eax],bl
c000b8ec:	18 18                	sbb    BYTE PTR [eax],bl
c000b8ee:	00 00                	add    BYTE PTR [eax],al
c000b8f0:	00 e7                	add    bh,ah
c000b8f2:	42                   	inc    edx
c000b8f3:	42                   	inc    edx
c000b8f4:	42                   	inc    edx
c000b8f5:	5a                   	pop    edx
c000b8f6:	5a                   	pop    edx
c000b8f7:	5a                   	pop    edx
c000b8f8:	5a                   	pop    edx
c000b8f9:	24 24                	and    al,0x24
c000b8fb:	24 24                	and    al,0x24
c000b8fd:	24 00                	and    al,0x0
c000b8ff:	00 00                	add    BYTE PTR [eax],al
c000b901:	e7 42                	out    0x42,eax
c000b903:	42                   	inc    edx
c000b904:	24 24                	and    al,0x24
c000b906:	24 18                	and    al,0x18
c000b908:	24 24                	and    al,0x24
c000b90a:	24 42                	and    al,0x42
c000b90c:	42                   	inc    edx
c000b90d:	e7 00                	out    0x0,eax
c000b90f:	00 00                	add    BYTE PTR [eax],al
c000b911:	ee                   	out    dx,al
c000b912:	44                   	inc    esp
c000b913:	44                   	inc    esp
c000b914:	44                   	inc    esp
c000b915:	28 28                	sub    BYTE PTR [eax],ch
c000b917:	28 10                	sub    BYTE PTR [eax],dl
c000b919:	10 10                	adc    BYTE PTR [eax],dl
c000b91b:	10 10                	adc    BYTE PTR [eax],dl
c000b91d:	7c 00                	jl     c000b91f <PKnFont+0x59f>
c000b91f:	00 00                	add    BYTE PTR [eax],al
c000b921:	fe 84 84 08 08 10 10 	inc    BYTE PTR [esp+eax*4+0x10100808]
c000b928:	20 20                	and    BYTE PTR [eax],ah
c000b92a:	40                   	inc    eax
c000b92b:	42                   	inc    edx
c000b92c:	82                   	(bad)  
c000b92d:	fe 00                	inc    BYTE PTR [eax]
c000b92f:	00 00                	add    BYTE PTR [eax],al
c000b931:	3e 20 20             	and    BYTE PTR ds:[eax],ah
c000b934:	20 20                	and    BYTE PTR [eax],ah
c000b936:	20 20                	and    BYTE PTR [eax],ah
c000b938:	20 20                	and    BYTE PTR [eax],ah
c000b93a:	20 20                	and    BYTE PTR [eax],ah
c000b93c:	20 20                	and    BYTE PTR [eax],ah
c000b93e:	3e 00 80 80 40 40 20 	add    BYTE PTR ds:[eax+0x20404080],al
c000b945:	20 20                	and    BYTE PTR [eax],ah
c000b947:	10 10                	adc    BYTE PTR [eax],dl
c000b949:	08 08                	or     BYTE PTR [eax],cl
c000b94b:	04 04                	add    al,0x4
c000b94d:	04 02                	add    al,0x2
c000b94f:	02 00                	add    al,BYTE PTR [eax]
c000b951:	7c 04                	jl     c000b957 <PKnFont+0x5d7>
c000b953:	04 04                	add    al,0x4
c000b955:	04 04                	add    al,0x4
c000b957:	04 04                	add    al,0x4
c000b959:	04 04                	add    al,0x4
c000b95b:	04 04                	add    al,0x4
c000b95d:	04 7c                	add    al,0x7c
c000b95f:	00 00                	add    BYTE PTR [eax],al
c000b961:	10 28                	adc    BYTE PTR [eax],ch
c000b963:	44                   	inc    esp
c000b964:	82                   	(bad)  
	...
c000b97d:	00 fe                	add    dh,bh
c000b97f:	00 10                	add    BYTE PTR [eax],dl
c000b981:	08 04 00             	or     BYTE PTR [eax+eax*1],al
	...
c000b994:	00 70 08             	add    BYTE PTR [eax+0x8],dh
c000b997:	04 3c                	add    al,0x3c
c000b999:	44                   	inc    esp
c000b99a:	84 84 8c 76 00 00 c0 	test   BYTE PTR [esp+ecx*4-0x3fffff8a],al
c000b9a1:	40                   	inc    eax
c000b9a2:	40                   	inc    eax
c000b9a3:	40                   	inc    eax
c000b9a4:	40                   	inc    eax
c000b9a5:	58                   	pop    eax
c000b9a6:	64 42                	fs inc edx
c000b9a8:	42                   	inc    edx
c000b9a9:	42                   	inc    edx
c000b9aa:	42                   	inc    edx
c000b9ab:	42                   	inc    edx
c000b9ac:	64 58                	fs pop eax
c000b9ae:	00 00                	add    BYTE PTR [eax],al
c000b9b0:	00 00                	add    BYTE PTR [eax],al
c000b9b2:	00 00                	add    BYTE PTR [eax],al
c000b9b4:	00 30                	add    BYTE PTR [eax],dh
c000b9b6:	4c                   	dec    esp
c000b9b7:	84 84 80 80 82 44 38 	test   BYTE PTR [eax+eax*4+0x38448280],al
c000b9be:	00 00                	add    BYTE PTR [eax],al
c000b9c0:	0c 04                	or     al,0x4
c000b9c2:	04 04                	add    al,0x4
c000b9c4:	04 34                	add    al,0x34
c000b9c6:	4c                   	dec    esp
c000b9c7:	84 84 84 84 84 4c 36 	test   BYTE PTR [esp+eax*4+0x364c8484],al
c000b9ce:	00 00                	add    BYTE PTR [eax],al
c000b9d0:	00 00                	add    BYTE PTR [eax],al
c000b9d2:	00 00                	add    BYTE PTR [eax],al
c000b9d4:	00 38                	add    BYTE PTR [eax],bh
c000b9d6:	44                   	inc    esp
c000b9d7:	82                   	(bad)  
c000b9d8:	82                   	(bad)  
c000b9d9:	fc                   	cld    
c000b9da:	80 82 42 3c 00 00 0e 	add    BYTE PTR [edx+0x3c42],0xe
c000b9e1:	10 10                	adc    BYTE PTR [eax],dl
c000b9e3:	10 10                	adc    BYTE PTR [eax],dl
c000b9e5:	7c 10                	jl     c000b9f7 <PKnFont+0x677>
c000b9e7:	10 10                	adc    BYTE PTR [eax],dl
c000b9e9:	10 10                	adc    BYTE PTR [eax],dl
c000b9eb:	10 10                	adc    BYTE PTR [eax],dl
c000b9ed:	7c 00                	jl     c000b9ef <PKnFont+0x66f>
c000b9ef:	00 00                	add    BYTE PTR [eax],al
c000b9f1:	00 00                	add    BYTE PTR [eax],al
c000b9f3:	00 00                	add    BYTE PTR [eax],al
c000b9f5:	36 4c                	ss dec esp
c000b9f7:	84 84 84 84 4c 34 04 	test   BYTE PTR [esp+eax*4+0x4344c84],al
c000b9fe:	04 38                	add    al,0x38
c000ba00:	c0 40 40 40          	rol    BYTE PTR [eax+0x40],0x40
c000ba04:	40                   	inc    eax
c000ba05:	58                   	pop    eax
c000ba06:	64 42                	fs inc edx
c000ba08:	42                   	inc    edx
c000ba09:	42                   	inc    edx
c000ba0a:	42                   	inc    edx
c000ba0b:	42                   	inc    edx
c000ba0c:	42                   	inc    edx
c000ba0d:	e3 00                	jecxz  c000ba0f <PKnFont+0x68f>
c000ba0f:	00 00                	add    BYTE PTR [eax],al
c000ba11:	10 10                	adc    BYTE PTR [eax],dl
c000ba13:	00 00                	add    BYTE PTR [eax],al
c000ba15:	30 10                	xor    BYTE PTR [eax],dl
c000ba17:	10 10                	adc    BYTE PTR [eax],dl
c000ba19:	10 10                	adc    BYTE PTR [eax],dl
c000ba1b:	10 10                	adc    BYTE PTR [eax],dl
c000ba1d:	38 00                	cmp    BYTE PTR [eax],al
c000ba1f:	00 00                	add    BYTE PTR [eax],al
c000ba21:	04 04                	add    al,0x4
c000ba23:	00 00                	add    BYTE PTR [eax],al
c000ba25:	0c 04                	or     al,0x4
c000ba27:	04 04                	add    al,0x4
c000ba29:	04 04                	add    al,0x4
c000ba2b:	04 04                	add    al,0x4
c000ba2d:	08 08                	or     BYTE PTR [eax],cl
c000ba2f:	30 c0                	xor    al,al
c000ba31:	40                   	inc    eax
c000ba32:	40                   	inc    eax
c000ba33:	40                   	inc    eax
c000ba34:	40                   	inc    eax
c000ba35:	4e                   	dec    esi
c000ba36:	44                   	inc    esp
c000ba37:	48                   	dec    eax
c000ba38:	50                   	push   eax
c000ba39:	60                   	pusha  
c000ba3a:	50                   	push   eax
c000ba3b:	48                   	dec    eax
c000ba3c:	44                   	inc    esp
c000ba3d:	e6 00                	out    0x0,al
c000ba3f:	00 30                	add    BYTE PTR [eax],dh
c000ba41:	10 10                	adc    BYTE PTR [eax],dl
c000ba43:	10 10                	adc    BYTE PTR [eax],dl
c000ba45:	10 10                	adc    BYTE PTR [eax],dl
c000ba47:	10 10                	adc    BYTE PTR [eax],dl
c000ba49:	10 10                	adc    BYTE PTR [eax],dl
c000ba4b:	10 10                	adc    BYTE PTR [eax],dl
c000ba4d:	38 00                	cmp    BYTE PTR [eax],al
c000ba4f:	00 00                	add    BYTE PTR [eax],al
c000ba51:	00 00                	add    BYTE PTR [eax],al
c000ba53:	00 00                	add    BYTE PTR [eax],al
c000ba55:	f6                   	(bad)  
c000ba56:	49                   	dec    ecx
c000ba57:	49                   	dec    ecx
c000ba58:	49                   	dec    ecx
c000ba59:	49                   	dec    ecx
c000ba5a:	49                   	dec    ecx
c000ba5b:	49                   	dec    ecx
c000ba5c:	49                   	dec    ecx
c000ba5d:	db 00                	fild   DWORD PTR [eax]
c000ba5f:	00 00                	add    BYTE PTR [eax],al
c000ba61:	00 00                	add    BYTE PTR [eax],al
c000ba63:	00 00                	add    BYTE PTR [eax],al
c000ba65:	d8 64 42 42          	fsub   DWORD PTR [edx+eax*2+0x42]
c000ba69:	42                   	inc    edx
c000ba6a:	42                   	inc    edx
c000ba6b:	42                   	inc    edx
c000ba6c:	42                   	inc    edx
c000ba6d:	e3 00                	jecxz  c000ba6f <PKnFont+0x6ef>
c000ba6f:	00 00                	add    BYTE PTR [eax],al
c000ba71:	00 00                	add    BYTE PTR [eax],al
c000ba73:	00 00                	add    BYTE PTR [eax],al
c000ba75:	38 44 82 82          	cmp    BYTE PTR [edx+eax*4-0x7e],al
c000ba79:	82                   	(bad)  
c000ba7a:	82                   	(bad)  
c000ba7b:	82                   	(bad)  
c000ba7c:	44                   	inc    esp
c000ba7d:	38 00                	cmp    BYTE PTR [eax],al
c000ba7f:	00 00                	add    BYTE PTR [eax],al
c000ba81:	00 00                	add    BYTE PTR [eax],al
c000ba83:	00 d8                	add    al,bl
c000ba85:	64 42                	fs inc edx
c000ba87:	42                   	inc    edx
c000ba88:	42                   	inc    edx
c000ba89:	42                   	inc    edx
c000ba8a:	42                   	inc    edx
c000ba8b:	64 58                	fs pop eax
c000ba8d:	40                   	inc    eax
c000ba8e:	40                   	inc    eax
c000ba8f:	e0 00                	loopne c000ba91 <PKnFont+0x711>
c000ba91:	00 00                	add    BYTE PTR [eax],al
c000ba93:	00 34 4c             	add    BYTE PTR [esp+ecx*2],dh
c000ba96:	84 84 84 84 84 4c 34 	test   BYTE PTR [esp+eax*4+0x344c8484],al
c000ba9d:	04 04                	add    al,0x4
c000ba9f:	0e                   	push   cs
c000baa0:	00 00                	add    BYTE PTR [eax],al
c000baa2:	00 00                	add    BYTE PTR [eax],al
c000baa4:	00 dc                	add    ah,bl
c000baa6:	62 42 40             	bound  eax,QWORD PTR [edx+0x40]
c000baa9:	40                   	inc    eax
c000baaa:	40                   	inc    eax
c000baab:	40                   	inc    eax
c000baac:	40                   	inc    eax
c000baad:	e0 00                	loopne c000baaf <PKnFont+0x72f>
c000baaf:	00 00                	add    BYTE PTR [eax],al
c000bab1:	00 00                	add    BYTE PTR [eax],al
c000bab3:	00 00                	add    BYTE PTR [eax],al
c000bab5:	7a 86                	jp     c000ba3d <PKnFont+0x6bd>
c000bab7:	82                   	(bad)  
c000bab8:	c0 38 06             	sar    BYTE PTR [eax],0x6
c000babb:	82                   	(bad)  
c000babc:	c2 bc 00             	ret    0xbc
c000babf:	00 00                	add    BYTE PTR [eax],al
c000bac1:	00 10                	add    BYTE PTR [eax],dl
c000bac3:	10 10                	adc    BYTE PTR [eax],dl
c000bac5:	7c 10                	jl     c000bad7 <PKnFont+0x757>
c000bac7:	10 10                	adc    BYTE PTR [eax],dl
c000bac9:	10 10                	adc    BYTE PTR [eax],dl
c000bacb:	10 10                	adc    BYTE PTR [eax],dl
c000bacd:	0e                   	push   cs
c000bace:	00 00                	add    BYTE PTR [eax],al
c000bad0:	00 00                	add    BYTE PTR [eax],al
c000bad2:	00 00                	add    BYTE PTR [eax],al
c000bad4:	00 c6                	add    dh,al
c000bad6:	42                   	inc    edx
c000bad7:	42                   	inc    edx
c000bad8:	42                   	inc    edx
c000bad9:	42                   	inc    edx
c000bada:	42                   	inc    edx
c000badb:	42                   	inc    edx
c000badc:	46                   	inc    esi
c000badd:	3b 00                	cmp    eax,DWORD PTR [eax]
c000badf:	00 00                	add    BYTE PTR [eax],al
c000bae1:	00 00                	add    BYTE PTR [eax],al
c000bae3:	00 00                	add    BYTE PTR [eax],al
c000bae5:	e7 42                	out    0x42,eax
c000bae7:	42                   	inc    edx
c000bae8:	42                   	inc    edx
c000bae9:	24 24                	and    al,0x24
c000baeb:	24 18                	and    al,0x18
c000baed:	18 00                	sbb    BYTE PTR [eax],al
c000baef:	00 00                	add    BYTE PTR [eax],al
c000baf1:	00 00                	add    BYTE PTR [eax],al
c000baf3:	00 00                	add    BYTE PTR [eax],al
c000baf5:	e7 42                	out    0x42,eax
c000baf7:	42                   	inc    edx
c000baf8:	5a                   	pop    edx
c000baf9:	5a                   	pop    edx
c000bafa:	5a                   	pop    edx
c000bafb:	24 24                	and    al,0x24
c000bafd:	24 00                	and    al,0x0
c000baff:	00 00                	add    BYTE PTR [eax],al
c000bb01:	00 00                	add    BYTE PTR [eax],al
c000bb03:	00 00                	add    BYTE PTR [eax],al
c000bb05:	c6 44 28 28 10       	mov    BYTE PTR [eax+ebp*1+0x28],0x10
c000bb0a:	28 28                	sub    BYTE PTR [eax],ch
c000bb0c:	44                   	inc    esp
c000bb0d:	c6 00 00             	mov    BYTE PTR [eax],0x0
c000bb10:	00 00                	add    BYTE PTR [eax],al
c000bb12:	00 00                	add    BYTE PTR [eax],al
c000bb14:	00 e7                	add    bh,ah
c000bb16:	42                   	inc    edx
c000bb17:	42                   	inc    edx
c000bb18:	24 24                	and    al,0x24
c000bb1a:	24 18                	and    al,0x18
c000bb1c:	18 10                	sbb    BYTE PTR [eax],dl
c000bb1e:	10 60 00             	adc    BYTE PTR [eax+0x0],ah
c000bb21:	00 00                	add    BYTE PTR [eax],al
c000bb23:	00 00                	add    BYTE PTR [eax],al
c000bb25:	fe 82 84 08 10 20    	inc    BYTE PTR [edx+0x20100884]
c000bb2b:	42                   	inc    edx
c000bb2c:	82                   	(bad)  
c000bb2d:	fe 00                	inc    BYTE PTR [eax]
c000bb2f:	00 00                	add    BYTE PTR [eax],al
c000bb31:	06                   	push   es
c000bb32:	08 10                	or     BYTE PTR [eax],dl
c000bb34:	10 10                	adc    BYTE PTR [eax],dl
c000bb36:	10 60 10             	adc    BYTE PTR [eax+0x10],ah
c000bb39:	10 10                	adc    BYTE PTR [eax],dl
c000bb3b:	10 08                	adc    BYTE PTR [eax],cl
c000bb3d:	06                   	push   es
c000bb3e:	00 00                	add    BYTE PTR [eax],al
c000bb40:	10 10                	adc    BYTE PTR [eax],dl
c000bb42:	10 10                	adc    BYTE PTR [eax],dl
c000bb44:	10 10                	adc    BYTE PTR [eax],dl
c000bb46:	10 10                	adc    BYTE PTR [eax],dl
c000bb48:	10 10                	adc    BYTE PTR [eax],dl
c000bb4a:	10 10                	adc    BYTE PTR [eax],dl
c000bb4c:	10 10                	adc    BYTE PTR [eax],dl
c000bb4e:	10 10                	adc    BYTE PTR [eax],dl
c000bb50:	00 60 10             	add    BYTE PTR [eax+0x10],ah
c000bb53:	08 08                	or     BYTE PTR [eax],cl
c000bb55:	08 08                	or     BYTE PTR [eax],cl
c000bb57:	06                   	push   es
c000bb58:	08 08                	or     BYTE PTR [eax],cl
c000bb5a:	08 08                	or     BYTE PTR [eax],cl
c000bb5c:	10 60 00             	adc    BYTE PTR [eax+0x0],ah
c000bb5f:	00 00                	add    BYTE PTR [eax],al
c000bb61:	72 8c                	jb     c000baef <PKnFont+0x76f>
	...

Disassembly of section .eh_frame:

c000c380 <.eh_frame>:
c000c380:	10 00                	adc    BYTE PTR [eax],al
c000c382:	00 00                	add    BYTE PTR [eax],al
c000c384:	00 00                	add    BYTE PTR [eax],al
c000c386:	00 00                	add    BYTE PTR [eax],al
c000c388:	01 00                	add    DWORD PTR [eax],eax
c000c38a:	01 7c 08 0c          	add    DWORD PTR [eax+ecx*1+0xc],edi
c000c38e:	04 04                	add    al,0x4
c000c390:	88 01                	mov    BYTE PTR [ecx],al
c000c392:	00 00                	add    BYTE PTR [eax],al
c000c394:	14 00                	adc    al,0x0
c000c396:	00 00                	add    BYTE PTR [eax],al
c000c398:	18 00                	sbb    BYTE PTR [eax],al
c000c39a:	00 00                	add    BYTE PTR [eax],al
c000c39c:	24 81                	and    al,0x81
c000c39e:	00 c0                	add    al,al
c000c3a0:	05 00 00 00 41       	add    eax,0x41000000
c000c3a5:	0e                   	push   cs
c000c3a6:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000c3ac:	4c                   	dec    esp
c000c3ad:	00 00                	add    BYTE PTR [eax],al
c000c3af:	00 30                	add    BYTE PTR [eax],dh
c000c3b1:	00 00                	add    BYTE PTR [eax],al
c000c3b3:	00 29                	add    BYTE PTR [ecx],ch
c000c3b5:	81 00 c0 4d 00 00    	add    DWORD PTR [eax],0x4dc0
c000c3bb:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000c3be:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000c3c4:	44                   	inc    esp
c000c3c5:	2e 08 83 03 45 2e 0c 	or     BYTE PTR cs:[ebx+0xc2e4503],al
c000c3cc:	42                   	inc    edx
c000c3cd:	2e 10 4b 2e          	adc    BYTE PTR cs:[ebx+0x2e],cl
c000c3d1:	00 43 2e             	add    BYTE PTR [ebx+0x2e],al
c000c3d4:	0c 45                	or     al,0x45
c000c3d6:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000c3da:	00 45 2e             	add    BYTE PTR [ebp+0x2e],al
c000c3dd:	04 04                	add    al,0x4
c000c3df:	01 00                	add    DWORD PTR [eax],eax
c000c3e1:	00 00                	add    BYTE PTR [eax],al
c000c3e3:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c000c3e7:	0c 45                	or     al,0x45
c000c3e9:	2e 10 4a 2e          	adc    BYTE PTR cs:[edx+0x2e],cl
c000c3ed:	0c 41                	or     al,0x41
c000c3ef:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c000c3f3:	0c 42                	or     al,0x42
c000c3f5:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000c3f9:	00 00                	add    BYTE PTR [eax],al
c000c3fb:	00 34 01             	add    BYTE PTR [ecx+eax*1],dh
c000c3fe:	00 00                	add    BYTE PTR [eax],al
c000c400:	80 00 00             	add    BYTE PTR [eax],0x0
c000c403:	00 76 81             	add    BYTE PTR [esi-0x7f],dh
c000c406:	00 c0                	add    al,al
c000c408:	d2 01                	rol    BYTE PTR [ecx],cl
c000c40a:	00 00                	add    BYTE PTR [eax],al
c000c40c:	41                   	inc    ecx
c000c40d:	0e                   	push   cs
c000c40e:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000c414:	46                   	inc    esi
c000c415:	2e 0c 83             	cs or  al,0x83
c000c418:	05 86 04 87 03       	add    eax,0x3870486
c000c41d:	4a                   	dec    edx
c000c41e:	2e 10 4b 2e          	adc    BYTE PTR cs:[ebx+0x2e],cl
c000c422:	00 4f 2e             	add    BYTE PTR [edi+0x2e],cl
c000c425:	04 04                	add    al,0x4
c000c427:	04 00                	add    al,0x0
c000c429:	00 00                	add    BYTE PTR [eax],al
c000c42b:	2e 08 47 2e          	or     BYTE PTR cs:[edi+0x2e],al
c000c42f:	0c 49                	or     al,0x49
c000c431:	2e 10 41 2e          	adc    BYTE PTR cs:[ecx+0x2e],al
c000c435:	14 41                	adc    al,0x41
c000c437:	2e 18 45 2e          	sbb    BYTE PTR cs:[ebp+0x2e],al
c000c43b:	1c 45                	sbb    al,0x45
c000c43d:	2e 20 4e 2e          	and    BYTE PTR cs:[esi+0x2e],cl
c000c441:	08 4c 2e 0c          	or     BYTE PTR [esi+ebp*1+0xc],cl
c000c445:	49                   	dec    ecx
c000c446:	2e 10 41 2e          	adc    BYTE PTR cs:[ecx+0x2e],al
c000c44a:	14 41                	adc    al,0x41
c000c44c:	2e 18 45 2e          	sbb    BYTE PTR cs:[ebp+0x2e],al
c000c450:	1c 45                	sbb    al,0x45
c000c452:	2e 20 48 2e          	and    BYTE PTR cs:[eax+0x2e],cl
c000c456:	04 04                	add    al,0x4
c000c458:	02 00                	add    al,BYTE PTR [eax]
c000c45a:	00 00                	add    BYTE PTR [eax],al
c000c45c:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c000c460:	0c 43                	or     al,0x43
c000c462:	2e 10 4a 2e          	adc    BYTE PTR cs:[edx+0x2e],cl
c000c466:	14 41                	adc    al,0x41
c000c468:	2e 18 4b 2e          	sbb    BYTE PTR cs:[ebx+0x2e],cl
c000c46c:	1c 45                	sbb    al,0x45
c000c46e:	2e 20 48 2e          	and    BYTE PTR cs:[eax+0x2e],cl
c000c472:	0c 42                	or     al,0x42
c000c474:	2e 10 42 2e          	adc    BYTE PTR cs:[edx+0x2e],al
c000c478:	14 41                	adc    al,0x41
c000c47a:	2e 18 4b 2e          	sbb    BYTE PTR cs:[ebx+0x2e],cl
c000c47e:	1c 45                	sbb    al,0x45
c000c480:	2e 20 48 2e          	and    BYTE PTR cs:[eax+0x2e],cl
c000c484:	04 04                	add    al,0x4
c000c486:	02 00                	add    al,BYTE PTR [eax]
c000c488:	00 00                	add    BYTE PTR [eax],al
c000c48a:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c000c48e:	0c 43                	or     al,0x43
c000c490:	2e 10 4a 2e          	adc    BYTE PTR cs:[edx+0x2e],cl
c000c494:	14 41                	adc    al,0x41
c000c496:	2e 18 49 2e          	sbb    BYTE PTR cs:[ecx+0x2e],cl
c000c49a:	1c 45                	sbb    al,0x45
c000c49c:	2e 20 48 2e          	and    BYTE PTR cs:[eax+0x2e],cl
c000c4a0:	0c 42                	or     al,0x42
c000c4a2:	2e 10 42 2e          	adc    BYTE PTR cs:[edx+0x2e],al
c000c4a6:	14 41                	adc    al,0x41
c000c4a8:	2e 18 49 2e          	sbb    BYTE PTR cs:[ecx+0x2e],cl
c000c4ac:	1c 45                	sbb    al,0x45
c000c4ae:	2e 20 48 2e          	and    BYTE PTR cs:[eax+0x2e],cl
c000c4b2:	04 04                	add    al,0x4
c000c4b4:	02 00                	add    al,BYTE PTR [eax]
c000c4b6:	00 00                	add    BYTE PTR [eax],al
c000c4b8:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c000c4bc:	0c 43                	or     al,0x43
c000c4be:	2e 10 4a 2e          	adc    BYTE PTR cs:[edx+0x2e],cl
c000c4c2:	14 41                	adc    al,0x41
c000c4c4:	2e 18 49 2e          	sbb    BYTE PTR cs:[ecx+0x2e],cl
c000c4c8:	1c 45                	sbb    al,0x45
c000c4ca:	2e 20 48 2e          	and    BYTE PTR cs:[eax+0x2e],cl
c000c4ce:	0c 42                	or     al,0x42
c000c4d0:	2e 10 42 2e          	adc    BYTE PTR cs:[edx+0x2e],al
c000c4d4:	14 41                	adc    al,0x41
c000c4d6:	2e 18 49 2e          	sbb    BYTE PTR cs:[ecx+0x2e],cl
c000c4da:	1c 45                	sbb    al,0x45
c000c4dc:	2e 20 48 2e          	and    BYTE PTR cs:[eax+0x2e],cl
c000c4e0:	04 04                	add    al,0x4
c000c4e2:	02 00                	add    al,BYTE PTR [eax]
c000c4e4:	00 00                	add    BYTE PTR [eax],al
c000c4e6:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c000c4ea:	0c 43                	or     al,0x43
c000c4ec:	2e 10 4a 2e          	adc    BYTE PTR cs:[edx+0x2e],cl
c000c4f0:	14 41                	adc    al,0x41
c000c4f2:	2e 18 49 2e          	sbb    BYTE PTR cs:[ecx+0x2e],cl
c000c4f6:	1c 45                	sbb    al,0x45
c000c4f8:	2e 20 48 2e          	and    BYTE PTR cs:[eax+0x2e],cl
c000c4fc:	0c 42                	or     al,0x42
c000c4fe:	2e 10 42 2e          	adc    BYTE PTR cs:[edx+0x2e],al
c000c502:	14 41                	adc    al,0x41
c000c504:	2e 18 49 2e          	sbb    BYTE PTR cs:[ecx+0x2e],cl
c000c508:	1c 45                	sbb    al,0x45
c000c50a:	2e 20 48 2e          	and    BYTE PTR cs:[eax+0x2e],cl
c000c50e:	04 04                	add    al,0x4
c000c510:	02 00                	add    al,BYTE PTR [eax]
c000c512:	00 00                	add    BYTE PTR [eax],al
c000c514:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c000c518:	0c 43                	or     al,0x43
c000c51a:	2e 10 4a 2e          	adc    BYTE PTR cs:[edx+0x2e],cl
c000c51e:	14 41                	adc    al,0x41
c000c520:	2e 18 49 2e          	sbb    BYTE PTR cs:[ecx+0x2e],cl
c000c524:	1c 45                	sbb    al,0x45
c000c526:	2e 20 48 2e          	and    BYTE PTR cs:[eax+0x2e],cl
c000c52a:	00 45 2e             	add    BYTE PTR [ebp+0x2e],al
c000c52d:	0c 44                	or     al,0x44
c000c52f:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000c533:	00 04 01             	add    BYTE PTR [ecx+eax*1],al
c000c536:	00 00                	add    BYTE PTR [eax],al
c000c538:	b8 01 00 00 48       	mov    eax,0x48000001
c000c53d:	83 00 c0             	add    DWORD PTR [eax],0xffffffc0
c000c540:	45                   	inc    ebp
c000c541:	01 00                	add    DWORD PTR [eax],eax
c000c543:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000c546:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000c54c:	41                   	inc    ecx
c000c54d:	83 03 47             	add    DWORD PTR [ebx],0x47
c000c550:	2e 04 04             	cs add al,0x4
c000c553:	01 00                	add    DWORD PTR [eax],eax
c000c555:	00 00                	add    BYTE PTR [eax],al
c000c557:	2e 08 42 2e          	or     BYTE PTR cs:[edx+0x2e],al
c000c55b:	0c 42                	or     al,0x42
c000c55d:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000c561:	00 46 2e             	add    BYTE PTR [esi+0x2e],al
c000c564:	0c 42                	or     al,0x42
c000c566:	2e 10 50 2e          	adc    BYTE PTR cs:[eax+0x2e],dl
c000c56a:	0c 41                	or     al,0x41
c000c56c:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c000c570:	0c 42                	or     al,0x42
c000c572:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c000c576:	0c 41                	or     al,0x41
c000c578:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c000c57c:	0c 42                	or     al,0x42
c000c57e:	2e 10 4b 2e          	adc    BYTE PTR cs:[ebx+0x2e],cl
c000c582:	0c 41                	or     al,0x41
c000c584:	2e 08 42 2e          	or     BYTE PTR cs:[edx+0x2e],al
c000c588:	0c 42                	or     al,0x42
c000c58a:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c000c58e:	0c 41                	or     al,0x41
c000c590:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c000c594:	0c 42                	or     al,0x42
c000c596:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000c59a:	04 04                	add    al,0x4
c000c59c:	02 00                	add    al,BYTE PTR [eax]
c000c59e:	00 00                	add    BYTE PTR [eax],al
c000c5a0:	2e 08 49 2e          	or     BYTE PTR cs:[ecx+0x2e],cl
c000c5a4:	0c 42                	or     al,0x42
c000c5a6:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c000c5aa:	0c 41                	or     al,0x41
c000c5ac:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c000c5b0:	0c 42                	or     al,0x42
c000c5b2:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000c5b6:	04 04                	add    al,0x4
c000c5b8:	02 00                	add    al,BYTE PTR [eax]
c000c5ba:	00 00                	add    BYTE PTR [eax],al
c000c5bc:	2e 08 49 2e          	or     BYTE PTR cs:[ecx+0x2e],cl
c000c5c0:	0c 42                	or     al,0x42
c000c5c2:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c000c5c6:	0c 41                	or     al,0x41
c000c5c8:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c000c5cc:	0c 42                	or     al,0x42
c000c5ce:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c000c5d2:	0c 41                	or     al,0x41
c000c5d4:	2e 08 42 2e          	or     BYTE PTR cs:[edx+0x2e],al
c000c5d8:	0c 42                	or     al,0x42
c000c5da:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c000c5de:	0c 41                	or     al,0x41
c000c5e0:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c000c5e4:	0c 42                	or     al,0x42
c000c5e6:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000c5ea:	04 04                	add    al,0x4
c000c5ec:	02 00                	add    al,BYTE PTR [eax]
c000c5ee:	00 00                	add    BYTE PTR [eax],al
c000c5f0:	2e 08 46 2e          	or     BYTE PTR cs:[esi+0x2e],al
c000c5f4:	0c 42                	or     al,0x42
c000c5f6:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c000c5fa:	0c 41                	or     al,0x41
c000c5fc:	2e 08 42 2e          	or     BYTE PTR cs:[edx+0x2e],al
c000c600:	0c 42                	or     al,0x42
c000c602:	2e 10 51 2e          	adc    BYTE PTR cs:[ecx+0x2e],dl
c000c606:	14 42                	adc    al,0x42
c000c608:	2e 18 42 2e          	sbb    BYTE PTR cs:[edx+0x2e],al
c000c60c:	1c 45                	sbb    al,0x45
c000c60e:	2e 20 48 2e          	and    BYTE PTR cs:[eax+0x2e],cl
c000c612:	00 45 2e             	add    BYTE PTR [ebp+0x2e],al
c000c615:	04 04                	add    al,0x4
c000c617:	05 00 00 00 2e       	add    eax,0x2e000000
c000c61c:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c000c61f:	0c 45                	or     al,0x45
c000c621:	2e 10 4a 2e          	adc    BYTE PTR cs:[edx+0x2e],cl
c000c625:	14 45                	adc    al,0x45
c000c627:	2e 18 42 2e          	sbb    BYTE PTR cs:[edx+0x2e],al
c000c62b:	1c 45                	sbb    al,0x45
c000c62d:	2e 20 48 2e          	and    BYTE PTR cs:[eax+0x2e],cl
c000c631:	08 45 2e             	or     BYTE PTR [ebp+0x2e],al
c000c634:	0c 45                	or     al,0x45
c000c636:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000c63a:	00 00                	add    BYTE PTR [eax],al
c000c63c:	b0 00                	mov    al,0x0
c000c63e:	00 00                	add    BYTE PTR [eax],al
c000c640:	c0 02 00             	rol    BYTE PTR [edx],0x0
c000c643:	00 90 84 00 c0 aa    	add    BYTE PTR [eax-0x553fff7c],dl
c000c649:	00 00                	add    BYTE PTR [eax],al
c000c64b:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000c64e:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000c654:	49                   	dec    ecx
c000c655:	2e 04 04             	cs add al,0x4
c000c658:	01 00                	add    DWORD PTR [eax],eax
c000c65a:	00 00                	add    BYTE PTR [eax],al
c000c65c:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c000c660:	0c 42                	or     al,0x42
c000c662:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c000c666:	0c 41                	or     al,0x41
c000c668:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c000c66c:	0c 42                	or     al,0x42
c000c66e:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c000c672:	0c 41                	or     al,0x41
c000c674:	2e 08 43 2e          	or     BYTE PTR cs:[ebx+0x2e],al
c000c678:	0c 42                	or     al,0x42
c000c67a:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c000c67e:	0c 41                	or     al,0x41
c000c680:	2e 08 42 2e          	or     BYTE PTR cs:[edx+0x2e],al
c000c684:	0c 42                	or     al,0x42
c000c686:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c000c68a:	0c 41                	or     al,0x41
c000c68c:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c000c690:	0c 42                	or     al,0x42
c000c692:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c000c696:	0c 41                	or     al,0x41
c000c698:	2e 08 43 2e          	or     BYTE PTR cs:[ebx+0x2e],al
c000c69c:	0c 42                	or     al,0x42
c000c69e:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c000c6a2:	0c 41                	or     al,0x41
c000c6a4:	2e 08 42 2e          	or     BYTE PTR cs:[edx+0x2e],al
c000c6a8:	0c 42                	or     al,0x42
c000c6aa:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c000c6ae:	0c 41                	or     al,0x41
c000c6b0:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c000c6b4:	0c 42                	or     al,0x42
c000c6b6:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000c6ba:	04 04                	add    al,0x4
c000c6bc:	02 00                	add    al,BYTE PTR [eax]
c000c6be:	00 00                	add    BYTE PTR [eax],al
c000c6c0:	2e 08 43 2e          	or     BYTE PTR cs:[ebx+0x2e],al
c000c6c4:	0c 42                	or     al,0x42
c000c6c6:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c000c6ca:	0c 41                	or     al,0x41
c000c6cc:	2e 08 42 2e          	or     BYTE PTR cs:[edx+0x2e],al
c000c6d0:	0c 42                	or     al,0x42
c000c6d2:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c000c6d6:	0c 41                	or     al,0x41
c000c6d8:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c000c6dc:	0c 42                	or     al,0x42
c000c6de:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c000c6e2:	0c 41                	or     al,0x41
c000c6e4:	2e 08 43 2e          	or     BYTE PTR cs:[ebx+0x2e],al
c000c6e8:	0c 42                	or     al,0x42
c000c6ea:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000c6ee:	00 00                	add    BYTE PTR [eax],al
c000c6f0:	34 00                	xor    al,0x0
c000c6f2:	00 00                	add    BYTE PTR [eax],al
c000c6f4:	74 03                	je     c000c6f9 <_edata+0x379>
c000c6f6:	00 00                	add    BYTE PTR [eax],al
c000c6f8:	3c 85                	cmp    al,0x85
c000c6fa:	00 c0                	add    al,al
c000c6fc:	54                   	push   esp
c000c6fd:	00 00                	add    BYTE PTR [eax],al
c000c6ff:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000c702:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000c708:	43                   	inc    ebx
c000c709:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c000c70d:	0c 42                	or     al,0x42
c000c70f:	2e 10 75 2e          	adc    BYTE PTR cs:[ebp+0x2e],dh
c000c713:	0c 41                	or     al,0x41
c000c715:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c000c719:	0c 42                	or     al,0x42
c000c71b:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000c71f:	00 41 c5             	add    BYTE PTR [ecx-0x3b],al
c000c722:	0c 04                	or     al,0x4
c000c724:	04 00                	add    al,0x0
c000c726:	00 00                	add    BYTE PTR [eax],al
c000c728:	1c 00                	sbb    al,0x0
c000c72a:	00 00                	add    BYTE PTR [eax],al
c000c72c:	ac                   	lods   al,BYTE PTR ds:[esi]
c000c72d:	03 00                	add    eax,DWORD PTR [eax]
c000c72f:	00 d8                	add    al,bl
c000c731:	8e 00                	mov    es,WORD PTR [eax]
c000c733:	c0 10 00             	rcl    BYTE PTR [eax],0x0
c000c736:	00 00                	add    BYTE PTR [eax],al
c000c738:	41                   	inc    ecx
c000c739:	0e                   	push   cs
c000c73a:	08 85 02 47 0d 05    	or     BYTE PTR [ebp+0x50d4702],al
c000c740:	47                   	inc    edi
c000c741:	0c 04                	or     al,0x4
c000c743:	04 c5                	add    al,0xc5
c000c745:	00 00                	add    BYTE PTR [eax],al
c000c747:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c000c74a:	00 00                	add    BYTE PTR [eax],al
c000c74c:	cc                   	int3   
c000c74d:	03 00                	add    eax,DWORD PTR [eax]
c000c74f:	00 e8                	add    al,ch
c000c751:	8e 00                	mov    es,WORD PTR [eax]
c000c753:	c0 3d 00 00 00 41 0e 	sar    BYTE PTR ds:0x41000000,0xe
c000c75a:	08 85 02 47 0d 05    	or     BYTE PTR [ebp+0x50d4702],al
c000c760:	74 0c                	je     c000c76e <_edata+0x3ee>
c000c762:	04 04                	add    al,0x4
c000c764:	c5 00                	lds    eax,FWORD PTR [eax]
c000c766:	00 00                	add    BYTE PTR [eax],al
c000c768:	1c 00                	sbb    al,0x0
c000c76a:	00 00                	add    BYTE PTR [eax],al
c000c76c:	ec                   	in     al,dx
c000c76d:	03 00                	add    eax,DWORD PTR [eax]
c000c76f:	00 25 8f 00 c0 69    	add    BYTE PTR ds:0x69c0008f,ah
c000c775:	00 00                	add    BYTE PTR [eax],al
c000c777:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000c77a:	08 85 02 44 0d 05    	or     BYTE PTR [ebp+0x50d4402],al
c000c780:	02 63 0c             	add    ah,BYTE PTR [ebx+0xc]
c000c783:	04 04                	add    al,0x4
c000c785:	c5 00                	lds    eax,FWORD PTR [eax]
c000c787:	00 20                	add    BYTE PTR [eax],ah
c000c789:	00 00                	add    BYTE PTR [eax],al
c000c78b:	00 0c 04             	add    BYTE PTR [esp+eax*1],cl
c000c78e:	00 00                	add    BYTE PTR [eax],al
c000c790:	8e 8f 00 c0 2c 00    	mov    cs,WORD PTR [edi+0x2cc000]
c000c796:	00 00                	add    BYTE PTR [eax],al
c000c798:	41                   	inc    ecx
c000c799:	0e                   	push   cs
c000c79a:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000c7a0:	44                   	inc    esp
c000c7a1:	83 03 63             	add    DWORD PTR [ebx],0x63
c000c7a4:	c3                   	ret    
c000c7a5:	41                   	inc    ecx
c000c7a6:	0c 04                	or     al,0x4
c000c7a8:	04 c5                	add    al,0xc5
c000c7aa:	00 00                	add    BYTE PTR [eax],al
c000c7ac:	1c 00                	sbb    al,0x0
c000c7ae:	00 00                	add    BYTE PTR [eax],al
c000c7b0:	30 04 00             	xor    BYTE PTR [eax+eax*1],al
c000c7b3:	00 ba 8f 00 c0 cd    	add    BYTE PTR [edx-0x323fff71],bh
c000c7b9:	00 00                	add    BYTE PTR [eax],al
c000c7bb:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000c7be:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000c7c4:	02 c9                	add    cl,cl
c000c7c6:	0c 04                	or     al,0x4
c000c7c8:	04 c5                	add    al,0xc5
c000c7ca:	00 00                	add    BYTE PTR [eax],al
c000c7cc:	1c 00                	sbb    al,0x0
c000c7ce:	00 00                	add    BYTE PTR [eax],al
c000c7d0:	50                   	push   eax
c000c7d1:	04 00                	add    al,0x0
c000c7d3:	00 87 90 00 c0 32    	add    BYTE PTR [edi+0x32c00090],al
c000c7d9:	00 00                	add    BYTE PTR [eax],al
c000c7db:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000c7de:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000c7e4:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000c7e5:	c5 0c 04             	lds    ecx,FWORD PTR [esp+eax*1]
c000c7e8:	04 00                	add    al,0x0
c000c7ea:	00 00                	add    BYTE PTR [eax],al
c000c7ec:	1c 00                	sbb    al,0x0
c000c7ee:	00 00                	add    BYTE PTR [eax],al
c000c7f0:	70 04                	jo     c000c7f6 <_edata+0x476>
c000c7f2:	00 00                	add    BYTE PTR [eax],al
c000c7f4:	b9 90 00 c0 10       	mov    ecx,0x10c00090
c000c7f9:	00 00                	add    BYTE PTR [eax],al
c000c7fb:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000c7fe:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000c804:	4c                   	dec    esp
c000c805:	0c 04                	or     al,0x4
c000c807:	04 c5                	add    al,0xc5
c000c809:	00 00                	add    BYTE PTR [eax],al
c000c80b:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c000c80e:	00 00                	add    BYTE PTR [eax],al
c000c810:	90                   	nop
c000c811:	04 00                	add    al,0x0
c000c813:	00 c9                	add    cl,cl
c000c815:	90                   	nop
c000c816:	00 c0                	add    al,al
c000c818:	14 00                	adc    al,0x0
c000c81a:	00 00                	add    BYTE PTR [eax],al
c000c81c:	41                   	inc    ecx
c000c81d:	0e                   	push   cs
c000c81e:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000c824:	50                   	push   eax
c000c825:	0c 04                	or     al,0x4
c000c827:	04 c5                	add    al,0xc5
c000c829:	00 00                	add    BYTE PTR [eax],al
c000c82b:	00 b8 00 00 00 b0    	add    BYTE PTR [eax-0x50000000],bh
c000c831:	04 00                	add    al,0x0
c000c833:	00 dd                	add    ch,bl
c000c835:	90                   	nop
c000c836:	00 c0                	add    al,al
c000c838:	bc 00 00 00 41       	mov    esp,0x41000000
c000c83d:	0e                   	push   cs
c000c83e:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000c844:	42                   	inc    edx
c000c845:	83 04 86 03          	add    DWORD PTR [esi+eax*4],0x3
c000c849:	49                   	dec    ecx
c000c84a:	2e 04 04             	cs add al,0x4
c000c84d:	01 00                	add    DWORD PTR [eax],eax
c000c84f:	00 00                	add    BYTE PTR [eax],al
c000c851:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c000c855:	0c 42                	or     al,0x42
c000c857:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c000c85b:	0c 41                	or     al,0x41
c000c85d:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c000c861:	0c 42                	or     al,0x42
c000c863:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c000c867:	0c 41                	or     al,0x41
c000c869:	2e 08 48 2e          	or     BYTE PTR cs:[eax+0x2e],cl
c000c86d:	0c 42                	or     al,0x42
c000c86f:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000c873:	04 04                	add    al,0x4
c000c875:	02 00                	add    al,BYTE PTR [eax]
c000c877:	00 00                	add    BYTE PTR [eax],al
c000c879:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c000c87d:	0c 42                	or     al,0x42
c000c87f:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c000c883:	0c 41                	or     al,0x41
c000c885:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c000c889:	0c 42                	or     al,0x42
c000c88b:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000c88f:	00 46 2e             	add    BYTE PTR [esi+0x2e],al
c000c892:	04 04                	add    al,0x4
c000c894:	01 00                	add    DWORD PTR [eax],eax
c000c896:	00 00                	add    BYTE PTR [eax],al
c000c898:	2e 08 47 2e          	or     BYTE PTR cs:[edi+0x2e],al
c000c89c:	0c 42                	or     al,0x42
c000c89e:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000c8a2:	00 49 2e             	add    BYTE PTR [ecx+0x2e],cl
c000c8a5:	04 04                	add    al,0x4
c000c8a7:	01 00                	add    DWORD PTR [eax],eax
c000c8a9:	00 00                	add    BYTE PTR [eax],al
c000c8ab:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c000c8af:	0c 42                	or     al,0x42
c000c8b1:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000c8b5:	04 04                	add    al,0x4
c000c8b7:	02 00                	add    al,BYTE PTR [eax]
c000c8b9:	00 00                	add    BYTE PTR [eax],al
c000c8bb:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c000c8bf:	0c 42                	or     al,0x42
c000c8c1:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c000c8c5:	0c 41                	or     al,0x41
c000c8c7:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c000c8cb:	0c 42                	or     al,0x42
c000c8cd:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000c8d1:	00 41 2e             	add    BYTE PTR [ecx+0x2e],al
c000c8d4:	04 04                	add    al,0x4
c000c8d6:	01 00                	add    DWORD PTR [eax],eax
c000c8d8:	00 00                	add    BYTE PTR [eax],al
c000c8da:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c000c8de:	0c 42                	or     al,0x42
c000c8e0:	2e 10 4d 2e          	adc    BYTE PTR cs:[ebp+0x2e],cl
c000c8e4:	00 00                	add    BYTE PTR [eax],al
c000c8e6:	00 00                	add    BYTE PTR [eax],al
c000c8e8:	1c 00                	sbb    al,0x0
c000c8ea:	00 00                	add    BYTE PTR [eax],al
c000c8ec:	6c                   	ins    BYTE PTR es:[edi],dx
c000c8ed:	05 00 00 99 91       	add    eax,0x91990000
c000c8f2:	00 c0                	add    al,al
c000c8f4:	17                   	pop    ss
c000c8f5:	00 00                	add    BYTE PTR [eax],al
c000c8f7:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000c8fa:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000c900:	53                   	push   ebx
c000c901:	0c 04                	or     al,0x4
c000c903:	04 c5                	add    al,0xc5
c000c905:	00 00                	add    BYTE PTR [eax],al
c000c907:	00 24 00             	add    BYTE PTR [eax+eax*1],ah
c000c90a:	00 00                	add    BYTE PTR [eax],al
c000c90c:	8c 05 00 00 b0 91    	mov    WORD PTR ds:0x91b00000,es
c000c912:	00 c0                	add    al,al
c000c914:	15 00 00 00 41       	adc    eax,0x41000000
c000c919:	0e                   	push   cs
c000c91a:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000c920:	47                   	inc    edi
c000c921:	0a 0c 04             	or     cl,BYTE PTR [esp+eax*1]
c000c924:	04 c5                	add    al,0xc5
c000c926:	45                   	inc    ebp
c000c927:	0b 41 0c             	or     eax,DWORD PTR [ecx+0xc]
c000c92a:	04 04                	add    al,0x4
c000c92c:	c5 00                	lds    eax,FWORD PTR [eax]
c000c92e:	00 00                	add    BYTE PTR [eax],al
c000c930:	44                   	inc    esp
c000c931:	00 00                	add    BYTE PTR [eax],al
c000c933:	00 b4 05 00 00 c8 91 	add    BYTE PTR [ebp+eax*1-0x6e380000],dh
c000c93a:	00 c0                	add    al,al
c000c93c:	5a                   	pop    edx
c000c93d:	00 00                	add    BYTE PTR [eax],al
c000c93f:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000c942:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000c948:	41                   	inc    ecx
c000c949:	86 03                	xchg   BYTE PTR [ebx],al
c000c94b:	44                   	inc    esp
c000c94c:	83 04 04 06          	add    DWORD PTR [esp+eax*1],0x6
c000c950:	00 00                	add    BYTE PTR [eax],al
c000c952:	00 2e                	add    BYTE PTR [esi],ch
c000c954:	0c 41                	or     al,0x41
c000c956:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000c95a:	00 65 2e             	add    BYTE PTR [ebp+0x2e],ah
c000c95d:	04 04                	add    al,0x4
c000c95f:	05 00 00 00 2e       	add    eax,0x2e000000
c000c964:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c000c967:	0c 45                	or     al,0x45
c000c969:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000c96d:	00 47 c3             	add    BYTE PTR [edi-0x3d],al
c000c970:	41                   	inc    ecx
c000c971:	c6 41 0c 04          	mov    BYTE PTR [ecx+0xc],0x4
c000c975:	04 c5                	add    al,0xc5
c000c977:	00 24 00             	add    BYTE PTR [eax+eax*1],ah
c000c97a:	00 00                	add    BYTE PTR [eax],al
c000c97c:	fc                   	cld    
c000c97d:	05 00 00 22 92       	add    eax,0x92220000
c000c982:	00 c0                	add    al,al
c000c984:	21 00                	and    DWORD PTR [eax],eax
c000c986:	00 00                	add    BYTE PTR [eax],al
c000c988:	41                   	inc    ecx
c000c989:	0e                   	push   cs
c000c98a:	08 85 02 44 0d 05    	or     BYTE PTR [ebp+0x50d4402],al
c000c990:	47                   	inc    edi
c000c991:	83 04 86 03          	add    DWORD PTR [esi+eax*4],0x3
c000c995:	52                   	push   edx
c000c996:	c3                   	ret    
c000c997:	41                   	inc    ecx
c000c998:	c6 41 0c 04          	mov    BYTE PTR [ecx+0xc],0x4
c000c99c:	04 c5                	add    al,0xc5
c000c99e:	00 00                	add    BYTE PTR [eax],al
c000c9a0:	28 00                	sub    BYTE PTR [eax],al
c000c9a2:	00 00                	add    BYTE PTR [eax],al
c000c9a4:	24 06                	and    al,0x6
c000c9a6:	00 00                	add    BYTE PTR [eax],al
c000c9a8:	43                   	inc    ebx
c000c9a9:	92                   	xchg   edx,eax
c000c9aa:	00 c0                	add    al,al
c000c9ac:	8b 00                	mov    eax,DWORD PTR [eax]
c000c9ae:	00 00                	add    BYTE PTR [eax],al
c000c9b0:	41                   	inc    ecx
c000c9b1:	0e                   	push   cs
c000c9b2:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000c9b8:	42                   	inc    edx
c000c9b9:	86 04 87             	xchg   BYTE PTR [edi+eax*4],al
c000c9bc:	03 46 83             	add    eax,DWORD PTR [esi-0x7d]
c000c9bf:	05 02 7c c3 41       	add    eax,0x41c37c02
c000c9c4:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c000c9c8:	0c 04                	or     al,0x4
c000c9ca:	04 c5                	add    al,0xc5
c000c9cc:	34 00                	xor    al,0x0
c000c9ce:	00 00                	add    BYTE PTR [eax],al
c000c9d0:	50                   	push   eax
c000c9d1:	06                   	push   es
c000c9d2:	00 00                	add    BYTE PTR [eax],al
c000c9d4:	ce                   	into   
c000c9d5:	92                   	xchg   edx,eax
c000c9d6:	00 c0                	add    al,al
c000c9d8:	32 00                	xor    al,BYTE PTR [eax]
c000c9da:	00 00                	add    BYTE PTR [eax],al
c000c9dc:	41                   	inc    ecx
c000c9dd:	0e                   	push   cs
c000c9de:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000c9e4:	44                   	inc    esp
c000c9e5:	2e 0c 83             	cs or  al,0x83
c000c9e8:	03 44 2e 10          	add    eax,DWORD PTR [esi+ebp*1+0x10]
c000c9ec:	46                   	inc    esi
c000c9ed:	2e 0c 44             	cs or  al,0x44
c000c9f0:	2e 08 44 2e 0c       	or     BYTE PTR cs:[esi+ebp*1+0xc],al
c000c9f5:	41                   	inc    ecx
c000c9f6:	2e 10 57 c5          	adc    BYTE PTR cs:[edi-0x3b],dl
c000c9fa:	0c 04                	or     al,0x4
c000c9fc:	04 c3                	add    al,0xc3
c000c9fe:	41                   	inc    ecx
c000c9ff:	13 03                	adc    eax,DWORD PTR [ebx]
c000ca01:	2e 00 00             	add    BYTE PTR cs:[eax],al
c000ca04:	28 00                	sub    BYTE PTR [eax],al
c000ca06:	00 00                	add    BYTE PTR [eax],al
c000ca08:	88 06                	mov    BYTE PTR [esi],al
c000ca0a:	00 00                	add    BYTE PTR [eax],al
c000ca0c:	00 93 00 c0 3c 01    	add    BYTE PTR [ebx+0x13cc000],dl
c000ca12:	00 00                	add    BYTE PTR [eax],al
c000ca14:	41                   	inc    ecx
c000ca15:	0e                   	push   cs
c000ca16:	08 85 02 44 0d 05    	or     BYTE PTR [ebp+0x50d4402],al
c000ca1c:	46                   	inc    esi
c000ca1d:	83 05 86 04 87 03 03 	add    DWORD PTR ds:0x3870486,0x3
c000ca24:	2d 01 c3 41 c6       	sub    eax,0xc641c301
c000ca29:	41                   	inc    ecx
c000ca2a:	c7 41 0c 04 04 c5 38 	mov    DWORD PTR [ecx+0xc],0x38c50404
c000ca31:	00 00                	add    BYTE PTR [eax],al
c000ca33:	00 b4 06 00 00 3c 94 	add    BYTE PTR [esi+eax*1-0x6bc40000],dh
c000ca3a:	00 c0                	add    al,al
c000ca3c:	36 00 00             	add    BYTE PTR ss:[eax],al
c000ca3f:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000ca42:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000ca48:	44                   	inc    esp
c000ca49:	2e 0c 83             	cs or  al,0x83
c000ca4c:	03 44 2e 10          	add    eax,DWORD PTR [esi+ebp*1+0x10]
c000ca50:	4b                   	dec    ebx
c000ca51:	2e 04 04             	cs add al,0x4
c000ca54:	04 00                	add    al,0x0
c000ca56:	00 00                	add    BYTE PTR [eax],al
c000ca58:	2e 08 43 2e          	or     BYTE PTR cs:[ebx+0x2e],al
c000ca5c:	0c 41                	or     al,0x41
c000ca5e:	2e 10 57 c5          	adc    BYTE PTR cs:[edi-0x3b],dl
c000ca62:	0c 04                	or     al,0x4
c000ca64:	04 c3                	add    al,0xc3
c000ca66:	41                   	inc    ecx
c000ca67:	13 03                	adc    eax,DWORD PTR [ebx]
c000ca69:	2e 00 00             	add    BYTE PTR cs:[eax],al
c000ca6c:	1c 01                	sbb    al,0x1
c000ca6e:	00 00                	add    BYTE PTR [eax],al
c000ca70:	f0 06                	lock push es
c000ca72:	00 00                	add    BYTE PTR [eax],al
c000ca74:	72 94                	jb     c000ca0a <_edata+0x68a>
c000ca76:	00 c0                	add    al,al
c000ca78:	b1 01                	mov    cl,0x1
c000ca7a:	00 00                	add    BYTE PTR [eax],al
c000ca7c:	41                   	inc    ecx
c000ca7d:	0e                   	push   cs
c000ca7e:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000ca84:	46                   	inc    esi
c000ca85:	83 05 86 04 87 03 63 	add    DWORD PTR ds:0x3870486,0x63
c000ca8c:	2e 04 04             	cs add al,0x4
c000ca8f:	01 00                	add    DWORD PTR [eax],eax
c000ca91:	00 00                	add    BYTE PTR [eax],al
c000ca93:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c000ca97:	0c 42                	or     al,0x42
c000ca99:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000ca9d:	00 46 2e             	add    BYTE PTR [esi+0x2e],al
c000caa0:	04 04                	add    al,0x4
c000caa2:	01 00                	add    DWORD PTR [eax],eax
c000caa4:	00 00                	add    BYTE PTR [eax],al
c000caa6:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c000caaa:	0c 42                	or     al,0x42
c000caac:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000cab0:	04 04                	add    al,0x4
c000cab2:	02 00                	add    al,BYTE PTR [eax]
c000cab4:	00 00                	add    BYTE PTR [eax],al
c000cab6:	2e 08 42 2e          	or     BYTE PTR cs:[edx+0x2e],al
c000caba:	0c 42                	or     al,0x42
c000cabc:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c000cac0:	0c 41                	or     al,0x41
c000cac2:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c000cac6:	0c 42                	or     al,0x42
c000cac8:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000cacc:	04 04                	add    al,0x4
c000cace:	02 00                	add    al,BYTE PTR [eax]
c000cad0:	00 00                	add    BYTE PTR [eax],al
c000cad2:	2e 08 43 2e          	or     BYTE PTR cs:[ebx+0x2e],al
c000cad6:	0c 42                	or     al,0x42
c000cad8:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c000cadc:	0c 41                	or     al,0x41
c000cade:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c000cae2:	0c 42                	or     al,0x42
c000cae4:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000cae8:	04 04                	add    al,0x4
c000caea:	02 00                	add    al,BYTE PTR [eax]
c000caec:	00 00                	add    BYTE PTR [eax],al
c000caee:	2e 08 43 2e          	or     BYTE PTR cs:[ebx+0x2e],al
c000caf2:	0c 42                	or     al,0x42
c000caf4:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c000caf8:	0c 41                	or     al,0x41
c000cafa:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c000cafe:	0c 42                	or     al,0x42
c000cb00:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000cb04:	00 74 2e 04          	add    BYTE PTR [esi+ebp*1+0x4],dh
c000cb08:	04 05                	add    al,0x5
c000cb0a:	00 00                	add    BYTE PTR [eax],al
c000cb0c:	00 2e                	add    BYTE PTR [esi],ch
c000cb0e:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c000cb11:	0c 45                	or     al,0x45
c000cb13:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000cb17:	00 62 2e             	add    BYTE PTR [edx+0x2e],ah
c000cb1a:	04 04                	add    al,0x4
c000cb1c:	01 00                	add    DWORD PTR [eax],eax
c000cb1e:	00 00                	add    BYTE PTR [eax],al
c000cb20:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c000cb24:	0c 45                	or     al,0x45
c000cb26:	2e 10 4c 2e 0c       	adc    BYTE PTR cs:[esi+ebp*1+0xc],cl
c000cb2b:	43                   	inc    ebx
c000cb2c:	2e 08 4a 2e          	or     BYTE PTR cs:[edx+0x2e],cl
c000cb30:	0c 47                	or     al,0x47
c000cb32:	2e 10 4f 2e          	adc    BYTE PTR cs:[edi+0x2e],cl
c000cb36:	0c 41                	or     al,0x41
c000cb38:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c000cb3c:	0c 45                	or     al,0x45
c000cb3e:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c000cb42:	0c 41                	or     al,0x41
c000cb44:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c000cb48:	0c 45                	or     al,0x45
c000cb4a:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000cb4e:	04 04                	add    al,0x4
c000cb50:	01 00                	add    DWORD PTR [eax],eax
c000cb52:	00 00                	add    BYTE PTR [eax],al
c000cb54:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c000cb58:	0c 45                	or     al,0x45
c000cb5a:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000cb5e:	04 04                	add    al,0x4
c000cb60:	01 00                	add    DWORD PTR [eax],eax
c000cb62:	00 00                	add    BYTE PTR [eax],al
c000cb64:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c000cb68:	0c 45                	or     al,0x45
c000cb6a:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000cb6e:	04 04                	add    al,0x4
c000cb70:	05 00 00 00 2e       	add    eax,0x2e000000
c000cb75:	08 45 2e             	or     BYTE PTR [ebp+0x2e],al
c000cb78:	0c 45                	or     al,0x45
c000cb7a:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000cb7e:	00 44 c3 41          	add    BYTE PTR [ebx+eax*8+0x41],al
c000cb82:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c000cb86:	0c 04                	or     al,0x4
c000cb88:	04 c5                	add    al,0xc5
c000cb8a:	00 00                	add    BYTE PTR [eax],al
c000cb8c:	1c 00                	sbb    al,0x0
c000cb8e:	00 00                	add    BYTE PTR [eax],al
c000cb90:	10 08                	adc    BYTE PTR [eax],cl
c000cb92:	00 00                	add    BYTE PTR [eax],al
c000cb94:	23 96 00 c0 12 00    	and    edx,DWORD PTR [esi+0x12c000]
c000cb9a:	00 00                	add    BYTE PTR [eax],al
c000cb9c:	41                   	inc    ecx
c000cb9d:	0e                   	push   cs
c000cb9e:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000cba4:	44                   	inc    esp
c000cba5:	0c 04                	or     al,0x4
c000cba7:	04 c5                	add    al,0xc5
c000cba9:	00 00                	add    BYTE PTR [eax],al
c000cbab:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c000cbae:	00 00                	add    BYTE PTR [eax],al
c000cbb0:	30 08                	xor    BYTE PTR [eax],cl
c000cbb2:	00 00                	add    BYTE PTR [eax],al
c000cbb4:	35 96 00 c0 22       	xor    eax,0x22c00096
c000cbb9:	00 00                	add    BYTE PTR [eax],al
c000cbbb:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000cbbe:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000cbc4:	44                   	inc    esp
c000cbc5:	0c 04                	or     al,0x4
c000cbc7:	04 c5                	add    al,0xc5
c000cbc9:	00 00                	add    BYTE PTR [eax],al
c000cbcb:	00 54 00 00          	add    BYTE PTR [eax+eax*1+0x0],dl
c000cbcf:	00 50 08             	add    BYTE PTR [eax+0x8],dl
c000cbd2:	00 00                	add    BYTE PTR [eax],al
c000cbd4:	57                   	push   edi
c000cbd5:	96                   	xchg   esi,eax
c000cbd6:	00 c0                	add    al,al
c000cbd8:	72 00                	jb     c000cbda <_edata+0x85a>
c000cbda:	00 00                	add    BYTE PTR [eax],al
c000cbdc:	41                   	inc    ecx
c000cbdd:	0e                   	push   cs
c000cbde:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000cbe4:	46                   	inc    esi
c000cbe5:	83 05 86 04 87 03 47 	add    DWORD PTR ds:0x3870486,0x47
c000cbec:	2e 04 04             	cs add al,0x4
c000cbef:	13 00                	adc    eax,DWORD PTR [eax]
c000cbf1:	00 00                	add    BYTE PTR [eax],al
c000cbf3:	2e 00 51 2e          	add    BYTE PTR cs:[ecx+0x2e],dl
c000cbf7:	04 04                	add    al,0x4
c000cbf9:	04 00                	add    al,0x0
c000cbfb:	00 00                	add    BYTE PTR [eax],al
c000cbfd:	2e 08 42 2e          	or     BYTE PTR cs:[edx+0x2e],al
c000cc01:	0c 45                	or     al,0x45
c000cc03:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000cc07:	04 04                	add    al,0x4
c000cc09:	11 00                	adc    DWORD PTR [eax],eax
c000cc0b:	00 00                	add    BYTE PTR [eax],al
c000cc0d:	2e 08 47 2e          	or     BYTE PTR cs:[edi+0x2e],al
c000cc11:	0c 41                	or     al,0x41
c000cc13:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000cc17:	00 46 c3             	add    BYTE PTR [esi-0x3d],al
c000cc1a:	41                   	inc    ecx
c000cc1b:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c000cc1f:	0c 04                	or     al,0x4
c000cc21:	04 c5                	add    al,0xc5
c000cc23:	00 60 00             	add    BYTE PTR [eax+0x0],ah
c000cc26:	00 00                	add    BYTE PTR [eax],al
c000cc28:	a8 08                	test   al,0x8
c000cc2a:	00 00                	add    BYTE PTR [eax],al
c000cc2c:	c9                   	leave  
c000cc2d:	96                   	xchg   esi,eax
c000cc2e:	00 c0                	add    al,al
c000cc30:	7a 00                	jp     c000cc32 <_edata+0x8b2>
c000cc32:	00 00                	add    BYTE PTR [eax],al
c000cc34:	41                   	inc    ecx
c000cc35:	0e                   	push   cs
c000cc36:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000cc3c:	46                   	inc    esi
c000cc3d:	83 05 86 04 87 03 64 	add    DWORD PTR ds:0x3870486,0x64
c000cc44:	2e 04 04             	cs add al,0x4
c000cc47:	01 00                	add    DWORD PTR [eax],eax
c000cc49:	00 00                	add    BYTE PTR [eax],al
c000cc4b:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c000cc4f:	0c 41                	or     al,0x41
c000cc51:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000cc55:	00 4b 2e             	add    BYTE PTR [ebx+0x2e],cl
c000cc58:	04 04                	add    al,0x4
c000cc5a:	01 00                	add    DWORD PTR [eax],eax
c000cc5c:	00 00                	add    BYTE PTR [eax],al
c000cc5e:	2e 08 42 2e          	or     BYTE PTR cs:[edx+0x2e],al
c000cc62:	0c 43                	or     al,0x43
c000cc64:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000cc68:	00 45 2e             	add    BYTE PTR [ebp+0x2e],al
c000cc6b:	04 04                	add    al,0x4
c000cc6d:	02 00                	add    al,BYTE PTR [eax]
c000cc6f:	00 00                	add    BYTE PTR [eax],al
c000cc71:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c000cc75:	0c 41                	or     al,0x41
c000cc77:	2e 10 4e 2e          	adc    BYTE PTR cs:[esi+0x2e],cl
c000cc7b:	00 4e c3             	add    BYTE PTR [esi-0x3d],cl
c000cc7e:	41                   	inc    ecx
c000cc7f:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c000cc83:	0c 04                	or     al,0x4
c000cc85:	04 c5                	add    al,0xc5
c000cc87:	00 70 00             	add    BYTE PTR [eax+0x0],dh
c000cc8a:	00 00                	add    BYTE PTR [eax],al
c000cc8c:	0c 09                	or     al,0x9
c000cc8e:	00 00                	add    BYTE PTR [eax],al
c000cc90:	43                   	inc    ebx
c000cc91:	97                   	xchg   edi,eax
c000cc92:	00 c0                	add    al,al
c000cc94:	4f                   	dec    edi
c000cc95:	00 00                	add    BYTE PTR [eax],al
c000cc97:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000cc9a:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000cca0:	42                   	inc    edx
c000cca1:	83 04 86 03          	add    DWORD PTR [esi+eax*4],0x3
c000cca5:	44                   	inc    esp
c000cca6:	2e 04 04             	cs add al,0x4
c000cca9:	01 00                	add    DWORD PTR [eax],eax
c000ccab:	00 00                	add    BYTE PTR [eax],al
c000ccad:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c000ccb1:	0c 42                	or     al,0x42
c000ccb3:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000ccb7:	00 4a 2e             	add    BYTE PTR [edx+0x2e],cl
c000ccba:	04 04                	add    al,0x4
c000ccbc:	01 00                	add    DWORD PTR [eax],eax
c000ccbe:	00 00                	add    BYTE PTR [eax],al
c000ccc0:	2e 08 42 2e          	or     BYTE PTR cs:[edx+0x2e],al
c000ccc4:	0c 41                	or     al,0x41
c000ccc6:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000ccca:	00 41 2e             	add    BYTE PTR [ecx+0x2e],al
c000cccd:	04 04                	add    al,0x4
c000cccf:	01 00                	add    DWORD PTR [eax],eax
c000ccd1:	00 00                	add    BYTE PTR [eax],al
c000ccd3:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c000ccd7:	0c 42                	or     al,0x42
c000ccd9:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000ccdd:	04 04                	add    al,0x4
c000ccdf:	02 00                	add    al,BYTE PTR [eax]
c000cce1:	00 00                	add    BYTE PTR [eax],al
c000cce3:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c000cce7:	0c 42                	or     al,0x42
c000cce9:	2e 10 4b c3          	adc    BYTE PTR cs:[ebx-0x3d],cl
c000cced:	41                   	inc    ecx
c000ccee:	c6 41 0c 04          	mov    BYTE PTR [ecx+0xc],0x4
c000ccf2:	04 c5                	add    al,0xc5
c000ccf4:	41                   	inc    ecx
c000ccf5:	13 03                	adc    eax,DWORD PTR [ebx]
c000ccf7:	2e 00 00             	add    BYTE PTR cs:[eax],al
c000ccfa:	00 00                	add    BYTE PTR [eax],al
c000ccfc:	3c 00                	cmp    al,0x0
c000ccfe:	00 00                	add    BYTE PTR [eax],al
c000cd00:	80 09 00             	or     BYTE PTR [ecx],0x0
c000cd03:	00 92 97 00 c0 34    	add    BYTE PTR [edx+0x34c00097],dl
c000cd09:	00 00                	add    BYTE PTR [eax],al
c000cd0b:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000cd0e:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000cd14:	44                   	inc    esp
c000cd15:	2e 08 83 03 44 2e 0c 	or     BYTE PTR cs:[ebx+0xc2e4403],al
c000cd1c:	42                   	inc    edx
c000cd1d:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000cd21:	00 48 2e             	add    BYTE PTR [eax+0x2e],cl
c000cd24:	04 04                	add    al,0x4
c000cd26:	01 00                	add    DWORD PTR [eax],eax
c000cd28:	00 00                	add    BYTE PTR [eax],al
c000cd2a:	2e 08 42 2e          	or     BYTE PTR cs:[edx+0x2e],al
c000cd2e:	0c 41                	or     al,0x41
c000cd30:	2e 10 4e 2e          	adc    BYTE PTR cs:[esi+0x2e],cl
c000cd34:	00 44 c5 0c          	add    BYTE PTR [ebp+eax*8+0xc],al
c000cd38:	04 04                	add    al,0x4
c000cd3a:	c3                   	ret    
c000cd3b:	00 8c 00 00 00 c0 09 	add    BYTE PTR [eax+eax*1+0x9c00000],cl
c000cd42:	00 00                	add    BYTE PTR [eax],al
c000cd44:	c6                   	(bad)  
c000cd45:	97                   	xchg   edi,eax
c000cd46:	00 c0                	add    al,al
c000cd48:	a4                   	movs   BYTE PTR es:[edi],BYTE PTR ds:[esi]
c000cd49:	00 00                	add    BYTE PTR [eax],al
c000cd4b:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000cd4e:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000cd54:	41                   	inc    ecx
c000cd55:	87 03                	xchg   DWORD PTR [ebx],eax
c000cd57:	4a                   	dec    edx
c000cd58:	83 05 86 04 04 29 00 	add    DWORD PTR ds:0x29040486,0x0
c000cd5f:	00 00                	add    BYTE PTR [eax],al
c000cd61:	2e 04 04             	cs add al,0x4
c000cd64:	01 00                	add    DWORD PTR [eax],eax
c000cd66:	00 00                	add    BYTE PTR [eax],al
c000cd68:	2e 08 42 2e          	or     BYTE PTR cs:[edx+0x2e],al
c000cd6c:	0c 45                	or     al,0x45
c000cd6e:	2e 10 47 2e          	adc    BYTE PTR cs:[edi+0x2e],al
c000cd72:	00 45 2e             	add    BYTE PTR [ebp+0x2e],al
c000cd75:	04 04                	add    al,0x4
c000cd77:	05 00 00 00 2e       	add    eax,0x2e000000
c000cd7c:	08 45 2e             	or     BYTE PTR [ebp+0x2e],al
c000cd7f:	0c 45                	or     al,0x45
c000cd81:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000cd85:	00 41 2e             	add    BYTE PTR [ecx+0x2e],al
c000cd88:	04 04                	add    al,0x4
c000cd8a:	01 00                	add    DWORD PTR [eax],eax
c000cd8c:	00 00                	add    BYTE PTR [eax],al
c000cd8e:	2e 08 42 2e          	or     BYTE PTR cs:[edx+0x2e],al
c000cd92:	0c 41                	or     al,0x41
c000cd94:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000cd98:	00 4b 2e             	add    BYTE PTR [ebx+0x2e],cl
c000cd9b:	04 04                	add    al,0x4
c000cd9d:	05 00 00 00 2e       	add    eax,0x2e000000
c000cda2:	08 45 2e             	or     BYTE PTR [ebp+0x2e],al
c000cda5:	0c 45                	or     al,0x45
c000cda7:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000cdab:	00 41 2e             	add    BYTE PTR [ecx+0x2e],al
c000cdae:	04 04                	add    al,0x4
c000cdb0:	01 00                	add    DWORD PTR [eax],eax
c000cdb2:	00 00                	add    BYTE PTR [eax],al
c000cdb4:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c000cdb8:	0c 41                	or     al,0x41
c000cdba:	2e 10 4b c3          	adc    BYTE PTR cs:[ebx-0x3d],cl
c000cdbe:	41                   	inc    ecx
c000cdbf:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c000cdc3:	0c 04                	or     al,0x4
c000cdc5:	04 c5                	add    al,0xc5
c000cdc7:	41                   	inc    ecx
c000cdc8:	13 03                	adc    eax,DWORD PTR [ebx]
c000cdca:	2e 00 28             	add    BYTE PTR cs:[eax],ch
c000cdcd:	00 00                	add    BYTE PTR [eax],al
c000cdcf:	00 50 0a             	add    BYTE PTR [eax+0xa],dl
c000cdd2:	00 00                	add    BYTE PTR [eax],al
c000cdd4:	6a 98                	push   0xffffff98
c000cdd6:	00 c0                	add    al,al
c000cdd8:	22 00                	and    al,BYTE PTR [eax]
c000cdda:	00 00                	add    BYTE PTR [eax],al
c000cddc:	41                   	inc    ecx
c000cddd:	0e                   	push   cs
c000cdde:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000cde4:	41                   	inc    ecx
c000cde5:	83 03 44             	add    DWORD PTR [ebx],0x44
c000cde8:	2e 04 04             	cs add al,0x4
c000cdeb:	0c 00                	or     al,0x0
c000cded:	00 00                	add    BYTE PTR [eax],al
c000cdef:	2e 00 4d c5          	add    BYTE PTR cs:[ebp-0x3b],cl
c000cdf3:	0c 04                	or     al,0x4
c000cdf5:	04 c3                	add    al,0xc3
c000cdf7:	00 44 00 00          	add    BYTE PTR [eax+eax*1+0x0],al
c000cdfb:	00 7c 0a 00          	add    BYTE PTR [edx+ecx*1+0x0],bh
c000cdff:	00 8c 98 00 c0 43 00 	add    BYTE PTR [eax+ebx*4+0x43c000],cl
c000ce06:	00 00                	add    BYTE PTR [eax],al
c000ce08:	41                   	inc    ecx
c000ce09:	0e                   	push   cs
c000ce0a:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000ce10:	41                   	inc    ecx
c000ce11:	86 03                	xchg   BYTE PTR [ebx],al
c000ce13:	45                   	inc    ebp
c000ce14:	83 04 04 06          	add    DWORD PTR [esp+eax*1],0x6
c000ce18:	00 00                	add    BYTE PTR [eax],al
c000ce1a:	00 2e                	add    BYTE PTR [esi],ch
c000ce1c:	0c 46                	or     al,0x46
c000ce1e:	2e 10 4a 2e          	adc    BYTE PTR cs:[edx+0x2e],cl
c000ce22:	00 49 2e             	add    BYTE PTR [ecx+0x2e],cl
c000ce25:	04 04                	add    al,0x4
c000ce27:	05 00 00 00 2e       	add    eax,0x2e000000
c000ce2c:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c000ce2f:	0c 45                	or     al,0x45
c000ce31:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000ce35:	00 44 c3 41          	add    BYTE PTR [ebx+eax*8+0x41],al
c000ce39:	c6 41 0c 04          	mov    BYTE PTR [ecx+0xc],0x4
c000ce3d:	04 c5                	add    al,0xc5
c000ce3f:	00 28                	add    BYTE PTR [eax],ch
c000ce41:	00 00                	add    BYTE PTR [eax],al
c000ce43:	00 c4                	add    ah,al
c000ce45:	0a 00                	or     al,BYTE PTR [eax]
c000ce47:	00 cf                	add    bh,cl
c000ce49:	98                   	cwde   
c000ce4a:	00 c0                	add    al,al
c000ce4c:	26 00 00             	add    BYTE PTR es:[eax],al
c000ce4f:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000ce52:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000ce58:	43                   	inc    ebx
c000ce59:	2e 08 55 2e          	or     BYTE PTR cs:[ebp+0x2e],dl
c000ce5d:	0c 41                	or     al,0x41
c000ce5f:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000ce63:	00 41 c5             	add    BYTE PTR [ecx-0x3b],al
c000ce66:	0c 04                	or     al,0x4
c000ce68:	04 00                	add    al,0x0
c000ce6a:	00 00                	add    BYTE PTR [eax],al
c000ce6c:	98                   	cwde   
c000ce6d:	00 00                	add    BYTE PTR [eax],al
c000ce6f:	00 f0                	add    al,dh
c000ce71:	0a 00                	or     al,BYTE PTR [eax]
c000ce73:	00 f5                	add    ch,dh
c000ce75:	98                   	cwde   
c000ce76:	00 c0                	add    al,al
c000ce78:	da 00                	fiadd  DWORD PTR [eax]
c000ce7a:	00 00                	add    BYTE PTR [eax],al
c000ce7c:	41                   	inc    ecx
c000ce7d:	0e                   	push   cs
c000ce7e:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000ce84:	46                   	inc    esi
c000ce85:	83 05 86 04 87 03 58 	add    DWORD PTR ds:0x3870486,0x58
c000ce8c:	2e 04 04             	cs add al,0x4
c000ce8f:	04 00                	add    al,0x0
c000ce91:	00 00                	add    BYTE PTR [eax],al
c000ce93:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c000ce97:	0c 41                	or     al,0x41
c000ce99:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000ce9d:	00 49 2e             	add    BYTE PTR [ecx+0x2e],cl
c000cea0:	04 04                	add    al,0x4
c000cea2:	05 00 00 00 2e       	add    eax,0x2e000000
c000cea7:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c000ceaa:	0c 45                	or     al,0x45
c000ceac:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000ceb0:	00 46 2e             	add    BYTE PTR [esi+0x2e],al
c000ceb3:	04 04                	add    al,0x4
c000ceb5:	04 00                	add    al,0x0
c000ceb7:	00 00                	add    BYTE PTR [eax],al
c000ceb9:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c000cebd:	0c 41                	or     al,0x41
c000cebf:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000cec3:	00 49 2e             	add    BYTE PTR [ecx+0x2e],cl
c000cec6:	04 04                	add    al,0x4
c000cec8:	05 00 00 00 2e       	add    eax,0x2e000000
c000cecd:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c000ced0:	0c 45                	or     al,0x45
c000ced2:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000ced6:	00 46 2e             	add    BYTE PTR [esi+0x2e],al
c000ced9:	04 04                	add    al,0x4
c000cedb:	04 00                	add    al,0x0
c000cedd:	00 00                	add    BYTE PTR [eax],al
c000cedf:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c000cee3:	0c 41                	or     al,0x41
c000cee5:	2e 10 54 2e 00       	adc    BYTE PTR cs:[esi+ebp*1+0x0],dl
c000ceea:	5a                   	pop    edx
c000ceeb:	2e 04 04             	cs add al,0x4
c000ceee:	05 00 00 00 2e       	add    eax,0x2e000000
c000cef3:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c000cef6:	0c 45                	or     al,0x45
c000cef8:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000cefc:	00 47 c3             	add    BYTE PTR [edi-0x3d],al
c000ceff:	41                   	inc    ecx
c000cf00:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c000cf04:	0c 04                	or     al,0x4
c000cf06:	04 c5                	add    al,0xc5
c000cf08:	64 00 00             	add    BYTE PTR fs:[eax],al
c000cf0b:	00 8c 0b 00 00 cf 99 	add    BYTE PTR [ebx+ecx*1-0x66310000],cl
c000cf12:	00 c0                	add    al,al
c000cf14:	8c 00                	mov    WORD PTR [eax],es
c000cf16:	00 00                	add    BYTE PTR [eax],al
c000cf18:	41                   	inc    ecx
c000cf19:	0e                   	push   cs
c000cf1a:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000cf20:	46                   	inc    esi
c000cf21:	83 05 86 04 87 03 55 	add    DWORD PTR ds:0x3870486,0x55
c000cf28:	2e 04 04             	cs add al,0x4
c000cf2b:	05 00 00 00 2e       	add    eax,0x2e000000
c000cf30:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c000cf33:	0c 45                	or     al,0x45
c000cf35:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000cf39:	00 43 2e             	add    BYTE PTR [ebx+0x2e],al
c000cf3c:	0c 44                	or     al,0x44
c000cf3e:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000cf42:	00 47 2e             	add    BYTE PTR [edi+0x2e],al
c000cf45:	0c 41                	or     al,0x41
c000cf47:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c000cf4b:	0c 43                	or     al,0x43
c000cf4d:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000cf51:	00 4f 2e             	add    BYTE PTR [edi+0x2e],cl
c000cf54:	04 04                	add    al,0x4
c000cf56:	05 00 00 00 2e       	add    eax,0x2e000000
c000cf5b:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c000cf5e:	0c 45                	or     al,0x45
c000cf60:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000cf64:	00 47 c3             	add    BYTE PTR [edi-0x3d],al
c000cf67:	41                   	inc    ecx
c000cf68:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c000cf6c:	0c 04                	or     al,0x4
c000cf6e:	04 c5                	add    al,0xc5
c000cf70:	40                   	inc    eax
c000cf71:	00 00                	add    BYTE PTR [eax],al
c000cf73:	00 f4                	add    ah,dh
c000cf75:	0b 00                	or     eax,DWORD PTR [eax]
c000cf77:	00 5b 9a             	add    BYTE PTR [ebx-0x66],bl
c000cf7a:	00 c0                	add    al,al
c000cf7c:	5b                   	pop    ebx
c000cf7d:	00 00                	add    BYTE PTR [eax],al
c000cf7f:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000cf82:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000cf88:	42                   	inc    edx
c000cf89:	83 04 86 03          	add    DWORD PTR [esi+eax*4],0x3
c000cf8d:	51                   	push   ecx
c000cf8e:	2e 0c 44             	cs or  al,0x44
c000cf91:	2e 10 4d 2e          	adc    BYTE PTR cs:[ebp+0x2e],cl
c000cf95:	00 4d 2e             	add    BYTE PTR [ebp+0x2e],cl
c000cf98:	04 04                	add    al,0x4
c000cf9a:	05 00 00 00 2e       	add    eax,0x2e000000
c000cf9f:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c000cfa2:	0c 45                	or     al,0x45
c000cfa4:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000cfa8:	00 50 c3             	add    BYTE PTR [eax-0x3d],dl
c000cfab:	41                   	inc    ecx
c000cfac:	c6 41 0c 04          	mov    BYTE PTR [ecx+0xc],0x4
c000cfb0:	04 c5                	add    al,0xc5
c000cfb2:	00 00                	add    BYTE PTR [eax],al
c000cfb4:	54                   	push   esp
c000cfb5:	00 00                	add    BYTE PTR [eax],al
c000cfb7:	00 38                	add    BYTE PTR [eax],bh
c000cfb9:	0c 00                	or     al,0x0
c000cfbb:	00 b6 9a 00 c0 78    	add    BYTE PTR [esi+0x78c0009a],dh
c000cfc1:	00 00                	add    BYTE PTR [eax],al
c000cfc3:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000cfc6:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000cfcc:	42                   	inc    edx
c000cfcd:	83 04 86 03          	add    DWORD PTR [esi+eax*4],0x3
c000cfd1:	53                   	push   ebx
c000cfd2:	2e 04 04             	cs add al,0x4
c000cfd5:	05 00 00 00 2e       	add    eax,0x2e000000
c000cfda:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c000cfdd:	0c 45                	or     al,0x45
c000cfdf:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000cfe3:	00 50 0a             	add    BYTE PTR [eax+0xa],dl
c000cfe6:	c3                   	ret    
c000cfe7:	41                   	inc    ecx
c000cfe8:	c6 41 0c 04          	mov    BYTE PTR [ecx+0xc],0x4
c000cfec:	04 c5                	add    al,0xc5
c000cfee:	41                   	inc    ecx
c000cfef:	0b 47 2e             	or     eax,DWORD PTR [edi+0x2e]
c000cff2:	04 04                	add    al,0x4
c000cff4:	05 00 00 00 2e       	add    eax,0x2e000000
c000cff9:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c000cffc:	0c 45                	or     al,0x45
c000cffe:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000d002:	00 57 c3             	add    BYTE PTR [edi-0x3d],dl
c000d005:	41                   	inc    ecx
c000d006:	c6 41 0c 04          	mov    BYTE PTR [ecx+0xc],0x4
c000d00a:	04 c5                	add    al,0xc5
c000d00c:	28 00                	sub    BYTE PTR [eax],al
c000d00e:	00 00                	add    BYTE PTR [eax],al
c000d010:	90                   	nop
c000d011:	0c 00                	or     al,0x0
c000d013:	00 48 9b             	add    BYTE PTR [eax-0x65],cl
c000d016:	00 c0                	add    al,al
c000d018:	1a 00                	sbb    al,BYTE PTR [eax]
c000d01a:	00 00                	add    BYTE PTR [eax],al
c000d01c:	41                   	inc    ecx
c000d01d:	0e                   	push   cs
c000d01e:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000d024:	41                   	inc    ecx
c000d025:	86 03                	xchg   BYTE PTR [ebx],al
c000d027:	44                   	inc    esp
c000d028:	83 04 04 0e          	add    DWORD PTR [esp+eax*1],0xe
c000d02c:	00 00                	add    BYTE PTR [eax],al
c000d02e:	00 c3                	add    bl,al
c000d030:	41                   	inc    ecx
c000d031:	c6 41 0c 04          	mov    BYTE PTR [ecx+0xc],0x4
c000d035:	04 c5                	add    al,0xc5
c000d037:	00 38                	add    BYTE PTR [eax],bh
c000d039:	00 00                	add    BYTE PTR [eax],al
c000d03b:	00 bc 0c 00 00 62 9b 	add    BYTE PTR [esp+ecx*1-0x649e0000],bh
c000d042:	00 c0                	add    al,al
c000d044:	64 00 00             	add    BYTE PTR fs:[eax],al
c000d047:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000d04a:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000d050:	44                   	inc    esp
c000d051:	2e 04 83             	cs add al,0x83
c000d054:	03 48 2e             	add    ecx,DWORD PTR [eax+0x2e]
c000d057:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c000d05a:	0c 41                	or     al,0x41
c000d05c:	2e 10 49 2e          	adc    BYTE PTR cs:[ecx+0x2e],cl
c000d060:	0c 41                	or     al,0x41
c000d062:	2e 08 43 2e          	or     BYTE PTR cs:[ebx+0x2e],al
c000d066:	0c 44                	or     al,0x44
c000d068:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000d06c:	00 78 c5             	add    BYTE PTR [eax-0x3b],bh
c000d06f:	0c 04                	or     al,0x4
c000d071:	04 c3                	add    al,0xc3
c000d073:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c000d076:	00 00                	add    BYTE PTR [eax],al
c000d078:	f8                   	clc    
c000d079:	0c 00                	or     al,0x0
c000d07b:	00 c6                	add    dh,al
c000d07d:	9b                   	fwait
c000d07e:	00 c0                	add    al,al
c000d080:	0c 00                	or     al,0x0
c000d082:	00 00                	add    BYTE PTR [eax],al
c000d084:	41                   	inc    ecx
c000d085:	0e                   	push   cs
c000d086:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000d08c:	48                   	dec    eax
c000d08d:	0c 04                	or     al,0x4
c000d08f:	04 c5                	add    al,0xc5
c000d091:	00 00                	add    BYTE PTR [eax],al
c000d093:	00 40 00             	add    BYTE PTR [eax+0x0],al
c000d096:	00 00                	add    BYTE PTR [eax],al
c000d098:	18 0d 00 00 d2 9b    	sbb    BYTE PTR ds:0x9bd20000,cl
c000d09e:	00 c0                	add    al,al
c000d0a0:	56                   	push   esi
c000d0a1:	00 00                	add    BYTE PTR [eax],al
c000d0a3:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000d0a6:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000d0ac:	43                   	inc    ebx
c000d0ad:	2e 0c 45             	cs or  al,0x45
c000d0b0:	2e 10 59 2e          	adc    BYTE PTR cs:[ecx+0x2e],bl
c000d0b4:	04 04                	add    al,0x4
c000d0b6:	02 00                	add    al,BYTE PTR [eax]
c000d0b8:	00 00                	add    BYTE PTR [eax],al
c000d0ba:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c000d0be:	0c 41                	or     al,0x41
c000d0c0:	2e 10 59 2e          	adc    BYTE PTR cs:[ecx+0x2e],bl
c000d0c4:	0c 41                	or     al,0x41
c000d0c6:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c000d0ca:	0c 45                	or     al,0x45
c000d0cc:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000d0d0:	00 41 c5             	add    BYTE PTR [ecx-0x3b],al
c000d0d3:	0c 04                	or     al,0x4
c000d0d5:	04 00                	add    al,0x0
c000d0d7:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c000d0da:	00 00                	add    BYTE PTR [eax],al
c000d0dc:	5c                   	pop    esp
c000d0dd:	0d 00 00 28 9c       	or     eax,0x9c280000
c000d0e2:	00 c0                	add    al,al
c000d0e4:	56                   	push   esi
c000d0e5:	00 00                	add    BYTE PTR [eax],al
c000d0e7:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000d0ea:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000d0f0:	02 52 0c             	add    dl,BYTE PTR [edx+0xc]
c000d0f3:	04 04                	add    al,0x4
c000d0f5:	c5 00                	lds    eax,FWORD PTR [eax]
c000d0f7:	00 b8 00 00 00 7c    	add    BYTE PTR [eax+0x7c000000],bh
c000d0fd:	0d 00 00 7e 9c       	or     eax,0x9c7e0000
c000d102:	00 c0                	add    al,al
c000d104:	bf 00 00 00 41       	mov    edi,0x41000000
c000d109:	0e                   	push   cs
c000d10a:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000d110:	41                   	inc    ecx
c000d111:	86 03                	xchg   BYTE PTR [ebx],al
c000d113:	47                   	inc    edi
c000d114:	2e 0c 42             	cs or  al,0x42
c000d117:	2e 10 83 04 04 0e 00 	adc    BYTE PTR cs:[ebx+0xe0404],al
c000d11e:	00 00                	add    BYTE PTR [eax],al
c000d120:	2e 04 04             	cs add al,0x4
c000d123:	01 00                	add    DWORD PTR [eax],eax
c000d125:	00 00                	add    BYTE PTR [eax],al
c000d127:	2e 08 43 2e          	or     BYTE PTR cs:[ebx+0x2e],al
c000d12b:	0c 41                	or     al,0x41
c000d12d:	2e 10 4a 2e          	adc    BYTE PTR cs:[edx+0x2e],cl
c000d131:	04 04                	add    al,0x4
c000d133:	03 00                	add    eax,DWORD PTR [eax]
c000d135:	00 00                	add    BYTE PTR [eax],al
c000d137:	2e 08 43 2e          	or     BYTE PTR cs:[ebx+0x2e],al
c000d13b:	0c 44                	or     al,0x44
c000d13d:	2e 10 4c 2e 0c       	adc    BYTE PTR cs:[esi+ebp*1+0xc],cl
c000d142:	41                   	inc    ecx
c000d143:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c000d147:	0c 45                	or     al,0x45
c000d149:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000d14d:	00 49 2e             	add    BYTE PTR [ecx+0x2e],cl
c000d150:	04 04                	add    al,0x4
c000d152:	05 00 00 00 2e       	add    eax,0x2e000000
c000d157:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c000d15a:	0c 45                	or     al,0x45
c000d15c:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000d160:	00 41 2e             	add    BYTE PTR [ecx+0x2e],al
c000d163:	04 04                	add    al,0x4
c000d165:	01 00                	add    DWORD PTR [eax],eax
c000d167:	00 00                	add    BYTE PTR [eax],al
c000d169:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c000d16d:	0c 45                	or     al,0x45
c000d16f:	2e 10 49 2e          	adc    BYTE PTR cs:[ecx+0x2e],cl
c000d173:	0c 41                	or     al,0x41
c000d175:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c000d179:	0c 45                	or     al,0x45
c000d17b:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000d17f:	00 49 2e             	add    BYTE PTR [ecx+0x2e],cl
c000d182:	04 04                	add    al,0x4
c000d184:	05 00 00 00 2e       	add    eax,0x2e000000
c000d189:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c000d18c:	0c 45                	or     al,0x45
c000d18e:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000d192:	00 41 2e             	add    BYTE PTR [ecx+0x2e],al
c000d195:	04 04                	add    al,0x4
c000d197:	01 00                	add    DWORD PTR [eax],eax
c000d199:	00 00                	add    BYTE PTR [eax],al
c000d19b:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c000d19f:	0c 45                	or     al,0x45
c000d1a1:	2e 10 4b c3          	adc    BYTE PTR cs:[ebx-0x3d],cl
c000d1a5:	41                   	inc    ecx
c000d1a6:	c6 41 0c 04          	mov    BYTE PTR [ecx+0xc],0x4
c000d1aa:	04 c5                	add    al,0xc5
c000d1ac:	41                   	inc    ecx
c000d1ad:	13 03                	adc    eax,DWORD PTR [ebx]
c000d1af:	2e 00 00             	add    BYTE PTR cs:[eax],al
c000d1b2:	00 00                	add    BYTE PTR [eax],al
c000d1b4:	cc                   	int3   
c000d1b5:	00 00                	add    BYTE PTR [eax],al
c000d1b7:	00 38                	add    BYTE PTR [eax],bh
c000d1b9:	0e                   	push   cs
c000d1ba:	00 00                	add    BYTE PTR [eax],al
c000d1bc:	3d 9d 00 c0 37       	cmp    eax,0x37c0009d
c000d1c1:	01 00                	add    DWORD PTR [eax],eax
c000d1c3:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000d1c6:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000d1cc:	42                   	inc    edx
c000d1cd:	83 04 86 03          	add    DWORD PTR [esi+eax*4],0x3
c000d1d1:	55                   	push   ebp
c000d1d2:	2e 04 04             	cs add al,0x4
c000d1d5:	05 00 00 00 2e       	add    eax,0x2e000000
c000d1da:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c000d1dd:	0c 45                	or     al,0x45
c000d1df:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000d1e3:	00 48 2e             	add    BYTE PTR [eax+0x2e],cl
c000d1e6:	04 04                	add    al,0x4
c000d1e8:	01 00                	add    DWORD PTR [eax],eax
c000d1ea:	00 00                	add    BYTE PTR [eax],al
c000d1ec:	2e 08 44 2e 0c       	or     BYTE PTR cs:[esi+ebp*1+0xc],al
c000d1f1:	45                   	inc    ebp
c000d1f2:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000d1f6:	00 49 2e             	add    BYTE PTR [ecx+0x2e],cl
c000d1f9:	04 04                	add    al,0x4
c000d1fb:	05 00 00 00 2e       	add    eax,0x2e000000
c000d200:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c000d203:	0c 45                	or     al,0x45
c000d205:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000d209:	00 41 2e             	add    BYTE PTR [ecx+0x2e],al
c000d20c:	04 04                	add    al,0x4
c000d20e:	01 00                	add    DWORD PTR [eax],eax
c000d210:	00 00                	add    BYTE PTR [eax],al
c000d212:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c000d216:	0c 45                	or     al,0x45
c000d218:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000d21c:	00 4a 2e             	add    BYTE PTR [edx+0x2e],cl
c000d21f:	0c 45                	or     al,0x45
c000d221:	2e 10 52 2e          	adc    BYTE PTR cs:[edx+0x2e],dl
c000d225:	00 49 2e             	add    BYTE PTR [ecx+0x2e],cl
c000d228:	04 04                	add    al,0x4
c000d22a:	05 00 00 00 2e       	add    eax,0x2e000000
c000d22f:	08 45 2e             	or     BYTE PTR [ebp+0x2e],al
c000d232:	0c 45                	or     al,0x45
c000d234:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000d238:	00 51 2e             	add    BYTE PTR [ecx+0x2e],dl
c000d23b:	04 04                	add    al,0x4
c000d23d:	05 00 00 00 2e       	add    eax,0x2e000000
c000d242:	08 45 2e             	or     BYTE PTR [ebp+0x2e],al
c000d245:	0c 45                	or     al,0x45
c000d247:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000d24b:	00 43 2e             	add    BYTE PTR [ebx+0x2e],al
c000d24e:	0c 45                	or     al,0x45
c000d250:	2e 10 5d 2e          	adc    BYTE PTR cs:[ebp+0x2e],bl
c000d254:	00 49 2e             	add    BYTE PTR [ecx+0x2e],cl
c000d257:	04 04                	add    al,0x4
c000d259:	01 00                	add    DWORD PTR [eax],eax
c000d25b:	00 00                	add    BYTE PTR [eax],al
c000d25d:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c000d261:	0c 42                	or     al,0x42
c000d263:	2e 10 50 2e          	adc    BYTE PTR cs:[eax+0x2e],dl
c000d267:	00 41 2e             	add    BYTE PTR [ecx+0x2e],al
c000d26a:	04 04                	add    al,0x4
c000d26c:	01 00                	add    DWORD PTR [eax],eax
c000d26e:	00 00                	add    BYTE PTR [eax],al
c000d270:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c000d274:	0c 41                	or     al,0x41
c000d276:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000d27a:	00 44 c3 41          	add    BYTE PTR [ebx+eax*8+0x41],al
c000d27e:	c6 41 0c 04          	mov    BYTE PTR [ecx+0xc],0x4
c000d282:	04 c5                	add    al,0xc5
c000d284:	38 00                	cmp    BYTE PTR [eax],al
c000d286:	00 00                	add    BYTE PTR [eax],al
c000d288:	08 0f                	or     BYTE PTR [edi],cl
c000d28a:	00 00                	add    BYTE PTR [eax],al
c000d28c:	74 9e                	je     c000d22c <_edata+0xeac>
c000d28e:	00 c0                	add    al,al
c000d290:	4b                   	dec    ebx
c000d291:	00 00                	add    BYTE PTR [eax],al
c000d293:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000d296:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000d29c:	42                   	inc    edx
c000d29d:	83 04 86 03          	add    DWORD PTR [esi+eax*4],0x3
c000d2a1:	4d                   	dec    ebp
c000d2a2:	2e 04 04             	cs add al,0x4
c000d2a5:	05 00 00 00 2e       	add    eax,0x2e000000
c000d2aa:	08 45 2e             	or     BYTE PTR [ebp+0x2e],al
c000d2ad:	0c 45                	or     al,0x45
c000d2af:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000d2b3:	00 5b c3             	add    BYTE PTR [ebx-0x3d],bl
c000d2b6:	41                   	inc    ecx
c000d2b7:	c6 41 0c 04          	mov    BYTE PTR [ecx+0xc],0x4
c000d2bb:	04 c5                	add    al,0xc5
c000d2bd:	00 00                	add    BYTE PTR [eax],al
c000d2bf:	00 88 00 00 00 44    	add    BYTE PTR [eax+0x44000000],cl
c000d2c5:	0f 00 00             	sldt   WORD PTR [eax]
c000d2c8:	bf 9e 00 c0 a2       	mov    edi,0xa2c0009e
c000d2cd:	00 00                	add    BYTE PTR [eax],al
c000d2cf:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000d2d2:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000d2d8:	46                   	inc    esi
c000d2d9:	83 05 86 04 87 03 51 	add    DWORD PTR ds:0x3870486,0x51
c000d2e0:	2e 04 04             	cs add al,0x4
c000d2e3:	01 00                	add    DWORD PTR [eax],eax
c000d2e5:	00 00                	add    BYTE PTR [eax],al
c000d2e7:	2e 08 44 2e 0c       	or     BYTE PTR cs:[esi+ebp*1+0xc],al
c000d2ec:	45                   	inc    ebp
c000d2ed:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000d2f1:	00 49 2e             	add    BYTE PTR [ecx+0x2e],cl
c000d2f4:	04 04                	add    al,0x4
c000d2f6:	05 00 00 00 2e       	add    eax,0x2e000000
c000d2fb:	08 45 2e             	or     BYTE PTR [ebp+0x2e],al
c000d2fe:	0c 45                	or     al,0x45
c000d300:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000d304:	00 41 2e             	add    BYTE PTR [ecx+0x2e],al
c000d307:	04 04                	add    al,0x4
c000d309:	01 00                	add    DWORD PTR [eax],eax
c000d30b:	00 00                	add    BYTE PTR [eax],al
c000d30d:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c000d311:	0c 45                	or     al,0x45
c000d313:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000d317:	00 49 2e             	add    BYTE PTR [ecx+0x2e],cl
c000d31a:	04 04                	add    al,0x4
c000d31c:	05 00 00 00 2e       	add    eax,0x2e000000
c000d321:	08 45 2e             	or     BYTE PTR [ebp+0x2e],al
c000d324:	0c 45                	or     al,0x45
c000d326:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000d32a:	00 41 2e             	add    BYTE PTR [ecx+0x2e],al
c000d32d:	04 04                	add    al,0x4
c000d32f:	01 00                	add    DWORD PTR [eax],eax
c000d331:	00 00                	add    BYTE PTR [eax],al
c000d333:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c000d337:	0c 45                	or     al,0x45
c000d339:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000d33d:	00 4e c3             	add    BYTE PTR [esi-0x3d],cl
c000d340:	41                   	inc    ecx
c000d341:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c000d345:	0c 04                	or     al,0x4
c000d347:	04 c5                	add    al,0xc5
c000d349:	00 00                	add    BYTE PTR [eax],al
c000d34b:	00 2c 00             	add    BYTE PTR [eax+eax*1],ch
c000d34e:	00 00                	add    BYTE PTR [eax],al
c000d350:	d0 0f                	ror    BYTE PTR [edi],1
c000d352:	00 00                	add    BYTE PTR [eax],al
c000d354:	64 9f                	fs lahf 
c000d356:	00 c0                	add    al,al
c000d358:	3e 00 00             	add    BYTE PTR ds:[eax],al
c000d35b:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000d35e:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000d364:	41                   	inc    ecx
c000d365:	87 03                	xchg   DWORD PTR [ebx],eax
c000d367:	44                   	inc    esp
c000d368:	86 04 04             	xchg   BYTE PTR [esp+eax*1],al
c000d36b:	06                   	push   es
c000d36c:	00 00                	add    BYTE PTR [eax],al
c000d36e:	00 83 05 6c c3 41    	add    BYTE PTR [ebx+0x41c36c05],al
c000d374:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c000d378:	0c 04                	or     al,0x4
c000d37a:	04 c5                	add    al,0xc5
c000d37c:	30 00                	xor    BYTE PTR [eax],al
c000d37e:	00 00                	add    BYTE PTR [eax],al
c000d380:	00 10                	add    BYTE PTR [eax],dl
c000d382:	00 00                	add    BYTE PTR [eax],al
c000d384:	a2 9f 00 c0 99       	mov    ds:0x99c0009f,al
c000d389:	00 00                	add    BYTE PTR [eax],al
c000d38b:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000d38e:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000d394:	43                   	inc    ebx
c000d395:	2e 04 04             	cs add al,0x4
c000d398:	02 00                	add    al,BYTE PTR [eax]
c000d39a:	00 00                	add    BYTE PTR [eax],al
c000d39c:	2e 08 42 2e          	or     BYTE PTR cs:[edx+0x2e],al
c000d3a0:	0c 45                	or     al,0x45
c000d3a2:	2e 10 02             	adc    BYTE PTR cs:[edx],al
c000d3a5:	88 2e                	mov    BYTE PTR [esi],ch
c000d3a7:	00 41 c5             	add    BYTE PTR [ecx-0x3b],al
c000d3aa:	0c 04                	or     al,0x4
c000d3ac:	04 00                	add    al,0x0
c000d3ae:	00 00                	add    BYTE PTR [eax],al
c000d3b0:	1c 00                	sbb    al,0x0
c000d3b2:	00 00                	add    BYTE PTR [eax],al
c000d3b4:	34 10                	xor    al,0x10
c000d3b6:	00 00                	add    BYTE PTR [eax],al
c000d3b8:	3b a0 00 c0 12 00    	cmp    esp,DWORD PTR [eax+0x12c000]
c000d3be:	00 00                	add    BYTE PTR [eax],al
c000d3c0:	41                   	inc    ecx
c000d3c1:	0e                   	push   cs
c000d3c2:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000d3c8:	44                   	inc    esp
c000d3c9:	0c 04                	or     al,0x4
c000d3cb:	04 c5                	add    al,0xc5
c000d3cd:	00 00                	add    BYTE PTR [eax],al
c000d3cf:	00 38                	add    BYTE PTR [eax],bh
c000d3d1:	00 00                	add    BYTE PTR [eax],al
c000d3d3:	00 54 10 00          	add    BYTE PTR [eax+edx*1+0x0],dl
c000d3d7:	00 50 a0             	add    BYTE PTR [eax-0x60],dl
c000d3da:	00 c0                	add    al,al
c000d3dc:	dd 00                	fld    QWORD PTR [eax]
c000d3de:	00 00                	add    BYTE PTR [eax],al
c000d3e0:	41                   	inc    ecx
c000d3e1:	0e                   	push   cs
c000d3e2:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000d3e8:	42                   	inc    edx
c000d3e9:	83 04 86 03          	add    DWORD PTR [esi+eax*4],0x3
c000d3ed:	02 a5 2e 04 04 01    	add    ah,BYTE PTR [ebp+0x104042e]
c000d3f3:	00 00                	add    BYTE PTR [eax],al
c000d3f5:	00 2e                	add    BYTE PTR [esi],ch
c000d3f7:	08 45 2e             	or     BYTE PTR [ebp+0x2e],al
c000d3fa:	0c 42                	or     al,0x42
c000d3fc:	2e 10 64 2e 00       	adc    BYTE PTR cs:[esi+ebp*1+0x0],ah
c000d401:	44                   	inc    esp
c000d402:	c3                   	ret    
c000d403:	41                   	inc    ecx
c000d404:	c6 41 0c 04          	mov    BYTE PTR [ecx+0xc],0x4
c000d408:	04 c5                	add    al,0xc5
c000d40a:	00 00                	add    BYTE PTR [eax],al
c000d40c:	3c 00                	cmp    al,0x0
c000d40e:	00 00                	add    BYTE PTR [eax],al
c000d410:	90                   	nop
c000d411:	10 00                	adc    BYTE PTR [eax],al
c000d413:	00 2d a1 00 c0 3d    	add    BYTE PTR ds:0x3dc000a1,ch
c000d419:	00 00                	add    BYTE PTR [eax],al
c000d41b:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000d41e:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000d424:	42                   	inc    edx
c000d425:	83 03 4e             	add    DWORD PTR [ebx],0x4e
c000d428:	2e 04 04             	cs add al,0x4
c000d42b:	05 00 00 00 2e       	add    eax,0x2e000000
c000d430:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c000d433:	0c 45                	or     al,0x45
c000d435:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000d439:	00 43 2e             	add    BYTE PTR [ebx+0x2e],al
c000d43c:	0c 43                	or     al,0x43
c000d43e:	2e 10 4b 2e          	adc    BYTE PTR cs:[ebx+0x2e],cl
c000d442:	00 44 c5 0c          	add    BYTE PTR [ebp+eax*8+0xc],al
c000d446:	04 04                	add    al,0x4
c000d448:	c3                   	ret    
c000d449:	00 00                	add    BYTE PTR [eax],al
c000d44b:	00 44 00 00          	add    BYTE PTR [eax+eax*1+0x0],al
c000d44f:	00 d0                	add    al,dl
c000d451:	10 00                	adc    BYTE PTR [eax],al
c000d453:	00 6a a1             	add    BYTE PTR [edx-0x5f],ch
c000d456:	00 c0                	add    al,al
c000d458:	48                   	dec    eax
c000d459:	00 00                	add    BYTE PTR [eax],al
c000d45b:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000d45e:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000d464:	42                   	inc    edx
c000d465:	83 03 4c             	add    DWORD PTR [ebx],0x4c
c000d468:	2e 04 04             	cs add al,0x4
c000d46b:	05 00 00 00 2e       	add    eax,0x2e000000
c000d470:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c000d473:	0c 45                	or     al,0x45
c000d475:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000d479:	00 43 2e             	add    BYTE PTR [ebx+0x2e],al
c000d47c:	0c 41                	or     al,0x41
c000d47e:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000d482:	00 4d 0a             	add    BYTE PTR [ebp+0xa],cl
c000d485:	c5 0c 04             	lds    ecx,FWORD PTR [esp+eax*1]
c000d488:	04 c3                	add    al,0xc3
c000d48a:	45                   	inc    ebp
c000d48b:	0b 44 c5 0c          	or     eax,DWORD PTR [ebp+eax*8+0xc]
c000d48f:	04 04                	add    al,0x4
c000d491:	c3                   	ret    
c000d492:	00 00                	add    BYTE PTR [eax],al
c000d494:	4c                   	dec    esp
c000d495:	00 00                	add    BYTE PTR [eax],al
c000d497:	00 18                	add    BYTE PTR [eax],bl
c000d499:	11 00                	adc    DWORD PTR [eax],eax
c000d49b:	00 b2 a1 00 c0 59    	add    BYTE PTR [edx+0x59c000a1],dh
c000d4a1:	00 00                	add    BYTE PTR [eax],al
c000d4a3:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000d4a6:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000d4ac:	44                   	inc    esp
c000d4ad:	2e 0c 83             	cs or  al,0x83
c000d4b0:	03 42 2e             	add    eax,DWORD PTR [edx+0x2e]
c000d4b3:	10 48 2e             	adc    BYTE PTR [eax+0x2e],cl
c000d4b6:	00 47 2e             	add    BYTE PTR [edi+0x2e],al
c000d4b9:	04 04                	add    al,0x4
c000d4bb:	01 00                	add    DWORD PTR [eax],eax
c000d4bd:	00 00                	add    BYTE PTR [eax],al
c000d4bf:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c000d4c3:	0c 42                	or     al,0x42
c000d4c5:	2e 10 47 2e          	adc    BYTE PTR cs:[edi+0x2e],al
c000d4c9:	00 41 2e             	add    BYTE PTR [ecx+0x2e],al
c000d4cc:	04 04                	add    al,0x4
c000d4ce:	05 00 00 00 2e       	add    eax,0x2e000000
c000d4d3:	08 45 2e             	or     BYTE PTR [ebp+0x2e],al
c000d4d6:	0c 47                	or     al,0x47
c000d4d8:	2e 10 5b 2e          	adc    BYTE PTR cs:[ebx+0x2e],bl
c000d4dc:	00 44 c5 0c          	add    BYTE PTR [ebp+eax*8+0xc],al
c000d4e0:	04 04                	add    al,0x4
c000d4e2:	c3                   	ret    
c000d4e3:	00 30                	add    BYTE PTR [eax],dh
c000d4e5:	00 00                	add    BYTE PTR [eax],al
c000d4e7:	00 68 11             	add    BYTE PTR [eax+0x11],ch
c000d4ea:	00 00                	add    BYTE PTR [eax],al
c000d4ec:	0b a2 00 c0 21 00    	or     esp,DWORD PTR [edx+0x21c000]
c000d4f2:	00 00                	add    BYTE PTR [eax],al
c000d4f4:	41                   	inc    ecx
c000d4f5:	0e                   	push   cs
c000d4f6:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000d4fc:	43                   	inc    ebx
c000d4fd:	2e 0c 42             	cs or  al,0x42
c000d500:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c000d504:	0c 41                	or     al,0x41
c000d506:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c000d50a:	0c 47                	or     al,0x47
c000d50c:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000d510:	00 41 c5             	add    BYTE PTR [ecx-0x3b],al
c000d513:	0c 04                	or     al,0x4
c000d515:	04 00                	add    al,0x0
c000d517:	00 ec                	add    ah,ch
c000d519:	00 00                	add    BYTE PTR [eax],al
c000d51b:	00 9c 11 00 00 2c a2 	add    BYTE PTR [ecx+edx*1-0x5dd40000],bl
c000d522:	00 c0                	add    al,al
c000d524:	14 01                	adc    al,0x1
c000d526:	00 00                	add    BYTE PTR [eax],al
c000d528:	41                   	inc    ecx
c000d529:	0e                   	push   cs
c000d52a:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000d530:	46                   	inc    esi
c000d531:	2e 0c 83             	cs or  al,0x83
c000d534:	05 86 04 87 03       	add    eax,0x3870486
c000d539:	45                   	inc    ebp
c000d53a:	2e 10 4b 2e          	adc    BYTE PTR cs:[ebx+0x2e],cl
c000d53e:	04 04                	add    al,0x4
c000d540:	02 00                	add    al,BYTE PTR [eax]
c000d542:	00 00                	add    BYTE PTR [eax],al
c000d544:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c000d548:	0c 43                	or     al,0x43
c000d54a:	2e 10 50 2e          	adc    BYTE PTR cs:[eax+0x2e],dl
c000d54e:	04 04                	add    al,0x4
c000d550:	01 00                	add    DWORD PTR [eax],eax
c000d552:	00 00                	add    BYTE PTR [eax],al
c000d554:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c000d558:	0c 41                	or     al,0x41
c000d55a:	2e 10 4e 2e          	adc    BYTE PTR cs:[esi+0x2e],cl
c000d55e:	0c 41                	or     al,0x41
c000d560:	2e 08 48 2e          	or     BYTE PTR cs:[eax+0x2e],cl
c000d564:	0c 42                	or     al,0x42
c000d566:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000d56a:	04 04                	add    al,0x4
c000d56c:	02 00                	add    al,BYTE PTR [eax]
c000d56e:	00 00                	add    BYTE PTR [eax],al
c000d570:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c000d574:	0c 42                	or     al,0x42
c000d576:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c000d57a:	0c 41                	or     al,0x41
c000d57c:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c000d580:	0c 42                	or     al,0x42
c000d582:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000d586:	04 04                	add    al,0x4
c000d588:	02 00                	add    al,BYTE PTR [eax]
c000d58a:	00 00                	add    BYTE PTR [eax],al
c000d58c:	2e 08 43 2e          	or     BYTE PTR cs:[ebx+0x2e],al
c000d590:	0c 42                	or     al,0x42
c000d592:	2e 10 53 2e          	adc    BYTE PTR cs:[ebx+0x2e],dl
c000d596:	0c 41                	or     al,0x41
c000d598:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c000d59c:	0c 45                	or     al,0x45
c000d59e:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000d5a2:	00 49 2e             	add    BYTE PTR [ecx+0x2e],cl
c000d5a5:	04 04                	add    al,0x4
c000d5a7:	05 00 00 00 2e       	add    eax,0x2e000000
c000d5ac:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c000d5af:	0c 45                	or     al,0x45
c000d5b1:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000d5b5:	00 41 2e             	add    BYTE PTR [ecx+0x2e],al
c000d5b8:	04 04                	add    al,0x4
c000d5ba:	04 00                	add    al,0x0
c000d5bc:	00 00                	add    BYTE PTR [eax],al
c000d5be:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c000d5c2:	0c 45                	or     al,0x45
c000d5c4:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c000d5c8:	0c 41                	or     al,0x41
c000d5ca:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c000d5ce:	0c 45                	or     al,0x45
c000d5d0:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000d5d4:	00 49 2e             	add    BYTE PTR [ecx+0x2e],cl
c000d5d7:	04 04                	add    al,0x4
c000d5d9:	05 00 00 00 2e       	add    eax,0x2e000000
c000d5de:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c000d5e1:	0c 45                	or     al,0x45
c000d5e3:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000d5e7:	00 41 2e             	add    BYTE PTR [ecx+0x2e],al
c000d5ea:	04 04                	add    al,0x4
c000d5ec:	01 00                	add    DWORD PTR [eax],eax
c000d5ee:	00 00                	add    BYTE PTR [eax],al
c000d5f0:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c000d5f4:	0c 45                	or     al,0x45
c000d5f6:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000d5fa:	00 47 c3             	add    BYTE PTR [edi-0x3d],al
c000d5fd:	41                   	inc    ecx
c000d5fe:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c000d602:	0c 04                	or     al,0x4
c000d604:	04 c5                	add    al,0xc5
c000d606:	00 00                	add    BYTE PTR [eax],al
c000d608:	24 00                	and    al,0x0
c000d60a:	00 00                	add    BYTE PTR [eax],al
c000d60c:	8c 12                	mov    WORD PTR [edx],ss
c000d60e:	00 00                	add    BYTE PTR [eax],al
c000d610:	40                   	inc    eax
c000d611:	a3 00 c0 15 00       	mov    ds:0x15c000,eax
c000d616:	00 00                	add    BYTE PTR [eax],al
c000d618:	41                   	inc    ecx
c000d619:	0e                   	push   cs
c000d61a:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000d620:	43                   	inc    ebx
c000d621:	2e 0c 45             	cs or  al,0x45
c000d624:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000d628:	00 41 c5             	add    BYTE PTR [ecx-0x3b],al
c000d62b:	0c 04                	or     al,0x4
c000d62d:	04 00                	add    al,0x0
c000d62f:	00 3c 00             	add    BYTE PTR [eax+eax*1],bh
c000d632:	00 00                	add    BYTE PTR [eax],al
c000d634:	b4 12                	mov    ah,0x12
c000d636:	00 00                	add    BYTE PTR [eax],al
c000d638:	55                   	push   ebp
c000d639:	a3 00 c0 3e 00       	mov    ds:0x3ec000,eax
c000d63e:	00 00                	add    BYTE PTR [eax],al
c000d640:	41                   	inc    ecx
c000d641:	0e                   	push   cs
c000d642:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000d648:	41                   	inc    ecx
c000d649:	86 03                	xchg   BYTE PTR [ebx],al
c000d64b:	44                   	inc    esp
c000d64c:	83 04 04 06          	add    DWORD PTR [esp+eax*1],0x6
c000d650:	00 00                	add    BYTE PTR [eax],al
c000d652:	00 2e                	add    BYTE PTR [esi],ch
c000d654:	0c 45                	or     al,0x45
c000d656:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c000d65a:	0c 41                	or     al,0x41
c000d65c:	2e 08 46 2e          	or     BYTE PTR cs:[esi+0x2e],al
c000d660:	0c 44                	or     al,0x44
c000d662:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000d666:	00 4b c3             	add    BYTE PTR [ebx-0x3d],cl
c000d669:	41                   	inc    ecx
c000d66a:	c6 41 0c 04          	mov    BYTE PTR [ecx+0xc],0x4
c000d66e:	04 c5                	add    al,0xc5
c000d670:	3c 00                	cmp    al,0x0
c000d672:	00 00                	add    BYTE PTR [eax],al
c000d674:	f4                   	hlt    
c000d675:	12 00                	adc    al,BYTE PTR [eax]
c000d677:	00 93 a3 00 c0 39    	add    BYTE PTR [ebx+0x39c000a3],dl
c000d67d:	00 00                	add    BYTE PTR [eax],al
c000d67f:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000d682:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000d688:	41                   	inc    ecx
c000d689:	86 03                	xchg   BYTE PTR [ebx],al
c000d68b:	44                   	inc    esp
c000d68c:	83 04 04 06          	add    DWORD PTR [esp+eax*1],0x6
c000d690:	00 00                	add    BYTE PTR [eax],al
c000d692:	00 2e                	add    BYTE PTR [esi],ch
c000d694:	0c 45                	or     al,0x45
c000d696:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c000d69a:	0c 41                	or     al,0x41
c000d69c:	2e 08 44 2e 0c       	or     BYTE PTR cs:[esi+ebp*1+0xc],al
c000d6a1:	41                   	inc    ecx
c000d6a2:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000d6a6:	00 4b c3             	add    BYTE PTR [ebx-0x3d],cl
c000d6a9:	41                   	inc    ecx
c000d6aa:	c6 41 0c 04          	mov    BYTE PTR [ecx+0xc],0x4
c000d6ae:	04 c5                	add    al,0xc5
c000d6b0:	40                   	inc    eax
c000d6b1:	00 00                	add    BYTE PTR [eax],al
c000d6b3:	00 34 13             	add    BYTE PTR [ebx+edx*1],dh
c000d6b6:	00 00                	add    BYTE PTR [eax],al
c000d6b8:	cc                   	int3   
c000d6b9:	a3 00 c0 40 00       	mov    ds:0x40c000,eax
c000d6be:	00 00                	add    BYTE PTR [eax],al
c000d6c0:	41                   	inc    ecx
c000d6c1:	0e                   	push   cs
c000d6c2:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000d6c8:	46                   	inc    esi
c000d6c9:	2e 0c 83             	cs or  al,0x83
c000d6cc:	05 86 04 87 03       	add    eax,0x3870486
c000d6d1:	4e                   	dec    esi
c000d6d2:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000d6d6:	04 04                	add    al,0x4
c000d6d8:	01 00                	add    DWORD PTR [eax],eax
c000d6da:	00 00                	add    BYTE PTR [eax],al
c000d6dc:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c000d6e0:	0c 44                	or     al,0x44
c000d6e2:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000d6e6:	00 4b c3             	add    BYTE PTR [ebx-0x3d],cl
c000d6e9:	41                   	inc    ecx
c000d6ea:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c000d6ee:	0c 04                	or     al,0x4
c000d6f0:	04 c5                	add    al,0xc5
c000d6f2:	00 00                	add    BYTE PTR [eax],al
c000d6f4:	40                   	inc    eax
c000d6f5:	00 00                	add    BYTE PTR [eax],al
c000d6f7:	00 78 13             	add    BYTE PTR [eax+0x13],bh
c000d6fa:	00 00                	add    BYTE PTR [eax],al
c000d6fc:	0c a4                	or     al,0xa4
c000d6fe:	00 c0                	add    al,al
c000d700:	40                   	inc    eax
c000d701:	00 00                	add    BYTE PTR [eax],al
c000d703:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000d706:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000d70c:	46                   	inc    esi
c000d70d:	2e 0c 83             	cs or  al,0x83
c000d710:	05 86 04 87 03       	add    eax,0x3870486
c000d715:	4e                   	dec    esi
c000d716:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000d71a:	04 04                	add    al,0x4
c000d71c:	01 00                	add    DWORD PTR [eax],eax
c000d71e:	00 00                	add    BYTE PTR [eax],al
c000d720:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c000d724:	0c 44                	or     al,0x44
c000d726:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000d72a:	00 4b c3             	add    BYTE PTR [ebx-0x3d],cl
c000d72d:	41                   	inc    ecx
c000d72e:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c000d732:	0c 04                	or     al,0x4
c000d734:	04 c5                	add    al,0xc5
c000d736:	00 00                	add    BYTE PTR [eax],al
c000d738:	3c 00                	cmp    al,0x0
c000d73a:	00 00                	add    BYTE PTR [eax],al
c000d73c:	bc 13 00 00 4c       	mov    esp,0x4c000013
c000d741:	a4                   	movs   BYTE PTR es:[edi],BYTE PTR ds:[esi]
c000d742:	00 c0                	add    al,al
c000d744:	66 00 00             	data16 add BYTE PTR [eax],al
c000d747:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000d74a:	08 85 02 44 0d 05    	or     BYTE PTR [ebp+0x50d4402],al
c000d750:	48                   	dec    eax
c000d751:	83 05 86 04 87 03 67 	add    DWORD PTR ds:0x3870486,0x67
c000d758:	2e 04 04             	cs add al,0x4
c000d75b:	01 00                	add    DWORD PTR [eax],eax
c000d75d:	00 00                	add    BYTE PTR [eax],al
c000d75f:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c000d763:	0c 42                	or     al,0x42
c000d765:	2e 10 5e 2e          	adc    BYTE PTR cs:[esi+0x2e],bl
c000d769:	00 4c c3 41          	add    BYTE PTR [ebx+eax*8+0x41],cl
c000d76d:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c000d771:	0c 04                	or     al,0x4
c000d773:	04 c5                	add    al,0xc5
c000d775:	00 00                	add    BYTE PTR [eax],al
c000d777:	00 3c 00             	add    BYTE PTR [eax+eax*1],bh
c000d77a:	00 00                	add    BYTE PTR [eax],al
c000d77c:	fc                   	cld    
c000d77d:	13 00                	adc    eax,DWORD PTR [eax]
c000d77f:	00 b2 a4 00 c0 66    	add    BYTE PTR [edx+0x66c000a4],dh
c000d785:	00 00                	add    BYTE PTR [eax],al
c000d787:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000d78a:	08 85 02 44 0d 05    	or     BYTE PTR [ebp+0x50d4402],al
c000d790:	48                   	dec    eax
c000d791:	83 05 86 04 87 03 67 	add    DWORD PTR ds:0x3870486,0x67
c000d798:	2e 04 04             	cs add al,0x4
c000d79b:	01 00                	add    DWORD PTR [eax],eax
c000d79d:	00 00                	add    BYTE PTR [eax],al
c000d79f:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c000d7a3:	0c 42                	or     al,0x42
c000d7a5:	2e 10 5e 2e          	adc    BYTE PTR cs:[esi+0x2e],bl
c000d7a9:	00 4c c3 41          	add    BYTE PTR [ebx+eax*8+0x41],cl
c000d7ad:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c000d7b1:	0c 04                	or     al,0x4
c000d7b3:	04 c5                	add    al,0xc5
c000d7b5:	00 00                	add    BYTE PTR [eax],al
c000d7b7:	00 2c 00             	add    BYTE PTR [eax+eax*1],ch
c000d7ba:	00 00                	add    BYTE PTR [eax],al
c000d7bc:	3c 14                	cmp    al,0x14
c000d7be:	00 00                	add    BYTE PTR [eax],al
c000d7c0:	18 a5 00 c0 1e 00    	sbb    BYTE PTR [ebp+0x1ec000],ah
c000d7c6:	00 00                	add    BYTE PTR [eax],al
c000d7c8:	41                   	inc    ecx
c000d7c9:	0e                   	push   cs
c000d7ca:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000d7d0:	45                   	inc    ebp
c000d7d1:	2e 04 04             	cs add al,0x4
c000d7d4:	02 00                	add    al,BYTE PTR [eax]
c000d7d6:	00 00                	add    BYTE PTR [eax],al
c000d7d8:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c000d7dc:	0c 45                	or     al,0x45
c000d7de:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000d7e2:	00 41 c5             	add    BYTE PTR [ecx-0x3b],al
c000d7e5:	0c 04                	or     al,0x4
c000d7e7:	04 50                	add    al,0x50
c000d7e9:	00 00                	add    BYTE PTR [eax],al
c000d7eb:	00 6c 14 00          	add    BYTE PTR [esp+edx*1+0x0],ch
c000d7ef:	00 36                	add    BYTE PTR [esi],dh
c000d7f1:	a5                   	movs   DWORD PTR es:[edi],DWORD PTR ds:[esi]
c000d7f2:	00 c0                	add    al,al
c000d7f4:	bf 01 00 00 41       	mov    edi,0x41000001
c000d7f9:	0e                   	push   cs
c000d7fa:	08 85 02 47 0d 05    	or     BYTE PTR [ebp+0x50d4702],al
c000d800:	46                   	inc    esi
c000d801:	83 03 03             	add    DWORD PTR [ebx],0x3
c000d804:	1d 01 2e 0c 45       	sbb    eax,0x450c2e01
c000d809:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000d80d:	00 45 2e             	add    BYTE PTR [ebp+0x2e],al
c000d810:	04 04                	add    al,0x4
c000d812:	01 00                	add    DWORD PTR [eax],eax
c000d814:	00 00                	add    BYTE PTR [eax],al
c000d816:	2e 08 44 2e 0c       	or     BYTE PTR cs:[esi+ebp*1+0xc],al
c000d81b:	45                   	inc    ebp
c000d81c:	2e 10 47 2e          	adc    BYTE PTR cs:[edi+0x2e],al
c000d820:	00 02                	add    BYTE PTR [edx],al
c000d822:	5c                   	pop    esp
c000d823:	2e 04 04             	cs add al,0x4
c000d826:	01 00                	add    DWORD PTR [eax],eax
c000d828:	00 00                	add    BYTE PTR [eax],al
c000d82a:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c000d82e:	0c 42                	or     al,0x42
c000d830:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000d834:	00 44 c5 0c          	add    BYTE PTR [ebp+eax*8+0xc],al
c000d838:	04 04                	add    al,0x4
c000d83a:	c3                   	ret    
c000d83b:	00 28                	add    BYTE PTR [eax],ch
c000d83d:	00 00                	add    BYTE PTR [eax],al
c000d83f:	00 c0                	add    al,al
c000d841:	14 00                	adc    al,0x0
c000d843:	00 f8                	add    al,bh
c000d845:	a6                   	cmps   BYTE PTR ds:[esi],BYTE PTR es:[edi]
c000d846:	00 c0                	add    al,al
c000d848:	ac                   	lods   al,BYTE PTR ds:[esi]
c000d849:	00 00                	add    BYTE PTR [eax],al
c000d84b:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000d84e:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000d854:	42                   	inc    edx
c000d855:	86 04 87             	xchg   BYTE PTR [edi+eax*4],al
c000d858:	03 49 83             	add    ecx,DWORD PTR [ecx-0x7d]
c000d85b:	05 02 96 c3 41       	add    eax,0x41c39602
c000d860:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c000d864:	0c 04                	or     al,0x4
c000d866:	04 c5                	add    al,0xc5
c000d868:	1c 00                	sbb    al,0x0
c000d86a:	00 00                	add    BYTE PTR [eax],al
c000d86c:	ec                   	in     al,dx
c000d86d:	14 00                	adc    al,0x0
c000d86f:	00 a4 a7 00 c0 18 00 	add    BYTE PTR [edi+eiz*4+0x18c000],ah
c000d876:	00 00                	add    BYTE PTR [eax],al
c000d878:	41                   	inc    ecx
c000d879:	0e                   	push   cs
c000d87a:	08 85 02 47 0d 05    	or     BYTE PTR [ebp+0x50d4702],al
c000d880:	4f                   	dec    edi
c000d881:	0c 04                	or     al,0x4
c000d883:	04 c5                	add    al,0xc5
c000d885:	00 00                	add    BYTE PTR [eax],al
c000d887:	00 24 00             	add    BYTE PTR [eax+eax*1],ah
c000d88a:	00 00                	add    BYTE PTR [eax],al
c000d88c:	0c 15                	or     al,0x15
c000d88e:	00 00                	add    BYTE PTR [eax],al
c000d890:	bc a7 00 c0 2f       	mov    esp,0x2fc000a7
c000d895:	00 00                	add    BYTE PTR [eax],al
c000d897:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000d89a:	08 85 02 47 0d 05    	or     BYTE PTR [ebp+0x50d4702],al
c000d8a0:	5c                   	pop    esp
c000d8a1:	0a c5                	or     al,ch
c000d8a3:	0c 04                	or     al,0x4
c000d8a5:	04 45                	add    al,0x45
c000d8a7:	0b 45 c5             	or     eax,DWORD PTR [ebp-0x3b]
c000d8aa:	0c 04                	or     al,0x4
c000d8ac:	04 00                	add    al,0x0
c000d8ae:	00 00                	add    BYTE PTR [eax],al
c000d8b0:	2c 00                	sub    al,0x0
c000d8b2:	00 00                	add    BYTE PTR [eax],al
c000d8b4:	34 15                	xor    al,0x15
c000d8b6:	00 00                	add    BYTE PTR [eax],al
c000d8b8:	ec                   	in     al,dx
c000d8b9:	a7                   	cmps   DWORD PTR ds:[esi],DWORD PTR es:[edi]
c000d8ba:	00 c0                	add    al,al
c000d8bc:	1a 00                	sbb    al,BYTE PTR [eax]
c000d8be:	00 00                	add    BYTE PTR [eax],al
c000d8c0:	41                   	inc    ecx
c000d8c1:	0e                   	push   cs
c000d8c2:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000d8c8:	43                   	inc    ebx
c000d8c9:	2e 04 04             	cs add al,0x4
c000d8cc:	05 00 00 00 2e       	add    eax,0x2e000000
c000d8d1:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c000d8d4:	0c 43                	or     al,0x43
c000d8d6:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000d8da:	00 41 c5             	add    BYTE PTR [ecx-0x3b],al
c000d8dd:	0c 04                	or     al,0x4
c000d8df:	04 1c                	add    al,0x1c
c000d8e1:	00 00                	add    BYTE PTR [eax],al
c000d8e3:	00 64 15 00          	add    BYTE PTR [ebp+edx*1+0x0],ah
c000d8e7:	00 06                	add    BYTE PTR [esi],al
c000d8e9:	a8 00                	test   al,0x0
c000d8eb:	c0 23 00             	shl    BYTE PTR [ebx],0x0
c000d8ee:	00 00                	add    BYTE PTR [eax],al
c000d8f0:	41                   	inc    ecx
c000d8f1:	0e                   	push   cs
c000d8f2:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000d8f8:	47                   	inc    edi
c000d8f9:	0c 04                	or     al,0x4
c000d8fb:	04 c5                	add    al,0xc5
c000d8fd:	00 00                	add    BYTE PTR [eax],al
c000d8ff:	00 50 00             	add    BYTE PTR [eax+0x0],dl
c000d902:	00 00                	add    BYTE PTR [eax],al
c000d904:	84 15 00 00 29 a8    	test   BYTE PTR ds:0xa8290000,dl
c000d90a:	00 c0                	add    al,al
c000d90c:	be 00 00 00 41       	mov    esi,0x41000000
c000d911:	0e                   	push   cs
c000d912:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000d918:	42                   	inc    edx
c000d919:	86 04 87             	xchg   BYTE PTR [edi+eax*4],al
c000d91c:	03 46 83             	add    eax,DWORD PTR [esi-0x7d]
c000d91f:	05 5c 2e 04 04       	add    eax,0x4042e5c
c000d924:	05 00 00 00 2e       	add    eax,0x2e000000
c000d929:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c000d92c:	0c 45                	or     al,0x45
c000d92e:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000d932:	00 02                	add    BYTE PTR [edx],al
c000d934:	4e                   	dec    esi
c000d935:	2e 04 04             	cs add al,0x4
c000d938:	02 00                	add    al,BYTE PTR [eax]
c000d93a:	00 00                	add    BYTE PTR [eax],al
c000d93c:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c000d940:	0c 41                	or     al,0x41
c000d942:	2e 10 4b 2e          	adc    BYTE PTR cs:[ebx+0x2e],cl
c000d946:	00 62 c3             	add    BYTE PTR [edx-0x3d],ah
c000d949:	41                   	inc    ecx
c000d94a:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c000d94e:	0c 04                	or     al,0x4
c000d950:	04 c5                	add    al,0xc5
c000d952:	00 00                	add    BYTE PTR [eax],al
c000d954:	3c 00                	cmp    al,0x0
c000d956:	00 00                	add    BYTE PTR [eax],al
c000d958:	d8 15 00 00 e7 a8    	fcom   DWORD PTR ds:0xa8e70000
c000d95e:	00 c0                	add    al,al
c000d960:	68 00 00 00 41       	push   0x41000000
c000d965:	0e                   	push   cs
c000d966:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000d96c:	46                   	inc    esi
c000d96d:	83 05 86 04 87 03 53 	add    DWORD PTR ds:0x3870486,0x53
c000d974:	2e 04 04             	cs add al,0x4
c000d977:	05 00 00 00 2e       	add    eax,0x2e000000
c000d97c:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c000d97f:	0c 45                	or     al,0x45
c000d981:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000d985:	00 74 c3 41          	add    BYTE PTR [ebx+eax*8+0x41],dh
c000d989:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c000d98d:	0c 04                	or     al,0x4
c000d98f:	04 c5                	add    al,0xc5
c000d991:	00 00                	add    BYTE PTR [eax],al
c000d993:	00 30                	add    BYTE PTR [eax],dh
c000d995:	00 00                	add    BYTE PTR [eax],al
c000d997:	00 18                	add    BYTE PTR [eax],bl
c000d999:	16                   	push   ss
c000d99a:	00 00                	add    BYTE PTR [eax],al
c000d99c:	50                   	push   eax
c000d99d:	a9 00 c0 6a 00       	test   eax,0x6ac000
c000d9a2:	00 00                	add    BYTE PTR [eax],al
c000d9a4:	41                   	inc    ecx
c000d9a5:	0e                   	push   cs
c000d9a6:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000d9ac:	46                   	inc    esi
c000d9ad:	2e 0c 83             	cs or  al,0x83
c000d9b0:	05 86 04 87 03       	add    eax,0x3870486
c000d9b5:	4d                   	dec    ebp
c000d9b6:	2e 10 4b 2e          	adc    BYTE PTR cs:[ebx+0x2e],cl
c000d9ba:	00 02                	add    BYTE PTR [edx],al
c000d9bc:	45                   	inc    ebp
c000d9bd:	c3                   	ret    
c000d9be:	41                   	inc    ecx
c000d9bf:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c000d9c3:	0c 04                	or     al,0x4
c000d9c5:	04 c5                	add    al,0xc5
c000d9c7:	00 58 00             	add    BYTE PTR [eax+0x0],bl
c000d9ca:	00 00                	add    BYTE PTR [eax],al
c000d9cc:	4c                   	dec    esp
c000d9cd:	16                   	push   ss
c000d9ce:	00 00                	add    BYTE PTR [eax],al
c000d9d0:	ba a9 00 c0 05       	mov    edx,0x5c000a9
c000d9d5:	01 00                	add    DWORD PTR [eax],eax
c000d9d7:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000d9da:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000d9e0:	46                   	inc    esi
c000d9e1:	83 05 86 04 87 03 53 	add    DWORD PTR ds:0x3870486,0x53
c000d9e8:	2e 0c 41             	cs or  al,0x41
c000d9eb:	2e 10 64 2e 00       	adc    BYTE PTR cs:[esi+ebp*1+0x0],ah
c000d9f0:	67 2e 04 04          	addr16 cs add al,0x4
c000d9f4:	05 00 00 00 2e       	add    eax,0x2e000000
c000d9f9:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c000d9fc:	0c 45                	or     al,0x45
c000d9fe:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000da02:	00 02                	add    BYTE PTR [edx],al
c000da04:	64 2e 0c 41          	fs cs or al,0x41
c000da08:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000da0c:	00 4a 2e             	add    BYTE PTR [edx+0x2e],cl
c000da0f:	0c 43                	or     al,0x43
c000da11:	2e 10 4b c3          	adc    BYTE PTR cs:[ebx-0x3d],cl
c000da15:	41                   	inc    ecx
c000da16:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c000da1a:	0c 04                	or     al,0x4
c000da1c:	04 c5                	add    al,0xc5
c000da1e:	41                   	inc    ecx
c000da1f:	13 03                	adc    eax,DWORD PTR [ebx]
c000da21:	2e 00 00             	add    BYTE PTR cs:[eax],al
c000da24:	58                   	pop    eax
c000da25:	00 00                	add    BYTE PTR [eax],al
c000da27:	00 a8 16 00 00 bf    	add    BYTE PTR [eax-0x40ffffea],ch
c000da2d:	aa                   	stos   BYTE PTR es:[edi],al
c000da2e:	00 c0                	add    al,al
c000da30:	01 01                	add    DWORD PTR [ecx],eax
c000da32:	00 00                	add    BYTE PTR [eax],al
c000da34:	41                   	inc    ecx
c000da35:	0e                   	push   cs
c000da36:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000da3c:	46                   	inc    esi
c000da3d:	83 05 86 04 87 03 69 	add    DWORD PTR ds:0x3870486,0x69
c000da44:	2e 04 04             	cs add al,0x4
c000da47:	05 00 00 00 2e       	add    eax,0x2e000000
c000da4c:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c000da4f:	0c 45                	or     al,0x45
c000da51:	2e 10 47 2e          	adc    BYTE PTR cs:[edi+0x2e],al
c000da55:	00 43 2e             	add    BYTE PTR [ebx+0x2e],al
c000da58:	0c 41                	or     al,0x41
c000da5a:	2e 10 64 2e 00       	adc    BYTE PTR cs:[esi+ebp*1+0x0],ah
c000da5f:	02 71 2e             	add    dh,BYTE PTR [ecx+0x2e]
c000da62:	0c 41                	or     al,0x41
c000da64:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000da68:	00 4a 2e             	add    BYTE PTR [edx+0x2e],cl
c000da6b:	0c 41                	or     al,0x41
c000da6d:	2e 10 4b c3          	adc    BYTE PTR cs:[ebx-0x3d],cl
c000da71:	41                   	inc    ecx
c000da72:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c000da76:	0c 04                	or     al,0x4
c000da78:	04 c5                	add    al,0xc5
c000da7a:	41                   	inc    ecx
c000da7b:	13 03                	adc    eax,DWORD PTR [ebx]
c000da7d:	2e 00 00             	add    BYTE PTR cs:[eax],al
c000da80:	1c 00                	sbb    al,0x0
c000da82:	00 00                	add    BYTE PTR [eax],al
c000da84:	04 17                	add    al,0x17
c000da86:	00 00                	add    BYTE PTR [eax],al
c000da88:	c0 ab 00 c0 14 00 00 	shr    BYTE PTR [ebx+0x14c000],0x0
c000da8f:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000da92:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000da98:	44                   	inc    esp
c000da99:	0c 04                	or     al,0x4
c000da9b:	04 c5                	add    al,0xc5
c000da9d:	00 00                	add    BYTE PTR [eax],al
c000da9f:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c000daa2:	00 00                	add    BYTE PTR [eax],al
c000daa4:	24 17                	and    al,0x17
c000daa6:	00 00                	add    BYTE PTR [eax],al
c000daa8:	d4 ab                	aam    0xab
c000daaa:	00 c0                	add    al,al
c000daac:	12 00                	adc    al,BYTE PTR [eax]
c000daae:	00 00                	add    BYTE PTR [eax],al
c000dab0:	41                   	inc    ecx
c000dab1:	0e                   	push   cs
c000dab2:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000dab8:	44                   	inc    esp
c000dab9:	0c 04                	or     al,0x4
c000dabb:	04 c5                	add    al,0xc5
c000dabd:	00 00                	add    BYTE PTR [eax],al
c000dabf:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c000dac2:	00 00                	add    BYTE PTR [eax],al
c000dac4:	44                   	inc    esp
c000dac5:	17                   	pop    ss
c000dac6:	00 00                	add    BYTE PTR [eax],al
c000dac8:	e8 ab 00 c0 1e       	call   dec0db78 <_kernel_end+0x1ebdf3ac>
c000dacd:	00 00                	add    BYTE PTR [eax],al
c000dacf:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000dad2:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000dad8:	5a                   	pop    edx
c000dad9:	0c 04                	or     al,0x4
c000dadb:	04 c5                	add    al,0xc5
c000dadd:	00 00                	add    BYTE PTR [eax],al
c000dadf:	00 28                	add    BYTE PTR [eax],ch
c000dae1:	00 00                	add    BYTE PTR [eax],al
c000dae3:	00 64 17 00          	add    BYTE PTR [edi+edx*1+0x0],ah
c000dae7:	00 06                	add    BYTE PTR [esi],al
c000dae9:	ac                   	lods   al,BYTE PTR ds:[esi]
c000daea:	00 c0                	add    al,al
c000daec:	29 00                	sub    DWORD PTR [eax],eax
c000daee:	00 00                	add    BYTE PTR [eax],al
c000daf0:	41                   	inc    ecx
c000daf1:	0e                   	push   cs
c000daf2:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000daf8:	41                   	inc    ecx
c000daf9:	86 03                	xchg   BYTE PTR [ebx],al
c000dafb:	44                   	inc    esp
c000dafc:	83 04 04 1a          	add    DWORD PTR [esp+eax*1],0x1a
c000db00:	00 00                	add    BYTE PTR [eax],al
c000db02:	00 c3                	add    bl,al
c000db04:	41                   	inc    ecx
c000db05:	c6 41 0c 04          	mov    BYTE PTR [ecx+0xc],0x4
c000db09:	04 c5                	add    al,0xc5
c000db0b:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c000db0e:	00 00                	add    BYTE PTR [eax],al
c000db10:	90                   	nop
c000db11:	17                   	pop    ss
c000db12:	00 00                	add    BYTE PTR [eax],al
c000db14:	2f                   	das    
c000db15:	ac                   	lods   al,BYTE PTR ds:[esi]
c000db16:	00 c0                	add    al,al
c000db18:	18 00                	sbb    BYTE PTR [eax],al
c000db1a:	00 00                	add    BYTE PTR [eax],al
c000db1c:	41                   	inc    ecx
c000db1d:	0e                   	push   cs
c000db1e:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000db24:	50                   	push   eax
c000db25:	0c 04                	or     al,0x4
c000db27:	04 c5                	add    al,0xc5
c000db29:	00 00                	add    BYTE PTR [eax],al
c000db2b:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c000db2e:	00 00                	add    BYTE PTR [eax],al
c000db30:	b0 17                	mov    al,0x17
c000db32:	00 00                	add    BYTE PTR [eax],al
c000db34:	47                   	inc    edi
c000db35:	ac                   	lods   al,BYTE PTR ds:[esi]
c000db36:	00 c0                	add    al,al
c000db38:	18 00                	sbb    BYTE PTR [eax],al
c000db3a:	00 00                	add    BYTE PTR [eax],al
c000db3c:	41                   	inc    ecx
c000db3d:	0e                   	push   cs
c000db3e:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000db44:	50                   	push   eax
c000db45:	0c 04                	or     al,0x4
c000db47:	04 c5                	add    al,0xc5
c000db49:	00 00                	add    BYTE PTR [eax],al
c000db4b:	00 20                	add    BYTE PTR [eax],ah
c000db4d:	00 00                	add    BYTE PTR [eax],al
c000db4f:	00 d0                	add    al,dl
c000db51:	17                   	pop    ss
c000db52:	00 00                	add    BYTE PTR [eax],al
c000db54:	5f                   	pop    edi
c000db55:	ac                   	lods   al,BYTE PTR ds:[esi]
c000db56:	00 c0                	add    al,al
c000db58:	27                   	daa    
c000db59:	00 00                	add    BYTE PTR [eax],al
c000db5b:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000db5e:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000db64:	42                   	inc    edx
c000db65:	83 03 5c             	add    DWORD PTR [ebx],0x5c
c000db68:	c3                   	ret    
c000db69:	41                   	inc    ecx
c000db6a:	0c 04                	or     al,0x4
c000db6c:	04 c5                	add    al,0xc5
c000db6e:	00 00                	add    BYTE PTR [eax],al
c000db70:	28 00                	sub    BYTE PTR [eax],al
c000db72:	00 00                	add    BYTE PTR [eax],al
c000db74:	f4                   	hlt    
c000db75:	17                   	pop    ss
c000db76:	00 00                	add    BYTE PTR [eax],al
c000db78:	86 ac 00 c0 1a 00 00 	xchg   BYTE PTR [eax+eax*1+0x1ac0],ch
c000db7f:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000db82:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000db88:	44                   	inc    esp
c000db89:	2e 0c 83             	cs or  al,0x83
c000db8c:	03 47 2e             	add    eax,DWORD PTR [edi+0x2e]
c000db8f:	10 4b c5             	adc    BYTE PTR [ebx-0x3b],cl
c000db92:	0c 04                	or     al,0x4
c000db94:	04 c3                	add    al,0xc3
c000db96:	41                   	inc    ecx
c000db97:	13 03                	adc    eax,DWORD PTR [ebx]
c000db99:	2e 00 00             	add    BYTE PTR cs:[eax],al
c000db9c:	1c 00                	sbb    al,0x0
c000db9e:	00 00                	add    BYTE PTR [eax],al
c000dba0:	20 18                	and    BYTE PTR [eax],bl
c000dba2:	00 00                	add    BYTE PTR [eax],al
c000dba4:	a0 ac 00 c0 27       	mov    al,ds:0x27c000ac
c000dba9:	00 00                	add    BYTE PTR [eax],al
c000dbab:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000dbae:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000dbb4:	63 0c 04             	arpl   WORD PTR [esp+eax*1],cx
c000dbb7:	04 c5                	add    al,0xc5
c000dbb9:	00 00                	add    BYTE PTR [eax],al
c000dbbb:	00 3c 00             	add    BYTE PTR [eax+eax*1],bh
c000dbbe:	00 00                	add    BYTE PTR [eax],al
c000dbc0:	40                   	inc    eax
c000dbc1:	18 00                	sbb    BYTE PTR [eax],al
c000dbc3:	00 c7                	add    bh,al
c000dbc5:	ac                   	lods   al,BYTE PTR ds:[esi]
c000dbc6:	00 c0                	add    al,al
c000dbc8:	38 00                	cmp    BYTE PTR [eax],al
c000dbca:	00 00                	add    BYTE PTR [eax],al
c000dbcc:	41                   	inc    ecx
c000dbcd:	0e                   	push   cs
c000dbce:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000dbd4:	46                   	inc    esi
c000dbd5:	83 05 86 04 87 03 4f 	add    DWORD PTR ds:0x3870486,0x4f
c000dbdc:	2e 04 04             	cs add al,0x4
c000dbdf:	01 00                	add    DWORD PTR [eax],eax
c000dbe1:	00 00                	add    BYTE PTR [eax],al
c000dbe3:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c000dbe7:	0c 41                	or     al,0x41
c000dbe9:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c000dbed:	00 53 c3             	add    BYTE PTR [ebx-0x3d],dl
c000dbf0:	41                   	inc    ecx
c000dbf1:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c000dbf5:	0c 04                	or     al,0x4
c000dbf7:	04 c5                	add    al,0xc5
c000dbf9:	00 00                	add    BYTE PTR [eax],al
c000dbfb:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c000dbfe:	00 00                	add    BYTE PTR [eax],al
c000dc00:	80 18 00             	sbb    BYTE PTR [eax],0x0
c000dc03:	00 ff                	add    bh,bh
c000dc05:	ac                   	lods   al,BYTE PTR ds:[esi]
c000dc06:	00 c0                	add    al,al
c000dc08:	1a 00                	sbb    al,BYTE PTR [eax]
c000dc0a:	00 00                	add    BYTE PTR [eax],al
c000dc0c:	41                   	inc    ecx
c000dc0d:	0e                   	push   cs
c000dc0e:	08 85 02 44 0d 05    	or     BYTE PTR [ebp+0x50d4402],al
c000dc14:	54                   	push   esp
c000dc15:	0c 04                	or     al,0x4
c000dc17:	04 c5                	add    al,0xc5
c000dc19:	00 00                	add    BYTE PTR [eax],al
c000dc1b:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c000dc1e:	00 00                	add    BYTE PTR [eax],al
c000dc20:	a0 18 00 00 19       	mov    al,ds:0x19000018
c000dc25:	ad                   	lods   eax,DWORD PTR ds:[esi]
c000dc26:	00 c0                	add    al,al
c000dc28:	14 00                	adc    al,0x0
c000dc2a:	00 00                	add    BYTE PTR [eax],al
c000dc2c:	41                   	inc    ecx
c000dc2d:	0e                   	push   cs
c000dc2e:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000dc34:	44                   	inc    esp
c000dc35:	0c 04                	or     al,0x4
c000dc37:	04 c5                	add    al,0xc5
c000dc39:	00 00                	add    BYTE PTR [eax],al
c000dc3b:	00 28                	add    BYTE PTR [eax],ch
c000dc3d:	00 00                	add    BYTE PTR [eax],al
c000dc3f:	00 c0                	add    al,al
c000dc41:	18 00                	sbb    BYTE PTR [eax],al
c000dc43:	00 30                	add    BYTE PTR [eax],dh
c000dc45:	ad                   	lods   eax,DWORD PTR ds:[esi]
c000dc46:	00 c0                	add    al,al
c000dc48:	5f                   	pop    edi
c000dc49:	00 00                	add    BYTE PTR [eax],al
c000dc4b:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000dc4e:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000dc54:	45                   	inc    ebp
c000dc55:	86 04 87             	xchg   BYTE PTR [edi+eax*4],al
c000dc58:	03 44 83 05          	add    eax,DWORD PTR [ebx+eax*4+0x5]
c000dc5c:	02 4f c3             	add    cl,BYTE PTR [edi-0x3d]
c000dc5f:	41                   	inc    ecx
c000dc60:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c000dc64:	0c 04                	or     al,0x4
c000dc66:	04 c5                	add    al,0xc5
c000dc68:	28 00                	sub    BYTE PTR [eax],al
c000dc6a:	00 00                	add    BYTE PTR [eax],al
c000dc6c:	ec                   	in     al,dx
c000dc6d:	18 00                	sbb    BYTE PTR [eax],al
c000dc6f:	00 8f ad 00 c0 44    	add    BYTE PTR [edi+0x44c000ad],cl
c000dc75:	00 00                	add    BYTE PTR [eax],al
c000dc77:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000dc7a:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000dc80:	44                   	inc    esp
c000dc81:	86 03                	xchg   BYTE PTR [ebx],al
c000dc83:	47                   	inc    edi
c000dc84:	83 04 04 33          	add    DWORD PTR [esp+eax*1],0x33
c000dc88:	00 00                	add    BYTE PTR [eax],al
c000dc8a:	00 c3                	add    bl,al
c000dc8c:	41                   	inc    ecx
c000dc8d:	c6 41 0c 04          	mov    BYTE PTR [ecx+0xc],0x4
c000dc91:	04 c5                	add    al,0xc5
c000dc93:	00 20                	add    BYTE PTR [eax],ah
c000dc95:	00 00                	add    BYTE PTR [eax],al
c000dc97:	00 18                	add    BYTE PTR [eax],bl
c000dc99:	19 00                	sbb    DWORD PTR [eax],eax
c000dc9b:	00 d3                	add    bl,dl
c000dc9d:	ad                   	lods   eax,DWORD PTR ds:[esi]
c000dc9e:	00 c0                	add    al,al
c000dca0:	3c 00                	cmp    al,0x0
c000dca2:	00 00                	add    BYTE PTR [eax],al
c000dca4:	41                   	inc    ecx
c000dca5:	0e                   	push   cs
c000dca6:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000dcac:	41                   	inc    ecx
c000dcad:	83 03 76             	add    DWORD PTR [ebx],0x76
c000dcb0:	c3                   	ret    
c000dcb1:	41                   	inc    ecx
c000dcb2:	0c 04                	or     al,0x4
c000dcb4:	04 c5                	add    al,0xc5
c000dcb6:	00 00                	add    BYTE PTR [eax],al
c000dcb8:	20 00                	and    BYTE PTR [eax],al
c000dcba:	00 00                	add    BYTE PTR [eax],al
c000dcbc:	3c 19                	cmp    al,0x19
c000dcbe:	00 00                	add    BYTE PTR [eax],al
c000dcc0:	0f ae 00             	fxsave [eax]
c000dcc3:	c0 2e 00             	shr    BYTE PTR [esi],0x0
c000dcc6:	00 00                	add    BYTE PTR [eax],al
c000dcc8:	41                   	inc    ecx
c000dcc9:	0e                   	push   cs
c000dcca:	08 85 02 47 0d 05    	or     BYTE PTR [ebp+0x50d4702],al
c000dcd0:	46                   	inc    esi
c000dcd1:	83 03 5e             	add    DWORD PTR [ebx],0x5e
c000dcd4:	c3                   	ret    
c000dcd5:	41                   	inc    ecx
c000dcd6:	0c 04                	or     al,0x4
c000dcd8:	04 c5                	add    al,0xc5
c000dcda:	00 00                	add    BYTE PTR [eax],al
c000dcdc:	1c 00                	sbb    al,0x0
c000dcde:	00 00                	add    BYTE PTR [eax],al
c000dce0:	60                   	pusha  
c000dce1:	19 00                	sbb    DWORD PTR [eax],eax
c000dce3:	00 3d ae 00 c0 27    	add    BYTE PTR ds:0x27c000ae,bh
c000dce9:	00 00                	add    BYTE PTR [eax],al
c000dceb:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000dcee:	08 85 02 47 0d 05    	or     BYTE PTR [ebp+0x50d4702],al
c000dcf4:	5e                   	pop    esi
c000dcf5:	0c 04                	or     al,0x4
c000dcf7:	04 c5                	add    al,0xc5
c000dcf9:	00 00                	add    BYTE PTR [eax],al
c000dcfb:	00 2c 00             	add    BYTE PTR [eax+eax*1],ch
c000dcfe:	00 00                	add    BYTE PTR [eax],al
c000dd00:	80 19 00             	sbb    BYTE PTR [ecx],0x0
c000dd03:	00 64 ae 00          	add    BYTE PTR [esi+ebp*4+0x0],ah
c000dd07:	c0 a1 00 00 00 41 0e 	shl    BYTE PTR [ecx+0x41000000],0xe
c000dd0e:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000dd14:	42                   	inc    edx
c000dd15:	83 03 02             	add    DWORD PTR [ebx],0x2
c000dd18:	92                   	xchg   edx,eax
c000dd19:	0a c3                	or     al,bl
c000dd1b:	41                   	inc    ecx
c000dd1c:	0c 04                	or     al,0x4
c000dd1e:	04 c5                	add    al,0xc5
c000dd20:	45                   	inc    ebp
c000dd21:	0b 42 c3             	or     eax,DWORD PTR [edx-0x3d]
c000dd24:	41                   	inc    ecx
c000dd25:	0c 04                	or     al,0x4
c000dd27:	04 c5                	add    al,0xc5
c000dd29:	00 00                	add    BYTE PTR [eax],al
c000dd2b:	00 3c 00             	add    BYTE PTR [eax+eax*1],bh
c000dd2e:	00 00                	add    BYTE PTR [eax],al
c000dd30:	b0 19                	mov    al,0x19
c000dd32:	00 00                	add    BYTE PTR [eax],al
c000dd34:	05 af 00 c0 28       	add    eax,0x28c000af
c000dd39:	00 00                	add    BYTE PTR [eax],al
c000dd3b:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000dd3e:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000dd44:	41                   	inc    ecx
c000dd45:	86 03                	xchg   BYTE PTR [ebx],al
c000dd47:	45                   	inc    ebp
c000dd48:	83 04 04 0a          	add    DWORD PTR [esp+eax*1],0xa
c000dd4c:	00 00                	add    BYTE PTR [eax],al
c000dd4e:	00 2e                	add    BYTE PTR [esi],ch
c000dd50:	04 04                	add    al,0x4
c000dd52:	01 00                	add    DWORD PTR [eax],eax
c000dd54:	00 00                	add    BYTE PTR [eax],al
c000dd56:	2e 08 46 2e          	or     BYTE PTR cs:[esi+0x2e],al
c000dd5a:	04 04                	add    al,0x4
c000dd5c:	01 00                	add    DWORD PTR [eax],eax
c000dd5e:	00 00                	add    BYTE PTR [eax],al
c000dd60:	2e 00 4a c3          	add    BYTE PTR cs:[edx-0x3d],cl
c000dd64:	41                   	inc    ecx
c000dd65:	c6 41 0c 04          	mov    BYTE PTR [ecx+0xc],0x4
c000dd69:	04 c5                	add    al,0xc5
c000dd6b:	00 38                	add    BYTE PTR [eax],bh
c000dd6d:	00 00                	add    BYTE PTR [eax],al
c000dd6f:	00 f0                	add    al,dh
c000dd71:	19 00                	sbb    DWORD PTR [eax],eax
c000dd73:	00 2d af 00 c0 3a    	add    BYTE PTR ds:0x3ac000af,ch
c000dd79:	00 00                	add    BYTE PTR [eax],al
c000dd7b:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000dd7e:	08 85 02 44 0d 05    	or     BYTE PTR [ebp+0x50d4402],al
c000dd84:	47                   	inc    edi
c000dd85:	83 04 87 03          	add    DWORD PTR [edi+eax*4],0x3
c000dd89:	51                   	push   ecx
c000dd8a:	2e 04 04             	cs add al,0x4
c000dd8d:	04 00                	add    al,0x0
c000dd8f:	00 00                	add    BYTE PTR [eax],al
c000dd91:	2e 08 43 2e          	or     BYTE PTR cs:[ebx+0x2e],al
c000dd95:	0c 46                	or     al,0x46
c000dd97:	2e 10 41 2e          	adc    BYTE PTR cs:[ecx+0x2e],al
c000dd9b:	14 48                	adc    al,0x48
c000dd9d:	2e 00 44 c3 41       	add    BYTE PTR cs:[ebx+eax*8+0x41],al
c000dda2:	c7 41 0c 04 04 c5 38 	mov    DWORD PTR [ecx+0xc],0x38c50404
c000dda9:	00 00                	add    BYTE PTR [eax],al
c000ddab:	00 2c 1a             	add    BYTE PTR [edx+ebx*1],ch
c000ddae:	00 00                	add    BYTE PTR [eax],al
c000ddb0:	67 af                	scas   eax,DWORD PTR es:[di]
c000ddb2:	00 c0                	add    al,al
c000ddb4:	3a 00                	cmp    al,BYTE PTR [eax]
c000ddb6:	00 00                	add    BYTE PTR [eax],al
c000ddb8:	41                   	inc    ecx
c000ddb9:	0e                   	push   cs
c000ddba:	08 85 02 44 0d 05    	or     BYTE PTR [ebp+0x50d4402],al
c000ddc0:	47                   	inc    edi
c000ddc1:	83 04 87 03          	add    DWORD PTR [edi+eax*4],0x3
c000ddc5:	51                   	push   ecx
c000ddc6:	2e 04 04             	cs add al,0x4
c000ddc9:	04 00                	add    al,0x0
c000ddcb:	00 00                	add    BYTE PTR [eax],al
c000ddcd:	2e 08 43 2e          	or     BYTE PTR cs:[ebx+0x2e],al
c000ddd1:	0c 46                	or     al,0x46
c000ddd3:	2e 10 41 2e          	adc    BYTE PTR cs:[ecx+0x2e],al
c000ddd7:	14 48                	adc    al,0x48
c000ddd9:	2e 00 44 c3 41       	add    BYTE PTR cs:[ebx+eax*8+0x41],al
c000ddde:	c7 41 0c 04 04 c5 38 	mov    DWORD PTR [ecx+0xc],0x38c50404
c000dde5:	00 00                	add    BYTE PTR [eax],al
c000dde7:	00 68 1a             	add    BYTE PTR [eax+0x1a],ch
c000ddea:	00 00                	add    BYTE PTR [eax],al
c000ddec:	a4                   	movs   BYTE PTR es:[edi],BYTE PTR ds:[esi]
c000dded:	af                   	scas   eax,DWORD PTR es:[edi]
c000ddee:	00 c0                	add    al,al
c000ddf0:	47                   	inc    edi
c000ddf1:	00 00                	add    BYTE PTR [eax],al
c000ddf3:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000ddf6:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000ddfc:	45                   	inc    ebp
c000ddfd:	83 04 86 03          	add    DWORD PTR [esi+eax*4],0x3
c000de01:	52                   	push   edx
c000de02:	2e 04 04             	cs add al,0x4
c000de05:	05 00 00 00 2e       	add    eax,0x2e000000
c000de0a:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c000de0d:	0c 45                	or     al,0x45
c000de0f:	2e 10 4e 2e          	adc    BYTE PTR cs:[esi+0x2e],cl
c000de13:	00 50 c3             	add    BYTE PTR [eax-0x3d],dl
c000de16:	41                   	inc    ecx
c000de17:	c6 41 0c 04          	mov    BYTE PTR [ecx+0xc],0x4
c000de1b:	04 c5                	add    al,0xc5
c000de1d:	00 00                	add    BYTE PTR [eax],al
c000de1f:	00 3c 00             	add    BYTE PTR [eax+eax*1],bh
c000de22:	00 00                	add    BYTE PTR [eax],al
c000de24:	a4                   	movs   BYTE PTR es:[edi],BYTE PTR ds:[esi]
c000de25:	1a 00                	sbb    al,BYTE PTR [eax]
c000de27:	00 eb                	add    bl,ch
c000de29:	af                   	scas   eax,DWORD PTR es:[edi]
c000de2a:	00 c0                	add    al,al
c000de2c:	4a                   	dec    edx
c000de2d:	00 00                	add    BYTE PTR [eax],al
c000de2f:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000de32:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000de38:	46                   	inc    esi
c000de39:	83 05 86 04 87 03 56 	add    DWORD PTR ds:0x3870486,0x56
c000de40:	2e 04 04             	cs add al,0x4
c000de43:	05 00 00 00 2e       	add    eax,0x2e000000
c000de48:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c000de4b:	0c 45                	or     al,0x45
c000de4d:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000de51:	00 53 c3             	add    BYTE PTR [ebx-0x3d],dl
c000de54:	41                   	inc    ecx
c000de55:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c000de59:	0c 04                	or     al,0x4
c000de5b:	04 c5                	add    al,0xc5
c000de5d:	00 00                	add    BYTE PTR [eax],al
c000de5f:	00 3c 00             	add    BYTE PTR [eax+eax*1],bh
c000de62:	00 00                	add    BYTE PTR [eax],al
c000de64:	e4 1a                	in     al,0x1a
c000de66:	00 00                	add    BYTE PTR [eax],al
c000de68:	35 b0 00 c0 42       	xor    eax,0x42c000b0
c000de6d:	00 00                	add    BYTE PTR [eax],al
c000de6f:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000de72:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000de78:	41                   	inc    ecx
c000de79:	86 03                	xchg   BYTE PTR [ebx],al
c000de7b:	44                   	inc    esp
c000de7c:	83 04 04 10          	add    DWORD PTR [esp+eax*1],0x10
c000de80:	00 00                	add    BYTE PTR [eax],al
c000de82:	00 2e                	add    BYTE PTR [esi],ch
c000de84:	04 04                	add    al,0x4
c000de86:	05 00 00 00 2e       	add    eax,0x2e000000
c000de8b:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c000de8e:	0c 45                	or     al,0x45
c000de90:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000de94:	00 53 c3             	add    BYTE PTR [ebx-0x3d],dl
c000de97:	41                   	inc    ecx
c000de98:	c6 41 0c 04          	mov    BYTE PTR [ecx+0xc],0x4
c000de9c:	04 c5                	add    al,0xc5
c000de9e:	00 00                	add    BYTE PTR [eax],al
c000dea0:	20 00                	and    BYTE PTR [eax],al
c000dea2:	00 00                	add    BYTE PTR [eax],al
c000dea4:	24 1b                	and    al,0x1b
c000dea6:	00 00                	add    BYTE PTR [eax],al
c000dea8:	77 b0                	ja     c000de5a <_edata+0x1ada>
c000deaa:	00 c0                	add    al,al
c000deac:	1a 00                	sbb    al,BYTE PTR [eax]
c000deae:	00 00                	add    BYTE PTR [eax],al
c000deb0:	41                   	inc    ecx
c000deb1:	0e                   	push   cs
c000deb2:	08 85 02 44 0d 05    	or     BYTE PTR [ebp+0x50d4402],al
c000deb8:	44                   	inc    esp
c000deb9:	83 03 4f             	add    DWORD PTR [ebx],0x4f
c000debc:	c3                   	ret    
c000debd:	41                   	inc    ecx
c000debe:	0c 04                	or     al,0x4
c000dec0:	04 c5                	add    al,0xc5
c000dec2:	00 00                	add    BYTE PTR [eax],al
c000dec4:	28 00                	sub    BYTE PTR [eax],al
c000dec6:	00 00                	add    BYTE PTR [eax],al
c000dec8:	48                   	dec    eax
c000dec9:	1b 00                	sbb    eax,DWORD PTR [eax]
c000decb:	00 94 b0 00 c0 4d 00 	add    BYTE PTR [eax+esi*4+0x4dc000],dl
c000ded2:	00 00                	add    BYTE PTR [eax],al
c000ded4:	41                   	inc    ecx
c000ded5:	0e                   	push   cs
c000ded6:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000dedc:	49                   	dec    ecx
c000dedd:	83 05 86 04 87 03 7d 	add    DWORD PTR ds:0x3870486,0x7d
c000dee4:	c3                   	ret    
c000dee5:	41                   	inc    ecx
c000dee6:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c000deea:	0c 04                	or     al,0x4
c000deec:	04 c5                	add    al,0xc5
c000deee:	00 00                	add    BYTE PTR [eax],al
c000def0:	1c 00                	sbb    al,0x0
c000def2:	00 00                	add    BYTE PTR [eax],al
c000def4:	74 1b                	je     c000df11 <_edata+0x1b91>
c000def6:	00 00                	add    BYTE PTR [eax],al
c000def8:	e1 b0                	loope  c000deaa <_edata+0x1b2a>
c000defa:	00 c0                	add    al,al
c000defc:	25 00 00 00 41       	and    eax,0x41000000
c000df01:	0e                   	push   cs
c000df02:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000df08:	61                   	popa   
c000df09:	0c 04                	or     al,0x4
c000df0b:	04 c5                	add    al,0xc5
c000df0d:	00 00                	add    BYTE PTR [eax],al
c000df0f:	00 a0 00 00 00 94    	add    BYTE PTR [eax-0x6c000000],ah
c000df15:	1b 00                	sbb    eax,DWORD PTR [eax]
c000df17:	00 06                	add    BYTE PTR [esi],al
c000df19:	b1 00                	mov    cl,0x0
c000df1b:	c0 f8 00             	sar    al,0x0
c000df1e:	00 00                	add    BYTE PTR [eax],al
c000df20:	41                   	inc    ecx
c000df21:	0e                   	push   cs
c000df22:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000df28:	41                   	inc    ecx
c000df29:	83 03 7e             	add    DWORD PTR [ebx],0x7e
c000df2c:	2e 04 04             	cs add al,0x4
c000df2f:	07                   	pop    es
c000df30:	00 00                	add    BYTE PTR [eax],al
c000df32:	00 2e                	add    BYTE PTR [esi],ch
c000df34:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c000df37:	0c 42                	or     al,0x42
c000df39:	2e 10 45 2e          	adc    BYTE PTR cs:[ebp+0x2e],al
c000df3d:	14 41                	adc    al,0x41
c000df3f:	2e 18 51 2e          	sbb    BYTE PTR cs:[ecx+0x2e],dl
c000df43:	1c 48                	sbb    al,0x48
c000df45:	2e 20 41 2e          	and    BYTE PTR cs:[ecx+0x2e],al
c000df49:	24 42                	and    al,0x42
c000df4b:	2e 28 45 2e          	sub    BYTE PTR cs:[ebp+0x2e],al
c000df4f:	2c 41                	sub    al,0x41
c000df51:	2e 30 4d 2e          	xor    BYTE PTR cs:[ebp+0x2e],cl
c000df55:	00 47 2e             	add    BYTE PTR [edi+0x2e],al
c000df58:	04 04                	add    al,0x4
c000df5a:	02 00                	add    al,BYTE PTR [eax]
c000df5c:	00 00                	add    BYTE PTR [eax],al
c000df5e:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c000df62:	0c 42                	or     al,0x42
c000df64:	2e 10 45 2e          	adc    BYTE PTR cs:[ebp+0x2e],al
c000df68:	14 41                	adc    al,0x41
c000df6a:	2e 18 51 2e          	sbb    BYTE PTR cs:[ecx+0x2e],dl
c000df6e:	1c 42                	sbb    al,0x42
c000df70:	2e 20 41 2e          	and    BYTE PTR cs:[ecx+0x2e],al
c000df74:	24 42                	and    al,0x42
c000df76:	2e 28 45 2e          	sub    BYTE PTR cs:[ebp+0x2e],al
c000df7a:	2c 41                	sub    al,0x41
c000df7c:	2e 30 4d 2e          	xor    BYTE PTR cs:[ebp+0x2e],cl
c000df80:	00 47 2e             	add    BYTE PTR [edi+0x2e],al
c000df83:	04 04                	add    al,0x4
c000df85:	02 00                	add    al,BYTE PTR [eax]
c000df87:	00 00                	add    BYTE PTR [eax],al
c000df89:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c000df8d:	0c 42                	or     al,0x42
c000df8f:	2e 10 45 2e          	adc    BYTE PTR cs:[ebp+0x2e],al
c000df93:	14 41                	adc    al,0x41
c000df95:	2e 18 51 2e          	sbb    BYTE PTR cs:[ecx+0x2e],dl
c000df99:	1c 42                	sbb    al,0x42
c000df9b:	2e 20 41 2e          	and    BYTE PTR cs:[ecx+0x2e],al
c000df9f:	24 42                	and    al,0x42
c000dfa1:	2e 28 45 2e          	sub    BYTE PTR cs:[ebp+0x2e],al
c000dfa5:	2c 41                	sub    al,0x41
c000dfa7:	2e 30 48 2e          	xor    BYTE PTR cs:[eax+0x2e],cl
c000dfab:	00 44 c5 0c          	add    BYTE PTR [ebp+eax*8+0xc],al
c000dfaf:	04 04                	add    al,0x4
c000dfb1:	c3                   	ret    
c000dfb2:	00 00                	add    BYTE PTR [eax],al
c000dfb4:	2c 00                	sub    al,0x0
c000dfb6:	00 00                	add    BYTE PTR [eax],al
c000dfb8:	38 1c 00             	cmp    BYTE PTR [eax+eax*1],bl
c000dfbb:	00 fe                	add    dh,bh
c000dfbd:	b1 00                	mov    cl,0x0
c000dfbf:	c0 84 00 00 00 41 0e 	rol    BYTE PTR [eax+eax*1+0xe410000],0x8
c000dfc6:	08 
c000dfc7:	85 02                	test   DWORD PTR [edx],eax
c000dfc9:	42                   	inc    edx
c000dfca:	0d 05 41 87 03       	or     eax,0x3874105
c000dfcf:	49                   	dec    ecx
c000dfd0:	83 05 86 04 04 73 00 	add    DWORD PTR ds:0x73040486,0x0
c000dfd7:	00 00                	add    BYTE PTR [eax],al
c000dfd9:	c3                   	ret    
c000dfda:	41                   	inc    ecx
c000dfdb:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c000dfdf:	0c 04                	or     al,0x4
c000dfe1:	04 c5                	add    al,0xc5
c000dfe3:	00 44 00 00          	add    BYTE PTR [eax+eax*1+0x0],al
c000dfe7:	00 68 1c             	add    BYTE PTR [eax+0x1c],ch
c000dfea:	00 00                	add    BYTE PTR [eax],al
c000dfec:	82                   	(bad)  
c000dfed:	b2 00                	mov    dl,0x0
c000dfef:	c0                   	(bad)  
c000dff0:	37                   	aaa    
c000dff1:	00 00                	add    BYTE PTR [eax],al
c000dff3:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000dff6:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000dffc:	41                   	inc    ecx
c000dffd:	87 03                	xchg   DWORD PTR [ebx],eax
c000dfff:	44                   	inc    esp
c000e000:	86 04 04             	xchg   BYTE PTR [esp+eax*1],al
c000e003:	04 00                	add    al,0x0
c000e005:	00 00                	add    BYTE PTR [eax],al
c000e007:	83 05 4a 2e 04 04 01 	add    DWORD PTR ds:0x4042e4a,0x1
c000e00e:	00 00                	add    BYTE PTR [eax],al
c000e010:	00 2e                	add    BYTE PTR [esi],ch
c000e012:	08 43 2e             	or     BYTE PTR [ebx+0x2e],al
c000e015:	0c 41                	or     al,0x41
c000e017:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c000e01b:	14 48                	adc    al,0x48
c000e01d:	2e 00 4a c3          	add    BYTE PTR cs:[edx-0x3d],cl
c000e021:	41                   	inc    ecx
c000e022:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c000e026:	0c 04                	or     al,0x4
c000e028:	04 c5                	add    al,0xc5
	...

Disassembly of section .rodata:

c000e02c <_rodata>:
c000e02c:	5b                   	pop    ebx
c000e02d:	55                   	push   ebp
c000e02e:	73 65                	jae    c000e095 <_rodata+0x69>
c000e030:	72 5d                	jb     c000e08f <_rodata+0x63>
c000e032:	3a 00                	cmp    al,BYTE PTR [eax]
c000e034:	0a 50 65             	or     dl,BYTE PTR [eax+0x65]
c000e037:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000e038:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c000e03b:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c000e040:	65 6c                	gs ins BYTE PTR es:[edi],dx
c000e042:	20 28                	and    BYTE PTR [eax],ch
c000e044:	50                   	push   eax
c000e045:	4b                   	dec    ebx
c000e046:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000e047:	29 20                	sub    DWORD PTR [eax],esp
c000e049:	76 65                	jbe    c000e0b0 <_rodata+0x84>
c000e04b:	72 73                	jb     c000e0c0 <_rodata+0x94>
c000e04d:	69 6f 6e 20 30 2e 30 	imul   ebp,DWORD PTR [edi+0x6e],0x302e3020
c000e054:	2e 30 20             	xor    BYTE PTR cs:[eax],ah
c000e057:	74 65                	je     c000e0be <_rodata+0x92>
c000e059:	73 74                	jae    c000e0cf <PKn_Version+0x3>
c000e05b:	0a 00                	or     al,BYTE PTR [eax]
c000e05d:	43                   	inc    ebx
c000e05e:	50                   	push   eax
c000e05f:	55                   	push   ebp
c000e060:	20 20                	and    BYTE PTR [eax],ah
c000e062:	20 20                	and    BYTE PTR [eax],ah
c000e064:	3a 00                	cmp    al,BYTE PTR [eax]
c000e066:	4d                   	dec    ebp
c000e067:	65 6d                	gs ins DWORD PTR es:[edi],dx
c000e069:	6f                   	outs   dx,DWORD PTR ds:[esi]
c000e06a:	72 79                	jb     c000e0e5 <PKn_Version+0x19>
c000e06c:	20 3a                	and    BYTE PTR [edx],bh
c000e06e:	00 4d 42             	add    BYTE PTR [ebp+0x42],cl
c000e071:	20 28                	and    BYTE PTR [eax],ch
c000e073:	20 00                	and    BYTE PTR [eax],al
c000e075:	4b                   	dec    ebx
c000e076:	42                   	inc    edx
c000e077:	20 29                	and    BYTE PTR [ecx],ch
c000e079:	20 00                	and    BYTE PTR [eax],al
c000e07b:	44                   	inc    esp
c000e07c:	69 73 6b 20 20 20 3a 	imul   esi,DWORD PTR [ebx+0x6b],0x3a202020
c000e083:	00 50 65             	add    BYTE PTR [eax+0x65],dl
c000e086:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000e087:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c000e08a:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c000e08f:	65 6c                	gs ins BYTE PTR es:[edi],dx
c000e091:	20 28                	and    BYTE PTR [eax],ch
c000e093:	50                   	push   eax
c000e094:	4b                   	dec    ebx
c000e095:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000e096:	29 20                	sub    DWORD PTR [eax],esp
c000e098:	76 65                	jbe    c000e0ff <PKn_Version+0x33>
c000e09a:	72 73                	jb     c000e10f <PKn_Version+0x43>
c000e09c:	69 6f 6e 20 30 2e 30 	imul   ebp,DWORD PTR [edi+0x6e],0x302e3020
c000e0a3:	2e 30 20             	xor    BYTE PTR cs:[eax],ah
c000e0a6:	74 65                	je     c000e10d <PKn_Version+0x41>
c000e0a8:	73 74                	jae    c000e11e <PKn_Version+0x52>
c000e0aa:	00 61 72             	add    BYTE PTR [ecx+0x72],ah
c000e0ad:	67 5f                	addr16 pop edi
c000e0af:	41                   	inc    ecx
c000e0b0:	20 00                	and    BYTE PTR [eax],al
c000e0b2:	6b 5f 61 00          	imul   ebx,DWORD PTR [edi+0x61],0x0
c000e0b6:	61                   	popa   
c000e0b7:	72 67                	jb     c000e120 <PKn_Version+0x54>
c000e0b9:	5f                   	pop    edi
c000e0ba:	42                   	inc    edx
c000e0bb:	20 00                	and    BYTE PTR [eax],al
c000e0bd:	6b 5f 62 00          	imul   ebx,DWORD PTR [edi+0x62],0x0
c000e0c1:	75 73                	jne    c000e136 <PKn_Version+0x6a>
c000e0c3:	65 72 5f             	gs jb  c000e125 <PKn_Version+0x59>
c000e0c6:	70 72                	jo     c000e13a <PKn_Version+0x6e>
c000e0c8:	6f                   	outs   dx,DWORD PTR ds:[esi]
c000e0c9:	67 00 00             	add    BYTE PTR [bx+si],al

c000e0cc <PKn_Version>:
c000e0cc:	50                   	push   eax
c000e0cd:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c000e0cf:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c000e0d2:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c000e0d7:	65 6c                	gs ins BYTE PTR es:[edi],dx
c000e0d9:	20 28                	and    BYTE PTR [eax],ch
c000e0db:	50                   	push   eax
c000e0dc:	4b                   	dec    ebx
c000e0dd:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000e0de:	29 20                	sub    DWORD PTR [eax],esp
c000e0e0:	76 65                	jbe    c000e147 <PKn_Version+0x7b>
c000e0e2:	72 73                	jb     c000e157 <PKn_Version+0x8b>
c000e0e4:	69 6f 6e 20 30 2e 30 	imul   ebp,DWORD PTR [edi+0x6e],0x302e3020
c000e0eb:	2e 30 20             	xor    BYTE PTR cs:[eax],ah
c000e0ee:	74 65                	je     c000e155 <PKn_Version+0x89>
c000e0f0:	73 74                	jae    c000e166 <PKn_Version+0x9a>
c000e0f2:	00 00                	add    BYTE PTR [eax],al
c000e0f4:	20 45 72             	and    BYTE PTR [ebp+0x72],al
c000e0f7:	72 6f                	jb     c000e168 <PKn_Version+0x9c>
c000e0f9:	72 0a                	jb     c000e105 <PKn_Version+0x39>
c000e0fb:	00 20                	add    BYTE PTR [eax],ah
c000e0fd:	46                   	inc    esi
c000e0fe:	69 6c 65 3a 20 20 20 	imul   ebp,DWORD PTR [ebp+eiz*2+0x3a],0x20202020
c000e105:	20 
c000e106:	20 20                	and    BYTE PTR [eax],ah
c000e108:	20 20                	and    BYTE PTR [eax],ah
c000e10a:	00 20                	add    BYTE PTR [eax],ah
c000e10c:	49                   	dec    ecx
c000e10d:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000e10e:	20 66 75             	and    BYTE PTR [esi+0x75],ah
c000e111:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000e112:	63 74 69 6f          	arpl   WORD PTR [ecx+ebp*2+0x6f],si
c000e116:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000e117:	3a 20                	cmp    ah,BYTE PTR [eax]
c000e119:	00 20                	add    BYTE PTR [eax],ah
c000e11b:	4c                   	dec    esp
c000e11c:	69 6e 65 3a 20 20 20 	imul   ebp,DWORD PTR [esi+0x65],0x2020203a
c000e123:	20 20                	and    BYTE PTR [eax],ah
c000e125:	20 20                	and    BYTE PTR [eax],ah
c000e127:	20 00                	and    BYTE PTR [eax],al
c000e129:	20 43 6f             	and    BYTE PTR [ebx+0x6f],al
c000e12c:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000e12d:	64 69 74 69 6f 6e 3a 	imul   esi,DWORD PTR fs:[ecx+ebp*2+0x6f],0x20203a6e
c000e134:	20 20 
c000e136:	20 00                	and    BYTE PTR [eax],al
c000e138:	50                   	push   eax
c000e139:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c000e13b:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c000e13e:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c000e143:	65 6c                	gs ins BYTE PTR es:[edi],dx
c000e145:	20 28                	and    BYTE PTR [eax],ch
c000e147:	50                   	push   eax
c000e148:	4b                   	dec    ebx
c000e149:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000e14a:	29 20                	sub    DWORD PTR [eax],esp
c000e14c:	76 65                	jbe    c000e1b3 <PKn_Version+0xe7>
c000e14e:	72 73                	jb     c000e1c3 <PKn_Version+0xf7>
c000e150:	69 6f 6e 20 30 2e 30 	imul   ebp,DWORD PTR [edi+0x6e],0x302e3020
c000e157:	2e 30 20             	xor    BYTE PTR cs:[eax],ah
c000e15a:	74 65                	je     c000e1c1 <PKn_Version+0xf5>
c000e15c:	73 74                	jae    c000e1d2 <PKn_Version+0x106>
c000e15e:	00 00                	add    BYTE PTR [eax],al
c000e160:	5b                   	pop    ebx
c000e161:	69 6e 69 6e 5d 3a 61 	imul   ebp,DWORD PTR [esi+0x69],0x613a5d6e
c000e168:	6c                   	ins    BYTE PTR es:[edi],dx
c000e169:	6c                   	ins    BYTE PTR es:[edi],dx
c000e16a:	0a 00                	or     al,BYTE PTR [eax]
c000e16c:	5b                   	pop    ebx
c000e16d:	69 6e 69 74 5d 3a 69 	imul   ebp,DWORD PTR [esi+0x69],0x693a5d74
c000e174:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000e175:	69 74 20 64 6f 77 6e 	imul   esi,DWORD PTR [eax+eiz*1+0x64],0x2e6e776f
c000e17c:	2e 
c000e17d:	0a 00                	or     al,BYTE PTR [eax]
c000e17f:	00 50 65             	add    BYTE PTR [eax+0x65],dl
c000e182:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000e183:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c000e186:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c000e18b:	65 6c                	gs ins BYTE PTR es:[edi],dx
c000e18d:	20 28                	and    BYTE PTR [eax],ch
c000e18f:	50                   	push   eax
c000e190:	4b                   	dec    ebx
c000e191:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000e192:	29 20                	sub    DWORD PTR [eax],esp
c000e194:	76 65                	jbe    c000e1fb <PKn_Version+0x12f>
c000e196:	72 73                	jb     c000e20b <PKn_Version+0x13f>
c000e198:	69 6f 6e 20 30 2e 30 	imul   ebp,DWORD PTR [edi+0x6e],0x302e3020
c000e19f:	2e 30 20             	xor    BYTE PTR cs:[eax],ah
c000e1a2:	74 65                	je     c000e209 <PKn_Version+0x13d>
c000e1a4:	73 74                	jae    c000e21a <PKn_Version+0x14e>
c000e1a6:	00 00                	add    BYTE PTR [eax],al
c000e1a8:	23 44 45 20          	and    eax,DWORD PTR [ebp+eax*2+0x20]
c000e1ac:	44                   	inc    esp
c000e1ad:	69 76 69 64 65 20 45 	imul   esi,DWORD PTR [esi+0x69],0x45206564
c000e1b4:	72 72                	jb     c000e228 <PKn_Version+0x15c>
c000e1b6:	6f                   	outs   dx,DWORD PTR ds:[esi]
c000e1b7:	72 00                	jb     c000e1b9 <PKn_Version+0xed>
c000e1b9:	23 44 42 20          	and    eax,DWORD PTR [edx+eax*2+0x20]
c000e1bd:	44                   	inc    esp
c000e1be:	65 62 75 67          	bound  esi,QWORD PTR gs:[ebp+0x67]
c000e1c2:	20 45 78             	and    BYTE PTR [ebp+0x78],al
c000e1c5:	63 65 70             	arpl   WORD PTR [ebp+0x70],sp
c000e1c8:	74 69                	je     c000e233 <PKn_Version+0x167>
c000e1ca:	6f                   	outs   dx,DWORD PTR ds:[esi]
c000e1cb:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000e1cc:	00 4e 4d             	add    BYTE PTR [esi+0x4d],cl
c000e1cf:	49                   	dec    ecx
c000e1d0:	20 49 6e             	and    BYTE PTR [ecx+0x6e],cl
c000e1d3:	74 65                	je     c000e23a <PKn_Version+0x16e>
c000e1d5:	72 72                	jb     c000e249 <PKn_Version+0x17d>
c000e1d7:	75 70                	jne    c000e249 <PKn_Version+0x17d>
c000e1d9:	74 00                	je     c000e1db <PKn_Version+0x10f>
c000e1db:	23 42 50             	and    eax,DWORD PTR [edx+0x50]
c000e1de:	20 42 72             	and    BYTE PTR [edx+0x72],al
c000e1e1:	65 61                	gs popa 
c000e1e3:	6b 70 6f 69          	imul   esi,DWORD PTR [eax+0x6f],0x69
c000e1e7:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000e1e8:	74 20                	je     c000e20a <PKn_Version+0x13e>
c000e1ea:	45                   	inc    ebp
c000e1eb:	78 63                	js     c000e250 <PKn_Version+0x184>
c000e1ed:	65 70 74             	gs jo  c000e264 <PKn_Version+0x198>
c000e1f0:	69 6f 6e 00 23 4f 46 	imul   ebp,DWORD PTR [edi+0x6e],0x464f2300
c000e1f7:	20 4f 76             	and    BYTE PTR [edi+0x76],cl
c000e1fa:	65 72 66             	gs jb  c000e263 <PKn_Version+0x197>
c000e1fd:	6c                   	ins    BYTE PTR es:[edi],dx
c000e1fe:	6f                   	outs   dx,DWORD PTR ds:[esi]
c000e1ff:	77 20                	ja     c000e221 <PKn_Version+0x155>
c000e201:	45                   	inc    ebp
c000e202:	78 63                	js     c000e267 <PKn_Version+0x19b>
c000e204:	65 70 74             	gs jo  c000e27b <PKn_Version+0x1af>
c000e207:	69 6f 6e 00 23 42 52 	imul   ebp,DWORD PTR [edi+0x6e],0x52422300
c000e20e:	20 42 4f             	and    BYTE PTR [edx+0x4f],al
c000e211:	55                   	push   ebp
c000e212:	4e                   	dec    esi
c000e213:	44                   	inc    esp
c000e214:	20 52 61             	and    BYTE PTR [edx+0x61],dl
c000e217:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000e218:	67 65 20 45 78       	and    BYTE PTR gs:[di+0x78],al
c000e21d:	63 65 65             	arpl   WORD PTR [ebp+0x65],sp
c000e220:	64 65 64 20 45 78    	fs gs and BYTE PTR fs:[ebp+0x78],al
c000e226:	63 65 70             	arpl   WORD PTR [ebp+0x70],sp
c000e229:	74 69                	je     c000e294 <PKn_Version+0x1c8>
c000e22b:	6f                   	outs   dx,DWORD PTR ds:[esi]
c000e22c:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000e22d:	00 23                	add    BYTE PTR [ebx],ah
c000e22f:	55                   	push   ebp
c000e230:	44                   	inc    esp
c000e231:	20 49 6e             	and    BYTE PTR [ecx+0x6e],cl
c000e234:	76 61                	jbe    c000e297 <PKn_Version+0x1cb>
c000e236:	6c                   	ins    BYTE PTR es:[edi],dx
c000e237:	69 64 20 4f 70 63 6f 	imul   esp,DWORD PTR [eax+eiz*1+0x4f],0x646f6370
c000e23e:	64 
c000e23f:	65 20 45 78          	and    BYTE PTR gs:[ebp+0x78],al
c000e243:	63 65 70             	arpl   WORD PTR [ebp+0x70],sp
c000e246:	74 69                	je     c000e2b1 <PKn_Version+0x1e5>
c000e248:	6f                   	outs   dx,DWORD PTR ds:[esi]
c000e249:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000e24a:	00 23                	add    BYTE PTR [ebx],ah
c000e24c:	4e                   	dec    esi
c000e24d:	4d                   	dec    ebp
c000e24e:	20 44 65 76          	and    BYTE PTR [ebp+eiz*2+0x76],al
c000e252:	69 63 65 20 4e 6f 74 	imul   esp,DWORD PTR [ebx+0x65],0x746f4e20
c000e259:	20 41 76             	and    BYTE PTR [ecx+0x76],al
c000e25c:	61                   	popa   
c000e25d:	69 6c 61 62 6c 65 20 	imul   ebp,DWORD PTR [ecx+eiz*2+0x62],0x4520656c
c000e264:	45 
c000e265:	78 63                	js     c000e2ca <PKn_Version+0x1fe>
c000e267:	65 70 74             	gs jo  c000e2de <PKn_Version+0x212>
c000e26a:	69 6f 6e 00 23 44 46 	imul   ebp,DWORD PTR [edi+0x6e],0x46442300
c000e271:	20 44 6f 75          	and    BYTE PTR [edi+ebp*2+0x75],al
c000e275:	62 6c 65 20          	bound  ebp,QWORD PTR [ebp+eiz*2+0x20]
c000e279:	46                   	inc    esi
c000e27a:	61                   	popa   
c000e27b:	75 6c                	jne    c000e2e9 <PKn_Version+0x21d>
c000e27d:	74 20                	je     c000e29f <PKn_Version+0x1d3>
c000e27f:	45                   	inc    ebp
c000e280:	78 63                	js     c000e2e5 <PKn_Version+0x219>
c000e282:	65 70 74             	gs jo  c000e2f9 <PKn_Version+0x22d>
c000e285:	69 6f 6e 00 43 6f 70 	imul   ebp,DWORD PTR [edi+0x6e],0x706f4300
c000e28c:	72 6f                	jb     c000e2fd <PKn_Version+0x231>
c000e28e:	63 65 73             	arpl   WORD PTR [ebp+0x73],sp
c000e291:	73 6f                	jae    c000e302 <PKn_Version+0x236>
c000e293:	72 20                	jb     c000e2b5 <PKn_Version+0x1e9>
c000e295:	53                   	push   ebx
c000e296:	65 67 6d             	gs ins DWORD PTR es:[di],dx
c000e299:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c000e29b:	74 20                	je     c000e2bd <PKn_Version+0x1f1>
c000e29d:	4f                   	dec    edi
c000e29e:	76 65                	jbe    c000e305 <PKn_Version+0x239>
c000e2a0:	72 72                	jb     c000e314 <PKn_Version+0x248>
c000e2a2:	75 6e                	jne    c000e312 <PKn_Version+0x246>
c000e2a4:	00 23                	add    BYTE PTR [ebx],ah
c000e2a6:	54                   	push   esp
c000e2a7:	53                   	push   ebx
c000e2a8:	20 49 6e             	and    BYTE PTR [ecx+0x6e],cl
c000e2ab:	76 61                	jbe    c000e30e <PKn_Version+0x242>
c000e2ad:	6c                   	ins    BYTE PTR es:[edi],dx
c000e2ae:	69 64 20 54 53 53 20 	imul   esp,DWORD PTR [eax+eiz*1+0x54],0x45205353
c000e2b5:	45 
c000e2b6:	78 63                	js     c000e31b <PKn_Version+0x24f>
c000e2b8:	65 70 74             	gs jo  c000e32f <PKn_Version+0x263>
c000e2bb:	69 6f 6e 00 23 4e 50 	imul   ebp,DWORD PTR [edi+0x6e],0x504e2300
c000e2c2:	20 53 65             	and    BYTE PTR [ebx+0x65],dl
c000e2c5:	67 6d                	ins    DWORD PTR es:[di],dx
c000e2c7:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c000e2c9:	74 20                	je     c000e2eb <PKn_Version+0x21f>
c000e2cb:	4e                   	dec    esi
c000e2cc:	6f                   	outs   dx,DWORD PTR ds:[esi]
c000e2cd:	74 20                	je     c000e2ef <PKn_Version+0x223>
c000e2cf:	50                   	push   eax
c000e2d0:	72 65                	jb     c000e337 <PKn_Version+0x26b>
c000e2d2:	73 65                	jae    c000e339 <PKn_Version+0x26d>
c000e2d4:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000e2d5:	74 00                	je     c000e2d7 <PKn_Version+0x20b>
c000e2d7:	23 53 53             	and    edx,DWORD PTR [ebx+0x53]
c000e2da:	20 53 74             	and    BYTE PTR [ebx+0x74],dl
c000e2dd:	61                   	popa   
c000e2de:	63 6b 20             	arpl   WORD PTR [ebx+0x20],bp
c000e2e1:	46                   	inc    esi
c000e2e2:	61                   	popa   
c000e2e3:	75 6c                	jne    c000e351 <PKn_Version+0x285>
c000e2e5:	74 20                	je     c000e307 <PKn_Version+0x23b>
c000e2e7:	45                   	inc    ebp
c000e2e8:	78 63                	js     c000e34d <PKn_Version+0x281>
c000e2ea:	65 70 74             	gs jo  c000e361 <PKn_Version+0x295>
c000e2ed:	69 6f 6e 00 23 47 50 	imul   ebp,DWORD PTR [edi+0x6e],0x50472300
c000e2f4:	20 47 65             	and    BYTE PTR [edi+0x65],al
c000e2f7:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000e2f8:	65 72 61             	gs jb  c000e35c <PKn_Version+0x290>
c000e2fb:	6c                   	ins    BYTE PTR es:[edi],dx
c000e2fc:	20 50 72             	and    BYTE PTR [eax+0x72],dl
c000e2ff:	6f                   	outs   dx,DWORD PTR ds:[esi]
c000e300:	74 65                	je     c000e367 <PKn_Version+0x29b>
c000e302:	63 74 69 6f          	arpl   WORD PTR [ecx+ebp*2+0x6f],si
c000e306:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000e307:	20 45 78             	and    BYTE PTR [ebp+0x78],al
c000e30a:	63 65 70             	arpl   WORD PTR [ebp+0x70],sp
c000e30d:	74 69                	je     c000e378 <PKn_Version+0x2ac>
c000e30f:	6f                   	outs   dx,DWORD PTR ds:[esi]
c000e310:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000e311:	00 23                	add    BYTE PTR [ebx],ah
c000e313:	50                   	push   eax
c000e314:	46                   	inc    esi
c000e315:	20 50 61             	and    BYTE PTR [eax+0x61],dl
c000e318:	67 65 2d 46 61 75 6c 	addr16 gs sub eax,0x6c756146
c000e31f:	74 20                	je     c000e341 <PKn_Version+0x275>
c000e321:	45                   	inc    ebp
c000e322:	78 63                	js     c000e387 <PKn_Version+0x2bb>
c000e324:	65 70 74             	gs jo  c000e39b <PKn_Version+0x2cf>
c000e327:	69 6f 6e 00 52 65 73 	imul   ebp,DWORD PTR [edi+0x6e],0x73655200
c000e32e:	65 72 76             	gs jb  c000e3a7 <PKn_Version+0x2db>
c000e331:	65 64 00 23          	gs add BYTE PTR fs:[ebx],ah
c000e335:	4d                   	dec    ebp
c000e336:	46                   	inc    esi
c000e337:	20 78 38             	and    BYTE PTR [eax+0x38],bh
c000e33a:	37                   	aaa    
c000e33b:	20 46 50             	and    BYTE PTR [esi+0x50],al
c000e33e:	55                   	push   ebp
c000e33f:	20 46 6c             	and    BYTE PTR [esi+0x6c],al
c000e342:	6f                   	outs   dx,DWORD PTR ds:[esi]
c000e343:	61                   	popa   
c000e344:	74 69                	je     c000e3af <PKn_Version+0x2e3>
c000e346:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000e347:	67 2d 50 6f 69 6e    	addr16 sub eax,0x6e696f50
c000e34d:	74 20                	je     c000e36f <PKn_Version+0x2a3>
c000e34f:	45                   	inc    ebp
c000e350:	72 72                	jb     c000e3c4 <PKn_Version+0x2f8>
c000e352:	6f                   	outs   dx,DWORD PTR ds:[esi]
c000e353:	72 00                	jb     c000e355 <PKn_Version+0x289>
c000e355:	23 41 43             	and    eax,DWORD PTR [ecx+0x43]
c000e358:	20 41 6c             	and    BYTE PTR [ecx+0x6c],al
c000e35b:	69 67 6e 6d 65 6e 74 	imul   esp,DWORD PTR [edi+0x6e],0x746e656d
c000e362:	20 43 68             	and    BYTE PTR [ebx+0x68],al
c000e365:	65 63 6b 20          	arpl   WORD PTR gs:[ebx+0x20],bp
c000e369:	45                   	inc    ebp
c000e36a:	78 63                	js     c000e3cf <PKn_Version+0x303>
c000e36c:	65 70 74             	gs jo  c000e3e3 <PKn_Version+0x317>
c000e36f:	69 6f 6e 00 23 4d 43 	imul   ebp,DWORD PTR [edi+0x6e],0x434d2300
c000e376:	20 4d 61             	and    BYTE PTR [ebp+0x61],cl
c000e379:	63 68 69             	arpl   WORD PTR [eax+0x69],bp
c000e37c:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000e37d:	65 2d 43 68 65 63    	gs sub eax,0x63656843
c000e383:	6b 20 45             	imul   esp,DWORD PTR [eax],0x45
c000e386:	78 63                	js     c000e3eb <PKn_Version+0x31f>
c000e388:	65 70 74             	gs jo  c000e3ff <PKn_Version+0x333>
c000e38b:	69 6f 6e 00 23 58 46 	imul   ebp,DWORD PTR [edi+0x6e],0x46582300
c000e392:	20 53 49             	and    BYTE PTR [ebx+0x49],dl
c000e395:	4d                   	dec    ebp
c000e396:	44                   	inc    esp
c000e397:	20 46 6c             	and    BYTE PTR [esi+0x6c],al
c000e39a:	6f                   	outs   dx,DWORD PTR ds:[esi]
c000e39b:	61                   	popa   
c000e39c:	74 69                	je     c000e407 <PKn_Version+0x33b>
c000e39e:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000e39f:	67 2d 50 6f 69 6e    	addr16 sub eax,0x6e696f50
c000e3a5:	74 20                	je     c000e3c7 <PKn_Version+0x2fb>
c000e3a7:	45                   	inc    ebp
c000e3a8:	78 63                	js     c000e40d <PKn_Version+0x341>
c000e3aa:	65 70 74             	gs jo  c000e421 <PKn_Version+0x355>
c000e3ad:	69 6f 6e 00 0a 20 00 	imul   ebp,DWORD PTR [edi+0x6e],0x200a00
c000e3b4:	0a 20                	or     ah,BYTE PTR [eax]
c000e3b6:	69 6e 74 72 3a 20 30 	imul   ebp,DWORD PTR [esi+0x74],0x30203a72
c000e3bd:	78 00                	js     c000e3bf <PKn_Version+0x2f3>
c000e3bf:	20 28                	and    BYTE PTR [eax],ch
c000e3c1:	20 66 61             	and    BYTE PTR [esi+0x61],ah
c000e3c4:	75 6c                	jne    c000e432 <PKn_Version+0x366>
c000e3c6:	74 20                	je     c000e3e8 <PKn_Version+0x31c>
c000e3c8:	61                   	popa   
c000e3c9:	64 64 72 65          	fs fs jb c000e432 <PKn_Version+0x366>
c000e3cd:	73 73                	jae    c000e442 <PKn_Version+0x376>
c000e3cf:	3a 20                	cmp    ah,BYTE PTR [eax]
c000e3d1:	30 78 00             	xor    BYTE PTR [eax+0x0],bh
c000e3d4:	20 29                	and    BYTE PTR [ecx],ch
c000e3d6:	0a 00                	or     al,BYTE PTR [eax]
c000e3d8:	0a 20                	or     ah,BYTE PTR [eax]
c000e3da:	43                   	inc    ebx
c000e3db:	50                   	push   eax
c000e3dc:	55                   	push   ebp
c000e3dd:	20 3a                	and    BYTE PTR [edx],bh
c000e3df:	00 50 65             	add    BYTE PTR [eax+0x65],dl
c000e3e2:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000e3e3:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c000e3e6:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c000e3eb:	65 6c                	gs ins BYTE PTR es:[edi],dx
c000e3ed:	20 28                	and    BYTE PTR [eax],ch
c000e3ef:	50                   	push   eax
c000e3f0:	4b                   	dec    ebx
c000e3f1:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000e3f2:	29 20                	sub    DWORD PTR [eax],esp
c000e3f4:	76 65                	jbe    c000e45b <PKn_Version+0x38f>
c000e3f6:	72 73                	jb     c000e46b <PKn_Version+0x39f>
c000e3f8:	69 6f 6e 20 30 2e 30 	imul   ebp,DWORD PTR [edi+0x6e],0x302e3020
c000e3ff:	2e 30 20             	xor    BYTE PTR cs:[eax],ah
c000e402:	74 65                	je     c000e469 <PKn_Version+0x39d>
c000e404:	73 74                	jae    c000e47a <PKn_Version+0x3ae>
c000e406:	00 00                	add    BYTE PTR [eax],al
c000e408:	66 72 65             	data16 jb c000e470 <PKn_Version+0x3a4>
c000e40b:	65 20 21             	and    BYTE PTR gs:[ecx],ah
c000e40e:	3d 20 4e 55 4c       	cmp    eax,0x4c554e20
c000e413:	4c                   	dec    esp
c000e414:	00 6b 65             	add    BYTE PTR [ebx+0x65],ch
c000e417:	72 6e                	jb     c000e487 <PKn_Version+0x3bb>
c000e419:	65 6c                	gs ins BYTE PTR es:[edi],dx
c000e41b:	2f                   	das    
c000e41c:	6d                   	ins    DWORD PTR es:[edi],dx
c000e41d:	65 6d                	gs ins DWORD PTR es:[edi],dx
c000e41f:	6f                   	outs   dx,DWORD PTR ds:[esi]
c000e420:	72 79                	jb     c000e49b <PKn_Version+0x3cf>
c000e422:	2e 63 00             	arpl   WORD PTR cs:[eax],ax
c000e425:	41                   	inc    ecx
c000e426:	72 64                	jb     c000e48c <PKn_Version+0x3c0>
c000e428:	73 3a                	jae    c000e464 <PKn_Version+0x398>
c000e42a:	0a 00                	or     al,BYTE PTR [eax]
c000e42c:	20 42 61             	and    BYTE PTR [edx+0x61],al
c000e42f:	73 65                	jae    c000e496 <PKn_Version+0x3ca>
c000e431:	3a 09                	cmp    cl,BYTE PTR [ecx]
c000e433:	09 30                	or     DWORD PTR [eax],esi
c000e435:	78 00                	js     c000e437 <PKn_Version+0x36b>
c000e437:	20 0a                	and    BYTE PTR [edx],cl
c000e439:	20 4c 65 6e          	and    BYTE PTR [ebp+eiz*2+0x6e],cl
c000e43d:	67 74 68             	addr16 je c000e4a8 <PKn_Version+0x3dc>
c000e440:	3a 09                	cmp    cl,BYTE PTR [ecx]
c000e442:	30 78 00             	xor    BYTE PTR [eax+0x0],bh
c000e445:	20 0a                	and    BYTE PTR [edx],cl
c000e447:	20 74 79 70          	and    BYTE PTR [ecx+edi*2+0x70],dh
c000e44b:	65 3a 09             	cmp    cl,BYTE PTR gs:[ecx]
c000e44e:	09 00                	or     DWORD PTR [eax],eax
c000e450:	0a 00                	or     al,BYTE PTR [eax]
c000e452:	4e                   	dec    esi
c000e453:	6f                   	outs   dx,DWORD PTR ds:[esi]
c000e454:	20 4d 65             	and    BYTE PTR [ebp+0x65],cl
c000e457:	6d                   	ins    DWORD PTR es:[edi],dx
c000e458:	6f                   	outs   dx,DWORD PTR ds:[esi]
c000e459:	72 79                	jb     c000e4d4 <PKn_Version+0x408>
c000e45b:	20 61 76             	and    BYTE PTR [ecx+0x76],ah
c000e45e:	61                   	popa   
c000e45f:	69 6c 61 62 6c 65 21 	imul   ebp,DWORD PTR [ecx+eiz*2+0x62],0x21656c
c000e466:	00 
c000e467:	20 4d 65             	and    BYTE PTR [ebp+0x65],cl
c000e46a:	6d                   	ins    DWORD PTR es:[edi],dx
c000e46b:	61                   	popa   
c000e46c:	6c                   	ins    BYTE PTR es:[edi],dx
c000e46d:	6c                   	ins    BYTE PTR es:[edi],dx
c000e46e:	6f                   	outs   dx,DWORD PTR ds:[esi]
c000e46f:	63 3a                	arpl   WORD PTR [edx],di
c000e471:	20 00                	and    BYTE PTR [eax],al
c000e473:	67 65 74 5f          	addr16 gs je c000e4d6 <PKn_Version+0x40a>
c000e477:	61                   	popa   
c000e478:	5f                   	pop    edi
c000e479:	70 61                	jo     c000e4dc <PKn_Version+0x410>
c000e47b:	67 65 3a 20          	cmp    ah,BYTE PTR gs:[bx+si]
c000e47f:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000e480:	6f                   	outs   dx,DWORD PTR ds:[esi]
c000e481:	74 20                	je     c000e4a3 <PKn_Version+0x3d7>
c000e483:	61                   	popa   
c000e484:	6c                   	ins    BYTE PTR es:[edi],dx
c000e485:	6c                   	ins    BYTE PTR es:[edi],dx
c000e486:	6f                   	outs   dx,DWORD PTR ds:[esi]
c000e487:	77 20                	ja     c000e4a9 <PKn_Version+0x3dd>
c000e489:	6b 65 72 6e          	imul   esp,DWORD PTR [ebp+0x72],0x6e
c000e48d:	65 6c                	gs ins BYTE PTR es:[edi],dx
c000e48f:	20 61 6c             	and    BYTE PTR [ecx+0x6c],ah
c000e492:	6c                   	ins    BYTE PTR es:[edi],dx
c000e493:	6f                   	outs   dx,DWORD PTR ds:[esi]
c000e494:	63 20                	arpl   WORD PTR [eax],sp
c000e496:	75 73                	jne    c000e50b <__func__.1121+0x3>
c000e498:	65 72 73             	gs jb  c000e50e <__func__.1121+0x6>
c000e49b:	70 61                	jo     c000e4fe <PKn_Version+0x432>
c000e49d:	63 65 20             	arpl   WORD PTR [ebp+0x20],sp
c000e4a0:	6f                   	outs   dx,DWORD PTR ds:[esi]
c000e4a1:	72 20                	jb     c000e4c3 <PKn_Version+0x3f7>
c000e4a3:	75 73                	jne    c000e518 <__func__.1128+0x4>
c000e4a5:	65 72 20             	gs jb  c000e4c8 <PKn_Version+0x3fc>
c000e4a8:	61                   	popa   
c000e4a9:	6c                   	ins    BYTE PTR es:[edi],dx
c000e4aa:	6c                   	ins    BYTE PTR es:[edi],dx
c000e4ab:	6f                   	outs   dx,DWORD PTR ds:[esi]
c000e4ac:	63 20                	arpl   WORD PTR [eax],sp
c000e4ae:	6b 65 72 6e          	imul   esp,DWORD PTR [ebp+0x72],0x6e
c000e4b2:	65 6c                	gs ins BYTE PTR es:[edi],dx
c000e4b4:	73 70                	jae    c000e526 <__func__.1219+0x6>
c000e4b6:	61                   	popa   
c000e4b7:	63 65 20             	arpl   WORD PTR [ebp+0x20],sp
c000e4ba:	62 79 20             	bound  edi,QWORD PTR [ecx+0x20]
c000e4bd:	67 65 74 5f          	addr16 gs je c000e520 <__func__.1219>
c000e4c1:	61                   	popa   
c000e4c2:	5f                   	pop    edi
c000e4c3:	70 61                	jo     c000e526 <__func__.1219+0x6>
c000e4c5:	67 65 28 29          	sub    BYTE PTR gs:[bx+di],ch
c000e4c9:	00 70 61             	add    BYTE PTR [eax+0x61],dh
c000e4cc:	67 65 5f             	addr16 gs pop edi
c000e4cf:	70 61                	jo     c000e532 <__func__.1219+0x12>
c000e4d1:	64 64 72 20          	fs fs jb c000e4f5 <PKn_Version+0x429>
c000e4d5:	21 3d 20 4e 55 4c    	and    DWORD PTR ds:0x4c554e20,edi
c000e4db:	4c                   	dec    esp
c000e4dc:	00 00                	add    BYTE PTR [eax],al
c000e4de:	00 00                	add    BYTE PTR [eax],al
c000e4e0:	50                   	push   eax
c000e4e1:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c000e4e3:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c000e4e6:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c000e4eb:	65 6c                	gs ins BYTE PTR es:[edi],dx
c000e4ed:	20 28                	and    BYTE PTR [eax],ch
c000e4ef:	50                   	push   eax
c000e4f0:	4b                   	dec    ebx
c000e4f1:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000e4f2:	29 20                	sub    DWORD PTR [eax],esp
c000e4f4:	76 65                	jbe    c000e55b <__func__.1219+0x3b>
c000e4f6:	72 73                	jb     c000e56b <__func__.1219+0x4b>
c000e4f8:	69 6f 6e 20 30 2e 30 	imul   ebp,DWORD PTR [edi+0x6e],0x302e3020
c000e4ff:	2e 30 20             	xor    BYTE PTR cs:[eax],ah
c000e502:	74 65                	je     c000e569 <__func__.1219+0x49>
c000e504:	73 74                	jae    c000e57a <__func__.1219+0x5a>
	...

c000e508 <__func__.1121>:
c000e508:	69 6e 69 74 5f 6d 65 	imul   ebp,DWORD PTR [esi+0x69],0x656d5f74
c000e50f:	6d                   	ins    DWORD PTR es:[edi],dx
c000e510:	6f                   	outs   dx,DWORD PTR ds:[esi]
c000e511:	72 79                	jb     c000e58c <__func__.1219+0x6c>
	...

c000e514 <__func__.1128>:
c000e514:	69 6e 69 74 5f 6d 65 	imul   ebp,DWORD PTR [esi+0x69],0x656d5f74
c000e51b:	6d                   	ins    DWORD PTR es:[edi],dx
c000e51c:	6d                   	ins    DWORD PTR es:[edi],dx
c000e51d:	61                   	popa   
c000e51e:	6e                   	outs   dx,BYTE PTR ds:[esi]
	...

c000e520 <__func__.1219>:
c000e520:	67 65 74 5f          	addr16 gs je c000e583 <__func__.1219+0x63>
c000e524:	61                   	popa   
c000e525:	5f                   	pop    edi
c000e526:	70 61                	jo     c000e589 <__func__.1219+0x69>
c000e528:	67 65 00 00          	add    BYTE PTR gs:[bx+si],al
c000e52c:	70 73                	jo     c000e5a1 <__func__.1219+0x81>
c000e52e:	65 6d                	gs ins DWORD PTR es:[edi],dx
c000e530:	61                   	popa   
c000e531:	2d 3e 76 61 6c       	sub    eax,0x6c61763e
c000e536:	75 65                	jne    c000e59d <__func__.1219+0x7d>
c000e538:	20 3d 3d 20 76 61    	and    BYTE PTR ds:0x6176203d,bh
c000e53e:	6c                   	ins    BYTE PTR es:[edi],dx
c000e53f:	75 65                	jne    c000e5a6 <__func__.1219+0x86>
c000e541:	00 74 68 72          	add    BYTE PTR [eax+ebp*2+0x72],dh
c000e545:	65 61                	gs popa 
c000e547:	64 2f                	fs das 
c000e549:	73 79                	jae    c000e5c4 <__func__.1219+0xa4>
c000e54b:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000e54c:	63 2e                	arpl   WORD PTR [esi],bp
c000e54e:	63 00                	arpl   WORD PTR [eax],ax
c000e550:	21 28                	and    DWORD PTR [eax],ebp
c000e552:	6c                   	ins    BYTE PTR es:[edi],dx
c000e553:	69 73 74 5f 66 69 6e 	imul   esi,DWORD PTR [ebx+0x74],0x6e69665f
c000e55a:	64 28 26             	sub    BYTE PTR fs:[esi],ah
c000e55d:	28 70 73             	sub    BYTE PTR [eax+0x73],dh
c000e560:	65 6d                	gs ins DWORD PTR es:[edi],dx
c000e562:	61                   	popa   
c000e563:	2d 3e 77 61 69       	sub    eax,0x6961773e
c000e568:	74 65                	je     c000e5cf <__func__.1219+0xaf>
c000e56a:	72 73                	jb     c000e5df <__func__.1219+0xbf>
c000e56c:	29 2c 26             	sub    DWORD PTR [esi+eiz*1],ebp
c000e56f:	28 72 75             	sub    BYTE PTR [edx+0x75],dh
c000e572:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000e573:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000e574:	69 6e 67 5f 74 68 72 	imul   ebp,DWORD PTR [esi+0x67],0x7268745f
c000e57b:	65 61                	gs popa 
c000e57d:	64 28 29             	sub    BYTE PTR fs:[ecx],ch
c000e580:	2d 3e 67 65 6e       	sub    eax,0x6e65673e
c000e585:	65 72 61             	gs jb  c000e5e9 <__func__.1219+0xc9>
c000e588:	6c                   	ins    BYTE PTR es:[edi],dx
c000e589:	5f                   	pop    edi
c000e58a:	74 61                	je     c000e5ed <__func__.1219+0xcd>
c000e58c:	67 29 29             	sub    DWORD PTR [bx+di],ebp
c000e58f:	29 00                	sub    DWORD PTR [eax],eax
c000e591:	73 65                	jae    c000e5f8 <__func__.1219+0xd8>
c000e593:	6d                   	ins    DWORD PTR es:[edi],dx
c000e594:	61                   	popa   
c000e595:	20 64 6f 77          	and    BYTE PTR [edi+ebp*2+0x77],ah
c000e599:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000e59a:	3a 74 68 72          	cmp    dh,BYTE PTR [eax+ebp*2+0x72]
c000e59e:	65 61                	gs popa 
c000e5a0:	64 20 62 6c          	and    BYTE PTR fs:[edx+0x6c],ah
c000e5a4:	6f                   	outs   dx,DWORD PTR ds:[esi]
c000e5a5:	63 6b 65             	arpl   WORD PTR [ebx+0x65],bp
c000e5a8:	64 20 68 61          	and    BYTE PTR fs:[eax+0x61],ch
c000e5ac:	73 20                	jae    c000e5ce <__func__.1219+0xae>
c000e5ae:	62 65 65             	bound  esp,QWORD PTR [ebp+0x65]
c000e5b1:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000e5b2:	20 69 6e             	and    BYTE PTR [ecx+0x6e],ch
c000e5b5:	20 77 61             	and    BYTE PTR [edi+0x61],dh
c000e5b8:	69 74 65 72 73 20 6c 	imul   esi,DWORD PTR [ebp+eiz*2+0x72],0x696c2073
c000e5bf:	69 
c000e5c0:	73 74                	jae    c000e636 <__func__.1219+0x116>
c000e5c2:	21 0a                	and    DWORD PTR [edx],ecx
c000e5c4:	00 70 73             	add    BYTE PTR [eax+0x73],dh
c000e5c7:	65 6d                	gs ins DWORD PTR es:[edi],dx
c000e5c9:	61                   	popa   
c000e5ca:	2d 3e 76 61 6c       	sub    eax,0x6c61763e
c000e5cf:	75 65                	jne    c000e636 <__func__.1219+0x116>
c000e5d1:	20 3d 3d 20 30 00    	and    BYTE PTR ds:0x30203d,bh
c000e5d7:	70 73                	jo     c000e64c <__func__.1219+0x12c>
c000e5d9:	65 6d                	gs ins DWORD PTR es:[edi],dx
c000e5db:	61                   	popa   
c000e5dc:	2d 3e 76 61 6c       	sub    eax,0x6c61763e
c000e5e1:	75 65                	jne    c000e648 <__func__.1219+0x128>
c000e5e3:	20 3d 3d 20 31 00    	and    BYTE PTR ds:0x31203d,bh
c000e5e9:	70 6c                	jo     c000e657 <__func__.1219+0x137>
c000e5eb:	6f                   	outs   dx,DWORD PTR ds:[esi]
c000e5ec:	63 6b 2d             	arpl   WORD PTR [ebx+0x2d],bp
c000e5ef:	3e 68 6f 6c 64 65    	ds push 0x65646c6f
c000e5f5:	72 5f                	jb     c000e656 <__func__.1219+0x136>
c000e5f7:	72 65                	jb     c000e65e <__func__.1219+0x13e>
c000e5f9:	70 65                	jo     c000e660 <__func__.1219+0x140>
c000e5fb:	61                   	popa   
c000e5fc:	74 5f                	je     c000e65d <__func__.1219+0x13d>
c000e5fe:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000e5ff:	72 20                	jb     c000e621 <__func__.1219+0x101>
c000e601:	3d 3d 20 30 00       	cmp    eax,0x30203d
c000e606:	70 6c                	jo     c000e674 <__func__.1040+0x4>
c000e608:	6f                   	outs   dx,DWORD PTR ds:[esi]
c000e609:	63 6b 2d             	arpl   WORD PTR [ebx+0x2d],bp
c000e60c:	3e 68 6f 6c 64 65    	ds push 0x65646c6f
c000e612:	72 20                	jb     c000e634 <__func__.1219+0x114>
c000e614:	3d 3d 20 72 75       	cmp    eax,0x7572203d
c000e619:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000e61a:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000e61b:	69 6e 67 5f 74 68 72 	imul   ebp,DWORD PTR [esi+0x67],0x7268745f
c000e622:	65 61                	gs popa 
c000e624:	64 28 29             	sub    BYTE PTR fs:[ecx],ch
c000e627:	00 70 6c             	add    BYTE PTR [eax+0x6c],dh
c000e62a:	6f                   	outs   dx,DWORD PTR ds:[esi]
c000e62b:	63 6b 2d             	arpl   WORD PTR [ebx+0x2d],bp
c000e62e:	3e 68 6f 6c 64 65    	ds push 0x65646c6f
c000e634:	72 5f                	jb     c000e695 <__func__.1061+0x5>
c000e636:	72 65                	jb     c000e69d <__func__.1061+0xd>
c000e638:	70 65                	jo     c000e69f <__func__.1061+0xf>
c000e63a:	61                   	popa   
c000e63b:	74 5f                	je     c000e69c <__func__.1061+0xc>
c000e63d:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000e63e:	72 20                	jb     c000e660 <__func__.1219+0x140>
c000e640:	3d 3d 20 31 00       	cmp    eax,0x31203d
c000e645:	00 00                	add    BYTE PTR [eax],al
c000e647:	00 50 65             	add    BYTE PTR [eax+0x65],dl
c000e64a:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000e64b:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c000e64e:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c000e653:	65 6c                	gs ins BYTE PTR es:[edi],dx
c000e655:	20 28                	and    BYTE PTR [eax],ch
c000e657:	50                   	push   eax
c000e658:	4b                   	dec    ebx
c000e659:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000e65a:	29 20                	sub    DWORD PTR [eax],esp
c000e65c:	76 65                	jbe    c000e6c3 <__func__.1065+0x23>
c000e65e:	72 73                	jb     c000e6d3 <__func__.1065+0x33>
c000e660:	69 6f 6e 20 30 2e 30 	imul   ebp,DWORD PTR [edi+0x6e],0x302e3020
c000e667:	2e 30 20             	xor    BYTE PTR cs:[eax],ah
c000e66a:	74 65                	je     c000e6d1 <__func__.1065+0x31>
c000e66c:	73 74                	jae    c000e6e2 <__func__.1065+0x42>
	...

c000e670 <__func__.1040>:
c000e670:	73 65                	jae    c000e6d7 <__func__.1065+0x37>
c000e672:	6d                   	ins    DWORD PTR es:[edi],dx
c000e673:	61                   	popa   
c000e674:	5f                   	pop    edi
c000e675:	69 6e 69 74 00 00 00 	imul   ebp,DWORD PTR [esi+0x69],0x74

c000e67c <__func__.1048>:
c000e67c:	73 65                	jae    c000e6e3 <__func__.1065+0x43>
c000e67e:	6d                   	ins    DWORD PTR es:[edi],dx
c000e67f:	61                   	popa   
c000e680:	5f                   	pop    edi
c000e681:	64 6f                	outs   dx,DWORD PTR fs:[esi]
c000e683:	77 6e                	ja     c000e6f3 <__func__.1065+0x53>
c000e685:	00 00                	add    BYTE PTR [eax],al
	...

c000e688 <__func__.1056>:
c000e688:	73 65                	jae    c000e6ef <__func__.1065+0x4f>
c000e68a:	6d                   	ins    DWORD PTR es:[edi],dx
c000e68b:	61                   	popa   
c000e68c:	5f                   	pop    edi
c000e68d:	75 70                	jne    c000e6ff <__func__.1065+0x5f>
	...

c000e690 <__func__.1061>:
c000e690:	6c                   	ins    BYTE PTR es:[edi],dx
c000e691:	6f                   	outs   dx,DWORD PTR ds:[esi]
c000e692:	63 6b 5f             	arpl   WORD PTR [ebx+0x5f],bp
c000e695:	61                   	popa   
c000e696:	63 71 75             	arpl   WORD PTR [ecx+0x75],si
c000e699:	69 72 65 00 00 00 00 	imul   esi,DWORD PTR [edx+0x65],0x0

c000e6a0 <__func__.1065>:
c000e6a0:	6c                   	ins    BYTE PTR es:[edi],dx
c000e6a1:	6f                   	outs   dx,DWORD PTR ds:[esi]
c000e6a2:	63 6b 5f             	arpl   WORD PTR [ebx+0x5f],bp
c000e6a5:	72 65                	jb     c000e70c <__func__.1065+0x6c>
c000e6a7:	6c                   	ins    BYTE PTR es:[edi],dx
c000e6a8:	65 61                	gs popa 
c000e6aa:	73 65                	jae    c000e711 <__func__.1065+0x71>
c000e6ac:	00 00                	add    BYTE PTR [eax],al
c000e6ae:	00 00                	add    BYTE PTR [eax],al
c000e6b0:	4d                   	dec    ebp
c000e6b1:	61                   	popa   
c000e6b2:	69 6e 20 74 68 72 65 	imul   ebp,DWORD PTR [esi+0x20],0x65726874
c000e6b9:	61                   	popa   
c000e6ba:	64 00 21             	add    BYTE PTR fs:[ecx],ah
c000e6bd:	6c                   	ins    BYTE PTR es:[edi],dx
c000e6be:	69 73 74 5f 66 69 6e 	imul   esi,DWORD PTR [ebx+0x74],0x6e69665f
c000e6c5:	64 28 26             	sub    BYTE PTR fs:[esi],ah
c000e6c8:	72 65                	jb     c000e72f <__func__.1065+0x8f>
c000e6ca:	61                   	popa   
c000e6cb:	64 79 5f             	fs jns c000e72d <__func__.1065+0x8d>
c000e6ce:	6c                   	ins    BYTE PTR es:[edi],dx
c000e6cf:	69 73 74 2c 26 28 74 	imul   esi,DWORD PTR [ebx+0x74],0x7428262c
c000e6d6:	68 72 65 61 64       	push   0x64616572
c000e6db:	2d 3e 67 65 6e       	sub    eax,0x6e65673e
c000e6e0:	65 72 61             	gs jb  c000e744 <__func__.1065+0xa4>
c000e6e3:	6c                   	ins    BYTE PTR es:[edi],dx
c000e6e4:	5f                   	pop    edi
c000e6e5:	74 61                	je     c000e748 <__func__.1065+0xa8>
c000e6e7:	67 29 29             	sub    DWORD PTR [bx+di],ebp
c000e6ea:	00 74 68 72          	add    BYTE PTR [eax+ebp*2+0x72],dh
c000e6ee:	65 61                	gs popa 
c000e6f0:	64 2f                	fs das 
c000e6f2:	74 68                	je     c000e75c <__func__.1065+0xbc>
c000e6f4:	72 65                	jb     c000e75b <__func__.1065+0xbb>
c000e6f6:	61                   	popa   
c000e6f7:	64 2e 63 00          	fs arpl WORD PTR cs:[eax],ax
c000e6fb:	21 6c 69 73          	and    DWORD PTR [ecx+ebp*2+0x73],ebp
c000e6ff:	74 5f                	je     c000e760 <__func__.1065+0xc0>
c000e701:	66 69 6e 64 28 26    	imul   bp,WORD PTR [esi+0x64],0x2628
c000e707:	61                   	popa   
c000e708:	6c                   	ins    BYTE PTR es:[edi],dx
c000e709:	6c                   	ins    BYTE PTR es:[edi],dx
c000e70a:	5f                   	pop    edi
c000e70b:	6c                   	ins    BYTE PTR es:[edi],dx
c000e70c:	69 73 74 2c 26 28 74 	imul   esi,DWORD PTR [ebx+0x74],0x7428262c
c000e713:	68 72 65 61 64       	push   0x64616572
c000e718:	2d 3e 61 6c 6c       	sub    eax,0x6c6c613e
c000e71d:	5f                   	pop    edi
c000e71e:	74 61                	je     c000e781 <__func__.1065+0xe1>
c000e720:	67 29 29             	sub    DWORD PTR [bx+di],ebp
c000e723:	00 63 75             	add    BYTE PTR [ebx+0x75],ah
c000e726:	72 5f                	jb     c000e787 <__func__.1065+0xe7>
c000e728:	74 68                	je     c000e792 <__func__.1065+0xf2>
c000e72a:	72 65                	jb     c000e791 <__func__.1065+0xf1>
c000e72c:	61                   	popa   
c000e72d:	64 2d 3e 73 74 61    	fs sub eax,0x6174733e
c000e733:	63 6b 5f             	arpl   WORD PTR [ebx+0x5f],bp
c000e736:	6d                   	ins    DWORD PTR es:[edi],dx
c000e737:	61                   	popa   
c000e738:	67 69 63 20 3d 3d 20 	imul   esp,DWORD PTR [bp+di+0x20],0x30203d3d
c000e73f:	30 
c000e740:	78 31                	js     c000e773 <__func__.1065+0xd3>
c000e742:	32 33                	xor    dh,BYTE PTR [ebx]
c000e744:	34 35                	xor    al,0x35
c000e746:	36 37                	ss aaa 
c000e748:	38 00                	cmp    BYTE PTR [eax],al
c000e74a:	21 28                	and    DWORD PTR [eax],ebp
c000e74c:	6c                   	ins    BYTE PTR es:[edi],dx
c000e74d:	69 73 74 5f 66 69 6e 	imul   esi,DWORD PTR [ebx+0x74],0x6e69665f
c000e754:	64 28 26             	sub    BYTE PTR fs:[esi],ah
c000e757:	72 65                	jb     c000e7be <__func__.1065+0x11e>
c000e759:	61                   	popa   
c000e75a:	64 79 5f             	fs jns c000e7bc <__func__.1065+0x11c>
c000e75d:	6c                   	ins    BYTE PTR es:[edi],dx
c000e75e:	69 73 74 2c 26 28 63 	imul   esi,DWORD PTR [ebx+0x74],0x6328262c
c000e765:	75 72                	jne    c000e7d9 <__func__.1065+0x139>
c000e767:	5f                   	pop    edi
c000e768:	74 68                	je     c000e7d2 <__func__.1065+0x132>
c000e76a:	72 65                	jb     c000e7d1 <__func__.1065+0x131>
c000e76c:	61                   	popa   
c000e76d:	64 2d 3e 67 65 6e    	fs sub eax,0x6e65673e
c000e773:	65 72 61             	gs jb  c000e7d7 <__func__.1065+0x137>
c000e776:	6c                   	ins    BYTE PTR es:[edi],dx
c000e777:	5f                   	pop    edi
c000e778:	74 61                	je     c000e7db <__func__.1065+0x13b>
c000e77a:	67 29 29             	sub    DWORD PTR [bx+di],ebp
c000e77d:	29 00                	sub    DWORD PTR [eax],eax
c000e77f:	21 28                	and    DWORD PTR [eax],ebp
c000e781:	6c                   	ins    BYTE PTR es:[edi],dx
c000e782:	69 73 74 5f 65 6d 70 	imul   esi,DWORD PTR [ebx+0x74],0x706d655f
c000e789:	74 79                	je     c000e804 <__func__.1065+0x164>
c000e78b:	28 26                	sub    BYTE PTR [esi],ah
c000e78d:	72 65                	jb     c000e7f4 <__func__.1065+0x154>
c000e78f:	61                   	popa   
c000e790:	64 79 5f             	fs jns c000e7f2 <__func__.1065+0x152>
c000e793:	6c                   	ins    BYTE PTR es:[edi],dx
c000e794:	69 73 74 29 29 00 72 	imul   esi,DWORD PTR [ebx+0x74],0x72002929
c000e79b:	65 61                	gs popa 
c000e79d:	64 79 5f             	fs jns c000e7ff <__func__.1065+0x15f>
c000e7a0:	6c                   	ins    BYTE PTR es:[edi],dx
c000e7a1:	69 73 74 2e 74 61 69 	imul   esi,DWORD PTR [ebx+0x74],0x6961742e
c000e7a8:	6c                   	ins    BYTE PTR es:[edi],dx
c000e7a9:	2e 70 72             	cs jo  c000e81e <__func__.1065+0x17e>
c000e7ac:	65 76 20             	gs jbe c000e7cf <__func__.1065+0x12f>
c000e7af:	21 3d 20 26 72 65    	and    DWORD PTR ds:0x65722620,edi
c000e7b5:	61                   	popa   
c000e7b6:	64 79 5f             	fs jns c000e818 <__func__.1065+0x178>
c000e7b9:	6c                   	ins    BYTE PTR es:[edi],dx
c000e7ba:	69 73 74 2e 68 65 61 	imul   esi,DWORD PTR [ebx+0x74],0x6165682e
c000e7c1:	64 00 75 73          	add    BYTE PTR fs:[ebp+0x73],dh
c000e7c5:	65 72 5f             	gs jb  c000e827 <__func__.1065+0x187>
c000e7c8:	70 72                	jo     c000e83c <__func__.1065+0x19c>
c000e7ca:	6f                   	outs   dx,DWORD PTR ds:[esi]
c000e7cb:	67 00 73 74          	add    BYTE PTR [bp+di+0x74],dh
c000e7cf:	61                   	popa   
c000e7d0:	74 75                	je     c000e847 <__func__.1065+0x1a7>
c000e7d2:	73 20                	jae    c000e7f4 <__func__.1065+0x154>
c000e7d4:	21 3d 20 54 41 53    	and    DWORD PTR ds:0x53415420,edi
c000e7da:	4b                   	dec    ebx
c000e7db:	5f                   	pop    edi
c000e7dc:	52                   	push   edx
c000e7dd:	55                   	push   ebp
c000e7de:	4e                   	dec    esi
c000e7df:	4e                   	dec    esi
c000e7e0:	49                   	dec    ecx
c000e7e1:	4e                   	dec    esi
c000e7e2:	47                   	inc    edi
c000e7e3:	20 26                	and    BYTE PTR [esi],ah
c000e7e5:	26 20 73 74          	and    BYTE PTR es:[ebx+0x74],dh
c000e7e9:	61                   	popa   
c000e7ea:	74 75                	je     c000e861 <__func__.1065+0x1c1>
c000e7ec:	73 20                	jae    c000e80e <__func__.1065+0x16e>
c000e7ee:	21 3d 20 54 41 53    	and    DWORD PTR ds:0x53415420,edi
c000e7f4:	4b                   	dec    ebx
c000e7f5:	5f                   	pop    edi
c000e7f6:	52                   	push   edx
c000e7f7:	45                   	inc    ebp
c000e7f8:	41                   	inc    ecx
c000e7f9:	44                   	inc    esp
c000e7fa:	59                   	pop    ecx
c000e7fb:	00 21                	add    BYTE PTR [ecx],ah
c000e7fd:	6c                   	ins    BYTE PTR es:[edi],dx
c000e7fe:	69 73 74 5f 66 69 6e 	imul   esi,DWORD PTR [ebx+0x74],0x6e69665f
c000e805:	64 28 26             	sub    BYTE PTR fs:[esi],ah
c000e808:	72 65                	jb     c000e86f <__func__.1065+0x1cf>
c000e80a:	61                   	popa   
c000e80b:	64 79 5f             	fs jns c000e86d <__func__.1065+0x1cd>
c000e80e:	6c                   	ins    BYTE PTR es:[edi],dx
c000e80f:	69 73 74 2c 26 28 70 	imul   esi,DWORD PTR [ebx+0x74],0x7028262c
c000e816:	74 68                	je     c000e880 <__func__.1065+0x1e0>
c000e818:	72 65                	jb     c000e87f <__func__.1065+0x1df>
c000e81a:	61                   	popa   
c000e81b:	64 2d 3e 67 65 6e    	fs sub eax,0x6e65673e
c000e821:	65 72 61             	gs jb  c000e885 <__func__.1215+0x1>
c000e824:	6c                   	ins    BYTE PTR es:[edi],dx
c000e825:	5f                   	pop    edi
c000e826:	74 61                	je     c000e889 <__func__.1215+0x5>
c000e828:	67 29 29             	sub    DWORD PTR [bx+di],ebp
c000e82b:	00 74 68 72          	add    BYTE PTR [eax+ebp*2+0x72],dh
c000e82f:	65 61                	gs popa 
c000e831:	64 20 75 6e          	and    BYTE PTR fs:[ebp+0x6e],dh
c000e835:	62 6c 6f 63          	bound  ebp,QWORD PTR [edi+ebp*2+0x63]
c000e839:	6b 3a 20             	imul   edi,DWORD PTR [edx],0x20
c000e83c:	62 6c 6f 63          	bound  ebp,QWORD PTR [edi+ebp*2+0x63]
c000e840:	6b 65 64 20          	imul   esp,DWORD PTR [ebp+0x64],0x20
c000e844:	74 68                	je     c000e8ae <__func__.1228+0xe>
c000e846:	72 65                	jb     c000e8ad <__func__.1228+0xd>
c000e848:	61                   	popa   
c000e849:	64 20 69 6e          	and    BYTE PTR fs:[ecx+0x6e],ch
c000e84d:	20 72 65             	and    BYTE PTR [edx+0x65],dh
c000e850:	61                   	popa   
c000e851:	64 79 20             	fs jns c000e874 <__func__.1065+0x1d4>
c000e854:	6c                   	ins    BYTE PTR es:[edi],dx
c000e855:	69 73 74 00 00 00 00 	imul   esi,DWORD PTR [ebx+0x74],0x0
c000e85c:	50                   	push   eax
c000e85d:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c000e85f:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c000e862:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c000e867:	65 6c                	gs ins BYTE PTR es:[edi],dx
c000e869:	20 28                	and    BYTE PTR [eax],ch
c000e86b:	50                   	push   eax
c000e86c:	4b                   	dec    ebx
c000e86d:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000e86e:	29 20                	sub    DWORD PTR [eax],esp
c000e870:	76 65                	jbe    c000e8d7 <__func__.1235+0x27>
c000e872:	72 73                	jb     c000e8e7 <__func__.1235+0x37>
c000e874:	69 6f 6e 20 30 2e 30 	imul   ebp,DWORD PTR [edi+0x6e],0x302e3020
c000e87b:	2e 30 20             	xor    BYTE PTR cs:[eax],ah
c000e87e:	74 65                	je     c000e8e5 <__func__.1235+0x35>
c000e880:	73 74                	jae    c000e8f6 <__func__.1235+0x46>
	...

c000e884 <__func__.1215>:
c000e884:	74 68                	je     c000e8ee <__func__.1235+0x3e>
c000e886:	72 65                	jb     c000e8ed <__func__.1235+0x3d>
c000e888:	61                   	popa   
c000e889:	64 5f                	fs pop edi
c000e88b:	73 74                	jae    c000e901 <__func__.1235+0x51>
c000e88d:	61                   	popa   
c000e88e:	72 74                	jb     c000e904 <__func__.1235+0x54>
c000e890:	00 00                	add    BYTE PTR [eax],al
	...

c000e894 <__func__.1222>:
c000e894:	73 63                	jae    c000e8f9 <__func__.1235+0x49>
c000e896:	68 65 64 75 6c       	push   0x6c756465
c000e89b:	65 00 00             	add    BYTE PTR gs:[eax],al
	...

c000e8a0 <__func__.1228>:
c000e8a0:	74 68                	je     c000e90a <__func__.1235+0x5a>
c000e8a2:	72 65                	jb     c000e909 <__func__.1235+0x59>
c000e8a4:	61                   	popa   
c000e8a5:	64 5f                	fs pop edi
c000e8a7:	62 6c 6f 63          	bound  ebp,QWORD PTR [edi+ebp*2+0x63]
c000e8ab:	6b 00 00             	imul   eax,DWORD PTR [eax],0x0
	...

c000e8b0 <__func__.1235>:
c000e8b0:	74 68                	je     c000e91a <__func__.1235+0x6a>
c000e8b2:	72 65                	jb     c000e919 <__func__.1235+0x69>
c000e8b4:	61                   	popa   
c000e8b5:	64 5f                	fs pop edi
c000e8b7:	75 6e                	jne    c000e927 <__func__.1235+0x77>
c000e8b9:	62 6c 6f 63          	bound  ebp,QWORD PTR [edi+ebp*2+0x63]
c000e8bd:	6b 00 00             	imul   eax,DWORD PTR [eax],0x0
c000e8c0:	50                   	push   eax
c000e8c1:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c000e8c3:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c000e8c6:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c000e8cb:	65 6c                	gs ins BYTE PTR es:[edi],dx
c000e8cd:	20 28                	and    BYTE PTR [eax],ch
c000e8cf:	50                   	push   eax
c000e8d0:	4b                   	dec    ebx
c000e8d1:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000e8d2:	29 20                	sub    DWORD PTR [eax],esp
c000e8d4:	76 65                	jbe    c000e93b <__func__.1235+0x8b>
c000e8d6:	72 73                	jb     c000e94b <__func__.1235+0x9b>
c000e8d8:	69 6f 6e 20 30 2e 30 	imul   ebp,DWORD PTR [edi+0x6e],0x302e3020
c000e8df:	2e 30 20             	xor    BYTE PTR cs:[eax],ah
c000e8e2:	74 65                	je     c000e949 <__func__.1235+0x99>
c000e8e4:	73 74                	jae    c000e95a <__func__.1235+0xaa>
c000e8e6:	00 00                	add    BYTE PTR [eax],al
c000e8e8:	70 74                	jo     c000e95e <__func__.1235+0xae>
c000e8ea:	68 72 65 61 64       	push   0x64616572
c000e8ef:	2d 3e 70 61 67       	sub    eax,0x6761703e
c000e8f4:	65 5f                	gs pop edi
c000e8f6:	64 69 72 20 21 3d 20 	imul   esi,DWORD PTR fs:[edx+0x20],0x4e203d21
c000e8fd:	4e 
c000e8fe:	55                   	push   ebp
c000e8ff:	4c                   	dec    esp
c000e900:	4c                   	dec    esp
c000e901:	00 75 73             	add    BYTE PTR [ebp+0x73],dh
c000e904:	65 72 70             	gs jb  c000e977 <__func__.1235+0xc7>
c000e907:	72 6f                	jb     c000e978 <__func__.1235+0xc8>
c000e909:	67 2f                	addr16 das 
c000e90b:	70 72                	jo     c000e97f <__func__.1235+0xcf>
c000e90d:	6f                   	outs   dx,DWORD PTR ds:[esi]
c000e90e:	63 65 73             	arpl   WORD PTR [ebp+0x73],sp
c000e911:	73 2e                	jae    c000e941 <__func__.1235+0x91>
c000e913:	63 00                	arpl   WORD PTR [eax],ax
c000e915:	70 74                	jo     c000e98b <__func__.1235+0xdb>
c000e917:	68 72 65 61 64       	push   0x64616572
c000e91c:	20 21                	and    BYTE PTR [ecx],ah
c000e91e:	3d 20 4e 55 4c       	cmp    eax,0x4c554e20
c000e923:	4c                   	dec    esp
c000e924:	00 63 72             	add    BYTE PTR [ebx+0x72],ah
c000e927:	65 61                	gs popa 
c000e929:	74 65                	je     c000e990 <__func__.1235+0xe0>
c000e92b:	5f                   	pop    edi
c000e92c:	70 61                	jo     c000e98f <__func__.1235+0xdf>
c000e92e:	67 65 5f             	addr16 gs pop edi
c000e931:	64 69 72 3a 20 67 65 	imul   esi,DWORD PTR fs:[edx+0x3a],0x74656720
c000e938:	74 
c000e939:	20 6b 65             	and    BYTE PTR [ebx+0x65],ch
c000e93c:	72 6e                	jb     c000e9ac <__func__.1235+0xfc>
c000e93e:	65 6c                	gs ins BYTE PTR es:[edi],dx
c000e940:	20 70 61             	and    BYTE PTR [eax+0x61],dh
c000e943:	67 65 20 66 61       	and    BYTE PTR gs:[bp+0x61],ah
c000e948:	69 6c 65 64 21 0a 00 	imul   ebp,DWORD PTR [ebp+eiz*2+0x64],0x70000a21
c000e94f:	70 
c000e950:	72 6f                	jb     c000e9c1 <__func__.1235+0x111>
c000e952:	67 20 50 43          	and    BYTE PTR [bx+si+0x43],dl
c000e956:	42                   	inc    edx
c000e957:	3a 20                	cmp    ah,BYTE PTR [eax]
c000e959:	00 20                	add    BYTE PTR [eax],ah
c000e95b:	70 72                	jo     c000e9cf <__func__.1235+0x11f>
c000e95d:	6f                   	outs   dx,DWORD PTR ds:[esi]
c000e95e:	67 20 70 67          	and    BYTE PTR [bx+si+0x67],dh
c000e962:	64 69 72 3a 20 00 21 	imul   esi,DWORD PTR fs:[edx+0x3a],0x28210020
c000e969:	28 
c000e96a:	6c                   	ins    BYTE PTR es:[edi],dx
c000e96b:	69 73 74 5f 66 69 6e 	imul   esi,DWORD PTR [ebx+0x74],0x6e69665f
c000e972:	64 28 26             	sub    BYTE PTR fs:[esi],ah
c000e975:	61                   	popa   
c000e976:	6c                   	ins    BYTE PTR es:[edi],dx
c000e977:	6c                   	ins    BYTE PTR es:[edi],dx
c000e978:	5f                   	pop    edi
c000e979:	6c                   	ins    BYTE PTR es:[edi],dx
c000e97a:	69 73 74 2c 26 28 70 	imul   esi,DWORD PTR [ebx+0x74],0x7028262c
c000e981:	74 68                	je     c000e9eb <__func__.1235+0x13b>
c000e983:	72 65                	jb     c000e9ea <__func__.1235+0x13a>
c000e985:	61                   	popa   
c000e986:	64 2d 3e 61 6c 6c    	fs sub eax,0x6c6c613e
c000e98c:	5f                   	pop    edi
c000e98d:	74 61                	je     c000e9f0 <__func__.1139>
c000e98f:	67 29 29             	sub    DWORD PTR [bx+di],ebp
c000e992:	29 00                	sub    DWORD PTR [eax],eax
c000e994:	21 28                	and    DWORD PTR [eax],ebp
c000e996:	6c                   	ins    BYTE PTR es:[edi],dx
c000e997:	69 73 74 5f 66 69 6e 	imul   esi,DWORD PTR [ebx+0x74],0x6e69665f
c000e99e:	64 28 26             	sub    BYTE PTR fs:[esi],ah
c000e9a1:	72 65                	jb     c000ea08 <__func__.1144+0x4>
c000e9a3:	61                   	popa   
c000e9a4:	64 79 5f             	fs jns c000ea06 <__func__.1144+0x2>
c000e9a7:	6c                   	ins    BYTE PTR es:[edi],dx
c000e9a8:	69 73 74 2c 26 28 70 	imul   esi,DWORD PTR [ebx+0x74],0x7028262c
c000e9af:	74 68                	je     c000ea19 <__func__.1161+0x1>
c000e9b1:	72 65                	jb     c000ea18 <__func__.1161>
c000e9b3:	61                   	popa   
c000e9b4:	64 2d 3e 67 65 6e    	fs sub eax,0x6e65673e
c000e9ba:	65 72 61             	gs jb  c000ea1e <__func__.1161+0x6>
c000e9bd:	6c                   	ins    BYTE PTR es:[edi],dx
c000e9be:	5f                   	pop    edi
c000e9bf:	74 61                	je     c000ea22 <__func__.1161+0xa>
c000e9c1:	67 29 29             	sub    DWORD PTR [bx+di],ebp
c000e9c4:	29 00                	sub    DWORD PTR [eax],eax
c000e9c6:	00 00                	add    BYTE PTR [eax],al
c000e9c8:	50                   	push   eax
c000e9c9:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c000e9cb:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c000e9ce:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c000e9d3:	65 6c                	gs ins BYTE PTR es:[edi],dx
c000e9d5:	20 28                	and    BYTE PTR [eax],ch
c000e9d7:	50                   	push   eax
c000e9d8:	4b                   	dec    ebx
c000e9d9:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000e9da:	29 20                	sub    DWORD PTR [eax],esp
c000e9dc:	76 65                	jbe    c000ea43 <__func__.1161+0x2b>
c000e9de:	72 73                	jb     c000ea53 <__func__.1161+0x3b>
c000e9e0:	69 6f 6e 20 30 2e 30 	imul   ebp,DWORD PTR [edi+0x6e],0x302e3020
c000e9e7:	2e 30 20             	xor    BYTE PTR cs:[eax],ah
c000e9ea:	74 65                	je     c000ea51 <__func__.1161+0x39>
c000e9ec:	73 74                	jae    c000ea62 <__func__.1161+0x4a>
	...

c000e9f0 <__func__.1139>:
c000e9f0:	70 61                	jo     c000ea53 <__func__.1161+0x3b>
c000e9f2:	67 65 5f             	addr16 gs pop edi
c000e9f5:	64 69 72 5f 61 63 74 	imul   esi,DWORD PTR fs:[edx+0x5f],0x69746361
c000e9fc:	69 
c000e9fd:	76 61                	jbe    c000ea60 <__func__.1161+0x48>
c000e9ff:	74 65                	je     c000ea66 <__func__.1161+0x4e>
c000ea01:	00 00                	add    BYTE PTR [eax],al
	...

c000ea04 <__func__.1144>:
c000ea04:	70 72                	jo     c000ea78 <__func__.1161+0x60>
c000ea06:	6f                   	outs   dx,DWORD PTR ds:[esi]
c000ea07:	63 65 73             	arpl   WORD PTR [ebp+0x73],sp
c000ea0a:	73 5f                	jae    c000ea6b <__func__.1161+0x53>
c000ea0c:	61                   	popa   
c000ea0d:	63 74 69 76          	arpl   WORD PTR [ecx+ebp*2+0x76],si
c000ea11:	61                   	popa   
c000ea12:	74 65                	je     c000ea79 <__func__.1161+0x61>
c000ea14:	00 00                	add    BYTE PTR [eax],al
	...

c000ea18 <__func__.1161>:
c000ea18:	70 72                	jo     c000ea8c <__func__.1161+0x74>
c000ea1a:	6f                   	outs   dx,DWORD PTR ds:[esi]
c000ea1b:	63 65 73             	arpl   WORD PTR [ebp+0x73],sp
c000ea1e:	73 5f                	jae    c000ea7f <__func__.1161+0x67>
c000ea20:	65 78 65             	gs js  c000ea88 <__func__.1161+0x70>
c000ea23:	63 75 74             	arpl   WORD PTR [ebp+0x74],si
c000ea26:	65 00 50 65          	add    BYTE PTR gs:[eax+0x65],dl
c000ea2a:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000ea2b:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c000ea2e:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c000ea33:	65 6c                	gs ins BYTE PTR es:[edi],dx
c000ea35:	20 28                	and    BYTE PTR [eax],ch
c000ea37:	50                   	push   eax
c000ea38:	4b                   	dec    ebx
c000ea39:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000ea3a:	29 20                	sub    DWORD PTR [eax],esp
c000ea3c:	76 65                	jbe    c000eaa3 <__func__.1161+0x8b>
c000ea3e:	72 73                	jb     c000eab3 <keymap+0x7>
c000ea40:	69 6f 6e 20 30 2e 30 	imul   ebp,DWORD PTR [edi+0x6e],0x302e3020
c000ea47:	2e 30 20             	xor    BYTE PTR cs:[eax],ah
c000ea4a:	74 65                	je     c000eab1 <keymap+0x5>
c000ea4c:	73 74                	jae    c000eac2 <keymap+0x16>
c000ea4e:	00 00                	add    BYTE PTR [eax],al
c000ea50:	50                   	push   eax
c000ea51:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c000ea53:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c000ea56:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c000ea5b:	65 6c                	gs ins BYTE PTR es:[edi],dx
c000ea5d:	20 28                	and    BYTE PTR [eax],ch
c000ea5f:	50                   	push   eax
c000ea60:	4b                   	dec    ebx
c000ea61:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000ea62:	29 20                	sub    DWORD PTR [eax],esp
c000ea64:	76 65                	jbe    c000eacb <keymap+0x1f>
c000ea66:	72 73                	jb     c000eadb <keymap+0x2f>
c000ea68:	69 6f 6e 20 30 2e 30 	imul   ebp,DWORD PTR [edi+0x6e],0x302e3020
c000ea6f:	2e 30 20             	xor    BYTE PTR cs:[eax],ah
c000ea72:	74 65                	je     c000ead9 <keymap+0x2d>
c000ea74:	73 74                	jae    c000eaea <keymap+0x3e>
c000ea76:	00 00                	add    BYTE PTR [eax],al
c000ea78:	75 6e                	jne    c000eae8 <keymap+0x3c>
c000ea7a:	6b 6e 6f 77          	imul   ebp,DWORD PTR [esi+0x6f],0x77
c000ea7e:	20 6b 65             	and    BYTE PTR [ebx+0x65],ch
c000ea81:	79 00                	jns    c000ea83 <__func__.1161+0x6b>
c000ea83:	00 50 65             	add    BYTE PTR [eax+0x65],dl
c000ea86:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000ea87:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c000ea8a:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c000ea8f:	65 6c                	gs ins BYTE PTR es:[edi],dx
c000ea91:	20 28                	and    BYTE PTR [eax],ch
c000ea93:	50                   	push   eax
c000ea94:	4b                   	dec    ebx
c000ea95:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000ea96:	29 20                	sub    DWORD PTR [eax],esp
c000ea98:	76 65                	jbe    c000eaff <keymap+0x53>
c000ea9a:	72 73                	jb     c000eb0f <keymap+0x63>
c000ea9c:	69 6f 6e 20 30 2e 30 	imul   ebp,DWORD PTR [edi+0x6e],0x302e3020
c000eaa3:	2e 30 20             	xor    BYTE PTR cs:[eax],ah
c000eaa6:	74 65                	je     c000eb0d <keymap+0x61>
c000eaa8:	73 74                	jae    c000eb1e <keymap+0x72>
	...

c000eaac <keymap>:
c000eaac:	00 00                	add    BYTE PTR [eax],al
c000eaae:	1b 1b                	sbb    ebx,DWORD PTR [ebx]
c000eab0:	31 21                	xor    DWORD PTR [ecx],esp
c000eab2:	32 40 33             	xor    al,BYTE PTR [eax+0x33]
c000eab5:	23 34 24             	and    esi,DWORD PTR [esp]
c000eab8:	35 25 36 5e 37       	xor    eax,0x375e3625
c000eabd:	26 38 2a             	cmp    BYTE PTR es:[edx],ch
c000eac0:	39 28                	cmp    DWORD PTR [eax],ebp
c000eac2:	30 29                	xor    BYTE PTR [ecx],ch
c000eac4:	2d 5f 3d 2b 08       	sub    eax,0x82b3d5f
c000eac9:	08 09                	or     BYTE PTR [ecx],cl
c000eacb:	09 71 51             	or     DWORD PTR [ecx+0x51],esi
c000eace:	77 57                	ja     c000eb27 <keymap+0x7b>
c000ead0:	65 45                	gs inc ebp
c000ead2:	72 52                	jb     c000eb26 <keymap+0x7a>
c000ead4:	74 54                	je     c000eb2a <keymap+0x7e>
c000ead6:	79 59                	jns    c000eb31 <keymap+0x85>
c000ead8:	75 55                	jne    c000eb2f <keymap+0x83>
c000eada:	69 49 6f 4f 70 50 5b 	imul   ecx,DWORD PTR [ecx+0x6f],0x5b50704f
c000eae1:	7b 5d                	jnp    c000eb40 <keymap+0x94>
c000eae3:	7d 0d                	jge    c000eaf2 <keymap+0x46>
c000eae5:	0d 00 00 61 41       	or     eax,0x41610000
c000eaea:	73 53                	jae    c000eb3f <keymap+0x93>
c000eaec:	64 44                	fs inc esp
c000eaee:	66 46                	inc    si
c000eaf0:	67 47                	addr16 inc edi
c000eaf2:	68 48 6a 4a 6b       	push   0x6b4a6a48
c000eaf7:	4b                   	dec    ebx
c000eaf8:	6c                   	ins    BYTE PTR es:[edi],dx
c000eaf9:	4c                   	dec    esp
c000eafa:	3b 3a                	cmp    edi,DWORD PTR [edx]
c000eafc:	27                   	daa    
c000eafd:	22 60 7e             	and    ah,BYTE PTR [eax+0x7e]
c000eb00:	00 00                	add    BYTE PTR [eax],al
c000eb02:	5c                   	pop    esp
c000eb03:	7c 7a                	jl     c000eb7f <keymap+0xd3>
c000eb05:	5a                   	pop    edx
c000eb06:	78 58                	js     c000eb60 <keymap+0xb4>
c000eb08:	63 43 76             	arpl   WORD PTR [ebx+0x76],ax
c000eb0b:	56                   	push   esi
c000eb0c:	62 42 6e             	bound  eax,QWORD PTR [edx+0x6e]
c000eb0f:	4e                   	dec    esi
c000eb10:	6d                   	ins    DWORD PTR es:[edi],dx
c000eb11:	4d                   	dec    ebp
c000eb12:	2c 3c                	sub    al,0x3c
c000eb14:	2e 3e 2f             	cs ds das 
c000eb17:	3f                   	aas    
c000eb18:	00 00                	add    BYTE PTR [eax],al
c000eb1a:	2a 2a                	sub    ch,BYTE PTR [edx]
c000eb1c:	00 00                	add    BYTE PTR [eax],al
c000eb1e:	20 20                	and    BYTE PTR [eax],ah
c000eb20:	00 00                	add    BYTE PTR [eax],al
c000eb22:	00 00                	add    BYTE PTR [eax],al
c000eb24:	50                   	push   eax
c000eb25:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c000eb27:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c000eb2a:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c000eb2f:	65 6c                	gs ins BYTE PTR es:[edi],dx
c000eb31:	20 28                	and    BYTE PTR [eax],ch
c000eb33:	50                   	push   eax
c000eb34:	4b                   	dec    ebx
c000eb35:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000eb36:	29 20                	sub    DWORD PTR [eax],esp
c000eb38:	76 65                	jbe    c000eb9f <keymap+0xf3>
c000eb3a:	72 73                	jb     c000ebaf <keymap+0x103>
c000eb3c:	69 6f 6e 20 30 2e 30 	imul   ebp,DWORD PTR [edi+0x6e],0x302e3020
c000eb43:	2e 30 20             	xor    BYTE PTR cs:[eax],ah
c000eb46:	74 65                	je     c000ebad <keymap+0x101>
c000eb48:	73 74                	jae    c000ebbe <keymap+0x112>
c000eb4a:	00 00                	add    BYTE PTR [eax],al
c000eb4c:	50                   	push   eax
c000eb4d:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c000eb4f:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c000eb52:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c000eb57:	65 6c                	gs ins BYTE PTR es:[edi],dx
c000eb59:	20 28                	and    BYTE PTR [eax],ch
c000eb5b:	50                   	push   eax
c000eb5c:	4b                   	dec    ebx
c000eb5d:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000eb5e:	29 20                	sub    DWORD PTR [eax],esp
c000eb60:	76 65                	jbe    c000ebc7 <keymap+0x11b>
c000eb62:	72 73                	jb     c000ebd7 <keymap+0x12b>
c000eb64:	69 6f 6e 20 30 2e 30 	imul   ebp,DWORD PTR [edi+0x6e],0x302e3020
c000eb6b:	2e 30 20             	xor    BYTE PTR cs:[eax],ah
c000eb6e:	74 65                	je     c000ebd5 <keymap+0x129>
c000eb70:	73 74                	jae    c000ebe6 <keymap+0x13a>
c000eb72:	00 00                	add    BYTE PTR [eax],al
c000eb74:	62 79 74             	bound  edi,QWORD PTR [ecx+0x74]
c000eb77:	65 5f                	gs pop edi
c000eb79:	69 6e 64 65 78 20 3c 	imul   ebp,DWORD PTR [esi+0x64],0x3c207865
c000eb80:	20 28                	and    BYTE PTR [eax],ch
c000eb82:	62 74 6d 70          	bound  esi,QWORD PTR [ebp+ebp*2+0x70]
c000eb86:	2d 3e 62 74 6d       	sub    eax,0x6d74623e
c000eb8b:	70 5f                	jo     c000ebec <__func__.866+0x4>
c000eb8d:	62 79 74             	bound  edi,QWORD PTR [ecx+0x74]
c000eb90:	65 73 5f             	gs jae c000ebf2 <__func__.866+0xa>
c000eb93:	6c                   	ins    BYTE PTR es:[edi],dx
c000eb94:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c000eb96:	29 00                	sub    DWORD PTR [eax],eax
c000eb98:	6c                   	ins    BYTE PTR es:[edi],dx
c000eb99:	69 62 2f 62 69 74 6d 	imul   esp,DWORD PTR [edx+0x2f],0x6d746962
c000eba0:	61                   	popa   
c000eba1:	70 2e                	jo     c000ebd1 <keymap+0x125>
c000eba3:	63 00                	arpl   WORD PTR [eax],ax
c000eba5:	76 61                	jbe    c000ec08 <__func__.883+0x10>
c000eba7:	6c                   	ins    BYTE PTR es:[edi],dx
c000eba8:	75 65                	jne    c000ec0f <__func__.883+0x17>
c000ebaa:	20 3d 3d 20 30 20    	and    BYTE PTR ds:0x2030203d,bh
c000ebb0:	7c 7c                	jl     c000ec2e <__func__.883+0x36>
c000ebb2:	20 76 61             	and    BYTE PTR [esi+0x61],dh
c000ebb5:	6c                   	ins    BYTE PTR es:[edi],dx
c000ebb6:	75 65                	jne    c000ec1d <__func__.883+0x25>
c000ebb8:	20 3d 3d 20 31 00    	and    BYTE PTR ds:0x31203d,bh
c000ebbe:	00 00                	add    BYTE PTR [eax],al
c000ebc0:	50                   	push   eax
c000ebc1:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c000ebc3:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c000ebc6:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c000ebcb:	65 6c                	gs ins BYTE PTR es:[edi],dx
c000ebcd:	20 28                	and    BYTE PTR [eax],ch
c000ebcf:	50                   	push   eax
c000ebd0:	4b                   	dec    ebx
c000ebd1:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000ebd2:	29 20                	sub    DWORD PTR [eax],esp
c000ebd4:	76 65                	jbe    c000ec3b <__func__.883+0x43>
c000ebd6:	72 73                	jb     c000ec4b <__func__.883+0x53>
c000ebd8:	69 6f 6e 20 30 2e 30 	imul   ebp,DWORD PTR [edi+0x6e],0x302e3020
c000ebdf:	2e 30 20             	xor    BYTE PTR cs:[eax],ah
c000ebe2:	74 65                	je     c000ec49 <__func__.883+0x51>
c000ebe4:	73 74                	jae    c000ec5a <__func__.883+0x62>
	...

c000ebe8 <__func__.866>:
c000ebe8:	62 69 74             	bound  ebp,QWORD PTR [ecx+0x74]
c000ebeb:	6d                   	ins    DWORD PTR es:[edi],dx
c000ebec:	61                   	popa   
c000ebed:	70 5f                	jo     c000ec4e <__func__.883+0x56>
c000ebef:	61                   	popa   
c000ebf0:	6c                   	ins    BYTE PTR es:[edi],dx
c000ebf1:	6c                   	ins    BYTE PTR es:[edi],dx
c000ebf2:	6f                   	outs   dx,DWORD PTR ds:[esi]
c000ebf3:	63 00                	arpl   WORD PTR [eax],ax
c000ebf5:	00 00                	add    BYTE PTR [eax],al
	...

c000ebf8 <__func__.883>:
c000ebf8:	62 69 74             	bound  ebp,QWORD PTR [ecx+0x74]
c000ebfb:	6d                   	ins    DWORD PTR es:[edi],dx
c000ebfc:	61                   	popa   
c000ebfd:	70 5f                	jo     c000ec5e <__func__.883+0x66>
c000ebff:	73 65                	jae    c000ec66 <__func__.883+0x6e>
c000ec01:	74 00                	je     c000ec03 <__func__.883+0xb>
c000ec03:	00 66 69             	add    BYTE PTR [esi+0x69],ah
c000ec06:	66 6f                	outs   dx,WORD PTR ds:[esi]
c000ec08:	2d 3e 74 79 70       	sub    eax,0x7079743e
c000ec0d:	65 20 3d 3d 20 38 20 	and    BYTE PTR gs:0x2038203d,bh
c000ec14:	7c 7c                	jl     c000ec92 <__func__.1096+0x2>
c000ec16:	20 66 69             	and    BYTE PTR [esi+0x69],ah
c000ec19:	66 6f                	outs   dx,WORD PTR ds:[esi]
c000ec1b:	2d 3e 74 79 70       	sub    eax,0x7079743e
c000ec20:	65 20 3d 3d 20 31 36 	and    BYTE PTR gs:0x3631203d,bh
c000ec27:	20 7c 7c 20          	and    BYTE PTR [esp+edi*2+0x20],bh
c000ec2b:	66 69 66 6f 2d 3e    	imul   sp,WORD PTR [esi+0x6f],0x3e2d
c000ec31:	74 79                	je     c000ecac <__func__.1096+0x1c>
c000ec33:	70 65                	jo     c000ec9a <__func__.1096+0xa>
c000ec35:	20 3d 3d 20 33 32    	and    BYTE PTR ds:0x3233203d,bh
c000ec3b:	20 7c 7c 20          	and    BYTE PTR [esp+edi*2+0x20],bh
c000ec3f:	66 69 66 6f 2d 3e    	imul   sp,WORD PTR [esi+0x6f],0x3e2d
c000ec45:	74 79                	je     c000ecc0 <__func__.1096+0x30>
c000ec47:	70 65                	jo     c000ecae <__func__.1096+0x1e>
c000ec49:	20 3d 3d 20 36 34    	and    BYTE PTR ds:0x3436203d,bh
c000ec4f:	00 6c 69 62          	add    BYTE PTR [ecx+ebp*2+0x62],ch
c000ec53:	2f                   	das    
c000ec54:	66 69 66 6f 2e 63    	imul   sp,WORD PTR [esi+0x6f],0x632e
c000ec5a:	00 00                	add    BYTE PTR [eax],al
c000ec5c:	50                   	push   eax
c000ec5d:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c000ec5f:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c000ec62:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c000ec67:	65 6c                	gs ins BYTE PTR es:[edi],dx
c000ec69:	20 28                	and    BYTE PTR [eax],ch
c000ec6b:	50                   	push   eax
c000ec6c:	4b                   	dec    ebx
c000ec6d:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000ec6e:	29 20                	sub    DWORD PTR [eax],esp
c000ec70:	76 65                	jbe    c000ecd7 <__func__.1096+0x47>
c000ec72:	72 73                	jb     c000ece7 <__func__.1096+0x57>
c000ec74:	69 6f 6e 20 30 2e 30 	imul   ebp,DWORD PTR [edi+0x6e],0x302e3020
c000ec7b:	2e 30 20             	xor    BYTE PTR cs:[eax],ah
c000ec7e:	74 65                	je     c000ece5 <__func__.1096+0x55>
c000ec80:	73 74                	jae    c000ecf6 <__func__.1096+0x66>
	...

c000ec84 <__func__.1085>:
c000ec84:	66 69 66 6f 5f 70    	imul   sp,WORD PTR [esi+0x6f],0x705f
c000ec8a:	75 74                	jne    c000ed00 <__func__.1096+0x70>
c000ec8c:	00 00                	add    BYTE PTR [eax],al
	...

c000ec90 <__func__.1096>:
c000ec90:	66 69 66 6f 5f 67    	imul   sp,WORD PTR [esi+0x6f],0x675f
c000ec96:	65 74 00             	gs je  c000ec99 <__func__.1096+0x9>
c000ec99:	00 00                	add    BYTE PTR [eax],al
c000ec9b:	00 50 65             	add    BYTE PTR [eax+0x65],dl
c000ec9e:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000ec9f:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c000eca2:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c000eca7:	65 6c                	gs ins BYTE PTR es:[edi],dx
c000eca9:	20 28                	and    BYTE PTR [eax],ch
c000ecab:	50                   	push   eax
c000ecac:	4b                   	dec    ebx
c000ecad:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000ecae:	29 20                	sub    DWORD PTR [eax],esp
c000ecb0:	76 65                	jbe    c000ed17 <__func__.1096+0x87>
c000ecb2:	72 73                	jb     c000ed27 <digits.979+0x3>
c000ecb4:	69 6f 6e 20 30 2e 30 	imul   ebp,DWORD PTR [edi+0x6e],0x302e3020
c000ecbb:	2e 30 20             	xor    BYTE PTR cs:[eax],ah
c000ecbe:	74 65                	je     c000ed25 <digits.979+0x1>
c000ecc0:	73 74                	jae    c000ed36 <digits.979+0x12>
c000ecc2:	00 00                	add    BYTE PTR [eax],al
c000ecc4:	01 af 00 c0 bd ae    	add    DWORD PTR [edi-0x51424000],ebp
c000ecca:	00 c0                	add    al,al
c000eccc:	bd ae 00 c0 bd       	mov    ebp,0xbdc000ae
c000ecd1:	ae                   	scas   al,BYTE PTR es:[edi]
c000ecd2:	00 c0                	add    al,al
c000ecd4:	bd ae 00 c0 bd       	mov    ebp,0xbdc000ae
c000ecd9:	ae                   	scas   al,BYTE PTR es:[edi]
c000ecda:	00 c0                	add    al,al
c000ecdc:	bd ae 00 c0 bd       	mov    ebp,0xbdc000ae
c000ece1:	ae                   	scas   al,BYTE PTR es:[edi]
c000ece2:	00 c0                	add    al,al
c000ece4:	96                   	xchg   esi,eax
c000ece5:	ae                   	scas   al,BYTE PTR es:[edi]
c000ece6:	00 c0                	add    al,al
c000ece8:	b5 ae                	mov    ch,0xae
c000ecea:	00 c0                	add    al,al
c000ecec:	a4                   	movs   BYTE PTR es:[edi],BYTE PTR ds:[esi]
c000eced:	ae                   	scas   al,BYTE PTR es:[edi]
c000ecee:	00 c0                	add    al,al
c000ecf0:	bd ae 00 c0 bd       	mov    ebp,0xbdc000ae
c000ecf5:	ae                   	scas   al,BYTE PTR es:[edi]
c000ecf6:	00 c0                	add    al,al
c000ecf8:	a4                   	movs   BYTE PTR es:[edi],BYTE PTR ds:[esi]
c000ecf9:	ae                   	scas   al,BYTE PTR es:[edi]
c000ecfa:	00 c0                	add    al,al
c000ecfc:	50                   	push   eax
c000ecfd:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c000ecff:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c000ed02:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c000ed07:	65 6c                	gs ins BYTE PTR es:[edi],dx
c000ed09:	20 28                	and    BYTE PTR [eax],ch
c000ed0b:	50                   	push   eax
c000ed0c:	4b                   	dec    ebx
c000ed0d:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000ed0e:	29 20                	sub    DWORD PTR [eax],esp
c000ed10:	76 65                	jbe    c000ed77 <digits.998+0x2b>
c000ed12:	72 73                	jb     c000ed87 <digits.998+0x3b>
c000ed14:	69 6f 6e 20 30 2e 30 	imul   ebp,DWORD PTR [edi+0x6e],0x302e3020
c000ed1b:	2e 30 20             	xor    BYTE PTR cs:[eax],ah
c000ed1e:	74 65                	je     c000ed85 <digits.998+0x39>
c000ed20:	73 74                	jae    c000ed96 <digits.998+0x4a>
	...

c000ed24 <digits.979>:
c000ed24:	30 31                	xor    BYTE PTR [ecx],dh
c000ed26:	32 33                	xor    dh,BYTE PTR [ebx]
c000ed28:	34 35                	xor    al,0x35
c000ed2a:	36 37                	ss aaa 
c000ed2c:	38 39                	cmp    BYTE PTR [ecx],bh
c000ed2e:	41                   	inc    ecx
c000ed2f:	42                   	inc    edx
c000ed30:	43                   	inc    ebx
c000ed31:	44                   	inc    esp
c000ed32:	45                   	inc    ebp
c000ed33:	46                   	inc    esi
c000ed34:	47                   	inc    edi
c000ed35:	48                   	dec    eax
c000ed36:	49                   	dec    ecx
c000ed37:	4a                   	dec    edx
c000ed38:	4b                   	dec    ebx
c000ed39:	4c                   	dec    esp
c000ed3a:	4d                   	dec    ebp
c000ed3b:	4e                   	dec    esi
c000ed3c:	4f                   	dec    edi
c000ed3d:	50                   	push   eax
c000ed3e:	51                   	push   ecx
c000ed3f:	52                   	push   edx
c000ed40:	53                   	push   ebx
c000ed41:	54                   	push   esp
c000ed42:	55                   	push   ebp
c000ed43:	56                   	push   esi
c000ed44:	57                   	push   edi
c000ed45:	58                   	pop    eax
c000ed46:	59                   	pop    ecx
c000ed47:	5a                   	pop    edx
c000ed48:	00 00                	add    BYTE PTR [eax],al
	...

c000ed4c <digits.998>:
c000ed4c:	30 31                	xor    BYTE PTR [ecx],dh
c000ed4e:	32 33                	xor    dh,BYTE PTR [ebx]
c000ed50:	34 35                	xor    al,0x35
c000ed52:	36 37                	ss aaa 
c000ed54:	38 39                	cmp    BYTE PTR [ecx],bh
c000ed56:	41                   	inc    ecx
c000ed57:	42                   	inc    edx
c000ed58:	43                   	inc    ebx
c000ed59:	44                   	inc    esp
c000ed5a:	45                   	inc    ebp
c000ed5b:	46                   	inc    esi
c000ed5c:	47                   	inc    edi
c000ed5d:	48                   	dec    eax
c000ed5e:	49                   	dec    ecx
c000ed5f:	4a                   	dec    edx
c000ed60:	4b                   	dec    ebx
c000ed61:	4c                   	dec    esp
c000ed62:	4d                   	dec    ebp
c000ed63:	4e                   	dec    esi
c000ed64:	4f                   	dec    edi
c000ed65:	50                   	push   eax
c000ed66:	51                   	push   ecx
c000ed67:	52                   	push   edx
c000ed68:	53                   	push   ebx
c000ed69:	54                   	push   esp
c000ed6a:	55                   	push   ebp
c000ed6b:	56                   	push   esi
c000ed6c:	57                   	push   edi
c000ed6d:	58                   	pop    eax
c000ed6e:	59                   	pop    ecx
c000ed6f:	5a                   	pop    edx
c000ed70:	00 00                	add    BYTE PTR [eax],al
c000ed72:	00 00                	add    BYTE PTR [eax],al
c000ed74:	64 73 74             	fs jae c000edeb <digits.998+0x9f>
c000ed77:	5f                   	pop    edi
c000ed78:	5f                   	pop    edi
c000ed79:	20 21                	and    BYTE PTR [ecx],ah
c000ed7b:	3d 20 4e 55 4c       	cmp    eax,0x4c554e20
c000ed80:	4c                   	dec    esp
c000ed81:	00 6c 69 62          	add    BYTE PTR [ecx+ebp*2+0x62],ch
c000ed85:	2f                   	das    
c000ed86:	73 74                	jae    c000edfc <__func__.850>
c000ed88:	72 69                	jb     c000edf3 <digits.998+0xa7>
c000ed8a:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000ed8b:	67 2e 63 00          	arpl   WORD PTR cs:[bx+si],ax
c000ed8f:	64 73 74             	fs jae c000ee06 <__func__.862+0x2>
c000ed92:	5f                   	pop    edi
c000ed93:	5f                   	pop    edi
c000ed94:	20 21                	and    BYTE PTR [ecx],ah
c000ed96:	3d 20 4e 55 4c       	cmp    eax,0x4c554e20
c000ed9b:	4c                   	dec    esp
c000ed9c:	20 26                	and    BYTE PTR [esi],ah
c000ed9e:	26 20 73 72          	and    BYTE PTR es:[ebx+0x72],dh
c000eda2:	63 5f 5f             	arpl   WORD PTR [edi+0x5f],bx
c000eda5:	20 21                	and    BYTE PTR [ecx],ah
c000eda7:	3d 20 4e 55 4c       	cmp    eax,0x4c554e20
c000edac:	4c                   	dec    esp
c000edad:	00 70 31             	add    BYTE PTR [eax+0x31],dh
c000edb0:	5f                   	pop    edi
c000edb1:	5f                   	pop    edi
c000edb2:	20 21                	and    BYTE PTR [ecx],ah
c000edb4:	3d 20 4e 55 4c       	cmp    eax,0x4c554e20
c000edb9:	4c                   	dec    esp
c000edba:	20 26                	and    BYTE PTR [esi],ah
c000edbc:	26 20 70 32          	and    BYTE PTR es:[eax+0x32],dh
c000edc0:	5f                   	pop    edi
c000edc1:	5f                   	pop    edi
c000edc2:	20 21                	and    BYTE PTR [ecx],ah
c000edc4:	3d 20 4e 55 4c       	cmp    eax,0x4c554e20
c000edc9:	4c                   	dec    esp
c000edca:	00 00                	add    BYTE PTR [eax],al
c000edcc:	50                   	push   eax
c000edcd:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c000edcf:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c000edd2:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c000edd7:	65 6c                	gs ins BYTE PTR es:[edi],dx
c000edd9:	20 28                	and    BYTE PTR [eax],ch
c000eddb:	50                   	push   eax
c000eddc:	4b                   	dec    ebx
c000eddd:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000edde:	29 20                	sub    DWORD PTR [eax],esp
c000ede0:	76 65                	jbe    c000ee47 <tss+0xb>
c000ede2:	72 73                	jb     c000ee57 <tss+0x1b>
c000ede4:	69 6f 6e 20 30 2e 30 	imul   ebp,DWORD PTR [edi+0x6e],0x302e3020
c000edeb:	2e 30 20             	xor    BYTE PTR cs:[eax],ah
c000edee:	74 65                	je     c000ee55 <tss+0x19>
c000edf0:	73 74                	jae    c000ee66 <tss+0x2a>
	...

c000edf4 <__func__.839>:
c000edf4:	6d                   	ins    DWORD PTR es:[edi],dx
c000edf5:	65 6d                	gs ins DWORD PTR es:[edi],dx
c000edf7:	73 65                	jae    c000ee5e <tss+0x22>
c000edf9:	74 00                	je     c000edfb <__func__.839+0x7>
	...

c000edfc <__func__.850>:
c000edfc:	6d                   	ins    DWORD PTR es:[edi],dx
c000edfd:	65 6d                	gs ins DWORD PTR es:[edi],dx
c000edff:	63 70 79             	arpl   WORD PTR [eax+0x79],si
	...

c000ee04 <__func__.862>:
c000ee04:	6d                   	ins    DWORD PTR es:[edi],dx
c000ee05:	65 6d                	gs ins DWORD PTR es:[edi],dx
c000ee07:	63 6d 70             	arpl   WORD PTR [ebp+0x70],bp
c000ee0a:	00 00                	add    BYTE PTR [eax],al
c000ee0c:	50                   	push   eax
c000ee0d:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c000ee0f:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c000ee12:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c000ee17:	65 6c                	gs ins BYTE PTR es:[edi],dx
c000ee19:	20 28                	and    BYTE PTR [eax],ch
c000ee1b:	50                   	push   eax
c000ee1c:	4b                   	dec    ebx
c000ee1d:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000ee1e:	29 20                	sub    DWORD PTR [eax],esp
c000ee20:	76 65                	jbe    c000ee87 <tss+0x4b>
c000ee22:	72 73                	jb     c000ee97 <tss+0x5b>
c000ee24:	69 6f 6e 20 30 2e 30 	imul   ebp,DWORD PTR [edi+0x6e],0x302e3020
c000ee2b:	2e 30 20             	xor    BYTE PTR cs:[eax],ah
c000ee2e:	74 65                	je     c000ee95 <tss+0x59>
c000ee30:	73 74                	jae    c000eea6 <tss+0x6a>
	...

Disassembly of section .bss:

c000ee34 <_bss>:
c000ee34:	00 00                	add    BYTE PTR [eax],al
	...

c000ee38 <this_thread_tag>:
c000ee38:	00 00                	add    BYTE PTR [eax],al
	...

c000ee3c <tss>:
	...

c000eea8 <console_lock>:
	...

c000eecc <buf>:
	...

c000ef0c <shift_status>:
c000ef0c:	00 00                	add    BYTE PTR [eax],al
	...

c000ef10 <casplock_status>:
c000ef10:	00 00                	add    BYTE PTR [eax],al
	...

c000ef14 <ext_scandcode>:
c000ef14:	00 00                	add    BYTE PTR [eax],al
	...

c000ef18 <ctrl_status>:
c000ef18:	00 00                	add    BYTE PTR [eax],al
	...

c000ef1c <alt_status>:
c000ef1c:	00 00                	add    BYTE PTR [eax],al
	...

c000ef20 <i>:
c000ef20:	00 00                	add    BYTE PTR [eax],al
	...

c000ef24 <ticks>:
c000ef24:	00 00                	add    BYTE PTR [eax],al
	...

c000ef28 <_ebss>:
	...

c000efe4 <idt>:
	...

c000f15c <idt_table>:
	...

c000f218 <kvinfo>:
	...

c0016f18 <user_pool>:
	...

c0016f50 <user_vaddr>:
	...

c0016f88 <kernel_vaddr>:
	...

c0016fc0 <upinfo>:
	...

c001ecc0 <kpinfo>:
	...

c00269c0 <uvinfo>:
	...

c002e6c0 <kernel_pool>:
	...

c002e6f8 <ready_list>:
	...

c002e710 <all_list>:
	...

c002e728 <main_thread>:
c002e728:	00 00                	add    BYTE PTR [eax],al
	...

c002e72c <keybuf>:
	...

c002e770 <Screen>:
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
