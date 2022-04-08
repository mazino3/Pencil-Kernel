
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
c0007f1a:	e9 0a 02 00 00       	jmp    c0008129 <kernel_main>
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

c0008129 <kernel_main>:
c0008129:	55                   	push   ebp
c000812a:	89 e5                	mov    ebp,esp
c000812c:	53                   	push   ebx
c000812d:	53                   	push   ebx
c000812e:	bb 23 00 00 00       	mov    ebx,0x23
c0008133:	51                   	push   ecx
c0008134:	51                   	push   ecx
c0008135:	6a 0a                	push   0xa
c0008137:	6a 07                	push   0x7
c0008139:	e8 f6 2c 00 00       	call   c000ae34 <put_char>
c000813e:	83 c4 10             	add    esp,0x10
c0008141:	4b                   	dec    ebx
c0008142:	75 ef                	jne    c0008133 <kernel_main+0xa>
c0008144:	83 ec 0c             	sub    esp,0xc
c0008147:	6a 00                	push   0x0
c0008149:	e8 bf 2c 00 00       	call   c000ae0d <set_cursor>
c000814e:	e8 b9 03 00 00       	call   c000850c <init_all>
c0008153:	e8 11 10 00 00       	call   c0009169 <intr_enable>
c0008158:	58                   	pop    eax
c0008159:	5a                   	pop    edx
c000815a:	68 dc df 00 c0       	push   0xc000dfdc
c000815f:	6a 07                	push   0x7
c0008161:	e8 fd 21 00 00       	call   c000a363 <console_str>
c0008166:	59                   	pop    ecx
c0008167:	5b                   	pop    ebx
c0008168:	68 05 e0 00 c0       	push   0xc000e005
c000816d:	6a 07                	push   0x7
c000816f:	e8 ef 21 00 00       	call   c000a363 <console_str>
c0008174:	e8 09 23 00 00       	call   c000a482 <cpu_info>
c0008179:	58                   	pop    eax
c000817a:	5a                   	pop    edx
c000817b:	6a 0a                	push   0xa
c000817d:	6a 07                	push   0x7
c000817f:	e8 a1 21 00 00       	call   c000a325 <console_char>
c0008184:	59                   	pop    ecx
c0008185:	5b                   	pop    ebx
c0008186:	68 0e e0 00 c0       	push   0xc000e00e
c000818b:	6a 07                	push   0x7
c000818d:	e8 d1 21 00 00       	call   c000a363 <console_str>
c0008192:	83 c4 0c             	add    esp,0xc
c0008195:	6a 0a                	push   0xa
c0008197:	a1 08 7c 00 00       	mov    eax,ds:0x7c08
c000819c:	c1 e8 14             	shr    eax,0x14
c000819f:	50                   	push   eax
c00081a0:	6a 07                	push   0x7
c00081a2:	e8 f5 21 00 00       	call   c000a39c <console_int>
c00081a7:	58                   	pop    eax
c00081a8:	5a                   	pop    edx
c00081a9:	68 17 e0 00 c0       	push   0xc000e017
c00081ae:	6a 07                	push   0x7
c00081b0:	e8 ae 21 00 00       	call   c000a363 <console_str>
c00081b5:	83 c4 0c             	add    esp,0xc
c00081b8:	6a 0a                	push   0xa
c00081ba:	a1 08 7c 00 00       	mov    eax,ds:0x7c08
c00081bf:	c1 e8 0a             	shr    eax,0xa
c00081c2:	50                   	push   eax
c00081c3:	6a 07                	push   0x7
c00081c5:	e8 d2 21 00 00       	call   c000a39c <console_int>
c00081ca:	59                   	pop    ecx
c00081cb:	5b                   	pop    ebx
c00081cc:	68 1d e0 00 c0       	push   0xc000e01d
c00081d1:	6a 07                	push   0x7
c00081d3:	e8 fd 2c 00 00       	call   c000aed5 <put_str>
c00081d8:	58                   	pop    eax
c00081d9:	5a                   	pop    edx
c00081da:	6a 0a                	push   0xa
c00081dc:	6a 07                	push   0x7
c00081de:	e8 51 2c 00 00       	call   c000ae34 <put_char>
c00081e3:	59                   	pop    ecx
c00081e4:	5b                   	pop    ebx
c00081e5:	68 23 e0 00 c0       	push   0xc000e023
c00081ea:	6a 07                	push   0x7
c00081ec:	e8 72 21 00 00       	call   c000a363 <console_str>
c00081f1:	83 c4 0c             	add    esp,0xc
c00081f4:	6a 0a                	push   0xa
c00081f6:	ff 35 10 7c 00 00    	push   DWORD PTR ds:0x7c10
c00081fc:	6a 07                	push   0x7
c00081fe:	e8 99 21 00 00       	call   c000a39c <console_int>
c0008203:	58                   	pop    eax
c0008204:	5a                   	pop    edx
c0008205:	6a 0a                	push   0xa
c0008207:	6a 07                	push   0x7
c0008209:	e8 17 21 00 00       	call   c000a325 <console_char>
c000820e:	c7 04 24 2c e0 00 c0 	mov    DWORD PTR [esp],0xc000e02c
c0008215:	68 ff ff ff 00       	push   0xffffff
c000821a:	6a 14                	push   0x14
c000821c:	6a 14                	push   0x14
c000821e:	68 0c e7 02 c0       	push   0xc002e70c
c0008223:	e8 2a 30 00 00       	call   c000b252 <put_str_graphic>
c0008228:	83 c4 18             	add    esp,0x18
c000822b:	68 53 e0 00 c0       	push   0xc000e053
c0008230:	68 24 81 00 c0       	push   0xc0008124
c0008235:	e8 c2 1f 00 00       	call   c000a1fc <process_execute>
c000823a:	83 c4 10             	add    esp,0x10
c000823d:	eb fe                	jmp    c000823d <kernel_main+0x114>

c000823f <k_thread_a>:
c000823f:	55                   	push   ebp
c0008240:	89 e5                	mov    ebp,esp
c0008242:	57                   	push   edi
c0008243:	56                   	push   esi
c0008244:	53                   	push   ebx
c0008245:	83 ec 38             	sub    esp,0x38
c0008248:	8b 35 24 7c 00 00    	mov    esi,DWORD PTR ds:0x7c24
c000824e:	8d 7d c8             	lea    edi,[ebp-0x38]
c0008251:	57                   	push   edi
c0008252:	e8 71 24 00 00       	call   c000a6c8 <get_time>
c0008257:	8d 5d e2             	lea    ebx,[ebp-0x1e]
c000825a:	83 c4 10             	add    esp,0x10
c000825d:	83 ee 22             	sub    esi,0x22
c0008260:	8b 15 24 7c 00 00    	mov    edx,DWORD PTR ds:0x7c24
c0008266:	a1 20 7c 00 00       	mov    eax,ds:0x7c20
c000826b:	51                   	push   ecx
c000826c:	8b 7d cc             	mov    edi,DWORD PTR [ebp-0x34]
c000826f:	51                   	push   ecx
c0008270:	8d 4a f8             	lea    ecx,[edx-0x8]
c0008273:	83 ea 26             	sub    edx,0x26
c0008276:	51                   	push   ecx
c0008277:	8d 48 f9             	lea    ecx,[eax-0x7]
c000827a:	2d b3 00 00 00       	sub    eax,0xb3
c000827f:	51                   	push   ecx
c0008280:	52                   	push   edx
c0008281:	50                   	push   eax
c0008282:	68 84 84 84 00       	push   0x848484
c0008287:	68 0c e7 02 c0       	push   0xc002e70c
c000828c:	e8 d3 2d 00 00       	call   c000b064 <RectangleFill>
c0008291:	8b 15 24 7c 00 00    	mov    edx,DWORD PTR ds:0x7c24
c0008297:	83 c4 18             	add    esp,0x18
c000829a:	a1 20 7c 00 00       	mov    eax,ds:0x7c20
c000829f:	8d 4a f5             	lea    ecx,[edx-0xb]
c00082a2:	83 ea 29             	sub    edx,0x29
c00082a5:	51                   	push   ecx
c00082a6:	8d 48 f6             	lea    ecx,[eax-0xa]
c00082a9:	2d b6 00 00 00       	sub    eax,0xb6
c00082ae:	51                   	push   ecx
c00082af:	52                   	push   edx
c00082b0:	50                   	push   eax
c00082b1:	68 ff ff ff 00       	push   0xffffff
c00082b6:	68 0c e7 02 c0       	push   0xc002e70c
c00082bb:	e8 a4 2d 00 00       	call   c000b064 <RectangleFill>
c00082c0:	83 c4 1c             	add    esp,0x1c
c00082c3:	6a 10                	push   0x10
c00082c5:	53                   	push   ebx
c00082c6:	ff 75 dc             	push   DWORD PTR [ebp-0x24]
c00082c9:	e8 32 2a 00 00       	call   c000ad00 <itoa>
c00082ce:	89 1c 24             	mov    DWORD PTR [esp],ebx
c00082d1:	6a 00                	push   0x0
c00082d3:	56                   	push   esi
c00082d4:	a1 20 7c 00 00       	mov    eax,ds:0x7c20
c00082d9:	2d ac 00 00 00       	sub    eax,0xac
c00082de:	50                   	push   eax
c00082df:	68 0c e7 02 c0       	push   0xc002e70c
c00082e4:	e8 69 2f 00 00       	call   c000b252 <put_str_graphic>
c00082e9:	83 c4 14             	add    esp,0x14
c00082ec:	6a 2f                	push   0x2f
c00082ee:	6a 00                	push   0x0
c00082f0:	56                   	push   esi
c00082f1:	a1 20 7c 00 00       	mov    eax,ds:0x7c20
c00082f6:	2d 84 00 00 00       	sub    eax,0x84
c00082fb:	50                   	push   eax
c00082fc:	68 0c e7 02 c0       	push   0xc002e70c
c0008301:	e8 c8 2e 00 00       	call   c000b1ce <put_char_graphic>
c0008306:	83 c4 1c             	add    esp,0x1c
c0008309:	6a 10                	push   0x10
c000830b:	53                   	push   ebx
c000830c:	ff 75 d8             	push   DWORD PTR [ebp-0x28]
c000830f:	e8 ec 29 00 00       	call   c000ad00 <itoa>
c0008314:	89 1c 24             	mov    DWORD PTR [esp],ebx
c0008317:	6a 00                	push   0x0
c0008319:	56                   	push   esi
c000831a:	a1 20 7c 00 00       	mov    eax,ds:0x7c20
c000831f:	83 e8 7a             	sub    eax,0x7a
c0008322:	50                   	push   eax
c0008323:	68 0c e7 02 c0       	push   0xc002e70c
c0008328:	e8 25 2f 00 00       	call   c000b252 <put_str_graphic>
c000832d:	83 c4 14             	add    esp,0x14
c0008330:	6a 2f                	push   0x2f
c0008332:	6a 00                	push   0x0
c0008334:	56                   	push   esi
c0008335:	a1 20 7c 00 00       	mov    eax,ds:0x7c20
c000833a:	83 e8 66             	sub    eax,0x66
c000833d:	50                   	push   eax
c000833e:	68 0c e7 02 c0       	push   0xc002e70c
c0008343:	e8 86 2e 00 00       	call   c000b1ce <put_char_graphic>
c0008348:	83 c4 1c             	add    esp,0x1c
c000834b:	6a 10                	push   0x10
c000834d:	53                   	push   ebx
c000834e:	ff 75 d4             	push   DWORD PTR [ebp-0x2c]
c0008351:	e8 aa 29 00 00       	call   c000ad00 <itoa>
c0008356:	89 1c 24             	mov    DWORD PTR [esp],ebx
c0008359:	6a 00                	push   0x0
c000835b:	56                   	push   esi
c000835c:	a1 20 7c 00 00       	mov    eax,ds:0x7c20
c0008361:	83 e8 5c             	sub    eax,0x5c
c0008364:	50                   	push   eax
c0008365:	68 0c e7 02 c0       	push   0xc002e70c
c000836a:	e8 e3 2e 00 00       	call   c000b252 <put_str_graphic>
c000836f:	83 c4 14             	add    esp,0x14
c0008372:	6a 7c                	push   0x7c
c0008374:	6a 00                	push   0x0
c0008376:	56                   	push   esi
c0008377:	a1 20 7c 00 00       	mov    eax,ds:0x7c20
c000837c:	83 e8 48             	sub    eax,0x48
c000837f:	50                   	push   eax
c0008380:	68 0c e7 02 c0       	push   0xc002e70c
c0008385:	e8 44 2e 00 00       	call   c000b1ce <put_char_graphic>
c000838a:	83 c4 1c             	add    esp,0x1c
c000838d:	6a 10                	push   0x10
c000838f:	53                   	push   ebx
c0008390:	ff 75 d0             	push   DWORD PTR [ebp-0x30]
c0008393:	e8 68 29 00 00       	call   c000ad00 <itoa>
c0008398:	89 1c 24             	mov    DWORD PTR [esp],ebx
c000839b:	6a 00                	push   0x0
c000839d:	56                   	push   esi
c000839e:	a1 20 7c 00 00       	mov    eax,ds:0x7c20
c00083a3:	83 e8 3e             	sub    eax,0x3e
c00083a6:	50                   	push   eax
c00083a7:	68 0c e7 02 c0       	push   0xc002e70c
c00083ac:	e8 a1 2e 00 00       	call   c000b252 <put_str_graphic>
c00083b1:	83 c4 14             	add    esp,0x14
c00083b4:	6a 3a                	push   0x3a
c00083b6:	6a 00                	push   0x0
c00083b8:	56                   	push   esi
c00083b9:	a1 20 7c 00 00       	mov    eax,ds:0x7c20
c00083be:	83 e8 2a             	sub    eax,0x2a
c00083c1:	50                   	push   eax
c00083c2:	68 0c e7 02 c0       	push   0xc002e70c
c00083c7:	e8 02 2e 00 00       	call   c000b1ce <put_char_graphic>
c00083cc:	83 c4 1c             	add    esp,0x1c
c00083cf:	6a 10                	push   0x10
c00083d1:	53                   	push   ebx
c00083d2:	ff 75 cc             	push   DWORD PTR [ebp-0x34]
c00083d5:	e8 26 29 00 00       	call   c000ad00 <itoa>
c00083da:	89 1c 24             	mov    DWORD PTR [esp],ebx
c00083dd:	6a 00                	push   0x0
c00083df:	56                   	push   esi
c00083e0:	a1 20 7c 00 00       	mov    eax,ds:0x7c20
c00083e5:	83 e8 20             	sub    eax,0x20
c00083e8:	50                   	push   eax
c00083e9:	68 0c e7 02 c0       	push   0xc002e70c
c00083ee:	e8 5f 2e 00 00       	call   c000b252 <put_str_graphic>
c00083f3:	83 c4 20             	add    esp,0x20
c00083f6:	eb 0f                	jmp    c0008407 <k_thread_a+0x1c8>
c00083f8:	83 ec 0c             	sub    esp,0xc
c00083fb:	8d 45 c8             	lea    eax,[ebp-0x38]
c00083fe:	50                   	push   eax
c00083ff:	e8 c4 22 00 00       	call   c000a6c8 <get_time>
c0008404:	83 c4 10             	add    esp,0x10
c0008407:	39 7d cc             	cmp    DWORD PTR [ebp-0x34],edi
c000840a:	74 ec                	je     c00083f8 <k_thread_a+0x1b9>
c000840c:	e9 4f fe ff ff       	jmp    c0008260 <k_thread_a+0x21>

c0008411 <k_thread_b>:
c0008411:	55                   	push   ebp
c0008412:	89 e5                	mov    ebp,esp
c0008414:	53                   	push   ebx
c0008415:	83 ec 1c             	sub    esp,0x1c
c0008418:	68 5d e0 00 c0       	push   0xc000e05d
c000841d:	6a 07                	push   0x7
c000841f:	e8 3f 1f 00 00       	call   c000a363 <console_str>
c0008424:	8d 5d f7             	lea    ebx,[ebp-0x9]
c0008427:	83 c4 10             	add    esp,0x10
c000842a:	83 ec 0c             	sub    esp,0xc
c000842d:	68 c8 e6 02 c0       	push   0xc002e6c8
c0008432:	e8 59 27 00 00       	call   c000ab90 <fifo_empty>
c0008437:	83 c4 10             	add    esp,0x10
c000843a:	85 c0                	test   eax,eax
c000843c:	75 ec                	jne    c000842a <k_thread_b+0x19>
c000843e:	50                   	push   eax
c000843f:	50                   	push   eax
c0008440:	53                   	push   ebx
c0008441:	68 c8 e6 02 c0       	push   0xc002e6c8
c0008446:	e8 44 26 00 00       	call   c000aa8f <fifo_get>
c000844b:	58                   	pop    eax
c000844c:	0f be 45 f7          	movsx  eax,BYTE PTR [ebp-0x9]
c0008450:	5a                   	pop    edx
c0008451:	50                   	push   eax
c0008452:	6a 07                	push   0x7
c0008454:	e8 cc 1e 00 00       	call   c000a325 <console_char>
c0008459:	83 c4 10             	add    esp,0x10
c000845c:	eb cc                	jmp    c000842a <k_thread_b+0x19>
	...

c0008460 <panic_spin>:
c0008460:	55                   	push   ebp
c0008461:	89 e5                	mov    ebp,esp
c0008463:	83 ec 08             	sub    esp,0x8
c0008466:	e8 2e 0c 00 00       	call   c0009099 <intr_disable>
c000846b:	52                   	push   edx
c000846c:	52                   	push   edx
c000846d:	68 90 e0 00 c0       	push   0xc000e090
c0008472:	6a 04                	push   0x4
c0008474:	e8 5c 2a 00 00       	call   c000aed5 <put_str>
c0008479:	59                   	pop    ecx
c000847a:	58                   	pop    eax
c000847b:	68 98 e0 00 c0       	push   0xc000e098
c0008480:	6a 04                	push   0x4
c0008482:	e8 4e 2a 00 00       	call   c000aed5 <put_str>
c0008487:	58                   	pop    eax
c0008488:	5a                   	pop    edx
c0008489:	ff 75 08             	push   DWORD PTR [ebp+0x8]
c000848c:	6a 04                	push   0x4
c000848e:	e8 42 2a 00 00       	call   c000aed5 <put_str>
c0008493:	59                   	pop    ecx
c0008494:	58                   	pop    eax
c0008495:	6a 0a                	push   0xa
c0008497:	6a 04                	push   0x4
c0008499:	e8 96 29 00 00       	call   c000ae34 <put_char>
c000849e:	58                   	pop    eax
c000849f:	5a                   	pop    edx
c00084a0:	68 a7 e0 00 c0       	push   0xc000e0a7
c00084a5:	6a 04                	push   0x4
c00084a7:	e8 29 2a 00 00       	call   c000aed5 <put_str>
c00084ac:	59                   	pop    ecx
c00084ad:	58                   	pop    eax
c00084ae:	ff 75 10             	push   DWORD PTR [ebp+0x10]
c00084b1:	6a 04                	push   0x4
c00084b3:	e8 1d 2a 00 00       	call   c000aed5 <put_str>
c00084b8:	58                   	pop    eax
c00084b9:	5a                   	pop    edx
c00084ba:	6a 0a                	push   0xa
c00084bc:	6a 04                	push   0x4
c00084be:	e8 71 29 00 00       	call   c000ae34 <put_char>
c00084c3:	59                   	pop    ecx
c00084c4:	58                   	pop    eax
c00084c5:	68 b6 e0 00 c0       	push   0xc000e0b6
c00084ca:	6a 04                	push   0x4
c00084cc:	e8 04 2a 00 00       	call   c000aed5 <put_str>
c00084d1:	83 c4 0c             	add    esp,0xc
c00084d4:	6a 0a                	push   0xa
c00084d6:	ff 75 0c             	push   DWORD PTR [ebp+0xc]
c00084d9:	6a 04                	push   0x4
c00084db:	e8 57 2a 00 00       	call   c000af37 <put_int>
c00084e0:	58                   	pop    eax
c00084e1:	5a                   	pop    edx
c00084e2:	6a 0a                	push   0xa
c00084e4:	6a 04                	push   0x4
c00084e6:	e8 49 29 00 00       	call   c000ae34 <put_char>
c00084eb:	59                   	pop    ecx
c00084ec:	58                   	pop    eax
c00084ed:	68 c5 e0 00 c0       	push   0xc000e0c5
c00084f2:	6a 04                	push   0x4
c00084f4:	e8 dc 29 00 00       	call   c000aed5 <put_str>
c00084f9:	58                   	pop    eax
c00084fa:	5a                   	pop    edx
c00084fb:	ff 75 14             	push   DWORD PTR [ebp+0x14]
c00084fe:	6a 04                	push   0x4
c0008500:	e8 d0 29 00 00       	call   c000aed5 <put_str>
c0008505:	83 c4 10             	add    esp,0x10
c0008508:	eb fe                	jmp    c0008508 <panic_spin+0xa8>
	...

c000850c <init_all>:
c000850c:	55                   	push   ebp
c000850d:	89 e5                	mov    ebp,esp
c000850f:	83 ec 10             	sub    esp,0x10
c0008512:	68 fc e0 00 c0       	push   0xc000e0fc
c0008517:	6a 02                	push   0x2
c0008519:	e8 b7 29 00 00       	call   c000aed5 <put_str>
c000851e:	e8 34 0b 00 00       	call   c0009057 <init_idt>
c0008523:	e8 4a 1a 00 00       	call   c0009f72 <init_tss>
c0008528:	e8 47 22 00 00       	call   c000a774 <init_pit>
c000852d:	e8 10 0f 00 00       	call   c0009442 <init_memory>
c0008532:	e8 b1 1f 00 00       	call   c000a4e8 <init_keyboard>
c0008537:	e8 66 16 00 00       	call   c0009ba2 <init_thread>
c000853c:	e8 cf 1d 00 00       	call   c000a310 <init_console>
c0008541:	c7 04 24 0c e7 02 c0 	mov    DWORD PTR [esp],0xc002e70c
c0008548:	e8 89 2b 00 00       	call   c000b0d6 <init_screen>
c000854d:	58                   	pop    eax
c000854e:	5a                   	pop    edx
c000854f:	68 08 e1 00 c0       	push   0xc000e108
c0008554:	6a 02                	push   0x2
c0008556:	e8 7a 29 00 00       	call   c000aed5 <put_str>
c000855b:	83 c4 10             	add    esp,0x10
c000855e:	c9                   	leave  
c000855f:	c3                   	ret    

c0008560 <asm_intr0x00_handler>:
c0008560:	68 00 00 00 00       	push   0x0
c0008565:	1e                   	push   ds
c0008566:	06                   	push   es
c0008567:	0f a0                	push   fs
c0008569:	0f a8                	push   gs
c000856b:	60                   	pusha  
c000856c:	68 00 00 00 00       	push   0x0
c0008571:	66 8c d0             	mov    ax,ss
c0008574:	8e d8                	mov    ds,eax
c0008576:	8e c0                	mov    es,eax
c0008578:	ff 15 f8 f0 00 c0    	call   DWORD PTR ds:0xc000f0f8
c000857e:	81 c4 04 00 00 00    	add    esp,0x4
c0008584:	61                   	popa   
c0008585:	0f a9                	pop    gs
c0008587:	0f a1                	pop    fs
c0008589:	07                   	pop    es
c000858a:	1f                   	pop    ds
c000858b:	81 c4 04 00 00 00    	add    esp,0x4
c0008591:	cf                   	iret   

c0008592 <asm_intr0x01_handler>:
c0008592:	68 00 00 00 00       	push   0x0
c0008597:	1e                   	push   ds
c0008598:	06                   	push   es
c0008599:	0f a0                	push   fs
c000859b:	0f a8                	push   gs
c000859d:	60                   	pusha  
c000859e:	68 01 00 00 00       	push   0x1
c00085a3:	66 8c d0             	mov    ax,ss
c00085a6:	8e d8                	mov    ds,eax
c00085a8:	8e c0                	mov    es,eax
c00085aa:	ff 15 fc f0 00 c0    	call   DWORD PTR ds:0xc000f0fc
c00085b0:	81 c4 04 00 00 00    	add    esp,0x4
c00085b6:	61                   	popa   
c00085b7:	0f a9                	pop    gs
c00085b9:	0f a1                	pop    fs
c00085bb:	07                   	pop    es
c00085bc:	1f                   	pop    ds
c00085bd:	81 c4 04 00 00 00    	add    esp,0x4
c00085c3:	cf                   	iret   

c00085c4 <asm_intr0x02_handler>:
c00085c4:	68 00 00 00 00       	push   0x0
c00085c9:	1e                   	push   ds
c00085ca:	06                   	push   es
c00085cb:	0f a0                	push   fs
c00085cd:	0f a8                	push   gs
c00085cf:	60                   	pusha  
c00085d0:	68 02 00 00 00       	push   0x2
c00085d5:	66 8c d0             	mov    ax,ss
c00085d8:	8e d8                	mov    ds,eax
c00085da:	8e c0                	mov    es,eax
c00085dc:	ff 15 00 f1 00 c0    	call   DWORD PTR ds:0xc000f100
c00085e2:	81 c4 04 00 00 00    	add    esp,0x4
c00085e8:	61                   	popa   
c00085e9:	0f a9                	pop    gs
c00085eb:	0f a1                	pop    fs
c00085ed:	07                   	pop    es
c00085ee:	1f                   	pop    ds
c00085ef:	81 c4 04 00 00 00    	add    esp,0x4
c00085f5:	cf                   	iret   

c00085f6 <asm_intr0x03_handler>:
c00085f6:	68 00 00 00 00       	push   0x0
c00085fb:	1e                   	push   ds
c00085fc:	06                   	push   es
c00085fd:	0f a0                	push   fs
c00085ff:	0f a8                	push   gs
c0008601:	60                   	pusha  
c0008602:	68 03 00 00 00       	push   0x3
c0008607:	66 8c d0             	mov    ax,ss
c000860a:	8e d8                	mov    ds,eax
c000860c:	8e c0                	mov    es,eax
c000860e:	ff 15 04 f1 00 c0    	call   DWORD PTR ds:0xc000f104
c0008614:	81 c4 04 00 00 00    	add    esp,0x4
c000861a:	61                   	popa   
c000861b:	0f a9                	pop    gs
c000861d:	0f a1                	pop    fs
c000861f:	07                   	pop    es
c0008620:	1f                   	pop    ds
c0008621:	81 c4 04 00 00 00    	add    esp,0x4
c0008627:	cf                   	iret   

c0008628 <asm_intr0x04_handler>:
c0008628:	68 00 00 00 00       	push   0x0
c000862d:	1e                   	push   ds
c000862e:	06                   	push   es
c000862f:	0f a0                	push   fs
c0008631:	0f a8                	push   gs
c0008633:	60                   	pusha  
c0008634:	68 04 00 00 00       	push   0x4
c0008639:	66 8c d0             	mov    ax,ss
c000863c:	8e d8                	mov    ds,eax
c000863e:	8e c0                	mov    es,eax
c0008640:	ff 15 08 f1 00 c0    	call   DWORD PTR ds:0xc000f108
c0008646:	81 c4 04 00 00 00    	add    esp,0x4
c000864c:	61                   	popa   
c000864d:	0f a9                	pop    gs
c000864f:	0f a1                	pop    fs
c0008651:	07                   	pop    es
c0008652:	1f                   	pop    ds
c0008653:	81 c4 04 00 00 00    	add    esp,0x4
c0008659:	cf                   	iret   

c000865a <asm_intr0x05_handler>:
c000865a:	68 00 00 00 00       	push   0x0
c000865f:	1e                   	push   ds
c0008660:	06                   	push   es
c0008661:	0f a0                	push   fs
c0008663:	0f a8                	push   gs
c0008665:	60                   	pusha  
c0008666:	68 05 00 00 00       	push   0x5
c000866b:	66 8c d0             	mov    ax,ss
c000866e:	8e d8                	mov    ds,eax
c0008670:	8e c0                	mov    es,eax
c0008672:	ff 15 0c f1 00 c0    	call   DWORD PTR ds:0xc000f10c
c0008678:	81 c4 04 00 00 00    	add    esp,0x4
c000867e:	61                   	popa   
c000867f:	0f a9                	pop    gs
c0008681:	0f a1                	pop    fs
c0008683:	07                   	pop    es
c0008684:	1f                   	pop    ds
c0008685:	81 c4 04 00 00 00    	add    esp,0x4
c000868b:	cf                   	iret   

c000868c <asm_intr0x06_handler>:
c000868c:	68 00 00 00 00       	push   0x0
c0008691:	1e                   	push   ds
c0008692:	06                   	push   es
c0008693:	0f a0                	push   fs
c0008695:	0f a8                	push   gs
c0008697:	60                   	pusha  
c0008698:	68 06 00 00 00       	push   0x6
c000869d:	66 8c d0             	mov    ax,ss
c00086a0:	8e d8                	mov    ds,eax
c00086a2:	8e c0                	mov    es,eax
c00086a4:	ff 15 10 f1 00 c0    	call   DWORD PTR ds:0xc000f110
c00086aa:	81 c4 04 00 00 00    	add    esp,0x4
c00086b0:	61                   	popa   
c00086b1:	0f a9                	pop    gs
c00086b3:	0f a1                	pop    fs
c00086b5:	07                   	pop    es
c00086b6:	1f                   	pop    ds
c00086b7:	81 c4 04 00 00 00    	add    esp,0x4
c00086bd:	cf                   	iret   

c00086be <asm_intr0x07_handler>:
c00086be:	68 00 00 00 00       	push   0x0
c00086c3:	1e                   	push   ds
c00086c4:	06                   	push   es
c00086c5:	0f a0                	push   fs
c00086c7:	0f a8                	push   gs
c00086c9:	60                   	pusha  
c00086ca:	68 07 00 00 00       	push   0x7
c00086cf:	66 8c d0             	mov    ax,ss
c00086d2:	8e d8                	mov    ds,eax
c00086d4:	8e c0                	mov    es,eax
c00086d6:	ff 15 14 f1 00 c0    	call   DWORD PTR ds:0xc000f114
c00086dc:	81 c4 04 00 00 00    	add    esp,0x4
c00086e2:	61                   	popa   
c00086e3:	0f a9                	pop    gs
c00086e5:	0f a1                	pop    fs
c00086e7:	07                   	pop    es
c00086e8:	1f                   	pop    ds
c00086e9:	81 c4 04 00 00 00    	add    esp,0x4
c00086ef:	cf                   	iret   

c00086f0 <asm_intr0x08_handler>:
c00086f0:	90                   	nop
c00086f1:	1e                   	push   ds
c00086f2:	06                   	push   es
c00086f3:	0f a0                	push   fs
c00086f5:	0f a8                	push   gs
c00086f7:	60                   	pusha  
c00086f8:	68 08 00 00 00       	push   0x8
c00086fd:	66 8c d0             	mov    ax,ss
c0008700:	8e d8                	mov    ds,eax
c0008702:	8e c0                	mov    es,eax
c0008704:	ff 15 18 f1 00 c0    	call   DWORD PTR ds:0xc000f118
c000870a:	81 c4 04 00 00 00    	add    esp,0x4
c0008710:	61                   	popa   
c0008711:	0f a9                	pop    gs
c0008713:	0f a1                	pop    fs
c0008715:	07                   	pop    es
c0008716:	1f                   	pop    ds
c0008717:	81 c4 04 00 00 00    	add    esp,0x4
c000871d:	cf                   	iret   

c000871e <asm_intr0x09_handler>:
c000871e:	68 00 00 00 00       	push   0x0
c0008723:	1e                   	push   ds
c0008724:	06                   	push   es
c0008725:	0f a0                	push   fs
c0008727:	0f a8                	push   gs
c0008729:	60                   	pusha  
c000872a:	68 09 00 00 00       	push   0x9
c000872f:	66 8c d0             	mov    ax,ss
c0008732:	8e d8                	mov    ds,eax
c0008734:	8e c0                	mov    es,eax
c0008736:	ff 15 1c f1 00 c0    	call   DWORD PTR ds:0xc000f11c
c000873c:	81 c4 04 00 00 00    	add    esp,0x4
c0008742:	61                   	popa   
c0008743:	0f a9                	pop    gs
c0008745:	0f a1                	pop    fs
c0008747:	07                   	pop    es
c0008748:	1f                   	pop    ds
c0008749:	81 c4 04 00 00 00    	add    esp,0x4
c000874f:	cf                   	iret   

c0008750 <asm_intr0x0a_handler>:
c0008750:	90                   	nop
c0008751:	1e                   	push   ds
c0008752:	06                   	push   es
c0008753:	0f a0                	push   fs
c0008755:	0f a8                	push   gs
c0008757:	60                   	pusha  
c0008758:	68 0a 00 00 00       	push   0xa
c000875d:	66 8c d0             	mov    ax,ss
c0008760:	8e d8                	mov    ds,eax
c0008762:	8e c0                	mov    es,eax
c0008764:	ff 15 20 f1 00 c0    	call   DWORD PTR ds:0xc000f120
c000876a:	81 c4 04 00 00 00    	add    esp,0x4
c0008770:	61                   	popa   
c0008771:	0f a9                	pop    gs
c0008773:	0f a1                	pop    fs
c0008775:	07                   	pop    es
c0008776:	1f                   	pop    ds
c0008777:	81 c4 04 00 00 00    	add    esp,0x4
c000877d:	cf                   	iret   

c000877e <asm_intr0x0b_handler>:
c000877e:	90                   	nop
c000877f:	1e                   	push   ds
c0008780:	06                   	push   es
c0008781:	0f a0                	push   fs
c0008783:	0f a8                	push   gs
c0008785:	60                   	pusha  
c0008786:	68 0b 00 00 00       	push   0xb
c000878b:	66 8c d0             	mov    ax,ss
c000878e:	8e d8                	mov    ds,eax
c0008790:	8e c0                	mov    es,eax
c0008792:	ff 15 24 f1 00 c0    	call   DWORD PTR ds:0xc000f124
c0008798:	81 c4 04 00 00 00    	add    esp,0x4
c000879e:	61                   	popa   
c000879f:	0f a9                	pop    gs
c00087a1:	0f a1                	pop    fs
c00087a3:	07                   	pop    es
c00087a4:	1f                   	pop    ds
c00087a5:	81 c4 04 00 00 00    	add    esp,0x4
c00087ab:	cf                   	iret   

c00087ac <asm_intr0x0c_handler>:
c00087ac:	68 00 00 00 00       	push   0x0
c00087b1:	1e                   	push   ds
c00087b2:	06                   	push   es
c00087b3:	0f a0                	push   fs
c00087b5:	0f a8                	push   gs
c00087b7:	60                   	pusha  
c00087b8:	68 0c 00 00 00       	push   0xc
c00087bd:	66 8c d0             	mov    ax,ss
c00087c0:	8e d8                	mov    ds,eax
c00087c2:	8e c0                	mov    es,eax
c00087c4:	ff 15 28 f1 00 c0    	call   DWORD PTR ds:0xc000f128
c00087ca:	81 c4 04 00 00 00    	add    esp,0x4
c00087d0:	61                   	popa   
c00087d1:	0f a9                	pop    gs
c00087d3:	0f a1                	pop    fs
c00087d5:	07                   	pop    es
c00087d6:	1f                   	pop    ds
c00087d7:	81 c4 04 00 00 00    	add    esp,0x4
c00087dd:	cf                   	iret   

c00087de <asm_intr0x0d_handler>:
c00087de:	90                   	nop
c00087df:	1e                   	push   ds
c00087e0:	06                   	push   es
c00087e1:	0f a0                	push   fs
c00087e3:	0f a8                	push   gs
c00087e5:	60                   	pusha  
c00087e6:	68 0d 00 00 00       	push   0xd
c00087eb:	66 8c d0             	mov    ax,ss
c00087ee:	8e d8                	mov    ds,eax
c00087f0:	8e c0                	mov    es,eax
c00087f2:	ff 15 2c f1 00 c0    	call   DWORD PTR ds:0xc000f12c
c00087f8:	81 c4 04 00 00 00    	add    esp,0x4
c00087fe:	61                   	popa   
c00087ff:	0f a9                	pop    gs
c0008801:	0f a1                	pop    fs
c0008803:	07                   	pop    es
c0008804:	1f                   	pop    ds
c0008805:	81 c4 04 00 00 00    	add    esp,0x4
c000880b:	cf                   	iret   

c000880c <asm_intr0x0e_handler>:
c000880c:	90                   	nop
c000880d:	1e                   	push   ds
c000880e:	06                   	push   es
c000880f:	0f a0                	push   fs
c0008811:	0f a8                	push   gs
c0008813:	60                   	pusha  
c0008814:	68 0e 00 00 00       	push   0xe
c0008819:	66 8c d0             	mov    ax,ss
c000881c:	8e d8                	mov    ds,eax
c000881e:	8e c0                	mov    es,eax
c0008820:	ff 15 30 f1 00 c0    	call   DWORD PTR ds:0xc000f130
c0008826:	81 c4 04 00 00 00    	add    esp,0x4
c000882c:	61                   	popa   
c000882d:	0f a9                	pop    gs
c000882f:	0f a1                	pop    fs
c0008831:	07                   	pop    es
c0008832:	1f                   	pop    ds
c0008833:	81 c4 04 00 00 00    	add    esp,0x4
c0008839:	cf                   	iret   

c000883a <asm_intr0x0f_handler>:
c000883a:	68 00 00 00 00       	push   0x0
c000883f:	1e                   	push   ds
c0008840:	06                   	push   es
c0008841:	0f a0                	push   fs
c0008843:	0f a8                	push   gs
c0008845:	60                   	pusha  
c0008846:	68 0f 00 00 00       	push   0xf
c000884b:	66 8c d0             	mov    ax,ss
c000884e:	8e d8                	mov    ds,eax
c0008850:	8e c0                	mov    es,eax
c0008852:	ff 15 34 f1 00 c0    	call   DWORD PTR ds:0xc000f134
c0008858:	81 c4 04 00 00 00    	add    esp,0x4
c000885e:	61                   	popa   
c000885f:	0f a9                	pop    gs
c0008861:	0f a1                	pop    fs
c0008863:	07                   	pop    es
c0008864:	1f                   	pop    ds
c0008865:	81 c4 04 00 00 00    	add    esp,0x4
c000886b:	cf                   	iret   

c000886c <asm_intr0x10_handler>:
c000886c:	68 00 00 00 00       	push   0x0
c0008871:	1e                   	push   ds
c0008872:	06                   	push   es
c0008873:	0f a0                	push   fs
c0008875:	0f a8                	push   gs
c0008877:	60                   	pusha  
c0008878:	68 10 00 00 00       	push   0x10
c000887d:	66 8c d0             	mov    ax,ss
c0008880:	8e d8                	mov    ds,eax
c0008882:	8e c0                	mov    es,eax
c0008884:	ff 15 38 f1 00 c0    	call   DWORD PTR ds:0xc000f138
c000888a:	81 c4 04 00 00 00    	add    esp,0x4
c0008890:	61                   	popa   
c0008891:	0f a9                	pop    gs
c0008893:	0f a1                	pop    fs
c0008895:	07                   	pop    es
c0008896:	1f                   	pop    ds
c0008897:	81 c4 04 00 00 00    	add    esp,0x4
c000889d:	cf                   	iret   

c000889e <asm_intr0x11_handler>:
c000889e:	90                   	nop
c000889f:	1e                   	push   ds
c00088a0:	06                   	push   es
c00088a1:	0f a0                	push   fs
c00088a3:	0f a8                	push   gs
c00088a5:	60                   	pusha  
c00088a6:	68 11 00 00 00       	push   0x11
c00088ab:	66 8c d0             	mov    ax,ss
c00088ae:	8e d8                	mov    ds,eax
c00088b0:	8e c0                	mov    es,eax
c00088b2:	ff 15 3c f1 00 c0    	call   DWORD PTR ds:0xc000f13c
c00088b8:	81 c4 04 00 00 00    	add    esp,0x4
c00088be:	61                   	popa   
c00088bf:	0f a9                	pop    gs
c00088c1:	0f a1                	pop    fs
c00088c3:	07                   	pop    es
c00088c4:	1f                   	pop    ds
c00088c5:	81 c4 04 00 00 00    	add    esp,0x4
c00088cb:	cf                   	iret   

c00088cc <asm_intr0x12_handler>:
c00088cc:	68 00 00 00 00       	push   0x0
c00088d1:	1e                   	push   ds
c00088d2:	06                   	push   es
c00088d3:	0f a0                	push   fs
c00088d5:	0f a8                	push   gs
c00088d7:	60                   	pusha  
c00088d8:	68 12 00 00 00       	push   0x12
c00088dd:	66 8c d0             	mov    ax,ss
c00088e0:	8e d8                	mov    ds,eax
c00088e2:	8e c0                	mov    es,eax
c00088e4:	ff 15 40 f1 00 c0    	call   DWORD PTR ds:0xc000f140
c00088ea:	81 c4 04 00 00 00    	add    esp,0x4
c00088f0:	61                   	popa   
c00088f1:	0f a9                	pop    gs
c00088f3:	0f a1                	pop    fs
c00088f5:	07                   	pop    es
c00088f6:	1f                   	pop    ds
c00088f7:	81 c4 04 00 00 00    	add    esp,0x4
c00088fd:	cf                   	iret   

c00088fe <asm_intr0x13_handler>:
c00088fe:	68 00 00 00 00       	push   0x0
c0008903:	1e                   	push   ds
c0008904:	06                   	push   es
c0008905:	0f a0                	push   fs
c0008907:	0f a8                	push   gs
c0008909:	60                   	pusha  
c000890a:	68 13 00 00 00       	push   0x13
c000890f:	66 8c d0             	mov    ax,ss
c0008912:	8e d8                	mov    ds,eax
c0008914:	8e c0                	mov    es,eax
c0008916:	ff 15 44 f1 00 c0    	call   DWORD PTR ds:0xc000f144
c000891c:	81 c4 04 00 00 00    	add    esp,0x4
c0008922:	61                   	popa   
c0008923:	0f a9                	pop    gs
c0008925:	0f a1                	pop    fs
c0008927:	07                   	pop    es
c0008928:	1f                   	pop    ds
c0008929:	81 c4 04 00 00 00    	add    esp,0x4
c000892f:	cf                   	iret   

c0008930 <asm_intr0x14_handler>:
c0008930:	68 00 00 00 00       	push   0x0
c0008935:	1e                   	push   ds
c0008936:	06                   	push   es
c0008937:	0f a0                	push   fs
c0008939:	0f a8                	push   gs
c000893b:	60                   	pusha  
c000893c:	68 14 00 00 00       	push   0x14
c0008941:	66 8c d0             	mov    ax,ss
c0008944:	8e d8                	mov    ds,eax
c0008946:	8e c0                	mov    es,eax
c0008948:	ff 15 48 f1 00 c0    	call   DWORD PTR ds:0xc000f148
c000894e:	81 c4 04 00 00 00    	add    esp,0x4
c0008954:	61                   	popa   
c0008955:	0f a9                	pop    gs
c0008957:	0f a1                	pop    fs
c0008959:	07                   	pop    es
c000895a:	1f                   	pop    ds
c000895b:	81 c4 04 00 00 00    	add    esp,0x4
c0008961:	cf                   	iret   

c0008962 <asm_intr0x15_handler>:
c0008962:	68 00 00 00 00       	push   0x0
c0008967:	1e                   	push   ds
c0008968:	06                   	push   es
c0008969:	0f a0                	push   fs
c000896b:	0f a8                	push   gs
c000896d:	60                   	pusha  
c000896e:	68 15 00 00 00       	push   0x15
c0008973:	66 8c d0             	mov    ax,ss
c0008976:	8e d8                	mov    ds,eax
c0008978:	8e c0                	mov    es,eax
c000897a:	ff 15 4c f1 00 c0    	call   DWORD PTR ds:0xc000f14c
c0008980:	81 c4 04 00 00 00    	add    esp,0x4
c0008986:	61                   	popa   
c0008987:	0f a9                	pop    gs
c0008989:	0f a1                	pop    fs
c000898b:	07                   	pop    es
c000898c:	1f                   	pop    ds
c000898d:	81 c4 04 00 00 00    	add    esp,0x4
c0008993:	cf                   	iret   

c0008994 <asm_intr0x16_handler>:
c0008994:	68 00 00 00 00       	push   0x0
c0008999:	1e                   	push   ds
c000899a:	06                   	push   es
c000899b:	0f a0                	push   fs
c000899d:	0f a8                	push   gs
c000899f:	60                   	pusha  
c00089a0:	68 16 00 00 00       	push   0x16
c00089a5:	66 8c d0             	mov    ax,ss
c00089a8:	8e d8                	mov    ds,eax
c00089aa:	8e c0                	mov    es,eax
c00089ac:	ff 15 50 f1 00 c0    	call   DWORD PTR ds:0xc000f150
c00089b2:	81 c4 04 00 00 00    	add    esp,0x4
c00089b8:	61                   	popa   
c00089b9:	0f a9                	pop    gs
c00089bb:	0f a1                	pop    fs
c00089bd:	07                   	pop    es
c00089be:	1f                   	pop    ds
c00089bf:	81 c4 04 00 00 00    	add    esp,0x4
c00089c5:	cf                   	iret   

c00089c6 <asm_intr0x17_handler>:
c00089c6:	68 00 00 00 00       	push   0x0
c00089cb:	1e                   	push   ds
c00089cc:	06                   	push   es
c00089cd:	0f a0                	push   fs
c00089cf:	0f a8                	push   gs
c00089d1:	60                   	pusha  
c00089d2:	68 17 00 00 00       	push   0x17
c00089d7:	66 8c d0             	mov    ax,ss
c00089da:	8e d8                	mov    ds,eax
c00089dc:	8e c0                	mov    es,eax
c00089de:	ff 15 54 f1 00 c0    	call   DWORD PTR ds:0xc000f154
c00089e4:	81 c4 04 00 00 00    	add    esp,0x4
c00089ea:	61                   	popa   
c00089eb:	0f a9                	pop    gs
c00089ed:	0f a1                	pop    fs
c00089ef:	07                   	pop    es
c00089f0:	1f                   	pop    ds
c00089f1:	81 c4 04 00 00 00    	add    esp,0x4
c00089f7:	cf                   	iret   

c00089f8 <asm_intr0x18_handler>:
c00089f8:	90                   	nop
c00089f9:	1e                   	push   ds
c00089fa:	06                   	push   es
c00089fb:	0f a0                	push   fs
c00089fd:	0f a8                	push   gs
c00089ff:	60                   	pusha  
c0008a00:	68 18 00 00 00       	push   0x18
c0008a05:	66 8c d0             	mov    ax,ss
c0008a08:	8e d8                	mov    ds,eax
c0008a0a:	8e c0                	mov    es,eax
c0008a0c:	ff 15 58 f1 00 c0    	call   DWORD PTR ds:0xc000f158
c0008a12:	81 c4 04 00 00 00    	add    esp,0x4
c0008a18:	61                   	popa   
c0008a19:	0f a9                	pop    gs
c0008a1b:	0f a1                	pop    fs
c0008a1d:	07                   	pop    es
c0008a1e:	1f                   	pop    ds
c0008a1f:	81 c4 04 00 00 00    	add    esp,0x4
c0008a25:	cf                   	iret   

c0008a26 <asm_intr0x19_handler>:
c0008a26:	68 00 00 00 00       	push   0x0
c0008a2b:	1e                   	push   ds
c0008a2c:	06                   	push   es
c0008a2d:	0f a0                	push   fs
c0008a2f:	0f a8                	push   gs
c0008a31:	60                   	pusha  
c0008a32:	68 19 00 00 00       	push   0x19
c0008a37:	66 8c d0             	mov    ax,ss
c0008a3a:	8e d8                	mov    ds,eax
c0008a3c:	8e c0                	mov    es,eax
c0008a3e:	ff 15 5c f1 00 c0    	call   DWORD PTR ds:0xc000f15c
c0008a44:	81 c4 04 00 00 00    	add    esp,0x4
c0008a4a:	61                   	popa   
c0008a4b:	0f a9                	pop    gs
c0008a4d:	0f a1                	pop    fs
c0008a4f:	07                   	pop    es
c0008a50:	1f                   	pop    ds
c0008a51:	81 c4 04 00 00 00    	add    esp,0x4
c0008a57:	cf                   	iret   

c0008a58 <asm_intr0x1a_handler>:
c0008a58:	90                   	nop
c0008a59:	1e                   	push   ds
c0008a5a:	06                   	push   es
c0008a5b:	0f a0                	push   fs
c0008a5d:	0f a8                	push   gs
c0008a5f:	60                   	pusha  
c0008a60:	68 1a 00 00 00       	push   0x1a
c0008a65:	66 8c d0             	mov    ax,ss
c0008a68:	8e d8                	mov    ds,eax
c0008a6a:	8e c0                	mov    es,eax
c0008a6c:	ff 15 60 f1 00 c0    	call   DWORD PTR ds:0xc000f160
c0008a72:	81 c4 04 00 00 00    	add    esp,0x4
c0008a78:	61                   	popa   
c0008a79:	0f a9                	pop    gs
c0008a7b:	0f a1                	pop    fs
c0008a7d:	07                   	pop    es
c0008a7e:	1f                   	pop    ds
c0008a7f:	81 c4 04 00 00 00    	add    esp,0x4
c0008a85:	cf                   	iret   

c0008a86 <asm_intr0x1b_handler>:
c0008a86:	90                   	nop
c0008a87:	1e                   	push   ds
c0008a88:	06                   	push   es
c0008a89:	0f a0                	push   fs
c0008a8b:	0f a8                	push   gs
c0008a8d:	60                   	pusha  
c0008a8e:	68 1b 00 00 00       	push   0x1b
c0008a93:	66 8c d0             	mov    ax,ss
c0008a96:	8e d8                	mov    ds,eax
c0008a98:	8e c0                	mov    es,eax
c0008a9a:	ff 15 64 f1 00 c0    	call   DWORD PTR ds:0xc000f164
c0008aa0:	81 c4 04 00 00 00    	add    esp,0x4
c0008aa6:	61                   	popa   
c0008aa7:	0f a9                	pop    gs
c0008aa9:	0f a1                	pop    fs
c0008aab:	07                   	pop    es
c0008aac:	1f                   	pop    ds
c0008aad:	81 c4 04 00 00 00    	add    esp,0x4
c0008ab3:	cf                   	iret   

c0008ab4 <asm_intr0x1c_handler>:
c0008ab4:	68 00 00 00 00       	push   0x0
c0008ab9:	1e                   	push   ds
c0008aba:	06                   	push   es
c0008abb:	0f a0                	push   fs
c0008abd:	0f a8                	push   gs
c0008abf:	60                   	pusha  
c0008ac0:	68 1c 00 00 00       	push   0x1c
c0008ac5:	66 8c d0             	mov    ax,ss
c0008ac8:	8e d8                	mov    ds,eax
c0008aca:	8e c0                	mov    es,eax
c0008acc:	ff 15 68 f1 00 c0    	call   DWORD PTR ds:0xc000f168
c0008ad2:	81 c4 04 00 00 00    	add    esp,0x4
c0008ad8:	61                   	popa   
c0008ad9:	0f a9                	pop    gs
c0008adb:	0f a1                	pop    fs
c0008add:	07                   	pop    es
c0008ade:	1f                   	pop    ds
c0008adf:	81 c4 04 00 00 00    	add    esp,0x4
c0008ae5:	cf                   	iret   

c0008ae6 <asm_intr0x1d_handler>:
c0008ae6:	90                   	nop
c0008ae7:	1e                   	push   ds
c0008ae8:	06                   	push   es
c0008ae9:	0f a0                	push   fs
c0008aeb:	0f a8                	push   gs
c0008aed:	60                   	pusha  
c0008aee:	68 1d 00 00 00       	push   0x1d
c0008af3:	66 8c d0             	mov    ax,ss
c0008af6:	8e d8                	mov    ds,eax
c0008af8:	8e c0                	mov    es,eax
c0008afa:	ff 15 6c f1 00 c0    	call   DWORD PTR ds:0xc000f16c
c0008b00:	81 c4 04 00 00 00    	add    esp,0x4
c0008b06:	61                   	popa   
c0008b07:	0f a9                	pop    gs
c0008b09:	0f a1                	pop    fs
c0008b0b:	07                   	pop    es
c0008b0c:	1f                   	pop    ds
c0008b0d:	81 c4 04 00 00 00    	add    esp,0x4
c0008b13:	cf                   	iret   

c0008b14 <asm_intr0x1e_handler>:
c0008b14:	90                   	nop
c0008b15:	1e                   	push   ds
c0008b16:	06                   	push   es
c0008b17:	0f a0                	push   fs
c0008b19:	0f a8                	push   gs
c0008b1b:	60                   	pusha  
c0008b1c:	68 1e 00 00 00       	push   0x1e
c0008b21:	66 8c d0             	mov    ax,ss
c0008b24:	8e d8                	mov    ds,eax
c0008b26:	8e c0                	mov    es,eax
c0008b28:	ff 15 70 f1 00 c0    	call   DWORD PTR ds:0xc000f170
c0008b2e:	81 c4 04 00 00 00    	add    esp,0x4
c0008b34:	61                   	popa   
c0008b35:	0f a9                	pop    gs
c0008b37:	0f a1                	pop    fs
c0008b39:	07                   	pop    es
c0008b3a:	1f                   	pop    ds
c0008b3b:	81 c4 04 00 00 00    	add    esp,0x4
c0008b41:	cf                   	iret   

c0008b42 <asm_intr0x1f_handler>:
c0008b42:	68 00 00 00 00       	push   0x0
c0008b47:	1e                   	push   ds
c0008b48:	06                   	push   es
c0008b49:	0f a0                	push   fs
c0008b4b:	0f a8                	push   gs
c0008b4d:	60                   	pusha  
c0008b4e:	68 1f 00 00 00       	push   0x1f
c0008b53:	66 8c d0             	mov    ax,ss
c0008b56:	8e d8                	mov    ds,eax
c0008b58:	8e c0                	mov    es,eax
c0008b5a:	ff 15 74 f1 00 c0    	call   DWORD PTR ds:0xc000f174
c0008b60:	81 c4 04 00 00 00    	add    esp,0x4
c0008b66:	61                   	popa   
c0008b67:	0f a9                	pop    gs
c0008b69:	0f a1                	pop    fs
c0008b6b:	07                   	pop    es
c0008b6c:	1f                   	pop    ds
c0008b6d:	81 c4 04 00 00 00    	add    esp,0x4
c0008b73:	cf                   	iret   

c0008b74 <asm_intr0x20_handler>:
c0008b74:	68 00 00 00 00       	push   0x0
c0008b79:	1e                   	push   ds
c0008b7a:	06                   	push   es
c0008b7b:	0f a0                	push   fs
c0008b7d:	0f a8                	push   gs
c0008b7f:	60                   	pusha  
c0008b80:	68 20 00 00 00       	push   0x20
c0008b85:	66 8c d0             	mov    ax,ss
c0008b88:	8e d8                	mov    ds,eax
c0008b8a:	8e c0                	mov    es,eax
c0008b8c:	ff 15 78 f1 00 c0    	call   DWORD PTR ds:0xc000f178
c0008b92:	81 c4 04 00 00 00    	add    esp,0x4
c0008b98:	61                   	popa   
c0008b99:	0f a9                	pop    gs
c0008b9b:	0f a1                	pop    fs
c0008b9d:	07                   	pop    es
c0008b9e:	1f                   	pop    ds
c0008b9f:	81 c4 04 00 00 00    	add    esp,0x4
c0008ba5:	cf                   	iret   

c0008ba6 <asm_intr0x21_handler>:
c0008ba6:	68 00 00 00 00       	push   0x0
c0008bab:	1e                   	push   ds
c0008bac:	06                   	push   es
c0008bad:	0f a0                	push   fs
c0008baf:	0f a8                	push   gs
c0008bb1:	60                   	pusha  
c0008bb2:	68 21 00 00 00       	push   0x21
c0008bb7:	66 8c d0             	mov    ax,ss
c0008bba:	8e d8                	mov    ds,eax
c0008bbc:	8e c0                	mov    es,eax
c0008bbe:	ff 15 7c f1 00 c0    	call   DWORD PTR ds:0xc000f17c
c0008bc4:	81 c4 04 00 00 00    	add    esp,0x4
c0008bca:	61                   	popa   
c0008bcb:	0f a9                	pop    gs
c0008bcd:	0f a1                	pop    fs
c0008bcf:	07                   	pop    es
c0008bd0:	1f                   	pop    ds
c0008bd1:	81 c4 04 00 00 00    	add    esp,0x4
c0008bd7:	cf                   	iret   

c0008bd8 <asm_intr0x22_handler>:
c0008bd8:	68 00 00 00 00       	push   0x0
c0008bdd:	1e                   	push   ds
c0008bde:	06                   	push   es
c0008bdf:	0f a0                	push   fs
c0008be1:	0f a8                	push   gs
c0008be3:	60                   	pusha  
c0008be4:	68 22 00 00 00       	push   0x22
c0008be9:	66 8c d0             	mov    ax,ss
c0008bec:	8e d8                	mov    ds,eax
c0008bee:	8e c0                	mov    es,eax
c0008bf0:	ff 15 80 f1 00 c0    	call   DWORD PTR ds:0xc000f180
c0008bf6:	81 c4 04 00 00 00    	add    esp,0x4
c0008bfc:	61                   	popa   
c0008bfd:	0f a9                	pop    gs
c0008bff:	0f a1                	pop    fs
c0008c01:	07                   	pop    es
c0008c02:	1f                   	pop    ds
c0008c03:	81 c4 04 00 00 00    	add    esp,0x4
c0008c09:	cf                   	iret   

c0008c0a <asm_intr0x23_handler>:
c0008c0a:	68 00 00 00 00       	push   0x0
c0008c0f:	1e                   	push   ds
c0008c10:	06                   	push   es
c0008c11:	0f a0                	push   fs
c0008c13:	0f a8                	push   gs
c0008c15:	60                   	pusha  
c0008c16:	68 23 00 00 00       	push   0x23
c0008c1b:	66 8c d0             	mov    ax,ss
c0008c1e:	8e d8                	mov    ds,eax
c0008c20:	8e c0                	mov    es,eax
c0008c22:	ff 15 84 f1 00 c0    	call   DWORD PTR ds:0xc000f184
c0008c28:	81 c4 04 00 00 00    	add    esp,0x4
c0008c2e:	61                   	popa   
c0008c2f:	0f a9                	pop    gs
c0008c31:	0f a1                	pop    fs
c0008c33:	07                   	pop    es
c0008c34:	1f                   	pop    ds
c0008c35:	81 c4 04 00 00 00    	add    esp,0x4
c0008c3b:	cf                   	iret   

c0008c3c <asm_intr0x24_handler>:
c0008c3c:	68 00 00 00 00       	push   0x0
c0008c41:	1e                   	push   ds
c0008c42:	06                   	push   es
c0008c43:	0f a0                	push   fs
c0008c45:	0f a8                	push   gs
c0008c47:	60                   	pusha  
c0008c48:	68 24 00 00 00       	push   0x24
c0008c4d:	66 8c d0             	mov    ax,ss
c0008c50:	8e d8                	mov    ds,eax
c0008c52:	8e c0                	mov    es,eax
c0008c54:	ff 15 88 f1 00 c0    	call   DWORD PTR ds:0xc000f188
c0008c5a:	81 c4 04 00 00 00    	add    esp,0x4
c0008c60:	61                   	popa   
c0008c61:	0f a9                	pop    gs
c0008c63:	0f a1                	pop    fs
c0008c65:	07                   	pop    es
c0008c66:	1f                   	pop    ds
c0008c67:	81 c4 04 00 00 00    	add    esp,0x4
c0008c6d:	cf                   	iret   

c0008c6e <asm_intr0x25_handler>:
c0008c6e:	68 00 00 00 00       	push   0x0
c0008c73:	1e                   	push   ds
c0008c74:	06                   	push   es
c0008c75:	0f a0                	push   fs
c0008c77:	0f a8                	push   gs
c0008c79:	60                   	pusha  
c0008c7a:	68 25 00 00 00       	push   0x25
c0008c7f:	66 8c d0             	mov    ax,ss
c0008c82:	8e d8                	mov    ds,eax
c0008c84:	8e c0                	mov    es,eax
c0008c86:	ff 15 8c f1 00 c0    	call   DWORD PTR ds:0xc000f18c
c0008c8c:	81 c4 04 00 00 00    	add    esp,0x4
c0008c92:	61                   	popa   
c0008c93:	0f a9                	pop    gs
c0008c95:	0f a1                	pop    fs
c0008c97:	07                   	pop    es
c0008c98:	1f                   	pop    ds
c0008c99:	81 c4 04 00 00 00    	add    esp,0x4
c0008c9f:	cf                   	iret   

c0008ca0 <asm_intr0x26_handler>:
c0008ca0:	68 00 00 00 00       	push   0x0
c0008ca5:	1e                   	push   ds
c0008ca6:	06                   	push   es
c0008ca7:	0f a0                	push   fs
c0008ca9:	0f a8                	push   gs
c0008cab:	60                   	pusha  
c0008cac:	68 26 00 00 00       	push   0x26
c0008cb1:	66 8c d0             	mov    ax,ss
c0008cb4:	8e d8                	mov    ds,eax
c0008cb6:	8e c0                	mov    es,eax
c0008cb8:	ff 15 90 f1 00 c0    	call   DWORD PTR ds:0xc000f190
c0008cbe:	81 c4 04 00 00 00    	add    esp,0x4
c0008cc4:	61                   	popa   
c0008cc5:	0f a9                	pop    gs
c0008cc7:	0f a1                	pop    fs
c0008cc9:	07                   	pop    es
c0008cca:	1f                   	pop    ds
c0008ccb:	81 c4 04 00 00 00    	add    esp,0x4
c0008cd1:	cf                   	iret   

c0008cd2 <asm_intr0x27_handler>:
c0008cd2:	68 00 00 00 00       	push   0x0
c0008cd7:	1e                   	push   ds
c0008cd8:	06                   	push   es
c0008cd9:	0f a0                	push   fs
c0008cdb:	0f a8                	push   gs
c0008cdd:	60                   	pusha  
c0008cde:	68 27 00 00 00       	push   0x27
c0008ce3:	66 8c d0             	mov    ax,ss
c0008ce6:	8e d8                	mov    ds,eax
c0008ce8:	8e c0                	mov    es,eax
c0008cea:	ff 15 94 f1 00 c0    	call   DWORD PTR ds:0xc000f194
c0008cf0:	81 c4 04 00 00 00    	add    esp,0x4
c0008cf6:	61                   	popa   
c0008cf7:	0f a9                	pop    gs
c0008cf9:	0f a1                	pop    fs
c0008cfb:	07                   	pop    es
c0008cfc:	1f                   	pop    ds
c0008cfd:	81 c4 04 00 00 00    	add    esp,0x4
c0008d03:	cf                   	iret   

c0008d04 <asm_intr0x28_handler>:
c0008d04:	68 00 00 00 00       	push   0x0
c0008d09:	1e                   	push   ds
c0008d0a:	06                   	push   es
c0008d0b:	0f a0                	push   fs
c0008d0d:	0f a8                	push   gs
c0008d0f:	60                   	pusha  
c0008d10:	68 28 00 00 00       	push   0x28
c0008d15:	66 8c d0             	mov    ax,ss
c0008d18:	8e d8                	mov    ds,eax
c0008d1a:	8e c0                	mov    es,eax
c0008d1c:	ff 15 98 f1 00 c0    	call   DWORD PTR ds:0xc000f198
c0008d22:	81 c4 04 00 00 00    	add    esp,0x4
c0008d28:	61                   	popa   
c0008d29:	0f a9                	pop    gs
c0008d2b:	0f a1                	pop    fs
c0008d2d:	07                   	pop    es
c0008d2e:	1f                   	pop    ds
c0008d2f:	81 c4 04 00 00 00    	add    esp,0x4
c0008d35:	cf                   	iret   

c0008d36 <asm_intr0x29_handler>:
c0008d36:	68 00 00 00 00       	push   0x0
c0008d3b:	1e                   	push   ds
c0008d3c:	06                   	push   es
c0008d3d:	0f a0                	push   fs
c0008d3f:	0f a8                	push   gs
c0008d41:	60                   	pusha  
c0008d42:	68 29 00 00 00       	push   0x29
c0008d47:	66 8c d0             	mov    ax,ss
c0008d4a:	8e d8                	mov    ds,eax
c0008d4c:	8e c0                	mov    es,eax
c0008d4e:	ff 15 9c f1 00 c0    	call   DWORD PTR ds:0xc000f19c
c0008d54:	81 c4 04 00 00 00    	add    esp,0x4
c0008d5a:	61                   	popa   
c0008d5b:	0f a9                	pop    gs
c0008d5d:	0f a1                	pop    fs
c0008d5f:	07                   	pop    es
c0008d60:	1f                   	pop    ds
c0008d61:	81 c4 04 00 00 00    	add    esp,0x4
c0008d67:	cf                   	iret   

c0008d68 <asm_intr0x2a_handler>:
c0008d68:	68 00 00 00 00       	push   0x0
c0008d6d:	1e                   	push   ds
c0008d6e:	06                   	push   es
c0008d6f:	0f a0                	push   fs
c0008d71:	0f a8                	push   gs
c0008d73:	60                   	pusha  
c0008d74:	68 2a 00 00 00       	push   0x2a
c0008d79:	66 8c d0             	mov    ax,ss
c0008d7c:	8e d8                	mov    ds,eax
c0008d7e:	8e c0                	mov    es,eax
c0008d80:	ff 15 a0 f1 00 c0    	call   DWORD PTR ds:0xc000f1a0
c0008d86:	81 c4 04 00 00 00    	add    esp,0x4
c0008d8c:	61                   	popa   
c0008d8d:	0f a9                	pop    gs
c0008d8f:	0f a1                	pop    fs
c0008d91:	07                   	pop    es
c0008d92:	1f                   	pop    ds
c0008d93:	81 c4 04 00 00 00    	add    esp,0x4
c0008d99:	cf                   	iret   

c0008d9a <asm_intr0x2b_handler>:
c0008d9a:	68 00 00 00 00       	push   0x0
c0008d9f:	1e                   	push   ds
c0008da0:	06                   	push   es
c0008da1:	0f a0                	push   fs
c0008da3:	0f a8                	push   gs
c0008da5:	60                   	pusha  
c0008da6:	68 2b 00 00 00       	push   0x2b
c0008dab:	66 8c d0             	mov    ax,ss
c0008dae:	8e d8                	mov    ds,eax
c0008db0:	8e c0                	mov    es,eax
c0008db2:	ff 15 a4 f1 00 c0    	call   DWORD PTR ds:0xc000f1a4
c0008db8:	81 c4 04 00 00 00    	add    esp,0x4
c0008dbe:	61                   	popa   
c0008dbf:	0f a9                	pop    gs
c0008dc1:	0f a1                	pop    fs
c0008dc3:	07                   	pop    es
c0008dc4:	1f                   	pop    ds
c0008dc5:	81 c4 04 00 00 00    	add    esp,0x4
c0008dcb:	cf                   	iret   

c0008dcc <asm_intr0x2c_handler>:
c0008dcc:	68 00 00 00 00       	push   0x0
c0008dd1:	1e                   	push   ds
c0008dd2:	06                   	push   es
c0008dd3:	0f a0                	push   fs
c0008dd5:	0f a8                	push   gs
c0008dd7:	60                   	pusha  
c0008dd8:	68 2c 00 00 00       	push   0x2c
c0008ddd:	66 8c d0             	mov    ax,ss
c0008de0:	8e d8                	mov    ds,eax
c0008de2:	8e c0                	mov    es,eax
c0008de4:	ff 15 a8 f1 00 c0    	call   DWORD PTR ds:0xc000f1a8
c0008dea:	81 c4 04 00 00 00    	add    esp,0x4
c0008df0:	61                   	popa   
c0008df1:	0f a9                	pop    gs
c0008df3:	0f a1                	pop    fs
c0008df5:	07                   	pop    es
c0008df6:	1f                   	pop    ds
c0008df7:	81 c4 04 00 00 00    	add    esp,0x4
c0008dfd:	cf                   	iret   

c0008dfe <asm_intr0x2d_handler>:
c0008dfe:	68 00 00 00 00       	push   0x0
c0008e03:	1e                   	push   ds
c0008e04:	06                   	push   es
c0008e05:	0f a0                	push   fs
c0008e07:	0f a8                	push   gs
c0008e09:	60                   	pusha  
c0008e0a:	68 2d 00 00 00       	push   0x2d
c0008e0f:	66 8c d0             	mov    ax,ss
c0008e12:	8e d8                	mov    ds,eax
c0008e14:	8e c0                	mov    es,eax
c0008e16:	ff 15 ac f1 00 c0    	call   DWORD PTR ds:0xc000f1ac
c0008e1c:	81 c4 04 00 00 00    	add    esp,0x4
c0008e22:	61                   	popa   
c0008e23:	0f a9                	pop    gs
c0008e25:	0f a1                	pop    fs
c0008e27:	07                   	pop    es
c0008e28:	1f                   	pop    ds
c0008e29:	81 c4 04 00 00 00    	add    esp,0x4
c0008e2f:	cf                   	iret   

c0008e30 <asm_intr0x2e_handler>:
c0008e30:	68 00 00 00 00       	push   0x0
c0008e35:	1e                   	push   ds
c0008e36:	06                   	push   es
c0008e37:	0f a0                	push   fs
c0008e39:	0f a8                	push   gs
c0008e3b:	60                   	pusha  
c0008e3c:	68 2e 00 00 00       	push   0x2e
c0008e41:	66 8c d0             	mov    ax,ss
c0008e44:	8e d8                	mov    ds,eax
c0008e46:	8e c0                	mov    es,eax
c0008e48:	ff 15 b0 f1 00 c0    	call   DWORD PTR ds:0xc000f1b0
c0008e4e:	81 c4 04 00 00 00    	add    esp,0x4
c0008e54:	61                   	popa   
c0008e55:	0f a9                	pop    gs
c0008e57:	0f a1                	pop    fs
c0008e59:	07                   	pop    es
c0008e5a:	1f                   	pop    ds
c0008e5b:	81 c4 04 00 00 00    	add    esp,0x4
c0008e61:	cf                   	iret   

c0008e62 <asm_intr0x2f_handler>:
c0008e62:	68 00 00 00 00       	push   0x0
c0008e67:	1e                   	push   ds
c0008e68:	06                   	push   es
c0008e69:	0f a0                	push   fs
c0008e6b:	0f a8                	push   gs
c0008e6d:	60                   	pusha  
c0008e6e:	68 2f 00 00 00       	push   0x2f
c0008e73:	66 8c d0             	mov    ax,ss
c0008e76:	8e d8                	mov    ds,eax
c0008e78:	8e c0                	mov    es,eax
c0008e7a:	ff 15 b4 f1 00 c0    	call   DWORD PTR ds:0xc000f1b4
c0008e80:	81 c4 04 00 00 00    	add    esp,0x4
c0008e86:	61                   	popa   
c0008e87:	0f a9                	pop    gs
c0008e89:	0f a1                	pop    fs
c0008e8b:	07                   	pop    es
c0008e8c:	1f                   	pop    ds
c0008e8d:	81 c4 04 00 00 00    	add    esp,0x4
c0008e93:	cf                   	iret   

c0008e94 <intr_exit>:
c0008e94:	81 c4 04 00 00 00    	add    esp,0x4
c0008e9a:	61                   	popa   
c0008e9b:	0f a9                	pop    gs
c0008e9d:	0f a1                	pop    fs
c0008e9f:	07                   	pop    es
c0008ea0:	1f                   	pop    ds
c0008ea1:	81 c4 04 00 00 00    	add    esp,0x4
c0008ea7:	cf                   	iret   

c0008ea8 <intr0x27_handler>:
c0008ea8:	55                   	push   ebp
c0008ea9:	ba 20 00 00 00       	mov    edx,0x20
c0008eae:	89 e5                	mov    ebp,esp
c0008eb0:	b8 20 00 00 00       	mov    eax,0x20
c0008eb5:	ee                   	out    dx,al
c0008eb6:	5d                   	pop    ebp
c0008eb7:	c3                   	ret    

c0008eb8 <init_pic>:
c0008eb8:	55                   	push   ebp
c0008eb9:	ba 21 00 00 00       	mov    edx,0x21
c0008ebe:	89 e5                	mov    ebp,esp
c0008ec0:	b8 ff 00 00 00       	mov    eax,0xff
c0008ec5:	ee                   	out    dx,al
c0008ec6:	b2 a1                	mov    dl,0xa1
c0008ec8:	ee                   	out    dx,al
c0008ec9:	b2 20                	mov    dl,0x20
c0008ecb:	b0 11                	mov    al,0x11
c0008ecd:	ee                   	out    dx,al
c0008ece:	b2 21                	mov    dl,0x21
c0008ed0:	b0 20                	mov    al,0x20
c0008ed2:	ee                   	out    dx,al
c0008ed3:	b0 04                	mov    al,0x4
c0008ed5:	ee                   	out    dx,al
c0008ed6:	b0 01                	mov    al,0x1
c0008ed8:	ee                   	out    dx,al
c0008ed9:	b2 a0                	mov    dl,0xa0
c0008edb:	b0 11                	mov    al,0x11
c0008edd:	ee                   	out    dx,al
c0008ede:	b2 a1                	mov    dl,0xa1
c0008ee0:	b0 28                	mov    al,0x28
c0008ee2:	ee                   	out    dx,al
c0008ee3:	b0 02                	mov    al,0x2
c0008ee5:	ee                   	out    dx,al
c0008ee6:	b0 01                	mov    al,0x1
c0008ee8:	ee                   	out    dx,al
c0008ee9:	b2 21                	mov    dl,0x21
c0008eeb:	b0 fc                	mov    al,0xfc
c0008eed:	ee                   	out    dx,al
c0008eee:	b2 a1                	mov    dl,0xa1
c0008ef0:	b0 ff                	mov    al,0xff
c0008ef2:	ee                   	out    dx,al
c0008ef3:	5d                   	pop    ebp
c0008ef4:	c3                   	ret    

c0008ef5 <idt_desc_init>:
c0008ef5:	55                   	push   ebp
c0008ef6:	31 c0                	xor    eax,eax
c0008ef8:	89 e5                	mov    ebp,esp
c0008efa:	c7 04 85 f8 f0 00 c0 	mov    DWORD PTR [eax*4-0x3fff0f08],0xc00090ad
c0008f01:	ad 90 00 c0 
c0008f05:	40                   	inc    eax
c0008f06:	83 f8 2f             	cmp    eax,0x2f
c0008f09:	75 ef                	jne    c0008efa <idt_desc_init+0x5>
c0008f0b:	c7 05 78 f1 00 c0 8c 	mov    DWORD PTR ds:0xc000f178,0xc000a78c
c0008f12:	a7 00 c0 
c0008f15:	30 c0                	xor    al,al
c0008f17:	c7 05 7c f1 00 c0 06 	mov    DWORD PTR ds:0xc000f17c,0xc000a506
c0008f1e:	a5 00 c0 
c0008f21:	c7 05 94 f1 00 c0 a8 	mov    DWORD PTR ds:0xc000f194,0xc0008ea8
c0008f28:	8e 00 c0 
c0008f2b:	8b 0c 85 90 b2 00 c0 	mov    ecx,DWORD PTR [eax*4-0x3fff4d70]
c0008f32:	8d 14 c5 80 ef 00 c0 	lea    edx,[eax*8-0x3fff1080]
c0008f39:	66 89 0c c5 80 ef 00 	mov    WORD PTR [eax*8-0x3fff1080],cx
c0008f40:	c0 
c0008f41:	40                   	inc    eax
c0008f42:	c1 e9 10             	shr    ecx,0x10
c0008f45:	83 f8 2f             	cmp    eax,0x2f
c0008f48:	66 c7 42 02 08 00    	mov    WORD PTR [edx+0x2],0x8
c0008f4e:	c6 42 04 00          	mov    BYTE PTR [edx+0x4],0x0
c0008f52:	c6 42 05 8e          	mov    BYTE PTR [edx+0x5],0x8e
c0008f56:	66 89 4a 06          	mov    WORD PTR [edx+0x6],cx
c0008f5a:	75 cf                	jne    c0008f2b <idt_desc_init+0x36>
c0008f5c:	5d                   	pop    ebp
c0008f5d:	c3                   	ret    

c0008f5e <set_gatedesc>:
c0008f5e:	55                   	push   ebp
c0008f5f:	89 e5                	mov    ebp,esp
c0008f61:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0008f64:	53                   	push   ebx
c0008f65:	8b 4d 14             	mov    ecx,DWORD PTR [ebp+0x14]
c0008f68:	8b 5d 10             	mov    ebx,DWORD PTR [ebp+0x10]
c0008f6b:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
c0008f6e:	88 48 05             	mov    BYTE PTR [eax+0x5],cl
c0008f71:	66 89 58 02          	mov    WORD PTR [eax+0x2],bx
c0008f75:	89 cb                	mov    ebx,ecx
c0008f77:	66 89 10             	mov    WORD PTR [eax],dx
c0008f7a:	c1 fb 08             	sar    ebx,0x8
c0008f7d:	c1 ea 10             	shr    edx,0x10
c0008f80:	88 58 04             	mov    BYTE PTR [eax+0x4],bl
c0008f83:	66 89 50 06          	mov    WORD PTR [eax+0x6],dx
c0008f87:	5b                   	pop    ebx
c0008f88:	5d                   	pop    ebp
c0008f89:	c3                   	ret    

c0008f8a <exception_init>:
c0008f8a:	55                   	push   ebp
c0008f8b:	89 e5                	mov    ebp,esp
c0008f8d:	c7 05 c4 ee 00 c0 44 	mov    DWORD PTR ds:0xc000eec4,0xc000e144
c0008f94:	e1 00 c0 
c0008f97:	c7 05 c8 ee 00 c0 55 	mov    DWORD PTR ds:0xc000eec8,0xc000e155
c0008f9e:	e1 00 c0 
c0008fa1:	c7 05 cc ee 00 c0 69 	mov    DWORD PTR ds:0xc000eecc,0xc000e169
c0008fa8:	e1 00 c0 
c0008fab:	c7 05 d0 ee 00 c0 77 	mov    DWORD PTR ds:0xc000eed0,0xc000e177
c0008fb2:	e1 00 c0 
c0008fb5:	c7 05 d4 ee 00 c0 90 	mov    DWORD PTR ds:0xc000eed4,0xc000e190
c0008fbc:	e1 00 c0 
c0008fbf:	c7 05 d8 ee 00 c0 a7 	mov    DWORD PTR ds:0xc000eed8,0xc000e1a7
c0008fc6:	e1 00 c0 
c0008fc9:	c7 05 dc ee 00 c0 ca 	mov    DWORD PTR ds:0xc000eedc,0xc000e1ca
c0008fd0:	e1 00 c0 
c0008fd3:	c7 05 e0 ee 00 c0 e7 	mov    DWORD PTR ds:0xc000eee0,0xc000e1e7
c0008fda:	e1 00 c0 
c0008fdd:	c7 05 e4 ee 00 c0 0a 	mov    DWORD PTR ds:0xc000eee4,0xc000e20a
c0008fe4:	e2 00 c0 
c0008fe7:	c7 05 e8 ee 00 c0 25 	mov    DWORD PTR ds:0xc000eee8,0xc000e225
c0008fee:	e2 00 c0 
c0008ff1:	c7 05 ec ee 00 c0 41 	mov    DWORD PTR ds:0xc000eeec,0xc000e241
c0008ff8:	e2 00 c0 
c0008ffb:	c7 05 f0 ee 00 c0 5b 	mov    DWORD PTR ds:0xc000eef0,0xc000e25b
c0009002:	e2 00 c0 
c0009005:	c7 05 f4 ee 00 c0 73 	mov    DWORD PTR ds:0xc000eef4,0xc000e273
c000900c:	e2 00 c0 
c000900f:	c7 05 f8 ee 00 c0 8d 	mov    DWORD PTR ds:0xc000eef8,0xc000e28d
c0009016:	e2 00 c0 
c0009019:	c7 05 fc ee 00 c0 ae 	mov    DWORD PTR ds:0xc000eefc,0xc000e2ae
c0009020:	e2 00 c0 
c0009023:	c7 05 00 ef 00 c0 c7 	mov    DWORD PTR ds:0xc000ef00,0xc000e2c7
c000902a:	e2 00 c0 
c000902d:	c7 05 04 ef 00 c0 d0 	mov    DWORD PTR ds:0xc000ef04,0xc000e2d0
c0009034:	e2 00 c0 
c0009037:	c7 05 08 ef 00 c0 f1 	mov    DWORD PTR ds:0xc000ef08,0xc000e2f1
c000903e:	e2 00 c0 
c0009041:	c7 05 0c ef 00 c0 0f 	mov    DWORD PTR ds:0xc000ef0c,0xc000e30f
c0009048:	e3 00 c0 
c000904b:	c7 05 10 ef 00 c0 2b 	mov    DWORD PTR ds:0xc000ef10,0xc000e32b
c0009052:	e3 00 c0 
c0009055:	5d                   	pop    ebp
c0009056:	c3                   	ret    

c0009057 <init_idt>:
c0009057:	55                   	push   ebp
c0009058:	89 e5                	mov    ebp,esp
c000905a:	83 ec 10             	sub    esp,0x10
c000905d:	e8 93 fe ff ff       	call   c0008ef5 <idt_desc_init>
c0009062:	e8 51 fe ff ff       	call   c0008eb8 <init_pic>
c0009067:	b8 80 ef 00 c0       	mov    eax,0xc000ef80
c000906c:	c1 e0 10             	shl    eax,0x10
c000906f:	0d 77 01 00 00       	or     eax,0x177
c0009074:	89 45 f8             	mov    DWORD PTR [ebp-0x8],eax
c0009077:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [ebp-0x4],0x0
c000907e:	e8 07 ff ff ff       	call   c0008f8a <exception_init>
c0009083:	0f 01 5d f8          	lidtd  [ebp-0x8]
c0009087:	c9                   	leave  
c0009088:	c3                   	ret    

c0009089 <intr_get_status>:
c0009089:	55                   	push   ebp
c000908a:	89 e5                	mov    ebp,esp
c000908c:	9c                   	pushf  
c000908d:	58                   	pop    eax
c000908e:	f6 c4 02             	test   ah,0x2
c0009091:	0f 95 c0             	setne  al
c0009094:	0f b6 c0             	movzx  eax,al
c0009097:	5d                   	pop    ebp
c0009098:	c3                   	ret    

c0009099 <intr_disable>:
c0009099:	55                   	push   ebp
c000909a:	89 e5                	mov    ebp,esp
c000909c:	e8 e8 ff ff ff       	call   c0009089 <intr_get_status>
c00090a1:	31 d2                	xor    edx,edx
c00090a3:	48                   	dec    eax
c00090a4:	75 03                	jne    c00090a9 <intr_disable+0x10>
c00090a6:	fa                   	cli    
c00090a7:	b2 01                	mov    dl,0x1
c00090a9:	89 d0                	mov    eax,edx
c00090ab:	5d                   	pop    ebp
c00090ac:	c3                   	ret    

c00090ad <general_intr_handler>:
c00090ad:	55                   	push   ebp
c00090ae:	89 e5                	mov    ebp,esp
c00090b0:	56                   	push   esi
c00090b1:	53                   	push   ebx
c00090b2:	8a 5d 08             	mov    bl,BYTE PTR [ebp+0x8]
c00090b5:	e8 df ff ff ff       	call   c0009099 <intr_disable>
c00090ba:	50                   	push   eax
c00090bb:	50                   	push   eax
c00090bc:	68 4d e3 00 c0       	push   0xc000e34d
c00090c1:	6a 17                	push   0x17
c00090c3:	e8 0d 1e 00 00       	call   c000aed5 <put_str>
c00090c8:	58                   	pop    eax
c00090c9:	5a                   	pop    edx
c00090ca:	68 68 e0 00 c0       	push   0xc000e068
c00090cf:	6a 17                	push   0x17
c00090d1:	e8 ff 1d 00 00       	call   c000aed5 <put_str>
c00090d6:	59                   	pop    ecx
c00090d7:	5e                   	pop    esi
c00090d8:	0f b6 f3             	movzx  esi,bl
c00090db:	68 50 e3 00 c0       	push   0xc000e350
c00090e0:	6a 17                	push   0x17
c00090e2:	e8 ee 1d 00 00       	call   c000aed5 <put_str>
c00090e7:	83 c4 0c             	add    esp,0xc
c00090ea:	6a 10                	push   0x10
c00090ec:	56                   	push   esi
c00090ed:	6a 17                	push   0x17
c00090ef:	e8 43 1e 00 00       	call   c000af37 <put_int>
c00090f4:	58                   	pop    eax
c00090f5:	5a                   	pop    edx
c00090f6:	68 4d e3 00 c0       	push   0xc000e34d
c00090fb:	6a 17                	push   0x17
c00090fd:	e8 d3 1d 00 00       	call   c000aed5 <put_str>
c0009102:	83 c4 10             	add    esp,0x10
c0009105:	80 fb 13             	cmp    bl,0x13
c0009108:	77 47                	ja     c0009151 <general_intr_handler+0xa4>
c000910a:	50                   	push   eax
c000910b:	50                   	push   eax
c000910c:	ff 34 b5 c4 ee 00 c0 	push   DWORD PTR [esi*4-0x3fff113c]
c0009113:	6a 17                	push   0x17
c0009115:	e8 bb 1d 00 00       	call   c000aed5 <put_str>
c000911a:	83 c4 10             	add    esp,0x10
c000911d:	80 fb 0e             	cmp    bl,0xe
c0009120:	75 2f                	jne    c0009151 <general_intr_handler+0xa4>
c0009122:	0f 20 d3             	mov    ebx,cr2
c0009125:	52                   	push   edx
c0009126:	52                   	push   edx
c0009127:	68 5b e3 00 c0       	push   0xc000e35b
c000912c:	6a 17                	push   0x17
c000912e:	e8 a2 1d 00 00       	call   c000aed5 <put_str>
c0009133:	83 c4 0c             	add    esp,0xc
c0009136:	6a 10                	push   0x10
c0009138:	53                   	push   ebx
c0009139:	6a 17                	push   0x17
c000913b:	e8 bd 1d 00 00       	call   c000aefd <put_uint>
c0009140:	59                   	pop    ecx
c0009141:	5b                   	pop    ebx
c0009142:	68 70 e3 00 c0       	push   0xc000e370
c0009147:	6a 17                	push   0x17
c0009149:	e8 87 1d 00 00       	call   c000aed5 <put_str>
c000914e:	83 c4 10             	add    esp,0x10
c0009151:	50                   	push   eax
c0009152:	50                   	push   eax
c0009153:	68 74 e3 00 c0       	push   0xc000e374
c0009158:	6a 17                	push   0x17
c000915a:	e8 76 1d 00 00       	call   c000aed5 <put_str>
c000915f:	e8 1e 13 00 00       	call   c000a482 <cpu_info>
c0009164:	83 c4 10             	add    esp,0x10
c0009167:	eb fe                	jmp    c0009167 <general_intr_handler+0xba>

c0009169 <intr_enable>:
c0009169:	55                   	push   ebp
c000916a:	89 e5                	mov    ebp,esp
c000916c:	e8 18 ff ff ff       	call   c0009089 <intr_get_status>
c0009171:	ba 01 00 00 00       	mov    edx,0x1
c0009176:	48                   	dec    eax
c0009177:	74 03                	je     c000917c <intr_enable+0x13>
c0009179:	fb                   	sti    
c000917a:	30 d2                	xor    dl,dl
c000917c:	89 d0                	mov    eax,edx
c000917e:	5d                   	pop    ebp
c000917f:	c3                   	ret    

c0009180 <intr_set_status>:
c0009180:	55                   	push   ebp
c0009181:	89 e5                	mov    ebp,esp
c0009183:	83 7d 08 01          	cmp    DWORD PTR [ebp+0x8],0x1
c0009187:	75 06                	jne    c000918f <intr_set_status+0xf>
c0009189:	5d                   	pop    ebp
c000918a:	e9 da ff ff ff       	jmp    c0009169 <intr_enable>
c000918f:	5d                   	pop    ebp
c0009190:	e9 04 ff ff ff       	jmp    c0009099 <intr_disable>
c0009195:	00 00                	add    BYTE PTR [eax],al
	...

c0009198 <init_memman>:
c0009198:	55                   	push   ebp
c0009199:	89 e5                	mov    ebp,esp
c000919b:	56                   	push   esi
c000919c:	8b 75 0c             	mov    esi,DWORD PTR [ebp+0xc]
c000919f:	53                   	push   ebx
c00091a0:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c00091a3:	83 ec 0c             	sub    esp,0xc
c00091a6:	53                   	push   ebx
c00091a7:	e8 f3 06 00 00       	call   c000989f <lock_init>
c00091ac:	83 c4 10             	add    esp,0x10
c00091af:	85 f6                	test   esi,esi
c00091b1:	c7 43 24 00 00 00 00 	mov    DWORD PTR [ebx+0x24],0x0
c00091b8:	c7 43 28 00 00 00 00 	mov    DWORD PTR [ebx+0x28],0x0
c00091bf:	c7 43 2c 00 00 00 00 	mov    DWORD PTR [ebx+0x2c],0x0
c00091c6:	c7 43 30 00 00 00 00 	mov    DWORD PTR [ebx+0x30],0x0
c00091cd:	75 19                	jne    c00091e8 <init_memman+0x50>
c00091cf:	68 a4 e3 00 c0       	push   0xc000e3a4
c00091d4:	68 b0 e4 00 c0       	push   0xc000e4b0
c00091d9:	6a 53                	push   0x53
c00091db:	68 b1 e3 00 c0       	push   0xc000e3b1
c00091e0:	e8 7b f2 ff ff       	call   c0008460 <panic_spin>
c00091e5:	83 c4 10             	add    esp,0x10
c00091e8:	89 73 34             	mov    DWORD PTR [ebx+0x34],esi
c00091eb:	8d 65 f8             	lea    esp,[ebp-0x8]
c00091ee:	5b                   	pop    ebx
c00091ef:	5e                   	pop    esi
c00091f0:	5d                   	pop    ebp
c00091f1:	c3                   	ret    

c00091f2 <TotalFreeSize>:
c00091f2:	55                   	push   ebp
c00091f3:	31 d2                	xor    edx,edx
c00091f5:	89 e5                	mov    ebp,esp
c00091f7:	31 c0                	xor    eax,eax
c00091f9:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
c00091fc:	56                   	push   esi
c00091fd:	53                   	push   ebx
c00091fe:	8b 59 24             	mov    ebx,DWORD PTR [ecx+0x24]
c0009201:	eb 08                	jmp    c000920b <TotalFreeSize+0x19>
c0009203:	8b 71 34             	mov    esi,DWORD PTR [ecx+0x34]
c0009206:	03 44 d6 04          	add    eax,DWORD PTR [esi+edx*8+0x4]
c000920a:	42                   	inc    edx
c000920b:	39 da                	cmp    edx,ebx
c000920d:	75 f4                	jne    c0009203 <TotalFreeSize+0x11>
c000920f:	5b                   	pop    ebx
c0009210:	5e                   	pop    esi
c0009211:	5d                   	pop    ebp
c0009212:	c3                   	ret    

c0009213 <mem_alloc>:
c0009213:	55                   	push   ebp
c0009214:	89 e5                	mov    ebp,esp
c0009216:	57                   	push   edi
c0009217:	56                   	push   esi
c0009218:	31 f6                	xor    esi,esi
c000921a:	53                   	push   ebx
c000921b:	83 ec 08             	sub    esp,0x8
c000921e:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c0009221:	8b 5d 0c             	mov    ebx,DWORD PTR [ebp+0xc]
c0009224:	8b 42 24             	mov    eax,DWORD PTR [edx+0x24]
c0009227:	eb 68                	jmp    c0009291 <mem_alloc+0x7e>
c0009229:	8b 7a 34             	mov    edi,DWORD PTR [edx+0x34]
c000922c:	8d 0c f5 00 00 00 00 	lea    ecx,[esi*8+0x0]
c0009233:	01 cf                	add    edi,ecx
c0009235:	39 5f 04             	cmp    DWORD PTR [edi+0x4],ebx
c0009238:	72 56                	jb     c0009290 <mem_alloc+0x7d>
c000923a:	8b 07                	mov    eax,DWORD PTR [edi]
c000923c:	89 4d f0             	mov    DWORD PTR [ebp-0x10],ecx
c000923f:	8d 0c 18             	lea    ecx,[eax+ebx*1]
c0009242:	89 0f                	mov    DWORD PTR [edi],ecx
c0009244:	8b 7d f0             	mov    edi,DWORD PTR [ebp-0x10]
c0009247:	03 7a 34             	add    edi,DWORD PTR [edx+0x34]
c000924a:	29 5f 04             	sub    DWORD PTR [edi+0x4],ebx
c000924d:	8b 5a 34             	mov    ebx,DWORD PTR [edx+0x34]
c0009250:	8b 7d f0             	mov    edi,DWORD PTR [ebp-0x10]
c0009253:	83 7c 3b 04 00       	cmp    DWORD PTR [ebx+edi*1+0x4],0x0
c0009258:	75 3d                	jne    c0009297 <mem_alloc+0x84>
c000925a:	ff 4a 24             	dec    DWORD PTR [edx+0x24]
c000925d:	89 f9                	mov    ecx,edi
c000925f:	89 c3                	mov    ebx,eax
c0009261:	89 75 ec             	mov    DWORD PTR [ebp-0x14],esi
c0009264:	eb 18                	jmp    c000927e <mem_alloc+0x6b>
c0009266:	8b 42 34             	mov    eax,DWORD PTR [edx+0x34]
c0009269:	ff 45 ec             	inc    DWORD PTR [ebp-0x14]
c000926c:	8b 74 08 08          	mov    esi,DWORD PTR [eax+ecx*1+0x8]
c0009270:	8b 7c 08 0c          	mov    edi,DWORD PTR [eax+ecx*1+0xc]
c0009274:	89 34 08             	mov    DWORD PTR [eax+ecx*1],esi
c0009277:	89 7c 08 04          	mov    DWORD PTR [eax+ecx*1+0x4],edi
c000927b:	8b 4d f0             	mov    ecx,DWORD PTR [ebp-0x10]
c000927e:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
c0009281:	8d 79 08             	lea    edi,[ecx+0x8]
c0009284:	3b 42 24             	cmp    eax,DWORD PTR [edx+0x24]
c0009287:	89 7d f0             	mov    DWORD PTR [ebp-0x10],edi
c000928a:	72 da                	jb     c0009266 <mem_alloc+0x53>
c000928c:	89 d8                	mov    eax,ebx
c000928e:	eb 07                	jmp    c0009297 <mem_alloc+0x84>
c0009290:	46                   	inc    esi
c0009291:	39 c6                	cmp    esi,eax
c0009293:	75 94                	jne    c0009229 <mem_alloc+0x16>
c0009295:	31 c0                	xor    eax,eax
c0009297:	5a                   	pop    edx
c0009298:	59                   	pop    ecx
c0009299:	5b                   	pop    ebx
c000929a:	5e                   	pop    esi
c000929b:	5f                   	pop    edi
c000929c:	5d                   	pop    ebp
c000929d:	c3                   	ret    

c000929e <mem_alloc_page>:
c000929e:	55                   	push   ebp
c000929f:	89 e5                	mov    ebp,esp
c00092a1:	53                   	push   ebx
c00092a2:	83 ec 20             	sub    esp,0x20
c00092a5:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c00092a8:	53                   	push   ebx
c00092a9:	e8 7d 07 00 00       	call   c0009a2b <lock_acquire>
c00092ae:	58                   	pop    eax
c00092af:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c00092b2:	5a                   	pop    edx
c00092b3:	c1 e0 0c             	shl    eax,0xc
c00092b6:	50                   	push   eax
c00092b7:	53                   	push   ebx
c00092b8:	e8 56 ff ff ff       	call   c0009213 <mem_alloc>
c00092bd:	89 1c 24             	mov    DWORD PTR [esp],ebx
c00092c0:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
c00092c3:	e8 be 07 00 00       	call   c0009a86 <lock_release>
c00092c8:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c00092cb:	8b 5d fc             	mov    ebx,DWORD PTR [ebp-0x4]
c00092ce:	c9                   	leave  
c00092cf:	c3                   	ret    

c00092d0 <mem_free>:
c00092d0:	55                   	push   ebp
c00092d1:	31 c9                	xor    ecx,ecx
c00092d3:	89 e5                	mov    ebp,esp
c00092d5:	57                   	push   edi
c00092d6:	56                   	push   esi
c00092d7:	53                   	push   ebx
c00092d8:	83 ec 10             	sub    esp,0x10
c00092db:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c00092de:	8b 5d 0c             	mov    ebx,DWORD PTR [ebp+0xc]
c00092e1:	8b 72 24             	mov    esi,DWORD PTR [edx+0x24]
c00092e4:	89 75 ec             	mov    DWORD PTR [ebp-0x14],esi
c00092e7:	eb 09                	jmp    c00092f2 <mem_free+0x22>
c00092e9:	8b 42 34             	mov    eax,DWORD PTR [edx+0x34]
c00092ec:	39 1c c8             	cmp    DWORD PTR [eax+ecx*8],ebx
c00092ef:	77 05                	ja     c00092f6 <mem_free+0x26>
c00092f1:	41                   	inc    ecx
c00092f2:	39 f1                	cmp    ecx,esi
c00092f4:	75 f3                	jne    c00092e9 <mem_free+0x19>
c00092f6:	85 c9                	test   ecx,ecx
c00092f8:	74 7c                	je     c0009376 <mem_free+0xa6>
c00092fa:	8d 04 cd f8 ff ff ff 	lea    eax,[ecx*8-0x8]
c0009301:	89 45 e4             	mov    DWORD PTR [ebp-0x1c],eax
c0009304:	03 42 34             	add    eax,DWORD PTR [edx+0x34]
c0009307:	8b 78 04             	mov    edi,DWORD PTR [eax+0x4]
c000930a:	89 7d f0             	mov    DWORD PTR [ebp-0x10],edi
c000930d:	03 38                	add    edi,DWORD PTR [eax]
c000930f:	39 df                	cmp    edi,ebx
c0009311:	75 63                	jne    c0009376 <mem_free+0xa6>
c0009313:	8b 75 10             	mov    esi,DWORD PTR [ebp+0x10]
c0009316:	03 75 f0             	add    esi,DWORD PTR [ebp-0x10]
c0009319:	89 70 04             	mov    DWORD PTR [eax+0x4],esi
c000931c:	31 c0                	xor    eax,eax
c000931e:	3b 4a 24             	cmp    ecx,DWORD PTR [edx+0x24]
c0009321:	0f 83 dd 00 00 00    	jae    c0009404 <mem_free+0x134>
c0009327:	8b 72 34             	mov    esi,DWORD PTR [edx+0x34]
c000932a:	8d 3c cd 00 00 00 00 	lea    edi,[ecx*8+0x0]
c0009331:	89 7d f0             	mov    DWORD PTR [ebp-0x10],edi
c0009334:	03 5d 10             	add    ebx,DWORD PTR [ebp+0x10]
c0009337:	01 f7                	add    edi,esi
c0009339:	39 1f                	cmp    DWORD PTR [edi],ebx
c000933b:	89 7d ec             	mov    DWORD PTR [ebp-0x14],edi
c000933e:	0f 85 c0 00 00 00    	jne    c0009404 <mem_free+0x134>
c0009344:	8b 5d e4             	mov    ebx,DWORD PTR [ebp-0x1c]
c0009347:	8b 47 04             	mov    eax,DWORD PTR [edi+0x4]
c000934a:	01 44 1e 04          	add    DWORD PTR [esi+ebx*1+0x4],eax
c000934e:	ff 4a 24             	dec    DWORD PTR [edx+0x24]
c0009351:	eb 13                	jmp    c0009366 <mem_free+0x96>
c0009353:	8b 5a 34             	mov    ebx,DWORD PTR [edx+0x34]
c0009356:	41                   	inc    ecx
c0009357:	8b 74 03 08          	mov    esi,DWORD PTR [ebx+eax*1+0x8]
c000935b:	8b 7c 03 0c          	mov    edi,DWORD PTR [ebx+eax*1+0xc]
c000935f:	89 34 03             	mov    DWORD PTR [ebx+eax*1],esi
c0009362:	89 7c 03 04          	mov    DWORD PTR [ebx+eax*1+0x4],edi
c0009366:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c0009369:	3b 4a 24             	cmp    ecx,DWORD PTR [edx+0x24]
c000936c:	8d 78 08             	lea    edi,[eax+0x8]
c000936f:	89 7d f0             	mov    DWORD PTR [ebp-0x10],edi
c0009372:	72 df                	jb     c0009353 <mem_free+0x83>
c0009374:	eb 2a                	jmp    c00093a0 <mem_free+0xd0>
c0009376:	39 f1                	cmp    ecx,esi
c0009378:	73 2a                	jae    c00093a4 <mem_free+0xd4>
c000937a:	8b 7a 34             	mov    edi,DWORD PTR [edx+0x34]
c000937d:	8d 04 cd 00 00 00 00 	lea    eax,[ecx*8+0x0]
c0009384:	89 45 e8             	mov    DWORD PTR [ebp-0x18],eax
c0009387:	01 c7                	add    edi,eax
c0009389:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
c000938c:	01 d8                	add    eax,ebx
c000938e:	39 07                	cmp    DWORD PTR [edi],eax
c0009390:	75 12                	jne    c00093a4 <mem_free+0xd4>
c0009392:	8b 45 e8             	mov    eax,DWORD PTR [ebp-0x18]
c0009395:	89 1f                	mov    DWORD PTR [edi],ebx
c0009397:	03 42 34             	add    eax,DWORD PTR [edx+0x34]
c000939a:	8b 55 10             	mov    edx,DWORD PTR [ebp+0x10]
c000939d:	01 50 04             	add    DWORD PTR [eax+0x4],edx
c00093a0:	31 c0                	xor    eax,eax
c00093a2:	eb 60                	jmp    c0009404 <mem_free+0x134>
c00093a4:	81 fe 9f 0f 00 00    	cmp    esi,0xf9f
c00093aa:	77 4a                	ja     c00093f6 <mem_free+0x126>
c00093ac:	c1 e6 03             	shl    esi,0x3
c00093af:	89 cf                	mov    edi,ecx
c00093b1:	89 5d f0             	mov    DWORD PTR [ebp-0x10],ebx
c00093b4:	eb 15                	jmp    c00093cb <mem_free+0xfb>
c00093b6:	8b 4c 30 f8          	mov    ecx,DWORD PTR [eax+esi*1-0x8]
c00093ba:	8b 5c 30 fc          	mov    ebx,DWORD PTR [eax+esi*1-0x4]
c00093be:	ff 45 ec             	inc    DWORD PTR [ebp-0x14]
c00093c1:	89 0c 30             	mov    DWORD PTR [eax+esi*1],ecx
c00093c4:	89 5c 30 04          	mov    DWORD PTR [eax+esi*1+0x4],ebx
c00093c8:	83 c6 08             	add    esi,0x8
c00093cb:	39 7d ec             	cmp    DWORD PTR [ebp-0x14],edi
c00093ce:	8b 42 34             	mov    eax,DWORD PTR [edx+0x34]
c00093d1:	7f e3                	jg     c00093b6 <mem_free+0xe6>
c00093d3:	8b 72 24             	mov    esi,DWORD PTR [edx+0x24]
c00093d6:	89 f9                	mov    ecx,edi
c00093d8:	8b 5d f0             	mov    ebx,DWORD PTR [ebp-0x10]
c00093db:	46                   	inc    esi
c00093dc:	39 72 28             	cmp    DWORD PTR [edx+0x28],esi
c00093df:	89 72 24             	mov    DWORD PTR [edx+0x24],esi
c00093e2:	73 03                	jae    c00093e7 <mem_free+0x117>
c00093e4:	89 72 28             	mov    DWORD PTR [edx+0x28],esi
c00093e7:	89 1c c8             	mov    DWORD PTR [eax+ecx*8],ebx
c00093ea:	8b 5d 10             	mov    ebx,DWORD PTR [ebp+0x10]
c00093ed:	8b 42 34             	mov    eax,DWORD PTR [edx+0x34]
c00093f0:	89 5c c8 04          	mov    DWORD PTR [eax+ecx*8+0x4],ebx
c00093f4:	eb aa                	jmp    c00093a0 <mem_free+0xd0>
c00093f6:	8b 75 10             	mov    esi,DWORD PTR [ebp+0x10]
c00093f9:	b8 01 00 00 00       	mov    eax,0x1
c00093fe:	ff 42 30             	inc    DWORD PTR [edx+0x30]
c0009401:	01 72 2c             	add    DWORD PTR [edx+0x2c],esi
c0009404:	83 c4 10             	add    esp,0x10
c0009407:	5b                   	pop    ebx
c0009408:	5e                   	pop    esi
c0009409:	5f                   	pop    edi
c000940a:	5d                   	pop    ebp
c000940b:	c3                   	ret    

c000940c <mem_free_page>:
c000940c:	55                   	push   ebp
c000940d:	89 e5                	mov    ebp,esp
c000940f:	53                   	push   ebx
c0009410:	83 ec 20             	sub    esp,0x20
c0009413:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c0009416:	53                   	push   ebx
c0009417:	e8 0f 06 00 00       	call   c0009a2b <lock_acquire>
c000941c:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
c000941f:	83 c4 0c             	add    esp,0xc
c0009422:	c1 e0 0c             	shl    eax,0xc
c0009425:	50                   	push   eax
c0009426:	ff 75 0c             	push   DWORD PTR [ebp+0xc]
c0009429:	53                   	push   ebx
c000942a:	e8 a1 fe ff ff       	call   c00092d0 <mem_free>
c000942f:	89 1c 24             	mov    DWORD PTR [esp],ebx
c0009432:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
c0009435:	e8 4c 06 00 00       	call   c0009a86 <lock_release>
c000943a:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c000943d:	8b 5d fc             	mov    ebx,DWORD PTR [ebp-0x4]
c0009440:	c9                   	leave  
c0009441:	c3                   	ret    

c0009442 <init_memory>:
c0009442:	55                   	push   ebp
c0009443:	89 e5                	mov    ebp,esp
c0009445:	57                   	push   edi
c0009446:	56                   	push   esi
c0009447:	53                   	push   ebx
c0009448:	83 ec 0c             	sub    esp,0xc
c000944b:	83 3d 08 7c 00 00 00 	cmp    DWORD PTR ds:0x7c08,0x0
c0009452:	0f 85 f5 00 00 00    	jne    c000954d <init_memory+0x10b>
c0009458:	83 3d 0c 7c 00 00 00 	cmp    DWORD PTR ds:0x7c0c,0x0
c000945f:	0f 85 e8 00 00 00    	jne    c000954d <init_memory+0x10b>
c0009465:	8b 1d 00 7c 00 00    	mov    ebx,DWORD PTR ds:0x7c00
c000946b:	31 f6                	xor    esi,esi
c000946d:	50                   	push   eax
c000946e:	50                   	push   eax
c000946f:	68 c1 e3 00 c0       	push   0xc000e3c1
c0009474:	6a 07                	push   0x7
c0009476:	e8 5a 1a 00 00       	call   c000aed5 <put_str>
c000947b:	83 c4 10             	add    esp,0x10
c000947e:	e9 8a 00 00 00       	jmp    c000950d <init_memory+0xcb>
c0009483:	51                   	push   ecx
c0009484:	51                   	push   ecx
c0009485:	68 c8 e3 00 c0       	push   0xc000e3c8
c000948a:	6a 07                	push   0x7
c000948c:	e8 44 1a 00 00       	call   c000aed5 <put_str>
c0009491:	83 c4 0c             	add    esp,0xc
c0009494:	6a 10                	push   0x10
c0009496:	ff 33                	push   DWORD PTR [ebx]
c0009498:	6a 07                	push   0x7
c000949a:	e8 5e 1a 00 00       	call   c000aefd <put_uint>
c000949f:	5f                   	pop    edi
c00094a0:	58                   	pop    eax
c00094a1:	68 d3 e3 00 c0       	push   0xc000e3d3
c00094a6:	6a 07                	push   0x7
c00094a8:	e8 28 1a 00 00       	call   c000aed5 <put_str>
c00094ad:	83 c4 0c             	add    esp,0xc
c00094b0:	6a 10                	push   0x10
c00094b2:	ff 73 08             	push   DWORD PTR [ebx+0x8]
c00094b5:	6a 07                	push   0x7
c00094b7:	e8 41 1a 00 00       	call   c000aefd <put_uint>
c00094bc:	58                   	pop    eax
c00094bd:	5a                   	pop    edx
c00094be:	68 e1 e3 00 c0       	push   0xc000e3e1
c00094c3:	6a 07                	push   0x7
c00094c5:	e8 0b 1a 00 00       	call   c000aed5 <put_str>
c00094ca:	83 c4 0c             	add    esp,0xc
c00094cd:	6a 10                	push   0x10
c00094cf:	ff 73 10             	push   DWORD PTR [ebx+0x10]
c00094d2:	6a 07                	push   0x7
c00094d4:	e8 24 1a 00 00       	call   c000aefd <put_uint>
c00094d9:	59                   	pop    ecx
c00094da:	5f                   	pop    edi
c00094db:	68 ec e3 00 c0       	push   0xc000e3ec
c00094e0:	6a 07                	push   0x7
c00094e2:	e8 ee 19 00 00       	call   c000aed5 <put_str>
c00094e7:	83 c4 10             	add    esp,0x10
c00094ea:	81 3b 00 00 10 00    	cmp    DWORD PTR [ebx],0x100000
c00094f0:	75 17                	jne    c0009509 <init_memory+0xc7>
c00094f2:	83 7b 10 01          	cmp    DWORD PTR [ebx+0x10],0x1
c00094f6:	75 11                	jne    c0009509 <init_memory+0xc7>
c00094f8:	8b 4b 08             	mov    ecx,DWORD PTR [ebx+0x8]
c00094fb:	81 c1 00 00 10 00    	add    ecx,0x100000
c0009501:	85 c9                	test   ecx,ecx
c0009503:	89 c8                	mov    eax,ecx
c0009505:	75 2f                	jne    c0009536 <init_memory+0xf4>
c0009507:	eb 10                	jmp    c0009519 <init_memory+0xd7>
c0009509:	83 c3 14             	add    ebx,0x14
c000950c:	46                   	inc    esi
c000950d:	3b 35 04 7c 00 00    	cmp    esi,DWORD PTR ds:0x7c04
c0009513:	0f 82 6a ff ff ff    	jb     c0009483 <init_memory+0x41>
c0009519:	68 ee e3 00 c0       	push   0xc000e3ee
c000951e:	68 a4 e4 00 c0       	push   0xc000e4a4
c0009523:	6a 34                	push   0x34
c0009525:	68 b1 e3 00 c0       	push   0xc000e3b1
c000952a:	e8 31 ef ff ff       	call   c0008460 <panic_spin>
c000952f:	83 c4 10             	add    esp,0x10
c0009532:	31 c0                	xor    eax,eax
c0009534:	eb 0d                	jmp    c0009543 <init_memory+0x101>
c0009536:	81 f9 ff ff ff 3f    	cmp    ecx,0x3fffffff
c000953c:	76 05                	jbe    c0009543 <init_memory+0x101>
c000953e:	b8 ff ff ff 3f       	mov    eax,0x3fffffff
c0009543:	05 00 00 10 00       	add    eax,0x100000
c0009548:	a3 08 7c 00 00       	mov    ds:0x7c08,eax
c000954d:	8b 35 08 7c 00 00    	mov    esi,DWORD PTR ds:0x7c08
c0009553:	51                   	push   ecx
c0009554:	51                   	push   ecx
c0009555:	68 5c ec 01 c0       	push   0xc001ec5c
c000955a:	68 5c e6 02 c0       	push   0xc002e65c
c000955f:	e8 34 fc ff ff       	call   c0009198 <init_memman>
c0009564:	8d be 00 e0 5f ff    	lea    edi,[esi-0xa02000]
c000956a:	58                   	pop    eax
c000956b:	89 fb                	mov    ebx,edi
c000956d:	5a                   	pop    edx
c000956e:	c1 ef 0d             	shr    edi,0xd
c0009571:	d1 eb                	shr    ebx,1
c0009573:	68 b4 f1 00 c0       	push   0xc000f1b4
c0009578:	29 de                	sub    esi,ebx
c000957a:	68 24 6f 01 c0       	push   0xc0016f24
c000957f:	81 c3 00 20 40 00    	add    ebx,0x402000
c0009585:	e8 0e fc ff ff       	call   c0009198 <init_memman>
c000958a:	c1 ee 0c             	shr    esi,0xc
c000958d:	59                   	pop    ecx
c000958e:	58                   	pop    eax
c000958f:	68 5c 6f 01 c0       	push   0xc0016f5c
c0009594:	68 b4 6e 01 c0       	push   0xc0016eb4
c0009599:	e8 fa fb ff ff       	call   c0009198 <init_memman>
c000959e:	58                   	pop    eax
c000959f:	5a                   	pop    edx
c00095a0:	68 5c 69 02 c0       	push   0xc002695c
c00095a5:	68 ec 6e 01 c0       	push   0xc0016eec
c00095aa:	e8 e9 fb ff ff       	call   c0009198 <init_memman>
c00095af:	83 c4 0c             	add    esp,0xc
c00095b2:	57                   	push   edi
c00095b3:	68 00 20 40 00       	push   0x402000
c00095b8:	68 5c e6 02 c0       	push   0xc002e65c
c00095bd:	e8 4a fe ff ff       	call   c000940c <mem_free_page>
c00095c2:	83 c4 0c             	add    esp,0xc
c00095c5:	56                   	push   esi
c00095c6:	53                   	push   ebx
c00095c7:	68 b4 6e 01 c0       	push   0xc0016eb4
c00095cc:	e8 3b fe ff ff       	call   c000940c <mem_free_page>
c00095d1:	83 c4 0c             	add    esp,0xc
c00095d4:	68 fe db 03 00       	push   0x3dbfe
c00095d9:	68 00 20 40 c0       	push   0xc0402000
c00095de:	68 24 6f 01 c0       	push   0xc0016f24
c00095e3:	e8 24 fe ff ff       	call   c000940c <mem_free_page>
c00095e8:	83 c4 10             	add    esp,0x10
c00095eb:	8d 65 f4             	lea    esp,[ebp-0xc]
c00095ee:	5b                   	pop    ebx
c00095ef:	5e                   	pop    esi
c00095f0:	5f                   	pop    edi
c00095f1:	5d                   	pop    ebp
c00095f2:	c3                   	ret    

c00095f3 <pde_ptr>:
c00095f3:	55                   	push   ebp
c00095f4:	89 e5                	mov    ebp,esp
c00095f6:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c00095f9:	5d                   	pop    ebp
c00095fa:	c1 e8 16             	shr    eax,0x16
c00095fd:	8d 04 85 00 f0 ff ff 	lea    eax,[eax*4-0x1000]
c0009604:	c3                   	ret    

c0009605 <pte_ptr>:
c0009605:	55                   	push   ebp
c0009606:	89 e5                	mov    ebp,esp
c0009608:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c000960b:	5d                   	pop    ebp
c000960c:	89 c2                	mov    edx,eax
c000960e:	25 00 f0 3f 00       	and    eax,0x3ff000
c0009613:	81 e2 00 00 c0 ff    	and    edx,0xffc00000
c0009619:	c1 ea 0a             	shr    edx,0xa
c000961c:	c1 e8 0a             	shr    eax,0xa
c000961f:	8d 84 02 00 00 c0 ff 	lea    eax,[edx+eax*1-0x400000]
c0009626:	c3                   	ret    

c0009627 <page_table_add>:
c0009627:	55                   	push   ebp
c0009628:	89 e5                	mov    ebp,esp
c000962a:	57                   	push   edi
c000962b:	56                   	push   esi
c000962c:	53                   	push   ebx
c000962d:	83 ec 0c             	sub    esp,0xc
c0009630:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0009633:	8b 75 0c             	mov    esi,DWORD PTR [ebp+0xc]
c0009636:	50                   	push   eax
c0009637:	89 c7                	mov    edi,eax
c0009639:	e8 c7 ff ff ff       	call   c0009605 <pte_ptr>
c000963e:	c1 ef 16             	shr    edi,0x16
c0009641:	f6 04 bd 00 f0 ff ff 	test   BYTE PTR [edi*4-0x1000],0x1
c0009648:	01 
c0009649:	5a                   	pop    edx
c000964a:	89 c3                	mov    ebx,eax
c000964c:	74 0c                	je     c000965a <page_table_add+0x33>
c000964e:	f6 00 01             	test   BYTE PTR [eax],0x1
c0009651:	75 3e                	jne    c0009691 <page_table_add+0x6a>
c0009653:	83 ce 07             	or     esi,0x7
c0009656:	89 30                	mov    DWORD PTR [eax],esi
c0009658:	eb 37                	jmp    c0009691 <page_table_add+0x6a>
c000965a:	50                   	push   eax
c000965b:	83 ce 07             	or     esi,0x7
c000965e:	50                   	push   eax
c000965f:	6a 01                	push   0x1
c0009661:	68 5c e6 02 c0       	push   0xc002e65c
c0009666:	e8 33 fc ff ff       	call   c000929e <mem_alloc_page>
c000966b:	83 c4 0c             	add    esp,0xc
c000966e:	83 c8 07             	or     eax,0x7
c0009671:	89 04 bd 00 f0 ff ff 	mov    DWORD PTR [edi*4-0x1000],eax
c0009678:	89 d8                	mov    eax,ebx
c000967a:	68 00 10 00 00       	push   0x1000
c000967f:	25 00 f0 ff ff       	and    eax,0xfffff000
c0009684:	6a 00                	push   0x0
c0009686:	50                   	push   eax
c0009687:	e8 e8 18 00 00       	call   c000af74 <memset>
c000968c:	83 c4 10             	add    esp,0x10
c000968f:	89 33                	mov    DWORD PTR [ebx],esi
c0009691:	8d 65 f4             	lea    esp,[ebp-0xc]
c0009694:	5b                   	pop    ebx
c0009695:	5e                   	pop    esi
c0009696:	5f                   	pop    edi
c0009697:	5d                   	pop    ebp
c0009698:	c3                   	ret    

c0009699 <page_alloc>:
c0009699:	55                   	push   ebp
c000969a:	89 e5                	mov    ebp,esp
c000969c:	57                   	push   edi
c000969d:	56                   	push   esi
c000969e:	53                   	push   ebx
c000969f:	83 ec 1c             	sub    esp,0x1c
c00096a2:	8b 75 0c             	mov    esi,DWORD PTR [ebp+0xc]
c00096a5:	83 7d 08 01          	cmp    DWORD PTR [ebp+0x8],0x1
c00096a9:	75 0e                	jne    c00096b9 <page_alloc+0x20>
c00096ab:	c7 45 e4 5c e6 02 c0 	mov    DWORD PTR [ebp-0x1c],0xc002e65c
c00096b2:	b8 24 6f 01 c0       	mov    eax,0xc0016f24
c00096b7:	eb 0c                	jmp    c00096c5 <page_alloc+0x2c>
c00096b9:	c7 45 e4 b4 6e 01 c0 	mov    DWORD PTR [ebp-0x1c],0xc0016eb4
c00096c0:	b8 ec 6e 01 c0       	mov    eax,0xc0016eec
c00096c5:	52                   	push   edx
c00096c6:	52                   	push   edx
c00096c7:	56                   	push   esi
c00096c8:	50                   	push   eax
c00096c9:	e8 d0 fb ff ff       	call   c000929e <mem_alloc_page>
c00096ce:	83 c4 10             	add    esp,0x10
c00096d1:	85 c0                	test   eax,eax
c00096d3:	89 c3                	mov    ebx,eax
c00096d5:	89 c7                	mov    edi,eax
c00096d7:	75 28                	jne    c0009701 <page_alloc+0x68>
c00096d9:	eb 2e                	jmp    c0009709 <page_alloc+0x70>
c00096db:	50                   	push   eax
c00096dc:	50                   	push   eax
c00096dd:	6a 01                	push   0x1
c00096df:	ff 75 e4             	push   DWORD PTR [ebp-0x1c]
c00096e2:	e8 b7 fb ff ff       	call   c000929e <mem_alloc_page>
c00096e7:	83 c4 10             	add    esp,0x10
c00096ea:	85 c0                	test   eax,eax
c00096ec:	74 19                	je     c0009707 <page_alloc+0x6e>
c00096ee:	51                   	push   ecx
c00096ef:	4e                   	dec    esi
c00096f0:	51                   	push   ecx
c00096f1:	50                   	push   eax
c00096f2:	57                   	push   edi
c00096f3:	81 c7 00 10 00 00    	add    edi,0x1000
c00096f9:	e8 29 ff ff ff       	call   c0009627 <page_table_add>
c00096fe:	83 c4 10             	add    esp,0x10
c0009701:	85 f6                	test   esi,esi
c0009703:	75 d6                	jne    c00096db <page_alloc+0x42>
c0009705:	eb 02                	jmp    c0009709 <page_alloc+0x70>
c0009707:	31 db                	xor    ebx,ebx
c0009709:	8d 65 f4             	lea    esp,[ebp-0xc]
c000970c:	89 d8                	mov    eax,ebx
c000970e:	5b                   	pop    ebx
c000970f:	5e                   	pop    esi
c0009710:	5f                   	pop    edi
c0009711:	5d                   	pop    ebp
c0009712:	c3                   	ret    

c0009713 <get_kernel_page>:
c0009713:	55                   	push   ebp
c0009714:	89 e5                	mov    ebp,esp
c0009716:	56                   	push   esi
c0009717:	53                   	push   ebx
c0009718:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c000971b:	50                   	push   eax
c000971c:	50                   	push   eax
c000971d:	53                   	push   ebx
c000971e:	6a 01                	push   0x1
c0009720:	e8 74 ff ff ff       	call   c0009699 <page_alloc>
c0009725:	83 c4 10             	add    esp,0x10
c0009728:	85 c0                	test   eax,eax
c000972a:	89 c6                	mov    esi,eax
c000972c:	74 10                	je     c000973e <get_kernel_page+0x2b>
c000972e:	c1 e3 0c             	shl    ebx,0xc
c0009731:	50                   	push   eax
c0009732:	53                   	push   ebx
c0009733:	6a 00                	push   0x0
c0009735:	56                   	push   esi
c0009736:	e8 39 18 00 00       	call   c000af74 <memset>
c000973b:	83 c4 10             	add    esp,0x10
c000973e:	51                   	push   ecx
c000973f:	51                   	push   ecx
c0009740:	68 03 e4 00 c0       	push   0xc000e403
c0009745:	6a 07                	push   0x7
c0009747:	e8 89 17 00 00       	call   c000aed5 <put_str>
c000974c:	83 c4 0c             	add    esp,0xc
c000974f:	6a 10                	push   0x10
c0009751:	56                   	push   esi
c0009752:	6a 07                	push   0x7
c0009754:	e8 a4 17 00 00       	call   c000aefd <put_uint>
c0009759:	8d 65 f8             	lea    esp,[ebp-0x8]
c000975c:	89 f0                	mov    eax,esi
c000975e:	5b                   	pop    ebx
c000975f:	5e                   	pop    esi
c0009760:	5d                   	pop    ebp
c0009761:	c3                   	ret    

c0009762 <get_user_page>:
c0009762:	55                   	push   ebp
c0009763:	89 e5                	mov    ebp,esp
c0009765:	53                   	push   ebx
c0009766:	83 ec 1c             	sub    esp,0x1c
c0009769:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c000976c:	53                   	push   ebx
c000976d:	6a 02                	push   0x2
c000976f:	e8 25 ff ff ff       	call   c0009699 <page_alloc>
c0009774:	83 c4 10             	add    esp,0x10
c0009777:	85 c0                	test   eax,eax
c0009779:	74 16                	je     c0009791 <get_user_page+0x2f>
c000977b:	c1 e3 0c             	shl    ebx,0xc
c000977e:	52                   	push   edx
c000977f:	53                   	push   ebx
c0009780:	6a 00                	push   0x0
c0009782:	50                   	push   eax
c0009783:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
c0009786:	e8 e9 17 00 00       	call   c000af74 <memset>
c000978b:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c000978e:	83 c4 10             	add    esp,0x10
c0009791:	8b 5d fc             	mov    ebx,DWORD PTR [ebp-0x4]
c0009794:	c9                   	leave  
c0009795:	c3                   	ret    

c0009796 <get_a_page>:
c0009796:	55                   	push   ebp
c0009797:	89 e5                	mov    ebp,esp
c0009799:	57                   	push   edi
c000979a:	bf b4 6e 01 c0       	mov    edi,0xc0016eb4
c000979f:	56                   	push   esi
c00097a0:	53                   	push   ebx
c00097a1:	83 ec 0c             	sub    esp,0xc
c00097a4:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c00097a7:	8b 75 0c             	mov    esi,DWORD PTR [ebp+0xc]
c00097aa:	83 fb 01             	cmp    ebx,0x1
c00097ad:	75 05                	jne    c00097b4 <get_a_page+0x1e>
c00097af:	bf 5c e6 02 c0       	mov    edi,0xc002e65c
c00097b4:	e8 dd 03 00 00       	call   c0009b96 <running_thread>
c00097b9:	83 fb 02             	cmp    ebx,0x2
c00097bc:	8b 40 38             	mov    eax,DWORD PTR [eax+0x38]
c00097bf:	75 04                	jne    c00097c5 <get_a_page+0x2f>
c00097c1:	85 c0                	test   eax,eax
c00097c3:	75 33                	jne    c00097f8 <get_a_page+0x62>
c00097c5:	4b                   	dec    ebx
c00097c6:	75 14                	jne    c00097dc <get_a_page+0x46>
c00097c8:	85 c0                	test   eax,eax
c00097ca:	75 10                	jne    c00097dc <get_a_page+0x46>
c00097cc:	50                   	push   eax
c00097cd:	50                   	push   eax
c00097ce:	6a 01                	push   0x1
c00097d0:	68 24 6f 01 c0       	push   0xc0016f24
c00097d5:	e8 c4 fa ff ff       	call   c000929e <mem_alloc_page>
c00097da:	eb 19                	jmp    c00097f5 <get_a_page+0x5f>
c00097dc:	68 0f e4 00 c0       	push   0xc000e40f
c00097e1:	68 bc e4 00 c0       	push   0xc000e4bc
c00097e6:	68 44 01 00 00       	push   0x144
c00097eb:	68 b1 e3 00 c0       	push   0xc000e3b1
c00097f0:	e8 6b ec ff ff       	call   c0008460 <panic_spin>
c00097f5:	83 c4 10             	add    esp,0x10
c00097f8:	53                   	push   ebx
c00097f9:	53                   	push   ebx
c00097fa:	6a 01                	push   0x1
c00097fc:	57                   	push   edi
c00097fd:	e8 9c fa ff ff       	call   c000929e <mem_alloc_page>
c0009802:	83 c4 10             	add    esp,0x10
c0009805:	85 c0                	test   eax,eax
c0009807:	89 c3                	mov    ebx,eax
c0009809:	75 1c                	jne    c0009827 <get_a_page+0x91>
c000980b:	68 66 e4 00 c0       	push   0xc000e466
c0009810:	68 bc e4 00 c0       	push   0xc000e4bc
c0009815:	68 47 01 00 00       	push   0x147
c000981a:	68 b1 e3 00 c0       	push   0xc000e3b1
c000981f:	e8 3c ec ff ff       	call   c0008460 <panic_spin>
c0009824:	83 c4 10             	add    esp,0x10
c0009827:	51                   	push   ecx
c0009828:	51                   	push   ecx
c0009829:	53                   	push   ebx
c000982a:	56                   	push   esi
c000982b:	e8 f7 fd ff ff       	call   c0009627 <page_table_add>
c0009830:	8d 65 f4             	lea    esp,[ebp-0xc]
c0009833:	89 f0                	mov    eax,esi
c0009835:	5b                   	pop    ebx
c0009836:	5e                   	pop    esi
c0009837:	5f                   	pop    edi
c0009838:	5d                   	pop    ebp
c0009839:	c3                   	ret    

c000983a <addr_v2p>:
c000983a:	55                   	push   ebp
c000983b:	89 e5                	mov    ebp,esp
c000983d:	53                   	push   ebx
c000983e:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c0009841:	53                   	push   ebx
c0009842:	81 e3 ff 0f 00 00    	and    ebx,0xfff
c0009848:	e8 b8 fd ff ff       	call   c0009605 <pte_ptr>
c000984d:	5a                   	pop    edx
c000984e:	8b 00                	mov    eax,DWORD PTR [eax]
c0009850:	25 00 f0 ff ff       	and    eax,0xfffff000
c0009855:	09 d8                	or     eax,ebx
c0009857:	8b 5d fc             	mov    ebx,DWORD PTR [ebp-0x4]
c000985a:	c9                   	leave  
c000985b:	c3                   	ret    

c000985c <sema_init>:
c000985c:	55                   	push   ebp
c000985d:	89 e5                	mov    ebp,esp
c000985f:	56                   	push   esi
c0009860:	0f b6 75 0c          	movzx  esi,BYTE PTR [ebp+0xc]
c0009864:	53                   	push   ebx
c0009865:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c0009868:	83 ec 0c             	sub    esp,0xc
c000986b:	8d 43 04             	lea    eax,[ebx+0x4]
c000986e:	89 33                	mov    DWORD PTR [ebx],esi
c0009870:	50                   	push   eax
c0009871:	e8 42 13 00 00       	call   c000abb8 <list_init>
c0009876:	8b 03                	mov    eax,DWORD PTR [ebx]
c0009878:	83 c4 10             	add    esp,0x10
c000987b:	39 f0                	cmp    eax,esi
c000987d:	74 19                	je     c0009898 <sema_init+0x3c>
c000987f:	68 c8 e4 00 c0       	push   0xc000e4c8
c0009884:	68 0c e6 00 c0       	push   0xc000e60c
c0009889:	6a 0d                	push   0xd
c000988b:	68 de e4 00 c0       	push   0xc000e4de
c0009890:	e8 cb eb ff ff       	call   c0008460 <panic_spin>
c0009895:	83 c4 10             	add    esp,0x10
c0009898:	8d 65 f8             	lea    esp,[ebp-0x8]
c000989b:	5b                   	pop    ebx
c000989c:	5e                   	pop    esi
c000989d:	5d                   	pop    ebp
c000989e:	c3                   	ret    

c000989f <lock_init>:
c000989f:	55                   	push   ebp
c00098a0:	89 e5                	mov    ebp,esp
c00098a2:	83 ec 10             	sub    esp,0x10
c00098a5:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c00098a8:	c7 00 00 00 00 00    	mov    DWORD PTR [eax],0x0
c00098ae:	c7 40 20 00 00 00 00 	mov    DWORD PTR [eax+0x20],0x0
c00098b5:	83 c0 04             	add    eax,0x4
c00098b8:	6a 01                	push   0x1
c00098ba:	50                   	push   eax
c00098bb:	e8 9c ff ff ff       	call   c000985c <sema_init>
c00098c0:	83 c4 10             	add    esp,0x10
c00098c3:	c9                   	leave  
c00098c4:	c3                   	ret    

c00098c5 <sema_down>:
c00098c5:	55                   	push   ebp
c00098c6:	89 e5                	mov    ebp,esp
c00098c8:	57                   	push   edi
c00098c9:	56                   	push   esi
c00098ca:	53                   	push   ebx
c00098cb:	83 ec 0c             	sub    esp,0xc
c00098ce:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c00098d1:	e8 c3 f7 ff ff       	call   c0009099 <intr_disable>
c00098d6:	8d 73 04             	lea    esi,[ebx+0x4]
c00098d9:	89 c7                	mov    edi,eax
c00098db:	e9 82 00 00 00       	jmp    c0009962 <sema_down+0x9d>
c00098e0:	e8 b1 02 00 00       	call   c0009b96 <running_thread>
c00098e5:	52                   	push   edx
c00098e6:	83 c0 2c             	add    eax,0x2c
c00098e9:	52                   	push   edx
c00098ea:	50                   	push   eax
c00098eb:	56                   	push   esi
c00098ec:	e8 7f 13 00 00       	call   c000ac70 <list_find>
c00098f1:	83 c4 10             	add    esp,0x10
c00098f4:	85 c0                	test   eax,eax
c00098f6:	74 19                	je     c0009911 <sema_down+0x4c>
c00098f8:	68 ec e4 00 c0       	push   0xc000e4ec
c00098fd:	68 18 e6 00 c0       	push   0xc000e618
c0009902:	6a 24                	push   0x24
c0009904:	68 de e4 00 c0       	push   0xc000e4de
c0009909:	e8 52 eb ff ff       	call   c0008460 <panic_spin>
c000990e:	83 c4 10             	add    esp,0x10
c0009911:	e8 80 02 00 00       	call   c0009b96 <running_thread>
c0009916:	51                   	push   ecx
c0009917:	83 c0 2c             	add    eax,0x2c
c000991a:	51                   	push   ecx
c000991b:	50                   	push   eax
c000991c:	56                   	push   esi
c000991d:	e8 4e 13 00 00       	call   c000ac70 <list_find>
c0009922:	83 c4 10             	add    esp,0x10
c0009925:	85 c0                	test   eax,eax
c0009927:	74 19                	je     c0009942 <sema_down+0x7d>
c0009929:	68 2d e5 00 c0       	push   0xc000e52d
c000992e:	68 18 e6 00 c0       	push   0xc000e618
c0009933:	6a 27                	push   0x27
c0009935:	68 de e4 00 c0       	push   0xc000e4de
c000993a:	e8 21 eb ff ff       	call   c0008460 <panic_spin>
c000993f:	83 c4 10             	add    esp,0x10
c0009942:	e8 4f 02 00 00       	call   c0009b96 <running_thread>
c0009947:	52                   	push   edx
c0009948:	83 c0 2c             	add    eax,0x2c
c000994b:	52                   	push   edx
c000994c:	50                   	push   eax
c000994d:	56                   	push   esi
c000994e:	e8 c4 12 00 00       	call   c000ac17 <list_append>
c0009953:	c7 04 24 02 00 00 00 	mov    DWORD PTR [esp],0x2
c000995a:	e8 e5 04 00 00       	call   c0009e44 <thread_block>
c000995f:	83 c4 10             	add    esp,0x10
c0009962:	8b 03                	mov    eax,DWORD PTR [ebx]
c0009964:	85 c0                	test   eax,eax
c0009966:	0f 84 74 ff ff ff    	je     c00098e0 <sema_down+0x1b>
c000996c:	8b 03                	mov    eax,DWORD PTR [ebx]
c000996e:	48                   	dec    eax
c000996f:	89 03                	mov    DWORD PTR [ebx],eax
c0009971:	8b 03                	mov    eax,DWORD PTR [ebx]
c0009973:	85 c0                	test   eax,eax
c0009975:	74 19                	je     c0009990 <sema_down+0xcb>
c0009977:	68 61 e5 00 c0       	push   0xc000e561
c000997c:	68 18 e6 00 c0       	push   0xc000e618
c0009981:	6a 2d                	push   0x2d
c0009983:	68 de e4 00 c0       	push   0xc000e4de
c0009988:	e8 d3 ea ff ff       	call   c0008460 <panic_spin>
c000998d:	83 c4 10             	add    esp,0x10
c0009990:	89 7d 08             	mov    DWORD PTR [ebp+0x8],edi
c0009993:	8d 65 f4             	lea    esp,[ebp-0xc]
c0009996:	5b                   	pop    ebx
c0009997:	5e                   	pop    esi
c0009998:	5f                   	pop    edi
c0009999:	5d                   	pop    ebp
c000999a:	e9 e1 f7 ff ff       	jmp    c0009180 <intr_set_status>

c000999f <sema_up>:
c000999f:	55                   	push   ebp
c00099a0:	89 e5                	mov    ebp,esp
c00099a2:	57                   	push   edi
c00099a3:	56                   	push   esi
c00099a4:	53                   	push   ebx
c00099a5:	83 ec 0c             	sub    esp,0xc
c00099a8:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c00099ab:	e8 e9 f6 ff ff       	call   c0009099 <intr_disable>
c00099b0:	89 c7                	mov    edi,eax
c00099b2:	8b 03                	mov    eax,DWORD PTR [ebx]
c00099b4:	85 c0                	test   eax,eax
c00099b6:	74 19                	je     c00099d1 <sema_up+0x32>
c00099b8:	68 61 e5 00 c0       	push   0xc000e561
c00099bd:	68 24 e6 00 c0       	push   0xc000e624
c00099c2:	6a 38                	push   0x38
c00099c4:	68 de e4 00 c0       	push   0xc000e4de
c00099c9:	e8 92 ea ff ff       	call   c0008460 <panic_spin>
c00099ce:	83 c4 10             	add    esp,0x10
c00099d1:	83 ec 0c             	sub    esp,0xc
c00099d4:	8d 73 04             	lea    esi,[ebx+0x4]
c00099d7:	56                   	push   esi
c00099d8:	e8 0c 13 00 00       	call   c000ace9 <list_empty>
c00099dd:	83 c4 10             	add    esp,0x10
c00099e0:	85 c0                	test   eax,eax
c00099e2:	75 15                	jne    c00099f9 <sema_up+0x5a>
c00099e4:	83 ec 0c             	sub    esp,0xc
c00099e7:	56                   	push   esi
c00099e8:	e8 69 12 00 00       	call   c000ac56 <list_pop>
c00099ed:	59                   	pop    ecx
c00099ee:	ff 70 04             	push   DWORD PTR [eax+0x4]
c00099f1:	e8 99 04 00 00       	call   c0009e8f <thread_unblock>
c00099f6:	83 c4 10             	add    esp,0x10
c00099f9:	8b 03                	mov    eax,DWORD PTR [ebx]
c00099fb:	40                   	inc    eax
c00099fc:	89 03                	mov    DWORD PTR [ebx],eax
c00099fe:	8b 03                	mov    eax,DWORD PTR [ebx]
c0009a00:	48                   	dec    eax
c0009a01:	74 19                	je     c0009a1c <sema_up+0x7d>
c0009a03:	68 73 e5 00 c0       	push   0xc000e573
c0009a08:	68 24 e6 00 c0       	push   0xc000e624
c0009a0d:	6a 3f                	push   0x3f
c0009a0f:	68 de e4 00 c0       	push   0xc000e4de
c0009a14:	e8 47 ea ff ff       	call   c0008460 <panic_spin>
c0009a19:	83 c4 10             	add    esp,0x10
c0009a1c:	89 7d 08             	mov    DWORD PTR [ebp+0x8],edi
c0009a1f:	8d 65 f4             	lea    esp,[ebp-0xc]
c0009a22:	5b                   	pop    ebx
c0009a23:	5e                   	pop    esi
c0009a24:	5f                   	pop    edi
c0009a25:	5d                   	pop    ebp
c0009a26:	e9 55 f7 ff ff       	jmp    c0009180 <intr_set_status>

c0009a2b <lock_acquire>:
c0009a2b:	55                   	push   ebp
c0009a2c:	89 e5                	mov    ebp,esp
c0009a2e:	56                   	push   esi
c0009a2f:	53                   	push   ebx
c0009a30:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c0009a33:	8b 33                	mov    esi,DWORD PTR [ebx]
c0009a35:	e8 5c 01 00 00       	call   c0009b96 <running_thread>
c0009a3a:	39 c6                	cmp    esi,eax
c0009a3c:	74 3e                	je     c0009a7c <lock_acquire+0x51>
c0009a3e:	83 ec 0c             	sub    esp,0xc
c0009a41:	8d 43 04             	lea    eax,[ebx+0x4]
c0009a44:	50                   	push   eax
c0009a45:	e8 7b fe ff ff       	call   c00098c5 <sema_down>
c0009a4a:	e8 47 01 00 00       	call   c0009b96 <running_thread>
c0009a4f:	83 c4 10             	add    esp,0x10
c0009a52:	83 7b 20 00          	cmp    DWORD PTR [ebx+0x20],0x0
c0009a56:	89 03                	mov    DWORD PTR [ebx],eax
c0009a58:	74 19                	je     c0009a73 <lock_acquire+0x48>
c0009a5a:	68 85 e5 00 c0       	push   0xc000e585
c0009a5f:	68 2c e6 00 c0       	push   0xc000e62c
c0009a64:	6a 4d                	push   0x4d
c0009a66:	68 de e4 00 c0       	push   0xc000e4de
c0009a6b:	e8 f0 e9 ff ff       	call   c0008460 <panic_spin>
c0009a70:	83 c4 10             	add    esp,0x10
c0009a73:	c7 43 20 01 00 00 00 	mov    DWORD PTR [ebx+0x20],0x1
c0009a7a:	eb 03                	jmp    c0009a7f <lock_acquire+0x54>
c0009a7c:	ff 43 20             	inc    DWORD PTR [ebx+0x20]
c0009a7f:	8d 65 f8             	lea    esp,[ebp-0x8]
c0009a82:	5b                   	pop    ebx
c0009a83:	5e                   	pop    esi
c0009a84:	5d                   	pop    ebp
c0009a85:	c3                   	ret    

c0009a86 <lock_release>:
c0009a86:	55                   	push   ebp
c0009a87:	89 e5                	mov    ebp,esp
c0009a89:	56                   	push   esi
c0009a8a:	53                   	push   ebx
c0009a8b:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c0009a8e:	8b 33                	mov    esi,DWORD PTR [ebx]
c0009a90:	e8 01 01 00 00       	call   c0009b96 <running_thread>
c0009a95:	39 c6                	cmp    esi,eax
c0009a97:	74 19                	je     c0009ab2 <lock_release+0x2c>
c0009a99:	68 a2 e5 00 c0       	push   0xc000e5a2
c0009a9e:	68 3c e6 00 c0       	push   0xc000e63c
c0009aa3:	6a 5c                	push   0x5c
c0009aa5:	68 de e4 00 c0       	push   0xc000e4de
c0009aaa:	e8 b1 e9 ff ff       	call   c0008460 <panic_spin>
c0009aaf:	83 c4 10             	add    esp,0x10
c0009ab2:	8b 43 20             	mov    eax,DWORD PTR [ebx+0x20]
c0009ab5:	83 f8 01             	cmp    eax,0x1
c0009ab8:	76 0b                	jbe    c0009ac5 <lock_release+0x3f>
c0009aba:	48                   	dec    eax
c0009abb:	89 43 20             	mov    DWORD PTR [ebx+0x20],eax
c0009abe:	8d 65 f8             	lea    esp,[ebp-0x8]
c0009ac1:	5b                   	pop    ebx
c0009ac2:	5e                   	pop    esi
c0009ac3:	5d                   	pop    ebp
c0009ac4:	c3                   	ret    
c0009ac5:	74 19                	je     c0009ae0 <lock_release+0x5a>
c0009ac7:	68 c4 e5 00 c0       	push   0xc000e5c4
c0009acc:	68 3c e6 00 c0       	push   0xc000e63c
c0009ad1:	6a 62                	push   0x62
c0009ad3:	68 de e4 00 c0       	push   0xc000e4de
c0009ad8:	e8 83 e9 ff ff       	call   c0008460 <panic_spin>
c0009add:	83 c4 10             	add    esp,0x10
c0009ae0:	c7 03 00 00 00 00    	mov    DWORD PTR [ebx],0x0
c0009ae6:	c7 43 20 00 00 00 00 	mov    DWORD PTR [ebx+0x20],0x0
c0009aed:	83 c3 04             	add    ebx,0x4
c0009af0:	89 5d 08             	mov    DWORD PTR [ebp+0x8],ebx
c0009af3:	8d 65 f8             	lea    esp,[ebp-0x8]
c0009af6:	5b                   	pop    ebx
c0009af7:	5e                   	pop    esi
c0009af8:	5d                   	pop    ebp
c0009af9:	e9 a1 fe ff ff       	jmp    c000999f <sema_up>
	...

c0009b00 <switch_to>:
c0009b00:	56                   	push   esi
c0009b01:	57                   	push   edi
c0009b02:	53                   	push   ebx
c0009b03:	55                   	push   ebp
c0009b04:	8b 44 24 14          	mov    eax,DWORD PTR [esp+0x14]
c0009b08:	89 20                	mov    DWORD PTR [eax],esp
c0009b0a:	8b 44 24 18          	mov    eax,DWORD PTR [esp+0x18]
c0009b0e:	8b 20                	mov    esp,DWORD PTR [eax]
c0009b10:	5d                   	pop    ebp
c0009b11:	5b                   	pop    ebx
c0009b12:	5f                   	pop    edi
c0009b13:	5e                   	pop    esi
c0009b14:	c3                   	ret    
c0009b15:	00 00                	add    BYTE PTR [eax],al
	...

c0009b18 <kernel_thread>:
c0009b18:	55                   	push   ebp
c0009b19:	89 e5                	mov    ebp,esp
c0009b1b:	56                   	push   esi
c0009b1c:	8b 75 0c             	mov    esi,DWORD PTR [ebp+0xc]
c0009b1f:	53                   	push   ebx
c0009b20:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c0009b23:	e8 41 f6 ff ff       	call   c0009169 <intr_enable>
c0009b28:	89 75 08             	mov    DWORD PTR [ebp+0x8],esi
c0009b2b:	89 d8                	mov    eax,ebx
c0009b2d:	5b                   	pop    ebx
c0009b2e:	5e                   	pop    esi
c0009b2f:	5d                   	pop    ebp
c0009b30:	ff e0                	jmp    eax

c0009b32 <thread_init>:
c0009b32:	55                   	push   ebp
c0009b33:	89 e5                	mov    ebp,esp
c0009b35:	53                   	push   ebx
c0009b36:	83 ec 18             	sub    esp,0x18
c0009b39:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c0009b3c:	8a 55 10             	mov    dl,BYTE PTR [ebp+0x10]
c0009b3f:	6a 78                	push   0x78
c0009b41:	6a 00                	push   0x0
c0009b43:	53                   	push   ebx
c0009b44:	88 55 f4             	mov    BYTE PTR [ebp-0xc],dl
c0009b47:	e8 28 14 00 00       	call   c000af74 <memset>
c0009b4c:	58                   	pop    eax
c0009b4d:	5a                   	pop    edx
c0009b4e:	ff 75 0c             	push   DWORD PTR [ebp+0xc]
c0009b51:	8d 43 08             	lea    eax,[ebx+0x8]
c0009b54:	50                   	push   eax
c0009b55:	e8 ed 14 00 00       	call   c000b047 <strcpy>
c0009b5a:	83 c4 10             	add    esp,0x10
c0009b5d:	8a 55 f4             	mov    dl,BYTE PTR [ebp-0xc]
c0009b60:	3b 1d c4 e6 02 c0    	cmp    ebx,DWORD PTR ds:0xc002e6c4
c0009b66:	75 09                	jne    c0009b71 <thread_init+0x3f>
c0009b68:	c7 43 04 00 00 00 00 	mov    DWORD PTR [ebx+0x4],0x0
c0009b6f:	eb 07                	jmp    c0009b78 <thread_init+0x46>
c0009b71:	c7 43 04 01 00 00 00 	mov    DWORD PTR [ebx+0x4],0x1
c0009b78:	8d 83 00 10 00 00    	lea    eax,[ebx+0x1000]
c0009b7e:	88 53 18             	mov    BYTE PTR [ebx+0x18],dl
c0009b81:	89 03                	mov    DWORD PTR [ebx],eax
c0009b83:	c7 43 38 00 00 00 00 	mov    DWORD PTR [ebx+0x38],0x0
c0009b8a:	c7 43 74 78 56 34 12 	mov    DWORD PTR [ebx+0x74],0x12345678
c0009b91:	8b 5d fc             	mov    ebx,DWORD PTR [ebp-0x4]
c0009b94:	c9                   	leave  
c0009b95:	c3                   	ret    

c0009b96 <running_thread>:
c0009b96:	55                   	push   ebp
c0009b97:	89 e5                	mov    ebp,esp
c0009b99:	89 e0                	mov    eax,esp
c0009b9b:	25 00 f0 ff ff       	and    eax,0xfffff000
c0009ba0:	5d                   	pop    ebp
c0009ba1:	c3                   	ret    

c0009ba2 <init_thread>:
c0009ba2:	55                   	push   ebp
c0009ba3:	89 e5                	mov    ebp,esp
c0009ba5:	83 ec 14             	sub    esp,0x14
c0009ba8:	68 94 e6 02 c0       	push   0xc002e694
c0009bad:	e8 06 10 00 00       	call   c000abb8 <list_init>
c0009bb2:	c7 04 24 ac e6 02 c0 	mov    DWORD PTR [esp],0xc002e6ac
c0009bb9:	e8 fa 0f 00 00       	call   c000abb8 <list_init>
c0009bbe:	e8 d3 ff ff ff       	call   c0009b96 <running_thread>
c0009bc3:	83 c4 0c             	add    esp,0xc
c0009bc6:	6a 1f                	push   0x1f
c0009bc8:	68 4c e6 00 c0       	push   0xc000e64c
c0009bcd:	50                   	push   eax
c0009bce:	a3 c4 e6 02 c0       	mov    ds:0xc002e6c4,eax
c0009bd3:	e8 5a ff ff ff       	call   c0009b32 <thread_init>
c0009bd8:	a1 c4 e6 02 c0       	mov    eax,ds:0xc002e6c4
c0009bdd:	89 40 24             	mov    DWORD PTR [eax+0x24],eax
c0009be0:	89 40 30             	mov    DWORD PTR [eax+0x30],eax
c0009be3:	83 c0 20             	add    eax,0x20
c0009be6:	59                   	pop    ecx
c0009be7:	5a                   	pop    edx
c0009be8:	50                   	push   eax
c0009be9:	68 ac e6 02 c0       	push   0xc002e6ac
c0009bee:	e8 24 10 00 00       	call   c000ac17 <list_append>
c0009bf3:	83 c4 10             	add    esp,0x10
c0009bf6:	c9                   	leave  
c0009bf7:	c3                   	ret    

c0009bf8 <thread_create>:
c0009bf8:	55                   	push   ebp
c0009bf9:	89 e5                	mov    ebp,esp
c0009bfb:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c0009bfe:	8b 02                	mov    eax,DWORD PTR [edx]
c0009c00:	8d 88 50 fe ff ff    	lea    ecx,[eax-0x1b0]
c0009c06:	89 0a                	mov    DWORD PTR [edx],ecx
c0009c08:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
c0009c0b:	c7 80 60 fe ff ff 18 	mov    DWORD PTR [eax-0x1a0],0xc0009b18
c0009c12:	9b 00 c0 
c0009c15:	c7 80 50 fe ff ff 00 	mov    DWORD PTR [eax-0x1b0],0x0
c0009c1c:	00 00 00 
c0009c1f:	c7 80 54 fe ff ff 00 	mov    DWORD PTR [eax-0x1ac],0x0
c0009c26:	00 00 00 
c0009c29:	89 90 68 fe ff ff    	mov    DWORD PTR [eax-0x198],edx
c0009c2f:	8b 55 10             	mov    edx,DWORD PTR [ebp+0x10]
c0009c32:	c7 80 5c fe ff ff 00 	mov    DWORD PTR [eax-0x1a4],0x0
c0009c39:	00 00 00 
c0009c3c:	c7 80 58 fe ff ff 00 	mov    DWORD PTR [eax-0x1a8],0x0
c0009c43:	00 00 00 
c0009c46:	89 90 6c fe ff ff    	mov    DWORD PTR [eax-0x194],edx
c0009c4c:	5d                   	pop    ebp
c0009c4d:	c3                   	ret    

c0009c4e <thread_start>:
c0009c4e:	55                   	push   ebp
c0009c4f:	89 e5                	mov    ebp,esp
c0009c51:	56                   	push   esi
c0009c52:	8b 75 0c             	mov    esi,DWORD PTR [ebp+0xc]
c0009c55:	53                   	push   ebx
c0009c56:	83 ec 0c             	sub    esp,0xc
c0009c59:	6a 01                	push   0x1
c0009c5b:	e8 b3 fa ff ff       	call   c0009713 <get_kernel_page>
c0009c60:	81 e6 ff 00 00 00    	and    esi,0xff
c0009c66:	83 c4 0c             	add    esp,0xc
c0009c69:	56                   	push   esi
c0009c6a:	ff 75 08             	push   DWORD PTR [ebp+0x8]
c0009c6d:	50                   	push   eax
c0009c6e:	89 c3                	mov    ebx,eax
c0009c70:	e8 bd fe ff ff       	call   c0009b32 <thread_init>
c0009c75:	83 c4 0c             	add    esp,0xc
c0009c78:	ff 75 14             	push   DWORD PTR [ebp+0x14]
c0009c7b:	ff 75 10             	push   DWORD PTR [ebp+0x10]
c0009c7e:	8d 73 2c             	lea    esi,[ebx+0x2c]
c0009c81:	53                   	push   ebx
c0009c82:	e8 71 ff ff ff       	call   c0009bf8 <thread_create>
c0009c87:	89 5b 24             	mov    DWORD PTR [ebx+0x24],ebx
c0009c8a:	89 5b 30             	mov    DWORD PTR [ebx+0x30],ebx
c0009c8d:	59                   	pop    ecx
c0009c8e:	58                   	pop    eax
c0009c8f:	56                   	push   esi
c0009c90:	68 94 e6 02 c0       	push   0xc002e694
c0009c95:	e8 d6 0f 00 00       	call   c000ac70 <list_find>
c0009c9a:	83 c4 10             	add    esp,0x10
c0009c9d:	85 c0                	test   eax,eax
c0009c9f:	74 19                	je     c0009cba <thread_start+0x6c>
c0009ca1:	68 58 e6 00 c0       	push   0xc000e658
c0009ca6:	68 20 e8 00 c0       	push   0xc000e820
c0009cab:	6a 61                	push   0x61
c0009cad:	68 87 e6 00 c0       	push   0xc000e687
c0009cb2:	e8 a9 e7 ff ff       	call   c0008460 <panic_spin>
c0009cb7:	83 c4 10             	add    esp,0x10
c0009cba:	50                   	push   eax
c0009cbb:	50                   	push   eax
c0009cbc:	56                   	push   esi
c0009cbd:	68 94 e6 02 c0       	push   0xc002e694
c0009cc2:	e8 50 0f 00 00       	call   c000ac17 <list_append>
c0009cc7:	8d 73 20             	lea    esi,[ebx+0x20]
c0009cca:	58                   	pop    eax
c0009ccb:	5a                   	pop    edx
c0009ccc:	56                   	push   esi
c0009ccd:	68 ac e6 02 c0       	push   0xc002e6ac
c0009cd2:	e8 99 0f 00 00       	call   c000ac70 <list_find>
c0009cd7:	83 c4 10             	add    esp,0x10
c0009cda:	85 c0                	test   eax,eax
c0009cdc:	74 19                	je     c0009cf7 <thread_start+0xa9>
c0009cde:	68 97 e6 00 c0       	push   0xc000e697
c0009ce3:	68 20 e8 00 c0       	push   0xc000e820
c0009ce8:	6a 64                	push   0x64
c0009cea:	68 87 e6 00 c0       	push   0xc000e687
c0009cef:	e8 6c e7 ff ff       	call   c0008460 <panic_spin>
c0009cf4:	83 c4 10             	add    esp,0x10
c0009cf7:	51                   	push   ecx
c0009cf8:	51                   	push   ecx
c0009cf9:	56                   	push   esi
c0009cfa:	68 ac e6 02 c0       	push   0xc002e6ac
c0009cff:	e8 13 0f 00 00       	call   c000ac17 <list_append>
c0009d04:	8d 65 f8             	lea    esp,[ebp-0x8]
c0009d07:	89 d8                	mov    eax,ebx
c0009d09:	5b                   	pop    ebx
c0009d0a:	5e                   	pop    esi
c0009d0b:	5d                   	pop    ebp
c0009d0c:	c3                   	ret    

c0009d0d <schedule>:
c0009d0d:	55                   	push   ebp
c0009d0e:	89 e5                	mov    ebp,esp
c0009d10:	56                   	push   esi
c0009d11:	53                   	push   ebx
c0009d12:	e8 7f fe ff ff       	call   c0009b96 <running_thread>
c0009d17:	81 78 74 78 56 34 12 	cmp    DWORD PTR [eax+0x74],0x12345678
c0009d1e:	89 c3                	mov    ebx,eax
c0009d20:	74 19                	je     c0009d3b <schedule+0x2e>
c0009d22:	68 c0 e6 00 c0       	push   0xc000e6c0
c0009d27:	68 30 e8 00 c0       	push   0xc000e830
c0009d2c:	6a 76                	push   0x76
c0009d2e:	68 87 e6 00 c0       	push   0xc000e687
c0009d33:	e8 28 e7 ff ff       	call   c0008460 <panic_spin>
c0009d38:	83 c4 10             	add    esp,0x10
c0009d3b:	8b 43 04             	mov    eax,DWORD PTR [ebx+0x4]
c0009d3e:	85 c0                	test   eax,eax
c0009d40:	75 47                	jne    c0009d89 <schedule+0x7c>
c0009d42:	50                   	push   eax
c0009d43:	50                   	push   eax
c0009d44:	8d 73 2c             	lea    esi,[ebx+0x2c]
c0009d47:	56                   	push   esi
c0009d48:	68 94 e6 02 c0       	push   0xc002e694
c0009d4d:	e8 1e 0f 00 00       	call   c000ac70 <list_find>
c0009d52:	83 c4 10             	add    esp,0x10
c0009d55:	85 c0                	test   eax,eax
c0009d57:	74 19                	je     c0009d72 <schedule+0x65>
c0009d59:	68 e6 e6 00 c0       	push   0xc000e6e6
c0009d5e:	68 30 e8 00 c0       	push   0xc000e830
c0009d63:	6a 7a                	push   0x7a
c0009d65:	68 87 e6 00 c0       	push   0xc000e687
c0009d6a:	e8 f1 e6 ff ff       	call   c0008460 <panic_spin>
c0009d6f:	83 c4 10             	add    esp,0x10
c0009d72:	50                   	push   eax
c0009d73:	50                   	push   eax
c0009d74:	56                   	push   esi
c0009d75:	68 94 e6 02 c0       	push   0xc002e694
c0009d7a:	e8 98 0e 00 00       	call   c000ac17 <list_append>
c0009d7f:	83 c4 10             	add    esp,0x10
c0009d82:	c7 43 04 00 00 00 00 	mov    DWORD PTR [ebx+0x4],0x0
c0009d89:	83 ec 0c             	sub    esp,0xc
c0009d8c:	68 94 e6 02 c0       	push   0xc002e694
c0009d91:	c7 05 d4 ed 00 c0 00 	mov    DWORD PTR ds:0xc000edd4,0x0
c0009d98:	00 00 00 
c0009d9b:	e8 49 0f 00 00       	call   c000ace9 <list_empty>
c0009da0:	83 c4 10             	add    esp,0x10
c0009da3:	85 c0                	test   eax,eax
c0009da5:	74 1c                	je     c0009dc3 <schedule+0xb6>
c0009da7:	68 1b e7 00 c0       	push   0xc000e71b
c0009dac:	68 30 e8 00 c0       	push   0xc000e830
c0009db1:	68 86 00 00 00       	push   0x86
c0009db6:	68 87 e6 00 c0       	push   0xc000e687
c0009dbb:	e8 a0 e6 ff ff       	call   c0008460 <panic_spin>
c0009dc0:	83 c4 10             	add    esp,0x10
c0009dc3:	81 3d a0 e6 02 c0 94 	cmp    DWORD PTR ds:0xc002e6a0,0xc002e694
c0009dca:	e6 02 c0 
c0009dcd:	75 1c                	jne    c0009deb <schedule+0xde>
c0009dcf:	68 36 e7 00 c0       	push   0xc000e736
c0009dd4:	68 30 e8 00 c0       	push   0xc000e830
c0009dd9:	68 87 00 00 00       	push   0x87
c0009dde:	68 87 e6 00 c0       	push   0xc000e687
c0009de3:	e8 78 e6 ff ff       	call   c0008460 <panic_spin>
c0009de8:	83 c4 10             	add    esp,0x10
c0009deb:	83 ec 0c             	sub    esp,0xc
c0009dee:	68 94 e6 02 c0       	push   0xc002e694
c0009df3:	e8 5e 0e 00 00       	call   c000ac56 <list_pop>
c0009df8:	8b 70 04             	mov    esi,DWORD PTR [eax+0x4]
c0009dfb:	a3 d4 ed 00 c0       	mov    ds:0xc000edd4,eax
c0009e00:	c7 46 04 00 00 00 00 	mov    DWORD PTR [esi+0x4],0x0
c0009e07:	0f 20 da             	mov    edx,cr3
c0009e0a:	8b 46 38             	mov    eax,DWORD PTR [esi+0x38]
c0009e0d:	83 c4 10             	add    esp,0x10
c0009e10:	85 c0                	test   eax,eax
c0009e12:	74 1d                	je     c0009e31 <schedule+0x124>
c0009e14:	39 c2                	cmp    edx,eax
c0009e16:	74 19                	je     c0009e31 <schedule+0x124>
c0009e18:	50                   	push   eax
c0009e19:	50                   	push   eax
c0009e1a:	68 5f e7 00 c0       	push   0xc000e75f
c0009e1f:	6a 70                	push   0x70
c0009e21:	e8 af 10 00 00       	call   c000aed5 <put_str>
c0009e26:	89 34 24             	mov    DWORD PTR [esp],esi
c0009e29:	e8 0c 03 00 00       	call   c000a13a <process_activate>
c0009e2e:	83 c4 10             	add    esp,0x10
c0009e31:	50                   	push   eax
c0009e32:	50                   	push   eax
c0009e33:	56                   	push   esi
c0009e34:	53                   	push   ebx
c0009e35:	e8 c6 fc ff ff       	call   c0009b00 <switch_to>
c0009e3a:	83 c4 10             	add    esp,0x10
c0009e3d:	8d 65 f8             	lea    esp,[ebp-0x8]
c0009e40:	5b                   	pop    ebx
c0009e41:	5e                   	pop    esi
c0009e42:	5d                   	pop    ebp
c0009e43:	c3                   	ret    

c0009e44 <thread_block>:
c0009e44:	55                   	push   ebp
c0009e45:	89 e5                	mov    ebp,esp
c0009e47:	56                   	push   esi
c0009e48:	53                   	push   ebx
c0009e49:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c0009e4c:	83 fb 01             	cmp    ebx,0x1
c0009e4f:	77 1c                	ja     c0009e6d <thread_block+0x29>
c0009e51:	68 69 e7 00 c0       	push   0xc000e769
c0009e56:	68 3c e8 00 c0       	push   0xc000e83c
c0009e5b:	68 a0 00 00 00       	push   0xa0
c0009e60:	68 87 e6 00 c0       	push   0xc000e687
c0009e65:	e8 f6 e5 ff ff       	call   c0008460 <panic_spin>
c0009e6a:	83 c4 10             	add    esp,0x10
c0009e6d:	e8 27 f2 ff ff       	call   c0009099 <intr_disable>
c0009e72:	89 c6                	mov    esi,eax
c0009e74:	e8 1d fd ff ff       	call   c0009b96 <running_thread>
c0009e79:	89 58 04             	mov    DWORD PTR [eax+0x4],ebx
c0009e7c:	e8 8c fe ff ff       	call   c0009d0d <schedule>
c0009e81:	89 75 08             	mov    DWORD PTR [ebp+0x8],esi
c0009e84:	8d 65 f8             	lea    esp,[ebp-0x8]
c0009e87:	5b                   	pop    ebx
c0009e88:	5e                   	pop    esi
c0009e89:	5d                   	pop    ebp
c0009e8a:	e9 f1 f2 ff ff       	jmp    c0009180 <intr_set_status>

c0009e8f <thread_unblock>:
c0009e8f:	55                   	push   ebp
c0009e90:	89 e5                	mov    ebp,esp
c0009e92:	57                   	push   edi
c0009e93:	56                   	push   esi
c0009e94:	53                   	push   ebx
c0009e95:	83 ec 0c             	sub    esp,0xc
c0009e98:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c0009e9b:	e8 f9 f1 ff ff       	call   c0009099 <intr_disable>
c0009ea0:	89 c7                	mov    edi,eax
c0009ea2:	8b 43 04             	mov    eax,DWORD PTR [ebx+0x4]
c0009ea5:	48                   	dec    eax
c0009ea6:	74 7a                	je     c0009f22 <thread_unblock+0x93>
c0009ea8:	51                   	push   ecx
c0009ea9:	51                   	push   ecx
c0009eaa:	8d 73 2c             	lea    esi,[ebx+0x2c]
c0009ead:	56                   	push   esi
c0009eae:	68 94 e6 02 c0       	push   0xc002e694
c0009eb3:	e8 b8 0d 00 00       	call   c000ac70 <list_find>
c0009eb8:	83 c4 10             	add    esp,0x10
c0009ebb:	85 c0                	test   eax,eax
c0009ebd:	74 1c                	je     c0009edb <thread_unblock+0x4c>
c0009ebf:	68 98 e7 00 c0       	push   0xc000e798
c0009ec4:	68 4c e8 00 c0       	push   0xc000e84c
c0009ec9:	68 ae 00 00 00       	push   0xae
c0009ece:	68 87 e6 00 c0       	push   0xc000e687
c0009ed3:	e8 88 e5 ff ff       	call   c0008460 <panic_spin>
c0009ed8:	83 c4 10             	add    esp,0x10
c0009edb:	52                   	push   edx
c0009edc:	52                   	push   edx
c0009edd:	56                   	push   esi
c0009ede:	68 94 e6 02 c0       	push   0xc002e694
c0009ee3:	e8 88 0d 00 00       	call   c000ac70 <list_find>
c0009ee8:	83 c4 10             	add    esp,0x10
c0009eeb:	85 c0                	test   eax,eax
c0009eed:	74 1c                	je     c0009f0b <thread_unblock+0x7c>
c0009eef:	68 c8 e7 00 c0       	push   0xc000e7c8
c0009ef4:	68 4c e8 00 c0       	push   0xc000e84c
c0009ef9:	68 b1 00 00 00       	push   0xb1
c0009efe:	68 87 e6 00 c0       	push   0xc000e687
c0009f03:	e8 58 e5 ff ff       	call   c0008460 <panic_spin>
c0009f08:	83 c4 10             	add    esp,0x10
c0009f0b:	50                   	push   eax
c0009f0c:	50                   	push   eax
c0009f0d:	56                   	push   esi
c0009f0e:	68 94 e6 02 c0       	push   0xc002e694
c0009f13:	e8 e7 0c 00 00       	call   c000abff <list_push>
c0009f18:	83 c4 10             	add    esp,0x10
c0009f1b:	c7 43 04 01 00 00 00 	mov    DWORD PTR [ebx+0x4],0x1
c0009f22:	89 7d 08             	mov    DWORD PTR [ebp+0x8],edi
c0009f25:	8d 65 f4             	lea    esp,[ebp-0xc]
c0009f28:	5b                   	pop    ebx
c0009f29:	5e                   	pop    esi
c0009f2a:	5f                   	pop    edi
c0009f2b:	5d                   	pop    ebp
c0009f2c:	e9 4f f2 ff ff       	jmp    c0009180 <intr_set_status>
c0009f31:	00 00                	add    BYTE PTR [eax],al
	...

c0009f34 <set_segmdesc>:
c0009f34:	55                   	push   ebp
c0009f35:	89 e5                	mov    ebp,esp
c0009f37:	57                   	push   edi
c0009f38:	8b 7d 08             	mov    edi,DWORD PTR [ebp+0x8]
c0009f3b:	56                   	push   esi
c0009f3c:	89 d6                	mov    esi,edx
c0009f3e:	c1 ee 10             	shr    esi,0x10
c0009f41:	53                   	push   ebx
c0009f42:	89 f3                	mov    ebx,esi
c0009f44:	88 58 04             	mov    BYTE PTR [eax+0x4],bl
c0009f47:	89 fb                	mov    ebx,edi
c0009f49:	88 58 05             	mov    BYTE PTR [eax+0x5],bl
c0009f4c:	89 fb                	mov    ebx,edi
c0009f4e:	66 89 08             	mov    WORD PTR [eax],cx
c0009f51:	66 c1 eb 08          	shr    bx,0x8
c0009f55:	c1 e9 10             	shr    ecx,0x10
c0009f58:	83 e3 f0             	and    ebx,0xfffffff0
c0009f5b:	83 e1 0f             	and    ecx,0xf
c0009f5e:	09 cb                	or     ebx,ecx
c0009f60:	66 89 50 02          	mov    WORD PTR [eax+0x2],dx
c0009f64:	c1 ea 18             	shr    edx,0x18
c0009f67:	88 58 06             	mov    BYTE PTR [eax+0x6],bl
c0009f6a:	88 50 07             	mov    BYTE PTR [eax+0x7],dl
c0009f6d:	5b                   	pop    ebx
c0009f6e:	5e                   	pop    esi
c0009f6f:	5f                   	pop    edi
c0009f70:	5d                   	pop    ebp
c0009f71:	c3                   	ret    

c0009f72 <init_tss>:
c0009f72:	55                   	push   ebp
c0009f73:	89 e5                	mov    ebp,esp
c0009f75:	83 ec 1c             	sub    esp,0x1c
c0009f78:	6a 6c                	push   0x6c
c0009f7a:	6a 00                	push   0x0
c0009f7c:	68 d8 ed 00 c0       	push   0xc000edd8
c0009f81:	e8 ee 0f 00 00       	call   c000af74 <memset>
c0009f86:	b9 6b 00 00 00       	mov    ecx,0x6b
c0009f8b:	ba d8 ed 00 c0       	mov    edx,0xc000edd8
c0009f90:	b8 3c 7f 00 c0       	mov    eax,0xc0007f3c
c0009f95:	c7 04 24 89 80 00 00 	mov    DWORD PTR [esp],0x8089
c0009f9c:	c7 05 e0 ed 00 c0 10 	mov    DWORD PTR ds:0xc000ede0,0x10
c0009fa3:	00 00 00 
c0009fa6:	c7 05 40 ee 00 c0 6c 	mov    DWORD PTR ds:0xc000ee40,0x6c
c0009fad:	00 00 00 
c0009fb0:	e8 7f ff ff ff       	call   c0009f34 <set_segmdesc>
c0009fb5:	31 d2                	xor    edx,edx
c0009fb7:	b9 ff ff 0f 00       	mov    ecx,0xfffff
c0009fbc:	b8 44 7f 00 c0       	mov    eax,0xc0007f44
c0009fc1:	c7 04 24 f8 c0 00 00 	mov    DWORD PTR [esp],0xc0f8
c0009fc8:	e8 67 ff ff ff       	call   c0009f34 <set_segmdesc>
c0009fcd:	b9 ff ff 0f 00       	mov    ecx,0xfffff
c0009fd2:	31 d2                	xor    edx,edx
c0009fd4:	b8 4c 7f 00 c0       	mov    eax,0xc0007f4c
c0009fd9:	c7 04 24 f2 c0 00 00 	mov    DWORD PTR [esp],0xc0f2
c0009fe0:	e8 4f ff ff ff       	call   c0009f34 <set_segmdesc>
c0009fe5:	b8 24 7f 00 c0       	mov    eax,0xc0007f24
c0009fea:	c1 e0 10             	shl    eax,0x10
c0009fed:	83 c8 37             	or     eax,0x37
c0009ff0:	89 45 f0             	mov    DWORD PTR [ebp-0x10],eax
c0009ff3:	c7 45 f4 00 00 00 00 	mov    DWORD PTR [ebp-0xc],0x0
c0009ffa:	0f 01 55 f0          	lgdtd  [ebp-0x10]
c0009ffe:	b8 18 00 00 00       	mov    eax,0x18
c000a003:	0f 00 d8             	ltr    ax
c000a006:	83 c4 10             	add    esp,0x10
c000a009:	c9                   	leave  
c000a00a:	c3                   	ret    

c000a00b <update_tss_esp0>:
c000a00b:	55                   	push   ebp
c000a00c:	89 e5                	mov    ebp,esp
c000a00e:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c000a011:	5d                   	pop    ebp
c000a012:	05 00 10 00 00       	add    eax,0x1000
c000a017:	a3 dc ed 00 c0       	mov    ds:0xc000eddc,eax
c000a01c:	c3                   	ret    
c000a01d:	00 00                	add    BYTE PTR [eax],al
	...

c000a020 <start_process>:
c000a020:	55                   	push   ebp
c000a021:	89 e5                	mov    ebp,esp
c000a023:	56                   	push   esi
c000a024:	53                   	push   ebx
c000a025:	e8 6c fb ff ff       	call   c0009b96 <running_thread>
c000a02a:	8b 18                	mov    ebx,DWORD PTR [eax]
c000a02c:	8d b3 80 00 00 00    	lea    esi,[ebx+0x80]
c000a032:	89 30                	mov    DWORD PTR [eax],esi
c000a034:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c000a037:	c7 83 84 00 00 00 00 	mov    DWORD PTR [ebx+0x84],0x0
c000a03e:	00 00 00 
c000a041:	c7 83 88 00 00 00 00 	mov    DWORD PTR [ebx+0x88],0x0
c000a048:	00 00 00 
c000a04b:	c7 83 8c 00 00 00 00 	mov    DWORD PTR [ebx+0x8c],0x0
c000a052:	00 00 00 
c000a055:	89 83 b8 00 00 00    	mov    DWORD PTR [ebx+0xb8],eax
c000a05b:	c7 83 90 00 00 00 00 	mov    DWORD PTR [ebx+0x90],0x0
c000a062:	00 00 00 
c000a065:	c7 83 94 00 00 00 00 	mov    DWORD PTR [ebx+0x94],0x0
c000a06c:	00 00 00 
c000a06f:	c7 83 98 00 00 00 00 	mov    DWORD PTR [ebx+0x98],0x0
c000a076:	00 00 00 
c000a079:	c7 83 9c 00 00 00 00 	mov    DWORD PTR [ebx+0x9c],0x0
c000a080:	00 00 00 
c000a083:	c7 83 a0 00 00 00 00 	mov    DWORD PTR [ebx+0xa0],0x0
c000a08a:	00 00 00 
c000a08d:	c7 83 a4 00 00 00 00 	mov    DWORD PTR [ebx+0xa4],0x0
c000a094:	00 00 00 
c000a097:	c7 83 b0 00 00 00 2b 	mov    DWORD PTR [ebx+0xb0],0x2b
c000a09e:	00 00 00 
c000a0a1:	c7 83 ac 00 00 00 2b 	mov    DWORD PTR [ebx+0xac],0x2b
c000a0a8:	00 00 00 
c000a0ab:	c7 83 a8 00 00 00 2b 	mov    DWORD PTR [ebx+0xa8],0x2b
c000a0b2:	00 00 00 
c000a0b5:	c7 83 bc 00 00 00 23 	mov    DWORD PTR [ebx+0xbc],0x23
c000a0bc:	00 00 00 
c000a0bf:	c7 83 c0 00 00 00 02 	mov    DWORD PTR [ebx+0xc0],0x202
c000a0c6:	02 00 00 
c000a0c9:	50                   	push   eax
c000a0ca:	50                   	push   eax
c000a0cb:	68 00 f0 ff bf       	push   0xbffff000
c000a0d0:	6a 02                	push   0x2
c000a0d2:	e8 bf f6 ff ff       	call   c0009796 <get_a_page>
c000a0d7:	c7 83 c8 00 00 00 2b 	mov    DWORD PTR [ebx+0xc8],0x2b
c000a0de:	00 00 00 
c000a0e1:	05 00 10 00 00       	add    eax,0x1000
c000a0e6:	89 83 c4 00 00 00    	mov    DWORD PTR [ebx+0xc4],eax
c000a0ec:	89 f4                	mov    esp,esi
c000a0ee:	e9 a1 ed ff ff       	jmp    c0008e94 <intr_exit>
c000a0f3:	83 c4 10             	add    esp,0x10
c000a0f6:	8d 65 f8             	lea    esp,[ebp-0x8]
c000a0f9:	5b                   	pop    ebx
c000a0fa:	5e                   	pop    esi
c000a0fb:	5d                   	pop    ebp
c000a0fc:	c3                   	ret    

c000a0fd <page_dir_activate>:
c000a0fd:	55                   	push   ebp
c000a0fe:	89 e5                	mov    ebp,esp
c000a100:	53                   	push   ebx
c000a101:	52                   	push   edx
c000a102:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c000a105:	83 7b 38 00          	cmp    DWORD PTR [ebx+0x38],0x0
c000a109:	75 19                	jne    c000a124 <page_dir_activate+0x27>
c000a10b:	68 84 e8 00 c0       	push   0xc000e884
c000a110:	68 8c e9 00 c0       	push   0xc000e98c
c000a115:	6a 2d                	push   0x2d
c000a117:	68 9e e8 00 c0       	push   0xc000e89e
c000a11c:	e8 3f e3 ff ff       	call   c0008460 <panic_spin>
c000a121:	83 c4 10             	add    esp,0x10
c000a124:	83 ec 0c             	sub    esp,0xc
c000a127:	ff 73 38             	push   DWORD PTR [ebx+0x38]
c000a12a:	e8 0b f7 ff ff       	call   c000983a <addr_v2p>
c000a12f:	0f 22 d8             	mov    cr3,eax
c000a132:	83 c4 10             	add    esp,0x10
c000a135:	8b 5d fc             	mov    ebx,DWORD PTR [ebp-0x4]
c000a138:	c9                   	leave  
c000a139:	c3                   	ret    

c000a13a <process_activate>:
c000a13a:	55                   	push   ebp
c000a13b:	89 e5                	mov    ebp,esp
c000a13d:	53                   	push   ebx
c000a13e:	51                   	push   ecx
c000a13f:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c000a142:	85 db                	test   ebx,ebx
c000a144:	75 19                	jne    c000a15f <process_activate+0x25>
c000a146:	68 b1 e8 00 c0       	push   0xc000e8b1
c000a14b:	68 a0 e9 00 c0       	push   0xc000e9a0
c000a150:	6a 3f                	push   0x3f
c000a152:	68 9e e8 00 c0       	push   0xc000e89e
c000a157:	e8 04 e3 ff ff       	call   c0008460 <panic_spin>
c000a15c:	83 c4 10             	add    esp,0x10
c000a15f:	83 ec 0c             	sub    esp,0xc
c000a162:	53                   	push   ebx
c000a163:	e8 95 ff ff ff       	call   c000a0fd <page_dir_activate>
c000a168:	83 c4 10             	add    esp,0x10
c000a16b:	83 7b 38 00          	cmp    DWORD PTR [ebx+0x38],0x0
c000a16f:	74 0c                	je     c000a17d <process_activate+0x43>
c000a171:	89 5d 08             	mov    DWORD PTR [ebp+0x8],ebx
c000a174:	8b 5d fc             	mov    ebx,DWORD PTR [ebp-0x4]
c000a177:	c9                   	leave  
c000a178:	e9 8e fe ff ff       	jmp    c000a00b <update_tss_esp0>
c000a17d:	8b 5d fc             	mov    ebx,DWORD PTR [ebp-0x4]
c000a180:	c9                   	leave  
c000a181:	c3                   	ret    

c000a182 <create_page_dir>:
c000a182:	55                   	push   ebp
c000a183:	89 e5                	mov    ebp,esp
c000a185:	53                   	push   ebx
c000a186:	83 ec 10             	sub    esp,0x10
c000a189:	6a 01                	push   0x1
c000a18b:	e8 83 f5 ff ff       	call   c0009713 <get_kernel_page>
c000a190:	83 c4 10             	add    esp,0x10
c000a193:	85 c0                	test   eax,eax
c000a195:	89 c3                	mov    ebx,eax
c000a197:	75 10                	jne    c000a1a9 <create_page_dir+0x27>
c000a199:	50                   	push   eax
c000a19a:	50                   	push   eax
c000a19b:	68 c1 e8 00 c0       	push   0xc000e8c1
c000a1a0:	6a 04                	push   0x4
c000a1a2:	e8 bc 01 00 00       	call   c000a363 <console_str>
c000a1a7:	eb 28                	jmp    c000a1d1 <create_page_dir+0x4f>
c000a1a9:	50                   	push   eax
c000a1aa:	68 00 04 00 00       	push   0x400
c000a1af:	68 00 fc ff ff       	push   0xfffffc00
c000a1b4:	8d 83 00 0c 00 00    	lea    eax,[ebx+0xc00]
c000a1ba:	50                   	push   eax
c000a1bb:	e8 fb 0d 00 00       	call   c000afbb <memcpy>
c000a1c0:	89 1c 24             	mov    DWORD PTR [esp],ebx
c000a1c3:	e8 72 f6 ff ff       	call   c000983a <addr_v2p>
c000a1c8:	83 c8 07             	or     eax,0x7
c000a1cb:	89 83 fc 0f 00 00    	mov    DWORD PTR [ebx+0xffc],eax
c000a1d1:	89 d8                	mov    eax,ebx
c000a1d3:	83 c4 10             	add    esp,0x10
c000a1d6:	8b 5d fc             	mov    ebx,DWORD PTR [ebp-0x4]
c000a1d9:	c9                   	leave  
c000a1da:	c3                   	ret    

c000a1db <create_user_vaddr_memman>:
c000a1db:	55                   	push   ebp
c000a1dc:	89 e5                	mov    ebp,esp
c000a1de:	83 ec 14             	sub    esp,0x14
c000a1e1:	6a 08                	push   0x8
c000a1e3:	e8 2b f5 ff ff       	call   c0009713 <get_kernel_page>
c000a1e8:	5a                   	pop    edx
c000a1e9:	59                   	pop    ecx
c000a1ea:	50                   	push   eax
c000a1eb:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c000a1ee:	83 c0 3c             	add    eax,0x3c
c000a1f1:	50                   	push   eax
c000a1f2:	e8 a1 ef ff ff       	call   c0009198 <init_memman>
c000a1f7:	83 c4 10             	add    esp,0x10
c000a1fa:	c9                   	leave  
c000a1fb:	c3                   	ret    

c000a1fc <process_execute>:
c000a1fc:	55                   	push   ebp
c000a1fd:	89 e5                	mov    ebp,esp
c000a1ff:	57                   	push   edi
c000a200:	56                   	push   esi
c000a201:	53                   	push   ebx
c000a202:	83 ec 18             	sub    esp,0x18
c000a205:	8b 75 08             	mov    esi,DWORD PTR [ebp+0x8]
c000a208:	6a 01                	push   0x1
c000a20a:	8b 7d 0c             	mov    edi,DWORD PTR [ebp+0xc]
c000a20d:	e8 01 f5 ff ff       	call   c0009713 <get_kernel_page>
c000a212:	83 c4 0c             	add    esp,0xc
c000a215:	6a 1f                	push   0x1f
c000a217:	57                   	push   edi
c000a218:	89 c3                	mov    ebx,eax
c000a21a:	50                   	push   eax
c000a21b:	e8 12 f9 ff ff       	call   c0009b32 <thread_init>
c000a220:	89 1c 24             	mov    DWORD PTR [esp],ebx
c000a223:	e8 b3 ff ff ff       	call   c000a1db <create_user_vaddr_memman>
c000a228:	83 c4 0c             	add    esp,0xc
c000a22b:	56                   	push   esi
c000a22c:	68 20 a0 00 c0       	push   0xc000a020
c000a231:	53                   	push   ebx
c000a232:	e8 c1 f9 ff ff       	call   c0009bf8 <thread_create>
c000a237:	e8 46 ff ff ff       	call   c000a182 <create_page_dir>
c000a23c:	89 43 38             	mov    DWORD PTR [ebx+0x38],eax
c000a23f:	59                   	pop    ecx
c000a240:	5e                   	pop    esi
c000a241:	8d 73 20             	lea    esi,[ebx+0x20]
c000a244:	68 eb e8 00 c0       	push   0xc000e8eb
c000a249:	6a 70                	push   0x70
c000a24b:	e8 85 0c 00 00       	call   c000aed5 <put_str>
c000a250:	83 c4 0c             	add    esp,0xc
c000a253:	6a 10                	push   0x10
c000a255:	53                   	push   ebx
c000a256:	6a 70                	push   0x70
c000a258:	e8 a0 0c 00 00       	call   c000aefd <put_uint>
c000a25d:	5f                   	pop    edi
c000a25e:	58                   	pop    eax
c000a25f:	68 f6 e8 00 c0       	push   0xc000e8f6
c000a264:	6a 70                	push   0x70
c000a266:	e8 6a 0c 00 00       	call   c000aed5 <put_str>
c000a26b:	83 c4 0c             	add    esp,0xc
c000a26e:	6a 10                	push   0x10
c000a270:	ff 73 38             	push   DWORD PTR [ebx+0x38]
c000a273:	6a 70                	push   0x70
c000a275:	e8 83 0c 00 00       	call   c000aefd <put_uint>
c000a27a:	89 5b 30             	mov    DWORD PTR [ebx+0x30],ebx
c000a27d:	89 5b 24             	mov    DWORD PTR [ebx+0x24],ebx
c000a280:	e8 14 ee ff ff       	call   c0009099 <intr_disable>
c000a285:	89 c7                	mov    edi,eax
c000a287:	58                   	pop    eax
c000a288:	5a                   	pop    edx
c000a289:	56                   	push   esi
c000a28a:	68 ac e6 02 c0       	push   0xc002e6ac
c000a28f:	e8 dc 09 00 00       	call   c000ac70 <list_find>
c000a294:	83 c4 10             	add    esp,0x10
c000a297:	85 c0                	test   eax,eax
c000a299:	74 19                	je     c000a2b4 <process_execute+0xb8>
c000a29b:	68 04 e9 00 c0       	push   0xc000e904
c000a2a0:	68 b4 e9 00 c0       	push   0xc000e9b4
c000a2a5:	6a 74                	push   0x74
c000a2a7:	68 9e e8 00 c0       	push   0xc000e89e
c000a2ac:	e8 af e1 ff ff       	call   c0008460 <panic_spin>
c000a2b1:	83 c4 10             	add    esp,0x10
c000a2b4:	50                   	push   eax
c000a2b5:	83 c3 2c             	add    ebx,0x2c
c000a2b8:	50                   	push   eax
c000a2b9:	56                   	push   esi
c000a2ba:	68 ac e6 02 c0       	push   0xc002e6ac
c000a2bf:	e8 53 09 00 00       	call   c000ac17 <list_append>
c000a2c4:	58                   	pop    eax
c000a2c5:	5a                   	pop    edx
c000a2c6:	53                   	push   ebx
c000a2c7:	68 94 e6 02 c0       	push   0xc002e694
c000a2cc:	e8 9f 09 00 00       	call   c000ac70 <list_find>
c000a2d1:	83 c4 10             	add    esp,0x10
c000a2d4:	85 c0                	test   eax,eax
c000a2d6:	74 19                	je     c000a2f1 <process_execute+0xf5>
c000a2d8:	68 30 e9 00 c0       	push   0xc000e930
c000a2dd:	68 b4 e9 00 c0       	push   0xc000e9b4
c000a2e2:	6a 77                	push   0x77
c000a2e4:	68 9e e8 00 c0       	push   0xc000e89e
c000a2e9:	e8 72 e1 ff ff       	call   c0008460 <panic_spin>
c000a2ee:	83 c4 10             	add    esp,0x10
c000a2f1:	56                   	push   esi
c000a2f2:	56                   	push   esi
c000a2f3:	53                   	push   ebx
c000a2f4:	68 94 e6 02 c0       	push   0xc002e694
c000a2f9:	e8 19 09 00 00       	call   c000ac17 <list_append>
c000a2fe:	83 c4 10             	add    esp,0x10
c000a301:	89 7d 08             	mov    DWORD PTR [ebp+0x8],edi
c000a304:	8d 65 f4             	lea    esp,[ebp-0xc]
c000a307:	5b                   	pop    ebx
c000a308:	5e                   	pop    esi
c000a309:	5f                   	pop    edi
c000a30a:	5d                   	pop    ebp
c000a30b:	e9 70 ee ff ff       	jmp    c0009180 <intr_set_status>

c000a310 <init_console>:
c000a310:	55                   	push   ebp
c000a311:	89 e5                	mov    ebp,esp
c000a313:	83 ec 14             	sub    esp,0x14
c000a316:	68 44 ee 00 c0       	push   0xc000ee44
c000a31b:	e8 7f f5 ff ff       	call   c000989f <lock_init>
c000a320:	83 c4 10             	add    esp,0x10
c000a323:	c9                   	leave  
c000a324:	c3                   	ret    

c000a325 <console_char>:
c000a325:	55                   	push   ebp
c000a326:	89 e5                	mov    ebp,esp
c000a328:	56                   	push   esi
c000a329:	8b 75 0c             	mov    esi,DWORD PTR [ebp+0xc]
c000a32c:	53                   	push   ebx
c000a32d:	8a 5d 08             	mov    bl,BYTE PTR [ebp+0x8]
c000a330:	83 ec 0c             	sub    esp,0xc
c000a333:	68 44 ee 00 c0       	push   0xc000ee44
c000a338:	e8 ee f6 ff ff       	call   c0009a2b <lock_acquire>
c000a33d:	58                   	pop    eax
c000a33e:	5a                   	pop    edx
c000a33f:	89 f2                	mov    edx,esi
c000a341:	0f b6 c2             	movzx  eax,dl
c000a344:	50                   	push   eax
c000a345:	0f b6 c3             	movzx  eax,bl
c000a348:	50                   	push   eax
c000a349:	e8 e6 0a 00 00       	call   c000ae34 <put_char>
c000a34e:	83 c4 10             	add    esp,0x10
c000a351:	c7 45 08 44 ee 00 c0 	mov    DWORD PTR [ebp+0x8],0xc000ee44
c000a358:	8d 65 f8             	lea    esp,[ebp-0x8]
c000a35b:	5b                   	pop    ebx
c000a35c:	5e                   	pop    esi
c000a35d:	5d                   	pop    ebp
c000a35e:	e9 23 f7 ff ff       	jmp    c0009a86 <lock_release>

c000a363 <console_str>:
c000a363:	55                   	push   ebp
c000a364:	89 e5                	mov    ebp,esp
c000a366:	56                   	push   esi
c000a367:	8b 75 0c             	mov    esi,DWORD PTR [ebp+0xc]
c000a36a:	53                   	push   ebx
c000a36b:	8a 5d 08             	mov    bl,BYTE PTR [ebp+0x8]
c000a36e:	83 ec 0c             	sub    esp,0xc
c000a371:	68 44 ee 00 c0       	push   0xc000ee44
c000a376:	e8 b0 f6 ff ff       	call   c0009a2b <lock_acquire>
c000a37b:	59                   	pop    ecx
c000a37c:	58                   	pop    eax
c000a37d:	0f b6 c3             	movzx  eax,bl
c000a380:	56                   	push   esi
c000a381:	50                   	push   eax
c000a382:	e8 4e 0b 00 00       	call   c000aed5 <put_str>
c000a387:	83 c4 10             	add    esp,0x10
c000a38a:	c7 45 08 44 ee 00 c0 	mov    DWORD PTR [ebp+0x8],0xc000ee44
c000a391:	8d 65 f8             	lea    esp,[ebp-0x8]
c000a394:	5b                   	pop    ebx
c000a395:	5e                   	pop    esi
c000a396:	5d                   	pop    ebp
c000a397:	e9 ea f6 ff ff       	jmp    c0009a86 <lock_release>

c000a39c <console_int>:
c000a39c:	55                   	push   ebp
c000a39d:	89 e5                	mov    ebp,esp
c000a39f:	57                   	push   edi
c000a3a0:	56                   	push   esi
c000a3a1:	53                   	push   ebx
c000a3a2:	83 ec 18             	sub    esp,0x18
c000a3a5:	8b 7d 10             	mov    edi,DWORD PTR [ebp+0x10]
c000a3a8:	8b 75 0c             	mov    esi,DWORD PTR [ebp+0xc]
c000a3ab:	8a 5d 08             	mov    bl,BYTE PTR [ebp+0x8]
c000a3ae:	68 44 ee 00 c0       	push   0xc000ee44
c000a3b3:	e8 73 f6 ff ff       	call   c0009a2b <lock_acquire>
c000a3b8:	83 c4 0c             	add    esp,0xc
c000a3bb:	57                   	push   edi
c000a3bc:	56                   	push   esi
c000a3bd:	0f b6 c3             	movzx  eax,bl
c000a3c0:	50                   	push   eax
c000a3c1:	e8 71 0b 00 00       	call   c000af37 <put_int>
c000a3c6:	83 c4 10             	add    esp,0x10
c000a3c9:	c7 45 08 44 ee 00 c0 	mov    DWORD PTR [ebp+0x8],0xc000ee44
c000a3d0:	8d 65 f4             	lea    esp,[ebp-0xc]
c000a3d3:	5b                   	pop    ebx
c000a3d4:	5e                   	pop    esi
c000a3d5:	5f                   	pop    edi
c000a3d6:	5d                   	pop    ebp
c000a3d7:	e9 aa f6 ff ff       	jmp    c0009a86 <lock_release>

c000a3dc <console_uint>:
c000a3dc:	55                   	push   ebp
c000a3dd:	89 e5                	mov    ebp,esp
c000a3df:	57                   	push   edi
c000a3e0:	56                   	push   esi
c000a3e1:	53                   	push   ebx
c000a3e2:	83 ec 18             	sub    esp,0x18
c000a3e5:	8b 7d 10             	mov    edi,DWORD PTR [ebp+0x10]
c000a3e8:	8b 75 0c             	mov    esi,DWORD PTR [ebp+0xc]
c000a3eb:	8a 5d 08             	mov    bl,BYTE PTR [ebp+0x8]
c000a3ee:	68 44 ee 00 c0       	push   0xc000ee44
c000a3f3:	e8 33 f6 ff ff       	call   c0009a2b <lock_acquire>
c000a3f8:	83 c4 0c             	add    esp,0xc
c000a3fb:	57                   	push   edi
c000a3fc:	56                   	push   esi
c000a3fd:	0f b6 c3             	movzx  eax,bl
c000a400:	50                   	push   eax
c000a401:	e8 f7 0a 00 00       	call   c000aefd <put_uint>
c000a406:	83 c4 10             	add    esp,0x10
c000a409:	c7 45 08 44 ee 00 c0 	mov    DWORD PTR [ebp+0x8],0xc000ee44
c000a410:	8d 65 f4             	lea    esp,[ebp-0xc]
c000a413:	5b                   	pop    ebx
c000a414:	5e                   	pop    esi
c000a415:	5f                   	pop    edi
c000a416:	5d                   	pop    ebp
c000a417:	e9 6a f6 ff ff       	jmp    c0009a86 <lock_release>

c000a41c <init_cpu>:
c000a41c:	55                   	push   ebp
c000a41d:	31 c0                	xor    eax,eax
c000a41f:	89 e5                	mov    ebp,esp
c000a421:	b9 04 00 00 00       	mov    ecx,0x4
c000a426:	57                   	push   edi
c000a427:	56                   	push   esi
c000a428:	53                   	push   ebx
c000a429:	8d 7d d8             	lea    edi,[ebp-0x28]
c000a42c:	83 ec 3c             	sub    esp,0x3c
c000a42f:	f3 ab                	rep stos DWORD PTR es:[edi],eax
c000a431:	8d 7d c7             	lea    edi,[ebp-0x39]
c000a434:	8d 75 c7             	lea    esi,[ebp-0x39]
c000a437:	b1 11                	mov    cl,0x11
c000a439:	f3 aa                	rep stos BYTE PTR es:[edi],al
c000a43b:	bf 02 00 00 80       	mov    edi,0x80000002
c000a440:	eb 30                	jmp    c000a472 <init_cpu+0x56>
c000a442:	89 f8                	mov    eax,edi
c000a444:	31 c9                	xor    ecx,ecx
c000a446:	0f a2                	cpuid  
c000a448:	89 45 d8             	mov    DWORD PTR [ebp-0x28],eax
c000a44b:	47                   	inc    edi
c000a44c:	89 45 c7             	mov    DWORD PTR [ebp-0x39],eax
c000a44f:	50                   	push   eax
c000a450:	50                   	push   eax
c000a451:	56                   	push   esi
c000a452:	6a 07                	push   0x7
c000a454:	89 5d dc             	mov    DWORD PTR [ebp-0x24],ebx
c000a457:	89 4d e0             	mov    DWORD PTR [ebp-0x20],ecx
c000a45a:	89 55 e4             	mov    DWORD PTR [ebp-0x1c],edx
c000a45d:	89 5d cb             	mov    DWORD PTR [ebp-0x35],ebx
c000a460:	89 4d cf             	mov    DWORD PTR [ebp-0x31],ecx
c000a463:	89 55 d3             	mov    DWORD PTR [ebp-0x2d],edx
c000a466:	c6 45 d7 00          	mov    BYTE PTR [ebp-0x29],0x0
c000a46a:	e8 66 0a 00 00       	call   c000aed5 <put_str>
c000a46f:	83 c4 10             	add    esp,0x10
c000a472:	81 ff 05 00 00 80    	cmp    edi,0x80000005
c000a478:	75 c8                	jne    c000a442 <init_cpu+0x26>
c000a47a:	8d 65 f4             	lea    esp,[ebp-0xc]
c000a47d:	5b                   	pop    ebx
c000a47e:	5e                   	pop    esi
c000a47f:	5f                   	pop    edi
c000a480:	5d                   	pop    ebp
c000a481:	c3                   	ret    

c000a482 <cpu_info>:
c000a482:	55                   	push   ebp
c000a483:	31 c0                	xor    eax,eax
c000a485:	89 e5                	mov    ebp,esp
c000a487:	b9 04 00 00 00       	mov    ecx,0x4
c000a48c:	57                   	push   edi
c000a48d:	56                   	push   esi
c000a48e:	53                   	push   ebx
c000a48f:	8d 7d d8             	lea    edi,[ebp-0x28]
c000a492:	83 ec 3c             	sub    esp,0x3c
c000a495:	f3 ab                	rep stos DWORD PTR es:[edi],eax
c000a497:	8d 7d c7             	lea    edi,[ebp-0x39]
c000a49a:	8d 75 c7             	lea    esi,[ebp-0x39]
c000a49d:	b1 11                	mov    cl,0x11
c000a49f:	f3 aa                	rep stos BYTE PTR es:[edi],al
c000a4a1:	bf 02 00 00 80       	mov    edi,0x80000002
c000a4a6:	eb 30                	jmp    c000a4d8 <cpu_info+0x56>
c000a4a8:	89 f8                	mov    eax,edi
c000a4aa:	31 c9                	xor    ecx,ecx
c000a4ac:	0f a2                	cpuid  
c000a4ae:	89 55 e4             	mov    DWORD PTR [ebp-0x1c],edx
c000a4b1:	47                   	inc    edi
c000a4b2:	89 55 d3             	mov    DWORD PTR [ebp-0x2d],edx
c000a4b5:	52                   	push   edx
c000a4b6:	52                   	push   edx
c000a4b7:	56                   	push   esi
c000a4b8:	6a 07                	push   0x7
c000a4ba:	89 45 d8             	mov    DWORD PTR [ebp-0x28],eax
c000a4bd:	89 5d dc             	mov    DWORD PTR [ebp-0x24],ebx
c000a4c0:	89 4d e0             	mov    DWORD PTR [ebp-0x20],ecx
c000a4c3:	89 45 c7             	mov    DWORD PTR [ebp-0x39],eax
c000a4c6:	89 5d cb             	mov    DWORD PTR [ebp-0x35],ebx
c000a4c9:	89 4d cf             	mov    DWORD PTR [ebp-0x31],ecx
c000a4cc:	c6 45 d7 00          	mov    BYTE PTR [ebp-0x29],0x0
c000a4d0:	e8 00 0a 00 00       	call   c000aed5 <put_str>
c000a4d5:	83 c4 10             	add    esp,0x10
c000a4d8:	81 ff 05 00 00 80    	cmp    edi,0x80000005
c000a4de:	75 c8                	jne    c000a4a8 <cpu_info+0x26>
c000a4e0:	8d 65 f4             	lea    esp,[ebp-0xc]
c000a4e3:	5b                   	pop    ebx
c000a4e4:	5e                   	pop    esi
c000a4e5:	5f                   	pop    edi
c000a4e6:	5d                   	pop    ebp
c000a4e7:	c3                   	ret    

c000a4e8 <init_keyboard>:
c000a4e8:	55                   	push   ebp
c000a4e9:	89 e5                	mov    ebp,esp
c000a4eb:	83 ec 08             	sub    esp,0x8
c000a4ee:	6a 40                	push   0x40
c000a4f0:	6a 08                	push   0x8
c000a4f2:	68 68 ee 00 c0       	push   0xc000ee68
c000a4f7:	68 c8 e6 02 c0       	push   0xc002e6c8
c000a4fc:	e8 1f 04 00 00       	call   c000a920 <init_fifo>
c000a501:	83 c4 10             	add    esp,0x10
c000a504:	c9                   	leave  
c000a505:	c3                   	ret    

c000a506 <intr0x21_handler>:
c000a506:	55                   	push   ebp
c000a507:	b8 20 00 00 00       	mov    eax,0x20
c000a50c:	89 e5                	mov    ebp,esp
c000a50e:	89 c2                	mov    edx,eax
c000a510:	53                   	push   ebx
c000a511:	83 ec 14             	sub    esp,0x14
c000a514:	ee                   	out    dx,al
c000a515:	8b 0d a8 ee 00 c0    	mov    ecx,DWORD PTR ds:0xc000eea8
c000a51b:	b2 60                	mov    dl,0x60
c000a51d:	8b 1d ac ee 00 c0    	mov    ebx,DWORD PTR ds:0xc000eeac
c000a523:	ec                   	in     al,dx
c000a524:	66 3d e0 00          	cmp    ax,0xe0
c000a528:	75 0f                	jne    c000a539 <intr0x21_handler+0x33>
c000a52a:	c7 05 b0 ee 00 c0 01 	mov    DWORD PTR ds:0xc000eeb0,0x1
c000a531:	00 00 00 
c000a534:	e9 87 01 00 00       	jmp    c000a6c0 <intr0x21_handler+0x1ba>
c000a539:	83 3d b0 ee 00 c0 01 	cmp    DWORD PTR ds:0xc000eeb0,0x1
c000a540:	75 0e                	jne    c000a550 <intr0x21_handler+0x4a>
c000a542:	66 0d 00 e0          	or     ax,0xe000
c000a546:	c7 05 b0 ee 00 c0 00 	mov    DWORD PTR ds:0xc000eeb0,0x0
c000a54d:	00 00 00 
c000a550:	a8 80                	test   al,0x80
c000a552:	74 61                	je     c000a5b5 <intr0x21_handler+0xaf>
c000a554:	24 7f                	and    al,0x7f
c000a556:	66 83 f8 36          	cmp    ax,0x36
c000a55a:	74 3b                	je     c000a597 <intr0x21_handler+0x91>
c000a55c:	77 12                	ja     c000a570 <intr0x21_handler+0x6a>
c000a55e:	66 83 f8 1d          	cmp    ax,0x1d
c000a562:	74 24                	je     c000a588 <intr0x21_handler+0x82>
c000a564:	66 83 f8 2a          	cmp    ax,0x2a
c000a568:	0f 85 52 01 00 00    	jne    c000a6c0 <intr0x21_handler+0x1ba>
c000a56e:	eb 27                	jmp    c000a597 <intr0x21_handler+0x91>
c000a570:	66 3d 1d e0          	cmp    ax,0xe01d
c000a574:	74 12                	je     c000a588 <intr0x21_handler+0x82>
c000a576:	66 3d 38 e0          	cmp    ax,0xe038
c000a57a:	74 2a                	je     c000a5a6 <intr0x21_handler+0xa0>
c000a57c:	66 83 f8 38          	cmp    ax,0x38
c000a580:	0f 85 3a 01 00 00    	jne    c000a6c0 <intr0x21_handler+0x1ba>
c000a586:	eb 1e                	jmp    c000a5a6 <intr0x21_handler+0xa0>
c000a588:	c7 05 b4 ee 00 c0 00 	mov    DWORD PTR ds:0xc000eeb4,0x0
c000a58f:	00 00 00 
c000a592:	e9 29 01 00 00       	jmp    c000a6c0 <intr0x21_handler+0x1ba>
c000a597:	c7 05 a8 ee 00 c0 00 	mov    DWORD PTR ds:0xc000eea8,0x0
c000a59e:	00 00 00 
c000a5a1:	e9 1a 01 00 00       	jmp    c000a6c0 <intr0x21_handler+0x1ba>
c000a5a6:	c7 05 b8 ee 00 c0 00 	mov    DWORD PTR ds:0xc000eeb8,0x0
c000a5ad:	00 00 00 
c000a5b0:	e9 0b 01 00 00       	jmp    c000a6c0 <intr0x21_handler+0x1ba>
c000a5b5:	8d 50 ff             	lea    edx,[eax-0x1]
c000a5b8:	66 83 fa 39          	cmp    dx,0x39
c000a5bc:	76 10                	jbe    c000a5ce <intr0x21_handler+0xc8>
c000a5be:	66 3d 38 e0          	cmp    ax,0xe038
c000a5c2:	74 0a                	je     c000a5ce <intr0x21_handler+0xc8>
c000a5c4:	66 3d 1d e0          	cmp    ax,0xe01d
c000a5c8:	0f 85 f2 00 00 00    	jne    c000a6c0 <intr0x21_handler+0x1ba>
c000a5ce:	66 83 f8 29          	cmp    ax,0x29
c000a5d2:	74 2d                	je     c000a601 <intr0x21_handler+0xfb>
c000a5d4:	66 83 f8 0d          	cmp    ax,0xd
c000a5d8:	76 27                	jbe    c000a601 <intr0x21_handler+0xfb>
c000a5da:	66 83 f8 1b          	cmp    ax,0x1b
c000a5de:	74 21                	je     c000a601 <intr0x21_handler+0xfb>
c000a5e0:	66 83 f8 1a          	cmp    ax,0x1a
c000a5e4:	74 1b                	je     c000a601 <intr0x21_handler+0xfb>
c000a5e6:	66 83 f8 27          	cmp    ax,0x27
c000a5ea:	74 15                	je     c000a601 <intr0x21_handler+0xfb>
c000a5ec:	66 83 f8 2b          	cmp    ax,0x2b
c000a5f0:	74 0f                	je     c000a601 <intr0x21_handler+0xfb>
c000a5f2:	66 83 f8 28          	cmp    ax,0x28
c000a5f6:	74 09                	je     c000a601 <intr0x21_handler+0xfb>
c000a5f8:	8d 50 cd             	lea    edx,[eax-0x33]
c000a5fb:	66 83 fa 02          	cmp    dx,0x2
c000a5ff:	77 06                	ja     c000a607 <intr0x21_handler+0x101>
c000a601:	49                   	dec    ecx
c000a602:	0f 94 c2             	sete   dl
c000a605:	eb 0f                	jmp    c000a616 <intr0x21_handler+0x110>
c000a607:	85 db                	test   ebx,ebx
c000a609:	74 06                	je     c000a611 <intr0x21_handler+0x10b>
c000a60b:	31 d2                	xor    edx,edx
c000a60d:	85 c9                	test   ecx,ecx
c000a60f:	75 08                	jne    c000a619 <intr0x21_handler+0x113>
c000a611:	09 cb                	or     ebx,ecx
c000a613:	0f 95 c2             	setne  dl
c000a616:	0f b6 d2             	movzx  edx,dl
c000a619:	66 25 ff 00          	and    ax,0xff
c000a61d:	0f b7 c8             	movzx  ecx,ax
c000a620:	8a 94 4a 48 ea 00 c0 	mov    dl,BYTE PTR [edx+ecx*2-0x3fff15b8]
c000a627:	84 d2                	test   dl,dl
c000a629:	88 55 f7             	mov    BYTE PTR [ebp-0x9],dl
c000a62c:	74 26                	je     c000a654 <intr0x21_handler+0x14e>
c000a62e:	83 ec 0c             	sub    esp,0xc
c000a631:	68 c8 e6 02 c0       	push   0xc002e6c8
c000a636:	e8 69 05 00 00       	call   c000aba4 <fifo_fill>
c000a63b:	83 c4 10             	add    esp,0x10
c000a63e:	85 c0                	test   eax,eax
c000a640:	75 7e                	jne    c000a6c0 <intr0x21_handler+0x1ba>
c000a642:	51                   	push   ecx
c000a643:	51                   	push   ecx
c000a644:	8d 45 f7             	lea    eax,[ebp-0x9]
c000a647:	50                   	push   eax
c000a648:	68 c8 e6 02 c0       	push   0xc002e6c8
c000a64d:	e8 38 03 00 00       	call   c000a98a <fifo_put>
c000a652:	eb 69                	jmp    c000a6bd <intr0x21_handler+0x1b7>
c000a654:	66 83 f8 36          	cmp    ax,0x36
c000a658:	74 2a                	je     c000a684 <intr0x21_handler+0x17e>
c000a65a:	77 0e                	ja     c000a66a <intr0x21_handler+0x164>
c000a65c:	66 83 f8 1d          	cmp    ax,0x1d
c000a660:	74 16                	je     c000a678 <intr0x21_handler+0x172>
c000a662:	66 83 f8 2a          	cmp    ax,0x2a
c000a666:	75 47                	jne    c000a6af <intr0x21_handler+0x1a9>
c000a668:	eb 1a                	jmp    c000a684 <intr0x21_handler+0x17e>
c000a66a:	66 83 f8 38          	cmp    ax,0x38
c000a66e:	74 20                	je     c000a690 <intr0x21_handler+0x18a>
c000a670:	66 83 f8 3a          	cmp    ax,0x3a
c000a674:	75 39                	jne    c000a6af <intr0x21_handler+0x1a9>
c000a676:	eb 24                	jmp    c000a69c <intr0x21_handler+0x196>
c000a678:	c7 05 b4 ee 00 c0 01 	mov    DWORD PTR ds:0xc000eeb4,0x1
c000a67f:	00 00 00 
c000a682:	eb 3c                	jmp    c000a6c0 <intr0x21_handler+0x1ba>
c000a684:	c7 05 a8 ee 00 c0 01 	mov    DWORD PTR ds:0xc000eea8,0x1
c000a68b:	00 00 00 
c000a68e:	eb 30                	jmp    c000a6c0 <intr0x21_handler+0x1ba>
c000a690:	c7 05 b8 ee 00 c0 01 	mov    DWORD PTR ds:0xc000eeb8,0x1
c000a697:	00 00 00 
c000a69a:	eb 24                	jmp    c000a6c0 <intr0x21_handler+0x1ba>
c000a69c:	31 c0                	xor    eax,eax
c000a69e:	83 3d ac ee 00 c0 00 	cmp    DWORD PTR ds:0xc000eeac,0x0
c000a6a5:	0f 94 c0             	sete   al
c000a6a8:	a3 ac ee 00 c0       	mov    ds:0xc000eeac,eax
c000a6ad:	eb 11                	jmp    c000a6c0 <intr0x21_handler+0x1ba>
c000a6af:	52                   	push   edx
c000a6b0:	52                   	push   edx
c000a6b1:	68 14 ea 00 c0       	push   0xc000ea14
c000a6b6:	6a 04                	push   0x4
c000a6b8:	e8 18 08 00 00       	call   c000aed5 <put_str>
c000a6bd:	83 c4 10             	add    esp,0x10
c000a6c0:	8b 5d fc             	mov    ebx,DWORD PTR [ebp-0x4]
c000a6c3:	c9                   	leave  
c000a6c4:	c3                   	ret    
c000a6c5:	00 00                	add    BYTE PTR [eax],al
	...

c000a6c8 <get_time>:
c000a6c8:	55                   	push   ebp
c000a6c9:	89 e5                	mov    ebp,esp
c000a6cb:	57                   	push   edi
c000a6cc:	56                   	push   esi
c000a6cd:	be 70 00 00 00       	mov    esi,0x70
c000a6d2:	53                   	push   ebx
c000a6d3:	83 ec 1c             	sub    esp,0x1c
c000a6d6:	8b 7d 08             	mov    edi,DWORD PTR [ebp+0x8]
c000a6d9:	e8 ab e9 ff ff       	call   c0009089 <intr_get_status>
c000a6de:	89 45 e0             	mov    DWORD PTR [ebp-0x20],eax
c000a6e1:	b8 89 00 00 00       	mov    eax,0x89
c000a6e6:	89 f2                	mov    edx,esi
c000a6e8:	ee                   	out    dx,al
c000a6e9:	bb 71 00 00 00       	mov    ebx,0x71
c000a6ee:	89 da                	mov    edx,ebx
c000a6f0:	ec                   	in     al,dx
c000a6f1:	89 c1                	mov    ecx,eax
c000a6f3:	89 f2                	mov    edx,esi
c000a6f5:	b8 b2 00 00 00       	mov    eax,0xb2
c000a6fa:	ee                   	out    dx,al
c000a6fb:	89 da                	mov    edx,ebx
c000a6fd:	ec                   	in     al,dx
c000a6fe:	c1 e0 08             	shl    eax,0x8
c000a701:	89 f2                	mov    edx,esi
c000a703:	01 c1                	add    ecx,eax
c000a705:	b8 88 00 00 00       	mov    eax,0x88
c000a70a:	89 4f 14             	mov    DWORD PTR [edi+0x14],ecx
c000a70d:	ee                   	out    dx,al
c000a70e:	89 da                	mov    edx,ebx
c000a710:	ec                   	in     al,dx
c000a711:	89 47 10             	mov    DWORD PTR [edi+0x10],eax
c000a714:	89 f2                	mov    edx,esi
c000a716:	b8 87 00 00 00       	mov    eax,0x87
c000a71b:	ee                   	out    dx,al
c000a71c:	89 da                	mov    edx,ebx
c000a71e:	ec                   	in     al,dx
c000a71f:	89 47 0c             	mov    DWORD PTR [edi+0xc],eax
c000a722:	89 f2                	mov    edx,esi
c000a724:	b8 84 00 00 00       	mov    eax,0x84
c000a729:	ee                   	out    dx,al
c000a72a:	89 da                	mov    edx,ebx
c000a72c:	ec                   	in     al,dx
c000a72d:	89 47 08             	mov    DWORD PTR [edi+0x8],eax
c000a730:	89 f2                	mov    edx,esi
c000a732:	b8 82 00 00 00       	mov    eax,0x82
c000a737:	ee                   	out    dx,al
c000a738:	89 da                	mov    edx,ebx
c000a73a:	ec                   	in     al,dx
c000a73b:	b9 80 00 00 00       	mov    ecx,0x80
c000a740:	89 f2                	mov    edx,esi
c000a742:	89 47 04             	mov    DWORD PTR [edi+0x4],eax
c000a745:	89 c8                	mov    eax,ecx
c000a747:	ee                   	out    dx,al
c000a748:	89 da                	mov    edx,ebx
c000a74a:	ec                   	in     al,dx
c000a74b:	89 45 e4             	mov    DWORD PTR [ebp-0x1c],eax
c000a74e:	89 f2                	mov    edx,esi
c000a750:	89 07                	mov    DWORD PTR [edi],eax
c000a752:	89 c8                	mov    eax,ecx
c000a754:	ee                   	out    dx,al
c000a755:	89 da                	mov    edx,ebx
c000a757:	ec                   	in     al,dx
c000a758:	39 45 e4             	cmp    DWORD PTR [ebp-0x1c],eax
c000a75b:	75 84                	jne    c000a6e1 <get_time+0x19>
c000a75d:	b2 70                	mov    dl,0x70
c000a75f:	31 c0                	xor    eax,eax
c000a761:	ee                   	out    dx,al
c000a762:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
c000a765:	89 45 08             	mov    DWORD PTR [ebp+0x8],eax
c000a768:	83 c4 1c             	add    esp,0x1c
c000a76b:	5b                   	pop    ebx
c000a76c:	5e                   	pop    esi
c000a76d:	5f                   	pop    edi
c000a76e:	5d                   	pop    ebp
c000a76f:	e9 0c ea ff ff       	jmp    c0009180 <intr_set_status>

c000a774 <init_pit>:
c000a774:	55                   	push   ebp
c000a775:	ba 43 00 00 00       	mov    edx,0x43
c000a77a:	89 e5                	mov    ebp,esp
c000a77c:	b8 34 00 00 00       	mov    eax,0x34
c000a781:	ee                   	out    dx,al
c000a782:	b2 40                	mov    dl,0x40
c000a784:	b0 9c                	mov    al,0x9c
c000a786:	ee                   	out    dx,al
c000a787:	b0 2e                	mov    al,0x2e
c000a789:	ee                   	out    dx,al
c000a78a:	5d                   	pop    ebp
c000a78b:	c3                   	ret    

c000a78c <intr0x20_handler>:
c000a78c:	55                   	push   ebp
c000a78d:	b8 20 00 00 00       	mov    eax,0x20
c000a792:	89 e5                	mov    ebp,esp
c000a794:	83 ec 08             	sub    esp,0x8
c000a797:	89 c2                	mov    edx,eax
c000a799:	ee                   	out    dx,al
c000a79a:	e8 f7 f3 ff ff       	call   c0009b96 <running_thread>
c000a79f:	ff 05 c0 ee 00 c0    	inc    DWORD PTR ds:0xc000eec0
c000a7a5:	8a 50 19             	mov    dl,BYTE PTR [eax+0x19]
c000a7a8:	ff 40 1c             	inc    DWORD PTR [eax+0x1c]
c000a7ab:	84 d2                	test   dl,dl
c000a7ad:	75 06                	jne    c000a7b5 <intr0x20_handler+0x29>
c000a7af:	c9                   	leave  
c000a7b0:	e9 58 f5 ff ff       	jmp    c0009d0d <schedule>
c000a7b5:	4a                   	dec    edx
c000a7b6:	88 50 19             	mov    BYTE PTR [eax+0x19],dl
c000a7b9:	c9                   	leave  
c000a7ba:	c3                   	ret    
	...

c000a7bc <bitmap_init>:
c000a7bc:	55                   	push   ebp
c000a7bd:	89 e5                	mov    ebp,esp
c000a7bf:	83 ec 0c             	sub    esp,0xc
c000a7c2:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c000a7c5:	ff 30                	push   DWORD PTR [eax]
c000a7c7:	6a 00                	push   0x0
c000a7c9:	ff 70 04             	push   DWORD PTR [eax+0x4]
c000a7cc:	e8 a3 07 00 00       	call   c000af74 <memset>
c000a7d1:	83 c4 10             	add    esp,0x10
c000a7d4:	c9                   	leave  
c000a7d5:	c3                   	ret    

c000a7d6 <bitmap_scan_test>:
c000a7d6:	55                   	push   ebp
c000a7d7:	89 e5                	mov    ebp,esp
c000a7d9:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c000a7dc:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
c000a7df:	5d                   	pop    ebp
c000a7e0:	8b 52 04             	mov    edx,DWORD PTR [edx+0x4]
c000a7e3:	89 c8                	mov    eax,ecx
c000a7e5:	83 e1 07             	and    ecx,0x7
c000a7e8:	c1 e8 03             	shr    eax,0x3
c000a7eb:	0f b6 04 02          	movzx  eax,BYTE PTR [edx+eax*1]
c000a7ef:	ba 01 00 00 00       	mov    edx,0x1
c000a7f4:	d3 e2                	shl    edx,cl
c000a7f6:	21 d0                	and    eax,edx
c000a7f8:	c3                   	ret    

c000a7f9 <bitmap_alloc>:
c000a7f9:	55                   	push   ebp
c000a7fa:	89 e5                	mov    ebp,esp
c000a7fc:	57                   	push   edi
c000a7fd:	56                   	push   esi
c000a7fe:	31 f6                	xor    esi,esi
c000a800:	53                   	push   ebx
c000a801:	83 ec 1c             	sub    esp,0x1c
c000a804:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c000a807:	8b 43 04             	mov    eax,DWORD PTR [ebx+0x4]
c000a80a:	eb 01                	jmp    c000a80d <bitmap_alloc+0x14>
c000a80c:	46                   	inc    esi
c000a80d:	80 3c 30 ff          	cmp    BYTE PTR [eax+esi*1],0xff
c000a811:	75 04                	jne    c000a817 <bitmap_alloc+0x1e>
c000a813:	3b 33                	cmp    esi,DWORD PTR [ebx]
c000a815:	72 f5                	jb     c000a80c <bitmap_alloc+0x13>
c000a817:	3b 33                	cmp    esi,DWORD PTR [ebx]
c000a819:	72 19                	jb     c000a834 <bitmap_alloc+0x3b>
c000a81b:	68 10 eb 00 c0       	push   0xc000eb10
c000a820:	68 84 eb 00 c0       	push   0xc000eb84
c000a825:	6a 2e                	push   0x2e
c000a827:	68 34 eb 00 c0       	push   0xc000eb34
c000a82c:	e8 2f dc ff ff       	call   c0008460 <panic_spin>
c000a831:	83 c4 10             	add    esp,0x10
c000a834:	8b 13                	mov    edx,DWORD PTR [ebx]
c000a836:	83 c8 ff             	or     eax,0xffffffff
c000a839:	39 d6                	cmp    esi,edx
c000a83b:	74 72                	je     c000a8af <bitmap_alloc+0xb6>
c000a83d:	8b 43 04             	mov    eax,DWORD PTR [ebx+0x4]
c000a840:	31 c9                	xor    ecx,ecx
c000a842:	bf 01 00 00 00       	mov    edi,0x1
c000a847:	89 75 e4             	mov    DWORD PTR [ebp-0x1c],esi
c000a84a:	89 55 dc             	mov    DWORD PTR [ebp-0x24],edx
c000a84d:	8a 04 30             	mov    al,BYTE PTR [eax+esi*1]
c000a850:	eb 01                	jmp    c000a853 <bitmap_alloc+0x5a>
c000a852:	41                   	inc    ecx
c000a853:	89 fe                	mov    esi,edi
c000a855:	d3 e6                	shl    esi,cl
c000a857:	89 f2                	mov    edx,esi
c000a859:	84 d0                	test   al,dl
c000a85b:	75 f5                	jne    c000a852 <bitmap_alloc+0x59>
c000a85d:	8b 75 e4             	mov    esi,DWORD PTR [ebp-0x1c]
c000a860:	83 7d 0c 01          	cmp    DWORD PTR [ebp+0xc],0x1
c000a864:	8b 55 dc             	mov    edx,DWORD PTR [ebp-0x24]
c000a867:	8d 0c f1             	lea    ecx,[ecx+esi*8]
c000a86a:	89 c8                	mov    eax,ecx
c000a86c:	74 41                	je     c000a8af <bitmap_alloc+0xb6>
c000a86e:	8d 3c d5 00 00 00 00 	lea    edi,[edx*8+0x0]
c000a875:	be 01 00 00 00       	mov    esi,0x1
c000a87a:	29 cf                	sub    edi,ecx
c000a87c:	8d 51 01             	lea    edx,[ecx+0x1]
c000a87f:	eb 27                	jmp    c000a8a8 <bitmap_alloc+0xaf>
c000a881:	50                   	push   eax
c000a882:	46                   	inc    esi
c000a883:	50                   	push   eax
c000a884:	52                   	push   edx
c000a885:	53                   	push   ebx
c000a886:	89 55 e0             	mov    DWORD PTR [ebp-0x20],edx
c000a889:	e8 48 ff ff ff       	call   c000a7d6 <bitmap_scan_test>
c000a88e:	83 c4 10             	add    esp,0x10
c000a891:	8b 55 e0             	mov    edx,DWORD PTR [ebp-0x20]
c000a894:	85 c0                	test   eax,eax
c000a896:	74 02                	je     c000a89a <bitmap_alloc+0xa1>
c000a898:	31 f6                	xor    esi,esi
c000a89a:	3b 75 0c             	cmp    esi,DWORD PTR [ebp+0xc]
c000a89d:	75 07                	jne    c000a8a6 <bitmap_alloc+0xad>
c000a89f:	29 f2                	sub    edx,esi
c000a8a1:	8d 42 01             	lea    eax,[edx+0x1]
c000a8a4:	eb 09                	jmp    c000a8af <bitmap_alloc+0xb6>
c000a8a6:	4f                   	dec    edi
c000a8a7:	42                   	inc    edx
c000a8a8:	85 ff                	test   edi,edi
c000a8aa:	75 d5                	jne    c000a881 <bitmap_alloc+0x88>
c000a8ac:	83 c8 ff             	or     eax,0xffffffff
c000a8af:	8d 65 f4             	lea    esp,[ebp-0xc]
c000a8b2:	5b                   	pop    ebx
c000a8b3:	5e                   	pop    esi
c000a8b4:	5f                   	pop    edi
c000a8b5:	5d                   	pop    ebp
c000a8b6:	c3                   	ret    

c000a8b7 <bitmap_set>:
c000a8b7:	55                   	push   ebp
c000a8b8:	89 e5                	mov    ebp,esp
c000a8ba:	57                   	push   edi
c000a8bb:	56                   	push   esi
c000a8bc:	53                   	push   ebx
c000a8bd:	83 ec 0c             	sub    esp,0xc
c000a8c0:	8a 5d 10             	mov    bl,BYTE PTR [ebp+0x10]
c000a8c3:	8b 75 08             	mov    esi,DWORD PTR [ebp+0x8]
c000a8c6:	8b 7d 0c             	mov    edi,DWORD PTR [ebp+0xc]
c000a8c9:	80 fb 01             	cmp    bl,0x1
c000a8cc:	76 19                	jbe    c000a8e7 <bitmap_set+0x30>
c000a8ce:	68 41 eb 00 c0       	push   0xc000eb41
c000a8d3:	68 94 eb 00 c0       	push   0xc000eb94
c000a8d8:	6a 65                	push   0x65
c000a8da:	68 34 eb 00 c0       	push   0xc000eb34
c000a8df:	e8 7c db ff ff       	call   c0008460 <panic_spin>
c000a8e4:	83 c4 10             	add    esp,0x10
c000a8e7:	89 fa                	mov    edx,edi
c000a8e9:	89 f9                	mov    ecx,edi
c000a8eb:	c1 ea 03             	shr    edx,0x3
c000a8ee:	83 e1 07             	and    ecx,0x7
c000a8f1:	84 db                	test   bl,bl
c000a8f3:	74 06                	je     c000a8fb <bitmap_set+0x44>
c000a8f5:	fe cb                	dec    bl
c000a8f7:	75 1e                	jne    c000a917 <bitmap_set+0x60>
c000a8f9:	eb 10                	jmp    c000a90b <bitmap_set+0x54>
c000a8fb:	03 56 04             	add    edx,DWORD PTR [esi+0x4]
c000a8fe:	b8 01 00 00 00       	mov    eax,0x1
c000a903:	d3 e0                	shl    eax,cl
c000a905:	f7 d0                	not    eax
c000a907:	20 02                	and    BYTE PTR [edx],al
c000a909:	eb 0c                	jmp    c000a917 <bitmap_set+0x60>
c000a90b:	03 56 04             	add    edx,DWORD PTR [esi+0x4]
c000a90e:	b8 01 00 00 00       	mov    eax,0x1
c000a913:	d3 e0                	shl    eax,cl
c000a915:	08 02                	or     BYTE PTR [edx],al
c000a917:	8d 65 f4             	lea    esp,[ebp-0xc]
c000a91a:	5b                   	pop    ebx
c000a91b:	5e                   	pop    esi
c000a91c:	5f                   	pop    edi
c000a91d:	5d                   	pop    ebp
c000a91e:	c3                   	ret    
	...

c000a920 <init_fifo>:
c000a920:	55                   	push   ebp
c000a921:	89 e5                	mov    ebp,esp
c000a923:	57                   	push   edi
c000a924:	56                   	push   esi
c000a925:	53                   	push   ebx
c000a926:	83 ec 28             	sub    esp,0x28
c000a929:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c000a92c:	8b 75 10             	mov    esi,DWORD PTR [ebp+0x10]
c000a92f:	8b 45 14             	mov    eax,DWORD PTR [ebp+0x14]
c000a932:	8b 7d 0c             	mov    edi,DWORD PTR [ebp+0xc]
c000a935:	53                   	push   ebx
c000a936:	89 45 e4             	mov    DWORD PTR [ebp-0x1c],eax
c000a939:	e8 61 ef ff ff       	call   c000989f <lock_init>
c000a93e:	83 c4 10             	add    esp,0x10
c000a941:	83 fe 10             	cmp    esi,0x10
c000a944:	c7 43 24 00 00 00 00 	mov    DWORD PTR [ebx+0x24],0x0
c000a94b:	c7 43 28 00 00 00 00 	mov    DWORD PTR [ebx+0x28],0x0
c000a952:	89 73 30             	mov    DWORD PTR [ebx+0x30],esi
c000a955:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
c000a958:	74 11                	je     c000a96b <init_fifo+0x4b>
c000a95a:	7f 05                	jg     c000a961 <init_fifo+0x41>
c000a95c:	83 fe 08             	cmp    esi,0x8
c000a95f:	eb 08                	jmp    c000a969 <init_fifo+0x49>
c000a961:	83 fe 20             	cmp    esi,0x20
c000a964:	74 05                	je     c000a96b <init_fifo+0x4b>
c000a966:	83 fe 40             	cmp    esi,0x40
c000a969:	75 03                	jne    c000a96e <init_fifo+0x4e>
c000a96b:	89 7b 2c             	mov    DWORD PTR [ebx+0x2c],edi
c000a96e:	89 43 34             	mov    DWORD PTR [ebx+0x34],eax
c000a971:	89 43 38             	mov    DWORD PTR [ebx+0x38],eax
c000a974:	c7 43 3c 00 00 00 00 	mov    DWORD PTR [ebx+0x3c],0x0
c000a97b:	c7 43 40 00 00 00 00 	mov    DWORD PTR [ebx+0x40],0x0
c000a982:	8d 65 f4             	lea    esp,[ebp-0xc]
c000a985:	5b                   	pop    ebx
c000a986:	5e                   	pop    esi
c000a987:	5f                   	pop    edi
c000a988:	5d                   	pop    ebp
c000a989:	c3                   	ret    

c000a98a <fifo_put>:
c000a98a:	55                   	push   ebp
c000a98b:	89 e5                	mov    ebp,esp
c000a98d:	57                   	push   edi
c000a98e:	56                   	push   esi
c000a98f:	53                   	push   ebx
c000a990:	83 ec 1c             	sub    esp,0x1c
c000a993:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c000a996:	8b 75 0c             	mov    esi,DWORD PTR [ebp+0xc]
c000a999:	e8 fb e6 ff ff       	call   c0009099 <intr_disable>
c000a99e:	89 45 e4             	mov    DWORD PTR [ebp-0x1c],eax
c000a9a1:	eb 28                	jmp    c000a9cb <fifo_put+0x41>
c000a9a3:	83 ec 0c             	sub    esp,0xc
c000a9a6:	53                   	push   ebx
c000a9a7:	e8 7f f0 ff ff       	call   c0009a2b <lock_acquire>
c000a9ac:	e8 e5 f1 ff ff       	call   c0009b96 <running_thread>
c000a9b1:	89 43 24             	mov    DWORD PTR [ebx+0x24],eax
c000a9b4:	c7 04 24 02 00 00 00 	mov    DWORD PTR [esp],0x2
c000a9bb:	e8 84 f4 ff ff       	call   c0009e44 <thread_block>
c000a9c0:	89 1c 24             	mov    DWORD PTR [esp],ebx
c000a9c3:	e8 be f0 ff ff       	call   c0009a86 <lock_release>
c000a9c8:	83 c4 10             	add    esp,0x10
c000a9cb:	8b 43 38             	mov    eax,DWORD PTR [ebx+0x38]
c000a9ce:	85 c0                	test   eax,eax
c000a9d0:	74 d1                	je     c000a9a3 <fifo_put+0x19>
c000a9d2:	48                   	dec    eax
c000a9d3:	89 43 38             	mov    DWORD PTR [ebx+0x38],eax
c000a9d6:	8b 43 30             	mov    eax,DWORD PTR [ebx+0x30]
c000a9d9:	83 f8 10             	cmp    eax,0x10
c000a9dc:	74 28                	je     c000aa06 <fifo_put+0x7c>
c000a9de:	83 f8 08             	cmp    eax,0x8
c000a9e1:	74 23                	je     c000aa06 <fifo_put+0x7c>
c000a9e3:	83 f8 20             	cmp    eax,0x20
c000a9e6:	74 1e                	je     c000aa06 <fifo_put+0x7c>
c000a9e8:	83 f8 40             	cmp    eax,0x40
c000a9eb:	74 19                	je     c000aa06 <fifo_put+0x7c>
c000a9ed:	68 a0 eb 00 c0       	push   0xc000eba0
c000a9f2:	68 20 ec 00 c0       	push   0xc000ec20
c000a9f7:	6a 3b                	push   0x3b
c000a9f9:	68 ec eb 00 c0       	push   0xc000ebec
c000a9fe:	e8 5d da ff ff       	call   c0008460 <panic_spin>
c000aa03:	83 c4 10             	add    esp,0x10
c000aa06:	8b 53 30             	mov    edx,DWORD PTR [ebx+0x30]
c000aa09:	8b 43 40             	mov    eax,DWORD PTR [ebx+0x40]
c000aa0c:	83 fa 10             	cmp    edx,0x10
c000aa0f:	74 1f                	je     c000aa30 <fifo_put+0xa6>
c000aa11:	7f 07                	jg     c000aa1a <fifo_put+0x90>
c000aa13:	83 fa 08             	cmp    edx,0x8
c000aa16:	75 3d                	jne    c000aa55 <fifo_put+0xcb>
c000aa18:	eb 0c                	jmp    c000aa26 <fifo_put+0x9c>
c000aa1a:	83 fa 20             	cmp    edx,0x20
c000aa1d:	74 1d                	je     c000aa3c <fifo_put+0xb2>
c000aa1f:	83 fa 40             	cmp    edx,0x40
c000aa22:	75 31                	jne    c000aa55 <fifo_put+0xcb>
c000aa24:	eb 20                	jmp    c000aa46 <fifo_put+0xbc>
c000aa26:	8a 0e                	mov    cl,BYTE PTR [esi]
c000aa28:	8b 53 2c             	mov    edx,DWORD PTR [ebx+0x2c]
c000aa2b:	88 0c 02             	mov    BYTE PTR [edx+eax*1],cl
c000aa2e:	eb 25                	jmp    c000aa55 <fifo_put+0xcb>
c000aa30:	66 8b 0e             	mov    cx,WORD PTR [esi]
c000aa33:	8b 53 2c             	mov    edx,DWORD PTR [ebx+0x2c]
c000aa36:	66 89 0c 42          	mov    WORD PTR [edx+eax*2],cx
c000aa3a:	eb 19                	jmp    c000aa55 <fifo_put+0xcb>
c000aa3c:	8b 0e                	mov    ecx,DWORD PTR [esi]
c000aa3e:	8b 53 2c             	mov    edx,DWORD PTR [ebx+0x2c]
c000aa41:	89 0c 82             	mov    DWORD PTR [edx+eax*4],ecx
c000aa44:	eb 0f                	jmp    c000aa55 <fifo_put+0xcb>
c000aa46:	8b 7e 04             	mov    edi,DWORD PTR [esi+0x4]
c000aa49:	8b 53 2c             	mov    edx,DWORD PTR [ebx+0x2c]
c000aa4c:	8b 36                	mov    esi,DWORD PTR [esi]
c000aa4e:	89 7c c2 04          	mov    DWORD PTR [edx+eax*8+0x4],edi
c000aa52:	89 34 c2             	mov    DWORD PTR [edx+eax*8],esi
c000aa55:	8b 43 40             	mov    eax,DWORD PTR [ebx+0x40]
c000aa58:	40                   	inc    eax
c000aa59:	99                   	cdq    
c000aa5a:	f7 7b 34             	idiv   DWORD PTR [ebx+0x34]
c000aa5d:	8b 43 28             	mov    eax,DWORD PTR [ebx+0x28]
c000aa60:	85 c0                	test   eax,eax
c000aa62:	89 53 40             	mov    DWORD PTR [ebx+0x40],edx
c000aa65:	74 13                	je     c000aa7a <fifo_put+0xf0>
c000aa67:	83 ec 0c             	sub    esp,0xc
c000aa6a:	50                   	push   eax
c000aa6b:	e8 1f f4 ff ff       	call   c0009e8f <thread_unblock>
c000aa70:	83 c4 10             	add    esp,0x10
c000aa73:	c7 43 28 00 00 00 00 	mov    DWORD PTR [ebx+0x28],0x0
c000aa7a:	83 ec 0c             	sub    esp,0xc
c000aa7d:	ff 75 e4             	push   DWORD PTR [ebp-0x1c]
c000aa80:	e8 fb e6 ff ff       	call   c0009180 <intr_set_status>
c000aa85:	8d 65 f4             	lea    esp,[ebp-0xc]
c000aa88:	31 c0                	xor    eax,eax
c000aa8a:	5b                   	pop    ebx
c000aa8b:	5e                   	pop    esi
c000aa8c:	5f                   	pop    edi
c000aa8d:	5d                   	pop    ebp
c000aa8e:	c3                   	ret    

c000aa8f <fifo_get>:
c000aa8f:	55                   	push   ebp
c000aa90:	89 e5                	mov    ebp,esp
c000aa92:	57                   	push   edi
c000aa93:	56                   	push   esi
c000aa94:	53                   	push   ebx
c000aa95:	83 ec 0c             	sub    esp,0xc
c000aa98:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c000aa9b:	8b 75 0c             	mov    esi,DWORD PTR [ebp+0xc]
c000aa9e:	e8 f6 e5 ff ff       	call   c0009099 <intr_disable>
c000aaa3:	89 c7                	mov    edi,eax
c000aaa5:	8b 43 30             	mov    eax,DWORD PTR [ebx+0x30]
c000aaa8:	83 f8 10             	cmp    eax,0x10
c000aaab:	74 4f                	je     c000aafc <fifo_get+0x6d>
c000aaad:	83 f8 08             	cmp    eax,0x8
c000aab0:	74 4a                	je     c000aafc <fifo_get+0x6d>
c000aab2:	83 f8 20             	cmp    eax,0x20
c000aab5:	74 45                	je     c000aafc <fifo_get+0x6d>
c000aab7:	83 f8 40             	cmp    eax,0x40
c000aaba:	74 40                	je     c000aafc <fifo_get+0x6d>
c000aabc:	68 a0 eb 00 c0       	push   0xc000eba0
c000aac1:	68 2c ec 00 c0       	push   0xc000ec2c
c000aac6:	6a 5a                	push   0x5a
c000aac8:	68 ec eb 00 c0       	push   0xc000ebec
c000aacd:	e8 8e d9 ff ff       	call   c0008460 <panic_spin>
c000aad2:	eb 25                	jmp    c000aaf9 <fifo_get+0x6a>
c000aad4:	83 ec 0c             	sub    esp,0xc
c000aad7:	53                   	push   ebx
c000aad8:	e8 4e ef ff ff       	call   c0009a2b <lock_acquire>
c000aadd:	e8 b4 f0 ff ff       	call   c0009b96 <running_thread>
c000aae2:	89 43 28             	mov    DWORD PTR [ebx+0x28],eax
c000aae5:	c7 04 24 02 00 00 00 	mov    DWORD PTR [esp],0x2
c000aaec:	e8 53 f3 ff ff       	call   c0009e44 <thread_block>
c000aaf1:	89 1c 24             	mov    DWORD PTR [esp],ebx
c000aaf4:	e8 8d ef ff ff       	call   c0009a86 <lock_release>
c000aaf9:	83 c4 10             	add    esp,0x10
c000aafc:	8b 43 38             	mov    eax,DWORD PTR [ebx+0x38]
c000aaff:	3b 43 34             	cmp    eax,DWORD PTR [ebx+0x34]
c000ab02:	74 d0                	je     c000aad4 <fifo_get+0x45>
c000ab04:	8b 53 30             	mov    edx,DWORD PTR [ebx+0x30]
c000ab07:	40                   	inc    eax
c000ab08:	89 43 38             	mov    DWORD PTR [ebx+0x38],eax
c000ab0b:	8b 43 3c             	mov    eax,DWORD PTR [ebx+0x3c]
c000ab0e:	83 fa 10             	cmp    edx,0x10
c000ab11:	74 1f                	je     c000ab32 <fifo_get+0xa3>
c000ab13:	7f 07                	jg     c000ab1c <fifo_get+0x8d>
c000ab15:	83 fa 08             	cmp    edx,0x8
c000ab18:	75 3e                	jne    c000ab58 <fifo_get+0xc9>
c000ab1a:	eb 0c                	jmp    c000ab28 <fifo_get+0x99>
c000ab1c:	83 fa 20             	cmp    edx,0x20
c000ab1f:	74 1d                	je     c000ab3e <fifo_get+0xaf>
c000ab21:	83 fa 40             	cmp    edx,0x40
c000ab24:	75 32                	jne    c000ab58 <fifo_get+0xc9>
c000ab26:	eb 20                	jmp    c000ab48 <fifo_get+0xb9>
c000ab28:	8b 53 2c             	mov    edx,DWORD PTR [ebx+0x2c]
c000ab2b:	8a 04 02             	mov    al,BYTE PTR [edx+eax*1]
c000ab2e:	88 06                	mov    BYTE PTR [esi],al
c000ab30:	eb 26                	jmp    c000ab58 <fifo_get+0xc9>
c000ab32:	8b 53 2c             	mov    edx,DWORD PTR [ebx+0x2c]
c000ab35:	66 8b 04 42          	mov    ax,WORD PTR [edx+eax*2]
c000ab39:	66 89 06             	mov    WORD PTR [esi],ax
c000ab3c:	eb 1a                	jmp    c000ab58 <fifo_get+0xc9>
c000ab3e:	8b 53 2c             	mov    edx,DWORD PTR [ebx+0x2c]
c000ab41:	8b 04 82             	mov    eax,DWORD PTR [edx+eax*4]
c000ab44:	89 06                	mov    DWORD PTR [esi],eax
c000ab46:	eb 10                	jmp    c000ab58 <fifo_get+0xc9>
c000ab48:	8b 53 2c             	mov    edx,DWORD PTR [ebx+0x2c]
c000ab4b:	8d 14 c2             	lea    edx,[edx+eax*8]
c000ab4e:	8b 02                	mov    eax,DWORD PTR [edx]
c000ab50:	8b 52 04             	mov    edx,DWORD PTR [edx+0x4]
c000ab53:	89 06                	mov    DWORD PTR [esi],eax
c000ab55:	89 56 04             	mov    DWORD PTR [esi+0x4],edx
c000ab58:	8b 43 3c             	mov    eax,DWORD PTR [ebx+0x3c]
c000ab5b:	40                   	inc    eax
c000ab5c:	99                   	cdq    
c000ab5d:	f7 7b 34             	idiv   DWORD PTR [ebx+0x34]
c000ab60:	8b 43 24             	mov    eax,DWORD PTR [ebx+0x24]
c000ab63:	85 c0                	test   eax,eax
c000ab65:	89 53 3c             	mov    DWORD PTR [ebx+0x3c],edx
c000ab68:	74 13                	je     c000ab7d <fifo_get+0xee>
c000ab6a:	83 ec 0c             	sub    esp,0xc
c000ab6d:	50                   	push   eax
c000ab6e:	e8 1c f3 ff ff       	call   c0009e8f <thread_unblock>
c000ab73:	83 c4 10             	add    esp,0x10
c000ab76:	c7 43 24 00 00 00 00 	mov    DWORD PTR [ebx+0x24],0x0
c000ab7d:	83 ec 0c             	sub    esp,0xc
c000ab80:	57                   	push   edi
c000ab81:	e8 fa e5 ff ff       	call   c0009180 <intr_set_status>
c000ab86:	8d 65 f4             	lea    esp,[ebp-0xc]
c000ab89:	31 c0                	xor    eax,eax
c000ab8b:	5b                   	pop    ebx
c000ab8c:	5e                   	pop    esi
c000ab8d:	5f                   	pop    edi
c000ab8e:	5d                   	pop    ebp
c000ab8f:	c3                   	ret    

c000ab90 <fifo_empty>:
c000ab90:	55                   	push   ebp
c000ab91:	89 e5                	mov    ebp,esp
c000ab93:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c000ab96:	5d                   	pop    ebp
c000ab97:	8b 50 34             	mov    edx,DWORD PTR [eax+0x34]
c000ab9a:	39 50 38             	cmp    DWORD PTR [eax+0x38],edx
c000ab9d:	0f 94 c0             	sete   al
c000aba0:	0f b6 c0             	movzx  eax,al
c000aba3:	c3                   	ret    

c000aba4 <fifo_fill>:
c000aba4:	55                   	push   ebp
c000aba5:	89 e5                	mov    ebp,esp
c000aba7:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c000abaa:	5d                   	pop    ebp
c000abab:	83 78 38 00          	cmp    DWORD PTR [eax+0x38],0x0
c000abaf:	0f 94 c0             	sete   al
c000abb2:	0f b6 c0             	movzx  eax,al
c000abb5:	c3                   	ret    
	...

c000abb8 <list_init>:
c000abb8:	55                   	push   ebp
c000abb9:	89 e5                	mov    ebp,esp
c000abbb:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c000abbe:	8d 50 0c             	lea    edx,[eax+0xc]
c000abc1:	c7 00 00 00 00 00    	mov    DWORD PTR [eax],0x0
c000abc7:	89 50 08             	mov    DWORD PTR [eax+0x8],edx
c000abca:	89 40 0c             	mov    DWORD PTR [eax+0xc],eax
c000abcd:	c7 40 14 00 00 00 00 	mov    DWORD PTR [eax+0x14],0x0
c000abd4:	5d                   	pop    ebp
c000abd5:	c3                   	ret    

c000abd6 <list_in>:
c000abd6:	55                   	push   ebp
c000abd7:	89 e5                	mov    ebp,esp
c000abd9:	56                   	push   esi
c000abda:	8b 75 08             	mov    esi,DWORD PTR [ebp+0x8]
c000abdd:	53                   	push   ebx
c000abde:	8b 5d 0c             	mov    ebx,DWORD PTR [ebp+0xc]
c000abe1:	e8 b3 e4 ff ff       	call   c0009099 <intr_disable>
c000abe6:	8b 13                	mov    edx,DWORD PTR [ebx]
c000abe8:	89 72 08             	mov    DWORD PTR [edx+0x8],esi
c000abeb:	8b 13                	mov    edx,DWORD PTR [ebx]
c000abed:	89 5e 08             	mov    DWORD PTR [esi+0x8],ebx
c000abf0:	89 16                	mov    DWORD PTR [esi],edx
c000abf2:	89 33                	mov    DWORD PTR [ebx],esi
c000abf4:	89 45 08             	mov    DWORD PTR [ebp+0x8],eax
c000abf7:	5b                   	pop    ebx
c000abf8:	5e                   	pop    esi
c000abf9:	5d                   	pop    ebp
c000abfa:	e9 81 e5 ff ff       	jmp    c0009180 <intr_set_status>

c000abff <list_push>:
c000abff:	55                   	push   ebp
c000ac00:	89 e5                	mov    ebp,esp
c000ac02:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c000ac05:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c000ac08:	8b 52 08             	mov    edx,DWORD PTR [edx+0x8]
c000ac0b:	89 45 08             	mov    DWORD PTR [ebp+0x8],eax
c000ac0e:	89 55 0c             	mov    DWORD PTR [ebp+0xc],edx
c000ac11:	5d                   	pop    ebp
c000ac12:	e9 bf ff ff ff       	jmp    c000abd6 <list_in>

c000ac17 <list_append>:
c000ac17:	55                   	push   ebp
c000ac18:	89 e5                	mov    ebp,esp
c000ac1a:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c000ac1d:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c000ac20:	83 c2 0c             	add    edx,0xc
c000ac23:	89 55 0c             	mov    DWORD PTR [ebp+0xc],edx
c000ac26:	89 45 08             	mov    DWORD PTR [ebp+0x8],eax
c000ac29:	5d                   	pop    ebp
c000ac2a:	e9 a7 ff ff ff       	jmp    c000abd6 <list_in>

c000ac2f <list_remove>:
c000ac2f:	55                   	push   ebp
c000ac30:	89 e5                	mov    ebp,esp
c000ac32:	53                   	push   ebx
c000ac33:	50                   	push   eax
c000ac34:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c000ac37:	e8 5d e4 ff ff       	call   c0009099 <intr_disable>
c000ac3c:	8b 13                	mov    edx,DWORD PTR [ebx]
c000ac3e:	8b 4b 08             	mov    ecx,DWORD PTR [ebx+0x8]
c000ac41:	89 4a 08             	mov    DWORD PTR [edx+0x8],ecx
c000ac44:	8b 53 08             	mov    edx,DWORD PTR [ebx+0x8]
c000ac47:	8b 0b                	mov    ecx,DWORD PTR [ebx]
c000ac49:	89 0a                	mov    DWORD PTR [edx],ecx
c000ac4b:	89 45 08             	mov    DWORD PTR [ebp+0x8],eax
c000ac4e:	5a                   	pop    edx
c000ac4f:	5b                   	pop    ebx
c000ac50:	5d                   	pop    ebp
c000ac51:	e9 2a e5 ff ff       	jmp    c0009180 <intr_set_status>

c000ac56 <list_pop>:
c000ac56:	55                   	push   ebp
c000ac57:	89 e5                	mov    ebp,esp
c000ac59:	53                   	push   ebx
c000ac5a:	83 ec 10             	sub    esp,0x10
c000ac5d:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c000ac60:	8b 58 08             	mov    ebx,DWORD PTR [eax+0x8]
c000ac63:	53                   	push   ebx
c000ac64:	e8 c6 ff ff ff       	call   c000ac2f <list_remove>
c000ac69:	89 d8                	mov    eax,ebx
c000ac6b:	8b 5d fc             	mov    ebx,DWORD PTR [ebp-0x4]
c000ac6e:	c9                   	leave  
c000ac6f:	c3                   	ret    

c000ac70 <list_find>:
c000ac70:	55                   	push   ebp
c000ac71:	89 e5                	mov    ebp,esp
c000ac73:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c000ac76:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
c000ac79:	8b 42 08             	mov    eax,DWORD PTR [edx+0x8]
c000ac7c:	83 c2 0c             	add    edx,0xc
c000ac7f:	eb 07                	jmp    c000ac88 <list_find+0x18>
c000ac81:	39 c8                	cmp    eax,ecx
c000ac83:	74 0b                	je     c000ac90 <list_find+0x20>
c000ac85:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
c000ac88:	39 d0                	cmp    eax,edx
c000ac8a:	75 f5                	jne    c000ac81 <list_find+0x11>
c000ac8c:	31 c0                	xor    eax,eax
c000ac8e:	eb 05                	jmp    c000ac95 <list_find+0x25>
c000ac90:	b8 01 00 00 00       	mov    eax,0x1
c000ac95:	5d                   	pop    ebp
c000ac96:	c3                   	ret    

c000ac97 <list_traversal>:
c000ac97:	55                   	push   ebp
c000ac98:	89 e5                	mov    ebp,esp
c000ac9a:	57                   	push   edi
c000ac9b:	56                   	push   esi
c000ac9c:	53                   	push   ebx
c000ac9d:	83 ec 0c             	sub    esp,0xc
c000aca0:	8b 75 08             	mov    esi,DWORD PTR [ebp+0x8]
c000aca3:	8b 7d 10             	mov    edi,DWORD PTR [ebp+0x10]
c000aca6:	8b 5e 08             	mov    ebx,DWORD PTR [esi+0x8]
c000aca9:	83 c6 0c             	add    esi,0xc
c000acac:	eb 11                	jmp    c000acbf <list_traversal+0x28>
c000acae:	51                   	push   ecx
c000acaf:	51                   	push   ecx
c000acb0:	57                   	push   edi
c000acb1:	53                   	push   ebx
c000acb2:	ff 55 0c             	call   DWORD PTR [ebp+0xc]
c000acb5:	83 c4 10             	add    esp,0x10
c000acb8:	85 c0                	test   eax,eax
c000acba:	75 09                	jne    c000acc5 <list_traversal+0x2e>
c000acbc:	8b 5b 08             	mov    ebx,DWORD PTR [ebx+0x8]
c000acbf:	39 f3                	cmp    ebx,esi
c000acc1:	75 eb                	jne    c000acae <list_traversal+0x17>
c000acc3:	31 db                	xor    ebx,ebx
c000acc5:	8d 65 f4             	lea    esp,[ebp-0xc]
c000acc8:	89 d8                	mov    eax,ebx
c000acca:	5b                   	pop    ebx
c000accb:	5e                   	pop    esi
c000accc:	5f                   	pop    edi
c000accd:	5d                   	pop    ebp
c000acce:	c3                   	ret    

c000accf <list_len>:
c000accf:	55                   	push   ebp
c000acd0:	31 c0                	xor    eax,eax
c000acd2:	89 e5                	mov    ebp,esp
c000acd4:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
c000acd7:	8b 51 08             	mov    edx,DWORD PTR [ecx+0x8]
c000acda:	83 c1 0c             	add    ecx,0xc
c000acdd:	eb 04                	jmp    c000ace3 <list_len+0x14>
c000acdf:	8b 52 08             	mov    edx,DWORD PTR [edx+0x8]
c000ace2:	40                   	inc    eax
c000ace3:	39 ca                	cmp    edx,ecx
c000ace5:	75 f8                	jne    c000acdf <list_len+0x10>
c000ace7:	5d                   	pop    ebp
c000ace8:	c3                   	ret    

c000ace9 <list_empty>:
c000ace9:	55                   	push   ebp
c000acea:	89 e5                	mov    ebp,esp
c000acec:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c000acef:	5d                   	pop    ebp
c000acf0:	8d 50 0c             	lea    edx,[eax+0xc]
c000acf3:	39 50 08             	cmp    DWORD PTR [eax+0x8],edx
c000acf6:	0f 94 c0             	sete   al
c000acf9:	0f b6 c0             	movzx  eax,al
c000acfc:	c3                   	ret    
c000acfd:	00 00                	add    BYTE PTR [eax],al
	...

c000ad00 <itoa>:
c000ad00:	55                   	push   ebp
c000ad01:	89 e5                	mov    ebp,esp
c000ad03:	57                   	push   edi
c000ad04:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
c000ad07:	56                   	push   esi
c000ad08:	8b 75 08             	mov    esi,DWORD PTR [ebp+0x8]
c000ad0b:	53                   	push   ebx
c000ad0c:	8b 7d 10             	mov    edi,DWORD PTR [ebp+0x10]
c000ad0f:	31 db                	xor    ebx,ebx
c000ad11:	89 f0                	mov    eax,esi
c000ad13:	99                   	cdq    
c000ad14:	89 d0                	mov    eax,edx
c000ad16:	31 f0                	xor    eax,esi
c000ad18:	29 d0                	sub    eax,edx
c000ad1a:	eb 02                	jmp    c000ad1e <itoa+0x1e>
c000ad1c:	89 d3                	mov    ebx,edx
c000ad1e:	99                   	cdq    
c000ad1f:	f7 ff                	idiv   edi
c000ad21:	8a 92 c0 ec 00 c0    	mov    dl,BYTE PTR [edx-0x3fff1340]
c000ad27:	85 c0                	test   eax,eax
c000ad29:	88 14 19             	mov    BYTE PTR [ecx+ebx*1],dl
c000ad2c:	8d 53 01             	lea    edx,[ebx+0x1]
c000ad2f:	7f eb                	jg     c000ad1c <itoa+0x1c>
c000ad31:	85 f6                	test   esi,esi
c000ad33:	79 07                	jns    c000ad3c <itoa+0x3c>
c000ad35:	c6 04 11 2d          	mov    BYTE PTR [ecx+edx*1],0x2d
c000ad39:	8d 53 02             	lea    edx,[ebx+0x2]
c000ad3c:	c6 04 11 00          	mov    BYTE PTR [ecx+edx*1],0x0
c000ad40:	89 c8                	mov    eax,ecx
c000ad42:	eb 01                	jmp    c000ad45 <itoa+0x45>
c000ad44:	40                   	inc    eax
c000ad45:	80 38 00             	cmp    BYTE PTR [eax],0x0
c000ad48:	75 fa                	jne    c000ad44 <itoa+0x44>
c000ad4a:	eb 09                	jmp    c000ad55 <itoa+0x55>
c000ad4c:	8a 11                	mov    dl,BYTE PTR [ecx]
c000ad4e:	8a 18                	mov    bl,BYTE PTR [eax]
c000ad50:	88 19                	mov    BYTE PTR [ecx],bl
c000ad52:	41                   	inc    ecx
c000ad53:	88 10                	mov    BYTE PTR [eax],dl
c000ad55:	48                   	dec    eax
c000ad56:	39 c8                	cmp    eax,ecx
c000ad58:	77 f2                	ja     c000ad4c <itoa+0x4c>
c000ad5a:	5b                   	pop    ebx
c000ad5b:	5e                   	pop    esi
c000ad5c:	5f                   	pop    edi
c000ad5d:	5d                   	pop    ebp
c000ad5e:	c3                   	ret    

c000ad5f <utoa>:
c000ad5f:	55                   	push   ebp
c000ad60:	89 e5                	mov    ebp,esp
c000ad62:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c000ad65:	56                   	push   esi
c000ad66:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
c000ad69:	8b 75 10             	mov    esi,DWORD PTR [ebp+0x10]
c000ad6c:	53                   	push   ebx
c000ad6d:	31 db                	xor    ebx,ebx
c000ad6f:	31 d2                	xor    edx,edx
c000ad71:	f7 f6                	div    esi
c000ad73:	8a 92 e8 ec 00 c0    	mov    dl,BYTE PTR [edx-0x3fff1318]
c000ad79:	88 14 19             	mov    BYTE PTR [ecx+ebx*1],dl
c000ad7c:	43                   	inc    ebx
c000ad7d:	85 c0                	test   eax,eax
c000ad7f:	75 ee                	jne    c000ad6f <utoa+0x10>
c000ad81:	c6 04 19 00          	mov    BYTE PTR [ecx+ebx*1],0x0
c000ad85:	89 c8                	mov    eax,ecx
c000ad87:	eb 01                	jmp    c000ad8a <utoa+0x2b>
c000ad89:	40                   	inc    eax
c000ad8a:	80 38 00             	cmp    BYTE PTR [eax],0x0
c000ad8d:	75 fa                	jne    c000ad89 <utoa+0x2a>
c000ad8f:	eb 09                	jmp    c000ad9a <utoa+0x3b>
c000ad91:	8a 11                	mov    dl,BYTE PTR [ecx]
c000ad93:	8a 18                	mov    bl,BYTE PTR [eax]
c000ad95:	88 19                	mov    BYTE PTR [ecx],bl
c000ad97:	41                   	inc    ecx
c000ad98:	88 10                	mov    BYTE PTR [eax],dl
c000ad9a:	48                   	dec    eax
c000ad9b:	39 c8                	cmp    eax,ecx
c000ad9d:	77 f2                	ja     c000ad91 <utoa+0x32>
c000ad9f:	5b                   	pop    ebx
c000ada0:	5e                   	pop    esi
c000ada1:	5d                   	pop    ebp
c000ada2:	c3                   	ret    

c000ada3 <roll_screen>:
c000ada3:	55                   	push   ebp
c000ada4:	89 e5                	mov    ebp,esp
c000ada6:	53                   	push   ebx
c000ada7:	83 3d 14 7c 00 00 00 	cmp    DWORD PTR ds:0x7c14,0x0
c000adae:	75 2c                	jne    c000addc <roll_screen+0x39>
c000adb0:	a1 20 7c 00 00       	mov    eax,ds:0x7c20
c000adb5:	8b 0d 18 7c 00 00    	mov    ecx,DWORD PTR ds:0x7c18
c000adbb:	8d 1c 41             	lea    ebx,[ecx+eax*2]
c000adbe:	31 c0                	xor    eax,eax
c000adc0:	eb 09                	jmp    c000adcb <roll_screen+0x28>
c000adc2:	66 8b 14 43          	mov    dx,WORD PTR [ebx+eax*2]
c000adc6:	66 89 14 41          	mov    WORD PTR [ecx+eax*2],dx
c000adca:	40                   	inc    eax
c000adcb:	8b 15 24 7c 00 00    	mov    edx,DWORD PTR ds:0x7c24
c000add1:	0f af 15 20 7c 00 00 	imul   edx,DWORD PTR ds:0x7c20
c000add8:	39 d0                	cmp    eax,edx
c000adda:	72 e6                	jb     c000adc2 <roll_screen+0x1f>
c000addc:	5b                   	pop    ebx
c000addd:	5d                   	pop    ebp
c000adde:	c3                   	ret    

c000addf <get_cursor>:
c000addf:	55                   	push   ebp
c000ade0:	ba d4 03 00 00       	mov    edx,0x3d4
c000ade5:	89 e5                	mov    ebp,esp
c000ade7:	b8 0e 00 00 00       	mov    eax,0xe
c000adec:	53                   	push   ebx
c000aded:	ee                   	out    dx,al
c000adee:	bb d5 03 00 00       	mov    ebx,0x3d5
c000adf3:	89 da                	mov    edx,ebx
c000adf5:	ec                   	in     al,dx
c000adf6:	89 c1                	mov    ecx,eax
c000adf8:	b2 d4                	mov    dl,0xd4
c000adfa:	b8 0f 00 00 00       	mov    eax,0xf
c000adff:	ee                   	out    dx,al
c000ae00:	89 da                	mov    edx,ebx
c000ae02:	ec                   	in     al,dx
c000ae03:	c1 e1 08             	shl    ecx,0x8
c000ae06:	09 c1                	or     ecx,eax
c000ae08:	89 c8                	mov    eax,ecx
c000ae0a:	5b                   	pop    ebx
c000ae0b:	5d                   	pop    ebp
c000ae0c:	c3                   	ret    

c000ae0d <set_cursor>:
c000ae0d:	55                   	push   ebp
c000ae0e:	ba d4 03 00 00       	mov    edx,0x3d4
c000ae13:	89 e5                	mov    ebp,esp
c000ae15:	b8 0e 00 00 00       	mov    eax,0xe
c000ae1a:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
c000ae1d:	ee                   	out    dx,al
c000ae1e:	0f b6 c5             	movzx  eax,ch
c000ae21:	b2 d5                	mov    dl,0xd5
c000ae23:	ee                   	out    dx,al
c000ae24:	b8 0f 00 00 00       	mov    eax,0xf
c000ae29:	b2 d4                	mov    dl,0xd4
c000ae2b:	ee                   	out    dx,al
c000ae2c:	0f b6 c1             	movzx  eax,cl
c000ae2f:	b2 d5                	mov    dl,0xd5
c000ae31:	ee                   	out    dx,al
c000ae32:	5d                   	pop    ebp
c000ae33:	c3                   	ret    

c000ae34 <put_char>:
c000ae34:	55                   	push   ebp
c000ae35:	89 e5                	mov    ebp,esp
c000ae37:	53                   	push   ebx
c000ae38:	51                   	push   ecx
c000ae39:	8a 4d 08             	mov    cl,BYTE PTR [ebp+0x8]
c000ae3c:	83 3d 14 7c 00 00 00 	cmp    DWORD PTR ds:0x7c14,0x0
c000ae43:	8a 5d 0c             	mov    bl,BYTE PTR [ebp+0xc]
c000ae46:	0f 85 85 00 00 00    	jne    c000aed1 <put_char+0x9d>
c000ae4c:	88 4d f8             	mov    BYTE PTR [ebp-0x8],cl
c000ae4f:	e8 8b ff ff ff       	call   c000addf <get_cursor>
c000ae54:	80 fb 0d             	cmp    bl,0xd
c000ae57:	8a 4d f8             	mov    cl,BYTE PTR [ebp-0x8]
c000ae5a:	77 31                	ja     c000ae8d <put_char+0x59>
c000ae5c:	0f b6 d3             	movzx  edx,bl
c000ae5f:	ff 24 95 60 ec 00 c0 	jmp    DWORD PTR [edx*4-0x3fff13a0]
c000ae66:	8d 48 ff             	lea    ecx,[eax-0x1]
c000ae69:	a1 18 7c 00 00       	mov    eax,ds:0x7c18
c000ae6e:	c6 04 48 20          	mov    BYTE PTR [eax+ecx*2],0x20
c000ae72:	eb 2f                	jmp    c000aea3 <put_char+0x6f>
c000ae74:	8b 1d 20 7c 00 00    	mov    ebx,DWORD PTR ds:0x7c20
c000ae7a:	31 d2                	xor    edx,edx
c000ae7c:	8d 0c 18             	lea    ecx,[eax+ebx*1]
c000ae7f:	f7 f3                	div    ebx
c000ae81:	29 d1                	sub    ecx,edx
c000ae83:	eb 1e                	jmp    c000aea3 <put_char+0x6f>
c000ae85:	8d 48 04             	lea    ecx,[eax+0x4]
c000ae88:	83 e1 fc             	and    ecx,0xfffffffc
c000ae8b:	eb 16                	jmp    c000aea3 <put_char+0x6f>
c000ae8d:	8b 15 18 7c 00 00    	mov    edx,DWORD PTR ds:0x7c18
c000ae93:	88 1c 42             	mov    BYTE PTR [edx+eax*2],bl
c000ae96:	8b 15 18 7c 00 00    	mov    edx,DWORD PTR ds:0x7c18
c000ae9c:	88 4c 42 01          	mov    BYTE PTR [edx+eax*2+0x1],cl
c000aea0:	8d 48 01             	lea    ecx,[eax+0x1]
c000aea3:	a1 24 7c 00 00       	mov    eax,ds:0x7c24
c000aea8:	0f af 05 20 7c 00 00 	imul   eax,DWORD PTR ds:0x7c20
c000aeaf:	39 c1                	cmp    ecx,eax
c000aeb1:	72 13                	jb     c000aec6 <put_char+0x92>
c000aeb3:	e8 eb fe ff ff       	call   c000ada3 <roll_screen>
c000aeb8:	8b 0d 24 7c 00 00    	mov    ecx,DWORD PTR ds:0x7c24
c000aebe:	49                   	dec    ecx
c000aebf:	0f af 0d 20 7c 00 00 	imul   ecx,DWORD PTR ds:0x7c20
c000aec6:	89 4d 08             	mov    DWORD PTR [ebp+0x8],ecx
c000aec9:	5a                   	pop    edx
c000aeca:	5b                   	pop    ebx
c000aecb:	5d                   	pop    ebp
c000aecc:	e9 3c ff ff ff       	jmp    c000ae0d <set_cursor>
c000aed1:	58                   	pop    eax
c000aed2:	5b                   	pop    ebx
c000aed3:	5d                   	pop    ebp
c000aed4:	c3                   	ret    

c000aed5 <put_str>:
c000aed5:	55                   	push   ebp
c000aed6:	89 e5                	mov    ebp,esp
c000aed8:	56                   	push   esi
c000aed9:	0f b6 75 08          	movzx  esi,BYTE PTR [ebp+0x8]
c000aedd:	53                   	push   ebx
c000aede:	8b 5d 0c             	mov    ebx,DWORD PTR [ebp+0xc]
c000aee1:	eb 0d                	jmp    c000aef0 <put_str+0x1b>
c000aee3:	0f b6 c0             	movzx  eax,al
c000aee6:	43                   	inc    ebx
c000aee7:	50                   	push   eax
c000aee8:	56                   	push   esi
c000aee9:	e8 46 ff ff ff       	call   c000ae34 <put_char>
c000aeee:	58                   	pop    eax
c000aeef:	5a                   	pop    edx
c000aef0:	8a 03                	mov    al,BYTE PTR [ebx]
c000aef2:	84 c0                	test   al,al
c000aef4:	75 ed                	jne    c000aee3 <put_str+0xe>
c000aef6:	8d 65 f8             	lea    esp,[ebp-0x8]
c000aef9:	5b                   	pop    ebx
c000aefa:	5e                   	pop    esi
c000aefb:	5d                   	pop    ebp
c000aefc:	c3                   	ret    

c000aefd <put_uint>:
c000aefd:	55                   	push   ebp
c000aefe:	31 c0                	xor    eax,eax
c000af00:	89 e5                	mov    ebp,esp
c000af02:	b9 42 00 00 00       	mov    ecx,0x42
c000af07:	57                   	push   edi
c000af08:	53                   	push   ebx
c000af09:	8d 7d b6             	lea    edi,[ebp-0x4a]
c000af0c:	83 ec 50             	sub    esp,0x50
c000af0f:	8a 5d 08             	mov    bl,BYTE PTR [ebp+0x8]
c000af12:	f3 aa                	rep stos BYTE PTR es:[edi],al
c000af14:	8d 7d b6             	lea    edi,[ebp-0x4a]
c000af17:	ff 75 10             	push   DWORD PTR [ebp+0x10]
c000af1a:	0f b6 db             	movzx  ebx,bl
c000af1d:	57                   	push   edi
c000af1e:	ff 75 0c             	push   DWORD PTR [ebp+0xc]
c000af21:	e8 39 fe ff ff       	call   c000ad5f <utoa>
c000af26:	57                   	push   edi
c000af27:	53                   	push   ebx
c000af28:	e8 a8 ff ff ff       	call   c000aed5 <put_str>
c000af2d:	83 c4 14             	add    esp,0x14
c000af30:	8d 65 f8             	lea    esp,[ebp-0x8]
c000af33:	5b                   	pop    ebx
c000af34:	5f                   	pop    edi
c000af35:	5d                   	pop    ebp
c000af36:	c3                   	ret    

c000af37 <put_int>:
c000af37:	55                   	push   ebp
c000af38:	31 c0                	xor    eax,eax
c000af3a:	89 e5                	mov    ebp,esp
c000af3c:	b9 42 00 00 00       	mov    ecx,0x42
c000af41:	57                   	push   edi
c000af42:	53                   	push   ebx
c000af43:	8d 7d b6             	lea    edi,[ebp-0x4a]
c000af46:	83 ec 50             	sub    esp,0x50
c000af49:	8a 5d 08             	mov    bl,BYTE PTR [ebp+0x8]
c000af4c:	f3 aa                	rep stos BYTE PTR es:[edi],al
c000af4e:	8d 7d b6             	lea    edi,[ebp-0x4a]
c000af51:	ff 75 10             	push   DWORD PTR [ebp+0x10]
c000af54:	0f b6 db             	movzx  ebx,bl
c000af57:	57                   	push   edi
c000af58:	ff 75 0c             	push   DWORD PTR [ebp+0xc]
c000af5b:	e8 a0 fd ff ff       	call   c000ad00 <itoa>
c000af60:	57                   	push   edi
c000af61:	53                   	push   ebx
c000af62:	e8 6e ff ff ff       	call   c000aed5 <put_str>
c000af67:	83 c4 14             	add    esp,0x14
c000af6a:	8d 65 f8             	lea    esp,[ebp-0x8]
c000af6d:	5b                   	pop    ebx
c000af6e:	5f                   	pop    edi
c000af6f:	5d                   	pop    ebp
c000af70:	c3                   	ret    
c000af71:	00 00                	add    BYTE PTR [eax],al
	...

c000af74 <memset>:
c000af74:	55                   	push   ebp
c000af75:	89 e5                	mov    ebp,esp
c000af77:	56                   	push   esi
c000af78:	53                   	push   ebx
c000af79:	83 ec 10             	sub    esp,0x10
c000af7c:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c000af7f:	8b 75 10             	mov    esi,DWORD PTR [ebp+0x10]
c000af82:	8a 55 0c             	mov    dl,BYTE PTR [ebp+0xc]
c000af85:	85 db                	test   ebx,ebx
c000af87:	75 1f                	jne    c000afa8 <memset+0x34>
c000af89:	68 10 ed 00 c0       	push   0xc000ed10
c000af8e:	68 90 ed 00 c0       	push   0xc000ed90
c000af93:	6a 0f                	push   0xf
c000af95:	68 1e ed 00 c0       	push   0xc000ed1e
c000af9a:	88 55 f4             	mov    BYTE PTR [ebp-0xc],dl
c000af9d:	e8 be d4 ff ff       	call   c0008460 <panic_spin>
c000afa2:	8a 55 f4             	mov    dl,BYTE PTR [ebp-0xc]
c000afa5:	83 c4 10             	add    esp,0x10
c000afa8:	31 c0                	xor    eax,eax
c000afaa:	eb 04                	jmp    c000afb0 <memset+0x3c>
c000afac:	88 14 03             	mov    BYTE PTR [ebx+eax*1],dl
c000afaf:	40                   	inc    eax
c000afb0:	39 f0                	cmp    eax,esi
c000afb2:	75 f8                	jne    c000afac <memset+0x38>
c000afb4:	8d 65 f8             	lea    esp,[ebp-0x8]
c000afb7:	5b                   	pop    ebx
c000afb8:	5e                   	pop    esi
c000afb9:	5d                   	pop    ebp
c000afba:	c3                   	ret    

c000afbb <memcpy>:
c000afbb:	55                   	push   ebp
c000afbc:	89 e5                	mov    ebp,esp
c000afbe:	57                   	push   edi
c000afbf:	56                   	push   esi
c000afc0:	53                   	push   ebx
c000afc1:	83 ec 0c             	sub    esp,0xc
c000afc4:	8b 75 0c             	mov    esi,DWORD PTR [ebp+0xc]
c000afc7:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c000afca:	8b 7d 10             	mov    edi,DWORD PTR [ebp+0x10]
c000afcd:	85 f6                	test   esi,esi
c000afcf:	74 04                	je     c000afd5 <memcpy+0x1a>
c000afd1:	85 db                	test   ebx,ebx
c000afd3:	75 19                	jne    c000afee <memcpy+0x33>
c000afd5:	68 2b ed 00 c0       	push   0xc000ed2b
c000afda:	68 98 ed 00 c0       	push   0xc000ed98
c000afdf:	6a 22                	push   0x22
c000afe1:	68 1e ed 00 c0       	push   0xc000ed1e
c000afe6:	e8 75 d4 ff ff       	call   c0008460 <panic_spin>
c000afeb:	83 c4 10             	add    esp,0x10
c000afee:	31 c0                	xor    eax,eax
c000aff0:	eb 07                	jmp    c000aff9 <memcpy+0x3e>
c000aff2:	8a 14 06             	mov    dl,BYTE PTR [esi+eax*1]
c000aff5:	88 14 03             	mov    BYTE PTR [ebx+eax*1],dl
c000aff8:	40                   	inc    eax
c000aff9:	39 f8                	cmp    eax,edi
c000affb:	75 f5                	jne    c000aff2 <memcpy+0x37>
c000affd:	8d 65 f4             	lea    esp,[ebp-0xc]
c000b000:	5b                   	pop    ebx
c000b001:	5e                   	pop    esi
c000b002:	5f                   	pop    edi
c000b003:	5d                   	pop    ebp
c000b004:	c3                   	ret    

c000b005 <memcmp>:
c000b005:	55                   	push   ebp
c000b006:	89 e5                	mov    ebp,esp
c000b008:	56                   	push   esi
c000b009:	8b 75 08             	mov    esi,DWORD PTR [ebp+0x8]
c000b00c:	53                   	push   ebx
c000b00d:	8b 5d 0c             	mov    ebx,DWORD PTR [ebp+0xc]
c000b010:	85 db                	test   ebx,ebx
c000b012:	74 04                	je     c000b018 <memcmp+0x13>
c000b014:	85 f6                	test   esi,esi
c000b016:	75 19                	jne    c000b031 <memcmp+0x2c>
c000b018:	68 4a ed 00 c0       	push   0xc000ed4a
c000b01d:	68 a0 ed 00 c0       	push   0xc000eda0
c000b022:	6a 3b                	push   0x3b
c000b024:	68 1e ed 00 c0       	push   0xc000ed1e
c000b029:	e8 32 d4 ff ff       	call   c0008460 <panic_spin>
c000b02e:	83 c4 10             	add    esp,0x10
c000b031:	8a 13                	mov    dl,BYTE PTR [ebx]
c000b033:	83 c8 ff             	or     eax,0xffffffff
c000b036:	38 16                	cmp    BYTE PTR [esi],dl
c000b038:	72 06                	jb     c000b040 <memcmp+0x3b>
c000b03a:	0f 97 c0             	seta   al
c000b03d:	0f b6 c0             	movzx  eax,al
c000b040:	8d 65 f8             	lea    esp,[ebp-0x8]
c000b043:	5b                   	pop    ebx
c000b044:	5e                   	pop    esi
c000b045:	5d                   	pop    ebp
c000b046:	c3                   	ret    

c000b047 <strcpy>:
c000b047:	55                   	push   ebp
c000b048:	31 d2                	xor    edx,edx
c000b04a:	89 e5                	mov    ebp,esp
c000b04c:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c000b04f:	53                   	push   ebx
c000b050:	8b 5d 0c             	mov    ebx,DWORD PTR [ebp+0xc]
c000b053:	8a 0c 13             	mov    cl,BYTE PTR [ebx+edx*1]
c000b056:	88 0c 10             	mov    BYTE PTR [eax+edx*1],cl
c000b059:	42                   	inc    edx
c000b05a:	84 c9                	test   cl,cl
c000b05c:	75 f5                	jne    c000b053 <strcpy+0xc>
c000b05e:	5b                   	pop    ebx
c000b05f:	5d                   	pop    ebp
c000b060:	c3                   	ret    
c000b061:	00 00                	add    BYTE PTR [eax],al
	...

c000b064 <RectangleFill>:
c000b064:	55                   	push   ebp
c000b065:	89 e5                	mov    ebp,esp
c000b067:	57                   	push   edi
c000b068:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
c000b06b:	56                   	push   esi
c000b06c:	8b 45 14             	mov    eax,DWORD PTR [ebp+0x14]
c000b06f:	53                   	push   ebx
c000b070:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c000b073:	83 3d 14 7c 00 00 01 	cmp    DWORD PTR ds:0x7c14,0x1
c000b07a:	75 30                	jne    c000b0ac <RectangleFill+0x48>
c000b07c:	89 ca                	mov    edx,ecx
c000b07e:	81 e2 00 00 00 ff    	and    edx,0xff000000
c000b084:	81 fa 00 00 00 ff    	cmp    edx,0xff000000
c000b08a:	75 16                	jne    c000b0a2 <RectangleFill+0x3e>
c000b08c:	eb 1e                	jmp    c000b0ac <RectangleFill+0x48>
c000b08e:	8b 7b 04             	mov    edi,DWORD PTR [ebx+0x4]
c000b091:	8b 33                	mov    esi,DWORD PTR [ebx]
c000b093:	0f af f8             	imul   edi,eax
c000b096:	01 d7                	add    edi,edx
c000b098:	42                   	inc    edx
c000b099:	89 0c be             	mov    DWORD PTR [esi+edi*4],ecx
c000b09c:	3b 55 18             	cmp    edx,DWORD PTR [ebp+0x18]
c000b09f:	7e ed                	jle    c000b08e <RectangleFill+0x2a>
c000b0a1:	40                   	inc    eax
c000b0a2:	3b 45 1c             	cmp    eax,DWORD PTR [ebp+0x1c]
c000b0a5:	7f 05                	jg     c000b0ac <RectangleFill+0x48>
c000b0a7:	8b 55 10             	mov    edx,DWORD PTR [ebp+0x10]
c000b0aa:	eb f0                	jmp    c000b09c <RectangleFill+0x38>
c000b0ac:	5b                   	pop    ebx
c000b0ad:	5e                   	pop    esi
c000b0ae:	5f                   	pop    edi
c000b0af:	5d                   	pop    ebp
c000b0b0:	c3                   	ret    

c000b0b1 <init_Rectangle>:
c000b0b1:	55                   	push   ebp
c000b0b2:	89 e5                	mov    ebp,esp
c000b0b4:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c000b0b7:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
c000b0ba:	89 10                	mov    DWORD PTR [eax],edx
c000b0bc:	8b 55 10             	mov    edx,DWORD PTR [ebp+0x10]
c000b0bf:	89 50 04             	mov    DWORD PTR [eax+0x4],edx
c000b0c2:	8b 55 14             	mov    edx,DWORD PTR [ebp+0x14]
c000b0c5:	89 50 08             	mov    DWORD PTR [eax+0x8],edx
c000b0c8:	8b 55 18             	mov    edx,DWORD PTR [ebp+0x18]
c000b0cb:	89 50 0c             	mov    DWORD PTR [eax+0xc],edx
c000b0ce:	8b 55 1c             	mov    edx,DWORD PTR [ebp+0x1c]
c000b0d1:	89 50 10             	mov    DWORD PTR [eax+0x10],edx
c000b0d4:	5d                   	pop    ebp
c000b0d5:	c3                   	ret    

c000b0d6 <init_screen>:
c000b0d6:	55                   	push   ebp
c000b0d7:	89 e5                	mov    ebp,esp
c000b0d9:	53                   	push   ebx
c000b0da:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c000b0dd:	83 3d 14 7c 00 00 01 	cmp    DWORD PTR ds:0x7c14,0x1
c000b0e4:	0f 85 df 00 00 00    	jne    c000b1c9 <init_screen+0xf3>
c000b0ea:	a1 24 7c 00 00       	mov    eax,ds:0x7c24
c000b0ef:	8b 15 20 7c 00 00    	mov    edx,DWORD PTR ds:0x7c20
c000b0f5:	c7 03 00 00 00 fe    	mov    DWORD PTR [ebx],0xfe000000
c000b0fb:	c7 43 0c 00 00 00 00 	mov    DWORD PTR [ebx+0xc],0x0
c000b102:	89 43 08             	mov    DWORD PTR [ebx+0x8],eax
c000b105:	89 53 04             	mov    DWORD PTR [ebx+0x4],edx
c000b108:	c7 43 10 00 00 00 00 	mov    DWORD PTR [ebx+0x10],0x0
c000b10f:	a1 24 7c 00 00       	mov    eax,ds:0x7c24
c000b114:	83 e8 33             	sub    eax,0x33
c000b117:	50                   	push   eax
c000b118:	a1 20 7c 00 00       	mov    eax,ds:0x7c20
c000b11d:	48                   	dec    eax
c000b11e:	50                   	push   eax
c000b11f:	6a 00                	push   0x0
c000b121:	6a 00                	push   0x0
c000b123:	68 84 84 00 00       	push   0x8484
c000b128:	53                   	push   ebx
c000b129:	e8 36 ff ff ff       	call   c000b064 <RectangleFill>
c000b12e:	a1 24 7c 00 00       	mov    eax,ds:0x7c24
c000b133:	8d 50 ff             	lea    edx,[eax-0x1]
c000b136:	83 e8 33             	sub    eax,0x33
c000b139:	52                   	push   edx
c000b13a:	8b 15 20 7c 00 00    	mov    edx,DWORD PTR ds:0x7c20
c000b140:	4a                   	dec    edx
c000b141:	52                   	push   edx
c000b142:	50                   	push   eax
c000b143:	6a 00                	push   0x0
c000b145:	68 c6 c6 c6 00       	push   0xc6c6c6
c000b14a:	53                   	push   ebx
c000b14b:	e8 14 ff ff ff       	call   c000b064 <RectangleFill>
c000b150:	a1 24 7c 00 00       	mov    eax,ds:0x7c24
c000b155:	83 c4 30             	add    esp,0x30
c000b158:	8d 50 f8             	lea    edx,[eax-0x8]
c000b15b:	83 e8 26             	sub    eax,0x26
c000b15e:	52                   	push   edx
c000b15f:	6a 2b                	push   0x2b
c000b161:	50                   	push   eax
c000b162:	6a 0d                	push   0xd
c000b164:	68 84 84 84 00       	push   0x848484
c000b169:	53                   	push   ebx
c000b16a:	e8 f5 fe ff ff       	call   c000b064 <RectangleFill>
c000b16f:	a1 24 7c 00 00       	mov    eax,ds:0x7c24
c000b174:	8d 50 f5             	lea    edx,[eax-0xb]
c000b177:	83 e8 29             	sub    eax,0x29
c000b17a:	52                   	push   edx
c000b17b:	6a 28                	push   0x28
c000b17d:	50                   	push   eax
c000b17e:	6a 0a                	push   0xa
c000b180:	68 ff ff ff 00       	push   0xffffff
c000b185:	53                   	push   ebx
c000b186:	e8 d9 fe ff ff       	call   c000b064 <RectangleFill>
c000b18b:	a1 24 7c 00 00       	mov    eax,ds:0x7c24
c000b190:	83 c4 30             	add    esp,0x30
c000b193:	8d 50 f8             	lea    edx,[eax-0x8]
c000b196:	83 e8 26             	sub    eax,0x26
c000b199:	52                   	push   edx
c000b19a:	6a 3a                	push   0x3a
c000b19c:	50                   	push   eax
c000b19d:	6a 35                	push   0x35
c000b19f:	68 84 84 84 00       	push   0x848484
c000b1a4:	53                   	push   ebx
c000b1a5:	e8 ba fe ff ff       	call   c000b064 <RectangleFill>
c000b1aa:	a1 24 7c 00 00       	mov    eax,ds:0x7c24
c000b1af:	8d 50 f5             	lea    edx,[eax-0xb]
c000b1b2:	83 e8 29             	sub    eax,0x29
c000b1b5:	52                   	push   edx
c000b1b6:	6a 37                	push   0x37
c000b1b8:	50                   	push   eax
c000b1b9:	6a 32                	push   0x32
c000b1bb:	68 ff ff ff 00       	push   0xffffff
c000b1c0:	53                   	push   ebx
c000b1c1:	e8 9e fe ff ff       	call   c000b064 <RectangleFill>
c000b1c6:	83 c4 30             	add    esp,0x30
c000b1c9:	8b 5d fc             	mov    ebx,DWORD PTR [ebp-0x4]
c000b1cc:	c9                   	leave  
c000b1cd:	c3                   	ret    

c000b1ce <put_char_graphic>:
c000b1ce:	55                   	push   ebp
c000b1cf:	89 e5                	mov    ebp,esp
c000b1d1:	57                   	push   edi
c000b1d2:	0f be 7d 18          	movsx  edi,BYTE PTR [ebp+0x18]
c000b1d6:	56                   	push   esi
c000b1d7:	8b 55 14             	mov    edx,DWORD PTR [ebp+0x14]
c000b1da:	53                   	push   ebx
c000b1db:	8b 75 08             	mov    esi,DWORD PTR [ebp+0x8]
c000b1de:	c1 e7 04             	shl    edi,0x4
c000b1e1:	81 c7 50 b3 00 c0    	add    edi,0xc000b350
c000b1e7:	83 3d 14 7c 00 00 01 	cmp    DWORD PTR ds:0x7c14,0x1
c000b1ee:	75 5d                	jne    c000b24d <put_char_graphic+0x7f>
c000b1f0:	31 db                	xor    ebx,ebx
c000b1f2:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
c000b1f5:	8b 0e                	mov    ecx,DWORD PTR [esi]
c000b1f7:	01 d8                	add    eax,ebx
c000b1f9:	0f af 46 04          	imul   eax,DWORD PTR [esi+0x4]
c000b1fd:	03 45 0c             	add    eax,DWORD PTR [ebp+0xc]
c000b200:	8d 04 81             	lea    eax,[ecx+eax*4]
c000b203:	8a 0c 1f             	mov    cl,BYTE PTR [edi+ebx*1]
c000b206:	84 c9                	test   cl,cl
c000b208:	79 02                	jns    c000b20c <put_char_graphic+0x3e>
c000b20a:	89 10                	mov    DWORD PTR [eax],edx
c000b20c:	0f b6 c9             	movzx  ecx,cl
c000b20f:	f6 c1 40             	test   cl,0x40
c000b212:	74 03                	je     c000b217 <put_char_graphic+0x49>
c000b214:	89 50 04             	mov    DWORD PTR [eax+0x4],edx
c000b217:	f6 c1 20             	test   cl,0x20
c000b21a:	74 03                	je     c000b21f <put_char_graphic+0x51>
c000b21c:	89 50 08             	mov    DWORD PTR [eax+0x8],edx
c000b21f:	f6 c1 10             	test   cl,0x10
c000b222:	74 03                	je     c000b227 <put_char_graphic+0x59>
c000b224:	89 50 0c             	mov    DWORD PTR [eax+0xc],edx
c000b227:	f6 c1 08             	test   cl,0x8
c000b22a:	74 03                	je     c000b22f <put_char_graphic+0x61>
c000b22c:	89 50 10             	mov    DWORD PTR [eax+0x10],edx
c000b22f:	f6 c1 04             	test   cl,0x4
c000b232:	74 03                	je     c000b237 <put_char_graphic+0x69>
c000b234:	89 50 14             	mov    DWORD PTR [eax+0x14],edx
c000b237:	f6 c1 02             	test   cl,0x2
c000b23a:	74 03                	je     c000b23f <put_char_graphic+0x71>
c000b23c:	89 50 18             	mov    DWORD PTR [eax+0x18],edx
c000b23f:	80 e1 01             	and    cl,0x1
c000b242:	74 03                	je     c000b247 <put_char_graphic+0x79>
c000b244:	89 50 1c             	mov    DWORD PTR [eax+0x1c],edx
c000b247:	43                   	inc    ebx
c000b248:	83 fb 10             	cmp    ebx,0x10
c000b24b:	75 a5                	jne    c000b1f2 <put_char_graphic+0x24>
c000b24d:	5b                   	pop    ebx
c000b24e:	5e                   	pop    esi
c000b24f:	5f                   	pop    edi
c000b250:	5d                   	pop    ebp
c000b251:	c3                   	ret    

c000b252 <put_str_graphic>:
c000b252:	55                   	push   ebp
c000b253:	89 e5                	mov    ebp,esp
c000b255:	57                   	push   edi
c000b256:	8b 7d 14             	mov    edi,DWORD PTR [ebp+0x14]
c000b259:	56                   	push   esi
c000b25a:	8b 75 0c             	mov    esi,DWORD PTR [ebp+0xc]
c000b25d:	53                   	push   ebx
c000b25e:	8b 5d 18             	mov    ebx,DWORD PTR [ebp+0x18]
c000b261:	eb 18                	jmp    c000b27b <put_str_graphic+0x29>
c000b263:	0f be c0             	movsx  eax,al
c000b266:	43                   	inc    ebx
c000b267:	50                   	push   eax
c000b268:	57                   	push   edi
c000b269:	ff 75 10             	push   DWORD PTR [ebp+0x10]
c000b26c:	56                   	push   esi
c000b26d:	83 c6 0a             	add    esi,0xa
c000b270:	ff 75 08             	push   DWORD PTR [ebp+0x8]
c000b273:	e8 56 ff ff ff       	call   c000b1ce <put_char_graphic>
c000b278:	83 c4 14             	add    esp,0x14
c000b27b:	8a 03                	mov    al,BYTE PTR [ebx]
c000b27d:	84 c0                	test   al,al
c000b27f:	75 e2                	jne    c000b263 <put_str_graphic+0x11>
c000b281:	8d 65 f4             	lea    esp,[ebp-0xc]
c000b284:	5b                   	pop    ebx
c000b285:	5e                   	pop    esi
c000b286:	5f                   	pop    edi
c000b287:	5d                   	pop    ebp
c000b288:	c3                   	ret    

Disassembly of section .data:

c000b290 <_data>:
c000b290:	60                   	pusha  
c000b291:	85 00                	test   DWORD PTR [eax],eax
c000b293:	c0 92 85 00 c0 c4 85 	rcl    BYTE PTR [edx-0x3b3fff7b],0x85
c000b29a:	00 c0                	add    al,al
c000b29c:	f6 85 00 c0 28 86 00 	test   BYTE PTR [ebp-0x79d74000],0x0
c000b2a3:	c0 5a 86 00          	rcr    BYTE PTR [edx-0x7a],0x0
c000b2a7:	c0 8c 86 00 c0 be 86 	ror    BYTE PTR [esi+eax*4-0x79414000],0x0
c000b2ae:	00 
c000b2af:	c0                   	(bad)  
c000b2b0:	f0 86 00             	lock xchg BYTE PTR [eax],al
c000b2b3:	c0 1e 87             	rcr    BYTE PTR [esi],0x87
c000b2b6:	00 c0                	add    al,al
c000b2b8:	50                   	push   eax
c000b2b9:	87 00                	xchg   DWORD PTR [eax],eax
c000b2bb:	c0 7e 87 00          	sar    BYTE PTR [esi-0x79],0x0
c000b2bf:	c0 ac 87 00 c0 de 87 	shr    BYTE PTR [edi+eax*4-0x78214000],0x0
c000b2c6:	00 
c000b2c7:	c0 0c 88 00          	ror    BYTE PTR [eax+ecx*4],0x0
c000b2cb:	c0 3a 88             	sar    BYTE PTR [edx],0x88
c000b2ce:	00 c0                	add    al,al
c000b2d0:	6c                   	ins    BYTE PTR es:[edi],dx
c000b2d1:	88 00                	mov    BYTE PTR [eax],al
c000b2d3:	c0 9e 88 00 c0 cc 88 	rcr    BYTE PTR [esi-0x333fff78],0x88
c000b2da:	00 c0                	add    al,al
c000b2dc:	fe 88 00 c0 30 89    	dec    BYTE PTR [eax-0x76cf4000]
c000b2e2:	00 c0                	add    al,al
c000b2e4:	62 89 00 c0 94 89    	bound  ecx,QWORD PTR [ecx-0x766b4000]
c000b2ea:	00 c0                	add    al,al
c000b2ec:	c6                   	(bad)  
c000b2ed:	89 00                	mov    DWORD PTR [eax],eax
c000b2ef:	c0 f8 89             	sar    al,0x89
c000b2f2:	00 c0                	add    al,al
c000b2f4:	26 8a 00             	mov    al,BYTE PTR es:[eax]
c000b2f7:	c0 58 8a 00          	rcr    BYTE PTR [eax-0x76],0x0
c000b2fb:	c0 86 8a 00 c0 b4 8a 	rol    BYTE PTR [esi-0x4b3fff76],0x8a
c000b302:	00 c0                	add    al,al
c000b304:	e6 8a                	out    0x8a,al
c000b306:	00 c0                	add    al,al
c000b308:	14 8b                	adc    al,0x8b
c000b30a:	00 c0                	add    al,al
c000b30c:	42                   	inc    edx
c000b30d:	8b 00                	mov    eax,DWORD PTR [eax]
c000b30f:	c0                   	(bad)  
c000b310:	74 8b                	je     c000b29d <_data+0xd>
c000b312:	00 c0                	add    al,al
c000b314:	a6                   	cmps   BYTE PTR ds:[esi],BYTE PTR es:[edi]
c000b315:	8b 00                	mov    eax,DWORD PTR [eax]
c000b317:	c0 d8 8b             	rcr    al,0x8b
c000b31a:	00 c0                	add    al,al
c000b31c:	0a 8c 00 c0 3c 8c 00 	or     cl,BYTE PTR [eax+eax*1+0x8c3cc0]
c000b323:	c0 6e 8c 00          	shr    BYTE PTR [esi-0x74],0x0
c000b327:	c0 a0 8c 00 c0 d2 8c 	shl    BYTE PTR [eax-0x2d3fff74],0x8c
c000b32e:	00 c0                	add    al,al
c000b330:	04 8d                	add    al,0x8d
c000b332:	00 c0                	add    al,al
c000b334:	36 8d 00             	lea    eax,ss:[eax]
c000b337:	c0 68 8d 00          	shr    BYTE PTR [eax-0x73],0x0
c000b33b:	c0 9a 8d 00 c0 cc 8d 	rcr    BYTE PTR [edx-0x333fff73],0x8d
c000b342:	00 c0                	add    al,al
c000b344:	fe 8d 00 c0 30 8e    	dec    BYTE PTR [ebp-0x71cf4000]
c000b34a:	00 c0                	add    al,al
c000b34c:	62 8e 00 c0 00 00    	bound  ecx,QWORD PTR [esi+0xc000]

c000b350 <PKnFont>:
	...
c000b560:	00 10                	add    BYTE PTR [eax],dl
c000b562:	10 10                	adc    BYTE PTR [eax],dl
c000b564:	10 10                	adc    BYTE PTR [eax],dl
c000b566:	10 10                	adc    BYTE PTR [eax],dl
c000b568:	10 10                	adc    BYTE PTR [eax],dl
c000b56a:	00 00                	add    BYTE PTR [eax],al
c000b56c:	10 10                	adc    BYTE PTR [eax],dl
c000b56e:	00 00                	add    BYTE PTR [eax],al
c000b570:	28 28                	sub    BYTE PTR [eax],ch
c000b572:	28 00                	sub    BYTE PTR [eax],al
	...
c000b580:	00 44 44 44          	add    BYTE PTR [esp+eax*2+0x44],al
c000b584:	fe 44 44 44          	inc    BYTE PTR [esp+eax*2+0x44]
c000b588:	44                   	inc    esp
c000b589:	44                   	inc    esp
c000b58a:	fe 44 44 44          	inc    BYTE PTR [esp+eax*2+0x44]
c000b58e:	00 00                	add    BYTE PTR [eax],al
c000b590:	10 3a                	adc    BYTE PTR [edx],bh
c000b592:	56                   	push   esi
c000b593:	92                   	xchg   edx,eax
c000b594:	92                   	xchg   edx,eax
c000b595:	90                   	nop
c000b596:	50                   	push   eax
c000b597:	38 14 12             	cmp    BYTE PTR [edx+edx*1],dl
c000b59a:	92                   	xchg   edx,eax
c000b59b:	92                   	xchg   edx,eax
c000b59c:	d4 b8                	aam    0xb8
c000b59e:	10 10                	adc    BYTE PTR [eax],dl
c000b5a0:	62 92 94 94 68 08    	bound  edx,QWORD PTR [edx+0x8689494]
c000b5a6:	10 10                	adc    BYTE PTR [eax],dl
c000b5a8:	20 2c 52             	and    BYTE PTR [edx+edx*2],ch
c000b5ab:	52                   	push   edx
c000b5ac:	92                   	xchg   edx,eax
c000b5ad:	8c 00                	mov    WORD PTR [eax],es
c000b5af:	00 00                	add    BYTE PTR [eax],al
c000b5b1:	70 88                	jo     c000b53b <PKnFont+0x1eb>
c000b5b3:	88 88 90 60 47 a2    	mov    BYTE PTR [eax-0x5db89f70],cl
c000b5b9:	92                   	xchg   edx,eax
c000b5ba:	8a 84 46 39 00 00 04 	mov    al,BYTE PTR [esi+eax*2+0x4000039]
c000b5c1:	08 10                	or     BYTE PTR [eax],dl
	...
c000b5cf:	00 02                	add    BYTE PTR [edx],al
c000b5d1:	04 08                	add    al,0x8
c000b5d3:	08 10                	or     BYTE PTR [eax],dl
c000b5d5:	10 10                	adc    BYTE PTR [eax],dl
c000b5d7:	10 10                	adc    BYTE PTR [eax],dl
c000b5d9:	10 10                	adc    BYTE PTR [eax],dl
c000b5db:	08 08                	or     BYTE PTR [eax],cl
c000b5dd:	04 02                	add    al,0x2
c000b5df:	00 80 40 20 20 10    	add    BYTE PTR [eax+0x10202040],al
c000b5e5:	10 10                	adc    BYTE PTR [eax],dl
c000b5e7:	10 10                	adc    BYTE PTR [eax],dl
c000b5e9:	10 10                	adc    BYTE PTR [eax],dl
c000b5eb:	20 20                	and    BYTE PTR [eax],ah
c000b5ed:	40                   	inc    eax
c000b5ee:	80 00 00             	add    BYTE PTR [eax],0x0
c000b5f1:	00 00                	add    BYTE PTR [eax],al
c000b5f3:	00 00                	add    BYTE PTR [eax],al
c000b5f5:	10 92 54 38 54 92    	adc    BYTE PTR [edx-0x6dabc7ac],dl
c000b5fb:	10 00                	adc    BYTE PTR [eax],al
	...
c000b605:	10 10                	adc    BYTE PTR [eax],dl
c000b607:	10 fe                	adc    dh,bh
c000b609:	10 10                	adc    BYTE PTR [eax],dl
c000b60b:	10 00                	adc    BYTE PTR [eax],al
	...
c000b619:	00 00                	add    BYTE PTR [eax],al
c000b61b:	18 18                	sbb    BYTE PTR [eax],bl
c000b61d:	08 08                	or     BYTE PTR [eax],cl
c000b61f:	10 00                	adc    BYTE PTR [eax],al
c000b621:	00 00                	add    BYTE PTR [eax],al
c000b623:	00 00                	add    BYTE PTR [eax],al
c000b625:	00 00                	add    BYTE PTR [eax],al
c000b627:	00 fe                	add    dh,bh
	...
c000b639:	00 00                	add    BYTE PTR [eax],al
c000b63b:	00 18                	add    BYTE PTR [eax],bl
c000b63d:	18 00                	sbb    BYTE PTR [eax],al
c000b63f:	00 02                	add    BYTE PTR [edx],al
c000b641:	02 04 04             	add    al,BYTE PTR [esp+eax*1]
c000b644:	08 08                	or     BYTE PTR [eax],cl
c000b646:	08 10                	or     BYTE PTR [eax],dl
c000b648:	10 20                	adc    BYTE PTR [eax],ah
c000b64a:	20 40 40             	and    BYTE PTR [eax+0x40],al
c000b64d:	40                   	inc    eax
c000b64e:	80 80 00 18 24 24 42 	add    BYTE PTR [eax+0x24241800],0x42
c000b655:	42                   	inc    edx
c000b656:	42                   	inc    edx
c000b657:	42                   	inc    edx
c000b658:	42                   	inc    edx
c000b659:	42                   	inc    edx
c000b65a:	42                   	inc    edx
c000b65b:	24 24                	and    al,0x24
c000b65d:	18 00                	sbb    BYTE PTR [eax],al
c000b65f:	00 00                	add    BYTE PTR [eax],al
c000b661:	08 18                	or     BYTE PTR [eax],bl
c000b663:	28 08                	sub    BYTE PTR [eax],cl
c000b665:	08 08                	or     BYTE PTR [eax],cl
c000b667:	08 08                	or     BYTE PTR [eax],cl
c000b669:	08 08                	or     BYTE PTR [eax],cl
c000b66b:	08 08                	or     BYTE PTR [eax],cl
c000b66d:	3e 00 00             	add    BYTE PTR ds:[eax],al
c000b670:	00 18                	add    BYTE PTR [eax],bl
c000b672:	24 42                	and    al,0x42
c000b674:	42                   	inc    edx
c000b675:	02 04 08             	add    al,BYTE PTR [eax+ecx*1]
c000b678:	10 20                	adc    BYTE PTR [eax],ah
c000b67a:	20 40 40             	and    BYTE PTR [eax+0x40],al
c000b67d:	7e 00                	jle    c000b67f <PKnFont+0x32f>
c000b67f:	00 00                	add    BYTE PTR [eax],al
c000b681:	18 24 42             	sbb    BYTE PTR [edx+eax*2],ah
c000b684:	02 02                	add    al,BYTE PTR [edx]
c000b686:	04 18                	add    al,0x18
c000b688:	04 02                	add    al,0x2
c000b68a:	02 42 24             	add    al,BYTE PTR [edx+0x24]
c000b68d:	18 00                	sbb    BYTE PTR [eax],al
c000b68f:	00 00                	add    BYTE PTR [eax],al
c000b691:	0c 0c                	or     al,0xc
c000b693:	0c 14                	or     al,0x14
c000b695:	14 14                	adc    al,0x14
c000b697:	24 24                	and    al,0x24
c000b699:	44                   	inc    esp
c000b69a:	7e 04                	jle    c000b6a0 <PKnFont+0x350>
c000b69c:	04 1e                	add    al,0x1e
c000b69e:	00 00                	add    BYTE PTR [eax],al
c000b6a0:	00 7c 40 40          	add    BYTE PTR [eax+eax*2+0x40],bh
c000b6a4:	40                   	inc    eax
c000b6a5:	58                   	pop    eax
c000b6a6:	64 02 02             	add    al,BYTE PTR fs:[edx]
c000b6a9:	02 02                	add    al,BYTE PTR [edx]
c000b6ab:	42                   	inc    edx
c000b6ac:	24 18                	and    al,0x18
c000b6ae:	00 00                	add    BYTE PTR [eax],al
c000b6b0:	00 18                	add    BYTE PTR [eax],bl
c000b6b2:	24 42                	and    al,0x42
c000b6b4:	40                   	inc    eax
c000b6b5:	58                   	pop    eax
c000b6b6:	64 42                	fs inc edx
c000b6b8:	42                   	inc    edx
c000b6b9:	42                   	inc    edx
c000b6ba:	42                   	inc    edx
c000b6bb:	42                   	inc    edx
c000b6bc:	24 18                	and    al,0x18
c000b6be:	00 00                	add    BYTE PTR [eax],al
c000b6c0:	00 7e 42             	add    BYTE PTR [esi+0x42],bh
c000b6c3:	42                   	inc    edx
c000b6c4:	04 04                	add    al,0x4
c000b6c6:	08 08                	or     BYTE PTR [eax],cl
c000b6c8:	08 10                	or     BYTE PTR [eax],dl
c000b6ca:	10 10                	adc    BYTE PTR [eax],dl
c000b6cc:	10 38                	adc    BYTE PTR [eax],bh
c000b6ce:	00 00                	add    BYTE PTR [eax],al
c000b6d0:	00 18                	add    BYTE PTR [eax],bl
c000b6d2:	24 42                	and    al,0x42
c000b6d4:	42                   	inc    edx
c000b6d5:	42                   	inc    edx
c000b6d6:	24 18                	and    al,0x18
c000b6d8:	24 42                	and    al,0x42
c000b6da:	42                   	inc    edx
c000b6db:	42                   	inc    edx
c000b6dc:	24 18                	and    al,0x18
c000b6de:	00 00                	add    BYTE PTR [eax],al
c000b6e0:	00 18                	add    BYTE PTR [eax],bl
c000b6e2:	24 42                	and    al,0x42
c000b6e4:	42                   	inc    edx
c000b6e5:	42                   	inc    edx
c000b6e6:	42                   	inc    edx
c000b6e7:	42                   	inc    edx
c000b6e8:	26 1a 02             	sbb    al,BYTE PTR es:[edx]
c000b6eb:	42                   	inc    edx
c000b6ec:	24 18                	and    al,0x18
c000b6ee:	00 00                	add    BYTE PTR [eax],al
c000b6f0:	00 00                	add    BYTE PTR [eax],al
c000b6f2:	00 00                	add    BYTE PTR [eax],al
c000b6f4:	00 18                	add    BYTE PTR [eax],bl
c000b6f6:	18 00                	sbb    BYTE PTR [eax],al
c000b6f8:	00 00                	add    BYTE PTR [eax],al
c000b6fa:	00 00                	add    BYTE PTR [eax],al
c000b6fc:	18 18                	sbb    BYTE PTR [eax],bl
c000b6fe:	00 00                	add    BYTE PTR [eax],al
c000b700:	00 00                	add    BYTE PTR [eax],al
c000b702:	00 00                	add    BYTE PTR [eax],al
c000b704:	00 18                	add    BYTE PTR [eax],bl
c000b706:	18 00                	sbb    BYTE PTR [eax],al
c000b708:	00 00                	add    BYTE PTR [eax],al
c000b70a:	00 18                	add    BYTE PTR [eax],bl
c000b70c:	18 08                	sbb    BYTE PTR [eax],cl
c000b70e:	08 10                	or     BYTE PTR [eax],dl
c000b710:	00 02                	add    BYTE PTR [edx],al
c000b712:	04 08                	add    al,0x8
c000b714:	10 20                	adc    BYTE PTR [eax],ah
c000b716:	40                   	inc    eax
c000b717:	80 80 40 20 10 08 04 	add    BYTE PTR [eax+0x8102040],0x4
c000b71e:	02 00                	add    al,BYTE PTR [eax]
c000b720:	00 00                	add    BYTE PTR [eax],al
c000b722:	00 00                	add    BYTE PTR [eax],al
c000b724:	00 00                	add    BYTE PTR [eax],al
c000b726:	fe 00                	inc    BYTE PTR [eax]
c000b728:	00 fe                	add    dh,bh
c000b72a:	00 00                	add    BYTE PTR [eax],al
c000b72c:	00 00                	add    BYTE PTR [eax],al
c000b72e:	00 00                	add    BYTE PTR [eax],al
c000b730:	00 80 40 20 10 08    	add    BYTE PTR [eax+0x8102040],al
c000b736:	04 02                	add    al,0x2
c000b738:	02 04 08             	add    al,BYTE PTR [eax+ecx*1]
c000b73b:	10 20                	adc    BYTE PTR [eax],ah
c000b73d:	40                   	inc    eax
c000b73e:	80 00 00             	add    BYTE PTR [eax],0x0
c000b741:	38 44 82 82          	cmp    BYTE PTR [edx+eax*4-0x7e],al
c000b745:	82                   	(bad)  
c000b746:	04 08                	add    al,0x8
c000b748:	10 10                	adc    BYTE PTR [eax],dl
c000b74a:	00 00                	add    BYTE PTR [eax],al
c000b74c:	18 18                	sbb    BYTE PTR [eax],bl
c000b74e:	00 00                	add    BYTE PTR [eax],al
c000b750:	00 38                	add    BYTE PTR [eax],bh
c000b752:	44                   	inc    esp
c000b753:	82                   	(bad)  
c000b754:	9a aa aa aa aa aa 9c 	call   0x9caa:0xaaaaaaaa
c000b75b:	80 46 38 00          	add    BYTE PTR [esi+0x38],0x0
c000b75f:	00 00                	add    BYTE PTR [eax],al
c000b761:	18 18                	sbb    BYTE PTR [eax],bl
c000b763:	18 18                	sbb    BYTE PTR [eax],bl
c000b765:	24 24                	and    al,0x24
c000b767:	24 24                	and    al,0x24
c000b769:	7e 42                	jle    c000b7ad <PKnFont+0x45d>
c000b76b:	42                   	inc    edx
c000b76c:	42                   	inc    edx
c000b76d:	e7 00                	out    0x0,eax
c000b76f:	00 00                	add    BYTE PTR [eax],al
c000b771:	f0 48                	lock dec eax
c000b773:	44                   	inc    esp
c000b774:	44                   	inc    esp
c000b775:	44                   	inc    esp
c000b776:	48                   	dec    eax
c000b777:	78 44                	js     c000b7bd <PKnFont+0x46d>
c000b779:	42                   	inc    edx
c000b77a:	42                   	inc    edx
c000b77b:	42                   	inc    edx
c000b77c:	44                   	inc    esp
c000b77d:	f8                   	clc    
c000b77e:	00 00                	add    BYTE PTR [eax],al
c000b780:	00 3a                	add    BYTE PTR [edx],bh
c000b782:	46                   	inc    esi
c000b783:	42                   	inc    edx
c000b784:	82                   	(bad)  
c000b785:	80 80 80 80 80 82 42 	add    BYTE PTR [eax-0x7d7f7f80],0x42
c000b78c:	44                   	inc    esp
c000b78d:	38 00                	cmp    BYTE PTR [eax],al
c000b78f:	00 00                	add    BYTE PTR [eax],al
c000b791:	f8                   	clc    
c000b792:	44                   	inc    esp
c000b793:	44                   	inc    esp
c000b794:	42                   	inc    edx
c000b795:	42                   	inc    edx
c000b796:	42                   	inc    edx
c000b797:	42                   	inc    edx
c000b798:	42                   	inc    edx
c000b799:	42                   	inc    edx
c000b79a:	42                   	inc    edx
c000b79b:	44                   	inc    esp
c000b79c:	44                   	inc    esp
c000b79d:	f8                   	clc    
c000b79e:	00 00                	add    BYTE PTR [eax],al
c000b7a0:	00 fe                	add    dh,bh
c000b7a2:	42                   	inc    edx
c000b7a3:	42                   	inc    edx
c000b7a4:	40                   	inc    eax
c000b7a5:	40                   	inc    eax
c000b7a6:	44                   	inc    esp
c000b7a7:	7c 44                	jl     c000b7ed <PKnFont+0x49d>
c000b7a9:	40                   	inc    eax
c000b7aa:	40                   	inc    eax
c000b7ab:	42                   	inc    edx
c000b7ac:	42                   	inc    edx
c000b7ad:	fe 00                	inc    BYTE PTR [eax]
c000b7af:	00 00                	add    BYTE PTR [eax],al
c000b7b1:	fe 42 42             	inc    BYTE PTR [edx+0x42]
c000b7b4:	40                   	inc    eax
c000b7b5:	40                   	inc    eax
c000b7b6:	44                   	inc    esp
c000b7b7:	7c 44                	jl     c000b7fd <PKnFont+0x4ad>
c000b7b9:	44                   	inc    esp
c000b7ba:	40                   	inc    eax
c000b7bb:	40                   	inc    eax
c000b7bc:	40                   	inc    eax
c000b7bd:	f0 00 00             	lock add BYTE PTR [eax],al
c000b7c0:	00 3a                	add    BYTE PTR [edx],bh
c000b7c2:	46                   	inc    esi
c000b7c3:	42                   	inc    edx
c000b7c4:	82                   	(bad)  
c000b7c5:	80 80 9e 82 82 82 42 	add    BYTE PTR [eax-0x7d7d7d62],0x42
c000b7cc:	46                   	inc    esi
c000b7cd:	38 00                	cmp    BYTE PTR [eax],al
c000b7cf:	00 00                	add    BYTE PTR [eax],al
c000b7d1:	e7 42                	out    0x42,eax
c000b7d3:	42                   	inc    edx
c000b7d4:	42                   	inc    edx
c000b7d5:	42                   	inc    edx
c000b7d6:	42                   	inc    edx
c000b7d7:	7e 42                	jle    c000b81b <PKnFont+0x4cb>
c000b7d9:	42                   	inc    edx
c000b7da:	42                   	inc    edx
c000b7db:	42                   	inc    edx
c000b7dc:	42                   	inc    edx
c000b7dd:	e7 00                	out    0x0,eax
c000b7df:	00 00                	add    BYTE PTR [eax],al
c000b7e1:	7c 10                	jl     c000b7f3 <PKnFont+0x4a3>
c000b7e3:	10 10                	adc    BYTE PTR [eax],dl
c000b7e5:	10 10                	adc    BYTE PTR [eax],dl
c000b7e7:	10 10                	adc    BYTE PTR [eax],dl
c000b7e9:	10 10                	adc    BYTE PTR [eax],dl
c000b7eb:	10 10                	adc    BYTE PTR [eax],dl
c000b7ed:	7c 00                	jl     c000b7ef <PKnFont+0x49f>
c000b7ef:	00 00                	add    BYTE PTR [eax],al
c000b7f1:	1f                   	pop    ds
c000b7f2:	04 04                	add    al,0x4
c000b7f4:	04 04                	add    al,0x4
c000b7f6:	04 04                	add    al,0x4
c000b7f8:	04 04                	add    al,0x4
c000b7fa:	04 04                	add    al,0x4
c000b7fc:	84 48 30             	test   BYTE PTR [eax+0x30],cl
c000b7ff:	00 00                	add    BYTE PTR [eax],al
c000b801:	e7 42                	out    0x42,eax
c000b803:	44                   	inc    esp
c000b804:	48                   	dec    eax
c000b805:	50                   	push   eax
c000b806:	50                   	push   eax
c000b807:	60                   	pusha  
c000b808:	50                   	push   eax
c000b809:	50                   	push   eax
c000b80a:	48                   	dec    eax
c000b80b:	44                   	inc    esp
c000b80c:	42                   	inc    edx
c000b80d:	e7 00                	out    0x0,eax
c000b80f:	00 00                	add    BYTE PTR [eax],al
c000b811:	f0 40                	lock inc eax
c000b813:	40                   	inc    eax
c000b814:	40                   	inc    eax
c000b815:	40                   	inc    eax
c000b816:	40                   	inc    eax
c000b817:	40                   	inc    eax
c000b818:	40                   	inc    eax
c000b819:	40                   	inc    eax
c000b81a:	40                   	inc    eax
c000b81b:	42                   	inc    edx
c000b81c:	42                   	inc    edx
c000b81d:	fe 00                	inc    BYTE PTR [eax]
c000b81f:	00 00                	add    BYTE PTR [eax],al
c000b821:	c3                   	ret    
c000b822:	42                   	inc    edx
c000b823:	66 66 66 5a          	data16 data16 pop dx
c000b827:	5a                   	pop    edx
c000b828:	5a                   	pop    edx
c000b829:	42                   	inc    edx
c000b82a:	42                   	inc    edx
c000b82b:	42                   	inc    edx
c000b82c:	42                   	inc    edx
c000b82d:	e7 00                	out    0x0,eax
c000b82f:	00 00                	add    BYTE PTR [eax],al
c000b831:	c7 42 62 62 52 52 52 	mov    DWORD PTR [edx+0x62],0x52525262
c000b838:	4a                   	dec    edx
c000b839:	4a                   	dec    edx
c000b83a:	4a                   	dec    edx
c000b83b:	46                   	inc    esi
c000b83c:	46                   	inc    esi
c000b83d:	e2 00                	loop   c000b83f <PKnFont+0x4ef>
c000b83f:	00 00                	add    BYTE PTR [eax],al
c000b841:	38 44 82 82          	cmp    BYTE PTR [edx+eax*4-0x7e],al
c000b845:	82                   	(bad)  
c000b846:	82                   	(bad)  
c000b847:	82                   	(bad)  
c000b848:	82                   	(bad)  
c000b849:	82                   	(bad)  
c000b84a:	82                   	(bad)  
c000b84b:	82                   	(bad)  
c000b84c:	44                   	inc    esp
c000b84d:	38 00                	cmp    BYTE PTR [eax],al
c000b84f:	00 00                	add    BYTE PTR [eax],al
c000b851:	f8                   	clc    
c000b852:	44                   	inc    esp
c000b853:	42                   	inc    edx
c000b854:	42                   	inc    edx
c000b855:	42                   	inc    edx
c000b856:	44                   	inc    esp
c000b857:	78 40                	js     c000b899 <PKnFont+0x549>
c000b859:	40                   	inc    eax
c000b85a:	40                   	inc    eax
c000b85b:	40                   	inc    eax
c000b85c:	40                   	inc    eax
c000b85d:	f0 00 00             	lock add BYTE PTR [eax],al
c000b860:	00 38                	add    BYTE PTR [eax],bh
c000b862:	44                   	inc    esp
c000b863:	82                   	(bad)  
c000b864:	82                   	(bad)  
c000b865:	82                   	(bad)  
c000b866:	82                   	(bad)  
c000b867:	82                   	(bad)  
c000b868:	82                   	(bad)  
c000b869:	82                   	(bad)  
c000b86a:	92                   	xchg   edx,eax
c000b86b:	8a 44 3a 00          	mov    al,BYTE PTR [edx+edi*1+0x0]
c000b86f:	00 00                	add    BYTE PTR [eax],al
c000b871:	fc                   	cld    
c000b872:	42                   	inc    edx
c000b873:	42                   	inc    edx
c000b874:	42                   	inc    edx
c000b875:	42                   	inc    edx
c000b876:	7c 44                	jl     c000b8bc <PKnFont+0x56c>
c000b878:	42                   	inc    edx
c000b879:	42                   	inc    edx
c000b87a:	42                   	inc    edx
c000b87b:	42                   	inc    edx
c000b87c:	42                   	inc    edx
c000b87d:	e7 00                	out    0x0,eax
c000b87f:	00 00                	add    BYTE PTR [eax],al
c000b881:	3a 46 82             	cmp    al,BYTE PTR [esi-0x7e]
c000b884:	82                   	(bad)  
c000b885:	80 40 38 04          	add    BYTE PTR [eax+0x38],0x4
c000b889:	02 82 82 c4 b8 00    	add    al,BYTE PTR [edx+0xb8c482]
c000b88f:	00 00                	add    BYTE PTR [eax],al
c000b891:	fe                   	(bad)  
c000b892:	92                   	xchg   edx,eax
c000b893:	92                   	xchg   edx,eax
c000b894:	10 10                	adc    BYTE PTR [eax],dl
c000b896:	10 10                	adc    BYTE PTR [eax],dl
c000b898:	10 10                	adc    BYTE PTR [eax],dl
c000b89a:	10 10                	adc    BYTE PTR [eax],dl
c000b89c:	10 7c 00 00          	adc    BYTE PTR [eax+eax*1+0x0],bh
c000b8a0:	00 e7                	add    bh,ah
c000b8a2:	42                   	inc    edx
c000b8a3:	42                   	inc    edx
c000b8a4:	42                   	inc    edx
c000b8a5:	42                   	inc    edx
c000b8a6:	42                   	inc    edx
c000b8a7:	42                   	inc    edx
c000b8a8:	42                   	inc    edx
c000b8a9:	42                   	inc    edx
c000b8aa:	42                   	inc    edx
c000b8ab:	42                   	inc    edx
c000b8ac:	24 3c                	and    al,0x3c
c000b8ae:	00 00                	add    BYTE PTR [eax],al
c000b8b0:	00 e7                	add    bh,ah
c000b8b2:	42                   	inc    edx
c000b8b3:	42                   	inc    edx
c000b8b4:	42                   	inc    edx
c000b8b5:	42                   	inc    edx
c000b8b6:	24 24                	and    al,0x24
c000b8b8:	24 24                	and    al,0x24
c000b8ba:	18 18                	sbb    BYTE PTR [eax],bl
c000b8bc:	18 18                	sbb    BYTE PTR [eax],bl
c000b8be:	00 00                	add    BYTE PTR [eax],al
c000b8c0:	00 e7                	add    bh,ah
c000b8c2:	42                   	inc    edx
c000b8c3:	42                   	inc    edx
c000b8c4:	42                   	inc    edx
c000b8c5:	5a                   	pop    edx
c000b8c6:	5a                   	pop    edx
c000b8c7:	5a                   	pop    edx
c000b8c8:	5a                   	pop    edx
c000b8c9:	24 24                	and    al,0x24
c000b8cb:	24 24                	and    al,0x24
c000b8cd:	24 00                	and    al,0x0
c000b8cf:	00 00                	add    BYTE PTR [eax],al
c000b8d1:	e7 42                	out    0x42,eax
c000b8d3:	42                   	inc    edx
c000b8d4:	24 24                	and    al,0x24
c000b8d6:	24 18                	and    al,0x18
c000b8d8:	24 24                	and    al,0x24
c000b8da:	24 42                	and    al,0x42
c000b8dc:	42                   	inc    edx
c000b8dd:	e7 00                	out    0x0,eax
c000b8df:	00 00                	add    BYTE PTR [eax],al
c000b8e1:	ee                   	out    dx,al
c000b8e2:	44                   	inc    esp
c000b8e3:	44                   	inc    esp
c000b8e4:	44                   	inc    esp
c000b8e5:	28 28                	sub    BYTE PTR [eax],ch
c000b8e7:	28 10                	sub    BYTE PTR [eax],dl
c000b8e9:	10 10                	adc    BYTE PTR [eax],dl
c000b8eb:	10 10                	adc    BYTE PTR [eax],dl
c000b8ed:	7c 00                	jl     c000b8ef <PKnFont+0x59f>
c000b8ef:	00 00                	add    BYTE PTR [eax],al
c000b8f1:	fe 84 84 08 08 10 10 	inc    BYTE PTR [esp+eax*4+0x10100808]
c000b8f8:	20 20                	and    BYTE PTR [eax],ah
c000b8fa:	40                   	inc    eax
c000b8fb:	42                   	inc    edx
c000b8fc:	82                   	(bad)  
c000b8fd:	fe 00                	inc    BYTE PTR [eax]
c000b8ff:	00 00                	add    BYTE PTR [eax],al
c000b901:	3e 20 20             	and    BYTE PTR ds:[eax],ah
c000b904:	20 20                	and    BYTE PTR [eax],ah
c000b906:	20 20                	and    BYTE PTR [eax],ah
c000b908:	20 20                	and    BYTE PTR [eax],ah
c000b90a:	20 20                	and    BYTE PTR [eax],ah
c000b90c:	20 20                	and    BYTE PTR [eax],ah
c000b90e:	3e 00 80 80 40 40 20 	add    BYTE PTR ds:[eax+0x20404080],al
c000b915:	20 20                	and    BYTE PTR [eax],ah
c000b917:	10 10                	adc    BYTE PTR [eax],dl
c000b919:	08 08                	or     BYTE PTR [eax],cl
c000b91b:	04 04                	add    al,0x4
c000b91d:	04 02                	add    al,0x2
c000b91f:	02 00                	add    al,BYTE PTR [eax]
c000b921:	7c 04                	jl     c000b927 <PKnFont+0x5d7>
c000b923:	04 04                	add    al,0x4
c000b925:	04 04                	add    al,0x4
c000b927:	04 04                	add    al,0x4
c000b929:	04 04                	add    al,0x4
c000b92b:	04 04                	add    al,0x4
c000b92d:	04 7c                	add    al,0x7c
c000b92f:	00 00                	add    BYTE PTR [eax],al
c000b931:	10 28                	adc    BYTE PTR [eax],ch
c000b933:	44                   	inc    esp
c000b934:	82                   	(bad)  
	...
c000b94d:	00 fe                	add    dh,bh
c000b94f:	00 10                	add    BYTE PTR [eax],dl
c000b951:	08 04 00             	or     BYTE PTR [eax+eax*1],al
	...
c000b964:	00 70 08             	add    BYTE PTR [eax+0x8],dh
c000b967:	04 3c                	add    al,0x3c
c000b969:	44                   	inc    esp
c000b96a:	84 84 8c 76 00 00 c0 	test   BYTE PTR [esp+ecx*4-0x3fffff8a],al
c000b971:	40                   	inc    eax
c000b972:	40                   	inc    eax
c000b973:	40                   	inc    eax
c000b974:	40                   	inc    eax
c000b975:	58                   	pop    eax
c000b976:	64 42                	fs inc edx
c000b978:	42                   	inc    edx
c000b979:	42                   	inc    edx
c000b97a:	42                   	inc    edx
c000b97b:	42                   	inc    edx
c000b97c:	64 58                	fs pop eax
c000b97e:	00 00                	add    BYTE PTR [eax],al
c000b980:	00 00                	add    BYTE PTR [eax],al
c000b982:	00 00                	add    BYTE PTR [eax],al
c000b984:	00 30                	add    BYTE PTR [eax],dh
c000b986:	4c                   	dec    esp
c000b987:	84 84 80 80 82 44 38 	test   BYTE PTR [eax+eax*4+0x38448280],al
c000b98e:	00 00                	add    BYTE PTR [eax],al
c000b990:	0c 04                	or     al,0x4
c000b992:	04 04                	add    al,0x4
c000b994:	04 34                	add    al,0x34
c000b996:	4c                   	dec    esp
c000b997:	84 84 84 84 84 4c 36 	test   BYTE PTR [esp+eax*4+0x364c8484],al
c000b99e:	00 00                	add    BYTE PTR [eax],al
c000b9a0:	00 00                	add    BYTE PTR [eax],al
c000b9a2:	00 00                	add    BYTE PTR [eax],al
c000b9a4:	00 38                	add    BYTE PTR [eax],bh
c000b9a6:	44                   	inc    esp
c000b9a7:	82                   	(bad)  
c000b9a8:	82                   	(bad)  
c000b9a9:	fc                   	cld    
c000b9aa:	80 82 42 3c 00 00 0e 	add    BYTE PTR [edx+0x3c42],0xe
c000b9b1:	10 10                	adc    BYTE PTR [eax],dl
c000b9b3:	10 10                	adc    BYTE PTR [eax],dl
c000b9b5:	7c 10                	jl     c000b9c7 <PKnFont+0x677>
c000b9b7:	10 10                	adc    BYTE PTR [eax],dl
c000b9b9:	10 10                	adc    BYTE PTR [eax],dl
c000b9bb:	10 10                	adc    BYTE PTR [eax],dl
c000b9bd:	7c 00                	jl     c000b9bf <PKnFont+0x66f>
c000b9bf:	00 00                	add    BYTE PTR [eax],al
c000b9c1:	00 00                	add    BYTE PTR [eax],al
c000b9c3:	00 00                	add    BYTE PTR [eax],al
c000b9c5:	36 4c                	ss dec esp
c000b9c7:	84 84 84 84 4c 34 04 	test   BYTE PTR [esp+eax*4+0x4344c84],al
c000b9ce:	04 38                	add    al,0x38
c000b9d0:	c0 40 40 40          	rol    BYTE PTR [eax+0x40],0x40
c000b9d4:	40                   	inc    eax
c000b9d5:	58                   	pop    eax
c000b9d6:	64 42                	fs inc edx
c000b9d8:	42                   	inc    edx
c000b9d9:	42                   	inc    edx
c000b9da:	42                   	inc    edx
c000b9db:	42                   	inc    edx
c000b9dc:	42                   	inc    edx
c000b9dd:	e3 00                	jecxz  c000b9df <PKnFont+0x68f>
c000b9df:	00 00                	add    BYTE PTR [eax],al
c000b9e1:	10 10                	adc    BYTE PTR [eax],dl
c000b9e3:	00 00                	add    BYTE PTR [eax],al
c000b9e5:	30 10                	xor    BYTE PTR [eax],dl
c000b9e7:	10 10                	adc    BYTE PTR [eax],dl
c000b9e9:	10 10                	adc    BYTE PTR [eax],dl
c000b9eb:	10 10                	adc    BYTE PTR [eax],dl
c000b9ed:	38 00                	cmp    BYTE PTR [eax],al
c000b9ef:	00 00                	add    BYTE PTR [eax],al
c000b9f1:	04 04                	add    al,0x4
c000b9f3:	00 00                	add    BYTE PTR [eax],al
c000b9f5:	0c 04                	or     al,0x4
c000b9f7:	04 04                	add    al,0x4
c000b9f9:	04 04                	add    al,0x4
c000b9fb:	04 04                	add    al,0x4
c000b9fd:	08 08                	or     BYTE PTR [eax],cl
c000b9ff:	30 c0                	xor    al,al
c000ba01:	40                   	inc    eax
c000ba02:	40                   	inc    eax
c000ba03:	40                   	inc    eax
c000ba04:	40                   	inc    eax
c000ba05:	4e                   	dec    esi
c000ba06:	44                   	inc    esp
c000ba07:	48                   	dec    eax
c000ba08:	50                   	push   eax
c000ba09:	60                   	pusha  
c000ba0a:	50                   	push   eax
c000ba0b:	48                   	dec    eax
c000ba0c:	44                   	inc    esp
c000ba0d:	e6 00                	out    0x0,al
c000ba0f:	00 30                	add    BYTE PTR [eax],dh
c000ba11:	10 10                	adc    BYTE PTR [eax],dl
c000ba13:	10 10                	adc    BYTE PTR [eax],dl
c000ba15:	10 10                	adc    BYTE PTR [eax],dl
c000ba17:	10 10                	adc    BYTE PTR [eax],dl
c000ba19:	10 10                	adc    BYTE PTR [eax],dl
c000ba1b:	10 10                	adc    BYTE PTR [eax],dl
c000ba1d:	38 00                	cmp    BYTE PTR [eax],al
c000ba1f:	00 00                	add    BYTE PTR [eax],al
c000ba21:	00 00                	add    BYTE PTR [eax],al
c000ba23:	00 00                	add    BYTE PTR [eax],al
c000ba25:	f6                   	(bad)  
c000ba26:	49                   	dec    ecx
c000ba27:	49                   	dec    ecx
c000ba28:	49                   	dec    ecx
c000ba29:	49                   	dec    ecx
c000ba2a:	49                   	dec    ecx
c000ba2b:	49                   	dec    ecx
c000ba2c:	49                   	dec    ecx
c000ba2d:	db 00                	fild   DWORD PTR [eax]
c000ba2f:	00 00                	add    BYTE PTR [eax],al
c000ba31:	00 00                	add    BYTE PTR [eax],al
c000ba33:	00 00                	add    BYTE PTR [eax],al
c000ba35:	d8 64 42 42          	fsub   DWORD PTR [edx+eax*2+0x42]
c000ba39:	42                   	inc    edx
c000ba3a:	42                   	inc    edx
c000ba3b:	42                   	inc    edx
c000ba3c:	42                   	inc    edx
c000ba3d:	e3 00                	jecxz  c000ba3f <PKnFont+0x6ef>
c000ba3f:	00 00                	add    BYTE PTR [eax],al
c000ba41:	00 00                	add    BYTE PTR [eax],al
c000ba43:	00 00                	add    BYTE PTR [eax],al
c000ba45:	38 44 82 82          	cmp    BYTE PTR [edx+eax*4-0x7e],al
c000ba49:	82                   	(bad)  
c000ba4a:	82                   	(bad)  
c000ba4b:	82                   	(bad)  
c000ba4c:	44                   	inc    esp
c000ba4d:	38 00                	cmp    BYTE PTR [eax],al
c000ba4f:	00 00                	add    BYTE PTR [eax],al
c000ba51:	00 00                	add    BYTE PTR [eax],al
c000ba53:	00 d8                	add    al,bl
c000ba55:	64 42                	fs inc edx
c000ba57:	42                   	inc    edx
c000ba58:	42                   	inc    edx
c000ba59:	42                   	inc    edx
c000ba5a:	42                   	inc    edx
c000ba5b:	64 58                	fs pop eax
c000ba5d:	40                   	inc    eax
c000ba5e:	40                   	inc    eax
c000ba5f:	e0 00                	loopne c000ba61 <PKnFont+0x711>
c000ba61:	00 00                	add    BYTE PTR [eax],al
c000ba63:	00 34 4c             	add    BYTE PTR [esp+ecx*2],dh
c000ba66:	84 84 84 84 84 4c 34 	test   BYTE PTR [esp+eax*4+0x344c8484],al
c000ba6d:	04 04                	add    al,0x4
c000ba6f:	0e                   	push   cs
c000ba70:	00 00                	add    BYTE PTR [eax],al
c000ba72:	00 00                	add    BYTE PTR [eax],al
c000ba74:	00 dc                	add    ah,bl
c000ba76:	62 42 40             	bound  eax,QWORD PTR [edx+0x40]
c000ba79:	40                   	inc    eax
c000ba7a:	40                   	inc    eax
c000ba7b:	40                   	inc    eax
c000ba7c:	40                   	inc    eax
c000ba7d:	e0 00                	loopne c000ba7f <PKnFont+0x72f>
c000ba7f:	00 00                	add    BYTE PTR [eax],al
c000ba81:	00 00                	add    BYTE PTR [eax],al
c000ba83:	00 00                	add    BYTE PTR [eax],al
c000ba85:	7a 86                	jp     c000ba0d <PKnFont+0x6bd>
c000ba87:	82                   	(bad)  
c000ba88:	c0 38 06             	sar    BYTE PTR [eax],0x6
c000ba8b:	82                   	(bad)  
c000ba8c:	c2 bc 00             	ret    0xbc
c000ba8f:	00 00                	add    BYTE PTR [eax],al
c000ba91:	00 10                	add    BYTE PTR [eax],dl
c000ba93:	10 10                	adc    BYTE PTR [eax],dl
c000ba95:	7c 10                	jl     c000baa7 <PKnFont+0x757>
c000ba97:	10 10                	adc    BYTE PTR [eax],dl
c000ba99:	10 10                	adc    BYTE PTR [eax],dl
c000ba9b:	10 10                	adc    BYTE PTR [eax],dl
c000ba9d:	0e                   	push   cs
c000ba9e:	00 00                	add    BYTE PTR [eax],al
c000baa0:	00 00                	add    BYTE PTR [eax],al
c000baa2:	00 00                	add    BYTE PTR [eax],al
c000baa4:	00 c6                	add    dh,al
c000baa6:	42                   	inc    edx
c000baa7:	42                   	inc    edx
c000baa8:	42                   	inc    edx
c000baa9:	42                   	inc    edx
c000baaa:	42                   	inc    edx
c000baab:	42                   	inc    edx
c000baac:	46                   	inc    esi
c000baad:	3b 00                	cmp    eax,DWORD PTR [eax]
c000baaf:	00 00                	add    BYTE PTR [eax],al
c000bab1:	00 00                	add    BYTE PTR [eax],al
c000bab3:	00 00                	add    BYTE PTR [eax],al
c000bab5:	e7 42                	out    0x42,eax
c000bab7:	42                   	inc    edx
c000bab8:	42                   	inc    edx
c000bab9:	24 24                	and    al,0x24
c000babb:	24 18                	and    al,0x18
c000babd:	18 00                	sbb    BYTE PTR [eax],al
c000babf:	00 00                	add    BYTE PTR [eax],al
c000bac1:	00 00                	add    BYTE PTR [eax],al
c000bac3:	00 00                	add    BYTE PTR [eax],al
c000bac5:	e7 42                	out    0x42,eax
c000bac7:	42                   	inc    edx
c000bac8:	5a                   	pop    edx
c000bac9:	5a                   	pop    edx
c000baca:	5a                   	pop    edx
c000bacb:	24 24                	and    al,0x24
c000bacd:	24 00                	and    al,0x0
c000bacf:	00 00                	add    BYTE PTR [eax],al
c000bad1:	00 00                	add    BYTE PTR [eax],al
c000bad3:	00 00                	add    BYTE PTR [eax],al
c000bad5:	c6 44 28 28 10       	mov    BYTE PTR [eax+ebp*1+0x28],0x10
c000bada:	28 28                	sub    BYTE PTR [eax],ch
c000badc:	44                   	inc    esp
c000badd:	c6 00 00             	mov    BYTE PTR [eax],0x0
c000bae0:	00 00                	add    BYTE PTR [eax],al
c000bae2:	00 00                	add    BYTE PTR [eax],al
c000bae4:	00 e7                	add    bh,ah
c000bae6:	42                   	inc    edx
c000bae7:	42                   	inc    edx
c000bae8:	24 24                	and    al,0x24
c000baea:	24 18                	and    al,0x18
c000baec:	18 10                	sbb    BYTE PTR [eax],dl
c000baee:	10 60 00             	adc    BYTE PTR [eax+0x0],ah
c000baf1:	00 00                	add    BYTE PTR [eax],al
c000baf3:	00 00                	add    BYTE PTR [eax],al
c000baf5:	fe 82 84 08 10 20    	inc    BYTE PTR [edx+0x20100884]
c000bafb:	42                   	inc    edx
c000bafc:	82                   	(bad)  
c000bafd:	fe 00                	inc    BYTE PTR [eax]
c000baff:	00 00                	add    BYTE PTR [eax],al
c000bb01:	06                   	push   es
c000bb02:	08 10                	or     BYTE PTR [eax],dl
c000bb04:	10 10                	adc    BYTE PTR [eax],dl
c000bb06:	10 60 10             	adc    BYTE PTR [eax+0x10],ah
c000bb09:	10 10                	adc    BYTE PTR [eax],dl
c000bb0b:	10 08                	adc    BYTE PTR [eax],cl
c000bb0d:	06                   	push   es
c000bb0e:	00 00                	add    BYTE PTR [eax],al
c000bb10:	10 10                	adc    BYTE PTR [eax],dl
c000bb12:	10 10                	adc    BYTE PTR [eax],dl
c000bb14:	10 10                	adc    BYTE PTR [eax],dl
c000bb16:	10 10                	adc    BYTE PTR [eax],dl
c000bb18:	10 10                	adc    BYTE PTR [eax],dl
c000bb1a:	10 10                	adc    BYTE PTR [eax],dl
c000bb1c:	10 10                	adc    BYTE PTR [eax],dl
c000bb1e:	10 10                	adc    BYTE PTR [eax],dl
c000bb20:	00 60 10             	add    BYTE PTR [eax+0x10],ah
c000bb23:	08 08                	or     BYTE PTR [eax],cl
c000bb25:	08 08                	or     BYTE PTR [eax],cl
c000bb27:	06                   	push   es
c000bb28:	08 08                	or     BYTE PTR [eax],cl
c000bb2a:	08 08                	or     BYTE PTR [eax],cl
c000bb2c:	10 60 00             	adc    BYTE PTR [eax+0x0],ah
c000bb2f:	00 00                	add    BYTE PTR [eax],al
c000bb31:	72 8c                	jb     c000babf <PKnFont+0x76f>
	...

Disassembly of section .eh_frame:

c000c350 <.eh_frame>:
c000c350:	10 00                	adc    BYTE PTR [eax],al
c000c352:	00 00                	add    BYTE PTR [eax],al
c000c354:	00 00                	add    BYTE PTR [eax],al
c000c356:	00 00                	add    BYTE PTR [eax],al
c000c358:	01 00                	add    DWORD PTR [eax],eax
c000c35a:	01 7c 08 0c          	add    DWORD PTR [eax+ecx*1+0xc],edi
c000c35e:	04 04                	add    al,0x4
c000c360:	88 01                	mov    BYTE PTR [ecx],al
c000c362:	00 00                	add    BYTE PTR [eax],al
c000c364:	14 00                	adc    al,0x0
c000c366:	00 00                	add    BYTE PTR [eax],al
c000c368:	18 00                	sbb    BYTE PTR [eax],al
c000c36a:	00 00                	add    BYTE PTR [eax],al
c000c36c:	24 81                	and    al,0x81
c000c36e:	00 c0                	add    al,al
c000c370:	05 00 00 00 41       	add    eax,0x41000000
c000c375:	0e                   	push   cs
c000c376:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000c37c:	e4 00                	in     al,0x0
c000c37e:	00 00                	add    BYTE PTR [eax],al
c000c380:	30 00                	xor    BYTE PTR [eax],al
c000c382:	00 00                	add    BYTE PTR [eax],al
c000c384:	29 81 00 c0 16 01    	sub    DWORD PTR [ecx+0x116c000],eax
c000c38a:	00 00                	add    BYTE PTR [eax],al
c000c38c:	41                   	inc    ecx
c000c38d:	0e                   	push   cs
c000c38e:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000c394:	42                   	inc    edx
c000c395:	83 03 46             	add    DWORD PTR [ebx],0x46
c000c398:	2e 04 04             	cs add al,0x4
c000c39b:	01 00                	add    DWORD PTR [eax],eax
c000c39d:	00 00                	add    BYTE PTR [eax],al
c000c39f:	2e 08 42 2e          	or     BYTE PTR cs:[edx+0x2e],al
c000c3a3:	0c 42                	or     al,0x42
c000c3a5:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000c3a9:	00 46 2e             	add    BYTE PTR [esi+0x2e],al
c000c3ac:	0c 42                	or     al,0x42
c000c3ae:	2e 10 50 2e          	adc    BYTE PTR cs:[eax+0x2e],dl
c000c3b2:	0c 41                	or     al,0x41
c000c3b4:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c000c3b8:	0c 42                	or     al,0x42
c000c3ba:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c000c3be:	0c 41                	or     al,0x41
c000c3c0:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c000c3c4:	0c 42                	or     al,0x42
c000c3c6:	2e 10 4b 2e          	adc    BYTE PTR cs:[ebx+0x2e],cl
c000c3ca:	0c 41                	or     al,0x41
c000c3cc:	2e 08 42 2e          	or     BYTE PTR cs:[edx+0x2e],al
c000c3d0:	0c 42                	or     al,0x42
c000c3d2:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c000c3d6:	0c 41                	or     al,0x41
c000c3d8:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c000c3dc:	0c 42                	or     al,0x42
c000c3de:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000c3e2:	04 04                	add    al,0x4
c000c3e4:	02 00                	add    al,BYTE PTR [eax]
c000c3e6:	00 00                	add    BYTE PTR [eax],al
c000c3e8:	2e 08 49 2e          	or     BYTE PTR cs:[ecx+0x2e],cl
c000c3ec:	0c 42                	or     al,0x42
c000c3ee:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c000c3f2:	0c 41                	or     al,0x41
c000c3f4:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c000c3f8:	0c 42                	or     al,0x42
c000c3fa:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000c3fe:	04 04                	add    al,0x4
c000c400:	02 00                	add    al,BYTE PTR [eax]
c000c402:	00 00                	add    BYTE PTR [eax],al
c000c404:	2e 08 49 2e          	or     BYTE PTR cs:[ecx+0x2e],cl
c000c408:	0c 42                	or     al,0x42
c000c40a:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c000c40e:	0c 41                	or     al,0x41
c000c410:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c000c414:	0c 42                	or     al,0x42
c000c416:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c000c41a:	0c 41                	or     al,0x41
c000c41c:	2e 08 42 2e          	or     BYTE PTR cs:[edx+0x2e],al
c000c420:	0c 42                	or     al,0x42
c000c422:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c000c426:	0c 41                	or     al,0x41
c000c428:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c000c42c:	0c 42                	or     al,0x42
c000c42e:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000c432:	04 04                	add    al,0x4
c000c434:	02 00                	add    al,BYTE PTR [eax]
c000c436:	00 00                	add    BYTE PTR [eax],al
c000c438:	2e 08 46 2e          	or     BYTE PTR cs:[esi+0x2e],al
c000c43c:	0c 42                	or     al,0x42
c000c43e:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c000c442:	0c 41                	or     al,0x41
c000c444:	2e 08 42 2e          	or     BYTE PTR cs:[edx+0x2e],al
c000c448:	0c 42                	or     al,0x42
c000c44a:	2e 10 51 2e          	adc    BYTE PTR cs:[ecx+0x2e],dl
c000c44e:	14 42                	adc    al,0x42
c000c450:	2e 18 42 2e          	sbb    BYTE PTR cs:[edx+0x2e],al
c000c454:	1c 45                	sbb    al,0x45
c000c456:	2e 20 48 2e          	and    BYTE PTR cs:[eax+0x2e],cl
c000c45a:	08 45 2e             	or     BYTE PTR [ebp+0x2e],al
c000c45d:	0c 45                	or     al,0x45
c000c45f:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000c463:	00 34 01             	add    BYTE PTR [ecx+eax*1],dh
c000c466:	00 00                	add    BYTE PTR [eax],al
c000c468:	18 01                	sbb    BYTE PTR [ecx],al
c000c46a:	00 00                	add    BYTE PTR [eax],al
c000c46c:	3f                   	aas    
c000c46d:	82                   	(bad)  
c000c46e:	00 c0                	add    al,al
c000c470:	d2 01                	rol    BYTE PTR [ecx],cl
c000c472:	00 00                	add    BYTE PTR [eax],al
c000c474:	41                   	inc    ecx
c000c475:	0e                   	push   cs
c000c476:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000c47c:	46                   	inc    esi
c000c47d:	2e 0c 83             	cs or  al,0x83
c000c480:	05 86 04 87 03       	add    eax,0x3870486
c000c485:	4a                   	dec    edx
c000c486:	2e 10 4b 2e          	adc    BYTE PTR cs:[ebx+0x2e],cl
c000c48a:	00 4f 2e             	add    BYTE PTR [edi+0x2e],cl
c000c48d:	04 04                	add    al,0x4
c000c48f:	04 00                	add    al,0x0
c000c491:	00 00                	add    BYTE PTR [eax],al
c000c493:	2e 08 47 2e          	or     BYTE PTR cs:[edi+0x2e],al
c000c497:	0c 49                	or     al,0x49
c000c499:	2e 10 41 2e          	adc    BYTE PTR cs:[ecx+0x2e],al
c000c49d:	14 41                	adc    al,0x41
c000c49f:	2e 18 45 2e          	sbb    BYTE PTR cs:[ebp+0x2e],al
c000c4a3:	1c 45                	sbb    al,0x45
c000c4a5:	2e 20 4e 2e          	and    BYTE PTR cs:[esi+0x2e],cl
c000c4a9:	08 4c 2e 0c          	or     BYTE PTR [esi+ebp*1+0xc],cl
c000c4ad:	49                   	dec    ecx
c000c4ae:	2e 10 41 2e          	adc    BYTE PTR cs:[ecx+0x2e],al
c000c4b2:	14 41                	adc    al,0x41
c000c4b4:	2e 18 45 2e          	sbb    BYTE PTR cs:[ebp+0x2e],al
c000c4b8:	1c 45                	sbb    al,0x45
c000c4ba:	2e 20 48 2e          	and    BYTE PTR cs:[eax+0x2e],cl
c000c4be:	04 04                	add    al,0x4
c000c4c0:	02 00                	add    al,BYTE PTR [eax]
c000c4c2:	00 00                	add    BYTE PTR [eax],al
c000c4c4:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c000c4c8:	0c 43                	or     al,0x43
c000c4ca:	2e 10 4a 2e          	adc    BYTE PTR cs:[edx+0x2e],cl
c000c4ce:	14 41                	adc    al,0x41
c000c4d0:	2e 18 4b 2e          	sbb    BYTE PTR cs:[ebx+0x2e],cl
c000c4d4:	1c 45                	sbb    al,0x45
c000c4d6:	2e 20 48 2e          	and    BYTE PTR cs:[eax+0x2e],cl
c000c4da:	0c 42                	or     al,0x42
c000c4dc:	2e 10 42 2e          	adc    BYTE PTR cs:[edx+0x2e],al
c000c4e0:	14 41                	adc    al,0x41
c000c4e2:	2e 18 4b 2e          	sbb    BYTE PTR cs:[ebx+0x2e],cl
c000c4e6:	1c 45                	sbb    al,0x45
c000c4e8:	2e 20 48 2e          	and    BYTE PTR cs:[eax+0x2e],cl
c000c4ec:	04 04                	add    al,0x4
c000c4ee:	02 00                	add    al,BYTE PTR [eax]
c000c4f0:	00 00                	add    BYTE PTR [eax],al
c000c4f2:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c000c4f6:	0c 43                	or     al,0x43
c000c4f8:	2e 10 4a 2e          	adc    BYTE PTR cs:[edx+0x2e],cl
c000c4fc:	14 41                	adc    al,0x41
c000c4fe:	2e 18 49 2e          	sbb    BYTE PTR cs:[ecx+0x2e],cl
c000c502:	1c 45                	sbb    al,0x45
c000c504:	2e 20 48 2e          	and    BYTE PTR cs:[eax+0x2e],cl
c000c508:	0c 42                	or     al,0x42
c000c50a:	2e 10 42 2e          	adc    BYTE PTR cs:[edx+0x2e],al
c000c50e:	14 41                	adc    al,0x41
c000c510:	2e 18 49 2e          	sbb    BYTE PTR cs:[ecx+0x2e],cl
c000c514:	1c 45                	sbb    al,0x45
c000c516:	2e 20 48 2e          	and    BYTE PTR cs:[eax+0x2e],cl
c000c51a:	04 04                	add    al,0x4
c000c51c:	02 00                	add    al,BYTE PTR [eax]
c000c51e:	00 00                	add    BYTE PTR [eax],al
c000c520:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c000c524:	0c 43                	or     al,0x43
c000c526:	2e 10 4a 2e          	adc    BYTE PTR cs:[edx+0x2e],cl
c000c52a:	14 41                	adc    al,0x41
c000c52c:	2e 18 49 2e          	sbb    BYTE PTR cs:[ecx+0x2e],cl
c000c530:	1c 45                	sbb    al,0x45
c000c532:	2e 20 48 2e          	and    BYTE PTR cs:[eax+0x2e],cl
c000c536:	0c 42                	or     al,0x42
c000c538:	2e 10 42 2e          	adc    BYTE PTR cs:[edx+0x2e],al
c000c53c:	14 41                	adc    al,0x41
c000c53e:	2e 18 49 2e          	sbb    BYTE PTR cs:[ecx+0x2e],cl
c000c542:	1c 45                	sbb    al,0x45
c000c544:	2e 20 48 2e          	and    BYTE PTR cs:[eax+0x2e],cl
c000c548:	04 04                	add    al,0x4
c000c54a:	02 00                	add    al,BYTE PTR [eax]
c000c54c:	00 00                	add    BYTE PTR [eax],al
c000c54e:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c000c552:	0c 43                	or     al,0x43
c000c554:	2e 10 4a 2e          	adc    BYTE PTR cs:[edx+0x2e],cl
c000c558:	14 41                	adc    al,0x41
c000c55a:	2e 18 49 2e          	sbb    BYTE PTR cs:[ecx+0x2e],cl
c000c55e:	1c 45                	sbb    al,0x45
c000c560:	2e 20 48 2e          	and    BYTE PTR cs:[eax+0x2e],cl
c000c564:	0c 42                	or     al,0x42
c000c566:	2e 10 42 2e          	adc    BYTE PTR cs:[edx+0x2e],al
c000c56a:	14 41                	adc    al,0x41
c000c56c:	2e 18 49 2e          	sbb    BYTE PTR cs:[ecx+0x2e],cl
c000c570:	1c 45                	sbb    al,0x45
c000c572:	2e 20 48 2e          	and    BYTE PTR cs:[eax+0x2e],cl
c000c576:	04 04                	add    al,0x4
c000c578:	02 00                	add    al,BYTE PTR [eax]
c000c57a:	00 00                	add    BYTE PTR [eax],al
c000c57c:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c000c580:	0c 43                	or     al,0x43
c000c582:	2e 10 4a 2e          	adc    BYTE PTR cs:[edx+0x2e],cl
c000c586:	14 41                	adc    al,0x41
c000c588:	2e 18 49 2e          	sbb    BYTE PTR cs:[ecx+0x2e],cl
c000c58c:	1c 45                	sbb    al,0x45
c000c58e:	2e 20 48 2e          	and    BYTE PTR cs:[eax+0x2e],cl
c000c592:	00 45 2e             	add    BYTE PTR [ebp+0x2e],al
c000c595:	0c 44                	or     al,0x44
c000c597:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000c59b:	00 4c 00 00          	add    BYTE PTR [eax+eax*1+0x0],cl
c000c59f:	00 50 02             	add    BYTE PTR [eax+0x2],dl
c000c5a2:	00 00                	add    BYTE PTR [eax],al
c000c5a4:	11 84 00 c0 4d 00 00 	adc    DWORD PTR [eax+eax*1+0x4dc0],eax
c000c5ab:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000c5ae:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000c5b4:	44                   	inc    esp
c000c5b5:	2e 08 83 03 45 2e 0c 	or     BYTE PTR cs:[ebx+0xc2e4503],al
c000c5bc:	42                   	inc    edx
c000c5bd:	2e 10 4b 2e          	adc    BYTE PTR cs:[ebx+0x2e],cl
c000c5c1:	00 43 2e             	add    BYTE PTR [ebx+0x2e],al
c000c5c4:	0c 45                	or     al,0x45
c000c5c6:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000c5ca:	00 45 2e             	add    BYTE PTR [ebp+0x2e],al
c000c5cd:	04 04                	add    al,0x4
c000c5cf:	01 00                	add    DWORD PTR [eax],eax
c000c5d1:	00 00                	add    BYTE PTR [eax],al
c000c5d3:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c000c5d7:	0c 45                	or     al,0x45
c000c5d9:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c000c5dd:	0c 45                	or     al,0x45
c000c5df:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c000c5e3:	0c 42                	or     al,0x42
c000c5e5:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000c5e9:	00 00                	add    BYTE PTR [eax],al
c000c5eb:	00 b0 00 00 00 a0    	add    BYTE PTR [eax-0x60000000],dh
c000c5f1:	02 00                	add    al,BYTE PTR [eax]
c000c5f3:	00 60 84             	add    BYTE PTR [eax-0x7c],ah
c000c5f6:	00 c0                	add    al,al
c000c5f8:	aa                   	stos   BYTE PTR es:[edi],al
c000c5f9:	00 00                	add    BYTE PTR [eax],al
c000c5fb:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000c5fe:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000c604:	49                   	dec    ecx
c000c605:	2e 04 04             	cs add al,0x4
c000c608:	01 00                	add    DWORD PTR [eax],eax
c000c60a:	00 00                	add    BYTE PTR [eax],al
c000c60c:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c000c610:	0c 42                	or     al,0x42
c000c612:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c000c616:	0c 41                	or     al,0x41
c000c618:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c000c61c:	0c 42                	or     al,0x42
c000c61e:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c000c622:	0c 41                	or     al,0x41
c000c624:	2e 08 43 2e          	or     BYTE PTR cs:[ebx+0x2e],al
c000c628:	0c 42                	or     al,0x42
c000c62a:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c000c62e:	0c 41                	or     al,0x41
c000c630:	2e 08 42 2e          	or     BYTE PTR cs:[edx+0x2e],al
c000c634:	0c 42                	or     al,0x42
c000c636:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c000c63a:	0c 41                	or     al,0x41
c000c63c:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c000c640:	0c 42                	or     al,0x42
c000c642:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c000c646:	0c 41                	or     al,0x41
c000c648:	2e 08 43 2e          	or     BYTE PTR cs:[ebx+0x2e],al
c000c64c:	0c 42                	or     al,0x42
c000c64e:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c000c652:	0c 41                	or     al,0x41
c000c654:	2e 08 42 2e          	or     BYTE PTR cs:[edx+0x2e],al
c000c658:	0c 42                	or     al,0x42
c000c65a:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c000c65e:	0c 41                	or     al,0x41
c000c660:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c000c664:	0c 42                	or     al,0x42
c000c666:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000c66a:	04 04                	add    al,0x4
c000c66c:	02 00                	add    al,BYTE PTR [eax]
c000c66e:	00 00                	add    BYTE PTR [eax],al
c000c670:	2e 08 43 2e          	or     BYTE PTR cs:[ebx+0x2e],al
c000c674:	0c 42                	or     al,0x42
c000c676:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c000c67a:	0c 41                	or     al,0x41
c000c67c:	2e 08 42 2e          	or     BYTE PTR cs:[edx+0x2e],al
c000c680:	0c 42                	or     al,0x42
c000c682:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c000c686:	0c 41                	or     al,0x41
c000c688:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c000c68c:	0c 42                	or     al,0x42
c000c68e:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c000c692:	0c 41                	or     al,0x41
c000c694:	2e 08 43 2e          	or     BYTE PTR cs:[ebx+0x2e],al
c000c698:	0c 42                	or     al,0x42
c000c69a:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000c69e:	00 00                	add    BYTE PTR [eax],al
c000c6a0:	34 00                	xor    al,0x0
c000c6a2:	00 00                	add    BYTE PTR [eax],al
c000c6a4:	54                   	push   esp
c000c6a5:	03 00                	add    eax,DWORD PTR [eax]
c000c6a7:	00 0c 85 00 c0 54 00 	add    BYTE PTR [eax*4+0x54c000],cl
c000c6ae:	00 00                	add    BYTE PTR [eax],al
c000c6b0:	41                   	inc    ecx
c000c6b1:	0e                   	push   cs
c000c6b2:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000c6b8:	43                   	inc    ebx
c000c6b9:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c000c6bd:	0c 42                	or     al,0x42
c000c6bf:	2e 10 75 2e          	adc    BYTE PTR cs:[ebp+0x2e],dh
c000c6c3:	0c 41                	or     al,0x41
c000c6c5:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c000c6c9:	0c 42                	or     al,0x42
c000c6cb:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000c6cf:	00 41 c5             	add    BYTE PTR [ecx-0x3b],al
c000c6d2:	0c 04                	or     al,0x4
c000c6d4:	04 00                	add    al,0x0
c000c6d6:	00 00                	add    BYTE PTR [eax],al
c000c6d8:	1c 00                	sbb    al,0x0
c000c6da:	00 00                	add    BYTE PTR [eax],al
c000c6dc:	8c 03                	mov    WORD PTR [ebx],es
c000c6de:	00 00                	add    BYTE PTR [eax],al
c000c6e0:	a8 8e                	test   al,0x8e
c000c6e2:	00 c0                	add    al,al
c000c6e4:	10 00                	adc    BYTE PTR [eax],al
c000c6e6:	00 00                	add    BYTE PTR [eax],al
c000c6e8:	41                   	inc    ecx
c000c6e9:	0e                   	push   cs
c000c6ea:	08 85 02 47 0d 05    	or     BYTE PTR [ebp+0x50d4702],al
c000c6f0:	47                   	inc    edi
c000c6f1:	0c 04                	or     al,0x4
c000c6f3:	04 c5                	add    al,0xc5
c000c6f5:	00 00                	add    BYTE PTR [eax],al
c000c6f7:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c000c6fa:	00 00                	add    BYTE PTR [eax],al
c000c6fc:	ac                   	lods   al,BYTE PTR ds:[esi]
c000c6fd:	03 00                	add    eax,DWORD PTR [eax]
c000c6ff:	00 b8 8e 00 c0 3d    	add    BYTE PTR [eax+0x3dc0008e],bh
c000c705:	00 00                	add    BYTE PTR [eax],al
c000c707:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000c70a:	08 85 02 47 0d 05    	or     BYTE PTR [ebp+0x50d4702],al
c000c710:	74 0c                	je     c000c71e <_edata+0x3ce>
c000c712:	04 04                	add    al,0x4
c000c714:	c5 00                	lds    eax,FWORD PTR [eax]
c000c716:	00 00                	add    BYTE PTR [eax],al
c000c718:	1c 00                	sbb    al,0x0
c000c71a:	00 00                	add    BYTE PTR [eax],al
c000c71c:	cc                   	int3   
c000c71d:	03 00                	add    eax,DWORD PTR [eax]
c000c71f:	00 f5                	add    ch,dh
c000c721:	8e 00                	mov    es,WORD PTR [eax]
c000c723:	c0 69 00 00          	shr    BYTE PTR [ecx+0x0],0x0
c000c727:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000c72a:	08 85 02 44 0d 05    	or     BYTE PTR [ebp+0x50d4402],al
c000c730:	02 63 0c             	add    ah,BYTE PTR [ebx+0xc]
c000c733:	04 04                	add    al,0x4
c000c735:	c5 00                	lds    eax,FWORD PTR [eax]
c000c737:	00 20                	add    BYTE PTR [eax],ah
c000c739:	00 00                	add    BYTE PTR [eax],al
c000c73b:	00 ec                	add    ah,ch
c000c73d:	03 00                	add    eax,DWORD PTR [eax]
c000c73f:	00 5e 8f             	add    BYTE PTR [esi-0x71],bl
c000c742:	00 c0                	add    al,al
c000c744:	2c 00                	sub    al,0x0
c000c746:	00 00                	add    BYTE PTR [eax],al
c000c748:	41                   	inc    ecx
c000c749:	0e                   	push   cs
c000c74a:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000c750:	44                   	inc    esp
c000c751:	83 03 63             	add    DWORD PTR [ebx],0x63
c000c754:	c3                   	ret    
c000c755:	41                   	inc    ecx
c000c756:	0c 04                	or     al,0x4
c000c758:	04 c5                	add    al,0xc5
c000c75a:	00 00                	add    BYTE PTR [eax],al
c000c75c:	1c 00                	sbb    al,0x0
c000c75e:	00 00                	add    BYTE PTR [eax],al
c000c760:	10 04 00             	adc    BYTE PTR [eax+eax*1],al
c000c763:	00 8a 8f 00 c0 cd    	add    BYTE PTR [edx-0x323fff71],cl
c000c769:	00 00                	add    BYTE PTR [eax],al
c000c76b:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000c76e:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000c774:	02 c9                	add    cl,cl
c000c776:	0c 04                	or     al,0x4
c000c778:	04 c5                	add    al,0xc5
c000c77a:	00 00                	add    BYTE PTR [eax],al
c000c77c:	1c 00                	sbb    al,0x0
c000c77e:	00 00                	add    BYTE PTR [eax],al
c000c780:	30 04 00             	xor    BYTE PTR [eax+eax*1],al
c000c783:	00 57 90             	add    BYTE PTR [edi-0x70],dl
c000c786:	00 c0                	add    al,al
c000c788:	32 00                	xor    al,BYTE PTR [eax]
c000c78a:	00 00                	add    BYTE PTR [eax],al
c000c78c:	41                   	inc    ecx
c000c78d:	0e                   	push   cs
c000c78e:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000c794:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000c795:	c5 0c 04             	lds    ecx,FWORD PTR [esp+eax*1]
c000c798:	04 00                	add    al,0x0
c000c79a:	00 00                	add    BYTE PTR [eax],al
c000c79c:	1c 00                	sbb    al,0x0
c000c79e:	00 00                	add    BYTE PTR [eax],al
c000c7a0:	50                   	push   eax
c000c7a1:	04 00                	add    al,0x0
c000c7a3:	00 89 90 00 c0 10    	add    BYTE PTR [ecx+0x10c00090],cl
c000c7a9:	00 00                	add    BYTE PTR [eax],al
c000c7ab:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000c7ae:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000c7b4:	4c                   	dec    esp
c000c7b5:	0c 04                	or     al,0x4
c000c7b7:	04 c5                	add    al,0xc5
c000c7b9:	00 00                	add    BYTE PTR [eax],al
c000c7bb:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c000c7be:	00 00                	add    BYTE PTR [eax],al
c000c7c0:	70 04                	jo     c000c7c6 <_edata+0x476>
c000c7c2:	00 00                	add    BYTE PTR [eax],al
c000c7c4:	99                   	cdq    
c000c7c5:	90                   	nop
c000c7c6:	00 c0                	add    al,al
c000c7c8:	14 00                	adc    al,0x0
c000c7ca:	00 00                	add    BYTE PTR [eax],al
c000c7cc:	41                   	inc    ecx
c000c7cd:	0e                   	push   cs
c000c7ce:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000c7d4:	50                   	push   eax
c000c7d5:	0c 04                	or     al,0x4
c000c7d7:	04 c5                	add    al,0xc5
c000c7d9:	00 00                	add    BYTE PTR [eax],al
c000c7db:	00 b8 00 00 00 90    	add    BYTE PTR [eax-0x70000000],bh
c000c7e1:	04 00                	add    al,0x0
c000c7e3:	00 ad 90 00 c0 bc    	add    BYTE PTR [ebp-0x433fff70],ch
c000c7e9:	00 00                	add    BYTE PTR [eax],al
c000c7eb:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000c7ee:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000c7f4:	42                   	inc    edx
c000c7f5:	83 04 86 03          	add    DWORD PTR [esi+eax*4],0x3
c000c7f9:	49                   	dec    ecx
c000c7fa:	2e 04 04             	cs add al,0x4
c000c7fd:	01 00                	add    DWORD PTR [eax],eax
c000c7ff:	00 00                	add    BYTE PTR [eax],al
c000c801:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c000c805:	0c 42                	or     al,0x42
c000c807:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c000c80b:	0c 41                	or     al,0x41
c000c80d:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c000c811:	0c 42                	or     al,0x42
c000c813:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c000c817:	0c 41                	or     al,0x41
c000c819:	2e 08 48 2e          	or     BYTE PTR cs:[eax+0x2e],cl
c000c81d:	0c 42                	or     al,0x42
c000c81f:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000c823:	04 04                	add    al,0x4
c000c825:	02 00                	add    al,BYTE PTR [eax]
c000c827:	00 00                	add    BYTE PTR [eax],al
c000c829:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c000c82d:	0c 42                	or     al,0x42
c000c82f:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c000c833:	0c 41                	or     al,0x41
c000c835:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c000c839:	0c 42                	or     al,0x42
c000c83b:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000c83f:	00 46 2e             	add    BYTE PTR [esi+0x2e],al
c000c842:	04 04                	add    al,0x4
c000c844:	01 00                	add    DWORD PTR [eax],eax
c000c846:	00 00                	add    BYTE PTR [eax],al
c000c848:	2e 08 47 2e          	or     BYTE PTR cs:[edi+0x2e],al
c000c84c:	0c 42                	or     al,0x42
c000c84e:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000c852:	00 49 2e             	add    BYTE PTR [ecx+0x2e],cl
c000c855:	04 04                	add    al,0x4
c000c857:	01 00                	add    DWORD PTR [eax],eax
c000c859:	00 00                	add    BYTE PTR [eax],al
c000c85b:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c000c85f:	0c 42                	or     al,0x42
c000c861:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000c865:	04 04                	add    al,0x4
c000c867:	02 00                	add    al,BYTE PTR [eax]
c000c869:	00 00                	add    BYTE PTR [eax],al
c000c86b:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c000c86f:	0c 42                	or     al,0x42
c000c871:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c000c875:	0c 41                	or     al,0x41
c000c877:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c000c87b:	0c 42                	or     al,0x42
c000c87d:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000c881:	00 41 2e             	add    BYTE PTR [ecx+0x2e],al
c000c884:	04 04                	add    al,0x4
c000c886:	01 00                	add    DWORD PTR [eax],eax
c000c888:	00 00                	add    BYTE PTR [eax],al
c000c88a:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c000c88e:	0c 42                	or     al,0x42
c000c890:	2e 10 4d 2e          	adc    BYTE PTR cs:[ebp+0x2e],cl
c000c894:	00 00                	add    BYTE PTR [eax],al
c000c896:	00 00                	add    BYTE PTR [eax],al
c000c898:	1c 00                	sbb    al,0x0
c000c89a:	00 00                	add    BYTE PTR [eax],al
c000c89c:	4c                   	dec    esp
c000c89d:	05 00 00 69 91       	add    eax,0x91690000
c000c8a2:	00 c0                	add    al,al
c000c8a4:	17                   	pop    ss
c000c8a5:	00 00                	add    BYTE PTR [eax],al
c000c8a7:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000c8aa:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000c8b0:	53                   	push   ebx
c000c8b1:	0c 04                	or     al,0x4
c000c8b3:	04 c5                	add    al,0xc5
c000c8b5:	00 00                	add    BYTE PTR [eax],al
c000c8b7:	00 24 00             	add    BYTE PTR [eax+eax*1],ah
c000c8ba:	00 00                	add    BYTE PTR [eax],al
c000c8bc:	6c                   	ins    BYTE PTR es:[edi],dx
c000c8bd:	05 00 00 80 91       	add    eax,0x91800000
c000c8c2:	00 c0                	add    al,al
c000c8c4:	15 00 00 00 41       	adc    eax,0x41000000
c000c8c9:	0e                   	push   cs
c000c8ca:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000c8d0:	47                   	inc    edi
c000c8d1:	0a 0c 04             	or     cl,BYTE PTR [esp+eax*1]
c000c8d4:	04 c5                	add    al,0xc5
c000c8d6:	45                   	inc    ebp
c000c8d7:	0b 41 0c             	or     eax,DWORD PTR [ecx+0xc]
c000c8da:	04 04                	add    al,0x4
c000c8dc:	c5 00                	lds    eax,FWORD PTR [eax]
c000c8de:	00 00                	add    BYTE PTR [eax],al
c000c8e0:	44                   	inc    esp
c000c8e1:	00 00                	add    BYTE PTR [eax],al
c000c8e3:	00 94 05 00 00 98 91 	add    BYTE PTR [ebp+eax*1-0x6e680000],dl
c000c8ea:	00 c0                	add    al,al
c000c8ec:	5a                   	pop    edx
c000c8ed:	00 00                	add    BYTE PTR [eax],al
c000c8ef:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000c8f2:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000c8f8:	41                   	inc    ecx
c000c8f9:	86 03                	xchg   BYTE PTR [ebx],al
c000c8fb:	44                   	inc    esp
c000c8fc:	83 04 04 06          	add    DWORD PTR [esp+eax*1],0x6
c000c900:	00 00                	add    BYTE PTR [eax],al
c000c902:	00 2e                	add    BYTE PTR [esi],ch
c000c904:	0c 41                	or     al,0x41
c000c906:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000c90a:	00 65 2e             	add    BYTE PTR [ebp+0x2e],ah
c000c90d:	04 04                	add    al,0x4
c000c90f:	05 00 00 00 2e       	add    eax,0x2e000000
c000c914:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c000c917:	0c 45                	or     al,0x45
c000c919:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000c91d:	00 47 c3             	add    BYTE PTR [edi-0x3d],al
c000c920:	41                   	inc    ecx
c000c921:	c6 41 0c 04          	mov    BYTE PTR [ecx+0xc],0x4
c000c925:	04 c5                	add    al,0xc5
c000c927:	00 24 00             	add    BYTE PTR [eax+eax*1],ah
c000c92a:	00 00                	add    BYTE PTR [eax],al
c000c92c:	dc 05 00 00 f2 91    	fadd   QWORD PTR ds:0x91f20000
c000c932:	00 c0                	add    al,al
c000c934:	21 00                	and    DWORD PTR [eax],eax
c000c936:	00 00                	add    BYTE PTR [eax],al
c000c938:	41                   	inc    ecx
c000c939:	0e                   	push   cs
c000c93a:	08 85 02 44 0d 05    	or     BYTE PTR [ebp+0x50d4402],al
c000c940:	47                   	inc    edi
c000c941:	83 04 86 03          	add    DWORD PTR [esi+eax*4],0x3
c000c945:	52                   	push   edx
c000c946:	c3                   	ret    
c000c947:	41                   	inc    ecx
c000c948:	c6 41 0c 04          	mov    BYTE PTR [ecx+0xc],0x4
c000c94c:	04 c5                	add    al,0xc5
c000c94e:	00 00                	add    BYTE PTR [eax],al
c000c950:	28 00                	sub    BYTE PTR [eax],al
c000c952:	00 00                	add    BYTE PTR [eax],al
c000c954:	04 06                	add    al,0x6
c000c956:	00 00                	add    BYTE PTR [eax],al
c000c958:	13 92 00 c0 8b 00    	adc    edx,DWORD PTR [edx+0x8bc000]
c000c95e:	00 00                	add    BYTE PTR [eax],al
c000c960:	41                   	inc    ecx
c000c961:	0e                   	push   cs
c000c962:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000c968:	42                   	inc    edx
c000c969:	86 04 87             	xchg   BYTE PTR [edi+eax*4],al
c000c96c:	03 46 83             	add    eax,DWORD PTR [esi-0x7d]
c000c96f:	05 02 7c c3 41       	add    eax,0x41c37c02
c000c974:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c000c978:	0c 04                	or     al,0x4
c000c97a:	04 c5                	add    al,0xc5
c000c97c:	34 00                	xor    al,0x0
c000c97e:	00 00                	add    BYTE PTR [eax],al
c000c980:	30 06                	xor    BYTE PTR [esi],al
c000c982:	00 00                	add    BYTE PTR [eax],al
c000c984:	9e                   	sahf   
c000c985:	92                   	xchg   edx,eax
c000c986:	00 c0                	add    al,al
c000c988:	32 00                	xor    al,BYTE PTR [eax]
c000c98a:	00 00                	add    BYTE PTR [eax],al
c000c98c:	41                   	inc    ecx
c000c98d:	0e                   	push   cs
c000c98e:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000c994:	44                   	inc    esp
c000c995:	2e 0c 83             	cs or  al,0x83
c000c998:	03 44 2e 10          	add    eax,DWORD PTR [esi+ebp*1+0x10]
c000c99c:	46                   	inc    esi
c000c99d:	2e 0c 44             	cs or  al,0x44
c000c9a0:	2e 08 44 2e 0c       	or     BYTE PTR cs:[esi+ebp*1+0xc],al
c000c9a5:	41                   	inc    ecx
c000c9a6:	2e 10 57 c5          	adc    BYTE PTR cs:[edi-0x3b],dl
c000c9aa:	0c 04                	or     al,0x4
c000c9ac:	04 c3                	add    al,0xc3
c000c9ae:	41                   	inc    ecx
c000c9af:	13 03                	adc    eax,DWORD PTR [ebx]
c000c9b1:	2e 00 00             	add    BYTE PTR cs:[eax],al
c000c9b4:	28 00                	sub    BYTE PTR [eax],al
c000c9b6:	00 00                	add    BYTE PTR [eax],al
c000c9b8:	68 06 00 00 d0       	push   0xd0000006
c000c9bd:	92                   	xchg   edx,eax
c000c9be:	00 c0                	add    al,al
c000c9c0:	3c 01                	cmp    al,0x1
c000c9c2:	00 00                	add    BYTE PTR [eax],al
c000c9c4:	41                   	inc    ecx
c000c9c5:	0e                   	push   cs
c000c9c6:	08 85 02 44 0d 05    	or     BYTE PTR [ebp+0x50d4402],al
c000c9cc:	46                   	inc    esi
c000c9cd:	83 05 86 04 87 03 03 	add    DWORD PTR ds:0x3870486,0x3
c000c9d4:	2d 01 c3 41 c6       	sub    eax,0xc641c301
c000c9d9:	41                   	inc    ecx
c000c9da:	c7 41 0c 04 04 c5 38 	mov    DWORD PTR [ecx+0xc],0x38c50404
c000c9e1:	00 00                	add    BYTE PTR [eax],al
c000c9e3:	00 94 06 00 00 0c 94 	add    BYTE PTR [esi+eax*1-0x6bf40000],dl
c000c9ea:	00 c0                	add    al,al
c000c9ec:	36 00 00             	add    BYTE PTR ss:[eax],al
c000c9ef:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000c9f2:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000c9f8:	44                   	inc    esp
c000c9f9:	2e 0c 83             	cs or  al,0x83
c000c9fc:	03 44 2e 10          	add    eax,DWORD PTR [esi+ebp*1+0x10]
c000ca00:	4b                   	dec    ebx
c000ca01:	2e 04 04             	cs add al,0x4
c000ca04:	04 00                	add    al,0x0
c000ca06:	00 00                	add    BYTE PTR [eax],al
c000ca08:	2e 08 43 2e          	or     BYTE PTR cs:[ebx+0x2e],al
c000ca0c:	0c 41                	or     al,0x41
c000ca0e:	2e 10 57 c5          	adc    BYTE PTR cs:[edi-0x3b],dl
c000ca12:	0c 04                	or     al,0x4
c000ca14:	04 c3                	add    al,0xc3
c000ca16:	41                   	inc    ecx
c000ca17:	13 03                	adc    eax,DWORD PTR [ebx]
c000ca19:	2e 00 00             	add    BYTE PTR cs:[eax],al
c000ca1c:	1c 01                	sbb    al,0x1
c000ca1e:	00 00                	add    BYTE PTR [eax],al
c000ca20:	d0 06                	rol    BYTE PTR [esi],1
c000ca22:	00 00                	add    BYTE PTR [eax],al
c000ca24:	42                   	inc    edx
c000ca25:	94                   	xchg   esp,eax
c000ca26:	00 c0                	add    al,al
c000ca28:	b1 01                	mov    cl,0x1
c000ca2a:	00 00                	add    BYTE PTR [eax],al
c000ca2c:	41                   	inc    ecx
c000ca2d:	0e                   	push   cs
c000ca2e:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000ca34:	46                   	inc    esi
c000ca35:	83 05 86 04 87 03 63 	add    DWORD PTR ds:0x3870486,0x63
c000ca3c:	2e 04 04             	cs add al,0x4
c000ca3f:	01 00                	add    DWORD PTR [eax],eax
c000ca41:	00 00                	add    BYTE PTR [eax],al
c000ca43:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c000ca47:	0c 42                	or     al,0x42
c000ca49:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000ca4d:	00 46 2e             	add    BYTE PTR [esi+0x2e],al
c000ca50:	04 04                	add    al,0x4
c000ca52:	01 00                	add    DWORD PTR [eax],eax
c000ca54:	00 00                	add    BYTE PTR [eax],al
c000ca56:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c000ca5a:	0c 42                	or     al,0x42
c000ca5c:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000ca60:	04 04                	add    al,0x4
c000ca62:	02 00                	add    al,BYTE PTR [eax]
c000ca64:	00 00                	add    BYTE PTR [eax],al
c000ca66:	2e 08 42 2e          	or     BYTE PTR cs:[edx+0x2e],al
c000ca6a:	0c 42                	or     al,0x42
c000ca6c:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c000ca70:	0c 41                	or     al,0x41
c000ca72:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c000ca76:	0c 42                	or     al,0x42
c000ca78:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000ca7c:	04 04                	add    al,0x4
c000ca7e:	02 00                	add    al,BYTE PTR [eax]
c000ca80:	00 00                	add    BYTE PTR [eax],al
c000ca82:	2e 08 43 2e          	or     BYTE PTR cs:[ebx+0x2e],al
c000ca86:	0c 42                	or     al,0x42
c000ca88:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c000ca8c:	0c 41                	or     al,0x41
c000ca8e:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c000ca92:	0c 42                	or     al,0x42
c000ca94:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000ca98:	04 04                	add    al,0x4
c000ca9a:	02 00                	add    al,BYTE PTR [eax]
c000ca9c:	00 00                	add    BYTE PTR [eax],al
c000ca9e:	2e 08 43 2e          	or     BYTE PTR cs:[ebx+0x2e],al
c000caa2:	0c 42                	or     al,0x42
c000caa4:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c000caa8:	0c 41                	or     al,0x41
c000caaa:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c000caae:	0c 42                	or     al,0x42
c000cab0:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000cab4:	00 74 2e 04          	add    BYTE PTR [esi+ebp*1+0x4],dh
c000cab8:	04 05                	add    al,0x5
c000caba:	00 00                	add    BYTE PTR [eax],al
c000cabc:	00 2e                	add    BYTE PTR [esi],ch
c000cabe:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c000cac1:	0c 45                	or     al,0x45
c000cac3:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000cac7:	00 62 2e             	add    BYTE PTR [edx+0x2e],ah
c000caca:	04 04                	add    al,0x4
c000cacc:	01 00                	add    DWORD PTR [eax],eax
c000cace:	00 00                	add    BYTE PTR [eax],al
c000cad0:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c000cad4:	0c 45                	or     al,0x45
c000cad6:	2e 10 4c 2e 0c       	adc    BYTE PTR cs:[esi+ebp*1+0xc],cl
c000cadb:	43                   	inc    ebx
c000cadc:	2e 08 4a 2e          	or     BYTE PTR cs:[edx+0x2e],cl
c000cae0:	0c 47                	or     al,0x47
c000cae2:	2e 10 4f 2e          	adc    BYTE PTR cs:[edi+0x2e],cl
c000cae6:	0c 41                	or     al,0x41
c000cae8:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c000caec:	0c 45                	or     al,0x45
c000caee:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c000caf2:	0c 41                	or     al,0x41
c000caf4:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c000caf8:	0c 45                	or     al,0x45
c000cafa:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000cafe:	04 04                	add    al,0x4
c000cb00:	01 00                	add    DWORD PTR [eax],eax
c000cb02:	00 00                	add    BYTE PTR [eax],al
c000cb04:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c000cb08:	0c 45                	or     al,0x45
c000cb0a:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000cb0e:	04 04                	add    al,0x4
c000cb10:	01 00                	add    DWORD PTR [eax],eax
c000cb12:	00 00                	add    BYTE PTR [eax],al
c000cb14:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c000cb18:	0c 45                	or     al,0x45
c000cb1a:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000cb1e:	04 04                	add    al,0x4
c000cb20:	05 00 00 00 2e       	add    eax,0x2e000000
c000cb25:	08 45 2e             	or     BYTE PTR [ebp+0x2e],al
c000cb28:	0c 45                	or     al,0x45
c000cb2a:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000cb2e:	00 44 c3 41          	add    BYTE PTR [ebx+eax*8+0x41],al
c000cb32:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c000cb36:	0c 04                	or     al,0x4
c000cb38:	04 c5                	add    al,0xc5
c000cb3a:	00 00                	add    BYTE PTR [eax],al
c000cb3c:	1c 00                	sbb    al,0x0
c000cb3e:	00 00                	add    BYTE PTR [eax],al
c000cb40:	f0 07                	lock pop es
c000cb42:	00 00                	add    BYTE PTR [eax],al
c000cb44:	f3 95                	repz xchg ebp,eax
c000cb46:	00 c0                	add    al,al
c000cb48:	12 00                	adc    al,BYTE PTR [eax]
c000cb4a:	00 00                	add    BYTE PTR [eax],al
c000cb4c:	41                   	inc    ecx
c000cb4d:	0e                   	push   cs
c000cb4e:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000cb54:	44                   	inc    esp
c000cb55:	0c 04                	or     al,0x4
c000cb57:	04 c5                	add    al,0xc5
c000cb59:	00 00                	add    BYTE PTR [eax],al
c000cb5b:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c000cb5e:	00 00                	add    BYTE PTR [eax],al
c000cb60:	10 08                	adc    BYTE PTR [eax],cl
c000cb62:	00 00                	add    BYTE PTR [eax],al
c000cb64:	05 96 00 c0 22       	add    eax,0x22c00096
c000cb69:	00 00                	add    BYTE PTR [eax],al
c000cb6b:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000cb6e:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000cb74:	44                   	inc    esp
c000cb75:	0c 04                	or     al,0x4
c000cb77:	04 c5                	add    al,0xc5
c000cb79:	00 00                	add    BYTE PTR [eax],al
c000cb7b:	00 54 00 00          	add    BYTE PTR [eax+eax*1+0x0],dl
c000cb7f:	00 30                	add    BYTE PTR [eax],dh
c000cb81:	08 00                	or     BYTE PTR [eax],al
c000cb83:	00 27                	add    BYTE PTR [edi],ah
c000cb85:	96                   	xchg   esi,eax
c000cb86:	00 c0                	add    al,al
c000cb88:	72 00                	jb     c000cb8a <_edata+0x83a>
c000cb8a:	00 00                	add    BYTE PTR [eax],al
c000cb8c:	41                   	inc    ecx
c000cb8d:	0e                   	push   cs
c000cb8e:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000cb94:	46                   	inc    esi
c000cb95:	83 05 86 04 87 03 47 	add    DWORD PTR ds:0x3870486,0x47
c000cb9c:	2e 04 04             	cs add al,0x4
c000cb9f:	13 00                	adc    eax,DWORD PTR [eax]
c000cba1:	00 00                	add    BYTE PTR [eax],al
c000cba3:	2e 00 51 2e          	add    BYTE PTR cs:[ecx+0x2e],dl
c000cba7:	04 04                	add    al,0x4
c000cba9:	04 00                	add    al,0x0
c000cbab:	00 00                	add    BYTE PTR [eax],al
c000cbad:	2e 08 42 2e          	or     BYTE PTR cs:[edx+0x2e],al
c000cbb1:	0c 45                	or     al,0x45
c000cbb3:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000cbb7:	04 04                	add    al,0x4
c000cbb9:	11 00                	adc    DWORD PTR [eax],eax
c000cbbb:	00 00                	add    BYTE PTR [eax],al
c000cbbd:	2e 08 47 2e          	or     BYTE PTR cs:[edi+0x2e],al
c000cbc1:	0c 41                	or     al,0x41
c000cbc3:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000cbc7:	00 46 c3             	add    BYTE PTR [esi-0x3d],al
c000cbca:	41                   	inc    ecx
c000cbcb:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c000cbcf:	0c 04                	or     al,0x4
c000cbd1:	04 c5                	add    al,0xc5
c000cbd3:	00 60 00             	add    BYTE PTR [eax+0x0],ah
c000cbd6:	00 00                	add    BYTE PTR [eax],al
c000cbd8:	88 08                	mov    BYTE PTR [eax],cl
c000cbda:	00 00                	add    BYTE PTR [eax],al
c000cbdc:	99                   	cdq    
c000cbdd:	96                   	xchg   esi,eax
c000cbde:	00 c0                	add    al,al
c000cbe0:	7a 00                	jp     c000cbe2 <_edata+0x892>
c000cbe2:	00 00                	add    BYTE PTR [eax],al
c000cbe4:	41                   	inc    ecx
c000cbe5:	0e                   	push   cs
c000cbe6:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000cbec:	46                   	inc    esi
c000cbed:	83 05 86 04 87 03 64 	add    DWORD PTR ds:0x3870486,0x64
c000cbf4:	2e 04 04             	cs add al,0x4
c000cbf7:	01 00                	add    DWORD PTR [eax],eax
c000cbf9:	00 00                	add    BYTE PTR [eax],al
c000cbfb:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c000cbff:	0c 41                	or     al,0x41
c000cc01:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000cc05:	00 4b 2e             	add    BYTE PTR [ebx+0x2e],cl
c000cc08:	04 04                	add    al,0x4
c000cc0a:	01 00                	add    DWORD PTR [eax],eax
c000cc0c:	00 00                	add    BYTE PTR [eax],al
c000cc0e:	2e 08 42 2e          	or     BYTE PTR cs:[edx+0x2e],al
c000cc12:	0c 43                	or     al,0x43
c000cc14:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000cc18:	00 45 2e             	add    BYTE PTR [ebp+0x2e],al
c000cc1b:	04 04                	add    al,0x4
c000cc1d:	02 00                	add    al,BYTE PTR [eax]
c000cc1f:	00 00                	add    BYTE PTR [eax],al
c000cc21:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c000cc25:	0c 41                	or     al,0x41
c000cc27:	2e 10 4e 2e          	adc    BYTE PTR cs:[esi+0x2e],cl
c000cc2b:	00 4e c3             	add    BYTE PTR [esi-0x3d],cl
c000cc2e:	41                   	inc    ecx
c000cc2f:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c000cc33:	0c 04                	or     al,0x4
c000cc35:	04 c5                	add    al,0xc5
c000cc37:	00 70 00             	add    BYTE PTR [eax+0x0],dh
c000cc3a:	00 00                	add    BYTE PTR [eax],al
c000cc3c:	ec                   	in     al,dx
c000cc3d:	08 00                	or     BYTE PTR [eax],al
c000cc3f:	00 13                	add    BYTE PTR [ebx],dl
c000cc41:	97                   	xchg   edi,eax
c000cc42:	00 c0                	add    al,al
c000cc44:	4f                   	dec    edi
c000cc45:	00 00                	add    BYTE PTR [eax],al
c000cc47:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000cc4a:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000cc50:	42                   	inc    edx
c000cc51:	83 04 86 03          	add    DWORD PTR [esi+eax*4],0x3
c000cc55:	44                   	inc    esp
c000cc56:	2e 04 04             	cs add al,0x4
c000cc59:	01 00                	add    DWORD PTR [eax],eax
c000cc5b:	00 00                	add    BYTE PTR [eax],al
c000cc5d:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c000cc61:	0c 42                	or     al,0x42
c000cc63:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000cc67:	00 4a 2e             	add    BYTE PTR [edx+0x2e],cl
c000cc6a:	04 04                	add    al,0x4
c000cc6c:	01 00                	add    DWORD PTR [eax],eax
c000cc6e:	00 00                	add    BYTE PTR [eax],al
c000cc70:	2e 08 42 2e          	or     BYTE PTR cs:[edx+0x2e],al
c000cc74:	0c 41                	or     al,0x41
c000cc76:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000cc7a:	00 41 2e             	add    BYTE PTR [ecx+0x2e],al
c000cc7d:	04 04                	add    al,0x4
c000cc7f:	01 00                	add    DWORD PTR [eax],eax
c000cc81:	00 00                	add    BYTE PTR [eax],al
c000cc83:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c000cc87:	0c 42                	or     al,0x42
c000cc89:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000cc8d:	04 04                	add    al,0x4
c000cc8f:	02 00                	add    al,BYTE PTR [eax]
c000cc91:	00 00                	add    BYTE PTR [eax],al
c000cc93:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c000cc97:	0c 42                	or     al,0x42
c000cc99:	2e 10 4b c3          	adc    BYTE PTR cs:[ebx-0x3d],cl
c000cc9d:	41                   	inc    ecx
c000cc9e:	c6 41 0c 04          	mov    BYTE PTR [ecx+0xc],0x4
c000cca2:	04 c5                	add    al,0xc5
c000cca4:	41                   	inc    ecx
c000cca5:	13 03                	adc    eax,DWORD PTR [ebx]
c000cca7:	2e 00 00             	add    BYTE PTR cs:[eax],al
c000ccaa:	00 00                	add    BYTE PTR [eax],al
c000ccac:	3c 00                	cmp    al,0x0
c000ccae:	00 00                	add    BYTE PTR [eax],al
c000ccb0:	60                   	pusha  
c000ccb1:	09 00                	or     DWORD PTR [eax],eax
c000ccb3:	00 62 97             	add    BYTE PTR [edx-0x69],ah
c000ccb6:	00 c0                	add    al,al
c000ccb8:	34 00                	xor    al,0x0
c000ccba:	00 00                	add    BYTE PTR [eax],al
c000ccbc:	41                   	inc    ecx
c000ccbd:	0e                   	push   cs
c000ccbe:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000ccc4:	44                   	inc    esp
c000ccc5:	2e 08 83 03 44 2e 0c 	or     BYTE PTR cs:[ebx+0xc2e4403],al
c000cccc:	42                   	inc    edx
c000cccd:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000ccd1:	00 48 2e             	add    BYTE PTR [eax+0x2e],cl
c000ccd4:	04 04                	add    al,0x4
c000ccd6:	01 00                	add    DWORD PTR [eax],eax
c000ccd8:	00 00                	add    BYTE PTR [eax],al
c000ccda:	2e 08 42 2e          	or     BYTE PTR cs:[edx+0x2e],al
c000ccde:	0c 41                	or     al,0x41
c000cce0:	2e 10 4e 2e          	adc    BYTE PTR cs:[esi+0x2e],cl
c000cce4:	00 44 c5 0c          	add    BYTE PTR [ebp+eax*8+0xc],al
c000cce8:	04 04                	add    al,0x4
c000ccea:	c3                   	ret    
c000cceb:	00 8c 00 00 00 a0 09 	add    BYTE PTR [eax+eax*1+0x9a00000],cl
c000ccf2:	00 00                	add    BYTE PTR [eax],al
c000ccf4:	96                   	xchg   esi,eax
c000ccf5:	97                   	xchg   edi,eax
c000ccf6:	00 c0                	add    al,al
c000ccf8:	a4                   	movs   BYTE PTR es:[edi],BYTE PTR ds:[esi]
c000ccf9:	00 00                	add    BYTE PTR [eax],al
c000ccfb:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000ccfe:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000cd04:	41                   	inc    ecx
c000cd05:	87 03                	xchg   DWORD PTR [ebx],eax
c000cd07:	4a                   	dec    edx
c000cd08:	83 05 86 04 04 29 00 	add    DWORD PTR ds:0x29040486,0x0
c000cd0f:	00 00                	add    BYTE PTR [eax],al
c000cd11:	2e 04 04             	cs add al,0x4
c000cd14:	01 00                	add    DWORD PTR [eax],eax
c000cd16:	00 00                	add    BYTE PTR [eax],al
c000cd18:	2e 08 42 2e          	or     BYTE PTR cs:[edx+0x2e],al
c000cd1c:	0c 45                	or     al,0x45
c000cd1e:	2e 10 47 2e          	adc    BYTE PTR cs:[edi+0x2e],al
c000cd22:	00 45 2e             	add    BYTE PTR [ebp+0x2e],al
c000cd25:	04 04                	add    al,0x4
c000cd27:	05 00 00 00 2e       	add    eax,0x2e000000
c000cd2c:	08 45 2e             	or     BYTE PTR [ebp+0x2e],al
c000cd2f:	0c 45                	or     al,0x45
c000cd31:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000cd35:	00 41 2e             	add    BYTE PTR [ecx+0x2e],al
c000cd38:	04 04                	add    al,0x4
c000cd3a:	01 00                	add    DWORD PTR [eax],eax
c000cd3c:	00 00                	add    BYTE PTR [eax],al
c000cd3e:	2e 08 42 2e          	or     BYTE PTR cs:[edx+0x2e],al
c000cd42:	0c 41                	or     al,0x41
c000cd44:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000cd48:	00 4b 2e             	add    BYTE PTR [ebx+0x2e],cl
c000cd4b:	04 04                	add    al,0x4
c000cd4d:	05 00 00 00 2e       	add    eax,0x2e000000
c000cd52:	08 45 2e             	or     BYTE PTR [ebp+0x2e],al
c000cd55:	0c 45                	or     al,0x45
c000cd57:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000cd5b:	00 41 2e             	add    BYTE PTR [ecx+0x2e],al
c000cd5e:	04 04                	add    al,0x4
c000cd60:	01 00                	add    DWORD PTR [eax],eax
c000cd62:	00 00                	add    BYTE PTR [eax],al
c000cd64:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c000cd68:	0c 41                	or     al,0x41
c000cd6a:	2e 10 4b c3          	adc    BYTE PTR cs:[ebx-0x3d],cl
c000cd6e:	41                   	inc    ecx
c000cd6f:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c000cd73:	0c 04                	or     al,0x4
c000cd75:	04 c5                	add    al,0xc5
c000cd77:	41                   	inc    ecx
c000cd78:	13 03                	adc    eax,DWORD PTR [ebx]
c000cd7a:	2e 00 28             	add    BYTE PTR cs:[eax],ch
c000cd7d:	00 00                	add    BYTE PTR [eax],al
c000cd7f:	00 30                	add    BYTE PTR [eax],dh
c000cd81:	0a 00                	or     al,BYTE PTR [eax]
c000cd83:	00 3a                	add    BYTE PTR [edx],bh
c000cd85:	98                   	cwde   
c000cd86:	00 c0                	add    al,al
c000cd88:	22 00                	and    al,BYTE PTR [eax]
c000cd8a:	00 00                	add    BYTE PTR [eax],al
c000cd8c:	41                   	inc    ecx
c000cd8d:	0e                   	push   cs
c000cd8e:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000cd94:	41                   	inc    ecx
c000cd95:	83 03 44             	add    DWORD PTR [ebx],0x44
c000cd98:	2e 04 04             	cs add al,0x4
c000cd9b:	0c 00                	or     al,0x0
c000cd9d:	00 00                	add    BYTE PTR [eax],al
c000cd9f:	2e 00 4d c5          	add    BYTE PTR cs:[ebp-0x3b],cl
c000cda3:	0c 04                	or     al,0x4
c000cda5:	04 c3                	add    al,0xc3
c000cda7:	00 44 00 00          	add    BYTE PTR [eax+eax*1+0x0],al
c000cdab:	00 5c 0a 00          	add    BYTE PTR [edx+ecx*1+0x0],bl
c000cdaf:	00 5c 98 00          	add    BYTE PTR [eax+ebx*4+0x0],bl
c000cdb3:	c0 43 00 00          	rol    BYTE PTR [ebx+0x0],0x0
c000cdb7:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000cdba:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000cdc0:	41                   	inc    ecx
c000cdc1:	86 03                	xchg   BYTE PTR [ebx],al
c000cdc3:	45                   	inc    ebp
c000cdc4:	83 04 04 06          	add    DWORD PTR [esp+eax*1],0x6
c000cdc8:	00 00                	add    BYTE PTR [eax],al
c000cdca:	00 2e                	add    BYTE PTR [esi],ch
c000cdcc:	0c 46                	or     al,0x46
c000cdce:	2e 10 4a 2e          	adc    BYTE PTR cs:[edx+0x2e],cl
c000cdd2:	00 49 2e             	add    BYTE PTR [ecx+0x2e],cl
c000cdd5:	04 04                	add    al,0x4
c000cdd7:	05 00 00 00 2e       	add    eax,0x2e000000
c000cddc:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c000cddf:	0c 45                	or     al,0x45
c000cde1:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000cde5:	00 44 c3 41          	add    BYTE PTR [ebx+eax*8+0x41],al
c000cde9:	c6 41 0c 04          	mov    BYTE PTR [ecx+0xc],0x4
c000cded:	04 c5                	add    al,0xc5
c000cdef:	00 28                	add    BYTE PTR [eax],ch
c000cdf1:	00 00                	add    BYTE PTR [eax],al
c000cdf3:	00 a4 0a 00 00 9f 98 	add    BYTE PTR [edx+ecx*1-0x67610000],ah
c000cdfa:	00 c0                	add    al,al
c000cdfc:	26 00 00             	add    BYTE PTR es:[eax],al
c000cdff:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000ce02:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000ce08:	43                   	inc    ebx
c000ce09:	2e 08 55 2e          	or     BYTE PTR cs:[ebp+0x2e],dl
c000ce0d:	0c 41                	or     al,0x41
c000ce0f:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000ce13:	00 41 c5             	add    BYTE PTR [ecx-0x3b],al
c000ce16:	0c 04                	or     al,0x4
c000ce18:	04 00                	add    al,0x0
c000ce1a:	00 00                	add    BYTE PTR [eax],al
c000ce1c:	98                   	cwde   
c000ce1d:	00 00                	add    BYTE PTR [eax],al
c000ce1f:	00 d0                	add    al,dl
c000ce21:	0a 00                	or     al,BYTE PTR [eax]
c000ce23:	00 c5                	add    ch,al
c000ce25:	98                   	cwde   
c000ce26:	00 c0                	add    al,al
c000ce28:	da 00                	fiadd  DWORD PTR [eax]
c000ce2a:	00 00                	add    BYTE PTR [eax],al
c000ce2c:	41                   	inc    ecx
c000ce2d:	0e                   	push   cs
c000ce2e:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000ce34:	46                   	inc    esi
c000ce35:	83 05 86 04 87 03 58 	add    DWORD PTR ds:0x3870486,0x58
c000ce3c:	2e 04 04             	cs add al,0x4
c000ce3f:	04 00                	add    al,0x0
c000ce41:	00 00                	add    BYTE PTR [eax],al
c000ce43:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c000ce47:	0c 41                	or     al,0x41
c000ce49:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000ce4d:	00 49 2e             	add    BYTE PTR [ecx+0x2e],cl
c000ce50:	04 04                	add    al,0x4
c000ce52:	05 00 00 00 2e       	add    eax,0x2e000000
c000ce57:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c000ce5a:	0c 45                	or     al,0x45
c000ce5c:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000ce60:	00 46 2e             	add    BYTE PTR [esi+0x2e],al
c000ce63:	04 04                	add    al,0x4
c000ce65:	04 00                	add    al,0x0
c000ce67:	00 00                	add    BYTE PTR [eax],al
c000ce69:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c000ce6d:	0c 41                	or     al,0x41
c000ce6f:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000ce73:	00 49 2e             	add    BYTE PTR [ecx+0x2e],cl
c000ce76:	04 04                	add    al,0x4
c000ce78:	05 00 00 00 2e       	add    eax,0x2e000000
c000ce7d:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c000ce80:	0c 45                	or     al,0x45
c000ce82:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000ce86:	00 46 2e             	add    BYTE PTR [esi+0x2e],al
c000ce89:	04 04                	add    al,0x4
c000ce8b:	04 00                	add    al,0x0
c000ce8d:	00 00                	add    BYTE PTR [eax],al
c000ce8f:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c000ce93:	0c 41                	or     al,0x41
c000ce95:	2e 10 54 2e 00       	adc    BYTE PTR cs:[esi+ebp*1+0x0],dl
c000ce9a:	5a                   	pop    edx
c000ce9b:	2e 04 04             	cs add al,0x4
c000ce9e:	05 00 00 00 2e       	add    eax,0x2e000000
c000cea3:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c000cea6:	0c 45                	or     al,0x45
c000cea8:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000ceac:	00 47 c3             	add    BYTE PTR [edi-0x3d],al
c000ceaf:	41                   	inc    ecx
c000ceb0:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c000ceb4:	0c 04                	or     al,0x4
c000ceb6:	04 c5                	add    al,0xc5
c000ceb8:	64 00 00             	add    BYTE PTR fs:[eax],al
c000cebb:	00 6c 0b 00          	add    BYTE PTR [ebx+ecx*1+0x0],ch
c000cebf:	00 9f 99 00 c0 8c    	add    BYTE PTR [edi-0x733fff67],bl
c000cec5:	00 00                	add    BYTE PTR [eax],al
c000cec7:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000ceca:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000ced0:	46                   	inc    esi
c000ced1:	83 05 86 04 87 03 55 	add    DWORD PTR ds:0x3870486,0x55
c000ced8:	2e 04 04             	cs add al,0x4
c000cedb:	05 00 00 00 2e       	add    eax,0x2e000000
c000cee0:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c000cee3:	0c 45                	or     al,0x45
c000cee5:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000cee9:	00 43 2e             	add    BYTE PTR [ebx+0x2e],al
c000ceec:	0c 44                	or     al,0x44
c000ceee:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000cef2:	00 47 2e             	add    BYTE PTR [edi+0x2e],al
c000cef5:	0c 41                	or     al,0x41
c000cef7:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c000cefb:	0c 43                	or     al,0x43
c000cefd:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000cf01:	00 4f 2e             	add    BYTE PTR [edi+0x2e],cl
c000cf04:	04 04                	add    al,0x4
c000cf06:	05 00 00 00 2e       	add    eax,0x2e000000
c000cf0b:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c000cf0e:	0c 45                	or     al,0x45
c000cf10:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000cf14:	00 47 c3             	add    BYTE PTR [edi-0x3d],al
c000cf17:	41                   	inc    ecx
c000cf18:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c000cf1c:	0c 04                	or     al,0x4
c000cf1e:	04 c5                	add    al,0xc5
c000cf20:	40                   	inc    eax
c000cf21:	00 00                	add    BYTE PTR [eax],al
c000cf23:	00 d4                	add    ah,dl
c000cf25:	0b 00                	or     eax,DWORD PTR [eax]
c000cf27:	00 2b                	add    BYTE PTR [ebx],ch
c000cf29:	9a 00 c0 5b 00 00 00 	call   0x0:0x5bc000
c000cf30:	41                   	inc    ecx
c000cf31:	0e                   	push   cs
c000cf32:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000cf38:	42                   	inc    edx
c000cf39:	83 04 86 03          	add    DWORD PTR [esi+eax*4],0x3
c000cf3d:	51                   	push   ecx
c000cf3e:	2e 0c 44             	cs or  al,0x44
c000cf41:	2e 10 4d 2e          	adc    BYTE PTR cs:[ebp+0x2e],cl
c000cf45:	00 4d 2e             	add    BYTE PTR [ebp+0x2e],cl
c000cf48:	04 04                	add    al,0x4
c000cf4a:	05 00 00 00 2e       	add    eax,0x2e000000
c000cf4f:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c000cf52:	0c 45                	or     al,0x45
c000cf54:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000cf58:	00 50 c3             	add    BYTE PTR [eax-0x3d],dl
c000cf5b:	41                   	inc    ecx
c000cf5c:	c6 41 0c 04          	mov    BYTE PTR [ecx+0xc],0x4
c000cf60:	04 c5                	add    al,0xc5
c000cf62:	00 00                	add    BYTE PTR [eax],al
c000cf64:	54                   	push   esp
c000cf65:	00 00                	add    BYTE PTR [eax],al
c000cf67:	00 18                	add    BYTE PTR [eax],bl
c000cf69:	0c 00                	or     al,0x0
c000cf6b:	00 86 9a 00 c0 78    	add    BYTE PTR [esi+0x78c0009a],al
c000cf71:	00 00                	add    BYTE PTR [eax],al
c000cf73:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000cf76:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000cf7c:	42                   	inc    edx
c000cf7d:	83 04 86 03          	add    DWORD PTR [esi+eax*4],0x3
c000cf81:	53                   	push   ebx
c000cf82:	2e 04 04             	cs add al,0x4
c000cf85:	05 00 00 00 2e       	add    eax,0x2e000000
c000cf8a:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c000cf8d:	0c 45                	or     al,0x45
c000cf8f:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000cf93:	00 50 0a             	add    BYTE PTR [eax+0xa],dl
c000cf96:	c3                   	ret    
c000cf97:	41                   	inc    ecx
c000cf98:	c6 41 0c 04          	mov    BYTE PTR [ecx+0xc],0x4
c000cf9c:	04 c5                	add    al,0xc5
c000cf9e:	41                   	inc    ecx
c000cf9f:	0b 47 2e             	or     eax,DWORD PTR [edi+0x2e]
c000cfa2:	04 04                	add    al,0x4
c000cfa4:	05 00 00 00 2e       	add    eax,0x2e000000
c000cfa9:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c000cfac:	0c 45                	or     al,0x45
c000cfae:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000cfb2:	00 57 c3             	add    BYTE PTR [edi-0x3d],dl
c000cfb5:	41                   	inc    ecx
c000cfb6:	c6 41 0c 04          	mov    BYTE PTR [ecx+0xc],0x4
c000cfba:	04 c5                	add    al,0xc5
c000cfbc:	28 00                	sub    BYTE PTR [eax],al
c000cfbe:	00 00                	add    BYTE PTR [eax],al
c000cfc0:	70 0c                	jo     c000cfce <_edata+0xc7e>
c000cfc2:	00 00                	add    BYTE PTR [eax],al
c000cfc4:	18 9b 00 c0 1a 00    	sbb    BYTE PTR [ebx+0x1ac000],bl
c000cfca:	00 00                	add    BYTE PTR [eax],al
c000cfcc:	41                   	inc    ecx
c000cfcd:	0e                   	push   cs
c000cfce:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000cfd4:	41                   	inc    ecx
c000cfd5:	86 03                	xchg   BYTE PTR [ebx],al
c000cfd7:	44                   	inc    esp
c000cfd8:	83 04 04 0e          	add    DWORD PTR [esp+eax*1],0xe
c000cfdc:	00 00                	add    BYTE PTR [eax],al
c000cfde:	00 c3                	add    bl,al
c000cfe0:	41                   	inc    ecx
c000cfe1:	c6 41 0c 04          	mov    BYTE PTR [ecx+0xc],0x4
c000cfe5:	04 c5                	add    al,0xc5
c000cfe7:	00 38                	add    BYTE PTR [eax],bh
c000cfe9:	00 00                	add    BYTE PTR [eax],al
c000cfeb:	00 9c 0c 00 00 32 9b 	add    BYTE PTR [esp+ecx*1-0x64ce0000],bl
c000cff2:	00 c0                	add    al,al
c000cff4:	64 00 00             	add    BYTE PTR fs:[eax],al
c000cff7:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000cffa:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000d000:	44                   	inc    esp
c000d001:	2e 04 83             	cs add al,0x83
c000d004:	03 48 2e             	add    ecx,DWORD PTR [eax+0x2e]
c000d007:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c000d00a:	0c 41                	or     al,0x41
c000d00c:	2e 10 49 2e          	adc    BYTE PTR cs:[ecx+0x2e],cl
c000d010:	0c 41                	or     al,0x41
c000d012:	2e 08 43 2e          	or     BYTE PTR cs:[ebx+0x2e],al
c000d016:	0c 44                	or     al,0x44
c000d018:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000d01c:	00 78 c5             	add    BYTE PTR [eax-0x3b],bh
c000d01f:	0c 04                	or     al,0x4
c000d021:	04 c3                	add    al,0xc3
c000d023:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c000d026:	00 00                	add    BYTE PTR [eax],al
c000d028:	d8 0c 00             	fmul   DWORD PTR [eax+eax*1]
c000d02b:	00 96 9b 00 c0 0c    	add    BYTE PTR [esi+0xcc0009b],dl
c000d031:	00 00                	add    BYTE PTR [eax],al
c000d033:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000d036:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000d03c:	48                   	dec    eax
c000d03d:	0c 04                	or     al,0x4
c000d03f:	04 c5                	add    al,0xc5
c000d041:	00 00                	add    BYTE PTR [eax],al
c000d043:	00 40 00             	add    BYTE PTR [eax+0x0],al
c000d046:	00 00                	add    BYTE PTR [eax],al
c000d048:	f8                   	clc    
c000d049:	0c 00                	or     al,0x0
c000d04b:	00 a2 9b 00 c0 56    	add    BYTE PTR [edx+0x56c0009b],ah
c000d051:	00 00                	add    BYTE PTR [eax],al
c000d053:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000d056:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000d05c:	43                   	inc    ebx
c000d05d:	2e 0c 45             	cs or  al,0x45
c000d060:	2e 10 59 2e          	adc    BYTE PTR cs:[ecx+0x2e],bl
c000d064:	04 04                	add    al,0x4
c000d066:	02 00                	add    al,BYTE PTR [eax]
c000d068:	00 00                	add    BYTE PTR [eax],al
c000d06a:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c000d06e:	0c 41                	or     al,0x41
c000d070:	2e 10 59 2e          	adc    BYTE PTR cs:[ecx+0x2e],bl
c000d074:	0c 41                	or     al,0x41
c000d076:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c000d07a:	0c 45                	or     al,0x45
c000d07c:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000d080:	00 41 c5             	add    BYTE PTR [ecx-0x3b],al
c000d083:	0c 04                	or     al,0x4
c000d085:	04 00                	add    al,0x0
c000d087:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c000d08a:	00 00                	add    BYTE PTR [eax],al
c000d08c:	3c 0d                	cmp    al,0xd
c000d08e:	00 00                	add    BYTE PTR [eax],al
c000d090:	f8                   	clc    
c000d091:	9b                   	fwait
c000d092:	00 c0                	add    al,al
c000d094:	56                   	push   esi
c000d095:	00 00                	add    BYTE PTR [eax],al
c000d097:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000d09a:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000d0a0:	02 52 0c             	add    dl,BYTE PTR [edx+0xc]
c000d0a3:	04 04                	add    al,0x4
c000d0a5:	c5 00                	lds    eax,FWORD PTR [eax]
c000d0a7:	00 b8 00 00 00 5c    	add    BYTE PTR [eax+0x5c000000],bh
c000d0ad:	0d 00 00 4e 9c       	or     eax,0x9c4e0000
c000d0b2:	00 c0                	add    al,al
c000d0b4:	bf 00 00 00 41       	mov    edi,0x41000000
c000d0b9:	0e                   	push   cs
c000d0ba:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000d0c0:	41                   	inc    ecx
c000d0c1:	86 03                	xchg   BYTE PTR [ebx],al
c000d0c3:	47                   	inc    edi
c000d0c4:	2e 0c 42             	cs or  al,0x42
c000d0c7:	2e 10 83 04 04 0e 00 	adc    BYTE PTR cs:[ebx+0xe0404],al
c000d0ce:	00 00                	add    BYTE PTR [eax],al
c000d0d0:	2e 04 04             	cs add al,0x4
c000d0d3:	01 00                	add    DWORD PTR [eax],eax
c000d0d5:	00 00                	add    BYTE PTR [eax],al
c000d0d7:	2e 08 43 2e          	or     BYTE PTR cs:[ebx+0x2e],al
c000d0db:	0c 41                	or     al,0x41
c000d0dd:	2e 10 4a 2e          	adc    BYTE PTR cs:[edx+0x2e],cl
c000d0e1:	04 04                	add    al,0x4
c000d0e3:	03 00                	add    eax,DWORD PTR [eax]
c000d0e5:	00 00                	add    BYTE PTR [eax],al
c000d0e7:	2e 08 43 2e          	or     BYTE PTR cs:[ebx+0x2e],al
c000d0eb:	0c 44                	or     al,0x44
c000d0ed:	2e 10 4c 2e 0c       	adc    BYTE PTR cs:[esi+ebp*1+0xc],cl
c000d0f2:	41                   	inc    ecx
c000d0f3:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c000d0f7:	0c 45                	or     al,0x45
c000d0f9:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000d0fd:	00 49 2e             	add    BYTE PTR [ecx+0x2e],cl
c000d100:	04 04                	add    al,0x4
c000d102:	05 00 00 00 2e       	add    eax,0x2e000000
c000d107:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c000d10a:	0c 45                	or     al,0x45
c000d10c:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000d110:	00 41 2e             	add    BYTE PTR [ecx+0x2e],al
c000d113:	04 04                	add    al,0x4
c000d115:	01 00                	add    DWORD PTR [eax],eax
c000d117:	00 00                	add    BYTE PTR [eax],al
c000d119:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c000d11d:	0c 45                	or     al,0x45
c000d11f:	2e 10 49 2e          	adc    BYTE PTR cs:[ecx+0x2e],cl
c000d123:	0c 41                	or     al,0x41
c000d125:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c000d129:	0c 45                	or     al,0x45
c000d12b:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000d12f:	00 49 2e             	add    BYTE PTR [ecx+0x2e],cl
c000d132:	04 04                	add    al,0x4
c000d134:	05 00 00 00 2e       	add    eax,0x2e000000
c000d139:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c000d13c:	0c 45                	or     al,0x45
c000d13e:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000d142:	00 41 2e             	add    BYTE PTR [ecx+0x2e],al
c000d145:	04 04                	add    al,0x4
c000d147:	01 00                	add    DWORD PTR [eax],eax
c000d149:	00 00                	add    BYTE PTR [eax],al
c000d14b:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c000d14f:	0c 45                	or     al,0x45
c000d151:	2e 10 4b c3          	adc    BYTE PTR cs:[ebx-0x3d],cl
c000d155:	41                   	inc    ecx
c000d156:	c6 41 0c 04          	mov    BYTE PTR [ecx+0xc],0x4
c000d15a:	04 c5                	add    al,0xc5
c000d15c:	41                   	inc    ecx
c000d15d:	13 03                	adc    eax,DWORD PTR [ebx]
c000d15f:	2e 00 00             	add    BYTE PTR cs:[eax],al
c000d162:	00 00                	add    BYTE PTR [eax],al
c000d164:	cc                   	int3   
c000d165:	00 00                	add    BYTE PTR [eax],al
c000d167:	00 18                	add    BYTE PTR [eax],bl
c000d169:	0e                   	push   cs
c000d16a:	00 00                	add    BYTE PTR [eax],al
c000d16c:	0d 9d 00 c0 37       	or     eax,0x37c0009d
c000d171:	01 00                	add    DWORD PTR [eax],eax
c000d173:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000d176:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000d17c:	42                   	inc    edx
c000d17d:	83 04 86 03          	add    DWORD PTR [esi+eax*4],0x3
c000d181:	55                   	push   ebp
c000d182:	2e 04 04             	cs add al,0x4
c000d185:	05 00 00 00 2e       	add    eax,0x2e000000
c000d18a:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c000d18d:	0c 45                	or     al,0x45
c000d18f:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000d193:	00 48 2e             	add    BYTE PTR [eax+0x2e],cl
c000d196:	04 04                	add    al,0x4
c000d198:	01 00                	add    DWORD PTR [eax],eax
c000d19a:	00 00                	add    BYTE PTR [eax],al
c000d19c:	2e 08 44 2e 0c       	or     BYTE PTR cs:[esi+ebp*1+0xc],al
c000d1a1:	45                   	inc    ebp
c000d1a2:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000d1a6:	00 49 2e             	add    BYTE PTR [ecx+0x2e],cl
c000d1a9:	04 04                	add    al,0x4
c000d1ab:	05 00 00 00 2e       	add    eax,0x2e000000
c000d1b0:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c000d1b3:	0c 45                	or     al,0x45
c000d1b5:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000d1b9:	00 41 2e             	add    BYTE PTR [ecx+0x2e],al
c000d1bc:	04 04                	add    al,0x4
c000d1be:	01 00                	add    DWORD PTR [eax],eax
c000d1c0:	00 00                	add    BYTE PTR [eax],al
c000d1c2:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c000d1c6:	0c 45                	or     al,0x45
c000d1c8:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000d1cc:	00 4a 2e             	add    BYTE PTR [edx+0x2e],cl
c000d1cf:	0c 45                	or     al,0x45
c000d1d1:	2e 10 52 2e          	adc    BYTE PTR cs:[edx+0x2e],dl
c000d1d5:	00 49 2e             	add    BYTE PTR [ecx+0x2e],cl
c000d1d8:	04 04                	add    al,0x4
c000d1da:	05 00 00 00 2e       	add    eax,0x2e000000
c000d1df:	08 45 2e             	or     BYTE PTR [ebp+0x2e],al
c000d1e2:	0c 45                	or     al,0x45
c000d1e4:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000d1e8:	00 51 2e             	add    BYTE PTR [ecx+0x2e],dl
c000d1eb:	04 04                	add    al,0x4
c000d1ed:	05 00 00 00 2e       	add    eax,0x2e000000
c000d1f2:	08 45 2e             	or     BYTE PTR [ebp+0x2e],al
c000d1f5:	0c 45                	or     al,0x45
c000d1f7:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000d1fb:	00 43 2e             	add    BYTE PTR [ebx+0x2e],al
c000d1fe:	0c 45                	or     al,0x45
c000d200:	2e 10 5d 2e          	adc    BYTE PTR cs:[ebp+0x2e],bl
c000d204:	00 49 2e             	add    BYTE PTR [ecx+0x2e],cl
c000d207:	04 04                	add    al,0x4
c000d209:	01 00                	add    DWORD PTR [eax],eax
c000d20b:	00 00                	add    BYTE PTR [eax],al
c000d20d:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c000d211:	0c 42                	or     al,0x42
c000d213:	2e 10 50 2e          	adc    BYTE PTR cs:[eax+0x2e],dl
c000d217:	00 41 2e             	add    BYTE PTR [ecx+0x2e],al
c000d21a:	04 04                	add    al,0x4
c000d21c:	01 00                	add    DWORD PTR [eax],eax
c000d21e:	00 00                	add    BYTE PTR [eax],al
c000d220:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c000d224:	0c 41                	or     al,0x41
c000d226:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000d22a:	00 44 c3 41          	add    BYTE PTR [ebx+eax*8+0x41],al
c000d22e:	c6 41 0c 04          	mov    BYTE PTR [ecx+0xc],0x4
c000d232:	04 c5                	add    al,0xc5
c000d234:	38 00                	cmp    BYTE PTR [eax],al
c000d236:	00 00                	add    BYTE PTR [eax],al
c000d238:	e8 0e 00 00 44       	call   400d24b <AR_CODE32+0x40011b3>
c000d23d:	9e                   	sahf   
c000d23e:	00 c0                	add    al,al
c000d240:	4b                   	dec    ebx
c000d241:	00 00                	add    BYTE PTR [eax],al
c000d243:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000d246:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000d24c:	42                   	inc    edx
c000d24d:	83 04 86 03          	add    DWORD PTR [esi+eax*4],0x3
c000d251:	4d                   	dec    ebp
c000d252:	2e 04 04             	cs add al,0x4
c000d255:	05 00 00 00 2e       	add    eax,0x2e000000
c000d25a:	08 45 2e             	or     BYTE PTR [ebp+0x2e],al
c000d25d:	0c 45                	or     al,0x45
c000d25f:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000d263:	00 5b c3             	add    BYTE PTR [ebx-0x3d],bl
c000d266:	41                   	inc    ecx
c000d267:	c6 41 0c 04          	mov    BYTE PTR [ecx+0xc],0x4
c000d26b:	04 c5                	add    al,0xc5
c000d26d:	00 00                	add    BYTE PTR [eax],al
c000d26f:	00 88 00 00 00 24    	add    BYTE PTR [eax+0x24000000],cl
c000d275:	0f 00 00             	sldt   WORD PTR [eax]
c000d278:	8f                   	(bad)  
c000d279:	9e                   	sahf   
c000d27a:	00 c0                	add    al,al
c000d27c:	a2 00 00 00 41       	mov    ds:0x41000000,al
c000d281:	0e                   	push   cs
c000d282:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000d288:	46                   	inc    esi
c000d289:	83 05 86 04 87 03 51 	add    DWORD PTR ds:0x3870486,0x51
c000d290:	2e 04 04             	cs add al,0x4
c000d293:	01 00                	add    DWORD PTR [eax],eax
c000d295:	00 00                	add    BYTE PTR [eax],al
c000d297:	2e 08 44 2e 0c       	or     BYTE PTR cs:[esi+ebp*1+0xc],al
c000d29c:	45                   	inc    ebp
c000d29d:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000d2a1:	00 49 2e             	add    BYTE PTR [ecx+0x2e],cl
c000d2a4:	04 04                	add    al,0x4
c000d2a6:	05 00 00 00 2e       	add    eax,0x2e000000
c000d2ab:	08 45 2e             	or     BYTE PTR [ebp+0x2e],al
c000d2ae:	0c 45                	or     al,0x45
c000d2b0:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000d2b4:	00 41 2e             	add    BYTE PTR [ecx+0x2e],al
c000d2b7:	04 04                	add    al,0x4
c000d2b9:	01 00                	add    DWORD PTR [eax],eax
c000d2bb:	00 00                	add    BYTE PTR [eax],al
c000d2bd:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c000d2c1:	0c 45                	or     al,0x45
c000d2c3:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000d2c7:	00 49 2e             	add    BYTE PTR [ecx+0x2e],cl
c000d2ca:	04 04                	add    al,0x4
c000d2cc:	05 00 00 00 2e       	add    eax,0x2e000000
c000d2d1:	08 45 2e             	or     BYTE PTR [ebp+0x2e],al
c000d2d4:	0c 45                	or     al,0x45
c000d2d6:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000d2da:	00 41 2e             	add    BYTE PTR [ecx+0x2e],al
c000d2dd:	04 04                	add    al,0x4
c000d2df:	01 00                	add    DWORD PTR [eax],eax
c000d2e1:	00 00                	add    BYTE PTR [eax],al
c000d2e3:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c000d2e7:	0c 45                	or     al,0x45
c000d2e9:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000d2ed:	00 4e c3             	add    BYTE PTR [esi-0x3d],cl
c000d2f0:	41                   	inc    ecx
c000d2f1:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c000d2f5:	0c 04                	or     al,0x4
c000d2f7:	04 c5                	add    al,0xc5
c000d2f9:	00 00                	add    BYTE PTR [eax],al
c000d2fb:	00 2c 00             	add    BYTE PTR [eax+eax*1],ch
c000d2fe:	00 00                	add    BYTE PTR [eax],al
c000d300:	b0 0f                	mov    al,0xf
c000d302:	00 00                	add    BYTE PTR [eax],al
c000d304:	34 9f                	xor    al,0x9f
c000d306:	00 c0                	add    al,al
c000d308:	3e 00 00             	add    BYTE PTR ds:[eax],al
c000d30b:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000d30e:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000d314:	41                   	inc    ecx
c000d315:	87 03                	xchg   DWORD PTR [ebx],eax
c000d317:	44                   	inc    esp
c000d318:	86 04 04             	xchg   BYTE PTR [esp+eax*1],al
c000d31b:	06                   	push   es
c000d31c:	00 00                	add    BYTE PTR [eax],al
c000d31e:	00 83 05 6c c3 41    	add    BYTE PTR [ebx+0x41c36c05],al
c000d324:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c000d328:	0c 04                	or     al,0x4
c000d32a:	04 c5                	add    al,0xc5
c000d32c:	30 00                	xor    BYTE PTR [eax],al
c000d32e:	00 00                	add    BYTE PTR [eax],al
c000d330:	e0 0f                	loopne c000d341 <_edata+0xff1>
c000d332:	00 00                	add    BYTE PTR [eax],al
c000d334:	72 9f                	jb     c000d2d5 <_edata+0xf85>
c000d336:	00 c0                	add    al,al
c000d338:	99                   	cdq    
c000d339:	00 00                	add    BYTE PTR [eax],al
c000d33b:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000d33e:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000d344:	43                   	inc    ebx
c000d345:	2e 04 04             	cs add al,0x4
c000d348:	02 00                	add    al,BYTE PTR [eax]
c000d34a:	00 00                	add    BYTE PTR [eax],al
c000d34c:	2e 08 42 2e          	or     BYTE PTR cs:[edx+0x2e],al
c000d350:	0c 45                	or     al,0x45
c000d352:	2e 10 02             	adc    BYTE PTR cs:[edx],al
c000d355:	88 2e                	mov    BYTE PTR [esi],ch
c000d357:	00 41 c5             	add    BYTE PTR [ecx-0x3b],al
c000d35a:	0c 04                	or     al,0x4
c000d35c:	04 00                	add    al,0x0
c000d35e:	00 00                	add    BYTE PTR [eax],al
c000d360:	1c 00                	sbb    al,0x0
c000d362:	00 00                	add    BYTE PTR [eax],al
c000d364:	14 10                	adc    al,0x10
c000d366:	00 00                	add    BYTE PTR [eax],al
c000d368:	0b a0 00 c0 12 00    	or     esp,DWORD PTR [eax+0x12c000]
c000d36e:	00 00                	add    BYTE PTR [eax],al
c000d370:	41                   	inc    ecx
c000d371:	0e                   	push   cs
c000d372:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000d378:	44                   	inc    esp
c000d379:	0c 04                	or     al,0x4
c000d37b:	04 c5                	add    al,0xc5
c000d37d:	00 00                	add    BYTE PTR [eax],al
c000d37f:	00 38                	add    BYTE PTR [eax],bh
c000d381:	00 00                	add    BYTE PTR [eax],al
c000d383:	00 34 10             	add    BYTE PTR [eax+edx*1],dh
c000d386:	00 00                	add    BYTE PTR [eax],al
c000d388:	20 a0 00 c0 dd 00    	and    BYTE PTR [eax+0xddc000],ah
c000d38e:	00 00                	add    BYTE PTR [eax],al
c000d390:	41                   	inc    ecx
c000d391:	0e                   	push   cs
c000d392:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000d398:	42                   	inc    edx
c000d399:	83 04 86 03          	add    DWORD PTR [esi+eax*4],0x3
c000d39d:	02 a5 2e 04 04 01    	add    ah,BYTE PTR [ebp+0x104042e]
c000d3a3:	00 00                	add    BYTE PTR [eax],al
c000d3a5:	00 2e                	add    BYTE PTR [esi],ch
c000d3a7:	08 45 2e             	or     BYTE PTR [ebp+0x2e],al
c000d3aa:	0c 42                	or     al,0x42
c000d3ac:	2e 10 64 2e 00       	adc    BYTE PTR cs:[esi+ebp*1+0x0],ah
c000d3b1:	44                   	inc    esp
c000d3b2:	c3                   	ret    
c000d3b3:	41                   	inc    ecx
c000d3b4:	c6 41 0c 04          	mov    BYTE PTR [ecx+0xc],0x4
c000d3b8:	04 c5                	add    al,0xc5
c000d3ba:	00 00                	add    BYTE PTR [eax],al
c000d3bc:	3c 00                	cmp    al,0x0
c000d3be:	00 00                	add    BYTE PTR [eax],al
c000d3c0:	70 10                	jo     c000d3d2 <_edata+0x1082>
c000d3c2:	00 00                	add    BYTE PTR [eax],al
c000d3c4:	fd                   	std    
c000d3c5:	a0 00 c0 3d 00       	mov    al,ds:0x3dc000
c000d3ca:	00 00                	add    BYTE PTR [eax],al
c000d3cc:	41                   	inc    ecx
c000d3cd:	0e                   	push   cs
c000d3ce:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000d3d4:	42                   	inc    edx
c000d3d5:	83 03 4e             	add    DWORD PTR [ebx],0x4e
c000d3d8:	2e 04 04             	cs add al,0x4
c000d3db:	05 00 00 00 2e       	add    eax,0x2e000000
c000d3e0:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c000d3e3:	0c 45                	or     al,0x45
c000d3e5:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000d3e9:	00 43 2e             	add    BYTE PTR [ebx+0x2e],al
c000d3ec:	0c 43                	or     al,0x43
c000d3ee:	2e 10 4b 2e          	adc    BYTE PTR cs:[ebx+0x2e],cl
c000d3f2:	00 44 c5 0c          	add    BYTE PTR [ebp+eax*8+0xc],al
c000d3f6:	04 04                	add    al,0x4
c000d3f8:	c3                   	ret    
c000d3f9:	00 00                	add    BYTE PTR [eax],al
c000d3fb:	00 44 00 00          	add    BYTE PTR [eax+eax*1+0x0],al
c000d3ff:	00 b0 10 00 00 3a    	add    BYTE PTR [eax+0x3a000010],dh
c000d405:	a1 00 c0 48 00       	mov    eax,ds:0x48c000
c000d40a:	00 00                	add    BYTE PTR [eax],al
c000d40c:	41                   	inc    ecx
c000d40d:	0e                   	push   cs
c000d40e:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000d414:	42                   	inc    edx
c000d415:	83 03 4c             	add    DWORD PTR [ebx],0x4c
c000d418:	2e 04 04             	cs add al,0x4
c000d41b:	05 00 00 00 2e       	add    eax,0x2e000000
c000d420:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c000d423:	0c 45                	or     al,0x45
c000d425:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000d429:	00 43 2e             	add    BYTE PTR [ebx+0x2e],al
c000d42c:	0c 41                	or     al,0x41
c000d42e:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000d432:	00 4d 0a             	add    BYTE PTR [ebp+0xa],cl
c000d435:	c5 0c 04             	lds    ecx,FWORD PTR [esp+eax*1]
c000d438:	04 c3                	add    al,0xc3
c000d43a:	45                   	inc    ebp
c000d43b:	0b 44 c5 0c          	or     eax,DWORD PTR [ebp+eax*8+0xc]
c000d43f:	04 04                	add    al,0x4
c000d441:	c3                   	ret    
c000d442:	00 00                	add    BYTE PTR [eax],al
c000d444:	4c                   	dec    esp
c000d445:	00 00                	add    BYTE PTR [eax],al
c000d447:	00 f8                	add    al,bh
c000d449:	10 00                	adc    BYTE PTR [eax],al
c000d44b:	00 82 a1 00 c0 59    	add    BYTE PTR [edx+0x59c000a1],al
c000d451:	00 00                	add    BYTE PTR [eax],al
c000d453:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000d456:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000d45c:	44                   	inc    esp
c000d45d:	2e 0c 83             	cs or  al,0x83
c000d460:	03 42 2e             	add    eax,DWORD PTR [edx+0x2e]
c000d463:	10 48 2e             	adc    BYTE PTR [eax+0x2e],cl
c000d466:	00 47 2e             	add    BYTE PTR [edi+0x2e],al
c000d469:	04 04                	add    al,0x4
c000d46b:	01 00                	add    DWORD PTR [eax],eax
c000d46d:	00 00                	add    BYTE PTR [eax],al
c000d46f:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c000d473:	0c 42                	or     al,0x42
c000d475:	2e 10 47 2e          	adc    BYTE PTR cs:[edi+0x2e],al
c000d479:	00 41 2e             	add    BYTE PTR [ecx+0x2e],al
c000d47c:	04 04                	add    al,0x4
c000d47e:	05 00 00 00 2e       	add    eax,0x2e000000
c000d483:	08 45 2e             	or     BYTE PTR [ebp+0x2e],al
c000d486:	0c 47                	or     al,0x47
c000d488:	2e 10 5b 2e          	adc    BYTE PTR cs:[ebx+0x2e],bl
c000d48c:	00 44 c5 0c          	add    BYTE PTR [ebp+eax*8+0xc],al
c000d490:	04 04                	add    al,0x4
c000d492:	c3                   	ret    
c000d493:	00 30                	add    BYTE PTR [eax],dh
c000d495:	00 00                	add    BYTE PTR [eax],al
c000d497:	00 48 11             	add    BYTE PTR [eax+0x11],cl
c000d49a:	00 00                	add    BYTE PTR [eax],al
c000d49c:	db a1 00 c0 21 00    	(bad)  [ecx+0x21c000]
c000d4a2:	00 00                	add    BYTE PTR [eax],al
c000d4a4:	41                   	inc    ecx
c000d4a5:	0e                   	push   cs
c000d4a6:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000d4ac:	43                   	inc    ebx
c000d4ad:	2e 0c 42             	cs or  al,0x42
c000d4b0:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c000d4b4:	0c 41                	or     al,0x41
c000d4b6:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c000d4ba:	0c 47                	or     al,0x47
c000d4bc:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000d4c0:	00 41 c5             	add    BYTE PTR [ecx-0x3b],al
c000d4c3:	0c 04                	or     al,0x4
c000d4c5:	04 00                	add    al,0x0
c000d4c7:	00 ec                	add    ah,ch
c000d4c9:	00 00                	add    BYTE PTR [eax],al
c000d4cb:	00 7c 11 00          	add    BYTE PTR [ecx+edx*1+0x0],bh
c000d4cf:	00 fc                	add    ah,bh
c000d4d1:	a1 00 c0 14 01       	mov    eax,ds:0x114c000
c000d4d6:	00 00                	add    BYTE PTR [eax],al
c000d4d8:	41                   	inc    ecx
c000d4d9:	0e                   	push   cs
c000d4da:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000d4e0:	46                   	inc    esi
c000d4e1:	2e 0c 83             	cs or  al,0x83
c000d4e4:	05 86 04 87 03       	add    eax,0x3870486
c000d4e9:	45                   	inc    ebp
c000d4ea:	2e 10 4b 2e          	adc    BYTE PTR cs:[ebx+0x2e],cl
c000d4ee:	04 04                	add    al,0x4
c000d4f0:	02 00                	add    al,BYTE PTR [eax]
c000d4f2:	00 00                	add    BYTE PTR [eax],al
c000d4f4:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c000d4f8:	0c 43                	or     al,0x43
c000d4fa:	2e 10 50 2e          	adc    BYTE PTR cs:[eax+0x2e],dl
c000d4fe:	04 04                	add    al,0x4
c000d500:	01 00                	add    DWORD PTR [eax],eax
c000d502:	00 00                	add    BYTE PTR [eax],al
c000d504:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c000d508:	0c 41                	or     al,0x41
c000d50a:	2e 10 4e 2e          	adc    BYTE PTR cs:[esi+0x2e],cl
c000d50e:	0c 41                	or     al,0x41
c000d510:	2e 08 48 2e          	or     BYTE PTR cs:[eax+0x2e],cl
c000d514:	0c 42                	or     al,0x42
c000d516:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000d51a:	04 04                	add    al,0x4
c000d51c:	02 00                	add    al,BYTE PTR [eax]
c000d51e:	00 00                	add    BYTE PTR [eax],al
c000d520:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c000d524:	0c 42                	or     al,0x42
c000d526:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c000d52a:	0c 41                	or     al,0x41
c000d52c:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c000d530:	0c 42                	or     al,0x42
c000d532:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000d536:	04 04                	add    al,0x4
c000d538:	02 00                	add    al,BYTE PTR [eax]
c000d53a:	00 00                	add    BYTE PTR [eax],al
c000d53c:	2e 08 43 2e          	or     BYTE PTR cs:[ebx+0x2e],al
c000d540:	0c 42                	or     al,0x42
c000d542:	2e 10 53 2e          	adc    BYTE PTR cs:[ebx+0x2e],dl
c000d546:	0c 41                	or     al,0x41
c000d548:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c000d54c:	0c 45                	or     al,0x45
c000d54e:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000d552:	00 49 2e             	add    BYTE PTR [ecx+0x2e],cl
c000d555:	04 04                	add    al,0x4
c000d557:	05 00 00 00 2e       	add    eax,0x2e000000
c000d55c:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c000d55f:	0c 45                	or     al,0x45
c000d561:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000d565:	00 41 2e             	add    BYTE PTR [ecx+0x2e],al
c000d568:	04 04                	add    al,0x4
c000d56a:	04 00                	add    al,0x0
c000d56c:	00 00                	add    BYTE PTR [eax],al
c000d56e:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c000d572:	0c 45                	or     al,0x45
c000d574:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c000d578:	0c 41                	or     al,0x41
c000d57a:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c000d57e:	0c 45                	or     al,0x45
c000d580:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000d584:	00 49 2e             	add    BYTE PTR [ecx+0x2e],cl
c000d587:	04 04                	add    al,0x4
c000d589:	05 00 00 00 2e       	add    eax,0x2e000000
c000d58e:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c000d591:	0c 45                	or     al,0x45
c000d593:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000d597:	00 41 2e             	add    BYTE PTR [ecx+0x2e],al
c000d59a:	04 04                	add    al,0x4
c000d59c:	01 00                	add    DWORD PTR [eax],eax
c000d59e:	00 00                	add    BYTE PTR [eax],al
c000d5a0:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c000d5a4:	0c 45                	or     al,0x45
c000d5a6:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000d5aa:	00 47 c3             	add    BYTE PTR [edi-0x3d],al
c000d5ad:	41                   	inc    ecx
c000d5ae:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c000d5b2:	0c 04                	or     al,0x4
c000d5b4:	04 c5                	add    al,0xc5
c000d5b6:	00 00                	add    BYTE PTR [eax],al
c000d5b8:	24 00                	and    al,0x0
c000d5ba:	00 00                	add    BYTE PTR [eax],al
c000d5bc:	6c                   	ins    BYTE PTR es:[edi],dx
c000d5bd:	12 00                	adc    al,BYTE PTR [eax]
c000d5bf:	00 10                	add    BYTE PTR [eax],dl
c000d5c1:	a3 00 c0 15 00       	mov    ds:0x15c000,eax
c000d5c6:	00 00                	add    BYTE PTR [eax],al
c000d5c8:	41                   	inc    ecx
c000d5c9:	0e                   	push   cs
c000d5ca:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000d5d0:	43                   	inc    ebx
c000d5d1:	2e 0c 45             	cs or  al,0x45
c000d5d4:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000d5d8:	00 41 c5             	add    BYTE PTR [ecx-0x3b],al
c000d5db:	0c 04                	or     al,0x4
c000d5dd:	04 00                	add    al,0x0
c000d5df:	00 3c 00             	add    BYTE PTR [eax+eax*1],bh
c000d5e2:	00 00                	add    BYTE PTR [eax],al
c000d5e4:	94                   	xchg   esp,eax
c000d5e5:	12 00                	adc    al,BYTE PTR [eax]
c000d5e7:	00 25 a3 00 c0 3e    	add    BYTE PTR ds:0x3ec000a3,ah
c000d5ed:	00 00                	add    BYTE PTR [eax],al
c000d5ef:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000d5f2:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000d5f8:	41                   	inc    ecx
c000d5f9:	86 03                	xchg   BYTE PTR [ebx],al
c000d5fb:	44                   	inc    esp
c000d5fc:	83 04 04 06          	add    DWORD PTR [esp+eax*1],0x6
c000d600:	00 00                	add    BYTE PTR [eax],al
c000d602:	00 2e                	add    BYTE PTR [esi],ch
c000d604:	0c 45                	or     al,0x45
c000d606:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c000d60a:	0c 41                	or     al,0x41
c000d60c:	2e 08 46 2e          	or     BYTE PTR cs:[esi+0x2e],al
c000d610:	0c 44                	or     al,0x44
c000d612:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000d616:	00 4b c3             	add    BYTE PTR [ebx-0x3d],cl
c000d619:	41                   	inc    ecx
c000d61a:	c6 41 0c 04          	mov    BYTE PTR [ecx+0xc],0x4
c000d61e:	04 c5                	add    al,0xc5
c000d620:	3c 00                	cmp    al,0x0
c000d622:	00 00                	add    BYTE PTR [eax],al
c000d624:	d4 12                	aam    0x12
c000d626:	00 00                	add    BYTE PTR [eax],al
c000d628:	63 a3 00 c0 39 00    	arpl   WORD PTR [ebx+0x39c000],sp
c000d62e:	00 00                	add    BYTE PTR [eax],al
c000d630:	41                   	inc    ecx
c000d631:	0e                   	push   cs
c000d632:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000d638:	41                   	inc    ecx
c000d639:	86 03                	xchg   BYTE PTR [ebx],al
c000d63b:	44                   	inc    esp
c000d63c:	83 04 04 06          	add    DWORD PTR [esp+eax*1],0x6
c000d640:	00 00                	add    BYTE PTR [eax],al
c000d642:	00 2e                	add    BYTE PTR [esi],ch
c000d644:	0c 45                	or     al,0x45
c000d646:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c000d64a:	0c 41                	or     al,0x41
c000d64c:	2e 08 44 2e 0c       	or     BYTE PTR cs:[esi+ebp*1+0xc],al
c000d651:	41                   	inc    ecx
c000d652:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000d656:	00 4b c3             	add    BYTE PTR [ebx-0x3d],cl
c000d659:	41                   	inc    ecx
c000d65a:	c6 41 0c 04          	mov    BYTE PTR [ecx+0xc],0x4
c000d65e:	04 c5                	add    al,0xc5
c000d660:	40                   	inc    eax
c000d661:	00 00                	add    BYTE PTR [eax],al
c000d663:	00 14 13             	add    BYTE PTR [ebx+edx*1],dl
c000d666:	00 00                	add    BYTE PTR [eax],al
c000d668:	9c                   	pushf  
c000d669:	a3 00 c0 40 00       	mov    ds:0x40c000,eax
c000d66e:	00 00                	add    BYTE PTR [eax],al
c000d670:	41                   	inc    ecx
c000d671:	0e                   	push   cs
c000d672:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000d678:	46                   	inc    esi
c000d679:	2e 0c 83             	cs or  al,0x83
c000d67c:	05 86 04 87 03       	add    eax,0x3870486
c000d681:	4e                   	dec    esi
c000d682:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000d686:	04 04                	add    al,0x4
c000d688:	01 00                	add    DWORD PTR [eax],eax
c000d68a:	00 00                	add    BYTE PTR [eax],al
c000d68c:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c000d690:	0c 44                	or     al,0x44
c000d692:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000d696:	00 4b c3             	add    BYTE PTR [ebx-0x3d],cl
c000d699:	41                   	inc    ecx
c000d69a:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c000d69e:	0c 04                	or     al,0x4
c000d6a0:	04 c5                	add    al,0xc5
c000d6a2:	00 00                	add    BYTE PTR [eax],al
c000d6a4:	40                   	inc    eax
c000d6a5:	00 00                	add    BYTE PTR [eax],al
c000d6a7:	00 58 13             	add    BYTE PTR [eax+0x13],bl
c000d6aa:	00 00                	add    BYTE PTR [eax],al
c000d6ac:	dc a3 00 c0 40 00    	fsub   QWORD PTR [ebx+0x40c000]
c000d6b2:	00 00                	add    BYTE PTR [eax],al
c000d6b4:	41                   	inc    ecx
c000d6b5:	0e                   	push   cs
c000d6b6:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000d6bc:	46                   	inc    esi
c000d6bd:	2e 0c 83             	cs or  al,0x83
c000d6c0:	05 86 04 87 03       	add    eax,0x3870486
c000d6c5:	4e                   	dec    esi
c000d6c6:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000d6ca:	04 04                	add    al,0x4
c000d6cc:	01 00                	add    DWORD PTR [eax],eax
c000d6ce:	00 00                	add    BYTE PTR [eax],al
c000d6d0:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c000d6d4:	0c 44                	or     al,0x44
c000d6d6:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000d6da:	00 4b c3             	add    BYTE PTR [ebx-0x3d],cl
c000d6dd:	41                   	inc    ecx
c000d6de:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c000d6e2:	0c 04                	or     al,0x4
c000d6e4:	04 c5                	add    al,0xc5
c000d6e6:	00 00                	add    BYTE PTR [eax],al
c000d6e8:	3c 00                	cmp    al,0x0
c000d6ea:	00 00                	add    BYTE PTR [eax],al
c000d6ec:	9c                   	pushf  
c000d6ed:	13 00                	adc    eax,DWORD PTR [eax]
c000d6ef:	00 1c a4             	add    BYTE PTR [esp+eiz*4],bl
c000d6f2:	00 c0                	add    al,al
c000d6f4:	66 00 00             	data16 add BYTE PTR [eax],al
c000d6f7:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000d6fa:	08 85 02 44 0d 05    	or     BYTE PTR [ebp+0x50d4402],al
c000d700:	48                   	dec    eax
c000d701:	83 05 86 04 87 03 67 	add    DWORD PTR ds:0x3870486,0x67
c000d708:	2e 04 04             	cs add al,0x4
c000d70b:	01 00                	add    DWORD PTR [eax],eax
c000d70d:	00 00                	add    BYTE PTR [eax],al
c000d70f:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c000d713:	0c 42                	or     al,0x42
c000d715:	2e 10 5e 2e          	adc    BYTE PTR cs:[esi+0x2e],bl
c000d719:	00 4c c3 41          	add    BYTE PTR [ebx+eax*8+0x41],cl
c000d71d:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c000d721:	0c 04                	or     al,0x4
c000d723:	04 c5                	add    al,0xc5
c000d725:	00 00                	add    BYTE PTR [eax],al
c000d727:	00 3c 00             	add    BYTE PTR [eax+eax*1],bh
c000d72a:	00 00                	add    BYTE PTR [eax],al
c000d72c:	dc 13                	fcom   QWORD PTR [ebx]
c000d72e:	00 00                	add    BYTE PTR [eax],al
c000d730:	82                   	(bad)  
c000d731:	a4                   	movs   BYTE PTR es:[edi],BYTE PTR ds:[esi]
c000d732:	00 c0                	add    al,al
c000d734:	66 00 00             	data16 add BYTE PTR [eax],al
c000d737:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000d73a:	08 85 02 44 0d 05    	or     BYTE PTR [ebp+0x50d4402],al
c000d740:	48                   	dec    eax
c000d741:	83 05 86 04 87 03 67 	add    DWORD PTR ds:0x3870486,0x67
c000d748:	2e 04 04             	cs add al,0x4
c000d74b:	01 00                	add    DWORD PTR [eax],eax
c000d74d:	00 00                	add    BYTE PTR [eax],al
c000d74f:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c000d753:	0c 42                	or     al,0x42
c000d755:	2e 10 5e 2e          	adc    BYTE PTR cs:[esi+0x2e],bl
c000d759:	00 4c c3 41          	add    BYTE PTR [ebx+eax*8+0x41],cl
c000d75d:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c000d761:	0c 04                	or     al,0x4
c000d763:	04 c5                	add    al,0xc5
c000d765:	00 00                	add    BYTE PTR [eax],al
c000d767:	00 2c 00             	add    BYTE PTR [eax+eax*1],ch
c000d76a:	00 00                	add    BYTE PTR [eax],al
c000d76c:	1c 14                	sbb    al,0x14
c000d76e:	00 00                	add    BYTE PTR [eax],al
c000d770:	e8 a4 00 c0 1e       	call   dec0d819 <_kernel_end+0x1ebdf0b1>
c000d775:	00 00                	add    BYTE PTR [eax],al
c000d777:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000d77a:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000d780:	45                   	inc    ebp
c000d781:	2e 04 04             	cs add al,0x4
c000d784:	02 00                	add    al,BYTE PTR [eax]
c000d786:	00 00                	add    BYTE PTR [eax],al
c000d788:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c000d78c:	0c 45                	or     al,0x45
c000d78e:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000d792:	00 41 c5             	add    BYTE PTR [ecx-0x3b],al
c000d795:	0c 04                	or     al,0x4
c000d797:	04 50                	add    al,0x50
c000d799:	00 00                	add    BYTE PTR [eax],al
c000d79b:	00 4c 14 00          	add    BYTE PTR [esp+edx*1+0x0],cl
c000d79f:	00 06                	add    BYTE PTR [esi],al
c000d7a1:	a5                   	movs   DWORD PTR es:[edi],DWORD PTR ds:[esi]
c000d7a2:	00 c0                	add    al,al
c000d7a4:	bf 01 00 00 41       	mov    edi,0x41000001
c000d7a9:	0e                   	push   cs
c000d7aa:	08 85 02 47 0d 05    	or     BYTE PTR [ebp+0x50d4702],al
c000d7b0:	46                   	inc    esi
c000d7b1:	83 03 03             	add    DWORD PTR [ebx],0x3
c000d7b4:	1d 01 2e 0c 45       	sbb    eax,0x450c2e01
c000d7b9:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000d7bd:	00 45 2e             	add    BYTE PTR [ebp+0x2e],al
c000d7c0:	04 04                	add    al,0x4
c000d7c2:	01 00                	add    DWORD PTR [eax],eax
c000d7c4:	00 00                	add    BYTE PTR [eax],al
c000d7c6:	2e 08 44 2e 0c       	or     BYTE PTR cs:[esi+ebp*1+0xc],al
c000d7cb:	45                   	inc    ebp
c000d7cc:	2e 10 47 2e          	adc    BYTE PTR cs:[edi+0x2e],al
c000d7d0:	00 02                	add    BYTE PTR [edx],al
c000d7d2:	5c                   	pop    esp
c000d7d3:	2e 04 04             	cs add al,0x4
c000d7d6:	01 00                	add    DWORD PTR [eax],eax
c000d7d8:	00 00                	add    BYTE PTR [eax],al
c000d7da:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c000d7de:	0c 42                	or     al,0x42
c000d7e0:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000d7e4:	00 44 c5 0c          	add    BYTE PTR [ebp+eax*8+0xc],al
c000d7e8:	04 04                	add    al,0x4
c000d7ea:	c3                   	ret    
c000d7eb:	00 28                	add    BYTE PTR [eax],ch
c000d7ed:	00 00                	add    BYTE PTR [eax],al
c000d7ef:	00 a0 14 00 00 c8    	add    BYTE PTR [eax-0x37ffffec],ah
c000d7f5:	a6                   	cmps   BYTE PTR ds:[esi],BYTE PTR es:[edi]
c000d7f6:	00 c0                	add    al,al
c000d7f8:	ac                   	lods   al,BYTE PTR ds:[esi]
c000d7f9:	00 00                	add    BYTE PTR [eax],al
c000d7fb:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000d7fe:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000d804:	42                   	inc    edx
c000d805:	86 04 87             	xchg   BYTE PTR [edi+eax*4],al
c000d808:	03 49 83             	add    ecx,DWORD PTR [ecx-0x7d]
c000d80b:	05 02 96 c3 41       	add    eax,0x41c39602
c000d810:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c000d814:	0c 04                	or     al,0x4
c000d816:	04 c5                	add    al,0xc5
c000d818:	1c 00                	sbb    al,0x0
c000d81a:	00 00                	add    BYTE PTR [eax],al
c000d81c:	cc                   	int3   
c000d81d:	14 00                	adc    al,0x0
c000d81f:	00 74 a7 00          	add    BYTE PTR [edi+eiz*4+0x0],dh
c000d823:	c0 18 00             	rcr    BYTE PTR [eax],0x0
c000d826:	00 00                	add    BYTE PTR [eax],al
c000d828:	41                   	inc    ecx
c000d829:	0e                   	push   cs
c000d82a:	08 85 02 47 0d 05    	or     BYTE PTR [ebp+0x50d4702],al
c000d830:	4f                   	dec    edi
c000d831:	0c 04                	or     al,0x4
c000d833:	04 c5                	add    al,0xc5
c000d835:	00 00                	add    BYTE PTR [eax],al
c000d837:	00 24 00             	add    BYTE PTR [eax+eax*1],ah
c000d83a:	00 00                	add    BYTE PTR [eax],al
c000d83c:	ec                   	in     al,dx
c000d83d:	14 00                	adc    al,0x0
c000d83f:	00 8c a7 00 c0 2f 00 	add    BYTE PTR [edi+eiz*4+0x2fc000],cl
c000d846:	00 00                	add    BYTE PTR [eax],al
c000d848:	41                   	inc    ecx
c000d849:	0e                   	push   cs
c000d84a:	08 85 02 47 0d 05    	or     BYTE PTR [ebp+0x50d4702],al
c000d850:	5c                   	pop    esp
c000d851:	0a c5                	or     al,ch
c000d853:	0c 04                	or     al,0x4
c000d855:	04 45                	add    al,0x45
c000d857:	0b 45 c5             	or     eax,DWORD PTR [ebp-0x3b]
c000d85a:	0c 04                	or     al,0x4
c000d85c:	04 00                	add    al,0x0
c000d85e:	00 00                	add    BYTE PTR [eax],al
c000d860:	2c 00                	sub    al,0x0
c000d862:	00 00                	add    BYTE PTR [eax],al
c000d864:	14 15                	adc    al,0x15
c000d866:	00 00                	add    BYTE PTR [eax],al
c000d868:	bc a7 00 c0 1a       	mov    esp,0x1ac000a7
c000d86d:	00 00                	add    BYTE PTR [eax],al
c000d86f:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000d872:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000d878:	43                   	inc    ebx
c000d879:	2e 04 04             	cs add al,0x4
c000d87c:	05 00 00 00 2e       	add    eax,0x2e000000
c000d881:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c000d884:	0c 43                	or     al,0x43
c000d886:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000d88a:	00 41 c5             	add    BYTE PTR [ecx-0x3b],al
c000d88d:	0c 04                	or     al,0x4
c000d88f:	04 1c                	add    al,0x1c
c000d891:	00 00                	add    BYTE PTR [eax],al
c000d893:	00 44 15 00          	add    BYTE PTR [ebp+edx*1+0x0],al
c000d897:	00 d6                	add    dh,dl
c000d899:	a7                   	cmps   DWORD PTR ds:[esi],DWORD PTR es:[edi]
c000d89a:	00 c0                	add    al,al
c000d89c:	23 00                	and    eax,DWORD PTR [eax]
c000d89e:	00 00                	add    BYTE PTR [eax],al
c000d8a0:	41                   	inc    ecx
c000d8a1:	0e                   	push   cs
c000d8a2:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000d8a8:	47                   	inc    edi
c000d8a9:	0c 04                	or     al,0x4
c000d8ab:	04 c5                	add    al,0xc5
c000d8ad:	00 00                	add    BYTE PTR [eax],al
c000d8af:	00 50 00             	add    BYTE PTR [eax+0x0],dl
c000d8b2:	00 00                	add    BYTE PTR [eax],al
c000d8b4:	64 15 00 00 f9 a7    	fs adc eax,0xa7f90000
c000d8ba:	00 c0                	add    al,al
c000d8bc:	be 00 00 00 41       	mov    esi,0x41000000
c000d8c1:	0e                   	push   cs
c000d8c2:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000d8c8:	42                   	inc    edx
c000d8c9:	86 04 87             	xchg   BYTE PTR [edi+eax*4],al
c000d8cc:	03 46 83             	add    eax,DWORD PTR [esi-0x7d]
c000d8cf:	05 5c 2e 04 04       	add    eax,0x4042e5c
c000d8d4:	05 00 00 00 2e       	add    eax,0x2e000000
c000d8d9:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c000d8dc:	0c 45                	or     al,0x45
c000d8de:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000d8e2:	00 02                	add    BYTE PTR [edx],al
c000d8e4:	4e                   	dec    esi
c000d8e5:	2e 04 04             	cs add al,0x4
c000d8e8:	02 00                	add    al,BYTE PTR [eax]
c000d8ea:	00 00                	add    BYTE PTR [eax],al
c000d8ec:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c000d8f0:	0c 41                	or     al,0x41
c000d8f2:	2e 10 4b 2e          	adc    BYTE PTR cs:[ebx+0x2e],cl
c000d8f6:	00 62 c3             	add    BYTE PTR [edx-0x3d],ah
c000d8f9:	41                   	inc    ecx
c000d8fa:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c000d8fe:	0c 04                	or     al,0x4
c000d900:	04 c5                	add    al,0xc5
c000d902:	00 00                	add    BYTE PTR [eax],al
c000d904:	3c 00                	cmp    al,0x0
c000d906:	00 00                	add    BYTE PTR [eax],al
c000d908:	b8 15 00 00 b7       	mov    eax,0xb7000015
c000d90d:	a8 00                	test   al,0x0
c000d90f:	c0 68 00 00          	shr    BYTE PTR [eax+0x0],0x0
c000d913:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000d916:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000d91c:	46                   	inc    esi
c000d91d:	83 05 86 04 87 03 53 	add    DWORD PTR ds:0x3870486,0x53
c000d924:	2e 04 04             	cs add al,0x4
c000d927:	05 00 00 00 2e       	add    eax,0x2e000000
c000d92c:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c000d92f:	0c 45                	or     al,0x45
c000d931:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000d935:	00 74 c3 41          	add    BYTE PTR [ebx+eax*8+0x41],dh
c000d939:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c000d93d:	0c 04                	or     al,0x4
c000d93f:	04 c5                	add    al,0xc5
c000d941:	00 00                	add    BYTE PTR [eax],al
c000d943:	00 30                	add    BYTE PTR [eax],dh
c000d945:	00 00                	add    BYTE PTR [eax],al
c000d947:	00 f8                	add    al,bh
c000d949:	15 00 00 20 a9       	adc    eax,0xa9200000
c000d94e:	00 c0                	add    al,al
c000d950:	6a 00                	push   0x0
c000d952:	00 00                	add    BYTE PTR [eax],al
c000d954:	41                   	inc    ecx
c000d955:	0e                   	push   cs
c000d956:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000d95c:	46                   	inc    esi
c000d95d:	2e 0c 83             	cs or  al,0x83
c000d960:	05 86 04 87 03       	add    eax,0x3870486
c000d965:	4d                   	dec    ebp
c000d966:	2e 10 4b 2e          	adc    BYTE PTR cs:[ebx+0x2e],cl
c000d96a:	00 02                	add    BYTE PTR [edx],al
c000d96c:	45                   	inc    ebp
c000d96d:	c3                   	ret    
c000d96e:	41                   	inc    ecx
c000d96f:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c000d973:	0c 04                	or     al,0x4
c000d975:	04 c5                	add    al,0xc5
c000d977:	00 58 00             	add    BYTE PTR [eax+0x0],bl
c000d97a:	00 00                	add    BYTE PTR [eax],al
c000d97c:	2c 16                	sub    al,0x16
c000d97e:	00 00                	add    BYTE PTR [eax],al
c000d980:	8a a9 00 c0 05 01    	mov    ch,BYTE PTR [ecx+0x105c000]
c000d986:	00 00                	add    BYTE PTR [eax],al
c000d988:	41                   	inc    ecx
c000d989:	0e                   	push   cs
c000d98a:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000d990:	46                   	inc    esi
c000d991:	83 05 86 04 87 03 53 	add    DWORD PTR ds:0x3870486,0x53
c000d998:	2e 0c 41             	cs or  al,0x41
c000d99b:	2e 10 64 2e 00       	adc    BYTE PTR cs:[esi+ebp*1+0x0],ah
c000d9a0:	67 2e 04 04          	addr16 cs add al,0x4
c000d9a4:	05 00 00 00 2e       	add    eax,0x2e000000
c000d9a9:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c000d9ac:	0c 45                	or     al,0x45
c000d9ae:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000d9b2:	00 02                	add    BYTE PTR [edx],al
c000d9b4:	64 2e 0c 41          	fs cs or al,0x41
c000d9b8:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000d9bc:	00 4a 2e             	add    BYTE PTR [edx+0x2e],cl
c000d9bf:	0c 43                	or     al,0x43
c000d9c1:	2e 10 4b c3          	adc    BYTE PTR cs:[ebx-0x3d],cl
c000d9c5:	41                   	inc    ecx
c000d9c6:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c000d9ca:	0c 04                	or     al,0x4
c000d9cc:	04 c5                	add    al,0xc5
c000d9ce:	41                   	inc    ecx
c000d9cf:	13 03                	adc    eax,DWORD PTR [ebx]
c000d9d1:	2e 00 00             	add    BYTE PTR cs:[eax],al
c000d9d4:	58                   	pop    eax
c000d9d5:	00 00                	add    BYTE PTR [eax],al
c000d9d7:	00 88 16 00 00 8f    	add    BYTE PTR [eax-0x70ffffea],cl
c000d9dd:	aa                   	stos   BYTE PTR es:[edi],al
c000d9de:	00 c0                	add    al,al
c000d9e0:	01 01                	add    DWORD PTR [ecx],eax
c000d9e2:	00 00                	add    BYTE PTR [eax],al
c000d9e4:	41                   	inc    ecx
c000d9e5:	0e                   	push   cs
c000d9e6:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000d9ec:	46                   	inc    esi
c000d9ed:	83 05 86 04 87 03 69 	add    DWORD PTR ds:0x3870486,0x69
c000d9f4:	2e 04 04             	cs add al,0x4
c000d9f7:	05 00 00 00 2e       	add    eax,0x2e000000
c000d9fc:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c000d9ff:	0c 45                	or     al,0x45
c000da01:	2e 10 47 2e          	adc    BYTE PTR cs:[edi+0x2e],al
c000da05:	00 43 2e             	add    BYTE PTR [ebx+0x2e],al
c000da08:	0c 41                	or     al,0x41
c000da0a:	2e 10 64 2e 00       	adc    BYTE PTR cs:[esi+ebp*1+0x0],ah
c000da0f:	02 71 2e             	add    dh,BYTE PTR [ecx+0x2e]
c000da12:	0c 41                	or     al,0x41
c000da14:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000da18:	00 4a 2e             	add    BYTE PTR [edx+0x2e],cl
c000da1b:	0c 41                	or     al,0x41
c000da1d:	2e 10 4b c3          	adc    BYTE PTR cs:[ebx-0x3d],cl
c000da21:	41                   	inc    ecx
c000da22:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c000da26:	0c 04                	or     al,0x4
c000da28:	04 c5                	add    al,0xc5
c000da2a:	41                   	inc    ecx
c000da2b:	13 03                	adc    eax,DWORD PTR [ebx]
c000da2d:	2e 00 00             	add    BYTE PTR cs:[eax],al
c000da30:	1c 00                	sbb    al,0x0
c000da32:	00 00                	add    BYTE PTR [eax],al
c000da34:	e4 16                	in     al,0x16
c000da36:	00 00                	add    BYTE PTR [eax],al
c000da38:	90                   	nop
c000da39:	ab                   	stos   DWORD PTR es:[edi],eax
c000da3a:	00 c0                	add    al,al
c000da3c:	14 00                	adc    al,0x0
c000da3e:	00 00                	add    BYTE PTR [eax],al
c000da40:	41                   	inc    ecx
c000da41:	0e                   	push   cs
c000da42:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000da48:	44                   	inc    esp
c000da49:	0c 04                	or     al,0x4
c000da4b:	04 c5                	add    al,0xc5
c000da4d:	00 00                	add    BYTE PTR [eax],al
c000da4f:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c000da52:	00 00                	add    BYTE PTR [eax],al
c000da54:	04 17                	add    al,0x17
c000da56:	00 00                	add    BYTE PTR [eax],al
c000da58:	a4                   	movs   BYTE PTR es:[edi],BYTE PTR ds:[esi]
c000da59:	ab                   	stos   DWORD PTR es:[edi],eax
c000da5a:	00 c0                	add    al,al
c000da5c:	12 00                	adc    al,BYTE PTR [eax]
c000da5e:	00 00                	add    BYTE PTR [eax],al
c000da60:	41                   	inc    ecx
c000da61:	0e                   	push   cs
c000da62:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000da68:	44                   	inc    esp
c000da69:	0c 04                	or     al,0x4
c000da6b:	04 c5                	add    al,0xc5
c000da6d:	00 00                	add    BYTE PTR [eax],al
c000da6f:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c000da72:	00 00                	add    BYTE PTR [eax],al
c000da74:	24 17                	and    al,0x17
c000da76:	00 00                	add    BYTE PTR [eax],al
c000da78:	b8 ab 00 c0 1e       	mov    eax,0x1ec000ab
c000da7d:	00 00                	add    BYTE PTR [eax],al
c000da7f:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000da82:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000da88:	5a                   	pop    edx
c000da89:	0c 04                	or     al,0x4
c000da8b:	04 c5                	add    al,0xc5
c000da8d:	00 00                	add    BYTE PTR [eax],al
c000da8f:	00 28                	add    BYTE PTR [eax],ch
c000da91:	00 00                	add    BYTE PTR [eax],al
c000da93:	00 44 17 00          	add    BYTE PTR [edi+edx*1+0x0],al
c000da97:	00 d6                	add    dh,dl
c000da99:	ab                   	stos   DWORD PTR es:[edi],eax
c000da9a:	00 c0                	add    al,al
c000da9c:	29 00                	sub    DWORD PTR [eax],eax
c000da9e:	00 00                	add    BYTE PTR [eax],al
c000daa0:	41                   	inc    ecx
c000daa1:	0e                   	push   cs
c000daa2:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000daa8:	41                   	inc    ecx
c000daa9:	86 03                	xchg   BYTE PTR [ebx],al
c000daab:	44                   	inc    esp
c000daac:	83 04 04 1a          	add    DWORD PTR [esp+eax*1],0x1a
c000dab0:	00 00                	add    BYTE PTR [eax],al
c000dab2:	00 c3                	add    bl,al
c000dab4:	41                   	inc    ecx
c000dab5:	c6 41 0c 04          	mov    BYTE PTR [ecx+0xc],0x4
c000dab9:	04 c5                	add    al,0xc5
c000dabb:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c000dabe:	00 00                	add    BYTE PTR [eax],al
c000dac0:	70 17                	jo     c000dad9 <_edata+0x1789>
c000dac2:	00 00                	add    BYTE PTR [eax],al
c000dac4:	ff ab 00 c0 18 00    	jmp    FWORD PTR [ebx+0x18c000]
c000daca:	00 00                	add    BYTE PTR [eax],al
c000dacc:	41                   	inc    ecx
c000dacd:	0e                   	push   cs
c000dace:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000dad4:	50                   	push   eax
c000dad5:	0c 04                	or     al,0x4
c000dad7:	04 c5                	add    al,0xc5
c000dad9:	00 00                	add    BYTE PTR [eax],al
c000dadb:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c000dade:	00 00                	add    BYTE PTR [eax],al
c000dae0:	90                   	nop
c000dae1:	17                   	pop    ss
c000dae2:	00 00                	add    BYTE PTR [eax],al
c000dae4:	17                   	pop    ss
c000dae5:	ac                   	lods   al,BYTE PTR ds:[esi]
c000dae6:	00 c0                	add    al,al
c000dae8:	18 00                	sbb    BYTE PTR [eax],al
c000daea:	00 00                	add    BYTE PTR [eax],al
c000daec:	41                   	inc    ecx
c000daed:	0e                   	push   cs
c000daee:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000daf4:	50                   	push   eax
c000daf5:	0c 04                	or     al,0x4
c000daf7:	04 c5                	add    al,0xc5
c000daf9:	00 00                	add    BYTE PTR [eax],al
c000dafb:	00 20                	add    BYTE PTR [eax],ah
c000dafd:	00 00                	add    BYTE PTR [eax],al
c000daff:	00 b0 17 00 00 2f    	add    BYTE PTR [eax+0x2f000017],dh
c000db05:	ac                   	lods   al,BYTE PTR ds:[esi]
c000db06:	00 c0                	add    al,al
c000db08:	27                   	daa    
c000db09:	00 00                	add    BYTE PTR [eax],al
c000db0b:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000db0e:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000db14:	42                   	inc    edx
c000db15:	83 03 5c             	add    DWORD PTR [ebx],0x5c
c000db18:	c3                   	ret    
c000db19:	41                   	inc    ecx
c000db1a:	0c 04                	or     al,0x4
c000db1c:	04 c5                	add    al,0xc5
c000db1e:	00 00                	add    BYTE PTR [eax],al
c000db20:	28 00                	sub    BYTE PTR [eax],al
c000db22:	00 00                	add    BYTE PTR [eax],al
c000db24:	d4 17                	aam    0x17
c000db26:	00 00                	add    BYTE PTR [eax],al
c000db28:	56                   	push   esi
c000db29:	ac                   	lods   al,BYTE PTR ds:[esi]
c000db2a:	00 c0                	add    al,al
c000db2c:	1a 00                	sbb    al,BYTE PTR [eax]
c000db2e:	00 00                	add    BYTE PTR [eax],al
c000db30:	41                   	inc    ecx
c000db31:	0e                   	push   cs
c000db32:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000db38:	44                   	inc    esp
c000db39:	2e 0c 83             	cs or  al,0x83
c000db3c:	03 47 2e             	add    eax,DWORD PTR [edi+0x2e]
c000db3f:	10 4b c5             	adc    BYTE PTR [ebx-0x3b],cl
c000db42:	0c 04                	or     al,0x4
c000db44:	04 c3                	add    al,0xc3
c000db46:	41                   	inc    ecx
c000db47:	13 03                	adc    eax,DWORD PTR [ebx]
c000db49:	2e 00 00             	add    BYTE PTR cs:[eax],al
c000db4c:	1c 00                	sbb    al,0x0
c000db4e:	00 00                	add    BYTE PTR [eax],al
c000db50:	00 18                	add    BYTE PTR [eax],bl
c000db52:	00 00                	add    BYTE PTR [eax],al
c000db54:	70 ac                	jo     c000db02 <_edata+0x17b2>
c000db56:	00 c0                	add    al,al
c000db58:	27                   	daa    
c000db59:	00 00                	add    BYTE PTR [eax],al
c000db5b:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000db5e:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000db64:	63 0c 04             	arpl   WORD PTR [esp+eax*1],cx
c000db67:	04 c5                	add    al,0xc5
c000db69:	00 00                	add    BYTE PTR [eax],al
c000db6b:	00 3c 00             	add    BYTE PTR [eax+eax*1],bh
c000db6e:	00 00                	add    BYTE PTR [eax],al
c000db70:	20 18                	and    BYTE PTR [eax],bl
c000db72:	00 00                	add    BYTE PTR [eax],al
c000db74:	97                   	xchg   edi,eax
c000db75:	ac                   	lods   al,BYTE PTR ds:[esi]
c000db76:	00 c0                	add    al,al
c000db78:	38 00                	cmp    BYTE PTR [eax],al
c000db7a:	00 00                	add    BYTE PTR [eax],al
c000db7c:	41                   	inc    ecx
c000db7d:	0e                   	push   cs
c000db7e:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000db84:	46                   	inc    esi
c000db85:	83 05 86 04 87 03 4f 	add    DWORD PTR ds:0x3870486,0x4f
c000db8c:	2e 04 04             	cs add al,0x4
c000db8f:	01 00                	add    DWORD PTR [eax],eax
c000db91:	00 00                	add    BYTE PTR [eax],al
c000db93:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c000db97:	0c 41                	or     al,0x41
c000db99:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c000db9d:	00 53 c3             	add    BYTE PTR [ebx-0x3d],dl
c000dba0:	41                   	inc    ecx
c000dba1:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c000dba5:	0c 04                	or     al,0x4
c000dba7:	04 c5                	add    al,0xc5
c000dba9:	00 00                	add    BYTE PTR [eax],al
c000dbab:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c000dbae:	00 00                	add    BYTE PTR [eax],al
c000dbb0:	60                   	pusha  
c000dbb1:	18 00                	sbb    BYTE PTR [eax],al
c000dbb3:	00 cf                	add    bh,cl
c000dbb5:	ac                   	lods   al,BYTE PTR ds:[esi]
c000dbb6:	00 c0                	add    al,al
c000dbb8:	1a 00                	sbb    al,BYTE PTR [eax]
c000dbba:	00 00                	add    BYTE PTR [eax],al
c000dbbc:	41                   	inc    ecx
c000dbbd:	0e                   	push   cs
c000dbbe:	08 85 02 44 0d 05    	or     BYTE PTR [ebp+0x50d4402],al
c000dbc4:	54                   	push   esp
c000dbc5:	0c 04                	or     al,0x4
c000dbc7:	04 c5                	add    al,0xc5
c000dbc9:	00 00                	add    BYTE PTR [eax],al
c000dbcb:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c000dbce:	00 00                	add    BYTE PTR [eax],al
c000dbd0:	80 18 00             	sbb    BYTE PTR [eax],0x0
c000dbd3:	00 e9                	add    cl,ch
c000dbd5:	ac                   	lods   al,BYTE PTR ds:[esi]
c000dbd6:	00 c0                	add    al,al
c000dbd8:	14 00                	adc    al,0x0
c000dbda:	00 00                	add    BYTE PTR [eax],al
c000dbdc:	41                   	inc    ecx
c000dbdd:	0e                   	push   cs
c000dbde:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000dbe4:	44                   	inc    esp
c000dbe5:	0c 04                	or     al,0x4
c000dbe7:	04 c5                	add    al,0xc5
c000dbe9:	00 00                	add    BYTE PTR [eax],al
c000dbeb:	00 28                	add    BYTE PTR [eax],ch
c000dbed:	00 00                	add    BYTE PTR [eax],al
c000dbef:	00 a0 18 00 00 00    	add    BYTE PTR [eax+0x18],ah
c000dbf5:	ad                   	lods   eax,DWORD PTR ds:[esi]
c000dbf6:	00 c0                	add    al,al
c000dbf8:	5f                   	pop    edi
c000dbf9:	00 00                	add    BYTE PTR [eax],al
c000dbfb:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000dbfe:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000dc04:	45                   	inc    ebp
c000dc05:	86 04 87             	xchg   BYTE PTR [edi+eax*4],al
c000dc08:	03 44 83 05          	add    eax,DWORD PTR [ebx+eax*4+0x5]
c000dc0c:	02 4f c3             	add    cl,BYTE PTR [edi-0x3d]
c000dc0f:	41                   	inc    ecx
c000dc10:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c000dc14:	0c 04                	or     al,0x4
c000dc16:	04 c5                	add    al,0xc5
c000dc18:	28 00                	sub    BYTE PTR [eax],al
c000dc1a:	00 00                	add    BYTE PTR [eax],al
c000dc1c:	cc                   	int3   
c000dc1d:	18 00                	sbb    BYTE PTR [eax],al
c000dc1f:	00 5f ad             	add    BYTE PTR [edi-0x53],bl
c000dc22:	00 c0                	add    al,al
c000dc24:	44                   	inc    esp
c000dc25:	00 00                	add    BYTE PTR [eax],al
c000dc27:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000dc2a:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000dc30:	44                   	inc    esp
c000dc31:	86 03                	xchg   BYTE PTR [ebx],al
c000dc33:	47                   	inc    edi
c000dc34:	83 04 04 33          	add    DWORD PTR [esp+eax*1],0x33
c000dc38:	00 00                	add    BYTE PTR [eax],al
c000dc3a:	00 c3                	add    bl,al
c000dc3c:	41                   	inc    ecx
c000dc3d:	c6 41 0c 04          	mov    BYTE PTR [ecx+0xc],0x4
c000dc41:	04 c5                	add    al,0xc5
c000dc43:	00 20                	add    BYTE PTR [eax],ah
c000dc45:	00 00                	add    BYTE PTR [eax],al
c000dc47:	00 f8                	add    al,bh
c000dc49:	18 00                	sbb    BYTE PTR [eax],al
c000dc4b:	00 a3 ad 00 c0 3c    	add    BYTE PTR [ebx+0x3cc000ad],ah
c000dc51:	00 00                	add    BYTE PTR [eax],al
c000dc53:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000dc56:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000dc5c:	41                   	inc    ecx
c000dc5d:	83 03 76             	add    DWORD PTR [ebx],0x76
c000dc60:	c3                   	ret    
c000dc61:	41                   	inc    ecx
c000dc62:	0c 04                	or     al,0x4
c000dc64:	04 c5                	add    al,0xc5
c000dc66:	00 00                	add    BYTE PTR [eax],al
c000dc68:	20 00                	and    BYTE PTR [eax],al
c000dc6a:	00 00                	add    BYTE PTR [eax],al
c000dc6c:	1c 19                	sbb    al,0x19
c000dc6e:	00 00                	add    BYTE PTR [eax],al
c000dc70:	df ad 00 c0 2e 00    	fild   QWORD PTR [ebp+0x2ec000]
c000dc76:	00 00                	add    BYTE PTR [eax],al
c000dc78:	41                   	inc    ecx
c000dc79:	0e                   	push   cs
c000dc7a:	08 85 02 47 0d 05    	or     BYTE PTR [ebp+0x50d4702],al
c000dc80:	46                   	inc    esi
c000dc81:	83 03 5e             	add    DWORD PTR [ebx],0x5e
c000dc84:	c3                   	ret    
c000dc85:	41                   	inc    ecx
c000dc86:	0c 04                	or     al,0x4
c000dc88:	04 c5                	add    al,0xc5
c000dc8a:	00 00                	add    BYTE PTR [eax],al
c000dc8c:	1c 00                	sbb    al,0x0
c000dc8e:	00 00                	add    BYTE PTR [eax],al
c000dc90:	40                   	inc    eax
c000dc91:	19 00                	sbb    DWORD PTR [eax],eax
c000dc93:	00 0d ae 00 c0 27    	add    BYTE PTR ds:0x27c000ae,cl
c000dc99:	00 00                	add    BYTE PTR [eax],al
c000dc9b:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000dc9e:	08 85 02 47 0d 05    	or     BYTE PTR [ebp+0x50d4702],al
c000dca4:	5e                   	pop    esi
c000dca5:	0c 04                	or     al,0x4
c000dca7:	04 c5                	add    al,0xc5
c000dca9:	00 00                	add    BYTE PTR [eax],al
c000dcab:	00 2c 00             	add    BYTE PTR [eax+eax*1],ch
c000dcae:	00 00                	add    BYTE PTR [eax],al
c000dcb0:	60                   	pusha  
c000dcb1:	19 00                	sbb    DWORD PTR [eax],eax
c000dcb3:	00 34 ae             	add    BYTE PTR [esi+ebp*4],dh
c000dcb6:	00 c0                	add    al,al
c000dcb8:	a1 00 00 00 41       	mov    eax,ds:0x41000000
c000dcbd:	0e                   	push   cs
c000dcbe:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000dcc4:	42                   	inc    edx
c000dcc5:	83 03 02             	add    DWORD PTR [ebx],0x2
c000dcc8:	92                   	xchg   edx,eax
c000dcc9:	0a c3                	or     al,bl
c000dccb:	41                   	inc    ecx
c000dccc:	0c 04                	or     al,0x4
c000dcce:	04 c5                	add    al,0xc5
c000dcd0:	45                   	inc    ebp
c000dcd1:	0b 42 c3             	or     eax,DWORD PTR [edx-0x3d]
c000dcd4:	41                   	inc    ecx
c000dcd5:	0c 04                	or     al,0x4
c000dcd7:	04 c5                	add    al,0xc5
c000dcd9:	00 00                	add    BYTE PTR [eax],al
c000dcdb:	00 3c 00             	add    BYTE PTR [eax+eax*1],bh
c000dcde:	00 00                	add    BYTE PTR [eax],al
c000dce0:	90                   	nop
c000dce1:	19 00                	sbb    DWORD PTR [eax],eax
c000dce3:	00 d5                	add    ch,dl
c000dce5:	ae                   	scas   al,BYTE PTR es:[edi]
c000dce6:	00 c0                	add    al,al
c000dce8:	28 00                	sub    BYTE PTR [eax],al
c000dcea:	00 00                	add    BYTE PTR [eax],al
c000dcec:	41                   	inc    ecx
c000dced:	0e                   	push   cs
c000dcee:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000dcf4:	41                   	inc    ecx
c000dcf5:	86 03                	xchg   BYTE PTR [ebx],al
c000dcf7:	45                   	inc    ebp
c000dcf8:	83 04 04 0a          	add    DWORD PTR [esp+eax*1],0xa
c000dcfc:	00 00                	add    BYTE PTR [eax],al
c000dcfe:	00 2e                	add    BYTE PTR [esi],ch
c000dd00:	04 04                	add    al,0x4
c000dd02:	01 00                	add    DWORD PTR [eax],eax
c000dd04:	00 00                	add    BYTE PTR [eax],al
c000dd06:	2e 08 46 2e          	or     BYTE PTR cs:[esi+0x2e],al
c000dd0a:	04 04                	add    al,0x4
c000dd0c:	01 00                	add    DWORD PTR [eax],eax
c000dd0e:	00 00                	add    BYTE PTR [eax],al
c000dd10:	2e 00 4a c3          	add    BYTE PTR cs:[edx-0x3d],cl
c000dd14:	41                   	inc    ecx
c000dd15:	c6 41 0c 04          	mov    BYTE PTR [ecx+0xc],0x4
c000dd19:	04 c5                	add    al,0xc5
c000dd1b:	00 38                	add    BYTE PTR [eax],bh
c000dd1d:	00 00                	add    BYTE PTR [eax],al
c000dd1f:	00 d0                	add    al,dl
c000dd21:	19 00                	sbb    DWORD PTR [eax],eax
c000dd23:	00 fd                	add    ch,bh
c000dd25:	ae                   	scas   al,BYTE PTR es:[edi]
c000dd26:	00 c0                	add    al,al
c000dd28:	3a 00                	cmp    al,BYTE PTR [eax]
c000dd2a:	00 00                	add    BYTE PTR [eax],al
c000dd2c:	41                   	inc    ecx
c000dd2d:	0e                   	push   cs
c000dd2e:	08 85 02 44 0d 05    	or     BYTE PTR [ebp+0x50d4402],al
c000dd34:	47                   	inc    edi
c000dd35:	83 04 87 03          	add    DWORD PTR [edi+eax*4],0x3
c000dd39:	51                   	push   ecx
c000dd3a:	2e 04 04             	cs add al,0x4
c000dd3d:	04 00                	add    al,0x0
c000dd3f:	00 00                	add    BYTE PTR [eax],al
c000dd41:	2e 08 43 2e          	or     BYTE PTR cs:[ebx+0x2e],al
c000dd45:	0c 46                	or     al,0x46
c000dd47:	2e 10 41 2e          	adc    BYTE PTR cs:[ecx+0x2e],al
c000dd4b:	14 48                	adc    al,0x48
c000dd4d:	2e 00 44 c3 41       	add    BYTE PTR cs:[ebx+eax*8+0x41],al
c000dd52:	c7 41 0c 04 04 c5 38 	mov    DWORD PTR [ecx+0xc],0x38c50404
c000dd59:	00 00                	add    BYTE PTR [eax],al
c000dd5b:	00 0c 1a             	add    BYTE PTR [edx+ebx*1],cl
c000dd5e:	00 00                	add    BYTE PTR [eax],al
c000dd60:	37                   	aaa    
c000dd61:	af                   	scas   eax,DWORD PTR es:[edi]
c000dd62:	00 c0                	add    al,al
c000dd64:	3a 00                	cmp    al,BYTE PTR [eax]
c000dd66:	00 00                	add    BYTE PTR [eax],al
c000dd68:	41                   	inc    ecx
c000dd69:	0e                   	push   cs
c000dd6a:	08 85 02 44 0d 05    	or     BYTE PTR [ebp+0x50d4402],al
c000dd70:	47                   	inc    edi
c000dd71:	83 04 87 03          	add    DWORD PTR [edi+eax*4],0x3
c000dd75:	51                   	push   ecx
c000dd76:	2e 04 04             	cs add al,0x4
c000dd79:	04 00                	add    al,0x0
c000dd7b:	00 00                	add    BYTE PTR [eax],al
c000dd7d:	2e 08 43 2e          	or     BYTE PTR cs:[ebx+0x2e],al
c000dd81:	0c 46                	or     al,0x46
c000dd83:	2e 10 41 2e          	adc    BYTE PTR cs:[ecx+0x2e],al
c000dd87:	14 48                	adc    al,0x48
c000dd89:	2e 00 44 c3 41       	add    BYTE PTR cs:[ebx+eax*8+0x41],al
c000dd8e:	c7 41 0c 04 04 c5 38 	mov    DWORD PTR [ecx+0xc],0x38c50404
c000dd95:	00 00                	add    BYTE PTR [eax],al
c000dd97:	00 48 1a             	add    BYTE PTR [eax+0x1a],cl
c000dd9a:	00 00                	add    BYTE PTR [eax],al
c000dd9c:	74 af                	je     c000dd4d <_edata+0x19fd>
c000dd9e:	00 c0                	add    al,al
c000dda0:	47                   	inc    edi
c000dda1:	00 00                	add    BYTE PTR [eax],al
c000dda3:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000dda6:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000ddac:	45                   	inc    ebp
c000ddad:	83 04 86 03          	add    DWORD PTR [esi+eax*4],0x3
c000ddb1:	52                   	push   edx
c000ddb2:	2e 04 04             	cs add al,0x4
c000ddb5:	05 00 00 00 2e       	add    eax,0x2e000000
c000ddba:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c000ddbd:	0c 45                	or     al,0x45
c000ddbf:	2e 10 4e 2e          	adc    BYTE PTR cs:[esi+0x2e],cl
c000ddc3:	00 50 c3             	add    BYTE PTR [eax-0x3d],dl
c000ddc6:	41                   	inc    ecx
c000ddc7:	c6 41 0c 04          	mov    BYTE PTR [ecx+0xc],0x4
c000ddcb:	04 c5                	add    al,0xc5
c000ddcd:	00 00                	add    BYTE PTR [eax],al
c000ddcf:	00 3c 00             	add    BYTE PTR [eax+eax*1],bh
c000ddd2:	00 00                	add    BYTE PTR [eax],al
c000ddd4:	84 1a                	test   BYTE PTR [edx],bl
c000ddd6:	00 00                	add    BYTE PTR [eax],al
c000ddd8:	bb af 00 c0 4a       	mov    ebx,0x4ac000af
c000dddd:	00 00                	add    BYTE PTR [eax],al
c000dddf:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000dde2:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000dde8:	46                   	inc    esi
c000dde9:	83 05 86 04 87 03 56 	add    DWORD PTR ds:0x3870486,0x56
c000ddf0:	2e 04 04             	cs add al,0x4
c000ddf3:	05 00 00 00 2e       	add    eax,0x2e000000
c000ddf8:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c000ddfb:	0c 45                	or     al,0x45
c000ddfd:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000de01:	00 53 c3             	add    BYTE PTR [ebx-0x3d],dl
c000de04:	41                   	inc    ecx
c000de05:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c000de09:	0c 04                	or     al,0x4
c000de0b:	04 c5                	add    al,0xc5
c000de0d:	00 00                	add    BYTE PTR [eax],al
c000de0f:	00 3c 00             	add    BYTE PTR [eax+eax*1],bh
c000de12:	00 00                	add    BYTE PTR [eax],al
c000de14:	c4 1a                	les    ebx,FWORD PTR [edx]
c000de16:	00 00                	add    BYTE PTR [eax],al
c000de18:	05 b0 00 c0 42       	add    eax,0x42c000b0
c000de1d:	00 00                	add    BYTE PTR [eax],al
c000de1f:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000de22:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000de28:	41                   	inc    ecx
c000de29:	86 03                	xchg   BYTE PTR [ebx],al
c000de2b:	44                   	inc    esp
c000de2c:	83 04 04 10          	add    DWORD PTR [esp+eax*1],0x10
c000de30:	00 00                	add    BYTE PTR [eax],al
c000de32:	00 2e                	add    BYTE PTR [esi],ch
c000de34:	04 04                	add    al,0x4
c000de36:	05 00 00 00 2e       	add    eax,0x2e000000
c000de3b:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c000de3e:	0c 45                	or     al,0x45
c000de40:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c000de44:	00 53 c3             	add    BYTE PTR [ebx-0x3d],dl
c000de47:	41                   	inc    ecx
c000de48:	c6 41 0c 04          	mov    BYTE PTR [ecx+0xc],0x4
c000de4c:	04 c5                	add    al,0xc5
c000de4e:	00 00                	add    BYTE PTR [eax],al
c000de50:	20 00                	and    BYTE PTR [eax],al
c000de52:	00 00                	add    BYTE PTR [eax],al
c000de54:	04 1b                	add    al,0x1b
c000de56:	00 00                	add    BYTE PTR [eax],al
c000de58:	47                   	inc    edi
c000de59:	b0 00                	mov    al,0x0
c000de5b:	c0 1a 00             	rcr    BYTE PTR [edx],0x0
c000de5e:	00 00                	add    BYTE PTR [eax],al
c000de60:	41                   	inc    ecx
c000de61:	0e                   	push   cs
c000de62:	08 85 02 44 0d 05    	or     BYTE PTR [ebp+0x50d4402],al
c000de68:	44                   	inc    esp
c000de69:	83 03 4f             	add    DWORD PTR [ebx],0x4f
c000de6c:	c3                   	ret    
c000de6d:	41                   	inc    ecx
c000de6e:	0c 04                	or     al,0x4
c000de70:	04 c5                	add    al,0xc5
c000de72:	00 00                	add    BYTE PTR [eax],al
c000de74:	28 00                	sub    BYTE PTR [eax],al
c000de76:	00 00                	add    BYTE PTR [eax],al
c000de78:	28 1b                	sub    BYTE PTR [ebx],bl
c000de7a:	00 00                	add    BYTE PTR [eax],al
c000de7c:	64 b0 00             	fs mov al,0x0
c000de7f:	c0 4d 00 00          	ror    BYTE PTR [ebp+0x0],0x0
c000de83:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000de86:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000de8c:	49                   	dec    ecx
c000de8d:	83 05 86 04 87 03 7d 	add    DWORD PTR ds:0x3870486,0x7d
c000de94:	c3                   	ret    
c000de95:	41                   	inc    ecx
c000de96:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c000de9a:	0c 04                	or     al,0x4
c000de9c:	04 c5                	add    al,0xc5
c000de9e:	00 00                	add    BYTE PTR [eax],al
c000dea0:	1c 00                	sbb    al,0x0
c000dea2:	00 00                	add    BYTE PTR [eax],al
c000dea4:	54                   	push   esp
c000dea5:	1b 00                	sbb    eax,DWORD PTR [eax]
c000dea7:	00 b1 b0 00 c0 25    	add    BYTE PTR [ecx+0x25c000b0],dh
c000dead:	00 00                	add    BYTE PTR [eax],al
c000deaf:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000deb2:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000deb8:	61                   	popa   
c000deb9:	0c 04                	or     al,0x4
c000debb:	04 c5                	add    al,0xc5
c000debd:	00 00                	add    BYTE PTR [eax],al
c000debf:	00 a0 00 00 00 74    	add    BYTE PTR [eax+0x74000000],ah
c000dec5:	1b 00                	sbb    eax,DWORD PTR [eax]
c000dec7:	00 d6                	add    dh,dl
c000dec9:	b0 00                	mov    al,0x0
c000decb:	c0 f8 00             	sar    al,0x0
c000dece:	00 00                	add    BYTE PTR [eax],al
c000ded0:	41                   	inc    ecx
c000ded1:	0e                   	push   cs
c000ded2:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000ded8:	41                   	inc    ecx
c000ded9:	83 03 7e             	add    DWORD PTR [ebx],0x7e
c000dedc:	2e 04 04             	cs add al,0x4
c000dedf:	07                   	pop    es
c000dee0:	00 00                	add    BYTE PTR [eax],al
c000dee2:	00 2e                	add    BYTE PTR [esi],ch
c000dee4:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c000dee7:	0c 42                	or     al,0x42
c000dee9:	2e 10 45 2e          	adc    BYTE PTR cs:[ebp+0x2e],al
c000deed:	14 41                	adc    al,0x41
c000deef:	2e 18 51 2e          	sbb    BYTE PTR cs:[ecx+0x2e],dl
c000def3:	1c 48                	sbb    al,0x48
c000def5:	2e 20 41 2e          	and    BYTE PTR cs:[ecx+0x2e],al
c000def9:	24 42                	and    al,0x42
c000defb:	2e 28 45 2e          	sub    BYTE PTR cs:[ebp+0x2e],al
c000deff:	2c 41                	sub    al,0x41
c000df01:	2e 30 4d 2e          	xor    BYTE PTR cs:[ebp+0x2e],cl
c000df05:	00 47 2e             	add    BYTE PTR [edi+0x2e],al
c000df08:	04 04                	add    al,0x4
c000df0a:	02 00                	add    al,BYTE PTR [eax]
c000df0c:	00 00                	add    BYTE PTR [eax],al
c000df0e:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c000df12:	0c 42                	or     al,0x42
c000df14:	2e 10 45 2e          	adc    BYTE PTR cs:[ebp+0x2e],al
c000df18:	14 41                	adc    al,0x41
c000df1a:	2e 18 51 2e          	sbb    BYTE PTR cs:[ecx+0x2e],dl
c000df1e:	1c 42                	sbb    al,0x42
c000df20:	2e 20 41 2e          	and    BYTE PTR cs:[ecx+0x2e],al
c000df24:	24 42                	and    al,0x42
c000df26:	2e 28 45 2e          	sub    BYTE PTR cs:[ebp+0x2e],al
c000df2a:	2c 41                	sub    al,0x41
c000df2c:	2e 30 4d 2e          	xor    BYTE PTR cs:[ebp+0x2e],cl
c000df30:	00 47 2e             	add    BYTE PTR [edi+0x2e],al
c000df33:	04 04                	add    al,0x4
c000df35:	02 00                	add    al,BYTE PTR [eax]
c000df37:	00 00                	add    BYTE PTR [eax],al
c000df39:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c000df3d:	0c 42                	or     al,0x42
c000df3f:	2e 10 45 2e          	adc    BYTE PTR cs:[ebp+0x2e],al
c000df43:	14 41                	adc    al,0x41
c000df45:	2e 18 51 2e          	sbb    BYTE PTR cs:[ecx+0x2e],dl
c000df49:	1c 42                	sbb    al,0x42
c000df4b:	2e 20 41 2e          	and    BYTE PTR cs:[ecx+0x2e],al
c000df4f:	24 42                	and    al,0x42
c000df51:	2e 28 45 2e          	sub    BYTE PTR cs:[ebp+0x2e],al
c000df55:	2c 41                	sub    al,0x41
c000df57:	2e 30 48 2e          	xor    BYTE PTR cs:[eax+0x2e],cl
c000df5b:	00 44 c5 0c          	add    BYTE PTR [ebp+eax*8+0xc],al
c000df5f:	04 04                	add    al,0x4
c000df61:	c3                   	ret    
c000df62:	00 00                	add    BYTE PTR [eax],al
c000df64:	2c 00                	sub    al,0x0
c000df66:	00 00                	add    BYTE PTR [eax],al
c000df68:	18 1c 00             	sbb    BYTE PTR [eax+eax*1],bl
c000df6b:	00 ce                	add    dh,cl
c000df6d:	b1 00                	mov    cl,0x0
c000df6f:	c0 84 00 00 00 41 0e 	rol    BYTE PTR [eax+eax*1+0xe410000],0x8
c000df76:	08 
c000df77:	85 02                	test   DWORD PTR [edx],eax
c000df79:	42                   	inc    edx
c000df7a:	0d 05 41 87 03       	or     eax,0x3874105
c000df7f:	49                   	dec    ecx
c000df80:	83 05 86 04 04 73 00 	add    DWORD PTR ds:0x73040486,0x0
c000df87:	00 00                	add    BYTE PTR [eax],al
c000df89:	c3                   	ret    
c000df8a:	41                   	inc    ecx
c000df8b:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c000df8f:	0c 04                	or     al,0x4
c000df91:	04 c5                	add    al,0xc5
c000df93:	00 44 00 00          	add    BYTE PTR [eax+eax*1+0x0],al
c000df97:	00 48 1c             	add    BYTE PTR [eax+0x1c],cl
c000df9a:	00 00                	add    BYTE PTR [eax],al
c000df9c:	52                   	push   edx
c000df9d:	b2 00                	mov    dl,0x0
c000df9f:	c0                   	(bad)  
c000dfa0:	37                   	aaa    
c000dfa1:	00 00                	add    BYTE PTR [eax],al
c000dfa3:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c000dfa6:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c000dfac:	41                   	inc    ecx
c000dfad:	87 03                	xchg   DWORD PTR [ebx],eax
c000dfaf:	44                   	inc    esp
c000dfb0:	86 04 04             	xchg   BYTE PTR [esp+eax*1],al
c000dfb3:	04 00                	add    al,0x0
c000dfb5:	00 00                	add    BYTE PTR [eax],al
c000dfb7:	83 05 4a 2e 04 04 01 	add    DWORD PTR ds:0x4042e4a,0x1
c000dfbe:	00 00                	add    BYTE PTR [eax],al
c000dfc0:	00 2e                	add    BYTE PTR [esi],ch
c000dfc2:	08 43 2e             	or     BYTE PTR [ebx+0x2e],al
c000dfc5:	0c 41                	or     al,0x41
c000dfc7:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c000dfcb:	14 48                	adc    al,0x48
c000dfcd:	2e 00 4a c3          	add    BYTE PTR cs:[edx-0x3d],cl
c000dfd1:	41                   	inc    ecx
c000dfd2:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c000dfd6:	0c 04                	or     al,0x4
c000dfd8:	04 c5                	add    al,0xc5
	...

Disassembly of section .rodata:

c000dfdc <_rodata>:
c000dfdc:	0a 50 65             	or     dl,BYTE PTR [eax+0x65]
c000dfdf:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000dfe0:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c000dfe3:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c000dfe8:	65 6c                	gs ins BYTE PTR es:[edi],dx
c000dfea:	20 28                	and    BYTE PTR [eax],ch
c000dfec:	50                   	push   eax
c000dfed:	4b                   	dec    ebx
c000dfee:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000dfef:	29 20                	sub    DWORD PTR [eax],esp
c000dff1:	76 65                	jbe    c000e058 <_rodata+0x7c>
c000dff3:	72 73                	jb     c000e068 <PKn_Version>
c000dff5:	69 6f 6e 20 30 2e 30 	imul   ebp,DWORD PTR [edi+0x6e],0x302e3020
c000dffc:	2e 30 20             	xor    BYTE PTR cs:[eax],ah
c000dfff:	74 65                	je     c000e066 <_rodata+0x8a>
c000e001:	73 74                	jae    c000e077 <PKn_Version+0xf>
c000e003:	0a 00                	or     al,BYTE PTR [eax]
c000e005:	43                   	inc    ebx
c000e006:	50                   	push   eax
c000e007:	55                   	push   ebp
c000e008:	20 20                	and    BYTE PTR [eax],ah
c000e00a:	20 20                	and    BYTE PTR [eax],ah
c000e00c:	3a 00                	cmp    al,BYTE PTR [eax]
c000e00e:	4d                   	dec    ebp
c000e00f:	65 6d                	gs ins DWORD PTR es:[edi],dx
c000e011:	6f                   	outs   dx,DWORD PTR ds:[esi]
c000e012:	72 79                	jb     c000e08d <PKn_Version+0x25>
c000e014:	20 3a                	and    BYTE PTR [edx],bh
c000e016:	00 4d 42             	add    BYTE PTR [ebp+0x42],cl
c000e019:	20 28                	and    BYTE PTR [eax],ch
c000e01b:	20 00                	and    BYTE PTR [eax],al
c000e01d:	4b                   	dec    ebx
c000e01e:	42                   	inc    edx
c000e01f:	20 29                	and    BYTE PTR [ecx],ch
c000e021:	20 00                	and    BYTE PTR [eax],al
c000e023:	44                   	inc    esp
c000e024:	69 73 6b 20 20 20 3a 	imul   esi,DWORD PTR [ebx+0x6b],0x3a202020
c000e02b:	00 50 65             	add    BYTE PTR [eax+0x65],dl
c000e02e:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000e02f:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c000e032:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c000e037:	65 6c                	gs ins BYTE PTR es:[edi],dx
c000e039:	20 28                	and    BYTE PTR [eax],ch
c000e03b:	50                   	push   eax
c000e03c:	4b                   	dec    ebx
c000e03d:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000e03e:	29 20                	sub    DWORD PTR [eax],esp
c000e040:	76 65                	jbe    c000e0a7 <PKn_Version+0x3f>
c000e042:	72 73                	jb     c000e0b7 <PKn_Version+0x4f>
c000e044:	69 6f 6e 20 30 2e 30 	imul   ebp,DWORD PTR [edi+0x6e],0x302e3020
c000e04b:	2e 30 20             	xor    BYTE PTR cs:[eax],ah
c000e04e:	74 65                	je     c000e0b5 <PKn_Version+0x4d>
c000e050:	73 74                	jae    c000e0c6 <PKn_Version+0x5e>
c000e052:	00 75 73             	add    BYTE PTR [ebp+0x73],dh
c000e055:	65 72 5f             	gs jb  c000e0b7 <PKn_Version+0x4f>
c000e058:	70 72                	jo     c000e0cc <PKn_Version+0x64>
c000e05a:	6f                   	outs   dx,DWORD PTR ds:[esi]
c000e05b:	67 00 5b 55          	add    BYTE PTR [bp+di+0x55],bl
c000e05f:	73 65                	jae    c000e0c6 <PKn_Version+0x5e>
c000e061:	72 5d                	jb     c000e0c0 <PKn_Version+0x58>
c000e063:	3a 00                	cmp    al,BYTE PTR [eax]
c000e065:	00 00                	add    BYTE PTR [eax],al
	...

c000e068 <PKn_Version>:
c000e068:	50                   	push   eax
c000e069:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c000e06b:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c000e06e:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c000e073:	65 6c                	gs ins BYTE PTR es:[edi],dx
c000e075:	20 28                	and    BYTE PTR [eax],ch
c000e077:	50                   	push   eax
c000e078:	4b                   	dec    ebx
c000e079:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000e07a:	29 20                	sub    DWORD PTR [eax],esp
c000e07c:	76 65                	jbe    c000e0e3 <PKn_Version+0x7b>
c000e07e:	72 73                	jb     c000e0f3 <PKn_Version+0x8b>
c000e080:	69 6f 6e 20 30 2e 30 	imul   ebp,DWORD PTR [edi+0x6e],0x302e3020
c000e087:	2e 30 20             	xor    BYTE PTR cs:[eax],ah
c000e08a:	74 65                	je     c000e0f1 <PKn_Version+0x89>
c000e08c:	73 74                	jae    c000e102 <PKn_Version+0x9a>
c000e08e:	00 00                	add    BYTE PTR [eax],al
c000e090:	20 45 72             	and    BYTE PTR [ebp+0x72],al
c000e093:	72 6f                	jb     c000e104 <PKn_Version+0x9c>
c000e095:	72 0a                	jb     c000e0a1 <PKn_Version+0x39>
c000e097:	00 20                	add    BYTE PTR [eax],ah
c000e099:	46                   	inc    esi
c000e09a:	69 6c 65 3a 20 20 20 	imul   ebp,DWORD PTR [ebp+eiz*2+0x3a],0x20202020
c000e0a1:	20 
c000e0a2:	20 20                	and    BYTE PTR [eax],ah
c000e0a4:	20 20                	and    BYTE PTR [eax],ah
c000e0a6:	00 20                	add    BYTE PTR [eax],ah
c000e0a8:	49                   	dec    ecx
c000e0a9:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000e0aa:	20 66 75             	and    BYTE PTR [esi+0x75],ah
c000e0ad:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000e0ae:	63 74 69 6f          	arpl   WORD PTR [ecx+ebp*2+0x6f],si
c000e0b2:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000e0b3:	3a 20                	cmp    ah,BYTE PTR [eax]
c000e0b5:	00 20                	add    BYTE PTR [eax],ah
c000e0b7:	4c                   	dec    esp
c000e0b8:	69 6e 65 3a 20 20 20 	imul   ebp,DWORD PTR [esi+0x65],0x2020203a
c000e0bf:	20 20                	and    BYTE PTR [eax],ah
c000e0c1:	20 20                	and    BYTE PTR [eax],ah
c000e0c3:	20 00                	and    BYTE PTR [eax],al
c000e0c5:	20 43 6f             	and    BYTE PTR [ebx+0x6f],al
c000e0c8:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000e0c9:	64 69 74 69 6f 6e 3a 	imul   esi,DWORD PTR fs:[ecx+ebp*2+0x6f],0x20203a6e
c000e0d0:	20 20 
c000e0d2:	20 00                	and    BYTE PTR [eax],al
c000e0d4:	50                   	push   eax
c000e0d5:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c000e0d7:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c000e0da:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c000e0df:	65 6c                	gs ins BYTE PTR es:[edi],dx
c000e0e1:	20 28                	and    BYTE PTR [eax],ch
c000e0e3:	50                   	push   eax
c000e0e4:	4b                   	dec    ebx
c000e0e5:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000e0e6:	29 20                	sub    DWORD PTR [eax],esp
c000e0e8:	76 65                	jbe    c000e14f <PKn_Version+0xe7>
c000e0ea:	72 73                	jb     c000e15f <PKn_Version+0xf7>
c000e0ec:	69 6f 6e 20 30 2e 30 	imul   ebp,DWORD PTR [edi+0x6e],0x302e3020
c000e0f3:	2e 30 20             	xor    BYTE PTR cs:[eax],ah
c000e0f6:	74 65                	je     c000e15d <PKn_Version+0xf5>
c000e0f8:	73 74                	jae    c000e16e <PKn_Version+0x106>
c000e0fa:	00 00                	add    BYTE PTR [eax],al
c000e0fc:	5b                   	pop    ebx
c000e0fd:	69 6e 69 6e 5d 3a 61 	imul   ebp,DWORD PTR [esi+0x69],0x613a5d6e
c000e104:	6c                   	ins    BYTE PTR es:[edi],dx
c000e105:	6c                   	ins    BYTE PTR es:[edi],dx
c000e106:	0a 00                	or     al,BYTE PTR [eax]
c000e108:	5b                   	pop    ebx
c000e109:	69 6e 69 74 5d 3a 69 	imul   ebp,DWORD PTR [esi+0x69],0x693a5d74
c000e110:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000e111:	69 74 20 64 6f 77 6e 	imul   esi,DWORD PTR [eax+eiz*1+0x64],0x2e6e776f
c000e118:	2e 
c000e119:	0a 00                	or     al,BYTE PTR [eax]
c000e11b:	00 50 65             	add    BYTE PTR [eax+0x65],dl
c000e11e:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000e11f:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c000e122:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c000e127:	65 6c                	gs ins BYTE PTR es:[edi],dx
c000e129:	20 28                	and    BYTE PTR [eax],ch
c000e12b:	50                   	push   eax
c000e12c:	4b                   	dec    ebx
c000e12d:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000e12e:	29 20                	sub    DWORD PTR [eax],esp
c000e130:	76 65                	jbe    c000e197 <PKn_Version+0x12f>
c000e132:	72 73                	jb     c000e1a7 <PKn_Version+0x13f>
c000e134:	69 6f 6e 20 30 2e 30 	imul   ebp,DWORD PTR [edi+0x6e],0x302e3020
c000e13b:	2e 30 20             	xor    BYTE PTR cs:[eax],ah
c000e13e:	74 65                	je     c000e1a5 <PKn_Version+0x13d>
c000e140:	73 74                	jae    c000e1b6 <PKn_Version+0x14e>
c000e142:	00 00                	add    BYTE PTR [eax],al
c000e144:	23 44 45 20          	and    eax,DWORD PTR [ebp+eax*2+0x20]
c000e148:	44                   	inc    esp
c000e149:	69 76 69 64 65 20 45 	imul   esi,DWORD PTR [esi+0x69],0x45206564
c000e150:	72 72                	jb     c000e1c4 <PKn_Version+0x15c>
c000e152:	6f                   	outs   dx,DWORD PTR ds:[esi]
c000e153:	72 00                	jb     c000e155 <PKn_Version+0xed>
c000e155:	23 44 42 20          	and    eax,DWORD PTR [edx+eax*2+0x20]
c000e159:	44                   	inc    esp
c000e15a:	65 62 75 67          	bound  esi,QWORD PTR gs:[ebp+0x67]
c000e15e:	20 45 78             	and    BYTE PTR [ebp+0x78],al
c000e161:	63 65 70             	arpl   WORD PTR [ebp+0x70],sp
c000e164:	74 69                	je     c000e1cf <PKn_Version+0x167>
c000e166:	6f                   	outs   dx,DWORD PTR ds:[esi]
c000e167:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000e168:	00 4e 4d             	add    BYTE PTR [esi+0x4d],cl
c000e16b:	49                   	dec    ecx
c000e16c:	20 49 6e             	and    BYTE PTR [ecx+0x6e],cl
c000e16f:	74 65                	je     c000e1d6 <PKn_Version+0x16e>
c000e171:	72 72                	jb     c000e1e5 <PKn_Version+0x17d>
c000e173:	75 70                	jne    c000e1e5 <PKn_Version+0x17d>
c000e175:	74 00                	je     c000e177 <PKn_Version+0x10f>
c000e177:	23 42 50             	and    eax,DWORD PTR [edx+0x50]
c000e17a:	20 42 72             	and    BYTE PTR [edx+0x72],al
c000e17d:	65 61                	gs popa 
c000e17f:	6b 70 6f 69          	imul   esi,DWORD PTR [eax+0x6f],0x69
c000e183:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000e184:	74 20                	je     c000e1a6 <PKn_Version+0x13e>
c000e186:	45                   	inc    ebp
c000e187:	78 63                	js     c000e1ec <PKn_Version+0x184>
c000e189:	65 70 74             	gs jo  c000e200 <PKn_Version+0x198>
c000e18c:	69 6f 6e 00 23 4f 46 	imul   ebp,DWORD PTR [edi+0x6e],0x464f2300
c000e193:	20 4f 76             	and    BYTE PTR [edi+0x76],cl
c000e196:	65 72 66             	gs jb  c000e1ff <PKn_Version+0x197>
c000e199:	6c                   	ins    BYTE PTR es:[edi],dx
c000e19a:	6f                   	outs   dx,DWORD PTR ds:[esi]
c000e19b:	77 20                	ja     c000e1bd <PKn_Version+0x155>
c000e19d:	45                   	inc    ebp
c000e19e:	78 63                	js     c000e203 <PKn_Version+0x19b>
c000e1a0:	65 70 74             	gs jo  c000e217 <PKn_Version+0x1af>
c000e1a3:	69 6f 6e 00 23 42 52 	imul   ebp,DWORD PTR [edi+0x6e],0x52422300
c000e1aa:	20 42 4f             	and    BYTE PTR [edx+0x4f],al
c000e1ad:	55                   	push   ebp
c000e1ae:	4e                   	dec    esi
c000e1af:	44                   	inc    esp
c000e1b0:	20 52 61             	and    BYTE PTR [edx+0x61],dl
c000e1b3:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000e1b4:	67 65 20 45 78       	and    BYTE PTR gs:[di+0x78],al
c000e1b9:	63 65 65             	arpl   WORD PTR [ebp+0x65],sp
c000e1bc:	64 65 64 20 45 78    	fs gs and BYTE PTR fs:[ebp+0x78],al
c000e1c2:	63 65 70             	arpl   WORD PTR [ebp+0x70],sp
c000e1c5:	74 69                	je     c000e230 <PKn_Version+0x1c8>
c000e1c7:	6f                   	outs   dx,DWORD PTR ds:[esi]
c000e1c8:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000e1c9:	00 23                	add    BYTE PTR [ebx],ah
c000e1cb:	55                   	push   ebp
c000e1cc:	44                   	inc    esp
c000e1cd:	20 49 6e             	and    BYTE PTR [ecx+0x6e],cl
c000e1d0:	76 61                	jbe    c000e233 <PKn_Version+0x1cb>
c000e1d2:	6c                   	ins    BYTE PTR es:[edi],dx
c000e1d3:	69 64 20 4f 70 63 6f 	imul   esp,DWORD PTR [eax+eiz*1+0x4f],0x646f6370
c000e1da:	64 
c000e1db:	65 20 45 78          	and    BYTE PTR gs:[ebp+0x78],al
c000e1df:	63 65 70             	arpl   WORD PTR [ebp+0x70],sp
c000e1e2:	74 69                	je     c000e24d <PKn_Version+0x1e5>
c000e1e4:	6f                   	outs   dx,DWORD PTR ds:[esi]
c000e1e5:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000e1e6:	00 23                	add    BYTE PTR [ebx],ah
c000e1e8:	4e                   	dec    esi
c000e1e9:	4d                   	dec    ebp
c000e1ea:	20 44 65 76          	and    BYTE PTR [ebp+eiz*2+0x76],al
c000e1ee:	69 63 65 20 4e 6f 74 	imul   esp,DWORD PTR [ebx+0x65],0x746f4e20
c000e1f5:	20 41 76             	and    BYTE PTR [ecx+0x76],al
c000e1f8:	61                   	popa   
c000e1f9:	69 6c 61 62 6c 65 20 	imul   ebp,DWORD PTR [ecx+eiz*2+0x62],0x4520656c
c000e200:	45 
c000e201:	78 63                	js     c000e266 <PKn_Version+0x1fe>
c000e203:	65 70 74             	gs jo  c000e27a <PKn_Version+0x212>
c000e206:	69 6f 6e 00 23 44 46 	imul   ebp,DWORD PTR [edi+0x6e],0x46442300
c000e20d:	20 44 6f 75          	and    BYTE PTR [edi+ebp*2+0x75],al
c000e211:	62 6c 65 20          	bound  ebp,QWORD PTR [ebp+eiz*2+0x20]
c000e215:	46                   	inc    esi
c000e216:	61                   	popa   
c000e217:	75 6c                	jne    c000e285 <PKn_Version+0x21d>
c000e219:	74 20                	je     c000e23b <PKn_Version+0x1d3>
c000e21b:	45                   	inc    ebp
c000e21c:	78 63                	js     c000e281 <PKn_Version+0x219>
c000e21e:	65 70 74             	gs jo  c000e295 <PKn_Version+0x22d>
c000e221:	69 6f 6e 00 43 6f 70 	imul   ebp,DWORD PTR [edi+0x6e],0x706f4300
c000e228:	72 6f                	jb     c000e299 <PKn_Version+0x231>
c000e22a:	63 65 73             	arpl   WORD PTR [ebp+0x73],sp
c000e22d:	73 6f                	jae    c000e29e <PKn_Version+0x236>
c000e22f:	72 20                	jb     c000e251 <PKn_Version+0x1e9>
c000e231:	53                   	push   ebx
c000e232:	65 67 6d             	gs ins DWORD PTR es:[di],dx
c000e235:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c000e237:	74 20                	je     c000e259 <PKn_Version+0x1f1>
c000e239:	4f                   	dec    edi
c000e23a:	76 65                	jbe    c000e2a1 <PKn_Version+0x239>
c000e23c:	72 72                	jb     c000e2b0 <PKn_Version+0x248>
c000e23e:	75 6e                	jne    c000e2ae <PKn_Version+0x246>
c000e240:	00 23                	add    BYTE PTR [ebx],ah
c000e242:	54                   	push   esp
c000e243:	53                   	push   ebx
c000e244:	20 49 6e             	and    BYTE PTR [ecx+0x6e],cl
c000e247:	76 61                	jbe    c000e2aa <PKn_Version+0x242>
c000e249:	6c                   	ins    BYTE PTR es:[edi],dx
c000e24a:	69 64 20 54 53 53 20 	imul   esp,DWORD PTR [eax+eiz*1+0x54],0x45205353
c000e251:	45 
c000e252:	78 63                	js     c000e2b7 <PKn_Version+0x24f>
c000e254:	65 70 74             	gs jo  c000e2cb <PKn_Version+0x263>
c000e257:	69 6f 6e 00 23 4e 50 	imul   ebp,DWORD PTR [edi+0x6e],0x504e2300
c000e25e:	20 53 65             	and    BYTE PTR [ebx+0x65],dl
c000e261:	67 6d                	ins    DWORD PTR es:[di],dx
c000e263:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c000e265:	74 20                	je     c000e287 <PKn_Version+0x21f>
c000e267:	4e                   	dec    esi
c000e268:	6f                   	outs   dx,DWORD PTR ds:[esi]
c000e269:	74 20                	je     c000e28b <PKn_Version+0x223>
c000e26b:	50                   	push   eax
c000e26c:	72 65                	jb     c000e2d3 <PKn_Version+0x26b>
c000e26e:	73 65                	jae    c000e2d5 <PKn_Version+0x26d>
c000e270:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000e271:	74 00                	je     c000e273 <PKn_Version+0x20b>
c000e273:	23 53 53             	and    edx,DWORD PTR [ebx+0x53]
c000e276:	20 53 74             	and    BYTE PTR [ebx+0x74],dl
c000e279:	61                   	popa   
c000e27a:	63 6b 20             	arpl   WORD PTR [ebx+0x20],bp
c000e27d:	46                   	inc    esi
c000e27e:	61                   	popa   
c000e27f:	75 6c                	jne    c000e2ed <PKn_Version+0x285>
c000e281:	74 20                	je     c000e2a3 <PKn_Version+0x23b>
c000e283:	45                   	inc    ebp
c000e284:	78 63                	js     c000e2e9 <PKn_Version+0x281>
c000e286:	65 70 74             	gs jo  c000e2fd <PKn_Version+0x295>
c000e289:	69 6f 6e 00 23 47 50 	imul   ebp,DWORD PTR [edi+0x6e],0x50472300
c000e290:	20 47 65             	and    BYTE PTR [edi+0x65],al
c000e293:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000e294:	65 72 61             	gs jb  c000e2f8 <PKn_Version+0x290>
c000e297:	6c                   	ins    BYTE PTR es:[edi],dx
c000e298:	20 50 72             	and    BYTE PTR [eax+0x72],dl
c000e29b:	6f                   	outs   dx,DWORD PTR ds:[esi]
c000e29c:	74 65                	je     c000e303 <PKn_Version+0x29b>
c000e29e:	63 74 69 6f          	arpl   WORD PTR [ecx+ebp*2+0x6f],si
c000e2a2:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000e2a3:	20 45 78             	and    BYTE PTR [ebp+0x78],al
c000e2a6:	63 65 70             	arpl   WORD PTR [ebp+0x70],sp
c000e2a9:	74 69                	je     c000e314 <PKn_Version+0x2ac>
c000e2ab:	6f                   	outs   dx,DWORD PTR ds:[esi]
c000e2ac:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000e2ad:	00 23                	add    BYTE PTR [ebx],ah
c000e2af:	50                   	push   eax
c000e2b0:	46                   	inc    esi
c000e2b1:	20 50 61             	and    BYTE PTR [eax+0x61],dl
c000e2b4:	67 65 2d 46 61 75 6c 	addr16 gs sub eax,0x6c756146
c000e2bb:	74 20                	je     c000e2dd <PKn_Version+0x275>
c000e2bd:	45                   	inc    ebp
c000e2be:	78 63                	js     c000e323 <PKn_Version+0x2bb>
c000e2c0:	65 70 74             	gs jo  c000e337 <PKn_Version+0x2cf>
c000e2c3:	69 6f 6e 00 52 65 73 	imul   ebp,DWORD PTR [edi+0x6e],0x73655200
c000e2ca:	65 72 76             	gs jb  c000e343 <PKn_Version+0x2db>
c000e2cd:	65 64 00 23          	gs add BYTE PTR fs:[ebx],ah
c000e2d1:	4d                   	dec    ebp
c000e2d2:	46                   	inc    esi
c000e2d3:	20 78 38             	and    BYTE PTR [eax+0x38],bh
c000e2d6:	37                   	aaa    
c000e2d7:	20 46 50             	and    BYTE PTR [esi+0x50],al
c000e2da:	55                   	push   ebp
c000e2db:	20 46 6c             	and    BYTE PTR [esi+0x6c],al
c000e2de:	6f                   	outs   dx,DWORD PTR ds:[esi]
c000e2df:	61                   	popa   
c000e2e0:	74 69                	je     c000e34b <PKn_Version+0x2e3>
c000e2e2:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000e2e3:	67 2d 50 6f 69 6e    	addr16 sub eax,0x6e696f50
c000e2e9:	74 20                	je     c000e30b <PKn_Version+0x2a3>
c000e2eb:	45                   	inc    ebp
c000e2ec:	72 72                	jb     c000e360 <PKn_Version+0x2f8>
c000e2ee:	6f                   	outs   dx,DWORD PTR ds:[esi]
c000e2ef:	72 00                	jb     c000e2f1 <PKn_Version+0x289>
c000e2f1:	23 41 43             	and    eax,DWORD PTR [ecx+0x43]
c000e2f4:	20 41 6c             	and    BYTE PTR [ecx+0x6c],al
c000e2f7:	69 67 6e 6d 65 6e 74 	imul   esp,DWORD PTR [edi+0x6e],0x746e656d
c000e2fe:	20 43 68             	and    BYTE PTR [ebx+0x68],al
c000e301:	65 63 6b 20          	arpl   WORD PTR gs:[ebx+0x20],bp
c000e305:	45                   	inc    ebp
c000e306:	78 63                	js     c000e36b <PKn_Version+0x303>
c000e308:	65 70 74             	gs jo  c000e37f <PKn_Version+0x317>
c000e30b:	69 6f 6e 00 23 4d 43 	imul   ebp,DWORD PTR [edi+0x6e],0x434d2300
c000e312:	20 4d 61             	and    BYTE PTR [ebp+0x61],cl
c000e315:	63 68 69             	arpl   WORD PTR [eax+0x69],bp
c000e318:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000e319:	65 2d 43 68 65 63    	gs sub eax,0x63656843
c000e31f:	6b 20 45             	imul   esp,DWORD PTR [eax],0x45
c000e322:	78 63                	js     c000e387 <PKn_Version+0x31f>
c000e324:	65 70 74             	gs jo  c000e39b <PKn_Version+0x333>
c000e327:	69 6f 6e 00 23 58 46 	imul   ebp,DWORD PTR [edi+0x6e],0x46582300
c000e32e:	20 53 49             	and    BYTE PTR [ebx+0x49],dl
c000e331:	4d                   	dec    ebp
c000e332:	44                   	inc    esp
c000e333:	20 46 6c             	and    BYTE PTR [esi+0x6c],al
c000e336:	6f                   	outs   dx,DWORD PTR ds:[esi]
c000e337:	61                   	popa   
c000e338:	74 69                	je     c000e3a3 <PKn_Version+0x33b>
c000e33a:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000e33b:	67 2d 50 6f 69 6e    	addr16 sub eax,0x6e696f50
c000e341:	74 20                	je     c000e363 <PKn_Version+0x2fb>
c000e343:	45                   	inc    ebp
c000e344:	78 63                	js     c000e3a9 <PKn_Version+0x341>
c000e346:	65 70 74             	gs jo  c000e3bd <PKn_Version+0x355>
c000e349:	69 6f 6e 00 0a 20 00 	imul   ebp,DWORD PTR [edi+0x6e],0x200a00
c000e350:	0a 20                	or     ah,BYTE PTR [eax]
c000e352:	69 6e 74 72 3a 20 30 	imul   ebp,DWORD PTR [esi+0x74],0x30203a72
c000e359:	78 00                	js     c000e35b <PKn_Version+0x2f3>
c000e35b:	20 28                	and    BYTE PTR [eax],ch
c000e35d:	20 66 61             	and    BYTE PTR [esi+0x61],ah
c000e360:	75 6c                	jne    c000e3ce <PKn_Version+0x366>
c000e362:	74 20                	je     c000e384 <PKn_Version+0x31c>
c000e364:	61                   	popa   
c000e365:	64 64 72 65          	fs fs jb c000e3ce <PKn_Version+0x366>
c000e369:	73 73                	jae    c000e3de <PKn_Version+0x376>
c000e36b:	3a 20                	cmp    ah,BYTE PTR [eax]
c000e36d:	30 78 00             	xor    BYTE PTR [eax+0x0],bh
c000e370:	20 29                	and    BYTE PTR [ecx],ch
c000e372:	0a 00                	or     al,BYTE PTR [eax]
c000e374:	0a 20                	or     ah,BYTE PTR [eax]
c000e376:	43                   	inc    ebx
c000e377:	50                   	push   eax
c000e378:	55                   	push   ebp
c000e379:	20 3a                	and    BYTE PTR [edx],bh
c000e37b:	00 50 65             	add    BYTE PTR [eax+0x65],dl
c000e37e:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000e37f:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c000e382:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c000e387:	65 6c                	gs ins BYTE PTR es:[edi],dx
c000e389:	20 28                	and    BYTE PTR [eax],ch
c000e38b:	50                   	push   eax
c000e38c:	4b                   	dec    ebx
c000e38d:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000e38e:	29 20                	sub    DWORD PTR [eax],esp
c000e390:	76 65                	jbe    c000e3f7 <PKn_Version+0x38f>
c000e392:	72 73                	jb     c000e407 <PKn_Version+0x39f>
c000e394:	69 6f 6e 20 30 2e 30 	imul   ebp,DWORD PTR [edi+0x6e],0x302e3020
c000e39b:	2e 30 20             	xor    BYTE PTR cs:[eax],ah
c000e39e:	74 65                	je     c000e405 <PKn_Version+0x39d>
c000e3a0:	73 74                	jae    c000e416 <PKn_Version+0x3ae>
c000e3a2:	00 00                	add    BYTE PTR [eax],al
c000e3a4:	66 72 65             	data16 jb c000e40c <PKn_Version+0x3a4>
c000e3a7:	65 20 21             	and    BYTE PTR gs:[ecx],ah
c000e3aa:	3d 20 4e 55 4c       	cmp    eax,0x4c554e20
c000e3af:	4c                   	dec    esp
c000e3b0:	00 6b 65             	add    BYTE PTR [ebx+0x65],ch
c000e3b3:	72 6e                	jb     c000e423 <PKn_Version+0x3bb>
c000e3b5:	65 6c                	gs ins BYTE PTR es:[edi],dx
c000e3b7:	2f                   	das    
c000e3b8:	6d                   	ins    DWORD PTR es:[edi],dx
c000e3b9:	65 6d                	gs ins DWORD PTR es:[edi],dx
c000e3bb:	6f                   	outs   dx,DWORD PTR ds:[esi]
c000e3bc:	72 79                	jb     c000e437 <PKn_Version+0x3cf>
c000e3be:	2e 63 00             	arpl   WORD PTR cs:[eax],ax
c000e3c1:	41                   	inc    ecx
c000e3c2:	72 64                	jb     c000e428 <PKn_Version+0x3c0>
c000e3c4:	73 3a                	jae    c000e400 <PKn_Version+0x398>
c000e3c6:	0a 00                	or     al,BYTE PTR [eax]
c000e3c8:	20 42 61             	and    BYTE PTR [edx+0x61],al
c000e3cb:	73 65                	jae    c000e432 <PKn_Version+0x3ca>
c000e3cd:	3a 09                	cmp    cl,BYTE PTR [ecx]
c000e3cf:	09 30                	or     DWORD PTR [eax],esi
c000e3d1:	78 00                	js     c000e3d3 <PKn_Version+0x36b>
c000e3d3:	20 0a                	and    BYTE PTR [edx],cl
c000e3d5:	20 4c 65 6e          	and    BYTE PTR [ebp+eiz*2+0x6e],cl
c000e3d9:	67 74 68             	addr16 je c000e444 <PKn_Version+0x3dc>
c000e3dc:	3a 09                	cmp    cl,BYTE PTR [ecx]
c000e3de:	30 78 00             	xor    BYTE PTR [eax+0x0],bh
c000e3e1:	20 0a                	and    BYTE PTR [edx],cl
c000e3e3:	20 74 79 70          	and    BYTE PTR [ecx+edi*2+0x70],dh
c000e3e7:	65 3a 09             	cmp    cl,BYTE PTR gs:[ecx]
c000e3ea:	09 00                	or     DWORD PTR [eax],eax
c000e3ec:	0a 00                	or     al,BYTE PTR [eax]
c000e3ee:	4e                   	dec    esi
c000e3ef:	6f                   	outs   dx,DWORD PTR ds:[esi]
c000e3f0:	20 4d 65             	and    BYTE PTR [ebp+0x65],cl
c000e3f3:	6d                   	ins    DWORD PTR es:[edi],dx
c000e3f4:	6f                   	outs   dx,DWORD PTR ds:[esi]
c000e3f5:	72 79                	jb     c000e470 <PKn_Version+0x408>
c000e3f7:	20 61 76             	and    BYTE PTR [ecx+0x76],ah
c000e3fa:	61                   	popa   
c000e3fb:	69 6c 61 62 6c 65 21 	imul   ebp,DWORD PTR [ecx+eiz*2+0x62],0x21656c
c000e402:	00 
c000e403:	20 4d 65             	and    BYTE PTR [ebp+0x65],cl
c000e406:	6d                   	ins    DWORD PTR es:[edi],dx
c000e407:	61                   	popa   
c000e408:	6c                   	ins    BYTE PTR es:[edi],dx
c000e409:	6c                   	ins    BYTE PTR es:[edi],dx
c000e40a:	6f                   	outs   dx,DWORD PTR ds:[esi]
c000e40b:	63 3a                	arpl   WORD PTR [edx],di
c000e40d:	20 00                	and    BYTE PTR [eax],al
c000e40f:	67 65 74 5f          	addr16 gs je c000e472 <PKn_Version+0x40a>
c000e413:	61                   	popa   
c000e414:	5f                   	pop    edi
c000e415:	70 61                	jo     c000e478 <PKn_Version+0x410>
c000e417:	67 65 3a 20          	cmp    ah,BYTE PTR gs:[bx+si]
c000e41b:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000e41c:	6f                   	outs   dx,DWORD PTR ds:[esi]
c000e41d:	74 20                	je     c000e43f <PKn_Version+0x3d7>
c000e41f:	61                   	popa   
c000e420:	6c                   	ins    BYTE PTR es:[edi],dx
c000e421:	6c                   	ins    BYTE PTR es:[edi],dx
c000e422:	6f                   	outs   dx,DWORD PTR ds:[esi]
c000e423:	77 20                	ja     c000e445 <PKn_Version+0x3dd>
c000e425:	6b 65 72 6e          	imul   esp,DWORD PTR [ebp+0x72],0x6e
c000e429:	65 6c                	gs ins BYTE PTR es:[edi],dx
c000e42b:	20 61 6c             	and    BYTE PTR [ecx+0x6c],ah
c000e42e:	6c                   	ins    BYTE PTR es:[edi],dx
c000e42f:	6f                   	outs   dx,DWORD PTR ds:[esi]
c000e430:	63 20                	arpl   WORD PTR [eax],sp
c000e432:	75 73                	jne    c000e4a7 <__func__.1121+0x3>
c000e434:	65 72 73             	gs jb  c000e4aa <__func__.1121+0x6>
c000e437:	70 61                	jo     c000e49a <PKn_Version+0x432>
c000e439:	63 65 20             	arpl   WORD PTR [ebp+0x20],sp
c000e43c:	6f                   	outs   dx,DWORD PTR ds:[esi]
c000e43d:	72 20                	jb     c000e45f <PKn_Version+0x3f7>
c000e43f:	75 73                	jne    c000e4b4 <__func__.1128+0x4>
c000e441:	65 72 20             	gs jb  c000e464 <PKn_Version+0x3fc>
c000e444:	61                   	popa   
c000e445:	6c                   	ins    BYTE PTR es:[edi],dx
c000e446:	6c                   	ins    BYTE PTR es:[edi],dx
c000e447:	6f                   	outs   dx,DWORD PTR ds:[esi]
c000e448:	63 20                	arpl   WORD PTR [eax],sp
c000e44a:	6b 65 72 6e          	imul   esp,DWORD PTR [ebp+0x72],0x6e
c000e44e:	65 6c                	gs ins BYTE PTR es:[edi],dx
c000e450:	73 70                	jae    c000e4c2 <__func__.1219+0x6>
c000e452:	61                   	popa   
c000e453:	63 65 20             	arpl   WORD PTR [ebp+0x20],sp
c000e456:	62 79 20             	bound  edi,QWORD PTR [ecx+0x20]
c000e459:	67 65 74 5f          	addr16 gs je c000e4bc <__func__.1219>
c000e45d:	61                   	popa   
c000e45e:	5f                   	pop    edi
c000e45f:	70 61                	jo     c000e4c2 <__func__.1219+0x6>
c000e461:	67 65 28 29          	sub    BYTE PTR gs:[bx+di],ch
c000e465:	00 70 61             	add    BYTE PTR [eax+0x61],dh
c000e468:	67 65 5f             	addr16 gs pop edi
c000e46b:	70 61                	jo     c000e4ce <__func__.1219+0x12>
c000e46d:	64 64 72 20          	fs fs jb c000e491 <PKn_Version+0x429>
c000e471:	21 3d 20 4e 55 4c    	and    DWORD PTR ds:0x4c554e20,edi
c000e477:	4c                   	dec    esp
c000e478:	00 00                	add    BYTE PTR [eax],al
c000e47a:	00 00                	add    BYTE PTR [eax],al
c000e47c:	50                   	push   eax
c000e47d:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c000e47f:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c000e482:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c000e487:	65 6c                	gs ins BYTE PTR es:[edi],dx
c000e489:	20 28                	and    BYTE PTR [eax],ch
c000e48b:	50                   	push   eax
c000e48c:	4b                   	dec    ebx
c000e48d:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000e48e:	29 20                	sub    DWORD PTR [eax],esp
c000e490:	76 65                	jbe    c000e4f7 <__func__.1219+0x3b>
c000e492:	72 73                	jb     c000e507 <__func__.1219+0x4b>
c000e494:	69 6f 6e 20 30 2e 30 	imul   ebp,DWORD PTR [edi+0x6e],0x302e3020
c000e49b:	2e 30 20             	xor    BYTE PTR cs:[eax],ah
c000e49e:	74 65                	je     c000e505 <__func__.1219+0x49>
c000e4a0:	73 74                	jae    c000e516 <__func__.1219+0x5a>
	...

c000e4a4 <__func__.1121>:
c000e4a4:	69 6e 69 74 5f 6d 65 	imul   ebp,DWORD PTR [esi+0x69],0x656d5f74
c000e4ab:	6d                   	ins    DWORD PTR es:[edi],dx
c000e4ac:	6f                   	outs   dx,DWORD PTR ds:[esi]
c000e4ad:	72 79                	jb     c000e528 <__func__.1219+0x6c>
	...

c000e4b0 <__func__.1128>:
c000e4b0:	69 6e 69 74 5f 6d 65 	imul   ebp,DWORD PTR [esi+0x69],0x656d5f74
c000e4b7:	6d                   	ins    DWORD PTR es:[edi],dx
c000e4b8:	6d                   	ins    DWORD PTR es:[edi],dx
c000e4b9:	61                   	popa   
c000e4ba:	6e                   	outs   dx,BYTE PTR ds:[esi]
	...

c000e4bc <__func__.1219>:
c000e4bc:	67 65 74 5f          	addr16 gs je c000e51f <__func__.1219+0x63>
c000e4c0:	61                   	popa   
c000e4c1:	5f                   	pop    edi
c000e4c2:	70 61                	jo     c000e525 <__func__.1219+0x69>
c000e4c4:	67 65 00 00          	add    BYTE PTR gs:[bx+si],al
c000e4c8:	70 73                	jo     c000e53d <__func__.1219+0x81>
c000e4ca:	65 6d                	gs ins DWORD PTR es:[edi],dx
c000e4cc:	61                   	popa   
c000e4cd:	2d 3e 76 61 6c       	sub    eax,0x6c61763e
c000e4d2:	75 65                	jne    c000e539 <__func__.1219+0x7d>
c000e4d4:	20 3d 3d 20 76 61    	and    BYTE PTR ds:0x6176203d,bh
c000e4da:	6c                   	ins    BYTE PTR es:[edi],dx
c000e4db:	75 65                	jne    c000e542 <__func__.1219+0x86>
c000e4dd:	00 74 68 72          	add    BYTE PTR [eax+ebp*2+0x72],dh
c000e4e1:	65 61                	gs popa 
c000e4e3:	64 2f                	fs das 
c000e4e5:	73 79                	jae    c000e560 <__func__.1219+0xa4>
c000e4e7:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000e4e8:	63 2e                	arpl   WORD PTR [esi],bp
c000e4ea:	63 00                	arpl   WORD PTR [eax],ax
c000e4ec:	21 28                	and    DWORD PTR [eax],ebp
c000e4ee:	6c                   	ins    BYTE PTR es:[edi],dx
c000e4ef:	69 73 74 5f 66 69 6e 	imul   esi,DWORD PTR [ebx+0x74],0x6e69665f
c000e4f6:	64 28 26             	sub    BYTE PTR fs:[esi],ah
c000e4f9:	28 70 73             	sub    BYTE PTR [eax+0x73],dh
c000e4fc:	65 6d                	gs ins DWORD PTR es:[edi],dx
c000e4fe:	61                   	popa   
c000e4ff:	2d 3e 77 61 69       	sub    eax,0x6961773e
c000e504:	74 65                	je     c000e56b <__func__.1219+0xaf>
c000e506:	72 73                	jb     c000e57b <__func__.1219+0xbf>
c000e508:	29 2c 26             	sub    DWORD PTR [esi+eiz*1],ebp
c000e50b:	28 72 75             	sub    BYTE PTR [edx+0x75],dh
c000e50e:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000e50f:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000e510:	69 6e 67 5f 74 68 72 	imul   ebp,DWORD PTR [esi+0x67],0x7268745f
c000e517:	65 61                	gs popa 
c000e519:	64 28 29             	sub    BYTE PTR fs:[ecx],ch
c000e51c:	2d 3e 67 65 6e       	sub    eax,0x6e65673e
c000e521:	65 72 61             	gs jb  c000e585 <__func__.1219+0xc9>
c000e524:	6c                   	ins    BYTE PTR es:[edi],dx
c000e525:	5f                   	pop    edi
c000e526:	74 61                	je     c000e589 <__func__.1219+0xcd>
c000e528:	67 29 29             	sub    DWORD PTR [bx+di],ebp
c000e52b:	29 00                	sub    DWORD PTR [eax],eax
c000e52d:	73 65                	jae    c000e594 <__func__.1219+0xd8>
c000e52f:	6d                   	ins    DWORD PTR es:[edi],dx
c000e530:	61                   	popa   
c000e531:	20 64 6f 77          	and    BYTE PTR [edi+ebp*2+0x77],ah
c000e535:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000e536:	3a 74 68 72          	cmp    dh,BYTE PTR [eax+ebp*2+0x72]
c000e53a:	65 61                	gs popa 
c000e53c:	64 20 62 6c          	and    BYTE PTR fs:[edx+0x6c],ah
c000e540:	6f                   	outs   dx,DWORD PTR ds:[esi]
c000e541:	63 6b 65             	arpl   WORD PTR [ebx+0x65],bp
c000e544:	64 20 68 61          	and    BYTE PTR fs:[eax+0x61],ch
c000e548:	73 20                	jae    c000e56a <__func__.1219+0xae>
c000e54a:	62 65 65             	bound  esp,QWORD PTR [ebp+0x65]
c000e54d:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000e54e:	20 69 6e             	and    BYTE PTR [ecx+0x6e],ch
c000e551:	20 77 61             	and    BYTE PTR [edi+0x61],dh
c000e554:	69 74 65 72 73 20 6c 	imul   esi,DWORD PTR [ebp+eiz*2+0x72],0x696c2073
c000e55b:	69 
c000e55c:	73 74                	jae    c000e5d2 <__func__.1219+0x116>
c000e55e:	21 0a                	and    DWORD PTR [edx],ecx
c000e560:	00 70 73             	add    BYTE PTR [eax+0x73],dh
c000e563:	65 6d                	gs ins DWORD PTR es:[edi],dx
c000e565:	61                   	popa   
c000e566:	2d 3e 76 61 6c       	sub    eax,0x6c61763e
c000e56b:	75 65                	jne    c000e5d2 <__func__.1219+0x116>
c000e56d:	20 3d 3d 20 30 00    	and    BYTE PTR ds:0x30203d,bh
c000e573:	70 73                	jo     c000e5e8 <__func__.1219+0x12c>
c000e575:	65 6d                	gs ins DWORD PTR es:[edi],dx
c000e577:	61                   	popa   
c000e578:	2d 3e 76 61 6c       	sub    eax,0x6c61763e
c000e57d:	75 65                	jne    c000e5e4 <__func__.1219+0x128>
c000e57f:	20 3d 3d 20 31 00    	and    BYTE PTR ds:0x31203d,bh
c000e585:	70 6c                	jo     c000e5f3 <__func__.1219+0x137>
c000e587:	6f                   	outs   dx,DWORD PTR ds:[esi]
c000e588:	63 6b 2d             	arpl   WORD PTR [ebx+0x2d],bp
c000e58b:	3e 68 6f 6c 64 65    	ds push 0x65646c6f
c000e591:	72 5f                	jb     c000e5f2 <__func__.1219+0x136>
c000e593:	72 65                	jb     c000e5fa <__func__.1219+0x13e>
c000e595:	70 65                	jo     c000e5fc <__func__.1219+0x140>
c000e597:	61                   	popa   
c000e598:	74 5f                	je     c000e5f9 <__func__.1219+0x13d>
c000e59a:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000e59b:	72 20                	jb     c000e5bd <__func__.1219+0x101>
c000e59d:	3d 3d 20 30 00       	cmp    eax,0x30203d
c000e5a2:	70 6c                	jo     c000e610 <__func__.1040+0x4>
c000e5a4:	6f                   	outs   dx,DWORD PTR ds:[esi]
c000e5a5:	63 6b 2d             	arpl   WORD PTR [ebx+0x2d],bp
c000e5a8:	3e 68 6f 6c 64 65    	ds push 0x65646c6f
c000e5ae:	72 20                	jb     c000e5d0 <__func__.1219+0x114>
c000e5b0:	3d 3d 20 72 75       	cmp    eax,0x7572203d
c000e5b5:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000e5b6:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000e5b7:	69 6e 67 5f 74 68 72 	imul   ebp,DWORD PTR [esi+0x67],0x7268745f
c000e5be:	65 61                	gs popa 
c000e5c0:	64 28 29             	sub    BYTE PTR fs:[ecx],ch
c000e5c3:	00 70 6c             	add    BYTE PTR [eax+0x6c],dh
c000e5c6:	6f                   	outs   dx,DWORD PTR ds:[esi]
c000e5c7:	63 6b 2d             	arpl   WORD PTR [ebx+0x2d],bp
c000e5ca:	3e 68 6f 6c 64 65    	ds push 0x65646c6f
c000e5d0:	72 5f                	jb     c000e631 <__func__.1061+0x5>
c000e5d2:	72 65                	jb     c000e639 <__func__.1061+0xd>
c000e5d4:	70 65                	jo     c000e63b <__func__.1061+0xf>
c000e5d6:	61                   	popa   
c000e5d7:	74 5f                	je     c000e638 <__func__.1061+0xc>
c000e5d9:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000e5da:	72 20                	jb     c000e5fc <__func__.1219+0x140>
c000e5dc:	3d 3d 20 31 00       	cmp    eax,0x31203d
c000e5e1:	00 00                	add    BYTE PTR [eax],al
c000e5e3:	00 50 65             	add    BYTE PTR [eax+0x65],dl
c000e5e6:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000e5e7:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c000e5ea:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c000e5ef:	65 6c                	gs ins BYTE PTR es:[edi],dx
c000e5f1:	20 28                	and    BYTE PTR [eax],ch
c000e5f3:	50                   	push   eax
c000e5f4:	4b                   	dec    ebx
c000e5f5:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000e5f6:	29 20                	sub    DWORD PTR [eax],esp
c000e5f8:	76 65                	jbe    c000e65f <__func__.1065+0x23>
c000e5fa:	72 73                	jb     c000e66f <__func__.1065+0x33>
c000e5fc:	69 6f 6e 20 30 2e 30 	imul   ebp,DWORD PTR [edi+0x6e],0x302e3020
c000e603:	2e 30 20             	xor    BYTE PTR cs:[eax],ah
c000e606:	74 65                	je     c000e66d <__func__.1065+0x31>
c000e608:	73 74                	jae    c000e67e <__func__.1065+0x42>
	...

c000e60c <__func__.1040>:
c000e60c:	73 65                	jae    c000e673 <__func__.1065+0x37>
c000e60e:	6d                   	ins    DWORD PTR es:[edi],dx
c000e60f:	61                   	popa   
c000e610:	5f                   	pop    edi
c000e611:	69 6e 69 74 00 00 00 	imul   ebp,DWORD PTR [esi+0x69],0x74

c000e618 <__func__.1048>:
c000e618:	73 65                	jae    c000e67f <__func__.1065+0x43>
c000e61a:	6d                   	ins    DWORD PTR es:[edi],dx
c000e61b:	61                   	popa   
c000e61c:	5f                   	pop    edi
c000e61d:	64 6f                	outs   dx,DWORD PTR fs:[esi]
c000e61f:	77 6e                	ja     c000e68f <__func__.1065+0x53>
c000e621:	00 00                	add    BYTE PTR [eax],al
	...

c000e624 <__func__.1056>:
c000e624:	73 65                	jae    c000e68b <__func__.1065+0x4f>
c000e626:	6d                   	ins    DWORD PTR es:[edi],dx
c000e627:	61                   	popa   
c000e628:	5f                   	pop    edi
c000e629:	75 70                	jne    c000e69b <__func__.1065+0x5f>
	...

c000e62c <__func__.1061>:
c000e62c:	6c                   	ins    BYTE PTR es:[edi],dx
c000e62d:	6f                   	outs   dx,DWORD PTR ds:[esi]
c000e62e:	63 6b 5f             	arpl   WORD PTR [ebx+0x5f],bp
c000e631:	61                   	popa   
c000e632:	63 71 75             	arpl   WORD PTR [ecx+0x75],si
c000e635:	69 72 65 00 00 00 00 	imul   esi,DWORD PTR [edx+0x65],0x0

c000e63c <__func__.1065>:
c000e63c:	6c                   	ins    BYTE PTR es:[edi],dx
c000e63d:	6f                   	outs   dx,DWORD PTR ds:[esi]
c000e63e:	63 6b 5f             	arpl   WORD PTR [ebx+0x5f],bp
c000e641:	72 65                	jb     c000e6a8 <__func__.1065+0x6c>
c000e643:	6c                   	ins    BYTE PTR es:[edi],dx
c000e644:	65 61                	gs popa 
c000e646:	73 65                	jae    c000e6ad <__func__.1065+0x71>
c000e648:	00 00                	add    BYTE PTR [eax],al
c000e64a:	00 00                	add    BYTE PTR [eax],al
c000e64c:	4d                   	dec    ebp
c000e64d:	61                   	popa   
c000e64e:	69 6e 20 74 68 72 65 	imul   ebp,DWORD PTR [esi+0x20],0x65726874
c000e655:	61                   	popa   
c000e656:	64 00 21             	add    BYTE PTR fs:[ecx],ah
c000e659:	6c                   	ins    BYTE PTR es:[edi],dx
c000e65a:	69 73 74 5f 66 69 6e 	imul   esi,DWORD PTR [ebx+0x74],0x6e69665f
c000e661:	64 28 26             	sub    BYTE PTR fs:[esi],ah
c000e664:	72 65                	jb     c000e6cb <__func__.1065+0x8f>
c000e666:	61                   	popa   
c000e667:	64 79 5f             	fs jns c000e6c9 <__func__.1065+0x8d>
c000e66a:	6c                   	ins    BYTE PTR es:[edi],dx
c000e66b:	69 73 74 2c 26 28 74 	imul   esi,DWORD PTR [ebx+0x74],0x7428262c
c000e672:	68 72 65 61 64       	push   0x64616572
c000e677:	2d 3e 67 65 6e       	sub    eax,0x6e65673e
c000e67c:	65 72 61             	gs jb  c000e6e0 <__func__.1065+0xa4>
c000e67f:	6c                   	ins    BYTE PTR es:[edi],dx
c000e680:	5f                   	pop    edi
c000e681:	74 61                	je     c000e6e4 <__func__.1065+0xa8>
c000e683:	67 29 29             	sub    DWORD PTR [bx+di],ebp
c000e686:	00 74 68 72          	add    BYTE PTR [eax+ebp*2+0x72],dh
c000e68a:	65 61                	gs popa 
c000e68c:	64 2f                	fs das 
c000e68e:	74 68                	je     c000e6f8 <__func__.1065+0xbc>
c000e690:	72 65                	jb     c000e6f7 <__func__.1065+0xbb>
c000e692:	61                   	popa   
c000e693:	64 2e 63 00          	fs arpl WORD PTR cs:[eax],ax
c000e697:	21 6c 69 73          	and    DWORD PTR [ecx+ebp*2+0x73],ebp
c000e69b:	74 5f                	je     c000e6fc <__func__.1065+0xc0>
c000e69d:	66 69 6e 64 28 26    	imul   bp,WORD PTR [esi+0x64],0x2628
c000e6a3:	61                   	popa   
c000e6a4:	6c                   	ins    BYTE PTR es:[edi],dx
c000e6a5:	6c                   	ins    BYTE PTR es:[edi],dx
c000e6a6:	5f                   	pop    edi
c000e6a7:	6c                   	ins    BYTE PTR es:[edi],dx
c000e6a8:	69 73 74 2c 26 28 74 	imul   esi,DWORD PTR [ebx+0x74],0x7428262c
c000e6af:	68 72 65 61 64       	push   0x64616572
c000e6b4:	2d 3e 61 6c 6c       	sub    eax,0x6c6c613e
c000e6b9:	5f                   	pop    edi
c000e6ba:	74 61                	je     c000e71d <__func__.1065+0xe1>
c000e6bc:	67 29 29             	sub    DWORD PTR [bx+di],ebp
c000e6bf:	00 63 75             	add    BYTE PTR [ebx+0x75],ah
c000e6c2:	72 5f                	jb     c000e723 <__func__.1065+0xe7>
c000e6c4:	74 68                	je     c000e72e <__func__.1065+0xf2>
c000e6c6:	72 65                	jb     c000e72d <__func__.1065+0xf1>
c000e6c8:	61                   	popa   
c000e6c9:	64 2d 3e 73 74 61    	fs sub eax,0x6174733e
c000e6cf:	63 6b 5f             	arpl   WORD PTR [ebx+0x5f],bp
c000e6d2:	6d                   	ins    DWORD PTR es:[edi],dx
c000e6d3:	61                   	popa   
c000e6d4:	67 69 63 20 3d 3d 20 	imul   esp,DWORD PTR [bp+di+0x20],0x30203d3d
c000e6db:	30 
c000e6dc:	78 31                	js     c000e70f <__func__.1065+0xd3>
c000e6de:	32 33                	xor    dh,BYTE PTR [ebx]
c000e6e0:	34 35                	xor    al,0x35
c000e6e2:	36 37                	ss aaa 
c000e6e4:	38 00                	cmp    BYTE PTR [eax],al
c000e6e6:	21 28                	and    DWORD PTR [eax],ebp
c000e6e8:	6c                   	ins    BYTE PTR es:[edi],dx
c000e6e9:	69 73 74 5f 66 69 6e 	imul   esi,DWORD PTR [ebx+0x74],0x6e69665f
c000e6f0:	64 28 26             	sub    BYTE PTR fs:[esi],ah
c000e6f3:	72 65                	jb     c000e75a <__func__.1065+0x11e>
c000e6f5:	61                   	popa   
c000e6f6:	64 79 5f             	fs jns c000e758 <__func__.1065+0x11c>
c000e6f9:	6c                   	ins    BYTE PTR es:[edi],dx
c000e6fa:	69 73 74 2c 26 28 63 	imul   esi,DWORD PTR [ebx+0x74],0x6328262c
c000e701:	75 72                	jne    c000e775 <__func__.1065+0x139>
c000e703:	5f                   	pop    edi
c000e704:	74 68                	je     c000e76e <__func__.1065+0x132>
c000e706:	72 65                	jb     c000e76d <__func__.1065+0x131>
c000e708:	61                   	popa   
c000e709:	64 2d 3e 67 65 6e    	fs sub eax,0x6e65673e
c000e70f:	65 72 61             	gs jb  c000e773 <__func__.1065+0x137>
c000e712:	6c                   	ins    BYTE PTR es:[edi],dx
c000e713:	5f                   	pop    edi
c000e714:	74 61                	je     c000e777 <__func__.1065+0x13b>
c000e716:	67 29 29             	sub    DWORD PTR [bx+di],ebp
c000e719:	29 00                	sub    DWORD PTR [eax],eax
c000e71b:	21 28                	and    DWORD PTR [eax],ebp
c000e71d:	6c                   	ins    BYTE PTR es:[edi],dx
c000e71e:	69 73 74 5f 65 6d 70 	imul   esi,DWORD PTR [ebx+0x74],0x706d655f
c000e725:	74 79                	je     c000e7a0 <__func__.1065+0x164>
c000e727:	28 26                	sub    BYTE PTR [esi],ah
c000e729:	72 65                	jb     c000e790 <__func__.1065+0x154>
c000e72b:	61                   	popa   
c000e72c:	64 79 5f             	fs jns c000e78e <__func__.1065+0x152>
c000e72f:	6c                   	ins    BYTE PTR es:[edi],dx
c000e730:	69 73 74 29 29 00 72 	imul   esi,DWORD PTR [ebx+0x74],0x72002929
c000e737:	65 61                	gs popa 
c000e739:	64 79 5f             	fs jns c000e79b <__func__.1065+0x15f>
c000e73c:	6c                   	ins    BYTE PTR es:[edi],dx
c000e73d:	69 73 74 2e 74 61 69 	imul   esi,DWORD PTR [ebx+0x74],0x6961742e
c000e744:	6c                   	ins    BYTE PTR es:[edi],dx
c000e745:	2e 70 72             	cs jo  c000e7ba <__func__.1065+0x17e>
c000e748:	65 76 20             	gs jbe c000e76b <__func__.1065+0x12f>
c000e74b:	21 3d 20 26 72 65    	and    DWORD PTR ds:0x65722620,edi
c000e751:	61                   	popa   
c000e752:	64 79 5f             	fs jns c000e7b4 <__func__.1065+0x178>
c000e755:	6c                   	ins    BYTE PTR es:[edi],dx
c000e756:	69 73 74 2e 68 65 61 	imul   esi,DWORD PTR [ebx+0x74],0x6165682e
c000e75d:	64 00 75 73          	add    BYTE PTR fs:[ebp+0x73],dh
c000e761:	65 72 5f             	gs jb  c000e7c3 <__func__.1065+0x187>
c000e764:	70 72                	jo     c000e7d8 <__func__.1065+0x19c>
c000e766:	6f                   	outs   dx,DWORD PTR ds:[esi]
c000e767:	67 00 73 74          	add    BYTE PTR [bp+di+0x74],dh
c000e76b:	61                   	popa   
c000e76c:	74 75                	je     c000e7e3 <__func__.1065+0x1a7>
c000e76e:	73 20                	jae    c000e790 <__func__.1065+0x154>
c000e770:	21 3d 20 54 41 53    	and    DWORD PTR ds:0x53415420,edi
c000e776:	4b                   	dec    ebx
c000e777:	5f                   	pop    edi
c000e778:	52                   	push   edx
c000e779:	55                   	push   ebp
c000e77a:	4e                   	dec    esi
c000e77b:	4e                   	dec    esi
c000e77c:	49                   	dec    ecx
c000e77d:	4e                   	dec    esi
c000e77e:	47                   	inc    edi
c000e77f:	20 26                	and    BYTE PTR [esi],ah
c000e781:	26 20 73 74          	and    BYTE PTR es:[ebx+0x74],dh
c000e785:	61                   	popa   
c000e786:	74 75                	je     c000e7fd <__func__.1065+0x1c1>
c000e788:	73 20                	jae    c000e7aa <__func__.1065+0x16e>
c000e78a:	21 3d 20 54 41 53    	and    DWORD PTR ds:0x53415420,edi
c000e790:	4b                   	dec    ebx
c000e791:	5f                   	pop    edi
c000e792:	52                   	push   edx
c000e793:	45                   	inc    ebp
c000e794:	41                   	inc    ecx
c000e795:	44                   	inc    esp
c000e796:	59                   	pop    ecx
c000e797:	00 21                	add    BYTE PTR [ecx],ah
c000e799:	6c                   	ins    BYTE PTR es:[edi],dx
c000e79a:	69 73 74 5f 66 69 6e 	imul   esi,DWORD PTR [ebx+0x74],0x6e69665f
c000e7a1:	64 28 26             	sub    BYTE PTR fs:[esi],ah
c000e7a4:	72 65                	jb     c000e80b <__func__.1065+0x1cf>
c000e7a6:	61                   	popa   
c000e7a7:	64 79 5f             	fs jns c000e809 <__func__.1065+0x1cd>
c000e7aa:	6c                   	ins    BYTE PTR es:[edi],dx
c000e7ab:	69 73 74 2c 26 28 70 	imul   esi,DWORD PTR [ebx+0x74],0x7028262c
c000e7b2:	74 68                	je     c000e81c <__func__.1065+0x1e0>
c000e7b4:	72 65                	jb     c000e81b <__func__.1065+0x1df>
c000e7b6:	61                   	popa   
c000e7b7:	64 2d 3e 67 65 6e    	fs sub eax,0x6e65673e
c000e7bd:	65 72 61             	gs jb  c000e821 <__func__.1215+0x1>
c000e7c0:	6c                   	ins    BYTE PTR es:[edi],dx
c000e7c1:	5f                   	pop    edi
c000e7c2:	74 61                	je     c000e825 <__func__.1215+0x5>
c000e7c4:	67 29 29             	sub    DWORD PTR [bx+di],ebp
c000e7c7:	00 74 68 72          	add    BYTE PTR [eax+ebp*2+0x72],dh
c000e7cb:	65 61                	gs popa 
c000e7cd:	64 20 75 6e          	and    BYTE PTR fs:[ebp+0x6e],dh
c000e7d1:	62 6c 6f 63          	bound  ebp,QWORD PTR [edi+ebp*2+0x63]
c000e7d5:	6b 3a 20             	imul   edi,DWORD PTR [edx],0x20
c000e7d8:	62 6c 6f 63          	bound  ebp,QWORD PTR [edi+ebp*2+0x63]
c000e7dc:	6b 65 64 20          	imul   esp,DWORD PTR [ebp+0x64],0x20
c000e7e0:	74 68                	je     c000e84a <__func__.1228+0xe>
c000e7e2:	72 65                	jb     c000e849 <__func__.1228+0xd>
c000e7e4:	61                   	popa   
c000e7e5:	64 20 69 6e          	and    BYTE PTR fs:[ecx+0x6e],ch
c000e7e9:	20 72 65             	and    BYTE PTR [edx+0x65],dh
c000e7ec:	61                   	popa   
c000e7ed:	64 79 20             	fs jns c000e810 <__func__.1065+0x1d4>
c000e7f0:	6c                   	ins    BYTE PTR es:[edi],dx
c000e7f1:	69 73 74 00 00 00 00 	imul   esi,DWORD PTR [ebx+0x74],0x0
c000e7f8:	50                   	push   eax
c000e7f9:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c000e7fb:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c000e7fe:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c000e803:	65 6c                	gs ins BYTE PTR es:[edi],dx
c000e805:	20 28                	and    BYTE PTR [eax],ch
c000e807:	50                   	push   eax
c000e808:	4b                   	dec    ebx
c000e809:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000e80a:	29 20                	sub    DWORD PTR [eax],esp
c000e80c:	76 65                	jbe    c000e873 <__func__.1235+0x27>
c000e80e:	72 73                	jb     c000e883 <__func__.1235+0x37>
c000e810:	69 6f 6e 20 30 2e 30 	imul   ebp,DWORD PTR [edi+0x6e],0x302e3020
c000e817:	2e 30 20             	xor    BYTE PTR cs:[eax],ah
c000e81a:	74 65                	je     c000e881 <__func__.1235+0x35>
c000e81c:	73 74                	jae    c000e892 <__func__.1235+0x46>
	...

c000e820 <__func__.1215>:
c000e820:	74 68                	je     c000e88a <__func__.1235+0x3e>
c000e822:	72 65                	jb     c000e889 <__func__.1235+0x3d>
c000e824:	61                   	popa   
c000e825:	64 5f                	fs pop edi
c000e827:	73 74                	jae    c000e89d <__func__.1235+0x51>
c000e829:	61                   	popa   
c000e82a:	72 74                	jb     c000e8a0 <__func__.1235+0x54>
c000e82c:	00 00                	add    BYTE PTR [eax],al
	...

c000e830 <__func__.1222>:
c000e830:	73 63                	jae    c000e895 <__func__.1235+0x49>
c000e832:	68 65 64 75 6c       	push   0x6c756465
c000e837:	65 00 00             	add    BYTE PTR gs:[eax],al
	...

c000e83c <__func__.1228>:
c000e83c:	74 68                	je     c000e8a6 <__func__.1235+0x5a>
c000e83e:	72 65                	jb     c000e8a5 <__func__.1235+0x59>
c000e840:	61                   	popa   
c000e841:	64 5f                	fs pop edi
c000e843:	62 6c 6f 63          	bound  ebp,QWORD PTR [edi+ebp*2+0x63]
c000e847:	6b 00 00             	imul   eax,DWORD PTR [eax],0x0
	...

c000e84c <__func__.1235>:
c000e84c:	74 68                	je     c000e8b6 <__func__.1235+0x6a>
c000e84e:	72 65                	jb     c000e8b5 <__func__.1235+0x69>
c000e850:	61                   	popa   
c000e851:	64 5f                	fs pop edi
c000e853:	75 6e                	jne    c000e8c3 <__func__.1235+0x77>
c000e855:	62 6c 6f 63          	bound  ebp,QWORD PTR [edi+ebp*2+0x63]
c000e859:	6b 00 00             	imul   eax,DWORD PTR [eax],0x0
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
c000e870:	76 65                	jbe    c000e8d7 <__func__.1235+0x8b>
c000e872:	72 73                	jb     c000e8e7 <__func__.1235+0x9b>
c000e874:	69 6f 6e 20 30 2e 30 	imul   ebp,DWORD PTR [edi+0x6e],0x302e3020
c000e87b:	2e 30 20             	xor    BYTE PTR cs:[eax],ah
c000e87e:	74 65                	je     c000e8e5 <__func__.1235+0x99>
c000e880:	73 74                	jae    c000e8f6 <__func__.1235+0xaa>
c000e882:	00 00                	add    BYTE PTR [eax],al
c000e884:	70 74                	jo     c000e8fa <__func__.1235+0xae>
c000e886:	68 72 65 61 64       	push   0x64616572
c000e88b:	2d 3e 70 61 67       	sub    eax,0x6761703e
c000e890:	65 5f                	gs pop edi
c000e892:	64 69 72 20 21 3d 20 	imul   esi,DWORD PTR fs:[edx+0x20],0x4e203d21
c000e899:	4e 
c000e89a:	55                   	push   ebp
c000e89b:	4c                   	dec    esp
c000e89c:	4c                   	dec    esp
c000e89d:	00 75 73             	add    BYTE PTR [ebp+0x73],dh
c000e8a0:	65 72 70             	gs jb  c000e913 <__func__.1235+0xc7>
c000e8a3:	72 6f                	jb     c000e914 <__func__.1235+0xc8>
c000e8a5:	67 2f                	addr16 das 
c000e8a7:	70 72                	jo     c000e91b <__func__.1235+0xcf>
c000e8a9:	6f                   	outs   dx,DWORD PTR ds:[esi]
c000e8aa:	63 65 73             	arpl   WORD PTR [ebp+0x73],sp
c000e8ad:	73 2e                	jae    c000e8dd <__func__.1235+0x91>
c000e8af:	63 00                	arpl   WORD PTR [eax],ax
c000e8b1:	70 74                	jo     c000e927 <__func__.1235+0xdb>
c000e8b3:	68 72 65 61 64       	push   0x64616572
c000e8b8:	20 21                	and    BYTE PTR [ecx],ah
c000e8ba:	3d 20 4e 55 4c       	cmp    eax,0x4c554e20
c000e8bf:	4c                   	dec    esp
c000e8c0:	00 63 72             	add    BYTE PTR [ebx+0x72],ah
c000e8c3:	65 61                	gs popa 
c000e8c5:	74 65                	je     c000e92c <__func__.1235+0xe0>
c000e8c7:	5f                   	pop    edi
c000e8c8:	70 61                	jo     c000e92b <__func__.1235+0xdf>
c000e8ca:	67 65 5f             	addr16 gs pop edi
c000e8cd:	64 69 72 3a 20 67 65 	imul   esi,DWORD PTR fs:[edx+0x3a],0x74656720
c000e8d4:	74 
c000e8d5:	20 6b 65             	and    BYTE PTR [ebx+0x65],ch
c000e8d8:	72 6e                	jb     c000e948 <__func__.1235+0xfc>
c000e8da:	65 6c                	gs ins BYTE PTR es:[edi],dx
c000e8dc:	20 70 61             	and    BYTE PTR [eax+0x61],dh
c000e8df:	67 65 20 66 61       	and    BYTE PTR gs:[bp+0x61],ah
c000e8e4:	69 6c 65 64 21 0a 00 	imul   ebp,DWORD PTR [ebp+eiz*2+0x64],0x70000a21
c000e8eb:	70 
c000e8ec:	72 6f                	jb     c000e95d <__func__.1235+0x111>
c000e8ee:	67 20 50 43          	and    BYTE PTR [bx+si+0x43],dl
c000e8f2:	42                   	inc    edx
c000e8f3:	3a 20                	cmp    ah,BYTE PTR [eax]
c000e8f5:	00 20                	add    BYTE PTR [eax],ah
c000e8f7:	70 72                	jo     c000e96b <__func__.1235+0x11f>
c000e8f9:	6f                   	outs   dx,DWORD PTR ds:[esi]
c000e8fa:	67 20 70 67          	and    BYTE PTR [bx+si+0x67],dh
c000e8fe:	64 69 72 3a 20 00 21 	imul   esi,DWORD PTR fs:[edx+0x3a],0x28210020
c000e905:	28 
c000e906:	6c                   	ins    BYTE PTR es:[edi],dx
c000e907:	69 73 74 5f 66 69 6e 	imul   esi,DWORD PTR [ebx+0x74],0x6e69665f
c000e90e:	64 28 26             	sub    BYTE PTR fs:[esi],ah
c000e911:	61                   	popa   
c000e912:	6c                   	ins    BYTE PTR es:[edi],dx
c000e913:	6c                   	ins    BYTE PTR es:[edi],dx
c000e914:	5f                   	pop    edi
c000e915:	6c                   	ins    BYTE PTR es:[edi],dx
c000e916:	69 73 74 2c 26 28 70 	imul   esi,DWORD PTR [ebx+0x74],0x7028262c
c000e91d:	74 68                	je     c000e987 <__func__.1235+0x13b>
c000e91f:	72 65                	jb     c000e986 <__func__.1235+0x13a>
c000e921:	61                   	popa   
c000e922:	64 2d 3e 61 6c 6c    	fs sub eax,0x6c6c613e
c000e928:	5f                   	pop    edi
c000e929:	74 61                	je     c000e98c <__func__.1209>
c000e92b:	67 29 29             	sub    DWORD PTR [bx+di],ebp
c000e92e:	29 00                	sub    DWORD PTR [eax],eax
c000e930:	21 28                	and    DWORD PTR [eax],ebp
c000e932:	6c                   	ins    BYTE PTR es:[edi],dx
c000e933:	69 73 74 5f 66 69 6e 	imul   esi,DWORD PTR [ebx+0x74],0x6e69665f
c000e93a:	64 28 26             	sub    BYTE PTR fs:[esi],ah
c000e93d:	72 65                	jb     c000e9a4 <__func__.1214+0x4>
c000e93f:	61                   	popa   
c000e940:	64 79 5f             	fs jns c000e9a2 <__func__.1214+0x2>
c000e943:	6c                   	ins    BYTE PTR es:[edi],dx
c000e944:	69 73 74 2c 26 28 70 	imul   esi,DWORD PTR [ebx+0x74],0x7028262c
c000e94b:	74 68                	je     c000e9b5 <__func__.1229+0x1>
c000e94d:	72 65                	jb     c000e9b4 <__func__.1229>
c000e94f:	61                   	popa   
c000e950:	64 2d 3e 67 65 6e    	fs sub eax,0x6e65673e
c000e956:	65 72 61             	gs jb  c000e9ba <__func__.1229+0x6>
c000e959:	6c                   	ins    BYTE PTR es:[edi],dx
c000e95a:	5f                   	pop    edi
c000e95b:	74 61                	je     c000e9be <__func__.1229+0xa>
c000e95d:	67 29 29             	sub    DWORD PTR [bx+di],ebp
c000e960:	29 00                	sub    DWORD PTR [eax],eax
c000e962:	00 00                	add    BYTE PTR [eax],al
c000e964:	50                   	push   eax
c000e965:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c000e967:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c000e96a:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c000e96f:	65 6c                	gs ins BYTE PTR es:[edi],dx
c000e971:	20 28                	and    BYTE PTR [eax],ch
c000e973:	50                   	push   eax
c000e974:	4b                   	dec    ebx
c000e975:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000e976:	29 20                	sub    DWORD PTR [eax],esp
c000e978:	76 65                	jbe    c000e9df <__func__.1229+0x2b>
c000e97a:	72 73                	jb     c000e9ef <__func__.1229+0x3b>
c000e97c:	69 6f 6e 20 30 2e 30 	imul   ebp,DWORD PTR [edi+0x6e],0x302e3020
c000e983:	2e 30 20             	xor    BYTE PTR cs:[eax],ah
c000e986:	74 65                	je     c000e9ed <__func__.1229+0x39>
c000e988:	73 74                	jae    c000e9fe <__func__.1229+0x4a>
	...

c000e98c <__func__.1209>:
c000e98c:	70 61                	jo     c000e9ef <__func__.1229+0x3b>
c000e98e:	67 65 5f             	addr16 gs pop edi
c000e991:	64 69 72 5f 61 63 74 	imul   esi,DWORD PTR fs:[edx+0x5f],0x69746361
c000e998:	69 
c000e999:	76 61                	jbe    c000e9fc <__func__.1229+0x48>
c000e99b:	74 65                	je     c000ea02 <__func__.1229+0x4e>
c000e99d:	00 00                	add    BYTE PTR [eax],al
	...

c000e9a0 <__func__.1214>:
c000e9a0:	70 72                	jo     c000ea14 <__func__.1229+0x60>
c000e9a2:	6f                   	outs   dx,DWORD PTR ds:[esi]
c000e9a3:	63 65 73             	arpl   WORD PTR [ebp+0x73],sp
c000e9a6:	73 5f                	jae    c000ea07 <__func__.1229+0x53>
c000e9a8:	61                   	popa   
c000e9a9:	63 74 69 76          	arpl   WORD PTR [ecx+ebp*2+0x76],si
c000e9ad:	61                   	popa   
c000e9ae:	74 65                	je     c000ea15 <__func__.1229+0x61>
c000e9b0:	00 00                	add    BYTE PTR [eax],al
	...

c000e9b4 <__func__.1229>:
c000e9b4:	70 72                	jo     c000ea28 <__func__.1229+0x74>
c000e9b6:	6f                   	outs   dx,DWORD PTR ds:[esi]
c000e9b7:	63 65 73             	arpl   WORD PTR [ebp+0x73],sp
c000e9ba:	73 5f                	jae    c000ea1b <__func__.1229+0x67>
c000e9bc:	65 78 65             	gs js  c000ea24 <__func__.1229+0x70>
c000e9bf:	63 75 74             	arpl   WORD PTR [ebp+0x74],si
c000e9c2:	65 00 50 65          	add    BYTE PTR gs:[eax+0x65],dl
c000e9c6:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000e9c7:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c000e9ca:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c000e9cf:	65 6c                	gs ins BYTE PTR es:[edi],dx
c000e9d1:	20 28                	and    BYTE PTR [eax],ch
c000e9d3:	50                   	push   eax
c000e9d4:	4b                   	dec    ebx
c000e9d5:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000e9d6:	29 20                	sub    DWORD PTR [eax],esp
c000e9d8:	76 65                	jbe    c000ea3f <__func__.1229+0x8b>
c000e9da:	72 73                	jb     c000ea4f <keymap+0x7>
c000e9dc:	69 6f 6e 20 30 2e 30 	imul   ebp,DWORD PTR [edi+0x6e],0x302e3020
c000e9e3:	2e 30 20             	xor    BYTE PTR cs:[eax],ah
c000e9e6:	74 65                	je     c000ea4d <keymap+0x5>
c000e9e8:	73 74                	jae    c000ea5e <keymap+0x16>
c000e9ea:	00 00                	add    BYTE PTR [eax],al
c000e9ec:	50                   	push   eax
c000e9ed:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c000e9ef:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c000e9f2:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c000e9f7:	65 6c                	gs ins BYTE PTR es:[edi],dx
c000e9f9:	20 28                	and    BYTE PTR [eax],ch
c000e9fb:	50                   	push   eax
c000e9fc:	4b                   	dec    ebx
c000e9fd:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000e9fe:	29 20                	sub    DWORD PTR [eax],esp
c000ea00:	76 65                	jbe    c000ea67 <keymap+0x1f>
c000ea02:	72 73                	jb     c000ea77 <keymap+0x2f>
c000ea04:	69 6f 6e 20 30 2e 30 	imul   ebp,DWORD PTR [edi+0x6e],0x302e3020
c000ea0b:	2e 30 20             	xor    BYTE PTR cs:[eax],ah
c000ea0e:	74 65                	je     c000ea75 <keymap+0x2d>
c000ea10:	73 74                	jae    c000ea86 <keymap+0x3e>
c000ea12:	00 00                	add    BYTE PTR [eax],al
c000ea14:	75 6e                	jne    c000ea84 <keymap+0x3c>
c000ea16:	6b 6e 6f 77          	imul   ebp,DWORD PTR [esi+0x6f],0x77
c000ea1a:	20 6b 65             	and    BYTE PTR [ebx+0x65],ch
c000ea1d:	79 00                	jns    c000ea1f <__func__.1229+0x6b>
c000ea1f:	00 50 65             	add    BYTE PTR [eax+0x65],dl
c000ea22:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000ea23:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c000ea26:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c000ea2b:	65 6c                	gs ins BYTE PTR es:[edi],dx
c000ea2d:	20 28                	and    BYTE PTR [eax],ch
c000ea2f:	50                   	push   eax
c000ea30:	4b                   	dec    ebx
c000ea31:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000ea32:	29 20                	sub    DWORD PTR [eax],esp
c000ea34:	76 65                	jbe    c000ea9b <keymap+0x53>
c000ea36:	72 73                	jb     c000eaab <keymap+0x63>
c000ea38:	69 6f 6e 20 30 2e 30 	imul   ebp,DWORD PTR [edi+0x6e],0x302e3020
c000ea3f:	2e 30 20             	xor    BYTE PTR cs:[eax],ah
c000ea42:	74 65                	je     c000eaa9 <keymap+0x61>
c000ea44:	73 74                	jae    c000eaba <keymap+0x72>
	...

c000ea48 <keymap>:
c000ea48:	00 00                	add    BYTE PTR [eax],al
c000ea4a:	1b 1b                	sbb    ebx,DWORD PTR [ebx]
c000ea4c:	31 21                	xor    DWORD PTR [ecx],esp
c000ea4e:	32 40 33             	xor    al,BYTE PTR [eax+0x33]
c000ea51:	23 34 24             	and    esi,DWORD PTR [esp]
c000ea54:	35 25 36 5e 37       	xor    eax,0x375e3625
c000ea59:	26 38 2a             	cmp    BYTE PTR es:[edx],ch
c000ea5c:	39 28                	cmp    DWORD PTR [eax],ebp
c000ea5e:	30 29                	xor    BYTE PTR [ecx],ch
c000ea60:	2d 5f 3d 2b 08       	sub    eax,0x82b3d5f
c000ea65:	08 09                	or     BYTE PTR [ecx],cl
c000ea67:	09 71 51             	or     DWORD PTR [ecx+0x51],esi
c000ea6a:	77 57                	ja     c000eac3 <keymap+0x7b>
c000ea6c:	65 45                	gs inc ebp
c000ea6e:	72 52                	jb     c000eac2 <keymap+0x7a>
c000ea70:	74 54                	je     c000eac6 <keymap+0x7e>
c000ea72:	79 59                	jns    c000eacd <keymap+0x85>
c000ea74:	75 55                	jne    c000eacb <keymap+0x83>
c000ea76:	69 49 6f 4f 70 50 5b 	imul   ecx,DWORD PTR [ecx+0x6f],0x5b50704f
c000ea7d:	7b 5d                	jnp    c000eadc <keymap+0x94>
c000ea7f:	7d 0d                	jge    c000ea8e <keymap+0x46>
c000ea81:	0d 00 00 61 41       	or     eax,0x41610000
c000ea86:	73 53                	jae    c000eadb <keymap+0x93>
c000ea88:	64 44                	fs inc esp
c000ea8a:	66 46                	inc    si
c000ea8c:	67 47                	addr16 inc edi
c000ea8e:	68 48 6a 4a 6b       	push   0x6b4a6a48
c000ea93:	4b                   	dec    ebx
c000ea94:	6c                   	ins    BYTE PTR es:[edi],dx
c000ea95:	4c                   	dec    esp
c000ea96:	3b 3a                	cmp    edi,DWORD PTR [edx]
c000ea98:	27                   	daa    
c000ea99:	22 60 7e             	and    ah,BYTE PTR [eax+0x7e]
c000ea9c:	00 00                	add    BYTE PTR [eax],al
c000ea9e:	5c                   	pop    esp
c000ea9f:	7c 7a                	jl     c000eb1b <keymap+0xd3>
c000eaa1:	5a                   	pop    edx
c000eaa2:	78 58                	js     c000eafc <keymap+0xb4>
c000eaa4:	63 43 76             	arpl   WORD PTR [ebx+0x76],ax
c000eaa7:	56                   	push   esi
c000eaa8:	62 42 6e             	bound  eax,QWORD PTR [edx+0x6e]
c000eaab:	4e                   	dec    esi
c000eaac:	6d                   	ins    DWORD PTR es:[edi],dx
c000eaad:	4d                   	dec    ebp
c000eaae:	2c 3c                	sub    al,0x3c
c000eab0:	2e 3e 2f             	cs ds das 
c000eab3:	3f                   	aas    
c000eab4:	00 00                	add    BYTE PTR [eax],al
c000eab6:	2a 2a                	sub    ch,BYTE PTR [edx]
c000eab8:	00 00                	add    BYTE PTR [eax],al
c000eaba:	20 20                	and    BYTE PTR [eax],ah
c000eabc:	00 00                	add    BYTE PTR [eax],al
c000eabe:	00 00                	add    BYTE PTR [eax],al
c000eac0:	50                   	push   eax
c000eac1:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c000eac3:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c000eac6:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c000eacb:	65 6c                	gs ins BYTE PTR es:[edi],dx
c000eacd:	20 28                	and    BYTE PTR [eax],ch
c000eacf:	50                   	push   eax
c000ead0:	4b                   	dec    ebx
c000ead1:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000ead2:	29 20                	sub    DWORD PTR [eax],esp
c000ead4:	76 65                	jbe    c000eb3b <keymap+0xf3>
c000ead6:	72 73                	jb     c000eb4b <keymap+0x103>
c000ead8:	69 6f 6e 20 30 2e 30 	imul   ebp,DWORD PTR [edi+0x6e],0x302e3020
c000eadf:	2e 30 20             	xor    BYTE PTR cs:[eax],ah
c000eae2:	74 65                	je     c000eb49 <keymap+0x101>
c000eae4:	73 74                	jae    c000eb5a <keymap+0x112>
c000eae6:	00 00                	add    BYTE PTR [eax],al
c000eae8:	50                   	push   eax
c000eae9:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c000eaeb:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c000eaee:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c000eaf3:	65 6c                	gs ins BYTE PTR es:[edi],dx
c000eaf5:	20 28                	and    BYTE PTR [eax],ch
c000eaf7:	50                   	push   eax
c000eaf8:	4b                   	dec    ebx
c000eaf9:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000eafa:	29 20                	sub    DWORD PTR [eax],esp
c000eafc:	76 65                	jbe    c000eb63 <keymap+0x11b>
c000eafe:	72 73                	jb     c000eb73 <keymap+0x12b>
c000eb00:	69 6f 6e 20 30 2e 30 	imul   ebp,DWORD PTR [edi+0x6e],0x302e3020
c000eb07:	2e 30 20             	xor    BYTE PTR cs:[eax],ah
c000eb0a:	74 65                	je     c000eb71 <keymap+0x129>
c000eb0c:	73 74                	jae    c000eb82 <keymap+0x13a>
c000eb0e:	00 00                	add    BYTE PTR [eax],al
c000eb10:	62 79 74             	bound  edi,QWORD PTR [ecx+0x74]
c000eb13:	65 5f                	gs pop edi
c000eb15:	69 6e 64 65 78 20 3c 	imul   ebp,DWORD PTR [esi+0x64],0x3c207865
c000eb1c:	20 28                	and    BYTE PTR [eax],ch
c000eb1e:	62 74 6d 70          	bound  esi,QWORD PTR [ebp+ebp*2+0x70]
c000eb22:	2d 3e 62 74 6d       	sub    eax,0x6d74623e
c000eb27:	70 5f                	jo     c000eb88 <__func__.866+0x4>
c000eb29:	62 79 74             	bound  edi,QWORD PTR [ecx+0x74]
c000eb2c:	65 73 5f             	gs jae c000eb8e <__func__.866+0xa>
c000eb2f:	6c                   	ins    BYTE PTR es:[edi],dx
c000eb30:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c000eb32:	29 00                	sub    DWORD PTR [eax],eax
c000eb34:	6c                   	ins    BYTE PTR es:[edi],dx
c000eb35:	69 62 2f 62 69 74 6d 	imul   esp,DWORD PTR [edx+0x2f],0x6d746962
c000eb3c:	61                   	popa   
c000eb3d:	70 2e                	jo     c000eb6d <keymap+0x125>
c000eb3f:	63 00                	arpl   WORD PTR [eax],ax
c000eb41:	76 61                	jbe    c000eba4 <__func__.883+0x10>
c000eb43:	6c                   	ins    BYTE PTR es:[edi],dx
c000eb44:	75 65                	jne    c000ebab <__func__.883+0x17>
c000eb46:	20 3d 3d 20 30 20    	and    BYTE PTR ds:0x2030203d,bh
c000eb4c:	7c 7c                	jl     c000ebca <__func__.883+0x36>
c000eb4e:	20 76 61             	and    BYTE PTR [esi+0x61],dh
c000eb51:	6c                   	ins    BYTE PTR es:[edi],dx
c000eb52:	75 65                	jne    c000ebb9 <__func__.883+0x25>
c000eb54:	20 3d 3d 20 31 00    	and    BYTE PTR ds:0x31203d,bh
c000eb5a:	00 00                	add    BYTE PTR [eax],al
c000eb5c:	50                   	push   eax
c000eb5d:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c000eb5f:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c000eb62:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c000eb67:	65 6c                	gs ins BYTE PTR es:[edi],dx
c000eb69:	20 28                	and    BYTE PTR [eax],ch
c000eb6b:	50                   	push   eax
c000eb6c:	4b                   	dec    ebx
c000eb6d:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000eb6e:	29 20                	sub    DWORD PTR [eax],esp
c000eb70:	76 65                	jbe    c000ebd7 <__func__.883+0x43>
c000eb72:	72 73                	jb     c000ebe7 <__func__.883+0x53>
c000eb74:	69 6f 6e 20 30 2e 30 	imul   ebp,DWORD PTR [edi+0x6e],0x302e3020
c000eb7b:	2e 30 20             	xor    BYTE PTR cs:[eax],ah
c000eb7e:	74 65                	je     c000ebe5 <__func__.883+0x51>
c000eb80:	73 74                	jae    c000ebf6 <__func__.883+0x62>
	...

c000eb84 <__func__.866>:
c000eb84:	62 69 74             	bound  ebp,QWORD PTR [ecx+0x74]
c000eb87:	6d                   	ins    DWORD PTR es:[edi],dx
c000eb88:	61                   	popa   
c000eb89:	70 5f                	jo     c000ebea <__func__.883+0x56>
c000eb8b:	61                   	popa   
c000eb8c:	6c                   	ins    BYTE PTR es:[edi],dx
c000eb8d:	6c                   	ins    BYTE PTR es:[edi],dx
c000eb8e:	6f                   	outs   dx,DWORD PTR ds:[esi]
c000eb8f:	63 00                	arpl   WORD PTR [eax],ax
c000eb91:	00 00                	add    BYTE PTR [eax],al
	...

c000eb94 <__func__.883>:
c000eb94:	62 69 74             	bound  ebp,QWORD PTR [ecx+0x74]
c000eb97:	6d                   	ins    DWORD PTR es:[edi],dx
c000eb98:	61                   	popa   
c000eb99:	70 5f                	jo     c000ebfa <__func__.883+0x66>
c000eb9b:	73 65                	jae    c000ec02 <__func__.883+0x6e>
c000eb9d:	74 00                	je     c000eb9f <__func__.883+0xb>
c000eb9f:	00 66 69             	add    BYTE PTR [esi+0x69],ah
c000eba2:	66 6f                	outs   dx,WORD PTR ds:[esi]
c000eba4:	2d 3e 74 79 70       	sub    eax,0x7079743e
c000eba9:	65 20 3d 3d 20 38 20 	and    BYTE PTR gs:0x2038203d,bh
c000ebb0:	7c 7c                	jl     c000ec2e <__func__.1096+0x2>
c000ebb2:	20 66 69             	and    BYTE PTR [esi+0x69],ah
c000ebb5:	66 6f                	outs   dx,WORD PTR ds:[esi]
c000ebb7:	2d 3e 74 79 70       	sub    eax,0x7079743e
c000ebbc:	65 20 3d 3d 20 31 36 	and    BYTE PTR gs:0x3631203d,bh
c000ebc3:	20 7c 7c 20          	and    BYTE PTR [esp+edi*2+0x20],bh
c000ebc7:	66 69 66 6f 2d 3e    	imul   sp,WORD PTR [esi+0x6f],0x3e2d
c000ebcd:	74 79                	je     c000ec48 <__func__.1096+0x1c>
c000ebcf:	70 65                	jo     c000ec36 <__func__.1096+0xa>
c000ebd1:	20 3d 3d 20 33 32    	and    BYTE PTR ds:0x3233203d,bh
c000ebd7:	20 7c 7c 20          	and    BYTE PTR [esp+edi*2+0x20],bh
c000ebdb:	66 69 66 6f 2d 3e    	imul   sp,WORD PTR [esi+0x6f],0x3e2d
c000ebe1:	74 79                	je     c000ec5c <__func__.1096+0x30>
c000ebe3:	70 65                	jo     c000ec4a <__func__.1096+0x1e>
c000ebe5:	20 3d 3d 20 36 34    	and    BYTE PTR ds:0x3436203d,bh
c000ebeb:	00 6c 69 62          	add    BYTE PTR [ecx+ebp*2+0x62],ch
c000ebef:	2f                   	das    
c000ebf0:	66 69 66 6f 2e 63    	imul   sp,WORD PTR [esi+0x6f],0x632e
c000ebf6:	00 00                	add    BYTE PTR [eax],al
c000ebf8:	50                   	push   eax
c000ebf9:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c000ebfb:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c000ebfe:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c000ec03:	65 6c                	gs ins BYTE PTR es:[edi],dx
c000ec05:	20 28                	and    BYTE PTR [eax],ch
c000ec07:	50                   	push   eax
c000ec08:	4b                   	dec    ebx
c000ec09:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000ec0a:	29 20                	sub    DWORD PTR [eax],esp
c000ec0c:	76 65                	jbe    c000ec73 <__func__.1096+0x47>
c000ec0e:	72 73                	jb     c000ec83 <__func__.1096+0x57>
c000ec10:	69 6f 6e 20 30 2e 30 	imul   ebp,DWORD PTR [edi+0x6e],0x302e3020
c000ec17:	2e 30 20             	xor    BYTE PTR cs:[eax],ah
c000ec1a:	74 65                	je     c000ec81 <__func__.1096+0x55>
c000ec1c:	73 74                	jae    c000ec92 <__func__.1096+0x66>
	...

c000ec20 <__func__.1085>:
c000ec20:	66 69 66 6f 5f 70    	imul   sp,WORD PTR [esi+0x6f],0x705f
c000ec26:	75 74                	jne    c000ec9c <__func__.1096+0x70>
c000ec28:	00 00                	add    BYTE PTR [eax],al
	...

c000ec2c <__func__.1096>:
c000ec2c:	66 69 66 6f 5f 67    	imul   sp,WORD PTR [esi+0x6f],0x675f
c000ec32:	65 74 00             	gs je  c000ec35 <__func__.1096+0x9>
c000ec35:	00 00                	add    BYTE PTR [eax],al
c000ec37:	00 50 65             	add    BYTE PTR [eax+0x65],dl
c000ec3a:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000ec3b:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c000ec3e:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c000ec43:	65 6c                	gs ins BYTE PTR es:[edi],dx
c000ec45:	20 28                	and    BYTE PTR [eax],ch
c000ec47:	50                   	push   eax
c000ec48:	4b                   	dec    ebx
c000ec49:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000ec4a:	29 20                	sub    DWORD PTR [eax],esp
c000ec4c:	76 65                	jbe    c000ecb3 <__func__.1096+0x87>
c000ec4e:	72 73                	jb     c000ecc3 <digits.979+0x3>
c000ec50:	69 6f 6e 20 30 2e 30 	imul   ebp,DWORD PTR [edi+0x6e],0x302e3020
c000ec57:	2e 30 20             	xor    BYTE PTR cs:[eax],ah
c000ec5a:	74 65                	je     c000ecc1 <digits.979+0x1>
c000ec5c:	73 74                	jae    c000ecd2 <digits.979+0x12>
c000ec5e:	00 00                	add    BYTE PTR [eax],al
c000ec60:	d1 ae 00 c0 8d ae    	shr    DWORD PTR [esi-0x51724000],1
c000ec66:	00 c0                	add    al,al
c000ec68:	8d ae 00 c0 8d ae    	lea    ebp,[esi-0x51724000]
c000ec6e:	00 c0                	add    al,al
c000ec70:	8d ae 00 c0 8d ae    	lea    ebp,[esi-0x51724000]
c000ec76:	00 c0                	add    al,al
c000ec78:	8d ae 00 c0 8d ae    	lea    ebp,[esi-0x51724000]
c000ec7e:	00 c0                	add    al,al
c000ec80:	66 ae                	data16 scas al,BYTE PTR es:[edi]
c000ec82:	00 c0                	add    al,al
c000ec84:	85 ae 00 c0 74 ae    	test   DWORD PTR [esi-0x518b4000],ebp
c000ec8a:	00 c0                	add    al,al
c000ec8c:	8d ae 00 c0 8d ae    	lea    ebp,[esi-0x51724000]
c000ec92:	00 c0                	add    al,al
c000ec94:	74 ae                	je     c000ec44 <__func__.1096+0x18>
c000ec96:	00 c0                	add    al,al
c000ec98:	50                   	push   eax
c000ec99:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c000ec9b:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c000ec9e:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c000eca3:	65 6c                	gs ins BYTE PTR es:[edi],dx
c000eca5:	20 28                	and    BYTE PTR [eax],ch
c000eca7:	50                   	push   eax
c000eca8:	4b                   	dec    ebx
c000eca9:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000ecaa:	29 20                	sub    DWORD PTR [eax],esp
c000ecac:	76 65                	jbe    c000ed13 <digits.998+0x2b>
c000ecae:	72 73                	jb     c000ed23 <digits.998+0x3b>
c000ecb0:	69 6f 6e 20 30 2e 30 	imul   ebp,DWORD PTR [edi+0x6e],0x302e3020
c000ecb7:	2e 30 20             	xor    BYTE PTR cs:[eax],ah
c000ecba:	74 65                	je     c000ed21 <digits.998+0x39>
c000ecbc:	73 74                	jae    c000ed32 <digits.998+0x4a>
	...

c000ecc0 <digits.979>:
c000ecc0:	30 31                	xor    BYTE PTR [ecx],dh
c000ecc2:	32 33                	xor    dh,BYTE PTR [ebx]
c000ecc4:	34 35                	xor    al,0x35
c000ecc6:	36 37                	ss aaa 
c000ecc8:	38 39                	cmp    BYTE PTR [ecx],bh
c000ecca:	41                   	inc    ecx
c000eccb:	42                   	inc    edx
c000eccc:	43                   	inc    ebx
c000eccd:	44                   	inc    esp
c000ecce:	45                   	inc    ebp
c000eccf:	46                   	inc    esi
c000ecd0:	47                   	inc    edi
c000ecd1:	48                   	dec    eax
c000ecd2:	49                   	dec    ecx
c000ecd3:	4a                   	dec    edx
c000ecd4:	4b                   	dec    ebx
c000ecd5:	4c                   	dec    esp
c000ecd6:	4d                   	dec    ebp
c000ecd7:	4e                   	dec    esi
c000ecd8:	4f                   	dec    edi
c000ecd9:	50                   	push   eax
c000ecda:	51                   	push   ecx
c000ecdb:	52                   	push   edx
c000ecdc:	53                   	push   ebx
c000ecdd:	54                   	push   esp
c000ecde:	55                   	push   ebp
c000ecdf:	56                   	push   esi
c000ece0:	57                   	push   edi
c000ece1:	58                   	pop    eax
c000ece2:	59                   	pop    ecx
c000ece3:	5a                   	pop    edx
c000ece4:	00 00                	add    BYTE PTR [eax],al
	...

c000ece8 <digits.998>:
c000ece8:	30 31                	xor    BYTE PTR [ecx],dh
c000ecea:	32 33                	xor    dh,BYTE PTR [ebx]
c000ecec:	34 35                	xor    al,0x35
c000ecee:	36 37                	ss aaa 
c000ecf0:	38 39                	cmp    BYTE PTR [ecx],bh
c000ecf2:	41                   	inc    ecx
c000ecf3:	42                   	inc    edx
c000ecf4:	43                   	inc    ebx
c000ecf5:	44                   	inc    esp
c000ecf6:	45                   	inc    ebp
c000ecf7:	46                   	inc    esi
c000ecf8:	47                   	inc    edi
c000ecf9:	48                   	dec    eax
c000ecfa:	49                   	dec    ecx
c000ecfb:	4a                   	dec    edx
c000ecfc:	4b                   	dec    ebx
c000ecfd:	4c                   	dec    esp
c000ecfe:	4d                   	dec    ebp
c000ecff:	4e                   	dec    esi
c000ed00:	4f                   	dec    edi
c000ed01:	50                   	push   eax
c000ed02:	51                   	push   ecx
c000ed03:	52                   	push   edx
c000ed04:	53                   	push   ebx
c000ed05:	54                   	push   esp
c000ed06:	55                   	push   ebp
c000ed07:	56                   	push   esi
c000ed08:	57                   	push   edi
c000ed09:	58                   	pop    eax
c000ed0a:	59                   	pop    ecx
c000ed0b:	5a                   	pop    edx
c000ed0c:	00 00                	add    BYTE PTR [eax],al
c000ed0e:	00 00                	add    BYTE PTR [eax],al
c000ed10:	64 73 74             	fs jae c000ed87 <digits.998+0x9f>
c000ed13:	5f                   	pop    edi
c000ed14:	5f                   	pop    edi
c000ed15:	20 21                	and    BYTE PTR [ecx],ah
c000ed17:	3d 20 4e 55 4c       	cmp    eax,0x4c554e20
c000ed1c:	4c                   	dec    esp
c000ed1d:	00 6c 69 62          	add    BYTE PTR [ecx+ebp*2+0x62],ch
c000ed21:	2f                   	das    
c000ed22:	73 74                	jae    c000ed98 <__func__.850>
c000ed24:	72 69                	jb     c000ed8f <digits.998+0xa7>
c000ed26:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000ed27:	67 2e 63 00          	arpl   WORD PTR cs:[bx+si],ax
c000ed2b:	64 73 74             	fs jae c000eda2 <__func__.862+0x2>
c000ed2e:	5f                   	pop    edi
c000ed2f:	5f                   	pop    edi
c000ed30:	20 21                	and    BYTE PTR [ecx],ah
c000ed32:	3d 20 4e 55 4c       	cmp    eax,0x4c554e20
c000ed37:	4c                   	dec    esp
c000ed38:	20 26                	and    BYTE PTR [esi],ah
c000ed3a:	26 20 73 72          	and    BYTE PTR es:[ebx+0x72],dh
c000ed3e:	63 5f 5f             	arpl   WORD PTR [edi+0x5f],bx
c000ed41:	20 21                	and    BYTE PTR [ecx],ah
c000ed43:	3d 20 4e 55 4c       	cmp    eax,0x4c554e20
c000ed48:	4c                   	dec    esp
c000ed49:	00 70 31             	add    BYTE PTR [eax+0x31],dh
c000ed4c:	5f                   	pop    edi
c000ed4d:	5f                   	pop    edi
c000ed4e:	20 21                	and    BYTE PTR [ecx],ah
c000ed50:	3d 20 4e 55 4c       	cmp    eax,0x4c554e20
c000ed55:	4c                   	dec    esp
c000ed56:	20 26                	and    BYTE PTR [esi],ah
c000ed58:	26 20 70 32          	and    BYTE PTR es:[eax+0x32],dh
c000ed5c:	5f                   	pop    edi
c000ed5d:	5f                   	pop    edi
c000ed5e:	20 21                	and    BYTE PTR [ecx],ah
c000ed60:	3d 20 4e 55 4c       	cmp    eax,0x4c554e20
c000ed65:	4c                   	dec    esp
c000ed66:	00 00                	add    BYTE PTR [eax],al
c000ed68:	50                   	push   eax
c000ed69:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c000ed6b:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c000ed6e:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c000ed73:	65 6c                	gs ins BYTE PTR es:[edi],dx
c000ed75:	20 28                	and    BYTE PTR [eax],ch
c000ed77:	50                   	push   eax
c000ed78:	4b                   	dec    ebx
c000ed79:	6e                   	outs   dx,BYTE PTR ds:[esi]
c000ed7a:	29 20                	sub    DWORD PTR [eax],esp
c000ed7c:	76 65                	jbe    c000ede3 <tss+0xb>
c000ed7e:	72 73                	jb     c000edf3 <tss+0x1b>
c000ed80:	69 6f 6e 20 30 2e 30 	imul   ebp,DWORD PTR [edi+0x6e],0x302e3020
c000ed87:	2e 30 20             	xor    BYTE PTR cs:[eax],ah
c000ed8a:	74 65                	je     c000edf1 <tss+0x19>
c000ed8c:	73 74                	jae    c000ee02 <tss+0x2a>
	...

c000ed90 <__func__.839>:
c000ed90:	6d                   	ins    DWORD PTR es:[edi],dx
c000ed91:	65 6d                	gs ins DWORD PTR es:[edi],dx
c000ed93:	73 65                	jae    c000edfa <tss+0x22>
c000ed95:	74 00                	je     c000ed97 <__func__.839+0x7>
	...

c000ed98 <__func__.850>:
c000ed98:	6d                   	ins    DWORD PTR es:[edi],dx
c000ed99:	65 6d                	gs ins DWORD PTR es:[edi],dx
c000ed9b:	63 70 79             	arpl   WORD PTR [eax+0x79],si
	...

c000eda0 <__func__.862>:
c000eda0:	6d                   	ins    DWORD PTR es:[edi],dx
c000eda1:	65 6d                	gs ins DWORD PTR es:[edi],dx
c000eda3:	63 6d 70             	arpl   WORD PTR [ebp+0x70],bp
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
c000edbc:	76 65                	jbe    c000ee23 <tss+0x4b>
c000edbe:	72 73                	jb     c000ee33 <tss+0x5b>
c000edc0:	69 6f 6e 20 30 2e 30 	imul   ebp,DWORD PTR [edi+0x6e],0x302e3020
c000edc7:	2e 30 20             	xor    BYTE PTR cs:[eax],ah
c000edca:	74 65                	je     c000ee31 <tss+0x59>
c000edcc:	73 74                	jae    c000ee42 <tss+0x6a>
	...

Disassembly of section .bss:

c000edd0 <_bss>:
c000edd0:	00 00                	add    BYTE PTR [eax],al
	...

c000edd4 <this_thread_tag>:
c000edd4:	00 00                	add    BYTE PTR [eax],al
	...

c000edd8 <tss>:
	...

c000ee44 <console_lock>:
	...

c000ee68 <buf>:
	...

c000eea8 <shift_status>:
c000eea8:	00 00                	add    BYTE PTR [eax],al
	...

c000eeac <casplock_status>:
c000eeac:	00 00                	add    BYTE PTR [eax],al
	...

c000eeb0 <ext_scandcode>:
c000eeb0:	00 00                	add    BYTE PTR [eax],al
	...

c000eeb4 <ctrl_status>:
c000eeb4:	00 00                	add    BYTE PTR [eax],al
	...

c000eeb8 <alt_status>:
c000eeb8:	00 00                	add    BYTE PTR [eax],al
	...

c000eebc <i>:
c000eebc:	00 00                	add    BYTE PTR [eax],al
	...

c000eec0 <ticks>:
c000eec0:	00 00                	add    BYTE PTR [eax],al
	...

c000eec4 <_ebss>:
	...

c000ef80 <idt>:
	...

c000f0f8 <idt_table>:
	...

c000f1b4 <kvinfo>:
	...

c0016eb4 <user_pool>:
	...

c0016eec <user_vaddr>:
	...

c0016f24 <kernel_vaddr>:
	...

c0016f5c <upinfo>:
	...

c001ec5c <kpinfo>:
	...

c002695c <uvinfo>:
	...

c002e65c <kernel_pool>:
	...

c002e694 <ready_list>:
	...

c002e6ac <all_list>:
	...

c002e6c4 <main_thread>:
c002e6c4:	00 00                	add    BYTE PTR [eax],al
	...

c002e6c8 <keybuf>:
	...

c002e70c <Screen>:
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
