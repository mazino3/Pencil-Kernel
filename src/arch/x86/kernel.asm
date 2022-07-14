
kernel/kernel.o:     file format elf32-i386


Disassembly of section .text:

c0100000 <_start>:
c0100000:	66 b8 10 00          	mov    ax,0x10
c0100004:	8e d8                	mov    ds,eax
c0100006:	8e c0                	mov    es,eax
c0100008:	8e d0                	mov    ss,eax
c010000a:	8e e0                	mov    fs,eax
c010000c:	8e e8                	mov    gs,eax
c010000e:	bc 00 70 00 c0       	mov    esp,0xc0007000
c0100013:	e9 a9 02 00 00       	jmp    c01002c1 <kernel_main>
c0100018:	e9 fb ff ff ff       	jmp    c0100018 <_start+0x18>
c010001d:	00 00                	add    BYTE PTR [eax],al
	...

c0100020 <k_thread_a>:
c0100020:	55                   	push   ebp
c0100021:	89 e5                	mov    ebp,esp
c0100023:	eb fe                	jmp    c0100023 <k_thread_a+0x3>

c0100025 <u_prog_a>:
c0100025:	55                   	push   ebp
c0100026:	b8 08 00 00 00       	mov    eax,0x8
c010002b:	89 e5                	mov    ebp,esp
c010002d:	53                   	push   ebx
c010002e:	bb 05 00 00 00       	mov    ebx,0x5
c0100033:	83 ec 30             	sub    esp,0x30
c0100036:	8d 4d cc             	lea    ecx,[ebp-0x34]
c0100039:	cd 4d                	int    0x4d
c010003b:	a3 c8 85 10 c0       	mov    ds:0xc01085c8,eax
c0100040:	eb fe                	jmp    c0100040 <u_prog_a+0x1b>

c0100042 <u_prog_b>:
c0100042:	55                   	push   ebp
c0100043:	31 c9                	xor    ecx,ecx
c0100045:	89 e5                	mov    ebp,esp
c0100047:	b8 09 00 00 00       	mov    eax,0x9
c010004c:	53                   	push   ebx
c010004d:	bb fc 73 10 c0       	mov    ebx,0xc01073fc
c0100052:	cd 4d                	int    0x4d
c0100054:	a3 c4 85 10 c0       	mov    ds:0xc01085c4,eax
c0100059:	eb fe                	jmp    c0100059 <u_prog_b+0x17>

c010005b <Mouse_thread>:
c010005b:	55                   	push   ebp
c010005c:	89 e5                	mov    ebp,esp
c010005e:	57                   	push   edi
c010005f:	56                   	push   esi
c0100060:	53                   	push   ebx
c0100061:	31 db                	xor    ebx,ebx
c0100063:	83 ec 44             	sub    esp,0x44
c0100066:	89 de                	mov    esi,ebx
c0100068:	6a 10                	push   0x10
c010006a:	6a 10                	push   0x10
c010006c:	e8 a9 37 00 00       	call   c010381a <viewblock_init>
c0100071:	83 c4 10             	add    esp,0x10
c0100074:	89 c7                	mov    edi,eax
c0100076:	31 c0                	xor    eax,eax
c0100078:	eb 54                	jmp    c01000ce <Mouse_thread+0x73>
c010007a:	8a 9c 0e 28 75 10 c0 	mov    bl,BYTE PTR [esi+ecx*1-0x3fef8ad8]
c0100081:	80 fb 23             	cmp    bl,0x23
c0100084:	75 0e                	jne    c0100094 <Mouse_thread+0x39>
c0100086:	8b 5f 04             	mov    ebx,DWORD PTR [edi+0x4]
c0100089:	01 d3                	add    ebx,edx
c010008b:	c7 04 03 ff ff ff 00 	mov    DWORD PTR [ebx+eax*1],0xffffff
c0100092:	eb 24                	jmp    c01000b8 <Mouse_thread+0x5d>
c0100094:	80 fb 2d             	cmp    bl,0x2d
c0100097:	75 0e                	jne    c01000a7 <Mouse_thread+0x4c>
c0100099:	8b 5f 04             	mov    ebx,DWORD PTR [edi+0x4]
c010009c:	01 d3                	add    ebx,edx
c010009e:	c7 04 03 00 00 00 ff 	mov    DWORD PTR [ebx+eax*1],0xff000000
c01000a5:	eb 11                	jmp    c01000b8 <Mouse_thread+0x5d>
c01000a7:	80 fb 2a             	cmp    bl,0x2a
c01000aa:	75 0c                	jne    c01000b8 <Mouse_thread+0x5d>
c01000ac:	8b 5f 04             	mov    ebx,DWORD PTR [edi+0x4]
c01000af:	01 d3                	add    ebx,edx
c01000b1:	c7 04 03 00 00 00 00 	mov    DWORD PTR [ebx+eax*1],0x0
c01000b8:	41                   	inc    ecx
c01000b9:	83 c2 04             	add    edx,0x4
c01000bc:	83 f9 10             	cmp    ecx,0x10
c01000bf:	75 b9                	jne    c010007a <Mouse_thread+0x1f>
c01000c1:	83 c0 40             	add    eax,0x40
c01000c4:	83 c6 10             	add    esi,0x10
c01000c7:	3d 00 04 00 00       	cmp    eax,0x400
c01000cc:	74 06                	je     c01000d4 <Mouse_thread+0x79>
c01000ce:	31 d2                	xor    edx,edx
c01000d0:	31 c9                	xor    ecx,ecx
c01000d2:	eb a6                	jmp    c010007a <Mouse_thread+0x1f>
c01000d4:	52                   	push   edx
c01000d5:	52                   	push   edx
c01000d6:	57                   	push   edi
c01000d7:	ff 35 f4 04 12 c0    	push   DWORD PTR ds:0xc01204f4
c01000dd:	e8 9b 37 00 00       	call   c010387d <viewInsert>
c01000e2:	59                   	pop    ecx
c01000e3:	5b                   	pop    ebx
c01000e4:	6a 01                	push   0x1
c01000e6:	57                   	push   edi
c01000e7:	e8 c6 3a 00 00       	call   c0103bb2 <viewUpdown>
c01000ec:	8b 35 28 7c 00 c0    	mov    esi,DWORD PTR ds:0xc0007c28
c01000f2:	83 c4 0c             	add    esp,0xc
c01000f5:	8b 1d 24 7c 00 c0    	mov    ebx,DWORD PTR ds:0xc0007c24
c01000fb:	d1 ee                	shr    esi,1
c01000fd:	56                   	push   esi
c01000fe:	d1 eb                	shr    ebx,1
c0100100:	53                   	push   ebx
c0100101:	57                   	push   edi
c0100102:	e8 11 3a 00 00       	call   c0103b18 <viewSlide>
c0100107:	58                   	pop    eax
c0100108:	5a                   	pop    edx
c0100109:	6a 64                	push   0x64
c010010b:	6a 64                	push   0x64
c010010d:	e8 08 37 00 00       	call   c010381a <viewblock_init>
c0100112:	83 c4 0c             	add    esp,0xc
c0100115:	8b 48 18             	mov    ecx,DWORD PTR [eax+0x18]
c0100118:	8b 50 14             	mov    edx,DWORD PTR [eax+0x14]
c010011b:	49                   	dec    ecx
c010011c:	51                   	push   ecx
c010011d:	8d 4a ff             	lea    ecx,[edx-0x1]
c0100120:	51                   	push   ecx
c0100121:	6a 00                	push   0x0
c0100123:	6a 00                	push   0x0
c0100125:	68 ff 00 00 00       	push   0xff
c010012a:	52                   	push   edx
c010012b:	ff 70 04             	push   DWORD PTR [eax+0x4]
c010012e:	89 45 c4             	mov    DWORD PTR [ebp-0x3c],eax
c0100131:	e8 3c 3c 00 00       	call   c0103d72 <viewFill>
c0100136:	8b 45 c4             	mov    eax,DWORD PTR [ebp-0x3c]
c0100139:	83 c4 18             	add    esp,0x18
c010013c:	50                   	push   eax
c010013d:	ff 35 f4 04 12 c0    	push   DWORD PTR ds:0xc01204f4
c0100143:	e8 35 37 00 00       	call   c010387d <viewInsert>
c0100148:	8b 45 c4             	mov    eax,DWORD PTR [ebp-0x3c]
c010014b:	83 c4 0c             	add    esp,0xc
c010014e:	68 c8 00 00 00       	push   0xc8
c0100153:	68 c8 00 00 00       	push   0xc8
c0100158:	50                   	push   eax
c0100159:	e8 ba 39 00 00       	call   c0103b18 <viewSlide>
c010015e:	8b 45 c4             	mov    eax,DWORD PTR [ebp-0x3c]
c0100161:	89 04 24             	mov    DWORD PTR [esp],eax
c0100164:	e8 4f 3b 00 00       	call   c0103cb8 <viewRemove>
c0100169:	83 c4 10             	add    esp,0x10
c010016c:	50                   	push   eax
c010016d:	50                   	push   eax
c010016e:	a1 f4 04 12 c0       	mov    eax,ds:0xc01204f4
c0100173:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
c0100176:	48                   	dec    eax
c0100177:	50                   	push   eax
c0100178:	57                   	push   edi
c0100179:	e8 34 3a 00 00       	call   c0103bb2 <viewUpdown>
c010017e:	8d 45 c8             	lea    eax,[ebp-0x38]
c0100181:	89 04 24             	mov    DWORD PTR [esp],eax
c0100184:	e8 c7 29 00 00       	call   c0102b50 <get_mouse>
c0100189:	83 c4 0c             	add    esp,0xc
c010018c:	83 7d cc 00          	cmp    DWORD PTR [ebp-0x34],0x0
c0100190:	74 da                	je     c010016c <Mouse_thread+0x111>
c0100192:	8b 45 d4             	mov    eax,DWORD PTR [ebp-0x2c]
c0100195:	8b 55 d0             	mov    edx,DWORD PTR [ebp-0x30]
c0100198:	01 f0                	add    eax,esi
c010019a:	89 c6                	mov    esi,eax
c010019c:	01 da                	add    edx,ebx
c010019e:	f7 d6                	not    esi
c01001a0:	89 d3                	mov    ebx,edx
c01001a2:	c1 fe 1f             	sar    esi,0x1f
c01001a5:	f7 d3                	not    ebx
c01001a7:	21 c6                	and    esi,eax
c01001a9:	a1 f4 04 12 c0       	mov    eax,ds:0xc01204f4
c01001ae:	c1 fb 1f             	sar    ebx,0x1f
c01001b1:	21 d3                	and    ebx,edx
c01001b3:	8b 50 10             	mov    edx,DWORD PTR [eax+0x10]
c01001b6:	8d 4a fe             	lea    ecx,[edx-0x2]
c01001b9:	39 d9                	cmp    ecx,ebx
c01001bb:	7f 03                	jg     c01001c0 <Mouse_thread+0x165>
c01001bd:	8d 5a fd             	lea    ebx,[edx-0x3]
c01001c0:	8b 40 14             	mov    eax,DWORD PTR [eax+0x14]
c01001c3:	8d 50 fe             	lea    edx,[eax-0x2]
c01001c6:	39 f2                	cmp    edx,esi
c01001c8:	7f 03                	jg     c01001cd <Mouse_thread+0x172>
c01001ca:	8d 70 fd             	lea    esi,[eax-0x3]
c01001cd:	56                   	push   esi
c01001ce:	53                   	push   ebx
c01001cf:	68 09 74 10 c0       	push   0xc0107409
c01001d4:	8d 45 de             	lea    eax,[ebp-0x22]
c01001d7:	50                   	push   eax
c01001d8:	e8 98 35 00 00       	call   c0103775 <sprintf>
c01001dd:	83 c4 0c             	add    esp,0xc
c01001e0:	6a 74                	push   0x74
c01001e2:	6a 5c                	push   0x5c
c01001e4:	6a 64                	push   0x64
c01001e6:	6a 14                	push   0x14
c01001e8:	68 84 84 00 00       	push   0x8484
c01001ed:	ff 35 24 7c 00 c0    	push   DWORD PTR ds:0xc0007c24
c01001f3:	68 00 00 00 e0       	push   0xe0000000
c01001f8:	e8 75 3b 00 00       	call   c0103d72 <viewFill>
c01001fd:	83 c4 18             	add    esp,0x18
c0100200:	8d 45 de             	lea    eax,[ebp-0x22]
c0100203:	50                   	push   eax
c0100204:	68 ff ff ff 00       	push   0xffffff
c0100209:	6a 64                	push   0x64
c010020b:	6a 14                	push   0x14
c010020d:	ff 35 24 7c 00 c0    	push   DWORD PTR ds:0xc0007c24
c0100213:	68 00 00 00 e0       	push   0xe0000000
c0100218:	e8 34 3c 00 00       	call   c0103e51 <vput_str>
c010021d:	83 c4 1c             	add    esp,0x1c
c0100220:	56                   	push   esi
c0100221:	53                   	push   ebx
c0100222:	57                   	push   edi
c0100223:	e8 f0 38 00 00       	call   c0103b18 <viewSlide>
c0100228:	e9 3c ff ff ff       	jmp    c0100169 <Mouse_thread+0x10e>

c010022d <shell>:
c010022d:	55                   	push   ebp
c010022e:	89 e5                	mov    ebp,esp
c0100230:	57                   	push   edi
c0100231:	56                   	push   esi
c0100232:	53                   	push   ebx
c0100233:	bb 64 00 00 00       	mov    ebx,0x64
c0100238:	83 ec 24             	sub    esp,0x24
c010023b:	68 15 74 10 c0       	push   0xc0107415
c0100240:	6a 07                	push   0x7
c0100242:	e8 48 24 00 00       	call   c010268f <console_str>
c0100247:	8d 7d e7             	lea    edi,[ebp-0x19]
c010024a:	83 c4 10             	add    esp,0x10
c010024d:	be 14 00 00 00       	mov    esi,0x14
c0100252:	83 ec 0c             	sub    esp,0xc
c0100255:	68 84 04 12 c0       	push   0xc0120484
c010025a:	e8 61 2e 00 00       	call   c01030c0 <fifo_empty>
c010025f:	83 c4 10             	add    esp,0x10
c0100262:	85 c0                	test   eax,eax
c0100264:	75 ec                	jne    c0100252 <shell+0x25>
c0100266:	50                   	push   eax
c0100267:	50                   	push   eax
c0100268:	57                   	push   edi
c0100269:	68 84 04 12 c0       	push   0xc0120484
c010026e:	e8 4c 2d 00 00       	call   c0102fbf <fifo_get>
c0100273:	58                   	pop    eax
c0100274:	0f be 45 e7          	movsx  eax,BYTE PTR [ebp-0x19]
c0100278:	5a                   	pop    edx
c0100279:	50                   	push   eax
c010027a:	6a 07                	push   0x7
c010027c:	e8 d0 23 00 00       	call   c0102651 <console_char>
c0100281:	59                   	pop    ecx
c0100282:	58                   	pop    eax
c0100283:	0f be 45 e7          	movsx  eax,BYTE PTR [ebp-0x19]
c0100287:	50                   	push   eax
c0100288:	68 ff ff ff 00       	push   0xffffff
c010028d:	53                   	push   ebx
c010028e:	56                   	push   esi
c010028f:	83 c6 08             	add    esi,0x8
c0100292:	ff 35 24 7c 00 c0    	push   DWORD PTR ds:0xc0007c24
c0100298:	68 00 00 00 e0       	push   0xe0000000
c010029d:	e8 25 3b 00 00       	call   c0103dc7 <vput_char>
c01002a2:	83 c4 20             	add    esp,0x20
c01002a5:	80 7d e7 0d          	cmp    BYTE PTR [ebp-0x19],0xd
c01002a9:	75 a7                	jne    c0100252 <shell+0x25>
c01002ab:	51                   	push   ecx
c01002ac:	83 c3 10             	add    ebx,0x10
c01002af:	51                   	push   ecx
c01002b0:	68 1e 74 10 c0       	push   0xc010741e
c01002b5:	6a 07                	push   0x7
c01002b7:	e8 d3 23 00 00       	call   c010268f <console_str>
c01002bc:	83 c4 10             	add    esp,0x10
c01002bf:	eb 8c                	jmp    c010024d <shell+0x20>

c01002c1 <kernel_main>:
c01002c1:	55                   	push   ebp
c01002c2:	89 e5                	mov    ebp,esp
c01002c4:	53                   	push   ebx
c01002c5:	bb 23 00 00 00       	mov    ebx,0x23
c01002ca:	83 ec 44             	sub    esp,0x44
c01002cd:	50                   	push   eax
c01002ce:	50                   	push   eax
c01002cf:	6a 0a                	push   0xa
c01002d1:	6a 07                	push   0x7
c01002d3:	e8 8c 30 00 00       	call   c0103364 <put_char>
c01002d8:	83 c4 10             	add    esp,0x10
c01002db:	4b                   	dec    ebx
c01002dc:	75 ef                	jne    c01002cd <kernel_main+0xc>
c01002de:	83 ec 0c             	sub    esp,0xc
c01002e1:	6a 00                	push   0x0
c01002e3:	e8 55 30 00 00       	call   c010333d <set_cursor>
c01002e8:	e8 ab 02 00 00       	call   c0100598 <init_all>
c01002ed:	e8 23 0d 00 00       	call   c0101015 <intr_enable>
c01002f2:	58                   	pop    eax
c01002f3:	5a                   	pop    edx
c01002f4:	68 26 74 10 c0       	push   0xc0107426
c01002f9:	6a 07                	push   0x7
c01002fb:	e8 8f 23 00 00       	call   c010268f <console_str>
c0100300:	59                   	pop    ecx
c0100301:	5b                   	pop    ebx
c0100302:	68 4f 74 10 c0       	push   0xc010744f
c0100307:	6a 07                	push   0x7
c0100309:	e8 81 23 00 00       	call   c010268f <console_str>
c010030e:	e8 9b 24 00 00       	call   c01027ae <cpu_info>
c0100313:	58                   	pop    eax
c0100314:	5a                   	pop    edx
c0100315:	6a 0a                	push   0xa
c0100317:	6a 07                	push   0x7
c0100319:	e8 33 23 00 00       	call   c0102651 <console_char>
c010031e:	59                   	pop    ecx
c010031f:	5b                   	pop    ebx
c0100320:	68 58 74 10 c0       	push   0xc0107458
c0100325:	6a 07                	push   0x7
c0100327:	e8 63 23 00 00       	call   c010268f <console_str>
c010032c:	83 c4 0c             	add    esp,0xc
c010032f:	6a 0a                	push   0xa
c0100331:	a1 08 7c 00 c0       	mov    eax,ds:0xc0007c08
c0100336:	c1 e8 14             	shr    eax,0x14
c0100339:	50                   	push   eax
c010033a:	6a 07                	push   0x7
c010033c:	e8 87 23 00 00       	call   c01026c8 <console_int>
c0100341:	58                   	pop    eax
c0100342:	5a                   	pop    edx
c0100343:	68 61 74 10 c0       	push   0xc0107461
c0100348:	6a 07                	push   0x7
c010034a:	e8 40 23 00 00       	call   c010268f <console_str>
c010034f:	83 c4 0c             	add    esp,0xc
c0100352:	6a 0a                	push   0xa
c0100354:	a1 08 7c 00 c0       	mov    eax,ds:0xc0007c08
c0100359:	c1 e8 0a             	shr    eax,0xa
c010035c:	50                   	push   eax
c010035d:	6a 07                	push   0x7
c010035f:	e8 64 23 00 00       	call   c01026c8 <console_int>
c0100364:	59                   	pop    ecx
c0100365:	5b                   	pop    ebx
c0100366:	68 67 74 10 c0       	push   0xc0107467
c010036b:	6a 07                	push   0x7
c010036d:	e8 93 30 00 00       	call   c0103405 <put_str>
c0100372:	58                   	pop    eax
c0100373:	5a                   	pop    edx
c0100374:	6a 0a                	push   0xa
c0100376:	6a 07                	push   0x7
c0100378:	e8 e7 2f 00 00       	call   c0103364 <put_char>
c010037d:	59                   	pop    ecx
c010037e:	5b                   	pop    ebx
c010037f:	68 6d 74 10 c0       	push   0xc010746d
c0100384:	6a 07                	push   0x7
c0100386:	e8 04 23 00 00       	call   c010268f <console_str>
c010038b:	83 c4 0c             	add    esp,0xc
c010038e:	6a 0a                	push   0xa
c0100390:	ff 35 10 7c 00 c0    	push   DWORD PTR ds:0xc0007c10
c0100396:	6a 07                	push   0x7
c0100398:	e8 2b 23 00 00       	call   c01026c8 <console_int>
c010039d:	58                   	pop    eax
c010039e:	5a                   	pop    edx
c010039f:	6a 0a                	push   0xa
c01003a1:	6a 07                	push   0x7
c01003a3:	e8 a9 22 00 00       	call   c0102651 <console_char>
c01003a8:	a1 f0 04 12 c0       	mov    eax,ds:0xc01204f0
c01003ad:	59                   	pop    ecx
c01003ae:	5b                   	pop    ebx
c01003af:	8d 5d b8             	lea    ebx,[ebp-0x48]
c01003b2:	68 08 75 10 c0       	push   0xc0107508
c01003b7:	68 ff ff ff 00       	push   0xffffff
c01003bc:	6a 14                	push   0x14
c01003be:	6a 14                	push   0x14
c01003c0:	ff 35 24 7c 00 c0    	push   DWORD PTR ds:0xc0007c24
c01003c6:	ff 70 04             	push   DWORD PTR [eax+0x4]
c01003c9:	e8 83 3a 00 00       	call   c0103e51 <vput_str>
c01003ce:	83 c4 14             	add    esp,0x14
c01003d1:	ff 35 28 7c 00 c0    	push   DWORD PTR ds:0xc0007c28
c01003d7:	ff 35 24 7c 00 c0    	push   DWORD PTR ds:0xc0007c24
c01003dd:	ff 35 18 7c 00 c0    	push   DWORD PTR ds:0xc0007c18
c01003e3:	68 76 74 10 c0       	push   0xc0107476
c01003e8:	53                   	push   ebx
c01003e9:	e8 87 33 00 00       	call   c0103775 <sprintf>
c01003ee:	83 c4 18             	add    esp,0x18
c01003f1:	a1 f0 04 12 c0       	mov    eax,ds:0xc01204f0
c01003f6:	68 9d 74 10 c0       	push   0xc010749d
c01003fb:	68 ff ff ff 00       	push   0xffffff
c0100400:	6a 24                	push   0x24
c0100402:	6a 14                	push   0x14
c0100404:	ff 35 24 7c 00 c0    	push   DWORD PTR ds:0xc0007c24
c010040a:	ff 70 04             	push   DWORD PTR [eax+0x4]
c010040d:	e8 3f 3a 00 00       	call   c0103e51 <vput_str>
c0100412:	83 c4 18             	add    esp,0x18
c0100415:	a1 f0 04 12 c0       	mov    eax,ds:0xc01204f0
c010041a:	53                   	push   ebx
c010041b:	68 ff ff ff 00       	push   0xffffff
c0100420:	6a 34                	push   0x34
c0100422:	6a 14                	push   0x14
c0100424:	ff 35 24 7c 00 c0    	push   DWORD PTR ds:0xc0007c24
c010042a:	ff 70 04             	push   DWORD PTR [eax+0x4]
c010042d:	e8 1f 3a 00 00       	call   c0103e51 <vput_str>
c0100432:	a1 f0 04 12 c0       	mov    eax,ds:0xc01204f0
c0100437:	83 c4 14             	add    esp,0x14
c010043a:	6a 44                	push   0x44
c010043c:	ff 70 14             	push   DWORD PTR [eax+0x14]
c010043f:	6a 14                	push   0x14
c0100441:	6a 14                	push   0x14
c0100443:	50                   	push   eax
c0100444:	e8 7d 35 00 00       	call   c01039c6 <view_reflush>
c0100449:	83 c4 20             	add    esp,0x20
c010044c:	68 e4 74 10 c0       	push   0xc01074e4
c0100451:	68 20 00 10 c0       	push   0xc0100020
c0100456:	6a 1f                	push   0x1f
c0100458:	68 eb 74 10 c0       	push   0xc01074eb
c010045d:	e8 37 1b 00 00       	call   c0101f99 <thread_start>
c0100462:	6a 00                	push   0x0
c0100464:	68 2d 02 10 c0       	push   0xc010022d
c0100469:	6a 1f                	push   0x1f
c010046b:	68 ef 74 10 c0       	push   0xc01074ef
c0100470:	e8 24 1b 00 00       	call   c0101f99 <thread_start>
c0100475:	83 c4 20             	add    esp,0x20
c0100478:	6a 00                	push   0x0
c010047a:	68 5b 00 10 c0       	push   0xc010005b
c010047f:	6a 1f                	push   0x1f
c0100481:	68 f5 74 10 c0       	push   0xc01074f5
c0100486:	e8 0e 1b 00 00       	call   c0101f99 <thread_start>
c010048b:	58                   	pop    eax
c010048c:	5a                   	pop    edx
c010048d:	68 fb 74 10 c0       	push   0xc01074fb
c0100492:	68 25 00 10 c0       	push   0xc0100025
c0100497:	e8 b7 20 00 00       	call   c0102553 <process_execute>
c010049c:	59                   	pop    ecx
c010049d:	5b                   	pop    ebx
c010049e:	68 fb 74 10 c0       	push   0xc01074fb
c01004a3:	68 42 00 10 c0       	push   0xc0100042
c01004a8:	e8 a6 20 00 00       	call   c0102553 <process_execute>
c01004ad:	83 c4 10             	add    esp,0x10
c01004b0:	eb fe                	jmp    c01004b0 <kernel_main+0x1ef>
	...

c01004b4 <panic_spin>:
c01004b4:	55                   	push   ebp
c01004b5:	89 e5                	mov    ebp,esp
c01004b7:	83 ec 08             	sub    esp,0x8
c01004ba:	e8 fd 09 00 00       	call   c0100ebc <intr_disable>
c01004bf:	83 ec 0c             	sub    esp,0xc
c01004c2:	6a 00                	push   0x0
c01004c4:	e8 74 2e 00 00       	call   c010333d <set_cursor>
c01004c9:	5a                   	pop    edx
c01004ca:	59                   	pop    ecx
c01004cb:	68 28 76 10 c0       	push   0xc0107628
c01004d0:	6a 04                	push   0x4
c01004d2:	e8 2e 2f 00 00       	call   c0103405 <put_str>
c01004d7:	58                   	pop    eax
c01004d8:	5a                   	pop    edx
c01004d9:	68 31 76 10 c0       	push   0xc0107631
c01004de:	6a 04                	push   0x4
c01004e0:	e8 20 2f 00 00       	call   c0103405 <put_str>
c01004e5:	59                   	pop    ecx
c01004e6:	58                   	pop    eax
c01004e7:	ff 75 08             	push   DWORD PTR [ebp+0x8]
c01004ea:	6a 04                	push   0x4
c01004ec:	e8 14 2f 00 00       	call   c0103405 <put_str>
c01004f1:	58                   	pop    eax
c01004f2:	5a                   	pop    edx
c01004f3:	6a 0a                	push   0xa
c01004f5:	6a 04                	push   0x4
c01004f7:	e8 68 2e 00 00       	call   c0103364 <put_char>
c01004fc:	59                   	pop    ecx
c01004fd:	58                   	pop    eax
c01004fe:	68 40 76 10 c0       	push   0xc0107640
c0100503:	6a 04                	push   0x4
c0100505:	e8 fb 2e 00 00       	call   c0103405 <put_str>
c010050a:	58                   	pop    eax
c010050b:	5a                   	pop    edx
c010050c:	ff 75 10             	push   DWORD PTR [ebp+0x10]
c010050f:	6a 04                	push   0x4
c0100511:	e8 ef 2e 00 00       	call   c0103405 <put_str>
c0100516:	59                   	pop    ecx
c0100517:	58                   	pop    eax
c0100518:	6a 0a                	push   0xa
c010051a:	6a 04                	push   0x4
c010051c:	e8 43 2e 00 00       	call   c0103364 <put_char>
c0100521:	58                   	pop    eax
c0100522:	5a                   	pop    edx
c0100523:	68 4f 76 10 c0       	push   0xc010764f
c0100528:	6a 04                	push   0x4
c010052a:	e8 d6 2e 00 00       	call   c0103405 <put_str>
c010052f:	83 c4 0c             	add    esp,0xc
c0100532:	6a 0a                	push   0xa
c0100534:	ff 75 0c             	push   DWORD PTR [ebp+0xc]
c0100537:	6a 04                	push   0x4
c0100539:	e8 29 2f 00 00       	call   c0103467 <put_int>
c010053e:	59                   	pop    ecx
c010053f:	58                   	pop    eax
c0100540:	6a 0a                	push   0xa
c0100542:	6a 04                	push   0x4
c0100544:	e8 1b 2e 00 00       	call   c0103364 <put_char>
c0100549:	58                   	pop    eax
c010054a:	5a                   	pop    edx
c010054b:	68 5e 76 10 c0       	push   0xc010765e
c0100550:	6a 04                	push   0x4
c0100552:	e8 ae 2e 00 00       	call   c0103405 <put_str>
c0100557:	59                   	pop    ecx
c0100558:	58                   	pop    eax
c0100559:	ff 75 14             	push   DWORD PTR [ebp+0x14]
c010055c:	6a 04                	push   0x4
c010055e:	e8 a2 2e 00 00       	call   c0103405 <put_str>
c0100563:	83 c4 10             	add    esp,0x10
c0100566:	eb fe                	jmp    c0100566 <panic_spin+0xb2>

c0100568 <log>:
c0100568:	55                   	push   ebp
c0100569:	89 e5                	mov    ebp,esp
c010056b:	83 ec 10             	sub    esp,0x10
c010056e:	68 6d 76 10 c0       	push   0xc010766d
c0100573:	6a 06                	push   0x6
c0100575:	e8 8b 2e 00 00       	call   c0103405 <put_str>
c010057a:	58                   	pop    eax
c010057b:	5a                   	pop    edx
c010057c:	ff 75 08             	push   DWORD PTR [ebp+0x8]
c010057f:	6a 06                	push   0x6
c0100581:	e8 7f 2e 00 00       	call   c0103405 <put_str>
c0100586:	59                   	pop    ecx
c0100587:	58                   	pop    eax
c0100588:	6a 0a                	push   0xa
c010058a:	6a 06                	push   0x6
c010058c:	e8 d3 2d 00 00       	call   c0103364 <put_char>
c0100591:	83 c4 10             	add    esp,0x10
c0100594:	c9                   	leave  
c0100595:	c3                   	ret    
	...

c0100598 <init_all>:
c0100598:	55                   	push   ebp
c0100599:	89 e5                	mov    ebp,esp
c010059b:	83 ec 14             	sub    esp,0x14
c010059e:	68 98 76 10 c0       	push   0xc0107698
c01005a3:	e8 c0 ff ff ff       	call   c0100568 <log>
c01005a8:	e8 cb 08 00 00       	call   c0100e78 <init_idt>
c01005ad:	e8 b2 1c 00 00       	call   c0102264 <init_tss>
c01005b2:	e8 81 26 00 00       	call   c0102c38 <init_pit>
c01005b7:	e8 f1 12 00 00       	call   c01018ad <init_memory>
c01005bc:	e8 62 22 00 00       	call   c0102823 <init_keyboard>
c01005c1:	e8 5a 24 00 00       	call   c0102a20 <init_mouse>
c01005c6:	e8 0c 19 00 00       	call   c0101ed7 <init_thread>
c01005cb:	e8 6c 20 00 00       	call   c010263c <init_console>
c01005d0:	e8 c6 38 00 00       	call   c0103e9b <init_screen>
c01005d5:	e8 d1 26 00 00       	call   c0102cab <init_syscall>
c01005da:	c7 04 24 a1 76 10 c0 	mov    DWORD PTR [esp],0xc01076a1
c01005e1:	e8 82 ff ff ff       	call   c0100568 <log>
c01005e6:	83 c4 10             	add    esp,0x10
c01005e9:	c9                   	leave  
c01005ea:	c3                   	ret    
c01005eb:	00 00                	add    BYTE PTR [eax],al
c01005ed:	00 00                	add    BYTE PTR [eax],al
	...

c01005f0 <intr_exit>:
c01005f0:	81 c4 04 00 00 00    	add    esp,0x4
c01005f6:	61                   	popa   
c01005f7:	0f a9                	pop    gs
c01005f9:	0f a1                	pop    fs
c01005fb:	07                   	pop    es
c01005fc:	1f                   	pop    ds
c01005fd:	81 c4 04 00 00 00    	add    esp,0x4
c0100603:	cf                   	iret   

c0100604 <asm_intr0x00_handler>:
c0100604:	68 00 00 00 00       	push   0x0
c0100609:	1e                   	push   ds
c010060a:	06                   	push   es
c010060b:	0f a0                	push   fs
c010060d:	0f a8                	push   gs
c010060f:	60                   	pusha  
c0100610:	68 00 00 00 00       	push   0x0
c0100615:	66 8c d0             	mov    ax,ss
c0100618:	8e d8                	mov    ds,eax
c010061a:	8e c0                	mov    es,eax
c010061c:	ff 15 a4 8a 10 c0    	call   DWORD PTR ds:0xc0108aa4
c0100622:	e9 c9 ff ff ff       	jmp    c01005f0 <intr_exit>

c0100627 <asm_intr0x01_handler>:
c0100627:	68 00 00 00 00       	push   0x0
c010062c:	1e                   	push   ds
c010062d:	06                   	push   es
c010062e:	0f a0                	push   fs
c0100630:	0f a8                	push   gs
c0100632:	60                   	pusha  
c0100633:	68 01 00 00 00       	push   0x1
c0100638:	66 8c d0             	mov    ax,ss
c010063b:	8e d8                	mov    ds,eax
c010063d:	8e c0                	mov    es,eax
c010063f:	ff 15 a8 8a 10 c0    	call   DWORD PTR ds:0xc0108aa8
c0100645:	e9 a6 ff ff ff       	jmp    c01005f0 <intr_exit>

c010064a <asm_intr0x02_handler>:
c010064a:	68 00 00 00 00       	push   0x0
c010064f:	1e                   	push   ds
c0100650:	06                   	push   es
c0100651:	0f a0                	push   fs
c0100653:	0f a8                	push   gs
c0100655:	60                   	pusha  
c0100656:	68 02 00 00 00       	push   0x2
c010065b:	66 8c d0             	mov    ax,ss
c010065e:	8e d8                	mov    ds,eax
c0100660:	8e c0                	mov    es,eax
c0100662:	ff 15 ac 8a 10 c0    	call   DWORD PTR ds:0xc0108aac
c0100668:	e9 83 ff ff ff       	jmp    c01005f0 <intr_exit>

c010066d <asm_intr0x03_handler>:
c010066d:	68 00 00 00 00       	push   0x0
c0100672:	1e                   	push   ds
c0100673:	06                   	push   es
c0100674:	0f a0                	push   fs
c0100676:	0f a8                	push   gs
c0100678:	60                   	pusha  
c0100679:	68 03 00 00 00       	push   0x3
c010067e:	66 8c d0             	mov    ax,ss
c0100681:	8e d8                	mov    ds,eax
c0100683:	8e c0                	mov    es,eax
c0100685:	ff 15 b0 8a 10 c0    	call   DWORD PTR ds:0xc0108ab0
c010068b:	e9 60 ff ff ff       	jmp    c01005f0 <intr_exit>

c0100690 <asm_intr0x04_handler>:
c0100690:	68 00 00 00 00       	push   0x0
c0100695:	1e                   	push   ds
c0100696:	06                   	push   es
c0100697:	0f a0                	push   fs
c0100699:	0f a8                	push   gs
c010069b:	60                   	pusha  
c010069c:	68 04 00 00 00       	push   0x4
c01006a1:	66 8c d0             	mov    ax,ss
c01006a4:	8e d8                	mov    ds,eax
c01006a6:	8e c0                	mov    es,eax
c01006a8:	ff 15 b4 8a 10 c0    	call   DWORD PTR ds:0xc0108ab4
c01006ae:	e9 3d ff ff ff       	jmp    c01005f0 <intr_exit>

c01006b3 <asm_intr0x05_handler>:
c01006b3:	68 00 00 00 00       	push   0x0
c01006b8:	1e                   	push   ds
c01006b9:	06                   	push   es
c01006ba:	0f a0                	push   fs
c01006bc:	0f a8                	push   gs
c01006be:	60                   	pusha  
c01006bf:	68 05 00 00 00       	push   0x5
c01006c4:	66 8c d0             	mov    ax,ss
c01006c7:	8e d8                	mov    ds,eax
c01006c9:	8e c0                	mov    es,eax
c01006cb:	ff 15 b8 8a 10 c0    	call   DWORD PTR ds:0xc0108ab8
c01006d1:	e9 1a ff ff ff       	jmp    c01005f0 <intr_exit>

c01006d6 <asm_intr0x06_handler>:
c01006d6:	68 00 00 00 00       	push   0x0
c01006db:	1e                   	push   ds
c01006dc:	06                   	push   es
c01006dd:	0f a0                	push   fs
c01006df:	0f a8                	push   gs
c01006e1:	60                   	pusha  
c01006e2:	68 06 00 00 00       	push   0x6
c01006e7:	66 8c d0             	mov    ax,ss
c01006ea:	8e d8                	mov    ds,eax
c01006ec:	8e c0                	mov    es,eax
c01006ee:	ff 15 bc 8a 10 c0    	call   DWORD PTR ds:0xc0108abc
c01006f4:	e9 f7 fe ff ff       	jmp    c01005f0 <intr_exit>

c01006f9 <asm_intr0x07_handler>:
c01006f9:	68 00 00 00 00       	push   0x0
c01006fe:	1e                   	push   ds
c01006ff:	06                   	push   es
c0100700:	0f a0                	push   fs
c0100702:	0f a8                	push   gs
c0100704:	60                   	pusha  
c0100705:	68 07 00 00 00       	push   0x7
c010070a:	66 8c d0             	mov    ax,ss
c010070d:	8e d8                	mov    ds,eax
c010070f:	8e c0                	mov    es,eax
c0100711:	ff 15 c0 8a 10 c0    	call   DWORD PTR ds:0xc0108ac0
c0100717:	e9 d4 fe ff ff       	jmp    c01005f0 <intr_exit>

c010071c <asm_intr0x08_handler>:
c010071c:	90                   	nop
c010071d:	1e                   	push   ds
c010071e:	06                   	push   es
c010071f:	0f a0                	push   fs
c0100721:	0f a8                	push   gs
c0100723:	60                   	pusha  
c0100724:	68 08 00 00 00       	push   0x8
c0100729:	66 8c d0             	mov    ax,ss
c010072c:	8e d8                	mov    ds,eax
c010072e:	8e c0                	mov    es,eax
c0100730:	ff 15 c4 8a 10 c0    	call   DWORD PTR ds:0xc0108ac4
c0100736:	e9 b5 fe ff ff       	jmp    c01005f0 <intr_exit>

c010073b <asm_intr0x09_handler>:
c010073b:	68 00 00 00 00       	push   0x0
c0100740:	1e                   	push   ds
c0100741:	06                   	push   es
c0100742:	0f a0                	push   fs
c0100744:	0f a8                	push   gs
c0100746:	60                   	pusha  
c0100747:	68 09 00 00 00       	push   0x9
c010074c:	66 8c d0             	mov    ax,ss
c010074f:	8e d8                	mov    ds,eax
c0100751:	8e c0                	mov    es,eax
c0100753:	ff 15 c8 8a 10 c0    	call   DWORD PTR ds:0xc0108ac8
c0100759:	e9 92 fe ff ff       	jmp    c01005f0 <intr_exit>

c010075e <asm_intr0x0a_handler>:
c010075e:	90                   	nop
c010075f:	1e                   	push   ds
c0100760:	06                   	push   es
c0100761:	0f a0                	push   fs
c0100763:	0f a8                	push   gs
c0100765:	60                   	pusha  
c0100766:	68 0a 00 00 00       	push   0xa
c010076b:	66 8c d0             	mov    ax,ss
c010076e:	8e d8                	mov    ds,eax
c0100770:	8e c0                	mov    es,eax
c0100772:	ff 15 cc 8a 10 c0    	call   DWORD PTR ds:0xc0108acc
c0100778:	e9 73 fe ff ff       	jmp    c01005f0 <intr_exit>

c010077d <asm_intr0x0b_handler>:
c010077d:	90                   	nop
c010077e:	1e                   	push   ds
c010077f:	06                   	push   es
c0100780:	0f a0                	push   fs
c0100782:	0f a8                	push   gs
c0100784:	60                   	pusha  
c0100785:	68 0b 00 00 00       	push   0xb
c010078a:	66 8c d0             	mov    ax,ss
c010078d:	8e d8                	mov    ds,eax
c010078f:	8e c0                	mov    es,eax
c0100791:	ff 15 d0 8a 10 c0    	call   DWORD PTR ds:0xc0108ad0
c0100797:	e9 54 fe ff ff       	jmp    c01005f0 <intr_exit>

c010079c <asm_intr0x0c_handler>:
c010079c:	68 00 00 00 00       	push   0x0
c01007a1:	1e                   	push   ds
c01007a2:	06                   	push   es
c01007a3:	0f a0                	push   fs
c01007a5:	0f a8                	push   gs
c01007a7:	60                   	pusha  
c01007a8:	68 0c 00 00 00       	push   0xc
c01007ad:	66 8c d0             	mov    ax,ss
c01007b0:	8e d8                	mov    ds,eax
c01007b2:	8e c0                	mov    es,eax
c01007b4:	ff 15 d4 8a 10 c0    	call   DWORD PTR ds:0xc0108ad4
c01007ba:	e9 31 fe ff ff       	jmp    c01005f0 <intr_exit>

c01007bf <asm_intr0x0d_handler>:
c01007bf:	90                   	nop
c01007c0:	1e                   	push   ds
c01007c1:	06                   	push   es
c01007c2:	0f a0                	push   fs
c01007c4:	0f a8                	push   gs
c01007c6:	60                   	pusha  
c01007c7:	68 0d 00 00 00       	push   0xd
c01007cc:	66 8c d0             	mov    ax,ss
c01007cf:	8e d8                	mov    ds,eax
c01007d1:	8e c0                	mov    es,eax
c01007d3:	ff 15 d8 8a 10 c0    	call   DWORD PTR ds:0xc0108ad8
c01007d9:	e9 12 fe ff ff       	jmp    c01005f0 <intr_exit>

c01007de <asm_intr0x0e_handler>:
c01007de:	90                   	nop
c01007df:	1e                   	push   ds
c01007e0:	06                   	push   es
c01007e1:	0f a0                	push   fs
c01007e3:	0f a8                	push   gs
c01007e5:	60                   	pusha  
c01007e6:	68 0e 00 00 00       	push   0xe
c01007eb:	66 8c d0             	mov    ax,ss
c01007ee:	8e d8                	mov    ds,eax
c01007f0:	8e c0                	mov    es,eax
c01007f2:	ff 15 dc 8a 10 c0    	call   DWORD PTR ds:0xc0108adc
c01007f8:	e9 f3 fd ff ff       	jmp    c01005f0 <intr_exit>

c01007fd <asm_intr0x0f_handler>:
c01007fd:	68 00 00 00 00       	push   0x0
c0100802:	1e                   	push   ds
c0100803:	06                   	push   es
c0100804:	0f a0                	push   fs
c0100806:	0f a8                	push   gs
c0100808:	60                   	pusha  
c0100809:	68 0f 00 00 00       	push   0xf
c010080e:	66 8c d0             	mov    ax,ss
c0100811:	8e d8                	mov    ds,eax
c0100813:	8e c0                	mov    es,eax
c0100815:	ff 15 e0 8a 10 c0    	call   DWORD PTR ds:0xc0108ae0
c010081b:	e9 d0 fd ff ff       	jmp    c01005f0 <intr_exit>

c0100820 <asm_intr0x10_handler>:
c0100820:	68 00 00 00 00       	push   0x0
c0100825:	1e                   	push   ds
c0100826:	06                   	push   es
c0100827:	0f a0                	push   fs
c0100829:	0f a8                	push   gs
c010082b:	60                   	pusha  
c010082c:	68 10 00 00 00       	push   0x10
c0100831:	66 8c d0             	mov    ax,ss
c0100834:	8e d8                	mov    ds,eax
c0100836:	8e c0                	mov    es,eax
c0100838:	ff 15 e4 8a 10 c0    	call   DWORD PTR ds:0xc0108ae4
c010083e:	e9 ad fd ff ff       	jmp    c01005f0 <intr_exit>

c0100843 <asm_intr0x11_handler>:
c0100843:	90                   	nop
c0100844:	1e                   	push   ds
c0100845:	06                   	push   es
c0100846:	0f a0                	push   fs
c0100848:	0f a8                	push   gs
c010084a:	60                   	pusha  
c010084b:	68 11 00 00 00       	push   0x11
c0100850:	66 8c d0             	mov    ax,ss
c0100853:	8e d8                	mov    ds,eax
c0100855:	8e c0                	mov    es,eax
c0100857:	ff 15 e8 8a 10 c0    	call   DWORD PTR ds:0xc0108ae8
c010085d:	e9 8e fd ff ff       	jmp    c01005f0 <intr_exit>

c0100862 <asm_intr0x12_handler>:
c0100862:	68 00 00 00 00       	push   0x0
c0100867:	1e                   	push   ds
c0100868:	06                   	push   es
c0100869:	0f a0                	push   fs
c010086b:	0f a8                	push   gs
c010086d:	60                   	pusha  
c010086e:	68 12 00 00 00       	push   0x12
c0100873:	66 8c d0             	mov    ax,ss
c0100876:	8e d8                	mov    ds,eax
c0100878:	8e c0                	mov    es,eax
c010087a:	ff 15 ec 8a 10 c0    	call   DWORD PTR ds:0xc0108aec
c0100880:	e9 6b fd ff ff       	jmp    c01005f0 <intr_exit>

c0100885 <asm_intr0x13_handler>:
c0100885:	68 00 00 00 00       	push   0x0
c010088a:	1e                   	push   ds
c010088b:	06                   	push   es
c010088c:	0f a0                	push   fs
c010088e:	0f a8                	push   gs
c0100890:	60                   	pusha  
c0100891:	68 13 00 00 00       	push   0x13
c0100896:	66 8c d0             	mov    ax,ss
c0100899:	8e d8                	mov    ds,eax
c010089b:	8e c0                	mov    es,eax
c010089d:	ff 15 f0 8a 10 c0    	call   DWORD PTR ds:0xc0108af0
c01008a3:	e9 48 fd ff ff       	jmp    c01005f0 <intr_exit>

c01008a8 <asm_intr0x14_handler>:
c01008a8:	68 00 00 00 00       	push   0x0
c01008ad:	1e                   	push   ds
c01008ae:	06                   	push   es
c01008af:	0f a0                	push   fs
c01008b1:	0f a8                	push   gs
c01008b3:	60                   	pusha  
c01008b4:	68 14 00 00 00       	push   0x14
c01008b9:	66 8c d0             	mov    ax,ss
c01008bc:	8e d8                	mov    ds,eax
c01008be:	8e c0                	mov    es,eax
c01008c0:	ff 15 f4 8a 10 c0    	call   DWORD PTR ds:0xc0108af4
c01008c6:	e9 25 fd ff ff       	jmp    c01005f0 <intr_exit>

c01008cb <asm_intr0x15_handler>:
c01008cb:	68 00 00 00 00       	push   0x0
c01008d0:	1e                   	push   ds
c01008d1:	06                   	push   es
c01008d2:	0f a0                	push   fs
c01008d4:	0f a8                	push   gs
c01008d6:	60                   	pusha  
c01008d7:	68 15 00 00 00       	push   0x15
c01008dc:	66 8c d0             	mov    ax,ss
c01008df:	8e d8                	mov    ds,eax
c01008e1:	8e c0                	mov    es,eax
c01008e3:	ff 15 f8 8a 10 c0    	call   DWORD PTR ds:0xc0108af8
c01008e9:	e9 02 fd ff ff       	jmp    c01005f0 <intr_exit>

c01008ee <asm_intr0x16_handler>:
c01008ee:	68 00 00 00 00       	push   0x0
c01008f3:	1e                   	push   ds
c01008f4:	06                   	push   es
c01008f5:	0f a0                	push   fs
c01008f7:	0f a8                	push   gs
c01008f9:	60                   	pusha  
c01008fa:	68 16 00 00 00       	push   0x16
c01008ff:	66 8c d0             	mov    ax,ss
c0100902:	8e d8                	mov    ds,eax
c0100904:	8e c0                	mov    es,eax
c0100906:	ff 15 fc 8a 10 c0    	call   DWORD PTR ds:0xc0108afc
c010090c:	e9 df fc ff ff       	jmp    c01005f0 <intr_exit>

c0100911 <asm_intr0x17_handler>:
c0100911:	68 00 00 00 00       	push   0x0
c0100916:	1e                   	push   ds
c0100917:	06                   	push   es
c0100918:	0f a0                	push   fs
c010091a:	0f a8                	push   gs
c010091c:	60                   	pusha  
c010091d:	68 17 00 00 00       	push   0x17
c0100922:	66 8c d0             	mov    ax,ss
c0100925:	8e d8                	mov    ds,eax
c0100927:	8e c0                	mov    es,eax
c0100929:	ff 15 00 8b 10 c0    	call   DWORD PTR ds:0xc0108b00
c010092f:	e9 bc fc ff ff       	jmp    c01005f0 <intr_exit>

c0100934 <asm_intr0x18_handler>:
c0100934:	90                   	nop
c0100935:	1e                   	push   ds
c0100936:	06                   	push   es
c0100937:	0f a0                	push   fs
c0100939:	0f a8                	push   gs
c010093b:	60                   	pusha  
c010093c:	68 18 00 00 00       	push   0x18
c0100941:	66 8c d0             	mov    ax,ss
c0100944:	8e d8                	mov    ds,eax
c0100946:	8e c0                	mov    es,eax
c0100948:	ff 15 04 8b 10 c0    	call   DWORD PTR ds:0xc0108b04
c010094e:	e9 9d fc ff ff       	jmp    c01005f0 <intr_exit>

c0100953 <asm_intr0x19_handler>:
c0100953:	68 00 00 00 00       	push   0x0
c0100958:	1e                   	push   ds
c0100959:	06                   	push   es
c010095a:	0f a0                	push   fs
c010095c:	0f a8                	push   gs
c010095e:	60                   	pusha  
c010095f:	68 19 00 00 00       	push   0x19
c0100964:	66 8c d0             	mov    ax,ss
c0100967:	8e d8                	mov    ds,eax
c0100969:	8e c0                	mov    es,eax
c010096b:	ff 15 08 8b 10 c0    	call   DWORD PTR ds:0xc0108b08
c0100971:	e9 7a fc ff ff       	jmp    c01005f0 <intr_exit>

c0100976 <asm_intr0x1a_handler>:
c0100976:	90                   	nop
c0100977:	1e                   	push   ds
c0100978:	06                   	push   es
c0100979:	0f a0                	push   fs
c010097b:	0f a8                	push   gs
c010097d:	60                   	pusha  
c010097e:	68 1a 00 00 00       	push   0x1a
c0100983:	66 8c d0             	mov    ax,ss
c0100986:	8e d8                	mov    ds,eax
c0100988:	8e c0                	mov    es,eax
c010098a:	ff 15 0c 8b 10 c0    	call   DWORD PTR ds:0xc0108b0c
c0100990:	e9 5b fc ff ff       	jmp    c01005f0 <intr_exit>

c0100995 <asm_intr0x1b_handler>:
c0100995:	90                   	nop
c0100996:	1e                   	push   ds
c0100997:	06                   	push   es
c0100998:	0f a0                	push   fs
c010099a:	0f a8                	push   gs
c010099c:	60                   	pusha  
c010099d:	68 1b 00 00 00       	push   0x1b
c01009a2:	66 8c d0             	mov    ax,ss
c01009a5:	8e d8                	mov    ds,eax
c01009a7:	8e c0                	mov    es,eax
c01009a9:	ff 15 10 8b 10 c0    	call   DWORD PTR ds:0xc0108b10
c01009af:	e9 3c fc ff ff       	jmp    c01005f0 <intr_exit>

c01009b4 <asm_intr0x1c_handler>:
c01009b4:	68 00 00 00 00       	push   0x0
c01009b9:	1e                   	push   ds
c01009ba:	06                   	push   es
c01009bb:	0f a0                	push   fs
c01009bd:	0f a8                	push   gs
c01009bf:	60                   	pusha  
c01009c0:	68 1c 00 00 00       	push   0x1c
c01009c5:	66 8c d0             	mov    ax,ss
c01009c8:	8e d8                	mov    ds,eax
c01009ca:	8e c0                	mov    es,eax
c01009cc:	ff 15 14 8b 10 c0    	call   DWORD PTR ds:0xc0108b14
c01009d2:	e9 19 fc ff ff       	jmp    c01005f0 <intr_exit>

c01009d7 <asm_intr0x1d_handler>:
c01009d7:	90                   	nop
c01009d8:	1e                   	push   ds
c01009d9:	06                   	push   es
c01009da:	0f a0                	push   fs
c01009dc:	0f a8                	push   gs
c01009de:	60                   	pusha  
c01009df:	68 1d 00 00 00       	push   0x1d
c01009e4:	66 8c d0             	mov    ax,ss
c01009e7:	8e d8                	mov    ds,eax
c01009e9:	8e c0                	mov    es,eax
c01009eb:	ff 15 18 8b 10 c0    	call   DWORD PTR ds:0xc0108b18
c01009f1:	e9 fa fb ff ff       	jmp    c01005f0 <intr_exit>

c01009f6 <asm_intr0x1e_handler>:
c01009f6:	90                   	nop
c01009f7:	1e                   	push   ds
c01009f8:	06                   	push   es
c01009f9:	0f a0                	push   fs
c01009fb:	0f a8                	push   gs
c01009fd:	60                   	pusha  
c01009fe:	68 1e 00 00 00       	push   0x1e
c0100a03:	66 8c d0             	mov    ax,ss
c0100a06:	8e d8                	mov    ds,eax
c0100a08:	8e c0                	mov    es,eax
c0100a0a:	ff 15 1c 8b 10 c0    	call   DWORD PTR ds:0xc0108b1c
c0100a10:	e9 db fb ff ff       	jmp    c01005f0 <intr_exit>

c0100a15 <asm_intr0x1f_handler>:
c0100a15:	68 00 00 00 00       	push   0x0
c0100a1a:	1e                   	push   ds
c0100a1b:	06                   	push   es
c0100a1c:	0f a0                	push   fs
c0100a1e:	0f a8                	push   gs
c0100a20:	60                   	pusha  
c0100a21:	68 1f 00 00 00       	push   0x1f
c0100a26:	66 8c d0             	mov    ax,ss
c0100a29:	8e d8                	mov    ds,eax
c0100a2b:	8e c0                	mov    es,eax
c0100a2d:	ff 15 20 8b 10 c0    	call   DWORD PTR ds:0xc0108b20
c0100a33:	e9 b8 fb ff ff       	jmp    c01005f0 <intr_exit>

c0100a38 <asm_intr0x20_handler>:
c0100a38:	68 00 00 00 00       	push   0x0
c0100a3d:	1e                   	push   ds
c0100a3e:	06                   	push   es
c0100a3f:	0f a0                	push   fs
c0100a41:	0f a8                	push   gs
c0100a43:	60                   	pusha  
c0100a44:	68 20 00 00 00       	push   0x20
c0100a49:	66 8c d0             	mov    ax,ss
c0100a4c:	8e d8                	mov    ds,eax
c0100a4e:	8e c0                	mov    es,eax
c0100a50:	ff 15 24 8b 10 c0    	call   DWORD PTR ds:0xc0108b24
c0100a56:	e9 95 fb ff ff       	jmp    c01005f0 <intr_exit>

c0100a5b <asm_intr0x21_handler>:
c0100a5b:	68 00 00 00 00       	push   0x0
c0100a60:	1e                   	push   ds
c0100a61:	06                   	push   es
c0100a62:	0f a0                	push   fs
c0100a64:	0f a8                	push   gs
c0100a66:	60                   	pusha  
c0100a67:	68 21 00 00 00       	push   0x21
c0100a6c:	66 8c d0             	mov    ax,ss
c0100a6f:	8e d8                	mov    ds,eax
c0100a71:	8e c0                	mov    es,eax
c0100a73:	ff 15 28 8b 10 c0    	call   DWORD PTR ds:0xc0108b28
c0100a79:	e9 72 fb ff ff       	jmp    c01005f0 <intr_exit>

c0100a7e <asm_intr0x22_handler>:
c0100a7e:	68 00 00 00 00       	push   0x0
c0100a83:	1e                   	push   ds
c0100a84:	06                   	push   es
c0100a85:	0f a0                	push   fs
c0100a87:	0f a8                	push   gs
c0100a89:	60                   	pusha  
c0100a8a:	68 22 00 00 00       	push   0x22
c0100a8f:	66 8c d0             	mov    ax,ss
c0100a92:	8e d8                	mov    ds,eax
c0100a94:	8e c0                	mov    es,eax
c0100a96:	ff 15 2c 8b 10 c0    	call   DWORD PTR ds:0xc0108b2c
c0100a9c:	e9 4f fb ff ff       	jmp    c01005f0 <intr_exit>

c0100aa1 <asm_intr0x23_handler>:
c0100aa1:	68 00 00 00 00       	push   0x0
c0100aa6:	1e                   	push   ds
c0100aa7:	06                   	push   es
c0100aa8:	0f a0                	push   fs
c0100aaa:	0f a8                	push   gs
c0100aac:	60                   	pusha  
c0100aad:	68 23 00 00 00       	push   0x23
c0100ab2:	66 8c d0             	mov    ax,ss
c0100ab5:	8e d8                	mov    ds,eax
c0100ab7:	8e c0                	mov    es,eax
c0100ab9:	ff 15 30 8b 10 c0    	call   DWORD PTR ds:0xc0108b30
c0100abf:	e9 2c fb ff ff       	jmp    c01005f0 <intr_exit>

c0100ac4 <asm_intr0x24_handler>:
c0100ac4:	68 00 00 00 00       	push   0x0
c0100ac9:	1e                   	push   ds
c0100aca:	06                   	push   es
c0100acb:	0f a0                	push   fs
c0100acd:	0f a8                	push   gs
c0100acf:	60                   	pusha  
c0100ad0:	68 24 00 00 00       	push   0x24
c0100ad5:	66 8c d0             	mov    ax,ss
c0100ad8:	8e d8                	mov    ds,eax
c0100ada:	8e c0                	mov    es,eax
c0100adc:	ff 15 34 8b 10 c0    	call   DWORD PTR ds:0xc0108b34
c0100ae2:	e9 09 fb ff ff       	jmp    c01005f0 <intr_exit>

c0100ae7 <asm_intr0x25_handler>:
c0100ae7:	68 00 00 00 00       	push   0x0
c0100aec:	1e                   	push   ds
c0100aed:	06                   	push   es
c0100aee:	0f a0                	push   fs
c0100af0:	0f a8                	push   gs
c0100af2:	60                   	pusha  
c0100af3:	68 25 00 00 00       	push   0x25
c0100af8:	66 8c d0             	mov    ax,ss
c0100afb:	8e d8                	mov    ds,eax
c0100afd:	8e c0                	mov    es,eax
c0100aff:	ff 15 38 8b 10 c0    	call   DWORD PTR ds:0xc0108b38
c0100b05:	e9 e6 fa ff ff       	jmp    c01005f0 <intr_exit>

c0100b0a <asm_intr0x26_handler>:
c0100b0a:	68 00 00 00 00       	push   0x0
c0100b0f:	1e                   	push   ds
c0100b10:	06                   	push   es
c0100b11:	0f a0                	push   fs
c0100b13:	0f a8                	push   gs
c0100b15:	60                   	pusha  
c0100b16:	68 26 00 00 00       	push   0x26
c0100b1b:	66 8c d0             	mov    ax,ss
c0100b1e:	8e d8                	mov    ds,eax
c0100b20:	8e c0                	mov    es,eax
c0100b22:	ff 15 3c 8b 10 c0    	call   DWORD PTR ds:0xc0108b3c
c0100b28:	e9 c3 fa ff ff       	jmp    c01005f0 <intr_exit>

c0100b2d <asm_intr0x27_handler>:
c0100b2d:	68 00 00 00 00       	push   0x0
c0100b32:	1e                   	push   ds
c0100b33:	06                   	push   es
c0100b34:	0f a0                	push   fs
c0100b36:	0f a8                	push   gs
c0100b38:	60                   	pusha  
c0100b39:	68 27 00 00 00       	push   0x27
c0100b3e:	66 8c d0             	mov    ax,ss
c0100b41:	8e d8                	mov    ds,eax
c0100b43:	8e c0                	mov    es,eax
c0100b45:	ff 15 40 8b 10 c0    	call   DWORD PTR ds:0xc0108b40
c0100b4b:	e9 a0 fa ff ff       	jmp    c01005f0 <intr_exit>

c0100b50 <asm_intr0x28_handler>:
c0100b50:	68 00 00 00 00       	push   0x0
c0100b55:	1e                   	push   ds
c0100b56:	06                   	push   es
c0100b57:	0f a0                	push   fs
c0100b59:	0f a8                	push   gs
c0100b5b:	60                   	pusha  
c0100b5c:	68 28 00 00 00       	push   0x28
c0100b61:	66 8c d0             	mov    ax,ss
c0100b64:	8e d8                	mov    ds,eax
c0100b66:	8e c0                	mov    es,eax
c0100b68:	ff 15 44 8b 10 c0    	call   DWORD PTR ds:0xc0108b44
c0100b6e:	e9 7d fa ff ff       	jmp    c01005f0 <intr_exit>

c0100b73 <asm_intr0x29_handler>:
c0100b73:	68 00 00 00 00       	push   0x0
c0100b78:	1e                   	push   ds
c0100b79:	06                   	push   es
c0100b7a:	0f a0                	push   fs
c0100b7c:	0f a8                	push   gs
c0100b7e:	60                   	pusha  
c0100b7f:	68 29 00 00 00       	push   0x29
c0100b84:	66 8c d0             	mov    ax,ss
c0100b87:	8e d8                	mov    ds,eax
c0100b89:	8e c0                	mov    es,eax
c0100b8b:	ff 15 48 8b 10 c0    	call   DWORD PTR ds:0xc0108b48
c0100b91:	e9 5a fa ff ff       	jmp    c01005f0 <intr_exit>

c0100b96 <asm_intr0x2a_handler>:
c0100b96:	68 00 00 00 00       	push   0x0
c0100b9b:	1e                   	push   ds
c0100b9c:	06                   	push   es
c0100b9d:	0f a0                	push   fs
c0100b9f:	0f a8                	push   gs
c0100ba1:	60                   	pusha  
c0100ba2:	68 2a 00 00 00       	push   0x2a
c0100ba7:	66 8c d0             	mov    ax,ss
c0100baa:	8e d8                	mov    ds,eax
c0100bac:	8e c0                	mov    es,eax
c0100bae:	ff 15 4c 8b 10 c0    	call   DWORD PTR ds:0xc0108b4c
c0100bb4:	e9 37 fa ff ff       	jmp    c01005f0 <intr_exit>

c0100bb9 <asm_intr0x2b_handler>:
c0100bb9:	68 00 00 00 00       	push   0x0
c0100bbe:	1e                   	push   ds
c0100bbf:	06                   	push   es
c0100bc0:	0f a0                	push   fs
c0100bc2:	0f a8                	push   gs
c0100bc4:	60                   	pusha  
c0100bc5:	68 2b 00 00 00       	push   0x2b
c0100bca:	66 8c d0             	mov    ax,ss
c0100bcd:	8e d8                	mov    ds,eax
c0100bcf:	8e c0                	mov    es,eax
c0100bd1:	ff 15 50 8b 10 c0    	call   DWORD PTR ds:0xc0108b50
c0100bd7:	e9 14 fa ff ff       	jmp    c01005f0 <intr_exit>

c0100bdc <asm_intr0x2c_handler>:
c0100bdc:	68 00 00 00 00       	push   0x0
c0100be1:	1e                   	push   ds
c0100be2:	06                   	push   es
c0100be3:	0f a0                	push   fs
c0100be5:	0f a8                	push   gs
c0100be7:	60                   	pusha  
c0100be8:	68 2c 00 00 00       	push   0x2c
c0100bed:	66 8c d0             	mov    ax,ss
c0100bf0:	8e d8                	mov    ds,eax
c0100bf2:	8e c0                	mov    es,eax
c0100bf4:	ff 15 54 8b 10 c0    	call   DWORD PTR ds:0xc0108b54
c0100bfa:	e9 f1 f9 ff ff       	jmp    c01005f0 <intr_exit>

c0100bff <asm_intr0x2d_handler>:
c0100bff:	68 00 00 00 00       	push   0x0
c0100c04:	1e                   	push   ds
c0100c05:	06                   	push   es
c0100c06:	0f a0                	push   fs
c0100c08:	0f a8                	push   gs
c0100c0a:	60                   	pusha  
c0100c0b:	68 2d 00 00 00       	push   0x2d
c0100c10:	66 8c d0             	mov    ax,ss
c0100c13:	8e d8                	mov    ds,eax
c0100c15:	8e c0                	mov    es,eax
c0100c17:	ff 15 58 8b 10 c0    	call   DWORD PTR ds:0xc0108b58
c0100c1d:	e9 ce f9 ff ff       	jmp    c01005f0 <intr_exit>

c0100c22 <asm_intr0x2e_handler>:
c0100c22:	68 00 00 00 00       	push   0x0
c0100c27:	1e                   	push   ds
c0100c28:	06                   	push   es
c0100c29:	0f a0                	push   fs
c0100c2b:	0f a8                	push   gs
c0100c2d:	60                   	pusha  
c0100c2e:	68 2e 00 00 00       	push   0x2e
c0100c33:	66 8c d0             	mov    ax,ss
c0100c36:	8e d8                	mov    ds,eax
c0100c38:	8e c0                	mov    es,eax
c0100c3a:	ff 15 5c 8b 10 c0    	call   DWORD PTR ds:0xc0108b5c
c0100c40:	e9 ab f9 ff ff       	jmp    c01005f0 <intr_exit>

c0100c45 <asm_intr0x2f_handler>:
c0100c45:	68 00 00 00 00       	push   0x0
c0100c4a:	1e                   	push   ds
c0100c4b:	06                   	push   es
c0100c4c:	0f a0                	push   fs
c0100c4e:	0f a8                	push   gs
c0100c50:	60                   	pusha  
c0100c51:	68 2f 00 00 00       	push   0x2f
c0100c56:	66 8c d0             	mov    ax,ss
c0100c59:	8e d8                	mov    ds,eax
c0100c5b:	8e c0                	mov    es,eax
c0100c5d:	ff 15 60 8b 10 c0    	call   DWORD PTR ds:0xc0108b60
c0100c63:	e9 88 f9 ff ff       	jmp    c01005f0 <intr_exit>

c0100c68 <syscall_entry>:
c0100c68:	fb                   	sti    
c0100c69:	68 00 00 00 00       	push   0x0
c0100c6e:	1e                   	push   ds
c0100c6f:	06                   	push   es
c0100c70:	0f a0                	push   fs
c0100c72:	0f a8                	push   gs
c0100c74:	60                   	pusha  
c0100c75:	68 4d 00 00 00       	push   0x4d
c0100c7a:	52                   	push   edx
c0100c7b:	51                   	push   ecx
c0100c7c:	53                   	push   ebx
c0100c7d:	ff 14 85 c8 04 12 c0 	call   DWORD PTR [eax*4-0x3fedfb38]
c0100c84:	81 c4 0c 00 00 00    	add    esp,0xc
c0100c8a:	89 44 24 20          	mov    DWORD PTR [esp+0x20],eax
c0100c8e:	e9 5d f9 ff ff       	jmp    c01005f0 <intr_exit>
	...

c0100c94 <intr0x27_handler>:
c0100c94:	55                   	push   ebp
c0100c95:	ba 20 00 00 00       	mov    edx,0x20
c0100c9a:	89 e5                	mov    ebp,esp
c0100c9c:	b8 20 00 00 00       	mov    eax,0x20
c0100ca1:	ee                   	out    dx,al
c0100ca2:	5d                   	pop    ebp
c0100ca3:	c3                   	ret    

c0100ca4 <init_pic>:
c0100ca4:	55                   	push   ebp
c0100ca5:	ba 21 00 00 00       	mov    edx,0x21
c0100caa:	89 e5                	mov    ebp,esp
c0100cac:	b8 ff 00 00 00       	mov    eax,0xff
c0100cb1:	ee                   	out    dx,al
c0100cb2:	b2 a1                	mov    dl,0xa1
c0100cb4:	ee                   	out    dx,al
c0100cb5:	b2 20                	mov    dl,0x20
c0100cb7:	b0 11                	mov    al,0x11
c0100cb9:	ee                   	out    dx,al
c0100cba:	b2 21                	mov    dl,0x21
c0100cbc:	b0 20                	mov    al,0x20
c0100cbe:	ee                   	out    dx,al
c0100cbf:	b0 04                	mov    al,0x4
c0100cc1:	ee                   	out    dx,al
c0100cc2:	b0 01                	mov    al,0x1
c0100cc4:	ee                   	out    dx,al
c0100cc5:	b2 a0                	mov    dl,0xa0
c0100cc7:	b0 11                	mov    al,0x11
c0100cc9:	ee                   	out    dx,al
c0100cca:	b2 a1                	mov    dl,0xa1
c0100ccc:	b0 28                	mov    al,0x28
c0100cce:	ee                   	out    dx,al
c0100ccf:	b0 02                	mov    al,0x2
c0100cd1:	ee                   	out    dx,al
c0100cd2:	b0 01                	mov    al,0x1
c0100cd4:	ee                   	out    dx,al
c0100cd5:	b2 21                	mov    dl,0x21
c0100cd7:	b0 f8                	mov    al,0xf8
c0100cd9:	ee                   	out    dx,al
c0100cda:	b2 a1                	mov    dl,0xa1
c0100cdc:	b0 ef                	mov    al,0xef
c0100cde:	ee                   	out    dx,al
c0100cdf:	5d                   	pop    ebp
c0100ce0:	c3                   	ret    

c0100ce1 <idt_desc_init>:
c0100ce1:	55                   	push   ebp
c0100ce2:	31 c0                	xor    eax,eax
c0100ce4:	89 e5                	mov    ebp,esp
c0100ce6:	c7 04 85 a4 8a 10 c0 	mov    DWORD PTR [eax*4-0x3fef755c],0xc0100ed0
c0100ced:	d0 0e 10 c0 
c0100cf1:	40                   	inc    eax
c0100cf2:	83 f8 4e             	cmp    eax,0x4e
c0100cf5:	75 ef                	jne    c0100ce6 <idt_desc_init+0x5>
c0100cf7:	c7 05 24 8b 10 c0 50 	mov    DWORD PTR ds:0xc0108b24,0xc0102c50
c0100cfe:	2c 10 c0 
c0100d01:	30 c0                	xor    al,al
c0100d03:	c7 05 28 8b 10 c0 61 	mov    DWORD PTR ds:0xc0108b28,0xc0102861
c0100d0a:	28 10 c0 
c0100d0d:	c7 05 40 8b 10 c0 94 	mov    DWORD PTR ds:0xc0108b40,0xc0100c94
c0100d14:	0c 10 c0 
c0100d17:	c7 05 54 8b 10 c0 52 	mov    DWORD PTR ds:0xc0108b54,0xc0102a52
c0100d1e:	2a 10 c0 
c0100d21:	8b 0c 85 48 3f 10 c0 	mov    ecx,DWORD PTR [eax*4-0x3fefc0b8]
c0100d28:	8d 14 c5 34 88 10 c0 	lea    edx,[eax*8-0x3fef77cc]
c0100d2f:	66 89 0c c5 34 88 10 	mov    WORD PTR [eax*8-0x3fef77cc],cx
c0100d36:	c0 
c0100d37:	40                   	inc    eax
c0100d38:	c1 e9 10             	shr    ecx,0x10
c0100d3b:	83 f8 4e             	cmp    eax,0x4e
c0100d3e:	66 c7 42 02 08 00    	mov    WORD PTR [edx+0x2],0x8
c0100d44:	c6 42 04 00          	mov    BYTE PTR [edx+0x4],0x0
c0100d48:	c6 42 05 8e          	mov    BYTE PTR [edx+0x5],0x8e
c0100d4c:	66 89 4a 06          	mov    WORD PTR [edx+0x6],cx
c0100d50:	75 cf                	jne    c0100d21 <idt_desc_init+0x40>
c0100d52:	b8 68 0c 10 c0       	mov    eax,0xc0100c68
c0100d57:	66 a3 9c 8a 10 c0    	mov    ds:0xc0108a9c,ax
c0100d5d:	c1 e8 10             	shr    eax,0x10
c0100d60:	66 c7 05 9e 8a 10 c0 	mov    WORD PTR ds:0xc0108a9e,0x8
c0100d67:	08 00 
c0100d69:	c6 05 a0 8a 10 c0 00 	mov    BYTE PTR ds:0xc0108aa0,0x0
c0100d70:	c6 05 a1 8a 10 c0 ee 	mov    BYTE PTR ds:0xc0108aa1,0xee
c0100d77:	66 a3 a2 8a 10 c0    	mov    ds:0xc0108aa2,ax
c0100d7d:	5d                   	pop    ebp
c0100d7e:	c3                   	ret    

c0100d7f <set_gatedesc>:
c0100d7f:	55                   	push   ebp
c0100d80:	89 e5                	mov    ebp,esp
c0100d82:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0100d85:	53                   	push   ebx
c0100d86:	8b 4d 14             	mov    ecx,DWORD PTR [ebp+0x14]
c0100d89:	8b 5d 10             	mov    ebx,DWORD PTR [ebp+0x10]
c0100d8c:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
c0100d8f:	88 48 05             	mov    BYTE PTR [eax+0x5],cl
c0100d92:	66 89 58 02          	mov    WORD PTR [eax+0x2],bx
c0100d96:	89 cb                	mov    ebx,ecx
c0100d98:	66 89 10             	mov    WORD PTR [eax],dx
c0100d9b:	c1 fb 08             	sar    ebx,0x8
c0100d9e:	c1 ea 10             	shr    edx,0x10
c0100da1:	88 58 04             	mov    BYTE PTR [eax+0x4],bl
c0100da4:	66 89 50 06          	mov    WORD PTR [eax+0x6],dx
c0100da8:	5b                   	pop    ebx
c0100da9:	5d                   	pop    ebp
c0100daa:	c3                   	ret    

c0100dab <exception_init>:
c0100dab:	55                   	push   ebp
c0100dac:	89 e5                	mov    ebp,esp
c0100dae:	c7 05 fc 86 10 c0 cc 	mov    DWORD PTR ds:0xc01086fc,0xc01076cc
c0100db5:	76 10 c0 
c0100db8:	c7 05 00 87 10 c0 dd 	mov    DWORD PTR ds:0xc0108700,0xc01076dd
c0100dbf:	76 10 c0 
c0100dc2:	c7 05 04 87 10 c0 f1 	mov    DWORD PTR ds:0xc0108704,0xc01076f1
c0100dc9:	76 10 c0 
c0100dcc:	c7 05 08 87 10 c0 ff 	mov    DWORD PTR ds:0xc0108708,0xc01076ff
c0100dd3:	76 10 c0 
c0100dd6:	c7 05 0c 87 10 c0 18 	mov    DWORD PTR ds:0xc010870c,0xc0107718
c0100ddd:	77 10 c0 
c0100de0:	c7 05 10 87 10 c0 2f 	mov    DWORD PTR ds:0xc0108710,0xc010772f
c0100de7:	77 10 c0 
c0100dea:	c7 05 14 87 10 c0 52 	mov    DWORD PTR ds:0xc0108714,0xc0107752
c0100df1:	77 10 c0 
c0100df4:	c7 05 18 87 10 c0 6f 	mov    DWORD PTR ds:0xc0108718,0xc010776f
c0100dfb:	77 10 c0 
c0100dfe:	c7 05 1c 87 10 c0 92 	mov    DWORD PTR ds:0xc010871c,0xc0107792
c0100e05:	77 10 c0 
c0100e08:	c7 05 20 87 10 c0 ad 	mov    DWORD PTR ds:0xc0108720,0xc01077ad
c0100e0f:	77 10 c0 
c0100e12:	c7 05 24 87 10 c0 c9 	mov    DWORD PTR ds:0xc0108724,0xc01077c9
c0100e19:	77 10 c0 
c0100e1c:	c7 05 28 87 10 c0 e3 	mov    DWORD PTR ds:0xc0108728,0xc01077e3
c0100e23:	77 10 c0 
c0100e26:	c7 05 2c 87 10 c0 fb 	mov    DWORD PTR ds:0xc010872c,0xc01077fb
c0100e2d:	77 10 c0 
c0100e30:	c7 05 30 87 10 c0 15 	mov    DWORD PTR ds:0xc0108730,0xc0107815
c0100e37:	78 10 c0 
c0100e3a:	c7 05 34 87 10 c0 36 	mov    DWORD PTR ds:0xc0108734,0xc0107836
c0100e41:	78 10 c0 
c0100e44:	c7 05 38 87 10 c0 4f 	mov    DWORD PTR ds:0xc0108738,0xc010784f
c0100e4b:	78 10 c0 
c0100e4e:	c7 05 3c 87 10 c0 58 	mov    DWORD PTR ds:0xc010873c,0xc0107858
c0100e55:	78 10 c0 
c0100e58:	c7 05 40 87 10 c0 79 	mov    DWORD PTR ds:0xc0108740,0xc0107879
c0100e5f:	78 10 c0 
c0100e62:	c7 05 44 87 10 c0 97 	mov    DWORD PTR ds:0xc0108744,0xc0107897
c0100e69:	78 10 c0 
c0100e6c:	c7 05 48 87 10 c0 b3 	mov    DWORD PTR ds:0xc0108748,0xc01078b3
c0100e73:	78 10 c0 
c0100e76:	5d                   	pop    ebp
c0100e77:	c3                   	ret    

c0100e78 <init_idt>:
c0100e78:	55                   	push   ebp
c0100e79:	89 e5                	mov    ebp,esp
c0100e7b:	83 ec 10             	sub    esp,0x10
c0100e7e:	e8 5e fe ff ff       	call   c0100ce1 <idt_desc_init>
c0100e83:	e8 1c fe ff ff       	call   c0100ca4 <init_pic>
c0100e88:	b8 34 88 10 c0       	mov    eax,0xc0108834
c0100e8d:	31 d2                	xor    edx,edx
c0100e8f:	0f a4 c2 10          	shld   edx,eax,0x10
c0100e93:	c1 e0 10             	shl    eax,0x10
c0100e96:	0d 6f 02 00 00       	or     eax,0x26f
c0100e9b:	89 45 f8             	mov    DWORD PTR [ebp-0x8],eax
c0100e9e:	89 55 fc             	mov    DWORD PTR [ebp-0x4],edx
c0100ea1:	e8 05 ff ff ff       	call   c0100dab <exception_init>
c0100ea6:	0f 01 5d f8          	lidtd  [ebp-0x8]
c0100eaa:	c9                   	leave  
c0100eab:	c3                   	ret    

c0100eac <intr_get_status>:
c0100eac:	55                   	push   ebp
c0100ead:	89 e5                	mov    ebp,esp
c0100eaf:	9c                   	pushf  
c0100eb0:	58                   	pop    eax
c0100eb1:	f6 c4 02             	test   ah,0x2
c0100eb4:	0f 95 c0             	setne  al
c0100eb7:	0f b6 c0             	movzx  eax,al
c0100eba:	5d                   	pop    ebp
c0100ebb:	c3                   	ret    

c0100ebc <intr_disable>:
c0100ebc:	55                   	push   ebp
c0100ebd:	89 e5                	mov    ebp,esp
c0100ebf:	e8 e8 ff ff ff       	call   c0100eac <intr_get_status>
c0100ec4:	31 d2                	xor    edx,edx
c0100ec6:	48                   	dec    eax
c0100ec7:	75 03                	jne    c0100ecc <intr_disable+0x10>
c0100ec9:	fa                   	cli    
c0100eca:	b2 01                	mov    dl,0x1
c0100ecc:	89 d0                	mov    eax,edx
c0100ece:	5d                   	pop    ebp
c0100ecf:	c3                   	ret    

c0100ed0 <general_intr_handler>:
c0100ed0:	55                   	push   ebp
c0100ed1:	89 e5                	mov    ebp,esp
c0100ed3:	56                   	push   esi
c0100ed4:	53                   	push   ebx
c0100ed5:	81 ec 10 01 00 00    	sub    esp,0x110
c0100edb:	8a 45 08             	mov    al,BYTE PTR [ebp+0x8]
c0100ede:	8d 9d f9 fe ff ff    	lea    ebx,[ebp-0x107]
c0100ee4:	88 85 f7 fe ff ff    	mov    BYTE PTR [ebp-0x109],al
c0100eea:	e8 cd ff ff ff       	call   c0100ebc <intr_disable>
c0100eef:	83 ec 0c             	sub    esp,0xc
c0100ef2:	6a 00                	push   0x0
c0100ef4:	e8 44 24 00 00       	call   c010333d <set_cursor>
c0100ef9:	8b 15 28 7c 00 c0    	mov    edx,DWORD PTR ds:0xc0007c28
c0100eff:	83 c4 0c             	add    esp,0xc
c0100f02:	a1 24 7c 00 c0       	mov    eax,ds:0xc0007c24
c0100f07:	4a                   	dec    edx
c0100f08:	52                   	push   edx
c0100f09:	8d 50 ff             	lea    edx,[eax-0x1]
c0100f0c:	52                   	push   edx
c0100f0d:	6a 00                	push   0x0
c0100f0f:	6a 00                	push   0x0
c0100f11:	68 ff 00 00 00       	push   0xff
c0100f16:	50                   	push   eax
c0100f17:	68 00 00 00 e0       	push   0xe0000000
c0100f1c:	e8 51 2e 00 00       	call   c0103d72 <viewFill>
c0100f21:	83 c4 18             	add    esp,0x18
c0100f24:	68 d5 78 10 c0       	push   0xc01078d5
c0100f29:	68 ff ff ff 00       	push   0xffffff
c0100f2e:	6a 0a                	push   0xa
c0100f30:	6a 0a                	push   0xa
c0100f32:	ff 35 24 7c 00 c0    	push   DWORD PTR ds:0xc0007c24
c0100f38:	68 00 00 00 e0       	push   0xe0000000
c0100f3d:	e8 0f 2f 00 00       	call   c0103e51 <vput_str>
c0100f42:	83 c4 18             	add    esp,0x18
c0100f45:	0f b6 b5 f7 fe ff ff 	movzx  esi,BYTE PTR [ebp-0x109]
c0100f4c:	ff 75 40             	push   DWORD PTR [ebp+0x40]
c0100f4f:	ff 75 44             	push   DWORD PTR [ebp+0x44]
c0100f52:	56                   	push   esi
c0100f53:	68 08 75 10 c0       	push   0xc0107508
c0100f58:	68 f8 79 10 c0       	push   0xc01079f8
c0100f5d:	53                   	push   ebx
c0100f5e:	e8 12 28 00 00       	call   c0103775 <sprintf>
c0100f63:	83 c4 18             	add    esp,0x18
c0100f66:	53                   	push   ebx
c0100f67:	6a 17                	push   0x17
c0100f69:	e8 97 24 00 00       	call   c0103405 <put_str>
c0100f6e:	59                   	pop    ecx
c0100f6f:	58                   	pop    eax
c0100f70:	53                   	push   ebx
c0100f71:	68 ff ff ff 00       	push   0xffffff
c0100f76:	6a 5a                	push   0x5a
c0100f78:	6a 0a                	push   0xa
c0100f7a:	ff 35 24 7c 00 c0    	push   DWORD PTR ds:0xc0007c24
c0100f80:	68 00 00 00 e0       	push   0xe0000000
c0100f85:	e8 c7 2e 00 00       	call   c0103e51 <vput_str>
c0100f8a:	83 c4 20             	add    esp,0x20
c0100f8d:	80 bd f7 fe ff ff 13 	cmp    BYTE PTR [ebp-0x109],0x13
c0100f94:	77 7d                	ja     c0101013 <general_intr_handler+0x143>
c0100f96:	51                   	push   ecx
c0100f97:	51                   	push   ecx
c0100f98:	ff 34 b5 fc 86 10 c0 	push   DWORD PTR [esi*4-0x3fef7904]
c0100f9f:	6a 14                	push   0x14
c0100fa1:	e8 5f 24 00 00       	call   c0103405 <put_str>
c0100fa6:	58                   	pop    eax
c0100fa7:	5a                   	pop    edx
c0100fa8:	ff 34 b5 fc 86 10 c0 	push   DWORD PTR [esi*4-0x3fef7904]
c0100faf:	68 ff 00 ff 00       	push   0xff00ff
c0100fb4:	68 8a 00 00 00       	push   0x8a
c0100fb9:	6a 12                	push   0x12
c0100fbb:	ff 35 24 7c 00 c0    	push   DWORD PTR ds:0xc0007c24
c0100fc1:	68 00 00 00 e0       	push   0xe0000000
c0100fc6:	e8 86 2e 00 00       	call   c0103e51 <vput_str>
c0100fcb:	83 c4 20             	add    esp,0x20
c0100fce:	80 bd f7 fe ff ff 0e 	cmp    BYTE PTR [ebp-0x109],0xe
c0100fd5:	75 3c                	jne    c0101013 <general_intr_handler+0x143>
c0100fd7:	0f 20 d0             	mov    eax,cr2
c0100fda:	52                   	push   edx
c0100fdb:	50                   	push   eax
c0100fdc:	68 1f 7a 10 c0       	push   0xc0107a1f
c0100fe1:	53                   	push   ebx
c0100fe2:	e8 8e 27 00 00       	call   c0103775 <sprintf>
c0100fe7:	59                   	pop    ecx
c0100fe8:	5e                   	pop    esi
c0100fe9:	53                   	push   ebx
c0100fea:	6a 17                	push   0x17
c0100fec:	e8 14 24 00 00       	call   c0103405 <put_str>
c0100ff1:	58                   	pop    eax
c0100ff2:	5a                   	pop    edx
c0100ff3:	53                   	push   ebx
c0100ff4:	68 ff ff ff 00       	push   0xffffff
c0100ff9:	68 9a 00 00 00       	push   0x9a
c0100ffe:	6a 0a                	push   0xa
c0101000:	ff 35 24 7c 00 c0    	push   DWORD PTR ds:0xc0007c24
c0101006:	68 00 00 00 e0       	push   0xe0000000
c010100b:	e8 41 2e 00 00       	call   c0103e51 <vput_str>
c0101010:	83 c4 20             	add    esp,0x20
c0101013:	eb fe                	jmp    c0101013 <general_intr_handler+0x143>

c0101015 <intr_enable>:
c0101015:	55                   	push   ebp
c0101016:	89 e5                	mov    ebp,esp
c0101018:	e8 8f fe ff ff       	call   c0100eac <intr_get_status>
c010101d:	ba 01 00 00 00       	mov    edx,0x1
c0101022:	48                   	dec    eax
c0101023:	74 03                	je     c0101028 <intr_enable+0x13>
c0101025:	fb                   	sti    
c0101026:	30 d2                	xor    dl,dl
c0101028:	89 d0                	mov    eax,edx
c010102a:	5d                   	pop    ebp
c010102b:	c3                   	ret    

c010102c <intr_set_status>:
c010102c:	55                   	push   ebp
c010102d:	89 e5                	mov    ebp,esp
c010102f:	83 7d 08 01          	cmp    DWORD PTR [ebp+0x8],0x1
c0101033:	75 06                	jne    c010103b <intr_set_status+0xf>
c0101035:	5d                   	pop    ebp
c0101036:	e9 da ff ff ff       	jmp    c0101015 <intr_enable>
c010103b:	5d                   	pop    ebp
c010103c:	e9 7b fe ff ff       	jmp    c0100ebc <intr_disable>
c0101041:	00 00                	add    BYTE PTR [eax],al
	...

c0101044 <init_block>:
c0101044:	55                   	push   ebp
c0101045:	89 e5                	mov    ebp,esp
c0101047:	57                   	push   edi
c0101048:	bf 06 00 00 00       	mov    edi,0x6
c010104d:	56                   	push   esi
c010104e:	53                   	push   ebx
c010104f:	bb 20 00 00 00       	mov    ebx,0x20
c0101054:	83 ec 0c             	sub    esp,0xc
c0101057:	8b 75 08             	mov    esi,DWORD PTR [ebp+0x8]
c010105a:	31 d2                	xor    edx,edx
c010105c:	b8 f4 0f 00 00       	mov    eax,0xff4
c0101061:	f7 f3                	div    ebx
c0101063:	83 ec 0c             	sub    esp,0xc
c0101066:	89 1e                	mov    DWORD PTR [esi],ebx
c0101068:	01 db                	add    ebx,ebx
c010106a:	89 46 04             	mov    DWORD PTR [esi+0x4],eax
c010106d:	8d 46 08             	lea    eax,[esi+0x8]
c0101070:	83 c6 20             	add    esi,0x20
c0101073:	50                   	push   eax
c0101074:	e8 6f 20 00 00       	call   c01030e8 <list_init>
c0101079:	83 c4 10             	add    esp,0x10
c010107c:	4f                   	dec    edi
c010107d:	75 db                	jne    c010105a <init_block+0x16>
c010107f:	8d 65 f4             	lea    esp,[ebp-0xc]
c0101082:	5b                   	pop    ebx
c0101083:	5e                   	pop    esi
c0101084:	5f                   	pop    edi
c0101085:	5d                   	pop    ebp
c0101086:	c3                   	ret    

c0101087 <sys_malloc>:
c0101087:	55                   	push   ebp
c0101088:	89 e5                	mov    ebp,esp
c010108a:	57                   	push   edi
c010108b:	56                   	push   esi
c010108c:	53                   	push   ebx
c010108d:	83 ec 38             	sub    esp,0x38
c0101090:	68 58 7a 10 c0       	push   0xc0107a58
c0101095:	e8 ce f4 ff ff       	call   c0100568 <log>
c010109a:	e8 2c 0e 00 00       	call   c0101ecb <running_thread>
c010109f:	83 c4 10             	add    esp,0x10
c01010a2:	83 78 3c 00          	cmp    DWORD PTR [eax+0x3c],0x0
c01010a6:	75 1c                	jne    c01010c4 <sys_malloc+0x3d>
c01010a8:	8b 15 48 04 12 c0    	mov    edx,DWORD PTR ds:0xc0120448
c01010ae:	be 14 04 12 c0       	mov    esi,0xc0120414
c01010b3:	bb 01 00 00 00       	mov    ebx,0x1
c01010b8:	c7 45 e0 dc 08 11 c0 	mov    DWORD PTR [ebp-0x20],0xc01108dc
c01010bf:	c1 e2 0c             	shl    edx,0xc
c01010c2:	eb 19                	jmp    c01010dd <sys_malloc+0x56>
c01010c4:	8b 15 d0 09 11 c0    	mov    edx,DWORD PTR ds:0xc01109d0
c01010ca:	83 c0 7c             	add    eax,0x7c
c01010cd:	be 9c 09 11 c0       	mov    esi,0xc011099c
c01010d2:	89 45 e0             	mov    DWORD PTR [ebp-0x20],eax
c01010d5:	bb 02 00 00 00       	mov    ebx,0x2
c01010da:	c1 e2 0c             	shl    edx,0xc
c01010dd:	31 ff                	xor    edi,edi
c01010df:	39 55 08             	cmp    DWORD PTR [ebp+0x8],edx
c01010e2:	0f 8f ad 01 00 00    	jg     c0101295 <sys_malloc+0x20e>
c01010e8:	83 ec 0c             	sub    esp,0xc
c01010eb:	56                   	push   esi
c01010ec:	e8 42 0c 00 00       	call   c0101d33 <lock_acquire>
c01010f1:	83 c4 10             	add    esp,0x10
c01010f4:	81 7d 08 ff 03 00 00 	cmp    DWORD PTR [ebp+0x8],0x3ff
c01010fb:	0f 8f 25 01 00 00    	jg     c0101226 <sys_malloc+0x19f>
c0101101:	83 ec 0c             	sub    esp,0xc
c0101104:	68 66 7a 10 c0       	push   0xc0107a66
c0101109:	e8 5a f4 ff ff       	call   c0100568 <log>
c010110e:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
c0101111:	83 c4 10             	add    esp,0x10
c0101114:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c0101117:	3b 50 04             	cmp    edx,DWORD PTR [eax+0x4]
c010111a:	76 09                	jbe    c0101125 <sys_malloc+0x9e>
c010111c:	47                   	inc    edi
c010111d:	83 c0 20             	add    eax,0x20
c0101120:	83 ff 06             	cmp    edi,0x6
c0101123:	75 ef                	jne    c0101114 <sys_malloc+0x8d>
c0101125:	c1 e7 05             	shl    edi,0x5
c0101128:	83 ec 0c             	sub    esp,0xc
c010112b:	03 7d e0             	add    edi,DWORD PTR [ebp-0x20]
c010112e:	8d 57 08             	lea    edx,[edi+0x8]
c0101131:	52                   	push   edx
c0101132:	89 55 e0             	mov    DWORD PTR [ebp-0x20],edx
c0101135:	e8 df 20 00 00       	call   c0103219 <list_empty>
c010113a:	83 c4 10             	add    esp,0x10
c010113d:	85 c0                	test   eax,eax
c010113f:	0f 84 c6 00 00 00    	je     c010120b <sys_malloc+0x184>
c0101145:	50                   	push   eax
c0101146:	50                   	push   eax
c0101147:	6a 01                	push   0x1
c0101149:	53                   	push   ebx
c010114a:	e8 6d 04 00 00       	call   c01015bc <page_alloc>
c010114f:	83 c4 10             	add    esp,0x10
c0101152:	85 c0                	test   eax,eax
c0101154:	89 c3                	mov    ebx,eax
c0101156:	75 1f                	jne    c0101177 <sys_malloc+0xf0>
c0101158:	83 ec 0c             	sub    esp,0xc
c010115b:	31 ff                	xor    edi,edi
c010115d:	68 7b 7a 10 c0       	push   0xc0107a7b
c0101162:	e8 01 f4 ff ff       	call   c0100568 <log>
c0101167:	89 34 24             	mov    DWORD PTR [esp],esi
c010116a:	e8 1f 0c 00 00       	call   c0101d8e <lock_release>
c010116f:	83 c4 10             	add    esp,0x10
c0101172:	e9 1e 01 00 00       	jmp    c0101295 <sys_malloc+0x20e>
c0101177:	89 38                	mov    DWORD PTR [eax],edi
c0101179:	c7 40 08 00 00 00 00 	mov    DWORD PTR [eax+0x8],0x0
c0101180:	8b 47 04             	mov    eax,DWORD PTR [edi+0x4]
c0101183:	89 43 04             	mov    DWORD PTR [ebx+0x4],eax
c0101186:	e8 31 fd ff ff       	call   c0100ebc <intr_disable>
c010118b:	8d 53 0c             	lea    edx,[ebx+0xc]
c010118e:	89 75 d4             	mov    DWORD PTR [ebp-0x2c],esi
c0101191:	89 de                	mov    esi,ebx
c0101193:	c7 45 e4 00 00 00 00 	mov    DWORD PTR [ebp-0x1c],0x0
c010119a:	89 55 d8             	mov    DWORD PTR [ebp-0x28],edx
c010119d:	89 45 dc             	mov    DWORD PTR [ebp-0x24],eax
c01011a0:	eb 50                	jmp    c01011f2 <sys_malloc+0x16b>
c01011a2:	8b 06                	mov    eax,DWORD PTR [esi]
c01011a4:	8b 5d e4             	mov    ebx,DWORD PTR [ebp-0x1c]
c01011a7:	0f af 18             	imul   ebx,DWORD PTR [eax]
c01011aa:	03 5d d8             	add    ebx,DWORD PTR [ebp-0x28]
c01011ad:	89 5b 04             	mov    DWORD PTR [ebx+0x4],ebx
c01011b0:	50                   	push   eax
c01011b1:	50                   	push   eax
c01011b2:	53                   	push   ebx
c01011b3:	8b 06                	mov    eax,DWORD PTR [esi]
c01011b5:	83 c0 08             	add    eax,0x8
c01011b8:	50                   	push   eax
c01011b9:	e8 e2 1f 00 00       	call   c01031a0 <list_find>
c01011be:	83 c4 10             	add    esp,0x10
c01011c1:	85 c0                	test   eax,eax
c01011c3:	74 19                	je     c01011de <sys_malloc+0x157>
c01011c5:	68 89 7a 10 c0       	push   0xc0107a89
c01011ca:	68 34 7b 10 c0       	push   0xc0107b34
c01011cf:	6a 63                	push   0x63
c01011d1:	68 b8 7a 10 c0       	push   0xc0107ab8
c01011d6:	e8 d9 f2 ff ff       	call   c01004b4 <panic_spin>
c01011db:	83 c4 10             	add    esp,0x10
c01011de:	50                   	push   eax
c01011df:	50                   	push   eax
c01011e0:	53                   	push   ebx
c01011e1:	8b 06                	mov    eax,DWORD PTR [esi]
c01011e3:	83 c0 08             	add    eax,0x8
c01011e6:	50                   	push   eax
c01011e7:	e8 5b 1f 00 00       	call   c0103147 <list_append>
c01011ec:	83 c4 10             	add    esp,0x10
c01011ef:	ff 45 e4             	inc    DWORD PTR [ebp-0x1c]
c01011f2:	8b 55 e4             	mov    edx,DWORD PTR [ebp-0x1c]
c01011f5:	3b 57 04             	cmp    edx,DWORD PTR [edi+0x4]
c01011f8:	72 a8                	jb     c01011a2 <sys_malloc+0x11b>
c01011fa:	83 ec 0c             	sub    esp,0xc
c01011fd:	8b 75 d4             	mov    esi,DWORD PTR [ebp-0x2c]
c0101200:	ff 75 dc             	push   DWORD PTR [ebp-0x24]
c0101203:	e8 24 fe ff ff       	call   c010102c <intr_set_status>
c0101208:	83 c4 10             	add    esp,0x10
c010120b:	83 ec 0c             	sub    esp,0xc
c010120e:	ff 75 e0             	push   DWORD PTR [ebp-0x20]
c0101211:	e8 70 1f 00 00       	call   c0103186 <list_pop>
c0101216:	8b 78 04             	mov    edi,DWORD PTR [eax+0x4]
c0101219:	89 f8                	mov    eax,edi
c010121b:	25 00 f0 ff ff       	and    eax,0xfffff000
c0101220:	ff 48 04             	dec    DWORD PTR [eax+0x4]
c0101223:	58                   	pop    eax
c0101224:	eb 34                	jmp    c010125a <sys_malloc+0x1d3>
c0101226:	83 ec 0c             	sub    esp,0xc
c0101229:	68 c7 7a 10 c0       	push   0xc0107ac7
c010122e:	e8 35 f3 ff ff       	call   c0100568 <log>
c0101233:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c0101236:	59                   	pop    ecx
c0101237:	58                   	pop    eax
c0101238:	81 c2 0b 10 00 00    	add    edx,0x100b
c010123e:	c1 ea 0c             	shr    edx,0xc
c0101241:	52                   	push   edx
c0101242:	53                   	push   ebx
c0101243:	89 55 d0             	mov    DWORD PTR [ebp-0x30],edx
c0101246:	e8 71 03 00 00       	call   c01015bc <page_alloc>
c010124b:	83 c4 10             	add    esp,0x10
c010124e:	8b 55 d0             	mov    edx,DWORD PTR [ebp-0x30]
c0101251:	85 c0                	test   eax,eax
c0101253:	89 c3                	mov    ebx,eax
c0101255:	75 0b                	jne    c0101262 <sys_malloc+0x1db>
c0101257:	83 ec 0c             	sub    esp,0xc
c010125a:	56                   	push   esi
c010125b:	e8 2e 0b 00 00       	call   c0101d8e <lock_release>
c0101260:	eb 30                	jmp    c0101292 <sys_malloc+0x20b>
c0101262:	50                   	push   eax
c0101263:	89 d0                	mov    eax,edx
c0101265:	c1 e0 0c             	shl    eax,0xc
c0101268:	50                   	push   eax
c0101269:	6a 00                	push   0x0
c010126b:	53                   	push   ebx
c010126c:	8d 7b 0c             	lea    edi,[ebx+0xc]
c010126f:	89 55 d0             	mov    DWORD PTR [ebp-0x30],edx
c0101272:	e8 2d 22 00 00       	call   c01034a4 <memset>
c0101277:	c7 03 00 00 00 00    	mov    DWORD PTR [ebx],0x0
c010127d:	8b 55 d0             	mov    edx,DWORD PTR [ebp-0x30]
c0101280:	c7 43 08 01 00 00 00 	mov    DWORD PTR [ebx+0x8],0x1
c0101287:	89 53 04             	mov    DWORD PTR [ebx+0x4],edx
c010128a:	89 34 24             	mov    DWORD PTR [esp],esi
c010128d:	e8 fc 0a 00 00       	call   c0101d8e <lock_release>
c0101292:	83 c4 10             	add    esp,0x10
c0101295:	8d 65 f4             	lea    esp,[ebp-0xc]
c0101298:	89 f8                	mov    eax,edi
c010129a:	5b                   	pop    ebx
c010129b:	5e                   	pop    esi
c010129c:	5f                   	pop    edi
c010129d:	5d                   	pop    ebp
c010129e:	c3                   	ret    

c010129f <sys_free>:
c010129f:	55                   	push   ebp
c01012a0:	89 e5                	mov    ebp,esp
c01012a2:	57                   	push   edi
c01012a3:	56                   	push   esi
c01012a4:	53                   	push   ebx
c01012a5:	83 ec 28             	sub    esp,0x28
c01012a8:	8b 75 08             	mov    esi,DWORD PTR [ebp+0x8]
c01012ab:	68 da 7a 10 c0       	push   0xc0107ada
c01012b0:	e8 b3 f2 ff ff       	call   c0100568 <log>
c01012b5:	83 c4 10             	add    esp,0x10
c01012b8:	85 f6                	test   esi,esi
c01012ba:	0f 84 ea 00 00 00    	je     c01013aa <sys_free+0x10b>
c01012c0:	e8 06 0c 00 00       	call   c0101ecb <running_thread>
c01012c5:	83 78 3c 00          	cmp    DWORD PTR [eax+0x3c],0x0
c01012c9:	75 0e                	jne    c01012d9 <sys_free+0x3a>
c01012cb:	bf 14 04 12 c0       	mov    edi,0xc0120414
c01012d0:	c7 45 e4 01 00 00 00 	mov    DWORD PTR [ebp-0x1c],0x1
c01012d7:	eb 0c                	jmp    c01012e5 <sys_free+0x46>
c01012d9:	bf 9c 09 11 c0       	mov    edi,0xc011099c
c01012de:	c7 45 e4 02 00 00 00 	mov    DWORD PTR [ebp-0x1c],0x2
c01012e5:	83 ec 0c             	sub    esp,0xc
c01012e8:	89 f3                	mov    ebx,esi
c01012ea:	57                   	push   edi
c01012eb:	81 e3 00 f0 ff ff    	and    ebx,0xfffff000
c01012f1:	e8 3d 0a 00 00       	call   c0101d33 <lock_acquire>
c01012f6:	8b 03                	mov    eax,DWORD PTR [ebx]
c01012f8:	83 c4 10             	add    esp,0x10
c01012fb:	85 c0                	test   eax,eax
c01012fd:	75 0f                	jne    c010130e <sys_free+0x6f>
c01012ff:	83 7b 08 01          	cmp    DWORD PTR [ebx+0x8],0x1
c0101303:	75 09                	jne    c010130e <sys_free+0x6f>
c0101305:	56                   	push   esi
c0101306:	ff 73 04             	push   DWORD PTR [ebx+0x4]
c0101309:	e9 81 00 00 00       	jmp    c010138f <sys_free+0xf0>
c010130e:	51                   	push   ecx
c010130f:	83 c0 08             	add    eax,0x8
c0101312:	51                   	push   ecx
c0101313:	56                   	push   esi
c0101314:	50                   	push   eax
c0101315:	e8 2d 1e 00 00       	call   c0103147 <list_append>
c010131a:	8b 43 04             	mov    eax,DWORD PTR [ebx+0x4]
c010131d:	83 c4 10             	add    esp,0x10
c0101320:	8b 13                	mov    edx,DWORD PTR [ebx]
c0101322:	40                   	inc    eax
c0101323:	89 43 04             	mov    DWORD PTR [ebx+0x4],eax
c0101326:	3b 42 04             	cmp    eax,DWORD PTR [edx+0x4]
c0101329:	75 70                	jne    c010139b <sys_free+0xfc>
c010132b:	eb 46                	jmp    c0101373 <sys_free+0xd4>
c010132d:	8b 18                	mov    ebx,DWORD PTR [eax]
c010132f:	83 c0 08             	add    eax,0x8
c0101332:	52                   	push   edx
c0101333:	52                   	push   edx
c0101334:	0f af de             	imul   ebx,esi
c0101337:	03 5d e0             	add    ebx,DWORD PTR [ebp-0x20]
c010133a:	53                   	push   ebx
c010133b:	50                   	push   eax
c010133c:	e8 5f 1e 00 00       	call   c01031a0 <list_find>
c0101341:	83 c4 10             	add    esp,0x10
c0101344:	85 c0                	test   eax,eax
c0101346:	75 1c                	jne    c0101364 <sys_free+0xc5>
c0101348:	68 e6 7a 10 c0       	push   0xc0107ae6
c010134d:	68 40 7b 10 c0       	push   0xc0107b40
c0101352:	68 ad 00 00 00       	push   0xad
c0101357:	68 b8 7a 10 c0       	push   0xc0107ab8
c010135c:	e8 53 f1 ff ff       	call   c01004b4 <panic_spin>
c0101361:	83 c4 10             	add    esp,0x10
c0101364:	83 ec 0c             	sub    esp,0xc
c0101367:	46                   	inc    esi
c0101368:	53                   	push   ebx
c0101369:	e8 f1 1d 00 00       	call   c010315f <list_remove>
c010136e:	83 c4 10             	add    esp,0x10
c0101371:	eb 0d                	jmp    c0101380 <sys_free+0xe1>
c0101373:	8d 43 0c             	lea    eax,[ebx+0xc]
c0101376:	31 f6                	xor    esi,esi
c0101378:	89 7d dc             	mov    DWORD PTR [ebp-0x24],edi
c010137b:	89 df                	mov    edi,ebx
c010137d:	89 45 e0             	mov    DWORD PTR [ebp-0x20],eax
c0101380:	8b 07                	mov    eax,DWORD PTR [edi]
c0101382:	3b 70 04             	cmp    esi,DWORD PTR [eax+0x4]
c0101385:	72 a6                	jb     c010132d <sys_free+0x8e>
c0101387:	89 fb                	mov    ebx,edi
c0101389:	8b 7d dc             	mov    edi,DWORD PTR [ebp-0x24]
c010138c:	50                   	push   eax
c010138d:	6a 01                	push   0x1
c010138f:	53                   	push   ebx
c0101390:	ff 75 e4             	push   DWORD PTR [ebp-0x1c]
c0101393:	e8 e8 06 00 00       	call   c0101a80 <page_free>
c0101398:	83 c4 10             	add    esp,0x10
c010139b:	89 7d 08             	mov    DWORD PTR [ebp+0x8],edi
c010139e:	8d 65 f4             	lea    esp,[ebp-0xc]
c01013a1:	5b                   	pop    ebx
c01013a2:	5e                   	pop    esi
c01013a3:	5f                   	pop    edi
c01013a4:	5d                   	pop    ebp
c01013a5:	e9 e4 09 00 00       	jmp    c0101d8e <lock_release>
c01013aa:	8d 65 f4             	lea    esp,[ebp-0xc]
c01013ad:	5b                   	pop    ebx
c01013ae:	5e                   	pop    esi
c01013af:	5f                   	pop    edi
c01013b0:	5d                   	pop    ebp
c01013b1:	c3                   	ret    
	...

c01013b4 <init_memman>:
c01013b4:	55                   	push   ebp
c01013b5:	89 e5                	mov    ebp,esp
c01013b7:	57                   	push   edi
c01013b8:	56                   	push   esi
c01013b9:	53                   	push   ebx
c01013ba:	83 ec 18             	sub    esp,0x18
c01013bd:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c01013c0:	8b 7d 0c             	mov    edi,DWORD PTR [ebp+0xc]
c01013c3:	8b 75 10             	mov    esi,DWORD PTR [ebp+0x10]
c01013c6:	53                   	push   ebx
c01013c7:	e8 db 07 00 00       	call   c0101ba7 <lock_init>
c01013cc:	83 c4 10             	add    esp,0x10
c01013cf:	85 ff                	test   edi,edi
c01013d1:	c7 43 24 00 00 00 00 	mov    DWORD PTR [ebx+0x24],0x0
c01013d8:	c7 43 28 00 00 00 00 	mov    DWORD PTR [ebx+0x28],0x0
c01013df:	c7 43 2c 00 00 00 00 	mov    DWORD PTR [ebx+0x2c],0x0
c01013e6:	c7 43 30 00 00 00 00 	mov    DWORD PTR [ebx+0x30],0x0
c01013ed:	75 19                	jne    c0101408 <init_memman+0x54>
c01013ef:	68 4c 7b 10 c0       	push   0xc0107b4c
c01013f4:	68 c4 7c 10 c0       	push   0xc0107cc4
c01013f9:	6a 54                	push   0x54
c01013fb:	68 57 7b 10 c0       	push   0xc0107b57
c0101400:	e8 af f0 ff ff       	call   c01004b4 <panic_spin>
c0101405:	83 c4 10             	add    esp,0x10
c0101408:	85 f6                	test   esi,esi
c010140a:	89 7b 34             	mov    DWORD PTR [ebx+0x34],edi
c010140d:	75 19                	jne    c0101428 <init_memman+0x74>
c010140f:	68 67 7b 10 c0       	push   0xc0107b67
c0101414:	68 c4 7c 10 c0       	push   0xc0107cc4
c0101419:	6a 56                	push   0x56
c010141b:	68 57 7b 10 c0       	push   0xc0107b57
c0101420:	e8 8f f0 ff ff       	call   c01004b4 <panic_spin>
c0101425:	83 c4 10             	add    esp,0x10
c0101428:	89 73 38             	mov    DWORD PTR [ebx+0x38],esi
c010142b:	8d 65 f4             	lea    esp,[ebp-0xc]
c010142e:	5b                   	pop    ebx
c010142f:	5e                   	pop    esi
c0101430:	5f                   	pop    edi
c0101431:	5d                   	pop    ebp
c0101432:	c3                   	ret    

c0101433 <TotalFreeSize>:
c0101433:	55                   	push   ebp
c0101434:	31 d2                	xor    edx,edx
c0101436:	89 e5                	mov    ebp,esp
c0101438:	31 c0                	xor    eax,eax
c010143a:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
c010143d:	56                   	push   esi
c010143e:	53                   	push   ebx
c010143f:	8b 59 24             	mov    ebx,DWORD PTR [ecx+0x24]
c0101442:	eb 08                	jmp    c010144c <TotalFreeSize+0x19>
c0101444:	8b 71 38             	mov    esi,DWORD PTR [ecx+0x38]
c0101447:	03 44 d6 04          	add    eax,DWORD PTR [esi+edx*8+0x4]
c010144b:	42                   	inc    edx
c010144c:	39 da                	cmp    edx,ebx
c010144e:	75 f4                	jne    c0101444 <TotalFreeSize+0x11>
c0101450:	5b                   	pop    ebx
c0101451:	5e                   	pop    esi
c0101452:	5d                   	pop    ebp
c0101453:	c3                   	ret    

c0101454 <pde_ptr>:
c0101454:	55                   	push   ebp
c0101455:	89 e5                	mov    ebp,esp
c0101457:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c010145a:	5d                   	pop    ebp
c010145b:	c1 e8 16             	shr    eax,0x16
c010145e:	8d 04 85 00 f0 ff ff 	lea    eax,[eax*4-0x1000]
c0101465:	c3                   	ret    

c0101466 <pte_ptr>:
c0101466:	55                   	push   ebp
c0101467:	89 e5                	mov    ebp,esp
c0101469:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c010146c:	5d                   	pop    ebp
c010146d:	89 c2                	mov    edx,eax
c010146f:	25 00 f0 3f 00       	and    eax,0x3ff000
c0101474:	81 e2 00 00 c0 ff    	and    edx,0xffc00000
c010147a:	c1 ea 0a             	shr    edx,0xa
c010147d:	c1 e8 0a             	shr    eax,0xa
c0101480:	8d 84 02 00 00 c0 ff 	lea    eax,[edx+eax*1-0x400000]
c0101487:	c3                   	ret    

c0101488 <addr_v2p>:
c0101488:	55                   	push   ebp
c0101489:	89 e5                	mov    ebp,esp
c010148b:	53                   	push   ebx
c010148c:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c010148f:	53                   	push   ebx
c0101490:	81 e3 ff 0f 00 00    	and    ebx,0xfff
c0101496:	e8 cb ff ff ff       	call   c0101466 <pte_ptr>
c010149b:	5a                   	pop    edx
c010149c:	8b 00                	mov    eax,DWORD PTR [eax]
c010149e:	25 00 f0 ff ff       	and    eax,0xfffff000
c01014a3:	09 d8                	or     eax,ebx
c01014a5:	8b 5d fc             	mov    ebx,DWORD PTR [ebp-0x4]
c01014a8:	c9                   	leave  
c01014a9:	c3                   	ret    

c01014aa <pgman_alloc>:
c01014aa:	55                   	push   ebp
c01014ab:	89 e5                	mov    ebp,esp
c01014ad:	57                   	push   edi
c01014ae:	56                   	push   esi
c01014af:	53                   	push   ebx
c01014b0:	83 ec 28             	sub    esp,0x28
c01014b3:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c01014b6:	8b 75 0c             	mov    esi,DWORD PTR [ebp+0xc]
c01014b9:	53                   	push   ebx
c01014ba:	e8 74 08 00 00       	call   c0101d33 <lock_acquire>
c01014bf:	8b 7b 24             	mov    edi,DWORD PTR [ebx+0x24]
c01014c2:	83 c4 10             	add    esp,0x10
c01014c5:	31 c0                	xor    eax,eax
c01014c7:	eb 67                	jmp    c0101530 <pgman_alloc+0x86>
c01014c9:	8b 4b 38             	mov    ecx,DWORD PTR [ebx+0x38]
c01014cc:	8d 14 c5 00 00 00 00 	lea    edx,[eax*8+0x0]
c01014d3:	01 d1                	add    ecx,edx
c01014d5:	39 71 04             	cmp    DWORD PTR [ecx+0x4],esi
c01014d8:	72 55                	jb     c010152f <pgman_alloc+0x85>
c01014da:	8b 39                	mov    edi,DWORD PTR [ecx]
c01014dc:	89 7d e4             	mov    DWORD PTR [ebp-0x1c],edi
c01014df:	01 f7                	add    edi,esi
c01014e1:	89 39                	mov    DWORD PTR [ecx],edi
c01014e3:	8b 4b 38             	mov    ecx,DWORD PTR [ebx+0x38]
c01014e6:	01 d1                	add    ecx,edx
c01014e8:	29 71 04             	sub    DWORD PTR [ecx+0x4],esi
c01014eb:	8b 4b 38             	mov    ecx,DWORD PTR [ebx+0x38]
c01014ee:	83 7c 11 04 00       	cmp    DWORD PTR [ecx+edx*1+0x4],0x0
c01014f3:	75 26                	jne    c010151b <pgman_alloc+0x71>
c01014f5:	ff 4b 24             	dec    DWORD PTR [ebx+0x24]
c01014f8:	eb 16                	jmp    c0101510 <pgman_alloc+0x66>
c01014fa:	8b 4b 38             	mov    ecx,DWORD PTR [ebx+0x38]
c01014fd:	40                   	inc    eax
c01014fe:	8b 74 11 08          	mov    esi,DWORD PTR [ecx+edx*1+0x8]
c0101502:	8b 7c 11 0c          	mov    edi,DWORD PTR [ecx+edx*1+0xc]
c0101506:	89 34 11             	mov    DWORD PTR [ecx+edx*1],esi
c0101509:	89 7c 11 04          	mov    DWORD PTR [ecx+edx*1+0x4],edi
c010150d:	8b 55 e0             	mov    edx,DWORD PTR [ebp-0x20]
c0101510:	3b 43 24             	cmp    eax,DWORD PTR [ebx+0x24]
c0101513:	8d 7a 08             	lea    edi,[edx+0x8]
c0101516:	89 7d e0             	mov    DWORD PTR [ebp-0x20],edi
c0101519:	72 df                	jb     c01014fa <pgman_alloc+0x50>
c010151b:	83 ec 0c             	sub    esp,0xc
c010151e:	53                   	push   ebx
c010151f:	e8 6a 08 00 00       	call   c0101d8e <lock_release>
c0101524:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
c0101527:	83 c4 10             	add    esp,0x10
c010152a:	c1 e0 0c             	shl    eax,0xc
c010152d:	eb 13                	jmp    c0101542 <pgman_alloc+0x98>
c010152f:	40                   	inc    eax
c0101530:	39 f8                	cmp    eax,edi
c0101532:	75 95                	jne    c01014c9 <pgman_alloc+0x1f>
c0101534:	83 ec 0c             	sub    esp,0xc
c0101537:	53                   	push   ebx
c0101538:	e8 51 08 00 00       	call   c0101d8e <lock_release>
c010153d:	83 c4 10             	add    esp,0x10
c0101540:	31 c0                	xor    eax,eax
c0101542:	8d 65 f4             	lea    esp,[ebp-0xc]
c0101545:	5b                   	pop    ebx
c0101546:	5e                   	pop    esi
c0101547:	5f                   	pop    edi
c0101548:	5d                   	pop    ebp
c0101549:	c3                   	ret    

c010154a <page_table_add>:
c010154a:	55                   	push   ebp
c010154b:	89 e5                	mov    ebp,esp
c010154d:	57                   	push   edi
c010154e:	56                   	push   esi
c010154f:	53                   	push   ebx
c0101550:	83 ec 0c             	sub    esp,0xc
c0101553:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0101556:	8b 75 0c             	mov    esi,DWORD PTR [ebp+0xc]
c0101559:	50                   	push   eax
c010155a:	89 c7                	mov    edi,eax
c010155c:	e8 05 ff ff ff       	call   c0101466 <pte_ptr>
c0101561:	c1 ef 16             	shr    edi,0x16
c0101564:	f6 04 bd 00 f0 ff ff 	test   BYTE PTR [edi*4-0x1000],0x1
c010156b:	01 
c010156c:	5b                   	pop    ebx
c010156d:	89 c3                	mov    ebx,eax
c010156f:	74 0c                	je     c010157d <page_table_add+0x33>
c0101571:	f6 00 01             	test   BYTE PTR [eax],0x1
c0101574:	75 3e                	jne    c01015b4 <page_table_add+0x6a>
c0101576:	83 ce 07             	or     esi,0x7
c0101579:	89 30                	mov    DWORD PTR [eax],esi
c010157b:	eb 37                	jmp    c01015b4 <page_table_add+0x6a>
c010157d:	51                   	push   ecx
c010157e:	83 ce 07             	or     esi,0x7
c0101581:	51                   	push   ecx
c0101582:	6a 01                	push   0x1
c0101584:	68 14 04 12 c0       	push   0xc0120414
c0101589:	e8 1c ff ff ff       	call   c01014aa <pgman_alloc>
c010158e:	83 c4 0c             	add    esp,0xc
c0101591:	83 c8 07             	or     eax,0x7
c0101594:	89 04 bd 00 f0 ff ff 	mov    DWORD PTR [edi*4-0x1000],eax
c010159b:	89 d8                	mov    eax,ebx
c010159d:	68 00 10 00 00       	push   0x1000
c01015a2:	25 00 f0 ff ff       	and    eax,0xfffff000
c01015a7:	6a 00                	push   0x0
c01015a9:	50                   	push   eax
c01015aa:	e8 f5 1e 00 00       	call   c01034a4 <memset>
c01015af:	83 c4 10             	add    esp,0x10
c01015b2:	89 33                	mov    DWORD PTR [ebx],esi
c01015b4:	8d 65 f4             	lea    esp,[ebp-0xc]
c01015b7:	5b                   	pop    ebx
c01015b8:	5e                   	pop    esi
c01015b9:	5f                   	pop    edi
c01015ba:	5d                   	pop    ebp
c01015bb:	c3                   	ret    

c01015bc <page_alloc>:
c01015bc:	55                   	push   ebp
c01015bd:	89 e5                	mov    ebp,esp
c01015bf:	57                   	push   edi
c01015c0:	56                   	push   esi
c01015c1:	53                   	push   ebx
c01015c2:	83 ec 1c             	sub    esp,0x1c
c01015c5:	8b 7d 0c             	mov    edi,DWORD PTR [ebp+0xc]
c01015c8:	83 7d 08 01          	cmp    DWORD PTR [ebp+0x8],0x1
c01015cc:	c7 45 e4 9c 09 11 c0 	mov    DWORD PTR [ebp-0x1c],0xc011099c
c01015d3:	75 07                	jne    c01015dc <page_alloc+0x20>
c01015d5:	c7 45 e4 14 04 12 c0 	mov    DWORD PTR [ebp-0x1c],0xc0120414
c01015dc:	53                   	push   ebx
c01015dd:	53                   	push   ebx
c01015de:	57                   	push   edi
c01015df:	68 d8 09 11 c0       	push   0xc01109d8
c01015e4:	e8 c1 fe ff ff       	call   c01014aa <pgman_alloc>
c01015e9:	83 c4 10             	add    esp,0x10
c01015ec:	85 c0                	test   eax,eax
c01015ee:	89 c3                	mov    ebx,eax
c01015f0:	89 c6                	mov    esi,eax
c01015f2:	75 28                	jne    c010161c <page_alloc+0x60>
c01015f4:	eb 2e                	jmp    c0101624 <page_alloc+0x68>
c01015f6:	51                   	push   ecx
c01015f7:	51                   	push   ecx
c01015f8:	6a 01                	push   0x1
c01015fa:	ff 75 e4             	push   DWORD PTR [ebp-0x1c]
c01015fd:	e8 a8 fe ff ff       	call   c01014aa <pgman_alloc>
c0101602:	83 c4 10             	add    esp,0x10
c0101605:	85 c0                	test   eax,eax
c0101607:	74 19                	je     c0101622 <page_alloc+0x66>
c0101609:	52                   	push   edx
c010160a:	4f                   	dec    edi
c010160b:	52                   	push   edx
c010160c:	50                   	push   eax
c010160d:	56                   	push   esi
c010160e:	81 c6 00 10 00 00    	add    esi,0x1000
c0101614:	e8 31 ff ff ff       	call   c010154a <page_table_add>
c0101619:	83 c4 10             	add    esp,0x10
c010161c:	85 ff                	test   edi,edi
c010161e:	75 d6                	jne    c01015f6 <page_alloc+0x3a>
c0101620:	eb 02                	jmp    c0101624 <page_alloc+0x68>
c0101622:	31 db                	xor    ebx,ebx
c0101624:	8d 65 f4             	lea    esp,[ebp-0xc]
c0101627:	89 d8                	mov    eax,ebx
c0101629:	5b                   	pop    ebx
c010162a:	5e                   	pop    esi
c010162b:	5f                   	pop    edi
c010162c:	5d                   	pop    ebp
c010162d:	c3                   	ret    

c010162e <get_kernel_page>:
c010162e:	55                   	push   ebp
c010162f:	89 e5                	mov    ebp,esp
c0101631:	53                   	push   ebx
c0101632:	83 ec 1c             	sub    esp,0x1c
c0101635:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c0101638:	53                   	push   ebx
c0101639:	6a 01                	push   0x1
c010163b:	e8 7c ff ff ff       	call   c01015bc <page_alloc>
c0101640:	83 c4 10             	add    esp,0x10
c0101643:	85 c0                	test   eax,eax
c0101645:	74 16                	je     c010165d <get_kernel_page+0x2f>
c0101647:	c1 e3 0c             	shl    ebx,0xc
c010164a:	52                   	push   edx
c010164b:	53                   	push   ebx
c010164c:	6a 00                	push   0x0
c010164e:	50                   	push   eax
c010164f:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
c0101652:	e8 4d 1e 00 00       	call   c01034a4 <memset>
c0101657:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c010165a:	83 c4 10             	add    esp,0x10
c010165d:	8b 5d fc             	mov    ebx,DWORD PTR [ebp-0x4]
c0101660:	c9                   	leave  
c0101661:	c3                   	ret    

c0101662 <get_user_page>:
c0101662:	55                   	push   ebp
c0101663:	89 e5                	mov    ebp,esp
c0101665:	53                   	push   ebx
c0101666:	83 ec 1c             	sub    esp,0x1c
c0101669:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c010166c:	53                   	push   ebx
c010166d:	6a 02                	push   0x2
c010166f:	e8 48 ff ff ff       	call   c01015bc <page_alloc>
c0101674:	83 c4 10             	add    esp,0x10
c0101677:	85 c0                	test   eax,eax
c0101679:	74 16                	je     c0101691 <get_user_page+0x2f>
c010167b:	c1 e3 0c             	shl    ebx,0xc
c010167e:	51                   	push   ecx
c010167f:	53                   	push   ebx
c0101680:	6a 00                	push   0x0
c0101682:	50                   	push   eax
c0101683:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
c0101686:	e8 19 1e 00 00       	call   c01034a4 <memset>
c010168b:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c010168e:	83 c4 10             	add    esp,0x10
c0101691:	8b 5d fc             	mov    ebx,DWORD PTR [ebp-0x4]
c0101694:	c9                   	leave  
c0101695:	c3                   	ret    

c0101696 <get_a_page>:
c0101696:	55                   	push   ebp
c0101697:	89 e5                	mov    ebp,esp
c0101699:	57                   	push   edi
c010169a:	bf 9c 09 11 c0       	mov    edi,0xc011099c
c010169f:	56                   	push   esi
c01016a0:	53                   	push   ebx
c01016a1:	83 ec 0c             	sub    esp,0xc
c01016a4:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c01016a7:	8b 75 0c             	mov    esi,DWORD PTR [ebp+0xc]
c01016aa:	83 fb 01             	cmp    ebx,0x1
c01016ad:	75 05                	jne    c01016b4 <get_a_page+0x1e>
c01016af:	bf 14 04 12 c0       	mov    edi,0xc0120414
c01016b4:	e8 12 08 00 00       	call   c0101ecb <running_thread>
c01016b9:	83 fb 02             	cmp    ebx,0x2
c01016bc:	8b 50 3c             	mov    edx,DWORD PTR [eax+0x3c]
c01016bf:	75 0e                	jne    c01016cf <get_a_page+0x39>
c01016c1:	85 d2                	test   edx,edx
c01016c3:	74 0a                	je     c01016cf <get_a_page+0x39>
c01016c5:	53                   	push   ebx
c01016c6:	83 c0 40             	add    eax,0x40
c01016c9:	53                   	push   ebx
c01016ca:	6a 01                	push   0x1
c01016cc:	50                   	push   eax
c01016cd:	eb 10                	jmp    c01016df <get_a_page+0x49>
c01016cf:	4b                   	dec    ebx
c01016d0:	75 14                	jne    c01016e6 <get_a_page+0x50>
c01016d2:	85 d2                	test   edx,edx
c01016d4:	75 10                	jne    c01016e6 <get_a_page+0x50>
c01016d6:	51                   	push   ecx
c01016d7:	51                   	push   ecx
c01016d8:	6a 01                	push   0x1
c01016da:	68 d8 09 11 c0       	push   0xc01109d8
c01016df:	e8 c6 fd ff ff       	call   c01014aa <pgman_alloc>
c01016e4:	eb 19                	jmp    c01016ff <get_a_page+0x69>
c01016e6:	68 74 7b 10 c0       	push   0xc0107b74
c01016eb:	68 d0 7c 10 c0       	push   0xc0107cd0
c01016f0:	68 f1 00 00 00       	push   0xf1
c01016f5:	68 57 7b 10 c0       	push   0xc0107b57
c01016fa:	e8 b5 ed ff ff       	call   c01004b4 <panic_spin>
c01016ff:	58                   	pop    eax
c0101700:	5a                   	pop    edx
c0101701:	6a 01                	push   0x1
c0101703:	57                   	push   edi
c0101704:	e8 a1 fd ff ff       	call   c01014aa <pgman_alloc>
c0101709:	83 c4 10             	add    esp,0x10
c010170c:	85 c0                	test   eax,eax
c010170e:	89 c3                	mov    ebx,eax
c0101710:	75 1c                	jne    c010172e <get_a_page+0x98>
c0101712:	68 cb 7b 10 c0       	push   0xc0107bcb
c0101717:	68 d0 7c 10 c0       	push   0xc0107cd0
c010171c:	68 f4 00 00 00       	push   0xf4
c0101721:	68 57 7b 10 c0       	push   0xc0107b57
c0101726:	e8 89 ed ff ff       	call   c01004b4 <panic_spin>
c010172b:	83 c4 10             	add    esp,0x10
c010172e:	57                   	push   edi
c010172f:	57                   	push   edi
c0101730:	53                   	push   ebx
c0101731:	56                   	push   esi
c0101732:	e8 13 fe ff ff       	call   c010154a <page_table_add>
c0101737:	8d 65 f4             	lea    esp,[ebp-0xc]
c010173a:	89 f0                	mov    eax,esi
c010173c:	5b                   	pop    ebx
c010173d:	5e                   	pop    esi
c010173e:	5f                   	pop    edi
c010173f:	5d                   	pop    ebp
c0101740:	c3                   	ret    

c0101741 <pgman_free>:
c0101741:	55                   	push   ebp
c0101742:	89 e5                	mov    ebp,esp
c0101744:	57                   	push   edi
c0101745:	56                   	push   esi
c0101746:	53                   	push   ebx
c0101747:	83 ec 28             	sub    esp,0x28
c010174a:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c010174d:	8b 75 0c             	mov    esi,DWORD PTR [ebp+0xc]
c0101750:	53                   	push   ebx
c0101751:	e8 dd 05 00 00       	call   c0101d33 <lock_acquire>
c0101756:	8b 4b 24             	mov    ecx,DWORD PTR [ebx+0x24]
c0101759:	c1 ee 0c             	shr    esi,0xc
c010175c:	83 c4 10             	add    esp,0x10
c010175f:	31 c0                	xor    eax,eax
c0101761:	89 4d e4             	mov    DWORD PTR [ebp-0x1c],ecx
c0101764:	eb 09                	jmp    c010176f <pgman_free+0x2e>
c0101766:	8b 53 38             	mov    edx,DWORD PTR [ebx+0x38]
c0101769:	39 34 c2             	cmp    DWORD PTR [edx+eax*8],esi
c010176c:	7f 05                	jg     c0101773 <pgman_free+0x32>
c010176e:	40                   	inc    eax
c010176f:	39 c8                	cmp    eax,ecx
c0101771:	75 f3                	jne    c0101766 <pgman_free+0x25>
c0101773:	85 c0                	test   eax,eax
c0101775:	74 71                	je     c01017e8 <pgman_free+0xa7>
c0101777:	8b 7b 38             	mov    edi,DWORD PTR [ebx+0x38]
c010177a:	8d 14 c5 f8 ff ff ff 	lea    edx,[eax*8-0x8]
c0101781:	89 55 d8             	mov    DWORD PTR [ebp-0x28],edx
c0101784:	01 d7                	add    edi,edx
c0101786:	8b 57 04             	mov    edx,DWORD PTR [edi+0x4]
c0101789:	89 55 e0             	mov    DWORD PTR [ebp-0x20],edx
c010178c:	03 17                	add    edx,DWORD PTR [edi]
c010178e:	39 f2                	cmp    edx,esi
c0101790:	75 56                	jne    c01017e8 <pgman_free+0xa7>
c0101792:	8b 4d 10             	mov    ecx,DWORD PTR [ebp+0x10]
c0101795:	03 4d e0             	add    ecx,DWORD PTR [ebp-0x20]
c0101798:	89 4f 04             	mov    DWORD PTR [edi+0x4],ecx
c010179b:	3b 43 24             	cmp    eax,DWORD PTR [ebx+0x24]
c010179e:	73 72                	jae    c0101812 <pgman_free+0xd1>
c01017a0:	8b 4b 38             	mov    ecx,DWORD PTR [ebx+0x38]
c01017a3:	8d 3c c5 00 00 00 00 	lea    edi,[eax*8+0x0]
c01017aa:	89 7d e4             	mov    DWORD PTR [ebp-0x1c],edi
c01017ad:	03 75 10             	add    esi,DWORD PTR [ebp+0x10]
c01017b0:	01 cf                	add    edi,ecx
c01017b2:	3b 37                	cmp    esi,DWORD PTR [edi]
c01017b4:	75 5c                	jne    c0101812 <pgman_free+0xd1>
c01017b6:	8b 55 d8             	mov    edx,DWORD PTR [ebp-0x28]
c01017b9:	8b 77 04             	mov    esi,DWORD PTR [edi+0x4]
c01017bc:	01 74 11 04          	add    DWORD PTR [ecx+edx*1+0x4],esi
c01017c0:	ff 4b 24             	dec    DWORD PTR [ebx+0x24]
c01017c3:	eb 13                	jmp    c01017d8 <pgman_free+0x97>
c01017c5:	8b 4b 38             	mov    ecx,DWORD PTR [ebx+0x38]
c01017c8:	40                   	inc    eax
c01017c9:	8b 74 11 08          	mov    esi,DWORD PTR [ecx+edx*1+0x8]
c01017cd:	8b 7c 11 0c          	mov    edi,DWORD PTR [ecx+edx*1+0xc]
c01017d1:	89 34 11             	mov    DWORD PTR [ecx+edx*1],esi
c01017d4:	89 7c 11 04          	mov    DWORD PTR [ecx+edx*1+0x4],edi
c01017d8:	8b 55 e4             	mov    edx,DWORD PTR [ebp-0x1c]
c01017db:	3b 43 24             	cmp    eax,DWORD PTR [ebx+0x24]
c01017de:	8d 7a 08             	lea    edi,[edx+0x8]
c01017e1:	89 7d e4             	mov    DWORD PTR [ebp-0x1c],edi
c01017e4:	72 df                	jb     c01017c5 <pgman_free+0x84>
c01017e6:	eb 2a                	jmp    c0101812 <pgman_free+0xd1>
c01017e8:	39 c8                	cmp    eax,ecx
c01017ea:	73 39                	jae    c0101825 <pgman_free+0xe4>
c01017ec:	8b 7b 38             	mov    edi,DWORD PTR [ebx+0x38]
c01017ef:	8d 14 c5 00 00 00 00 	lea    edx,[eax*8+0x0]
c01017f6:	89 55 dc             	mov    DWORD PTR [ebp-0x24],edx
c01017f9:	01 d7                	add    edi,edx
c01017fb:	8b 55 10             	mov    edx,DWORD PTR [ebp+0x10]
c01017fe:	01 f2                	add    edx,esi
c0101800:	3b 17                	cmp    edx,DWORD PTR [edi]
c0101802:	75 21                	jne    c0101825 <pgman_free+0xe4>
c0101804:	8b 55 dc             	mov    edx,DWORD PTR [ebp-0x24]
c0101807:	89 37                	mov    DWORD PTR [edi],esi
c0101809:	8b 4d 10             	mov    ecx,DWORD PTR [ebp+0x10]
c010180c:	03 53 38             	add    edx,DWORD PTR [ebx+0x38]
c010180f:	01 4a 04             	add    DWORD PTR [edx+0x4],ecx
c0101812:	83 ec 0c             	sub    esp,0xc
c0101815:	53                   	push   ebx
c0101816:	e8 73 05 00 00       	call   c0101d8e <lock_release>
c010181b:	83 c4 10             	add    esp,0x10
c010181e:	31 c0                	xor    eax,eax
c0101820:	e9 80 00 00 00       	jmp    c01018a5 <pgman_free+0x164>
c0101825:	81 f9 9f 0f 00 00    	cmp    ecx,0xf9f
c010182b:	77 46                	ja     c0101873 <pgman_free+0x132>
c010182d:	c1 e1 03             	shl    ecx,0x3
c0101830:	89 75 e0             	mov    DWORD PTR [ebp-0x20],esi
c0101833:	eb 15                	jmp    c010184a <pgman_free+0x109>
c0101835:	8b 74 0a f8          	mov    esi,DWORD PTR [edx+ecx*1-0x8]
c0101839:	8b 7c 0a fc          	mov    edi,DWORD PTR [edx+ecx*1-0x4]
c010183d:	ff 45 e4             	inc    DWORD PTR [ebp-0x1c]
c0101840:	89 34 0a             	mov    DWORD PTR [edx+ecx*1],esi
c0101843:	89 7c 0a 04          	mov    DWORD PTR [edx+ecx*1+0x4],edi
c0101847:	83 c1 08             	add    ecx,0x8
c010184a:	39 45 e4             	cmp    DWORD PTR [ebp-0x1c],eax
c010184d:	8b 53 38             	mov    edx,DWORD PTR [ebx+0x38]
c0101850:	7f e3                	jg     c0101835 <pgman_free+0xf4>
c0101852:	8b 4b 24             	mov    ecx,DWORD PTR [ebx+0x24]
c0101855:	8b 75 e0             	mov    esi,DWORD PTR [ebp-0x20]
c0101858:	41                   	inc    ecx
c0101859:	39 4b 28             	cmp    DWORD PTR [ebx+0x28],ecx
c010185c:	89 4b 24             	mov    DWORD PTR [ebx+0x24],ecx
c010185f:	73 03                	jae    c0101864 <pgman_free+0x123>
c0101861:	89 4b 28             	mov    DWORD PTR [ebx+0x28],ecx
c0101864:	89 34 c2             	mov    DWORD PTR [edx+eax*8],esi
c0101867:	8b 7d 10             	mov    edi,DWORD PTR [ebp+0x10]
c010186a:	8b 53 38             	mov    edx,DWORD PTR [ebx+0x38]
c010186d:	89 7c c2 04          	mov    DWORD PTR [edx+eax*8+0x4],edi
c0101871:	eb 9f                	jmp    c0101812 <pgman_free+0xd1>
c0101873:	68 de 7b 10 c0       	push   0xc0107bde
c0101878:	68 dc 7c 10 c0       	push   0xc0107cdc
c010187d:	68 42 01 00 00       	push   0x142
c0101882:	68 57 7b 10 c0       	push   0xc0107b57
c0101887:	e8 28 ec ff ff       	call   c01004b4 <panic_spin>
c010188c:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
c010188f:	01 43 2c             	add    DWORD PTR [ebx+0x2c],eax
c0101892:	ff 43 30             	inc    DWORD PTR [ebx+0x30]
c0101895:	89 1c 24             	mov    DWORD PTR [esp],ebx
c0101898:	e8 f1 04 00 00       	call   c0101d8e <lock_release>
c010189d:	83 c4 10             	add    esp,0x10
c01018a0:	b8 01 00 00 00       	mov    eax,0x1
c01018a5:	8d 65 f4             	lea    esp,[ebp-0xc]
c01018a8:	5b                   	pop    ebx
c01018a9:	5e                   	pop    esi
c01018aa:	5f                   	pop    edi
c01018ab:	5d                   	pop    ebp
c01018ac:	c3                   	ret    

c01018ad <init_memory>:
c01018ad:	55                   	push   ebp
c01018ae:	89 e5                	mov    ebp,esp
c01018b0:	57                   	push   edi
c01018b1:	56                   	push   esi
c01018b2:	53                   	push   ebx
c01018b3:	83 ec 1c             	sub    esp,0x1c
c01018b6:	83 3d 08 7c 00 c0 00 	cmp    DWORD PTR ds:0xc0007c08,0x0
c01018bd:	0f 85 9a 00 00 00    	jne    c010195d <init_memory+0xb0>
c01018c3:	83 3d 0c 7c 00 c0 00 	cmp    DWORD PTR ds:0xc0007c0c,0x0
c01018ca:	0f 85 8d 00 00 00    	jne    c010195d <init_memory+0xb0>
c01018d0:	a1 04 7c 00 c0       	mov    eax,ds:0xc0007c04
c01018d5:	31 f6                	xor    esi,esi
c01018d7:	31 ff                	xor    edi,edi
c01018d9:	8b 0d 00 7c 00 c0    	mov    ecx,DWORD PTR ds:0xc0007c00
c01018df:	31 db                	xor    ebx,ebx
c01018e1:	89 45 e4             	mov    DWORD PTR [ebp-0x1c],eax
c01018e4:	eb 33                	jmp    c0101919 <init_memory+0x6c>
c01018e6:	83 79 10 01          	cmp    DWORD PTR [ecx+0x10],0x1
c01018ea:	75 29                	jne    c0101915 <init_memory+0x68>
c01018ec:	8b 01                	mov    eax,DWORD PTR [ecx]
c01018ee:	31 d2                	xor    edx,edx
c01018f0:	31 ff                	xor    edi,edi
c01018f2:	8b 71 08             	mov    esi,DWORD PTR [ecx+0x8]
c01018f5:	01 c6                	add    esi,eax
c01018f7:	8b 41 04             	mov    eax,DWORD PTR [ecx+0x4]
c01018fa:	11 d7                	adc    edi,edx
c01018fc:	89 c2                	mov    edx,eax
c01018fe:	b8 00 00 00 00       	mov    eax,0x0
c0101903:	01 c6                	add    esi,eax
c0101905:	8b 41 0c             	mov    eax,DWORD PTR [ecx+0xc]
c0101908:	11 d7                	adc    edi,edx
c010190a:	89 c2                	mov    edx,eax
c010190c:	b8 00 00 00 00       	mov    eax,0x0
c0101911:	01 c6                	add    esi,eax
c0101913:	11 d7                	adc    edi,edx
c0101915:	83 c1 14             	add    ecx,0x14
c0101918:	43                   	inc    ebx
c0101919:	3b 5d e4             	cmp    ebx,DWORD PTR [ebp-0x1c]
c010191c:	75 c8                	jne    c01018e6 <init_memory+0x39>
c010191e:	89 f9                	mov    ecx,edi
c0101920:	09 f1                	or     ecx,esi
c0101922:	75 1b                	jne    c010193f <init_memory+0x92>
c0101924:	68 f0 7b 10 c0       	push   0xc0107bf0
c0101929:	68 b8 7c 10 c0       	push   0xc0107cb8
c010192e:	6a 2f                	push   0x2f
c0101930:	68 57 7b 10 c0       	push   0xc0107b57
c0101935:	e8 7a eb ff ff       	call   c01004b4 <panic_spin>
c010193a:	83 c4 10             	add    esp,0x10
c010193d:	eb 12                	jmp    c0101951 <init_memory+0xa4>
c010193f:	83 ff 00             	cmp    edi,0x0
c0101942:	77 08                	ja     c010194c <init_memory+0x9f>
c0101944:	81 fe ff ff ff 3f    	cmp    esi,0x3fffffff
c010194a:	76 05                	jbe    c0101951 <init_memory+0xa4>
c010194c:	be ff ff ff 3f       	mov    esi,0x3fffffff
c0101951:	81 c6 00 00 10 00    	add    esi,0x100000
c0101957:	89 35 08 7c 00 c0    	mov    DWORD PTR ds:0xc0007c08,esi
c010195d:	a1 08 7c 00 c0       	mov    eax,ds:0xc0007c08
c0101962:	2d 00 00 60 00       	sub    eax,0x600000
c0101967:	89 c6                	mov    esi,eax
c0101969:	89 c3                	mov    ebx,eax
c010196b:	89 c7                	mov    edi,eax
c010196d:	50                   	push   eax
c010196e:	68 14 87 11 c0       	push   0xc0118714
c0101973:	c1 ef 0d             	shr    edi,0xd
c0101976:	57                   	push   edi
c0101977:	68 14 04 12 c0       	push   0xc0120414
c010197c:	e8 33 fa ff ff       	call   c01013b4 <init_memman>
c0101981:	83 c4 0c             	add    esp,0xc
c0101984:	68 dc 8b 10 c0       	push   0xc0108bdc
c0101989:	68 ff ff 0f 00       	push   0xfffff
c010198e:	d1 ee                	shr    esi,1
c0101990:	68 d8 09 11 c0       	push   0xc01109d8
c0101995:	29 f3                	sub    ebx,esi
c0101997:	e8 18 fa ff ff       	call   c01013b4 <init_memman>
c010199c:	83 c4 0c             	add    esp,0xc
c010199f:	81 c6 00 00 60 00    	add    esi,0x600000
c01019a5:	68 14 0a 11 c0       	push   0xc0110a14
c01019aa:	c1 eb 0c             	shr    ebx,0xc
c01019ad:	53                   	push   ebx
c01019ae:	68 9c 09 11 c0       	push   0xc011099c
c01019b3:	e8 fc f9 ff ff       	call   c01013b4 <init_memman>
c01019b8:	83 c4 0c             	add    esp,0xc
c01019bb:	57                   	push   edi
c01019bc:	68 00 00 60 00       	push   0x600000
c01019c1:	68 14 04 12 c0       	push   0xc0120414
c01019c6:	e8 76 fd ff ff       	call   c0101741 <pgman_free>
c01019cb:	83 c4 0c             	add    esp,0xc
c01019ce:	53                   	push   ebx
c01019cf:	56                   	push   esi
c01019d0:	68 9c 09 11 c0       	push   0xc011099c
c01019d5:	e8 67 fd ff ff       	call   c0101741 <pgman_free>
c01019da:	83 c4 0c             	add    esp,0xc
c01019dd:	68 00 fc 01 00       	push   0x1fc00
c01019e2:	68 00 00 40 c0       	push   0xc0400000
c01019e7:	68 d8 09 11 c0       	push   0xc01109d8
c01019ec:	89 35 cc 85 10 c0    	mov    DWORD PTR ds:0xc01085cc,esi
c01019f2:	e8 4a fd ff ff       	call   c0101741 <pgman_free>
c01019f7:	c7 04 24 dc 08 11 c0 	mov    DWORD PTR [esp],0xc01108dc
c01019fe:	e8 41 f6 ff ff       	call   c0101044 <init_block>
c0101a03:	83 c4 10             	add    esp,0x10
c0101a06:	8d 65 f4             	lea    esp,[ebp-0xc]
c0101a09:	5b                   	pop    ebx
c0101a0a:	5e                   	pop    esi
c0101a0b:	5f                   	pop    edi
c0101a0c:	5d                   	pop    ebp
c0101a0d:	c3                   	ret    

c0101a0e <page_table_remove>:
c0101a0e:	55                   	push   ebp
c0101a0f:	89 e5                	mov    ebp,esp
c0101a11:	ff 75 08             	push   DWORD PTR [ebp+0x8]
c0101a14:	e8 4d fa ff ff       	call   c0101466 <pte_ptr>
c0101a19:	5a                   	pop    edx
c0101a1a:	83 20 fe             	and    DWORD PTR [eax],0xfffffffe
c0101a1d:	0f 01 7d 08          	invlpg BYTE PTR [ebp+0x8]
c0101a21:	c9                   	leave  
c0101a22:	c3                   	ret    

c0101a23 <paddr_free>:
c0101a23:	55                   	push   ebp
c0101a24:	b8 14 04 12 c0       	mov    eax,0xc0120414
c0101a29:	89 e5                	mov    ebp,esp
c0101a2b:	83 ec 08             	sub    esp,0x8
c0101a2e:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c0101a31:	3b 15 cc 85 10 c0    	cmp    edx,DWORD PTR ds:0xc01085cc
c0101a37:	72 05                	jb     c0101a3e <paddr_free+0x1b>
c0101a39:	b8 9c 09 11 c0       	mov    eax,0xc011099c
c0101a3e:	51                   	push   ecx
c0101a3f:	6a 01                	push   0x1
c0101a41:	52                   	push   edx
c0101a42:	50                   	push   eax
c0101a43:	e8 f9 fc ff ff       	call   c0101741 <pgman_free>
c0101a48:	83 c4 10             	add    esp,0x10
c0101a4b:	c9                   	leave  
c0101a4c:	c3                   	ret    

c0101a4d <vaddr_free>:
c0101a4d:	55                   	push   ebp
c0101a4e:	89 e5                	mov    ebp,esp
c0101a50:	83 7d 08 01          	cmp    DWORD PTR [ebp+0x8],0x1
c0101a54:	56                   	push   esi
c0101a55:	8b 75 10             	mov    esi,DWORD PTR [ebp+0x10]
c0101a58:	53                   	push   ebx
c0101a59:	8b 5d 0c             	mov    ebx,DWORD PTR [ebp+0xc]
c0101a5c:	75 09                	jne    c0101a67 <vaddr_free+0x1a>
c0101a5e:	c7 45 08 d8 09 11 c0 	mov    DWORD PTR [ebp+0x8],0xc01109d8
c0101a65:	eb 11                	jmp    c0101a78 <vaddr_free+0x2b>
c0101a67:	e8 5f 04 00 00       	call   c0101ecb <running_thread>
c0101a6c:	89 75 10             	mov    DWORD PTR [ebp+0x10],esi
c0101a6f:	89 5d 0c             	mov    DWORD PTR [ebp+0xc],ebx
c0101a72:	83 c0 40             	add    eax,0x40
c0101a75:	89 45 08             	mov    DWORD PTR [ebp+0x8],eax
c0101a78:	5b                   	pop    ebx
c0101a79:	5e                   	pop    esi
c0101a7a:	5d                   	pop    ebp
c0101a7b:	e9 c1 fc ff ff       	jmp    c0101741 <pgman_free>

c0101a80 <page_free>:
c0101a80:	55                   	push   ebp
c0101a81:	89 e5                	mov    ebp,esp
c0101a83:	57                   	push   edi
c0101a84:	56                   	push   esi
c0101a85:	53                   	push   ebx
c0101a86:	83 ec 1c             	sub    esp,0x1c
c0101a89:	8b 7d 10             	mov    edi,DWORD PTR [ebp+0x10]
c0101a8c:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0101a8f:	8b 5d 0c             	mov    ebx,DWORD PTR [ebp+0xc]
c0101a92:	85 ff                	test   edi,edi
c0101a94:	89 45 e4             	mov    DWORD PTR [ebp-0x1c],eax
c0101a97:	7e 08                	jle    c0101aa1 <page_free+0x21>
c0101a99:	f7 c3 ff 0f 00 00    	test   ebx,0xfff
c0101a9f:	74 1c                	je     c0101abd <page_free+0x3d>
c0101aa1:	68 05 7c 10 c0       	push   0xc0107c05
c0101aa6:	68 e8 7c 10 c0       	push   0xc0107ce8
c0101aab:	68 72 01 00 00       	push   0x172
c0101ab0:	68 57 7b 10 c0       	push   0xc0107b57
c0101ab5:	e8 fa e9 ff ff       	call   c01004b4 <panic_spin>
c0101aba:	83 c4 10             	add    esp,0x10
c0101abd:	83 ec 0c             	sub    esp,0xc
c0101ac0:	53                   	push   ebx
c0101ac1:	e8 c2 f9 ff ff       	call   c0101488 <addr_v2p>
c0101ac6:	83 c4 10             	add    esp,0x10
c0101ac9:	a9 ff 0f 00 00       	test   eax,0xfff
c0101ace:	75 07                	jne    c0101ad7 <page_free+0x57>
c0101ad0:	3d ff ff 5f 00       	cmp    eax,0x5fffff
c0101ad5:	77 22                	ja     c0101af9 <page_free+0x79>
c0101ad7:	68 38 7c 10 c0       	push   0xc0107c38
c0101adc:	68 e8 7c 10 c0       	push   0xc0107ce8
c0101ae1:	68 74 01 00 00       	push   0x174
c0101ae6:	68 57 7b 10 c0       	push   0xc0107b57
c0101aeb:	89 45 e0             	mov    DWORD PTR [ebp-0x20],eax
c0101aee:	e8 c1 e9 ff ff       	call   c01004b4 <panic_spin>
c0101af3:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
c0101af6:	83 c4 10             	add    esp,0x10
c0101af9:	31 f6                	xor    esi,esi
c0101afb:	3b 05 cc 85 10 c0    	cmp    eax,DWORD PTR ds:0xc01085cc
c0101b01:	73 1f                	jae    c0101b22 <page_free+0xa2>
c0101b03:	eb 40                	jmp    c0101b45 <page_free+0xc5>
c0101b05:	83 ec 0c             	sub    esp,0xc
c0101b08:	46                   	inc    esi
c0101b09:	53                   	push   ebx
c0101b0a:	e8 79 f9 ff ff       	call   c0101488 <addr_v2p>
c0101b0f:	89 04 24             	mov    DWORD PTR [esp],eax
c0101b12:	e8 0c ff ff ff       	call   c0101a23 <paddr_free>
c0101b17:	89 1c 24             	mov    DWORD PTR [esp],ebx
c0101b1a:	e8 ef fe ff ff       	call   c0101a0e <page_table_remove>
c0101b1f:	83 c4 10             	add    esp,0x10
c0101b22:	39 fe                	cmp    esi,edi
c0101b24:	75 df                	jne    c0101b05 <page_free+0x85>
c0101b26:	eb 21                	jmp    c0101b49 <page_free+0xc9>
c0101b28:	83 ec 0c             	sub    esp,0xc
c0101b2b:	46                   	inc    esi
c0101b2c:	53                   	push   ebx
c0101b2d:	e8 56 f9 ff ff       	call   c0101488 <addr_v2p>
c0101b32:	89 04 24             	mov    DWORD PTR [esp],eax
c0101b35:	e8 e9 fe ff ff       	call   c0101a23 <paddr_free>
c0101b3a:	89 1c 24             	mov    DWORD PTR [esp],ebx
c0101b3d:	e8 cc fe ff ff       	call   c0101a0e <page_table_remove>
c0101b42:	83 c4 10             	add    esp,0x10
c0101b45:	39 fe                	cmp    esi,edi
c0101b47:	75 df                	jne    c0101b28 <page_free+0xa8>
c0101b49:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
c0101b4c:	89 75 10             	mov    DWORD PTR [ebp+0x10],esi
c0101b4f:	89 5d 0c             	mov    DWORD PTR [ebp+0xc],ebx
c0101b52:	89 45 08             	mov    DWORD PTR [ebp+0x8],eax
c0101b55:	8d 65 f4             	lea    esp,[ebp-0xc]
c0101b58:	5b                   	pop    ebx
c0101b59:	5e                   	pop    esi
c0101b5a:	5f                   	pop    edi
c0101b5b:	5d                   	pop    ebp
c0101b5c:	e9 ec fe ff ff       	jmp    c0101a4d <vaddr_free>
c0101b61:	00 00                	add    BYTE PTR [eax],al
	...

c0101b64 <sema_init>:
c0101b64:	55                   	push   ebp
c0101b65:	89 e5                	mov    ebp,esp
c0101b67:	56                   	push   esi
c0101b68:	0f b6 75 0c          	movzx  esi,BYTE PTR [ebp+0xc]
c0101b6c:	53                   	push   ebx
c0101b6d:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c0101b70:	83 ec 0c             	sub    esp,0xc
c0101b73:	8d 43 04             	lea    eax,[ebx+0x4]
c0101b76:	89 33                	mov    DWORD PTR [ebx],esi
c0101b78:	50                   	push   eax
c0101b79:	e8 6a 15 00 00       	call   c01030e8 <list_init>
c0101b7e:	8b 03                	mov    eax,DWORD PTR [ebx]
c0101b80:	83 c4 10             	add    esp,0x10
c0101b83:	39 f0                	cmp    eax,esi
c0101b85:	74 19                	je     c0101ba0 <sema_init+0x3c>
c0101b87:	68 f4 7c 10 c0       	push   0xc0107cf4
c0101b8c:	68 30 7e 10 c0       	push   0xc0107e30
c0101b91:	6a 0d                	push   0xd
c0101b93:	68 0a 7d 10 c0       	push   0xc0107d0a
c0101b98:	e8 17 e9 ff ff       	call   c01004b4 <panic_spin>
c0101b9d:	83 c4 10             	add    esp,0x10
c0101ba0:	8d 65 f8             	lea    esp,[ebp-0x8]
c0101ba3:	5b                   	pop    ebx
c0101ba4:	5e                   	pop    esi
c0101ba5:	5d                   	pop    ebp
c0101ba6:	c3                   	ret    

c0101ba7 <lock_init>:
c0101ba7:	55                   	push   ebp
c0101ba8:	89 e5                	mov    ebp,esp
c0101baa:	83 ec 10             	sub    esp,0x10
c0101bad:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0101bb0:	c7 00 00 00 00 00    	mov    DWORD PTR [eax],0x0
c0101bb6:	c7 40 20 00 00 00 00 	mov    DWORD PTR [eax+0x20],0x0
c0101bbd:	83 c0 04             	add    eax,0x4
c0101bc0:	6a 01                	push   0x1
c0101bc2:	50                   	push   eax
c0101bc3:	e8 9c ff ff ff       	call   c0101b64 <sema_init>
c0101bc8:	83 c4 10             	add    esp,0x10
c0101bcb:	c9                   	leave  
c0101bcc:	c3                   	ret    

c0101bcd <sema_down>:
c0101bcd:	55                   	push   ebp
c0101bce:	89 e5                	mov    ebp,esp
c0101bd0:	57                   	push   edi
c0101bd1:	56                   	push   esi
c0101bd2:	53                   	push   ebx
c0101bd3:	83 ec 0c             	sub    esp,0xc
c0101bd6:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c0101bd9:	e8 de f2 ff ff       	call   c0100ebc <intr_disable>
c0101bde:	8d 73 04             	lea    esi,[ebx+0x4]
c0101be1:	89 c7                	mov    edi,eax
c0101be3:	e9 82 00 00 00       	jmp    c0101c6a <sema_down+0x9d>
c0101be8:	e8 de 02 00 00       	call   c0101ecb <running_thread>
c0101bed:	52                   	push   edx
c0101bee:	83 c0 30             	add    eax,0x30
c0101bf1:	52                   	push   edx
c0101bf2:	50                   	push   eax
c0101bf3:	56                   	push   esi
c0101bf4:	e8 a7 15 00 00       	call   c01031a0 <list_find>
c0101bf9:	83 c4 10             	add    esp,0x10
c0101bfc:	85 c0                	test   eax,eax
c0101bfe:	74 19                	je     c0101c19 <sema_down+0x4c>
c0101c00:	68 18 7d 10 c0       	push   0xc0107d18
c0101c05:	68 3c 7e 10 c0       	push   0xc0107e3c
c0101c0a:	6a 24                	push   0x24
c0101c0c:	68 0a 7d 10 c0       	push   0xc0107d0a
c0101c11:	e8 9e e8 ff ff       	call   c01004b4 <panic_spin>
c0101c16:	83 c4 10             	add    esp,0x10
c0101c19:	e8 ad 02 00 00       	call   c0101ecb <running_thread>
c0101c1e:	51                   	push   ecx
c0101c1f:	83 c0 30             	add    eax,0x30
c0101c22:	51                   	push   ecx
c0101c23:	50                   	push   eax
c0101c24:	56                   	push   esi
c0101c25:	e8 76 15 00 00       	call   c01031a0 <list_find>
c0101c2a:	83 c4 10             	add    esp,0x10
c0101c2d:	85 c0                	test   eax,eax
c0101c2f:	74 19                	je     c0101c4a <sema_down+0x7d>
c0101c31:	68 59 7d 10 c0       	push   0xc0107d59
c0101c36:	68 3c 7e 10 c0       	push   0xc0107e3c
c0101c3b:	6a 27                	push   0x27
c0101c3d:	68 0a 7d 10 c0       	push   0xc0107d0a
c0101c42:	e8 6d e8 ff ff       	call   c01004b4 <panic_spin>
c0101c47:	83 c4 10             	add    esp,0x10
c0101c4a:	e8 7c 02 00 00       	call   c0101ecb <running_thread>
c0101c4f:	52                   	push   edx
c0101c50:	83 c0 30             	add    eax,0x30
c0101c53:	52                   	push   edx
c0101c54:	50                   	push   eax
c0101c55:	56                   	push   esi
c0101c56:	e8 ec 14 00 00       	call   c0103147 <list_append>
c0101c5b:	c7 04 24 02 00 00 00 	mov    DWORD PTR [esp],0x2
c0101c62:	e8 0f 05 00 00       	call   c0102176 <thread_block>
c0101c67:	83 c4 10             	add    esp,0x10
c0101c6a:	8b 03                	mov    eax,DWORD PTR [ebx]
c0101c6c:	85 c0                	test   eax,eax
c0101c6e:	0f 84 74 ff ff ff    	je     c0101be8 <sema_down+0x1b>
c0101c74:	8b 03                	mov    eax,DWORD PTR [ebx]
c0101c76:	48                   	dec    eax
c0101c77:	89 03                	mov    DWORD PTR [ebx],eax
c0101c79:	8b 03                	mov    eax,DWORD PTR [ebx]
c0101c7b:	85 c0                	test   eax,eax
c0101c7d:	74 19                	je     c0101c98 <sema_down+0xcb>
c0101c7f:	68 8d 7d 10 c0       	push   0xc0107d8d
c0101c84:	68 3c 7e 10 c0       	push   0xc0107e3c
c0101c89:	6a 2d                	push   0x2d
c0101c8b:	68 0a 7d 10 c0       	push   0xc0107d0a
c0101c90:	e8 1f e8 ff ff       	call   c01004b4 <panic_spin>
c0101c95:	83 c4 10             	add    esp,0x10
c0101c98:	89 7d 08             	mov    DWORD PTR [ebp+0x8],edi
c0101c9b:	8d 65 f4             	lea    esp,[ebp-0xc]
c0101c9e:	5b                   	pop    ebx
c0101c9f:	5e                   	pop    esi
c0101ca0:	5f                   	pop    edi
c0101ca1:	5d                   	pop    ebp
c0101ca2:	e9 85 f3 ff ff       	jmp    c010102c <intr_set_status>

c0101ca7 <sema_up>:
c0101ca7:	55                   	push   ebp
c0101ca8:	89 e5                	mov    ebp,esp
c0101caa:	57                   	push   edi
c0101cab:	56                   	push   esi
c0101cac:	53                   	push   ebx
c0101cad:	83 ec 0c             	sub    esp,0xc
c0101cb0:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c0101cb3:	e8 04 f2 ff ff       	call   c0100ebc <intr_disable>
c0101cb8:	89 c7                	mov    edi,eax
c0101cba:	8b 03                	mov    eax,DWORD PTR [ebx]
c0101cbc:	85 c0                	test   eax,eax
c0101cbe:	74 19                	je     c0101cd9 <sema_up+0x32>
c0101cc0:	68 8d 7d 10 c0       	push   0xc0107d8d
c0101cc5:	68 48 7e 10 c0       	push   0xc0107e48
c0101cca:	6a 38                	push   0x38
c0101ccc:	68 0a 7d 10 c0       	push   0xc0107d0a
c0101cd1:	e8 de e7 ff ff       	call   c01004b4 <panic_spin>
c0101cd6:	83 c4 10             	add    esp,0x10
c0101cd9:	83 ec 0c             	sub    esp,0xc
c0101cdc:	8d 73 04             	lea    esi,[ebx+0x4]
c0101cdf:	56                   	push   esi
c0101ce0:	e8 34 15 00 00       	call   c0103219 <list_empty>
c0101ce5:	83 c4 10             	add    esp,0x10
c0101ce8:	85 c0                	test   eax,eax
c0101cea:	75 15                	jne    c0101d01 <sema_up+0x5a>
c0101cec:	83 ec 0c             	sub    esp,0xc
c0101cef:	56                   	push   esi
c0101cf0:	e8 91 14 00 00       	call   c0103186 <list_pop>
c0101cf5:	59                   	pop    ecx
c0101cf6:	ff 70 04             	push   DWORD PTR [eax+0x4]
c0101cf9:	e8 c3 04 00 00       	call   c01021c1 <thread_unblock>
c0101cfe:	83 c4 10             	add    esp,0x10
c0101d01:	8b 03                	mov    eax,DWORD PTR [ebx]
c0101d03:	40                   	inc    eax
c0101d04:	89 03                	mov    DWORD PTR [ebx],eax
c0101d06:	8b 03                	mov    eax,DWORD PTR [ebx]
c0101d08:	48                   	dec    eax
c0101d09:	74 19                	je     c0101d24 <sema_up+0x7d>
c0101d0b:	68 9f 7d 10 c0       	push   0xc0107d9f
c0101d10:	68 48 7e 10 c0       	push   0xc0107e48
c0101d15:	6a 3f                	push   0x3f
c0101d17:	68 0a 7d 10 c0       	push   0xc0107d0a
c0101d1c:	e8 93 e7 ff ff       	call   c01004b4 <panic_spin>
c0101d21:	83 c4 10             	add    esp,0x10
c0101d24:	89 7d 08             	mov    DWORD PTR [ebp+0x8],edi
c0101d27:	8d 65 f4             	lea    esp,[ebp-0xc]
c0101d2a:	5b                   	pop    ebx
c0101d2b:	5e                   	pop    esi
c0101d2c:	5f                   	pop    edi
c0101d2d:	5d                   	pop    ebp
c0101d2e:	e9 f9 f2 ff ff       	jmp    c010102c <intr_set_status>

c0101d33 <lock_acquire>:
c0101d33:	55                   	push   ebp
c0101d34:	89 e5                	mov    ebp,esp
c0101d36:	56                   	push   esi
c0101d37:	53                   	push   ebx
c0101d38:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c0101d3b:	8b 33                	mov    esi,DWORD PTR [ebx]
c0101d3d:	e8 89 01 00 00       	call   c0101ecb <running_thread>
c0101d42:	39 c6                	cmp    esi,eax
c0101d44:	74 3e                	je     c0101d84 <lock_acquire+0x51>
c0101d46:	83 ec 0c             	sub    esp,0xc
c0101d49:	8d 43 04             	lea    eax,[ebx+0x4]
c0101d4c:	50                   	push   eax
c0101d4d:	e8 7b fe ff ff       	call   c0101bcd <sema_down>
c0101d52:	e8 74 01 00 00       	call   c0101ecb <running_thread>
c0101d57:	83 c4 10             	add    esp,0x10
c0101d5a:	83 7b 20 00          	cmp    DWORD PTR [ebx+0x20],0x0
c0101d5e:	89 03                	mov    DWORD PTR [ebx],eax
c0101d60:	74 19                	je     c0101d7b <lock_acquire+0x48>
c0101d62:	68 b1 7d 10 c0       	push   0xc0107db1
c0101d67:	68 50 7e 10 c0       	push   0xc0107e50
c0101d6c:	6a 4d                	push   0x4d
c0101d6e:	68 0a 7d 10 c0       	push   0xc0107d0a
c0101d73:	e8 3c e7 ff ff       	call   c01004b4 <panic_spin>
c0101d78:	83 c4 10             	add    esp,0x10
c0101d7b:	c7 43 20 01 00 00 00 	mov    DWORD PTR [ebx+0x20],0x1
c0101d82:	eb 03                	jmp    c0101d87 <lock_acquire+0x54>
c0101d84:	ff 43 20             	inc    DWORD PTR [ebx+0x20]
c0101d87:	8d 65 f8             	lea    esp,[ebp-0x8]
c0101d8a:	5b                   	pop    ebx
c0101d8b:	5e                   	pop    esi
c0101d8c:	5d                   	pop    ebp
c0101d8d:	c3                   	ret    

c0101d8e <lock_release>:
c0101d8e:	55                   	push   ebp
c0101d8f:	89 e5                	mov    ebp,esp
c0101d91:	56                   	push   esi
c0101d92:	53                   	push   ebx
c0101d93:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c0101d96:	8b 33                	mov    esi,DWORD PTR [ebx]
c0101d98:	e8 2e 01 00 00       	call   c0101ecb <running_thread>
c0101d9d:	39 c6                	cmp    esi,eax
c0101d9f:	74 19                	je     c0101dba <lock_release+0x2c>
c0101da1:	68 ce 7d 10 c0       	push   0xc0107dce
c0101da6:	68 60 7e 10 c0       	push   0xc0107e60
c0101dab:	6a 5c                	push   0x5c
c0101dad:	68 0a 7d 10 c0       	push   0xc0107d0a
c0101db2:	e8 fd e6 ff ff       	call   c01004b4 <panic_spin>
c0101db7:	83 c4 10             	add    esp,0x10
c0101dba:	8b 43 20             	mov    eax,DWORD PTR [ebx+0x20]
c0101dbd:	83 f8 01             	cmp    eax,0x1
c0101dc0:	76 0b                	jbe    c0101dcd <lock_release+0x3f>
c0101dc2:	48                   	dec    eax
c0101dc3:	89 43 20             	mov    DWORD PTR [ebx+0x20],eax
c0101dc6:	8d 65 f8             	lea    esp,[ebp-0x8]
c0101dc9:	5b                   	pop    ebx
c0101dca:	5e                   	pop    esi
c0101dcb:	5d                   	pop    ebp
c0101dcc:	c3                   	ret    
c0101dcd:	74 19                	je     c0101de8 <lock_release+0x5a>
c0101dcf:	68 f0 7d 10 c0       	push   0xc0107df0
c0101dd4:	68 60 7e 10 c0       	push   0xc0107e60
c0101dd9:	6a 62                	push   0x62
c0101ddb:	68 0a 7d 10 c0       	push   0xc0107d0a
c0101de0:	e8 cf e6 ff ff       	call   c01004b4 <panic_spin>
c0101de5:	83 c4 10             	add    esp,0x10
c0101de8:	c7 03 00 00 00 00    	mov    DWORD PTR [ebx],0x0
c0101dee:	c7 43 20 00 00 00 00 	mov    DWORD PTR [ebx+0x20],0x0
c0101df5:	83 c3 04             	add    ebx,0x4
c0101df8:	89 5d 08             	mov    DWORD PTR [ebp+0x8],ebx
c0101dfb:	8d 65 f8             	lea    esp,[ebp-0x8]
c0101dfe:	5b                   	pop    ebx
c0101dff:	5e                   	pop    esi
c0101e00:	5d                   	pop    ebp
c0101e01:	e9 a1 fe ff ff       	jmp    c0101ca7 <sema_up>
	...

c0101e08 <switch_to>:
c0101e08:	56                   	push   esi
c0101e09:	57                   	push   edi
c0101e0a:	53                   	push   ebx
c0101e0b:	55                   	push   ebp
c0101e0c:	8b 44 24 14          	mov    eax,DWORD PTR [esp+0x14]
c0101e10:	89 20                	mov    DWORD PTR [eax],esp
c0101e12:	8b 44 24 18          	mov    eax,DWORD PTR [esp+0x18]
c0101e16:	8b 20                	mov    esp,DWORD PTR [eax]
c0101e18:	5d                   	pop    ebp
c0101e19:	5b                   	pop    ebx
c0101e1a:	5f                   	pop    edi
c0101e1b:	5e                   	pop    esi
c0101e1c:	c3                   	ret    

c0101e1d <kernel_thread>:
c0101e1d:	55                   	push   ebp
c0101e1e:	89 e5                	mov    ebp,esp
c0101e20:	56                   	push   esi
c0101e21:	8b 75 0c             	mov    esi,DWORD PTR [ebp+0xc]
c0101e24:	53                   	push   ebx
c0101e25:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c0101e28:	e8 e8 f1 ff ff       	call   c0101015 <intr_enable>
c0101e2d:	89 75 08             	mov    DWORD PTR [ebp+0x8],esi
c0101e30:	89 d8                	mov    eax,ebx
c0101e32:	5b                   	pop    ebx
c0101e33:	5e                   	pop    esi
c0101e34:	5d                   	pop    ebp
c0101e35:	ff e0                	jmp    eax

c0101e37 <thread_init>:
c0101e37:	55                   	push   ebp
c0101e38:	89 e5                	mov    ebp,esp
c0101e3a:	53                   	push   ebx
c0101e3b:	83 ec 18             	sub    esp,0x18
c0101e3e:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c0101e41:	8a 45 10             	mov    al,BYTE PTR [ebp+0x10]
c0101e44:	68 40 01 00 00       	push   0x140
c0101e49:	6a 00                	push   0x0
c0101e4b:	53                   	push   ebx
c0101e4c:	88 45 f7             	mov    BYTE PTR [ebp-0x9],al
c0101e4f:	e8 50 16 00 00       	call   c01034a4 <memset>
c0101e54:	58                   	pop    eax
c0101e55:	5a                   	pop    edx
c0101e56:	ff 75 0c             	push   DWORD PTR [ebp+0xc]
c0101e59:	8d 43 0c             	lea    eax,[ebx+0xc]
c0101e5c:	50                   	push   eax
c0101e5d:	e8 15 17 00 00       	call   c0103577 <strcpy>
c0101e62:	83 c4 10             	add    esp,0x10
c0101e65:	3b 1d 80 04 12 c0    	cmp    ebx,DWORD PTR ds:0xc0120480
c0101e6b:	75 09                	jne    c0101e76 <thread_init+0x3f>
c0101e6d:	c7 43 04 00 00 00 00 	mov    DWORD PTR [ebx+0x4],0x0
c0101e74:	eb 07                	jmp    c0101e7d <thread_init+0x46>
c0101e76:	c7 43 04 01 00 00 00 	mov    DWORD PTR [ebx+0x4],0x1
c0101e7d:	83 ec 0c             	sub    esp,0xc
c0101e80:	68 d0 85 10 c0       	push   0xc01085d0
c0101e85:	e8 a9 fe ff ff       	call   c0101d33 <lock_acquire>
c0101e8a:	ff 05 2c 7c 00 c0    	inc    DWORD PTR ds:0xc0007c2c
c0101e90:	c7 04 24 d0 85 10 c0 	mov    DWORD PTR [esp],0xc01085d0
c0101e97:	e8 f2 fe ff ff       	call   c0101d8e <lock_release>
c0101e9c:	a1 2c 7c 00 c0       	mov    eax,ds:0xc0007c2c
c0101ea1:	83 c4 10             	add    esp,0x10
c0101ea4:	c7 43 3c 00 00 00 00 	mov    DWORD PTR [ebx+0x3c],0x0
c0101eab:	c7 83 3c 01 00 00 78 	mov    DWORD PTR [ebx+0x13c],0x12345678
c0101eb2:	56 34 12 
c0101eb5:	89 43 08             	mov    DWORD PTR [ebx+0x8],eax
c0101eb8:	8a 45 f7             	mov    al,BYTE PTR [ebp-0x9]
c0101ebb:	88 43 1c             	mov    BYTE PTR [ebx+0x1c],al
c0101ebe:	8d 83 00 10 00 00    	lea    eax,[ebx+0x1000]
c0101ec4:	89 03                	mov    DWORD PTR [ebx],eax
c0101ec6:	8b 5d fc             	mov    ebx,DWORD PTR [ebp-0x4]
c0101ec9:	c9                   	leave  
c0101eca:	c3                   	ret    

c0101ecb <running_thread>:
c0101ecb:	55                   	push   ebp
c0101ecc:	89 e5                	mov    ebp,esp
c0101ece:	89 e0                	mov    eax,esp
c0101ed0:	25 00 f0 ff ff       	and    eax,0xfffff000
c0101ed5:	5d                   	pop    ebp
c0101ed6:	c3                   	ret    

c0101ed7 <init_thread>:
c0101ed7:	55                   	push   ebp
c0101ed8:	89 e5                	mov    ebp,esp
c0101eda:	83 ec 14             	sub    esp,0x14
c0101edd:	68 50 04 12 c0       	push   0xc0120450
c0101ee2:	e8 01 12 00 00       	call   c01030e8 <list_init>
c0101ee7:	c7 04 24 68 04 12 c0 	mov    DWORD PTR [esp],0xc0120468
c0101eee:	e8 f5 11 00 00       	call   c01030e8 <list_init>
c0101ef3:	c7 05 2c 7c 00 c0 00 	mov    DWORD PTR ds:0xc0007c2c,0x0
c0101efa:	00 00 00 
c0101efd:	c7 04 24 d0 85 10 c0 	mov    DWORD PTR [esp],0xc01085d0
c0101f04:	e8 9e fc ff ff       	call   c0101ba7 <lock_init>
c0101f09:	e8 bd ff ff ff       	call   c0101ecb <running_thread>
c0101f0e:	83 c4 0c             	add    esp,0xc
c0101f11:	6a 1f                	push   0x1f
c0101f13:	68 70 7e 10 c0       	push   0xc0107e70
c0101f18:	50                   	push   eax
c0101f19:	a3 80 04 12 c0       	mov    ds:0xc0120480,eax
c0101f1e:	e8 14 ff ff ff       	call   c0101e37 <thread_init>
c0101f23:	a1 80 04 12 c0       	mov    eax,ds:0xc0120480
c0101f28:	89 40 28             	mov    DWORD PTR [eax+0x28],eax
c0101f2b:	89 40 34             	mov    DWORD PTR [eax+0x34],eax
c0101f2e:	83 c0 24             	add    eax,0x24
c0101f31:	59                   	pop    ecx
c0101f32:	5a                   	pop    edx
c0101f33:	50                   	push   eax
c0101f34:	68 68 04 12 c0       	push   0xc0120468
c0101f39:	e8 09 12 00 00       	call   c0103147 <list_append>
c0101f3e:	83 c4 10             	add    esp,0x10
c0101f41:	c9                   	leave  
c0101f42:	c3                   	ret    

c0101f43 <thread_create>:
c0101f43:	55                   	push   ebp
c0101f44:	89 e5                	mov    ebp,esp
c0101f46:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c0101f49:	8b 02                	mov    eax,DWORD PTR [edx]
c0101f4b:	8d 88 50 fe ff ff    	lea    ecx,[eax-0x1b0]
c0101f51:	89 0a                	mov    DWORD PTR [edx],ecx
c0101f53:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
c0101f56:	c7 80 60 fe ff ff 1d 	mov    DWORD PTR [eax-0x1a0],0xc0101e1d
c0101f5d:	1e 10 c0 
c0101f60:	c7 80 50 fe ff ff 00 	mov    DWORD PTR [eax-0x1b0],0x0
c0101f67:	00 00 00 
c0101f6a:	c7 80 54 fe ff ff 00 	mov    DWORD PTR [eax-0x1ac],0x0
c0101f71:	00 00 00 
c0101f74:	89 90 68 fe ff ff    	mov    DWORD PTR [eax-0x198],edx
c0101f7a:	8b 55 10             	mov    edx,DWORD PTR [ebp+0x10]
c0101f7d:	c7 80 5c fe ff ff 00 	mov    DWORD PTR [eax-0x1a4],0x0
c0101f84:	00 00 00 
c0101f87:	c7 80 58 fe ff ff 00 	mov    DWORD PTR [eax-0x1a8],0x0
c0101f8e:	00 00 00 
c0101f91:	89 90 6c fe ff ff    	mov    DWORD PTR [eax-0x194],edx
c0101f97:	5d                   	pop    ebp
c0101f98:	c3                   	ret    

c0101f99 <thread_start>:
c0101f99:	55                   	push   ebp
c0101f9a:	89 e5                	mov    ebp,esp
c0101f9c:	56                   	push   esi
c0101f9d:	8b 75 0c             	mov    esi,DWORD PTR [ebp+0xc]
c0101fa0:	53                   	push   ebx
c0101fa1:	83 ec 0c             	sub    esp,0xc
c0101fa4:	6a 01                	push   0x1
c0101fa6:	e8 83 f6 ff ff       	call   c010162e <get_kernel_page>
c0101fab:	81 e6 ff 00 00 00    	and    esi,0xff
c0101fb1:	83 c4 0c             	add    esp,0xc
c0101fb4:	56                   	push   esi
c0101fb5:	ff 75 08             	push   DWORD PTR [ebp+0x8]
c0101fb8:	50                   	push   eax
c0101fb9:	89 c3                	mov    ebx,eax
c0101fbb:	e8 77 fe ff ff       	call   c0101e37 <thread_init>
c0101fc0:	83 c4 0c             	add    esp,0xc
c0101fc3:	ff 75 14             	push   DWORD PTR [ebp+0x14]
c0101fc6:	ff 75 10             	push   DWORD PTR [ebp+0x10]
c0101fc9:	8d 73 30             	lea    esi,[ebx+0x30]
c0101fcc:	53                   	push   ebx
c0101fcd:	e8 71 ff ff ff       	call   c0101f43 <thread_create>
c0101fd2:	89 5b 28             	mov    DWORD PTR [ebx+0x28],ebx
c0101fd5:	89 5b 34             	mov    DWORD PTR [ebx+0x34],ebx
c0101fd8:	59                   	pop    ecx
c0101fd9:	58                   	pop    eax
c0101fda:	56                   	push   esi
c0101fdb:	68 50 04 12 c0       	push   0xc0120450
c0101fe0:	e8 bb 11 00 00       	call   c01031a0 <list_find>
c0101fe5:	83 c4 10             	add    esp,0x10
c0101fe8:	85 c0                	test   eax,eax
c0101fea:	74 19                	je     c0102005 <thread_start+0x6c>
c0101fec:	68 7c 7e 10 c0       	push   0xc0107e7c
c0101ff1:	68 30 80 10 c0       	push   0xc0108030
c0101ff6:	6a 6f                	push   0x6f
c0101ff8:	68 ab 7e 10 c0       	push   0xc0107eab
c0101ffd:	e8 b2 e4 ff ff       	call   c01004b4 <panic_spin>
c0102002:	83 c4 10             	add    esp,0x10
c0102005:	50                   	push   eax
c0102006:	50                   	push   eax
c0102007:	56                   	push   esi
c0102008:	68 50 04 12 c0       	push   0xc0120450
c010200d:	e8 35 11 00 00       	call   c0103147 <list_append>
c0102012:	8d 73 24             	lea    esi,[ebx+0x24]
c0102015:	58                   	pop    eax
c0102016:	5a                   	pop    edx
c0102017:	56                   	push   esi
c0102018:	68 68 04 12 c0       	push   0xc0120468
c010201d:	e8 7e 11 00 00       	call   c01031a0 <list_find>
c0102022:	83 c4 10             	add    esp,0x10
c0102025:	85 c0                	test   eax,eax
c0102027:	74 19                	je     c0102042 <thread_start+0xa9>
c0102029:	68 bb 7e 10 c0       	push   0xc0107ebb
c010202e:	68 30 80 10 c0       	push   0xc0108030
c0102033:	6a 72                	push   0x72
c0102035:	68 ab 7e 10 c0       	push   0xc0107eab
c010203a:	e8 75 e4 ff ff       	call   c01004b4 <panic_spin>
c010203f:	83 c4 10             	add    esp,0x10
c0102042:	51                   	push   ecx
c0102043:	51                   	push   ecx
c0102044:	56                   	push   esi
c0102045:	68 68 04 12 c0       	push   0xc0120468
c010204a:	e8 f8 10 00 00       	call   c0103147 <list_append>
c010204f:	8d 65 f8             	lea    esp,[ebp-0x8]
c0102052:	89 d8                	mov    eax,ebx
c0102054:	5b                   	pop    ebx
c0102055:	5e                   	pop    esi
c0102056:	5d                   	pop    ebp
c0102057:	c3                   	ret    

c0102058 <schedule>:
c0102058:	55                   	push   ebp
c0102059:	89 e5                	mov    ebp,esp
c010205b:	56                   	push   esi
c010205c:	53                   	push   ebx
c010205d:	e8 69 fe ff ff       	call   c0101ecb <running_thread>
c0102062:	81 b8 3c 01 00 00 78 	cmp    DWORD PTR [eax+0x13c],0x12345678
c0102069:	56 34 12 
c010206c:	89 c3                	mov    ebx,eax
c010206e:	74 1c                	je     c010208c <schedule+0x34>
c0102070:	68 e4 7e 10 c0       	push   0xc0107ee4
c0102075:	68 40 80 10 c0       	push   0xc0108040
c010207a:	68 84 00 00 00       	push   0x84
c010207f:	68 ab 7e 10 c0       	push   0xc0107eab
c0102084:	e8 2b e4 ff ff       	call   c01004b4 <panic_spin>
c0102089:	83 c4 10             	add    esp,0x10
c010208c:	8b 43 04             	mov    eax,DWORD PTR [ebx+0x4]
c010208f:	85 c0                	test   eax,eax
c0102091:	75 4a                	jne    c01020dd <schedule+0x85>
c0102093:	50                   	push   eax
c0102094:	50                   	push   eax
c0102095:	8d 73 30             	lea    esi,[ebx+0x30]
c0102098:	56                   	push   esi
c0102099:	68 50 04 12 c0       	push   0xc0120450
c010209e:	e8 fd 10 00 00       	call   c01031a0 <list_find>
c01020a3:	83 c4 10             	add    esp,0x10
c01020a6:	85 c0                	test   eax,eax
c01020a8:	74 1c                	je     c01020c6 <schedule+0x6e>
c01020aa:	68 0a 7f 10 c0       	push   0xc0107f0a
c01020af:	68 40 80 10 c0       	push   0xc0108040
c01020b4:	68 88 00 00 00       	push   0x88
c01020b9:	68 ab 7e 10 c0       	push   0xc0107eab
c01020be:	e8 f1 e3 ff ff       	call   c01004b4 <panic_spin>
c01020c3:	83 c4 10             	add    esp,0x10
c01020c6:	51                   	push   ecx
c01020c7:	51                   	push   ecx
c01020c8:	56                   	push   esi
c01020c9:	68 50 04 12 c0       	push   0xc0120450
c01020ce:	e8 74 10 00 00       	call   c0103147 <list_append>
c01020d3:	83 c4 10             	add    esp,0x10
c01020d6:	c7 43 04 00 00 00 00 	mov    DWORD PTR [ebx+0x4],0x0
c01020dd:	83 ec 0c             	sub    esp,0xc
c01020e0:	68 50 04 12 c0       	push   0xc0120450
c01020e5:	c7 05 f4 85 10 c0 00 	mov    DWORD PTR ds:0xc01085f4,0x0
c01020ec:	00 00 00 
c01020ef:	e8 25 11 00 00       	call   c0103219 <list_empty>
c01020f4:	83 c4 10             	add    esp,0x10
c01020f7:	85 c0                	test   eax,eax
c01020f9:	74 1c                	je     c0102117 <schedule+0xbf>
c01020fb:	68 3f 7f 10 c0       	push   0xc0107f3f
c0102100:	68 40 80 10 c0       	push   0xc0108040
c0102105:	68 94 00 00 00       	push   0x94
c010210a:	68 ab 7e 10 c0       	push   0xc0107eab
c010210f:	e8 a0 e3 ff ff       	call   c01004b4 <panic_spin>
c0102114:	83 c4 10             	add    esp,0x10
c0102117:	81 3d 5c 04 12 c0 50 	cmp    DWORD PTR ds:0xc012045c,0xc0120450
c010211e:	04 12 c0 
c0102121:	75 1c                	jne    c010213f <schedule+0xe7>
c0102123:	68 5a 7f 10 c0       	push   0xc0107f5a
c0102128:	68 40 80 10 c0       	push   0xc0108040
c010212d:	68 95 00 00 00       	push   0x95
c0102132:	68 ab 7e 10 c0       	push   0xc0107eab
c0102137:	e8 78 e3 ff ff       	call   c01004b4 <panic_spin>
c010213c:	83 c4 10             	add    esp,0x10
c010213f:	83 ec 0c             	sub    esp,0xc
c0102142:	68 50 04 12 c0       	push   0xc0120450
c0102147:	e8 3a 10 00 00       	call   c0103186 <list_pop>
c010214c:	8b 70 04             	mov    esi,DWORD PTR [eax+0x4]
c010214f:	a3 f4 85 10 c0       	mov    ds:0xc01085f4,eax
c0102154:	c7 46 04 00 00 00 00 	mov    DWORD PTR [esi+0x4],0x0
c010215b:	89 34 24             	mov    DWORD PTR [esp],esi
c010215e:	e8 11 03 00 00       	call   c0102474 <process_activate>
c0102163:	58                   	pop    eax
c0102164:	5a                   	pop    edx
c0102165:	56                   	push   esi
c0102166:	53                   	push   ebx
c0102167:	e8 9c fc ff ff       	call   c0101e08 <switch_to>
c010216c:	83 c4 10             	add    esp,0x10
c010216f:	8d 65 f8             	lea    esp,[ebp-0x8]
c0102172:	5b                   	pop    ebx
c0102173:	5e                   	pop    esi
c0102174:	5d                   	pop    ebp
c0102175:	c3                   	ret    

c0102176 <thread_block>:
c0102176:	55                   	push   ebp
c0102177:	89 e5                	mov    ebp,esp
c0102179:	56                   	push   esi
c010217a:	53                   	push   ebx
c010217b:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c010217e:	83 fb 01             	cmp    ebx,0x1
c0102181:	77 1c                	ja     c010219f <thread_block+0x29>
c0102183:	68 83 7f 10 c0       	push   0xc0107f83
c0102188:	68 4c 80 10 c0       	push   0xc010804c
c010218d:	68 a2 00 00 00       	push   0xa2
c0102192:	68 ab 7e 10 c0       	push   0xc0107eab
c0102197:	e8 18 e3 ff ff       	call   c01004b4 <panic_spin>
c010219c:	83 c4 10             	add    esp,0x10
c010219f:	e8 18 ed ff ff       	call   c0100ebc <intr_disable>
c01021a4:	89 c6                	mov    esi,eax
c01021a6:	e8 20 fd ff ff       	call   c0101ecb <running_thread>
c01021ab:	89 58 04             	mov    DWORD PTR [eax+0x4],ebx
c01021ae:	e8 a5 fe ff ff       	call   c0102058 <schedule>
c01021b3:	89 75 08             	mov    DWORD PTR [ebp+0x8],esi
c01021b6:	8d 65 f8             	lea    esp,[ebp-0x8]
c01021b9:	5b                   	pop    ebx
c01021ba:	5e                   	pop    esi
c01021bb:	5d                   	pop    ebp
c01021bc:	e9 6b ee ff ff       	jmp    c010102c <intr_set_status>

c01021c1 <thread_unblock>:
c01021c1:	55                   	push   ebp
c01021c2:	89 e5                	mov    ebp,esp
c01021c4:	57                   	push   edi
c01021c5:	56                   	push   esi
c01021c6:	53                   	push   ebx
c01021c7:	83 ec 0c             	sub    esp,0xc
c01021ca:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c01021cd:	e8 ea ec ff ff       	call   c0100ebc <intr_disable>
c01021d2:	89 c7                	mov    edi,eax
c01021d4:	8b 43 04             	mov    eax,DWORD PTR [ebx+0x4]
c01021d7:	48                   	dec    eax
c01021d8:	74 7a                	je     c0102254 <thread_unblock+0x93>
c01021da:	50                   	push   eax
c01021db:	50                   	push   eax
c01021dc:	8d 73 30             	lea    esi,[ebx+0x30]
c01021df:	56                   	push   esi
c01021e0:	68 50 04 12 c0       	push   0xc0120450
c01021e5:	e8 b6 0f 00 00       	call   c01031a0 <list_find>
c01021ea:	83 c4 10             	add    esp,0x10
c01021ed:	85 c0                	test   eax,eax
c01021ef:	74 1c                	je     c010220d <thread_unblock+0x4c>
c01021f1:	68 b2 7f 10 c0       	push   0xc0107fb2
c01021f6:	68 5c 80 10 c0       	push   0xc010805c
c01021fb:	68 b0 00 00 00       	push   0xb0
c0102200:	68 ab 7e 10 c0       	push   0xc0107eab
c0102205:	e8 aa e2 ff ff       	call   c01004b4 <panic_spin>
c010220a:	83 c4 10             	add    esp,0x10
c010220d:	50                   	push   eax
c010220e:	50                   	push   eax
c010220f:	56                   	push   esi
c0102210:	68 50 04 12 c0       	push   0xc0120450
c0102215:	e8 86 0f 00 00       	call   c01031a0 <list_find>
c010221a:	83 c4 10             	add    esp,0x10
c010221d:	85 c0                	test   eax,eax
c010221f:	74 1c                	je     c010223d <thread_unblock+0x7c>
c0102221:	68 e2 7f 10 c0       	push   0xc0107fe2
c0102226:	68 5c 80 10 c0       	push   0xc010805c
c010222b:	68 b3 00 00 00       	push   0xb3
c0102230:	68 ab 7e 10 c0       	push   0xc0107eab
c0102235:	e8 7a e2 ff ff       	call   c01004b4 <panic_spin>
c010223a:	83 c4 10             	add    esp,0x10
c010223d:	50                   	push   eax
c010223e:	50                   	push   eax
c010223f:	56                   	push   esi
c0102240:	68 50 04 12 c0       	push   0xc0120450
c0102245:	e8 e5 0e 00 00       	call   c010312f <list_push>
c010224a:	83 c4 10             	add    esp,0x10
c010224d:	c7 43 04 01 00 00 00 	mov    DWORD PTR [ebx+0x4],0x1
c0102254:	89 7d 08             	mov    DWORD PTR [ebp+0x8],edi
c0102257:	8d 65 f4             	lea    esp,[ebp-0xc]
c010225a:	5b                   	pop    ebx
c010225b:	5e                   	pop    esi
c010225c:	5f                   	pop    edi
c010225d:	5d                   	pop    ebp
c010225e:	e9 c9 ed ff ff       	jmp    c010102c <intr_set_status>
	...

c0102264 <init_tss>:
c0102264:	55                   	push   ebp
c0102265:	89 e5                	mov    ebp,esp
c0102267:	83 ec 1c             	sub    esp,0x1c
c010226a:	6a 6c                	push   0x6c
c010226c:	6a 00                	push   0x0
c010226e:	68 f8 85 10 c0       	push   0xc01085f8
c0102273:	e8 2c 12 00 00       	call   c01034a4 <memset>
c0102278:	b8 f8 85 10 c0       	mov    eax,0xc01085f8
c010227d:	89 c2                	mov    edx,eax
c010227f:	66 a3 1a 10 00 c0    	mov    ds:0xc000101a,ax
c0102285:	c1 ea 10             	shr    edx,0x10
c0102288:	c1 e8 18             	shr    eax,0x18
c010228b:	66 c7 05 18 10 00 c0 	mov    WORD PTR ds:0xc0001018,0x6b
c0102292:	6b 00 
c0102294:	88 15 1c 10 00 c0    	mov    BYTE PTR ds:0xc000101c,dl
c010229a:	c6 05 1d 10 00 c0 89 	mov    BYTE PTR ds:0xc000101d,0x89
c01022a1:	c6 05 1e 10 00 c0 80 	mov    BYTE PTR ds:0xc000101e,0x80
c01022a8:	a2 1f 10 00 c0       	mov    ds:0xc000101f,al
c01022ad:	66 c7 05 20 10 00 c0 	mov    WORD PTR ds:0xc0001020,0xffff
c01022b4:	ff ff 
c01022b6:	66 c7 05 22 10 00 c0 	mov    WORD PTR ds:0xc0001022,0x0
c01022bd:	00 00 
c01022bf:	c6 05 24 10 00 c0 00 	mov    BYTE PTR ds:0xc0001024,0x0
c01022c6:	c6 05 25 10 00 c0 f8 	mov    BYTE PTR ds:0xc0001025,0xf8
c01022cd:	c6 05 26 10 00 c0 cf 	mov    BYTE PTR ds:0xc0001026,0xcf
c01022d4:	c6 05 27 10 00 c0 00 	mov    BYTE PTR ds:0xc0001027,0x0
c01022db:	66 c7 05 28 10 00 c0 	mov    WORD PTR ds:0xc0001028,0xffff
c01022e2:	ff ff 
c01022e4:	66 c7 05 2a 10 00 c0 	mov    WORD PTR ds:0xc000102a,0x0
c01022eb:	00 00 
c01022ed:	c6 05 2c 10 00 c0 00 	mov    BYTE PTR ds:0xc000102c,0x0
c01022f4:	c6 05 2d 10 00 c0 f2 	mov    BYTE PTR ds:0xc000102d,0xf2
c01022fb:	c6 05 2e 10 00 c0 cf 	mov    BYTE PTR ds:0xc000102e,0xcf
c0102302:	c6 05 2f 10 00 c0 00 	mov    BYTE PTR ds:0xc000102f,0x0
c0102309:	c7 05 00 86 10 c0 10 	mov    DWORD PTR ds:0xc0108600,0x10
c0102310:	00 00 00 
c0102313:	c7 45 f0 2f 00 00 10 	mov    DWORD PTR [ebp-0x10],0x1000002f
c010231a:	c7 45 f4 00 c0 00 00 	mov    DWORD PTR [ebp-0xc],0xc000
c0102321:	c7 05 60 86 10 c0 6c 	mov    DWORD PTR ds:0xc0108660,0x6c
c0102328:	00 00 00 
c010232b:	0f 01 55 f0          	lgdtd  [ebp-0x10]
c010232f:	b8 18 00 00 00       	mov    eax,0x18
c0102334:	0f 00 d8             	ltr    ax
c0102337:	83 c4 10             	add    esp,0x10
c010233a:	c9                   	leave  
c010233b:	c3                   	ret    

c010233c <update_tss_esp0>:
c010233c:	55                   	push   ebp
c010233d:	89 e5                	mov    ebp,esp
c010233f:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102342:	5d                   	pop    ebp
c0102343:	05 00 10 00 00       	add    eax,0x1000
c0102348:	a3 fc 85 10 c0       	mov    ds:0xc01085fc,eax
c010234d:	c3                   	ret    
	...

c0102350 <start_process>:
c0102350:	55                   	push   ebp
c0102351:	89 e5                	mov    ebp,esp
c0102353:	56                   	push   esi
c0102354:	53                   	push   ebx
c0102355:	e8 71 fb ff ff       	call   c0101ecb <running_thread>
c010235a:	8b 18                	mov    ebx,DWORD PTR [eax]
c010235c:	8d b3 80 00 00 00    	lea    esi,[ebx+0x80]
c0102362:	89 30                	mov    DWORD PTR [eax],esi
c0102364:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102367:	c7 83 84 00 00 00 00 	mov    DWORD PTR [ebx+0x84],0x0
c010236e:	00 00 00 
c0102371:	c7 83 88 00 00 00 00 	mov    DWORD PTR [ebx+0x88],0x0
c0102378:	00 00 00 
c010237b:	c7 83 8c 00 00 00 00 	mov    DWORD PTR [ebx+0x8c],0x0
c0102382:	00 00 00 
c0102385:	89 83 b8 00 00 00    	mov    DWORD PTR [ebx+0xb8],eax
c010238b:	c7 83 90 00 00 00 00 	mov    DWORD PTR [ebx+0x90],0x0
c0102392:	00 00 00 
c0102395:	c7 83 94 00 00 00 00 	mov    DWORD PTR [ebx+0x94],0x0
c010239c:	00 00 00 
c010239f:	c7 83 98 00 00 00 00 	mov    DWORD PTR [ebx+0x98],0x0
c01023a6:	00 00 00 
c01023a9:	c7 83 9c 00 00 00 00 	mov    DWORD PTR [ebx+0x9c],0x0
c01023b0:	00 00 00 
c01023b3:	c7 83 a0 00 00 00 00 	mov    DWORD PTR [ebx+0xa0],0x0
c01023ba:	00 00 00 
c01023bd:	c7 83 a4 00 00 00 00 	mov    DWORD PTR [ebx+0xa4],0x0
c01023c4:	00 00 00 
c01023c7:	c7 83 a8 00 00 00 2b 	mov    DWORD PTR [ebx+0xa8],0x2b
c01023ce:	00 00 00 
c01023d1:	c7 83 ac 00 00 00 2b 	mov    DWORD PTR [ebx+0xac],0x2b
c01023d8:	00 00 00 
c01023db:	c7 83 b0 00 00 00 2b 	mov    DWORD PTR [ebx+0xb0],0x2b
c01023e2:	00 00 00 
c01023e5:	c7 83 bc 00 00 00 23 	mov    DWORD PTR [ebx+0xbc],0x23
c01023ec:	00 00 00 
c01023ef:	c7 83 c0 00 00 00 02 	mov    DWORD PTR [ebx+0xc0],0x202
c01023f6:	02 00 00 
c01023f9:	50                   	push   eax
c01023fa:	50                   	push   eax
c01023fb:	68 00 f0 ff bf       	push   0xbffff000
c0102400:	6a 02                	push   0x2
c0102402:	e8 8f f2 ff ff       	call   c0101696 <get_a_page>
c0102407:	c7 83 c8 00 00 00 2b 	mov    DWORD PTR [ebx+0xc8],0x2b
c010240e:	00 00 00 
c0102411:	05 00 10 00 00       	add    eax,0x1000
c0102416:	89 83 c4 00 00 00    	mov    DWORD PTR [ebx+0xc4],eax
c010241c:	89 f4                	mov    esp,esi
c010241e:	e9 cd e1 ff ff       	jmp    c01005f0 <intr_exit>
c0102423:	83 c4 10             	add    esp,0x10
c0102426:	8d 65 f8             	lea    esp,[ebp-0x8]
c0102429:	5b                   	pop    ebx
c010242a:	5e                   	pop    esi
c010242b:	5d                   	pop    ebp
c010242c:	c3                   	ret    

c010242d <page_dir_activate>:
c010242d:	55                   	push   ebp
c010242e:	89 e5                	mov    ebp,esp
c0102430:	53                   	push   ebx
c0102431:	bb 00 00 40 00       	mov    ebx,0x400000
c0102436:	52                   	push   edx
c0102437:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c010243a:	8b 40 3c             	mov    eax,DWORD PTR [eax+0x3c]
c010243d:	85 c0                	test   eax,eax
c010243f:	74 2b                	je     c010246c <page_dir_activate+0x3f>
c0102441:	83 ec 0c             	sub    esp,0xc
c0102444:	50                   	push   eax
c0102445:	e8 3e f0 ff ff       	call   c0101488 <addr_v2p>
c010244a:	83 c4 10             	add    esp,0x10
c010244d:	85 c0                	test   eax,eax
c010244f:	89 c3                	mov    ebx,eax
c0102451:	75 19                	jne    c010246c <page_dir_activate+0x3f>
c0102453:	68 8c 80 10 c0       	push   0xc010808c
c0102458:	68 74 81 10 c0       	push   0xc0108174
c010245d:	6a 32                	push   0x32
c010245f:	68 a7 80 10 c0       	push   0xc01080a7
c0102464:	e8 4b e0 ff ff       	call   c01004b4 <panic_spin>
c0102469:	83 c4 10             	add    esp,0x10
c010246c:	0f 22 db             	mov    cr3,ebx
c010246f:	8b 5d fc             	mov    ebx,DWORD PTR [ebp-0x4]
c0102472:	c9                   	leave  
c0102473:	c3                   	ret    

c0102474 <process_activate>:
c0102474:	55                   	push   ebp
c0102475:	89 e5                	mov    ebp,esp
c0102477:	53                   	push   ebx
c0102478:	51                   	push   ecx
c0102479:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c010247c:	85 db                	test   ebx,ebx
c010247e:	75 19                	jne    c0102499 <process_activate+0x25>
c0102480:	68 ba 80 10 c0       	push   0xc01080ba
c0102485:	68 88 81 10 c0       	push   0xc0108188
c010248a:	6a 42                	push   0x42
c010248c:	68 a7 80 10 c0       	push   0xc01080a7
c0102491:	e8 1e e0 ff ff       	call   c01004b4 <panic_spin>
c0102496:	83 c4 10             	add    esp,0x10
c0102499:	83 ec 0c             	sub    esp,0xc
c010249c:	53                   	push   ebx
c010249d:	e8 8b ff ff ff       	call   c010242d <page_dir_activate>
c01024a2:	83 c4 10             	add    esp,0x10
c01024a5:	83 7b 3c 00          	cmp    DWORD PTR [ebx+0x3c],0x0
c01024a9:	74 0c                	je     c01024b7 <process_activate+0x43>
c01024ab:	89 5d 08             	mov    DWORD PTR [ebp+0x8],ebx
c01024ae:	8b 5d fc             	mov    ebx,DWORD PTR [ebp-0x4]
c01024b1:	c9                   	leave  
c01024b2:	e9 85 fe ff ff       	jmp    c010233c <update_tss_esp0>
c01024b7:	8b 5d fc             	mov    ebx,DWORD PTR [ebp-0x4]
c01024ba:	c9                   	leave  
c01024bb:	c3                   	ret    

c01024bc <create_page_dir>:
c01024bc:	55                   	push   ebp
c01024bd:	89 e5                	mov    ebp,esp
c01024bf:	53                   	push   ebx
c01024c0:	83 ec 10             	sub    esp,0x10
c01024c3:	6a 01                	push   0x1
c01024c5:	e8 64 f1 ff ff       	call   c010162e <get_kernel_page>
c01024ca:	83 c4 10             	add    esp,0x10
c01024cd:	85 c0                	test   eax,eax
c01024cf:	89 c3                	mov    ebx,eax
c01024d1:	75 10                	jne    c01024e3 <create_page_dir+0x27>
c01024d3:	50                   	push   eax
c01024d4:	50                   	push   eax
c01024d5:	68 ca 80 10 c0       	push   0xc01080ca
c01024da:	6a 04                	push   0x4
c01024dc:	e8 ae 01 00 00       	call   c010268f <console_str>
c01024e1:	eb 28                	jmp    c010250b <create_page_dir+0x4f>
c01024e3:	50                   	push   eax
c01024e4:	68 00 04 00 00       	push   0x400
c01024e9:	68 00 fc ff ff       	push   0xfffffc00
c01024ee:	8d 83 00 0c 00 00    	lea    eax,[ebx+0xc00]
c01024f4:	50                   	push   eax
c01024f5:	e8 f1 0f 00 00       	call   c01034eb <memcpy>
c01024fa:	89 1c 24             	mov    DWORD PTR [esp],ebx
c01024fd:	e8 86 ef ff ff       	call   c0101488 <addr_v2p>
c0102502:	83 c8 07             	or     eax,0x7
c0102505:	89 83 fc 0f 00 00    	mov    DWORD PTR [ebx+0xffc],eax
c010250b:	89 d8                	mov    eax,ebx
c010250d:	83 c4 10             	add    esp,0x10
c0102510:	8b 5d fc             	mov    ebx,DWORD PTR [ebp-0x4]
c0102513:	c9                   	leave  
c0102514:	c3                   	ret    

c0102515 <create_user_vaddr_memman>:
c0102515:	55                   	push   ebp
c0102516:	89 e5                	mov    ebp,esp
c0102518:	53                   	push   ebx
c0102519:	83 ec 10             	sub    esp,0x10
c010251c:	6a 08                	push   0x8
c010251e:	e8 0b f1 ff ff       	call   c010162e <get_kernel_page>
c0102523:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c0102526:	83 c4 0c             	add    esp,0xc
c0102529:	83 c3 40             	add    ebx,0x40
c010252c:	50                   	push   eax
c010252d:	68 ff ff 0f 00       	push   0xfffff
c0102532:	53                   	push   ebx
c0102533:	e8 7c ee ff ff       	call   c01013b4 <init_memman>
c0102538:	83 c4 0c             	add    esp,0xc
c010253b:	68 b8 7f 0b 00       	push   0xb7fb8
c0102540:	68 00 80 04 08       	push   0x8048000
c0102545:	53                   	push   ebx
c0102546:	e8 f6 f1 ff ff       	call   c0101741 <pgman_free>
c010254b:	83 c4 10             	add    esp,0x10
c010254e:	8b 5d fc             	mov    ebx,DWORD PTR [ebp-0x4]
c0102551:	c9                   	leave  
c0102552:	c3                   	ret    

c0102553 <process_execute>:
c0102553:	55                   	push   ebp
c0102554:	89 e5                	mov    ebp,esp
c0102556:	57                   	push   edi
c0102557:	56                   	push   esi
c0102558:	53                   	push   ebx
c0102559:	83 ec 18             	sub    esp,0x18
c010255c:	8b 75 08             	mov    esi,DWORD PTR [ebp+0x8]
c010255f:	6a 01                	push   0x1
c0102561:	8b 7d 0c             	mov    edi,DWORD PTR [ebp+0xc]
c0102564:	e8 c5 f0 ff ff       	call   c010162e <get_kernel_page>
c0102569:	83 c4 0c             	add    esp,0xc
c010256c:	6a 1f                	push   0x1f
c010256e:	57                   	push   edi
c010256f:	89 c3                	mov    ebx,eax
c0102571:	50                   	push   eax
c0102572:	e8 c0 f8 ff ff       	call   c0101e37 <thread_init>
c0102577:	89 1c 24             	mov    DWORD PTR [esp],ebx
c010257a:	e8 96 ff ff ff       	call   c0102515 <create_user_vaddr_memman>
c010257f:	83 c4 0c             	add    esp,0xc
c0102582:	56                   	push   esi
c0102583:	68 50 23 10 c0       	push   0xc0102350
c0102588:	53                   	push   ebx
c0102589:	e8 b5 f9 ff ff       	call   c0101f43 <thread_create>
c010258e:	8d 73 24             	lea    esi,[ebx+0x24]
c0102591:	e8 26 ff ff ff       	call   c01024bc <create_page_dir>
c0102596:	89 43 3c             	mov    DWORD PTR [ebx+0x3c],eax
c0102599:	8d 43 7c             	lea    eax,[ebx+0x7c]
c010259c:	89 04 24             	mov    DWORD PTR [esp],eax
c010259f:	e8 a0 ea ff ff       	call   c0101044 <init_block>
c01025a4:	89 5b 34             	mov    DWORD PTR [ebx+0x34],ebx
c01025a7:	89 5b 28             	mov    DWORD PTR [ebx+0x28],ebx
c01025aa:	e8 0d e9 ff ff       	call   c0100ebc <intr_disable>
c01025af:	59                   	pop    ecx
c01025b0:	89 c7                	mov    edi,eax
c01025b2:	58                   	pop    eax
c01025b3:	56                   	push   esi
c01025b4:	68 68 04 12 c0       	push   0xc0120468
c01025b9:	e8 e2 0b 00 00       	call   c01031a0 <list_find>
c01025be:	83 c4 10             	add    esp,0x10
c01025c1:	85 c0                	test   eax,eax
c01025c3:	74 19                	je     c01025de <process_execute+0x8b>
c01025c5:	68 f4 80 10 c0       	push   0xc01080f4
c01025ca:	68 9c 81 10 c0       	push   0xc010819c
c01025cf:	6a 74                	push   0x74
c01025d1:	68 a7 80 10 c0       	push   0xc01080a7
c01025d6:	e8 d9 de ff ff       	call   c01004b4 <panic_spin>
c01025db:	83 c4 10             	add    esp,0x10
c01025de:	50                   	push   eax
c01025df:	83 c3 30             	add    ebx,0x30
c01025e2:	50                   	push   eax
c01025e3:	56                   	push   esi
c01025e4:	68 68 04 12 c0       	push   0xc0120468
c01025e9:	e8 59 0b 00 00       	call   c0103147 <list_append>
c01025ee:	58                   	pop    eax
c01025ef:	5a                   	pop    edx
c01025f0:	53                   	push   ebx
c01025f1:	68 50 04 12 c0       	push   0xc0120450
c01025f6:	e8 a5 0b 00 00       	call   c01031a0 <list_find>
c01025fb:	83 c4 10             	add    esp,0x10
c01025fe:	85 c0                	test   eax,eax
c0102600:	74 19                	je     c010261b <process_execute+0xc8>
c0102602:	68 20 81 10 c0       	push   0xc0108120
c0102607:	68 9c 81 10 c0       	push   0xc010819c
c010260c:	6a 77                	push   0x77
c010260e:	68 a7 80 10 c0       	push   0xc01080a7
c0102613:	e8 9c de ff ff       	call   c01004b4 <panic_spin>
c0102618:	83 c4 10             	add    esp,0x10
c010261b:	50                   	push   eax
c010261c:	50                   	push   eax
c010261d:	53                   	push   ebx
c010261e:	68 50 04 12 c0       	push   0xc0120450
c0102623:	e8 1f 0b 00 00       	call   c0103147 <list_append>
c0102628:	83 c4 10             	add    esp,0x10
c010262b:	89 7d 08             	mov    DWORD PTR [ebp+0x8],edi
c010262e:	8d 65 f4             	lea    esp,[ebp-0xc]
c0102631:	5b                   	pop    ebx
c0102632:	5e                   	pop    esi
c0102633:	5f                   	pop    edi
c0102634:	5d                   	pop    ebp
c0102635:	e9 f2 e9 ff ff       	jmp    c010102c <intr_set_status>
	...

c010263c <init_console>:
c010263c:	55                   	push   ebp
c010263d:	89 e5                	mov    ebp,esp
c010263f:	83 ec 14             	sub    esp,0x14
c0102642:	68 64 86 10 c0       	push   0xc0108664
c0102647:	e8 5b f5 ff ff       	call   c0101ba7 <lock_init>
c010264c:	83 c4 10             	add    esp,0x10
c010264f:	c9                   	leave  
c0102650:	c3                   	ret    

c0102651 <console_char>:
c0102651:	55                   	push   ebp
c0102652:	89 e5                	mov    ebp,esp
c0102654:	56                   	push   esi
c0102655:	8b 75 0c             	mov    esi,DWORD PTR [ebp+0xc]
c0102658:	53                   	push   ebx
c0102659:	8a 5d 08             	mov    bl,BYTE PTR [ebp+0x8]
c010265c:	83 ec 0c             	sub    esp,0xc
c010265f:	68 64 86 10 c0       	push   0xc0108664
c0102664:	e8 ca f6 ff ff       	call   c0101d33 <lock_acquire>
c0102669:	58                   	pop    eax
c010266a:	5a                   	pop    edx
c010266b:	89 f2                	mov    edx,esi
c010266d:	0f b6 c2             	movzx  eax,dl
c0102670:	50                   	push   eax
c0102671:	0f b6 c3             	movzx  eax,bl
c0102674:	50                   	push   eax
c0102675:	e8 ea 0c 00 00       	call   c0103364 <put_char>
c010267a:	83 c4 10             	add    esp,0x10
c010267d:	c7 45 08 64 86 10 c0 	mov    DWORD PTR [ebp+0x8],0xc0108664
c0102684:	8d 65 f8             	lea    esp,[ebp-0x8]
c0102687:	5b                   	pop    ebx
c0102688:	5e                   	pop    esi
c0102689:	5d                   	pop    ebp
c010268a:	e9 ff f6 ff ff       	jmp    c0101d8e <lock_release>

c010268f <console_str>:
c010268f:	55                   	push   ebp
c0102690:	89 e5                	mov    ebp,esp
c0102692:	56                   	push   esi
c0102693:	8b 75 0c             	mov    esi,DWORD PTR [ebp+0xc]
c0102696:	53                   	push   ebx
c0102697:	8a 5d 08             	mov    bl,BYTE PTR [ebp+0x8]
c010269a:	83 ec 0c             	sub    esp,0xc
c010269d:	68 64 86 10 c0       	push   0xc0108664
c01026a2:	e8 8c f6 ff ff       	call   c0101d33 <lock_acquire>
c01026a7:	59                   	pop    ecx
c01026a8:	58                   	pop    eax
c01026a9:	0f b6 c3             	movzx  eax,bl
c01026ac:	56                   	push   esi
c01026ad:	50                   	push   eax
c01026ae:	e8 52 0d 00 00       	call   c0103405 <put_str>
c01026b3:	83 c4 10             	add    esp,0x10
c01026b6:	c7 45 08 64 86 10 c0 	mov    DWORD PTR [ebp+0x8],0xc0108664
c01026bd:	8d 65 f8             	lea    esp,[ebp-0x8]
c01026c0:	5b                   	pop    ebx
c01026c1:	5e                   	pop    esi
c01026c2:	5d                   	pop    ebp
c01026c3:	e9 c6 f6 ff ff       	jmp    c0101d8e <lock_release>

c01026c8 <console_int>:
c01026c8:	55                   	push   ebp
c01026c9:	89 e5                	mov    ebp,esp
c01026cb:	57                   	push   edi
c01026cc:	56                   	push   esi
c01026cd:	53                   	push   ebx
c01026ce:	83 ec 18             	sub    esp,0x18
c01026d1:	8b 7d 10             	mov    edi,DWORD PTR [ebp+0x10]
c01026d4:	8b 75 0c             	mov    esi,DWORD PTR [ebp+0xc]
c01026d7:	8a 5d 08             	mov    bl,BYTE PTR [ebp+0x8]
c01026da:	68 64 86 10 c0       	push   0xc0108664
c01026df:	e8 4f f6 ff ff       	call   c0101d33 <lock_acquire>
c01026e4:	83 c4 0c             	add    esp,0xc
c01026e7:	57                   	push   edi
c01026e8:	56                   	push   esi
c01026e9:	0f b6 c3             	movzx  eax,bl
c01026ec:	50                   	push   eax
c01026ed:	e8 75 0d 00 00       	call   c0103467 <put_int>
c01026f2:	83 c4 10             	add    esp,0x10
c01026f5:	c7 45 08 64 86 10 c0 	mov    DWORD PTR [ebp+0x8],0xc0108664
c01026fc:	8d 65 f4             	lea    esp,[ebp-0xc]
c01026ff:	5b                   	pop    ebx
c0102700:	5e                   	pop    esi
c0102701:	5f                   	pop    edi
c0102702:	5d                   	pop    ebp
c0102703:	e9 86 f6 ff ff       	jmp    c0101d8e <lock_release>

c0102708 <console_uint>:
c0102708:	55                   	push   ebp
c0102709:	89 e5                	mov    ebp,esp
c010270b:	57                   	push   edi
c010270c:	56                   	push   esi
c010270d:	53                   	push   ebx
c010270e:	83 ec 18             	sub    esp,0x18
c0102711:	8b 7d 10             	mov    edi,DWORD PTR [ebp+0x10]
c0102714:	8b 75 0c             	mov    esi,DWORD PTR [ebp+0xc]
c0102717:	8a 5d 08             	mov    bl,BYTE PTR [ebp+0x8]
c010271a:	68 64 86 10 c0       	push   0xc0108664
c010271f:	e8 0f f6 ff ff       	call   c0101d33 <lock_acquire>
c0102724:	83 c4 0c             	add    esp,0xc
c0102727:	57                   	push   edi
c0102728:	56                   	push   esi
c0102729:	0f b6 c3             	movzx  eax,bl
c010272c:	50                   	push   eax
c010272d:	e8 fb 0c 00 00       	call   c010342d <put_uint>
c0102732:	83 c4 10             	add    esp,0x10
c0102735:	c7 45 08 64 86 10 c0 	mov    DWORD PTR [ebp+0x8],0xc0108664
c010273c:	8d 65 f4             	lea    esp,[ebp-0xc]
c010273f:	5b                   	pop    ebx
c0102740:	5e                   	pop    esi
c0102741:	5f                   	pop    edi
c0102742:	5d                   	pop    ebp
c0102743:	e9 46 f6 ff ff       	jmp    c0101d8e <lock_release>

c0102748 <init_cpu>:
c0102748:	55                   	push   ebp
c0102749:	31 c0                	xor    eax,eax
c010274b:	89 e5                	mov    ebp,esp
c010274d:	b9 04 00 00 00       	mov    ecx,0x4
c0102752:	57                   	push   edi
c0102753:	56                   	push   esi
c0102754:	53                   	push   ebx
c0102755:	8d 7d d8             	lea    edi,[ebp-0x28]
c0102758:	83 ec 3c             	sub    esp,0x3c
c010275b:	f3 ab                	rep stos DWORD PTR es:[edi],eax
c010275d:	8d 7d c7             	lea    edi,[ebp-0x39]
c0102760:	8d 75 c7             	lea    esi,[ebp-0x39]
c0102763:	b1 11                	mov    cl,0x11
c0102765:	f3 aa                	rep stos BYTE PTR es:[edi],al
c0102767:	bf 02 00 00 80       	mov    edi,0x80000002
c010276c:	eb 30                	jmp    c010279e <init_cpu+0x56>
c010276e:	89 f8                	mov    eax,edi
c0102770:	31 c9                	xor    ecx,ecx
c0102772:	0f a2                	cpuid  
c0102774:	89 45 d8             	mov    DWORD PTR [ebp-0x28],eax
c0102777:	47                   	inc    edi
c0102778:	89 45 c7             	mov    DWORD PTR [ebp-0x39],eax
c010277b:	50                   	push   eax
c010277c:	50                   	push   eax
c010277d:	56                   	push   esi
c010277e:	6a 07                	push   0x7
c0102780:	89 5d dc             	mov    DWORD PTR [ebp-0x24],ebx
c0102783:	89 4d e0             	mov    DWORD PTR [ebp-0x20],ecx
c0102786:	89 55 e4             	mov    DWORD PTR [ebp-0x1c],edx
c0102789:	89 5d cb             	mov    DWORD PTR [ebp-0x35],ebx
c010278c:	89 4d cf             	mov    DWORD PTR [ebp-0x31],ecx
c010278f:	89 55 d3             	mov    DWORD PTR [ebp-0x2d],edx
c0102792:	c6 45 d7 00          	mov    BYTE PTR [ebp-0x29],0x0
c0102796:	e8 6a 0c 00 00       	call   c0103405 <put_str>
c010279b:	83 c4 10             	add    esp,0x10
c010279e:	81 ff 05 00 00 80    	cmp    edi,0x80000005
c01027a4:	75 c8                	jne    c010276e <init_cpu+0x26>
c01027a6:	8d 65 f4             	lea    esp,[ebp-0xc]
c01027a9:	5b                   	pop    ebx
c01027aa:	5e                   	pop    esi
c01027ab:	5f                   	pop    edi
c01027ac:	5d                   	pop    ebp
c01027ad:	c3                   	ret    

c01027ae <cpu_info>:
c01027ae:	55                   	push   ebp
c01027af:	31 c0                	xor    eax,eax
c01027b1:	89 e5                	mov    ebp,esp
c01027b3:	b9 04 00 00 00       	mov    ecx,0x4
c01027b8:	57                   	push   edi
c01027b9:	56                   	push   esi
c01027ba:	53                   	push   ebx
c01027bb:	8d 7d d8             	lea    edi,[ebp-0x28]
c01027be:	83 ec 3c             	sub    esp,0x3c
c01027c1:	f3 ab                	rep stos DWORD PTR es:[edi],eax
c01027c3:	8d 7d c7             	lea    edi,[ebp-0x39]
c01027c6:	8d 75 c7             	lea    esi,[ebp-0x39]
c01027c9:	b1 11                	mov    cl,0x11
c01027cb:	f3 aa                	rep stos BYTE PTR es:[edi],al
c01027cd:	bf 02 00 00 80       	mov    edi,0x80000002
c01027d2:	eb 30                	jmp    c0102804 <cpu_info+0x56>
c01027d4:	89 f8                	mov    eax,edi
c01027d6:	31 c9                	xor    ecx,ecx
c01027d8:	0f a2                	cpuid  
c01027da:	89 55 e4             	mov    DWORD PTR [ebp-0x1c],edx
c01027dd:	47                   	inc    edi
c01027de:	89 55 d3             	mov    DWORD PTR [ebp-0x2d],edx
c01027e1:	52                   	push   edx
c01027e2:	52                   	push   edx
c01027e3:	56                   	push   esi
c01027e4:	6a 07                	push   0x7
c01027e6:	89 45 d8             	mov    DWORD PTR [ebp-0x28],eax
c01027e9:	89 5d dc             	mov    DWORD PTR [ebp-0x24],ebx
c01027ec:	89 4d e0             	mov    DWORD PTR [ebp-0x20],ecx
c01027ef:	89 45 c7             	mov    DWORD PTR [ebp-0x39],eax
c01027f2:	89 5d cb             	mov    DWORD PTR [ebp-0x35],ebx
c01027f5:	89 4d cf             	mov    DWORD PTR [ebp-0x31],ecx
c01027f8:	c6 45 d7 00          	mov    BYTE PTR [ebp-0x29],0x0
c01027fc:	e8 04 0c 00 00       	call   c0103405 <put_str>
c0102801:	83 c4 10             	add    esp,0x10
c0102804:	81 ff 05 00 00 80    	cmp    edi,0x80000005
c010280a:	75 c8                	jne    c01027d4 <cpu_info+0x26>
c010280c:	8d 65 f4             	lea    esp,[ebp-0xc]
c010280f:	5b                   	pop    ebx
c0102810:	5e                   	pop    esi
c0102811:	5f                   	pop    edi
c0102812:	5d                   	pop    ebp
c0102813:	c3                   	ret    

c0102814 <wait_keyboard_ready>:
c0102814:	55                   	push   ebp
c0102815:	ba 64 00 00 00       	mov    edx,0x64
c010281a:	89 e5                	mov    ebp,esp
c010281c:	ec                   	in     al,dx
c010281d:	a8 02                	test   al,0x2
c010281f:	75 fb                	jne    c010281c <wait_keyboard_ready+0x8>
c0102821:	5d                   	pop    ebp
c0102822:	c3                   	ret    

c0102823 <init_keyboard>:
c0102823:	55                   	push   ebp
c0102824:	89 e5                	mov    ebp,esp
c0102826:	83 ec 08             	sub    esp,0x8
c0102829:	e8 e6 ff ff ff       	call   c0102814 <wait_keyboard_ready>
c010282e:	ba 64 00 00 00       	mov    edx,0x64
c0102833:	b8 60 00 00 00       	mov    eax,0x60
c0102838:	ee                   	out    dx,al
c0102839:	e8 d6 ff ff ff       	call   c0102814 <wait_keyboard_ready>
c010283e:	ba 60 00 00 00       	mov    edx,0x60
c0102843:	b8 47 00 00 00       	mov    eax,0x47
c0102848:	ee                   	out    dx,al
c0102849:	6a 40                	push   0x40
c010284b:	6a 08                	push   0x8
c010284d:	68 88 86 10 c0       	push   0xc0108688
c0102852:	68 84 04 12 c0       	push   0xc0120484
c0102857:	e8 f4 05 00 00       	call   c0102e50 <init_fifo>
c010285c:	83 c4 10             	add    esp,0x10
c010285f:	c9                   	leave  
c0102860:	c3                   	ret    

c0102861 <intr0x21_handler>:
c0102861:	55                   	push   ebp
c0102862:	b8 20 00 00 00       	mov    eax,0x20
c0102867:	89 e5                	mov    ebp,esp
c0102869:	89 c2                	mov    edx,eax
c010286b:	53                   	push   ebx
c010286c:	83 ec 14             	sub    esp,0x14
c010286f:	ee                   	out    dx,al
c0102870:	8b 0d c8 86 10 c0    	mov    ecx,DWORD PTR ds:0xc01086c8
c0102876:	b2 60                	mov    dl,0x60
c0102878:	8b 1d cc 86 10 c0    	mov    ebx,DWORD PTR ds:0xc01086cc
c010287e:	ec                   	in     al,dx
c010287f:	66 3d e0 00          	cmp    ax,0xe0
c0102883:	75 0f                	jne    c0102894 <intr0x21_handler+0x33>
c0102885:	c7 05 d0 86 10 c0 01 	mov    DWORD PTR ds:0xc01086d0,0x1
c010288c:	00 00 00 
c010288f:	e9 87 01 00 00       	jmp    c0102a1b <intr0x21_handler+0x1ba>
c0102894:	83 3d d0 86 10 c0 01 	cmp    DWORD PTR ds:0xc01086d0,0x1
c010289b:	75 0e                	jne    c01028ab <intr0x21_handler+0x4a>
c010289d:	66 0d 00 e0          	or     ax,0xe000
c01028a1:	c7 05 d0 86 10 c0 00 	mov    DWORD PTR ds:0xc01086d0,0x0
c01028a8:	00 00 00 
c01028ab:	a8 80                	test   al,0x80
c01028ad:	74 61                	je     c0102910 <intr0x21_handler+0xaf>
c01028af:	24 7f                	and    al,0x7f
c01028b1:	66 83 f8 36          	cmp    ax,0x36
c01028b5:	74 3b                	je     c01028f2 <intr0x21_handler+0x91>
c01028b7:	77 12                	ja     c01028cb <intr0x21_handler+0x6a>
c01028b9:	66 83 f8 1d          	cmp    ax,0x1d
c01028bd:	74 24                	je     c01028e3 <intr0x21_handler+0x82>
c01028bf:	66 83 f8 2a          	cmp    ax,0x2a
c01028c3:	0f 85 52 01 00 00    	jne    c0102a1b <intr0x21_handler+0x1ba>
c01028c9:	eb 27                	jmp    c01028f2 <intr0x21_handler+0x91>
c01028cb:	66 3d 1d e0          	cmp    ax,0xe01d
c01028cf:	74 12                	je     c01028e3 <intr0x21_handler+0x82>
c01028d1:	66 3d 38 e0          	cmp    ax,0xe038
c01028d5:	74 2a                	je     c0102901 <intr0x21_handler+0xa0>
c01028d7:	66 83 f8 38          	cmp    ax,0x38
c01028db:	0f 85 3a 01 00 00    	jne    c0102a1b <intr0x21_handler+0x1ba>
c01028e1:	eb 1e                	jmp    c0102901 <intr0x21_handler+0xa0>
c01028e3:	c7 05 d4 86 10 c0 00 	mov    DWORD PTR ds:0xc01086d4,0x0
c01028ea:	00 00 00 
c01028ed:	e9 29 01 00 00       	jmp    c0102a1b <intr0x21_handler+0x1ba>
c01028f2:	c7 05 c8 86 10 c0 00 	mov    DWORD PTR ds:0xc01086c8,0x0
c01028f9:	00 00 00 
c01028fc:	e9 1a 01 00 00       	jmp    c0102a1b <intr0x21_handler+0x1ba>
c0102901:	c7 05 d8 86 10 c0 00 	mov    DWORD PTR ds:0xc01086d8,0x0
c0102908:	00 00 00 
c010290b:	e9 0b 01 00 00       	jmp    c0102a1b <intr0x21_handler+0x1ba>
c0102910:	8d 50 ff             	lea    edx,[eax-0x1]
c0102913:	66 83 fa 39          	cmp    dx,0x39
c0102917:	76 10                	jbe    c0102929 <intr0x21_handler+0xc8>
c0102919:	66 3d 38 e0          	cmp    ax,0xe038
c010291d:	74 0a                	je     c0102929 <intr0x21_handler+0xc8>
c010291f:	66 3d 1d e0          	cmp    ax,0xe01d
c0102923:	0f 85 f2 00 00 00    	jne    c0102a1b <intr0x21_handler+0x1ba>
c0102929:	66 83 f8 29          	cmp    ax,0x29
c010292d:	74 2d                	je     c010295c <intr0x21_handler+0xfb>
c010292f:	66 83 f8 0d          	cmp    ax,0xd
c0102933:	76 27                	jbe    c010295c <intr0x21_handler+0xfb>
c0102935:	66 83 f8 1b          	cmp    ax,0x1b
c0102939:	74 21                	je     c010295c <intr0x21_handler+0xfb>
c010293b:	66 83 f8 1a          	cmp    ax,0x1a
c010293f:	74 1b                	je     c010295c <intr0x21_handler+0xfb>
c0102941:	66 83 f8 27          	cmp    ax,0x27
c0102945:	74 15                	je     c010295c <intr0x21_handler+0xfb>
c0102947:	66 83 f8 2b          	cmp    ax,0x2b
c010294b:	74 0f                	je     c010295c <intr0x21_handler+0xfb>
c010294d:	66 83 f8 28          	cmp    ax,0x28
c0102951:	74 09                	je     c010295c <intr0x21_handler+0xfb>
c0102953:	8d 50 cd             	lea    edx,[eax-0x33]
c0102956:	66 83 fa 02          	cmp    dx,0x2
c010295a:	77 06                	ja     c0102962 <intr0x21_handler+0x101>
c010295c:	49                   	dec    ecx
c010295d:	0f 94 c2             	sete   dl
c0102960:	eb 0f                	jmp    c0102971 <intr0x21_handler+0x110>
c0102962:	85 db                	test   ebx,ebx
c0102964:	74 06                	je     c010296c <intr0x21_handler+0x10b>
c0102966:	31 d2                	xor    edx,edx
c0102968:	85 c9                	test   ecx,ecx
c010296a:	75 08                	jne    c0102974 <intr0x21_handler+0x113>
c010296c:	09 cb                	or     ebx,ecx
c010296e:	0f 95 c2             	setne  dl
c0102971:	0f b6 d2             	movzx  edx,dl
c0102974:	66 25 ff 00          	and    ax,0xff
c0102978:	0f b7 c8             	movzx  ecx,ax
c010297b:	8a 94 4a 18 82 10 c0 	mov    dl,BYTE PTR [edx+ecx*2-0x3fef7de8]
c0102982:	84 d2                	test   dl,dl
c0102984:	88 55 f7             	mov    BYTE PTR [ebp-0x9],dl
c0102987:	74 26                	je     c01029af <intr0x21_handler+0x14e>
c0102989:	83 ec 0c             	sub    esp,0xc
c010298c:	68 84 04 12 c0       	push   0xc0120484
c0102991:	e8 3e 07 00 00       	call   c01030d4 <fifo_fill>
c0102996:	83 c4 10             	add    esp,0x10
c0102999:	85 c0                	test   eax,eax
c010299b:	75 7e                	jne    c0102a1b <intr0x21_handler+0x1ba>
c010299d:	51                   	push   ecx
c010299e:	51                   	push   ecx
c010299f:	8d 45 f7             	lea    eax,[ebp-0x9]
c01029a2:	50                   	push   eax
c01029a3:	68 84 04 12 c0       	push   0xc0120484
c01029a8:	e8 0d 05 00 00       	call   c0102eba <fifo_put>
c01029ad:	eb 69                	jmp    c0102a18 <intr0x21_handler+0x1b7>
c01029af:	66 83 f8 36          	cmp    ax,0x36
c01029b3:	74 2a                	je     c01029df <intr0x21_handler+0x17e>
c01029b5:	77 0e                	ja     c01029c5 <intr0x21_handler+0x164>
c01029b7:	66 83 f8 1d          	cmp    ax,0x1d
c01029bb:	74 16                	je     c01029d3 <intr0x21_handler+0x172>
c01029bd:	66 83 f8 2a          	cmp    ax,0x2a
c01029c1:	75 47                	jne    c0102a0a <intr0x21_handler+0x1a9>
c01029c3:	eb 1a                	jmp    c01029df <intr0x21_handler+0x17e>
c01029c5:	66 83 f8 38          	cmp    ax,0x38
c01029c9:	74 20                	je     c01029eb <intr0x21_handler+0x18a>
c01029cb:	66 83 f8 3a          	cmp    ax,0x3a
c01029cf:	75 39                	jne    c0102a0a <intr0x21_handler+0x1a9>
c01029d1:	eb 24                	jmp    c01029f7 <intr0x21_handler+0x196>
c01029d3:	c7 05 d4 86 10 c0 01 	mov    DWORD PTR ds:0xc01086d4,0x1
c01029da:	00 00 00 
c01029dd:	eb 3c                	jmp    c0102a1b <intr0x21_handler+0x1ba>
c01029df:	c7 05 c8 86 10 c0 01 	mov    DWORD PTR ds:0xc01086c8,0x1
c01029e6:	00 00 00 
c01029e9:	eb 30                	jmp    c0102a1b <intr0x21_handler+0x1ba>
c01029eb:	c7 05 d8 86 10 c0 01 	mov    DWORD PTR ds:0xc01086d8,0x1
c01029f2:	00 00 00 
c01029f5:	eb 24                	jmp    c0102a1b <intr0x21_handler+0x1ba>
c01029f7:	31 c0                	xor    eax,eax
c01029f9:	83 3d cc 86 10 c0 00 	cmp    DWORD PTR ds:0xc01086cc,0x0
c0102a00:	0f 94 c0             	sete   al
c0102a03:	a3 cc 86 10 c0       	mov    ds:0xc01086cc,eax
c0102a08:	eb 11                	jmp    c0102a1b <intr0x21_handler+0x1ba>
c0102a0a:	52                   	push   edx
c0102a0b:	52                   	push   edx
c0102a0c:	68 ec 81 10 c0       	push   0xc01081ec
c0102a11:	6a 04                	push   0x4
c0102a13:	e8 ed 09 00 00       	call   c0103405 <put_str>
c0102a18:	83 c4 10             	add    esp,0x10
c0102a1b:	8b 5d fc             	mov    ebx,DWORD PTR [ebp-0x4]
c0102a1e:	c9                   	leave  
c0102a1f:	c3                   	ret    

c0102a20 <init_mouse>:
c0102a20:	55                   	push   ebp
c0102a21:	89 e5                	mov    ebp,esp
c0102a23:	83 ec 08             	sub    esp,0x8
c0102a26:	e8 e9 fd ff ff       	call   c0102814 <wait_keyboard_ready>
c0102a2b:	ba 64 00 00 00       	mov    edx,0x64
c0102a30:	b8 d4 00 00 00       	mov    eax,0xd4
c0102a35:	ee                   	out    dx,al
c0102a36:	e8 d9 fd ff ff       	call   c0102814 <wait_keyboard_ready>
c0102a3b:	ba 60 00 00 00       	mov    edx,0x60
c0102a40:	b8 f4 00 00 00       	mov    eax,0xf4
c0102a45:	ee                   	out    dx,al
c0102a46:	c7 05 e4 86 10 c0 00 	mov    DWORD PTR ds:0xc01086e4,0x0
c0102a4d:	00 00 00 
c0102a50:	c9                   	leave  
c0102a51:	c3                   	ret    

c0102a52 <intr0x2c_handler>:
c0102a52:	55                   	push   ebp
c0102a53:	b8 20 00 00 00       	mov    eax,0x20
c0102a58:	89 e5                	mov    ebp,esp
c0102a5a:	ba a0 00 00 00       	mov    edx,0xa0
c0102a5f:	ee                   	out    dx,al
c0102a60:	89 c2                	mov    edx,eax
c0102a62:	ee                   	out    dx,al
c0102a63:	b2 60                	mov    dl,0x60
c0102a65:	ec                   	in     al,dx
c0102a66:	8b 0d e4 86 10 c0    	mov    ecx,DWORD PTR ds:0xc01086e4
c0102a6c:	88 c2                	mov    dl,al
c0102a6e:	85 c9                	test   ecx,ecx
c0102a70:	75 17                	jne    c0102a89 <intr0x2c_handler+0x37>
c0102a72:	3c fa                	cmp    al,0xfa
c0102a74:	0f 85 d4 00 00 00    	jne    c0102b4e <intr0x2c_handler+0xfc>
c0102a7a:	c7 05 e4 86 10 c0 01 	mov    DWORD PTR ds:0xc01086e4,0x1
c0102a81:	00 00 00 
c0102a84:	e9 c5 00 00 00       	jmp    c0102b4e <intr0x2c_handler+0xfc>
c0102a89:	8b 0d e4 86 10 c0    	mov    ecx,DWORD PTR ds:0xc01086e4
c0102a8f:	49                   	dec    ecx
c0102a90:	75 23                	jne    c0102ab5 <intr0x2c_handler+0x63>
c0102a92:	81 e2 c8 00 00 00    	and    edx,0xc8
c0102a98:	83 fa 08             	cmp    edx,0x8
c0102a9b:	0f 85 ad 00 00 00    	jne    c0102b4e <intr0x2c_handler+0xfc>
c0102aa1:	a2 e0 86 10 c0       	mov    ds:0xc01086e0,al
c0102aa6:	c7 05 e4 86 10 c0 02 	mov    DWORD PTR ds:0xc01086e4,0x2
c0102aad:	00 00 00 
c0102ab0:	e9 99 00 00 00       	jmp    c0102b4e <intr0x2c_handler+0xfc>
c0102ab5:	8b 15 e4 86 10 c0    	mov    edx,DWORD PTR ds:0xc01086e4
c0102abb:	83 fa 02             	cmp    edx,0x2
c0102abe:	75 11                	jne    c0102ad1 <intr0x2c_handler+0x7f>
c0102ac0:	a2 e1 86 10 c0       	mov    ds:0xc01086e1,al
c0102ac5:	c7 05 e4 86 10 c0 03 	mov    DWORD PTR ds:0xc01086e4,0x3
c0102acc:	00 00 00 
c0102acf:	eb 7d                	jmp    c0102b4e <intr0x2c_handler+0xfc>
c0102ad1:	8b 15 e4 86 10 c0    	mov    edx,DWORD PTR ds:0xc01086e4
c0102ad7:	83 fa 03             	cmp    edx,0x3
c0102ada:	75 72                	jne    c0102b4e <intr0x2c_handler+0xfc>
c0102adc:	a2 e2 86 10 c0       	mov    ds:0xc01086e2,al
c0102ae1:	c7 05 e4 86 10 c0 04 	mov    DWORD PTR ds:0xc01086e4,0x4
c0102ae8:	00 00 00 
c0102aeb:	a0 e0 86 10 c0       	mov    al,ds:0xc01086e0
c0102af0:	83 e0 07             	and    eax,0x7
c0102af3:	a3 f0 86 10 c0       	mov    ds:0xc01086f0,eax
c0102af8:	a0 e1 86 10 c0       	mov    al,ds:0xc01086e1
c0102afd:	0f b6 c0             	movzx  eax,al
c0102b00:	a3 e8 86 10 c0       	mov    ds:0xc01086e8,eax
c0102b05:	a0 e2 86 10 c0       	mov    al,ds:0xc01086e2
c0102b0a:	0f b6 c0             	movzx  eax,al
c0102b0d:	a3 ec 86 10 c0       	mov    ds:0xc01086ec,eax
c0102b12:	a0 e0 86 10 c0       	mov    al,ds:0xc01086e0
c0102b17:	a8 10                	test   al,0x10
c0102b19:	74 0f                	je     c0102b2a <intr0x2c_handler+0xd8>
c0102b1b:	a1 e8 86 10 c0       	mov    eax,ds:0xc01086e8
c0102b20:	0d 00 ff ff ff       	or     eax,0xffffff00
c0102b25:	a3 e8 86 10 c0       	mov    ds:0xc01086e8,eax
c0102b2a:	a0 e0 86 10 c0       	mov    al,ds:0xc01086e0
c0102b2f:	a8 20                	test   al,0x20
c0102b31:	74 0f                	je     c0102b42 <intr0x2c_handler+0xf0>
c0102b33:	a1 ec 86 10 c0       	mov    eax,ds:0xc01086ec
c0102b38:	0d 00 ff ff ff       	or     eax,0xffffff00
c0102b3d:	a3 ec 86 10 c0       	mov    ds:0xc01086ec,eax
c0102b42:	a1 ec 86 10 c0       	mov    eax,ds:0xc01086ec
c0102b47:	f7 d8                	neg    eax
c0102b49:	a3 ec 86 10 c0       	mov    ds:0xc01086ec,eax
c0102b4e:	5d                   	pop    ebp
c0102b4f:	c3                   	ret    

c0102b50 <get_mouse>:
c0102b50:	8b 15 e4 86 10 c0    	mov    edx,DWORD PTR ds:0xc01086e4
c0102b56:	55                   	push   ebp
c0102b57:	89 e5                	mov    ebp,esp
c0102b59:	57                   	push   edi
c0102b5a:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102b5d:	83 fa 04             	cmp    edx,0x4
c0102b60:	56                   	push   esi
c0102b61:	74 09                	je     c0102b6c <get_mouse+0x1c>
c0102b63:	c7 40 04 00 00 00 00 	mov    DWORD PTR [eax+0x4],0x0
c0102b6a:	eb 18                	jmp    c0102b84 <get_mouse+0x34>
c0102b6c:	c7 05 e4 86 10 c0 01 	mov    DWORD PTR ds:0xc01086e4,0x1
c0102b73:	00 00 00 
c0102b76:	be e0 86 10 c0       	mov    esi,0xc01086e0
c0102b7b:	b9 05 00 00 00       	mov    ecx,0x5
c0102b80:	89 c7                	mov    edi,eax
c0102b82:	f3 a5                	rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
c0102b84:	5e                   	pop    esi
c0102b85:	5f                   	pop    edi
c0102b86:	5d                   	pop    ebp
c0102b87:	c2 04 00             	ret    0x4
	...

c0102b8c <get_time>:
c0102b8c:	55                   	push   ebp
c0102b8d:	89 e5                	mov    ebp,esp
c0102b8f:	57                   	push   edi
c0102b90:	56                   	push   esi
c0102b91:	be 70 00 00 00       	mov    esi,0x70
c0102b96:	53                   	push   ebx
c0102b97:	83 ec 1c             	sub    esp,0x1c
c0102b9a:	8b 7d 08             	mov    edi,DWORD PTR [ebp+0x8]
c0102b9d:	e8 0a e3 ff ff       	call   c0100eac <intr_get_status>
c0102ba2:	89 45 e0             	mov    DWORD PTR [ebp-0x20],eax
c0102ba5:	b8 89 00 00 00       	mov    eax,0x89
c0102baa:	89 f2                	mov    edx,esi
c0102bac:	ee                   	out    dx,al
c0102bad:	bb 71 00 00 00       	mov    ebx,0x71
c0102bb2:	89 da                	mov    edx,ebx
c0102bb4:	ec                   	in     al,dx
c0102bb5:	89 c1                	mov    ecx,eax
c0102bb7:	89 f2                	mov    edx,esi
c0102bb9:	b8 b2 00 00 00       	mov    eax,0xb2
c0102bbe:	ee                   	out    dx,al
c0102bbf:	89 da                	mov    edx,ebx
c0102bc1:	ec                   	in     al,dx
c0102bc2:	c1 e0 08             	shl    eax,0x8
c0102bc5:	89 f2                	mov    edx,esi
c0102bc7:	01 c1                	add    ecx,eax
c0102bc9:	b8 88 00 00 00       	mov    eax,0x88
c0102bce:	89 4f 14             	mov    DWORD PTR [edi+0x14],ecx
c0102bd1:	ee                   	out    dx,al
c0102bd2:	89 da                	mov    edx,ebx
c0102bd4:	ec                   	in     al,dx
c0102bd5:	89 47 10             	mov    DWORD PTR [edi+0x10],eax
c0102bd8:	89 f2                	mov    edx,esi
c0102bda:	b8 87 00 00 00       	mov    eax,0x87
c0102bdf:	ee                   	out    dx,al
c0102be0:	89 da                	mov    edx,ebx
c0102be2:	ec                   	in     al,dx
c0102be3:	89 47 0c             	mov    DWORD PTR [edi+0xc],eax
c0102be6:	89 f2                	mov    edx,esi
c0102be8:	b8 84 00 00 00       	mov    eax,0x84
c0102bed:	ee                   	out    dx,al
c0102bee:	89 da                	mov    edx,ebx
c0102bf0:	ec                   	in     al,dx
c0102bf1:	89 47 08             	mov    DWORD PTR [edi+0x8],eax
c0102bf4:	89 f2                	mov    edx,esi
c0102bf6:	b8 82 00 00 00       	mov    eax,0x82
c0102bfb:	ee                   	out    dx,al
c0102bfc:	89 da                	mov    edx,ebx
c0102bfe:	ec                   	in     al,dx
c0102bff:	b9 80 00 00 00       	mov    ecx,0x80
c0102c04:	89 f2                	mov    edx,esi
c0102c06:	89 47 04             	mov    DWORD PTR [edi+0x4],eax
c0102c09:	89 c8                	mov    eax,ecx
c0102c0b:	ee                   	out    dx,al
c0102c0c:	89 da                	mov    edx,ebx
c0102c0e:	ec                   	in     al,dx
c0102c0f:	89 45 e4             	mov    DWORD PTR [ebp-0x1c],eax
c0102c12:	89 f2                	mov    edx,esi
c0102c14:	89 07                	mov    DWORD PTR [edi],eax
c0102c16:	89 c8                	mov    eax,ecx
c0102c18:	ee                   	out    dx,al
c0102c19:	89 da                	mov    edx,ebx
c0102c1b:	ec                   	in     al,dx
c0102c1c:	39 45 e4             	cmp    DWORD PTR [ebp-0x1c],eax
c0102c1f:	75 84                	jne    c0102ba5 <get_time+0x19>
c0102c21:	b2 70                	mov    dl,0x70
c0102c23:	31 c0                	xor    eax,eax
c0102c25:	ee                   	out    dx,al
c0102c26:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
c0102c29:	89 45 08             	mov    DWORD PTR [ebp+0x8],eax
c0102c2c:	83 c4 1c             	add    esp,0x1c
c0102c2f:	5b                   	pop    ebx
c0102c30:	5e                   	pop    esi
c0102c31:	5f                   	pop    edi
c0102c32:	5d                   	pop    ebp
c0102c33:	e9 f4 e3 ff ff       	jmp    c010102c <intr_set_status>

c0102c38 <init_pit>:
c0102c38:	55                   	push   ebp
c0102c39:	ba 43 00 00 00       	mov    edx,0x43
c0102c3e:	89 e5                	mov    ebp,esp
c0102c40:	b8 34 00 00 00       	mov    eax,0x34
c0102c45:	ee                   	out    dx,al
c0102c46:	b2 40                	mov    dl,0x40
c0102c48:	b0 9c                	mov    al,0x9c
c0102c4a:	ee                   	out    dx,al
c0102c4b:	b0 2e                	mov    al,0x2e
c0102c4d:	ee                   	out    dx,al
c0102c4e:	5d                   	pop    ebp
c0102c4f:	c3                   	ret    

c0102c50 <intr0x20_handler>:
c0102c50:	55                   	push   ebp
c0102c51:	b8 20 00 00 00       	mov    eax,0x20
c0102c56:	89 e5                	mov    ebp,esp
c0102c58:	83 ec 08             	sub    esp,0x8
c0102c5b:	89 c2                	mov    edx,eax
c0102c5d:	ee                   	out    dx,al
c0102c5e:	e8 68 f2 ff ff       	call   c0101ecb <running_thread>
c0102c63:	8b 15 f8 86 10 c0    	mov    edx,DWORD PTR ds:0xc01086f8
c0102c69:	42                   	inc    edx
c0102c6a:	89 15 f8 86 10 c0    	mov    DWORD PTR ds:0xc01086f8,edx
c0102c70:	8a 50 1d             	mov    dl,BYTE PTR [eax+0x1d]
c0102c73:	ff 40 20             	inc    DWORD PTR [eax+0x20]
c0102c76:	84 d2                	test   dl,dl
c0102c78:	75 06                	jne    c0102c80 <intr0x20_handler+0x30>
c0102c7a:	c9                   	leave  
c0102c7b:	e9 d8 f3 ff ff       	jmp    c0102058 <schedule>
c0102c80:	4a                   	dec    edx
c0102c81:	88 50 1d             	mov    BYTE PTR [eax+0x1d],dl
c0102c84:	c9                   	leave  
c0102c85:	c3                   	ret    
	...

c0102c88 <syscall_test>:
c0102c88:	55                   	push   ebp
c0102c89:	b8 4d 00 00 00       	mov    eax,0x4d
c0102c8e:	89 e5                	mov    ebp,esp
c0102c90:	5d                   	pop    ebp
c0102c91:	c3                   	ret    

c0102c92 <syscall_print>:
c0102c92:	55                   	push   ebp
c0102c93:	89 e5                	mov    ebp,esp
c0102c95:	5d                   	pop    ebp
c0102c96:	e9 f6 08 00 00       	jmp    c0103591 <strlen>

c0102c9b <syscall_getpid>:
c0102c9b:	55                   	push   ebp
c0102c9c:	89 e5                	mov    ebp,esp
c0102c9e:	83 ec 08             	sub    esp,0x8
c0102ca1:	e8 25 f2 ff ff       	call   c0101ecb <running_thread>
c0102ca6:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
c0102ca9:	c9                   	leave  
c0102caa:	c3                   	ret    

c0102cab <init_syscall>:
c0102cab:	55                   	push   ebp
c0102cac:	89 e5                	mov    ebp,esp
c0102cae:	c7 05 c8 04 12 c0 88 	mov    DWORD PTR ds:0xc01204c8,0xc0102c88
c0102cb5:	2c 10 c0 
c0102cb8:	c7 05 cc 04 12 c0 88 	mov    DWORD PTR ds:0xc01204cc,0xc0102c88
c0102cbf:	2c 10 c0 
c0102cc2:	c7 05 d0 04 12 c0 88 	mov    DWORD PTR ds:0xc01204d0,0xc0102c88
c0102cc9:	2c 10 c0 
c0102ccc:	c7 05 d4 04 12 c0 88 	mov    DWORD PTR ds:0xc01204d4,0xc0102c88
c0102cd3:	2c 10 c0 
c0102cd6:	c7 05 e8 04 12 c0 9b 	mov    DWORD PTR ds:0xc01204e8,0xc0102c9b
c0102cdd:	2c 10 c0 
c0102ce0:	c7 05 ec 04 12 c0 92 	mov    DWORD PTR ds:0xc01204ec,0xc0102c92
c0102ce7:	2c 10 c0 
c0102cea:	5d                   	pop    ebp
c0102ceb:	c3                   	ret    

c0102cec <bitmap_init>:
c0102cec:	55                   	push   ebp
c0102ced:	89 e5                	mov    ebp,esp
c0102cef:	83 ec 0c             	sub    esp,0xc
c0102cf2:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102cf5:	ff 30                	push   DWORD PTR [eax]
c0102cf7:	6a 00                	push   0x0
c0102cf9:	ff 70 04             	push   DWORD PTR [eax+0x4]
c0102cfc:	e8 a3 07 00 00       	call   c01034a4 <memset>
c0102d01:	83 c4 10             	add    esp,0x10
c0102d04:	c9                   	leave  
c0102d05:	c3                   	ret    

c0102d06 <bitmap_scan_test>:
c0102d06:	55                   	push   ebp
c0102d07:	89 e5                	mov    ebp,esp
c0102d09:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c0102d0c:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
c0102d0f:	5d                   	pop    ebp
c0102d10:	8b 52 04             	mov    edx,DWORD PTR [edx+0x4]
c0102d13:	89 c8                	mov    eax,ecx
c0102d15:	83 e1 07             	and    ecx,0x7
c0102d18:	c1 e8 03             	shr    eax,0x3
c0102d1b:	0f b6 04 02          	movzx  eax,BYTE PTR [edx+eax*1]
c0102d1f:	ba 01 00 00 00       	mov    edx,0x1
c0102d24:	d3 e2                	shl    edx,cl
c0102d26:	21 d0                	and    eax,edx
c0102d28:	c3                   	ret    

c0102d29 <bitmap_alloc>:
c0102d29:	55                   	push   ebp
c0102d2a:	89 e5                	mov    ebp,esp
c0102d2c:	57                   	push   edi
c0102d2d:	56                   	push   esi
c0102d2e:	31 f6                	xor    esi,esi
c0102d30:	53                   	push   ebx
c0102d31:	83 ec 1c             	sub    esp,0x1c
c0102d34:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c0102d37:	8b 43 04             	mov    eax,DWORD PTR [ebx+0x4]
c0102d3a:	eb 01                	jmp    c0102d3d <bitmap_alloc+0x14>
c0102d3c:	46                   	inc    esi
c0102d3d:	80 3c 30 ff          	cmp    BYTE PTR [eax+esi*1],0xff
c0102d41:	75 04                	jne    c0102d47 <bitmap_alloc+0x1e>
c0102d43:	3b 33                	cmp    esi,DWORD PTR [ebx]
c0102d45:	72 f5                	jb     c0102d3c <bitmap_alloc+0x13>
c0102d47:	3b 33                	cmp    esi,DWORD PTR [ebx]
c0102d49:	72 19                	jb     c0102d64 <bitmap_alloc+0x3b>
c0102d4b:	68 10 83 10 c0       	push   0xc0108310
c0102d50:	68 7c 83 10 c0       	push   0xc010837c
c0102d55:	6a 2e                	push   0x2e
c0102d57:	68 34 83 10 c0       	push   0xc0108334
c0102d5c:	e8 53 d7 ff ff       	call   c01004b4 <panic_spin>
c0102d61:	83 c4 10             	add    esp,0x10
c0102d64:	8b 13                	mov    edx,DWORD PTR [ebx]
c0102d66:	83 c8 ff             	or     eax,0xffffffff
c0102d69:	39 d6                	cmp    esi,edx
c0102d6b:	74 72                	je     c0102ddf <bitmap_alloc+0xb6>
c0102d6d:	8b 43 04             	mov    eax,DWORD PTR [ebx+0x4]
c0102d70:	31 c9                	xor    ecx,ecx
c0102d72:	bf 01 00 00 00       	mov    edi,0x1
c0102d77:	89 75 e4             	mov    DWORD PTR [ebp-0x1c],esi
c0102d7a:	89 55 dc             	mov    DWORD PTR [ebp-0x24],edx
c0102d7d:	8a 04 30             	mov    al,BYTE PTR [eax+esi*1]
c0102d80:	eb 01                	jmp    c0102d83 <bitmap_alloc+0x5a>
c0102d82:	41                   	inc    ecx
c0102d83:	89 fe                	mov    esi,edi
c0102d85:	d3 e6                	shl    esi,cl
c0102d87:	89 f2                	mov    edx,esi
c0102d89:	84 d0                	test   al,dl
c0102d8b:	75 f5                	jne    c0102d82 <bitmap_alloc+0x59>
c0102d8d:	8b 75 e4             	mov    esi,DWORD PTR [ebp-0x1c]
c0102d90:	83 7d 0c 01          	cmp    DWORD PTR [ebp+0xc],0x1
c0102d94:	8b 55 dc             	mov    edx,DWORD PTR [ebp-0x24]
c0102d97:	8d 0c f1             	lea    ecx,[ecx+esi*8]
c0102d9a:	89 c8                	mov    eax,ecx
c0102d9c:	74 41                	je     c0102ddf <bitmap_alloc+0xb6>
c0102d9e:	8d 3c d5 00 00 00 00 	lea    edi,[edx*8+0x0]
c0102da5:	be 01 00 00 00       	mov    esi,0x1
c0102daa:	29 cf                	sub    edi,ecx
c0102dac:	8d 51 01             	lea    edx,[ecx+0x1]
c0102daf:	eb 27                	jmp    c0102dd8 <bitmap_alloc+0xaf>
c0102db1:	50                   	push   eax
c0102db2:	46                   	inc    esi
c0102db3:	50                   	push   eax
c0102db4:	52                   	push   edx
c0102db5:	53                   	push   ebx
c0102db6:	89 55 e0             	mov    DWORD PTR [ebp-0x20],edx
c0102db9:	e8 48 ff ff ff       	call   c0102d06 <bitmap_scan_test>
c0102dbe:	83 c4 10             	add    esp,0x10
c0102dc1:	8b 55 e0             	mov    edx,DWORD PTR [ebp-0x20]
c0102dc4:	85 c0                	test   eax,eax
c0102dc6:	74 02                	je     c0102dca <bitmap_alloc+0xa1>
c0102dc8:	31 f6                	xor    esi,esi
c0102dca:	3b 75 0c             	cmp    esi,DWORD PTR [ebp+0xc]
c0102dcd:	75 07                	jne    c0102dd6 <bitmap_alloc+0xad>
c0102dcf:	29 f2                	sub    edx,esi
c0102dd1:	8d 42 01             	lea    eax,[edx+0x1]
c0102dd4:	eb 09                	jmp    c0102ddf <bitmap_alloc+0xb6>
c0102dd6:	4f                   	dec    edi
c0102dd7:	42                   	inc    edx
c0102dd8:	85 ff                	test   edi,edi
c0102dda:	75 d5                	jne    c0102db1 <bitmap_alloc+0x88>
c0102ddc:	83 c8 ff             	or     eax,0xffffffff
c0102ddf:	8d 65 f4             	lea    esp,[ebp-0xc]
c0102de2:	5b                   	pop    ebx
c0102de3:	5e                   	pop    esi
c0102de4:	5f                   	pop    edi
c0102de5:	5d                   	pop    ebp
c0102de6:	c3                   	ret    

c0102de7 <bitmap_set>:
c0102de7:	55                   	push   ebp
c0102de8:	89 e5                	mov    ebp,esp
c0102dea:	57                   	push   edi
c0102deb:	56                   	push   esi
c0102dec:	53                   	push   ebx
c0102ded:	83 ec 0c             	sub    esp,0xc
c0102df0:	8a 5d 10             	mov    bl,BYTE PTR [ebp+0x10]
c0102df3:	8b 75 08             	mov    esi,DWORD PTR [ebp+0x8]
c0102df6:	8b 7d 0c             	mov    edi,DWORD PTR [ebp+0xc]
c0102df9:	80 fb 01             	cmp    bl,0x1
c0102dfc:	76 19                	jbe    c0102e17 <bitmap_set+0x30>
c0102dfe:	68 41 83 10 c0       	push   0xc0108341
c0102e03:	68 8c 83 10 c0       	push   0xc010838c
c0102e08:	6a 65                	push   0x65
c0102e0a:	68 34 83 10 c0       	push   0xc0108334
c0102e0f:	e8 a0 d6 ff ff       	call   c01004b4 <panic_spin>
c0102e14:	83 c4 10             	add    esp,0x10
c0102e17:	89 fa                	mov    edx,edi
c0102e19:	89 f9                	mov    ecx,edi
c0102e1b:	c1 ea 03             	shr    edx,0x3
c0102e1e:	83 e1 07             	and    ecx,0x7
c0102e21:	84 db                	test   bl,bl
c0102e23:	74 06                	je     c0102e2b <bitmap_set+0x44>
c0102e25:	fe cb                	dec    bl
c0102e27:	75 1e                	jne    c0102e47 <bitmap_set+0x60>
c0102e29:	eb 10                	jmp    c0102e3b <bitmap_set+0x54>
c0102e2b:	03 56 04             	add    edx,DWORD PTR [esi+0x4]
c0102e2e:	b8 01 00 00 00       	mov    eax,0x1
c0102e33:	d3 e0                	shl    eax,cl
c0102e35:	f7 d0                	not    eax
c0102e37:	20 02                	and    BYTE PTR [edx],al
c0102e39:	eb 0c                	jmp    c0102e47 <bitmap_set+0x60>
c0102e3b:	03 56 04             	add    edx,DWORD PTR [esi+0x4]
c0102e3e:	b8 01 00 00 00       	mov    eax,0x1
c0102e43:	d3 e0                	shl    eax,cl
c0102e45:	08 02                	or     BYTE PTR [edx],al
c0102e47:	8d 65 f4             	lea    esp,[ebp-0xc]
c0102e4a:	5b                   	pop    ebx
c0102e4b:	5e                   	pop    esi
c0102e4c:	5f                   	pop    edi
c0102e4d:	5d                   	pop    ebp
c0102e4e:	c3                   	ret    
	...

c0102e50 <init_fifo>:
c0102e50:	55                   	push   ebp
c0102e51:	89 e5                	mov    ebp,esp
c0102e53:	57                   	push   edi
c0102e54:	56                   	push   esi
c0102e55:	53                   	push   ebx
c0102e56:	83 ec 28             	sub    esp,0x28
c0102e59:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c0102e5c:	8b 75 10             	mov    esi,DWORD PTR [ebp+0x10]
c0102e5f:	8b 45 14             	mov    eax,DWORD PTR [ebp+0x14]
c0102e62:	8b 7d 0c             	mov    edi,DWORD PTR [ebp+0xc]
c0102e65:	53                   	push   ebx
c0102e66:	89 45 e4             	mov    DWORD PTR [ebp-0x1c],eax
c0102e69:	e8 39 ed ff ff       	call   c0101ba7 <lock_init>
c0102e6e:	83 c4 10             	add    esp,0x10
c0102e71:	83 fe 10             	cmp    esi,0x10
c0102e74:	c7 43 24 00 00 00 00 	mov    DWORD PTR [ebx+0x24],0x0
c0102e7b:	c7 43 28 00 00 00 00 	mov    DWORD PTR [ebx+0x28],0x0
c0102e82:	89 73 30             	mov    DWORD PTR [ebx+0x30],esi
c0102e85:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
c0102e88:	74 11                	je     c0102e9b <init_fifo+0x4b>
c0102e8a:	7f 05                	jg     c0102e91 <init_fifo+0x41>
c0102e8c:	83 fe 08             	cmp    esi,0x8
c0102e8f:	eb 08                	jmp    c0102e99 <init_fifo+0x49>
c0102e91:	83 fe 20             	cmp    esi,0x20
c0102e94:	74 05                	je     c0102e9b <init_fifo+0x4b>
c0102e96:	83 fe 40             	cmp    esi,0x40
c0102e99:	75 03                	jne    c0102e9e <init_fifo+0x4e>
c0102e9b:	89 7b 2c             	mov    DWORD PTR [ebx+0x2c],edi
c0102e9e:	89 43 34             	mov    DWORD PTR [ebx+0x34],eax
c0102ea1:	89 43 38             	mov    DWORD PTR [ebx+0x38],eax
c0102ea4:	c7 43 3c 00 00 00 00 	mov    DWORD PTR [ebx+0x3c],0x0
c0102eab:	c7 43 40 00 00 00 00 	mov    DWORD PTR [ebx+0x40],0x0
c0102eb2:	8d 65 f4             	lea    esp,[ebp-0xc]
c0102eb5:	5b                   	pop    ebx
c0102eb6:	5e                   	pop    esi
c0102eb7:	5f                   	pop    edi
c0102eb8:	5d                   	pop    ebp
c0102eb9:	c3                   	ret    

c0102eba <fifo_put>:
c0102eba:	55                   	push   ebp
c0102ebb:	89 e5                	mov    ebp,esp
c0102ebd:	57                   	push   edi
c0102ebe:	56                   	push   esi
c0102ebf:	53                   	push   ebx
c0102ec0:	83 ec 1c             	sub    esp,0x1c
c0102ec3:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c0102ec6:	8b 75 0c             	mov    esi,DWORD PTR [ebp+0xc]
c0102ec9:	e8 ee df ff ff       	call   c0100ebc <intr_disable>
c0102ece:	89 45 e4             	mov    DWORD PTR [ebp-0x1c],eax
c0102ed1:	eb 28                	jmp    c0102efb <fifo_put+0x41>
c0102ed3:	83 ec 0c             	sub    esp,0xc
c0102ed6:	53                   	push   ebx
c0102ed7:	e8 57 ee ff ff       	call   c0101d33 <lock_acquire>
c0102edc:	e8 ea ef ff ff       	call   c0101ecb <running_thread>
c0102ee1:	89 43 24             	mov    DWORD PTR [ebx+0x24],eax
c0102ee4:	c7 04 24 02 00 00 00 	mov    DWORD PTR [esp],0x2
c0102eeb:	e8 86 f2 ff ff       	call   c0102176 <thread_block>
c0102ef0:	89 1c 24             	mov    DWORD PTR [esp],ebx
c0102ef3:	e8 96 ee ff ff       	call   c0101d8e <lock_release>
c0102ef8:	83 c4 10             	add    esp,0x10
c0102efb:	8b 43 38             	mov    eax,DWORD PTR [ebx+0x38]
c0102efe:	85 c0                	test   eax,eax
c0102f00:	74 d1                	je     c0102ed3 <fifo_put+0x19>
c0102f02:	48                   	dec    eax
c0102f03:	89 43 38             	mov    DWORD PTR [ebx+0x38],eax
c0102f06:	8b 43 30             	mov    eax,DWORD PTR [ebx+0x30]
c0102f09:	83 f8 10             	cmp    eax,0x10
c0102f0c:	74 28                	je     c0102f36 <fifo_put+0x7c>
c0102f0e:	83 f8 08             	cmp    eax,0x8
c0102f11:	74 23                	je     c0102f36 <fifo_put+0x7c>
c0102f13:	83 f8 20             	cmp    eax,0x20
c0102f16:	74 1e                	je     c0102f36 <fifo_put+0x7c>
c0102f18:	83 f8 40             	cmp    eax,0x40
c0102f1b:	74 19                	je     c0102f36 <fifo_put+0x7c>
c0102f1d:	68 98 83 10 c0       	push   0xc0108398
c0102f22:	68 14 84 10 c0       	push   0xc0108414
c0102f27:	6a 3b                	push   0x3b
c0102f29:	68 e4 83 10 c0       	push   0xc01083e4
c0102f2e:	e8 81 d5 ff ff       	call   c01004b4 <panic_spin>
c0102f33:	83 c4 10             	add    esp,0x10
c0102f36:	8b 53 30             	mov    edx,DWORD PTR [ebx+0x30]
c0102f39:	8b 43 40             	mov    eax,DWORD PTR [ebx+0x40]
c0102f3c:	83 fa 10             	cmp    edx,0x10
c0102f3f:	74 1f                	je     c0102f60 <fifo_put+0xa6>
c0102f41:	7f 07                	jg     c0102f4a <fifo_put+0x90>
c0102f43:	83 fa 08             	cmp    edx,0x8
c0102f46:	75 3d                	jne    c0102f85 <fifo_put+0xcb>
c0102f48:	eb 0c                	jmp    c0102f56 <fifo_put+0x9c>
c0102f4a:	83 fa 20             	cmp    edx,0x20
c0102f4d:	74 1d                	je     c0102f6c <fifo_put+0xb2>
c0102f4f:	83 fa 40             	cmp    edx,0x40
c0102f52:	75 31                	jne    c0102f85 <fifo_put+0xcb>
c0102f54:	eb 20                	jmp    c0102f76 <fifo_put+0xbc>
c0102f56:	8a 0e                	mov    cl,BYTE PTR [esi]
c0102f58:	8b 53 2c             	mov    edx,DWORD PTR [ebx+0x2c]
c0102f5b:	88 0c 02             	mov    BYTE PTR [edx+eax*1],cl
c0102f5e:	eb 25                	jmp    c0102f85 <fifo_put+0xcb>
c0102f60:	66 8b 0e             	mov    cx,WORD PTR [esi]
c0102f63:	8b 53 2c             	mov    edx,DWORD PTR [ebx+0x2c]
c0102f66:	66 89 0c 42          	mov    WORD PTR [edx+eax*2],cx
c0102f6a:	eb 19                	jmp    c0102f85 <fifo_put+0xcb>
c0102f6c:	8b 0e                	mov    ecx,DWORD PTR [esi]
c0102f6e:	8b 53 2c             	mov    edx,DWORD PTR [ebx+0x2c]
c0102f71:	89 0c 82             	mov    DWORD PTR [edx+eax*4],ecx
c0102f74:	eb 0f                	jmp    c0102f85 <fifo_put+0xcb>
c0102f76:	8b 7e 04             	mov    edi,DWORD PTR [esi+0x4]
c0102f79:	8b 53 2c             	mov    edx,DWORD PTR [ebx+0x2c]
c0102f7c:	8b 36                	mov    esi,DWORD PTR [esi]
c0102f7e:	89 7c c2 04          	mov    DWORD PTR [edx+eax*8+0x4],edi
c0102f82:	89 34 c2             	mov    DWORD PTR [edx+eax*8],esi
c0102f85:	8b 43 40             	mov    eax,DWORD PTR [ebx+0x40]
c0102f88:	40                   	inc    eax
c0102f89:	99                   	cdq    
c0102f8a:	f7 7b 34             	idiv   DWORD PTR [ebx+0x34]
c0102f8d:	8b 43 28             	mov    eax,DWORD PTR [ebx+0x28]
c0102f90:	85 c0                	test   eax,eax
c0102f92:	89 53 40             	mov    DWORD PTR [ebx+0x40],edx
c0102f95:	74 13                	je     c0102faa <fifo_put+0xf0>
c0102f97:	83 ec 0c             	sub    esp,0xc
c0102f9a:	50                   	push   eax
c0102f9b:	e8 21 f2 ff ff       	call   c01021c1 <thread_unblock>
c0102fa0:	83 c4 10             	add    esp,0x10
c0102fa3:	c7 43 28 00 00 00 00 	mov    DWORD PTR [ebx+0x28],0x0
c0102faa:	83 ec 0c             	sub    esp,0xc
c0102fad:	ff 75 e4             	push   DWORD PTR [ebp-0x1c]
c0102fb0:	e8 77 e0 ff ff       	call   c010102c <intr_set_status>
c0102fb5:	8d 65 f4             	lea    esp,[ebp-0xc]
c0102fb8:	31 c0                	xor    eax,eax
c0102fba:	5b                   	pop    ebx
c0102fbb:	5e                   	pop    esi
c0102fbc:	5f                   	pop    edi
c0102fbd:	5d                   	pop    ebp
c0102fbe:	c3                   	ret    

c0102fbf <fifo_get>:
c0102fbf:	55                   	push   ebp
c0102fc0:	89 e5                	mov    ebp,esp
c0102fc2:	57                   	push   edi
c0102fc3:	56                   	push   esi
c0102fc4:	53                   	push   ebx
c0102fc5:	83 ec 0c             	sub    esp,0xc
c0102fc8:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c0102fcb:	8b 75 0c             	mov    esi,DWORD PTR [ebp+0xc]
c0102fce:	e8 e9 de ff ff       	call   c0100ebc <intr_disable>
c0102fd3:	89 c7                	mov    edi,eax
c0102fd5:	8b 43 30             	mov    eax,DWORD PTR [ebx+0x30]
c0102fd8:	83 f8 10             	cmp    eax,0x10
c0102fdb:	74 4f                	je     c010302c <fifo_get+0x6d>
c0102fdd:	83 f8 08             	cmp    eax,0x8
c0102fe0:	74 4a                	je     c010302c <fifo_get+0x6d>
c0102fe2:	83 f8 20             	cmp    eax,0x20
c0102fe5:	74 45                	je     c010302c <fifo_get+0x6d>
c0102fe7:	83 f8 40             	cmp    eax,0x40
c0102fea:	74 40                	je     c010302c <fifo_get+0x6d>
c0102fec:	68 98 83 10 c0       	push   0xc0108398
c0102ff1:	68 20 84 10 c0       	push   0xc0108420
c0102ff6:	6a 5a                	push   0x5a
c0102ff8:	68 e4 83 10 c0       	push   0xc01083e4
c0102ffd:	e8 b2 d4 ff ff       	call   c01004b4 <panic_spin>
c0103002:	eb 25                	jmp    c0103029 <fifo_get+0x6a>
c0103004:	83 ec 0c             	sub    esp,0xc
c0103007:	53                   	push   ebx
c0103008:	e8 26 ed ff ff       	call   c0101d33 <lock_acquire>
c010300d:	e8 b9 ee ff ff       	call   c0101ecb <running_thread>
c0103012:	89 43 28             	mov    DWORD PTR [ebx+0x28],eax
c0103015:	c7 04 24 02 00 00 00 	mov    DWORD PTR [esp],0x2
c010301c:	e8 55 f1 ff ff       	call   c0102176 <thread_block>
c0103021:	89 1c 24             	mov    DWORD PTR [esp],ebx
c0103024:	e8 65 ed ff ff       	call   c0101d8e <lock_release>
c0103029:	83 c4 10             	add    esp,0x10
c010302c:	8b 43 38             	mov    eax,DWORD PTR [ebx+0x38]
c010302f:	3b 43 34             	cmp    eax,DWORD PTR [ebx+0x34]
c0103032:	74 d0                	je     c0103004 <fifo_get+0x45>
c0103034:	8b 53 30             	mov    edx,DWORD PTR [ebx+0x30]
c0103037:	40                   	inc    eax
c0103038:	89 43 38             	mov    DWORD PTR [ebx+0x38],eax
c010303b:	8b 43 3c             	mov    eax,DWORD PTR [ebx+0x3c]
c010303e:	83 fa 10             	cmp    edx,0x10
c0103041:	74 1f                	je     c0103062 <fifo_get+0xa3>
c0103043:	7f 07                	jg     c010304c <fifo_get+0x8d>
c0103045:	83 fa 08             	cmp    edx,0x8
c0103048:	75 3e                	jne    c0103088 <fifo_get+0xc9>
c010304a:	eb 0c                	jmp    c0103058 <fifo_get+0x99>
c010304c:	83 fa 20             	cmp    edx,0x20
c010304f:	74 1d                	je     c010306e <fifo_get+0xaf>
c0103051:	83 fa 40             	cmp    edx,0x40
c0103054:	75 32                	jne    c0103088 <fifo_get+0xc9>
c0103056:	eb 20                	jmp    c0103078 <fifo_get+0xb9>
c0103058:	8b 53 2c             	mov    edx,DWORD PTR [ebx+0x2c]
c010305b:	8a 04 02             	mov    al,BYTE PTR [edx+eax*1]
c010305e:	88 06                	mov    BYTE PTR [esi],al
c0103060:	eb 26                	jmp    c0103088 <fifo_get+0xc9>
c0103062:	8b 53 2c             	mov    edx,DWORD PTR [ebx+0x2c]
c0103065:	66 8b 04 42          	mov    ax,WORD PTR [edx+eax*2]
c0103069:	66 89 06             	mov    WORD PTR [esi],ax
c010306c:	eb 1a                	jmp    c0103088 <fifo_get+0xc9>
c010306e:	8b 53 2c             	mov    edx,DWORD PTR [ebx+0x2c]
c0103071:	8b 04 82             	mov    eax,DWORD PTR [edx+eax*4]
c0103074:	89 06                	mov    DWORD PTR [esi],eax
c0103076:	eb 10                	jmp    c0103088 <fifo_get+0xc9>
c0103078:	8b 53 2c             	mov    edx,DWORD PTR [ebx+0x2c]
c010307b:	8d 14 c2             	lea    edx,[edx+eax*8]
c010307e:	8b 02                	mov    eax,DWORD PTR [edx]
c0103080:	8b 52 04             	mov    edx,DWORD PTR [edx+0x4]
c0103083:	89 06                	mov    DWORD PTR [esi],eax
c0103085:	89 56 04             	mov    DWORD PTR [esi+0x4],edx
c0103088:	8b 43 3c             	mov    eax,DWORD PTR [ebx+0x3c]
c010308b:	40                   	inc    eax
c010308c:	99                   	cdq    
c010308d:	f7 7b 34             	idiv   DWORD PTR [ebx+0x34]
c0103090:	8b 43 24             	mov    eax,DWORD PTR [ebx+0x24]
c0103093:	85 c0                	test   eax,eax
c0103095:	89 53 3c             	mov    DWORD PTR [ebx+0x3c],edx
c0103098:	74 13                	je     c01030ad <fifo_get+0xee>
c010309a:	83 ec 0c             	sub    esp,0xc
c010309d:	50                   	push   eax
c010309e:	e8 1e f1 ff ff       	call   c01021c1 <thread_unblock>
c01030a3:	83 c4 10             	add    esp,0x10
c01030a6:	c7 43 24 00 00 00 00 	mov    DWORD PTR [ebx+0x24],0x0
c01030ad:	83 ec 0c             	sub    esp,0xc
c01030b0:	57                   	push   edi
c01030b1:	e8 76 df ff ff       	call   c010102c <intr_set_status>
c01030b6:	8d 65 f4             	lea    esp,[ebp-0xc]
c01030b9:	31 c0                	xor    eax,eax
c01030bb:	5b                   	pop    ebx
c01030bc:	5e                   	pop    esi
c01030bd:	5f                   	pop    edi
c01030be:	5d                   	pop    ebp
c01030bf:	c3                   	ret    

c01030c0 <fifo_empty>:
c01030c0:	55                   	push   ebp
c01030c1:	89 e5                	mov    ebp,esp
c01030c3:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01030c6:	5d                   	pop    ebp
c01030c7:	8b 50 34             	mov    edx,DWORD PTR [eax+0x34]
c01030ca:	39 50 38             	cmp    DWORD PTR [eax+0x38],edx
c01030cd:	0f 94 c0             	sete   al
c01030d0:	0f b6 c0             	movzx  eax,al
c01030d3:	c3                   	ret    

c01030d4 <fifo_fill>:
c01030d4:	55                   	push   ebp
c01030d5:	89 e5                	mov    ebp,esp
c01030d7:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01030da:	5d                   	pop    ebp
c01030db:	83 78 38 00          	cmp    DWORD PTR [eax+0x38],0x0
c01030df:	0f 94 c0             	sete   al
c01030e2:	0f b6 c0             	movzx  eax,al
c01030e5:	c3                   	ret    
	...

c01030e8 <list_init>:
c01030e8:	55                   	push   ebp
c01030e9:	89 e5                	mov    ebp,esp
c01030eb:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01030ee:	8d 50 0c             	lea    edx,[eax+0xc]
c01030f1:	c7 00 00 00 00 00    	mov    DWORD PTR [eax],0x0
c01030f7:	89 50 08             	mov    DWORD PTR [eax+0x8],edx
c01030fa:	89 40 0c             	mov    DWORD PTR [eax+0xc],eax
c01030fd:	c7 40 14 00 00 00 00 	mov    DWORD PTR [eax+0x14],0x0
c0103104:	5d                   	pop    ebp
c0103105:	c3                   	ret    

c0103106 <list_in>:
c0103106:	55                   	push   ebp
c0103107:	89 e5                	mov    ebp,esp
c0103109:	56                   	push   esi
c010310a:	8b 75 08             	mov    esi,DWORD PTR [ebp+0x8]
c010310d:	53                   	push   ebx
c010310e:	8b 5d 0c             	mov    ebx,DWORD PTR [ebp+0xc]
c0103111:	e8 a6 dd ff ff       	call   c0100ebc <intr_disable>
c0103116:	8b 13                	mov    edx,DWORD PTR [ebx]
c0103118:	89 72 08             	mov    DWORD PTR [edx+0x8],esi
c010311b:	8b 13                	mov    edx,DWORD PTR [ebx]
c010311d:	89 5e 08             	mov    DWORD PTR [esi+0x8],ebx
c0103120:	89 16                	mov    DWORD PTR [esi],edx
c0103122:	89 33                	mov    DWORD PTR [ebx],esi
c0103124:	89 45 08             	mov    DWORD PTR [ebp+0x8],eax
c0103127:	5b                   	pop    ebx
c0103128:	5e                   	pop    esi
c0103129:	5d                   	pop    ebp
c010312a:	e9 fd de ff ff       	jmp    c010102c <intr_set_status>

c010312f <list_push>:
c010312f:	55                   	push   ebp
c0103130:	89 e5                	mov    ebp,esp
c0103132:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c0103135:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c0103138:	8b 52 08             	mov    edx,DWORD PTR [edx+0x8]
c010313b:	89 45 08             	mov    DWORD PTR [ebp+0x8],eax
c010313e:	89 55 0c             	mov    DWORD PTR [ebp+0xc],edx
c0103141:	5d                   	pop    ebp
c0103142:	e9 bf ff ff ff       	jmp    c0103106 <list_in>

c0103147 <list_append>:
c0103147:	55                   	push   ebp
c0103148:	89 e5                	mov    ebp,esp
c010314a:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c010314d:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c0103150:	83 c2 0c             	add    edx,0xc
c0103153:	89 55 0c             	mov    DWORD PTR [ebp+0xc],edx
c0103156:	89 45 08             	mov    DWORD PTR [ebp+0x8],eax
c0103159:	5d                   	pop    ebp
c010315a:	e9 a7 ff ff ff       	jmp    c0103106 <list_in>

c010315f <list_remove>:
c010315f:	55                   	push   ebp
c0103160:	89 e5                	mov    ebp,esp
c0103162:	53                   	push   ebx
c0103163:	50                   	push   eax
c0103164:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c0103167:	e8 50 dd ff ff       	call   c0100ebc <intr_disable>
c010316c:	8b 13                	mov    edx,DWORD PTR [ebx]
c010316e:	8b 4b 08             	mov    ecx,DWORD PTR [ebx+0x8]
c0103171:	89 4a 08             	mov    DWORD PTR [edx+0x8],ecx
c0103174:	8b 53 08             	mov    edx,DWORD PTR [ebx+0x8]
c0103177:	8b 0b                	mov    ecx,DWORD PTR [ebx]
c0103179:	89 0a                	mov    DWORD PTR [edx],ecx
c010317b:	89 45 08             	mov    DWORD PTR [ebp+0x8],eax
c010317e:	5a                   	pop    edx
c010317f:	5b                   	pop    ebx
c0103180:	5d                   	pop    ebp
c0103181:	e9 a6 de ff ff       	jmp    c010102c <intr_set_status>

c0103186 <list_pop>:
c0103186:	55                   	push   ebp
c0103187:	89 e5                	mov    ebp,esp
c0103189:	53                   	push   ebx
c010318a:	83 ec 10             	sub    esp,0x10
c010318d:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0103190:	8b 58 08             	mov    ebx,DWORD PTR [eax+0x8]
c0103193:	53                   	push   ebx
c0103194:	e8 c6 ff ff ff       	call   c010315f <list_remove>
c0103199:	89 d8                	mov    eax,ebx
c010319b:	8b 5d fc             	mov    ebx,DWORD PTR [ebp-0x4]
c010319e:	c9                   	leave  
c010319f:	c3                   	ret    

c01031a0 <list_find>:
c01031a0:	55                   	push   ebp
c01031a1:	89 e5                	mov    ebp,esp
c01031a3:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c01031a6:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
c01031a9:	8b 42 08             	mov    eax,DWORD PTR [edx+0x8]
c01031ac:	83 c2 0c             	add    edx,0xc
c01031af:	eb 07                	jmp    c01031b8 <list_find+0x18>
c01031b1:	39 c8                	cmp    eax,ecx
c01031b3:	74 0b                	je     c01031c0 <list_find+0x20>
c01031b5:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
c01031b8:	39 d0                	cmp    eax,edx
c01031ba:	75 f5                	jne    c01031b1 <list_find+0x11>
c01031bc:	31 c0                	xor    eax,eax
c01031be:	eb 05                	jmp    c01031c5 <list_find+0x25>
c01031c0:	b8 01 00 00 00       	mov    eax,0x1
c01031c5:	5d                   	pop    ebp
c01031c6:	c3                   	ret    

c01031c7 <list_traversal>:
c01031c7:	55                   	push   ebp
c01031c8:	89 e5                	mov    ebp,esp
c01031ca:	57                   	push   edi
c01031cb:	56                   	push   esi
c01031cc:	53                   	push   ebx
c01031cd:	83 ec 0c             	sub    esp,0xc
c01031d0:	8b 75 08             	mov    esi,DWORD PTR [ebp+0x8]
c01031d3:	8b 7d 10             	mov    edi,DWORD PTR [ebp+0x10]
c01031d6:	8b 5e 08             	mov    ebx,DWORD PTR [esi+0x8]
c01031d9:	83 c6 0c             	add    esi,0xc
c01031dc:	eb 11                	jmp    c01031ef <list_traversal+0x28>
c01031de:	51                   	push   ecx
c01031df:	51                   	push   ecx
c01031e0:	57                   	push   edi
c01031e1:	53                   	push   ebx
c01031e2:	ff 55 0c             	call   DWORD PTR [ebp+0xc]
c01031e5:	83 c4 10             	add    esp,0x10
c01031e8:	85 c0                	test   eax,eax
c01031ea:	75 09                	jne    c01031f5 <list_traversal+0x2e>
c01031ec:	8b 5b 08             	mov    ebx,DWORD PTR [ebx+0x8]
c01031ef:	39 f3                	cmp    ebx,esi
c01031f1:	75 eb                	jne    c01031de <list_traversal+0x17>
c01031f3:	31 db                	xor    ebx,ebx
c01031f5:	8d 65 f4             	lea    esp,[ebp-0xc]
c01031f8:	89 d8                	mov    eax,ebx
c01031fa:	5b                   	pop    ebx
c01031fb:	5e                   	pop    esi
c01031fc:	5f                   	pop    edi
c01031fd:	5d                   	pop    ebp
c01031fe:	c3                   	ret    

c01031ff <list_len>:
c01031ff:	55                   	push   ebp
c0103200:	31 c0                	xor    eax,eax
c0103202:	89 e5                	mov    ebp,esp
c0103204:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
c0103207:	8b 51 08             	mov    edx,DWORD PTR [ecx+0x8]
c010320a:	83 c1 0c             	add    ecx,0xc
c010320d:	eb 04                	jmp    c0103213 <list_len+0x14>
c010320f:	8b 52 08             	mov    edx,DWORD PTR [edx+0x8]
c0103212:	40                   	inc    eax
c0103213:	39 ca                	cmp    edx,ecx
c0103215:	75 f8                	jne    c010320f <list_len+0x10>
c0103217:	5d                   	pop    ebp
c0103218:	c3                   	ret    

c0103219 <list_empty>:
c0103219:	55                   	push   ebp
c010321a:	89 e5                	mov    ebp,esp
c010321c:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c010321f:	5d                   	pop    ebp
c0103220:	8d 50 0c             	lea    edx,[eax+0xc]
c0103223:	39 50 08             	cmp    DWORD PTR [eax+0x8],edx
c0103226:	0f 94 c0             	sete   al
c0103229:	0f b6 c0             	movzx  eax,al
c010322c:	c3                   	ret    
c010322d:	00 00                	add    BYTE PTR [eax],al
	...

c0103230 <itoa>:
c0103230:	55                   	push   ebp
c0103231:	89 e5                	mov    ebp,esp
c0103233:	57                   	push   edi
c0103234:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
c0103237:	56                   	push   esi
c0103238:	8b 75 08             	mov    esi,DWORD PTR [ebp+0x8]
c010323b:	53                   	push   ebx
c010323c:	8b 7d 10             	mov    edi,DWORD PTR [ebp+0x10]
c010323f:	31 db                	xor    ebx,ebx
c0103241:	89 f0                	mov    eax,esi
c0103243:	99                   	cdq    
c0103244:	89 d0                	mov    eax,edx
c0103246:	31 f0                	xor    eax,esi
c0103248:	29 d0                	sub    eax,edx
c010324a:	eb 02                	jmp    c010324e <itoa+0x1e>
c010324c:	89 d3                	mov    ebx,edx
c010324e:	99                   	cdq    
c010324f:	f7 ff                	idiv   edi
c0103251:	8a 92 a4 84 10 c0    	mov    dl,BYTE PTR [edx-0x3fef7b5c]
c0103257:	85 c0                	test   eax,eax
c0103259:	88 14 19             	mov    BYTE PTR [ecx+ebx*1],dl
c010325c:	8d 53 01             	lea    edx,[ebx+0x1]
c010325f:	7f eb                	jg     c010324c <itoa+0x1c>
c0103261:	85 f6                	test   esi,esi
c0103263:	79 07                	jns    c010326c <itoa+0x3c>
c0103265:	c6 04 11 2d          	mov    BYTE PTR [ecx+edx*1],0x2d
c0103269:	8d 53 02             	lea    edx,[ebx+0x2]
c010326c:	c6 04 11 00          	mov    BYTE PTR [ecx+edx*1],0x0
c0103270:	89 c8                	mov    eax,ecx
c0103272:	eb 01                	jmp    c0103275 <itoa+0x45>
c0103274:	40                   	inc    eax
c0103275:	80 38 00             	cmp    BYTE PTR [eax],0x0
c0103278:	75 fa                	jne    c0103274 <itoa+0x44>
c010327a:	eb 09                	jmp    c0103285 <itoa+0x55>
c010327c:	8a 11                	mov    dl,BYTE PTR [ecx]
c010327e:	8a 18                	mov    bl,BYTE PTR [eax]
c0103280:	88 19                	mov    BYTE PTR [ecx],bl
c0103282:	41                   	inc    ecx
c0103283:	88 10                	mov    BYTE PTR [eax],dl
c0103285:	48                   	dec    eax
c0103286:	39 c8                	cmp    eax,ecx
c0103288:	77 f2                	ja     c010327c <itoa+0x4c>
c010328a:	5b                   	pop    ebx
c010328b:	5e                   	pop    esi
c010328c:	5f                   	pop    edi
c010328d:	5d                   	pop    ebp
c010328e:	c3                   	ret    

c010328f <utoa>:
c010328f:	55                   	push   ebp
c0103290:	89 e5                	mov    ebp,esp
c0103292:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0103295:	56                   	push   esi
c0103296:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
c0103299:	8b 75 10             	mov    esi,DWORD PTR [ebp+0x10]
c010329c:	53                   	push   ebx
c010329d:	31 db                	xor    ebx,ebx
c010329f:	31 d2                	xor    edx,edx
c01032a1:	f7 f6                	div    esi
c01032a3:	8a 92 cc 84 10 c0    	mov    dl,BYTE PTR [edx-0x3fef7b34]
c01032a9:	88 14 19             	mov    BYTE PTR [ecx+ebx*1],dl
c01032ac:	43                   	inc    ebx
c01032ad:	85 c0                	test   eax,eax
c01032af:	75 ee                	jne    c010329f <utoa+0x10>
c01032b1:	c6 04 19 00          	mov    BYTE PTR [ecx+ebx*1],0x0
c01032b5:	89 c8                	mov    eax,ecx
c01032b7:	eb 01                	jmp    c01032ba <utoa+0x2b>
c01032b9:	40                   	inc    eax
c01032ba:	80 38 00             	cmp    BYTE PTR [eax],0x0
c01032bd:	75 fa                	jne    c01032b9 <utoa+0x2a>
c01032bf:	eb 09                	jmp    c01032ca <utoa+0x3b>
c01032c1:	8a 11                	mov    dl,BYTE PTR [ecx]
c01032c3:	8a 18                	mov    bl,BYTE PTR [eax]
c01032c5:	88 19                	mov    BYTE PTR [ecx],bl
c01032c7:	41                   	inc    ecx
c01032c8:	88 10                	mov    BYTE PTR [eax],dl
c01032ca:	48                   	dec    eax
c01032cb:	39 c8                	cmp    eax,ecx
c01032cd:	77 f2                	ja     c01032c1 <utoa+0x32>
c01032cf:	5b                   	pop    ebx
c01032d0:	5e                   	pop    esi
c01032d1:	5d                   	pop    ebp
c01032d2:	c3                   	ret    

c01032d3 <roll_screen>:
c01032d3:	55                   	push   ebp
c01032d4:	89 e5                	mov    ebp,esp
c01032d6:	53                   	push   ebx
c01032d7:	83 3d 14 7c 00 c0 00 	cmp    DWORD PTR ds:0xc0007c14,0x0
c01032de:	75 2c                	jne    c010330c <roll_screen+0x39>
c01032e0:	a1 24 7c 00 c0       	mov    eax,ds:0xc0007c24
c01032e5:	8b 0d 1c 7c 00 c0    	mov    ecx,DWORD PTR ds:0xc0007c1c
c01032eb:	8d 1c 41             	lea    ebx,[ecx+eax*2]
c01032ee:	31 c0                	xor    eax,eax
c01032f0:	eb 09                	jmp    c01032fb <roll_screen+0x28>
c01032f2:	66 8b 14 43          	mov    dx,WORD PTR [ebx+eax*2]
c01032f6:	66 89 14 41          	mov    WORD PTR [ecx+eax*2],dx
c01032fa:	40                   	inc    eax
c01032fb:	8b 15 28 7c 00 c0    	mov    edx,DWORD PTR ds:0xc0007c28
c0103301:	0f af 15 24 7c 00 c0 	imul   edx,DWORD PTR ds:0xc0007c24
c0103308:	39 d0                	cmp    eax,edx
c010330a:	72 e6                	jb     c01032f2 <roll_screen+0x1f>
c010330c:	5b                   	pop    ebx
c010330d:	5d                   	pop    ebp
c010330e:	c3                   	ret    

c010330f <get_cursor>:
c010330f:	55                   	push   ebp
c0103310:	ba d4 03 00 00       	mov    edx,0x3d4
c0103315:	89 e5                	mov    ebp,esp
c0103317:	b8 0e 00 00 00       	mov    eax,0xe
c010331c:	53                   	push   ebx
c010331d:	ee                   	out    dx,al
c010331e:	bb d5 03 00 00       	mov    ebx,0x3d5
c0103323:	89 da                	mov    edx,ebx
c0103325:	ec                   	in     al,dx
c0103326:	89 c1                	mov    ecx,eax
c0103328:	b2 d4                	mov    dl,0xd4
c010332a:	b8 0f 00 00 00       	mov    eax,0xf
c010332f:	ee                   	out    dx,al
c0103330:	89 da                	mov    edx,ebx
c0103332:	ec                   	in     al,dx
c0103333:	c1 e1 08             	shl    ecx,0x8
c0103336:	09 c1                	or     ecx,eax
c0103338:	89 c8                	mov    eax,ecx
c010333a:	5b                   	pop    ebx
c010333b:	5d                   	pop    ebp
c010333c:	c3                   	ret    

c010333d <set_cursor>:
c010333d:	55                   	push   ebp
c010333e:	ba d4 03 00 00       	mov    edx,0x3d4
c0103343:	89 e5                	mov    ebp,esp
c0103345:	b8 0e 00 00 00       	mov    eax,0xe
c010334a:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
c010334d:	ee                   	out    dx,al
c010334e:	0f b6 c5             	movzx  eax,ch
c0103351:	b2 d5                	mov    dl,0xd5
c0103353:	ee                   	out    dx,al
c0103354:	b8 0f 00 00 00       	mov    eax,0xf
c0103359:	b2 d4                	mov    dl,0xd4
c010335b:	ee                   	out    dx,al
c010335c:	0f b6 c1             	movzx  eax,cl
c010335f:	b2 d5                	mov    dl,0xd5
c0103361:	ee                   	out    dx,al
c0103362:	5d                   	pop    ebp
c0103363:	c3                   	ret    

c0103364 <put_char>:
c0103364:	55                   	push   ebp
c0103365:	89 e5                	mov    ebp,esp
c0103367:	53                   	push   ebx
c0103368:	51                   	push   ecx
c0103369:	8a 4d 08             	mov    cl,BYTE PTR [ebp+0x8]
c010336c:	83 3d 14 7c 00 c0 00 	cmp    DWORD PTR ds:0xc0007c14,0x0
c0103373:	8a 5d 0c             	mov    bl,BYTE PTR [ebp+0xc]
c0103376:	0f 85 85 00 00 00    	jne    c0103401 <put_char+0x9d>
c010337c:	88 4d f8             	mov    BYTE PTR [ebp-0x8],cl
c010337f:	e8 8b ff ff ff       	call   c010330f <get_cursor>
c0103384:	80 fb 0d             	cmp    bl,0xd
c0103387:	8a 4d f8             	mov    cl,BYTE PTR [ebp-0x8]
c010338a:	77 31                	ja     c01033bd <put_char+0x59>
c010338c:	0f b6 d3             	movzx  edx,bl
c010338f:	ff 24 95 4c 84 10 c0 	jmp    DWORD PTR [edx*4-0x3fef7bb4]
c0103396:	8d 48 ff             	lea    ecx,[eax-0x1]
c0103399:	a1 1c 7c 00 c0       	mov    eax,ds:0xc0007c1c
c010339e:	c6 04 48 20          	mov    BYTE PTR [eax+ecx*2],0x20
c01033a2:	eb 2f                	jmp    c01033d3 <put_char+0x6f>
c01033a4:	8b 1d 24 7c 00 c0    	mov    ebx,DWORD PTR ds:0xc0007c24
c01033aa:	31 d2                	xor    edx,edx
c01033ac:	8d 0c 18             	lea    ecx,[eax+ebx*1]
c01033af:	f7 f3                	div    ebx
c01033b1:	29 d1                	sub    ecx,edx
c01033b3:	eb 1e                	jmp    c01033d3 <put_char+0x6f>
c01033b5:	8d 48 04             	lea    ecx,[eax+0x4]
c01033b8:	83 e1 fc             	and    ecx,0xfffffffc
c01033bb:	eb 16                	jmp    c01033d3 <put_char+0x6f>
c01033bd:	8b 15 1c 7c 00 c0    	mov    edx,DWORD PTR ds:0xc0007c1c
c01033c3:	88 1c 42             	mov    BYTE PTR [edx+eax*2],bl
c01033c6:	8b 15 1c 7c 00 c0    	mov    edx,DWORD PTR ds:0xc0007c1c
c01033cc:	88 4c 42 01          	mov    BYTE PTR [edx+eax*2+0x1],cl
c01033d0:	8d 48 01             	lea    ecx,[eax+0x1]
c01033d3:	a1 28 7c 00 c0       	mov    eax,ds:0xc0007c28
c01033d8:	0f af 05 24 7c 00 c0 	imul   eax,DWORD PTR ds:0xc0007c24
c01033df:	39 c1                	cmp    ecx,eax
c01033e1:	72 13                	jb     c01033f6 <put_char+0x92>
c01033e3:	e8 eb fe ff ff       	call   c01032d3 <roll_screen>
c01033e8:	8b 0d 28 7c 00 c0    	mov    ecx,DWORD PTR ds:0xc0007c28
c01033ee:	49                   	dec    ecx
c01033ef:	0f af 0d 24 7c 00 c0 	imul   ecx,DWORD PTR ds:0xc0007c24
c01033f6:	89 4d 08             	mov    DWORD PTR [ebp+0x8],ecx
c01033f9:	5a                   	pop    edx
c01033fa:	5b                   	pop    ebx
c01033fb:	5d                   	pop    ebp
c01033fc:	e9 3c ff ff ff       	jmp    c010333d <set_cursor>
c0103401:	58                   	pop    eax
c0103402:	5b                   	pop    ebx
c0103403:	5d                   	pop    ebp
c0103404:	c3                   	ret    

c0103405 <put_str>:
c0103405:	55                   	push   ebp
c0103406:	89 e5                	mov    ebp,esp
c0103408:	56                   	push   esi
c0103409:	0f b6 75 08          	movzx  esi,BYTE PTR [ebp+0x8]
c010340d:	53                   	push   ebx
c010340e:	8b 5d 0c             	mov    ebx,DWORD PTR [ebp+0xc]
c0103411:	eb 0d                	jmp    c0103420 <put_str+0x1b>
c0103413:	0f b6 c0             	movzx  eax,al
c0103416:	43                   	inc    ebx
c0103417:	50                   	push   eax
c0103418:	56                   	push   esi
c0103419:	e8 46 ff ff ff       	call   c0103364 <put_char>
c010341e:	58                   	pop    eax
c010341f:	5a                   	pop    edx
c0103420:	8a 03                	mov    al,BYTE PTR [ebx]
c0103422:	84 c0                	test   al,al
c0103424:	75 ed                	jne    c0103413 <put_str+0xe>
c0103426:	8d 65 f8             	lea    esp,[ebp-0x8]
c0103429:	5b                   	pop    ebx
c010342a:	5e                   	pop    esi
c010342b:	5d                   	pop    ebp
c010342c:	c3                   	ret    

c010342d <put_uint>:
c010342d:	55                   	push   ebp
c010342e:	31 c0                	xor    eax,eax
c0103430:	89 e5                	mov    ebp,esp
c0103432:	b9 42 00 00 00       	mov    ecx,0x42
c0103437:	57                   	push   edi
c0103438:	53                   	push   ebx
c0103439:	8d 7d b6             	lea    edi,[ebp-0x4a]
c010343c:	83 ec 50             	sub    esp,0x50
c010343f:	8a 5d 08             	mov    bl,BYTE PTR [ebp+0x8]
c0103442:	f3 aa                	rep stos BYTE PTR es:[edi],al
c0103444:	8d 7d b6             	lea    edi,[ebp-0x4a]
c0103447:	ff 75 10             	push   DWORD PTR [ebp+0x10]
c010344a:	0f b6 db             	movzx  ebx,bl
c010344d:	57                   	push   edi
c010344e:	ff 75 0c             	push   DWORD PTR [ebp+0xc]
c0103451:	e8 39 fe ff ff       	call   c010328f <utoa>
c0103456:	57                   	push   edi
c0103457:	53                   	push   ebx
c0103458:	e8 a8 ff ff ff       	call   c0103405 <put_str>
c010345d:	83 c4 14             	add    esp,0x14
c0103460:	8d 65 f8             	lea    esp,[ebp-0x8]
c0103463:	5b                   	pop    ebx
c0103464:	5f                   	pop    edi
c0103465:	5d                   	pop    ebp
c0103466:	c3                   	ret    

c0103467 <put_int>:
c0103467:	55                   	push   ebp
c0103468:	31 c0                	xor    eax,eax
c010346a:	89 e5                	mov    ebp,esp
c010346c:	b9 42 00 00 00       	mov    ecx,0x42
c0103471:	57                   	push   edi
c0103472:	53                   	push   ebx
c0103473:	8d 7d b6             	lea    edi,[ebp-0x4a]
c0103476:	83 ec 50             	sub    esp,0x50
c0103479:	8a 5d 08             	mov    bl,BYTE PTR [ebp+0x8]
c010347c:	f3 aa                	rep stos BYTE PTR es:[edi],al
c010347e:	8d 7d b6             	lea    edi,[ebp-0x4a]
c0103481:	ff 75 10             	push   DWORD PTR [ebp+0x10]
c0103484:	0f b6 db             	movzx  ebx,bl
c0103487:	57                   	push   edi
c0103488:	ff 75 0c             	push   DWORD PTR [ebp+0xc]
c010348b:	e8 a0 fd ff ff       	call   c0103230 <itoa>
c0103490:	57                   	push   edi
c0103491:	53                   	push   ebx
c0103492:	e8 6e ff ff ff       	call   c0103405 <put_str>
c0103497:	83 c4 14             	add    esp,0x14
c010349a:	8d 65 f8             	lea    esp,[ebp-0x8]
c010349d:	5b                   	pop    ebx
c010349e:	5f                   	pop    edi
c010349f:	5d                   	pop    ebp
c01034a0:	c3                   	ret    
c01034a1:	00 00                	add    BYTE PTR [eax],al
	...

c01034a4 <memset>:
c01034a4:	55                   	push   ebp
c01034a5:	89 e5                	mov    ebp,esp
c01034a7:	56                   	push   esi
c01034a8:	53                   	push   ebx
c01034a9:	83 ec 10             	sub    esp,0x10
c01034ac:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c01034af:	8b 75 10             	mov    esi,DWORD PTR [ebp+0x10]
c01034b2:	8a 55 0c             	mov    dl,BYTE PTR [ebp+0xc]
c01034b5:	85 db                	test   ebx,ebx
c01034b7:	75 1f                	jne    c01034d8 <memset+0x34>
c01034b9:	68 f4 84 10 c0       	push   0xc01084f4
c01034be:	68 6c 85 10 c0       	push   0xc010856c
c01034c3:	6a 0f                	push   0xf
c01034c5:	68 02 85 10 c0       	push   0xc0108502
c01034ca:	88 55 f4             	mov    BYTE PTR [ebp-0xc],dl
c01034cd:	e8 e2 cf ff ff       	call   c01004b4 <panic_spin>
c01034d2:	8a 55 f4             	mov    dl,BYTE PTR [ebp-0xc]
c01034d5:	83 c4 10             	add    esp,0x10
c01034d8:	31 c0                	xor    eax,eax
c01034da:	eb 04                	jmp    c01034e0 <memset+0x3c>
c01034dc:	88 14 03             	mov    BYTE PTR [ebx+eax*1],dl
c01034df:	40                   	inc    eax
c01034e0:	39 f0                	cmp    eax,esi
c01034e2:	75 f8                	jne    c01034dc <memset+0x38>
c01034e4:	8d 65 f8             	lea    esp,[ebp-0x8]
c01034e7:	5b                   	pop    ebx
c01034e8:	5e                   	pop    esi
c01034e9:	5d                   	pop    ebp
c01034ea:	c3                   	ret    

c01034eb <memcpy>:
c01034eb:	55                   	push   ebp
c01034ec:	89 e5                	mov    ebp,esp
c01034ee:	57                   	push   edi
c01034ef:	56                   	push   esi
c01034f0:	53                   	push   ebx
c01034f1:	83 ec 0c             	sub    esp,0xc
c01034f4:	8b 75 0c             	mov    esi,DWORD PTR [ebp+0xc]
c01034f7:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c01034fa:	8b 7d 10             	mov    edi,DWORD PTR [ebp+0x10]
c01034fd:	85 f6                	test   esi,esi
c01034ff:	74 04                	je     c0103505 <memcpy+0x1a>
c0103501:	85 db                	test   ebx,ebx
c0103503:	75 19                	jne    c010351e <memcpy+0x33>
c0103505:	68 10 85 10 c0       	push   0xc0108510
c010350a:	68 74 85 10 c0       	push   0xc0108574
c010350f:	6a 22                	push   0x22
c0103511:	68 02 85 10 c0       	push   0xc0108502
c0103516:	e8 99 cf ff ff       	call   c01004b4 <panic_spin>
c010351b:	83 c4 10             	add    esp,0x10
c010351e:	31 c0                	xor    eax,eax
c0103520:	eb 07                	jmp    c0103529 <memcpy+0x3e>
c0103522:	8a 14 06             	mov    dl,BYTE PTR [esi+eax*1]
c0103525:	88 14 03             	mov    BYTE PTR [ebx+eax*1],dl
c0103528:	40                   	inc    eax
c0103529:	39 f8                	cmp    eax,edi
c010352b:	75 f5                	jne    c0103522 <memcpy+0x37>
c010352d:	8d 65 f4             	lea    esp,[ebp-0xc]
c0103530:	5b                   	pop    ebx
c0103531:	5e                   	pop    esi
c0103532:	5f                   	pop    edi
c0103533:	5d                   	pop    ebp
c0103534:	c3                   	ret    

c0103535 <memcmp>:
c0103535:	55                   	push   ebp
c0103536:	89 e5                	mov    ebp,esp
c0103538:	56                   	push   esi
c0103539:	8b 75 08             	mov    esi,DWORD PTR [ebp+0x8]
c010353c:	53                   	push   ebx
c010353d:	8b 5d 0c             	mov    ebx,DWORD PTR [ebp+0xc]
c0103540:	85 db                	test   ebx,ebx
c0103542:	74 04                	je     c0103548 <memcmp+0x13>
c0103544:	85 f6                	test   esi,esi
c0103546:	75 19                	jne    c0103561 <memcmp+0x2c>
c0103548:	68 2f 85 10 c0       	push   0xc010852f
c010354d:	68 7c 85 10 c0       	push   0xc010857c
c0103552:	6a 3b                	push   0x3b
c0103554:	68 02 85 10 c0       	push   0xc0108502
c0103559:	e8 56 cf ff ff       	call   c01004b4 <panic_spin>
c010355e:	83 c4 10             	add    esp,0x10
c0103561:	8a 13                	mov    dl,BYTE PTR [ebx]
c0103563:	83 c8 ff             	or     eax,0xffffffff
c0103566:	38 16                	cmp    BYTE PTR [esi],dl
c0103568:	72 06                	jb     c0103570 <memcmp+0x3b>
c010356a:	0f 97 c0             	seta   al
c010356d:	0f b6 c0             	movzx  eax,al
c0103570:	8d 65 f8             	lea    esp,[ebp-0x8]
c0103573:	5b                   	pop    ebx
c0103574:	5e                   	pop    esi
c0103575:	5d                   	pop    ebp
c0103576:	c3                   	ret    

c0103577 <strcpy>:
c0103577:	55                   	push   ebp
c0103578:	31 d2                	xor    edx,edx
c010357a:	89 e5                	mov    ebp,esp
c010357c:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c010357f:	53                   	push   ebx
c0103580:	8b 5d 0c             	mov    ebx,DWORD PTR [ebp+0xc]
c0103583:	8a 0c 13             	mov    cl,BYTE PTR [ebx+edx*1]
c0103586:	88 0c 10             	mov    BYTE PTR [eax+edx*1],cl
c0103589:	42                   	inc    edx
c010358a:	84 c9                	test   cl,cl
c010358c:	75 f5                	jne    c0103583 <strcpy+0xc>
c010358e:	5b                   	pop    ebx
c010358f:	5d                   	pop    ebp
c0103590:	c3                   	ret    

c0103591 <strlen>:
c0103591:	55                   	push   ebp
c0103592:	31 c0                	xor    eax,eax
c0103594:	89 e5                	mov    ebp,esp
c0103596:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c0103599:	eb 01                	jmp    c010359c <strlen+0xb>
c010359b:	40                   	inc    eax
c010359c:	80 3c 02 00          	cmp    BYTE PTR [edx+eax*1],0x0
c01035a0:	75 f9                	jne    c010359b <strlen+0xa>
c01035a2:	5d                   	pop    ebp
c01035a3:	c3                   	ret    

c01035a4 <vsprintf>:
c01035a4:	55                   	push   ebp
c01035a5:	89 e5                	mov    ebp,esp
c01035a7:	57                   	push   edi
c01035a8:	56                   	push   esi
c01035a9:	53                   	push   ebx
c01035aa:	83 ec 5c             	sub    esp,0x5c
c01035ad:	8b 7d 0c             	mov    edi,DWORD PTR [ebp+0xc]
c01035b0:	8b 75 10             	mov    esi,DWORD PTR [ebp+0x10]
c01035b3:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c01035b6:	e9 9a 01 00 00       	jmp    c0103755 <vsprintf+0x1b1>
c01035bb:	3c 25                	cmp    al,0x25
c01035bd:	74 08                	je     c01035c7 <vsprintf+0x23>
c01035bf:	88 03                	mov    BYTE PTR [ebx],al
c01035c1:	43                   	inc    ebx
c01035c2:	e9 8d 01 00 00       	jmp    c0103754 <vsprintf+0x1b0>
c01035c7:	47                   	inc    edi
c01035c8:	ba 01 00 00 00       	mov    edx,0x1
c01035cd:	c6 45 c3 00          	mov    BYTE PTR [ebp-0x3d],0x0
c01035d1:	c7 45 b0 01 00 00 00 	mov    DWORD PTR [ebp-0x50],0x1
c01035d8:	c7 45 a8 00 00 00 00 	mov    DWORD PTR [ebp-0x58],0x0
c01035df:	8a 07                	mov    al,BYTE PTR [edi]
c01035e1:	3c 2b                	cmp    al,0x2b
c01035e3:	74 28                	je     c010360d <vsprintf+0x69>
c01035e5:	7f 0a                	jg     c01035f1 <vsprintf+0x4d>
c01035e7:	3c 20                	cmp    al,0x20
c01035e9:	74 27                	je     c0103612 <vsprintf+0x6e>
c01035eb:	3c 23                	cmp    al,0x23
c01035ed:	75 19                	jne    c0103608 <vsprintf+0x64>
c01035ef:	eb 21                	jmp    c0103612 <vsprintf+0x6e>
c01035f1:	3c 2d                	cmp    al,0x2d
c01035f3:	74 06                	je     c01035fb <vsprintf+0x57>
c01035f5:	3c 30                	cmp    al,0x30
c01035f7:	75 0f                	jne    c0103608 <vsprintf+0x64>
c01035f9:	eb 04                	jmp    c01035ff <vsprintf+0x5b>
c01035fb:	31 d2                	xor    edx,edx
c01035fd:	eb 13                	jmp    c0103612 <vsprintf+0x6e>
c01035ff:	c7 45 a8 01 00 00 00 	mov    DWORD PTR [ebp-0x58],0x1
c0103606:	eb 0a                	jmp    c0103612 <vsprintf+0x6e>
c0103608:	4f                   	dec    edi
c0103609:	31 c0                	xor    eax,eax
c010360b:	eb 0a                	jmp    c0103617 <vsprintf+0x73>
c010360d:	ba 01 00 00 00       	mov    edx,0x1
c0103612:	b8 01 00 00 00       	mov    eax,0x1
c0103617:	47                   	inc    edi
c0103618:	85 c0                	test   eax,eax
c010361a:	75 c3                	jne    c01035df <vsprintf+0x3b>
c010361c:	89 55 b0             	mov    DWORD PTR [ebp-0x50],edx
c010361f:	c7 45 ac 00 00 00 00 	mov    DWORD PTR [ebp-0x54],0x0
c0103626:	eb 0f                	jmp    c0103637 <vsprintf+0x93>
c0103628:	6b 55 ac 0a          	imul   edx,DWORD PTR [ebp-0x54],0xa
c010362c:	0f be c0             	movsx  eax,al
c010362f:	47                   	inc    edi
c0103630:	8d 44 02 d0          	lea    eax,[edx+eax*1-0x30]
c0103634:	89 45 ac             	mov    DWORD PTR [ebp-0x54],eax
c0103637:	8a 07                	mov    al,BYTE PTR [edi]
c0103639:	8d 50 d0             	lea    edx,[eax-0x30]
c010363c:	80 fa 09             	cmp    dl,0x9
c010363f:	76 e7                	jbe    c0103628 <vsprintf+0x84>
c0103641:	31 d2                	xor    edx,edx
c0103643:	83 7d ac 00          	cmp    DWORD PTR [ebp-0x54],0x0
c0103647:	0f 95 c2             	setne  dl
c010364a:	f7 da                	neg    edx
c010364c:	21 55 b0             	and    DWORD PTR [ebp-0x50],edx
c010364f:	3c 6f                	cmp    al,0x6f
c0103651:	74 3d                	je     c0103690 <vsprintf+0xec>
c0103653:	7f 12                	jg     c0103667 <vsprintf+0xc3>
c0103655:	3c 63                	cmp    al,0x63
c0103657:	74 22                	je     c010367b <vsprintf+0xd7>
c0103659:	3c 64                	cmp    al,0x64
c010365b:	74 28                	je     c0103685 <vsprintf+0xe1>
c010365d:	3c 25                	cmp    al,0x25
c010365f:	0f 85 8b 00 00 00    	jne    c01036f0 <vsprintf+0x14c>
c0103665:	eb 0e                	jmp    c0103675 <vsprintf+0xd1>
c0103667:	3c 73                	cmp    al,0x73
c0103669:	74 4e                	je     c01036b9 <vsprintf+0x115>
c010366b:	3c 78                	cmp    al,0x78
c010366d:	74 67                	je     c01036d6 <vsprintf+0x132>
c010366f:	3c 70                	cmp    al,0x70
c0103671:	75 7d                	jne    c01036f0 <vsprintf+0x14c>
c0103673:	eb 26                	jmp    c010369b <vsprintf+0xf7>
c0103675:	c6 03 25             	mov    BYTE PTR [ebx],0x25
c0103678:	43                   	inc    ebx
c0103679:	eb 75                	jmp    c01036f0 <vsprintf+0x14c>
c010367b:	8b 06                	mov    eax,DWORD PTR [esi]
c010367d:	83 c6 04             	add    esi,0x4
c0103680:	88 03                	mov    BYTE PTR [ebx],al
c0103682:	43                   	inc    ebx
c0103683:	eb 6b                	jmp    c01036f0 <vsprintf+0x14c>
c0103685:	8d 46 04             	lea    eax,[esi+0x4]
c0103688:	89 45 b4             	mov    DWORD PTR [ebp-0x4c],eax
c010368b:	50                   	push   eax
c010368c:	6a 0a                	push   0xa
c010368e:	eb 4f                	jmp    c01036df <vsprintf+0x13b>
c0103690:	8d 46 04             	lea    eax,[esi+0x4]
c0103693:	89 45 b4             	mov    DWORD PTR [ebp-0x4c],eax
c0103696:	50                   	push   eax
c0103697:	6a 08                	push   0x8
c0103699:	eb 44                	jmp    c01036df <vsprintf+0x13b>
c010369b:	8d 46 04             	lea    eax,[esi+0x4]
c010369e:	89 45 b4             	mov    DWORD PTR [ebp-0x4c],eax
c01036a1:	50                   	push   eax
c01036a2:	6a 10                	push   0x10
c01036a4:	8d 45 c5             	lea    eax,[ebp-0x3b]
c01036a7:	50                   	push   eax
c01036a8:	ff 36                	push   DWORD PTR [esi]
c01036aa:	c6 45 c3 30          	mov    BYTE PTR [ebp-0x3d],0x30
c01036ae:	c6 45 c4 78          	mov    BYTE PTR [ebp-0x3c],0x78
c01036b2:	e8 d8 fb ff ff       	call   c010328f <utoa>
c01036b7:	eb 31                	jmp    c01036ea <vsprintf+0x146>
c01036b9:	8d 46 04             	lea    eax,[esi+0x4]
c01036bc:	8b 36                	mov    esi,DWORD PTR [esi]
c01036be:	51                   	push   ecx
c01036bf:	51                   	push   ecx
c01036c0:	56                   	push   esi
c01036c1:	53                   	push   ebx
c01036c2:	89 45 b4             	mov    DWORD PTR [ebp-0x4c],eax
c01036c5:	e8 ad fe ff ff       	call   c0103577 <strcpy>
c01036ca:	89 34 24             	mov    DWORD PTR [esp],esi
c01036cd:	e8 bf fe ff ff       	call   c0103591 <strlen>
c01036d2:	01 c3                	add    ebx,eax
c01036d4:	eb 14                	jmp    c01036ea <vsprintf+0x146>
c01036d6:	8d 46 04             	lea    eax,[esi+0x4]
c01036d9:	52                   	push   edx
c01036da:	6a 10                	push   0x10
c01036dc:	89 45 b4             	mov    DWORD PTR [ebp-0x4c],eax
c01036df:	8d 45 c3             	lea    eax,[ebp-0x3d]
c01036e2:	50                   	push   eax
c01036e3:	ff 36                	push   DWORD PTR [esi]
c01036e5:	e8 46 fb ff ff       	call   c0103230 <itoa>
c01036ea:	8b 75 b4             	mov    esi,DWORD PTR [ebp-0x4c]
c01036ed:	83 c4 10             	add    esp,0x10
c01036f0:	83 ec 0c             	sub    esp,0xc
c01036f3:	8d 45 c3             	lea    eax,[ebp-0x3d]
c01036f6:	50                   	push   eax
c01036f7:	e8 95 fe ff ff       	call   c0103591 <strlen>
c01036fc:	8b 55 ac             	mov    edx,DWORD PTR [ebp-0x54]
c01036ff:	83 c4 10             	add    esp,0x10
c0103702:	8a 4d b0             	mov    cl,BYTE PTR [ebp-0x50]
c0103705:	29 c2                	sub    edx,eax
c0103707:	eb 10                	jmp    c0103719 <vsprintf+0x175>
c0103709:	83 7d a8 01          	cmp    DWORD PTR [ebp-0x58],0x1
c010370d:	19 c0                	sbb    eax,eax
c010370f:	4a                   	dec    edx
c0103710:	83 e0 f0             	and    eax,0xfffffff0
c0103713:	83 c0 30             	add    eax,0x30
c0103716:	88 03                	mov    BYTE PTR [ebx],al
c0103718:	43                   	inc    ebx
c0103719:	85 d2                	test   edx,edx
c010371b:	7e 04                	jle    c0103721 <vsprintf+0x17d>
c010371d:	84 c9                	test   cl,cl
c010371f:	75 e8                	jne    c0103709 <vsprintf+0x165>
c0103721:	50                   	push   eax
c0103722:	50                   	push   eax
c0103723:	8d 45 c3             	lea    eax,[ebp-0x3d]
c0103726:	50                   	push   eax
c0103727:	53                   	push   ebx
c0103728:	89 55 a4             	mov    DWORD PTR [ebp-0x5c],edx
c010372b:	e8 47 fe ff ff       	call   c0103577 <strcpy>
c0103730:	8d 45 c3             	lea    eax,[ebp-0x3d]
c0103733:	89 04 24             	mov    DWORD PTR [esp],eax
c0103736:	e8 56 fe ff ff       	call   c0103591 <strlen>
c010373b:	83 c4 10             	add    esp,0x10
c010373e:	8b 55 a4             	mov    edx,DWORD PTR [ebp-0x5c]
c0103741:	01 c3                	add    ebx,eax
c0103743:	eb 05                	jmp    c010374a <vsprintf+0x1a6>
c0103745:	c6 03 20             	mov    BYTE PTR [ebx],0x20
c0103748:	4a                   	dec    edx
c0103749:	43                   	inc    ebx
c010374a:	85 d2                	test   edx,edx
c010374c:	7e 06                	jle    c0103754 <vsprintf+0x1b0>
c010374e:	83 7d b0 00          	cmp    DWORD PTR [ebp-0x50],0x0
c0103752:	74 f1                	je     c0103745 <vsprintf+0x1a1>
c0103754:	47                   	inc    edi
c0103755:	8a 07                	mov    al,BYTE PTR [edi]
c0103757:	84 c0                	test   al,al
c0103759:	0f 85 5c fe ff ff    	jne    c01035bb <vsprintf+0x17>
c010375f:	c6 03 00             	mov    BYTE PTR [ebx],0x0
c0103762:	83 ec 0c             	sub    esp,0xc
c0103765:	ff 75 08             	push   DWORD PTR [ebp+0x8]
c0103768:	e8 24 fe ff ff       	call   c0103591 <strlen>
c010376d:	8d 65 f4             	lea    esp,[ebp-0xc]
c0103770:	5b                   	pop    ebx
c0103771:	5e                   	pop    esi
c0103772:	5f                   	pop    edi
c0103773:	5d                   	pop    ebp
c0103774:	c3                   	ret    

c0103775 <sprintf>:
c0103775:	55                   	push   ebp
c0103776:	89 e5                	mov    ebp,esp
c0103778:	83 ec 0c             	sub    esp,0xc
c010377b:	8d 45 10             	lea    eax,[ebp+0x10]
c010377e:	50                   	push   eax
c010377f:	ff 75 0c             	push   DWORD PTR [ebp+0xc]
c0103782:	ff 75 08             	push   DWORD PTR [ebp+0x8]
c0103785:	e8 1a fe ff ff       	call   c01035a4 <vsprintf>
c010378a:	c9                   	leave  
c010378b:	c3                   	ret    

c010378c <viewctl_init>:
c010378c:	55                   	push   ebp
c010378d:	89 e5                	mov    ebp,esp
c010378f:	57                   	push   edi
c0103790:	56                   	push   esi
c0103791:	53                   	push   ebx
c0103792:	83 ec 18             	sub    esp,0x18
c0103795:	8b 7d 0c             	mov    edi,DWORD PTR [ebp+0xc]
c0103798:	6a 40                	push   0x40
c010379a:	8b 75 10             	mov    esi,DWORD PTR [ebp+0x10]
c010379d:	e8 e5 d8 ff ff       	call   c0101087 <sys_malloc>
c01037a2:	83 c4 10             	add    esp,0x10
c01037a5:	85 c0                	test   eax,eax
c01037a7:	89 c3                	mov    ebx,eax
c01037a9:	74 65                	je     c0103810 <viewctl_init+0x84>
c01037ab:	8b 45 14             	mov    eax,DWORD PTR [ebp+0x14]
c01037ae:	83 ec 0c             	sub    esp,0xc
c01037b1:	c1 e0 02             	shl    eax,0x2
c01037b4:	50                   	push   eax
c01037b5:	e8 cd d8 ff ff       	call   c0101087 <sys_malloc>
c01037ba:	83 c4 10             	add    esp,0x10
c01037bd:	85 c0                	test   eax,eax
c01037bf:	89 03                	mov    DWORD PTR [ebx],eax
c01037c1:	74 3f                	je     c0103802 <viewctl_init+0x76>
c01037c3:	8b 45 14             	mov    eax,DWORD PTR [ebp+0x14]
c01037c6:	83 ec 0c             	sub    esp,0xc
c01037c9:	89 7b 10             	mov    DWORD PTR [ebx+0x10],edi
c01037cc:	c1 e7 02             	shl    edi,0x2
c01037cf:	0f af fe             	imul   edi,esi
c01037d2:	c7 43 08 00 00 00 00 	mov    DWORD PTR [ebx+0x8],0x0
c01037d9:	89 43 04             	mov    DWORD PTR [ebx+0x4],eax
c01037dc:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01037df:	89 73 14             	mov    DWORD PTR [ebx+0x14],esi
c01037e2:	89 43 0c             	mov    DWORD PTR [ebx+0xc],eax
c01037e5:	57                   	push   edi
c01037e6:	e8 9c d8 ff ff       	call   c0101087 <sys_malloc>
c01037eb:	89 43 18             	mov    DWORD PTR [ebx+0x18],eax
c01037ee:	8d 43 1c             	lea    eax,[ebx+0x1c]
c01037f1:	89 04 24             	mov    DWORD PTR [esp],eax
c01037f4:	e8 ae e3 ff ff       	call   c0101ba7 <lock_init>
c01037f9:	83 c4 10             	add    esp,0x10
c01037fc:	83 7b 18 00          	cmp    DWORD PTR [ebx+0x18],0x0
c0103800:	75 0e                	jne    c0103810 <viewctl_init+0x84>
c0103802:	83 ec 0c             	sub    esp,0xc
c0103805:	53                   	push   ebx
c0103806:	31 db                	xor    ebx,ebx
c0103808:	e8 92 da ff ff       	call   c010129f <sys_free>
c010380d:	83 c4 10             	add    esp,0x10
c0103810:	8d 65 f4             	lea    esp,[ebp-0xc]
c0103813:	89 d8                	mov    eax,ebx
c0103815:	5b                   	pop    ebx
c0103816:	5e                   	pop    esi
c0103817:	5f                   	pop    edi
c0103818:	5d                   	pop    ebp
c0103819:	c3                   	ret    

c010381a <viewblock_init>:
c010381a:	55                   	push   ebp
c010381b:	89 e5                	mov    ebp,esp
c010381d:	57                   	push   edi
c010381e:	56                   	push   esi
c010381f:	53                   	push   ebx
c0103820:	83 ec 18             	sub    esp,0x18
c0103823:	8b 7d 08             	mov    edi,DWORD PTR [ebp+0x8]
c0103826:	6a 1c                	push   0x1c
c0103828:	8b 75 0c             	mov    esi,DWORD PTR [ebp+0xc]
c010382b:	e8 57 d8 ff ff       	call   c0101087 <sys_malloc>
c0103830:	83 c4 10             	add    esp,0x10
c0103833:	85 c0                	test   eax,eax
c0103835:	89 c3                	mov    ebx,eax
c0103837:	74 3a                	je     c0103873 <viewblock_init+0x59>
c0103839:	8d 04 bd 00 00 00 00 	lea    eax,[edi*4+0x0]
c0103840:	83 ec 0c             	sub    esp,0xc
c0103843:	0f af c6             	imul   eax,esi
c0103846:	50                   	push   eax
c0103847:	e8 3b d8 ff ff       	call   c0101087 <sys_malloc>
c010384c:	83 c4 10             	add    esp,0x10
c010384f:	c7 03 00 00 00 00    	mov    DWORD PTR [ebx],0x0
c0103855:	c7 43 08 00 00 00 00 	mov    DWORD PTR [ebx+0x8],0x0
c010385c:	c7 43 0c 00 00 00 00 	mov    DWORD PTR [ebx+0xc],0x0
c0103863:	c7 43 10 00 00 00 00 	mov    DWORD PTR [ebx+0x10],0x0
c010386a:	89 7b 14             	mov    DWORD PTR [ebx+0x14],edi
c010386d:	89 43 04             	mov    DWORD PTR [ebx+0x4],eax
c0103870:	89 73 18             	mov    DWORD PTR [ebx+0x18],esi
c0103873:	8d 65 f4             	lea    esp,[ebp-0xc]
c0103876:	89 d8                	mov    eax,ebx
c0103878:	5b                   	pop    ebx
c0103879:	5e                   	pop    esi
c010387a:	5f                   	pop    edi
c010387b:	5d                   	pop    ebp
c010387c:	c3                   	ret    

c010387d <viewInsert>:
c010387d:	55                   	push   ebp
c010387e:	89 e5                	mov    ebp,esp
c0103880:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0103883:	53                   	push   ebx
c0103884:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
c0103887:	8b 48 08             	mov    ecx,DWORD PTR [eax+0x8]
c010388a:	39 48 04             	cmp    DWORD PTR [eax+0x4],ecx
c010388d:	7e 13                	jle    c01038a2 <viewInsert+0x25>
c010388f:	89 02                	mov    DWORD PTR [edx],eax
c0103891:	8b 58 08             	mov    ebx,DWORD PTR [eax+0x8]
c0103894:	8b 08                	mov    ecx,DWORD PTR [eax]
c0103896:	89 14 99             	mov    DWORD PTR [ecx+ebx*4],edx
c0103899:	8b 48 08             	mov    ecx,DWORD PTR [eax+0x8]
c010389c:	89 4a 08             	mov    DWORD PTR [edx+0x8],ecx
c010389f:	ff 40 08             	inc    DWORD PTR [eax+0x8]
c01038a2:	5b                   	pop    ebx
c01038a3:	5d                   	pop    ebp
c01038a4:	c3                   	ret    

c01038a5 <view_reflushsub>:
c01038a5:	55                   	push   ebp
c01038a6:	89 e5                	mov    ebp,esp
c01038a8:	57                   	push   edi
c01038a9:	56                   	push   esi
c01038aa:	53                   	push   ebx
c01038ab:	83 ec 34             	sub    esp,0x34
c01038ae:	8b 5d 0c             	mov    ebx,DWORD PTR [ebp+0xc]
c01038b1:	8b 4d 10             	mov    ecx,DWORD PTR [ebp+0x10]
c01038b4:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c01038b7:	8b 45 1c             	mov    eax,DWORD PTR [ebp+0x1c]
c01038ba:	89 de                	mov    esi,ebx
c01038bc:	f7 d6                	not    esi
c01038be:	c1 fe 1f             	sar    esi,0x1f
c01038c1:	21 de                	and    esi,ebx
c01038c3:	89 cb                	mov    ebx,ecx
c01038c5:	f7 d3                	not    ebx
c01038c7:	c1 fb 1f             	sar    ebx,0x1f
c01038ca:	21 cb                	and    ebx,ecx
c01038cc:	8b 4a 10             	mov    ecx,DWORD PTR [edx+0x10]
c01038cf:	89 5d d0             	mov    DWORD PTR [ebp-0x30],ebx
c01038d2:	8b 5d 14             	mov    ebx,DWORD PTR [ebp+0x14]
c01038d5:	89 75 d4             	mov    DWORD PTR [ebp-0x2c],esi
c01038d8:	39 cb                	cmp    ebx,ecx
c01038da:	89 5d d8             	mov    DWORD PTR [ebp-0x28],ebx
c01038dd:	7e 03                	jle    c01038e2 <view_reflushsub+0x3d>
c01038df:	89 4d d8             	mov    DWORD PTR [ebp-0x28],ecx
c01038e2:	8b 75 18             	mov    esi,DWORD PTR [ebp+0x18]
c01038e5:	8b 4a 14             	mov    ecx,DWORD PTR [edx+0x14]
c01038e8:	89 75 dc             	mov    DWORD PTR [ebp-0x24],esi
c01038eb:	39 ce                	cmp    esi,ecx
c01038ed:	7e 03                	jle    c01038f2 <view_reflushsub+0x4d>
c01038ef:	89 4d dc             	mov    DWORD PTR [ebp-0x24],ecx
c01038f2:	8d 3c 85 00 00 00 00 	lea    edi,[eax*4+0x0]
c01038f9:	89 7d f0             	mov    DWORD PTR [ebp-0x10],edi
c01038fc:	89 45 e4             	mov    DWORD PTR [ebp-0x1c],eax
c01038ff:	e9 ae 00 00 00       	jmp    c01039b2 <view_reflushsub+0x10d>
c0103904:	8b 4d f0             	mov    ecx,DWORD PTR [ebp-0x10]
c0103907:	8b 02                	mov    eax,DWORD PTR [edx]
c0103909:	8b 7d d8             	mov    edi,DWORD PTR [ebp-0x28]
c010390c:	8b 5d d0             	mov    ebx,DWORD PTR [ebp-0x30]
c010390f:	8b 04 08             	mov    eax,DWORD PTR [eax+ecx*1]
c0103912:	8b 4d d4             	mov    ecx,DWORD PTR [ebp-0x2c]
c0103915:	2b 78 0c             	sub    edi,DWORD PTR [eax+0xc]
c0103918:	8b 70 10             	mov    esi,DWORD PTR [eax+0x10]
c010391b:	2b 48 0c             	sub    ecx,DWORD PTR [eax+0xc]
c010391e:	89 7d ec             	mov    DWORD PTR [ebp-0x14],edi
c0103921:	8b 7d dc             	mov    edi,DWORD PTR [ebp-0x24]
c0103924:	29 f3                	sub    ebx,esi
c0103926:	29 f7                	sub    edi,esi
c0103928:	89 ce                	mov    esi,ecx
c010392a:	f7 d6                	not    esi
c010392c:	c1 fe 1f             	sar    esi,0x1f
c010392f:	21 ce                	and    esi,ecx
c0103931:	89 d9                	mov    ecx,ebx
c0103933:	f7 d1                	not    ecx
c0103935:	c1 f9 1f             	sar    ecx,0x1f
c0103938:	21 d9                	and    ecx,ebx
c010393a:	8b 58 14             	mov    ebx,DWORD PTR [eax+0x14]
c010393d:	39 5d ec             	cmp    DWORD PTR [ebp-0x14],ebx
c0103940:	89 7d e8             	mov    DWORD PTR [ebp-0x18],edi
c0103943:	89 75 e0             	mov    DWORD PTR [ebp-0x20],esi
c0103946:	76 03                	jbe    c010394b <view_reflushsub+0xa6>
c0103948:	89 5d ec             	mov    DWORD PTR [ebp-0x14],ebx
c010394b:	8b 58 18             	mov    ebx,DWORD PTR [eax+0x18]
c010394e:	39 5d e8             	cmp    DWORD PTR [ebp-0x18],ebx
c0103951:	76 53                	jbe    c01039a6 <view_reflushsub+0x101>
c0103953:	89 5d e8             	mov    DWORD PTR [ebp-0x18],ebx
c0103956:	eb 4e                	jmp    c01039a6 <view_reflushsub+0x101>
c0103958:	8b 58 10             	mov    ebx,DWORD PTR [eax+0x10]
c010395b:	89 4d c0             	mov    DWORD PTR [ebp-0x40],ecx
c010395e:	01 cb                	add    ebx,ecx
c0103960:	89 5d c8             	mov    DWORD PTR [ebp-0x38],ebx
c0103963:	8b 5d e0             	mov    ebx,DWORD PTR [ebp-0x20]
c0103966:	eb 35                	jmp    c010399d <view_reflushsub+0xf8>
c0103968:	8b 7d c8             	mov    edi,DWORD PTR [ebp-0x38]
c010396b:	8b 70 0c             	mov    esi,DWORD PTR [eax+0xc]
c010396e:	0f af 7a 10          	imul   edi,DWORD PTR [edx+0x10]
c0103972:	01 de                	add    esi,ebx
c0103974:	01 fe                	add    esi,edi
c0103976:	89 75 cc             	mov    DWORD PTR [ebp-0x34],esi
c0103979:	8b 72 18             	mov    esi,DWORD PTR [edx+0x18]
c010397c:	8b 7d cc             	mov    edi,DWORD PTR [ebp-0x34]
c010397f:	3b 04 be             	cmp    eax,DWORD PTR [esi+edi*4]
c0103982:	75 18                	jne    c010399c <view_reflushsub+0xf7>
c0103984:	8b 7d c0             	mov    edi,DWORD PTR [ebp-0x40]
c0103987:	0f af 78 14          	imul   edi,DWORD PTR [eax+0x14]
c010398b:	8b 70 04             	mov    esi,DWORD PTR [eax+0x4]
c010398e:	8b 4d cc             	mov    ecx,DWORD PTR [ebp-0x34]
c0103991:	01 df                	add    edi,ebx
c0103993:	8b 34 be             	mov    esi,DWORD PTR [esi+edi*4]
c0103996:	8b 7a 0c             	mov    edi,DWORD PTR [edx+0xc]
c0103999:	89 34 8f             	mov    DWORD PTR [edi+ecx*4],esi
c010399c:	43                   	inc    ebx
c010399d:	3b 5d ec             	cmp    ebx,DWORD PTR [ebp-0x14]
c01039a0:	7c c6                	jl     c0103968 <view_reflushsub+0xc3>
c01039a2:	8b 4d c0             	mov    ecx,DWORD PTR [ebp-0x40]
c01039a5:	41                   	inc    ecx
c01039a6:	3b 4d e8             	cmp    ecx,DWORD PTR [ebp-0x18]
c01039a9:	7c ad                	jl     c0103958 <view_reflushsub+0xb3>
c01039ab:	ff 45 e4             	inc    DWORD PTR [ebp-0x1c]
c01039ae:	83 45 f0 04          	add    DWORD PTR [ebp-0x10],0x4
c01039b2:	8b 45 20             	mov    eax,DWORD PTR [ebp+0x20]
c01039b5:	39 45 e4             	cmp    DWORD PTR [ebp-0x1c],eax
c01039b8:	0f 8e 46 ff ff ff    	jle    c0103904 <view_reflushsub+0x5f>
c01039be:	83 c4 34             	add    esp,0x34
c01039c1:	5b                   	pop    ebx
c01039c2:	5e                   	pop    esi
c01039c3:	5f                   	pop    edi
c01039c4:	5d                   	pop    ebp
c01039c5:	c3                   	ret    

c01039c6 <view_reflush>:
c01039c6:	55                   	push   ebp
c01039c7:	89 e5                	mov    ebp,esp
c01039c9:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01039cc:	53                   	push   ebx
c01039cd:	8b 58 08             	mov    ebx,DWORD PTR [eax+0x8]
c01039d0:	8b 48 10             	mov    ecx,DWORD PTR [eax+0x10]
c01039d3:	8b 50 0c             	mov    edx,DWORD PTR [eax+0xc]
c01039d6:	53                   	push   ebx
c01039d7:	53                   	push   ebx
c01039d8:	8b 5d 18             	mov    ebx,DWORD PTR [ebp+0x18]
c01039db:	01 cb                	add    ebx,ecx
c01039dd:	53                   	push   ebx
c01039de:	8b 5d 14             	mov    ebx,DWORD PTR [ebp+0x14]
c01039e1:	03 4d 10             	add    ecx,DWORD PTR [ebp+0x10]
c01039e4:	01 d3                	add    ebx,edx
c01039e6:	03 55 0c             	add    edx,DWORD PTR [ebp+0xc]
c01039e9:	53                   	push   ebx
c01039ea:	51                   	push   ecx
c01039eb:	52                   	push   edx
c01039ec:	ff 30                	push   DWORD PTR [eax]
c01039ee:	e8 b2 fe ff ff       	call   c01038a5 <view_reflushsub>
c01039f3:	83 c4 1c             	add    esp,0x1c
c01039f6:	8b 5d fc             	mov    ebx,DWORD PTR [ebp-0x4]
c01039f9:	c9                   	leave  
c01039fa:	c3                   	ret    

c01039fb <view_reflushmap>:
c01039fb:	55                   	push   ebp
c01039fc:	89 e5                	mov    ebp,esp
c01039fe:	57                   	push   edi
c01039ff:	56                   	push   esi
c0103a00:	53                   	push   ebx
c0103a01:	83 ec 2c             	sub    esp,0x2c
c0103a04:	8b 5d 0c             	mov    ebx,DWORD PTR [ebp+0xc]
c0103a07:	8b 4d 10             	mov    ecx,DWORD PTR [ebp+0x10]
c0103a0a:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c0103a0d:	8b 45 1c             	mov    eax,DWORD PTR [ebp+0x1c]
c0103a10:	89 de                	mov    esi,ebx
c0103a12:	f7 d6                	not    esi
c0103a14:	c1 fe 1f             	sar    esi,0x1f
c0103a17:	21 de                	and    esi,ebx
c0103a19:	89 cb                	mov    ebx,ecx
c0103a1b:	f7 d3                	not    ebx
c0103a1d:	c1 fb 1f             	sar    ebx,0x1f
c0103a20:	21 cb                	and    ebx,ecx
c0103a22:	8b 4a 10             	mov    ecx,DWORD PTR [edx+0x10]
c0103a25:	89 5d d0             	mov    DWORD PTR [ebp-0x30],ebx
c0103a28:	8b 5d 14             	mov    ebx,DWORD PTR [ebp+0x14]
c0103a2b:	89 75 d4             	mov    DWORD PTR [ebp-0x2c],esi
c0103a2e:	39 cb                	cmp    ebx,ecx
c0103a30:	89 5d dc             	mov    DWORD PTR [ebp-0x24],ebx
c0103a33:	7e 03                	jle    c0103a38 <view_reflushmap+0x3d>
c0103a35:	89 4d dc             	mov    DWORD PTR [ebp-0x24],ecx
c0103a38:	8b 75 18             	mov    esi,DWORD PTR [ebp+0x18]
c0103a3b:	8b 4a 14             	mov    ecx,DWORD PTR [edx+0x14]
c0103a3e:	89 75 d8             	mov    DWORD PTR [ebp-0x28],esi
c0103a41:	39 ce                	cmp    esi,ecx
c0103a43:	7e 03                	jle    c0103a48 <view_reflushmap+0x4d>
c0103a45:	89 4d d8             	mov    DWORD PTR [ebp-0x28],ecx
c0103a48:	8d 3c 85 00 00 00 00 	lea    edi,[eax*4+0x0]
c0103a4f:	89 7d f0             	mov    DWORD PTR [ebp-0x10],edi
c0103a52:	89 45 e4             	mov    DWORD PTR [ebp-0x1c],eax
c0103a55:	e9 aa 00 00 00       	jmp    c0103b04 <view_reflushmap+0x109>
c0103a5a:	8b 4d f0             	mov    ecx,DWORD PTR [ebp-0x10]
c0103a5d:	8b 02                	mov    eax,DWORD PTR [edx]
c0103a5f:	8b 7d dc             	mov    edi,DWORD PTR [ebp-0x24]
c0103a62:	8b 5d d0             	mov    ebx,DWORD PTR [ebp-0x30]
c0103a65:	8b 04 08             	mov    eax,DWORD PTR [eax+ecx*1]
c0103a68:	8b 4d d4             	mov    ecx,DWORD PTR [ebp-0x2c]
c0103a6b:	2b 78 0c             	sub    edi,DWORD PTR [eax+0xc]
c0103a6e:	8b 70 10             	mov    esi,DWORD PTR [eax+0x10]
c0103a71:	2b 48 0c             	sub    ecx,DWORD PTR [eax+0xc]
c0103a74:	89 7d ec             	mov    DWORD PTR [ebp-0x14],edi
c0103a77:	8b 7d d8             	mov    edi,DWORD PTR [ebp-0x28]
c0103a7a:	29 f3                	sub    ebx,esi
c0103a7c:	29 f7                	sub    edi,esi
c0103a7e:	89 ce                	mov    esi,ecx
c0103a80:	f7 d6                	not    esi
c0103a82:	c1 fe 1f             	sar    esi,0x1f
c0103a85:	21 ce                	and    esi,ecx
c0103a87:	89 d9                	mov    ecx,ebx
c0103a89:	f7 d1                	not    ecx
c0103a8b:	c1 f9 1f             	sar    ecx,0x1f
c0103a8e:	21 d9                	and    ecx,ebx
c0103a90:	8b 58 14             	mov    ebx,DWORD PTR [eax+0x14]
c0103a93:	39 5d ec             	cmp    DWORD PTR [ebp-0x14],ebx
c0103a96:	89 7d e8             	mov    DWORD PTR [ebp-0x18],edi
c0103a99:	89 75 e0             	mov    DWORD PTR [ebp-0x20],esi
c0103a9c:	76 03                	jbe    c0103aa1 <view_reflushmap+0xa6>
c0103a9e:	89 5d ec             	mov    DWORD PTR [ebp-0x14],ebx
c0103aa1:	8b 58 18             	mov    ebx,DWORD PTR [eax+0x18]
c0103aa4:	39 5d e8             	cmp    DWORD PTR [ebp-0x18],ebx
c0103aa7:	76 4f                	jbe    c0103af8 <view_reflushmap+0xfd>
c0103aa9:	89 5d e8             	mov    DWORD PTR [ebp-0x18],ebx
c0103aac:	eb 4a                	jmp    c0103af8 <view_reflushmap+0xfd>
c0103aae:	8b 58 10             	mov    ebx,DWORD PTR [eax+0x10]
c0103ab1:	01 cb                	add    ebx,ecx
c0103ab3:	89 5d cc             	mov    DWORD PTR [ebp-0x34],ebx
c0103ab6:	8b 5d e0             	mov    ebx,DWORD PTR [ebp-0x20]
c0103ab9:	eb 37                	jmp    c0103af2 <view_reflushmap+0xf7>
c0103abb:	8b 78 14             	mov    edi,DWORD PTR [eax+0x14]
c0103abe:	8b 70 0c             	mov    esi,DWORD PTR [eax+0xc]
c0103ac1:	0f af f9             	imul   edi,ecx
c0103ac4:	89 75 c8             	mov    DWORD PTR [ebp-0x38],esi
c0103ac7:	8b 70 04             	mov    esi,DWORD PTR [eax+0x4]
c0103aca:	01 df                	add    edi,ebx
c0103acc:	8b 34 be             	mov    esi,DWORD PTR [esi+edi*4]
c0103acf:	81 e6 00 00 00 ff    	and    esi,0xff000000
c0103ad5:	81 fe 00 00 00 ff    	cmp    esi,0xff000000
c0103adb:	74 14                	je     c0103af1 <view_reflushmap+0xf6>
c0103add:	8b 75 cc             	mov    esi,DWORD PTR [ebp-0x34]
c0103ae0:	8b 7d c8             	mov    edi,DWORD PTR [ebp-0x38]
c0103ae3:	0f af 72 10          	imul   esi,DWORD PTR [edx+0x10]
c0103ae7:	01 df                	add    edi,ebx
c0103ae9:	01 f7                	add    edi,esi
c0103aeb:	8b 72 18             	mov    esi,DWORD PTR [edx+0x18]
c0103aee:	89 04 be             	mov    DWORD PTR [esi+edi*4],eax
c0103af1:	43                   	inc    ebx
c0103af2:	3b 5d ec             	cmp    ebx,DWORD PTR [ebp-0x14]
c0103af5:	7c c4                	jl     c0103abb <view_reflushmap+0xc0>
c0103af7:	41                   	inc    ecx
c0103af8:	3b 4d e8             	cmp    ecx,DWORD PTR [ebp-0x18]
c0103afb:	7c b1                	jl     c0103aae <view_reflushmap+0xb3>
c0103afd:	ff 45 e4             	inc    DWORD PTR [ebp-0x1c]
c0103b00:	83 45 f0 04          	add    DWORD PTR [ebp-0x10],0x4
c0103b04:	8b 7d e4             	mov    edi,DWORD PTR [ebp-0x1c]
c0103b07:	3b 7a 08             	cmp    edi,DWORD PTR [edx+0x8]
c0103b0a:	0f 8c 4a ff ff ff    	jl     c0103a5a <view_reflushmap+0x5f>
c0103b10:	83 c4 2c             	add    esp,0x2c
c0103b13:	5b                   	pop    ebx
c0103b14:	5e                   	pop    esi
c0103b15:	5f                   	pop    edi
c0103b16:	5d                   	pop    ebp
c0103b17:	c3                   	ret    

c0103b18 <viewSlide>:
c0103b18:	55                   	push   ebp
c0103b19:	89 e5                	mov    ebp,esp
c0103b1b:	57                   	push   edi
c0103b1c:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c0103b1f:	56                   	push   esi
c0103b20:	53                   	push   ebx
c0103b21:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c0103b24:	8b 73 0c             	mov    esi,DWORD PTR [ebx+0xc]
c0103b27:	89 43 0c             	mov    DWORD PTR [ebx+0xc],eax
c0103b2a:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
c0103b2d:	8b 7b 10             	mov    edi,DWORD PTR [ebx+0x10]
c0103b30:	89 43 10             	mov    DWORD PTR [ebx+0x10],eax
c0103b33:	6a 00                	push   0x0
c0103b35:	8b 43 18             	mov    eax,DWORD PTR [ebx+0x18]
c0103b38:	01 f8                	add    eax,edi
c0103b3a:	50                   	push   eax
c0103b3b:	8b 43 14             	mov    eax,DWORD PTR [ebx+0x14]
c0103b3e:	01 f0                	add    eax,esi
c0103b40:	50                   	push   eax
c0103b41:	57                   	push   edi
c0103b42:	56                   	push   esi
c0103b43:	ff 33                	push   DWORD PTR [ebx]
c0103b45:	e8 b1 fe ff ff       	call   c01039fb <view_reflushmap>
c0103b4a:	8b 53 10             	mov    edx,DWORD PTR [ebx+0x10]
c0103b4d:	8b 43 0c             	mov    eax,DWORD PTR [ebx+0xc]
c0103b50:	ff 73 08             	push   DWORD PTR [ebx+0x8]
c0103b53:	8b 4b 18             	mov    ecx,DWORD PTR [ebx+0x18]
c0103b56:	01 d1                	add    ecx,edx
c0103b58:	51                   	push   ecx
c0103b59:	8b 4b 14             	mov    ecx,DWORD PTR [ebx+0x14]
c0103b5c:	01 c1                	add    ecx,eax
c0103b5e:	51                   	push   ecx
c0103b5f:	52                   	push   edx
c0103b60:	50                   	push   eax
c0103b61:	ff 33                	push   DWORD PTR [ebx]
c0103b63:	e8 93 fe ff ff       	call   c01039fb <view_reflushmap>
c0103b68:	8b 43 08             	mov    eax,DWORD PTR [ebx+0x8]
c0103b6b:	83 c4 30             	add    esp,0x30
c0103b6e:	48                   	dec    eax
c0103b6f:	50                   	push   eax
c0103b70:	6a 00                	push   0x0
c0103b72:	8b 43 18             	mov    eax,DWORD PTR [ebx+0x18]
c0103b75:	01 f8                	add    eax,edi
c0103b77:	50                   	push   eax
c0103b78:	8b 43 14             	mov    eax,DWORD PTR [ebx+0x14]
c0103b7b:	01 f0                	add    eax,esi
c0103b7d:	50                   	push   eax
c0103b7e:	57                   	push   edi
c0103b7f:	56                   	push   esi
c0103b80:	ff 33                	push   DWORD PTR [ebx]
c0103b82:	e8 1e fd ff ff       	call   c01038a5 <view_reflushsub>
c0103b87:	8b 4b 08             	mov    ecx,DWORD PTR [ebx+0x8]
c0103b8a:	8b 53 10             	mov    edx,DWORD PTR [ebx+0x10]
c0103b8d:	8b 43 0c             	mov    eax,DWORD PTR [ebx+0xc]
c0103b90:	51                   	push   ecx
c0103b91:	51                   	push   ecx
c0103b92:	8b 4b 18             	mov    ecx,DWORD PTR [ebx+0x18]
c0103b95:	01 d1                	add    ecx,edx
c0103b97:	51                   	push   ecx
c0103b98:	8b 4b 14             	mov    ecx,DWORD PTR [ebx+0x14]
c0103b9b:	01 c1                	add    ecx,eax
c0103b9d:	51                   	push   ecx
c0103b9e:	52                   	push   edx
c0103b9f:	50                   	push   eax
c0103ba0:	ff 33                	push   DWORD PTR [ebx]
c0103ba2:	e8 fe fc ff ff       	call   c01038a5 <view_reflushsub>
c0103ba7:	83 c4 38             	add    esp,0x38
c0103baa:	8d 65 f4             	lea    esp,[ebp-0xc]
c0103bad:	5b                   	pop    ebx
c0103bae:	5e                   	pop    esi
c0103baf:	5f                   	pop    edi
c0103bb0:	5d                   	pop    ebp
c0103bb1:	c3                   	ret    

c0103bb2 <viewUpdown>:
c0103bb2:	55                   	push   ebp
c0103bb3:	89 e5                	mov    ebp,esp
c0103bb5:	57                   	push   edi
c0103bb6:	56                   	push   esi
c0103bb7:	53                   	push   ebx
c0103bb8:	83 ec 08             	sub    esp,0x8
c0103bbb:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c0103bbe:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c0103bc1:	8b 33                	mov    esi,DWORD PTR [ebx]
c0103bc3:	8b 7b 08             	mov    edi,DWORD PTR [ebx+0x8]
c0103bc6:	8b 56 08             	mov    edx,DWORD PTR [esi+0x8]
c0103bc9:	39 c2                	cmp    edx,eax
c0103bcb:	7f 03                	jg     c0103bd0 <viewUpdown+0x1e>
c0103bcd:	8d 42 ff             	lea    eax,[edx-0x1]
c0103bd0:	89 c2                	mov    edx,eax
c0103bd2:	f7 d2                	not    edx
c0103bd4:	c1 fa 1f             	sar    edx,0x1f
c0103bd7:	89 55 f0             	mov    DWORD PTR [ebp-0x10],edx
c0103bda:	21 45 f0             	and    DWORD PTR [ebp-0x10],eax
c0103bdd:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c0103be0:	39 c7                	cmp    edi,eax
c0103be2:	89 43 08             	mov    DWORD PTR [ebx+0x8],eax
c0103be5:	7e 5a                	jle    c0103c41 <viewUpdown+0x8f>
c0103be7:	8d 14 bd 00 00 00 00 	lea    edx,[edi*4+0x0]
c0103bee:	89 f8                	mov    eax,edi
c0103bf0:	89 5d ec             	mov    DWORD PTR [ebp-0x14],ebx
c0103bf3:	8b 0e                	mov    ecx,DWORD PTR [esi]
c0103bf5:	8b 5c 11 fc          	mov    ebx,DWORD PTR [ecx+edx*1-0x4]
c0103bf9:	89 1c 11             	mov    DWORD PTR [ecx+edx*1],ebx
c0103bfc:	8b 0e                	mov    ecx,DWORD PTR [esi]
c0103bfe:	8b 0c 11             	mov    ecx,DWORD PTR [ecx+edx*1]
c0103c01:	83 ea 04             	sub    edx,0x4
c0103c04:	89 41 08             	mov    DWORD PTR [ecx+0x8],eax
c0103c07:	48                   	dec    eax
c0103c08:	3b 45 f0             	cmp    eax,DWORD PTR [ebp-0x10]
c0103c0b:	75 e6                	jne    c0103bf3 <viewUpdown+0x41>
c0103c0d:	8b 5d ec             	mov    ebx,DWORD PTR [ebp-0x14]
c0103c10:	8b 16                	mov    edx,DWORD PTR [esi]
c0103c12:	89 1c 82             	mov    DWORD PTR [edx+eax*4],ebx
c0103c15:	8b 4b 08             	mov    ecx,DWORD PTR [ebx+0x8]
c0103c18:	8b 53 10             	mov    edx,DWORD PTR [ebx+0x10]
c0103c1b:	8b 43 0c             	mov    eax,DWORD PTR [ebx+0xc]
c0103c1e:	41                   	inc    ecx
c0103c1f:	51                   	push   ecx
c0103c20:	8b 4b 18             	mov    ecx,DWORD PTR [ebx+0x18]
c0103c23:	01 d1                	add    ecx,edx
c0103c25:	51                   	push   ecx
c0103c26:	8b 4b 14             	mov    ecx,DWORD PTR [ebx+0x14]
c0103c29:	01 c1                	add    ecx,eax
c0103c2b:	51                   	push   ecx
c0103c2c:	52                   	push   edx
c0103c2d:	50                   	push   eax
c0103c2e:	56                   	push   esi
c0103c2f:	e8 c7 fd ff ff       	call   c01039fb <view_reflushmap>
c0103c34:	8b 53 10             	mov    edx,DWORD PTR [ebx+0x10]
c0103c37:	8b 43 0c             	mov    eax,DWORD PTR [ebx+0xc]
c0103c3a:	57                   	push   edi
c0103c3b:	8b 4b 08             	mov    ecx,DWORD PTR [ebx+0x8]
c0103c3e:	41                   	inc    ecx
c0103c3f:	eb 57                	jmp    c0103c98 <viewUpdown+0xe6>
c0103c41:	7d 6d                	jge    c0103cb0 <viewUpdown+0xfe>
c0103c43:	8d 04 bd 00 00 00 00 	lea    eax,[edi*4+0x0]
c0103c4a:	eb 03                	jmp    c0103c4f <viewUpdown+0x9d>
c0103c4c:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
c0103c4f:	8b 16                	mov    edx,DWORD PTR [esi]
c0103c51:	8d 48 04             	lea    ecx,[eax+0x4]
c0103c54:	89 4d ec             	mov    DWORD PTR [ebp-0x14],ecx
c0103c57:	8b 4c 02 04          	mov    ecx,DWORD PTR [edx+eax*1+0x4]
c0103c5b:	89 0c 02             	mov    DWORD PTR [edx+eax*1],ecx
c0103c5e:	8b 16                	mov    edx,DWORD PTR [esi]
c0103c60:	8b 04 02             	mov    eax,DWORD PTR [edx+eax*1]
c0103c63:	89 78 08             	mov    DWORD PTR [eax+0x8],edi
c0103c66:	47                   	inc    edi
c0103c67:	3b 7d f0             	cmp    edi,DWORD PTR [ebp-0x10]
c0103c6a:	75 e0                	jne    c0103c4c <viewUpdown+0x9a>
c0103c6c:	8b 06                	mov    eax,DWORD PTR [esi]
c0103c6e:	89 1c b8             	mov    DWORD PTR [eax+edi*4],ebx
c0103c71:	8b 53 10             	mov    edx,DWORD PTR [ebx+0x10]
c0103c74:	8b 43 0c             	mov    eax,DWORD PTR [ebx+0xc]
c0103c77:	ff 73 08             	push   DWORD PTR [ebx+0x8]
c0103c7a:	8b 4b 18             	mov    ecx,DWORD PTR [ebx+0x18]
c0103c7d:	01 d1                	add    ecx,edx
c0103c7f:	51                   	push   ecx
c0103c80:	8b 4b 14             	mov    ecx,DWORD PTR [ebx+0x14]
c0103c83:	01 c1                	add    ecx,eax
c0103c85:	51                   	push   ecx
c0103c86:	52                   	push   edx
c0103c87:	50                   	push   eax
c0103c88:	56                   	push   esi
c0103c89:	e8 6d fd ff ff       	call   c01039fb <view_reflushmap>
c0103c8e:	8b 4b 08             	mov    ecx,DWORD PTR [ebx+0x8]
c0103c91:	8b 53 10             	mov    edx,DWORD PTR [ebx+0x10]
c0103c94:	8b 43 0c             	mov    eax,DWORD PTR [ebx+0xc]
c0103c97:	51                   	push   ecx
c0103c98:	51                   	push   ecx
c0103c99:	8b 4b 18             	mov    ecx,DWORD PTR [ebx+0x18]
c0103c9c:	01 d1                	add    ecx,edx
c0103c9e:	51                   	push   ecx
c0103c9f:	8b 4b 14             	mov    ecx,DWORD PTR [ebx+0x14]
c0103ca2:	01 c1                	add    ecx,eax
c0103ca4:	51                   	push   ecx
c0103ca5:	52                   	push   edx
c0103ca6:	50                   	push   eax
c0103ca7:	56                   	push   esi
c0103ca8:	e8 f8 fb ff ff       	call   c01038a5 <view_reflushsub>
c0103cad:	83 c4 34             	add    esp,0x34
c0103cb0:	8d 65 f4             	lea    esp,[ebp-0xc]
c0103cb3:	5b                   	pop    ebx
c0103cb4:	5e                   	pop    esi
c0103cb5:	5f                   	pop    edi
c0103cb6:	5d                   	pop    ebp
c0103cb7:	c3                   	ret    

c0103cb8 <viewRemove>:
c0103cb8:	55                   	push   ebp
c0103cb9:	89 e5                	mov    ebp,esp
c0103cbb:	56                   	push   esi
c0103cbc:	53                   	push   ebx
c0103cbd:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c0103cc0:	8b 53 08             	mov    edx,DWORD PTR [ebx+0x8]
c0103cc3:	8d 04 95 00 00 00 00 	lea    eax,[edx*4+0x0]
c0103cca:	eb 17                	jmp    c0103ce3 <viewRemove+0x2b>
c0103ccc:	8b 09                	mov    ecx,DWORD PTR [ecx]
c0103cce:	8b 74 01 fc          	mov    esi,DWORD PTR [ecx+eax*1-0x4]
c0103cd2:	89 34 01             	mov    DWORD PTR [ecx+eax*1],esi
c0103cd5:	8b 0b                	mov    ecx,DWORD PTR [ebx]
c0103cd7:	8b 09                	mov    ecx,DWORD PTR [ecx]
c0103cd9:	8b 0c 01             	mov    ecx,DWORD PTR [ecx+eax*1]
c0103cdc:	83 c0 04             	add    eax,0x4
c0103cdf:	89 51 08             	mov    DWORD PTR [ecx+0x8],edx
c0103ce2:	42                   	inc    edx
c0103ce3:	8b 0b                	mov    ecx,DWORD PTR [ebx]
c0103ce5:	8b 71 08             	mov    esi,DWORD PTR [ecx+0x8]
c0103ce8:	4e                   	dec    esi
c0103ce9:	39 f2                	cmp    edx,esi
c0103ceb:	7c df                	jl     c0103ccc <viewRemove+0x14>
c0103ced:	89 71 08             	mov    DWORD PTR [ecx+0x8],esi
c0103cf0:	8b 53 10             	mov    edx,DWORD PTR [ebx+0x10]
c0103cf3:	8b 43 0c             	mov    eax,DWORD PTR [ebx+0xc]
c0103cf6:	6a 00                	push   0x0
c0103cf8:	8b 4b 18             	mov    ecx,DWORD PTR [ebx+0x18]
c0103cfb:	01 d1                	add    ecx,edx
c0103cfd:	51                   	push   ecx
c0103cfe:	8b 4b 14             	mov    ecx,DWORD PTR [ebx+0x14]
c0103d01:	01 c1                	add    ecx,eax
c0103d03:	51                   	push   ecx
c0103d04:	52                   	push   edx
c0103d05:	50                   	push   eax
c0103d06:	ff 33                	push   DWORD PTR [ebx]
c0103d08:	e8 ee fc ff ff       	call   c01039fb <view_reflushmap>
c0103d0d:	8b 53 10             	mov    edx,DWORD PTR [ebx+0x10]
c0103d10:	8b 43 0c             	mov    eax,DWORD PTR [ebx+0xc]
c0103d13:	ff 73 08             	push   DWORD PTR [ebx+0x8]
c0103d16:	6a 00                	push   0x0
c0103d18:	8b 4b 18             	mov    ecx,DWORD PTR [ebx+0x18]
c0103d1b:	01 d1                	add    ecx,edx
c0103d1d:	51                   	push   ecx
c0103d1e:	8b 4b 14             	mov    ecx,DWORD PTR [ebx+0x14]
c0103d21:	01 c1                	add    ecx,eax
c0103d23:	51                   	push   ecx
c0103d24:	52                   	push   edx
c0103d25:	50                   	push   eax
c0103d26:	ff 33                	push   DWORD PTR [ebx]
c0103d28:	e8 78 fb ff ff       	call   c01038a5 <view_reflushsub>
c0103d2d:	83 c4 34             	add    esp,0x34
c0103d30:	c7 43 08 00 00 00 00 	mov    DWORD PTR [ebx+0x8],0x0
c0103d37:	c7 03 00 00 00 00    	mov    DWORD PTR [ebx],0x0
c0103d3d:	8d 65 f8             	lea    esp,[ebp-0x8]
c0103d40:	5b                   	pop    ebx
c0103d41:	5e                   	pop    esi
c0103d42:	5d                   	pop    ebp
c0103d43:	c3                   	ret    

c0103d44 <view_free>:
c0103d44:	55                   	push   ebp
c0103d45:	89 e5                	mov    ebp,esp
c0103d47:	53                   	push   ebx
c0103d48:	51                   	push   ecx
c0103d49:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
c0103d4c:	83 3b 00             	cmp    DWORD PTR [ebx],0x0
c0103d4f:	74 07                	je     c0103d58 <view_free+0x14>
c0103d51:	53                   	push   ebx
c0103d52:	e8 61 ff ff ff       	call   c0103cb8 <viewRemove>
c0103d57:	5a                   	pop    edx
c0103d58:	83 ec 0c             	sub    esp,0xc
c0103d5b:	ff 73 04             	push   DWORD PTR [ebx+0x4]
c0103d5e:	e8 3c d5 ff ff       	call   c010129f <sys_free>
c0103d63:	83 c4 10             	add    esp,0x10
c0103d66:	89 5d 08             	mov    DWORD PTR [ebp+0x8],ebx
c0103d69:	8b 5d fc             	mov    ebx,DWORD PTR [ebp-0x4]
c0103d6c:	c9                   	leave  
c0103d6d:	e9 2d d5 ff ff       	jmp    c010129f <sys_free>

c0103d72 <viewFill>:
c0103d72:	55                   	push   ebp
c0103d73:	89 e5                	mov    ebp,esp
c0103d75:	57                   	push   edi
c0103d76:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
c0103d79:	56                   	push   esi
c0103d7a:	8b 55 18             	mov    edx,DWORD PTR [ebp+0x18]
c0103d7d:	53                   	push   ebx
c0103d7e:	8b 7d 20             	mov    edi,DWORD PTR [ebp+0x20]
c0103d81:	83 3d 14 7c 00 c0 01 	cmp    DWORD PTR ds:0xc0007c14,0x1
c0103d88:	8b 5d 10             	mov    ebx,DWORD PTR [ebp+0x10]
c0103d8b:	75 35                	jne    c0103dc2 <viewFill+0x50>
c0103d8d:	89 d8                	mov    eax,ebx
c0103d8f:	25 00 00 00 ff       	and    eax,0xff000000
c0103d94:	3d 00 00 00 ff       	cmp    eax,0xff000000
c0103d99:	74 27                	je     c0103dc2 <viewFill+0x50>
c0103d9b:	8d 34 8d 00 00 00 00 	lea    esi,[ecx*4+0x0]
c0103da2:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0103da5:	0f af ca             	imul   ecx,edx
c0103da8:	8d 0c 88             	lea    ecx,[eax+ecx*4]
c0103dab:	eb 0c                	jmp    c0103db9 <viewFill+0x47>
c0103dad:	89 1c 81             	mov    DWORD PTR [ecx+eax*4],ebx
c0103db0:	40                   	inc    eax
c0103db1:	3b 45 1c             	cmp    eax,DWORD PTR [ebp+0x1c]
c0103db4:	7e f7                	jle    c0103dad <viewFill+0x3b>
c0103db6:	42                   	inc    edx
c0103db7:	01 f1                	add    ecx,esi
c0103db9:	39 fa                	cmp    edx,edi
c0103dbb:	7f 05                	jg     c0103dc2 <viewFill+0x50>
c0103dbd:	8b 45 14             	mov    eax,DWORD PTR [ebp+0x14]
c0103dc0:	eb ef                	jmp    c0103db1 <viewFill+0x3f>
c0103dc2:	5b                   	pop    ebx
c0103dc3:	5e                   	pop    esi
c0103dc4:	5f                   	pop    edi
c0103dc5:	5d                   	pop    ebp
c0103dc6:	c3                   	ret    

c0103dc7 <vput_char>:
c0103dc7:	55                   	push   ebp
c0103dc8:	89 e5                	mov    ebp,esp
c0103dca:	0f be 45 1c          	movsx  eax,BYTE PTR [ebp+0x1c]
c0103dce:	57                   	push   edi
c0103dcf:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
c0103dd2:	56                   	push   esi
c0103dd3:	8b 55 18             	mov    edx,DWORD PTR [ebp+0x18]
c0103dd6:	53                   	push   ebx
c0103dd7:	c1 e0 04             	shl    eax,0x4
c0103dda:	83 3d 14 7c 00 c0 01 	cmp    DWORD PTR ds:0xc0007c14,0x1
c0103de1:	8d b8 08 40 10 c0    	lea    edi,[eax-0x3fefbff8]
c0103de7:	75 63                	jne    c0103e4c <vput_char+0x85>
c0103de9:	8d 34 8d 00 00 00 00 	lea    esi,[ecx*4+0x0]
c0103df0:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0103df3:	31 db                	xor    ebx,ebx
c0103df5:	0f af 4d 14          	imul   ecx,DWORD PTR [ebp+0x14]
c0103df9:	03 4d 10             	add    ecx,DWORD PTR [ebp+0x10]
c0103dfc:	8d 44 88 1c          	lea    eax,[eax+ecx*4+0x1c]
c0103e00:	8a 0c 1f             	mov    cl,BYTE PTR [edi+ebx*1]
c0103e03:	84 c9                	test   cl,cl
c0103e05:	79 03                	jns    c0103e0a <vput_char+0x43>
c0103e07:	89 50 e4             	mov    DWORD PTR [eax-0x1c],edx
c0103e0a:	0f b6 c9             	movzx  ecx,cl
c0103e0d:	f6 c1 40             	test   cl,0x40
c0103e10:	74 03                	je     c0103e15 <vput_char+0x4e>
c0103e12:	89 50 e8             	mov    DWORD PTR [eax-0x18],edx
c0103e15:	f6 c1 20             	test   cl,0x20
c0103e18:	74 03                	je     c0103e1d <vput_char+0x56>
c0103e1a:	89 50 ec             	mov    DWORD PTR [eax-0x14],edx
c0103e1d:	f6 c1 10             	test   cl,0x10
c0103e20:	74 03                	je     c0103e25 <vput_char+0x5e>
c0103e22:	89 50 f0             	mov    DWORD PTR [eax-0x10],edx
c0103e25:	f6 c1 08             	test   cl,0x8
c0103e28:	74 03                	je     c0103e2d <vput_char+0x66>
c0103e2a:	89 50 f4             	mov    DWORD PTR [eax-0xc],edx
c0103e2d:	f6 c1 04             	test   cl,0x4
c0103e30:	74 03                	je     c0103e35 <vput_char+0x6e>
c0103e32:	89 50 f8             	mov    DWORD PTR [eax-0x8],edx
c0103e35:	f6 c1 02             	test   cl,0x2
c0103e38:	74 03                	je     c0103e3d <vput_char+0x76>
c0103e3a:	89 50 fc             	mov    DWORD PTR [eax-0x4],edx
c0103e3d:	80 e1 01             	and    cl,0x1
c0103e40:	74 02                	je     c0103e44 <vput_char+0x7d>
c0103e42:	89 10                	mov    DWORD PTR [eax],edx
c0103e44:	43                   	inc    ebx
c0103e45:	01 f0                	add    eax,esi
c0103e47:	83 fb 10             	cmp    ebx,0x10
c0103e4a:	75 b4                	jne    c0103e00 <vput_char+0x39>
c0103e4c:	5b                   	pop    ebx
c0103e4d:	5e                   	pop    esi
c0103e4e:	5f                   	pop    edi
c0103e4f:	5d                   	pop    ebp
c0103e50:	c3                   	ret    

c0103e51 <vput_str>:
c0103e51:	55                   	push   ebp
c0103e52:	89 e5                	mov    ebp,esp
c0103e54:	57                   	push   edi
c0103e55:	8b 7d 1c             	mov    edi,DWORD PTR [ebp+0x1c]
c0103e58:	56                   	push   esi
c0103e59:	8b 75 14             	mov    esi,DWORD PTR [ebp+0x14]
c0103e5c:	53                   	push   ebx
c0103e5d:	8b 5d 10             	mov    ebx,DWORD PTR [ebp+0x10]
c0103e60:	eb 2b                	jmp    c0103e8d <vput_str+0x3c>
c0103e62:	3c 0a                	cmp    al,0xa
c0103e64:	74 04                	je     c0103e6a <vput_str+0x19>
c0103e66:	3c 0d                	cmp    al,0xd
c0103e68:	75 08                	jne    c0103e72 <vput_str+0x21>
c0103e6a:	83 c6 10             	add    esi,0x10
c0103e6d:	8b 5d 10             	mov    ebx,DWORD PTR [ebp+0x10]
c0103e70:	eb 1a                	jmp    c0103e8c <vput_str+0x3b>
c0103e72:	0f be c0             	movsx  eax,al
c0103e75:	50                   	push   eax
c0103e76:	ff 75 18             	push   DWORD PTR [ebp+0x18]
c0103e79:	56                   	push   esi
c0103e7a:	53                   	push   ebx
c0103e7b:	83 c3 08             	add    ebx,0x8
c0103e7e:	ff 75 0c             	push   DWORD PTR [ebp+0xc]
c0103e81:	ff 75 08             	push   DWORD PTR [ebp+0x8]
c0103e84:	e8 3e ff ff ff       	call   c0103dc7 <vput_char>
c0103e89:	83 c4 18             	add    esp,0x18
c0103e8c:	47                   	inc    edi
c0103e8d:	8a 07                	mov    al,BYTE PTR [edi]
c0103e8f:	84 c0                	test   al,al
c0103e91:	75 cf                	jne    c0103e62 <vput_str+0x11>
c0103e93:	8d 65 f4             	lea    esp,[ebp-0xc]
c0103e96:	5b                   	pop    ebx
c0103e97:	5e                   	pop    esi
c0103e98:	5f                   	pop    edi
c0103e99:	5d                   	pop    ebp
c0103e9a:	c3                   	ret    

c0103e9b <init_screen>:
c0103e9b:	55                   	push   ebp
c0103e9c:	89 e5                	mov    ebp,esp
c0103e9e:	83 ec 08             	sub    esp,0x8
c0103ea1:	83 3d 14 7c 00 c0 01 	cmp    DWORD PTR ds:0xc0007c14,0x1
c0103ea8:	0f 85 91 00 00 00    	jne    c0103f3f <init_screen+0xa4>
c0103eae:	68 00 02 00 00       	push   0x200
c0103eb3:	ff 35 28 7c 00 c0    	push   DWORD PTR ds:0xc0007c28
c0103eb9:	ff 35 24 7c 00 c0    	push   DWORD PTR ds:0xc0007c24
c0103ebf:	68 00 00 00 e0       	push   0xe0000000
c0103ec4:	e8 c3 f8 ff ff       	call   c010378c <viewctl_init>
c0103ec9:	a3 f4 04 12 c0       	mov    ds:0xc01204f4,eax
c0103ece:	58                   	pop    eax
c0103ecf:	5a                   	pop    edx
c0103ed0:	ff 35 28 7c 00 c0    	push   DWORD PTR ds:0xc0007c28
c0103ed6:	ff 35 24 7c 00 c0    	push   DWORD PTR ds:0xc0007c24
c0103edc:	e8 39 f9 ff ff       	call   c010381a <viewblock_init>
c0103ee1:	83 c4 0c             	add    esp,0xc
c0103ee4:	8b 48 18             	mov    ecx,DWORD PTR [eax+0x18]
c0103ee7:	8b 50 14             	mov    edx,DWORD PTR [eax+0x14]
c0103eea:	a3 f0 04 12 c0       	mov    ds:0xc01204f0,eax
c0103eef:	49                   	dec    ecx
c0103ef0:	51                   	push   ecx
c0103ef1:	8d 4a ff             	lea    ecx,[edx-0x1]
c0103ef4:	51                   	push   ecx
c0103ef5:	6a 00                	push   0x0
c0103ef7:	6a 00                	push   0x0
c0103ef9:	68 84 84 00 00       	push   0x8484
c0103efe:	52                   	push   edx
c0103eff:	ff 70 04             	push   DWORD PTR [eax+0x4]
c0103f02:	e8 6b fe ff ff       	call   c0103d72 <viewFill>
c0103f07:	83 c4 18             	add    esp,0x18
c0103f0a:	ff 35 f0 04 12 c0    	push   DWORD PTR ds:0xc01204f0
c0103f10:	ff 35 f4 04 12 c0    	push   DWORD PTR ds:0xc01204f4
c0103f16:	e8 62 f9 ff ff       	call   c010387d <viewInsert>
c0103f1b:	59                   	pop    ecx
c0103f1c:	58                   	pop    eax
c0103f1d:	6a 00                	push   0x0
c0103f1f:	ff 35 f0 04 12 c0    	push   DWORD PTR ds:0xc01204f0
c0103f25:	e8 88 fc ff ff       	call   c0103bb2 <viewUpdown>
c0103f2a:	83 c4 0c             	add    esp,0xc
c0103f2d:	6a 00                	push   0x0
c0103f2f:	6a 00                	push   0x0
c0103f31:	ff 35 f0 04 12 c0    	push   DWORD PTR ds:0xc01204f0
c0103f37:	e8 dc fb ff ff       	call   c0103b18 <viewSlide>
c0103f3c:	83 c4 10             	add    esp,0x10
c0103f3f:	c9                   	leave  
c0103f40:	c3                   	ret    

Disassembly of section .data:

c0103f48 <_data>:
c0103f48:	04 06                	add    al,0x6
c0103f4a:	10 c0                	adc    al,al
c0103f4c:	27                   	daa    
c0103f4d:	06                   	push   es
c0103f4e:	10 c0                	adc    al,al
c0103f50:	4a                   	dec    edx
c0103f51:	06                   	push   es
c0103f52:	10 c0                	adc    al,al
c0103f54:	6d                   	ins    DWORD PTR es:[edi],dx
c0103f55:	06                   	push   es
c0103f56:	10 c0                	adc    al,al
c0103f58:	90                   	nop
c0103f59:	06                   	push   es
c0103f5a:	10 c0                	adc    al,al
c0103f5c:	b3 06                	mov    bl,0x6
c0103f5e:	10 c0                	adc    al,al
c0103f60:	d6                   	(bad)  
c0103f61:	06                   	push   es
c0103f62:	10 c0                	adc    al,al
c0103f64:	f9                   	stc    
c0103f65:	06                   	push   es
c0103f66:	10 c0                	adc    al,al
c0103f68:	1c 07                	sbb    al,0x7
c0103f6a:	10 c0                	adc    al,al
c0103f6c:	3b 07                	cmp    eax,DWORD PTR [edi]
c0103f6e:	10 c0                	adc    al,al
c0103f70:	5e                   	pop    esi
c0103f71:	07                   	pop    es
c0103f72:	10 c0                	adc    al,al
c0103f74:	7d 07                	jge    c0103f7d <_data+0x35>
c0103f76:	10 c0                	adc    al,al
c0103f78:	9c                   	pushf  
c0103f79:	07                   	pop    es
c0103f7a:	10 c0                	adc    al,al
c0103f7c:	bf 07 10 c0 de       	mov    edi,0xdec01007
c0103f81:	07                   	pop    es
c0103f82:	10 c0                	adc    al,al
c0103f84:	fd                   	std    
c0103f85:	07                   	pop    es
c0103f86:	10 c0                	adc    al,al
c0103f88:	20 08                	and    BYTE PTR [eax],cl
c0103f8a:	10 c0                	adc    al,al
c0103f8c:	43                   	inc    ebx
c0103f8d:	08 10                	or     BYTE PTR [eax],dl
c0103f8f:	c0 62 08 10          	shl    BYTE PTR [edx+0x8],0x10
c0103f93:	c0 85 08 10 c0 a8 08 	rol    BYTE PTR [ebp-0x573feff8],0x8
c0103f9a:	10 c0                	adc    al,al
c0103f9c:	cb                   	retf   
c0103f9d:	08 10                	or     BYTE PTR [eax],dl
c0103f9f:	c0 ee 08             	shr    dh,0x8
c0103fa2:	10 c0                	adc    al,al
c0103fa4:	11 09                	adc    DWORD PTR [ecx],ecx
c0103fa6:	10 c0                	adc    al,al
c0103fa8:	34 09                	xor    al,0x9
c0103faa:	10 c0                	adc    al,al
c0103fac:	53                   	push   ebx
c0103fad:	09 10                	or     DWORD PTR [eax],edx
c0103faf:	c0                   	(bad)  
c0103fb0:	76 09                	jbe    c0103fbb <_data+0x73>
c0103fb2:	10 c0                	adc    al,al
c0103fb4:	95                   	xchg   ebp,eax
c0103fb5:	09 10                	or     DWORD PTR [eax],edx
c0103fb7:	c0                   	(bad)  
c0103fb8:	b4 09                	mov    ah,0x9
c0103fba:	10 c0                	adc    al,al
c0103fbc:	d7                   	xlat   BYTE PTR ds:[ebx]
c0103fbd:	09 10                	or     DWORD PTR [eax],edx
c0103fbf:	c0                   	(bad)  
c0103fc0:	f6                   	(bad)  
c0103fc1:	09 10                	or     DWORD PTR [eax],edx
c0103fc3:	c0 15 0a 10 c0 38 0a 	rcl    BYTE PTR ds:0x38c0100a,0xa
c0103fca:	10 c0                	adc    al,al
c0103fcc:	5b                   	pop    ebx
c0103fcd:	0a 10                	or     dl,BYTE PTR [eax]
c0103fcf:	c0 7e 0a 10          	sar    BYTE PTR [esi+0xa],0x10
c0103fd3:	c0 a1 0a 10 c0 c4 0a 	shl    BYTE PTR [ecx-0x3b3feff6],0xa
c0103fda:	10 c0                	adc    al,al
c0103fdc:	e7 0a                	out    0xa,eax
c0103fde:	10 c0                	adc    al,al
c0103fe0:	0a 0b                	or     cl,BYTE PTR [ebx]
c0103fe2:	10 c0                	adc    al,al
c0103fe4:	2d 0b 10 c0 50       	sub    eax,0x50c0100b
c0103fe9:	0b 10                	or     edx,DWORD PTR [eax]
c0103feb:	c0                   	(bad)  
c0103fec:	73 0b                	jae    c0103ff9 <_data+0xb1>
c0103fee:	10 c0                	adc    al,al
c0103ff0:	96                   	xchg   esi,eax
c0103ff1:	0b 10                	or     edx,DWORD PTR [eax]
c0103ff3:	c0 b9 0b 10 c0 dc 0b 	sar    BYTE PTR [ecx-0x233feff5],0xb
c0103ffa:	10 c0                	adc    al,al
c0103ffc:	ff 0b                	dec    DWORD PTR [ebx]
c0103ffe:	10 c0                	adc    al,al
c0104000:	22 0c 10             	and    cl,BYTE PTR [eax+edx*1]
c0104003:	c0 45 0c 10          	rol    BYTE PTR [ebp+0xc],0x10
c0104007:	c0 00 00             	rol    BYTE PTR [eax],0x0

c0104008 <PKnFont>:
	...
c0104218:	00 10                	add    BYTE PTR [eax],dl
c010421a:	10 10                	adc    BYTE PTR [eax],dl
c010421c:	10 10                	adc    BYTE PTR [eax],dl
c010421e:	10 10                	adc    BYTE PTR [eax],dl
c0104220:	10 10                	adc    BYTE PTR [eax],dl
c0104222:	00 00                	add    BYTE PTR [eax],al
c0104224:	10 10                	adc    BYTE PTR [eax],dl
c0104226:	00 00                	add    BYTE PTR [eax],al
c0104228:	28 28                	sub    BYTE PTR [eax],ch
c010422a:	28 00                	sub    BYTE PTR [eax],al
	...
c0104238:	00 44 44 44          	add    BYTE PTR [esp+eax*2+0x44],al
c010423c:	fe 44 44 44          	inc    BYTE PTR [esp+eax*2+0x44]
c0104240:	44                   	inc    esp
c0104241:	44                   	inc    esp
c0104242:	fe 44 44 44          	inc    BYTE PTR [esp+eax*2+0x44]
c0104246:	00 00                	add    BYTE PTR [eax],al
c0104248:	10 3a                	adc    BYTE PTR [edx],bh
c010424a:	56                   	push   esi
c010424b:	92                   	xchg   edx,eax
c010424c:	92                   	xchg   edx,eax
c010424d:	90                   	nop
c010424e:	50                   	push   eax
c010424f:	38 14 12             	cmp    BYTE PTR [edx+edx*1],dl
c0104252:	92                   	xchg   edx,eax
c0104253:	92                   	xchg   edx,eax
c0104254:	d4 b8                	aam    0xb8
c0104256:	10 10                	adc    BYTE PTR [eax],dl
c0104258:	62 92 94 94 68 08    	bound  edx,QWORD PTR [edx+0x8689494]
c010425e:	10 10                	adc    BYTE PTR [eax],dl
c0104260:	20 2c 52             	and    BYTE PTR [edx+edx*2],ch
c0104263:	52                   	push   edx
c0104264:	92                   	xchg   edx,eax
c0104265:	8c 00                	mov    WORD PTR [eax],es
c0104267:	00 00                	add    BYTE PTR [eax],al
c0104269:	70 88                	jo     c01041f3 <PKnFont+0x1eb>
c010426b:	88 88 90 60 47 a2    	mov    BYTE PTR [eax-0x5db89f70],cl
c0104271:	92                   	xchg   edx,eax
c0104272:	8a 84 46 39 00 00 04 	mov    al,BYTE PTR [esi+eax*2+0x4000039]
c0104279:	08 10                	or     BYTE PTR [eax],dl
	...
c0104287:	00 02                	add    BYTE PTR [edx],al
c0104289:	04 08                	add    al,0x8
c010428b:	08 10                	or     BYTE PTR [eax],dl
c010428d:	10 10                	adc    BYTE PTR [eax],dl
c010428f:	10 10                	adc    BYTE PTR [eax],dl
c0104291:	10 10                	adc    BYTE PTR [eax],dl
c0104293:	08 08                	or     BYTE PTR [eax],cl
c0104295:	04 02                	add    al,0x2
c0104297:	00 80 40 20 20 10    	add    BYTE PTR [eax+0x10202040],al
c010429d:	10 10                	adc    BYTE PTR [eax],dl
c010429f:	10 10                	adc    BYTE PTR [eax],dl
c01042a1:	10 10                	adc    BYTE PTR [eax],dl
c01042a3:	20 20                	and    BYTE PTR [eax],ah
c01042a5:	40                   	inc    eax
c01042a6:	80 00 00             	add    BYTE PTR [eax],0x0
c01042a9:	00 00                	add    BYTE PTR [eax],al
c01042ab:	00 00                	add    BYTE PTR [eax],al
c01042ad:	10 92 54 38 54 92    	adc    BYTE PTR [edx-0x6dabc7ac],dl
c01042b3:	10 00                	adc    BYTE PTR [eax],al
	...
c01042bd:	10 10                	adc    BYTE PTR [eax],dl
c01042bf:	10 fe                	adc    dh,bh
c01042c1:	10 10                	adc    BYTE PTR [eax],dl
c01042c3:	10 00                	adc    BYTE PTR [eax],al
	...
c01042d1:	00 00                	add    BYTE PTR [eax],al
c01042d3:	18 18                	sbb    BYTE PTR [eax],bl
c01042d5:	08 08                	or     BYTE PTR [eax],cl
c01042d7:	10 00                	adc    BYTE PTR [eax],al
c01042d9:	00 00                	add    BYTE PTR [eax],al
c01042db:	00 00                	add    BYTE PTR [eax],al
c01042dd:	00 00                	add    BYTE PTR [eax],al
c01042df:	00 fe                	add    dh,bh
	...
c01042f1:	00 00                	add    BYTE PTR [eax],al
c01042f3:	00 18                	add    BYTE PTR [eax],bl
c01042f5:	18 00                	sbb    BYTE PTR [eax],al
c01042f7:	00 02                	add    BYTE PTR [edx],al
c01042f9:	02 04 04             	add    al,BYTE PTR [esp+eax*1]
c01042fc:	08 08                	or     BYTE PTR [eax],cl
c01042fe:	08 10                	or     BYTE PTR [eax],dl
c0104300:	10 20                	adc    BYTE PTR [eax],ah
c0104302:	20 40 40             	and    BYTE PTR [eax+0x40],al
c0104305:	40                   	inc    eax
c0104306:	80 80 00 18 24 24 42 	add    BYTE PTR [eax+0x24241800],0x42
c010430d:	42                   	inc    edx
c010430e:	42                   	inc    edx
c010430f:	42                   	inc    edx
c0104310:	42                   	inc    edx
c0104311:	42                   	inc    edx
c0104312:	42                   	inc    edx
c0104313:	24 24                	and    al,0x24
c0104315:	18 00                	sbb    BYTE PTR [eax],al
c0104317:	00 00                	add    BYTE PTR [eax],al
c0104319:	08 18                	or     BYTE PTR [eax],bl
c010431b:	28 08                	sub    BYTE PTR [eax],cl
c010431d:	08 08                	or     BYTE PTR [eax],cl
c010431f:	08 08                	or     BYTE PTR [eax],cl
c0104321:	08 08                	or     BYTE PTR [eax],cl
c0104323:	08 08                	or     BYTE PTR [eax],cl
c0104325:	3e 00 00             	add    BYTE PTR ds:[eax],al
c0104328:	00 18                	add    BYTE PTR [eax],bl
c010432a:	24 42                	and    al,0x42
c010432c:	42                   	inc    edx
c010432d:	02 04 08             	add    al,BYTE PTR [eax+ecx*1]
c0104330:	10 20                	adc    BYTE PTR [eax],ah
c0104332:	20 40 40             	and    BYTE PTR [eax+0x40],al
c0104335:	7e 00                	jle    c0104337 <PKnFont+0x32f>
c0104337:	00 00                	add    BYTE PTR [eax],al
c0104339:	18 24 42             	sbb    BYTE PTR [edx+eax*2],ah
c010433c:	02 02                	add    al,BYTE PTR [edx]
c010433e:	04 18                	add    al,0x18
c0104340:	04 02                	add    al,0x2
c0104342:	02 42 24             	add    al,BYTE PTR [edx+0x24]
c0104345:	18 00                	sbb    BYTE PTR [eax],al
c0104347:	00 00                	add    BYTE PTR [eax],al
c0104349:	0c 0c                	or     al,0xc
c010434b:	0c 14                	or     al,0x14
c010434d:	14 14                	adc    al,0x14
c010434f:	24 24                	and    al,0x24
c0104351:	44                   	inc    esp
c0104352:	7e 04                	jle    c0104358 <PKnFont+0x350>
c0104354:	04 1e                	add    al,0x1e
c0104356:	00 00                	add    BYTE PTR [eax],al
c0104358:	00 7c 40 40          	add    BYTE PTR [eax+eax*2+0x40],bh
c010435c:	40                   	inc    eax
c010435d:	58                   	pop    eax
c010435e:	64 02 02             	add    al,BYTE PTR fs:[edx]
c0104361:	02 02                	add    al,BYTE PTR [edx]
c0104363:	42                   	inc    edx
c0104364:	24 18                	and    al,0x18
c0104366:	00 00                	add    BYTE PTR [eax],al
c0104368:	00 18                	add    BYTE PTR [eax],bl
c010436a:	24 42                	and    al,0x42
c010436c:	40                   	inc    eax
c010436d:	58                   	pop    eax
c010436e:	64 42                	fs inc edx
c0104370:	42                   	inc    edx
c0104371:	42                   	inc    edx
c0104372:	42                   	inc    edx
c0104373:	42                   	inc    edx
c0104374:	24 18                	and    al,0x18
c0104376:	00 00                	add    BYTE PTR [eax],al
c0104378:	00 7e 42             	add    BYTE PTR [esi+0x42],bh
c010437b:	42                   	inc    edx
c010437c:	04 04                	add    al,0x4
c010437e:	08 08                	or     BYTE PTR [eax],cl
c0104380:	08 10                	or     BYTE PTR [eax],dl
c0104382:	10 10                	adc    BYTE PTR [eax],dl
c0104384:	10 38                	adc    BYTE PTR [eax],bh
c0104386:	00 00                	add    BYTE PTR [eax],al
c0104388:	00 18                	add    BYTE PTR [eax],bl
c010438a:	24 42                	and    al,0x42
c010438c:	42                   	inc    edx
c010438d:	42                   	inc    edx
c010438e:	24 18                	and    al,0x18
c0104390:	24 42                	and    al,0x42
c0104392:	42                   	inc    edx
c0104393:	42                   	inc    edx
c0104394:	24 18                	and    al,0x18
c0104396:	00 00                	add    BYTE PTR [eax],al
c0104398:	00 18                	add    BYTE PTR [eax],bl
c010439a:	24 42                	and    al,0x42
c010439c:	42                   	inc    edx
c010439d:	42                   	inc    edx
c010439e:	42                   	inc    edx
c010439f:	42                   	inc    edx
c01043a0:	26 1a 02             	sbb    al,BYTE PTR es:[edx]
c01043a3:	42                   	inc    edx
c01043a4:	24 18                	and    al,0x18
c01043a6:	00 00                	add    BYTE PTR [eax],al
c01043a8:	00 00                	add    BYTE PTR [eax],al
c01043aa:	00 00                	add    BYTE PTR [eax],al
c01043ac:	00 18                	add    BYTE PTR [eax],bl
c01043ae:	18 00                	sbb    BYTE PTR [eax],al
c01043b0:	00 00                	add    BYTE PTR [eax],al
c01043b2:	00 00                	add    BYTE PTR [eax],al
c01043b4:	18 18                	sbb    BYTE PTR [eax],bl
c01043b6:	00 00                	add    BYTE PTR [eax],al
c01043b8:	00 00                	add    BYTE PTR [eax],al
c01043ba:	00 00                	add    BYTE PTR [eax],al
c01043bc:	00 18                	add    BYTE PTR [eax],bl
c01043be:	18 00                	sbb    BYTE PTR [eax],al
c01043c0:	00 00                	add    BYTE PTR [eax],al
c01043c2:	00 18                	add    BYTE PTR [eax],bl
c01043c4:	18 08                	sbb    BYTE PTR [eax],cl
c01043c6:	08 10                	or     BYTE PTR [eax],dl
c01043c8:	00 02                	add    BYTE PTR [edx],al
c01043ca:	04 08                	add    al,0x8
c01043cc:	10 20                	adc    BYTE PTR [eax],ah
c01043ce:	40                   	inc    eax
c01043cf:	80 80 40 20 10 08 04 	add    BYTE PTR [eax+0x8102040],0x4
c01043d6:	02 00                	add    al,BYTE PTR [eax]
c01043d8:	00 00                	add    BYTE PTR [eax],al
c01043da:	00 00                	add    BYTE PTR [eax],al
c01043dc:	00 00                	add    BYTE PTR [eax],al
c01043de:	fe 00                	inc    BYTE PTR [eax]
c01043e0:	00 fe                	add    dh,bh
c01043e2:	00 00                	add    BYTE PTR [eax],al
c01043e4:	00 00                	add    BYTE PTR [eax],al
c01043e6:	00 00                	add    BYTE PTR [eax],al
c01043e8:	00 80 40 20 10 08    	add    BYTE PTR [eax+0x8102040],al
c01043ee:	04 02                	add    al,0x2
c01043f0:	02 04 08             	add    al,BYTE PTR [eax+ecx*1]
c01043f3:	10 20                	adc    BYTE PTR [eax],ah
c01043f5:	40                   	inc    eax
c01043f6:	80 00 00             	add    BYTE PTR [eax],0x0
c01043f9:	38 44 82 82          	cmp    BYTE PTR [edx+eax*4-0x7e],al
c01043fd:	82                   	(bad)  
c01043fe:	04 08                	add    al,0x8
c0104400:	10 10                	adc    BYTE PTR [eax],dl
c0104402:	00 00                	add    BYTE PTR [eax],al
c0104404:	18 18                	sbb    BYTE PTR [eax],bl
c0104406:	00 00                	add    BYTE PTR [eax],al
c0104408:	00 38                	add    BYTE PTR [eax],bh
c010440a:	44                   	inc    esp
c010440b:	82                   	(bad)  
c010440c:	9a aa aa aa aa aa 9c 	call   0x9caa:0xaaaaaaaa
c0104413:	80 46 38 00          	add    BYTE PTR [esi+0x38],0x0
c0104417:	00 00                	add    BYTE PTR [eax],al
c0104419:	18 18                	sbb    BYTE PTR [eax],bl
c010441b:	18 18                	sbb    BYTE PTR [eax],bl
c010441d:	24 24                	and    al,0x24
c010441f:	24 24                	and    al,0x24
c0104421:	7e 42                	jle    c0104465 <PKnFont+0x45d>
c0104423:	42                   	inc    edx
c0104424:	42                   	inc    edx
c0104425:	e7 00                	out    0x0,eax
c0104427:	00 00                	add    BYTE PTR [eax],al
c0104429:	f0 48                	lock dec eax
c010442b:	44                   	inc    esp
c010442c:	44                   	inc    esp
c010442d:	44                   	inc    esp
c010442e:	48                   	dec    eax
c010442f:	78 44                	js     c0104475 <PKnFont+0x46d>
c0104431:	42                   	inc    edx
c0104432:	42                   	inc    edx
c0104433:	42                   	inc    edx
c0104434:	44                   	inc    esp
c0104435:	f8                   	clc    
c0104436:	00 00                	add    BYTE PTR [eax],al
c0104438:	00 3a                	add    BYTE PTR [edx],bh
c010443a:	46                   	inc    esi
c010443b:	42                   	inc    edx
c010443c:	82                   	(bad)  
c010443d:	80 80 80 80 80 82 42 	add    BYTE PTR [eax-0x7d7f7f80],0x42
c0104444:	44                   	inc    esp
c0104445:	38 00                	cmp    BYTE PTR [eax],al
c0104447:	00 00                	add    BYTE PTR [eax],al
c0104449:	f8                   	clc    
c010444a:	44                   	inc    esp
c010444b:	44                   	inc    esp
c010444c:	42                   	inc    edx
c010444d:	42                   	inc    edx
c010444e:	42                   	inc    edx
c010444f:	42                   	inc    edx
c0104450:	42                   	inc    edx
c0104451:	42                   	inc    edx
c0104452:	42                   	inc    edx
c0104453:	44                   	inc    esp
c0104454:	44                   	inc    esp
c0104455:	f8                   	clc    
c0104456:	00 00                	add    BYTE PTR [eax],al
c0104458:	00 fe                	add    dh,bh
c010445a:	42                   	inc    edx
c010445b:	42                   	inc    edx
c010445c:	40                   	inc    eax
c010445d:	40                   	inc    eax
c010445e:	44                   	inc    esp
c010445f:	7c 44                	jl     c01044a5 <PKnFont+0x49d>
c0104461:	40                   	inc    eax
c0104462:	40                   	inc    eax
c0104463:	42                   	inc    edx
c0104464:	42                   	inc    edx
c0104465:	fe 00                	inc    BYTE PTR [eax]
c0104467:	00 00                	add    BYTE PTR [eax],al
c0104469:	fe 42 42             	inc    BYTE PTR [edx+0x42]
c010446c:	40                   	inc    eax
c010446d:	40                   	inc    eax
c010446e:	44                   	inc    esp
c010446f:	7c 44                	jl     c01044b5 <PKnFont+0x4ad>
c0104471:	44                   	inc    esp
c0104472:	40                   	inc    eax
c0104473:	40                   	inc    eax
c0104474:	40                   	inc    eax
c0104475:	f0 00 00             	lock add BYTE PTR [eax],al
c0104478:	00 3a                	add    BYTE PTR [edx],bh
c010447a:	46                   	inc    esi
c010447b:	42                   	inc    edx
c010447c:	82                   	(bad)  
c010447d:	80 80 9e 82 82 82 42 	add    BYTE PTR [eax-0x7d7d7d62],0x42
c0104484:	46                   	inc    esi
c0104485:	38 00                	cmp    BYTE PTR [eax],al
c0104487:	00 00                	add    BYTE PTR [eax],al
c0104489:	e7 42                	out    0x42,eax
c010448b:	42                   	inc    edx
c010448c:	42                   	inc    edx
c010448d:	42                   	inc    edx
c010448e:	42                   	inc    edx
c010448f:	7e 42                	jle    c01044d3 <PKnFont+0x4cb>
c0104491:	42                   	inc    edx
c0104492:	42                   	inc    edx
c0104493:	42                   	inc    edx
c0104494:	42                   	inc    edx
c0104495:	e7 00                	out    0x0,eax
c0104497:	00 00                	add    BYTE PTR [eax],al
c0104499:	7c 10                	jl     c01044ab <PKnFont+0x4a3>
c010449b:	10 10                	adc    BYTE PTR [eax],dl
c010449d:	10 10                	adc    BYTE PTR [eax],dl
c010449f:	10 10                	adc    BYTE PTR [eax],dl
c01044a1:	10 10                	adc    BYTE PTR [eax],dl
c01044a3:	10 10                	adc    BYTE PTR [eax],dl
c01044a5:	7c 00                	jl     c01044a7 <PKnFont+0x49f>
c01044a7:	00 00                	add    BYTE PTR [eax],al
c01044a9:	1f                   	pop    ds
c01044aa:	04 04                	add    al,0x4
c01044ac:	04 04                	add    al,0x4
c01044ae:	04 04                	add    al,0x4
c01044b0:	04 04                	add    al,0x4
c01044b2:	04 04                	add    al,0x4
c01044b4:	84 48 30             	test   BYTE PTR [eax+0x30],cl
c01044b7:	00 00                	add    BYTE PTR [eax],al
c01044b9:	e7 42                	out    0x42,eax
c01044bb:	44                   	inc    esp
c01044bc:	48                   	dec    eax
c01044bd:	50                   	push   eax
c01044be:	50                   	push   eax
c01044bf:	60                   	pusha  
c01044c0:	50                   	push   eax
c01044c1:	50                   	push   eax
c01044c2:	48                   	dec    eax
c01044c3:	44                   	inc    esp
c01044c4:	42                   	inc    edx
c01044c5:	e7 00                	out    0x0,eax
c01044c7:	00 00                	add    BYTE PTR [eax],al
c01044c9:	f0 40                	lock inc eax
c01044cb:	40                   	inc    eax
c01044cc:	40                   	inc    eax
c01044cd:	40                   	inc    eax
c01044ce:	40                   	inc    eax
c01044cf:	40                   	inc    eax
c01044d0:	40                   	inc    eax
c01044d1:	40                   	inc    eax
c01044d2:	40                   	inc    eax
c01044d3:	42                   	inc    edx
c01044d4:	42                   	inc    edx
c01044d5:	fe 00                	inc    BYTE PTR [eax]
c01044d7:	00 00                	add    BYTE PTR [eax],al
c01044d9:	c3                   	ret    
c01044da:	42                   	inc    edx
c01044db:	66 66 66 5a          	data16 data16 pop dx
c01044df:	5a                   	pop    edx
c01044e0:	5a                   	pop    edx
c01044e1:	42                   	inc    edx
c01044e2:	42                   	inc    edx
c01044e3:	42                   	inc    edx
c01044e4:	42                   	inc    edx
c01044e5:	e7 00                	out    0x0,eax
c01044e7:	00 00                	add    BYTE PTR [eax],al
c01044e9:	c7 42 62 62 52 52 52 	mov    DWORD PTR [edx+0x62],0x52525262
c01044f0:	4a                   	dec    edx
c01044f1:	4a                   	dec    edx
c01044f2:	4a                   	dec    edx
c01044f3:	46                   	inc    esi
c01044f4:	46                   	inc    esi
c01044f5:	e2 00                	loop   c01044f7 <PKnFont+0x4ef>
c01044f7:	00 00                	add    BYTE PTR [eax],al
c01044f9:	38 44 82 82          	cmp    BYTE PTR [edx+eax*4-0x7e],al
c01044fd:	82                   	(bad)  
c01044fe:	82                   	(bad)  
c01044ff:	82                   	(bad)  
c0104500:	82                   	(bad)  
c0104501:	82                   	(bad)  
c0104502:	82                   	(bad)  
c0104503:	82                   	(bad)  
c0104504:	44                   	inc    esp
c0104505:	38 00                	cmp    BYTE PTR [eax],al
c0104507:	00 00                	add    BYTE PTR [eax],al
c0104509:	f8                   	clc    
c010450a:	44                   	inc    esp
c010450b:	42                   	inc    edx
c010450c:	42                   	inc    edx
c010450d:	42                   	inc    edx
c010450e:	44                   	inc    esp
c010450f:	78 40                	js     c0104551 <PKnFont+0x549>
c0104511:	40                   	inc    eax
c0104512:	40                   	inc    eax
c0104513:	40                   	inc    eax
c0104514:	40                   	inc    eax
c0104515:	f0 00 00             	lock add BYTE PTR [eax],al
c0104518:	00 38                	add    BYTE PTR [eax],bh
c010451a:	44                   	inc    esp
c010451b:	82                   	(bad)  
c010451c:	82                   	(bad)  
c010451d:	82                   	(bad)  
c010451e:	82                   	(bad)  
c010451f:	82                   	(bad)  
c0104520:	82                   	(bad)  
c0104521:	82                   	(bad)  
c0104522:	92                   	xchg   edx,eax
c0104523:	8a 44 3a 00          	mov    al,BYTE PTR [edx+edi*1+0x0]
c0104527:	00 00                	add    BYTE PTR [eax],al
c0104529:	fc                   	cld    
c010452a:	42                   	inc    edx
c010452b:	42                   	inc    edx
c010452c:	42                   	inc    edx
c010452d:	42                   	inc    edx
c010452e:	7c 44                	jl     c0104574 <PKnFont+0x56c>
c0104530:	42                   	inc    edx
c0104531:	42                   	inc    edx
c0104532:	42                   	inc    edx
c0104533:	42                   	inc    edx
c0104534:	42                   	inc    edx
c0104535:	e7 00                	out    0x0,eax
c0104537:	00 00                	add    BYTE PTR [eax],al
c0104539:	3a 46 82             	cmp    al,BYTE PTR [esi-0x7e]
c010453c:	82                   	(bad)  
c010453d:	80 40 38 04          	add    BYTE PTR [eax+0x38],0x4
c0104541:	02 82 82 c4 b8 00    	add    al,BYTE PTR [edx+0xb8c482]
c0104547:	00 00                	add    BYTE PTR [eax],al
c0104549:	fe                   	(bad)  
c010454a:	92                   	xchg   edx,eax
c010454b:	92                   	xchg   edx,eax
c010454c:	10 10                	adc    BYTE PTR [eax],dl
c010454e:	10 10                	adc    BYTE PTR [eax],dl
c0104550:	10 10                	adc    BYTE PTR [eax],dl
c0104552:	10 10                	adc    BYTE PTR [eax],dl
c0104554:	10 7c 00 00          	adc    BYTE PTR [eax+eax*1+0x0],bh
c0104558:	00 e7                	add    bh,ah
c010455a:	42                   	inc    edx
c010455b:	42                   	inc    edx
c010455c:	42                   	inc    edx
c010455d:	42                   	inc    edx
c010455e:	42                   	inc    edx
c010455f:	42                   	inc    edx
c0104560:	42                   	inc    edx
c0104561:	42                   	inc    edx
c0104562:	42                   	inc    edx
c0104563:	42                   	inc    edx
c0104564:	24 3c                	and    al,0x3c
c0104566:	00 00                	add    BYTE PTR [eax],al
c0104568:	00 e7                	add    bh,ah
c010456a:	42                   	inc    edx
c010456b:	42                   	inc    edx
c010456c:	42                   	inc    edx
c010456d:	42                   	inc    edx
c010456e:	24 24                	and    al,0x24
c0104570:	24 24                	and    al,0x24
c0104572:	18 18                	sbb    BYTE PTR [eax],bl
c0104574:	18 18                	sbb    BYTE PTR [eax],bl
c0104576:	00 00                	add    BYTE PTR [eax],al
c0104578:	00 e7                	add    bh,ah
c010457a:	42                   	inc    edx
c010457b:	42                   	inc    edx
c010457c:	42                   	inc    edx
c010457d:	5a                   	pop    edx
c010457e:	5a                   	pop    edx
c010457f:	5a                   	pop    edx
c0104580:	5a                   	pop    edx
c0104581:	24 24                	and    al,0x24
c0104583:	24 24                	and    al,0x24
c0104585:	24 00                	and    al,0x0
c0104587:	00 00                	add    BYTE PTR [eax],al
c0104589:	e7 42                	out    0x42,eax
c010458b:	42                   	inc    edx
c010458c:	24 24                	and    al,0x24
c010458e:	24 18                	and    al,0x18
c0104590:	24 24                	and    al,0x24
c0104592:	24 42                	and    al,0x42
c0104594:	42                   	inc    edx
c0104595:	e7 00                	out    0x0,eax
c0104597:	00 00                	add    BYTE PTR [eax],al
c0104599:	ee                   	out    dx,al
c010459a:	44                   	inc    esp
c010459b:	44                   	inc    esp
c010459c:	44                   	inc    esp
c010459d:	28 28                	sub    BYTE PTR [eax],ch
c010459f:	28 10                	sub    BYTE PTR [eax],dl
c01045a1:	10 10                	adc    BYTE PTR [eax],dl
c01045a3:	10 10                	adc    BYTE PTR [eax],dl
c01045a5:	7c 00                	jl     c01045a7 <PKnFont+0x59f>
c01045a7:	00 00                	add    BYTE PTR [eax],al
c01045a9:	fe 84 84 08 08 10 10 	inc    BYTE PTR [esp+eax*4+0x10100808]
c01045b0:	20 20                	and    BYTE PTR [eax],ah
c01045b2:	40                   	inc    eax
c01045b3:	42                   	inc    edx
c01045b4:	82                   	(bad)  
c01045b5:	fe 00                	inc    BYTE PTR [eax]
c01045b7:	00 00                	add    BYTE PTR [eax],al
c01045b9:	3e 20 20             	and    BYTE PTR ds:[eax],ah
c01045bc:	20 20                	and    BYTE PTR [eax],ah
c01045be:	20 20                	and    BYTE PTR [eax],ah
c01045c0:	20 20                	and    BYTE PTR [eax],ah
c01045c2:	20 20                	and    BYTE PTR [eax],ah
c01045c4:	20 20                	and    BYTE PTR [eax],ah
c01045c6:	3e 00 80 80 40 40 20 	add    BYTE PTR ds:[eax+0x20404080],al
c01045cd:	20 20                	and    BYTE PTR [eax],ah
c01045cf:	10 10                	adc    BYTE PTR [eax],dl
c01045d1:	08 08                	or     BYTE PTR [eax],cl
c01045d3:	04 04                	add    al,0x4
c01045d5:	04 02                	add    al,0x2
c01045d7:	02 00                	add    al,BYTE PTR [eax]
c01045d9:	7c 04                	jl     c01045df <PKnFont+0x5d7>
c01045db:	04 04                	add    al,0x4
c01045dd:	04 04                	add    al,0x4
c01045df:	04 04                	add    al,0x4
c01045e1:	04 04                	add    al,0x4
c01045e3:	04 04                	add    al,0x4
c01045e5:	04 7c                	add    al,0x7c
c01045e7:	00 00                	add    BYTE PTR [eax],al
c01045e9:	10 28                	adc    BYTE PTR [eax],ch
c01045eb:	44                   	inc    esp
c01045ec:	82                   	(bad)  
	...
c0104605:	00 fe                	add    dh,bh
c0104607:	00 10                	add    BYTE PTR [eax],dl
c0104609:	08 04 00             	or     BYTE PTR [eax+eax*1],al
	...
c010461c:	00 70 08             	add    BYTE PTR [eax+0x8],dh
c010461f:	04 3c                	add    al,0x3c
c0104621:	44                   	inc    esp
c0104622:	84 84 8c 76 00 00 c0 	test   BYTE PTR [esp+ecx*4-0x3fffff8a],al
c0104629:	40                   	inc    eax
c010462a:	40                   	inc    eax
c010462b:	40                   	inc    eax
c010462c:	40                   	inc    eax
c010462d:	58                   	pop    eax
c010462e:	64 42                	fs inc edx
c0104630:	42                   	inc    edx
c0104631:	42                   	inc    edx
c0104632:	42                   	inc    edx
c0104633:	42                   	inc    edx
c0104634:	64 58                	fs pop eax
c0104636:	00 00                	add    BYTE PTR [eax],al
c0104638:	00 00                	add    BYTE PTR [eax],al
c010463a:	00 00                	add    BYTE PTR [eax],al
c010463c:	00 30                	add    BYTE PTR [eax],dh
c010463e:	4c                   	dec    esp
c010463f:	84 84 80 80 82 44 38 	test   BYTE PTR [eax+eax*4+0x38448280],al
c0104646:	00 00                	add    BYTE PTR [eax],al
c0104648:	0c 04                	or     al,0x4
c010464a:	04 04                	add    al,0x4
c010464c:	04 34                	add    al,0x34
c010464e:	4c                   	dec    esp
c010464f:	84 84 84 84 84 4c 36 	test   BYTE PTR [esp+eax*4+0x364c8484],al
c0104656:	00 00                	add    BYTE PTR [eax],al
c0104658:	00 00                	add    BYTE PTR [eax],al
c010465a:	00 00                	add    BYTE PTR [eax],al
c010465c:	00 38                	add    BYTE PTR [eax],bh
c010465e:	44                   	inc    esp
c010465f:	82                   	(bad)  
c0104660:	82                   	(bad)  
c0104661:	fc                   	cld    
c0104662:	80 82 42 3c 00 00 0e 	add    BYTE PTR [edx+0x3c42],0xe
c0104669:	10 10                	adc    BYTE PTR [eax],dl
c010466b:	10 10                	adc    BYTE PTR [eax],dl
c010466d:	7c 10                	jl     c010467f <PKnFont+0x677>
c010466f:	10 10                	adc    BYTE PTR [eax],dl
c0104671:	10 10                	adc    BYTE PTR [eax],dl
c0104673:	10 10                	adc    BYTE PTR [eax],dl
c0104675:	7c 00                	jl     c0104677 <PKnFont+0x66f>
c0104677:	00 00                	add    BYTE PTR [eax],al
c0104679:	00 00                	add    BYTE PTR [eax],al
c010467b:	00 00                	add    BYTE PTR [eax],al
c010467d:	36 4c                	ss dec esp
c010467f:	84 84 84 84 4c 34 04 	test   BYTE PTR [esp+eax*4+0x4344c84],al
c0104686:	04 38                	add    al,0x38
c0104688:	c0 40 40 40          	rol    BYTE PTR [eax+0x40],0x40
c010468c:	40                   	inc    eax
c010468d:	58                   	pop    eax
c010468e:	64 42                	fs inc edx
c0104690:	42                   	inc    edx
c0104691:	42                   	inc    edx
c0104692:	42                   	inc    edx
c0104693:	42                   	inc    edx
c0104694:	42                   	inc    edx
c0104695:	e3 00                	jecxz  c0104697 <PKnFont+0x68f>
c0104697:	00 00                	add    BYTE PTR [eax],al
c0104699:	10 10                	adc    BYTE PTR [eax],dl
c010469b:	00 00                	add    BYTE PTR [eax],al
c010469d:	30 10                	xor    BYTE PTR [eax],dl
c010469f:	10 10                	adc    BYTE PTR [eax],dl
c01046a1:	10 10                	adc    BYTE PTR [eax],dl
c01046a3:	10 10                	adc    BYTE PTR [eax],dl
c01046a5:	38 00                	cmp    BYTE PTR [eax],al
c01046a7:	00 00                	add    BYTE PTR [eax],al
c01046a9:	04 04                	add    al,0x4
c01046ab:	00 00                	add    BYTE PTR [eax],al
c01046ad:	0c 04                	or     al,0x4
c01046af:	04 04                	add    al,0x4
c01046b1:	04 04                	add    al,0x4
c01046b3:	04 04                	add    al,0x4
c01046b5:	08 08                	or     BYTE PTR [eax],cl
c01046b7:	30 c0                	xor    al,al
c01046b9:	40                   	inc    eax
c01046ba:	40                   	inc    eax
c01046bb:	40                   	inc    eax
c01046bc:	40                   	inc    eax
c01046bd:	4e                   	dec    esi
c01046be:	44                   	inc    esp
c01046bf:	48                   	dec    eax
c01046c0:	50                   	push   eax
c01046c1:	60                   	pusha  
c01046c2:	50                   	push   eax
c01046c3:	48                   	dec    eax
c01046c4:	44                   	inc    esp
c01046c5:	e6 00                	out    0x0,al
c01046c7:	00 30                	add    BYTE PTR [eax],dh
c01046c9:	10 10                	adc    BYTE PTR [eax],dl
c01046cb:	10 10                	adc    BYTE PTR [eax],dl
c01046cd:	10 10                	adc    BYTE PTR [eax],dl
c01046cf:	10 10                	adc    BYTE PTR [eax],dl
c01046d1:	10 10                	adc    BYTE PTR [eax],dl
c01046d3:	10 10                	adc    BYTE PTR [eax],dl
c01046d5:	38 00                	cmp    BYTE PTR [eax],al
c01046d7:	00 00                	add    BYTE PTR [eax],al
c01046d9:	00 00                	add    BYTE PTR [eax],al
c01046db:	00 00                	add    BYTE PTR [eax],al
c01046dd:	f6                   	(bad)  
c01046de:	49                   	dec    ecx
c01046df:	49                   	dec    ecx
c01046e0:	49                   	dec    ecx
c01046e1:	49                   	dec    ecx
c01046e2:	49                   	dec    ecx
c01046e3:	49                   	dec    ecx
c01046e4:	49                   	dec    ecx
c01046e5:	db 00                	fild   DWORD PTR [eax]
c01046e7:	00 00                	add    BYTE PTR [eax],al
c01046e9:	00 00                	add    BYTE PTR [eax],al
c01046eb:	00 00                	add    BYTE PTR [eax],al
c01046ed:	d8 64 42 42          	fsub   DWORD PTR [edx+eax*2+0x42]
c01046f1:	42                   	inc    edx
c01046f2:	42                   	inc    edx
c01046f3:	42                   	inc    edx
c01046f4:	42                   	inc    edx
c01046f5:	e3 00                	jecxz  c01046f7 <PKnFont+0x6ef>
c01046f7:	00 00                	add    BYTE PTR [eax],al
c01046f9:	00 00                	add    BYTE PTR [eax],al
c01046fb:	00 00                	add    BYTE PTR [eax],al
c01046fd:	38 44 82 82          	cmp    BYTE PTR [edx+eax*4-0x7e],al
c0104701:	82                   	(bad)  
c0104702:	82                   	(bad)  
c0104703:	82                   	(bad)  
c0104704:	44                   	inc    esp
c0104705:	38 00                	cmp    BYTE PTR [eax],al
c0104707:	00 00                	add    BYTE PTR [eax],al
c0104709:	00 00                	add    BYTE PTR [eax],al
c010470b:	00 d8                	add    al,bl
c010470d:	64 42                	fs inc edx
c010470f:	42                   	inc    edx
c0104710:	42                   	inc    edx
c0104711:	42                   	inc    edx
c0104712:	42                   	inc    edx
c0104713:	64 58                	fs pop eax
c0104715:	40                   	inc    eax
c0104716:	40                   	inc    eax
c0104717:	e0 00                	loopne c0104719 <PKnFont+0x711>
c0104719:	00 00                	add    BYTE PTR [eax],al
c010471b:	00 34 4c             	add    BYTE PTR [esp+ecx*2],dh
c010471e:	84 84 84 84 84 4c 34 	test   BYTE PTR [esp+eax*4+0x344c8484],al
c0104725:	04 04                	add    al,0x4
c0104727:	0e                   	push   cs
c0104728:	00 00                	add    BYTE PTR [eax],al
c010472a:	00 00                	add    BYTE PTR [eax],al
c010472c:	00 dc                	add    ah,bl
c010472e:	62 42 40             	bound  eax,QWORD PTR [edx+0x40]
c0104731:	40                   	inc    eax
c0104732:	40                   	inc    eax
c0104733:	40                   	inc    eax
c0104734:	40                   	inc    eax
c0104735:	e0 00                	loopne c0104737 <PKnFont+0x72f>
c0104737:	00 00                	add    BYTE PTR [eax],al
c0104739:	00 00                	add    BYTE PTR [eax],al
c010473b:	00 00                	add    BYTE PTR [eax],al
c010473d:	7a 86                	jp     c01046c5 <PKnFont+0x6bd>
c010473f:	82                   	(bad)  
c0104740:	c0 38 06             	sar    BYTE PTR [eax],0x6
c0104743:	82                   	(bad)  
c0104744:	c2 bc 00             	ret    0xbc
c0104747:	00 00                	add    BYTE PTR [eax],al
c0104749:	00 10                	add    BYTE PTR [eax],dl
c010474b:	10 10                	adc    BYTE PTR [eax],dl
c010474d:	7c 10                	jl     c010475f <PKnFont+0x757>
c010474f:	10 10                	adc    BYTE PTR [eax],dl
c0104751:	10 10                	adc    BYTE PTR [eax],dl
c0104753:	10 10                	adc    BYTE PTR [eax],dl
c0104755:	0e                   	push   cs
c0104756:	00 00                	add    BYTE PTR [eax],al
c0104758:	00 00                	add    BYTE PTR [eax],al
c010475a:	00 00                	add    BYTE PTR [eax],al
c010475c:	00 c6                	add    dh,al
c010475e:	42                   	inc    edx
c010475f:	42                   	inc    edx
c0104760:	42                   	inc    edx
c0104761:	42                   	inc    edx
c0104762:	42                   	inc    edx
c0104763:	42                   	inc    edx
c0104764:	46                   	inc    esi
c0104765:	3b 00                	cmp    eax,DWORD PTR [eax]
c0104767:	00 00                	add    BYTE PTR [eax],al
c0104769:	00 00                	add    BYTE PTR [eax],al
c010476b:	00 00                	add    BYTE PTR [eax],al
c010476d:	e7 42                	out    0x42,eax
c010476f:	42                   	inc    edx
c0104770:	42                   	inc    edx
c0104771:	24 24                	and    al,0x24
c0104773:	24 18                	and    al,0x18
c0104775:	18 00                	sbb    BYTE PTR [eax],al
c0104777:	00 00                	add    BYTE PTR [eax],al
c0104779:	00 00                	add    BYTE PTR [eax],al
c010477b:	00 00                	add    BYTE PTR [eax],al
c010477d:	e7 42                	out    0x42,eax
c010477f:	42                   	inc    edx
c0104780:	5a                   	pop    edx
c0104781:	5a                   	pop    edx
c0104782:	5a                   	pop    edx
c0104783:	24 24                	and    al,0x24
c0104785:	24 00                	and    al,0x0
c0104787:	00 00                	add    BYTE PTR [eax],al
c0104789:	00 00                	add    BYTE PTR [eax],al
c010478b:	00 00                	add    BYTE PTR [eax],al
c010478d:	c6 44 28 28 10       	mov    BYTE PTR [eax+ebp*1+0x28],0x10
c0104792:	28 28                	sub    BYTE PTR [eax],ch
c0104794:	44                   	inc    esp
c0104795:	c6 00 00             	mov    BYTE PTR [eax],0x0
c0104798:	00 00                	add    BYTE PTR [eax],al
c010479a:	00 00                	add    BYTE PTR [eax],al
c010479c:	00 e7                	add    bh,ah
c010479e:	42                   	inc    edx
c010479f:	42                   	inc    edx
c01047a0:	24 24                	and    al,0x24
c01047a2:	24 18                	and    al,0x18
c01047a4:	18 10                	sbb    BYTE PTR [eax],dl
c01047a6:	10 60 00             	adc    BYTE PTR [eax+0x0],ah
c01047a9:	00 00                	add    BYTE PTR [eax],al
c01047ab:	00 00                	add    BYTE PTR [eax],al
c01047ad:	fe 82 84 08 10 20    	inc    BYTE PTR [edx+0x20100884]
c01047b3:	42                   	inc    edx
c01047b4:	82                   	(bad)  
c01047b5:	fe 00                	inc    BYTE PTR [eax]
c01047b7:	00 00                	add    BYTE PTR [eax],al
c01047b9:	06                   	push   es
c01047ba:	08 10                	or     BYTE PTR [eax],dl
c01047bc:	10 10                	adc    BYTE PTR [eax],dl
c01047be:	10 60 10             	adc    BYTE PTR [eax+0x10],ah
c01047c1:	10 10                	adc    BYTE PTR [eax],dl
c01047c3:	10 08                	adc    BYTE PTR [eax],cl
c01047c5:	06                   	push   es
c01047c6:	00 00                	add    BYTE PTR [eax],al
c01047c8:	10 10                	adc    BYTE PTR [eax],dl
c01047ca:	10 10                	adc    BYTE PTR [eax],dl
c01047cc:	10 10                	adc    BYTE PTR [eax],dl
c01047ce:	10 10                	adc    BYTE PTR [eax],dl
c01047d0:	10 10                	adc    BYTE PTR [eax],dl
c01047d2:	10 10                	adc    BYTE PTR [eax],dl
c01047d4:	10 10                	adc    BYTE PTR [eax],dl
c01047d6:	10 10                	adc    BYTE PTR [eax],dl
c01047d8:	00 60 10             	add    BYTE PTR [eax+0x10],ah
c01047db:	08 08                	or     BYTE PTR [eax],cl
c01047dd:	08 08                	or     BYTE PTR [eax],cl
c01047df:	06                   	push   es
c01047e0:	08 08                	or     BYTE PTR [eax],cl
c01047e2:	08 08                	or     BYTE PTR [eax],cl
c01047e4:	10 60 00             	adc    BYTE PTR [eax+0x0],ah
c01047e7:	00 00                	add    BYTE PTR [eax],al
c01047e9:	72 8c                	jb     c0104777 <PKnFont+0x76f>
	...

Disassembly of section .eh_frame:

c0105008 <.eh_frame>:
c0105008:	10 00                	adc    BYTE PTR [eax],al
c010500a:	00 00                	add    BYTE PTR [eax],al
c010500c:	00 00                	add    BYTE PTR [eax],al
c010500e:	00 00                	add    BYTE PTR [eax],al
c0105010:	01 00                	add    DWORD PTR [eax],eax
c0105012:	01 7c 08 0c          	add    DWORD PTR [eax+ecx*1+0xc],edi
c0105016:	04 04                	add    al,0x4
c0105018:	88 01                	mov    BYTE PTR [ecx],al
c010501a:	00 00                	add    BYTE PTR [eax],al
c010501c:	14 00                	adc    al,0x0
c010501e:	00 00                	add    BYTE PTR [eax],al
c0105020:	18 00                	sbb    BYTE PTR [eax],al
c0105022:	00 00                	add    BYTE PTR [eax],al
c0105024:	20 00                	and    BYTE PTR [eax],al
c0105026:	10 c0                	adc    al,al
c0105028:	05 00 00 00 41       	add    eax,0x41000000
c010502d:	0e                   	push   cs
c010502e:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0105034:	18 00                	sbb    BYTE PTR [eax],al
c0105036:	00 00                	add    BYTE PTR [eax],al
c0105038:	30 00                	xor    BYTE PTR [eax],al
c010503a:	00 00                	add    BYTE PTR [eax],al
c010503c:	25 00 10 c0 1d       	and    eax,0x1dc01000
c0105041:	00 00                	add    BYTE PTR [eax],al
c0105043:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c0105046:	08 85 02 47 0d 05    	or     BYTE PTR [ebp+0x50d4702],al
c010504c:	41                   	inc    ecx
c010504d:	83 03 00             	add    DWORD PTR [ebx],0x0
c0105050:	18 00                	sbb    BYTE PTR [eax],al
c0105052:	00 00                	add    BYTE PTR [eax],al
c0105054:	4c                   	dec    esp
c0105055:	00 00                	add    BYTE PTR [eax],al
c0105057:	00 42 00             	add    BYTE PTR [edx+0x0],al
c010505a:	10 c0                	adc    al,al
c010505c:	19 00                	sbb    DWORD PTR [eax],eax
c010505e:	00 00                	add    BYTE PTR [eax],al
c0105060:	41                   	inc    ecx
c0105061:	0e                   	push   cs
c0105062:	08 85 02 44 0d 05    	or     BYTE PTR [ebp+0x50d4402],al
c0105068:	46                   	inc    esi
c0105069:	83 03 00             	add    DWORD PTR [ebx],0x0
c010506c:	04 01                	add    al,0x1
c010506e:	00 00                	add    BYTE PTR [eax],al
c0105070:	68 00 00 00 5b       	push   0x5b000000
c0105075:	00 10                	add    BYTE PTR [eax],dl
c0105077:	c0 d2 01             	rcl    dl,0x1
c010507a:	00 00                	add    BYTE PTR [eax],al
c010507c:	41                   	inc    ecx
c010507d:	0e                   	push   cs
c010507e:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0105084:	43                   	inc    ebx
c0105085:	83 05 86 04 87 03 45 	add    DWORD PTR ds:0x3870486,0x45
c010508c:	2e 08 44 2e 0c       	or     BYTE PTR cs:[esi+ebp*1+0xc],al
c0105091:	42                   	inc    edx
c0105092:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c0105096:	00 02                	add    BYTE PTR [edx],al
c0105098:	61                   	popa   
c0105099:	2e 04 04             	cs add al,0x4
c010509c:	01 00                	add    DWORD PTR [eax],eax
c010509e:	00 00                	add    BYTE PTR [eax],al
c01050a0:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c01050a4:	0c 46                	or     al,0x46
c01050a6:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c01050aa:	0c 41                	or     al,0x41
c01050ac:	2e 08 42 2e          	or     BYTE PTR cs:[edx+0x2e],al
c01050b0:	0c 41                	or     al,0x41
c01050b2:	2e 10 4e 2e          	adc    BYTE PTR cs:[esi+0x2e],cl
c01050b6:	04 04                	add    al,0x4
c01050b8:	09 00                	or     DWORD PTR [eax],eax
c01050ba:	00 00                	add    BYTE PTR [eax],al
c01050bc:	2e 08 43 2e          	or     BYTE PTR cs:[ebx+0x2e],al
c01050c0:	0c 41                	or     al,0x41
c01050c2:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c01050c6:	0c 41                	or     al,0x41
c01050c8:	2e 08 42 2e          	or     BYTE PTR cs:[edx+0x2e],al
c01050cc:	0c 42                	or     al,0x42
c01050ce:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c01050d2:	04 04                	add    al,0x4
c01050d4:	08 00                	or     BYTE PTR [eax],al
c01050d6:	00 00                	add    BYTE PTR [eax],al
c01050d8:	2e 08 44 2e 0c       	or     BYTE PTR cs:[esi+ebp*1+0xc],al
c01050dd:	42                   	inc    edx
c01050de:	2e 10 42 2e          	adc    BYTE PTR cs:[edx+0x2e],al
c01050e2:	14 45                	adc    al,0x45
c01050e4:	2e 18 41 2e          	sbb    BYTE PTR cs:[ecx+0x2e],al
c01050e8:	1c 43                	sbb    al,0x43
c01050ea:	2e 20 4e 2e          	and    BYTE PTR cs:[esi+0x2e],cl
c01050ee:	08 41 2e             	or     BYTE PTR [ecx+0x2e],al
c01050f1:	0c 46                	or     al,0x46
c01050f3:	2e 10 4b 2e          	adc    BYTE PTR cs:[ebx+0x2e],cl
c01050f7:	04 04                	add    al,0x4
c01050f9:	05 00 00 00 2e       	add    eax,0x2e000000
c01050fe:	08 45 2e             	or     BYTE PTR [ebp+0x2e],al
c0105101:	0c 41                	or     al,0x41
c0105103:	2e 10 53 2e          	adc    BYTE PTR cs:[ebx+0x2e],dl
c0105107:	00 41 2e             	add    BYTE PTR [ecx+0x2e],al
c010510a:	04 04                	add    al,0x4
c010510c:	01 00                	add    DWORD PTR [eax],eax
c010510e:	00 00                	add    BYTE PTR [eax],al
c0105110:	2e 08 4a 2e          	or     BYTE PTR cs:[edx+0x2e],cl
c0105114:	0c 41                	or     al,0x41
c0105116:	2e 10 50 2e          	adc    BYTE PTR cs:[eax+0x2e],dl
c010511a:	0c 43                	or     al,0x43
c010511c:	2e 00 02             	add    BYTE PTR cs:[edx],al
c010511f:	42                   	inc    edx
c0105120:	2e 04 04             	cs add al,0x4
c0105123:	01 00                	add    DWORD PTR [eax],eax
c0105125:	00 00                	add    BYTE PTR [eax],al
c0105127:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c010512b:	0c 44                	or     al,0x44
c010512d:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c0105131:	04 04                	add    al,0x4
c0105133:	02 00                	add    al,BYTE PTR [eax]
c0105135:	00 00                	add    BYTE PTR [eax],al
c0105137:	2e 08 42 2e          	or     BYTE PTR cs:[edx+0x2e],al
c010513b:	0c 42                	or     al,0x42
c010513d:	2e 10 42 2e          	adc    BYTE PTR cs:[edx+0x2e],al
c0105141:	14 45                	adc    al,0x45
c0105143:	2e 18 46 2e          	sbb    BYTE PTR cs:[esi+0x2e],al
c0105147:	1c 45                	sbb    al,0x45
c0105149:	2e 20 48 2e          	and    BYTE PTR cs:[eax+0x2e],cl
c010514d:	08 44 2e 0c          	or     BYTE PTR [esi+ebp*1+0xc],al
c0105151:	45                   	inc    ebp
c0105152:	2e 10 42 2e          	adc    BYTE PTR cs:[edx+0x2e],al
c0105156:	14 42                	adc    al,0x42
c0105158:	2e 18 46 2e          	sbb    BYTE PTR cs:[esi+0x2e],al
c010515c:	1c 45                	sbb    al,0x45
c010515e:	2e 20 48 2e          	and    BYTE PTR cs:[eax+0x2e],cl
c0105162:	04 04                	add    al,0x4
c0105164:	01 00                	add    DWORD PTR [eax],eax
c0105166:	00 00                	add    BYTE PTR [eax],al
c0105168:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c010516c:	0c 41                	or     al,0x41
c010516e:	2e 10 4a 2e          	adc    BYTE PTR cs:[edx+0x2e],cl
c0105172:	00 00                	add    BYTE PTR [eax],al
c0105174:	7c 00                	jl     c0105176 <_edata+0x16e>
c0105176:	00 00                	add    BYTE PTR [eax],al
c0105178:	70 01                	jo     c010517b <_edata+0x173>
c010517a:	00 00                	add    BYTE PTR [eax],al
c010517c:	2d 02 10 c0 94       	sub    eax,0x94c01002
c0105181:	00 00                	add    BYTE PTR [eax],al
c0105183:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c0105186:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010518c:	43                   	inc    ebx
c010518d:	83 05 86 04 87 03 48 	add    DWORD PTR ds:0x3870486,0x48
c0105194:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c0105198:	0c 42                	or     al,0x42
c010519a:	2e 10 4b 2e          	adc    BYTE PTR cs:[ebx+0x2e],cl
c010519e:	00 48 2e             	add    BYTE PTR [eax+0x2e],cl
c01051a1:	0c 45                	or     al,0x45
c01051a3:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c01051a7:	00 45 2e             	add    BYTE PTR [ebp+0x2e],al
c01051aa:	04 04                	add    al,0x4
c01051ac:	01 00                	add    DWORD PTR [eax],eax
c01051ae:	00 00                	add    BYTE PTR [eax],al
c01051b0:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c01051b4:	0c 45                	or     al,0x45
c01051b6:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c01051ba:	0c 45                	or     al,0x45
c01051bc:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c01051c0:	0c 42                	or     al,0x42
c01051c2:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c01051c6:	0c 41                	or     al,0x41
c01051c8:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c01051cc:	0c 45                	or     al,0x45
c01051ce:	2e 10 41 2e          	adc    BYTE PTR cs:[ecx+0x2e],al
c01051d2:	14 41                	adc    al,0x41
c01051d4:	2e 18 49 2e          	sbb    BYTE PTR cs:[ecx+0x2e],cl
c01051d8:	1c 45                	sbb    al,0x45
c01051da:	2e 20 48 2e          	and    BYTE PTR cs:[eax+0x2e],cl
c01051de:	00 47 2e             	add    BYTE PTR [edi+0x2e],al
c01051e1:	04 04                	add    al,0x4
c01051e3:	04 00                	add    al,0x0
c01051e5:	00 00                	add    BYTE PTR [eax],al
c01051e7:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c01051eb:	0c 42                	or     al,0x42
c01051ed:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c01051f1:	00 00                	add    BYTE PTR [eax],al
c01051f3:	00 80 01 00 00 f0    	add    BYTE PTR [eax-0xfffffff],al
c01051f9:	01 00                	add    DWORD PTR [eax],eax
c01051fb:	00 c1                	add    cl,al
c01051fd:	02 10                	add    dl,BYTE PTR [eax]
c01051ff:	c0                   	(bad)  
c0105200:	f1                   	icebp  
c0105201:	01 00                	add    DWORD PTR [eax],eax
c0105203:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c0105206:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010520c:	41                   	inc    ecx
c010520d:	83 03 49             	add    DWORD PTR [ebx],0x49
c0105210:	2e 04 04             	cs add al,0x4
c0105213:	01 00                	add    DWORD PTR [eax],eax
c0105215:	00 00                	add    BYTE PTR [eax],al
c0105217:	2e 08 42 2e          	or     BYTE PTR cs:[edx+0x2e],al
c010521b:	0c 42                	or     al,0x42
c010521d:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c0105221:	00 46 2e             	add    BYTE PTR [esi+0x2e],al
c0105224:	0c 42                	or     al,0x42
c0105226:	2e 10 50 2e          	adc    BYTE PTR cs:[eax+0x2e],dl
c010522a:	0c 41                	or     al,0x41
c010522c:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c0105230:	0c 42                	or     al,0x42
c0105232:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c0105236:	0c 41                	or     al,0x41
c0105238:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c010523c:	0c 42                	or     al,0x42
c010523e:	2e 10 4b 2e          	adc    BYTE PTR cs:[ebx+0x2e],cl
c0105242:	0c 41                	or     al,0x41
c0105244:	2e 08 42 2e          	or     BYTE PTR cs:[edx+0x2e],al
c0105248:	0c 42                	or     al,0x42
c010524a:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c010524e:	0c 41                	or     al,0x41
c0105250:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c0105254:	0c 42                	or     al,0x42
c0105256:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c010525a:	04 04                	add    al,0x4
c010525c:	02 00                	add    al,BYTE PTR [eax]
c010525e:	00 00                	add    BYTE PTR [eax],al
c0105260:	2e 08 49 2e          	or     BYTE PTR cs:[ecx+0x2e],cl
c0105264:	0c 42                	or     al,0x42
c0105266:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c010526a:	0c 41                	or     al,0x41
c010526c:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c0105270:	0c 42                	or     al,0x42
c0105272:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c0105276:	04 04                	add    al,0x4
c0105278:	02 00                	add    al,BYTE PTR [eax]
c010527a:	00 00                	add    BYTE PTR [eax],al
c010527c:	2e 08 49 2e          	or     BYTE PTR cs:[ecx+0x2e],cl
c0105280:	0c 42                	or     al,0x42
c0105282:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c0105286:	0c 41                	or     al,0x41
c0105288:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c010528c:	0c 42                	or     al,0x42
c010528e:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c0105292:	0c 41                	or     al,0x41
c0105294:	2e 08 42 2e          	or     BYTE PTR cs:[edx+0x2e],al
c0105298:	0c 42                	or     al,0x42
c010529a:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c010529e:	0c 41                	or     al,0x41
c01052a0:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c01052a4:	0c 42                	or     al,0x42
c01052a6:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c01052aa:	04 04                	add    al,0x4
c01052ac:	02 00                	add    al,BYTE PTR [eax]
c01052ae:	00 00                	add    BYTE PTR [eax],al
c01052b0:	2e 08 46 2e          	or     BYTE PTR cs:[esi+0x2e],al
c01052b4:	0c 42                	or     al,0x42
c01052b6:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c01052ba:	0c 41                	or     al,0x41
c01052bc:	2e 08 42 2e          	or     BYTE PTR cs:[edx+0x2e],al
c01052c0:	0c 42                	or     al,0x42
c01052c2:	2e 10 4b 2e          	adc    BYTE PTR cs:[ebx+0x2e],cl
c01052c6:	0c 41                	or     al,0x41
c01052c8:	2e 08 48 2e          	or     BYTE PTR cs:[eax+0x2e],cl
c01052cc:	0c 45                	or     al,0x45
c01052ce:	2e 10 42 2e          	adc    BYTE PTR cs:[edx+0x2e],al
c01052d2:	14 42                	adc    al,0x42
c01052d4:	2e 18 46 2e          	sbb    BYTE PTR cs:[esi+0x2e],al
c01052d8:	1c 43                	sbb    al,0x43
c01052da:	2e 20 48 2e          	and    BYTE PTR cs:[eax+0x2e],cl
c01052de:	0c 46                	or     al,0x46
c01052e0:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c01052e4:	14 46                	adc    al,0x46
c01052e6:	2e 18 45 2e          	sbb    BYTE PTR cs:[ebp+0x2e],al
c01052ea:	1c 41                	sbb    al,0x41
c01052ec:	2e 20 48 2e          	and    BYTE PTR cs:[eax+0x2e],cl
c01052f0:	08 4a 2e             	or     BYTE PTR [edx+0x2e],cl
c01052f3:	0c 45                	or     al,0x45
c01052f5:	2e 10 42 2e          	adc    BYTE PTR cs:[edx+0x2e],al
c01052f9:	14 42                	adc    al,0x42
c01052fb:	2e 18 46 2e          	sbb    BYTE PTR cs:[esi+0x2e],al
c01052ff:	1c 43                	sbb    al,0x43
c0105301:	2e 20 48 2e          	and    BYTE PTR cs:[eax+0x2e],cl
c0105305:	08 46 2e             	or     BYTE PTR [esi+0x2e],al
c0105308:	0c 45                	or     al,0x45
c010530a:	2e 10 42 2e          	adc    BYTE PTR cs:[edx+0x2e],al
c010530e:	14 42                	adc    al,0x42
c0105310:	2e 18 46 2e          	sbb    BYTE PTR cs:[esi+0x2e],al
c0105314:	1c 43                	sbb    al,0x43
c0105316:	2e 20 4d 2e          	and    BYTE PTR cs:[ebp+0x2e],cl
c010531a:	0c 42                	or     al,0x42
c010531c:	2e 10 43 2e          	adc    BYTE PTR cs:[ebx+0x2e],al
c0105320:	14 42                	adc    al,0x42
c0105322:	2e 18 42 2e          	sbb    BYTE PTR cs:[edx+0x2e],al
c0105326:	1c 41                	sbb    al,0x41
c0105328:	2e 20 48 2e          	and    BYTE PTR cs:[eax+0x2e],cl
c010532c:	00 45 2e             	add    BYTE PTR [ebp+0x2e],al
c010532f:	04 04                	add    al,0x4
c0105331:	05 00 00 00 2e       	add    eax,0x2e000000
c0105336:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c0105339:	0c 45                	or     al,0x45
c010533b:	2e 10 47 2e          	adc    BYTE PTR cs:[edi+0x2e],al
c010533f:	14 45                	adc    al,0x45
c0105341:	2e 18 42 2e          	sbb    BYTE PTR cs:[edx+0x2e],al
c0105345:	1c 45                	sbb    al,0x45
c0105347:	2e 20 48 2e          	and    BYTE PTR cs:[eax+0x2e],cl
c010534b:	00 42 2e             	add    BYTE PTR [edx+0x2e],al
c010534e:	04 04                	add    al,0x4
c0105350:	05 00 00 00 2e       	add    eax,0x2e000000
c0105355:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c0105358:	0c 45                	or     al,0x45
c010535a:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c010535e:	0c 41                	or     al,0x41
c0105360:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c0105364:	0c 45                	or     al,0x45
c0105366:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c010536a:	0c 41                	or     al,0x41
c010536c:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c0105370:	0c 45                	or     al,0x45
c0105372:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c0105376:	00 00                	add    BYTE PTR [eax],al
c0105378:	b4 00                	mov    ah,0x0
c010537a:	00 00                	add    BYTE PTR [eax],al
c010537c:	74 03                	je     c0105381 <_edata+0x379>
c010537e:	00 00                	add    BYTE PTR [eax],al
c0105380:	b4 04                	mov    ah,0x4
c0105382:	10 c0                	adc    al,al
c0105384:	b4 00                	mov    ah,0x0
c0105386:	00 00                	add    BYTE PTR [eax],al
c0105388:	41                   	inc    ecx
c0105389:	0e                   	push   cs
c010538a:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0105390:	4b                   	dec    ebx
c0105391:	2e 0c 42             	cs or  al,0x42
c0105394:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c0105398:	0c 41                	or     al,0x41
c010539a:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c010539e:	0c 42                	or     al,0x42
c01053a0:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c01053a4:	0c 41                	or     al,0x41
c01053a6:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c01053aa:	0c 42                	or     al,0x42
c01053ac:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c01053b0:	0c 41                	or     al,0x41
c01053b2:	2e 08 43 2e          	or     BYTE PTR cs:[ebx+0x2e],al
c01053b6:	0c 42                	or     al,0x42
c01053b8:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c01053bc:	0c 41                	or     al,0x41
c01053be:	2e 08 42 2e          	or     BYTE PTR cs:[edx+0x2e],al
c01053c2:	0c 42                	or     al,0x42
c01053c4:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c01053c8:	0c 41                	or     al,0x41
c01053ca:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c01053ce:	0c 42                	or     al,0x42
c01053d0:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c01053d4:	0c 41                	or     al,0x41
c01053d6:	2e 08 43 2e          	or     BYTE PTR cs:[ebx+0x2e],al
c01053da:	0c 42                	or     al,0x42
c01053dc:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c01053e0:	0c 41                	or     al,0x41
c01053e2:	2e 08 42 2e          	or     BYTE PTR cs:[edx+0x2e],al
c01053e6:	0c 42                	or     al,0x42
c01053e8:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c01053ec:	0c 41                	or     al,0x41
c01053ee:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c01053f2:	0c 42                	or     al,0x42
c01053f4:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c01053f8:	04 04                	add    al,0x4
c01053fa:	02 00                	add    al,BYTE PTR [eax]
c01053fc:	00 00                	add    BYTE PTR [eax],al
c01053fe:	2e 08 43 2e          	or     BYTE PTR cs:[ebx+0x2e],al
c0105402:	0c 42                	or     al,0x42
c0105404:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c0105408:	0c 41                	or     al,0x41
c010540a:	2e 08 42 2e          	or     BYTE PTR cs:[edx+0x2e],al
c010540e:	0c 42                	or     al,0x42
c0105410:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c0105414:	0c 41                	or     al,0x41
c0105416:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c010541a:	0c 42                	or     al,0x42
c010541c:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c0105420:	0c 41                	or     al,0x41
c0105422:	2e 08 43 2e          	or     BYTE PTR cs:[ebx+0x2e],al
c0105426:	0c 42                	or     al,0x42
c0105428:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c010542c:	00 00                	add    BYTE PTR [eax],al
c010542e:	00 00                	add    BYTE PTR [eax],al
c0105430:	40                   	inc    eax
c0105431:	00 00                	add    BYTE PTR [eax],al
c0105433:	00 2c 04             	add    BYTE PTR [esp+eax*1],ch
c0105436:	00 00                	add    BYTE PTR [eax],al
c0105438:	68 05 10 c0 2e       	push   0x2ec01005
c010543d:	00 00                	add    BYTE PTR [eax],al
c010543f:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c0105442:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0105448:	43                   	inc    ebx
c0105449:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c010544d:	0c 42                	or     al,0x42
c010544f:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c0105453:	0c 41                	or     al,0x41
c0105455:	2e 08 43 2e          	or     BYTE PTR cs:[ebx+0x2e],al
c0105459:	0c 42                	or     al,0x42
c010545b:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c010545f:	0c 41                	or     al,0x41
c0105461:	2e 08 42 2e          	or     BYTE PTR cs:[edx+0x2e],al
c0105465:	0c 42                	or     al,0x42
c0105467:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c010546b:	00 41 c5             	add    BYTE PTR [ecx-0x3b],al
c010546e:	0c 04                	or     al,0x4
c0105470:	04 00                	add    al,0x0
c0105472:	00 00                	add    BYTE PTR [eax],al
c0105474:	24 00                	and    al,0x0
c0105476:	00 00                	add    BYTE PTR [eax],al
c0105478:	70 04                	jo     c010547e <_edata+0x476>
c010547a:	00 00                	add    BYTE PTR [eax],al
c010547c:	98                   	cwde   
c010547d:	05 10 c0 53 00       	add    eax,0x53c010
c0105482:	00 00                	add    BYTE PTR [eax],al
c0105484:	41                   	inc    ecx
c0105485:	0e                   	push   cs
c0105486:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010548c:	43                   	inc    ebx
c010548d:	2e 0c 45             	cs or  al,0x45
c0105490:	2e 10 02             	adc    BYTE PTR cs:[edx],al
c0105493:	46                   	inc    esi
c0105494:	2e 00 41 c5          	add    BYTE PTR cs:[ecx-0x3b],al
c0105498:	0c 04                	or     al,0x4
c010549a:	04 00                	add    al,0x0
c010549c:	1c 00                	sbb    al,0x0
c010549e:	00 00                	add    BYTE PTR [eax],al
c01054a0:	98                   	cwde   
c01054a1:	04 00                	add    al,0x0
c01054a3:	00 94 0c 10 c0 10 00 	add    BYTE PTR [esp+ecx*1+0x10c010],dl
c01054aa:	00 00                	add    BYTE PTR [eax],al
c01054ac:	41                   	inc    ecx
c01054ad:	0e                   	push   cs
c01054ae:	08 85 02 47 0d 05    	or     BYTE PTR [ebp+0x50d4702],al
c01054b4:	47                   	inc    edi
c01054b5:	0c 04                	or     al,0x4
c01054b7:	04 c5                	add    al,0xc5
c01054b9:	00 00                	add    BYTE PTR [eax],al
c01054bb:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c01054be:	00 00                	add    BYTE PTR [eax],al
c01054c0:	b8 04 00 00 a4       	mov    eax,0xa4000004
c01054c5:	0c 10                	or     al,0x10
c01054c7:	c0 3d 00 00 00 41 0e 	sar    BYTE PTR ds:0x41000000,0xe
c01054ce:	08 85 02 47 0d 05    	or     BYTE PTR [ebp+0x50d4702],al
c01054d4:	74 0c                	je     c01054e2 <_edata+0x4da>
c01054d6:	04 04                	add    al,0x4
c01054d8:	c5 00                	lds    eax,FWORD PTR [eax]
c01054da:	00 00                	add    BYTE PTR [eax],al
c01054dc:	1c 00                	sbb    al,0x0
c01054de:	00 00                	add    BYTE PTR [eax],al
c01054e0:	d8 04 00             	fadd   DWORD PTR [eax+eax*1]
c01054e3:	00 e1                	add    cl,ah
c01054e5:	0c 10                	or     al,0x10
c01054e7:	c0 9e 00 00 00 41 0e 	rcr    BYTE PTR [esi+0x41000000],0xe
c01054ee:	08 85 02 44 0d 05    	or     BYTE PTR [ebp+0x50d4402],al
c01054f4:	02 98 0c 04 04 c5    	add    bl,BYTE PTR [eax-0x3afbfbf4]
c01054fa:	00 00                	add    BYTE PTR [eax],al
c01054fc:	20 00                	and    BYTE PTR [eax],al
c01054fe:	00 00                	add    BYTE PTR [eax],al
c0105500:	f8                   	clc    
c0105501:	04 00                	add    al,0x0
c0105503:	00 7f 0d             	add    BYTE PTR [edi+0xd],bh
c0105506:	10 c0                	adc    al,al
c0105508:	2c 00                	sub    al,0x0
c010550a:	00 00                	add    BYTE PTR [eax],al
c010550c:	41                   	inc    ecx
c010550d:	0e                   	push   cs
c010550e:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0105514:	44                   	inc    esp
c0105515:	83 03 63             	add    DWORD PTR [ebx],0x63
c0105518:	c3                   	ret    
c0105519:	41                   	inc    ecx
c010551a:	0c 04                	or     al,0x4
c010551c:	04 c5                	add    al,0xc5
c010551e:	00 00                	add    BYTE PTR [eax],al
c0105520:	1c 00                	sbb    al,0x0
c0105522:	00 00                	add    BYTE PTR [eax],al
c0105524:	1c 05                	sbb    al,0x5
c0105526:	00 00                	add    BYTE PTR [eax],al
c0105528:	ab                   	stos   DWORD PTR es:[edi],eax
c0105529:	0d 10 c0 cd 00       	or     eax,0xcdc010
c010552e:	00 00                	add    BYTE PTR [eax],al
c0105530:	41                   	inc    ecx
c0105531:	0e                   	push   cs
c0105532:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0105538:	02 c9                	add    cl,cl
c010553a:	0c 04                	or     al,0x4
c010553c:	04 c5                	add    al,0xc5
c010553e:	00 00                	add    BYTE PTR [eax],al
c0105540:	1c 00                	sbb    al,0x0
c0105542:	00 00                	add    BYTE PTR [eax],al
c0105544:	3c 05                	cmp    al,0x5
c0105546:	00 00                	add    BYTE PTR [eax],al
c0105548:	78 0e                	js     c0105558 <_edata+0x550>
c010554a:	10 c0                	adc    al,al
c010554c:	34 00                	xor    al,0x0
c010554e:	00 00                	add    BYTE PTR [eax],al
c0105550:	41                   	inc    ecx
c0105551:	0e                   	push   cs
c0105552:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0105558:	70 c5                	jo     c010551f <_edata+0x517>
c010555a:	0c 04                	or     al,0x4
c010555c:	04 00                	add    al,0x0
c010555e:	00 00                	add    BYTE PTR [eax],al
c0105560:	1c 00                	sbb    al,0x0
c0105562:	00 00                	add    BYTE PTR [eax],al
c0105564:	5c                   	pop    esp
c0105565:	05 00 00 ac 0e       	add    eax,0xeac0000
c010556a:	10 c0                	adc    al,al
c010556c:	10 00                	adc    BYTE PTR [eax],al
c010556e:	00 00                	add    BYTE PTR [eax],al
c0105570:	41                   	inc    ecx
c0105571:	0e                   	push   cs
c0105572:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0105578:	4c                   	dec    esp
c0105579:	0c 04                	or     al,0x4
c010557b:	04 c5                	add    al,0xc5
c010557d:	00 00                	add    BYTE PTR [eax],al
c010557f:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c0105582:	00 00                	add    BYTE PTR [eax],al
c0105584:	7c 05                	jl     c010558b <_edata+0x583>
c0105586:	00 00                	add    BYTE PTR [eax],al
c0105588:	bc 0e 10 c0 14       	mov    esp,0x14c0100e
c010558d:	00 00                	add    BYTE PTR [eax],al
c010558f:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c0105592:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0105598:	50                   	push   eax
c0105599:	0c 04                	or     al,0x4
c010559b:	04 c5                	add    al,0xc5
c010559d:	00 00                	add    BYTE PTR [eax],al
c010559f:	00 ec                	add    ah,ch
c01055a1:	00 00                	add    BYTE PTR [eax],al
c01055a3:	00 9c 05 00 00 d0 0e 	add    BYTE PTR [ebp+eax*1+0xed00000],bl
c01055aa:	10 c0                	adc    al,al
c01055ac:	45                   	inc    ebp
c01055ad:	01 00                	add    DWORD PTR [eax],eax
c01055af:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c01055b2:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c01055b8:	48                   	dec    eax
c01055b9:	83 04 86 03          	add    DWORD PTR [esi+eax*4],0x3
c01055bd:	57                   	push   edi
c01055be:	2e 0c 42             	cs or  al,0x42
c01055c1:	2e 10 4e 2e          	adc    BYTE PTR cs:[esi+0x2e],cl
c01055c5:	04 04                	add    al,0x4
c01055c7:	07                   	pop    es
c01055c8:	00 00                	add    BYTE PTR [eax],al
c01055ca:	00 2e                	add    BYTE PTR [esi],ch
c01055cc:	08 44 2e 0c          	or     BYTE PTR [esi+ebp*1+0xc],al
c01055d0:	42                   	inc    edx
c01055d1:	2e 10 42 2e          	adc    BYTE PTR cs:[edx+0x2e],al
c01055d5:	14 45                	adc    al,0x45
c01055d7:	2e 18 41 2e          	sbb    BYTE PTR cs:[ecx+0x2e],al
c01055db:	1c 45                	sbb    al,0x45
c01055dd:	2e 20 48 2e          	and    BYTE PTR cs:[eax+0x2e],cl
c01055e1:	08 45 2e             	or     BYTE PTR [ebp+0x2e],al
c01055e4:	0c 45                	or     al,0x45
c01055e6:	2e 10 42 2e          	adc    BYTE PTR cs:[edx+0x2e],al
c01055ea:	14 42                	adc    al,0x42
c01055ec:	2e 18 46 2e          	sbb    BYTE PTR cs:[esi+0x2e],al
c01055f0:	1c 45                	sbb    al,0x45
c01055f2:	2e 20 48 2e          	and    BYTE PTR cs:[eax+0x2e],cl
c01055f6:	08 4a 2e             	or     BYTE PTR [edx+0x2e],cl
c01055f9:	0c 43                	or     al,0x43
c01055fb:	2e 10 41 2e          	adc    BYTE PTR cs:[ecx+0x2e],al
c01055ff:	14 45                	adc    al,0x45
c0105601:	2e 18 45 2e          	sbb    BYTE PTR cs:[ebp+0x2e],al
c0105605:	1c 41                	sbb    al,0x41
c0105607:	2e 20 48 2e          	and    BYTE PTR cs:[eax+0x2e],cl
c010560b:	08 41 2e             	or     BYTE PTR [ecx+0x2e],al
c010560e:	0c 42                	or     al,0x42
c0105610:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c0105614:	0c 41                	or     al,0x41
c0105616:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c010561a:	0c 45                	or     al,0x45
c010561c:	2e 10 42 2e          	adc    BYTE PTR cs:[edx+0x2e],al
c0105620:	14 42                	adc    al,0x42
c0105622:	2e 18 46 2e          	sbb    BYTE PTR cs:[esi+0x2e],al
c0105626:	1c 45                	sbb    al,0x45
c0105628:	2e 20 48 2e          	and    BYTE PTR cs:[eax+0x2e],cl
c010562c:	00 4a 2e             	add    BYTE PTR [edx+0x2e],cl
c010562f:	04 04                	add    al,0x4
c0105631:	01 00                	add    DWORD PTR [eax],eax
c0105633:	00 00                	add    BYTE PTR [eax],al
c0105635:	2e 08 47 2e          	or     BYTE PTR cs:[edi+0x2e],al
c0105639:	0c 42                	or     al,0x42
c010563b:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c010563f:	0c 41                	or     al,0x41
c0105641:	2e 08 47 2e          	or     BYTE PTR cs:[edi+0x2e],al
c0105645:	0c 45                	or     al,0x45
c0105647:	2e 10 45 2e          	adc    BYTE PTR cs:[ebp+0x2e],al
c010564b:	14 42                	adc    al,0x42
c010564d:	2e 18 46 2e          	sbb    BYTE PTR cs:[esi+0x2e],al
c0105651:	1c 45                	sbb    al,0x45
c0105653:	2e 20 48 2e          	and    BYTE PTR cs:[eax+0x2e],cl
c0105657:	00 4d 2e             	add    BYTE PTR [ebp+0x2e],cl
c010565a:	04 04                	add    al,0x4
c010565c:	01 00                	add    DWORD PTR [eax],eax
c010565e:	00 00                	add    BYTE PTR [eax],al
c0105660:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c0105664:	0c 41                	or     al,0x41
c0105666:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c010566a:	0c 41                	or     al,0x41
c010566c:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c0105670:	0c 42                	or     al,0x42
c0105672:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c0105676:	0c 41                	or     al,0x41
c0105678:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c010567c:	0c 45                	or     al,0x45
c010567e:	2e 10 45 2e          	adc    BYTE PTR cs:[ebp+0x2e],al
c0105682:	14 42                	adc    al,0x42
c0105684:	2e 18 46 2e          	sbb    BYTE PTR cs:[esi+0x2e],al
c0105688:	1c 45                	sbb    al,0x45
c010568a:	2e 20 48 2e          	and    BYTE PTR cs:[eax+0x2e],cl
c010568e:	00 00                	add    BYTE PTR [eax],al
c0105690:	1c 00                	sbb    al,0x0
c0105692:	00 00                	add    BYTE PTR [eax],al
c0105694:	8c 06                	mov    WORD PTR [esi],es
c0105696:	00 00                	add    BYTE PTR [eax],al
c0105698:	15 10 10 c0 17       	adc    eax,0x17c01010
c010569d:	00 00                	add    BYTE PTR [eax],al
c010569f:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c01056a2:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c01056a8:	53                   	push   ebx
c01056a9:	0c 04                	or     al,0x4
c01056ab:	04 c5                	add    al,0xc5
c01056ad:	00 00                	add    BYTE PTR [eax],al
c01056af:	00 24 00             	add    BYTE PTR [eax+eax*1],ah
c01056b2:	00 00                	add    BYTE PTR [eax],al
c01056b4:	ac                   	lods   al,BYTE PTR ds:[esi]
c01056b5:	06                   	push   es
c01056b6:	00 00                	add    BYTE PTR [eax],al
c01056b8:	2c 10                	sub    al,0x10
c01056ba:	10 c0                	adc    al,al
c01056bc:	15 00 00 00 41       	adc    eax,0x41000000
c01056c1:	0e                   	push   cs
c01056c2:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c01056c8:	47                   	inc    edi
c01056c9:	0a 0c 04             	or     cl,BYTE PTR [esp+eax*1]
c01056cc:	04 c5                	add    al,0xc5
c01056ce:	45                   	inc    ebp
c01056cf:	0b 41 0c             	or     eax,DWORD PTR [ecx+0xc]
c01056d2:	04 04                	add    al,0x4
c01056d4:	c5 00                	lds    eax,FWORD PTR [eax]
c01056d6:	00 00                	add    BYTE PTR [eax],al
c01056d8:	34 00                	xor    al,0x0
c01056da:	00 00                	add    BYTE PTR [eax],al
c01056dc:	d4 06                	aam    0x6
c01056de:	00 00                	add    BYTE PTR [eax],al
c01056e0:	44                   	inc    esp
c01056e1:	10 10                	adc    BYTE PTR [eax],dl
c01056e3:	c0 43 00 00          	rol    BYTE PTR [ebx+0x0],0x0
c01056e7:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c01056ea:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c01056f0:	41                   	inc    ecx
c01056f1:	87 03                	xchg   DWORD PTR [ebx],eax
c01056f3:	47                   	inc    edi
c01056f4:	83 05 86 04 04 17 00 	add    DWORD PTR ds:0x17040486,0x0
c01056fb:	00 00                	add    BYTE PTR [eax],al
c01056fd:	2e 0c 4e             	cs or  al,0x4e
c0105700:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c0105704:	00 47 c3             	add    BYTE PTR [edi-0x3d],al
c0105707:	41                   	inc    ecx
c0105708:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c010570c:	0c 04                	or     al,0x4
c010570e:	04 c5                	add    al,0xc5
c0105710:	e8 00 00 00 0c       	call   cc105715 <_kernel_end+0xbfe521d>
c0105715:	07                   	pop    es
c0105716:	00 00                	add    BYTE PTR [eax],al
c0105718:	87 10                	xchg   DWORD PTR [eax],edx
c010571a:	10 c0                	adc    al,al
c010571c:	18 02                	sbb    BYTE PTR [edx],al
c010571e:	00 00                	add    BYTE PTR [eax],al
c0105720:	41                   	inc    ecx
c0105721:	0e                   	push   cs
c0105722:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0105728:	46                   	inc    esi
c0105729:	2e 0c 83             	cs or  al,0x83
c010572c:	05 86 04 87 03       	add    eax,0x3870486
c0105731:	45                   	inc    ebp
c0105732:	2e 10 4d 2e          	adc    BYTE PTR cs:[ebp+0x2e],cl
c0105736:	00 02                	add    BYTE PTR [edx],al
c0105738:	49                   	dec    ecx
c0105739:	2e 0c 41             	cs or  al,0x41
c010573c:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c0105740:	00 50 2e             	add    BYTE PTR [eax+0x2e],dl
c0105743:	0c 45                	or     al,0x45
c0105745:	2e 10 4b 2e          	adc    BYTE PTR cs:[ebx+0x2e],cl
c0105749:	00 57 2e             	add    BYTE PTR [edi+0x2e],dl
c010574c:	0c 47                	or     al,0x47
c010574e:	2e 10 4b 2e          	adc    BYTE PTR cs:[ebx+0x2e],cl
c0105752:	00 49 2e             	add    BYTE PTR [ecx+0x2e],cl
c0105755:	04 04                	add    al,0x4
c0105757:	01 00                	add    DWORD PTR [eax],eax
c0105759:	00 00                	add    BYTE PTR [eax],al
c010575b:	2e 08 42 2e          	or     BYTE PTR cs:[edx+0x2e],al
c010575f:	0c 41                	or     al,0x41
c0105761:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c0105765:	00 49 2e             	add    BYTE PTR [ecx+0x2e],cl
c0105768:	0c 47                	or     al,0x47
c010576a:	2e 10 50 2e          	adc    BYTE PTR cs:[eax+0x2e],dl
c010576e:	00 7f 2e             	add    BYTE PTR [edi+0x2e],bh
c0105771:	04 04                	add    al,0x4
c0105773:	01 00                	add    DWORD PTR [eax],eax
c0105775:	00 00                	add    BYTE PTR [eax],al
c0105777:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c010577b:	0c 46                	or     al,0x46
c010577d:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c0105781:	00 49 2e             	add    BYTE PTR [ecx+0x2e],cl
c0105784:	04 04                	add    al,0x4
c0105786:	05 00 00 00 2e       	add    eax,0x2e000000
c010578b:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c010578e:	0c 45                	or     al,0x45
c0105790:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c0105794:	00 41 2e             	add    BYTE PTR [ecx+0x2e],al
c0105797:	04 04                	add    al,0x4
c0105799:	01 00                	add    DWORD PTR [eax],eax
c010579b:	00 00                	add    BYTE PTR [eax],al
c010579d:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c01057a1:	0c 46                	or     al,0x46
c01057a3:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c01057a7:	00 4e 2e             	add    BYTE PTR [esi+0x2e],cl
c01057aa:	0c 46                	or     al,0x46
c01057ac:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c01057b0:	00 43 2e             	add    BYTE PTR [ebx+0x2e],al
c01057b3:	0c 43                	or     al,0x43
c01057b5:	2e 10 53 2e          	adc    BYTE PTR cs:[ebx+0x2e],dl
c01057b9:	0c 42                	or     al,0x42
c01057bb:	2e 00 43 2e          	add    BYTE PTR cs:[ebx+0x2e],al
c01057bf:	0c 45                	or     al,0x45
c01057c1:	2e 10 49 2e          	adc    BYTE PTR cs:[ecx+0x2e],cl
c01057c5:	0c 41                	or     al,0x41
c01057c7:	2e 08 4a 2e          	or     BYTE PTR cs:[edx+0x2e],cl
c01057cb:	0c 41                	or     al,0x41
c01057cd:	2e 10 4b 2e          	adc    BYTE PTR cs:[ebx+0x2e],cl
c01057d1:	00 4c 2e 0c          	add    BYTE PTR [esi+ebp*1+0xc],cl
c01057d5:	41                   	inc    ecx
c01057d6:	2e 10 47 2e          	adc    BYTE PTR cs:[edi+0x2e],al
c01057da:	00 41 2e             	add    BYTE PTR [ecx+0x2e],al
c01057dd:	04 04                	add    al,0x4
c01057df:	06                   	push   es
c01057e0:	00 00                	add    BYTE PTR [eax],al
c01057e2:	00 2e                	add    BYTE PTR [esi],ch
c01057e4:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c01057e7:	0c 41                	or     al,0x41
c01057e9:	2e 10 69 2e          	adc    BYTE PTR cs:[ecx+0x2e],ch
c01057ed:	00 46 c3             	add    BYTE PTR [esi-0x3d],al
c01057f0:	41                   	inc    ecx
c01057f1:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c01057f5:	0c 04                	or     al,0x4
c01057f7:	04 c5                	add    al,0xc5
c01057f9:	00 00                	add    BYTE PTR [eax],al
c01057fb:	00 a8 00 00 00 f8    	add    BYTE PTR [eax-0x8000000],ch
c0105801:	07                   	pop    es
c0105802:	00 00                	add    BYTE PTR [eax],al
c0105804:	9f                   	lahf   
c0105805:	12 10                	adc    dl,BYTE PTR [eax]
c0105807:	c0 13 01             	rcl    BYTE PTR [ebx],0x1
c010580a:	00 00                	add    BYTE PTR [eax],al
c010580c:	41                   	inc    ecx
c010580d:	0e                   	push   cs
c010580e:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0105814:	46                   	inc    esi
c0105815:	2e 0c 83             	cs or  al,0x83
c0105818:	05 86 04 87 03       	add    eax,0x3870486
c010581d:	48                   	dec    eax
c010581e:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c0105822:	00 70 2e             	add    BYTE PTR [eax+0x2e],dh
c0105825:	0c 43                	or     al,0x43
c0105827:	2e 10 50 2e          	adc    BYTE PTR cs:[eax+0x2e],dl
c010582b:	00 4b 2e             	add    BYTE PTR [ebx+0x2e],cl
c010582e:	04 04                	add    al,0x4
c0105830:	03 00                	add    eax,DWORD PTR [eax]
c0105832:	00 00                	add    BYTE PTR [eax],al
c0105834:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c0105838:	00 41 2e             	add    BYTE PTR [ecx+0x2e],al
c010583b:	04 04                	add    al,0x4
c010583d:	04 00                	add    al,0x0
c010583f:	00 00                	add    BYTE PTR [eax],al
c0105841:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c0105845:	0c 41                	or     al,0x41
c0105847:	2e 10 4b 2e          	adc    BYTE PTR cs:[ebx+0x2e],cl
c010584b:	00 53 2e             	add    BYTE PTR [ebx+0x2e],dl
c010584e:	04 04                	add    al,0x4
c0105850:	01 00                	add    DWORD PTR [eax],eax
c0105852:	00 00                	add    BYTE PTR [eax],al
c0105854:	2e 08 47 2e          	or     BYTE PTR cs:[edi+0x2e],al
c0105858:	0c 41                	or     al,0x41
c010585a:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c010585e:	00 49 2e             	add    BYTE PTR [ecx+0x2e],cl
c0105861:	04 04                	add    al,0x4
c0105863:	05 00 00 00 2e       	add    eax,0x2e000000
c0105868:	08 45 2e             	or     BYTE PTR [ebp+0x2e],al
c010586b:	0c 45                	or     al,0x45
c010586d:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c0105871:	00 43 2e             	add    BYTE PTR [ebx+0x2e],al
c0105874:	0c 42                	or     al,0x42
c0105876:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c010587a:	00 5c 2e 04          	add    BYTE PTR [esi+ebp*1+0x4],bl
c010587e:	04 02                	add    al,0x2
c0105880:	00 00                	add    BYTE PTR [eax],al
c0105882:	00 2e                	add    BYTE PTR [esi],ch
c0105884:	08 41 2e             	or     BYTE PTR [ecx+0x2e],al
c0105887:	0c 43                	or     al,0x43
c0105889:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c010588d:	00 47 0a             	add    BYTE PTR [edi+0xa],al
c0105890:	c3                   	ret    
c0105891:	41                   	inc    ecx
c0105892:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c0105896:	0c 04                	or     al,0x4
c0105898:	04 c5                	add    al,0xc5
c010589a:	45                   	inc    ebp
c010589b:	0b 44 c3 41          	or     eax,DWORD PTR [ebx+eax*8+0x41]
c010589f:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c01058a3:	0c 04                	or     al,0x4
c01058a5:	04 c5                	add    al,0xc5
c01058a7:	00 54 00 00          	add    BYTE PTR [eax+eax*1+0x0],dl
c01058ab:	00 a4 08 00 00 b4 13 	add    BYTE PTR [eax+ecx*1+0x13b40000],ah
c01058b2:	10 c0                	adc    al,al
c01058b4:	7f 00                	jg     c01058b6 <_edata+0x8ae>
c01058b6:	00 00                	add    BYTE PTR [eax],al
c01058b8:	41                   	inc    ecx
c01058b9:	0e                   	push   cs
c01058ba:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c01058c0:	46                   	inc    esi
c01058c1:	2e 0c 83             	cs or  al,0x83
c01058c4:	05 86 04 87 03       	add    eax,0x3870486
c01058c9:	4a                   	dec    edx
c01058ca:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c01058ce:	00 65 2e             	add    BYTE PTR [ebp+0x2e],ah
c01058d1:	04 04                	add    al,0x4
c01058d3:	05 00 00 00 2e       	add    eax,0x2e000000
c01058d8:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c01058db:	0c 45                	or     al,0x45
c01058dd:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c01058e1:	00 4c 2e 04          	add    BYTE PTR [esi+ebp*1+0x4],cl
c01058e5:	04 05                	add    al,0x5
c01058e7:	00 00                	add    BYTE PTR [eax],al
c01058e9:	00 2e                	add    BYTE PTR [esi],ch
c01058eb:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c01058ee:	0c 45                	or     al,0x45
c01058f0:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c01058f4:	00 47 c3             	add    BYTE PTR [edi-0x3d],al
c01058f7:	41                   	inc    ecx
c01058f8:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c01058fc:	0c 04                	or     al,0x4
c01058fe:	04 c5                	add    al,0xc5
c0105900:	24 00                	and    al,0x0
c0105902:	00 00                	add    BYTE PTR [eax],al
c0105904:	fc                   	cld    
c0105905:	08 00                	or     BYTE PTR [eax],al
c0105907:	00 33                	add    BYTE PTR [ebx],dh
c0105909:	14 10                	adc    al,0x10
c010590b:	c0 21 00             	shl    BYTE PTR [ecx],0x0
c010590e:	00 00                	add    BYTE PTR [eax],al
c0105910:	41                   	inc    ecx
c0105911:	0e                   	push   cs
c0105912:	08 85 02 44 0d 05    	or     BYTE PTR [ebp+0x50d4402],al
c0105918:	47                   	inc    edi
c0105919:	83 04 86 03          	add    DWORD PTR [esi+eax*4],0x3
c010591d:	52                   	push   edx
c010591e:	c3                   	ret    
c010591f:	41                   	inc    ecx
c0105920:	c6 41 0c 04          	mov    BYTE PTR [ecx+0xc],0x4
c0105924:	04 c5                	add    al,0xc5
c0105926:	00 00                	add    BYTE PTR [eax],al
c0105928:	1c 00                	sbb    al,0x0
c010592a:	00 00                	add    BYTE PTR [eax],al
c010592c:	24 09                	and    al,0x9
c010592e:	00 00                	add    BYTE PTR [eax],al
c0105930:	54                   	push   esp
c0105931:	14 10                	adc    al,0x10
c0105933:	c0 12 00             	rcl    BYTE PTR [edx],0x0
c0105936:	00 00                	add    BYTE PTR [eax],al
c0105938:	41                   	inc    ecx
c0105939:	0e                   	push   cs
c010593a:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0105940:	44                   	inc    esp
c0105941:	0c 04                	or     al,0x4
c0105943:	04 c5                	add    al,0xc5
c0105945:	00 00                	add    BYTE PTR [eax],al
c0105947:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c010594a:	00 00                	add    BYTE PTR [eax],al
c010594c:	44                   	inc    esp
c010594d:	09 00                	or     DWORD PTR [eax],eax
c010594f:	00 66 14             	add    BYTE PTR [esi+0x14],ah
c0105952:	10 c0                	adc    al,al
c0105954:	22 00                	and    al,BYTE PTR [eax]
c0105956:	00 00                	add    BYTE PTR [eax],al
c0105958:	41                   	inc    ecx
c0105959:	0e                   	push   cs
c010595a:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0105960:	44                   	inc    esp
c0105961:	0c 04                	or     al,0x4
c0105963:	04 c5                	add    al,0xc5
c0105965:	00 00                	add    BYTE PTR [eax],al
c0105967:	00 28                	add    BYTE PTR [eax],ch
c0105969:	00 00                	add    BYTE PTR [eax],al
c010596b:	00 64 09 00          	add    BYTE PTR [ecx+ecx*1+0x0],ah
c010596f:	00 88 14 10 c0 22    	add    BYTE PTR [eax+0x22c01014],cl
c0105975:	00 00                	add    BYTE PTR [eax],al
c0105977:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c010597a:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0105980:	41                   	inc    ecx
c0105981:	83 03 44             	add    DWORD PTR [ebx],0x44
c0105984:	2e 04 04             	cs add al,0x4
c0105987:	0c 00                	or     al,0x0
c0105989:	00 00                	add    BYTE PTR [eax],al
c010598b:	2e 00 4d c5          	add    BYTE PTR cs:[ebp-0x3b],cl
c010598f:	0c 04                	or     al,0x4
c0105991:	04 c3                	add    al,0xc3
c0105993:	00 44 00 00          	add    BYTE PTR [eax+eax*1+0x0],al
c0105997:	00 90 09 00 00 aa    	add    BYTE PTR [eax-0x55fffff7],dl
c010599d:	14 10                	adc    al,0x10
c010599f:	c0 a0 00 00 00 41 0e 	shl    BYTE PTR [eax+0x41000000],0xe
c01059a6:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c01059ac:	46                   	inc    esi
c01059ad:	2e 0c 83             	cs or  al,0x83
c01059b0:	05 86 04 87 03       	add    eax,0x3870486
c01059b5:	47                   	inc    edi
c01059b6:	2e 10 4b 2e          	adc    BYTE PTR cs:[ebx+0x2e],cl
c01059ba:	00 02                	add    BYTE PTR [edx],al
c01059bc:	59                   	pop    ecx
c01059bd:	2e 0c 41             	cs or  al,0x41
c01059c0:	2e 10 4b 2e          	adc    BYTE PTR cs:[ebx+0x2e],cl
c01059c4:	00 4d 2e             	add    BYTE PTR [ebp+0x2e],cl
c01059c7:	0c 41                	or     al,0x41
c01059c9:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c01059cd:	00 46 c3             	add    BYTE PTR [esi-0x3d],al
c01059d0:	41                   	inc    ecx
c01059d1:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c01059d5:	0c 04                	or     al,0x4
c01059d7:	04 c5                	add    al,0xc5
c01059d9:	00 00                	add    BYTE PTR [eax],al
c01059db:	00 54 00 00          	add    BYTE PTR [eax+eax*1+0x0],dl
c01059df:	00 d8                	add    al,bl
c01059e1:	09 00                	or     DWORD PTR [eax],eax
c01059e3:	00 4a 15             	add    BYTE PTR [edx+0x15],cl
c01059e6:	10 c0                	adc    al,al
c01059e8:	72 00                	jb     c01059ea <_edata+0x9e2>
c01059ea:	00 00                	add    BYTE PTR [eax],al
c01059ec:	41                   	inc    ecx
c01059ed:	0e                   	push   cs
c01059ee:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c01059f4:	46                   	inc    esi
c01059f5:	83 05 86 04 87 03 47 	add    DWORD PTR ds:0x3870486,0x47
c01059fc:	2e 04 04             	cs add al,0x4
c01059ff:	13 00                	adc    eax,DWORD PTR [eax]
c0105a01:	00 00                	add    BYTE PTR [eax],al
c0105a03:	2e 00 51 2e          	add    BYTE PTR cs:[ecx+0x2e],dl
c0105a07:	04 04                	add    al,0x4
c0105a09:	04 00                	add    al,0x0
c0105a0b:	00 00                	add    BYTE PTR [eax],al
c0105a0d:	2e 08 42 2e          	or     BYTE PTR cs:[edx+0x2e],al
c0105a11:	0c 45                	or     al,0x45
c0105a13:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c0105a17:	04 04                	add    al,0x4
c0105a19:	11 00                	adc    DWORD PTR [eax],eax
c0105a1b:	00 00                	add    BYTE PTR [eax],al
c0105a1d:	2e 08 47 2e          	or     BYTE PTR cs:[edi+0x2e],al
c0105a21:	0c 41                	or     al,0x41
c0105a23:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c0105a27:	00 46 c3             	add    BYTE PTR [esi-0x3d],al
c0105a2a:	41                   	inc    ecx
c0105a2b:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c0105a2f:	0c 04                	or     al,0x4
c0105a31:	04 c5                	add    al,0xc5
c0105a33:	00 60 00             	add    BYTE PTR [eax+0x0],ah
c0105a36:	00 00                	add    BYTE PTR [eax],al
c0105a38:	30 0a                	xor    BYTE PTR [edx],cl
c0105a3a:	00 00                	add    BYTE PTR [eax],al
c0105a3c:	bc 15 10 c0 72       	mov    esp,0x72c01015
c0105a41:	00 00                	add    BYTE PTR [eax],al
c0105a43:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c0105a46:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0105a4c:	46                   	inc    esi
c0105a4d:	83 05 86 04 87 03 58 	add    DWORD PTR ds:0x3870486,0x58
c0105a54:	2e 04 04             	cs add al,0x4
c0105a57:	01 00                	add    DWORD PTR [eax],eax
c0105a59:	00 00                	add    BYTE PTR [eax],al
c0105a5b:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c0105a5f:	0c 45                	or     al,0x45
c0105a61:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c0105a65:	00 4b 2e             	add    BYTE PTR [ebx+0x2e],cl
c0105a68:	04 04                	add    al,0x4
c0105a6a:	01 00                	add    DWORD PTR [eax],eax
c0105a6c:	00 00                	add    BYTE PTR [eax],al
c0105a6e:	2e 08 42 2e          	or     BYTE PTR cs:[edx+0x2e],al
c0105a72:	0c 43                	or     al,0x43
c0105a74:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c0105a78:	00 45 2e             	add    BYTE PTR [ebp+0x2e],al
c0105a7b:	04 04                	add    al,0x4
c0105a7d:	02 00                	add    al,BYTE PTR [eax]
c0105a7f:	00 00                	add    BYTE PTR [eax],al
c0105a81:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c0105a85:	0c 41                	or     al,0x41
c0105a87:	2e 10 4e 2e          	adc    BYTE PTR cs:[esi+0x2e],cl
c0105a8b:	00 4e c3             	add    BYTE PTR [esi-0x3d],cl
c0105a8e:	41                   	inc    ecx
c0105a8f:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c0105a93:	0c 04                	or     al,0x4
c0105a95:	04 c5                	add    al,0xc5
c0105a97:	00 3c 00             	add    BYTE PTR [eax+eax*1],bh
c0105a9a:	00 00                	add    BYTE PTR [eax],al
c0105a9c:	94                   	xchg   esp,eax
c0105a9d:	0a 00                	or     al,BYTE PTR [eax]
c0105a9f:	00 2e                	add    BYTE PTR [esi],ch
c0105aa1:	16                   	push   ss
c0105aa2:	10 c0                	adc    al,al
c0105aa4:	34 00                	xor    al,0x0
c0105aa6:	00 00                	add    BYTE PTR [eax],al
c0105aa8:	41                   	inc    ecx
c0105aa9:	0e                   	push   cs
c0105aaa:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0105ab0:	44                   	inc    esp
c0105ab1:	2e 08 83 03 44 2e 0c 	or     BYTE PTR cs:[ebx+0xc2e4403],al
c0105ab8:	42                   	inc    edx
c0105ab9:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c0105abd:	00 48 2e             	add    BYTE PTR [eax+0x2e],cl
c0105ac0:	04 04                	add    al,0x4
c0105ac2:	01 00                	add    DWORD PTR [eax],eax
c0105ac4:	00 00                	add    BYTE PTR [eax],al
c0105ac6:	2e 08 42 2e          	or     BYTE PTR cs:[edx+0x2e],al
c0105aca:	0c 41                	or     al,0x41
c0105acc:	2e 10 4e 2e          	adc    BYTE PTR cs:[esi+0x2e],cl
c0105ad0:	00 44 c5 0c          	add    BYTE PTR [ebp+eax*8+0xc],al
c0105ad4:	04 04                	add    al,0x4
c0105ad6:	c3                   	ret    
c0105ad7:	00 3c 00             	add    BYTE PTR [eax+eax*1],bh
c0105ada:	00 00                	add    BYTE PTR [eax],al
c0105adc:	d4 0a                	aam    0xa
c0105ade:	00 00                	add    BYTE PTR [eax],al
c0105ae0:	62 16                	bound  edx,QWORD PTR [esi]
c0105ae2:	10 c0                	adc    al,al
c0105ae4:	34 00                	xor    al,0x0
c0105ae6:	00 00                	add    BYTE PTR [eax],al
c0105ae8:	41                   	inc    ecx
c0105ae9:	0e                   	push   cs
c0105aea:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0105af0:	44                   	inc    esp
c0105af1:	2e 08 83 03 44 2e 0c 	or     BYTE PTR cs:[ebx+0xc2e4403],al
c0105af8:	42                   	inc    edx
c0105af9:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c0105afd:	00 48 2e             	add    BYTE PTR [eax+0x2e],cl
c0105b00:	04 04                	add    al,0x4
c0105b02:	01 00                	add    DWORD PTR [eax],eax
c0105b04:	00 00                	add    BYTE PTR [eax],al
c0105b06:	2e 08 42 2e          	or     BYTE PTR cs:[edx+0x2e],al
c0105b0a:	0c 41                	or     al,0x41
c0105b0c:	2e 10 4e 2e          	adc    BYTE PTR cs:[esi+0x2e],cl
c0105b10:	00 44 c5 0c          	add    BYTE PTR [ebp+eax*8+0xc],al
c0105b14:	04 04                	add    al,0x4
c0105b16:	c3                   	ret    
c0105b17:	00 98 00 00 00 14    	add    BYTE PTR [eax+0x14000000],bl
c0105b1d:	0b 00                	or     eax,DWORD PTR [eax]
c0105b1f:	00 96 16 10 c0 ab    	add    BYTE PTR [esi-0x543fefea],dl
c0105b25:	00 00                	add    BYTE PTR [eax],al
c0105b27:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c0105b2a:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0105b30:	41                   	inc    ecx
c0105b31:	87 03                	xchg   DWORD PTR [ebx],eax
c0105b33:	4a                   	dec    edx
c0105b34:	83 05 86 04 04 22 00 	add    DWORD PTR ds:0x22040486,0x0
c0105b3b:	00 00                	add    BYTE PTR [eax],al
c0105b3d:	2e 04 04             	cs add al,0x4
c0105b40:	04 00                	add    al,0x0
c0105b42:	00 00                	add    BYTE PTR [eax],al
c0105b44:	2e 08 42 2e          	or     BYTE PTR cs:[edx+0x2e],al
c0105b48:	0c 41                	or     al,0x41
c0105b4a:	2e 10 42 2e          	adc    BYTE PTR cs:[edx+0x2e],al
c0105b4e:	00 48 2e             	add    BYTE PTR [eax+0x2e],cl
c0105b51:	04 04                	add    al,0x4
c0105b53:	01 00                	add    DWORD PTR [eax],eax
c0105b55:	00 00                	add    BYTE PTR [eax],al
c0105b57:	2e 08 42 2e          	or     BYTE PTR cs:[edx+0x2e],al
c0105b5b:	0c 45                	or     al,0x45
c0105b5d:	2e 10 47 2e          	adc    BYTE PTR cs:[edi+0x2e],al
c0105b61:	00 45 2e             	add    BYTE PTR [ebp+0x2e],al
c0105b64:	04 04                	add    al,0x4
c0105b66:	05 00 00 00 2e       	add    eax,0x2e000000
c0105b6b:	08 45 2e             	or     BYTE PTR [ebp+0x2e],al
c0105b6e:	0c 45                	or     al,0x45
c0105b70:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c0105b74:	0c 41                	or     al,0x41
c0105b76:	2e 08 42 2e          	or     BYTE PTR cs:[edx+0x2e],al
c0105b7a:	0c 41                	or     al,0x41
c0105b7c:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c0105b80:	00 4b 2e             	add    BYTE PTR [ebx+0x2e],cl
c0105b83:	04 04                	add    al,0x4
c0105b85:	05 00 00 00 2e       	add    eax,0x2e000000
c0105b8a:	08 45 2e             	or     BYTE PTR [ebp+0x2e],al
c0105b8d:	0c 45                	or     al,0x45
c0105b8f:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c0105b93:	00 41 2e             	add    BYTE PTR [ecx+0x2e],al
c0105b96:	04 04                	add    al,0x4
c0105b98:	01 00                	add    DWORD PTR [eax],eax
c0105b9a:	00 00                	add    BYTE PTR [eax],al
c0105b9c:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c0105ba0:	0c 41                	or     al,0x41
c0105ba2:	2e 10 4b c3          	adc    BYTE PTR cs:[ebx-0x3d],cl
c0105ba6:	41                   	inc    ecx
c0105ba7:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c0105bab:	0c 04                	or     al,0x4
c0105bad:	04 c5                	add    al,0xc5
c0105baf:	41                   	inc    ecx
c0105bb0:	13 03                	adc    eax,DWORD PTR [ebx]
c0105bb2:	2e 00 4c 00 00       	add    BYTE PTR cs:[eax+eax*1+0x0],cl
c0105bb7:	00 b0 0b 00 00 41    	add    BYTE PTR [eax+0x4100000b],dh
c0105bbd:	17                   	pop    ss
c0105bbe:	10 c0                	adc    al,al
c0105bc0:	6c                   	ins    BYTE PTR es:[edi],dx
c0105bc1:	01 00                	add    DWORD PTR [eax],eax
c0105bc3:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c0105bc6:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0105bcc:	46                   	inc    esi
c0105bcd:	2e 0c 83             	cs or  al,0x83
c0105bd0:	05 86 04 87 03       	add    eax,0x3870486
c0105bd5:	47                   	inc    edi
c0105bd6:	2e 10 4e 2e          	adc    BYTE PTR cs:[esi+0x2e],cl
c0105bda:	00 02                	add    BYTE PTR [edx],al
c0105bdc:	b6 2e                	mov    dh,0x2e
c0105bde:	0c 41                	or     al,0x41
c0105be0:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c0105be4:	00 02                	add    BYTE PTR [edx],al
c0105be6:	5a                   	pop    edx
c0105be7:	2e 04 04             	cs add al,0x4
c0105bea:	05 00 00 00 2e       	add    eax,0x2e000000
c0105bef:	08 45 2e             	or     BYTE PTR [ebp+0x2e],al
c0105bf2:	0c 45                	or     al,0x45
c0105bf4:	2e 10 59 2e          	adc    BYTE PTR cs:[ecx+0x2e],bl
c0105bf8:	00 49 c3             	add    BYTE PTR [ecx-0x3d],cl
c0105bfb:	41                   	inc    ecx
c0105bfc:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c0105c00:	0c 04                	or     al,0x4
c0105c02:	04 c5                	add    al,0xc5
c0105c04:	a0 00 00 00 00       	mov    al,ds:0x0
c0105c09:	0c 00                	or     al,0x0
c0105c0b:	00 ad 18 10 c0 61    	add    BYTE PTR [ebp+0x61c01018],ch
c0105c11:	01 00                	add    DWORD PTR [eax],eax
c0105c13:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c0105c16:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0105c1c:	46                   	inc    esi
c0105c1d:	83 05 86 04 87 03 02 	add    DWORD PTR ds:0x3870486,0x2
c0105c24:	73 2e                	jae    c0105c54 <_edata+0xc4c>
c0105c26:	04 04                	add    al,0x4
c0105c28:	05 00 00 00 2e       	add    eax,0x2e000000
c0105c2d:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c0105c30:	0c 45                	or     al,0x45
c0105c32:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c0105c36:	00 71 2e             	add    BYTE PTR [ecx+0x2e],dh
c0105c39:	04 04                	add    al,0x4
c0105c3b:	05 00 00 00 2e       	add    eax,0x2e000000
c0105c40:	08 44 2e 0c          	or     BYTE PTR [esi+ebp*1+0xc],al
c0105c44:	45                   	inc    ebp
c0105c45:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c0105c49:	04 04                	add    al,0x4
c0105c4b:	05 00 00 00 2e       	add    eax,0x2e000000
c0105c50:	08 45 2e             	or     BYTE PTR [ebp+0x2e],al
c0105c53:	0c 47                	or     al,0x47
c0105c55:	2e 10 4a 2e          	adc    BYTE PTR cs:[edx+0x2e],cl
c0105c59:	04 04                	add    al,0x4
c0105c5b:	0b 00                	or     eax,DWORD PTR [eax]
c0105c5d:	00 00                	add    BYTE PTR [eax],al
c0105c5f:	2e 08 44 2e 0c       	or     BYTE PTR cs:[esi+ebp*1+0xc],al
c0105c64:	45                   	inc    ebp
c0105c65:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c0105c69:	04 04                	add    al,0x4
c0105c6b:	01 00                	add    DWORD PTR [eax],eax
c0105c6d:	00 00                	add    BYTE PTR [eax],al
c0105c6f:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c0105c73:	0c 45                	or     al,0x45
c0105c75:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c0105c79:	04 04                	add    al,0x4
c0105c7b:	01 00                	add    DWORD PTR [eax],eax
c0105c7d:	00 00                	add    BYTE PTR [eax],al
c0105c7f:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c0105c83:	0c 45                	or     al,0x45
c0105c85:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c0105c89:	04 04                	add    al,0x4
c0105c8b:	05 00 00 00 2e       	add    eax,0x2e000000
c0105c90:	08 45 2e             	or     BYTE PTR [ebp+0x2e],al
c0105c93:	0c 45                	or     al,0x45
c0105c95:	2e 10 5a 2e          	adc    BYTE PTR cs:[edx+0x2e],bl
c0105c99:	00 44 c3 41          	add    BYTE PTR [ebx+eax*8+0x41],al
c0105c9d:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c0105ca1:	0c 04                	or     al,0x4
c0105ca3:	04 c5                	add    al,0xc5
c0105ca5:	00 00                	add    BYTE PTR [eax],al
c0105ca7:	00 24 00             	add    BYTE PTR [eax+eax*1],ah
c0105caa:	00 00                	add    BYTE PTR [eax],al
c0105cac:	a4                   	movs   BYTE PTR es:[edi],BYTE PTR ds:[esi]
c0105cad:	0c 00                	or     al,0x0
c0105caf:	00 0e                	add    BYTE PTR [esi],cl
c0105cb1:	1a 10                	sbb    dl,BYTE PTR [eax]
c0105cb3:	c0 15 00 00 00 41 0e 	rcl    BYTE PTR ds:0x41000000,0xe
c0105cba:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0105cc0:	43                   	inc    ebx
c0105cc1:	2e 04 04             	cs add al,0x4
c0105cc4:	06                   	push   es
c0105cc5:	00 00                	add    BYTE PTR [eax],al
c0105cc7:	00 2e                	add    BYTE PTR [esi],ch
c0105cc9:	00 48 c5             	add    BYTE PTR [eax-0x3b],cl
c0105ccc:	0c 04                	or     al,0x4
c0105cce:	04 00                	add    al,0x0
c0105cd0:	2c 00                	sub    al,0x0
c0105cd2:	00 00                	add    BYTE PTR [eax],al
c0105cd4:	cc                   	int3   
c0105cd5:	0c 00                	or     al,0x0
c0105cd7:	00 23                	add    BYTE PTR [ebx],ah
c0105cd9:	1a 10                	sbb    dl,BYTE PTR [eax]
c0105cdb:	c0 2a 00             	shr    BYTE PTR [edx],0x0
c0105cde:	00 00                	add    BYTE PTR [eax],al
c0105ce0:	41                   	inc    ecx
c0105ce1:	0e                   	push   cs
c0105ce2:	08 85 02 47 0d 05    	or     BYTE PTR [ebp+0x50d4702],al
c0105ce8:	54                   	push   esp
c0105ce9:	2e 04 04             	cs add al,0x4
c0105cec:	02 00                	add    al,BYTE PTR [eax]
c0105cee:	00 00                	add    BYTE PTR [eax],al
c0105cf0:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c0105cf4:	0c 41                	or     al,0x41
c0105cf6:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c0105cfa:	00 41 c5             	add    BYTE PTR [ecx-0x3b],al
c0105cfd:	0c 04                	or     al,0x4
c0105cff:	04 28                	add    al,0x28
c0105d01:	00 00                	add    BYTE PTR [eax],al
c0105d03:	00 fc                	add    ah,bh
c0105d05:	0c 00                	or     al,0x0
c0105d07:	00 4d 1a             	add    BYTE PTR [ebp+0x1a],cl
c0105d0a:	10 c0                	adc    al,al
c0105d0c:	33 00                	xor    eax,DWORD PTR [eax]
c0105d0e:	00 00                	add    BYTE PTR [eax],al
c0105d10:	41                   	inc    ecx
c0105d11:	0e                   	push   cs
c0105d12:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0105d18:	45                   	inc    ebp
c0105d19:	86 03                	xchg   BYTE PTR [ebx],al
c0105d1b:	44                   	inc    esp
c0105d1c:	83 04 04 20          	add    DWORD PTR [esp+eax*1],0x20
c0105d20:	00 00                	add    BYTE PTR [eax],al
c0105d22:	00 c3                	add    bl,al
c0105d24:	41                   	inc    ecx
c0105d25:	c6 41 0c 04          	mov    BYTE PTR [ecx+0xc],0x4
c0105d29:	04 c5                	add    al,0xc5
c0105d2b:	00 68 00             	add    BYTE PTR [eax+0x0],ch
c0105d2e:	00 00                	add    BYTE PTR [eax],al
c0105d30:	28 0d 00 00 80 1a    	sub    BYTE PTR ds:0x1a800000,cl
c0105d36:	10 c0                	adc    al,al
c0105d38:	e1 00                	loope  c0105d3a <_edata+0xd32>
c0105d3a:	00 00                	add    BYTE PTR [eax],al
c0105d3c:	41                   	inc    ecx
c0105d3d:	0e                   	push   cs
c0105d3e:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0105d44:	46                   	inc    esi
c0105d45:	83 05 86 04 87 03 5d 	add    DWORD PTR ds:0x3870486,0x5d
c0105d4c:	2e 04 04             	cs add al,0x4
c0105d4f:	05 00 00 00 2e       	add    eax,0x2e000000
c0105d54:	08 45 2e             	or     BYTE PTR [ebp+0x2e],al
c0105d57:	0c 45                	or     al,0x45
c0105d59:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c0105d5d:	00 43 2e             	add    BYTE PTR [ebx+0x2e],al
c0105d60:	0c 41                	or     al,0x41
c0105d62:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c0105d66:	00 53 2e             	add    BYTE PTR [ebx+0x2e],dl
c0105d69:	04 04                	add    al,0x4
c0105d6b:	05 00 00 00 2e       	add    eax,0x2e000000
c0105d70:	08 45 2e             	or     BYTE PTR [ebp+0x2e],al
c0105d73:	0c 45                	or     al,0x45
c0105d75:	2e 10 4e 2e          	adc    BYTE PTR cs:[esi+0x2e],cl
c0105d79:	00 4f 2e             	add    BYTE PTR [edi+0x2e],cl
c0105d7c:	0c 42                	or     al,0x42
c0105d7e:	2e 10 58 2e          	adc    BYTE PTR cs:[eax+0x2e],bl
c0105d82:	00 49 2e             	add    BYTE PTR [ecx+0x2e],cl
c0105d85:	0c 42                	or     al,0x42
c0105d87:	2e 10 58 2e          	adc    BYTE PTR cs:[eax+0x2e],bl
c0105d8b:	00 54 c3 41          	add    BYTE PTR [ebx+eax*8+0x41],dl
c0105d8f:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c0105d93:	0c 04                	or     al,0x4
c0105d95:	04 c5                	add    al,0xc5
c0105d97:	00 44 00 00          	add    BYTE PTR [eax+eax*1+0x0],al
c0105d9b:	00 94 0d 00 00 64 1b 	add    BYTE PTR [ebp+ecx*1+0x1b640000],dl
c0105da2:	10 c0                	adc    al,al
c0105da4:	43                   	inc    ebx
c0105da5:	00 00                	add    BYTE PTR [eax],al
c0105da7:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c0105daa:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0105db0:	41                   	inc    ecx
c0105db1:	86 03                	xchg   BYTE PTR [ebx],al
c0105db3:	45                   	inc    ebp
c0105db4:	83 04 04 06          	add    DWORD PTR [esp+eax*1],0x6
c0105db8:	00 00                	add    BYTE PTR [eax],al
c0105dba:	00 2e                	add    BYTE PTR [esi],ch
c0105dbc:	0c 46                	or     al,0x46
c0105dbe:	2e 10 4a 2e          	adc    BYTE PTR cs:[edx+0x2e],cl
c0105dc2:	00 49 2e             	add    BYTE PTR [ecx+0x2e],cl
c0105dc5:	04 04                	add    al,0x4
c0105dc7:	05 00 00 00 2e       	add    eax,0x2e000000
c0105dcc:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c0105dcf:	0c 45                	or     al,0x45
c0105dd1:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c0105dd5:	00 44 c3 41          	add    BYTE PTR [ebx+eax*8+0x41],al
c0105dd9:	c6 41 0c 04          	mov    BYTE PTR [ecx+0xc],0x4
c0105ddd:	04 c5                	add    al,0xc5
c0105ddf:	00 28                	add    BYTE PTR [eax],ch
c0105de1:	00 00                	add    BYTE PTR [eax],al
c0105de3:	00 dc                	add    ah,bl
c0105de5:	0d 00 00 a7 1b       	or     eax,0x1ba70000
c0105dea:	10 c0                	adc    al,al
c0105dec:	26 00 00             	add    BYTE PTR es:[eax],al
c0105def:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c0105df2:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0105df8:	43                   	inc    ebx
c0105df9:	2e 08 55 2e          	or     BYTE PTR cs:[ebp+0x2e],dl
c0105dfd:	0c 41                	or     al,0x41
c0105dff:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c0105e03:	00 41 c5             	add    BYTE PTR [ecx-0x3b],al
c0105e06:	0c 04                	or     al,0x4
c0105e08:	04 00                	add    al,0x0
c0105e0a:	00 00                	add    BYTE PTR [eax],al
c0105e0c:	98                   	cwde   
c0105e0d:	00 00                	add    BYTE PTR [eax],al
c0105e0f:	00 08                	add    BYTE PTR [eax],cl
c0105e11:	0e                   	push   cs
c0105e12:	00 00                	add    BYTE PTR [eax],al
c0105e14:	cd 1b                	int    0x1b
c0105e16:	10 c0                	adc    al,al
c0105e18:	da 00                	fiadd  DWORD PTR [eax]
c0105e1a:	00 00                	add    BYTE PTR [eax],al
c0105e1c:	41                   	inc    ecx
c0105e1d:	0e                   	push   cs
c0105e1e:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0105e24:	46                   	inc    esi
c0105e25:	83 05 86 04 87 03 58 	add    DWORD PTR ds:0x3870486,0x58
c0105e2c:	2e 04 04             	cs add al,0x4
c0105e2f:	04 00                	add    al,0x0
c0105e31:	00 00                	add    BYTE PTR [eax],al
c0105e33:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c0105e37:	0c 41                	or     al,0x41
c0105e39:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c0105e3d:	00 49 2e             	add    BYTE PTR [ecx+0x2e],cl
c0105e40:	04 04                	add    al,0x4
c0105e42:	05 00 00 00 2e       	add    eax,0x2e000000
c0105e47:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c0105e4a:	0c 45                	or     al,0x45
c0105e4c:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c0105e50:	00 46 2e             	add    BYTE PTR [esi+0x2e],al
c0105e53:	04 04                	add    al,0x4
c0105e55:	04 00                	add    al,0x0
c0105e57:	00 00                	add    BYTE PTR [eax],al
c0105e59:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c0105e5d:	0c 41                	or     al,0x41
c0105e5f:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c0105e63:	00 49 2e             	add    BYTE PTR [ecx+0x2e],cl
c0105e66:	04 04                	add    al,0x4
c0105e68:	05 00 00 00 2e       	add    eax,0x2e000000
c0105e6d:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c0105e70:	0c 45                	or     al,0x45
c0105e72:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c0105e76:	00 46 2e             	add    BYTE PTR [esi+0x2e],al
c0105e79:	04 04                	add    al,0x4
c0105e7b:	04 00                	add    al,0x0
c0105e7d:	00 00                	add    BYTE PTR [eax],al
c0105e7f:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c0105e83:	0c 41                	or     al,0x41
c0105e85:	2e 10 54 2e 00       	adc    BYTE PTR cs:[esi+ebp*1+0x0],dl
c0105e8a:	5a                   	pop    edx
c0105e8b:	2e 04 04             	cs add al,0x4
c0105e8e:	05 00 00 00 2e       	add    eax,0x2e000000
c0105e93:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c0105e96:	0c 45                	or     al,0x45
c0105e98:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c0105e9c:	00 47 c3             	add    BYTE PTR [edi-0x3d],al
c0105e9f:	41                   	inc    ecx
c0105ea0:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c0105ea4:	0c 04                	or     al,0x4
c0105ea6:	04 c5                	add    al,0xc5
c0105ea8:	64 00 00             	add    BYTE PTR fs:[eax],al
c0105eab:	00 a4 0e 00 00 a7 1c 	add    BYTE PTR [esi+ecx*1+0x1ca70000],ah
c0105eb2:	10 c0                	adc    al,al
c0105eb4:	8c 00                	mov    WORD PTR [eax],es
c0105eb6:	00 00                	add    BYTE PTR [eax],al
c0105eb8:	41                   	inc    ecx
c0105eb9:	0e                   	push   cs
c0105eba:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0105ec0:	46                   	inc    esi
c0105ec1:	83 05 86 04 87 03 55 	add    DWORD PTR ds:0x3870486,0x55
c0105ec8:	2e 04 04             	cs add al,0x4
c0105ecb:	05 00 00 00 2e       	add    eax,0x2e000000
c0105ed0:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c0105ed3:	0c 45                	or     al,0x45
c0105ed5:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c0105ed9:	00 43 2e             	add    BYTE PTR [ebx+0x2e],al
c0105edc:	0c 44                	or     al,0x44
c0105ede:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c0105ee2:	00 47 2e             	add    BYTE PTR [edi+0x2e],al
c0105ee5:	0c 41                	or     al,0x41
c0105ee7:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c0105eeb:	0c 43                	or     al,0x43
c0105eed:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c0105ef1:	00 4f 2e             	add    BYTE PTR [edi+0x2e],cl
c0105ef4:	04 04                	add    al,0x4
c0105ef6:	05 00 00 00 2e       	add    eax,0x2e000000
c0105efb:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c0105efe:	0c 45                	or     al,0x45
c0105f00:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c0105f04:	00 47 c3             	add    BYTE PTR [edi-0x3d],al
c0105f07:	41                   	inc    ecx
c0105f08:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c0105f0c:	0c 04                	or     al,0x4
c0105f0e:	04 c5                	add    al,0xc5
c0105f10:	40                   	inc    eax
c0105f11:	00 00                	add    BYTE PTR [eax],al
c0105f13:	00 0c 0f             	add    BYTE PTR [edi+ecx*1],cl
c0105f16:	00 00                	add    BYTE PTR [eax],al
c0105f18:	33 1d 10 c0 5b 00    	xor    ebx,DWORD PTR ds:0x5bc010
c0105f1e:	00 00                	add    BYTE PTR [eax],al
c0105f20:	41                   	inc    ecx
c0105f21:	0e                   	push   cs
c0105f22:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0105f28:	42                   	inc    edx
c0105f29:	83 04 86 03          	add    DWORD PTR [esi+eax*4],0x3
c0105f2d:	51                   	push   ecx
c0105f2e:	2e 0c 44             	cs or  al,0x44
c0105f31:	2e 10 4d 2e          	adc    BYTE PTR cs:[ebp+0x2e],cl
c0105f35:	00 4d 2e             	add    BYTE PTR [ebp+0x2e],cl
c0105f38:	04 04                	add    al,0x4
c0105f3a:	05 00 00 00 2e       	add    eax,0x2e000000
c0105f3f:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c0105f42:	0c 45                	or     al,0x45
c0105f44:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c0105f48:	00 50 c3             	add    BYTE PTR [eax-0x3d],dl
c0105f4b:	41                   	inc    ecx
c0105f4c:	c6 41 0c 04          	mov    BYTE PTR [ecx+0xc],0x4
c0105f50:	04 c5                	add    al,0xc5
c0105f52:	00 00                	add    BYTE PTR [eax],al
c0105f54:	54                   	push   esp
c0105f55:	00 00                	add    BYTE PTR [eax],al
c0105f57:	00 50 0f             	add    BYTE PTR [eax+0xf],dl
c0105f5a:	00 00                	add    BYTE PTR [eax],al
c0105f5c:	8e 1d 10 c0 78 00    	mov    ds,WORD PTR ds:0x78c010
c0105f62:	00 00                	add    BYTE PTR [eax],al
c0105f64:	41                   	inc    ecx
c0105f65:	0e                   	push   cs
c0105f66:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0105f6c:	42                   	inc    edx
c0105f6d:	83 04 86 03          	add    DWORD PTR [esi+eax*4],0x3
c0105f71:	53                   	push   ebx
c0105f72:	2e 04 04             	cs add al,0x4
c0105f75:	05 00 00 00 2e       	add    eax,0x2e000000
c0105f7a:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c0105f7d:	0c 45                	or     al,0x45
c0105f7f:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c0105f83:	00 50 0a             	add    BYTE PTR [eax+0xa],dl
c0105f86:	c3                   	ret    
c0105f87:	41                   	inc    ecx
c0105f88:	c6 41 0c 04          	mov    BYTE PTR [ecx+0xc],0x4
c0105f8c:	04 c5                	add    al,0xc5
c0105f8e:	41                   	inc    ecx
c0105f8f:	0b 47 2e             	or     eax,DWORD PTR [edi+0x2e]
c0105f92:	04 04                	add    al,0x4
c0105f94:	05 00 00 00 2e       	add    eax,0x2e000000
c0105f99:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c0105f9c:	0c 45                	or     al,0x45
c0105f9e:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c0105fa2:	00 57 c3             	add    BYTE PTR [edi-0x3d],dl
c0105fa5:	41                   	inc    ecx
c0105fa6:	c6 41 0c 04          	mov    BYTE PTR [ecx+0xc],0x4
c0105faa:	04 c5                	add    al,0xc5
c0105fac:	28 00                	sub    BYTE PTR [eax],al
c0105fae:	00 00                	add    BYTE PTR [eax],al
c0105fb0:	a8 0f                	test   al,0xf
c0105fb2:	00 00                	add    BYTE PTR [eax],al
c0105fb4:	1d 1e 10 c0 1a       	sbb    eax,0x1ac0101e
c0105fb9:	00 00                	add    BYTE PTR [eax],al
c0105fbb:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c0105fbe:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0105fc4:	41                   	inc    ecx
c0105fc5:	86 03                	xchg   BYTE PTR [ebx],al
c0105fc7:	44                   	inc    esp
c0105fc8:	83 04 04 0e          	add    DWORD PTR [esp+eax*1],0xe
c0105fcc:	00 00                	add    BYTE PTR [eax],al
c0105fce:	00 c3                	add    bl,al
c0105fd0:	41                   	inc    ecx
c0105fd1:	c6 41 0c 04          	mov    BYTE PTR [ecx+0xc],0x4
c0105fd5:	04 c5                	add    al,0xc5
c0105fd7:	00 40 00             	add    BYTE PTR [eax+0x0],al
c0105fda:	00 00                	add    BYTE PTR [eax],al
c0105fdc:	d4 0f                	aam    0xf
c0105fde:	00 00                	add    BYTE PTR [eax],al
c0105fe0:	37                   	aaa    
c0105fe1:	1e                   	push   ds
c0105fe2:	10 c0                	adc    al,al
c0105fe4:	94                   	xchg   esp,eax
c0105fe5:	00 00                	add    BYTE PTR [eax],al
c0105fe7:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c0105fea:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0105ff0:	44                   	inc    esp
c0105ff1:	2e 04 83             	cs add al,0x83
c0105ff4:	03 4b 2e             	add    ecx,DWORD PTR [ebx+0x2e]
c0105ff7:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c0105ffa:	0c 41                	or     al,0x41
c0105ffc:	2e 10 49 2e          	adc    BYTE PTR cs:[ecx+0x2e],cl
c0106000:	0c 41                	or     al,0x41
c0106002:	2e 08 43 2e          	or     BYTE PTR cs:[ebx+0x2e],al
c0106006:	0c 44                	or     al,0x44
c0106008:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c010600c:	00 5b 2e             	add    BYTE PTR [ebx+0x2e],bl
c010600f:	0c 45                	or     al,0x45
c0106011:	2e 10 5f 2e          	adc    BYTE PTR cs:[edi+0x2e],bl
c0106015:	00 66 c5             	add    BYTE PTR [esi-0x3b],ah
c0106018:	0c 04                	or     al,0x4
c010601a:	04 c3                	add    al,0xc3
c010601c:	1c 00                	sbb    al,0x0
c010601e:	00 00                	add    BYTE PTR [eax],al
c0106020:	18 10                	sbb    BYTE PTR [eax],dl
c0106022:	00 00                	add    BYTE PTR [eax],al
c0106024:	cb                   	retf   
c0106025:	1e                   	push   ds
c0106026:	10 c0                	adc    al,al
c0106028:	0c 00                	or     al,0x0
c010602a:	00 00                	add    BYTE PTR [eax],al
c010602c:	41                   	inc    ecx
c010602d:	0e                   	push   cs
c010602e:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0106034:	48                   	dec    eax
c0106035:	0c 04                	or     al,0x4
c0106037:	04 c5                	add    al,0xc5
c0106039:	00 00                	add    BYTE PTR [eax],al
c010603b:	00 40 00             	add    BYTE PTR [eax+0x0],al
c010603e:	00 00                	add    BYTE PTR [eax],al
c0106040:	38 10                	cmp    BYTE PTR [eax],dl
c0106042:	00 00                	add    BYTE PTR [eax],al
c0106044:	d7                   	xlat   BYTE PTR ds:[ebx]
c0106045:	1e                   	push   ds
c0106046:	10 c0                	adc    al,al
c0106048:	6c                   	ins    BYTE PTR es:[edi],dx
c0106049:	00 00                	add    BYTE PTR [eax],al
c010604b:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c010604e:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0106054:	43                   	inc    ebx
c0106055:	2e 0c 45             	cs or  al,0x45
c0106058:	2e 10 6f 2e          	adc    BYTE PTR cs:[edi+0x2e],ch
c010605c:	04 04                	add    al,0x4
c010605e:	02 00                	add    al,BYTE PTR [eax]
c0106060:	00 00                	add    BYTE PTR [eax],al
c0106062:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c0106066:	0c 41                	or     al,0x41
c0106068:	2e 10 59 2e          	adc    BYTE PTR cs:[ecx+0x2e],bl
c010606c:	0c 41                	or     al,0x41
c010606e:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c0106072:	0c 45                	or     al,0x45
c0106074:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c0106078:	00 41 c5             	add    BYTE PTR [ecx-0x3b],al
c010607b:	0c 04                	or     al,0x4
c010607d:	04 00                	add    al,0x0
c010607f:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c0106082:	00 00                	add    BYTE PTR [eax],al
c0106084:	7c 10                	jl     c0106096 <_edata+0x108e>
c0106086:	00 00                	add    BYTE PTR [eax],al
c0106088:	43                   	inc    ebx
c0106089:	1f                   	pop    ds
c010608a:	10 c0                	adc    al,al
c010608c:	56                   	push   esi
c010608d:	00 00                	add    BYTE PTR [eax],al
c010608f:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c0106092:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0106098:	02 52 0c             	add    dl,BYTE PTR [edx+0xc]
c010609b:	04 04                	add    al,0x4
c010609d:	c5 00                	lds    eax,FWORD PTR [eax]
c010609f:	00 b8 00 00 00 9c    	add    BYTE PTR [eax-0x64000000],bh
c01060a5:	10 00                	adc    BYTE PTR [eax],al
c01060a7:	00 99 1f 10 c0 bf    	add    BYTE PTR [ecx-0x403fefe1],bl
c01060ad:	00 00                	add    BYTE PTR [eax],al
c01060af:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c01060b2:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c01060b8:	41                   	inc    ecx
c01060b9:	86 03                	xchg   BYTE PTR [ebx],al
c01060bb:	47                   	inc    edi
c01060bc:	2e 0c 42             	cs or  al,0x42
c01060bf:	2e 10 83 04 04 0e 00 	adc    BYTE PTR cs:[ebx+0xe0404],al
c01060c6:	00 00                	add    BYTE PTR [eax],al
c01060c8:	2e 04 04             	cs add al,0x4
c01060cb:	01 00                	add    DWORD PTR [eax],eax
c01060cd:	00 00                	add    BYTE PTR [eax],al
c01060cf:	2e 08 43 2e          	or     BYTE PTR cs:[ebx+0x2e],al
c01060d3:	0c 41                	or     al,0x41
c01060d5:	2e 10 4a 2e          	adc    BYTE PTR cs:[edx+0x2e],cl
c01060d9:	04 04                	add    al,0x4
c01060db:	03 00                	add    eax,DWORD PTR [eax]
c01060dd:	00 00                	add    BYTE PTR [eax],al
c01060df:	2e 08 43 2e          	or     BYTE PTR cs:[ebx+0x2e],al
c01060e3:	0c 44                	or     al,0x44
c01060e5:	2e 10 4c 2e 0c       	adc    BYTE PTR cs:[esi+ebp*1+0xc],cl
c01060ea:	41                   	inc    ecx
c01060eb:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c01060ef:	0c 45                	or     al,0x45
c01060f1:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c01060f5:	00 49 2e             	add    BYTE PTR [ecx+0x2e],cl
c01060f8:	04 04                	add    al,0x4
c01060fa:	05 00 00 00 2e       	add    eax,0x2e000000
c01060ff:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c0106102:	0c 45                	or     al,0x45
c0106104:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c0106108:	00 41 2e             	add    BYTE PTR [ecx+0x2e],al
c010610b:	04 04                	add    al,0x4
c010610d:	01 00                	add    DWORD PTR [eax],eax
c010610f:	00 00                	add    BYTE PTR [eax],al
c0106111:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c0106115:	0c 45                	or     al,0x45
c0106117:	2e 10 49 2e          	adc    BYTE PTR cs:[ecx+0x2e],cl
c010611b:	0c 41                	or     al,0x41
c010611d:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c0106121:	0c 45                	or     al,0x45
c0106123:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c0106127:	00 49 2e             	add    BYTE PTR [ecx+0x2e],cl
c010612a:	04 04                	add    al,0x4
c010612c:	05 00 00 00 2e       	add    eax,0x2e000000
c0106131:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c0106134:	0c 45                	or     al,0x45
c0106136:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c010613a:	00 41 2e             	add    BYTE PTR [ecx+0x2e],al
c010613d:	04 04                	add    al,0x4
c010613f:	01 00                	add    DWORD PTR [eax],eax
c0106141:	00 00                	add    BYTE PTR [eax],al
c0106143:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c0106147:	0c 45                	or     al,0x45
c0106149:	2e 10 4b c3          	adc    BYTE PTR cs:[ebx-0x3d],cl
c010614d:	41                   	inc    ecx
c010614e:	c6 41 0c 04          	mov    BYTE PTR [ecx+0xc],0x4
c0106152:	04 c5                	add    al,0xc5
c0106154:	41                   	inc    ecx
c0106155:	13 03                	adc    eax,DWORD PTR [ebx]
c0106157:	2e 00 00             	add    BYTE PTR cs:[eax],al
c010615a:	00 00                	add    BYTE PTR [eax],al
c010615c:	b4 00                	mov    ah,0x0
c010615e:	00 00                	add    BYTE PTR [eax],al
c0106160:	58                   	pop    eax
c0106161:	11 00                	adc    DWORD PTR [eax],eax
c0106163:	00 58 20             	add    BYTE PTR [eax+0x20],bl
c0106166:	10 c0                	adc    al,al
c0106168:	1e                   	push   ds
c0106169:	01 00                	add    DWORD PTR [eax],eax
c010616b:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c010616e:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0106174:	42                   	inc    edx
c0106175:	83 04 86 03          	add    DWORD PTR [esi+eax*4],0x3
c0106179:	58                   	pop    eax
c010617a:	2e 04 04             	cs add al,0x4
c010617d:	05 00 00 00 2e       	add    eax,0x2e000000
c0106182:	08 45 2e             	or     BYTE PTR [ebp+0x2e],al
c0106185:	0c 45                	or     al,0x45
c0106187:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c010618b:	00 48 2e             	add    BYTE PTR [eax+0x2e],cl
c010618e:	04 04                	add    al,0x4
c0106190:	01 00                	add    DWORD PTR [eax],eax
c0106192:	00 00                	add    BYTE PTR [eax],al
c0106194:	2e 08 44 2e 0c       	or     BYTE PTR cs:[esi+ebp*1+0xc],al
c0106199:	45                   	inc    ebp
c010619a:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c010619e:	00 49 2e             	add    BYTE PTR [ecx+0x2e],cl
c01061a1:	04 04                	add    al,0x4
c01061a3:	05 00 00 00 2e       	add    eax,0x2e000000
c01061a8:	08 45 2e             	or     BYTE PTR [ebp+0x2e],al
c01061ab:	0c 45                	or     al,0x45
c01061ad:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c01061b1:	00 41 2e             	add    BYTE PTR [ecx+0x2e],al
c01061b4:	04 04                	add    al,0x4
c01061b6:	01 00                	add    DWORD PTR [eax],eax
c01061b8:	00 00                	add    BYTE PTR [eax],al
c01061ba:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c01061be:	0c 45                	or     al,0x45
c01061c0:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c01061c4:	00 4a 2e             	add    BYTE PTR [edx+0x2e],cl
c01061c7:	0c 45                	or     al,0x45
c01061c9:	2e 10 52 2e          	adc    BYTE PTR cs:[edx+0x2e],dl
c01061cd:	00 49 2e             	add    BYTE PTR [ecx+0x2e],cl
c01061d0:	04 04                	add    al,0x4
c01061d2:	05 00 00 00 2e       	add    eax,0x2e000000
c01061d7:	08 45 2e             	or     BYTE PTR [ebp+0x2e],al
c01061da:	0c 45                	or     al,0x45
c01061dc:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c01061e0:	00 51 2e             	add    BYTE PTR [ecx+0x2e],dl
c01061e3:	04 04                	add    al,0x4
c01061e5:	05 00 00 00 2e       	add    eax,0x2e000000
c01061ea:	08 45 2e             	or     BYTE PTR [ebp+0x2e],al
c01061ed:	0c 45                	or     al,0x45
c01061ef:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c01061f3:	00 43 2e             	add    BYTE PTR [ebx+0x2e],al
c01061f6:	0c 45                	or     al,0x45
c01061f8:	2e 10 5d 2e          	adc    BYTE PTR cs:[ebp+0x2e],bl
c01061fc:	0c 41                	or     al,0x41
c01061fe:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c0106202:	0c 41                	or     al,0x41
c0106204:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c0106208:	00 44 c3 41          	add    BYTE PTR [ebx+eax*8+0x41],al
c010620c:	c6 41 0c 04          	mov    BYTE PTR [ecx+0xc],0x4
c0106210:	04 c5                	add    al,0xc5
c0106212:	00 00                	add    BYTE PTR [eax],al
c0106214:	38 00                	cmp    BYTE PTR [eax],al
c0106216:	00 00                	add    BYTE PTR [eax],al
c0106218:	10 12                	adc    BYTE PTR [edx],dl
c010621a:	00 00                	add    BYTE PTR [eax],al
c010621c:	76 21                	jbe    c010623f <_edata+0x1237>
c010621e:	10 c0                	adc    al,al
c0106220:	4b                   	dec    ebx
c0106221:	00 00                	add    BYTE PTR [eax],al
c0106223:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c0106226:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010622c:	42                   	inc    edx
c010622d:	83 04 86 03          	add    DWORD PTR [esi+eax*4],0x3
c0106231:	4d                   	dec    ebp
c0106232:	2e 04 04             	cs add al,0x4
c0106235:	05 00 00 00 2e       	add    eax,0x2e000000
c010623a:	08 45 2e             	or     BYTE PTR [ebp+0x2e],al
c010623d:	0c 45                	or     al,0x45
c010623f:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c0106243:	00 5b c3             	add    BYTE PTR [ebx-0x3d],bl
c0106246:	41                   	inc    ecx
c0106247:	c6 41 0c 04          	mov    BYTE PTR [ecx+0xc],0x4
c010624b:	04 c5                	add    al,0xc5
c010624d:	00 00                	add    BYTE PTR [eax],al
c010624f:	00 88 00 00 00 4c    	add    BYTE PTR [eax+0x4c000000],cl
c0106255:	12 00                	adc    al,BYTE PTR [eax]
c0106257:	00 c1                	add    cl,al
c0106259:	21 10                	and    DWORD PTR [eax],edx
c010625b:	c0 a2 00 00 00 41 0e 	shl    BYTE PTR [edx+0x41000000],0xe
c0106262:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0106268:	46                   	inc    esi
c0106269:	83 05 86 04 87 03 51 	add    DWORD PTR ds:0x3870486,0x51
c0106270:	2e 04 04             	cs add al,0x4
c0106273:	01 00                	add    DWORD PTR [eax],eax
c0106275:	00 00                	add    BYTE PTR [eax],al
c0106277:	2e 08 44 2e 0c       	or     BYTE PTR cs:[esi+ebp*1+0xc],al
c010627c:	45                   	inc    ebp
c010627d:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c0106281:	00 49 2e             	add    BYTE PTR [ecx+0x2e],cl
c0106284:	04 04                	add    al,0x4
c0106286:	05 00 00 00 2e       	add    eax,0x2e000000
c010628b:	08 45 2e             	or     BYTE PTR [ebp+0x2e],al
c010628e:	0c 45                	or     al,0x45
c0106290:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c0106294:	00 41 2e             	add    BYTE PTR [ecx+0x2e],al
c0106297:	04 04                	add    al,0x4
c0106299:	01 00                	add    DWORD PTR [eax],eax
c010629b:	00 00                	add    BYTE PTR [eax],al
c010629d:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c01062a1:	0c 45                	or     al,0x45
c01062a3:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c01062a7:	00 49 2e             	add    BYTE PTR [ecx+0x2e],cl
c01062aa:	04 04                	add    al,0x4
c01062ac:	05 00 00 00 2e       	add    eax,0x2e000000
c01062b1:	08 45 2e             	or     BYTE PTR [ebp+0x2e],al
c01062b4:	0c 45                	or     al,0x45
c01062b6:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c01062ba:	00 41 2e             	add    BYTE PTR [ecx+0x2e],al
c01062bd:	04 04                	add    al,0x4
c01062bf:	01 00                	add    DWORD PTR [eax],eax
c01062c1:	00 00                	add    BYTE PTR [eax],al
c01062c3:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c01062c7:	0c 45                	or     al,0x45
c01062c9:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c01062cd:	00 4e c3             	add    BYTE PTR [esi-0x3d],cl
c01062d0:	41                   	inc    ecx
c01062d1:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c01062d5:	0c 04                	or     al,0x4
c01062d7:	04 c5                	add    al,0xc5
c01062d9:	00 00                	add    BYTE PTR [eax],al
c01062db:	00 30                	add    BYTE PTR [eax],dh
c01062dd:	00 00                	add    BYTE PTR [eax],al
c01062df:	00 d8                	add    al,bl
c01062e1:	12 00                	adc    al,BYTE PTR [eax]
c01062e3:	00 64 22 10          	add    BYTE PTR [edx+eiz*1+0x10],ah
c01062e7:	c0 d8 00             	rcr    al,0x0
c01062ea:	00 00                	add    BYTE PTR [eax],al
c01062ec:	41                   	inc    ecx
c01062ed:	0e                   	push   cs
c01062ee:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c01062f4:	43                   	inc    ebx
c01062f5:	2e 04 04             	cs add al,0x4
c01062f8:	02 00                	add    al,BYTE PTR [eax]
c01062fa:	00 00                	add    BYTE PTR [eax],al
c01062fc:	2e 08 42 2e          	or     BYTE PTR cs:[edx+0x2e],al
c0106300:	0c 45                	or     al,0x45
c0106302:	2e 10 02             	adc    BYTE PTR cs:[edx],al
c0106305:	c7                   	(bad)  
c0106306:	2e 00 41 c5          	add    BYTE PTR cs:[ecx-0x3b],al
c010630a:	0c 04                	or     al,0x4
c010630c:	04 00                	add    al,0x0
c010630e:	00 00                	add    BYTE PTR [eax],al
c0106310:	1c 00                	sbb    al,0x0
c0106312:	00 00                	add    BYTE PTR [eax],al
c0106314:	0c 13                	or     al,0x13
c0106316:	00 00                	add    BYTE PTR [eax],al
c0106318:	3c 23                	cmp    al,0x23
c010631a:	10 c0                	adc    al,al
c010631c:	12 00                	adc    al,BYTE PTR [eax]
c010631e:	00 00                	add    BYTE PTR [eax],al
c0106320:	41                   	inc    ecx
c0106321:	0e                   	push   cs
c0106322:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0106328:	44                   	inc    esp
c0106329:	0c 04                	or     al,0x4
c010632b:	04 c5                	add    al,0xc5
c010632d:	00 00                	add    BYTE PTR [eax],al
c010632f:	00 38                	add    BYTE PTR [eax],bh
c0106331:	00 00                	add    BYTE PTR [eax],al
c0106333:	00 2c 13             	add    BYTE PTR [ebx+edx*1],ch
c0106336:	00 00                	add    BYTE PTR [eax],al
c0106338:	50                   	push   eax
c0106339:	23 10                	and    edx,DWORD PTR [eax]
c010633b:	c0 dd 00             	rcr    ch,0x0
c010633e:	00 00                	add    BYTE PTR [eax],al
c0106340:	41                   	inc    ecx
c0106341:	0e                   	push   cs
c0106342:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0106348:	42                   	inc    edx
c0106349:	83 04 86 03          	add    DWORD PTR [esi+eax*4],0x3
c010634d:	02 a5 2e 04 04 01    	add    ah,BYTE PTR [ebp+0x104042e]
c0106353:	00 00                	add    BYTE PTR [eax],al
c0106355:	00 2e                	add    BYTE PTR [esi],ch
c0106357:	08 45 2e             	or     BYTE PTR [ebp+0x2e],al
c010635a:	0c 42                	or     al,0x42
c010635c:	2e 10 64 2e 00       	adc    BYTE PTR cs:[esi+ebp*1+0x0],ah
c0106361:	44                   	inc    esp
c0106362:	c3                   	ret    
c0106363:	41                   	inc    ecx
c0106364:	c6 41 0c 04          	mov    BYTE PTR [ecx+0xc],0x4
c0106368:	04 c5                	add    al,0xc5
c010636a:	00 00                	add    BYTE PTR [eax],al
c010636c:	3c 00                	cmp    al,0x0
c010636e:	00 00                	add    BYTE PTR [eax],al
c0106370:	68 13 00 00 2d       	push   0x2d000013
c0106375:	24 10                	and    al,0x10
c0106377:	c0 47 00 00          	rol    BYTE PTR [edi+0x0],0x0
c010637b:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c010637e:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0106384:	41                   	inc    ecx
c0106385:	83 03 53             	add    DWORD PTR [ebx],0x53
c0106388:	2e 0c 41             	cs or  al,0x41
c010638b:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c010638f:	00 4b 2e             	add    BYTE PTR [ebx+0x2e],cl
c0106392:	04 04                	add    al,0x4
c0106394:	05 00 00 00 2e       	add    eax,0x2e000000
c0106399:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c010639c:	0c 45                	or     al,0x45
c010639e:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c01063a2:	00 47 c5             	add    BYTE PTR [edi-0x3b],al
c01063a5:	0c 04                	or     al,0x4
c01063a7:	04 c3                	add    al,0xc3
c01063a9:	00 00                	add    BYTE PTR [eax],al
c01063ab:	00 44 00 00          	add    BYTE PTR [eax+eax*1+0x0],al
c01063af:	00 a8 13 00 00 74    	add    BYTE PTR [eax+0x74000013],ch
c01063b5:	24 10                	and    al,0x10
c01063b7:	c0 48 00 00          	ror    BYTE PTR [eax+0x0],0x0
c01063bb:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c01063be:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c01063c4:	42                   	inc    edx
c01063c5:	83 03 4c             	add    DWORD PTR [ebx],0x4c
c01063c8:	2e 04 04             	cs add al,0x4
c01063cb:	05 00 00 00 2e       	add    eax,0x2e000000
c01063d0:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c01063d3:	0c 45                	or     al,0x45
c01063d5:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c01063d9:	00 43 2e             	add    BYTE PTR [ebx+0x2e],al
c01063dc:	0c 41                	or     al,0x41
c01063de:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c01063e2:	00 4d 0a             	add    BYTE PTR [ebp+0xa],cl
c01063e5:	c5 0c 04             	lds    ecx,FWORD PTR [esp+eax*1]
c01063e8:	04 c3                	add    al,0xc3
c01063ea:	45                   	inc    ebp
c01063eb:	0b 44 c5 0c          	or     eax,DWORD PTR [ebp+eax*8+0xc]
c01063ef:	04 04                	add    al,0x4
c01063f1:	c3                   	ret    
c01063f2:	00 00                	add    BYTE PTR [eax],al
c01063f4:	4c                   	dec    esp
c01063f5:	00 00                	add    BYTE PTR [eax],al
c01063f7:	00 f0                	add    al,dh
c01063f9:	13 00                	adc    eax,DWORD PTR [eax]
c01063fb:	00 bc 24 10 c0 59 00 	add    BYTE PTR [esp+0x59c010],bh
c0106402:	00 00                	add    BYTE PTR [eax],al
c0106404:	41                   	inc    ecx
c0106405:	0e                   	push   cs
c0106406:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010640c:	44                   	inc    esp
c010640d:	2e 0c 83             	cs or  al,0x83
c0106410:	03 42 2e             	add    eax,DWORD PTR [edx+0x2e]
c0106413:	10 48 2e             	adc    BYTE PTR [eax+0x2e],cl
c0106416:	00 47 2e             	add    BYTE PTR [edi+0x2e],al
c0106419:	04 04                	add    al,0x4
c010641b:	01 00                	add    DWORD PTR [eax],eax
c010641d:	00 00                	add    BYTE PTR [eax],al
c010641f:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c0106423:	0c 42                	or     al,0x42
c0106425:	2e 10 47 2e          	adc    BYTE PTR cs:[edi+0x2e],al
c0106429:	00 41 2e             	add    BYTE PTR [ecx+0x2e],al
c010642c:	04 04                	add    al,0x4
c010642e:	05 00 00 00 2e       	add    eax,0x2e000000
c0106433:	08 45 2e             	or     BYTE PTR [ebp+0x2e],al
c0106436:	0c 47                	or     al,0x47
c0106438:	2e 10 5b 2e          	adc    BYTE PTR cs:[ebx+0x2e],bl
c010643c:	00 44 c5 0c          	add    BYTE PTR [ebp+eax*8+0xc],al
c0106440:	04 04                	add    al,0x4
c0106442:	c3                   	ret    
c0106443:	00 48 00             	add    BYTE PTR [eax+0x0],cl
c0106446:	00 00                	add    BYTE PTR [eax],al
c0106448:	40                   	inc    eax
c0106449:	14 00                	adc    al,0x0
c010644b:	00 15 25 10 c0 3e    	add    BYTE PTR ds:0x3ec01025,dl
c0106451:	00 00                	add    BYTE PTR [eax],al
c0106453:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c0106456:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010645c:	44                   	inc    esp
c010645d:	2e 0c 83             	cs or  al,0x83
c0106460:	03 42 2e             	add    eax,DWORD PTR [edx+0x2e]
c0106463:	10 4b 2e             	adc    BYTE PTR [ebx+0x2e],cl
c0106466:	04 04                	add    al,0x4
c0106468:	04 00                	add    al,0x0
c010646a:	00 00                	add    BYTE PTR [eax],al
c010646c:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c0106470:	0c 41                	or     al,0x41
c0106472:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c0106476:	04 04                	add    al,0x4
c0106478:	05 00 00 00 2e       	add    eax,0x2e000000
c010647d:	08 45 2e             	or     BYTE PTR [ebp+0x2e],al
c0106480:	0c 41                	or     al,0x41
c0106482:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c0106486:	00 44 c5 0c          	add    BYTE PTR [ebp+eax*8+0xc],al
c010648a:	04 04                	add    al,0x4
c010648c:	c3                   	ret    
c010648d:	00 00                	add    BYTE PTR [eax],al
c010648f:	00 b4 00 00 00 8c 14 	add    BYTE PTR [eax+eax*1+0x148c0000],dh
c0106496:	00 00                	add    BYTE PTR [eax],al
c0106498:	53                   	push   ebx
c0106499:	25 10 c0 e7 00       	and    eax,0xe7c010
c010649e:	00 00                	add    BYTE PTR [eax],al
c01064a0:	41                   	inc    ecx
c01064a1:	0e                   	push   cs
c01064a2:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c01064a8:	46                   	inc    esi
c01064a9:	2e 0c 83             	cs or  al,0x83
c01064ac:	05 86 04 87 03       	add    eax,0x3870486
c01064b1:	45                   	inc    ebp
c01064b2:	2e 10 4b 2e          	adc    BYTE PTR cs:[ebx+0x2e],cl
c01064b6:	04 04                	add    al,0x4
c01064b8:	02 00                	add    al,BYTE PTR [eax]
c01064ba:	00 00                	add    BYTE PTR [eax],al
c01064bc:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c01064c0:	0c 43                	or     al,0x43
c01064c2:	2e 10 50 2e          	adc    BYTE PTR cs:[eax+0x2e],dl
c01064c6:	04 04                	add    al,0x4
c01064c8:	01 00                	add    DWORD PTR [eax],eax
c01064ca:	00 00                	add    BYTE PTR [eax],al
c01064cc:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c01064d0:	0c 41                	or     al,0x41
c01064d2:	2e 10 67 2e          	adc    BYTE PTR cs:[edi+0x2e],ah
c01064d6:	0c 43                	or     al,0x43
c01064d8:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c01064dc:	0c 45                	or     al,0x45
c01064de:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c01064e2:	00 49 2e             	add    BYTE PTR [ecx+0x2e],cl
c01064e5:	04 04                	add    al,0x4
c01064e7:	05 00 00 00 2e       	add    eax,0x2e000000
c01064ec:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c01064ef:	0c 45                	or     al,0x45
c01064f1:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c01064f5:	00 41 2e             	add    BYTE PTR [ecx+0x2e],al
c01064f8:	04 04                	add    al,0x4
c01064fa:	04 00                	add    al,0x0
c01064fc:	00 00                	add    BYTE PTR [eax],al
c01064fe:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c0106502:	0c 45                	or     al,0x45
c0106504:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c0106508:	0c 41                	or     al,0x41
c010650a:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c010650e:	0c 45                	or     al,0x45
c0106510:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c0106514:	00 49 2e             	add    BYTE PTR [ecx+0x2e],cl
c0106517:	04 04                	add    al,0x4
c0106519:	05 00 00 00 2e       	add    eax,0x2e000000
c010651e:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c0106521:	0c 45                	or     al,0x45
c0106523:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c0106527:	00 41 2e             	add    BYTE PTR [ecx+0x2e],al
c010652a:	04 04                	add    al,0x4
c010652c:	01 00                	add    DWORD PTR [eax],eax
c010652e:	00 00                	add    BYTE PTR [eax],al
c0106530:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c0106534:	0c 45                	or     al,0x45
c0106536:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c010653a:	00 47 c3             	add    BYTE PTR [edi-0x3d],al
c010653d:	41                   	inc    ecx
c010653e:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c0106542:	0c 04                	or     al,0x4
c0106544:	04 c5                	add    al,0xc5
c0106546:	00 00                	add    BYTE PTR [eax],al
c0106548:	24 00                	and    al,0x0
c010654a:	00 00                	add    BYTE PTR [eax],al
c010654c:	44                   	inc    esp
c010654d:	15 00 00 3c 26       	adc    eax,0x263c0000
c0106552:	10 c0                	adc    al,al
c0106554:	15 00 00 00 41       	adc    eax,0x41000000
c0106559:	0e                   	push   cs
c010655a:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0106560:	43                   	inc    ebx
c0106561:	2e 0c 45             	cs or  al,0x45
c0106564:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c0106568:	00 41 c5             	add    BYTE PTR [ecx-0x3b],al
c010656b:	0c 04                	or     al,0x4
c010656d:	04 00                	add    al,0x0
c010656f:	00 3c 00             	add    BYTE PTR [eax+eax*1],bh
c0106572:	00 00                	add    BYTE PTR [eax],al
c0106574:	6c                   	ins    BYTE PTR es:[edi],dx
c0106575:	15 00 00 51 26       	adc    eax,0x26510000
c010657a:	10 c0                	adc    al,al
c010657c:	3e 00 00             	add    BYTE PTR ds:[eax],al
c010657f:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c0106582:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0106588:	41                   	inc    ecx
c0106589:	86 03                	xchg   BYTE PTR [ebx],al
c010658b:	44                   	inc    esp
c010658c:	83 04 04 06          	add    DWORD PTR [esp+eax*1],0x6
c0106590:	00 00                	add    BYTE PTR [eax],al
c0106592:	00 2e                	add    BYTE PTR [esi],ch
c0106594:	0c 45                	or     al,0x45
c0106596:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c010659a:	0c 41                	or     al,0x41
c010659c:	2e 08 46 2e          	or     BYTE PTR cs:[esi+0x2e],al
c01065a0:	0c 44                	or     al,0x44
c01065a2:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c01065a6:	00 4b c3             	add    BYTE PTR [ebx-0x3d],cl
c01065a9:	41                   	inc    ecx
c01065aa:	c6 41 0c 04          	mov    BYTE PTR [ecx+0xc],0x4
c01065ae:	04 c5                	add    al,0xc5
c01065b0:	3c 00                	cmp    al,0x0
c01065b2:	00 00                	add    BYTE PTR [eax],al
c01065b4:	ac                   	lods   al,BYTE PTR ds:[esi]
c01065b5:	15 00 00 8f 26       	adc    eax,0x268f0000
c01065ba:	10 c0                	adc    al,al
c01065bc:	39 00                	cmp    DWORD PTR [eax],eax
c01065be:	00 00                	add    BYTE PTR [eax],al
c01065c0:	41                   	inc    ecx
c01065c1:	0e                   	push   cs
c01065c2:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c01065c8:	41                   	inc    ecx
c01065c9:	86 03                	xchg   BYTE PTR [ebx],al
c01065cb:	44                   	inc    esp
c01065cc:	83 04 04 06          	add    DWORD PTR [esp+eax*1],0x6
c01065d0:	00 00                	add    BYTE PTR [eax],al
c01065d2:	00 2e                	add    BYTE PTR [esi],ch
c01065d4:	0c 45                	or     al,0x45
c01065d6:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c01065da:	0c 41                	or     al,0x41
c01065dc:	2e 08 44 2e 0c       	or     BYTE PTR cs:[esi+ebp*1+0xc],al
c01065e1:	41                   	inc    ecx
c01065e2:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c01065e6:	00 4b c3             	add    BYTE PTR [ebx-0x3d],cl
c01065e9:	41                   	inc    ecx
c01065ea:	c6 41 0c 04          	mov    BYTE PTR [ecx+0xc],0x4
c01065ee:	04 c5                	add    al,0xc5
c01065f0:	40                   	inc    eax
c01065f1:	00 00                	add    BYTE PTR [eax],al
c01065f3:	00 ec                	add    ah,ch
c01065f5:	15 00 00 c8 26       	adc    eax,0x26c80000
c01065fa:	10 c0                	adc    al,al
c01065fc:	40                   	inc    eax
c01065fd:	00 00                	add    BYTE PTR [eax],al
c01065ff:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c0106602:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0106608:	46                   	inc    esi
c0106609:	2e 0c 83             	cs or  al,0x83
c010660c:	05 86 04 87 03       	add    eax,0x3870486
c0106611:	4e                   	dec    esi
c0106612:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c0106616:	04 04                	add    al,0x4
c0106618:	01 00                	add    DWORD PTR [eax],eax
c010661a:	00 00                	add    BYTE PTR [eax],al
c010661c:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c0106620:	0c 44                	or     al,0x44
c0106622:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c0106626:	00 4b c3             	add    BYTE PTR [ebx-0x3d],cl
c0106629:	41                   	inc    ecx
c010662a:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c010662e:	0c 04                	or     al,0x4
c0106630:	04 c5                	add    al,0xc5
c0106632:	00 00                	add    BYTE PTR [eax],al
c0106634:	40                   	inc    eax
c0106635:	00 00                	add    BYTE PTR [eax],al
c0106637:	00 30                	add    BYTE PTR [eax],dh
c0106639:	16                   	push   ss
c010663a:	00 00                	add    BYTE PTR [eax],al
c010663c:	08 27                	or     BYTE PTR [edi],ah
c010663e:	10 c0                	adc    al,al
c0106640:	40                   	inc    eax
c0106641:	00 00                	add    BYTE PTR [eax],al
c0106643:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c0106646:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010664c:	46                   	inc    esi
c010664d:	2e 0c 83             	cs or  al,0x83
c0106650:	05 86 04 87 03       	add    eax,0x3870486
c0106655:	4e                   	dec    esi
c0106656:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c010665a:	04 04                	add    al,0x4
c010665c:	01 00                	add    DWORD PTR [eax],eax
c010665e:	00 00                	add    BYTE PTR [eax],al
c0106660:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c0106664:	0c 44                	or     al,0x44
c0106666:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c010666a:	00 4b c3             	add    BYTE PTR [ebx-0x3d],cl
c010666d:	41                   	inc    ecx
c010666e:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c0106672:	0c 04                	or     al,0x4
c0106674:	04 c5                	add    al,0xc5
c0106676:	00 00                	add    BYTE PTR [eax],al
c0106678:	3c 00                	cmp    al,0x0
c010667a:	00 00                	add    BYTE PTR [eax],al
c010667c:	74 16                	je     c0106694 <_edata+0x168c>
c010667e:	00 00                	add    BYTE PTR [eax],al
c0106680:	48                   	dec    eax
c0106681:	27                   	daa    
c0106682:	10 c0                	adc    al,al
c0106684:	66 00 00             	data16 add BYTE PTR [eax],al
c0106687:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c010668a:	08 85 02 44 0d 05    	or     BYTE PTR [ebp+0x50d4402],al
c0106690:	48                   	dec    eax
c0106691:	83 05 86 04 87 03 67 	add    DWORD PTR ds:0x3870486,0x67
c0106698:	2e 04 04             	cs add al,0x4
c010669b:	01 00                	add    DWORD PTR [eax],eax
c010669d:	00 00                	add    BYTE PTR [eax],al
c010669f:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c01066a3:	0c 42                	or     al,0x42
c01066a5:	2e 10 5e 2e          	adc    BYTE PTR cs:[esi+0x2e],bl
c01066a9:	00 4c c3 41          	add    BYTE PTR [ebx+eax*8+0x41],cl
c01066ad:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c01066b1:	0c 04                	or     al,0x4
c01066b3:	04 c5                	add    al,0xc5
c01066b5:	00 00                	add    BYTE PTR [eax],al
c01066b7:	00 3c 00             	add    BYTE PTR [eax+eax*1],bh
c01066ba:	00 00                	add    BYTE PTR [eax],al
c01066bc:	b4 16                	mov    ah,0x16
c01066be:	00 00                	add    BYTE PTR [eax],al
c01066c0:	ae                   	scas   al,BYTE PTR es:[edi]
c01066c1:	27                   	daa    
c01066c2:	10 c0                	adc    al,al
c01066c4:	66 00 00             	data16 add BYTE PTR [eax],al
c01066c7:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c01066ca:	08 85 02 44 0d 05    	or     BYTE PTR [ebp+0x50d4402],al
c01066d0:	48                   	dec    eax
c01066d1:	83 05 86 04 87 03 67 	add    DWORD PTR ds:0x3870486,0x67
c01066d8:	2e 04 04             	cs add al,0x4
c01066db:	01 00                	add    DWORD PTR [eax],eax
c01066dd:	00 00                	add    BYTE PTR [eax],al
c01066df:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c01066e3:	0c 42                	or     al,0x42
c01066e5:	2e 10 5e 2e          	adc    BYTE PTR cs:[esi+0x2e],bl
c01066e9:	00 4c c3 41          	add    BYTE PTR [ebx+eax*8+0x41],cl
c01066ed:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c01066f1:	0c 04                	or     al,0x4
c01066f3:	04 c5                	add    al,0xc5
c01066f5:	00 00                	add    BYTE PTR [eax],al
c01066f7:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c01066fa:	00 00                	add    BYTE PTR [eax],al
c01066fc:	f4                   	hlt    
c01066fd:	16                   	push   ss
c01066fe:	00 00                	add    BYTE PTR [eax],al
c0106700:	14 28                	adc    al,0x28
c0106702:	10 c0                	adc    al,al
c0106704:	0f 00 00             	sldt   WORD PTR [eax]
c0106707:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c010670a:	08 85 02 47 0d 05    	or     BYTE PTR [ebp+0x50d4702],al
c0106710:	46                   	inc    esi
c0106711:	0c 04                	or     al,0x4
c0106713:	04 c5                	add    al,0xc5
c0106715:	00 00                	add    BYTE PTR [eax],al
c0106717:	00 2c 00             	add    BYTE PTR [eax+eax*1],ch
c010671a:	00 00                	add    BYTE PTR [eax],al
c010671c:	14 17                	adc    al,0x17
c010671e:	00 00                	add    BYTE PTR [eax],al
c0106720:	23 28                	and    ebp,DWORD PTR [eax]
c0106722:	10 c0                	adc    al,al
c0106724:	3e 00 00             	add    BYTE PTR ds:[eax],al
c0106727:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c010672a:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0106730:	65 2e 04 04          	gs cs add al,0x4
c0106734:	02 00                	add    al,BYTE PTR [eax]
c0106736:	00 00                	add    BYTE PTR [eax],al
c0106738:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c010673c:	0c 45                	or     al,0x45
c010673e:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c0106742:	00 41 c5             	add    BYTE PTR [ecx-0x3b],al
c0106745:	0c 04                	or     al,0x4
c0106747:	04 50                	add    al,0x50
c0106749:	00 00                	add    BYTE PTR [eax],al
c010674b:	00 44 17 00          	add    BYTE PTR [edi+edx*1+0x0],al
c010674f:	00 61 28             	add    BYTE PTR [ecx+0x28],ah
c0106752:	10 c0                	adc    al,al
c0106754:	bf 01 00 00 41       	mov    edi,0x41000001
c0106759:	0e                   	push   cs
c010675a:	08 85 02 47 0d 05    	or     BYTE PTR [ebp+0x50d4702],al
c0106760:	46                   	inc    esi
c0106761:	83 03 03             	add    DWORD PTR [ebx],0x3
c0106764:	1d 01 2e 0c 45       	sbb    eax,0x450c2e01
c0106769:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c010676d:	00 45 2e             	add    BYTE PTR [ebp+0x2e],al
c0106770:	04 04                	add    al,0x4
c0106772:	01 00                	add    DWORD PTR [eax],eax
c0106774:	00 00                	add    BYTE PTR [eax],al
c0106776:	2e 08 44 2e 0c       	or     BYTE PTR cs:[esi+ebp*1+0xc],al
c010677b:	45                   	inc    ebp
c010677c:	2e 10 47 2e          	adc    BYTE PTR cs:[edi+0x2e],al
c0106780:	00 02                	add    BYTE PTR [edx],al
c0106782:	5c                   	pop    esp
c0106783:	2e 04 04             	cs add al,0x4
c0106786:	01 00                	add    DWORD PTR [eax],eax
c0106788:	00 00                	add    BYTE PTR [eax],al
c010678a:	2e 08 45 2e          	or     BYTE PTR cs:[ebp+0x2e],al
c010678e:	0c 42                	or     al,0x42
c0106790:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c0106794:	00 44 c5 0c          	add    BYTE PTR [ebp+eax*8+0xc],al
c0106798:	04 04                	add    al,0x4
c010679a:	c3                   	ret    
c010679b:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c010679e:	00 00                	add    BYTE PTR [eax],al
c01067a0:	98                   	cwde   
c01067a1:	17                   	pop    ss
c01067a2:	00 00                	add    BYTE PTR [eax],al
c01067a4:	20 2a                	and    BYTE PTR [edx],ch
c01067a6:	10 c0                	adc    al,al
c01067a8:	32 00                	xor    al,BYTE PTR [eax]
c01067aa:	00 00                	add    BYTE PTR [eax],al
c01067ac:	41                   	inc    ecx
c01067ad:	0e                   	push   cs
c01067ae:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c01067b4:	6e                   	outs   dx,BYTE PTR ds:[esi]
c01067b5:	c5 0c 04             	lds    ecx,FWORD PTR [esp+eax*1]
c01067b8:	04 00                	add    al,0x0
c01067ba:	00 00                	add    BYTE PTR [eax],al
c01067bc:	1c 00                	sbb    al,0x0
c01067be:	00 00                	add    BYTE PTR [eax],al
c01067c0:	b8 17 00 00 52       	mov    eax,0x52000017
c01067c5:	2a 10                	sub    dl,BYTE PTR [eax]
c01067c7:	c0 fe 00             	sar    dh,0x0
c01067ca:	00 00                	add    BYTE PTR [eax],al
c01067cc:	41                   	inc    ecx
c01067cd:	0e                   	push   cs
c01067ce:	08 85 02 47 0d 05    	or     BYTE PTR [ebp+0x50d4702],al
c01067d4:	02 f5                	add    dh,ch
c01067d6:	0c 04                	or     al,0x4
c01067d8:	04 c5                	add    al,0xc5
c01067da:	00 00                	add    BYTE PTR [eax],al
c01067dc:	24 00                	and    al,0x0
c01067de:	00 00                	add    BYTE PTR [eax],al
c01067e0:	d8 17                	fcom   DWORD PTR [edi]
c01067e2:	00 00                	add    BYTE PTR [eax],al
c01067e4:	50                   	push   eax
c01067e5:	2b 10                	sub    edx,DWORD PTR [eax]
c01067e7:	c0 3a 00             	sar    BYTE PTR [edx],0x0
c01067ea:	00 00                	add    BYTE PTR [eax],al
c01067ec:	47                   	inc    edi
c01067ed:	0e                   	push   cs
c01067ee:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c01067f4:	48                   	dec    eax
c01067f5:	86 04 87             	xchg   BYTE PTR [edi+eax*4],al
c01067f8:	03 64 c6 41          	add    esp,DWORD PTR [esi+eax*8+0x41]
c01067fc:	c7 41 0c 04 04 c5 00 	mov    DWORD PTR [ecx+0xc],0xc50404
c0106803:	00 28                	add    BYTE PTR [eax],ch
c0106805:	00 00                	add    BYTE PTR [eax],al
c0106807:	00 00                	add    BYTE PTR [eax],al
c0106809:	18 00                	sbb    BYTE PTR [eax],al
c010680b:	00 8c 2b 10 c0 ac 00 	add    BYTE PTR [ebx+ebp*1+0xacc010],cl
c0106812:	00 00                	add    BYTE PTR [eax],al
c0106814:	41                   	inc    ecx
c0106815:	0e                   	push   cs
c0106816:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010681c:	42                   	inc    edx
c010681d:	86 04 87             	xchg   BYTE PTR [edi+eax*4],al
c0106820:	03 49 83             	add    ecx,DWORD PTR [ecx-0x7d]
c0106823:	05 02 96 c3 41       	add    eax,0x41c39602
c0106828:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c010682c:	0c 04                	or     al,0x4
c010682e:	04 c5                	add    al,0xc5
c0106830:	1c 00                	sbb    al,0x0
c0106832:	00 00                	add    BYTE PTR [eax],al
c0106834:	2c 18                	sub    al,0x18
c0106836:	00 00                	add    BYTE PTR [eax],al
c0106838:	38 2c 10             	cmp    BYTE PTR [eax+edx*1],ch
c010683b:	c0 18 00             	rcr    BYTE PTR [eax],0x0
c010683e:	00 00                	add    BYTE PTR [eax],al
c0106840:	41                   	inc    ecx
c0106841:	0e                   	push   cs
c0106842:	08 85 02 47 0d 05    	or     BYTE PTR [ebp+0x50d4702],al
c0106848:	4f                   	dec    edi
c0106849:	0c 04                	or     al,0x4
c010684b:	04 c5                	add    al,0xc5
c010684d:	00 00                	add    BYTE PTR [eax],al
c010684f:	00 24 00             	add    BYTE PTR [eax+eax*1],ah
c0106852:	00 00                	add    BYTE PTR [eax],al
c0106854:	4c                   	dec    esp
c0106855:	18 00                	sbb    BYTE PTR [eax],al
c0106857:	00 50 2c             	add    BYTE PTR [eax+0x2c],dl
c010685a:	10 c0                	adc    al,al
c010685c:	36 00 00             	add    BYTE PTR ss:[eax],al
c010685f:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c0106862:	08 85 02 47 0d 05    	or     BYTE PTR [ebp+0x50d4702],al
c0106868:	63 0a                	arpl   WORD PTR [edx],cx
c010686a:	c5 0c 04             	lds    ecx,FWORD PTR [esp+eax*1]
c010686d:	04 45                	add    al,0x45
c010686f:	0b 45 c5             	or     eax,DWORD PTR [ebp-0x3b]
c0106872:	0c 04                	or     al,0x4
c0106874:	04 00                	add    al,0x0
c0106876:	00 00                	add    BYTE PTR [eax],al
c0106878:	1c 00                	sbb    al,0x0
c010687a:	00 00                	add    BYTE PTR [eax],al
c010687c:	74 18                	je     c0106896 <_edata+0x188e>
c010687e:	00 00                	add    BYTE PTR [eax],al
c0106880:	88 2c 10             	mov    BYTE PTR [eax+edx*1],ch
c0106883:	c0 0a 00             	ror    BYTE PTR [edx],0x0
c0106886:	00 00                	add    BYTE PTR [eax],al
c0106888:	41                   	inc    ecx
c0106889:	0e                   	push   cs
c010688a:	08 85 02 47 0d 05    	or     BYTE PTR [ebp+0x50d4702],al
c0106890:	41                   	inc    ecx
c0106891:	0c 04                	or     al,0x4
c0106893:	04 c5                	add    al,0xc5
c0106895:	00 00                	add    BYTE PTR [eax],al
c0106897:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c010689a:	00 00                	add    BYTE PTR [eax],al
c010689c:	94                   	xchg   esp,eax
c010689d:	18 00                	sbb    BYTE PTR [eax],al
c010689f:	00 92 2c 10 c0 09    	add    BYTE PTR [edx+0x9c0102c],dl
c01068a5:	00 00                	add    BYTE PTR [eax],al
c01068a7:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c01068aa:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c01068b0:	41                   	inc    ecx
c01068b1:	0c 04                	or     al,0x4
c01068b3:	04 c5                	add    al,0xc5
c01068b5:	00 00                	add    BYTE PTR [eax],al
c01068b7:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c01068ba:	00 00                	add    BYTE PTR [eax],al
c01068bc:	b4 18                	mov    ah,0x18
c01068be:	00 00                	add    BYTE PTR [eax],al
c01068c0:	9b                   	fwait
c01068c1:	2c 10                	sub    al,0x10
c01068c3:	c0 10 00             	rcl    BYTE PTR [eax],0x0
c01068c6:	00 00                	add    BYTE PTR [eax],al
c01068c8:	41                   	inc    ecx
c01068c9:	0e                   	push   cs
c01068ca:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c01068d0:	4c                   	dec    esp
c01068d1:	c5 0c 04             	lds    ecx,FWORD PTR [esp+eax*1]
c01068d4:	04 00                	add    al,0x0
c01068d6:	00 00                	add    BYTE PTR [eax],al
c01068d8:	1c 00                	sbb    al,0x0
c01068da:	00 00                	add    BYTE PTR [eax],al
c01068dc:	d4 18                	aam    0x18
c01068de:	00 00                	add    BYTE PTR [eax],al
c01068e0:	ab                   	stos   DWORD PTR es:[edi],eax
c01068e1:	2c 10                	sub    al,0x10
c01068e3:	c0 41 00 00          	rol    BYTE PTR [ecx+0x0],0x0
c01068e7:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c01068ea:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c01068f0:	7d 0c                	jge    c01068fe <_edata+0x18f6>
c01068f2:	04 04                	add    al,0x4
c01068f4:	c5 00                	lds    eax,FWORD PTR [eax]
c01068f6:	00 00                	add    BYTE PTR [eax],al
c01068f8:	2c 00                	sub    al,0x0
c01068fa:	00 00                	add    BYTE PTR [eax],al
c01068fc:	f4                   	hlt    
c01068fd:	18 00                	sbb    BYTE PTR [eax],al
c01068ff:	00 ec                	add    ah,ch
c0106901:	2c 10                	sub    al,0x10
c0106903:	c0 1a 00             	rcr    BYTE PTR [edx],0x0
c0106906:	00 00                	add    BYTE PTR [eax],al
c0106908:	41                   	inc    ecx
c0106909:	0e                   	push   cs
c010690a:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0106910:	43                   	inc    ebx
c0106911:	2e 04 04             	cs add al,0x4
c0106914:	05 00 00 00 2e       	add    eax,0x2e000000
c0106919:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c010691c:	0c 43                	or     al,0x43
c010691e:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c0106922:	00 41 c5             	add    BYTE PTR [ecx-0x3b],al
c0106925:	0c 04                	or     al,0x4
c0106927:	04 1c                	add    al,0x1c
c0106929:	00 00                	add    BYTE PTR [eax],al
c010692b:	00 24 19             	add    BYTE PTR [ecx+ebx*1],ah
c010692e:	00 00                	add    BYTE PTR [eax],al
c0106930:	06                   	push   es
c0106931:	2d 10 c0 23 00       	sub    eax,0x23c010
c0106936:	00 00                	add    BYTE PTR [eax],al
c0106938:	41                   	inc    ecx
c0106939:	0e                   	push   cs
c010693a:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0106940:	47                   	inc    edi
c0106941:	0c 04                	or     al,0x4
c0106943:	04 c5                	add    al,0xc5
c0106945:	00 00                	add    BYTE PTR [eax],al
c0106947:	00 50 00             	add    BYTE PTR [eax+0x0],dl
c010694a:	00 00                	add    BYTE PTR [eax],al
c010694c:	44                   	inc    esp
c010694d:	19 00                	sbb    DWORD PTR [eax],eax
c010694f:	00 29                	add    BYTE PTR [ecx],ch
c0106951:	2d 10 c0 be 00       	sub    eax,0xbec010
c0106956:	00 00                	add    BYTE PTR [eax],al
c0106958:	41                   	inc    ecx
c0106959:	0e                   	push   cs
c010695a:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0106960:	42                   	inc    edx
c0106961:	86 04 87             	xchg   BYTE PTR [edi+eax*4],al
c0106964:	03 46 83             	add    eax,DWORD PTR [esi-0x7d]
c0106967:	05 5c 2e 04 04       	add    eax,0x4042e5c
c010696c:	05 00 00 00 2e       	add    eax,0x2e000000
c0106971:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c0106974:	0c 45                	or     al,0x45
c0106976:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c010697a:	00 02                	add    BYTE PTR [edx],al
c010697c:	4e                   	dec    esi
c010697d:	2e 04 04             	cs add al,0x4
c0106980:	02 00                	add    al,BYTE PTR [eax]
c0106982:	00 00                	add    BYTE PTR [eax],al
c0106984:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c0106988:	0c 41                	or     al,0x41
c010698a:	2e 10 4b 2e          	adc    BYTE PTR cs:[ebx+0x2e],cl
c010698e:	00 62 c3             	add    BYTE PTR [edx-0x3d],ah
c0106991:	41                   	inc    ecx
c0106992:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c0106996:	0c 04                	or     al,0x4
c0106998:	04 c5                	add    al,0xc5
c010699a:	00 00                	add    BYTE PTR [eax],al
c010699c:	3c 00                	cmp    al,0x0
c010699e:	00 00                	add    BYTE PTR [eax],al
c01069a0:	98                   	cwde   
c01069a1:	19 00                	sbb    DWORD PTR [eax],eax
c01069a3:	00 e7                	add    bh,ah
c01069a5:	2d 10 c0 68 00       	sub    eax,0x68c010
c01069aa:	00 00                	add    BYTE PTR [eax],al
c01069ac:	41                   	inc    ecx
c01069ad:	0e                   	push   cs
c01069ae:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c01069b4:	46                   	inc    esi
c01069b5:	83 05 86 04 87 03 53 	add    DWORD PTR ds:0x3870486,0x53
c01069bc:	2e 04 04             	cs add al,0x4
c01069bf:	05 00 00 00 2e       	add    eax,0x2e000000
c01069c4:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c01069c7:	0c 45                	or     al,0x45
c01069c9:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c01069cd:	00 74 c3 41          	add    BYTE PTR [ebx+eax*8+0x41],dh
c01069d1:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c01069d5:	0c 04                	or     al,0x4
c01069d7:	04 c5                	add    al,0xc5
c01069d9:	00 00                	add    BYTE PTR [eax],al
c01069db:	00 30                	add    BYTE PTR [eax],dh
c01069dd:	00 00                	add    BYTE PTR [eax],al
c01069df:	00 d8                	add    al,bl
c01069e1:	19 00                	sbb    DWORD PTR [eax],eax
c01069e3:	00 50 2e             	add    BYTE PTR [eax+0x2e],dl
c01069e6:	10 c0                	adc    al,al
c01069e8:	6a 00                	push   0x0
c01069ea:	00 00                	add    BYTE PTR [eax],al
c01069ec:	41                   	inc    ecx
c01069ed:	0e                   	push   cs
c01069ee:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c01069f4:	46                   	inc    esi
c01069f5:	2e 0c 83             	cs or  al,0x83
c01069f8:	05 86 04 87 03       	add    eax,0x3870486
c01069fd:	4d                   	dec    ebp
c01069fe:	2e 10 4b 2e          	adc    BYTE PTR cs:[ebx+0x2e],cl
c0106a02:	00 02                	add    BYTE PTR [edx],al
c0106a04:	45                   	inc    ebp
c0106a05:	c3                   	ret    
c0106a06:	41                   	inc    ecx
c0106a07:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c0106a0b:	0c 04                	or     al,0x4
c0106a0d:	04 c5                	add    al,0xc5
c0106a0f:	00 58 00             	add    BYTE PTR [eax+0x0],bl
c0106a12:	00 00                	add    BYTE PTR [eax],al
c0106a14:	0c 1a                	or     al,0x1a
c0106a16:	00 00                	add    BYTE PTR [eax],al
c0106a18:	ba 2e 10 c0 05       	mov    edx,0x5c0102e
c0106a1d:	01 00                	add    DWORD PTR [eax],eax
c0106a1f:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c0106a22:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0106a28:	46                   	inc    esi
c0106a29:	83 05 86 04 87 03 53 	add    DWORD PTR ds:0x3870486,0x53
c0106a30:	2e 0c 41             	cs or  al,0x41
c0106a33:	2e 10 64 2e 00       	adc    BYTE PTR cs:[esi+ebp*1+0x0],ah
c0106a38:	67 2e 04 04          	addr16 cs add al,0x4
c0106a3c:	05 00 00 00 2e       	add    eax,0x2e000000
c0106a41:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c0106a44:	0c 45                	or     al,0x45
c0106a46:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c0106a4a:	00 02                	add    BYTE PTR [edx],al
c0106a4c:	64 2e 0c 41          	fs cs or al,0x41
c0106a50:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c0106a54:	00 4a 2e             	add    BYTE PTR [edx+0x2e],cl
c0106a57:	0c 43                	or     al,0x43
c0106a59:	2e 10 4b c3          	adc    BYTE PTR cs:[ebx-0x3d],cl
c0106a5d:	41                   	inc    ecx
c0106a5e:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c0106a62:	0c 04                	or     al,0x4
c0106a64:	04 c5                	add    al,0xc5
c0106a66:	41                   	inc    ecx
c0106a67:	13 03                	adc    eax,DWORD PTR [ebx]
c0106a69:	2e 00 00             	add    BYTE PTR cs:[eax],al
c0106a6c:	58                   	pop    eax
c0106a6d:	00 00                	add    BYTE PTR [eax],al
c0106a6f:	00 68 1a             	add    BYTE PTR [eax+0x1a],ch
c0106a72:	00 00                	add    BYTE PTR [eax],al
c0106a74:	bf 2f 10 c0 01       	mov    edi,0x1c0102f
c0106a79:	01 00                	add    DWORD PTR [eax],eax
c0106a7b:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c0106a7e:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0106a84:	46                   	inc    esi
c0106a85:	83 05 86 04 87 03 69 	add    DWORD PTR ds:0x3870486,0x69
c0106a8c:	2e 04 04             	cs add al,0x4
c0106a8f:	05 00 00 00 2e       	add    eax,0x2e000000
c0106a94:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c0106a97:	0c 45                	or     al,0x45
c0106a99:	2e 10 47 2e          	adc    BYTE PTR cs:[edi+0x2e],al
c0106a9d:	00 43 2e             	add    BYTE PTR [ebx+0x2e],al
c0106aa0:	0c 41                	or     al,0x41
c0106aa2:	2e 10 64 2e 00       	adc    BYTE PTR cs:[esi+ebp*1+0x0],ah
c0106aa7:	02 71 2e             	add    dh,BYTE PTR [ecx+0x2e]
c0106aaa:	0c 41                	or     al,0x41
c0106aac:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c0106ab0:	00 4a 2e             	add    BYTE PTR [edx+0x2e],cl
c0106ab3:	0c 41                	or     al,0x41
c0106ab5:	2e 10 4b c3          	adc    BYTE PTR cs:[ebx-0x3d],cl
c0106ab9:	41                   	inc    ecx
c0106aba:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c0106abe:	0c 04                	or     al,0x4
c0106ac0:	04 c5                	add    al,0xc5
c0106ac2:	41                   	inc    ecx
c0106ac3:	13 03                	adc    eax,DWORD PTR [ebx]
c0106ac5:	2e 00 00             	add    BYTE PTR cs:[eax],al
c0106ac8:	1c 00                	sbb    al,0x0
c0106aca:	00 00                	add    BYTE PTR [eax],al
c0106acc:	c4 1a                	les    ebx,FWORD PTR [edx]
c0106ace:	00 00                	add    BYTE PTR [eax],al
c0106ad0:	c0                   	(bad)  
c0106ad1:	30 10                	xor    BYTE PTR [eax],dl
c0106ad3:	c0 14 00 00          	rcl    BYTE PTR [eax+eax*1],0x0
c0106ad7:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c0106ada:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0106ae0:	44                   	inc    esp
c0106ae1:	0c 04                	or     al,0x4
c0106ae3:	04 c5                	add    al,0xc5
c0106ae5:	00 00                	add    BYTE PTR [eax],al
c0106ae7:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c0106aea:	00 00                	add    BYTE PTR [eax],al
c0106aec:	e4 1a                	in     al,0x1a
c0106aee:	00 00                	add    BYTE PTR [eax],al
c0106af0:	d4 30                	aam    0x30
c0106af2:	10 c0                	adc    al,al
c0106af4:	12 00                	adc    al,BYTE PTR [eax]
c0106af6:	00 00                	add    BYTE PTR [eax],al
c0106af8:	41                   	inc    ecx
c0106af9:	0e                   	push   cs
c0106afa:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0106b00:	44                   	inc    esp
c0106b01:	0c 04                	or     al,0x4
c0106b03:	04 c5                	add    al,0xc5
c0106b05:	00 00                	add    BYTE PTR [eax],al
c0106b07:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c0106b0a:	00 00                	add    BYTE PTR [eax],al
c0106b0c:	04 1b                	add    al,0x1b
c0106b0e:	00 00                	add    BYTE PTR [eax],al
c0106b10:	e8 30 10 c0 1e       	call   ded07b45 <_kernel_end+0x1ebe764d>
c0106b15:	00 00                	add    BYTE PTR [eax],al
c0106b17:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c0106b1a:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0106b20:	5a                   	pop    edx
c0106b21:	0c 04                	or     al,0x4
c0106b23:	04 c5                	add    al,0xc5
c0106b25:	00 00                	add    BYTE PTR [eax],al
c0106b27:	00 28                	add    BYTE PTR [eax],ch
c0106b29:	00 00                	add    BYTE PTR [eax],al
c0106b2b:	00 24 1b             	add    BYTE PTR [ebx+ebx*1],ah
c0106b2e:	00 00                	add    BYTE PTR [eax],al
c0106b30:	06                   	push   es
c0106b31:	31 10                	xor    DWORD PTR [eax],edx
c0106b33:	c0 29 00             	shr    BYTE PTR [ecx],0x0
c0106b36:	00 00                	add    BYTE PTR [eax],al
c0106b38:	41                   	inc    ecx
c0106b39:	0e                   	push   cs
c0106b3a:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0106b40:	41                   	inc    ecx
c0106b41:	86 03                	xchg   BYTE PTR [ebx],al
c0106b43:	44                   	inc    esp
c0106b44:	83 04 04 1a          	add    DWORD PTR [esp+eax*1],0x1a
c0106b48:	00 00                	add    BYTE PTR [eax],al
c0106b4a:	00 c3                	add    bl,al
c0106b4c:	41                   	inc    ecx
c0106b4d:	c6 41 0c 04          	mov    BYTE PTR [ecx+0xc],0x4
c0106b51:	04 c5                	add    al,0xc5
c0106b53:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c0106b56:	00 00                	add    BYTE PTR [eax],al
c0106b58:	50                   	push   eax
c0106b59:	1b 00                	sbb    eax,DWORD PTR [eax]
c0106b5b:	00 2f                	add    BYTE PTR [edi],ch
c0106b5d:	31 10                	xor    DWORD PTR [eax],edx
c0106b5f:	c0 18 00             	rcr    BYTE PTR [eax],0x0
c0106b62:	00 00                	add    BYTE PTR [eax],al
c0106b64:	41                   	inc    ecx
c0106b65:	0e                   	push   cs
c0106b66:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0106b6c:	50                   	push   eax
c0106b6d:	0c 04                	or     al,0x4
c0106b6f:	04 c5                	add    al,0xc5
c0106b71:	00 00                	add    BYTE PTR [eax],al
c0106b73:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c0106b76:	00 00                	add    BYTE PTR [eax],al
c0106b78:	70 1b                	jo     c0106b95 <_edata+0x1b8d>
c0106b7a:	00 00                	add    BYTE PTR [eax],al
c0106b7c:	47                   	inc    edi
c0106b7d:	31 10                	xor    DWORD PTR [eax],edx
c0106b7f:	c0 18 00             	rcr    BYTE PTR [eax],0x0
c0106b82:	00 00                	add    BYTE PTR [eax],al
c0106b84:	41                   	inc    ecx
c0106b85:	0e                   	push   cs
c0106b86:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0106b8c:	50                   	push   eax
c0106b8d:	0c 04                	or     al,0x4
c0106b8f:	04 c5                	add    al,0xc5
c0106b91:	00 00                	add    BYTE PTR [eax],al
c0106b93:	00 20                	add    BYTE PTR [eax],ah
c0106b95:	00 00                	add    BYTE PTR [eax],al
c0106b97:	00 90 1b 00 00 5f    	add    BYTE PTR [eax+0x5f00001b],dl
c0106b9d:	31 10                	xor    DWORD PTR [eax],edx
c0106b9f:	c0 27 00             	shl    BYTE PTR [edi],0x0
c0106ba2:	00 00                	add    BYTE PTR [eax],al
c0106ba4:	41                   	inc    ecx
c0106ba5:	0e                   	push   cs
c0106ba6:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0106bac:	42                   	inc    edx
c0106bad:	83 03 5c             	add    DWORD PTR [ebx],0x5c
c0106bb0:	c3                   	ret    
c0106bb1:	41                   	inc    ecx
c0106bb2:	0c 04                	or     al,0x4
c0106bb4:	04 c5                	add    al,0xc5
c0106bb6:	00 00                	add    BYTE PTR [eax],al
c0106bb8:	28 00                	sub    BYTE PTR [eax],al
c0106bba:	00 00                	add    BYTE PTR [eax],al
c0106bbc:	b4 1b                	mov    ah,0x1b
c0106bbe:	00 00                	add    BYTE PTR [eax],al
c0106bc0:	86 31                	xchg   BYTE PTR [ecx],dh
c0106bc2:	10 c0                	adc    al,al
c0106bc4:	1a 00                	sbb    al,BYTE PTR [eax]
c0106bc6:	00 00                	add    BYTE PTR [eax],al
c0106bc8:	41                   	inc    ecx
c0106bc9:	0e                   	push   cs
c0106bca:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0106bd0:	44                   	inc    esp
c0106bd1:	2e 0c 83             	cs or  al,0x83
c0106bd4:	03 47 2e             	add    eax,DWORD PTR [edi+0x2e]
c0106bd7:	10 4b c5             	adc    BYTE PTR [ebx-0x3b],cl
c0106bda:	0c 04                	or     al,0x4
c0106bdc:	04 c3                	add    al,0xc3
c0106bde:	41                   	inc    ecx
c0106bdf:	13 03                	adc    eax,DWORD PTR [ebx]
c0106be1:	2e 00 00             	add    BYTE PTR cs:[eax],al
c0106be4:	1c 00                	sbb    al,0x0
c0106be6:	00 00                	add    BYTE PTR [eax],al
c0106be8:	e0 1b                	loopne c0106c05 <_edata+0x1bfd>
c0106bea:	00 00                	add    BYTE PTR [eax],al
c0106bec:	a0 31 10 c0 27       	mov    al,ds:0x27c01031
c0106bf1:	00 00                	add    BYTE PTR [eax],al
c0106bf3:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c0106bf6:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0106bfc:	63 0c 04             	arpl   WORD PTR [esp+eax*1],cx
c0106bff:	04 c5                	add    al,0xc5
c0106c01:	00 00                	add    BYTE PTR [eax],al
c0106c03:	00 3c 00             	add    BYTE PTR [eax+eax*1],bh
c0106c06:	00 00                	add    BYTE PTR [eax],al
c0106c08:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c0106c0b:	00 c7                	add    bh,al
c0106c0d:	31 10                	xor    DWORD PTR [eax],edx
c0106c0f:	c0 38 00             	sar    BYTE PTR [eax],0x0
c0106c12:	00 00                	add    BYTE PTR [eax],al
c0106c14:	41                   	inc    ecx
c0106c15:	0e                   	push   cs
c0106c16:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0106c1c:	46                   	inc    esi
c0106c1d:	83 05 86 04 87 03 4f 	add    DWORD PTR ds:0x3870486,0x4f
c0106c24:	2e 04 04             	cs add al,0x4
c0106c27:	01 00                	add    DWORD PTR [eax],eax
c0106c29:	00 00                	add    BYTE PTR [eax],al
c0106c2b:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c0106c2f:	0c 41                	or     al,0x41
c0106c31:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c0106c35:	00 53 c3             	add    BYTE PTR [ebx-0x3d],dl
c0106c38:	41                   	inc    ecx
c0106c39:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c0106c3d:	0c 04                	or     al,0x4
c0106c3f:	04 c5                	add    al,0xc5
c0106c41:	00 00                	add    BYTE PTR [eax],al
c0106c43:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c0106c46:	00 00                	add    BYTE PTR [eax],al
c0106c48:	40                   	inc    eax
c0106c49:	1c 00                	sbb    al,0x0
c0106c4b:	00 ff                	add    bh,bh
c0106c4d:	31 10                	xor    DWORD PTR [eax],edx
c0106c4f:	c0 1a 00             	rcr    BYTE PTR [edx],0x0
c0106c52:	00 00                	add    BYTE PTR [eax],al
c0106c54:	41                   	inc    ecx
c0106c55:	0e                   	push   cs
c0106c56:	08 85 02 44 0d 05    	or     BYTE PTR [ebp+0x50d4402],al
c0106c5c:	54                   	push   esp
c0106c5d:	0c 04                	or     al,0x4
c0106c5f:	04 c5                	add    al,0xc5
c0106c61:	00 00                	add    BYTE PTR [eax],al
c0106c63:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c0106c66:	00 00                	add    BYTE PTR [eax],al
c0106c68:	60                   	pusha  
c0106c69:	1c 00                	sbb    al,0x0
c0106c6b:	00 19                	add    BYTE PTR [ecx],bl
c0106c6d:	32 10                	xor    dl,BYTE PTR [eax]
c0106c6f:	c0 14 00 00          	rcl    BYTE PTR [eax+eax*1],0x0
c0106c73:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c0106c76:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0106c7c:	44                   	inc    esp
c0106c7d:	0c 04                	or     al,0x4
c0106c7f:	04 c5                	add    al,0xc5
c0106c81:	00 00                	add    BYTE PTR [eax],al
c0106c83:	00 28                	add    BYTE PTR [eax],ch
c0106c85:	00 00                	add    BYTE PTR [eax],al
c0106c87:	00 80 1c 00 00 30    	add    BYTE PTR [eax+0x3000001c],al
c0106c8d:	32 10                	xor    dl,BYTE PTR [eax]
c0106c8f:	c0 5f 00 00          	rcr    BYTE PTR [edi+0x0],0x0
c0106c93:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c0106c96:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0106c9c:	45                   	inc    ebp
c0106c9d:	86 04 87             	xchg   BYTE PTR [edi+eax*4],al
c0106ca0:	03 44 83 05          	add    eax,DWORD PTR [ebx+eax*4+0x5]
c0106ca4:	02 4f c3             	add    cl,BYTE PTR [edi-0x3d]
c0106ca7:	41                   	inc    ecx
c0106ca8:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c0106cac:	0c 04                	or     al,0x4
c0106cae:	04 c5                	add    al,0xc5
c0106cb0:	28 00                	sub    BYTE PTR [eax],al
c0106cb2:	00 00                	add    BYTE PTR [eax],al
c0106cb4:	ac                   	lods   al,BYTE PTR ds:[esi]
c0106cb5:	1c 00                	sbb    al,0x0
c0106cb7:	00 8f 32 10 c0 44    	add    BYTE PTR [edi+0x44c01032],cl
c0106cbd:	00 00                	add    BYTE PTR [eax],al
c0106cbf:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c0106cc2:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0106cc8:	44                   	inc    esp
c0106cc9:	86 03                	xchg   BYTE PTR [ebx],al
c0106ccb:	47                   	inc    edi
c0106ccc:	83 04 04 33          	add    DWORD PTR [esp+eax*1],0x33
c0106cd0:	00 00                	add    BYTE PTR [eax],al
c0106cd2:	00 c3                	add    bl,al
c0106cd4:	41                   	inc    ecx
c0106cd5:	c6 41 0c 04          	mov    BYTE PTR [ecx+0xc],0x4
c0106cd9:	04 c5                	add    al,0xc5
c0106cdb:	00 20                	add    BYTE PTR [eax],ah
c0106cdd:	00 00                	add    BYTE PTR [eax],al
c0106cdf:	00 d8                	add    al,bl
c0106ce1:	1c 00                	sbb    al,0x0
c0106ce3:	00 d3                	add    bl,dl
c0106ce5:	32 10                	xor    dl,BYTE PTR [eax]
c0106ce7:	c0 3c 00 00          	sar    BYTE PTR [eax+eax*1],0x0
c0106ceb:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c0106cee:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0106cf4:	41                   	inc    ecx
c0106cf5:	83 03 76             	add    DWORD PTR [ebx],0x76
c0106cf8:	c3                   	ret    
c0106cf9:	41                   	inc    ecx
c0106cfa:	0c 04                	or     al,0x4
c0106cfc:	04 c5                	add    al,0xc5
c0106cfe:	00 00                	add    BYTE PTR [eax],al
c0106d00:	20 00                	and    BYTE PTR [eax],al
c0106d02:	00 00                	add    BYTE PTR [eax],al
c0106d04:	fc                   	cld    
c0106d05:	1c 00                	sbb    al,0x0
c0106d07:	00 0f                	add    BYTE PTR [edi],cl
c0106d09:	33 10                	xor    edx,DWORD PTR [eax]
c0106d0b:	c0 2e 00             	shr    BYTE PTR [esi],0x0
c0106d0e:	00 00                	add    BYTE PTR [eax],al
c0106d10:	41                   	inc    ecx
c0106d11:	0e                   	push   cs
c0106d12:	08 85 02 47 0d 05    	or     BYTE PTR [ebp+0x50d4702],al
c0106d18:	46                   	inc    esi
c0106d19:	83 03 5e             	add    DWORD PTR [ebx],0x5e
c0106d1c:	c3                   	ret    
c0106d1d:	41                   	inc    ecx
c0106d1e:	0c 04                	or     al,0x4
c0106d20:	04 c5                	add    al,0xc5
c0106d22:	00 00                	add    BYTE PTR [eax],al
c0106d24:	1c 00                	sbb    al,0x0
c0106d26:	00 00                	add    BYTE PTR [eax],al
c0106d28:	20 1d 00 00 3d 33    	and    BYTE PTR ds:0x333d0000,bl
c0106d2e:	10 c0                	adc    al,al
c0106d30:	27                   	daa    
c0106d31:	00 00                	add    BYTE PTR [eax],al
c0106d33:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c0106d36:	08 85 02 47 0d 05    	or     BYTE PTR [ebp+0x50d4702],al
c0106d3c:	5e                   	pop    esi
c0106d3d:	0c 04                	or     al,0x4
c0106d3f:	04 c5                	add    al,0xc5
c0106d41:	00 00                	add    BYTE PTR [eax],al
c0106d43:	00 2c 00             	add    BYTE PTR [eax+eax*1],ch
c0106d46:	00 00                	add    BYTE PTR [eax],al
c0106d48:	40                   	inc    eax
c0106d49:	1d 00 00 64 33       	sbb    eax,0x33640000
c0106d4e:	10 c0                	adc    al,al
c0106d50:	a1 00 00 00 41       	mov    eax,ds:0x41000000
c0106d55:	0e                   	push   cs
c0106d56:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0106d5c:	42                   	inc    edx
c0106d5d:	83 03 02             	add    DWORD PTR [ebx],0x2
c0106d60:	92                   	xchg   edx,eax
c0106d61:	0a c3                	or     al,bl
c0106d63:	41                   	inc    ecx
c0106d64:	0c 04                	or     al,0x4
c0106d66:	04 c5                	add    al,0xc5
c0106d68:	45                   	inc    ebp
c0106d69:	0b 42 c3             	or     eax,DWORD PTR [edx-0x3d]
c0106d6c:	41                   	inc    ecx
c0106d6d:	0c 04                	or     al,0x4
c0106d6f:	04 c5                	add    al,0xc5
c0106d71:	00 00                	add    BYTE PTR [eax],al
c0106d73:	00 3c 00             	add    BYTE PTR [eax+eax*1],bh
c0106d76:	00 00                	add    BYTE PTR [eax],al
c0106d78:	70 1d                	jo     c0106d97 <_edata+0x1d8f>
c0106d7a:	00 00                	add    BYTE PTR [eax],al
c0106d7c:	05 34 10 c0 28       	add    eax,0x28c01034
c0106d81:	00 00                	add    BYTE PTR [eax],al
c0106d83:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c0106d86:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0106d8c:	41                   	inc    ecx
c0106d8d:	86 03                	xchg   BYTE PTR [ebx],al
c0106d8f:	45                   	inc    ebp
c0106d90:	83 04 04 0a          	add    DWORD PTR [esp+eax*1],0xa
c0106d94:	00 00                	add    BYTE PTR [eax],al
c0106d96:	00 2e                	add    BYTE PTR [esi],ch
c0106d98:	04 04                	add    al,0x4
c0106d9a:	01 00                	add    DWORD PTR [eax],eax
c0106d9c:	00 00                	add    BYTE PTR [eax],al
c0106d9e:	2e 08 46 2e          	or     BYTE PTR cs:[esi+0x2e],al
c0106da2:	04 04                	add    al,0x4
c0106da4:	01 00                	add    DWORD PTR [eax],eax
c0106da6:	00 00                	add    BYTE PTR [eax],al
c0106da8:	2e 00 4a c3          	add    BYTE PTR cs:[edx-0x3d],cl
c0106dac:	41                   	inc    ecx
c0106dad:	c6 41 0c 04          	mov    BYTE PTR [ecx+0xc],0x4
c0106db1:	04 c5                	add    al,0xc5
c0106db3:	00 38                	add    BYTE PTR [eax],bh
c0106db5:	00 00                	add    BYTE PTR [eax],al
c0106db7:	00 b0 1d 00 00 2d    	add    BYTE PTR [eax+0x2d00001d],dh
c0106dbd:	34 10                	xor    al,0x10
c0106dbf:	c0 3a 00             	sar    BYTE PTR [edx],0x0
c0106dc2:	00 00                	add    BYTE PTR [eax],al
c0106dc4:	41                   	inc    ecx
c0106dc5:	0e                   	push   cs
c0106dc6:	08 85 02 44 0d 05    	or     BYTE PTR [ebp+0x50d4402],al
c0106dcc:	47                   	inc    edi
c0106dcd:	83 04 87 03          	add    DWORD PTR [edi+eax*4],0x3
c0106dd1:	51                   	push   ecx
c0106dd2:	2e 04 04             	cs add al,0x4
c0106dd5:	04 00                	add    al,0x0
c0106dd7:	00 00                	add    BYTE PTR [eax],al
c0106dd9:	2e 08 43 2e          	or     BYTE PTR cs:[ebx+0x2e],al
c0106ddd:	0c 46                	or     al,0x46
c0106ddf:	2e 10 41 2e          	adc    BYTE PTR cs:[ecx+0x2e],al
c0106de3:	14 48                	adc    al,0x48
c0106de5:	2e 00 44 c3 41       	add    BYTE PTR cs:[ebx+eax*8+0x41],al
c0106dea:	c7 41 0c 04 04 c5 38 	mov    DWORD PTR [ecx+0xc],0x38c50404
c0106df1:	00 00                	add    BYTE PTR [eax],al
c0106df3:	00 ec                	add    ah,ch
c0106df5:	1d 00 00 67 34       	sbb    eax,0x34670000
c0106dfa:	10 c0                	adc    al,al
c0106dfc:	3a 00                	cmp    al,BYTE PTR [eax]
c0106dfe:	00 00                	add    BYTE PTR [eax],al
c0106e00:	41                   	inc    ecx
c0106e01:	0e                   	push   cs
c0106e02:	08 85 02 44 0d 05    	or     BYTE PTR [ebp+0x50d4402],al
c0106e08:	47                   	inc    edi
c0106e09:	83 04 87 03          	add    DWORD PTR [edi+eax*4],0x3
c0106e0d:	51                   	push   ecx
c0106e0e:	2e 04 04             	cs add al,0x4
c0106e11:	04 00                	add    al,0x0
c0106e13:	00 00                	add    BYTE PTR [eax],al
c0106e15:	2e 08 43 2e          	or     BYTE PTR cs:[ebx+0x2e],al
c0106e19:	0c 46                	or     al,0x46
c0106e1b:	2e 10 41 2e          	adc    BYTE PTR cs:[ecx+0x2e],al
c0106e1f:	14 48                	adc    al,0x48
c0106e21:	2e 00 44 c3 41       	add    BYTE PTR cs:[ebx+eax*8+0x41],al
c0106e26:	c7 41 0c 04 04 c5 38 	mov    DWORD PTR [ecx+0xc],0x38c50404
c0106e2d:	00 00                	add    BYTE PTR [eax],al
c0106e2f:	00 28                	add    BYTE PTR [eax],ch
c0106e31:	1e                   	push   ds
c0106e32:	00 00                	add    BYTE PTR [eax],al
c0106e34:	a4                   	movs   BYTE PTR es:[edi],BYTE PTR ds:[esi]
c0106e35:	34 10                	xor    al,0x10
c0106e37:	c0 47 00 00          	rol    BYTE PTR [edi+0x0],0x0
c0106e3b:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c0106e3e:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0106e44:	45                   	inc    ebp
c0106e45:	83 04 86 03          	add    DWORD PTR [esi+eax*4],0x3
c0106e49:	52                   	push   edx
c0106e4a:	2e 04 04             	cs add al,0x4
c0106e4d:	05 00 00 00 2e       	add    eax,0x2e000000
c0106e52:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c0106e55:	0c 45                	or     al,0x45
c0106e57:	2e 10 4e 2e          	adc    BYTE PTR cs:[esi+0x2e],cl
c0106e5b:	00 50 c3             	add    BYTE PTR [eax-0x3d],dl
c0106e5e:	41                   	inc    ecx
c0106e5f:	c6 41 0c 04          	mov    BYTE PTR [ecx+0xc],0x4
c0106e63:	04 c5                	add    al,0xc5
c0106e65:	00 00                	add    BYTE PTR [eax],al
c0106e67:	00 3c 00             	add    BYTE PTR [eax+eax*1],bh
c0106e6a:	00 00                	add    BYTE PTR [eax],al
c0106e6c:	64 1e                	fs push ds
c0106e6e:	00 00                	add    BYTE PTR [eax],al
c0106e70:	eb 34                	jmp    c0106ea6 <_edata+0x1e9e>
c0106e72:	10 c0                	adc    al,al
c0106e74:	4a                   	dec    edx
c0106e75:	00 00                	add    BYTE PTR [eax],al
c0106e77:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c0106e7a:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0106e80:	46                   	inc    esi
c0106e81:	83 05 86 04 87 03 56 	add    DWORD PTR ds:0x3870486,0x56
c0106e88:	2e 04 04             	cs add al,0x4
c0106e8b:	05 00 00 00 2e       	add    eax,0x2e000000
c0106e90:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c0106e93:	0c 45                	or     al,0x45
c0106e95:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c0106e99:	00 53 c3             	add    BYTE PTR [ebx-0x3d],dl
c0106e9c:	41                   	inc    ecx
c0106e9d:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c0106ea1:	0c 04                	or     al,0x4
c0106ea3:	04 c5                	add    al,0xc5
c0106ea5:	00 00                	add    BYTE PTR [eax],al
c0106ea7:	00 3c 00             	add    BYTE PTR [eax+eax*1],bh
c0106eaa:	00 00                	add    BYTE PTR [eax],al
c0106eac:	a4                   	movs   BYTE PTR es:[edi],BYTE PTR ds:[esi]
c0106ead:	1e                   	push   ds
c0106eae:	00 00                	add    BYTE PTR [eax],al
c0106eb0:	35 35 10 c0 42       	xor    eax,0x42c01035
c0106eb5:	00 00                	add    BYTE PTR [eax],al
c0106eb7:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c0106eba:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0106ec0:	41                   	inc    ecx
c0106ec1:	86 03                	xchg   BYTE PTR [ebx],al
c0106ec3:	44                   	inc    esp
c0106ec4:	83 04 04 10          	add    DWORD PTR [esp+eax*1],0x10
c0106ec8:	00 00                	add    BYTE PTR [eax],al
c0106eca:	00 2e                	add    BYTE PTR [esi],ch
c0106ecc:	04 04                	add    al,0x4
c0106ece:	05 00 00 00 2e       	add    eax,0x2e000000
c0106ed3:	08 42 2e             	or     BYTE PTR [edx+0x2e],al
c0106ed6:	0c 45                	or     al,0x45
c0106ed8:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c0106edc:	00 53 c3             	add    BYTE PTR [ebx-0x3d],dl
c0106edf:	41                   	inc    ecx
c0106ee0:	c6 41 0c 04          	mov    BYTE PTR [ecx+0xc],0x4
c0106ee4:	04 c5                	add    al,0xc5
c0106ee6:	00 00                	add    BYTE PTR [eax],al
c0106ee8:	20 00                	and    BYTE PTR [eax],al
c0106eea:	00 00                	add    BYTE PTR [eax],al
c0106eec:	e4 1e                	in     al,0x1e
c0106eee:	00 00                	add    BYTE PTR [eax],al
c0106ef0:	77 35                	ja     c0106f27 <_edata+0x1f1f>
c0106ef2:	10 c0                	adc    al,al
c0106ef4:	1a 00                	sbb    al,BYTE PTR [eax]
c0106ef6:	00 00                	add    BYTE PTR [eax],al
c0106ef8:	41                   	inc    ecx
c0106ef9:	0e                   	push   cs
c0106efa:	08 85 02 44 0d 05    	or     BYTE PTR [ebp+0x50d4402],al
c0106f00:	44                   	inc    esp
c0106f01:	83 03 4f             	add    DWORD PTR [ebx],0x4f
c0106f04:	c3                   	ret    
c0106f05:	41                   	inc    ecx
c0106f06:	0c 04                	or     al,0x4
c0106f08:	04 c5                	add    al,0xc5
c0106f0a:	00 00                	add    BYTE PTR [eax],al
c0106f0c:	1c 00                	sbb    al,0x0
c0106f0e:	00 00                	add    BYTE PTR [eax],al
c0106f10:	08 1f                	or     BYTE PTR [edi],bl
c0106f12:	00 00                	add    BYTE PTR [eax],al
c0106f14:	91                   	xchg   ecx,eax
c0106f15:	35 10 c0 13 00       	xor    eax,0x13c010
c0106f1a:	00 00                	add    BYTE PTR [eax],al
c0106f1c:	41                   	inc    ecx
c0106f1d:	0e                   	push   cs
c0106f1e:	08 85 02 44 0d 05    	or     BYTE PTR [ebp+0x50d4402],al
c0106f24:	4d                   	dec    ebp
c0106f25:	0c 04                	or     al,0x4
c0106f27:	04 c5                	add    al,0xc5
c0106f29:	00 00                	add    BYTE PTR [eax],al
c0106f2b:	00 a4 00 00 00 28 1f 	add    BYTE PTR [eax+eax*1+0x1f280000],ah
c0106f32:	00 00                	add    BYTE PTR [eax],al
c0106f34:	a4                   	movs   BYTE PTR es:[edi],BYTE PTR ds:[esi]
c0106f35:	35 10 c0 d1 01       	xor    eax,0x1d1c010
c0106f3a:	00 00                	add    BYTE PTR [eax],al
c0106f3c:	41                   	inc    ecx
c0106f3d:	0e                   	push   cs
c0106f3e:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0106f44:	46                   	inc    esi
c0106f45:	83 05 86 04 87 03 02 	add    DWORD PTR ds:0x3870486,0x2
c0106f4c:	df 2e                	fild   QWORD PTR [esi]
c0106f4e:	04 04                	add    al,0x4
c0106f50:	02 00                	add    al,BYTE PTR [eax]
c0106f52:	00 00                	add    BYTE PTR [eax],al
c0106f54:	2e 08 42 2e          	or     BYTE PTR cs:[edx+0x2e],al
c0106f58:	00 47 2e             	add    BYTE PTR [edi+0x2e],al
c0106f5b:	04 04                	add    al,0x4
c0106f5d:	02 00                	add    al,BYTE PTR [eax]
c0106f5f:	00 00                	add    BYTE PTR [eax],al
c0106f61:	2e 08 42 2e          	or     BYTE PTR cs:[edx+0x2e],al
c0106f65:	00 47 2e             	add    BYTE PTR [edi+0x2e],al
c0106f68:	04 04                	add    al,0x4
c0106f6a:	02 00                	add    al,BYTE PTR [eax]
c0106f6c:	00 00                	add    BYTE PTR [eax],al
c0106f6e:	2e 08 44 2e 0c       	or     BYTE PTR cs:[esi+ebp*1+0xc],al
c0106f73:	42                   	inc    edx
c0106f74:	2e 10 4f 2e          	adc    BYTE PTR cs:[edi+0x2e],cl
c0106f78:	00 46 2e             	add    BYTE PTR [esi+0x2e],al
c0106f7b:	04 04                	add    al,0x4
c0106f7d:	01 00                	add    DWORD PTR [eax],eax
c0106f7f:	00 00                	add    BYTE PTR [eax],al
c0106f81:	2e 08 41 2e          	or     BYTE PTR cs:[ecx+0x2e],al
c0106f85:	0c 41                	or     al,0x41
c0106f87:	2e 10 54 2e 00       	adc    BYTE PTR cs:[esi+ebp*1+0x0],dl
c0106f8c:	44                   	inc    esp
c0106f8d:	2e 04 04             	cs add al,0x4
c0106f90:	02 00                	add    al,BYTE PTR [eax]
c0106f92:	00 00                	add    BYTE PTR [eax],al
c0106f94:	2e 08 47 2e          	or     BYTE PTR cs:[edi+0x2e],al
c0106f98:	0c 42                	or     al,0x42
c0106f9a:	2e 10 4b 2e          	adc    BYTE PTR cs:[ebx+0x2e],cl
c0106f9e:	00 43 2e             	add    BYTE PTR [ebx+0x2e],al
c0106fa1:	0c 44                	or     al,0x44
c0106fa3:	2e 10 4b 2e          	adc    BYTE PTR cs:[ebx+0x2e],cl
c0106fa7:	00 60 2e             	add    BYTE PTR [eax+0x2e],ah
c0106faa:	04 04                	add    al,0x4
c0106fac:	01 00                	add    DWORD PTR [eax],eax
c0106fae:	00 00                	add    BYTE PTR [eax],al
c0106fb0:	2e 08 44 2e 0c       	or     BYTE PTR cs:[esi+ebp*1+0xc],al
c0106fb5:	41                   	inc    ecx
c0106fb6:	2e 10 56 2e          	adc    BYTE PTR cs:[esi+0x2e],dl
c0106fba:	00 67 2e             	add    BYTE PTR [edi+0x2e],ah
c0106fbd:	0c 43                	or     al,0x43
c0106fbf:	2e 10 49 c3          	adc    BYTE PTR cs:[ecx-0x3d],cl
c0106fc3:	41                   	inc    ecx
c0106fc4:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c0106fc8:	0c 04                	or     al,0x4
c0106fca:	04 c5                	add    al,0xc5
c0106fcc:	41                   	inc    ecx
c0106fcd:	13 03                	adc    eax,DWORD PTR [ebx]
c0106fcf:	2e 00 00             	add    BYTE PTR cs:[eax],al
c0106fd2:	00 00                	add    BYTE PTR [eax],al
c0106fd4:	30 00                	xor    BYTE PTR [eax],al
c0106fd6:	00 00                	add    BYTE PTR [eax],al
c0106fd8:	d0 1f                	rcr    BYTE PTR [edi],1
c0106fda:	00 00                	add    BYTE PTR [eax],al
c0106fdc:	75 37                	jne    c0107015 <_edata+0x200d>
c0106fde:	10 c0                	adc    al,al
c0106fe0:	17                   	pop    ss
c0106fe1:	00 00                	add    BYTE PTR [eax],al
c0106fe3:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c0106fe6:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0106fec:	43                   	inc    ebx
c0106fed:	2e 04 04             	cs add al,0x4
c0106ff0:	04 00                	add    al,0x0
c0106ff2:	00 00                	add    BYTE PTR [eax],al
c0106ff4:	2e 08 43 2e          	or     BYTE PTR cs:[ebx+0x2e],al
c0106ff8:	0c 43                	or     al,0x43
c0106ffa:	2e 10 46 c5          	adc    BYTE PTR cs:[esi-0x3b],al
c0106ffe:	0c 04                	or     al,0x4
c0107000:	04 41                	add    al,0x41
c0107002:	13 03                	adc    eax,DWORD PTR [ebx]
c0107004:	2e 00 00             	add    BYTE PTR cs:[eax],al
c0107007:	00 4c 00 00          	add    BYTE PTR [eax+eax*1+0x0],cl
c010700b:	00 04 20             	add    BYTE PTR [eax+eiz*1],al
c010700e:	00 00                	add    BYTE PTR [eax],al
c0107010:	8c 37                	mov    WORD PTR [edi],?
c0107012:	10 c0                	adc    al,al
c0107014:	8e 00                	mov    es,WORD PTR [eax]
c0107016:	00 00                	add    BYTE PTR [eax],al
c0107018:	41                   	inc    ecx
c0107019:	0e                   	push   cs
c010701a:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0107020:	46                   	inc    esi
c0107021:	2e 0c 83             	cs or  al,0x83
c0107024:	05 86 04 87 03       	add    eax,0x3870486
c0107029:	45                   	inc    ebp
c010702a:	2e 10 4b 2e          	adc    BYTE PTR cs:[ebx+0x2e],cl
c010702e:	00 4c 2e 0c          	add    BYTE PTR [esi+ebp*1+0xc],cl
c0107032:	44                   	inc    esp
c0107033:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c0107037:	00 4c 2e 0c          	add    BYTE PTR [esi+ebp*1+0xc],cl
c010703b:	5d                   	pop    ebp
c010703c:	2e 10 56 2e          	adc    BYTE PTR cs:[esi+0x2e],dl
c0107040:	00 49 2e             	add    BYTE PTR [ecx+0x2e],cl
c0107043:	0c 41                	or     al,0x41
c0107045:	2e 10 4a 2e          	adc    BYTE PTR cs:[edx+0x2e],cl
c0107049:	00 46 c3             	add    BYTE PTR [esi-0x3d],al
c010704c:	41                   	inc    ecx
c010704d:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c0107051:	0c 04                	or     al,0x4
c0107053:	04 c5                	add    al,0xc5
c0107055:	00 00                	add    BYTE PTR [eax],al
c0107057:	00 38                	add    BYTE PTR [eax],bh
c0107059:	00 00                	add    BYTE PTR [eax],al
c010705b:	00 54 20 00          	add    BYTE PTR [eax+eiz*1+0x0],dl
c010705f:	00 1a                	add    BYTE PTR [edx],bl
c0107061:	38 10                	cmp    BYTE PTR [eax],dl
c0107063:	c0 63 00 00          	shl    BYTE PTR [ebx+0x0],0x0
c0107067:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c010706a:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0107070:	46                   	inc    esi
c0107071:	2e 0c 83             	cs or  al,0x83
c0107074:	05 86 04 87 03       	add    eax,0x3870486
c0107079:	45                   	inc    ebp
c010707a:	2e 10 4b 2e          	adc    BYTE PTR cs:[ebx+0x2e],cl
c010707e:	00 50 2e             	add    BYTE PTR [eax+0x2e],dl
c0107081:	0c 44                	or     al,0x44
c0107083:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c0107087:	00 6a c3             	add    BYTE PTR [edx-0x3d],ch
c010708a:	41                   	inc    ecx
c010708b:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c010708f:	0c 04                	or     al,0x4
c0107091:	04 c5                	add    al,0xc5
c0107093:	00 20                	add    BYTE PTR [eax],ah
c0107095:	00 00                	add    BYTE PTR [eax],al
c0107097:	00 90 20 00 00 7d    	add    BYTE PTR [eax+0x7d000020],dl
c010709d:	38 10                	cmp    BYTE PTR [eax],dl
c010709f:	c0 28 00             	shr    BYTE PTR [eax],0x0
c01070a2:	00 00                	add    BYTE PTR [eax],al
c01070a4:	41                   	inc    ecx
c01070a5:	0e                   	push   cs
c01070a6:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c01070ac:	44                   	inc    esp
c01070ad:	83 03 5f             	add    DWORD PTR [ebx],0x5f
c01070b0:	c3                   	ret    
c01070b1:	41                   	inc    ecx
c01070b2:	0c 04                	or     al,0x4
c01070b4:	04 c5                	add    al,0xc5
c01070b6:	00 00                	add    BYTE PTR [eax],al
c01070b8:	28 00                	sub    BYTE PTR [eax],al
c01070ba:	00 00                	add    BYTE PTR [eax],al
c01070bc:	b4 20                	mov    ah,0x20
c01070be:	00 00                	add    BYTE PTR [eax],al
c01070c0:	a5                   	movs   DWORD PTR es:[edi],DWORD PTR ds:[esi]
c01070c1:	38 10                	cmp    BYTE PTR [eax],dl
c01070c3:	c0 21 01             	shl    BYTE PTR [ecx],0x1
c01070c6:	00 00                	add    BYTE PTR [eax],al
c01070c8:	41                   	inc    ecx
c01070c9:	0e                   	push   cs
c01070ca:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c01070d0:	46                   	inc    esi
c01070d1:	83 05 86 04 87 03 03 	add    DWORD PTR ds:0x3870486,0x3
c01070d8:	14 01                	adc    al,0x1
c01070da:	c3                   	ret    
c01070db:	41                   	inc    ecx
c01070dc:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c01070e0:	0c 04                	or     al,0x4
c01070e2:	04 c5                	add    al,0xc5
c01070e4:	3c 00                	cmp    al,0x0
c01070e6:	00 00                	add    BYTE PTR [eax],al
c01070e8:	e0 20                	loopne c010710a <_edata+0x2102>
c01070ea:	00 00                	add    BYTE PTR [eax],al
c01070ec:	c6                   	(bad)  
c01070ed:	39 10                	cmp    DWORD PTR [eax],edx
c01070ef:	c0                   	(bad)  
c01070f0:	35 00 00 00 41       	xor    eax,0x41000000
c01070f5:	0e                   	push   cs
c01070f6:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c01070fc:	44                   	inc    esp
c01070fd:	83 03 4a             	add    DWORD PTR [ebx],0x4a
c0107100:	2e 04 04             	cs add al,0x4
c0107103:	01 00                	add    DWORD PTR [eax],eax
c0107105:	00 00                	add    BYTE PTR [eax],al
c0107107:	2e 08 46 2e          	or     BYTE PTR cs:[esi+0x2e],al
c010710b:	0c 4c                	or     al,0x4c
c010710d:	2e 10 41 2e          	adc    BYTE PTR cs:[ecx+0x2e],al
c0107111:	14 41                	adc    al,0x41
c0107113:	2e 18 42 2e          	sbb    BYTE PTR cs:[edx+0x2e],al
c0107117:	1c 48                	sbb    al,0x48
c0107119:	2e 00 44 c5 0c       	add    BYTE PTR cs:[ebp+eax*8+0xc],al
c010711e:	04 04                	add    al,0x4
c0107120:	c3                   	ret    
c0107121:	00 00                	add    BYTE PTR [eax],al
c0107123:	00 28                	add    BYTE PTR [eax],ch
c0107125:	00 00                	add    BYTE PTR [eax],al
c0107127:	00 20                	add    BYTE PTR [eax],ah
c0107129:	21 00                	and    DWORD PTR [eax],eax
c010712b:	00 fb                	add    bl,bh
c010712d:	39 10                	cmp    DWORD PTR [eax],edx
c010712f:	c0 1d 01 00 00 41 0e 	rcr    BYTE PTR ds:0x41000001,0xe
c0107136:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010713c:	46                   	inc    esi
c010713d:	83 05 86 04 87 03 03 	add    DWORD PTR ds:0x3870486,0x3
c0107144:	10 01                	adc    BYTE PTR [ecx],al
c0107146:	c3                   	ret    
c0107147:	41                   	inc    ecx
c0107148:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c010714c:	0c 04                	or     al,0x4
c010714e:	04 c5                	add    al,0xc5
c0107150:	84 00                	test   BYTE PTR [eax],al
c0107152:	00 00                	add    BYTE PTR [eax],al
c0107154:	4c                   	dec    esp
c0107155:	21 00                	and    DWORD PTR [eax],eax
c0107157:	00 18                	add    BYTE PTR [eax],bl
c0107159:	3b 10                	cmp    edx,DWORD PTR [eax]
c010715b:	c0 9a 00 00 00 41 0e 	rcr    BYTE PTR [edx+0x41000000],0xe
c0107162:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0107168:	46                   	inc    esi
c0107169:	83 05 86 04 87 03 54 	add    DWORD PTR ds:0x3870486,0x54
c0107170:	2e 04 04             	cs add al,0x4
c0107173:	06                   	push   es
c0107174:	00 00                	add    BYTE PTR [eax],al
c0107176:	00 2e                	add    BYTE PTR [esi],ch
c0107178:	08 46 2e             	or     BYTE PTR [esi+0x2e],al
c010717b:	0c 41                	or     al,0x41
c010717d:	2e 10 41 2e          	adc    BYTE PTR cs:[ecx+0x2e],al
c0107181:	14 42                	adc    al,0x42
c0107183:	2e 18 4e 2e          	sbb    BYTE PTR cs:[esi+0x2e],cl
c0107187:	1c 46                	sbb    al,0x46
c0107189:	2e 20 46 2e          	and    BYTE PTR cs:[esi+0x2e],al
c010718d:	24 41                	and    al,0x41
c010718f:	2e 28 41 2e          	sub    BYTE PTR cs:[ecx+0x2e],al
c0107193:	2c 42                	sub    al,0x42
c0107195:	2e 30 4b 2e          	xor    BYTE PTR cs:[ebx+0x2e],cl
c0107199:	00 42 2e             	add    BYTE PTR [edx+0x2e],al
c010719c:	04 04                	add    al,0x4
c010719e:	02 00                	add    al,BYTE PTR [eax]
c01071a0:	00 00                	add    BYTE PTR [eax],al
c01071a2:	2e 08 46 2e          	or     BYTE PTR cs:[esi+0x2e],al
c01071a6:	0c 46                	or     al,0x46
c01071a8:	2e 10 41 2e          	adc    BYTE PTR cs:[ecx+0x2e],al
c01071ac:	14 41                	adc    al,0x41
c01071ae:	2e 18 42 2e          	sbb    BYTE PTR cs:[edx+0x2e],al
c01071b2:	1c 4f                	sbb    al,0x4f
c01071b4:	2e 20 41 2e          	and    BYTE PTR cs:[ecx+0x2e],al
c01071b8:	24 46                	and    al,0x46
c01071ba:	2e 28 46 2e          	sub    BYTE PTR cs:[esi+0x2e],al
c01071be:	2c 41                	sub    al,0x41
c01071c0:	2e 30 41 2e          	xor    BYTE PTR cs:[ecx+0x2e],al
c01071c4:	34 42                	xor    al,0x42
c01071c6:	2e 38 48 2e          	cmp    BYTE PTR cs:[eax+0x2e],cl
c01071ca:	00 44 c3 41          	add    BYTE PTR [ebx+eax*8+0x41],al
c01071ce:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c01071d2:	0c 04                	or     al,0x4
c01071d4:	04 c5                	add    al,0xc5
c01071d6:	00 00                	add    BYTE PTR [eax],al
c01071d8:	74 00                	je     c01071da <_edata+0x21d2>
c01071da:	00 00                	add    BYTE PTR [eax],al
c01071dc:	d4 21                	aam    0x21
c01071de:	00 00                	add    BYTE PTR [eax],al
c01071e0:	b2 3b                	mov    dl,0x3b
c01071e2:	10 c0                	adc    al,al
c01071e4:	06                   	push   es
c01071e5:	01 00                	add    DWORD PTR [eax],eax
c01071e7:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c01071ea:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c01071f0:	46                   	inc    esi
c01071f1:	83 05 86 04 87 03 02 	add    DWORD PTR ds:0x3870486,0x2
c01071f8:	65 2e 04 04          	gs cs add al,0x4
c01071fc:	06                   	push   es
c01071fd:	00 00                	add    BYTE PTR [eax],al
c01071ff:	00 2e                	add    BYTE PTR [esi],ch
c0107201:	08 46 2e             	or     BYTE PTR [esi+0x2e],al
c0107204:	0c 41                	or     al,0x41
c0107206:	2e 10 41 2e          	adc    BYTE PTR cs:[ecx+0x2e],al
c010720a:	14 41                	adc    al,0x41
c010720c:	2e 18 4c 2e 1c       	sbb    BYTE PTR cs:[esi+ebp*1+0x1c],cl
c0107211:	46                   	inc    esi
c0107212:	2e 00 79 2e          	add    BYTE PTR cs:[ecx+0x2e],bh
c0107216:	04 04                	add    al,0x4
c0107218:	06                   	push   es
c0107219:	00 00                	add    BYTE PTR [eax],al
c010721b:	00 2e                	add    BYTE PTR [esi],ch
c010721d:	08 46 2e             	or     BYTE PTR [esi+0x2e],al
c0107220:	0c 41                	or     al,0x41
c0107222:	2e 10 41 2e          	adc    BYTE PTR cs:[ecx+0x2e],al
c0107226:	14 41                	adc    al,0x41
c0107228:	2e 18 4f 2e          	sbb    BYTE PTR cs:[edi+0x2e],cl
c010722c:	1c 41                	sbb    al,0x41
c010722e:	2e 20 46 2e          	and    BYTE PTR cs:[esi+0x2e],al
c0107232:	24 46                	and    al,0x46
c0107234:	2e 28 41 2e          	sub    BYTE PTR cs:[ecx+0x2e],al
c0107238:	2c 41                	sub    al,0x41
c010723a:	2e 30 41 2e          	xor    BYTE PTR cs:[ecx+0x2e],al
c010723e:	34 48                	xor    al,0x48
c0107240:	2e 00 44 c3 41       	add    BYTE PTR cs:[ebx+eax*8+0x41],al
c0107245:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c0107249:	0c 04                	or     al,0x4
c010724b:	04 c5                	add    al,0xc5
c010724d:	00 00                	add    BYTE PTR [eax],al
c010724f:	00 50 00             	add    BYTE PTR [eax+0x0],dl
c0107252:	00 00                	add    BYTE PTR [eax],al
c0107254:	4c                   	dec    esp
c0107255:	22 00                	and    al,BYTE PTR [eax]
c0107257:	00 b8 3c 10 c0 8c    	add    BYTE PTR [eax-0x733fefc4],bh
c010725d:	00 00                	add    BYTE PTR [eax],al
c010725f:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c0107262:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0107268:	42                   	inc    edx
c0107269:	83 04 86 03          	add    DWORD PTR [esi+eax*4],0x3
c010726d:	7b 2e                	jnp    c010729d <_edata+0x2295>
c010726f:	04 04                	add    al,0x4
c0107271:	06                   	push   es
c0107272:	00 00                	add    BYTE PTR [eax],al
c0107274:	00 2e                	add    BYTE PTR [esi],ch
c0107276:	08 46 2e             	or     BYTE PTR [esi+0x2e],al
c0107279:	0c 41                	or     al,0x41
c010727b:	2e 10 41 2e          	adc    BYTE PTR cs:[ecx+0x2e],al
c010727f:	14 42                	adc    al,0x42
c0107281:	2e 18 4e 2e          	sbb    BYTE PTR cs:[esi+0x2e],cl
c0107285:	1c 42                	sbb    al,0x42
c0107287:	2e 20 46 2e          	and    BYTE PTR cs:[esi+0x2e],al
c010728b:	24 46                	and    al,0x46
c010728d:	2e 28 41 2e          	sub    BYTE PTR cs:[ecx+0x2e],al
c0107291:	2c 41                	sub    al,0x41
c0107293:	2e 30 42 2e          	xor    BYTE PTR cs:[edx+0x2e],al
c0107297:	34 48                	xor    al,0x48
c0107299:	2e 00 51 c3          	add    BYTE PTR cs:[ecx-0x3d],dl
c010729d:	41                   	inc    ecx
c010729e:	c6 41 0c 04          	mov    BYTE PTR [ecx+0xc],0x4
c01072a2:	04 c5                	add    al,0xc5
c01072a4:	30 00                	xor    BYTE PTR [eax],al
c01072a6:	00 00                	add    BYTE PTR [eax],al
c01072a8:	a0 22 00 00 44       	mov    al,ds:0x44000022
c01072ad:	3d 10 c0 2e 00       	cmp    eax,0x2ec010
c01072b2:	00 00                	add    BYTE PTR [eax],al
c01072b4:	41                   	inc    ecx
c01072b5:	0e                   	push   cs
c01072b6:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c01072bc:	42                   	inc    edx
c01072bd:	83 03 49             	add    DWORD PTR [ebx],0x49
c01072c0:	2e 04 04             	cs add al,0x4
c01072c3:	06                   	push   es
c01072c4:	00 00                	add    BYTE PTR [eax],al
c01072c6:	00 2e                	add    BYTE PTR [esi],ch
c01072c8:	00 43 2e             	add    BYTE PTR [ebx+0x2e],al
c01072cb:	0c 43                	or     al,0x43
c01072cd:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c01072d1:	00 47 c5             	add    BYTE PTR [edi-0x3b],al
c01072d4:	0c 04                	or     al,0x4
c01072d6:	04 c3                	add    al,0xc3
c01072d8:	28 00                	sub    BYTE PTR [eax],al
c01072da:	00 00                	add    BYTE PTR [eax],al
c01072dc:	d4 22                	aam    0x22
c01072de:	00 00                	add    BYTE PTR [eax],al
c01072e0:	72 3d                	jb     c010731f <_edata+0x2317>
c01072e2:	10 c0                	adc    al,al
c01072e4:	55                   	push   ebp
c01072e5:	00 00                	add    BYTE PTR [eax],al
c01072e7:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c01072ea:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c01072f0:	49                   	dec    ecx
c01072f1:	83 05 86 04 87 03 02 	add    DWORD PTR ds:0x3870486,0x2
c01072f8:	45                   	inc    ebp
c01072f9:	c3                   	ret    
c01072fa:	41                   	inc    ecx
c01072fb:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c01072ff:	0c 04                	or     al,0x4
c0107301:	04 c5                	add    al,0xc5
c0107303:	00 28                	add    BYTE PTR [eax],ch
c0107305:	00 00                	add    BYTE PTR [eax],al
c0107307:	00 00                	add    BYTE PTR [eax],al
c0107309:	23 00                	and    eax,DWORD PTR [eax]
c010730b:	00 c7                	add    bh,al
c010730d:	3d 10 c0 8a 00       	cmp    eax,0x8ac010
c0107312:	00 00                	add    BYTE PTR [eax],al
c0107314:	41                   	inc    ecx
c0107315:	0e                   	push   cs
c0107316:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010731c:	4d                   	dec    ebp
c010731d:	83 05 86 04 87 03 02 	add    DWORD PTR ds:0x3870486,0x2
c0107324:	76 c3                	jbe    c01072e9 <_edata+0x22e1>
c0107326:	41                   	inc    ecx
c0107327:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c010732b:	0c 04                	or     al,0x4
c010732d:	04 c5                	add    al,0xc5
c010732f:	00 48 00             	add    BYTE PTR [eax+0x0],cl
c0107332:	00 00                	add    BYTE PTR [eax],al
c0107334:	2c 23                	sub    al,0x23
c0107336:	00 00                	add    BYTE PTR [eax],al
c0107338:	51                   	push   ecx
c0107339:	3e 10 c0             	ds adc al,al
c010733c:	4a                   	dec    edx
c010733d:	00 00                	add    BYTE PTR [eax],al
c010733f:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c0107342:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0107348:	41                   	inc    ecx
c0107349:	87 03                	xchg   DWORD PTR [ebx],eax
c010734b:	44                   	inc    esp
c010734c:	86 04 04             	xchg   BYTE PTR [esp+eax*1],al
c010734f:	04 00                	add    al,0x0
c0107351:	00 00                	add    BYTE PTR [eax],al
c0107353:	83 05 59 2e 04 04 03 	add    DWORD PTR ds:0x4042e59,0x3
c010735a:	00 00                	add    BYTE PTR [eax],al
c010735c:	00 2e                	add    BYTE PTR [esi],ch
c010735e:	08 41 2e             	or     BYTE PTR [ecx+0x2e],al
c0107361:	0c 41                	or     al,0x41
c0107363:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c0107367:	14 43                	adc    al,0x43
c0107369:	2e 18 48 2e          	sbb    BYTE PTR cs:[eax+0x2e],cl
c010736d:	00 4b c3             	add    BYTE PTR [ebx-0x3d],cl
c0107370:	41                   	inc    ecx
c0107371:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c0107375:	0c 04                	or     al,0x4
c0107377:	04 c5                	add    al,0xc5
c0107379:	00 00                	add    BYTE PTR [eax],al
c010737b:	00 7c 00 00          	add    BYTE PTR [eax+eax*1+0x0],bh
c010737f:	00 78 23             	add    BYTE PTR [eax+0x23],bh
c0107382:	00 00                	add    BYTE PTR [eax],al
c0107384:	9b                   	fwait
c0107385:	3e 10 c0             	ds adc al,al
c0107388:	a6                   	cmps   BYTE PTR ds:[esi],BYTE PTR es:[edi]
c0107389:	00 00                	add    BYTE PTR [eax],al
c010738b:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c010738e:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0107394:	55                   	push   ebp
c0107395:	2e 04 04             	cs add al,0x4
c0107398:	06                   	push   es
c0107399:	00 00                	add    BYTE PTR [eax],al
c010739b:	00 2e                	add    BYTE PTR [esi],ch
c010739d:	08 46 2e             	or     BYTE PTR [esi+0x2e],al
c01073a0:	0c 45                	or     al,0x45
c01073a2:	2e 10 4b 2e          	adc    BYTE PTR cs:[ebx+0x2e],cl
c01073a6:	0c 41                	or     al,0x41
c01073a8:	2e 08 46 2e          	or     BYTE PTR cs:[esi+0x2e],al
c01073ac:	0c 46                	or     al,0x46
c01073ae:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c01073b2:	04 04                	add    al,0x4
c01073b4:	0d 00 00 00 2e       	or     eax,0x2e000000
c01073b9:	08 44 2e 0c          	or     BYTE PTR [esi+ebp*1+0xc],al
c01073bd:	42                   	inc    edx
c01073be:	2e 10 42 2e          	adc    BYTE PTR cs:[edx+0x2e],al
c01073c2:	14 45                	adc    al,0x45
c01073c4:	2e 18 41 2e          	sbb    BYTE PTR cs:[ecx+0x2e],al
c01073c8:	1c 43                	sbb    al,0x43
c01073ca:	2e 20 48 2e          	and    BYTE PTR cs:[eax+0x2e],cl
c01073ce:	08 46 2e             	or     BYTE PTR [esi+0x2e],al
c01073d1:	0c 46                	or     al,0x46
c01073d3:	2e 10 46 2e          	adc    BYTE PTR cs:[esi+0x2e],al
c01073d7:	0c 41                	or     al,0x41
c01073d9:	2e 08 42 2e          	or     BYTE PTR cs:[edx+0x2e],al
c01073dd:	0c 46                	or     al,0x46
c01073df:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c01073e3:	04 04                	add    al,0x4
c01073e5:	02 00                	add    al,BYTE PTR [eax]
c01073e7:	00 00                	add    BYTE PTR [eax],al
c01073e9:	2e 08 42 2e          	or     BYTE PTR cs:[edx+0x2e],al
c01073ed:	0c 46                	or     al,0x46
c01073ef:	2e 10 48 2e          	adc    BYTE PTR cs:[eax+0x2e],cl
c01073f3:	00 41 c5             	add    BYTE PTR [ecx-0x3b],al
c01073f6:	0c 04                	or     al,0x4
c01073f8:	04 00                	add    al,0x0
	...

Disassembly of section .rodata:

c01073fc <_rodata>:
c01073fc:	68 65 6c 6c 6f       	push   0x6f6c6c65
c0107401:	20 77 6f             	and    BYTE PTR [edi+0x6f],dh
c0107404:	72 6c                	jb     c0107472 <_rodata+0x76>
c0107406:	64 21 00             	and    DWORD PTR fs:[eax],eax
c0107409:	28 25 30 32 64 2c    	sub    BYTE PTR ds:0x2c643230,ah
c010740f:	25 30 32 64 29       	and    eax,0x29643230
c0107414:	00 0a                	add    BYTE PTR [edx],cl
c0107416:	5b                   	pop    ebx
c0107417:	55                   	push   ebp
c0107418:	73 65                	jae    c010747f <_rodata+0x83>
c010741a:	72 5d                	jb     c0107479 <_rodata+0x7d>
c010741c:	3a 00                	cmp    al,BYTE PTR [eax]
c010741e:	5b                   	pop    ebx
c010741f:	55                   	push   ebp
c0107420:	73 65                	jae    c0107487 <_rodata+0x8b>
c0107422:	72 5d                	jb     c0107481 <_rodata+0x85>
c0107424:	3a 00                	cmp    al,BYTE PTR [eax]
c0107426:	0a 50 65             	or     dl,BYTE PTR [eax+0x65]
c0107429:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010742a:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c010742d:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c0107432:	65 6c                	gs ins BYTE PTR es:[edi],dx
c0107434:	20 28                	and    BYTE PTR [eax],ch
c0107436:	50                   	push   eax
c0107437:	4b                   	dec    ebx
c0107438:	6e                   	outs   dx,BYTE PTR ds:[esi]
c0107439:	29 20                	sub    DWORD PTR [eax],esp
c010743b:	76 65                	jbe    c01074a2 <_rodata+0xa6>
c010743d:	72 73                	jb     c01074b2 <_rodata+0xb6>
c010743f:	69 6f 6e 20 30 2e 30 	imul   ebp,DWORD PTR [edi+0x6e],0x302e3020
c0107446:	2e 30 20             	xor    BYTE PTR cs:[eax],ah
c0107449:	74 65                	je     c01074b0 <_rodata+0xb4>
c010744b:	73 74                	jae    c01074c1 <_rodata+0xc5>
c010744d:	0a 00                	or     al,BYTE PTR [eax]
c010744f:	43                   	inc    ebx
c0107450:	50                   	push   eax
c0107451:	55                   	push   ebp
c0107452:	20 20                	and    BYTE PTR [eax],ah
c0107454:	20 20                	and    BYTE PTR [eax],ah
c0107456:	3a 00                	cmp    al,BYTE PTR [eax]
c0107458:	4d                   	dec    ebp
c0107459:	65 6d                	gs ins DWORD PTR es:[edi],dx
c010745b:	6f                   	outs   dx,DWORD PTR ds:[esi]
c010745c:	72 79                	jb     c01074d7 <_rodata+0xdb>
c010745e:	20 3a                	and    BYTE PTR [edx],bh
c0107460:	00 4d 42             	add    BYTE PTR [ebp+0x42],cl
c0107463:	20 28                	and    BYTE PTR [eax],ch
c0107465:	20 00                	and    BYTE PTR [eax],al
c0107467:	4b                   	dec    ebx
c0107468:	42                   	inc    edx
c0107469:	20 29                	and    BYTE PTR [ecx],ch
c010746b:	20 00                	and    BYTE PTR [eax],al
c010746d:	44                   	inc    esp
c010746e:	69 73 6b 20 20 20 3a 	imul   esi,DWORD PTR [ebx+0x6b],0x3a202020
c0107475:	00 56 69             	add    BYTE PTR [esi+0x69],dl
c0107478:	64 65 6f             	fs outs dx,DWORD PTR gs:[esi]
c010747b:	20 4d 6f             	and    BYTE PTR [ebp+0x6f],cl
c010747e:	64 65 3a 20          	fs cmp ah,BYTE PTR gs:[eax]
c0107482:	30 78 25             	xor    BYTE PTR [eax+0x25],bh
c0107485:	78 20                	js     c01074a7 <_rodata+0xab>
c0107487:	53                   	push   ebx
c0107488:	63 72 6e             	arpl   WORD PTR [edx+0x6e],si
c010748b:	78 20                	js     c01074ad <_rodata+0xb1>
c010748d:	3d 20 25 64 20       	cmp    eax,0x20642520
c0107492:	53                   	push   ebx
c0107493:	63 72 6e             	arpl   WORD PTR [edx+0x6e],si
c0107496:	79 20                	jns    c01074b8 <_rodata+0xbc>
c0107498:	3d 20 25 64 00       	cmp    eax,0x642520
c010749d:	43                   	inc    ebx
c010749e:	6f                   	outs   dx,DWORD PTR ds:[esi]
c010749f:	70 79                	jo     c010751a <PKn_Version+0x12>
c01074a1:	72 69                	jb     c010750c <PKn_Version+0x4>
c01074a3:	67 68 74 20 28 63    	addr16 push 0x63282074
c01074a9:	29 20                	sub    DWORD PTR [eax],esp
c01074ab:	32 30                	xor    dh,BYTE PTR [eax]
c01074ad:	32 31                	xor    dh,BYTE PTR [ecx]
c01074af:	2d 32 30 32 32       	sub    eax,0x32323032
c01074b4:	20 50 65             	and    BYTE PTR [eax+0x65],dl
c01074b7:	6e                   	outs   dx,BYTE PTR ds:[esi]
c01074b8:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c01074bb:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c01074c0:	65 6c                	gs ins BYTE PTR es:[edi],dx
c01074c2:	20 64 65 76          	and    BYTE PTR [ebp+eiz*2+0x76],ah
c01074c6:	65 6c                	gs ins BYTE PTR es:[edi],dx
c01074c8:	6f                   	outs   dx,DWORD PTR ds:[esi]
c01074c9:	70 65                	jo     c0107530 <cursor.1476+0x8>
c01074cb:	72 73                	jb     c0107540 <cursor.1476+0x18>
c01074cd:	2c 20                	sub    al,0x20
c01074cf:	41                   	inc    ecx
c01074d0:	6c                   	ins    BYTE PTR es:[edi],dx
c01074d1:	6c                   	ins    BYTE PTR es:[edi],dx
c01074d2:	20 72 69             	and    BYTE PTR [edx+0x69],dh
c01074d5:	67 68 74 73 20 72    	addr16 push 0x72207374
c01074db:	65 73 65             	gs jae c0107543 <cursor.1476+0x1b>
c01074de:	72 76                	jb     c0107556 <cursor.1476+0x2e>
c01074e0:	65 64 2e 00 61 72    	gs fs add BYTE PTR cs:[ecx+0x72],ah
c01074e6:	67 5f                	addr16 pop edi
c01074e8:	41                   	inc    ecx
c01074e9:	20 00                	and    BYTE PTR [eax],al
c01074eb:	6b 5f 61 00          	imul   ebx,DWORD PTR [edi+0x61],0x0
c01074ef:	73 68                	jae    c0107559 <cursor.1476+0x31>
c01074f1:	65 6c                	gs ins BYTE PTR es:[edi],dx
c01074f3:	6c                   	ins    BYTE PTR es:[edi],dx
c01074f4:	00 4d 6f             	add    BYTE PTR [ebp+0x6f],cl
c01074f7:	75 73                	jne    c010756c <cursor.1476+0x44>
c01074f9:	65 00 75 73          	add    BYTE PTR gs:[ebp+0x73],dh
c01074fd:	65 72 5f             	gs jb  c010755f <cursor.1476+0x37>
c0107500:	70 72                	jo     c0107574 <cursor.1476+0x4c>
c0107502:	6f                   	outs   dx,DWORD PTR ds:[esi]
c0107503:	67 00 00             	add    BYTE PTR [bx+si],al
	...

c0107508 <PKn_Version>:
c0107508:	50                   	push   eax
c0107509:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c010750b:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c010750e:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c0107513:	65 6c                	gs ins BYTE PTR es:[edi],dx
c0107515:	20 28                	and    BYTE PTR [eax],ch
c0107517:	50                   	push   eax
c0107518:	4b                   	dec    ebx
c0107519:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010751a:	29 20                	sub    DWORD PTR [eax],esp
c010751c:	30 2e                	xor    BYTE PTR [esi],ch
c010751e:	30 2e                	xor    BYTE PTR [esi],ch
c0107520:	31 20                	xor    DWORD PTR [eax],esp
c0107522:	41                   	inc    ecx
c0107523:	75 67                	jne    c010758c <cursor.1476+0x64>
c0107525:	2e 00 00             	add    BYTE PTR cs:[eax],al

c0107528 <cursor.1476>:
c0107528:	2a 2a                	sub    ch,BYTE PTR [edx]
c010752a:	2a 2a                	sub    ch,BYTE PTR [edx]
c010752c:	2a 2a                	sub    ch,BYTE PTR [edx]
c010752e:	2a 2a                	sub    ch,BYTE PTR [edx]
c0107530:	2a 2a                	sub    ch,BYTE PTR [edx]
c0107532:	2a 2a                	sub    ch,BYTE PTR [edx]
c0107534:	2a 2a                	sub    ch,BYTE PTR [edx]
c0107536:	2a 2a                	sub    ch,BYTE PTR [edx]
c0107538:	2a 23                	sub    ah,BYTE PTR [ebx]
c010753a:	23 23                	and    esp,DWORD PTR [ebx]
c010753c:	23 23                	and    esp,DWORD PTR [ebx]
c010753e:	23 23                	and    esp,DWORD PTR [ebx]
c0107540:	23 23                	and    esp,DWORD PTR [ebx]
c0107542:	23 23                	and    esp,DWORD PTR [ebx]
c0107544:	23 23                	and    esp,DWORD PTR [ebx]
c0107546:	2a 2d 2a 23 23 23    	sub    ch,BYTE PTR ds:0x2323232a
c010754c:	23 23                	and    esp,DWORD PTR [ebx]
c010754e:	23 23                	and    esp,DWORD PTR [ebx]
c0107550:	23 23                	and    esp,DWORD PTR [ebx]
c0107552:	23 23                	and    esp,DWORD PTR [ebx]
c0107554:	23 2a                	and    ebp,DWORD PTR [edx]
c0107556:	2d 2d 2a 23 23       	sub    eax,0x23232a2d
c010755b:	23 23                	and    esp,DWORD PTR [ebx]
c010755d:	23 23                	and    esp,DWORD PTR [ebx]
c010755f:	23 23                	and    esp,DWORD PTR [ebx]
c0107561:	23 23                	and    esp,DWORD PTR [ebx]
c0107563:	23 2a                	and    ebp,DWORD PTR [edx]
c0107565:	2d 2d 2d 2a 23       	sub    eax,0x232a2d2d
c010756a:	23 23                	and    esp,DWORD PTR [ebx]
c010756c:	23 23                	and    esp,DWORD PTR [ebx]
c010756e:	23 23                	and    esp,DWORD PTR [ebx]
c0107570:	23 23                	and    esp,DWORD PTR [ebx]
c0107572:	23 2a                	and    ebp,DWORD PTR [edx]
c0107574:	2d 2d 2d 2d 2a       	sub    eax,0x2a2d2d2d
c0107579:	23 23                	and    esp,DWORD PTR [ebx]
c010757b:	23 23                	and    esp,DWORD PTR [ebx]
c010757d:	23 23                	and    esp,DWORD PTR [ebx]
c010757f:	23 23                	and    esp,DWORD PTR [ebx]
c0107581:	23 2a                	and    ebp,DWORD PTR [edx]
c0107583:	2d 2d 2d 2d 2d       	sub    eax,0x2d2d2d2d
c0107588:	2a 23                	sub    ah,BYTE PTR [ebx]
c010758a:	23 23                	and    esp,DWORD PTR [ebx]
c010758c:	23 23                	and    esp,DWORD PTR [ebx]
c010758e:	23 23                	and    esp,DWORD PTR [ebx]
c0107590:	23 2a                	and    ebp,DWORD PTR [edx]
c0107592:	2d 2d 2d 2d 2d       	sub    eax,0x2d2d2d2d
c0107597:	2d 2a 23 23 23       	sub    eax,0x2323232a
c010759c:	23 23                	and    esp,DWORD PTR [ebx]
c010759e:	23 23                	and    esp,DWORD PTR [ebx]
c01075a0:	2a 2d 2d 2d 2d 2d    	sub    ch,BYTE PTR ds:0x2d2d2d2d
c01075a6:	2d 2d 2a 23 23       	sub    eax,0x23232a2d
c01075ab:	23 23                	and    esp,DWORD PTR [ebx]
c01075ad:	23 23                	and    esp,DWORD PTR [ebx]
c01075af:	2a 2d 2d 2a 2a 2a    	sub    ch,BYTE PTR ds:0x2a2a2a2d
c01075b5:	2a 2d 2d 2a 23 23    	sub    ch,BYTE PTR ds:0x23232a2d
c01075bb:	23 23                	and    esp,DWORD PTR [ebx]
c01075bd:	23 2a                	and    ebp,DWORD PTR [edx]
c01075bf:	2d 2d 2a 23 23       	sub    eax,0x23232a2d
c01075c4:	23 23                	and    esp,DWORD PTR [ebx]
c01075c6:	2a 2d 2a 23 23 23    	sub    ch,BYTE PTR ds:0x2323232a
c01075cc:	23 2a                	and    ebp,DWORD PTR [edx]
c01075ce:	2d 2d 2a 23 23       	sub    eax,0x23232a2d
c01075d3:	23 23                	and    esp,DWORD PTR [ebx]
c01075d5:	23 23                	and    esp,DWORD PTR [ebx]
c01075d7:	2a 2a                	sub    ch,BYTE PTR [edx]
c01075d9:	23 23                	and    esp,DWORD PTR [ebx]
c01075db:	23 2a                	and    ebp,DWORD PTR [edx]
c01075dd:	2d 2d 2d 2a 23       	sub    eax,0x232a2d2d
c01075e2:	23 23                	and    esp,DWORD PTR [ebx]
c01075e4:	23 23                	and    esp,DWORD PTR [ebx]
c01075e6:	23 2a                	and    ebp,DWORD PTR [edx]
c01075e8:	2a 23                	sub    ah,BYTE PTR [ebx]
c01075ea:	23 2a                	and    ebp,DWORD PTR [edx]
c01075ec:	2d 2d 2d 2d 2a       	sub    eax,0x2a2d2d2d
c01075f1:	23 23                	and    esp,DWORD PTR [ebx]
c01075f3:	23 23                	and    esp,DWORD PTR [ebx]
c01075f5:	23 23                	and    esp,DWORD PTR [ebx]
c01075f7:	2a 2a                	sub    ch,BYTE PTR [edx]
c01075f9:	23 2a                	and    ebp,DWORD PTR [edx]
c01075fb:	2d 2d 2d 2d 2d       	sub    eax,0x2d2d2d2d
c0107600:	2a 23                	sub    ah,BYTE PTR [ebx]
c0107602:	23 23                	and    esp,DWORD PTR [ebx]
c0107604:	23 23                	and    esp,DWORD PTR [ebx]
c0107606:	23 2a                	and    ebp,DWORD PTR [edx]
c0107608:	2a 2a                	sub    ch,BYTE PTR [edx]
c010760a:	2d 2d 2d 2d 2d       	sub    eax,0x2d2d2d2d
c010760f:	2d 2d 2a 23 23       	sub    eax,0x23232a2d
c0107614:	23 23                	and    esp,DWORD PTR [ebx]
c0107616:	2a 2d 2a 2d 2d 2d    	sub    ch,BYTE PTR ds:0x2d2d2d2a
c010761c:	2d 2d 2d 2d 2d       	sub    eax,0x2d2d2d2d
c0107621:	2d 2a 2a 2a 2a       	sub    eax,0x2a2a2a2a
c0107626:	2d 2d 0a 20 45       	sub    eax,0x45200a2d
c010762b:	72 72                	jb     c010769f <cursor.1476+0x177>
c010762d:	6f                   	outs   dx,DWORD PTR ds:[esi]
c010762e:	72 0a                	jb     c010763a <cursor.1476+0x112>
c0107630:	00 20                	add    BYTE PTR [eax],ah
c0107632:	46                   	inc    esi
c0107633:	69 6c 65 3a 20 20 20 	imul   ebp,DWORD PTR [ebp+eiz*2+0x3a],0x20202020
c010763a:	20 
c010763b:	20 20                	and    BYTE PTR [eax],ah
c010763d:	20 20                	and    BYTE PTR [eax],ah
c010763f:	00 20                	add    BYTE PTR [eax],ah
c0107641:	49                   	dec    ecx
c0107642:	6e                   	outs   dx,BYTE PTR ds:[esi]
c0107643:	20 66 75             	and    BYTE PTR [esi+0x75],ah
c0107646:	6e                   	outs   dx,BYTE PTR ds:[esi]
c0107647:	63 74 69 6f          	arpl   WORD PTR [ecx+ebp*2+0x6f],si
c010764b:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010764c:	3a 20                	cmp    ah,BYTE PTR [eax]
c010764e:	00 20                	add    BYTE PTR [eax],ah
c0107650:	4c                   	dec    esp
c0107651:	69 6e 65 3a 20 20 20 	imul   ebp,DWORD PTR [esi+0x65],0x2020203a
c0107658:	20 20                	and    BYTE PTR [eax],ah
c010765a:	20 20                	and    BYTE PTR [eax],ah
c010765c:	20 00                	and    BYTE PTR [eax],al
c010765e:	20 43 6f             	and    BYTE PTR [ebx+0x6f],al
c0107661:	6e                   	outs   dx,BYTE PTR ds:[esi]
c0107662:	64 69 74 69 6f 6e 3a 	imul   esi,DWORD PTR fs:[ecx+ebp*2+0x6f],0x20203a6e
c0107669:	20 20 
c010766b:	20 00                	and    BYTE PTR [eax],al
c010766d:	20 5b 20             	and    BYTE PTR [ebx+0x20],bl
c0107670:	4c                   	dec    esp
c0107671:	6f                   	outs   dx,DWORD PTR ds:[esi]
c0107672:	67 5d                	addr16 pop ebp
c0107674:	00 00                	add    BYTE PTR [eax],al
c0107676:	00 00                	add    BYTE PTR [eax],al
c0107678:	50                   	push   eax
c0107679:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c010767b:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c010767e:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c0107683:	65 6c                	gs ins BYTE PTR es:[edi],dx
c0107685:	20 28                	and    BYTE PTR [eax],ch
c0107687:	50                   	push   eax
c0107688:	4b                   	dec    ebx
c0107689:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010768a:	29 20                	sub    DWORD PTR [eax],esp
c010768c:	30 2e                	xor    BYTE PTR [esi],ch
c010768e:	30 2e                	xor    BYTE PTR [esi],ch
c0107690:	31 20                	xor    DWORD PTR [eax],esp
c0107692:	41                   	inc    ecx
c0107693:	75 67                	jne    c01076fc <cursor.1476+0x1d4>
c0107695:	2e 00 00             	add    BYTE PTR cs:[eax],al
c0107698:	69 6e 69 74 20 61 6c 	imul   ebp,DWORD PTR [esi+0x69],0x6c612074
c010769f:	6c                   	ins    BYTE PTR es:[edi],dx
c01076a0:	00 69 6e             	add    BYTE PTR [ecx+0x6e],ch
c01076a3:	69 74 20 64 6f 6e 65 	imul   esi,DWORD PTR [eax+eiz*1+0x64],0x656e6f
c01076aa:	00 
c01076ab:	00 50 65             	add    BYTE PTR [eax+0x65],dl
c01076ae:	6e                   	outs   dx,BYTE PTR ds:[esi]
c01076af:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c01076b2:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c01076b7:	65 6c                	gs ins BYTE PTR es:[edi],dx
c01076b9:	20 28                	and    BYTE PTR [eax],ch
c01076bb:	50                   	push   eax
c01076bc:	4b                   	dec    ebx
c01076bd:	6e                   	outs   dx,BYTE PTR ds:[esi]
c01076be:	29 20                	sub    DWORD PTR [eax],esp
c01076c0:	30 2e                	xor    BYTE PTR [esi],ch
c01076c2:	30 2e                	xor    BYTE PTR [esi],ch
c01076c4:	31 20                	xor    DWORD PTR [eax],esp
c01076c6:	41                   	inc    ecx
c01076c7:	75 67                	jne    c0107730 <cursor.1476+0x208>
c01076c9:	2e 00 00             	add    BYTE PTR cs:[eax],al
c01076cc:	23 44 45 20          	and    eax,DWORD PTR [ebp+eax*2+0x20]
c01076d0:	44                   	inc    esp
c01076d1:	69 76 69 64 65 20 45 	imul   esi,DWORD PTR [esi+0x69],0x45206564
c01076d8:	72 72                	jb     c010774c <cursor.1476+0x224>
c01076da:	6f                   	outs   dx,DWORD PTR ds:[esi]
c01076db:	72 00                	jb     c01076dd <cursor.1476+0x1b5>
c01076dd:	23 44 42 20          	and    eax,DWORD PTR [edx+eax*2+0x20]
c01076e1:	44                   	inc    esp
c01076e2:	65 62 75 67          	bound  esi,QWORD PTR gs:[ebp+0x67]
c01076e6:	20 45 78             	and    BYTE PTR [ebp+0x78],al
c01076e9:	63 65 70             	arpl   WORD PTR [ebp+0x70],sp
c01076ec:	74 69                	je     c0107757 <cursor.1476+0x22f>
c01076ee:	6f                   	outs   dx,DWORD PTR ds:[esi]
c01076ef:	6e                   	outs   dx,BYTE PTR ds:[esi]
c01076f0:	00 4e 4d             	add    BYTE PTR [esi+0x4d],cl
c01076f3:	49                   	dec    ecx
c01076f4:	20 49 6e             	and    BYTE PTR [ecx+0x6e],cl
c01076f7:	74 65                	je     c010775e <cursor.1476+0x236>
c01076f9:	72 72                	jb     c010776d <cursor.1476+0x245>
c01076fb:	75 70                	jne    c010776d <cursor.1476+0x245>
c01076fd:	74 00                	je     c01076ff <cursor.1476+0x1d7>
c01076ff:	23 42 50             	and    eax,DWORD PTR [edx+0x50]
c0107702:	20 42 72             	and    BYTE PTR [edx+0x72],al
c0107705:	65 61                	gs popa 
c0107707:	6b 70 6f 69          	imul   esi,DWORD PTR [eax+0x6f],0x69
c010770b:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010770c:	74 20                	je     c010772e <cursor.1476+0x206>
c010770e:	45                   	inc    ebp
c010770f:	78 63                	js     c0107774 <cursor.1476+0x24c>
c0107711:	65 70 74             	gs jo  c0107788 <cursor.1476+0x260>
c0107714:	69 6f 6e 00 23 4f 46 	imul   ebp,DWORD PTR [edi+0x6e],0x464f2300
c010771b:	20 4f 76             	and    BYTE PTR [edi+0x76],cl
c010771e:	65 72 66             	gs jb  c0107787 <cursor.1476+0x25f>
c0107721:	6c                   	ins    BYTE PTR es:[edi],dx
c0107722:	6f                   	outs   dx,DWORD PTR ds:[esi]
c0107723:	77 20                	ja     c0107745 <cursor.1476+0x21d>
c0107725:	45                   	inc    ebp
c0107726:	78 63                	js     c010778b <cursor.1476+0x263>
c0107728:	65 70 74             	gs jo  c010779f <cursor.1476+0x277>
c010772b:	69 6f 6e 00 23 42 52 	imul   ebp,DWORD PTR [edi+0x6e],0x52422300
c0107732:	20 42 4f             	and    BYTE PTR [edx+0x4f],al
c0107735:	55                   	push   ebp
c0107736:	4e                   	dec    esi
c0107737:	44                   	inc    esp
c0107738:	20 52 61             	and    BYTE PTR [edx+0x61],dl
c010773b:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010773c:	67 65 20 45 78       	and    BYTE PTR gs:[di+0x78],al
c0107741:	63 65 65             	arpl   WORD PTR [ebp+0x65],sp
c0107744:	64 65 64 20 45 78    	fs gs and BYTE PTR fs:[ebp+0x78],al
c010774a:	63 65 70             	arpl   WORD PTR [ebp+0x70],sp
c010774d:	74 69                	je     c01077b8 <cursor.1476+0x290>
c010774f:	6f                   	outs   dx,DWORD PTR ds:[esi]
c0107750:	6e                   	outs   dx,BYTE PTR ds:[esi]
c0107751:	00 23                	add    BYTE PTR [ebx],ah
c0107753:	55                   	push   ebp
c0107754:	44                   	inc    esp
c0107755:	20 49 6e             	and    BYTE PTR [ecx+0x6e],cl
c0107758:	76 61                	jbe    c01077bb <cursor.1476+0x293>
c010775a:	6c                   	ins    BYTE PTR es:[edi],dx
c010775b:	69 64 20 4f 70 63 6f 	imul   esp,DWORD PTR [eax+eiz*1+0x4f],0x646f6370
c0107762:	64 
c0107763:	65 20 45 78          	and    BYTE PTR gs:[ebp+0x78],al
c0107767:	63 65 70             	arpl   WORD PTR [ebp+0x70],sp
c010776a:	74 69                	je     c01077d5 <cursor.1476+0x2ad>
c010776c:	6f                   	outs   dx,DWORD PTR ds:[esi]
c010776d:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010776e:	00 23                	add    BYTE PTR [ebx],ah
c0107770:	4e                   	dec    esi
c0107771:	4d                   	dec    ebp
c0107772:	20 44 65 76          	and    BYTE PTR [ebp+eiz*2+0x76],al
c0107776:	69 63 65 20 4e 6f 74 	imul   esp,DWORD PTR [ebx+0x65],0x746f4e20
c010777d:	20 41 76             	and    BYTE PTR [ecx+0x76],al
c0107780:	61                   	popa   
c0107781:	69 6c 61 62 6c 65 20 	imul   ebp,DWORD PTR [ecx+eiz*2+0x62],0x4520656c
c0107788:	45 
c0107789:	78 63                	js     c01077ee <cursor.1476+0x2c6>
c010778b:	65 70 74             	gs jo  c0107802 <cursor.1476+0x2da>
c010778e:	69 6f 6e 00 23 44 46 	imul   ebp,DWORD PTR [edi+0x6e],0x46442300
c0107795:	20 44 6f 75          	and    BYTE PTR [edi+ebp*2+0x75],al
c0107799:	62 6c 65 20          	bound  ebp,QWORD PTR [ebp+eiz*2+0x20]
c010779d:	46                   	inc    esi
c010779e:	61                   	popa   
c010779f:	75 6c                	jne    c010780d <cursor.1476+0x2e5>
c01077a1:	74 20                	je     c01077c3 <cursor.1476+0x29b>
c01077a3:	45                   	inc    ebp
c01077a4:	78 63                	js     c0107809 <cursor.1476+0x2e1>
c01077a6:	65 70 74             	gs jo  c010781d <cursor.1476+0x2f5>
c01077a9:	69 6f 6e 00 43 6f 70 	imul   ebp,DWORD PTR [edi+0x6e],0x706f4300
c01077b0:	72 6f                	jb     c0107821 <cursor.1476+0x2f9>
c01077b2:	63 65 73             	arpl   WORD PTR [ebp+0x73],sp
c01077b5:	73 6f                	jae    c0107826 <cursor.1476+0x2fe>
c01077b7:	72 20                	jb     c01077d9 <cursor.1476+0x2b1>
c01077b9:	53                   	push   ebx
c01077ba:	65 67 6d             	gs ins DWORD PTR es:[di],dx
c01077bd:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c01077bf:	74 20                	je     c01077e1 <cursor.1476+0x2b9>
c01077c1:	4f                   	dec    edi
c01077c2:	76 65                	jbe    c0107829 <cursor.1476+0x301>
c01077c4:	72 72                	jb     c0107838 <cursor.1476+0x310>
c01077c6:	75 6e                	jne    c0107836 <cursor.1476+0x30e>
c01077c8:	00 23                	add    BYTE PTR [ebx],ah
c01077ca:	54                   	push   esp
c01077cb:	53                   	push   ebx
c01077cc:	20 49 6e             	and    BYTE PTR [ecx+0x6e],cl
c01077cf:	76 61                	jbe    c0107832 <cursor.1476+0x30a>
c01077d1:	6c                   	ins    BYTE PTR es:[edi],dx
c01077d2:	69 64 20 54 53 53 20 	imul   esp,DWORD PTR [eax+eiz*1+0x54],0x45205353
c01077d9:	45 
c01077da:	78 63                	js     c010783f <cursor.1476+0x317>
c01077dc:	65 70 74             	gs jo  c0107853 <cursor.1476+0x32b>
c01077df:	69 6f 6e 00 23 4e 50 	imul   ebp,DWORD PTR [edi+0x6e],0x504e2300
c01077e6:	20 53 65             	and    BYTE PTR [ebx+0x65],dl
c01077e9:	67 6d                	ins    DWORD PTR es:[di],dx
c01077eb:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c01077ed:	74 20                	je     c010780f <cursor.1476+0x2e7>
c01077ef:	4e                   	dec    esi
c01077f0:	6f                   	outs   dx,DWORD PTR ds:[esi]
c01077f1:	74 20                	je     c0107813 <cursor.1476+0x2eb>
c01077f3:	50                   	push   eax
c01077f4:	72 65                	jb     c010785b <cursor.1476+0x333>
c01077f6:	73 65                	jae    c010785d <cursor.1476+0x335>
c01077f8:	6e                   	outs   dx,BYTE PTR ds:[esi]
c01077f9:	74 00                	je     c01077fb <cursor.1476+0x2d3>
c01077fb:	23 53 53             	and    edx,DWORD PTR [ebx+0x53]
c01077fe:	20 53 74             	and    BYTE PTR [ebx+0x74],dl
c0107801:	61                   	popa   
c0107802:	63 6b 20             	arpl   WORD PTR [ebx+0x20],bp
c0107805:	46                   	inc    esi
c0107806:	61                   	popa   
c0107807:	75 6c                	jne    c0107875 <cursor.1476+0x34d>
c0107809:	74 20                	je     c010782b <cursor.1476+0x303>
c010780b:	45                   	inc    ebp
c010780c:	78 63                	js     c0107871 <cursor.1476+0x349>
c010780e:	65 70 74             	gs jo  c0107885 <cursor.1476+0x35d>
c0107811:	69 6f 6e 00 23 47 50 	imul   ebp,DWORD PTR [edi+0x6e],0x50472300
c0107818:	20 47 65             	and    BYTE PTR [edi+0x65],al
c010781b:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010781c:	65 72 61             	gs jb  c0107880 <cursor.1476+0x358>
c010781f:	6c                   	ins    BYTE PTR es:[edi],dx
c0107820:	20 50 72             	and    BYTE PTR [eax+0x72],dl
c0107823:	6f                   	outs   dx,DWORD PTR ds:[esi]
c0107824:	74 65                	je     c010788b <cursor.1476+0x363>
c0107826:	63 74 69 6f          	arpl   WORD PTR [ecx+ebp*2+0x6f],si
c010782a:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010782b:	20 45 78             	and    BYTE PTR [ebp+0x78],al
c010782e:	63 65 70             	arpl   WORD PTR [ebp+0x70],sp
c0107831:	74 69                	je     c010789c <cursor.1476+0x374>
c0107833:	6f                   	outs   dx,DWORD PTR ds:[esi]
c0107834:	6e                   	outs   dx,BYTE PTR ds:[esi]
c0107835:	00 23                	add    BYTE PTR [ebx],ah
c0107837:	50                   	push   eax
c0107838:	46                   	inc    esi
c0107839:	20 50 61             	and    BYTE PTR [eax+0x61],dl
c010783c:	67 65 2d 46 61 75 6c 	addr16 gs sub eax,0x6c756146
c0107843:	74 20                	je     c0107865 <cursor.1476+0x33d>
c0107845:	45                   	inc    ebp
c0107846:	78 63                	js     c01078ab <cursor.1476+0x383>
c0107848:	65 70 74             	gs jo  c01078bf <cursor.1476+0x397>
c010784b:	69 6f 6e 00 52 65 73 	imul   ebp,DWORD PTR [edi+0x6e],0x73655200
c0107852:	65 72 76             	gs jb  c01078cb <cursor.1476+0x3a3>
c0107855:	65 64 00 23          	gs add BYTE PTR fs:[ebx],ah
c0107859:	4d                   	dec    ebp
c010785a:	46                   	inc    esi
c010785b:	20 78 38             	and    BYTE PTR [eax+0x38],bh
c010785e:	37                   	aaa    
c010785f:	20 46 50             	and    BYTE PTR [esi+0x50],al
c0107862:	55                   	push   ebp
c0107863:	20 46 6c             	and    BYTE PTR [esi+0x6c],al
c0107866:	6f                   	outs   dx,DWORD PTR ds:[esi]
c0107867:	61                   	popa   
c0107868:	74 69                	je     c01078d3 <cursor.1476+0x3ab>
c010786a:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010786b:	67 2d 50 6f 69 6e    	addr16 sub eax,0x6e696f50
c0107871:	74 20                	je     c0107893 <cursor.1476+0x36b>
c0107873:	45                   	inc    ebp
c0107874:	72 72                	jb     c01078e8 <cursor.1476+0x3c0>
c0107876:	6f                   	outs   dx,DWORD PTR ds:[esi]
c0107877:	72 00                	jb     c0107879 <cursor.1476+0x351>
c0107879:	23 41 43             	and    eax,DWORD PTR [ecx+0x43]
c010787c:	20 41 6c             	and    BYTE PTR [ecx+0x6c],al
c010787f:	69 67 6e 6d 65 6e 74 	imul   esp,DWORD PTR [edi+0x6e],0x746e656d
c0107886:	20 43 68             	and    BYTE PTR [ebx+0x68],al
c0107889:	65 63 6b 20          	arpl   WORD PTR gs:[ebx+0x20],bp
c010788d:	45                   	inc    ebp
c010788e:	78 63                	js     c01078f3 <cursor.1476+0x3cb>
c0107890:	65 70 74             	gs jo  c0107907 <cursor.1476+0x3df>
c0107893:	69 6f 6e 00 23 4d 43 	imul   ebp,DWORD PTR [edi+0x6e],0x434d2300
c010789a:	20 4d 61             	and    BYTE PTR [ebp+0x61],cl
c010789d:	63 68 69             	arpl   WORD PTR [eax+0x69],bp
c01078a0:	6e                   	outs   dx,BYTE PTR ds:[esi]
c01078a1:	65 2d 43 68 65 63    	gs sub eax,0x63656843
c01078a7:	6b 20 45             	imul   esp,DWORD PTR [eax],0x45
c01078aa:	78 63                	js     c010790f <cursor.1476+0x3e7>
c01078ac:	65 70 74             	gs jo  c0107923 <cursor.1476+0x3fb>
c01078af:	69 6f 6e 00 23 58 46 	imul   ebp,DWORD PTR [edi+0x6e],0x46582300
c01078b6:	20 53 49             	and    BYTE PTR [ebx+0x49],dl
c01078b9:	4d                   	dec    ebp
c01078ba:	44                   	inc    esp
c01078bb:	20 46 6c             	and    BYTE PTR [esi+0x6c],al
c01078be:	6f                   	outs   dx,DWORD PTR ds:[esi]
c01078bf:	61                   	popa   
c01078c0:	74 69                	je     c010792b <cursor.1476+0x403>
c01078c2:	6e                   	outs   dx,BYTE PTR ds:[esi]
c01078c3:	67 2d 50 6f 69 6e    	addr16 sub eax,0x6e696f50
c01078c9:	74 20                	je     c01078eb <cursor.1476+0x3c3>
c01078cb:	45                   	inc    ebp
c01078cc:	78 63                	js     c0107931 <cursor.1476+0x409>
c01078ce:	65 70 74             	gs jo  c0107945 <cursor.1476+0x41d>
c01078d1:	69 6f 6e 00 53 6f 72 	imul   ebp,DWORD PTR [edi+0x6e],0x726f5300
c01078d8:	72 79                	jb     c0107953 <cursor.1476+0x42b>
c01078da:	2c 20                	sub    al,0x20
c01078dc:	61                   	popa   
c01078dd:	20 70 72             	and    BYTE PTR [eax+0x72],dh
c01078e0:	6f                   	outs   dx,DWORD PTR ds:[esi]
c01078e1:	62 6c 65 6d          	bound  ebp,QWORD PTR [ebp+eiz*2+0x6d]
c01078e5:	20 62 65             	and    BYTE PTR [edx+0x65],ah
c01078e8:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c01078ea:	20 64 65 74          	and    BYTE PTR [ebp+eiz*2+0x74],ah
c01078ee:	65 63 74 65 64       	arpl   WORD PTR gs:[ebp+eiz*2+0x64],si
c01078f3:	20 61 6e             	and    BYTE PTR [ecx+0x6e],ah
c01078f6:	64 20 50 4b          	and    BYTE PTR fs:[eax+0x4b],dl
c01078fa:	6e                   	outs   dx,BYTE PTR ds:[esi]
c01078fb:	20 73 68             	and    BYTE PTR [ebx+0x68],dh
c01078fe:	75 74                	jne    c0107974 <cursor.1476+0x44c>
c0107900:	20 64 6f 77          	and    BYTE PTR [edi+ebp*2+0x77],ah
c0107904:	6e                   	outs   dx,BYTE PTR ds:[esi]
c0107905:	20 74 6f 20          	and    BYTE PTR [edi+ebp*2+0x20],dh
c0107909:	70 72                	jo     c010797d <cursor.1476+0x455>
c010790b:	65 76 65             	gs jbe c0107973 <cursor.1476+0x44b>
c010790e:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010790f:	74 20                	je     c0107931 <cursor.1476+0x409>
c0107911:	64 61                	fs popa 
c0107913:	6d                   	ins    DWORD PTR es:[edi],dx
c0107914:	61                   	popa   
c0107915:	67 65 20 74 6f       	and    BYTE PTR gs:[si+0x6f],dh
c010791a:	20 79 6f             	and    BYTE PTR [ecx+0x6f],bh
c010791d:	75 72                	jne    c0107991 <cursor.1476+0x469>
c010791f:	20 63 6f             	and    BYTE PTR [ebx+0x6f],ah
c0107922:	6d                   	ins    DWORD PTR es:[edi],dx
c0107923:	70 75                	jo     c010799a <cursor.1476+0x472>
c0107925:	74 65                	je     c010798c <cursor.1476+0x464>
c0107927:	72 2e                	jb     c0107957 <cursor.1476+0x42f>
c0107929:	0a 49 66             	or     cl,BYTE PTR [ecx+0x66]
c010792c:	20 74 68 69          	and    BYTE PTR [eax+ebp*2+0x69],dh
c0107930:	73 20                	jae    c0107952 <cursor.1476+0x42a>
c0107932:	69 73 20 74 68 65 20 	imul   esi,DWORD PTR [ebx+0x20],0x20656874
c0107939:	66 69 72 73 74 20    	imul   si,WORD PTR [edx+0x73],0x2074
c010793f:	74 69                	je     c01079aa <cursor.1476+0x482>
c0107941:	6d                   	ins    DWORD PTR es:[edi],dx
c0107942:	65 20 79 6f          	and    BYTE PTR gs:[ecx+0x6f],bh
c0107946:	75 27                	jne    c010796f <cursor.1476+0x447>
c0107948:	76 65                	jbe    c01079af <cursor.1476+0x487>
c010794a:	20 73 65             	and    BYTE PTR [ebx+0x65],dh
c010794d:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c010794f:	20 74 68 69          	and    BYTE PTR [eax+ebp*2+0x69],dh
c0107953:	73 20                	jae    c0107975 <cursor.1476+0x44d>
c0107955:	73 74                	jae    c01079cb <cursor.1476+0x4a3>
c0107957:	6f                   	outs   dx,DWORD PTR ds:[esi]
c0107958:	70 20                	jo     c010797a <cursor.1476+0x452>
c010795a:	65 72 72             	gs jb  c01079cf <cursor.1476+0x4a7>
c010795d:	6f                   	outs   dx,DWORD PTR ds:[esi]
c010795e:	72 20                	jb     c0107980 <cursor.1476+0x458>
c0107960:	73 65                	jae    c01079c7 <cursor.1476+0x49f>
c0107962:	72 65                	jb     c01079c9 <cursor.1476+0x4a1>
c0107964:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c0107966:	2c 20                	sub    al,0x20
c0107968:	72 65                	jb     c01079cf <cursor.1476+0x4a7>
c010796a:	73 74                	jae    c01079e0 <cursor.1476+0x4b8>
c010796c:	61                   	popa   
c010796d:	72 74                	jb     c01079e3 <cursor.1476+0x4bb>
c010796f:	20 79 6f             	and    BYTE PTR [ecx+0x6f],bh
c0107972:	75 72                	jne    c01079e6 <cursor.1476+0x4be>
c0107974:	20 63 6f             	and    BYTE PTR [ebx+0x6f],ah
c0107977:	6d                   	ins    DWORD PTR es:[edi],dx
c0107978:	70 75                	jo     c01079ef <cursor.1476+0x4c7>
c010797a:	74 65                	je     c01079e1 <cursor.1476+0x4b9>
c010797c:	72 2e                	jb     c01079ac <cursor.1476+0x484>
c010797e:	0a 49 66             	or     cl,BYTE PTR [ecx+0x66]
c0107981:	20 74 68 69          	and    BYTE PTR [eax+ebp*2+0x69],dh
c0107985:	73 20                	jae    c01079a7 <cursor.1476+0x47f>
c0107987:	73 63                	jae    c01079ec <cursor.1476+0x4c4>
c0107989:	72 65                	jb     c01079f0 <cursor.1476+0x4c8>
c010798b:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c010798d:	20 61 70             	and    BYTE PTR [ecx+0x70],ah
c0107990:	70 65                	jo     c01079f7 <cursor.1476+0x4cf>
c0107992:	72 73                	jb     c0107a07 <cursor.1476+0x4df>
c0107994:	20 61 67             	and    BYTE PTR [ecx+0x67],ah
c0107997:	61                   	popa   
c0107998:	69 6e 2c 66 6f 6c 6c 	imul   ebp,DWORD PTR [esi+0x2c],0x6c6c6f66
c010799f:	6f                   	outs   dx,DWORD PTR ds:[esi]
c01079a0:	77 20                	ja     c01079c2 <cursor.1476+0x49a>
c01079a2:	74 68                	je     c0107a0c <cursor.1476+0x4e4>
c01079a4:	65 73 65             	gs jae c0107a0c <cursor.1476+0x4e4>
c01079a7:	20 73 74             	and    BYTE PTR [ebx+0x74],dh
c01079aa:	65 70 73             	gs jo  c0107a20 <cursor.1476+0x4f8>
c01079ad:	3a 0a                	cmp    cl,BYTE PTR [edx]
c01079af:	20 31                	and    BYTE PTR [ecx],dh
c01079b1:	2e 20 52 65          	and    BYTE PTR cs:[edx+0x65],dl
c01079b5:	62 75 69             	bound  esi,QWORD PTR [ebp+0x69]
c01079b8:	6c                   	ins    BYTE PTR es:[edi],dx
c01079b9:	64 20 50 65          	and    BYTE PTR fs:[eax+0x65],dl
c01079bd:	6e                   	outs   dx,BYTE PTR ds:[esi]
c01079be:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c01079c1:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c01079c6:	65 6c                	gs ins BYTE PTR es:[edi],dx
c01079c8:	2e 20 0a             	and    BYTE PTR cs:[edx],cl
c01079cb:	20 32                	and    BYTE PTR [edx],dh
c01079cd:	2e 20 44 65 62       	and    BYTE PTR cs:[ebp+eiz*2+0x62],al
c01079d2:	75 67                	jne    c0107a3b <cursor.1476+0x513>
c01079d4:	20 50 65             	and    BYTE PTR [eax+0x65],dl
c01079d7:	6e                   	outs   dx,BYTE PTR ds:[esi]
c01079d8:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c01079db:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c01079e0:	65 6c                	gs ins BYTE PTR es:[edi],dx
c01079e2:	20 6f 6e             	and    BYTE PTR [edi+0x6e],ch
c01079e5:	20 76 69             	and    BYTE PTR [esi+0x69],dh
c01079e8:	72 74                	jb     c0107a5e <cursor.1476+0x536>
c01079ea:	75 61                	jne    c0107a4d <cursor.1476+0x525>
c01079ec:	6c                   	ins    BYTE PTR es:[edi],dx
c01079ed:	20 6d 61             	and    BYTE PTR [ebp+0x61],ch
c01079f0:	63 68 69             	arpl   WORD PTR [eax+0x69],bp
c01079f3:	6e                   	outs   dx,BYTE PTR ds:[esi]
c01079f4:	65 2e 0a 00          	gs or  al,BYTE PTR cs:[eax]
c01079f8:	20 25 73 0a 20 69    	and    BYTE PTR ds:0x69200a73,ah
c01079fe:	6e                   	outs   dx,BYTE PTR ds:[esi]
c01079ff:	74 72                	je     c0107a73 <cursor.1476+0x54b>
c0107a01:	3a 20                	cmp    ah,BYTE PTR [eax]
c0107a03:	30 78 25             	xor    BYTE PTR [eax+0x25],bh
c0107a06:	30 32                	xor    BYTE PTR [edx],dh
c0107a08:	78 0a                	js     c0107a14 <cursor.1476+0x4ec>
c0107a0a:	20 43 53             	and    BYTE PTR [ebx+0x53],al
c0107a0d:	3a 45 49             	cmp    al,BYTE PTR [ebp+0x49]
c0107a10:	50                   	push   eax
c0107a11:	20 20                	and    BYTE PTR [eax],ah
c0107a13:	30 78 25             	xor    BYTE PTR [eax+0x25],bh
c0107a16:	78 3a                	js     c0107a52 <cursor.1476+0x52a>
c0107a18:	25 30 38 70 0a       	and    eax,0xa703830
c0107a1d:	20 00                	and    BYTE PTR [eax],al
c0107a1f:	28 20                	sub    BYTE PTR [eax],ah
c0107a21:	46                   	inc    esi
c0107a22:	61                   	popa   
c0107a23:	75 6c                	jne    c0107a91 <cursor.1476+0x569>
c0107a25:	74 20                	je     c0107a47 <cursor.1476+0x51f>
c0107a27:	61                   	popa   
c0107a28:	64 64 72 65          	fs fs jb c0107a91 <cursor.1476+0x569>
c0107a2c:	73 73                	jae    c0107aa1 <cursor.1476+0x579>
c0107a2e:	3a 20                	cmp    ah,BYTE PTR [eax]
c0107a30:	25 70 20 29 00       	and    eax,0x292070
c0107a35:	00 00                	add    BYTE PTR [eax],al
c0107a37:	00 50 65             	add    BYTE PTR [eax+0x65],dl
c0107a3a:	6e                   	outs   dx,BYTE PTR ds:[esi]
c0107a3b:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c0107a3e:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c0107a43:	65 6c                	gs ins BYTE PTR es:[edi],dx
c0107a45:	20 28                	and    BYTE PTR [eax],ch
c0107a47:	50                   	push   eax
c0107a48:	4b                   	dec    ebx
c0107a49:	6e                   	outs   dx,BYTE PTR ds:[esi]
c0107a4a:	29 20                	sub    DWORD PTR [eax],esp
c0107a4c:	30 2e                	xor    BYTE PTR [esi],ch
c0107a4e:	30 2e                	xor    BYTE PTR [esi],ch
c0107a50:	31 20                	xor    DWORD PTR [eax],esp
c0107a52:	41                   	inc    ecx
c0107a53:	75 67                	jne    c0107abc <cursor.1476+0x594>
c0107a55:	2e 00 00             	add    BYTE PTR cs:[eax],al
c0107a58:	4d                   	dec    ebp
c0107a59:	65 6d                	gs ins DWORD PTR es:[edi],dx
c0107a5b:	6f                   	outs   dx,DWORD PTR ds:[esi]
c0107a5c:	72 79                	jb     c0107ad7 <cursor.1476+0x5af>
c0107a5e:	20 41 6c             	and    BYTE PTR [ecx+0x6c],al
c0107a61:	6c                   	ins    BYTE PTR es:[edi],dx
c0107a62:	6f                   	outs   dx,DWORD PTR ds:[esi]
c0107a63:	63 20                	arpl   WORD PTR [eax],sp
c0107a65:	00 61 6c             	add    BYTE PTR [ecx+0x6c],ah
c0107a68:	6c                   	ins    BYTE PTR es:[edi],dx
c0107a69:	6f                   	outs   dx,DWORD PTR ds:[esi]
c0107a6a:	63 20                	arpl   WORD PTR [eax],sp
c0107a6c:	67 65 6e             	outs   dx,BYTE PTR gs:[si]
c0107a6f:	65 72 61             	gs jb  c0107ad3 <cursor.1476+0x5ab>
c0107a72:	6c                   	ins    BYTE PTR es:[edi],dx
c0107a73:	20 6d 65             	and    BYTE PTR [ebp+0x65],ch
c0107a76:	6d                   	ins    DWORD PTR es:[edi],dx
c0107a77:	6f                   	outs   dx,DWORD PTR ds:[esi]
c0107a78:	72 79                	jb     c0107af3 <cursor.1476+0x5cb>
c0107a7a:	00 61 72             	add    BYTE PTR [ecx+0x72],ah
c0107a7d:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c0107a7f:	61                   	popa   
c0107a80:	20 69 73             	and    BYTE PTR [ecx+0x73],ch
c0107a83:	20 4e 55             	and    BYTE PTR [esi+0x55],cl
c0107a86:	4c                   	dec    esp
c0107a87:	4c                   	dec    esp
c0107a88:	00 21                	add    BYTE PTR [ecx],ah
c0107a8a:	28 6c 69 73          	sub    BYTE PTR [ecx+ebp*2+0x73],ch
c0107a8e:	74 5f                	je     c0107aef <cursor.1476+0x5c7>
c0107a90:	66 69 6e 64 28 26    	imul   bp,WORD PTR [esi+0x64],0x2628
c0107a96:	28 61 2d             	sub    BYTE PTR [ecx+0x2d],ah
c0107a99:	3e 64 65 73 63       	ds fs gs jae c0107b01 <cursor.1476+0x5d9>
c0107a9e:	2d 3e 66 72 65       	sub    eax,0x6572663e
c0107aa3:	65 5f                	gs pop edi
c0107aa5:	6c                   	ins    BYTE PTR es:[edi],dx
c0107aa6:	69 73 74 29 2c 26 28 	imul   esi,DWORD PTR [ebx+0x74],0x28262c29
c0107aad:	62 2d 3e 66 72 65    	bound  ebp,QWORD PTR ds:0x6572663e
c0107ab3:	65 29 29             	sub    DWORD PTR gs:[ecx],ebp
c0107ab6:	29 00                	sub    DWORD PTR [eax],eax
c0107ab8:	6d                   	ins    DWORD PTR es:[edi],dx
c0107ab9:	65 6d                	gs ins DWORD PTR es:[edi],dx
c0107abb:	6f                   	outs   dx,DWORD PTR ds:[esi]
c0107abc:	72 79                	jb     c0107b37 <__func__.1287+0x3>
c0107abe:	2f                   	das    
c0107abf:	61                   	popa   
c0107ac0:	72 65                	jb     c0107b27 <cursor.1476+0x5ff>
c0107ac2:	6e                   	outs   dx,BYTE PTR ds:[esi]
c0107ac3:	61                   	popa   
c0107ac4:	2e 63 00             	arpl   WORD PTR cs:[eax],ax
c0107ac7:	61                   	popa   
c0107ac8:	6c                   	ins    BYTE PTR es:[edi],dx
c0107ac9:	6c                   	ins    BYTE PTR es:[edi],dx
c0107aca:	6f                   	outs   dx,DWORD PTR ds:[esi]
c0107acb:	63 20                	arpl   WORD PTR [eax],sp
c0107acd:	6c                   	ins    BYTE PTR es:[edi],dx
c0107ace:	61                   	popa   
c0107acf:	72 67                	jb     c0107b38 <__func__.1287+0x4>
c0107ad1:	65 20 6d 65          	and    BYTE PTR gs:[ebp+0x65],ch
c0107ad5:	6d                   	ins    DWORD PTR es:[edi],dx
c0107ad6:	6f                   	outs   dx,DWORD PTR ds:[esi]
c0107ad7:	72 79                	jb     c0107b52 <__func__.1301+0x12>
c0107ad9:	00 4d 65             	add    BYTE PTR [ebp+0x65],cl
c0107adc:	6d                   	ins    DWORD PTR es:[edi],dx
c0107add:	6f                   	outs   dx,DWORD PTR ds:[esi]
c0107ade:	72 79                	jb     c0107b59 <__func__.1301+0x19>
c0107ae0:	20 46 72             	and    BYTE PTR [esi+0x72],al
c0107ae3:	65 65 00 6c 69 73    	gs add BYTE PTR gs:[ecx+ebp*2+0x73],ch
c0107ae9:	74 5f                	je     c0107b4a <__func__.1301+0xa>
c0107aeb:	66 69 6e 64 28 26    	imul   bp,WORD PTR [esi+0x64],0x2628
c0107af1:	28 61 2d             	sub    BYTE PTR [ecx+0x2d],ah
c0107af4:	3e 64 65 73 63       	ds fs gs jae c0107b5c <__func__.1301+0x1c>
c0107af9:	2d 3e 66 72 65       	sub    eax,0x6572663e
c0107afe:	65 5f                	gs pop edi
c0107b00:	6c                   	ins    BYTE PTR es:[edi],dx
c0107b01:	69 73 74 29 2c 26 28 	imul   esi,DWORD PTR [ebx+0x74],0x28262c29
c0107b08:	62 2d 3e 66 72 65    	bound  ebp,QWORD PTR ds:0x6572663e
c0107b0e:	65 29 29             	sub    DWORD PTR gs:[ecx],ebp
c0107b11:	00 00                	add    BYTE PTR [eax],al
c0107b13:	00 50 65             	add    BYTE PTR [eax+0x65],dl
c0107b16:	6e                   	outs   dx,BYTE PTR ds:[esi]
c0107b17:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c0107b1a:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c0107b1f:	65 6c                	gs ins BYTE PTR es:[edi],dx
c0107b21:	20 28                	and    BYTE PTR [eax],ch
c0107b23:	50                   	push   eax
c0107b24:	4b                   	dec    ebx
c0107b25:	6e                   	outs   dx,BYTE PTR ds:[esi]
c0107b26:	29 20                	sub    DWORD PTR [eax],esp
c0107b28:	30 2e                	xor    BYTE PTR [esi],ch
c0107b2a:	30 2e                	xor    BYTE PTR [esi],ch
c0107b2c:	31 20                	xor    DWORD PTR [eax],esp
c0107b2e:	41                   	inc    ecx
c0107b2f:	75 67                	jne    c0107b98 <__func__.1301+0x58>
c0107b31:	2e 00 00             	add    BYTE PTR cs:[eax],al

c0107b34 <__func__.1287>:
c0107b34:	73 79                	jae    c0107baf <__func__.1301+0x6f>
c0107b36:	73 5f                	jae    c0107b97 <__func__.1301+0x57>
c0107b38:	6d                   	ins    DWORD PTR es:[edi],dx
c0107b39:	61                   	popa   
c0107b3a:	6c                   	ins    BYTE PTR es:[edi],dx
c0107b3b:	6c                   	ins    BYTE PTR es:[edi],dx
c0107b3c:	6f                   	outs   dx,DWORD PTR ds:[esi]
c0107b3d:	63 00                	arpl   WORD PTR [eax],ax
	...

c0107b40 <__func__.1301>:
c0107b40:	73 79                	jae    c0107bbb <__func__.1301+0x7b>
c0107b42:	73 5f                	jae    c0107ba3 <__func__.1301+0x63>
c0107b44:	66 72 65             	data16 jb c0107bac <__func__.1301+0x6c>
c0107b47:	65 00 00             	add    BYTE PTR gs:[eax],al
c0107b4a:	00 00                	add    BYTE PTR [eax],al
c0107b4c:	70 61                	jo     c0107baf <__func__.1301+0x6f>
c0107b4e:	67 65 73 20          	addr16 gs jae c0107b72 <__func__.1301+0x32>
c0107b52:	21 3d 20 30 00 6d    	and    DWORD PTR ds:0x6d003020,edi
c0107b58:	65 6d                	gs ins DWORD PTR es:[edi],dx
c0107b5a:	6f                   	outs   dx,DWORD PTR ds:[esi]
c0107b5b:	72 79                	jb     c0107bd6 <__func__.1301+0x96>
c0107b5d:	2f                   	das    
c0107b5e:	6d                   	ins    DWORD PTR es:[edi],dx
c0107b5f:	65 6d                	gs ins DWORD PTR es:[edi],dx
c0107b61:	6f                   	outs   dx,DWORD PTR ds:[esi]
c0107b62:	72 79                	jb     c0107bdd <__func__.1301+0x9d>
c0107b64:	2e 63 00             	arpl   WORD PTR cs:[eax],ax
c0107b67:	66 72 65             	data16 jb c0107bcf <__func__.1301+0x8f>
c0107b6a:	65 20 21             	and    BYTE PTR gs:[ecx],ah
c0107b6d:	3d 20 4e 55 4c       	cmp    eax,0x4c554e20
c0107b72:	4c                   	dec    esp
c0107b73:	00 67 65             	add    BYTE PTR [edi+0x65],ah
c0107b76:	74 5f                	je     c0107bd7 <__func__.1301+0x97>
c0107b78:	61                   	popa   
c0107b79:	5f                   	pop    edi
c0107b7a:	70 61                	jo     c0107bdd <__func__.1301+0x9d>
c0107b7c:	67 65 3a 20          	cmp    ah,BYTE PTR gs:[bx+si]
c0107b80:	6e                   	outs   dx,BYTE PTR ds:[esi]
c0107b81:	6f                   	outs   dx,DWORD PTR ds:[esi]
c0107b82:	74 20                	je     c0107ba4 <__func__.1301+0x64>
c0107b84:	61                   	popa   
c0107b85:	6c                   	ins    BYTE PTR es:[edi],dx
c0107b86:	6c                   	ins    BYTE PTR es:[edi],dx
c0107b87:	6f                   	outs   dx,DWORD PTR ds:[esi]
c0107b88:	77 20                	ja     c0107baa <__func__.1301+0x6a>
c0107b8a:	6b 65 72 6e          	imul   esp,DWORD PTR [ebp+0x72],0x6e
c0107b8e:	65 6c                	gs ins BYTE PTR es:[edi],dx
c0107b90:	20 61 6c             	and    BYTE PTR [ecx+0x6c],ah
c0107b93:	6c                   	ins    BYTE PTR es:[edi],dx
c0107b94:	6f                   	outs   dx,DWORD PTR ds:[esi]
c0107b95:	63 20                	arpl   WORD PTR [eax],sp
c0107b97:	75 73                	jne    c0107c0c <__func__.1301+0xcc>
c0107b99:	65 72 73             	gs jb  c0107c0f <__func__.1301+0xcf>
c0107b9c:	70 61                	jo     c0107bff <__func__.1301+0xbf>
c0107b9e:	63 65 20             	arpl   WORD PTR [ebp+0x20],sp
c0107ba1:	6f                   	outs   dx,DWORD PTR ds:[esi]
c0107ba2:	72 20                	jb     c0107bc4 <__func__.1301+0x84>
c0107ba4:	75 73                	jne    c0107c19 <__func__.1301+0xd9>
c0107ba6:	65 72 20             	gs jb  c0107bc9 <__func__.1301+0x89>
c0107ba9:	61                   	popa   
c0107baa:	6c                   	ins    BYTE PTR es:[edi],dx
c0107bab:	6c                   	ins    BYTE PTR es:[edi],dx
c0107bac:	6f                   	outs   dx,DWORD PTR ds:[esi]
c0107bad:	63 20                	arpl   WORD PTR [eax],sp
c0107baf:	6b 65 72 6e          	imul   esp,DWORD PTR [ebp+0x72],0x6e
c0107bb3:	65 6c                	gs ins BYTE PTR es:[edi],dx
c0107bb5:	73 70                	jae    c0107c27 <__func__.1301+0xe7>
c0107bb7:	61                   	popa   
c0107bb8:	63 65 20             	arpl   WORD PTR [ebp+0x20],sp
c0107bbb:	62 79 20             	bound  edi,QWORD PTR [ecx+0x20]
c0107bbe:	67 65 74 5f          	addr16 gs je c0107c21 <__func__.1301+0xe1>
c0107bc2:	61                   	popa   
c0107bc3:	5f                   	pop    edi
c0107bc4:	70 61                	jo     c0107c27 <__func__.1301+0xe7>
c0107bc6:	67 65 28 29          	sub    BYTE PTR gs:[bx+di],ch
c0107bca:	00 70 61             	add    BYTE PTR [eax+0x61],dh
c0107bcd:	67 65 5f             	addr16 gs pop edi
c0107bd0:	70 61                	jo     c0107c33 <__func__.1301+0xf3>
c0107bd2:	64 64 72 20          	fs fs jb c0107bf6 <__func__.1301+0xb6>
c0107bd6:	21 3d 20 4e 55 4c    	and    DWORD PTR ds:0x4c554e20,edi
c0107bdc:	4c                   	dec    esp
c0107bdd:	00 50 61             	add    BYTE PTR [eax+0x61],dl
c0107be0:	67 65 20 46 72       	and    BYTE PTR gs:[bp+0x72],al
c0107be5:	65 65 20 45 72       	gs and BYTE PTR gs:[ebp+0x72],al
c0107bea:	72 6f                	jb     c0107c5b <__func__.1301+0x11b>
c0107bec:	72 20                	jb     c0107c0e <__func__.1301+0xce>
c0107bee:	21 00                	and    DWORD PTR [eax],eax
c0107bf0:	4e                   	dec    esi
c0107bf1:	6f                   	outs   dx,DWORD PTR ds:[esi]
c0107bf2:	20 4d 65             	and    BYTE PTR [ebp+0x65],cl
c0107bf5:	6d                   	ins    DWORD PTR es:[edi],dx
c0107bf6:	6f                   	outs   dx,DWORD PTR ds:[esi]
c0107bf7:	72 79                	jb     c0107c72 <__func__.1301+0x132>
c0107bf9:	20 61 76             	and    BYTE PTR [ecx+0x76],ah
c0107bfc:	61                   	popa   
c0107bfd:	69 6c 61 62 6c 65 21 	imul   ebp,DWORD PTR [ecx+eiz*2+0x62],0x21656c
c0107c04:	00 
c0107c05:	66 72 65             	data16 jb c0107c6d <__func__.1301+0x12d>
c0107c08:	65 5f                	gs pop edi
c0107c0a:	70 67                	jo     c0107c73 <__func__.1301+0x133>
c0107c0c:	5f                   	pop    edi
c0107c0d:	63 6e 74             	arpl   WORD PTR [esi+0x74],bp
c0107c10:	20 3e                	and    BYTE PTR [esi],bh
c0107c12:	3d 20 31 20 26       	cmp    eax,0x26203120
c0107c17:	26 20 28             	and    BYTE PTR es:[eax],ch
c0107c1a:	75 69                	jne    c0107c85 <__func__.1301+0x145>
c0107c1c:	6e                   	outs   dx,BYTE PTR ds:[esi]
c0107c1d:	74 33                	je     c0107c52 <__func__.1301+0x112>
c0107c1f:	32 5f 74             	xor    bl,BYTE PTR [edi+0x74]
c0107c22:	29 76 61             	sub    DWORD PTR [esi+0x61],esi
c0107c25:	64 64 72 20          	fs fs jb c0107c49 <__func__.1301+0x109>
c0107c29:	25 20 50 47 5f       	and    eax,0x5f475020
c0107c2e:	53                   	push   ebx
c0107c2f:	49                   	dec    ecx
c0107c30:	5a                   	pop    edx
c0107c31:	45                   	inc    ebp
c0107c32:	20 3d 3d 20 30 00    	and    BYTE PTR ds:0x30203d,bh
c0107c38:	28 28                	sub    BYTE PTR [eax],ch
c0107c3a:	70 74                	jo     c0107cb0 <__func__.1301+0x170>
c0107c3c:	72 5f                	jb     c0107c9d <__func__.1301+0x15d>
c0107c3e:	74 29                	je     c0107c69 <__func__.1301+0x129>
c0107c40:	70 67                	jo     c0107ca9 <__func__.1301+0x169>
c0107c42:	5f                   	pop    edi
c0107c43:	70 61                	jo     c0107ca6 <__func__.1301+0x166>
c0107c45:	64 64 72 20          	fs fs jb c0107c69 <__func__.1301+0x129>
c0107c49:	25 20 50 47 5f       	and    eax,0x5f475020
c0107c4e:	53                   	push   ebx
c0107c4f:	49                   	dec    ecx
c0107c50:	5a                   	pop    edx
c0107c51:	45                   	inc    ebp
c0107c52:	29 20                	sub    DWORD PTR [eax],esp
c0107c54:	3d 3d 20 30 20       	cmp    eax,0x2030203d
c0107c59:	26 26 20 28          	es and BYTE PTR es:[eax],ch
c0107c5d:	28 70 74             	sub    BYTE PTR [eax+0x74],dh
c0107c60:	72 5f                	jb     c0107cc1 <__func__.1222+0x9>
c0107c62:	74 29                	je     c0107c8d <__func__.1301+0x14d>
c0107c64:	70 67                	jo     c0107ccd <__func__.1231+0x9>
c0107c66:	5f                   	pop    edi
c0107c67:	70 61                	jo     c0107cca <__func__.1231+0x6>
c0107c69:	64 64 72 29          	fs fs jb c0107c96 <__func__.1301+0x156>
c0107c6d:	20 3e                	and    BYTE PTR [esi],bh
c0107c6f:	3d 20 4b 45 52       	cmp    eax,0x52454b20
c0107c74:	4e                   	dec    esi
c0107c75:	45                   	inc    ebp
c0107c76:	4c                   	dec    esp
c0107c77:	5f                   	pop    edi
c0107c78:	50                   	push   eax
c0107c79:	41                   	inc    ecx
c0107c7a:	47                   	inc    edi
c0107c7b:	45                   	inc    ebp
c0107c7c:	5f                   	pop    edi
c0107c7d:	44                   	inc    esp
c0107c7e:	49                   	dec    ecx
c0107c7f:	52                   	push   edx
c0107c80:	5f                   	pop    edi
c0107c81:	54                   	push   esp
c0107c82:	41                   	inc    ecx
c0107c83:	42                   	inc    edx
c0107c84:	4c                   	dec    esp
c0107c85:	45                   	inc    ebp
c0107c86:	5f                   	pop    edi
c0107c87:	50                   	push   eax
c0107c88:	4f                   	dec    edi
c0107c89:	53                   	push   ebx
c0107c8a:	20 2b                	and    BYTE PTR [ebx],ch
c0107c8c:	20 30                	and    BYTE PTR [eax],dh
c0107c8e:	78 32                	js     c0107cc2 <__func__.1222+0xa>
c0107c90:	30 30                	xor    BYTE PTR [eax],dh
c0107c92:	30 30                	xor    BYTE PTR [eax],dh
c0107c94:	30 00                	xor    BYTE PTR [eax],al
c0107c96:	00 00                	add    BYTE PTR [eax],al
c0107c98:	50                   	push   eax
c0107c99:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c0107c9b:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c0107c9e:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c0107ca3:	65 6c                	gs ins BYTE PTR es:[edi],dx
c0107ca5:	20 28                	and    BYTE PTR [eax],ch
c0107ca7:	50                   	push   eax
c0107ca8:	4b                   	dec    ebx
c0107ca9:	6e                   	outs   dx,BYTE PTR ds:[esi]
c0107caa:	29 20                	sub    DWORD PTR [eax],esp
c0107cac:	30 2e                	xor    BYTE PTR [esi],ch
c0107cae:	30 2e                	xor    BYTE PTR [esi],ch
c0107cb0:	31 20                	xor    DWORD PTR [eax],esp
c0107cb2:	41                   	inc    ecx
c0107cb3:	75 67                	jne    c0107d1c <__func__.1340+0x34>
c0107cb5:	2e 00 00             	add    BYTE PTR cs:[eax],al

c0107cb8 <__func__.1222>:
c0107cb8:	69 6e 69 74 5f 6d 65 	imul   ebp,DWORD PTR [esi+0x69],0x656d5f74
c0107cbf:	6d                   	ins    DWORD PTR es:[edi],dx
c0107cc0:	6f                   	outs   dx,DWORD PTR ds:[esi]
c0107cc1:	72 79                	jb     c0107d3c <__func__.1340+0x54>
	...

c0107cc4 <__func__.1231>:
c0107cc4:	69 6e 69 74 5f 6d 65 	imul   ebp,DWORD PTR [esi+0x69],0x656d5f74
c0107ccb:	6d                   	ins    DWORD PTR es:[edi],dx
c0107ccc:	6d                   	ins    DWORD PTR es:[edi],dx
c0107ccd:	61                   	popa   
c0107cce:	6e                   	outs   dx,BYTE PTR ds:[esi]
	...

c0107cd0 <__func__.1298>:
c0107cd0:	67 65 74 5f          	addr16 gs je c0107d33 <__func__.1340+0x4b>
c0107cd4:	61                   	popa   
c0107cd5:	5f                   	pop    edi
c0107cd6:	70 61                	jo     c0107d39 <__func__.1340+0x51>
c0107cd8:	67 65 00 00          	add    BYTE PTR gs:[bx+si],al

c0107cdc <__func__.1318>:
c0107cdc:	70 67                	jo     c0107d45 <__func__.1340+0x5d>
c0107cde:	6d                   	ins    DWORD PTR es:[edi],dx
c0107cdf:	61                   	popa   
c0107ce0:	6e                   	outs   dx,BYTE PTR ds:[esi]
c0107ce1:	5f                   	pop    edi
c0107ce2:	66 72 65             	data16 jb c0107d4a <__func__.1340+0x62>
c0107ce5:	65 00 00             	add    BYTE PTR gs:[eax],al

c0107ce8 <__func__.1340>:
c0107ce8:	70 61                	jo     c0107d4b <__func__.1340+0x63>
c0107cea:	67 65 5f             	addr16 gs pop edi
c0107ced:	66 72 65             	data16 jb c0107d55 <__func__.1340+0x6d>
c0107cf0:	65 00 00             	add    BYTE PTR gs:[eax],al
c0107cf3:	00 70 73             	add    BYTE PTR [eax+0x73],dh
c0107cf6:	65 6d                	gs ins DWORD PTR es:[edi],dx
c0107cf8:	61                   	popa   
c0107cf9:	2d 3e 76 61 6c       	sub    eax,0x6c61763e
c0107cfe:	75 65                	jne    c0107d65 <__func__.1340+0x7d>
c0107d00:	20 3d 3d 20 76 61    	and    BYTE PTR ds:0x6176203d,bh
c0107d06:	6c                   	ins    BYTE PTR es:[edi],dx
c0107d07:	75 65                	jne    c0107d6e <__func__.1340+0x86>
c0107d09:	00 74 68 72          	add    BYTE PTR [eax+ebp*2+0x72],dh
c0107d0d:	65 61                	gs popa 
c0107d0f:	64 2f                	fs das 
c0107d11:	73 79                	jae    c0107d8c <__func__.1340+0xa4>
c0107d13:	6e                   	outs   dx,BYTE PTR ds:[esi]
c0107d14:	63 2e                	arpl   WORD PTR [esi],bp
c0107d16:	63 00                	arpl   WORD PTR [eax],ax
c0107d18:	21 28                	and    DWORD PTR [eax],ebp
c0107d1a:	6c                   	ins    BYTE PTR es:[edi],dx
c0107d1b:	69 73 74 5f 66 69 6e 	imul   esi,DWORD PTR [ebx+0x74],0x6e69665f
c0107d22:	64 28 26             	sub    BYTE PTR fs:[esi],ah
c0107d25:	28 70 73             	sub    BYTE PTR [eax+0x73],dh
c0107d28:	65 6d                	gs ins DWORD PTR es:[edi],dx
c0107d2a:	61                   	popa   
c0107d2b:	2d 3e 77 61 69       	sub    eax,0x6961773e
c0107d30:	74 65                	je     c0107d97 <__func__.1340+0xaf>
c0107d32:	72 73                	jb     c0107da7 <__func__.1340+0xbf>
c0107d34:	29 2c 26             	sub    DWORD PTR [esi+eiz*1],ebp
c0107d37:	28 72 75             	sub    BYTE PTR [edx+0x75],dh
c0107d3a:	6e                   	outs   dx,BYTE PTR ds:[esi]
c0107d3b:	6e                   	outs   dx,BYTE PTR ds:[esi]
c0107d3c:	69 6e 67 5f 74 68 72 	imul   ebp,DWORD PTR [esi+0x67],0x7268745f
c0107d43:	65 61                	gs popa 
c0107d45:	64 28 29             	sub    BYTE PTR fs:[ecx],ch
c0107d48:	2d 3e 67 65 6e       	sub    eax,0x6e65673e
c0107d4d:	65 72 61             	gs jb  c0107db1 <__func__.1340+0xc9>
c0107d50:	6c                   	ins    BYTE PTR es:[edi],dx
c0107d51:	5f                   	pop    edi
c0107d52:	74 61                	je     c0107db5 <__func__.1340+0xcd>
c0107d54:	67 29 29             	sub    DWORD PTR [bx+di],ebp
c0107d57:	29 00                	sub    DWORD PTR [eax],eax
c0107d59:	73 65                	jae    c0107dc0 <__func__.1340+0xd8>
c0107d5b:	6d                   	ins    DWORD PTR es:[edi],dx
c0107d5c:	61                   	popa   
c0107d5d:	20 64 6f 77          	and    BYTE PTR [edi+ebp*2+0x77],ah
c0107d61:	6e                   	outs   dx,BYTE PTR ds:[esi]
c0107d62:	3a 74 68 72          	cmp    dh,BYTE PTR [eax+ebp*2+0x72]
c0107d66:	65 61                	gs popa 
c0107d68:	64 20 62 6c          	and    BYTE PTR fs:[edx+0x6c],ah
c0107d6c:	6f                   	outs   dx,DWORD PTR ds:[esi]
c0107d6d:	63 6b 65             	arpl   WORD PTR [ebx+0x65],bp
c0107d70:	64 20 68 61          	and    BYTE PTR fs:[eax+0x61],ch
c0107d74:	73 20                	jae    c0107d96 <__func__.1340+0xae>
c0107d76:	62 65 65             	bound  esp,QWORD PTR [ebp+0x65]
c0107d79:	6e                   	outs   dx,BYTE PTR ds:[esi]
c0107d7a:	20 69 6e             	and    BYTE PTR [ecx+0x6e],ch
c0107d7d:	20 77 61             	and    BYTE PTR [edi+0x61],dh
c0107d80:	69 74 65 72 73 20 6c 	imul   esi,DWORD PTR [ebp+eiz*2+0x72],0x696c2073
c0107d87:	69 
c0107d88:	73 74                	jae    c0107dfe <__func__.1340+0x116>
c0107d8a:	21 0a                	and    DWORD PTR [edx],ecx
c0107d8c:	00 70 73             	add    BYTE PTR [eax+0x73],dh
c0107d8f:	65 6d                	gs ins DWORD PTR es:[edi],dx
c0107d91:	61                   	popa   
c0107d92:	2d 3e 76 61 6c       	sub    eax,0x6c61763e
c0107d97:	75 65                	jne    c0107dfe <__func__.1340+0x116>
c0107d99:	20 3d 3d 20 30 00    	and    BYTE PTR ds:0x30203d,bh
c0107d9f:	70 73                	jo     c0107e14 <__func__.1340+0x12c>
c0107da1:	65 6d                	gs ins DWORD PTR es:[edi],dx
c0107da3:	61                   	popa   
c0107da4:	2d 3e 76 61 6c       	sub    eax,0x6c61763e
c0107da9:	75 65                	jne    c0107e10 <__func__.1340+0x128>
c0107dab:	20 3d 3d 20 31 00    	and    BYTE PTR ds:0x31203d,bh
c0107db1:	70 6c                	jo     c0107e1f <__func__.1340+0x137>
c0107db3:	6f                   	outs   dx,DWORD PTR ds:[esi]
c0107db4:	63 6b 2d             	arpl   WORD PTR [ebx+0x2d],bp
c0107db7:	3e 68 6f 6c 64 65    	ds push 0x65646c6f
c0107dbd:	72 5f                	jb     c0107e1e <__func__.1340+0x136>
c0107dbf:	72 65                	jb     c0107e26 <__func__.1340+0x13e>
c0107dc1:	70 65                	jo     c0107e28 <__func__.1340+0x140>
c0107dc3:	61                   	popa   
c0107dc4:	74 5f                	je     c0107e25 <__func__.1340+0x13d>
c0107dc6:	6e                   	outs   dx,BYTE PTR ds:[esi]
c0107dc7:	72 20                	jb     c0107de9 <__func__.1340+0x101>
c0107dc9:	3d 3d 20 30 00       	cmp    eax,0x30203d
c0107dce:	70 6c                	jo     c0107e3c <__func__.1118>
c0107dd0:	6f                   	outs   dx,DWORD PTR ds:[esi]
c0107dd1:	63 6b 2d             	arpl   WORD PTR [ebx+0x2d],bp
c0107dd4:	3e 68 6f 6c 64 65    	ds push 0x65646c6f
c0107dda:	72 20                	jb     c0107dfc <__func__.1340+0x114>
c0107ddc:	3d 3d 20 72 75       	cmp    eax,0x7572203d
c0107de1:	6e                   	outs   dx,BYTE PTR ds:[esi]
c0107de2:	6e                   	outs   dx,BYTE PTR ds:[esi]
c0107de3:	69 6e 67 5f 74 68 72 	imul   ebp,DWORD PTR [esi+0x67],0x7268745f
c0107dea:	65 61                	gs popa 
c0107dec:	64 28 29             	sub    BYTE PTR fs:[ecx],ch
c0107def:	00 70 6c             	add    BYTE PTR [eax+0x6c],dh
c0107df2:	6f                   	outs   dx,DWORD PTR ds:[esi]
c0107df3:	63 6b 2d             	arpl   WORD PTR [ebx+0x2d],bp
c0107df6:	3e 68 6f 6c 64 65    	ds push 0x65646c6f
c0107dfc:	72 5f                	jb     c0107e5d <__func__.1131+0xd>
c0107dfe:	72 65                	jb     c0107e65 <__func__.1135+0x5>
c0107e00:	70 65                	jo     c0107e67 <__func__.1135+0x7>
c0107e02:	61                   	popa   
c0107e03:	74 5f                	je     c0107e64 <__func__.1135+0x4>
c0107e05:	6e                   	outs   dx,BYTE PTR ds:[esi]
c0107e06:	72 20                	jb     c0107e28 <__func__.1340+0x140>
c0107e08:	3d 3d 20 31 00       	cmp    eax,0x31203d
c0107e0d:	00 00                	add    BYTE PTR [eax],al
c0107e0f:	00 50 65             	add    BYTE PTR [eax+0x65],dl
c0107e12:	6e                   	outs   dx,BYTE PTR ds:[esi]
c0107e13:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c0107e16:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c0107e1b:	65 6c                	gs ins BYTE PTR es:[edi],dx
c0107e1d:	20 28                	and    BYTE PTR [eax],ch
c0107e1f:	50                   	push   eax
c0107e20:	4b                   	dec    ebx
c0107e21:	6e                   	outs   dx,BYTE PTR ds:[esi]
c0107e22:	29 20                	sub    DWORD PTR [eax],esp
c0107e24:	30 2e                	xor    BYTE PTR [esi],ch
c0107e26:	30 2e                	xor    BYTE PTR [esi],ch
c0107e28:	31 20                	xor    DWORD PTR [eax],esp
c0107e2a:	41                   	inc    ecx
c0107e2b:	75 67                	jne    c0107e94 <__func__.1135+0x34>
c0107e2d:	2e 00 00             	add    BYTE PTR cs:[eax],al

c0107e30 <__func__.1110>:
c0107e30:	73 65                	jae    c0107e97 <__func__.1135+0x37>
c0107e32:	6d                   	ins    DWORD PTR es:[edi],dx
c0107e33:	61                   	popa   
c0107e34:	5f                   	pop    edi
c0107e35:	69 6e 69 74 00 00 00 	imul   ebp,DWORD PTR [esi+0x69],0x74

c0107e3c <__func__.1118>:
c0107e3c:	73 65                	jae    c0107ea3 <__func__.1135+0x43>
c0107e3e:	6d                   	ins    DWORD PTR es:[edi],dx
c0107e3f:	61                   	popa   
c0107e40:	5f                   	pop    edi
c0107e41:	64 6f                	outs   dx,DWORD PTR fs:[esi]
c0107e43:	77 6e                	ja     c0107eb3 <__func__.1135+0x53>
c0107e45:	00 00                	add    BYTE PTR [eax],al
	...

c0107e48 <__func__.1126>:
c0107e48:	73 65                	jae    c0107eaf <__func__.1135+0x4f>
c0107e4a:	6d                   	ins    DWORD PTR es:[edi],dx
c0107e4b:	61                   	popa   
c0107e4c:	5f                   	pop    edi
c0107e4d:	75 70                	jne    c0107ebf <__func__.1135+0x5f>
	...

c0107e50 <__func__.1131>:
c0107e50:	6c                   	ins    BYTE PTR es:[edi],dx
c0107e51:	6f                   	outs   dx,DWORD PTR ds:[esi]
c0107e52:	63 6b 5f             	arpl   WORD PTR [ebx+0x5f],bp
c0107e55:	61                   	popa   
c0107e56:	63 71 75             	arpl   WORD PTR [ecx+0x75],si
c0107e59:	69 72 65 00 00 00 00 	imul   esi,DWORD PTR [edx+0x65],0x0

c0107e60 <__func__.1135>:
c0107e60:	6c                   	ins    BYTE PTR es:[edi],dx
c0107e61:	6f                   	outs   dx,DWORD PTR ds:[esi]
c0107e62:	63 6b 5f             	arpl   WORD PTR [ebx+0x5f],bp
c0107e65:	72 65                	jb     c0107ecc <__func__.1135+0x6c>
c0107e67:	6c                   	ins    BYTE PTR es:[edi],dx
c0107e68:	65 61                	gs popa 
c0107e6a:	73 65                	jae    c0107ed1 <__func__.1135+0x71>
c0107e6c:	00 00                	add    BYTE PTR [eax],al
c0107e6e:	00 00                	add    BYTE PTR [eax],al
c0107e70:	4d                   	dec    ebp
c0107e71:	61                   	popa   
c0107e72:	69 6e 20 74 68 72 65 	imul   ebp,DWORD PTR [esi+0x20],0x65726874
c0107e79:	61                   	popa   
c0107e7a:	64 00 21             	add    BYTE PTR fs:[ecx],ah
c0107e7d:	6c                   	ins    BYTE PTR es:[edi],dx
c0107e7e:	69 73 74 5f 66 69 6e 	imul   esi,DWORD PTR [ebx+0x74],0x6e69665f
c0107e85:	64 28 26             	sub    BYTE PTR fs:[esi],ah
c0107e88:	72 65                	jb     c0107eef <__func__.1135+0x8f>
c0107e8a:	61                   	popa   
c0107e8b:	64 79 5f             	fs jns c0107eed <__func__.1135+0x8d>
c0107e8e:	6c                   	ins    BYTE PTR es:[edi],dx
c0107e8f:	69 73 74 2c 26 28 74 	imul   esi,DWORD PTR [ebx+0x74],0x7428262c
c0107e96:	68 72 65 61 64       	push   0x64616572
c0107e9b:	2d 3e 67 65 6e       	sub    eax,0x6e65673e
c0107ea0:	65 72 61             	gs jb  c0107f04 <__func__.1135+0xa4>
c0107ea3:	6c                   	ins    BYTE PTR es:[edi],dx
c0107ea4:	5f                   	pop    edi
c0107ea5:	74 61                	je     c0107f08 <__func__.1135+0xa8>
c0107ea7:	67 29 29             	sub    DWORD PTR [bx+di],ebp
c0107eaa:	00 74 68 72          	add    BYTE PTR [eax+ebp*2+0x72],dh
c0107eae:	65 61                	gs popa 
c0107eb0:	64 2f                	fs das 
c0107eb2:	74 68                	je     c0107f1c <__func__.1135+0xbc>
c0107eb4:	72 65                	jb     c0107f1b <__func__.1135+0xbb>
c0107eb6:	61                   	popa   
c0107eb7:	64 2e 63 00          	fs arpl WORD PTR cs:[eax],ax
c0107ebb:	21 6c 69 73          	and    DWORD PTR [ecx+ebp*2+0x73],ebp
c0107ebf:	74 5f                	je     c0107f20 <__func__.1135+0xc0>
c0107ec1:	66 69 6e 64 28 26    	imul   bp,WORD PTR [esi+0x64],0x2628
c0107ec7:	61                   	popa   
c0107ec8:	6c                   	ins    BYTE PTR es:[edi],dx
c0107ec9:	6c                   	ins    BYTE PTR es:[edi],dx
c0107eca:	5f                   	pop    edi
c0107ecb:	6c                   	ins    BYTE PTR es:[edi],dx
c0107ecc:	69 73 74 2c 26 28 74 	imul   esi,DWORD PTR [ebx+0x74],0x7428262c
c0107ed3:	68 72 65 61 64       	push   0x64616572
c0107ed8:	2d 3e 61 6c 6c       	sub    eax,0x6c6c613e
c0107edd:	5f                   	pop    edi
c0107ede:	74 61                	je     c0107f41 <__func__.1135+0xe1>
c0107ee0:	67 29 29             	sub    DWORD PTR [bx+di],ebp
c0107ee3:	00 63 75             	add    BYTE PTR [ebx+0x75],ah
c0107ee6:	72 5f                	jb     c0107f47 <__func__.1135+0xe7>
c0107ee8:	74 68                	je     c0107f52 <__func__.1135+0xf2>
c0107eea:	72 65                	jb     c0107f51 <__func__.1135+0xf1>
c0107eec:	61                   	popa   
c0107eed:	64 2d 3e 73 74 61    	fs sub eax,0x6174733e
c0107ef3:	63 6b 5f             	arpl   WORD PTR [ebx+0x5f],bp
c0107ef6:	6d                   	ins    DWORD PTR es:[edi],dx
c0107ef7:	61                   	popa   
c0107ef8:	67 69 63 20 3d 3d 20 	imul   esp,DWORD PTR [bp+di+0x20],0x30203d3d
c0107eff:	30 
c0107f00:	78 31                	js     c0107f33 <__func__.1135+0xd3>
c0107f02:	32 33                	xor    dh,BYTE PTR [ebx]
c0107f04:	34 35                	xor    al,0x35
c0107f06:	36 37                	ss aaa 
c0107f08:	38 00                	cmp    BYTE PTR [eax],al
c0107f0a:	21 28                	and    DWORD PTR [eax],ebp
c0107f0c:	6c                   	ins    BYTE PTR es:[edi],dx
c0107f0d:	69 73 74 5f 66 69 6e 	imul   esi,DWORD PTR [ebx+0x74],0x6e69665f
c0107f14:	64 28 26             	sub    BYTE PTR fs:[esi],ah
c0107f17:	72 65                	jb     c0107f7e <__func__.1135+0x11e>
c0107f19:	61                   	popa   
c0107f1a:	64 79 5f             	fs jns c0107f7c <__func__.1135+0x11c>
c0107f1d:	6c                   	ins    BYTE PTR es:[edi],dx
c0107f1e:	69 73 74 2c 26 28 63 	imul   esi,DWORD PTR [ebx+0x74],0x6328262c
c0107f25:	75 72                	jne    c0107f99 <__func__.1135+0x139>
c0107f27:	5f                   	pop    edi
c0107f28:	74 68                	je     c0107f92 <__func__.1135+0x132>
c0107f2a:	72 65                	jb     c0107f91 <__func__.1135+0x131>
c0107f2c:	61                   	popa   
c0107f2d:	64 2d 3e 67 65 6e    	fs sub eax,0x6e65673e
c0107f33:	65 72 61             	gs jb  c0107f97 <__func__.1135+0x137>
c0107f36:	6c                   	ins    BYTE PTR es:[edi],dx
c0107f37:	5f                   	pop    edi
c0107f38:	74 61                	je     c0107f9b <__func__.1135+0x13b>
c0107f3a:	67 29 29             	sub    DWORD PTR [bx+di],ebp
c0107f3d:	29 00                	sub    DWORD PTR [eax],eax
c0107f3f:	21 28                	and    DWORD PTR [eax],ebp
c0107f41:	6c                   	ins    BYTE PTR es:[edi],dx
c0107f42:	69 73 74 5f 65 6d 70 	imul   esi,DWORD PTR [ebx+0x74],0x706d655f
c0107f49:	74 79                	je     c0107fc4 <__func__.1135+0x164>
c0107f4b:	28 26                	sub    BYTE PTR [esi],ah
c0107f4d:	72 65                	jb     c0107fb4 <__func__.1135+0x154>
c0107f4f:	61                   	popa   
c0107f50:	64 79 5f             	fs jns c0107fb2 <__func__.1135+0x152>
c0107f53:	6c                   	ins    BYTE PTR es:[edi],dx
c0107f54:	69 73 74 29 29 00 72 	imul   esi,DWORD PTR [ebx+0x74],0x72002929
c0107f5b:	65 61                	gs popa 
c0107f5d:	64 79 5f             	fs jns c0107fbf <__func__.1135+0x15f>
c0107f60:	6c                   	ins    BYTE PTR es:[edi],dx
c0107f61:	69 73 74 2e 74 61 69 	imul   esi,DWORD PTR [ebx+0x74],0x6961742e
c0107f68:	6c                   	ins    BYTE PTR es:[edi],dx
c0107f69:	2e 70 72             	cs jo  c0107fde <__func__.1135+0x17e>
c0107f6c:	65 76 20             	gs jbe c0107f8f <__func__.1135+0x12f>
c0107f6f:	21 3d 20 26 72 65    	and    DWORD PTR ds:0x65722620,edi
c0107f75:	61                   	popa   
c0107f76:	64 79 5f             	fs jns c0107fd8 <__func__.1135+0x178>
c0107f79:	6c                   	ins    BYTE PTR es:[edi],dx
c0107f7a:	69 73 74 2e 68 65 61 	imul   esi,DWORD PTR [ebx+0x74],0x6165682e
c0107f81:	64 00 73 74          	add    BYTE PTR fs:[ebx+0x74],dh
c0107f85:	61                   	popa   
c0107f86:	74 75                	je     c0107ffd <__func__.1135+0x19d>
c0107f88:	73 20                	jae    c0107faa <__func__.1135+0x14a>
c0107f8a:	21 3d 20 54 41 53    	and    DWORD PTR ds:0x53415420,edi
c0107f90:	4b                   	dec    ebx
c0107f91:	5f                   	pop    edi
c0107f92:	52                   	push   edx
c0107f93:	55                   	push   ebp
c0107f94:	4e                   	dec    esi
c0107f95:	4e                   	dec    esi
c0107f96:	49                   	dec    ecx
c0107f97:	4e                   	dec    esi
c0107f98:	47                   	inc    edi
c0107f99:	20 26                	and    BYTE PTR [esi],ah
c0107f9b:	26 20 73 74          	and    BYTE PTR es:[ebx+0x74],dh
c0107f9f:	61                   	popa   
c0107fa0:	74 75                	je     c0108017 <__func__.1135+0x1b7>
c0107fa2:	73 20                	jae    c0107fc4 <__func__.1135+0x164>
c0107fa4:	21 3d 20 54 41 53    	and    DWORD PTR ds:0x53415420,edi
c0107faa:	4b                   	dec    ebx
c0107fab:	5f                   	pop    edi
c0107fac:	52                   	push   edx
c0107fad:	45                   	inc    ebp
c0107fae:	41                   	inc    ecx
c0107faf:	44                   	inc    esp
c0107fb0:	59                   	pop    ecx
c0107fb1:	00 21                	add    BYTE PTR [ecx],ah
c0107fb3:	6c                   	ins    BYTE PTR es:[edi],dx
c0107fb4:	69 73 74 5f 66 69 6e 	imul   esi,DWORD PTR [ebx+0x74],0x6e69665f
c0107fbb:	64 28 26             	sub    BYTE PTR fs:[esi],ah
c0107fbe:	72 65                	jb     c0108025 <__func__.1135+0x1c5>
c0107fc0:	61                   	popa   
c0107fc1:	64 79 5f             	fs jns c0108023 <__func__.1135+0x1c3>
c0107fc4:	6c                   	ins    BYTE PTR es:[edi],dx
c0107fc5:	69 73 74 2c 26 28 70 	imul   esi,DWORD PTR [ebx+0x74],0x7028262c
c0107fcc:	74 68                	je     c0108036 <__func__.1333+0x6>
c0107fce:	72 65                	jb     c0108035 <__func__.1333+0x5>
c0107fd0:	61                   	popa   
c0107fd1:	64 2d 3e 67 65 6e    	fs sub eax,0x6e65673e
c0107fd7:	65 72 61             	gs jb  c010803b <__func__.1333+0xb>
c0107fda:	6c                   	ins    BYTE PTR es:[edi],dx
c0107fdb:	5f                   	pop    edi
c0107fdc:	74 61                	je     c010803f <__func__.1333+0xf>
c0107fde:	67 29 29             	sub    DWORD PTR [bx+di],ebp
c0107fe1:	00 74 68 72          	add    BYTE PTR [eax+ebp*2+0x72],dh
c0107fe5:	65 61                	gs popa 
c0107fe7:	64 20 75 6e          	and    BYTE PTR fs:[ebp+0x6e],dh
c0107feb:	62 6c 6f 63          	bound  ebp,QWORD PTR [edi+ebp*2+0x63]
c0107fef:	6b 3a 20             	imul   edi,DWORD PTR [edx],0x20
c0107ff2:	62 6c 6f 63          	bound  ebp,QWORD PTR [edi+ebp*2+0x63]
c0107ff6:	6b 65 64 20          	imul   esp,DWORD PTR [ebp+0x64],0x20
c0107ffa:	74 68                	je     c0108064 <__func__.1352+0x8>
c0107ffc:	72 65                	jb     c0108063 <__func__.1352+0x7>
c0107ffe:	61                   	popa   
c0107fff:	64 20 69 6e          	and    BYTE PTR fs:[ecx+0x6e],ch
c0108003:	20 72 65             	and    BYTE PTR [edx+0x65],dh
c0108006:	61                   	popa   
c0108007:	64 79 20             	fs jns c010802a <__func__.1135+0x1ca>
c010800a:	6c                   	ins    BYTE PTR es:[edi],dx
c010800b:	69 73 74 00 00 50 65 	imul   esi,DWORD PTR [ebx+0x74],0x65500000
c0108012:	6e                   	outs   dx,BYTE PTR ds:[esi]
c0108013:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c0108016:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c010801b:	65 6c                	gs ins BYTE PTR es:[edi],dx
c010801d:	20 28                	and    BYTE PTR [eax],ch
c010801f:	50                   	push   eax
c0108020:	4b                   	dec    ebx
c0108021:	6e                   	outs   dx,BYTE PTR ds:[esi]
c0108022:	29 20                	sub    DWORD PTR [eax],esp
c0108024:	30 2e                	xor    BYTE PTR [esi],ch
c0108026:	30 2e                	xor    BYTE PTR [esi],ch
c0108028:	31 20                	xor    DWORD PTR [eax],esp
c010802a:	41                   	inc    ecx
c010802b:	75 67                	jne    c0108094 <__func__.1352+0x38>
c010802d:	2e 00 00             	add    BYTE PTR cs:[eax],al

c0108030 <__func__.1333>:
c0108030:	74 68                	je     c010809a <__func__.1352+0x3e>
c0108032:	72 65                	jb     c0108099 <__func__.1352+0x3d>
c0108034:	61                   	popa   
c0108035:	64 5f                	fs pop edi
c0108037:	73 74                	jae    c01080ad <__func__.1352+0x51>
c0108039:	61                   	popa   
c010803a:	72 74                	jb     c01080b0 <__func__.1352+0x54>
c010803c:	00 00                	add    BYTE PTR [eax],al
	...

c0108040 <__func__.1340>:
c0108040:	73 63                	jae    c01080a5 <__func__.1352+0x49>
c0108042:	68 65 64 75 6c       	push   0x6c756465
c0108047:	65 00 00             	add    BYTE PTR gs:[eax],al
	...

c010804c <__func__.1345>:
c010804c:	74 68                	je     c01080b6 <__func__.1352+0x5a>
c010804e:	72 65                	jb     c01080b5 <__func__.1352+0x59>
c0108050:	61                   	popa   
c0108051:	64 5f                	fs pop edi
c0108053:	62 6c 6f 63          	bound  ebp,QWORD PTR [edi+ebp*2+0x63]
c0108057:	6b 00 00             	imul   eax,DWORD PTR [eax],0x0
	...

c010805c <__func__.1352>:
c010805c:	74 68                	je     c01080c6 <__func__.1352+0x6a>
c010805e:	72 65                	jb     c01080c5 <__func__.1352+0x69>
c0108060:	61                   	popa   
c0108061:	64 5f                	fs pop edi
c0108063:	75 6e                	jne    c01080d3 <__func__.1352+0x77>
c0108065:	62 6c 6f 63          	bound  ebp,QWORD PTR [edi+ebp*2+0x63]
c0108069:	6b 00 00             	imul   eax,DWORD PTR [eax],0x0
c010806c:	50                   	push   eax
c010806d:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c010806f:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c0108072:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c0108077:	65 6c                	gs ins BYTE PTR es:[edi],dx
c0108079:	20 28                	and    BYTE PTR [eax],ch
c010807b:	50                   	push   eax
c010807c:	4b                   	dec    ebx
c010807d:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010807e:	29 20                	sub    DWORD PTR [eax],esp
c0108080:	30 2e                	xor    BYTE PTR [esi],ch
c0108082:	30 2e                	xor    BYTE PTR [esi],ch
c0108084:	31 20                	xor    DWORD PTR [eax],esp
c0108086:	41                   	inc    ecx
c0108087:	75 67                	jne    c01080f0 <__func__.1352+0x94>
c0108089:	2e 00 00             	add    BYTE PTR cs:[eax],al
c010808c:	70 61                	jo     c01080ef <__func__.1352+0x93>
c010808e:	67 65 5f             	addr16 gs pop edi
c0108091:	64 69 72 5f 74 61 62 	imul   esi,DWORD PTR fs:[edx+0x5f],0x6c626174
c0108098:	6c 
c0108099:	65 5f                	gs pop edi
c010809b:	70 6f                	jo     c010810c <__func__.1352+0xb0>
c010809d:	73 20                	jae    c01080bf <__func__.1352+0x63>
c010809f:	21 3d 20 4e 55 4c    	and    DWORD PTR ds:0x4c554e20,edi
c01080a5:	4c                   	dec    esp
c01080a6:	00 75 73             	add    BYTE PTR [ebp+0x73],dh
c01080a9:	65 72 70             	gs jb  c010811c <__func__.1352+0xc0>
c01080ac:	72 6f                	jb     c010811d <__func__.1352+0xc1>
c01080ae:	67 2f                	addr16 das 
c01080b0:	70 72                	jo     c0108124 <__func__.1352+0xc8>
c01080b2:	6f                   	outs   dx,DWORD PTR ds:[esi]
c01080b3:	63 65 73             	arpl   WORD PTR [ebp+0x73],sp
c01080b6:	73 2e                	jae    c01080e6 <__func__.1352+0x8a>
c01080b8:	63 00                	arpl   WORD PTR [eax],ax
c01080ba:	70 74                	jo     c0108130 <__func__.1352+0xd4>
c01080bc:	68 72 65 61 64       	push   0x64616572
c01080c1:	20 21                	and    BYTE PTR [ecx],ah
c01080c3:	3d 20 4e 55 4c       	cmp    eax,0x4c554e20
c01080c8:	4c                   	dec    esp
c01080c9:	00 63 72             	add    BYTE PTR [ebx+0x72],ah
c01080cc:	65 61                	gs popa 
c01080ce:	74 65                	je     c0108135 <__func__.1352+0xd9>
c01080d0:	5f                   	pop    edi
c01080d1:	70 61                	jo     c0108134 <__func__.1352+0xd8>
c01080d3:	67 65 5f             	addr16 gs pop edi
c01080d6:	64 69 72 3a 20 67 65 	imul   esi,DWORD PTR fs:[edx+0x3a],0x74656720
c01080dd:	74 
c01080de:	20 6b 65             	and    BYTE PTR [ebx+0x65],ch
c01080e1:	72 6e                	jb     c0108151 <__func__.1352+0xf5>
c01080e3:	65 6c                	gs ins BYTE PTR es:[edi],dx
c01080e5:	20 70 61             	and    BYTE PTR [eax+0x61],dh
c01080e8:	67 65 20 66 61       	and    BYTE PTR gs:[bp+0x61],ah
c01080ed:	69 6c 65 64 21 0a 00 	imul   ebp,DWORD PTR [ebp+eiz*2+0x64],0x21000a21
c01080f4:	21 
c01080f5:	28 6c 69 73          	sub    BYTE PTR [ecx+ebp*2+0x73],ch
c01080f9:	74 5f                	je     c010815a <__func__.1352+0xfe>
c01080fb:	66 69 6e 64 28 26    	imul   bp,WORD PTR [esi+0x64],0x2628
c0108101:	61                   	popa   
c0108102:	6c                   	ins    BYTE PTR es:[edi],dx
c0108103:	6c                   	ins    BYTE PTR es:[edi],dx
c0108104:	5f                   	pop    edi
c0108105:	6c                   	ins    BYTE PTR es:[edi],dx
c0108106:	69 73 74 2c 26 28 70 	imul   esi,DWORD PTR [ebx+0x74],0x7028262c
c010810d:	74 68                	je     c0108177 <__func__.1325+0x3>
c010810f:	72 65                	jb     c0108176 <__func__.1325+0x2>
c0108111:	61                   	popa   
c0108112:	64 2d 3e 61 6c 6c    	fs sub eax,0x6c6c613e
c0108118:	5f                   	pop    edi
c0108119:	74 61                	je     c010817c <__func__.1325+0x8>
c010811b:	67 29 29             	sub    DWORD PTR [bx+di],ebp
c010811e:	29 00                	sub    DWORD PTR [eax],eax
c0108120:	21 28                	and    DWORD PTR [eax],ebp
c0108122:	6c                   	ins    BYTE PTR es:[edi],dx
c0108123:	69 73 74 5f 66 69 6e 	imul   esi,DWORD PTR [ebx+0x74],0x6e69665f
c010812a:	64 28 26             	sub    BYTE PTR fs:[esi],ah
c010812d:	72 65                	jb     c0108194 <__func__.1329+0xc>
c010812f:	61                   	popa   
c0108130:	64 79 5f             	fs jns c0108192 <__func__.1329+0xa>
c0108133:	6c                   	ins    BYTE PTR es:[edi],dx
c0108134:	69 73 74 2c 26 28 70 	imul   esi,DWORD PTR [ebx+0x74],0x7028262c
c010813b:	74 68                	je     c01081a5 <__func__.1344+0x9>
c010813d:	72 65                	jb     c01081a4 <__func__.1344+0x8>
c010813f:	61                   	popa   
c0108140:	64 2d 3e 67 65 6e    	fs sub eax,0x6e65673e
c0108146:	65 72 61             	gs jb  c01081aa <__func__.1344+0xe>
c0108149:	6c                   	ins    BYTE PTR es:[edi],dx
c010814a:	5f                   	pop    edi
c010814b:	74 61                	je     c01081ae <__func__.1344+0x12>
c010814d:	67 29 29             	sub    DWORD PTR [bx+di],ebp
c0108150:	29 00                	sub    DWORD PTR [eax],eax
c0108152:	00 00                	add    BYTE PTR [eax],al
c0108154:	50                   	push   eax
c0108155:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c0108157:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c010815a:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c010815f:	65 6c                	gs ins BYTE PTR es:[edi],dx
c0108161:	20 28                	and    BYTE PTR [eax],ch
c0108163:	50                   	push   eax
c0108164:	4b                   	dec    ebx
c0108165:	6e                   	outs   dx,BYTE PTR ds:[esi]
c0108166:	29 20                	sub    DWORD PTR [eax],esp
c0108168:	30 2e                	xor    BYTE PTR [esi],ch
c010816a:	30 2e                	xor    BYTE PTR [esi],ch
c010816c:	31 20                	xor    DWORD PTR [eax],esp
c010816e:	41                   	inc    ecx
c010816f:	75 67                	jne    c01081d8 <__func__.1344+0x3c>
c0108171:	2e 00 00             	add    BYTE PTR cs:[eax],al

c0108174 <__func__.1325>:
c0108174:	70 61                	jo     c01081d7 <__func__.1344+0x3b>
c0108176:	67 65 5f             	addr16 gs pop edi
c0108179:	64 69 72 5f 61 63 74 	imul   esi,DWORD PTR fs:[edx+0x5f],0x69746361
c0108180:	69 
c0108181:	76 61                	jbe    c01081e4 <__func__.1344+0x48>
c0108183:	74 65                	je     c01081ea <__func__.1344+0x4e>
c0108185:	00 00                	add    BYTE PTR [eax],al
	...

c0108188 <__func__.1329>:
c0108188:	70 72                	jo     c01081fc <__func__.1344+0x60>
c010818a:	6f                   	outs   dx,DWORD PTR ds:[esi]
c010818b:	63 65 73             	arpl   WORD PTR [ebp+0x73],sp
c010818e:	73 5f                	jae    c01081ef <__func__.1344+0x53>
c0108190:	61                   	popa   
c0108191:	63 74 69 76          	arpl   WORD PTR [ecx+ebp*2+0x76],si
c0108195:	61                   	popa   
c0108196:	74 65                	je     c01081fd <__func__.1344+0x61>
c0108198:	00 00                	add    BYTE PTR [eax],al
	...

c010819c <__func__.1344>:
c010819c:	70 72                	jo     c0108210 <__func__.1344+0x74>
c010819e:	6f                   	outs   dx,DWORD PTR ds:[esi]
c010819f:	63 65 73             	arpl   WORD PTR [ebp+0x73],sp
c01081a2:	73 5f                	jae    c0108203 <__func__.1344+0x67>
c01081a4:	65 78 65             	gs js  c010820c <__func__.1344+0x70>
c01081a7:	63 75 74             	arpl   WORD PTR [ebp+0x74],si
c01081aa:	65 00 50 65          	add    BYTE PTR gs:[eax+0x65],dl
c01081ae:	6e                   	outs   dx,BYTE PTR ds:[esi]
c01081af:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c01081b2:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c01081b7:	65 6c                	gs ins BYTE PTR es:[edi],dx
c01081b9:	20 28                	and    BYTE PTR [eax],ch
c01081bb:	50                   	push   eax
c01081bc:	4b                   	dec    ebx
c01081bd:	6e                   	outs   dx,BYTE PTR ds:[esi]
c01081be:	29 20                	sub    DWORD PTR [eax],esp
c01081c0:	30 2e                	xor    BYTE PTR [esi],ch
c01081c2:	30 2e                	xor    BYTE PTR [esi],ch
c01081c4:	31 20                	xor    DWORD PTR [eax],esp
c01081c6:	41                   	inc    ecx
c01081c7:	75 67                	jne    c0108230 <keymap+0x18>
c01081c9:	2e 00 00             	add    BYTE PTR cs:[eax],al
c01081cc:	50                   	push   eax
c01081cd:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c01081cf:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c01081d2:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c01081d7:	65 6c                	gs ins BYTE PTR es:[edi],dx
c01081d9:	20 28                	and    BYTE PTR [eax],ch
c01081db:	50                   	push   eax
c01081dc:	4b                   	dec    ebx
c01081dd:	6e                   	outs   dx,BYTE PTR ds:[esi]
c01081de:	29 20                	sub    DWORD PTR [eax],esp
c01081e0:	30 2e                	xor    BYTE PTR [esi],ch
c01081e2:	30 2e                	xor    BYTE PTR [esi],ch
c01081e4:	31 20                	xor    DWORD PTR [eax],esp
c01081e6:	41                   	inc    ecx
c01081e7:	75 67                	jne    c0108250 <keymap+0x38>
c01081e9:	2e 00 00             	add    BYTE PTR cs:[eax],al
c01081ec:	75 6e                	jne    c010825c <keymap+0x44>
c01081ee:	6b 6e 6f 77          	imul   ebp,DWORD PTR [esi+0x6f],0x77
c01081f2:	20 6b 65             	and    BYTE PTR [ebx+0x65],ch
c01081f5:	79 00                	jns    c01081f7 <__func__.1344+0x5b>
c01081f7:	00 50 65             	add    BYTE PTR [eax+0x65],dl
c01081fa:	6e                   	outs   dx,BYTE PTR ds:[esi]
c01081fb:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c01081fe:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c0108203:	65 6c                	gs ins BYTE PTR es:[edi],dx
c0108205:	20 28                	and    BYTE PTR [eax],ch
c0108207:	50                   	push   eax
c0108208:	4b                   	dec    ebx
c0108209:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010820a:	29 20                	sub    DWORD PTR [eax],esp
c010820c:	30 2e                	xor    BYTE PTR [esi],ch
c010820e:	30 2e                	xor    BYTE PTR [esi],ch
c0108210:	31 20                	xor    DWORD PTR [eax],esp
c0108212:	41                   	inc    ecx
c0108213:	75 67                	jne    c010827c <keymap+0x64>
c0108215:	2e 00 00             	add    BYTE PTR cs:[eax],al

c0108218 <keymap>:
c0108218:	00 00                	add    BYTE PTR [eax],al
c010821a:	1b 1b                	sbb    ebx,DWORD PTR [ebx]
c010821c:	31 21                	xor    DWORD PTR [ecx],esp
c010821e:	32 40 33             	xor    al,BYTE PTR [eax+0x33]
c0108221:	23 34 24             	and    esi,DWORD PTR [esp]
c0108224:	35 25 36 5e 37       	xor    eax,0x375e3625
c0108229:	26 38 2a             	cmp    BYTE PTR es:[edx],ch
c010822c:	39 28                	cmp    DWORD PTR [eax],ebp
c010822e:	30 29                	xor    BYTE PTR [ecx],ch
c0108230:	2d 5f 3d 2b 08       	sub    eax,0x82b3d5f
c0108235:	08 09                	or     BYTE PTR [ecx],cl
c0108237:	09 71 51             	or     DWORD PTR [ecx+0x51],esi
c010823a:	77 57                	ja     c0108293 <keymap+0x7b>
c010823c:	65 45                	gs inc ebp
c010823e:	72 52                	jb     c0108292 <keymap+0x7a>
c0108240:	74 54                	je     c0108296 <keymap+0x7e>
c0108242:	79 59                	jns    c010829d <keymap+0x85>
c0108244:	75 55                	jne    c010829b <keymap+0x83>
c0108246:	69 49 6f 4f 70 50 5b 	imul   ecx,DWORD PTR [ecx+0x6f],0x5b50704f
c010824d:	7b 5d                	jnp    c01082ac <keymap+0x94>
c010824f:	7d 0d                	jge    c010825e <keymap+0x46>
c0108251:	0d 00 00 61 41       	or     eax,0x41610000
c0108256:	73 53                	jae    c01082ab <keymap+0x93>
c0108258:	64 44                	fs inc esp
c010825a:	66 46                	inc    si
c010825c:	67 47                	addr16 inc edi
c010825e:	68 48 6a 4a 6b       	push   0x6b4a6a48
c0108263:	4b                   	dec    ebx
c0108264:	6c                   	ins    BYTE PTR es:[edi],dx
c0108265:	4c                   	dec    esp
c0108266:	3b 3a                	cmp    edi,DWORD PTR [edx]
c0108268:	27                   	daa    
c0108269:	22 60 7e             	and    ah,BYTE PTR [eax+0x7e]
c010826c:	00 00                	add    BYTE PTR [eax],al
c010826e:	5c                   	pop    esp
c010826f:	7c 7a                	jl     c01082eb <keymap+0xd3>
c0108271:	5a                   	pop    edx
c0108272:	78 58                	js     c01082cc <keymap+0xb4>
c0108274:	63 43 76             	arpl   WORD PTR [ebx+0x76],ax
c0108277:	56                   	push   esi
c0108278:	62 42 6e             	bound  eax,QWORD PTR [edx+0x6e]
c010827b:	4e                   	dec    esi
c010827c:	6d                   	ins    DWORD PTR es:[edi],dx
c010827d:	4d                   	dec    ebp
c010827e:	2c 3c                	sub    al,0x3c
c0108280:	2e 3e 2f             	cs ds das 
c0108283:	3f                   	aas    
c0108284:	00 00                	add    BYTE PTR [eax],al
c0108286:	2a 2a                	sub    ch,BYTE PTR [edx]
c0108288:	00 00                	add    BYTE PTR [eax],al
c010828a:	20 20                	and    BYTE PTR [eax],ah
c010828c:	00 00                	add    BYTE PTR [eax],al
c010828e:	00 00                	add    BYTE PTR [eax],al
c0108290:	50                   	push   eax
c0108291:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c0108293:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c0108296:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c010829b:	65 6c                	gs ins BYTE PTR es:[edi],dx
c010829d:	20 28                	and    BYTE PTR [eax],ch
c010829f:	50                   	push   eax
c01082a0:	4b                   	dec    ebx
c01082a1:	6e                   	outs   dx,BYTE PTR ds:[esi]
c01082a2:	29 20                	sub    DWORD PTR [eax],esp
c01082a4:	30 2e                	xor    BYTE PTR [esi],ch
c01082a6:	30 2e                	xor    BYTE PTR [esi],ch
c01082a8:	31 20                	xor    DWORD PTR [eax],esp
c01082aa:	41                   	inc    ecx
c01082ab:	75 67                	jne    c0108314 <keymap+0xfc>
c01082ad:	2e 00 00             	add    BYTE PTR cs:[eax],al
c01082b0:	50                   	push   eax
c01082b1:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c01082b3:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c01082b6:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c01082bb:	65 6c                	gs ins BYTE PTR es:[edi],dx
c01082bd:	20 28                	and    BYTE PTR [eax],ch
c01082bf:	50                   	push   eax
c01082c0:	4b                   	dec    ebx
c01082c1:	6e                   	outs   dx,BYTE PTR ds:[esi]
c01082c2:	29 20                	sub    DWORD PTR [eax],esp
c01082c4:	30 2e                	xor    BYTE PTR [esi],ch
c01082c6:	30 2e                	xor    BYTE PTR [esi],ch
c01082c8:	31 20                	xor    DWORD PTR [eax],esp
c01082ca:	41                   	inc    ecx
c01082cb:	75 67                	jne    c0108334 <keymap+0x11c>
c01082cd:	2e 00 00             	add    BYTE PTR cs:[eax],al
c01082d0:	50                   	push   eax
c01082d1:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c01082d3:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c01082d6:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c01082db:	65 6c                	gs ins BYTE PTR es:[edi],dx
c01082dd:	20 28                	and    BYTE PTR [eax],ch
c01082df:	50                   	push   eax
c01082e0:	4b                   	dec    ebx
c01082e1:	6e                   	outs   dx,BYTE PTR ds:[esi]
c01082e2:	29 20                	sub    DWORD PTR [eax],esp
c01082e4:	30 2e                	xor    BYTE PTR [esi],ch
c01082e6:	30 2e                	xor    BYTE PTR [esi],ch
c01082e8:	31 20                	xor    DWORD PTR [eax],esp
c01082ea:	41                   	inc    ecx
c01082eb:	75 67                	jne    c0108354 <keymap+0x13c>
c01082ed:	2e 00 00             	add    BYTE PTR cs:[eax],al
c01082f0:	50                   	push   eax
c01082f1:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c01082f3:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c01082f6:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c01082fb:	65 6c                	gs ins BYTE PTR es:[edi],dx
c01082fd:	20 28                	and    BYTE PTR [eax],ch
c01082ff:	50                   	push   eax
c0108300:	4b                   	dec    ebx
c0108301:	6e                   	outs   dx,BYTE PTR ds:[esi]
c0108302:	29 20                	sub    DWORD PTR [eax],esp
c0108304:	30 2e                	xor    BYTE PTR [esi],ch
c0108306:	30 2e                	xor    BYTE PTR [esi],ch
c0108308:	31 20                	xor    DWORD PTR [eax],esp
c010830a:	41                   	inc    ecx
c010830b:	75 67                	jne    c0108374 <keymap+0x15c>
c010830d:	2e 00 00             	add    BYTE PTR cs:[eax],al
c0108310:	62 79 74             	bound  edi,QWORD PTR [ecx+0x74]
c0108313:	65 5f                	gs pop edi
c0108315:	69 6e 64 65 78 20 3c 	imul   ebp,DWORD PTR [esi+0x64],0x3c207865
c010831c:	20 28                	and    BYTE PTR [eax],ch
c010831e:	62 74 6d 70          	bound  esi,QWORD PTR [ebp+ebp*2+0x70]
c0108322:	2d 3e 62 74 6d       	sub    eax,0x6d74623e
c0108327:	70 5f                	jo     c0108388 <__func__.868+0xc>
c0108329:	62 79 74             	bound  edi,QWORD PTR [ecx+0x74]
c010832c:	65 73 5f             	gs jae c010838e <__func__.885+0x2>
c010832f:	6c                   	ins    BYTE PTR es:[edi],dx
c0108330:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c0108332:	29 00                	sub    DWORD PTR [eax],eax
c0108334:	6c                   	ins    BYTE PTR es:[edi],dx
c0108335:	69 62 2f 62 69 74 6d 	imul   esp,DWORD PTR [edx+0x2f],0x6d746962
c010833c:	61                   	popa   
c010833d:	70 2e                	jo     c010836d <keymap+0x155>
c010833f:	63 00                	arpl   WORD PTR [eax],ax
c0108341:	76 61                	jbe    c01083a4 <__func__.885+0x18>
c0108343:	6c                   	ins    BYTE PTR es:[edi],dx
c0108344:	75 65                	jne    c01083ab <__func__.885+0x1f>
c0108346:	20 3d 3d 20 30 20    	and    BYTE PTR ds:0x2030203d,bh
c010834c:	7c 7c                	jl     c01083ca <__func__.885+0x3e>
c010834e:	20 76 61             	and    BYTE PTR [esi+0x61],dh
c0108351:	6c                   	ins    BYTE PTR es:[edi],dx
c0108352:	75 65                	jne    c01083b9 <__func__.885+0x2d>
c0108354:	20 3d 3d 20 31 00    	and    BYTE PTR ds:0x31203d,bh
c010835a:	00 00                	add    BYTE PTR [eax],al
c010835c:	50                   	push   eax
c010835d:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c010835f:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c0108362:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c0108367:	65 6c                	gs ins BYTE PTR es:[edi],dx
c0108369:	20 28                	and    BYTE PTR [eax],ch
c010836b:	50                   	push   eax
c010836c:	4b                   	dec    ebx
c010836d:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010836e:	29 20                	sub    DWORD PTR [eax],esp
c0108370:	30 2e                	xor    BYTE PTR [esi],ch
c0108372:	30 2e                	xor    BYTE PTR [esi],ch
c0108374:	31 20                	xor    DWORD PTR [eax],esp
c0108376:	41                   	inc    ecx
c0108377:	75 67                	jne    c01083e0 <__func__.885+0x54>
c0108379:	2e 00 00             	add    BYTE PTR cs:[eax],al

c010837c <__func__.868>:
c010837c:	62 69 74             	bound  ebp,QWORD PTR [ecx+0x74]
c010837f:	6d                   	ins    DWORD PTR es:[edi],dx
c0108380:	61                   	popa   
c0108381:	70 5f                	jo     c01083e2 <__func__.885+0x56>
c0108383:	61                   	popa   
c0108384:	6c                   	ins    BYTE PTR es:[edi],dx
c0108385:	6c                   	ins    BYTE PTR es:[edi],dx
c0108386:	6f                   	outs   dx,DWORD PTR ds:[esi]
c0108387:	63 00                	arpl   WORD PTR [eax],ax
c0108389:	00 00                	add    BYTE PTR [eax],al
	...

c010838c <__func__.885>:
c010838c:	62 69 74             	bound  ebp,QWORD PTR [ecx+0x74]
c010838f:	6d                   	ins    DWORD PTR es:[edi],dx
c0108390:	61                   	popa   
c0108391:	70 5f                	jo     c01083f2 <__func__.885+0x66>
c0108393:	73 65                	jae    c01083fa <__func__.885+0x6e>
c0108395:	74 00                	je     c0108397 <__func__.885+0xb>
c0108397:	00 66 69             	add    BYTE PTR [esi+0x69],ah
c010839a:	66 6f                	outs   dx,WORD PTR ds:[esi]
c010839c:	2d 3e 74 79 70       	sub    eax,0x7079743e
c01083a1:	65 20 3d 3d 20 38 20 	and    BYTE PTR gs:0x2038203d,bh
c01083a8:	7c 7c                	jl     c0108426 <__func__.1166+0x6>
c01083aa:	20 66 69             	and    BYTE PTR [esi+0x69],ah
c01083ad:	66 6f                	outs   dx,WORD PTR ds:[esi]
c01083af:	2d 3e 74 79 70       	sub    eax,0x7079743e
c01083b4:	65 20 3d 3d 20 31 36 	and    BYTE PTR gs:0x3631203d,bh
c01083bb:	20 7c 7c 20          	and    BYTE PTR [esp+edi*2+0x20],bh
c01083bf:	66 69 66 6f 2d 3e    	imul   sp,WORD PTR [esi+0x6f],0x3e2d
c01083c5:	74 79                	je     c0108440 <__func__.1166+0x20>
c01083c7:	70 65                	jo     c010842e <__func__.1166+0xe>
c01083c9:	20 3d 3d 20 33 32    	and    BYTE PTR ds:0x3233203d,bh
c01083cf:	20 7c 7c 20          	and    BYTE PTR [esp+edi*2+0x20],bh
c01083d3:	66 69 66 6f 2d 3e    	imul   sp,WORD PTR [esi+0x6f],0x3e2d
c01083d9:	74 79                	je     c0108454 <__func__.1166+0x34>
c01083db:	70 65                	jo     c0108442 <__func__.1166+0x22>
c01083dd:	20 3d 3d 20 36 34    	and    BYTE PTR ds:0x3436203d,bh
c01083e3:	00 64 65 76          	add    BYTE PTR [ebp+eiz*2+0x76],ah
c01083e7:	69 63 65 2f 66 69 66 	imul   esp,DWORD PTR [ebx+0x65],0x6669662f
c01083ee:	6f                   	outs   dx,DWORD PTR ds:[esi]
c01083ef:	2e 63 00             	arpl   WORD PTR cs:[eax],ax
c01083f2:	00 00                	add    BYTE PTR [eax],al
c01083f4:	50                   	push   eax
c01083f5:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c01083f7:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c01083fa:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c01083ff:	65 6c                	gs ins BYTE PTR es:[edi],dx
c0108401:	20 28                	and    BYTE PTR [eax],ch
c0108403:	50                   	push   eax
c0108404:	4b                   	dec    ebx
c0108405:	6e                   	outs   dx,BYTE PTR ds:[esi]
c0108406:	29 20                	sub    DWORD PTR [eax],esp
c0108408:	30 2e                	xor    BYTE PTR [esi],ch
c010840a:	30 2e                	xor    BYTE PTR [esi],ch
c010840c:	31 20                	xor    DWORD PTR [eax],esp
c010840e:	41                   	inc    ecx
c010840f:	75 67                	jne    c0108478 <__func__.1166+0x58>
c0108411:	2e 00 00             	add    BYTE PTR cs:[eax],al

c0108414 <__func__.1155>:
c0108414:	66 69 66 6f 5f 70    	imul   sp,WORD PTR [esi+0x6f],0x705f
c010841a:	75 74                	jne    c0108490 <__func__.1166+0x70>
c010841c:	00 00                	add    BYTE PTR [eax],al
	...

c0108420 <__func__.1166>:
c0108420:	66 69 66 6f 5f 67    	imul   sp,WORD PTR [esi+0x6f],0x675f
c0108426:	65 74 00             	gs je  c0108429 <__func__.1166+0x9>
c0108429:	00 00                	add    BYTE PTR [eax],al
c010842b:	00 50 65             	add    BYTE PTR [eax+0x65],dl
c010842e:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010842f:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c0108432:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c0108437:	65 6c                	gs ins BYTE PTR es:[edi],dx
c0108439:	20 28                	and    BYTE PTR [eax],ch
c010843b:	50                   	push   eax
c010843c:	4b                   	dec    ebx
c010843d:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010843e:	29 20                	sub    DWORD PTR [eax],esp
c0108440:	30 2e                	xor    BYTE PTR [esi],ch
c0108442:	30 2e                	xor    BYTE PTR [esi],ch
c0108444:	31 20                	xor    DWORD PTR [eax],esp
c0108446:	41                   	inc    ecx
c0108447:	75 67                	jne    c01084b0 <digits.1045+0xc>
c0108449:	2e 00 00             	add    BYTE PTR cs:[eax],al
c010844c:	01 34 10             	add    DWORD PTR [eax+edx*1],esi
c010844f:	c0 bd 33 10 c0 bd 33 	sar    BYTE PTR [ebp-0x423fefcd],0x33
c0108456:	10 c0                	adc    al,al
c0108458:	bd 33 10 c0 bd       	mov    ebp,0xbdc01033
c010845d:	33 10                	xor    edx,DWORD PTR [eax]
c010845f:	c0 bd 33 10 c0 bd 33 	sar    BYTE PTR [ebp-0x423fefcd],0x33
c0108466:	10 c0                	adc    al,al
c0108468:	bd 33 10 c0 96       	mov    ebp,0x96c01033
c010846d:	33 10                	xor    edx,DWORD PTR [eax]
c010846f:	c0                   	(bad)  
c0108470:	b5 33                	mov    ch,0x33
c0108472:	10 c0                	adc    al,al
c0108474:	a4                   	movs   BYTE PTR es:[edi],BYTE PTR ds:[esi]
c0108475:	33 10                	xor    edx,DWORD PTR [eax]
c0108477:	c0 bd 33 10 c0 bd 33 	sar    BYTE PTR [ebp-0x423fefcd],0x33
c010847e:	10 c0                	adc    al,al
c0108480:	a4                   	movs   BYTE PTR es:[edi],BYTE PTR ds:[esi]
c0108481:	33 10                	xor    edx,DWORD PTR [eax]
c0108483:	c0 50 65 6e          	rcl    BYTE PTR [eax+0x65],0x6e
c0108487:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c010848a:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c010848f:	65 6c                	gs ins BYTE PTR es:[edi],dx
c0108491:	20 28                	and    BYTE PTR [eax],ch
c0108493:	50                   	push   eax
c0108494:	4b                   	dec    ebx
c0108495:	6e                   	outs   dx,BYTE PTR ds:[esi]
c0108496:	29 20                	sub    DWORD PTR [eax],esp
c0108498:	30 2e                	xor    BYTE PTR [esi],ch
c010849a:	30 2e                	xor    BYTE PTR [esi],ch
c010849c:	31 20                	xor    DWORD PTR [eax],esp
c010849e:	41                   	inc    ecx
c010849f:	75 67                	jne    c0108508 <digits.1064+0x3c>
c01084a1:	2e 00 00             	add    BYTE PTR cs:[eax],al

c01084a4 <digits.1045>:
c01084a4:	30 31                	xor    BYTE PTR [ecx],dh
c01084a6:	32 33                	xor    dh,BYTE PTR [ebx]
c01084a8:	34 35                	xor    al,0x35
c01084aa:	36 37                	ss aaa 
c01084ac:	38 39                	cmp    BYTE PTR [ecx],bh
c01084ae:	41                   	inc    ecx
c01084af:	42                   	inc    edx
c01084b0:	43                   	inc    ebx
c01084b1:	44                   	inc    esp
c01084b2:	45                   	inc    ebp
c01084b3:	46                   	inc    esi
c01084b4:	47                   	inc    edi
c01084b5:	48                   	dec    eax
c01084b6:	49                   	dec    ecx
c01084b7:	4a                   	dec    edx
c01084b8:	4b                   	dec    ebx
c01084b9:	4c                   	dec    esp
c01084ba:	4d                   	dec    ebp
c01084bb:	4e                   	dec    esi
c01084bc:	4f                   	dec    edi
c01084bd:	50                   	push   eax
c01084be:	51                   	push   ecx
c01084bf:	52                   	push   edx
c01084c0:	53                   	push   ebx
c01084c1:	54                   	push   esp
c01084c2:	55                   	push   ebp
c01084c3:	56                   	push   esi
c01084c4:	57                   	push   edi
c01084c5:	58                   	pop    eax
c01084c6:	59                   	pop    ecx
c01084c7:	5a                   	pop    edx
c01084c8:	00 00                	add    BYTE PTR [eax],al
	...

c01084cc <digits.1064>:
c01084cc:	30 31                	xor    BYTE PTR [ecx],dh
c01084ce:	32 33                	xor    dh,BYTE PTR [ebx]
c01084d0:	34 35                	xor    al,0x35
c01084d2:	36 37                	ss aaa 
c01084d4:	38 39                	cmp    BYTE PTR [ecx],bh
c01084d6:	41                   	inc    ecx
c01084d7:	42                   	inc    edx
c01084d8:	43                   	inc    ebx
c01084d9:	44                   	inc    esp
c01084da:	45                   	inc    ebp
c01084db:	46                   	inc    esi
c01084dc:	47                   	inc    edi
c01084dd:	48                   	dec    eax
c01084de:	49                   	dec    ecx
c01084df:	4a                   	dec    edx
c01084e0:	4b                   	dec    ebx
c01084e1:	4c                   	dec    esp
c01084e2:	4d                   	dec    ebp
c01084e3:	4e                   	dec    esi
c01084e4:	4f                   	dec    edi
c01084e5:	50                   	push   eax
c01084e6:	51                   	push   ecx
c01084e7:	52                   	push   edx
c01084e8:	53                   	push   ebx
c01084e9:	54                   	push   esp
c01084ea:	55                   	push   ebp
c01084eb:	56                   	push   esi
c01084ec:	57                   	push   edi
c01084ed:	58                   	pop    eax
c01084ee:	59                   	pop    ecx
c01084ef:	5a                   	pop    edx
c01084f0:	00 00                	add    BYTE PTR [eax],al
c01084f2:	00 00                	add    BYTE PTR [eax],al
c01084f4:	64 73 74             	fs jae c010856b <digits.1064+0x9f>
c01084f7:	5f                   	pop    edi
c01084f8:	5f                   	pop    edi
c01084f9:	20 21                	and    BYTE PTR [ecx],ah
c01084fb:	3d 20 4e 55 4c       	cmp    eax,0x4c554e20
c0108500:	4c                   	dec    esp
c0108501:	00 6c 69 62          	add    BYTE PTR [ecx+ebp*2+0x62],ch
c0108505:	63 2f                	arpl   WORD PTR [edi],bp
c0108507:	73 74                	jae    c010857d <__func__.864+0x1>
c0108509:	72 69                	jb     c0108574 <__func__.852>
c010850b:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010850c:	67 2e 63 00          	arpl   WORD PTR cs:[bx+si],ax
c0108510:	64 73 74             	fs jae c0108587 <__func__.864+0xb>
c0108513:	5f                   	pop    edi
c0108514:	5f                   	pop    edi
c0108515:	20 21                	and    BYTE PTR [ecx],ah
c0108517:	3d 20 4e 55 4c       	cmp    eax,0x4c554e20
c010851c:	4c                   	dec    esp
c010851d:	20 26                	and    BYTE PTR [esi],ah
c010851f:	26 20 73 72          	and    BYTE PTR es:[ebx+0x72],dh
c0108523:	63 5f 5f             	arpl   WORD PTR [edi+0x5f],bx
c0108526:	20 21                	and    BYTE PTR [ecx],ah
c0108528:	3d 20 4e 55 4c       	cmp    eax,0x4c554e20
c010852d:	4c                   	dec    esp
c010852e:	00 70 31             	add    BYTE PTR [eax+0x31],dh
c0108531:	5f                   	pop    edi
c0108532:	5f                   	pop    edi
c0108533:	20 21                	and    BYTE PTR [ecx],ah
c0108535:	3d 20 4e 55 4c       	cmp    eax,0x4c554e20
c010853a:	4c                   	dec    esp
c010853b:	20 26                	and    BYTE PTR [esi],ah
c010853d:	26 20 70 32          	and    BYTE PTR es:[eax+0x32],dh
c0108541:	5f                   	pop    edi
c0108542:	5f                   	pop    edi
c0108543:	20 21                	and    BYTE PTR [ecx],ah
c0108545:	3d 20 4e 55 4c       	cmp    eax,0x4c554e20
c010854a:	4c                   	dec    esp
c010854b:	00 50 65             	add    BYTE PTR [eax+0x65],dl
c010854e:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010854f:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c0108552:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c0108557:	65 6c                	gs ins BYTE PTR es:[edi],dx
c0108559:	20 28                	and    BYTE PTR [eax],ch
c010855b:	50                   	push   eax
c010855c:	4b                   	dec    ebx
c010855d:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010855e:	29 20                	sub    DWORD PTR [eax],esp
c0108560:	30 2e                	xor    BYTE PTR [esi],ch
c0108562:	30 2e                	xor    BYTE PTR [esi],ch
c0108564:	31 20                	xor    DWORD PTR [eax],esp
c0108566:	41                   	inc    ecx
c0108567:	75 67                	jne    c01085d0 <pid_lock>
c0108569:	2e 00 00             	add    BYTE PTR cs:[eax],al

c010856c <__func__.841>:
c010856c:	6d                   	ins    DWORD PTR es:[edi],dx
c010856d:	65 6d                	gs ins DWORD PTR es:[edi],dx
c010856f:	73 65                	jae    c01085d6 <pid_lock+0x6>
c0108571:	74 00                	je     c0108573 <__func__.841+0x7>
	...

c0108574 <__func__.852>:
c0108574:	6d                   	ins    DWORD PTR es:[edi],dx
c0108575:	65 6d                	gs ins DWORD PTR es:[edi],dx
c0108577:	63 70 79             	arpl   WORD PTR [eax+0x79],si
	...

c010857c <__func__.864>:
c010857c:	6d                   	ins    DWORD PTR es:[edi],dx
c010857d:	65 6d                	gs ins DWORD PTR es:[edi],dx
c010857f:	63 6d 70             	arpl   WORD PTR [ebp+0x70],bp
c0108582:	00 00                	add    BYTE PTR [eax],al
c0108584:	50                   	push   eax
c0108585:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c0108587:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c010858a:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c010858f:	65 6c                	gs ins BYTE PTR es:[edi],dx
c0108591:	20 28                	and    BYTE PTR [eax],ch
c0108593:	50                   	push   eax
c0108594:	4b                   	dec    ebx
c0108595:	6e                   	outs   dx,BYTE PTR ds:[esi]
c0108596:	29 20                	sub    DWORD PTR [eax],esp
c0108598:	30 2e                	xor    BYTE PTR [esi],ch
c010859a:	30 2e                	xor    BYTE PTR [esi],ch
c010859c:	31 20                	xor    DWORD PTR [eax],esp
c010859e:	41                   	inc    ecx
c010859f:	75 67                	jne    c0108608 <tss+0x10>
c01085a1:	2e 00 00             	add    BYTE PTR cs:[eax],al
c01085a4:	50                   	push   eax
c01085a5:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c01085a7:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c01085aa:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c01085af:	65 6c                	gs ins BYTE PTR es:[edi],dx
c01085b1:	20 28                	and    BYTE PTR [eax],ch
c01085b3:	50                   	push   eax
c01085b4:	4b                   	dec    ebx
c01085b5:	6e                   	outs   dx,BYTE PTR ds:[esi]
c01085b6:	29 20                	sub    DWORD PTR [eax],esp
c01085b8:	30 2e                	xor    BYTE PTR [esi],ch
c01085ba:	30 2e                	xor    BYTE PTR [esi],ch
c01085bc:	31 20                	xor    DWORD PTR [eax],esp
c01085be:	41                   	inc    ecx
c01085bf:	75 67                	jne    c0108628 <tss+0x30>
c01085c1:	2e                   	cs
	...

Disassembly of section .bss:

c01085c4 <_bss>:
c01085c4:	00 00                	add    BYTE PTR [eax],al
	...

c01085c8 <ta>:
c01085c8:	00 00                	add    BYTE PTR [eax],al
	...

c01085cc <user_pool_start>:
c01085cc:	00 00                	add    BYTE PTR [eax],al
	...

c01085d0 <pid_lock>:
	...

c01085f4 <this_thread_tag>:
c01085f4:	00 00                	add    BYTE PTR [eax],al
	...

c01085f8 <tss>:
	...

c0108664 <console_lock>:
	...

c0108688 <buf>:
	...

c01086c8 <shift_status>:
c01086c8:	00 00                	add    BYTE PTR [eax],al
	...

c01086cc <casplock_status>:
c01086cc:	00 00                	add    BYTE PTR [eax],al
	...

c01086d0 <ext_scandcode>:
c01086d0:	00 00                	add    BYTE PTR [eax],al
	...

c01086d4 <ctrl_status>:
c01086d4:	00 00                	add    BYTE PTR [eax],al
	...

c01086d8 <alt_status>:
c01086d8:	00 00                	add    BYTE PTR [eax],al
	...

c01086dc <i>:
c01086dc:	00 00                	add    BYTE PTR [eax],al
	...

c01086e0 <MouseData>:
	...

c01086f8 <ticks>:
c01086f8:	00 00                	add    BYTE PTR [eax],al
	...

c01086fc <_ebss>:
	...

c0108834 <idt>:
	...

c0108aa4 <idt_table>:
	...

c0108bdc <kvinfo>:
	...

c01108dc <k_desc>:
	...

c011099c <user_pool>:
	...

c01109d8 <kernel_vaddr>:
	...

c0110a14 <upinfo>:
	...

c0118714 <kpinfo>:
	...

c0120414 <kernel_pool>:
	...

c0120450 <ready_list>:
	...

c0120468 <all_list>:
	...

c0120480 <main_thread>:
c0120480:	00 00                	add    BYTE PTR [eax],al
	...

c0120484 <keybuf>:
	...

c01204c8 <syscall_table>:
	...

c01204f0 <background>:
c01204f0:	00 00                	add    BYTE PTR [eax],al
	...

c01204f4 <Screen_Ctl>:
c01204f4:	00 00                	add    BYTE PTR [eax],al
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
