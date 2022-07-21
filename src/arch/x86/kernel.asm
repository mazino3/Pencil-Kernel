
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
c0100013:	e9 08 00 00 00       	jmp    c0100020 <kernel_main>
c0100018:	e9 fb ff ff ff       	jmp    c0100018 <_start+0x18>
c010001d:	00 00                	add    BYTE PTR [eax],al
	...

c0100020 <kernel_main>:
c0100020:	55                   	push   ebp
c0100021:	89 e5                	mov    ebp,esp
c0100023:	53                   	push   ebx
c0100024:	83 ec 74             	sub    esp,0x74
c0100027:	c7 04 24 00 00 00 00 	mov    DWORD PTR [esp],0x0
c010002e:	e8 aa 61 00 00       	call   c01061dd <set_cursor>
c0100033:	c7 45 f4 00 00 00 00 	mov    DWORD PTR [ebp-0xc],0x0
c010003a:	eb 18                	jmp    c0100054 <kernel_main+0x34>
c010003c:	c7 44 24 04 0a 00 00 	mov    DWORD PTR [esp+0x4],0xa
c0100043:	00 
c0100044:	c7 04 24 07 00 00 00 	mov    DWORD PTR [esp],0x7
c010004b:	e8 e3 5c 00 00       	call   c0105d33 <put_char>
c0100050:	83 45 f4 01          	add    DWORD PTR [ebp-0xc],0x1
c0100054:	83 7d f4 22          	cmp    DWORD PTR [ebp-0xc],0x22
c0100058:	7e e2                	jle    c010003c <kernel_main+0x1c>
c010005a:	c7 04 24 00 00 00 00 	mov    DWORD PTR [esp],0x0
c0100061:	e8 77 61 00 00       	call   c01061dd <set_cursor>
c0100066:	e8 61 0c 00 00       	call   c0100ccc <init_all>
c010006b:	e8 c4 18 00 00       	call   c0101934 <intr_enable>
c0100070:	b8 24 7c 00 c0       	mov    eax,0xc0007c24
c0100075:	8b 00                	mov    eax,DWORD PTR [eax]
c0100077:	89 c2                	mov    edx,eax
c0100079:	a1 00 19 11 c0       	mov    eax,ds:0xc0111900
c010007e:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
c0100081:	c7 44 24 14 d4 9f 10 	mov    DWORD PTR [esp+0x14],0xc0109fd4
c0100088:	c0 
c0100089:	c7 44 24 10 ff ff ff 	mov    DWORD PTR [esp+0x10],0xffffff
c0100090:	00 
c0100091:	c7 44 24 0c 14 00 00 	mov    DWORD PTR [esp+0xc],0x14
c0100098:	00 
c0100099:	c7 44 24 08 14 00 00 	mov    DWORD PTR [esp+0x8],0x14
c01000a0:	00 
c01000a1:	89 54 24 04          	mov    DWORD PTR [esp+0x4],edx
c01000a5:	89 04 24             	mov    DWORD PTR [esp],eax
c01000a8:	e8 1b 73 00 00       	call   c01073c8 <vput_str>
c01000ad:	b8 08 7c 00 c0       	mov    eax,0xc0007c08
c01000b2:	8b 00                	mov    eax,DWORD PTR [eax]
c01000b4:	89 c3                	mov    ebx,eax
c01000b6:	c1 eb 14             	shr    ebx,0x14
c01000b9:	b8 28 7c 00 c0       	mov    eax,0xc0007c28
c01000be:	8b 08                	mov    ecx,DWORD PTR [eax]
c01000c0:	b8 24 7c 00 c0       	mov    eax,0xc0007c24
c01000c5:	8b 10                	mov    edx,DWORD PTR [eax]
c01000c7:	b8 18 7c 00 c0       	mov    eax,0xc0007c18
c01000cc:	8b 00                	mov    eax,DWORD PTR [eax]
c01000ce:	89 5c 24 14          	mov    DWORD PTR [esp+0x14],ebx
c01000d2:	89 4c 24 10          	mov    DWORD PTR [esp+0x10],ecx
c01000d6:	89 54 24 0c          	mov    DWORD PTR [esp+0xc],edx
c01000da:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
c01000de:	c7 44 24 04 f4 9f 10 	mov    DWORD PTR [esp+0x4],0xc0109ff4
c01000e5:	c0 
c01000e6:	8d 45 b4             	lea    eax,[ebp-0x4c]
c01000e9:	89 04 24             	mov    DWORD PTR [esp],eax
c01000ec:	e8 2b 63 00 00       	call   c010641c <sprintf>
c01000f1:	b8 24 7c 00 c0       	mov    eax,0xc0007c24
c01000f6:	8b 00                	mov    eax,DWORD PTR [eax]
c01000f8:	89 c2                	mov    edx,eax
c01000fa:	a1 00 19 11 c0       	mov    eax,ds:0xc0111900
c01000ff:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
c0100102:	c7 44 24 14 28 a0 10 	mov    DWORD PTR [esp+0x14],0xc010a028
c0100109:	c0 
c010010a:	c7 44 24 10 ff ff ff 	mov    DWORD PTR [esp+0x10],0xffffff
c0100111:	00 
c0100112:	c7 44 24 0c 24 00 00 	mov    DWORD PTR [esp+0xc],0x24
c0100119:	00 
c010011a:	c7 44 24 08 14 00 00 	mov    DWORD PTR [esp+0x8],0x14
c0100121:	00 
c0100122:	89 54 24 04          	mov    DWORD PTR [esp+0x4],edx
c0100126:	89 04 24             	mov    DWORD PTR [esp],eax
c0100129:	e8 9a 72 00 00       	call   c01073c8 <vput_str>
c010012e:	b8 24 7c 00 c0       	mov    eax,0xc0007c24
c0100133:	8b 00                	mov    eax,DWORD PTR [eax]
c0100135:	89 c2                	mov    edx,eax
c0100137:	a1 00 19 11 c0       	mov    eax,ds:0xc0111900
c010013c:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
c010013f:	8d 4d b4             	lea    ecx,[ebp-0x4c]
c0100142:	89 4c 24 14          	mov    DWORD PTR [esp+0x14],ecx
c0100146:	c7 44 24 10 ff ff ff 	mov    DWORD PTR [esp+0x10],0xffffff
c010014d:	00 
c010014e:	c7 44 24 0c 34 00 00 	mov    DWORD PTR [esp+0xc],0x34
c0100155:	00 
c0100156:	c7 44 24 08 14 00 00 	mov    DWORD PTR [esp+0x8],0x14
c010015d:	00 
c010015e:	89 54 24 04          	mov    DWORD PTR [esp+0x4],edx
c0100162:	89 04 24             	mov    DWORD PTR [esp],eax
c0100165:	e8 5e 72 00 00       	call   c01073c8 <vput_str>
c010016a:	a1 00 19 11 c0       	mov    eax,ds:0xc0111900
c010016f:	8b 40 14             	mov    eax,DWORD PTR [eax+0x14]
c0100172:	89 c2                	mov    edx,eax
c0100174:	a1 00 19 11 c0       	mov    eax,ds:0xc0111900
c0100179:	c7 44 24 10 44 00 00 	mov    DWORD PTR [esp+0x10],0x44
c0100180:	00 
c0100181:	89 54 24 0c          	mov    DWORD PTR [esp+0xc],edx
c0100185:	c7 44 24 08 14 00 00 	mov    DWORD PTR [esp+0x8],0x14
c010018c:	00 
c010018d:	c7 44 24 04 14 00 00 	mov    DWORD PTR [esp+0x4],0x14
c0100194:	00 
c0100195:	89 04 24             	mov    DWORD PTR [esp],eax
c0100198:	e8 c5 6c 00 00       	call   c0106e62 <view_reflush>
c010019d:	b8 4c 54 10 c0       	mov    eax,0xc010544c
c01001a2:	c7 44 24 0c 00 00 00 	mov    DWORD PTR [esp+0xc],0x0
c01001a9:	00 
c01001aa:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
c01001ae:	c7 44 24 04 1f 00 00 	mov    DWORD PTR [esp+0x4],0x1f
c01001b5:	00 
c01001b6:	c7 04 24 6f a0 10 c0 	mov    DWORD PTR [esp],0xc010a06f
c01001bd:	e8 53 35 00 00       	call   c0103715 <thread_start>
c01001c2:	c7 44 24 0c 72 a0 10 	mov    DWORD PTR [esp+0xc],0xc010a072
c01001c9:	c0 
c01001ca:	c7 44 24 08 58 02 10 	mov    DWORD PTR [esp+0x8],0xc0100258
c01001d1:	c0 
c01001d2:	c7 44 24 04 1f 00 00 	mov    DWORD PTR [esp+0x4],0x1f
c01001d9:	00 
c01001da:	c7 04 24 79 a0 10 c0 	mov    DWORD PTR [esp],0xc010a079
c01001e1:	e8 2f 35 00 00       	call   c0103715 <thread_start>
c01001e6:	c7 44 24 0c 00 00 00 	mov    DWORD PTR [esp+0xc],0x0
c01001ed:	00 
c01001ee:	c7 44 24 08 10 07 10 	mov    DWORD PTR [esp+0x8],0xc0100710
c01001f5:	c0 
c01001f6:	c7 44 24 04 1f 00 00 	mov    DWORD PTR [esp+0x4],0x1f
c01001fd:	00 
c01001fe:	c7 04 24 7d a0 10 c0 	mov    DWORD PTR [esp],0xc010a07d
c0100205:	e8 0b 35 00 00       	call   c0103715 <thread_start>
c010020a:	c7 44 24 0c 00 00 00 	mov    DWORD PTR [esp+0xc],0x0
c0100211:	00 
c0100212:	c7 44 24 08 dd 07 10 	mov    DWORD PTR [esp+0x8],0xc01007dd
c0100219:	c0 
c010021a:	c7 44 24 04 1f 00 00 	mov    DWORD PTR [esp+0x4],0x1f
c0100221:	00 
c0100222:	c7 04 24 83 a0 10 c0 	mov    DWORD PTR [esp],0xc010a083
c0100229:	e8 e7 34 00 00       	call   c0103715 <thread_start>
c010022e:	c7 44 24 04 88 a0 10 	mov    DWORD PTR [esp+0x4],0xc010a088
c0100235:	c0 
c0100236:	c7 04 24 81 0b 10 c0 	mov    DWORD PTR [esp],0xc0100b81
c010023d:	e8 07 3f 00 00       	call   c0104149 <process_execute>
c0100242:	c7 44 24 04 93 a0 10 	mov    DWORD PTR [esp+0x4],0xc010a093
c0100249:	c0 
c010024a:	c7 04 24 da 0b 10 c0 	mov    DWORD PTR [esp],0xc0100bda
c0100251:	e8 3f 40 00 00       	call   c0104295 <task_execute>
c0100256:	eb fe                	jmp    c0100256 <kernel_main+0x236>

c0100258 <k_thread_a>:
c0100258:	55                   	push   ebp
c0100259:	89 e5                	mov    ebp,esp
c010025b:	57                   	push   edi
c010025c:	56                   	push   esi
c010025d:	53                   	push   ebx
c010025e:	81 ec 8c 00 00 00    	sub    esp,0x8c
c0100264:	a1 00 19 11 c0       	mov    eax,ds:0xc0111900
c0100269:	8b 40 14             	mov    eax,DWORD PTR [eax+0x14]
c010026c:	c7 44 24 04 32 00 00 	mov    DWORD PTR [esp+0x4],0x32
c0100273:	00 
c0100274:	89 04 24             	mov    DWORD PTR [esp],eax
c0100277:	e8 13 65 00 00       	call   c010678f <viewblock_init>
c010027c:	89 45 d8             	mov    DWORD PTR [ebp-0x28],eax
c010027f:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
c0100282:	8b 40 18             	mov    eax,DWORD PTR [eax+0x18]
c0100285:	83 e8 01             	sub    eax,0x1
c0100288:	89 c3                	mov    ebx,eax
c010028a:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
c010028d:	8b 40 14             	mov    eax,DWORD PTR [eax+0x14]
c0100290:	83 e8 01             	sub    eax,0x1
c0100293:	89 c1                	mov    ecx,eax
c0100295:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
c0100298:	8b 40 14             	mov    eax,DWORD PTR [eax+0x14]
c010029b:	89 c2                	mov    edx,eax
c010029d:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
c01002a0:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
c01002a3:	89 5c 24 18          	mov    DWORD PTR [esp+0x18],ebx
c01002a7:	89 4c 24 14          	mov    DWORD PTR [esp+0x14],ecx
c01002ab:	c7 44 24 10 00 00 00 	mov    DWORD PTR [esp+0x10],0x0
c01002b2:	00 
c01002b3:	c7 44 24 0c 00 00 00 	mov    DWORD PTR [esp+0xc],0x0
c01002ba:	00 
c01002bb:	c7 44 24 08 c6 c6 c6 	mov    DWORD PTR [esp+0x8],0xc6c6c6
c01002c2:	00 
c01002c3:	89 54 24 04          	mov    DWORD PTR [esp+0x4],edx
c01002c7:	89 04 24             	mov    DWORD PTR [esp],eax
c01002ca:	e8 74 6f 00 00       	call   c0107243 <viewFill>
c01002cf:	c7 45 d4 03 00 00 00 	mov    DWORD PTR [ebp-0x2c],0x3
c01002d6:	8b 45 d4             	mov    eax,DWORD PTR [ebp-0x2c]
c01002d9:	8d 78 28             	lea    edi,[eax+0x28]
c01002dc:	8b 45 d4             	mov    eax,DWORD PTR [ebp-0x2c]
c01002df:	8d 70 28             	lea    esi,[eax+0x28]
c01002e2:	8b 45 d4             	mov    eax,DWORD PTR [ebp-0x2c]
c01002e5:	8d 58 0a             	lea    ebx,[eax+0xa]
c01002e8:	8b 45 d4             	mov    eax,DWORD PTR [ebp-0x2c]
c01002eb:	8d 48 0a             	lea    ecx,[eax+0xa]
c01002ee:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
c01002f1:	8b 40 14             	mov    eax,DWORD PTR [eax+0x14]
c01002f4:	89 c2                	mov    edx,eax
c01002f6:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
c01002f9:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
c01002fc:	89 7c 24 18          	mov    DWORD PTR [esp+0x18],edi
c0100300:	89 74 24 14          	mov    DWORD PTR [esp+0x14],esi
c0100304:	89 5c 24 10          	mov    DWORD PTR [esp+0x10],ebx
c0100308:	89 4c 24 0c          	mov    DWORD PTR [esp+0xc],ecx
c010030c:	c7 44 24 08 84 84 84 	mov    DWORD PTR [esp+0x8],0x848484
c0100313:	00 
c0100314:	89 54 24 04          	mov    DWORD PTR [esp+0x4],edx
c0100318:	89 04 24             	mov    DWORD PTR [esp],eax
c010031b:	e8 23 6f 00 00       	call   c0107243 <viewFill>
c0100320:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
c0100323:	8b 40 14             	mov    eax,DWORD PTR [eax+0x14]
c0100326:	89 c2                	mov    edx,eax
c0100328:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
c010032b:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
c010032e:	c7 44 24 18 28 00 00 	mov    DWORD PTR [esp+0x18],0x28
c0100335:	00 
c0100336:	c7 44 24 14 28 00 00 	mov    DWORD PTR [esp+0x14],0x28
c010033d:	00 
c010033e:	c7 44 24 10 0a 00 00 	mov    DWORD PTR [esp+0x10],0xa
c0100345:	00 
c0100346:	c7 44 24 0c 0a 00 00 	mov    DWORD PTR [esp+0xc],0xa
c010034d:	00 
c010034e:	c7 44 24 08 ff ff ff 	mov    DWORD PTR [esp+0x8],0xffffff
c0100355:	00 
c0100356:	89 54 24 04          	mov    DWORD PTR [esp+0x4],edx
c010035a:	89 04 24             	mov    DWORD PTR [esp],eax
c010035d:	e8 e1 6e 00 00       	call   c0107243 <viewFill>
c0100362:	c7 45 d0 0a 00 00 00 	mov    DWORD PTR [ebp-0x30],0xa
c0100369:	c7 45 cc 0a 00 00 00 	mov    DWORD PTR [ebp-0x34],0xa
c0100370:	c7 45 e0 00 00 00 00 	mov    DWORD PTR [ebp-0x20],0x0
c0100377:	e9 94 00 00 00       	jmp    c0100410 <k_thread_a+0x1b8>
c010037c:	c7 45 e4 00 00 00 00 	mov    DWORD PTR [ebp-0x1c],0x0
c0100383:	eb 7d                	jmp    c0100402 <k_thread_a+0x1aa>
c0100385:	8b 55 e0             	mov    edx,DWORD PTR [ebp-0x20]
c0100388:	89 d0                	mov    eax,edx
c010038a:	c1 e0 04             	shl    eax,0x4
c010038d:	29 d0                	sub    eax,edx
c010038f:	03 45 e4             	add    eax,DWORD PTR [ebp-0x1c]
c0100392:	05 40 76 10 c0       	add    eax,0xc0107640
c0100397:	0f b6 00             	movzx  eax,BYTE PTR [eax]
c010039a:	3c 23                	cmp    al,0x23
c010039c:	75 60                	jne    c01003fe <k_thread_a+0x1a6>
c010039e:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
c01003a1:	83 c0 01             	add    eax,0x1
c01003a4:	01 c0                	add    eax,eax
c01003a6:	89 c7                	mov    edi,eax
c01003a8:	03 7d cc             	add    edi,DWORD PTR [ebp-0x34]
c01003ab:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
c01003ae:	83 c0 01             	add    eax,0x1
c01003b1:	01 c0                	add    eax,eax
c01003b3:	89 c6                	mov    esi,eax
c01003b5:	03 75 d0             	add    esi,DWORD PTR [ebp-0x30]
c01003b8:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
c01003bb:	01 c0                	add    eax,eax
c01003bd:	89 c3                	mov    ebx,eax
c01003bf:	03 5d cc             	add    ebx,DWORD PTR [ebp-0x34]
c01003c2:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
c01003c5:	01 c0                	add    eax,eax
c01003c7:	89 c1                	mov    ecx,eax
c01003c9:	03 4d d0             	add    ecx,DWORD PTR [ebp-0x30]
c01003cc:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
c01003cf:	8b 40 14             	mov    eax,DWORD PTR [eax+0x14]
c01003d2:	89 c2                	mov    edx,eax
c01003d4:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
c01003d7:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
c01003da:	89 7c 24 18          	mov    DWORD PTR [esp+0x18],edi
c01003de:	89 74 24 14          	mov    DWORD PTR [esp+0x14],esi
c01003e2:	89 5c 24 10          	mov    DWORD PTR [esp+0x10],ebx
c01003e6:	89 4c 24 0c          	mov    DWORD PTR [esp+0xc],ecx
c01003ea:	c7 44 24 08 84 84 84 	mov    DWORD PTR [esp+0x8],0x848484
c01003f1:	00 
c01003f2:	89 54 24 04          	mov    DWORD PTR [esp+0x4],edx
c01003f6:	89 04 24             	mov    DWORD PTR [esp],eax
c01003f9:	e8 45 6e 00 00       	call   c0107243 <viewFill>
c01003fe:	83 45 e4 01          	add    DWORD PTR [ebp-0x1c],0x1
c0100402:	83 7d e4 0e          	cmp    DWORD PTR [ebp-0x1c],0xe
c0100406:	0f 8e 79 ff ff ff    	jle    c0100385 <k_thread_a+0x12d>
c010040c:	83 45 e0 01          	add    DWORD PTR [ebp-0x20],0x1
c0100410:	83 7d e0 0e          	cmp    DWORD PTR [ebp-0x20],0xe
c0100414:	0f 8e 62 ff ff ff    	jle    c010037c <k_thread_a+0x124>
c010041a:	8b 45 d4             	mov    eax,DWORD PTR [ebp-0x2c]
c010041d:	8d 78 28             	lea    edi,[eax+0x28]
c0100420:	8b 45 d4             	mov    eax,DWORD PTR [ebp-0x2c]
c0100423:	8d 70 3c             	lea    esi,[eax+0x3c]
c0100426:	8b 45 d4             	mov    eax,DWORD PTR [ebp-0x2c]
c0100429:	8d 58 0a             	lea    ebx,[eax+0xa]
c010042c:	8b 45 d4             	mov    eax,DWORD PTR [ebp-0x2c]
c010042f:	8d 48 32             	lea    ecx,[eax+0x32]
c0100432:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
c0100435:	8b 40 14             	mov    eax,DWORD PTR [eax+0x14]
c0100438:	89 c2                	mov    edx,eax
c010043a:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
c010043d:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
c0100440:	89 7c 24 18          	mov    DWORD PTR [esp+0x18],edi
c0100444:	89 74 24 14          	mov    DWORD PTR [esp+0x14],esi
c0100448:	89 5c 24 10          	mov    DWORD PTR [esp+0x10],ebx
c010044c:	89 4c 24 0c          	mov    DWORD PTR [esp+0xc],ecx
c0100450:	c7 44 24 08 84 84 84 	mov    DWORD PTR [esp+0x8],0x848484
c0100457:	00 
c0100458:	89 54 24 04          	mov    DWORD PTR [esp+0x4],edx
c010045c:	89 04 24             	mov    DWORD PTR [esp],eax
c010045f:	e8 df 6d 00 00       	call   c0107243 <viewFill>
c0100464:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
c0100467:	8b 40 14             	mov    eax,DWORD PTR [eax+0x14]
c010046a:	89 c2                	mov    edx,eax
c010046c:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
c010046f:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
c0100472:	c7 44 24 18 28 00 00 	mov    DWORD PTR [esp+0x18],0x28
c0100479:	00 
c010047a:	c7 44 24 14 3c 00 00 	mov    DWORD PTR [esp+0x14],0x3c
c0100481:	00 
c0100482:	c7 44 24 10 0a 00 00 	mov    DWORD PTR [esp+0x10],0xa
c0100489:	00 
c010048a:	c7 44 24 0c 32 00 00 	mov    DWORD PTR [esp+0xc],0x32
c0100491:	00 
c0100492:	c7 44 24 08 ff ff ff 	mov    DWORD PTR [esp+0x8],0xffffff
c0100499:	00 
c010049a:	89 54 24 04          	mov    DWORD PTR [esp+0x4],edx
c010049e:	89 04 24             	mov    DWORD PTR [esp],eax
c01004a1:	e8 9d 6d 00 00       	call   c0107243 <viewFill>
c01004a6:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
c01004a9:	8b 50 18             	mov    edx,DWORD PTR [eax+0x18]
c01004ac:	8b 45 d4             	mov    eax,DWORD PTR [ebp-0x2c]
c01004af:	01 d0                	add    eax,edx
c01004b1:	83 e8 0b             	sub    eax,0xb
c01004b4:	89 c7                	mov    edi,eax
c01004b6:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
c01004b9:	8b 50 14             	mov    edx,DWORD PTR [eax+0x14]
c01004bc:	8b 45 d4             	mov    eax,DWORD PTR [ebp-0x2c]
c01004bf:	01 d0                	add    eax,edx
c01004c1:	83 e8 0b             	sub    eax,0xb
c01004c4:	89 c6                	mov    esi,eax
c01004c6:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
c01004c9:	8b 50 18             	mov    edx,DWORD PTR [eax+0x18]
c01004cc:	8b 45 d4             	mov    eax,DWORD PTR [ebp-0x2c]
c01004cf:	01 d0                	add    eax,edx
c01004d1:	83 e8 29             	sub    eax,0x29
c01004d4:	89 c3                	mov    ebx,eax
c01004d6:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
c01004d9:	8b 50 14             	mov    edx,DWORD PTR [eax+0x14]
c01004dc:	8b 45 d4             	mov    eax,DWORD PTR [ebp-0x2c]
c01004df:	01 d0                	add    eax,edx
c01004e1:	2d 99 00 00 00       	sub    eax,0x99
c01004e6:	89 c1                	mov    ecx,eax
c01004e8:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
c01004eb:	8b 40 14             	mov    eax,DWORD PTR [eax+0x14]
c01004ee:	89 c2                	mov    edx,eax
c01004f0:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
c01004f3:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
c01004f6:	89 7c 24 18          	mov    DWORD PTR [esp+0x18],edi
c01004fa:	89 74 24 14          	mov    DWORD PTR [esp+0x14],esi
c01004fe:	89 5c 24 10          	mov    DWORD PTR [esp+0x10],ebx
c0100502:	89 4c 24 0c          	mov    DWORD PTR [esp+0xc],ecx
c0100506:	c7 44 24 08 84 84 84 	mov    DWORD PTR [esp+0x8],0x848484
c010050d:	00 
c010050e:	89 54 24 04          	mov    DWORD PTR [esp+0x4],edx
c0100512:	89 04 24             	mov    DWORD PTR [esp],eax
c0100515:	e8 29 6d 00 00       	call   c0107243 <viewFill>
c010051a:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
c010051d:	8b 40 18             	mov    eax,DWORD PTR [eax+0x18]
c0100520:	83 e8 0b             	sub    eax,0xb
c0100523:	89 c7                	mov    edi,eax
c0100525:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
c0100528:	8b 40 14             	mov    eax,DWORD PTR [eax+0x14]
c010052b:	83 e8 0b             	sub    eax,0xb
c010052e:	89 c6                	mov    esi,eax
c0100530:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
c0100533:	8b 40 18             	mov    eax,DWORD PTR [eax+0x18]
c0100536:	83 e8 29             	sub    eax,0x29
c0100539:	89 c3                	mov    ebx,eax
c010053b:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
c010053e:	8b 40 14             	mov    eax,DWORD PTR [eax+0x14]
c0100541:	2d 99 00 00 00       	sub    eax,0x99
c0100546:	89 c1                	mov    ecx,eax
c0100548:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
c010054b:	8b 40 14             	mov    eax,DWORD PTR [eax+0x14]
c010054e:	89 c2                	mov    edx,eax
c0100550:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
c0100553:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
c0100556:	89 7c 24 18          	mov    DWORD PTR [esp+0x18],edi
c010055a:	89 74 24 14          	mov    DWORD PTR [esp+0x14],esi
c010055e:	89 5c 24 10          	mov    DWORD PTR [esp+0x10],ebx
c0100562:	89 4c 24 0c          	mov    DWORD PTR [esp+0xc],ecx
c0100566:	c7 44 24 08 ff ff ff 	mov    DWORD PTR [esp+0x8],0xffffff
c010056d:	00 
c010056e:	89 54 24 04          	mov    DWORD PTR [esp+0x4],edx
c0100572:	89 04 24             	mov    DWORD PTR [esp],eax
c0100575:	e8 c9 6c 00 00       	call   c0107243 <viewFill>
c010057a:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
c010057d:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c0100581:	c7 04 24 20 19 11 c0 	mov    DWORD PTR [esp],0xc0111920
c0100588:	e8 cd 62 00 00       	call   c010685a <viewInsert>
c010058d:	a1 00 19 11 c0       	mov    eax,ds:0xc0111900
c0100592:	8b 40 18             	mov    eax,DWORD PTR [eax+0x18]
c0100595:	83 e8 32             	sub    eax,0x32
c0100598:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
c010059c:	c7 44 24 04 00 00 00 	mov    DWORD PTR [esp+0x4],0x0
c01005a3:	00 
c01005a4:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
c01005a7:	89 04 24             	mov    DWORD PTR [esp],eax
c01005aa:	e8 23 67 00 00       	call   c0106cd2 <viewSlide>
c01005af:	8d 45 b4             	lea    eax,[ebp-0x4c]
c01005b2:	89 04 24             	mov    DWORD PTR [esp],eax
c01005b5:	e8 ad 46 00 00       	call   c0104c67 <get_time>
c01005ba:	a1 0c b4 10 c0       	mov    eax,ds:0xc010b40c
c01005bf:	89 45 dc             	mov    DWORD PTR [ebp-0x24],eax
c01005c2:	8b 75 b8             	mov    esi,DWORD PTR [ebp-0x48]
c01005c5:	8b 5d bc             	mov    ebx,DWORD PTR [ebp-0x44]
c01005c8:	8b 4d c0             	mov    ecx,DWORD PTR [ebp-0x40]
c01005cb:	8b 55 c4             	mov    edx,DWORD PTR [ebp-0x3c]
c01005ce:	8b 45 c8             	mov    eax,DWORD PTR [ebp-0x38]
c01005d1:	89 74 24 18          	mov    DWORD PTR [esp+0x18],esi
c01005d5:	89 5c 24 14          	mov    DWORD PTR [esp+0x14],ebx
c01005d9:	89 4c 24 10          	mov    DWORD PTR [esp+0x10],ecx
c01005dd:	89 54 24 0c          	mov    DWORD PTR [esp+0xc],edx
c01005e1:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
c01005e5:	c7 44 24 04 9a a0 10 	mov    DWORD PTR [esp+0x4],0xc010a09a
c01005ec:	c0 
c01005ed:	8d 45 94             	lea    eax,[ebp-0x6c]
c01005f0:	89 04 24             	mov    DWORD PTR [esp],eax
c01005f3:	e8 24 5e 00 00       	call   c010641c <sprintf>
c01005f8:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
c01005fb:	8b 40 18             	mov    eax,DWORD PTR [eax+0x18]
c01005fe:	83 e8 12             	sub    eax,0x12
c0100601:	89 c7                	mov    edi,eax
c0100603:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
c0100606:	8b 40 14             	mov    eax,DWORD PTR [eax+0x14]
c0100609:	83 e8 11             	sub    eax,0x11
c010060c:	89 c6                	mov    esi,eax
c010060e:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
c0100611:	8b 40 18             	mov    eax,DWORD PTR [eax+0x18]
c0100614:	83 e8 21             	sub    eax,0x21
c0100617:	89 c3                	mov    ebx,eax
c0100619:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
c010061c:	8b 40 14             	mov    eax,DWORD PTR [eax+0x14]
c010061f:	2d 91 00 00 00       	sub    eax,0x91
c0100624:	89 c1                	mov    ecx,eax
c0100626:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
c0100629:	8b 40 14             	mov    eax,DWORD PTR [eax+0x14]
c010062c:	89 c2                	mov    edx,eax
c010062e:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
c0100631:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
c0100634:	89 7c 24 18          	mov    DWORD PTR [esp+0x18],edi
c0100638:	89 74 24 14          	mov    DWORD PTR [esp+0x14],esi
c010063c:	89 5c 24 10          	mov    DWORD PTR [esp+0x10],ebx
c0100640:	89 4c 24 0c          	mov    DWORD PTR [esp+0xc],ecx
c0100644:	c7 44 24 08 ff ff ff 	mov    DWORD PTR [esp+0x8],0xffffff
c010064b:	00 
c010064c:	89 54 24 04          	mov    DWORD PTR [esp+0x4],edx
c0100650:	89 04 24             	mov    DWORD PTR [esp],eax
c0100653:	e8 eb 6b 00 00       	call   c0107243 <viewFill>
c0100658:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
c010065b:	8b 40 18             	mov    eax,DWORD PTR [eax+0x18]
c010065e:	83 e8 21             	sub    eax,0x21
c0100661:	89 c3                	mov    ebx,eax
c0100663:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
c0100666:	8b 40 14             	mov    eax,DWORD PTR [eax+0x14]
c0100669:	2d 91 00 00 00       	sub    eax,0x91
c010066e:	89 c1                	mov    ecx,eax
c0100670:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
c0100673:	8b 40 14             	mov    eax,DWORD PTR [eax+0x14]
c0100676:	89 c2                	mov    edx,eax
c0100678:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
c010067b:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
c010067e:	8d 75 94             	lea    esi,[ebp-0x6c]
c0100681:	89 74 24 14          	mov    DWORD PTR [esp+0x14],esi
c0100685:	c7 44 24 10 84 84 84 	mov    DWORD PTR [esp+0x10],0x848484
c010068c:	00 
c010068d:	89 5c 24 0c          	mov    DWORD PTR [esp+0xc],ebx
c0100691:	89 4c 24 08          	mov    DWORD PTR [esp+0x8],ecx
c0100695:	89 54 24 04          	mov    DWORD PTR [esp+0x4],edx
c0100699:	89 04 24             	mov    DWORD PTR [esp],eax
c010069c:	e8 27 6d 00 00       	call   c01073c8 <vput_str>
c01006a1:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
c01006a4:	8b 40 18             	mov    eax,DWORD PTR [eax+0x18]
c01006a7:	83 e8 12             	sub    eax,0x12
c01006aa:	89 c3                	mov    ebx,eax
c01006ac:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
c01006af:	8b 40 14             	mov    eax,DWORD PTR [eax+0x14]
c01006b2:	83 e8 11             	sub    eax,0x11
c01006b5:	89 c1                	mov    ecx,eax
c01006b7:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
c01006ba:	8b 40 18             	mov    eax,DWORD PTR [eax+0x18]
c01006bd:	83 e8 21             	sub    eax,0x21
c01006c0:	89 c2                	mov    edx,eax
c01006c2:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
c01006c5:	8b 40 14             	mov    eax,DWORD PTR [eax+0x14]
c01006c8:	2d 91 00 00 00       	sub    eax,0x91
c01006cd:	89 5c 24 10          	mov    DWORD PTR [esp+0x10],ebx
c01006d1:	89 4c 24 0c          	mov    DWORD PTR [esp+0xc],ecx
c01006d5:	89 54 24 08          	mov    DWORD PTR [esp+0x8],edx
c01006d9:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c01006dd:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
c01006e0:	89 04 24             	mov    DWORD PTR [esp],eax
c01006e3:	e8 7a 67 00 00       	call   c0106e62 <view_reflush>
c01006e8:	90                   	nop
c01006e9:	8b 45 dc             	mov    eax,DWORD PTR [ebp-0x24]
c01006ec:	8d 50 64             	lea    edx,[eax+0x64]
c01006ef:	a1 0c b4 10 c0       	mov    eax,ds:0xc010b40c
c01006f4:	39 c2                	cmp    edx,eax
c01006f6:	7d f1                	jge    c01006e9 <k_thread_a+0x491>
c01006f8:	a1 0c b4 10 c0       	mov    eax,ds:0xc010b40c
c01006fd:	89 45 dc             	mov    DWORD PTR [ebp-0x24],eax
c0100700:	8d 45 b4             	lea    eax,[ebp-0x4c]
c0100703:	89 04 24             	mov    DWORD PTR [esp],eax
c0100706:	e8 5c 45 00 00       	call   c0104c67 <get_time>
c010070b:	e9 b2 fe ff ff       	jmp    c01005c2 <k_thread_a+0x36a>

c0100710 <shell>:
c0100710:	55                   	push   ebp
c0100711:	89 e5                	mov    ebp,esp
c0100713:	83 ec 38             	sub    esp,0x38
c0100716:	c7 44 24 04 b3 a0 10 	mov    DWORD PTR [esp+0x4],0xc010a0b3
c010071d:	c0 
c010071e:	c7 04 24 07 00 00 00 	mov    DWORD PTR [esp],0x7
c0100725:	e8 11 3d 00 00       	call   c010443b <console_str>
c010072a:	c7 45 f4 14 00 00 00 	mov    DWORD PTR [ebp-0xc],0x14
c0100731:	c7 45 f0 64 00 00 00 	mov    DWORD PTR [ebp-0x10],0x64
c0100738:	eb 01                	jmp    c010073b <shell+0x2b>
c010073a:	90                   	nop
c010073b:	c7 04 24 a0 18 11 c0 	mov    DWORD PTR [esp],0xc01118a0
c0100742:	e8 c2 53 00 00       	call   c0105b09 <fifo_empty>
c0100747:	85 c0                	test   eax,eax
c0100749:	75 ef                	jne    c010073a <shell+0x2a>
c010074b:	8d 45 ef             	lea    eax,[ebp-0x11]
c010074e:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c0100752:	c7 04 24 a0 18 11 c0 	mov    DWORD PTR [esp],0xc01118a0
c0100759:	e8 13 52 00 00       	call   c0105971 <fifo_get>
c010075e:	0f b6 45 ef          	movzx  eax,BYTE PTR [ebp-0x11]
c0100762:	0f be c0             	movsx  eax,al
c0100765:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c0100769:	c7 04 24 07 00 00 00 	mov    DWORD PTR [esp],0x7
c0100770:	e8 83 3c 00 00       	call   c01043f8 <console_char>
c0100775:	0f b6 45 ef          	movzx  eax,BYTE PTR [ebp-0x11]
c0100779:	0f be d0             	movsx  edx,al
c010077c:	b8 24 7c 00 c0       	mov    eax,0xc0007c24
c0100781:	8b 00                	mov    eax,DWORD PTR [eax]
c0100783:	89 54 24 14          	mov    DWORD PTR [esp+0x14],edx
c0100787:	c7 44 24 10 ff ff ff 	mov    DWORD PTR [esp+0x10],0xffffff
c010078e:	00 
c010078f:	8b 55 f0             	mov    edx,DWORD PTR [ebp-0x10]
c0100792:	89 54 24 0c          	mov    DWORD PTR [esp+0xc],edx
c0100796:	8b 55 f4             	mov    edx,DWORD PTR [ebp-0xc]
c0100799:	89 54 24 08          	mov    DWORD PTR [esp+0x8],edx
c010079d:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c01007a1:	c7 04 24 00 00 00 e0 	mov    DWORD PTR [esp],0xe0000000
c01007a8:	e8 00 6b 00 00       	call   c01072ad <vput_char>
c01007ad:	83 45 f4 08          	add    DWORD PTR [ebp-0xc],0x8
c01007b1:	0f b6 45 ef          	movzx  eax,BYTE PTR [ebp-0x11]
c01007b5:	3c 0d                	cmp    al,0xd
c01007b7:	75 81                	jne    c010073a <shell+0x2a>
c01007b9:	c7 45 f4 14 00 00 00 	mov    DWORD PTR [ebp-0xc],0x14
c01007c0:	83 45 f0 10          	add    DWORD PTR [ebp-0x10],0x10
c01007c4:	c7 44 24 04 bc a0 10 	mov    DWORD PTR [esp+0x4],0xc010a0bc
c01007cb:	c0 
c01007cc:	c7 04 24 07 00 00 00 	mov    DWORD PTR [esp],0x7
c01007d3:	e8 63 3c 00 00       	call   c010443b <console_str>
c01007d8:	e9 5d ff ff ff       	jmp    c010073a <shell+0x2a>

c01007dd <View_thread>:
c01007dd:	55                   	push   ebp
c01007de:	89 e5                	mov    ebp,esp
c01007e0:	57                   	push   edi
c01007e1:	56                   	push   esi
c01007e2:	53                   	push   ebx
c01007e3:	81 ec bc 00 00 00    	sub    esp,0xbc
c01007e9:	c7 44 24 04 10 00 00 	mov    DWORD PTR [esp+0x4],0x10
c01007f0:	00 
c01007f1:	c7 04 24 10 00 00 00 	mov    DWORD PTR [esp],0x10
c01007f8:	e8 92 5f 00 00       	call   c010678f <viewblock_init>
c01007fd:	89 45 d4             	mov    DWORD PTR [ebp-0x2c],eax
c0100800:	c7 45 e0 00 00 00 00 	mov    DWORD PTR [ebp-0x20],0x0
c0100807:	e9 ab 00 00 00       	jmp    c01008b7 <View_thread+0xda>
c010080c:	c7 45 e4 00 00 00 00 	mov    DWORD PTR [ebp-0x1c],0x0
c0100813:	e9 91 00 00 00       	jmp    c01008a9 <View_thread+0xcc>
c0100818:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
c010081b:	c1 e0 04             	shl    eax,0x4
c010081e:	03 45 e4             	add    eax,DWORD PTR [ebp-0x1c]
c0100821:	05 40 77 10 c0       	add    eax,0xc0107740
c0100826:	0f b6 00             	movzx  eax,BYTE PTR [eax]
c0100829:	3c 23                	cmp    al,0x23
c010082b:	75 1a                	jne    c0100847 <View_thread+0x6a>
c010082d:	8b 45 d4             	mov    eax,DWORD PTR [ebp-0x2c]
c0100830:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
c0100833:	8b 55 e0             	mov    edx,DWORD PTR [ebp-0x20]
c0100836:	c1 e2 04             	shl    edx,0x4
c0100839:	03 55 e4             	add    edx,DWORD PTR [ebp-0x1c]
c010083c:	c1 e2 02             	shl    edx,0x2
c010083f:	01 d0                	add    eax,edx
c0100841:	c7 00 ff ff ff 00    	mov    DWORD PTR [eax],0xffffff
c0100847:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
c010084a:	c1 e0 04             	shl    eax,0x4
c010084d:	03 45 e4             	add    eax,DWORD PTR [ebp-0x1c]
c0100850:	05 40 77 10 c0       	add    eax,0xc0107740
c0100855:	0f b6 00             	movzx  eax,BYTE PTR [eax]
c0100858:	3c 2d                	cmp    al,0x2d
c010085a:	75 1a                	jne    c0100876 <View_thread+0x99>
c010085c:	8b 45 d4             	mov    eax,DWORD PTR [ebp-0x2c]
c010085f:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
c0100862:	8b 55 e0             	mov    edx,DWORD PTR [ebp-0x20]
c0100865:	c1 e2 04             	shl    edx,0x4
c0100868:	03 55 e4             	add    edx,DWORD PTR [ebp-0x1c]
c010086b:	c1 e2 02             	shl    edx,0x2
c010086e:	01 d0                	add    eax,edx
c0100870:	c7 00 00 00 00 ff    	mov    DWORD PTR [eax],0xff000000
c0100876:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
c0100879:	c1 e0 04             	shl    eax,0x4
c010087c:	03 45 e4             	add    eax,DWORD PTR [ebp-0x1c]
c010087f:	05 40 77 10 c0       	add    eax,0xc0107740
c0100884:	0f b6 00             	movzx  eax,BYTE PTR [eax]
c0100887:	3c 2a                	cmp    al,0x2a
c0100889:	75 1a                	jne    c01008a5 <View_thread+0xc8>
c010088b:	8b 45 d4             	mov    eax,DWORD PTR [ebp-0x2c]
c010088e:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
c0100891:	8b 55 e0             	mov    edx,DWORD PTR [ebp-0x20]
c0100894:	c1 e2 04             	shl    edx,0x4
c0100897:	03 55 e4             	add    edx,DWORD PTR [ebp-0x1c]
c010089a:	c1 e2 02             	shl    edx,0x2
c010089d:	01 d0                	add    eax,edx
c010089f:	c7 00 84 84 84 00    	mov    DWORD PTR [eax],0x848484
c01008a5:	83 45 e4 01          	add    DWORD PTR [ebp-0x1c],0x1
c01008a9:	83 7d e4 0f          	cmp    DWORD PTR [ebp-0x1c],0xf
c01008ad:	0f 8e 65 ff ff ff    	jle    c0100818 <View_thread+0x3b>
c01008b3:	83 45 e0 01          	add    DWORD PTR [ebp-0x20],0x1
c01008b7:	83 7d e0 0f          	cmp    DWORD PTR [ebp-0x20],0xf
c01008bb:	0f 8e 4b ff ff ff    	jle    c010080c <View_thread+0x2f>
c01008c1:	a1 00 19 11 c0       	mov    eax,ds:0xc0111900
c01008c6:	c7 44 24 04 00 00 00 	mov    DWORD PTR [esp+0x4],0x0
c01008cd:	00 
c01008ce:	89 04 24             	mov    DWORD PTR [esp],eax
c01008d1:	e8 4c 61 00 00       	call   c0106a22 <viewUpdown>
c01008d6:	a1 00 19 11 c0       	mov    eax,ds:0xc0111900
c01008db:	c7 44 24 08 00 00 00 	mov    DWORD PTR [esp+0x8],0x0
c01008e2:	00 
c01008e3:	c7 44 24 04 00 00 00 	mov    DWORD PTR [esp+0x4],0x0
c01008ea:	00 
c01008eb:	89 04 24             	mov    DWORD PTR [esp],eax
c01008ee:	e8 df 63 00 00       	call   c0106cd2 <viewSlide>
c01008f3:	8b 45 d4             	mov    eax,DWORD PTR [ebp-0x2c]
c01008f6:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c01008fa:	c7 04 24 20 19 11 c0 	mov    DWORD PTR [esp],0xc0111920
c0100901:	e8 54 5f 00 00       	call   c010685a <viewInsert>
c0100906:	a1 4c 19 11 c0       	mov    eax,ds:0xc011194c
c010090b:	83 e8 01             	sub    eax,0x1
c010090e:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c0100912:	8b 45 d4             	mov    eax,DWORD PTR [ebp-0x2c]
c0100915:	89 04 24             	mov    DWORD PTR [esp],eax
c0100918:	e8 05 61 00 00       	call   c0106a22 <viewUpdown>
c010091d:	b8 24 7c 00 c0       	mov    eax,0xc0007c24
c0100922:	8b 00                	mov    eax,DWORD PTR [eax]
c0100924:	d1 e8                	shr    eax,1
c0100926:	89 45 dc             	mov    DWORD PTR [ebp-0x24],eax
c0100929:	b8 28 7c 00 c0       	mov    eax,0xc0007c28
c010092e:	8b 00                	mov    eax,DWORD PTR [eax]
c0100930:	d1 e8                	shr    eax,1
c0100932:	89 45 d8             	mov    DWORD PTR [ebp-0x28],eax
c0100935:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
c0100938:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
c010093c:	8b 45 dc             	mov    eax,DWORD PTR [ebp-0x24]
c010093f:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c0100943:	8b 45 d4             	mov    eax,DWORD PTR [ebp-0x2c]
c0100946:	89 04 24             	mov    DWORD PTR [esp],eax
c0100949:	e8 84 63 00 00       	call   c0106cd2 <viewSlide>
c010094e:	8d 45 90             	lea    eax,[ebp-0x70]
c0100951:	89 04 24             	mov    DWORD PTR [esp],eax
c0100954:	e8 5b 45 00 00       	call   c0104eb4 <resetmsg>
c0100959:	c7 45 94 01 00 00 00 	mov    DWORD PTR [ebp-0x6c],0x1
c0100960:	c7 45 98 1f 00 00 00 	mov    DWORD PTR [ebp-0x68],0x1f
c0100967:	b8 01 00 00 00       	mov    eax,0x1
c010096c:	ba 0b 00 00 00       	mov    edx,0xb
c0100971:	8d 4d 90             	lea    ecx,[ebp-0x70]
c0100974:	89 d3                	mov    ebx,edx
c0100976:	cd 4d                	int    0x4d
c0100978:	8b 45 98             	mov    eax,DWORD PTR [ebp-0x68]
c010097b:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
c010097f:	c7 44 24 04 c4 a0 10 	mov    DWORD PTR [esp+0x4],0xc010a0c4
c0100986:	c0 
c0100987:	8d 85 72 ff ff ff    	lea    eax,[ebp-0x8e]
c010098d:	89 04 24             	mov    DWORD PTR [esp],eax
c0100990:	e8 87 5a 00 00       	call   c010641c <sprintf>
c0100995:	b8 24 7c 00 c0       	mov    eax,0xc0007c24
c010099a:	8b 00                	mov    eax,DWORD PTR [eax]
c010099c:	8d 95 72 ff ff ff    	lea    edx,[ebp-0x8e]
c01009a2:	89 54 24 14          	mov    DWORD PTR [esp+0x14],edx
c01009a6:	c7 44 24 10 ff ff ff 	mov    DWORD PTR [esp+0x10],0xffffff
c01009ad:	00 
c01009ae:	c7 44 24 0c 50 00 00 	mov    DWORD PTR [esp+0xc],0x50
c01009b5:	00 
c01009b6:	c7 44 24 08 32 00 00 	mov    DWORD PTR [esp+0x8],0x32
c01009bd:	00 
c01009be:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c01009c2:	c7 04 24 00 00 00 e0 	mov    DWORD PTR [esp],0xe0000000
c01009c9:	e8 fa 69 00 00       	call   c01073c8 <vput_str>
c01009ce:	c7 45 94 02 00 00 00 	mov    DWORD PTR [ebp-0x6c],0x2
c01009d5:	b8 24 7c 00 c0       	mov    eax,0xc0007c24
c01009da:	8b 00                	mov    eax,DWORD PTR [eax]
c01009dc:	8d 95 72 ff ff ff    	lea    edx,[ebp-0x8e]
c01009e2:	89 54 24 14          	mov    DWORD PTR [esp+0x14],edx
c01009e6:	c7 44 24 10 ff ff ff 	mov    DWORD PTR [esp+0x10],0xffffff
c01009ed:	00 
c01009ee:	c7 44 24 0c 50 00 00 	mov    DWORD PTR [esp+0xc],0x50
c01009f5:	00 
c01009f6:	c7 44 24 08 32 00 00 	mov    DWORD PTR [esp+0x8],0x32
c01009fd:	00 
c01009fe:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c0100a02:	c7 04 24 00 00 00 e0 	mov    DWORD PTR [esp],0xe0000000
c0100a09:	e8 ba 69 00 00       	call   c01073c8 <vput_str>
c0100a0e:	eb 01                	jmp    c0100a11 <View_thread+0x234>
c0100a10:	90                   	nop
c0100a11:	8d 45 90             	lea    eax,[ebp-0x70]
c0100a14:	89 04 24             	mov    DWORD PTR [esp],eax
c0100a17:	e8 98 44 00 00       	call   c0104eb4 <resetmsg>
c0100a1c:	8d 45 90             	lea    eax,[ebp-0x70]
c0100a1f:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
c0100a23:	c7 44 24 04 ff ff ff 	mov    DWORD PTR [esp+0x4],0xffffffff
c0100a2a:	ff 
c0100a2b:	c7 04 24 02 00 00 00 	mov    DWORD PTR [esp],0x2
c0100a32:	e8 51 44 00 00       	call   c0104e88 <send_recv>
c0100a37:	8b 45 94             	mov    eax,DWORD PTR [ebp-0x6c]
c0100a3a:	83 f8 01             	cmp    eax,0x1
c0100a3d:	0f 85 95 00 00 00    	jne    c0100ad8 <View_thread+0x2fb>
c0100a43:	8b 45 a4             	mov    eax,DWORD PTR [ebp-0x5c]
c0100a46:	89 85 64 ff ff ff    	mov    DWORD PTR [ebp-0x9c],eax
c0100a4c:	8b 45 a0             	mov    eax,DWORD PTR [ebp-0x60]
c0100a4f:	89 c7                	mov    edi,eax
c0100a51:	8b 45 9c             	mov    eax,DWORD PTR [ebp-0x64]
c0100a54:	89 c6                	mov    esi,eax
c0100a56:	8b 45 98             	mov    eax,DWORD PTR [ebp-0x68]
c0100a59:	89 c3                	mov    ebx,eax
c0100a5b:	8b 45 a8             	mov    eax,DWORD PTR [ebp-0x58]
c0100a5e:	8b 55 ac             	mov    edx,DWORD PTR [ebp-0x54]
c0100a61:	89 c1                	mov    ecx,eax
c0100a63:	a1 00 19 11 c0       	mov    eax,ds:0xc0111900
c0100a68:	8b 40 14             	mov    eax,DWORD PTR [eax+0x14]
c0100a6b:	89 c2                	mov    edx,eax
c0100a6d:	a1 00 19 11 c0       	mov    eax,ds:0xc0111900
c0100a72:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
c0100a75:	89 85 60 ff ff ff    	mov    DWORD PTR [ebp-0xa0],eax
c0100a7b:	8b 85 64 ff ff ff    	mov    eax,DWORD PTR [ebp-0x9c]
c0100a81:	89 44 24 18          	mov    DWORD PTR [esp+0x18],eax
c0100a85:	89 7c 24 14          	mov    DWORD PTR [esp+0x14],edi
c0100a89:	89 74 24 10          	mov    DWORD PTR [esp+0x10],esi
c0100a8d:	89 5c 24 0c          	mov    DWORD PTR [esp+0xc],ebx
c0100a91:	89 4c 24 08          	mov    DWORD PTR [esp+0x8],ecx
c0100a95:	89 54 24 04          	mov    DWORD PTR [esp+0x4],edx
c0100a99:	8b 9d 60 ff ff ff    	mov    ebx,DWORD PTR [ebp-0xa0]
c0100a9f:	89 1c 24             	mov    DWORD PTR [esp],ebx
c0100aa2:	e8 9c 67 00 00       	call   c0107243 <viewFill>
c0100aa7:	8b 45 a4             	mov    eax,DWORD PTR [ebp-0x5c]
c0100aaa:	89 c6                	mov    esi,eax
c0100aac:	8b 45 a0             	mov    eax,DWORD PTR [ebp-0x60]
c0100aaf:	89 c3                	mov    ebx,eax
c0100ab1:	8b 45 9c             	mov    eax,DWORD PTR [ebp-0x64]
c0100ab4:	89 c1                	mov    ecx,eax
c0100ab6:	8b 45 98             	mov    eax,DWORD PTR [ebp-0x68]
c0100ab9:	89 c2                	mov    edx,eax
c0100abb:	a1 00 19 11 c0       	mov    eax,ds:0xc0111900
c0100ac0:	89 74 24 10          	mov    DWORD PTR [esp+0x10],esi
c0100ac4:	89 5c 24 0c          	mov    DWORD PTR [esp+0xc],ebx
c0100ac8:	89 4c 24 08          	mov    DWORD PTR [esp+0x8],ecx
c0100acc:	89 54 24 04          	mov    DWORD PTR [esp+0x4],edx
c0100ad0:	89 04 24             	mov    DWORD PTR [esp],eax
c0100ad3:	e8 8a 63 00 00       	call   c0106e62 <view_reflush>
c0100ad8:	a1 4c 19 11 c0       	mov    eax,ds:0xc011194c
c0100add:	83 e8 01             	sub    eax,0x1
c0100ae0:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c0100ae4:	8b 45 d4             	mov    eax,DWORD PTR [ebp-0x2c]
c0100ae7:	89 04 24             	mov    DWORD PTR [esp],eax
c0100aea:	e8 33 5f 00 00       	call   c0106a22 <viewUpdown>
c0100aef:	8d 45 c0             	lea    eax,[ebp-0x40]
c0100af2:	89 04 24             	mov    DWORD PTR [esp],eax
c0100af5:	e8 c7 40 00 00       	call   c0104bc1 <get_mouse>
c0100afa:	83 ec 04             	sub    esp,0x4
c0100afd:	8b 45 c4             	mov    eax,DWORD PTR [ebp-0x3c]
c0100b00:	85 c0                	test   eax,eax
c0100b02:	0f 84 08 ff ff ff    	je     c0100a10 <View_thread+0x233>
c0100b08:	8b 45 c8             	mov    eax,DWORD PTR [ebp-0x38]
c0100b0b:	01 45 dc             	add    DWORD PTR [ebp-0x24],eax
c0100b0e:	8b 45 cc             	mov    eax,DWORD PTR [ebp-0x34]
c0100b11:	01 45 d8             	add    DWORD PTR [ebp-0x28],eax
c0100b14:	83 7d dc 00          	cmp    DWORD PTR [ebp-0x24],0x0
c0100b18:	79 07                	jns    c0100b21 <View_thread+0x344>
c0100b1a:	c7 45 dc 00 00 00 00 	mov    DWORD PTR [ebp-0x24],0x0
c0100b21:	83 7d d8 00          	cmp    DWORD PTR [ebp-0x28],0x0
c0100b25:	79 07                	jns    c0100b2e <View_thread+0x351>
c0100b27:	c7 45 d8 00 00 00 00 	mov    DWORD PTR [ebp-0x28],0x0
c0100b2e:	a1 54 19 11 c0       	mov    eax,ds:0xc0111954
c0100b33:	83 e8 03             	sub    eax,0x3
c0100b36:	3b 45 dc             	cmp    eax,DWORD PTR [ebp-0x24]
c0100b39:	7d 0b                	jge    c0100b46 <View_thread+0x369>
c0100b3b:	a1 54 19 11 c0       	mov    eax,ds:0xc0111954
c0100b40:	83 e8 03             	sub    eax,0x3
c0100b43:	89 45 dc             	mov    DWORD PTR [ebp-0x24],eax
c0100b46:	a1 58 19 11 c0       	mov    eax,ds:0xc0111958
c0100b4b:	83 e8 03             	sub    eax,0x3
c0100b4e:	3b 45 d8             	cmp    eax,DWORD PTR [ebp-0x28]
c0100b51:	7d 0b                	jge    c0100b5e <View_thread+0x381>
c0100b53:	a1 58 19 11 c0       	mov    eax,ds:0xc0111958
c0100b58:	83 e8 03             	sub    eax,0x3
c0100b5b:	89 45 d8             	mov    DWORD PTR [ebp-0x28],eax
c0100b5e:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
c0100b61:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
c0100b65:	8b 45 dc             	mov    eax,DWORD PTR [ebp-0x24]
c0100b68:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c0100b6c:	8b 45 d4             	mov    eax,DWORD PTR [ebp-0x2c]
c0100b6f:	89 04 24             	mov    DWORD PTR [esp],eax
c0100b72:	e8 5b 61 00 00       	call   c0106cd2 <viewSlide>
c0100b77:	e9 94 fe ff ff       	jmp    c0100a10 <View_thread+0x233>

c0100b7c <f>:
c0100b7c:	55                   	push   ebp
c0100b7d:	89 e5                	mov    ebp,esp
c0100b7f:	5d                   	pop    ebp
c0100b80:	c3                   	ret    

c0100b81 <u_prog_a>:
c0100b81:	55                   	push   ebp
c0100b82:	89 e5                	mov    ebp,esp
c0100b84:	83 ec 48             	sub    esp,0x48
c0100b87:	e8 f0 ff ff ff       	call   c0100b7c <f>
c0100b8c:	c7 45 cc 01 00 00 00 	mov    DWORD PTR [ebp-0x34],0x1
c0100b93:	c7 45 d0 14 00 00 00 	mov    DWORD PTR [ebp-0x30],0x14
c0100b9a:	c7 45 d4 14 00 00 00 	mov    DWORD PTR [ebp-0x2c],0x14
c0100ba1:	c7 45 d8 78 00 00 00 	mov    DWORD PTR [ebp-0x28],0x78
c0100ba8:	c7 45 dc 78 00 00 00 	mov    DWORD PTR [ebp-0x24],0x78
c0100baf:	c7 45 e0 4d 4d 4d 00 	mov    DWORD PTR [ebp-0x20],0x4d4d4d
c0100bb6:	c7 45 e4 00 00 00 00 	mov    DWORD PTR [ebp-0x1c],0x0
c0100bbd:	8d 45 c8             	lea    eax,[ebp-0x38]
c0100bc0:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
c0100bc4:	c7 44 24 04 0e 00 00 	mov    DWORD PTR [esp+0x4],0xe
c0100bcb:	00 
c0100bcc:	c7 04 24 01 00 00 00 	mov    DWORD PTR [esp],0x1
c0100bd3:	e8 b0 42 00 00       	call   c0104e88 <send_recv>
c0100bd8:	eb fe                	jmp    c0100bd8 <u_prog_a+0x57>

c0100bda <task_a>:
c0100bda:	55                   	push   ebp
c0100bdb:	89 e5                	mov    ebp,esp
c0100bdd:	e8 9a ff ff ff       	call   c0100b7c <f>
c0100be2:	eb fe                	jmp    c0100be2 <task_a+0x8>

c0100be4 <panic_spin>:
c0100be4:	55                   	push   ebp
c0100be5:	89 e5                	mov    ebp,esp
c0100be7:	81 ec a8 00 00 00    	sub    esp,0xa8
c0100bed:	e8 6f 0d 00 00       	call   c0101961 <intr_disable>
c0100bf2:	c7 04 24 00 00 00 00 	mov    DWORD PTR [esp],0x0
c0100bf9:	e8 df 55 00 00       	call   c01061dd <set_cursor>
c0100bfe:	8b 45 18             	mov    eax,DWORD PTR [ebp+0x18]
c0100c01:	89 44 24 18          	mov    DWORD PTR [esp+0x18],eax
c0100c05:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
c0100c08:	89 44 24 14          	mov    DWORD PTR [esp+0x14],eax
c0100c0c:	8b 45 14             	mov    eax,DWORD PTR [ebp+0x14]
c0100c0f:	89 44 24 10          	mov    DWORD PTR [esp+0x10],eax
c0100c13:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c0100c16:	89 44 24 0c          	mov    DWORD PTR [esp+0xc],eax
c0100c1a:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0100c1d:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
c0100c21:	c7 44 24 04 f4 a0 10 	mov    DWORD PTR [esp+0x4],0xc010a0f4
c0100c28:	c0 
c0100c29:	8d 85 79 ff ff ff    	lea    eax,[ebp-0x87]
c0100c2f:	89 04 24             	mov    DWORD PTR [esp],eax
c0100c32:	e8 e5 57 00 00       	call   c010641c <sprintf>
c0100c37:	8d 85 79 ff ff ff    	lea    eax,[ebp-0x87]
c0100c3d:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c0100c41:	c7 04 24 04 00 00 00 	mov    DWORD PTR [esp],0x4
c0100c48:	e8 0e 52 00 00       	call   c0105e5b <put_str>
c0100c4d:	b8 24 7c 00 c0       	mov    eax,0xc0007c24
c0100c52:	8b 00                	mov    eax,DWORD PTR [eax]
c0100c54:	8d 95 79 ff ff ff    	lea    edx,[ebp-0x87]
c0100c5a:	89 54 24 14          	mov    DWORD PTR [esp+0x14],edx
c0100c5e:	c7 44 24 10 00 00 ff 	mov    DWORD PTR [esp+0x10],0xff0000
c0100c65:	00 
c0100c66:	c7 44 24 0c 00 00 00 	mov    DWORD PTR [esp+0xc],0x0
c0100c6d:	00 
c0100c6e:	c7 44 24 08 00 00 00 	mov    DWORD PTR [esp+0x8],0x0
c0100c75:	00 
c0100c76:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c0100c7a:	c7 04 24 00 00 00 e0 	mov    DWORD PTR [esp],0xe0000000
c0100c81:	e8 42 67 00 00       	call   c01073c8 <vput_str>
c0100c86:	eb fe                	jmp    c0100c86 <panic_spin+0xa2>

c0100c88 <log>:
c0100c88:	55                   	push   ebp
c0100c89:	89 e5                	mov    ebp,esp
c0100c8b:	83 ec 18             	sub    esp,0x18
c0100c8e:	c7 44 24 04 51 a1 10 	mov    DWORD PTR [esp+0x4],0xc010a151
c0100c95:	c0 
c0100c96:	c7 04 24 06 00 00 00 	mov    DWORD PTR [esp],0x6
c0100c9d:	e8 b9 51 00 00       	call   c0105e5b <put_str>
c0100ca2:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0100ca5:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c0100ca9:	c7 04 24 06 00 00 00 	mov    DWORD PTR [esp],0x6
c0100cb0:	e8 a6 51 00 00       	call   c0105e5b <put_str>
c0100cb5:	c7 44 24 04 0a 00 00 	mov    DWORD PTR [esp+0x4],0xa
c0100cbc:	00 
c0100cbd:	c7 04 24 06 00 00 00 	mov    DWORD PTR [esp],0x6
c0100cc4:	e8 6a 50 00 00       	call   c0105d33 <put_char>
c0100cc9:	c9                   	leave  
c0100cca:	c3                   	ret    
	...

c0100ccc <init_all>:
c0100ccc:	55                   	push   ebp
c0100ccd:	89 e5                	mov    ebp,esp
c0100ccf:	83 ec 18             	sub    esp,0x18
c0100cd2:	c7 04 24 7b a1 10 c0 	mov    DWORD PTR [esp],0xc010a17b
c0100cd9:	e8 aa ff ff ff       	call   c0100c88 <log>
c0100cde:	e8 22 09 00 00       	call   c0101605 <init_idt>
c0100ce3:	e8 75 2f 00 00       	call   c0103c5d <init_tss>
c0100ce8:	e8 f3 40 00 00       	call   c0104de0 <init_pit>
c0100ced:	e8 be 16 00 00       	call   c01023b0 <init_memory>
c0100cf2:	e8 4d 67 00 00       	call   c0107444 <init_screen>
c0100cf7:	e8 3a 3a 00 00       	call   c0104736 <init_keyboard>
c0100cfc:	e8 22 3d 00 00       	call   c0104a23 <init_mouse>
c0100d01:	e8 1e 28 00 00       	call   c0103524 <init_thread>
c0100d06:	e8 d9 36 00 00       	call   c01043e4 <init_console>
c0100d0b:	c7 04 24 84 a1 10 c0 	mov    DWORD PTR [esp],0xc010a184
c0100d12:	e8 71 ff ff ff       	call   c0100c88 <log>
c0100d17:	c9                   	leave  
c0100d18:	c3                   	ret    
c0100d19:	00 00                	add    BYTE PTR [eax],al
c0100d1b:	00 00                	add    BYTE PTR [eax],al
c0100d1d:	00 00                	add    BYTE PTR [eax],al
	...

c0100d20 <intr_exit>:
c0100d20:	81 c4 04 00 00 00    	add    esp,0x4
c0100d26:	61                   	popa   
c0100d27:	0f a9                	pop    gs
c0100d29:	0f a1                	pop    fs
c0100d2b:	07                   	pop    es
c0100d2c:	1f                   	pop    ds
c0100d2d:	81 c4 04 00 00 00    	add    esp,0x4
c0100d33:	cf                   	iret   

c0100d34 <asm_intr0x00_handler>:
c0100d34:	68 00 00 00 00       	push   0x0
c0100d39:	1e                   	push   ds
c0100d3a:	06                   	push   es
c0100d3b:	0f a0                	push   fs
c0100d3d:	0f a8                	push   gs
c0100d3f:	60                   	pusha  
c0100d40:	68 00 00 00 00       	push   0x0
c0100d45:	66 8c d0             	mov    ax,ss
c0100d48:	8e d8                	mov    ds,eax
c0100d4a:	8e c0                	mov    es,eax
c0100d4c:	ff 15 e0 b7 10 c0    	call   DWORD PTR ds:0xc010b7e0
c0100d52:	e9 c9 ff ff ff       	jmp    c0100d20 <intr_exit>

c0100d57 <asm_intr0x01_handler>:
c0100d57:	68 00 00 00 00       	push   0x0
c0100d5c:	1e                   	push   ds
c0100d5d:	06                   	push   es
c0100d5e:	0f a0                	push   fs
c0100d60:	0f a8                	push   gs
c0100d62:	60                   	pusha  
c0100d63:	68 01 00 00 00       	push   0x1
c0100d68:	66 8c d0             	mov    ax,ss
c0100d6b:	8e d8                	mov    ds,eax
c0100d6d:	8e c0                	mov    es,eax
c0100d6f:	ff 15 e4 b7 10 c0    	call   DWORD PTR ds:0xc010b7e4
c0100d75:	e9 a6 ff ff ff       	jmp    c0100d20 <intr_exit>

c0100d7a <asm_intr0x02_handler>:
c0100d7a:	68 00 00 00 00       	push   0x0
c0100d7f:	1e                   	push   ds
c0100d80:	06                   	push   es
c0100d81:	0f a0                	push   fs
c0100d83:	0f a8                	push   gs
c0100d85:	60                   	pusha  
c0100d86:	68 02 00 00 00       	push   0x2
c0100d8b:	66 8c d0             	mov    ax,ss
c0100d8e:	8e d8                	mov    ds,eax
c0100d90:	8e c0                	mov    es,eax
c0100d92:	ff 15 e8 b7 10 c0    	call   DWORD PTR ds:0xc010b7e8
c0100d98:	e9 83 ff ff ff       	jmp    c0100d20 <intr_exit>

c0100d9d <asm_intr0x03_handler>:
c0100d9d:	68 00 00 00 00       	push   0x0
c0100da2:	1e                   	push   ds
c0100da3:	06                   	push   es
c0100da4:	0f a0                	push   fs
c0100da6:	0f a8                	push   gs
c0100da8:	60                   	pusha  
c0100da9:	68 03 00 00 00       	push   0x3
c0100dae:	66 8c d0             	mov    ax,ss
c0100db1:	8e d8                	mov    ds,eax
c0100db3:	8e c0                	mov    es,eax
c0100db5:	ff 15 ec b7 10 c0    	call   DWORD PTR ds:0xc010b7ec
c0100dbb:	e9 60 ff ff ff       	jmp    c0100d20 <intr_exit>

c0100dc0 <asm_intr0x04_handler>:
c0100dc0:	68 00 00 00 00       	push   0x0
c0100dc5:	1e                   	push   ds
c0100dc6:	06                   	push   es
c0100dc7:	0f a0                	push   fs
c0100dc9:	0f a8                	push   gs
c0100dcb:	60                   	pusha  
c0100dcc:	68 04 00 00 00       	push   0x4
c0100dd1:	66 8c d0             	mov    ax,ss
c0100dd4:	8e d8                	mov    ds,eax
c0100dd6:	8e c0                	mov    es,eax
c0100dd8:	ff 15 f0 b7 10 c0    	call   DWORD PTR ds:0xc010b7f0
c0100dde:	e9 3d ff ff ff       	jmp    c0100d20 <intr_exit>

c0100de3 <asm_intr0x05_handler>:
c0100de3:	68 00 00 00 00       	push   0x0
c0100de8:	1e                   	push   ds
c0100de9:	06                   	push   es
c0100dea:	0f a0                	push   fs
c0100dec:	0f a8                	push   gs
c0100dee:	60                   	pusha  
c0100def:	68 05 00 00 00       	push   0x5
c0100df4:	66 8c d0             	mov    ax,ss
c0100df7:	8e d8                	mov    ds,eax
c0100df9:	8e c0                	mov    es,eax
c0100dfb:	ff 15 f4 b7 10 c0    	call   DWORD PTR ds:0xc010b7f4
c0100e01:	e9 1a ff ff ff       	jmp    c0100d20 <intr_exit>

c0100e06 <asm_intr0x06_handler>:
c0100e06:	68 00 00 00 00       	push   0x0
c0100e0b:	1e                   	push   ds
c0100e0c:	06                   	push   es
c0100e0d:	0f a0                	push   fs
c0100e0f:	0f a8                	push   gs
c0100e11:	60                   	pusha  
c0100e12:	68 06 00 00 00       	push   0x6
c0100e17:	66 8c d0             	mov    ax,ss
c0100e1a:	8e d8                	mov    ds,eax
c0100e1c:	8e c0                	mov    es,eax
c0100e1e:	ff 15 f8 b7 10 c0    	call   DWORD PTR ds:0xc010b7f8
c0100e24:	e9 f7 fe ff ff       	jmp    c0100d20 <intr_exit>

c0100e29 <asm_intr0x07_handler>:
c0100e29:	68 00 00 00 00       	push   0x0
c0100e2e:	1e                   	push   ds
c0100e2f:	06                   	push   es
c0100e30:	0f a0                	push   fs
c0100e32:	0f a8                	push   gs
c0100e34:	60                   	pusha  
c0100e35:	68 07 00 00 00       	push   0x7
c0100e3a:	66 8c d0             	mov    ax,ss
c0100e3d:	8e d8                	mov    ds,eax
c0100e3f:	8e c0                	mov    es,eax
c0100e41:	ff 15 fc b7 10 c0    	call   DWORD PTR ds:0xc010b7fc
c0100e47:	e9 d4 fe ff ff       	jmp    c0100d20 <intr_exit>

c0100e4c <asm_intr0x08_handler>:
c0100e4c:	90                   	nop
c0100e4d:	1e                   	push   ds
c0100e4e:	06                   	push   es
c0100e4f:	0f a0                	push   fs
c0100e51:	0f a8                	push   gs
c0100e53:	60                   	pusha  
c0100e54:	68 08 00 00 00       	push   0x8
c0100e59:	66 8c d0             	mov    ax,ss
c0100e5c:	8e d8                	mov    ds,eax
c0100e5e:	8e c0                	mov    es,eax
c0100e60:	ff 15 00 b8 10 c0    	call   DWORD PTR ds:0xc010b800
c0100e66:	e9 b5 fe ff ff       	jmp    c0100d20 <intr_exit>

c0100e6b <asm_intr0x09_handler>:
c0100e6b:	68 00 00 00 00       	push   0x0
c0100e70:	1e                   	push   ds
c0100e71:	06                   	push   es
c0100e72:	0f a0                	push   fs
c0100e74:	0f a8                	push   gs
c0100e76:	60                   	pusha  
c0100e77:	68 09 00 00 00       	push   0x9
c0100e7c:	66 8c d0             	mov    ax,ss
c0100e7f:	8e d8                	mov    ds,eax
c0100e81:	8e c0                	mov    es,eax
c0100e83:	ff 15 04 b8 10 c0    	call   DWORD PTR ds:0xc010b804
c0100e89:	e9 92 fe ff ff       	jmp    c0100d20 <intr_exit>

c0100e8e <asm_intr0x0a_handler>:
c0100e8e:	90                   	nop
c0100e8f:	1e                   	push   ds
c0100e90:	06                   	push   es
c0100e91:	0f a0                	push   fs
c0100e93:	0f a8                	push   gs
c0100e95:	60                   	pusha  
c0100e96:	68 0a 00 00 00       	push   0xa
c0100e9b:	66 8c d0             	mov    ax,ss
c0100e9e:	8e d8                	mov    ds,eax
c0100ea0:	8e c0                	mov    es,eax
c0100ea2:	ff 15 08 b8 10 c0    	call   DWORD PTR ds:0xc010b808
c0100ea8:	e9 73 fe ff ff       	jmp    c0100d20 <intr_exit>

c0100ead <asm_intr0x0b_handler>:
c0100ead:	90                   	nop
c0100eae:	1e                   	push   ds
c0100eaf:	06                   	push   es
c0100eb0:	0f a0                	push   fs
c0100eb2:	0f a8                	push   gs
c0100eb4:	60                   	pusha  
c0100eb5:	68 0b 00 00 00       	push   0xb
c0100eba:	66 8c d0             	mov    ax,ss
c0100ebd:	8e d8                	mov    ds,eax
c0100ebf:	8e c0                	mov    es,eax
c0100ec1:	ff 15 0c b8 10 c0    	call   DWORD PTR ds:0xc010b80c
c0100ec7:	e9 54 fe ff ff       	jmp    c0100d20 <intr_exit>

c0100ecc <asm_intr0x0c_handler>:
c0100ecc:	68 00 00 00 00       	push   0x0
c0100ed1:	1e                   	push   ds
c0100ed2:	06                   	push   es
c0100ed3:	0f a0                	push   fs
c0100ed5:	0f a8                	push   gs
c0100ed7:	60                   	pusha  
c0100ed8:	68 0c 00 00 00       	push   0xc
c0100edd:	66 8c d0             	mov    ax,ss
c0100ee0:	8e d8                	mov    ds,eax
c0100ee2:	8e c0                	mov    es,eax
c0100ee4:	ff 15 10 b8 10 c0    	call   DWORD PTR ds:0xc010b810
c0100eea:	e9 31 fe ff ff       	jmp    c0100d20 <intr_exit>

c0100eef <asm_intr0x0d_handler>:
c0100eef:	90                   	nop
c0100ef0:	1e                   	push   ds
c0100ef1:	06                   	push   es
c0100ef2:	0f a0                	push   fs
c0100ef4:	0f a8                	push   gs
c0100ef6:	60                   	pusha  
c0100ef7:	68 0d 00 00 00       	push   0xd
c0100efc:	66 8c d0             	mov    ax,ss
c0100eff:	8e d8                	mov    ds,eax
c0100f01:	8e c0                	mov    es,eax
c0100f03:	ff 15 14 b8 10 c0    	call   DWORD PTR ds:0xc010b814
c0100f09:	e9 12 fe ff ff       	jmp    c0100d20 <intr_exit>

c0100f0e <asm_intr0x0e_handler>:
c0100f0e:	90                   	nop
c0100f0f:	1e                   	push   ds
c0100f10:	06                   	push   es
c0100f11:	0f a0                	push   fs
c0100f13:	0f a8                	push   gs
c0100f15:	60                   	pusha  
c0100f16:	68 0e 00 00 00       	push   0xe
c0100f1b:	66 8c d0             	mov    ax,ss
c0100f1e:	8e d8                	mov    ds,eax
c0100f20:	8e c0                	mov    es,eax
c0100f22:	ff 15 18 b8 10 c0    	call   DWORD PTR ds:0xc010b818
c0100f28:	e9 f3 fd ff ff       	jmp    c0100d20 <intr_exit>

c0100f2d <asm_intr0x0f_handler>:
c0100f2d:	68 00 00 00 00       	push   0x0
c0100f32:	1e                   	push   ds
c0100f33:	06                   	push   es
c0100f34:	0f a0                	push   fs
c0100f36:	0f a8                	push   gs
c0100f38:	60                   	pusha  
c0100f39:	68 0f 00 00 00       	push   0xf
c0100f3e:	66 8c d0             	mov    ax,ss
c0100f41:	8e d8                	mov    ds,eax
c0100f43:	8e c0                	mov    es,eax
c0100f45:	ff 15 1c b8 10 c0    	call   DWORD PTR ds:0xc010b81c
c0100f4b:	e9 d0 fd ff ff       	jmp    c0100d20 <intr_exit>

c0100f50 <asm_intr0x10_handler>:
c0100f50:	68 00 00 00 00       	push   0x0
c0100f55:	1e                   	push   ds
c0100f56:	06                   	push   es
c0100f57:	0f a0                	push   fs
c0100f59:	0f a8                	push   gs
c0100f5b:	60                   	pusha  
c0100f5c:	68 10 00 00 00       	push   0x10
c0100f61:	66 8c d0             	mov    ax,ss
c0100f64:	8e d8                	mov    ds,eax
c0100f66:	8e c0                	mov    es,eax
c0100f68:	ff 15 20 b8 10 c0    	call   DWORD PTR ds:0xc010b820
c0100f6e:	e9 ad fd ff ff       	jmp    c0100d20 <intr_exit>

c0100f73 <asm_intr0x11_handler>:
c0100f73:	90                   	nop
c0100f74:	1e                   	push   ds
c0100f75:	06                   	push   es
c0100f76:	0f a0                	push   fs
c0100f78:	0f a8                	push   gs
c0100f7a:	60                   	pusha  
c0100f7b:	68 11 00 00 00       	push   0x11
c0100f80:	66 8c d0             	mov    ax,ss
c0100f83:	8e d8                	mov    ds,eax
c0100f85:	8e c0                	mov    es,eax
c0100f87:	ff 15 24 b8 10 c0    	call   DWORD PTR ds:0xc010b824
c0100f8d:	e9 8e fd ff ff       	jmp    c0100d20 <intr_exit>

c0100f92 <asm_intr0x12_handler>:
c0100f92:	68 00 00 00 00       	push   0x0
c0100f97:	1e                   	push   ds
c0100f98:	06                   	push   es
c0100f99:	0f a0                	push   fs
c0100f9b:	0f a8                	push   gs
c0100f9d:	60                   	pusha  
c0100f9e:	68 12 00 00 00       	push   0x12
c0100fa3:	66 8c d0             	mov    ax,ss
c0100fa6:	8e d8                	mov    ds,eax
c0100fa8:	8e c0                	mov    es,eax
c0100faa:	ff 15 28 b8 10 c0    	call   DWORD PTR ds:0xc010b828
c0100fb0:	e9 6b fd ff ff       	jmp    c0100d20 <intr_exit>

c0100fb5 <asm_intr0x13_handler>:
c0100fb5:	68 00 00 00 00       	push   0x0
c0100fba:	1e                   	push   ds
c0100fbb:	06                   	push   es
c0100fbc:	0f a0                	push   fs
c0100fbe:	0f a8                	push   gs
c0100fc0:	60                   	pusha  
c0100fc1:	68 13 00 00 00       	push   0x13
c0100fc6:	66 8c d0             	mov    ax,ss
c0100fc9:	8e d8                	mov    ds,eax
c0100fcb:	8e c0                	mov    es,eax
c0100fcd:	ff 15 2c b8 10 c0    	call   DWORD PTR ds:0xc010b82c
c0100fd3:	e9 48 fd ff ff       	jmp    c0100d20 <intr_exit>

c0100fd8 <asm_intr0x14_handler>:
c0100fd8:	68 00 00 00 00       	push   0x0
c0100fdd:	1e                   	push   ds
c0100fde:	06                   	push   es
c0100fdf:	0f a0                	push   fs
c0100fe1:	0f a8                	push   gs
c0100fe3:	60                   	pusha  
c0100fe4:	68 14 00 00 00       	push   0x14
c0100fe9:	66 8c d0             	mov    ax,ss
c0100fec:	8e d8                	mov    ds,eax
c0100fee:	8e c0                	mov    es,eax
c0100ff0:	ff 15 30 b8 10 c0    	call   DWORD PTR ds:0xc010b830
c0100ff6:	e9 25 fd ff ff       	jmp    c0100d20 <intr_exit>

c0100ffb <asm_intr0x15_handler>:
c0100ffb:	68 00 00 00 00       	push   0x0
c0101000:	1e                   	push   ds
c0101001:	06                   	push   es
c0101002:	0f a0                	push   fs
c0101004:	0f a8                	push   gs
c0101006:	60                   	pusha  
c0101007:	68 15 00 00 00       	push   0x15
c010100c:	66 8c d0             	mov    ax,ss
c010100f:	8e d8                	mov    ds,eax
c0101011:	8e c0                	mov    es,eax
c0101013:	ff 15 34 b8 10 c0    	call   DWORD PTR ds:0xc010b834
c0101019:	e9 02 fd ff ff       	jmp    c0100d20 <intr_exit>

c010101e <asm_intr0x16_handler>:
c010101e:	68 00 00 00 00       	push   0x0
c0101023:	1e                   	push   ds
c0101024:	06                   	push   es
c0101025:	0f a0                	push   fs
c0101027:	0f a8                	push   gs
c0101029:	60                   	pusha  
c010102a:	68 16 00 00 00       	push   0x16
c010102f:	66 8c d0             	mov    ax,ss
c0101032:	8e d8                	mov    ds,eax
c0101034:	8e c0                	mov    es,eax
c0101036:	ff 15 38 b8 10 c0    	call   DWORD PTR ds:0xc010b838
c010103c:	e9 df fc ff ff       	jmp    c0100d20 <intr_exit>

c0101041 <asm_intr0x17_handler>:
c0101041:	68 00 00 00 00       	push   0x0
c0101046:	1e                   	push   ds
c0101047:	06                   	push   es
c0101048:	0f a0                	push   fs
c010104a:	0f a8                	push   gs
c010104c:	60                   	pusha  
c010104d:	68 17 00 00 00       	push   0x17
c0101052:	66 8c d0             	mov    ax,ss
c0101055:	8e d8                	mov    ds,eax
c0101057:	8e c0                	mov    es,eax
c0101059:	ff 15 3c b8 10 c0    	call   DWORD PTR ds:0xc010b83c
c010105f:	e9 bc fc ff ff       	jmp    c0100d20 <intr_exit>

c0101064 <asm_intr0x18_handler>:
c0101064:	90                   	nop
c0101065:	1e                   	push   ds
c0101066:	06                   	push   es
c0101067:	0f a0                	push   fs
c0101069:	0f a8                	push   gs
c010106b:	60                   	pusha  
c010106c:	68 18 00 00 00       	push   0x18
c0101071:	66 8c d0             	mov    ax,ss
c0101074:	8e d8                	mov    ds,eax
c0101076:	8e c0                	mov    es,eax
c0101078:	ff 15 40 b8 10 c0    	call   DWORD PTR ds:0xc010b840
c010107e:	e9 9d fc ff ff       	jmp    c0100d20 <intr_exit>

c0101083 <asm_intr0x19_handler>:
c0101083:	68 00 00 00 00       	push   0x0
c0101088:	1e                   	push   ds
c0101089:	06                   	push   es
c010108a:	0f a0                	push   fs
c010108c:	0f a8                	push   gs
c010108e:	60                   	pusha  
c010108f:	68 19 00 00 00       	push   0x19
c0101094:	66 8c d0             	mov    ax,ss
c0101097:	8e d8                	mov    ds,eax
c0101099:	8e c0                	mov    es,eax
c010109b:	ff 15 44 b8 10 c0    	call   DWORD PTR ds:0xc010b844
c01010a1:	e9 7a fc ff ff       	jmp    c0100d20 <intr_exit>

c01010a6 <asm_intr0x1a_handler>:
c01010a6:	90                   	nop
c01010a7:	1e                   	push   ds
c01010a8:	06                   	push   es
c01010a9:	0f a0                	push   fs
c01010ab:	0f a8                	push   gs
c01010ad:	60                   	pusha  
c01010ae:	68 1a 00 00 00       	push   0x1a
c01010b3:	66 8c d0             	mov    ax,ss
c01010b6:	8e d8                	mov    ds,eax
c01010b8:	8e c0                	mov    es,eax
c01010ba:	ff 15 48 b8 10 c0    	call   DWORD PTR ds:0xc010b848
c01010c0:	e9 5b fc ff ff       	jmp    c0100d20 <intr_exit>

c01010c5 <asm_intr0x1b_handler>:
c01010c5:	90                   	nop
c01010c6:	1e                   	push   ds
c01010c7:	06                   	push   es
c01010c8:	0f a0                	push   fs
c01010ca:	0f a8                	push   gs
c01010cc:	60                   	pusha  
c01010cd:	68 1b 00 00 00       	push   0x1b
c01010d2:	66 8c d0             	mov    ax,ss
c01010d5:	8e d8                	mov    ds,eax
c01010d7:	8e c0                	mov    es,eax
c01010d9:	ff 15 4c b8 10 c0    	call   DWORD PTR ds:0xc010b84c
c01010df:	e9 3c fc ff ff       	jmp    c0100d20 <intr_exit>

c01010e4 <asm_intr0x1c_handler>:
c01010e4:	68 00 00 00 00       	push   0x0
c01010e9:	1e                   	push   ds
c01010ea:	06                   	push   es
c01010eb:	0f a0                	push   fs
c01010ed:	0f a8                	push   gs
c01010ef:	60                   	pusha  
c01010f0:	68 1c 00 00 00       	push   0x1c
c01010f5:	66 8c d0             	mov    ax,ss
c01010f8:	8e d8                	mov    ds,eax
c01010fa:	8e c0                	mov    es,eax
c01010fc:	ff 15 50 b8 10 c0    	call   DWORD PTR ds:0xc010b850
c0101102:	e9 19 fc ff ff       	jmp    c0100d20 <intr_exit>

c0101107 <asm_intr0x1d_handler>:
c0101107:	90                   	nop
c0101108:	1e                   	push   ds
c0101109:	06                   	push   es
c010110a:	0f a0                	push   fs
c010110c:	0f a8                	push   gs
c010110e:	60                   	pusha  
c010110f:	68 1d 00 00 00       	push   0x1d
c0101114:	66 8c d0             	mov    ax,ss
c0101117:	8e d8                	mov    ds,eax
c0101119:	8e c0                	mov    es,eax
c010111b:	ff 15 54 b8 10 c0    	call   DWORD PTR ds:0xc010b854
c0101121:	e9 fa fb ff ff       	jmp    c0100d20 <intr_exit>

c0101126 <asm_intr0x1e_handler>:
c0101126:	90                   	nop
c0101127:	1e                   	push   ds
c0101128:	06                   	push   es
c0101129:	0f a0                	push   fs
c010112b:	0f a8                	push   gs
c010112d:	60                   	pusha  
c010112e:	68 1e 00 00 00       	push   0x1e
c0101133:	66 8c d0             	mov    ax,ss
c0101136:	8e d8                	mov    ds,eax
c0101138:	8e c0                	mov    es,eax
c010113a:	ff 15 58 b8 10 c0    	call   DWORD PTR ds:0xc010b858
c0101140:	e9 db fb ff ff       	jmp    c0100d20 <intr_exit>

c0101145 <asm_intr0x1f_handler>:
c0101145:	68 00 00 00 00       	push   0x0
c010114a:	1e                   	push   ds
c010114b:	06                   	push   es
c010114c:	0f a0                	push   fs
c010114e:	0f a8                	push   gs
c0101150:	60                   	pusha  
c0101151:	68 1f 00 00 00       	push   0x1f
c0101156:	66 8c d0             	mov    ax,ss
c0101159:	8e d8                	mov    ds,eax
c010115b:	8e c0                	mov    es,eax
c010115d:	ff 15 5c b8 10 c0    	call   DWORD PTR ds:0xc010b85c
c0101163:	e9 b8 fb ff ff       	jmp    c0100d20 <intr_exit>

c0101168 <asm_intr0x20_handler>:
c0101168:	68 00 00 00 00       	push   0x0
c010116d:	1e                   	push   ds
c010116e:	06                   	push   es
c010116f:	0f a0                	push   fs
c0101171:	0f a8                	push   gs
c0101173:	60                   	pusha  
c0101174:	68 20 00 00 00       	push   0x20
c0101179:	66 8c d0             	mov    ax,ss
c010117c:	8e d8                	mov    ds,eax
c010117e:	8e c0                	mov    es,eax
c0101180:	ff 15 60 b8 10 c0    	call   DWORD PTR ds:0xc010b860
c0101186:	e9 95 fb ff ff       	jmp    c0100d20 <intr_exit>

c010118b <asm_intr0x21_handler>:
c010118b:	68 00 00 00 00       	push   0x0
c0101190:	1e                   	push   ds
c0101191:	06                   	push   es
c0101192:	0f a0                	push   fs
c0101194:	0f a8                	push   gs
c0101196:	60                   	pusha  
c0101197:	68 21 00 00 00       	push   0x21
c010119c:	66 8c d0             	mov    ax,ss
c010119f:	8e d8                	mov    ds,eax
c01011a1:	8e c0                	mov    es,eax
c01011a3:	ff 15 64 b8 10 c0    	call   DWORD PTR ds:0xc010b864
c01011a9:	e9 72 fb ff ff       	jmp    c0100d20 <intr_exit>

c01011ae <asm_intr0x22_handler>:
c01011ae:	68 00 00 00 00       	push   0x0
c01011b3:	1e                   	push   ds
c01011b4:	06                   	push   es
c01011b5:	0f a0                	push   fs
c01011b7:	0f a8                	push   gs
c01011b9:	60                   	pusha  
c01011ba:	68 22 00 00 00       	push   0x22
c01011bf:	66 8c d0             	mov    ax,ss
c01011c2:	8e d8                	mov    ds,eax
c01011c4:	8e c0                	mov    es,eax
c01011c6:	ff 15 68 b8 10 c0    	call   DWORD PTR ds:0xc010b868
c01011cc:	e9 4f fb ff ff       	jmp    c0100d20 <intr_exit>

c01011d1 <asm_intr0x23_handler>:
c01011d1:	68 00 00 00 00       	push   0x0
c01011d6:	1e                   	push   ds
c01011d7:	06                   	push   es
c01011d8:	0f a0                	push   fs
c01011da:	0f a8                	push   gs
c01011dc:	60                   	pusha  
c01011dd:	68 23 00 00 00       	push   0x23
c01011e2:	66 8c d0             	mov    ax,ss
c01011e5:	8e d8                	mov    ds,eax
c01011e7:	8e c0                	mov    es,eax
c01011e9:	ff 15 6c b8 10 c0    	call   DWORD PTR ds:0xc010b86c
c01011ef:	e9 2c fb ff ff       	jmp    c0100d20 <intr_exit>

c01011f4 <asm_intr0x24_handler>:
c01011f4:	68 00 00 00 00       	push   0x0
c01011f9:	1e                   	push   ds
c01011fa:	06                   	push   es
c01011fb:	0f a0                	push   fs
c01011fd:	0f a8                	push   gs
c01011ff:	60                   	pusha  
c0101200:	68 24 00 00 00       	push   0x24
c0101205:	66 8c d0             	mov    ax,ss
c0101208:	8e d8                	mov    ds,eax
c010120a:	8e c0                	mov    es,eax
c010120c:	ff 15 70 b8 10 c0    	call   DWORD PTR ds:0xc010b870
c0101212:	e9 09 fb ff ff       	jmp    c0100d20 <intr_exit>

c0101217 <asm_intr0x25_handler>:
c0101217:	68 00 00 00 00       	push   0x0
c010121c:	1e                   	push   ds
c010121d:	06                   	push   es
c010121e:	0f a0                	push   fs
c0101220:	0f a8                	push   gs
c0101222:	60                   	pusha  
c0101223:	68 25 00 00 00       	push   0x25
c0101228:	66 8c d0             	mov    ax,ss
c010122b:	8e d8                	mov    ds,eax
c010122d:	8e c0                	mov    es,eax
c010122f:	ff 15 74 b8 10 c0    	call   DWORD PTR ds:0xc010b874
c0101235:	e9 e6 fa ff ff       	jmp    c0100d20 <intr_exit>

c010123a <asm_intr0x26_handler>:
c010123a:	68 00 00 00 00       	push   0x0
c010123f:	1e                   	push   ds
c0101240:	06                   	push   es
c0101241:	0f a0                	push   fs
c0101243:	0f a8                	push   gs
c0101245:	60                   	pusha  
c0101246:	68 26 00 00 00       	push   0x26
c010124b:	66 8c d0             	mov    ax,ss
c010124e:	8e d8                	mov    ds,eax
c0101250:	8e c0                	mov    es,eax
c0101252:	ff 15 78 b8 10 c0    	call   DWORD PTR ds:0xc010b878
c0101258:	e9 c3 fa ff ff       	jmp    c0100d20 <intr_exit>

c010125d <asm_intr0x27_handler>:
c010125d:	68 00 00 00 00       	push   0x0
c0101262:	1e                   	push   ds
c0101263:	06                   	push   es
c0101264:	0f a0                	push   fs
c0101266:	0f a8                	push   gs
c0101268:	60                   	pusha  
c0101269:	68 27 00 00 00       	push   0x27
c010126e:	66 8c d0             	mov    ax,ss
c0101271:	8e d8                	mov    ds,eax
c0101273:	8e c0                	mov    es,eax
c0101275:	ff 15 7c b8 10 c0    	call   DWORD PTR ds:0xc010b87c
c010127b:	e9 a0 fa ff ff       	jmp    c0100d20 <intr_exit>

c0101280 <asm_intr0x28_handler>:
c0101280:	68 00 00 00 00       	push   0x0
c0101285:	1e                   	push   ds
c0101286:	06                   	push   es
c0101287:	0f a0                	push   fs
c0101289:	0f a8                	push   gs
c010128b:	60                   	pusha  
c010128c:	68 28 00 00 00       	push   0x28
c0101291:	66 8c d0             	mov    ax,ss
c0101294:	8e d8                	mov    ds,eax
c0101296:	8e c0                	mov    es,eax
c0101298:	ff 15 80 b8 10 c0    	call   DWORD PTR ds:0xc010b880
c010129e:	e9 7d fa ff ff       	jmp    c0100d20 <intr_exit>

c01012a3 <asm_intr0x29_handler>:
c01012a3:	68 00 00 00 00       	push   0x0
c01012a8:	1e                   	push   ds
c01012a9:	06                   	push   es
c01012aa:	0f a0                	push   fs
c01012ac:	0f a8                	push   gs
c01012ae:	60                   	pusha  
c01012af:	68 29 00 00 00       	push   0x29
c01012b4:	66 8c d0             	mov    ax,ss
c01012b7:	8e d8                	mov    ds,eax
c01012b9:	8e c0                	mov    es,eax
c01012bb:	ff 15 84 b8 10 c0    	call   DWORD PTR ds:0xc010b884
c01012c1:	e9 5a fa ff ff       	jmp    c0100d20 <intr_exit>

c01012c6 <asm_intr0x2a_handler>:
c01012c6:	68 00 00 00 00       	push   0x0
c01012cb:	1e                   	push   ds
c01012cc:	06                   	push   es
c01012cd:	0f a0                	push   fs
c01012cf:	0f a8                	push   gs
c01012d1:	60                   	pusha  
c01012d2:	68 2a 00 00 00       	push   0x2a
c01012d7:	66 8c d0             	mov    ax,ss
c01012da:	8e d8                	mov    ds,eax
c01012dc:	8e c0                	mov    es,eax
c01012de:	ff 15 88 b8 10 c0    	call   DWORD PTR ds:0xc010b888
c01012e4:	e9 37 fa ff ff       	jmp    c0100d20 <intr_exit>

c01012e9 <asm_intr0x2b_handler>:
c01012e9:	68 00 00 00 00       	push   0x0
c01012ee:	1e                   	push   ds
c01012ef:	06                   	push   es
c01012f0:	0f a0                	push   fs
c01012f2:	0f a8                	push   gs
c01012f4:	60                   	pusha  
c01012f5:	68 2b 00 00 00       	push   0x2b
c01012fa:	66 8c d0             	mov    ax,ss
c01012fd:	8e d8                	mov    ds,eax
c01012ff:	8e c0                	mov    es,eax
c0101301:	ff 15 8c b8 10 c0    	call   DWORD PTR ds:0xc010b88c
c0101307:	e9 14 fa ff ff       	jmp    c0100d20 <intr_exit>

c010130c <asm_intr0x2c_handler>:
c010130c:	68 00 00 00 00       	push   0x0
c0101311:	1e                   	push   ds
c0101312:	06                   	push   es
c0101313:	0f a0                	push   fs
c0101315:	0f a8                	push   gs
c0101317:	60                   	pusha  
c0101318:	68 2c 00 00 00       	push   0x2c
c010131d:	66 8c d0             	mov    ax,ss
c0101320:	8e d8                	mov    ds,eax
c0101322:	8e c0                	mov    es,eax
c0101324:	ff 15 90 b8 10 c0    	call   DWORD PTR ds:0xc010b890
c010132a:	e9 f1 f9 ff ff       	jmp    c0100d20 <intr_exit>

c010132f <asm_intr0x2d_handler>:
c010132f:	68 00 00 00 00       	push   0x0
c0101334:	1e                   	push   ds
c0101335:	06                   	push   es
c0101336:	0f a0                	push   fs
c0101338:	0f a8                	push   gs
c010133a:	60                   	pusha  
c010133b:	68 2d 00 00 00       	push   0x2d
c0101340:	66 8c d0             	mov    ax,ss
c0101343:	8e d8                	mov    ds,eax
c0101345:	8e c0                	mov    es,eax
c0101347:	ff 15 94 b8 10 c0    	call   DWORD PTR ds:0xc010b894
c010134d:	e9 ce f9 ff ff       	jmp    c0100d20 <intr_exit>

c0101352 <asm_intr0x2e_handler>:
c0101352:	68 00 00 00 00       	push   0x0
c0101357:	1e                   	push   ds
c0101358:	06                   	push   es
c0101359:	0f a0                	push   fs
c010135b:	0f a8                	push   gs
c010135d:	60                   	pusha  
c010135e:	68 2e 00 00 00       	push   0x2e
c0101363:	66 8c d0             	mov    ax,ss
c0101366:	8e d8                	mov    ds,eax
c0101368:	8e c0                	mov    es,eax
c010136a:	ff 15 98 b8 10 c0    	call   DWORD PTR ds:0xc010b898
c0101370:	e9 ab f9 ff ff       	jmp    c0100d20 <intr_exit>

c0101375 <asm_intr0x2f_handler>:
c0101375:	68 00 00 00 00       	push   0x0
c010137a:	1e                   	push   ds
c010137b:	06                   	push   es
c010137c:	0f a0                	push   fs
c010137e:	0f a8                	push   gs
c0101380:	60                   	pusha  
c0101381:	68 2f 00 00 00       	push   0x2f
c0101386:	66 8c d0             	mov    ax,ss
c0101389:	8e d8                	mov    ds,eax
c010138b:	8e c0                	mov    es,eax
c010138d:	ff 15 9c b8 10 c0    	call   DWORD PTR ds:0xc010b89c
c0101393:	e9 88 f9 ff ff       	jmp    c0100d20 <intr_exit>

c0101398 <syscall_entry>:
c0101398:	fa                   	cli    
c0101399:	68 00 00 00 00       	push   0x0
c010139e:	1e                   	push   ds
c010139f:	06                   	push   es
c01013a0:	0f a0                	push   fs
c01013a2:	0f a8                	push   gs
c01013a4:	60                   	pusha  
c01013a5:	68 4d 00 00 00       	push   0x4d
c01013aa:	51                   	push   ecx
c01013ab:	53                   	push   ebx
c01013ac:	50                   	push   eax
c01013ad:	e8 d3 3f 00 00       	call   c0105385 <sys_sendrec>
c01013b2:	81 c4 0c 00 00 00    	add    esp,0xc
c01013b8:	89 44 24 20          	mov    DWORD PTR [esp+0x20],eax
c01013bc:	e9 5f f9 ff ff       	jmp    c0100d20 <intr_exit>
c01013c1:	00 00                	add    BYTE PTR [eax],al
	...

c01013c4 <io_sti>:
c01013c4:	55                   	push   ebp
c01013c5:	89 e5                	mov    ebp,esp
c01013c7:	fb                   	sti    
c01013c8:	5d                   	pop    ebp
c01013c9:	c3                   	ret    

c01013ca <io_cli>:
c01013ca:	55                   	push   ebp
c01013cb:	89 e5                	mov    ebp,esp
c01013cd:	fa                   	cli    
c01013ce:	5d                   	pop    ebp
c01013cf:	c3                   	ret    

c01013d0 <io_out8>:
c01013d0:	55                   	push   ebp
c01013d1:	89 e5                	mov    ebp,esp
c01013d3:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c01013d6:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c01013d9:	ee                   	out    dx,al
c01013da:	5d                   	pop    ebp
c01013db:	c3                   	ret    

c01013dc <get_flages>:
c01013dc:	55                   	push   ebp
c01013dd:	89 e5                	mov    ebp,esp
c01013df:	53                   	push   ebx
c01013e0:	83 ec 10             	sub    esp,0x10
c01013e3:	9c                   	pushf  
c01013e4:	58                   	pop    eax
c01013e5:	89 c3                	mov    ebx,eax
c01013e7:	89 5d f8             	mov    DWORD PTR [ebp-0x8],ebx
c01013ea:	8b 45 f8             	mov    eax,DWORD PTR [ebp-0x8]
c01013ed:	83 c4 10             	add    esp,0x10
c01013f0:	5b                   	pop    ebx
c01013f1:	5d                   	pop    ebp
c01013f2:	c3                   	ret    

c01013f3 <init_pic>:
c01013f3:	55                   	push   ebp
c01013f4:	89 e5                	mov    ebp,esp
c01013f6:	83 ec 08             	sub    esp,0x8
c01013f9:	c7 44 24 04 ff 00 00 	mov    DWORD PTR [esp+0x4],0xff
c0101400:	00 
c0101401:	c7 04 24 21 00 00 00 	mov    DWORD PTR [esp],0x21
c0101408:	e8 c3 ff ff ff       	call   c01013d0 <io_out8>
c010140d:	c7 44 24 04 ff 00 00 	mov    DWORD PTR [esp+0x4],0xff
c0101414:	00 
c0101415:	c7 04 24 a1 00 00 00 	mov    DWORD PTR [esp],0xa1
c010141c:	e8 af ff ff ff       	call   c01013d0 <io_out8>
c0101421:	c7 44 24 04 11 00 00 	mov    DWORD PTR [esp+0x4],0x11
c0101428:	00 
c0101429:	c7 04 24 20 00 00 00 	mov    DWORD PTR [esp],0x20
c0101430:	e8 9b ff ff ff       	call   c01013d0 <io_out8>
c0101435:	c7 44 24 04 20 00 00 	mov    DWORD PTR [esp+0x4],0x20
c010143c:	00 
c010143d:	c7 04 24 21 00 00 00 	mov    DWORD PTR [esp],0x21
c0101444:	e8 87 ff ff ff       	call   c01013d0 <io_out8>
c0101449:	c7 44 24 04 04 00 00 	mov    DWORD PTR [esp+0x4],0x4
c0101450:	00 
c0101451:	c7 04 24 21 00 00 00 	mov    DWORD PTR [esp],0x21
c0101458:	e8 73 ff ff ff       	call   c01013d0 <io_out8>
c010145d:	c7 44 24 04 01 00 00 	mov    DWORD PTR [esp+0x4],0x1
c0101464:	00 
c0101465:	c7 04 24 21 00 00 00 	mov    DWORD PTR [esp],0x21
c010146c:	e8 5f ff ff ff       	call   c01013d0 <io_out8>
c0101471:	c7 44 24 04 11 00 00 	mov    DWORD PTR [esp+0x4],0x11
c0101478:	00 
c0101479:	c7 04 24 a0 00 00 00 	mov    DWORD PTR [esp],0xa0
c0101480:	e8 4b ff ff ff       	call   c01013d0 <io_out8>
c0101485:	c7 44 24 04 28 00 00 	mov    DWORD PTR [esp+0x4],0x28
c010148c:	00 
c010148d:	c7 04 24 a1 00 00 00 	mov    DWORD PTR [esp],0xa1
c0101494:	e8 37 ff ff ff       	call   c01013d0 <io_out8>
c0101499:	c7 44 24 04 02 00 00 	mov    DWORD PTR [esp+0x4],0x2
c01014a0:	00 
c01014a1:	c7 04 24 a1 00 00 00 	mov    DWORD PTR [esp],0xa1
c01014a8:	e8 23 ff ff ff       	call   c01013d0 <io_out8>
c01014ad:	c7 44 24 04 01 00 00 	mov    DWORD PTR [esp+0x4],0x1
c01014b4:	00 
c01014b5:	c7 04 24 a1 00 00 00 	mov    DWORD PTR [esp],0xa1
c01014bc:	e8 0f ff ff ff       	call   c01013d0 <io_out8>
c01014c1:	c7 44 24 04 f8 00 00 	mov    DWORD PTR [esp+0x4],0xf8
c01014c8:	00 
c01014c9:	c7 04 24 21 00 00 00 	mov    DWORD PTR [esp],0x21
c01014d0:	e8 fb fe ff ff       	call   c01013d0 <io_out8>
c01014d5:	c7 44 24 04 ef 00 00 	mov    DWORD PTR [esp+0x4],0xef
c01014dc:	00 
c01014dd:	c7 04 24 a1 00 00 00 	mov    DWORD PTR [esp],0xa1
c01014e4:	e8 e7 fe ff ff       	call   c01013d0 <io_out8>
c01014e9:	c9                   	leave  
c01014ea:	c3                   	ret    

c01014eb <intr0x27_handler>:
c01014eb:	55                   	push   ebp
c01014ec:	89 e5                	mov    ebp,esp
c01014ee:	83 ec 08             	sub    esp,0x8
c01014f1:	c7 44 24 04 20 00 00 	mov    DWORD PTR [esp+0x4],0x20
c01014f8:	00 
c01014f9:	c7 04 24 20 00 00 00 	mov    DWORD PTR [esp],0x20
c0101500:	e8 cb fe ff ff       	call   c01013d0 <io_out8>
c0101505:	c9                   	leave  
c0101506:	c3                   	ret    

c0101507 <idt_desc_init>:
c0101507:	55                   	push   ebp
c0101508:	89 e5                	mov    ebp,esp
c010150a:	83 ec 28             	sub    esp,0x28
c010150d:	c7 45 f4 00 00 00 00 	mov    DWORD PTR [ebp-0xc],0x0
c0101514:	eb 12                	jmp    c0101528 <idt_desc_init+0x21>
c0101516:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0101519:	c7 04 85 e0 b7 10 c0 	mov    DWORD PTR [eax*4-0x3fef4820],0xc010164b
c0101520:	4b 16 10 c0 
c0101524:	83 45 f4 01          	add    DWORD PTR [ebp-0xc],0x1
c0101528:	83 7d f4 4d          	cmp    DWORD PTR [ebp-0xc],0x4d
c010152c:	7e e8                	jle    c0101516 <idt_desc_init+0xf>
c010152e:	c7 05 60 b8 10 c0 24 	mov    DWORD PTR ds:0xc010b860,0xc0104e24
c0101535:	4e 10 c0 
c0101538:	c7 05 64 b8 10 c0 94 	mov    DWORD PTR ds:0xc010b864,0xc0104794
c010153f:	47 10 c0 
c0101542:	c7 05 7c b8 10 c0 eb 	mov    DWORD PTR ds:0xc010b87c,0xc01014eb
c0101549:	14 10 c0 
c010154c:	c7 05 90 b8 10 c0 67 	mov    DWORD PTR ds:0xc010b890,0xc0104a67
c0101553:	4a 10 c0 
c0101556:	c7 45 f4 00 00 00 00 	mov    DWORD PTR [ebp-0xc],0x0
c010155d:	eb 36                	jmp    c0101595 <idt_desc_init+0x8e>
c010155f:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0101562:	8b 04 85 40 78 10 c0 	mov    eax,DWORD PTR [eax*4-0x3fef87c0]
c0101569:	8b 55 f4             	mov    edx,DWORD PTR [ebp-0xc]
c010156c:	c1 e2 03             	shl    edx,0x3
c010156f:	81 c2 60 b5 10 c0    	add    edx,0xc010b560
c0101575:	c7 44 24 0c 8e 00 00 	mov    DWORD PTR [esp+0xc],0x8e
c010157c:	00 
c010157d:	c7 44 24 08 08 00 00 	mov    DWORD PTR [esp+0x8],0x8
c0101584:	00 
c0101585:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c0101589:	89 14 24             	mov    DWORD PTR [esp],edx
c010158c:	e8 30 00 00 00       	call   c01015c1 <set_gatedesc>
c0101591:	83 45 f4 01          	add    DWORD PTR [ebp-0xc],0x1
c0101595:	83 7d f4 4d          	cmp    DWORD PTR [ebp-0xc],0x4d
c0101599:	7e c4                	jle    c010155f <idt_desc_init+0x58>
c010159b:	c7 44 24 0c ee 00 00 	mov    DWORD PTR [esp+0xc],0xee
c01015a2:	00 
c01015a3:	c7 44 24 08 08 00 00 	mov    DWORD PTR [esp+0x8],0x8
c01015aa:	00 
c01015ab:	c7 44 24 04 98 13 10 	mov    DWORD PTR [esp+0x4],0xc0101398
c01015b2:	c0 
c01015b3:	c7 04 24 c8 b7 10 c0 	mov    DWORD PTR [esp],0xc010b7c8
c01015ba:	e8 02 00 00 00       	call   c01015c1 <set_gatedesc>
c01015bf:	c9                   	leave  
c01015c0:	c3                   	ret    

c01015c1 <set_gatedesc>:
c01015c1:	55                   	push   ebp
c01015c2:	89 e5                	mov    ebp,esp
c01015c4:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c01015c7:	89 c2                	mov    edx,eax
c01015c9:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01015cc:	66 89 10             	mov    WORD PTR [eax],dx
c01015cf:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
c01015d2:	89 c2                	mov    edx,eax
c01015d4:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01015d7:	66 89 50 02          	mov    WORD PTR [eax+0x2],dx
c01015db:	8b 45 14             	mov    eax,DWORD PTR [ebp+0x14]
c01015de:	c1 f8 08             	sar    eax,0x8
c01015e1:	89 c2                	mov    edx,eax
c01015e3:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01015e6:	88 50 04             	mov    BYTE PTR [eax+0x4],dl
c01015e9:	8b 45 14             	mov    eax,DWORD PTR [ebp+0x14]
c01015ec:	89 c2                	mov    edx,eax
c01015ee:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01015f1:	88 50 05             	mov    BYTE PTR [eax+0x5],dl
c01015f4:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c01015f7:	c1 e8 10             	shr    eax,0x10
c01015fa:	89 c2                	mov    edx,eax
c01015fc:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01015ff:	66 89 50 06          	mov    WORD PTR [eax+0x6],dx
c0101603:	5d                   	pop    ebp
c0101604:	c3                   	ret    

c0101605 <init_idt>:
c0101605:	55                   	push   ebp
c0101606:	89 e5                	mov    ebp,esp
c0101608:	56                   	push   esi
c0101609:	53                   	push   ebx
c010160a:	83 ec 10             	sub    esp,0x10
c010160d:	e8 f5 fe ff ff       	call   c0101507 <idt_desc_init>
c0101612:	e8 dc fd ff ff       	call   c01013f3 <init_pic>
c0101617:	b8 60 b5 10 c0       	mov    eax,0xc010b560
c010161c:	ba 00 00 00 00       	mov    edx,0x0
c0101621:	0f a4 c2 10          	shld   edx,eax,0x10
c0101625:	c1 e0 10             	shl    eax,0x10
c0101628:	89 c3                	mov    ebx,eax
c010162a:	81 cb 6f 02 00 00    	or     ebx,0x26f
c0101630:	89 d6                	mov    esi,edx
c0101632:	83 ce 00             	or     esi,0x0
c0101635:	89 5d f0             	mov    DWORD PTR [ebp-0x10],ebx
c0101638:	89 75 f4             	mov    DWORD PTR [ebp-0xc],esi
c010163b:	e8 27 02 00 00       	call   c0101867 <exception_init>
c0101640:	0f 01 5d f0          	lidtd  [ebp-0x10]
c0101644:	83 c4 10             	add    esp,0x10
c0101647:	5b                   	pop    ebx
c0101648:	5e                   	pop    esi
c0101649:	5d                   	pop    ebp
c010164a:	c3                   	ret    

c010164b <general_intr_handler>:
c010164b:	55                   	push   ebp
c010164c:	89 e5                	mov    ebp,esp
c010164e:	53                   	push   ebx
c010164f:	81 ec 44 01 00 00    	sub    esp,0x144
c0101655:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0101658:	88 85 e4 fe ff ff    	mov    BYTE PTR [ebp-0x11c],al
c010165e:	e8 fe 02 00 00       	call   c0101961 <intr_disable>
c0101663:	c7 04 24 00 00 00 00 	mov    DWORD PTR [esp],0x0
c010166a:	e8 6e 4b 00 00       	call   c01061dd <set_cursor>
c010166f:	b8 28 7c 00 c0       	mov    eax,0xc0007c28
c0101674:	8b 00                	mov    eax,DWORD PTR [eax]
c0101676:	83 e8 01             	sub    eax,0x1
c0101679:	89 c1                	mov    ecx,eax
c010167b:	b8 24 7c 00 c0       	mov    eax,0xc0007c24
c0101680:	8b 00                	mov    eax,DWORD PTR [eax]
c0101682:	83 e8 01             	sub    eax,0x1
c0101685:	89 c2                	mov    edx,eax
c0101687:	b8 24 7c 00 c0       	mov    eax,0xc0007c24
c010168c:	8b 00                	mov    eax,DWORD PTR [eax]
c010168e:	89 4c 24 18          	mov    DWORD PTR [esp+0x18],ecx
c0101692:	89 54 24 14          	mov    DWORD PTR [esp+0x14],edx
c0101696:	c7 44 24 10 00 00 00 	mov    DWORD PTR [esp+0x10],0x0
c010169d:	00 
c010169e:	c7 44 24 0c 00 00 00 	mov    DWORD PTR [esp+0xc],0x0
c01016a5:	00 
c01016a6:	c7 44 24 08 ff 00 00 	mov    DWORD PTR [esp+0x8],0xff
c01016ad:	00 
c01016ae:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c01016b2:	c7 04 24 00 00 00 e0 	mov    DWORD PTR [esp],0xe0000000
c01016b9:	e8 85 5b 00 00       	call   c0107243 <viewFill>
c01016be:	b8 24 7c 00 c0       	mov    eax,0xc0007c24
c01016c3:	8b 00                	mov    eax,DWORD PTR [eax]
c01016c5:	c7 44 24 14 b0 a1 10 	mov    DWORD PTR [esp+0x14],0xc010a1b0
c01016cc:	c0 
c01016cd:	c7 44 24 10 ff ff ff 	mov    DWORD PTR [esp+0x10],0xffffff
c01016d4:	00 
c01016d5:	c7 44 24 0c 0a 00 00 	mov    DWORD PTR [esp+0xc],0xa
c01016dc:	00 
c01016dd:	c7 44 24 08 0a 00 00 	mov    DWORD PTR [esp+0x8],0xa
c01016e4:	00 
c01016e5:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c01016e9:	c7 04 24 00 00 00 e0 	mov    DWORD PTR [esp],0xe0000000
c01016f0:	e8 d3 5c 00 00       	call   c01073c8 <vput_str>
c01016f5:	0f b6 85 e4 fe ff ff 	movzx  eax,BYTE PTR [ebp-0x11c]
c01016fc:	8b 55 40             	mov    edx,DWORD PTR [ebp+0x40]
c01016ff:	89 54 24 14          	mov    DWORD PTR [esp+0x14],edx
c0101703:	8b 55 44             	mov    edx,DWORD PTR [ebp+0x44]
c0101706:	89 54 24 10          	mov    DWORD PTR [esp+0x10],edx
c010170a:	89 44 24 0c          	mov    DWORD PTR [esp+0xc],eax
c010170e:	c7 44 24 08 d4 9f 10 	mov    DWORD PTR [esp+0x8],0xc0109fd4
c0101715:	c0 
c0101716:	c7 44 24 04 d4 a2 10 	mov    DWORD PTR [esp+0x4],0xc010a2d4
c010171d:	c0 
c010171e:	8d 85 f5 fe ff ff    	lea    eax,[ebp-0x10b]
c0101724:	89 04 24             	mov    DWORD PTR [esp],eax
c0101727:	e8 f0 4c 00 00       	call   c010641c <sprintf>
c010172c:	8d 85 f5 fe ff ff    	lea    eax,[ebp-0x10b]
c0101732:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c0101736:	c7 04 24 17 00 00 00 	mov    DWORD PTR [esp],0x17
c010173d:	e8 19 47 00 00       	call   c0105e5b <put_str>
c0101742:	b8 24 7c 00 c0       	mov    eax,0xc0007c24
c0101747:	8b 00                	mov    eax,DWORD PTR [eax]
c0101749:	8d 95 f5 fe ff ff    	lea    edx,[ebp-0x10b]
c010174f:	89 54 24 14          	mov    DWORD PTR [esp+0x14],edx
c0101753:	c7 44 24 10 ff ff ff 	mov    DWORD PTR [esp+0x10],0xffffff
c010175a:	00 
c010175b:	c7 44 24 0c 5a 00 00 	mov    DWORD PTR [esp+0xc],0x5a
c0101762:	00 
c0101763:	c7 44 24 08 0a 00 00 	mov    DWORD PTR [esp+0x8],0xa
c010176a:	00 
c010176b:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c010176f:	c7 04 24 00 00 00 e0 	mov    DWORD PTR [esp],0xe0000000
c0101776:	e8 4d 5c 00 00       	call   c01073c8 <vput_str>
c010177b:	80 bd e4 fe ff ff 13 	cmp    BYTE PTR [ebp-0x11c],0x13
c0101782:	77 5f                	ja     c01017e3 <general_intr_handler+0x198>
c0101784:	0f b6 85 e4 fe ff ff 	movzx  eax,BYTE PTR [ebp-0x11c]
c010178b:	8b 04 85 20 b4 10 c0 	mov    eax,DWORD PTR [eax*4-0x3fef4be0]
c0101792:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c0101796:	c7 04 24 14 00 00 00 	mov    DWORD PTR [esp],0x14
c010179d:	e8 b9 46 00 00       	call   c0105e5b <put_str>
c01017a2:	0f b6 85 e4 fe ff ff 	movzx  eax,BYTE PTR [ebp-0x11c]
c01017a9:	8b 14 85 20 b4 10 c0 	mov    edx,DWORD PTR [eax*4-0x3fef4be0]
c01017b0:	b8 24 7c 00 c0       	mov    eax,0xc0007c24
c01017b5:	8b 00                	mov    eax,DWORD PTR [eax]
c01017b7:	89 54 24 14          	mov    DWORD PTR [esp+0x14],edx
c01017bb:	c7 44 24 10 ff 00 ff 	mov    DWORD PTR [esp+0x10],0xff00ff
c01017c2:	00 
c01017c3:	c7 44 24 0c 8a 00 00 	mov    DWORD PTR [esp+0xc],0x8a
c01017ca:	00 
c01017cb:	c7 44 24 08 12 00 00 	mov    DWORD PTR [esp+0x8],0x12
c01017d2:	00 
c01017d3:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c01017d7:	c7 04 24 00 00 00 e0 	mov    DWORD PTR [esp],0xe0000000
c01017de:	e8 e5 5b 00 00       	call   c01073c8 <vput_str>
c01017e3:	c7 45 f4 00 00 00 00 	mov    DWORD PTR [ebp-0xc],0x0
c01017ea:	80 bd e4 fe ff ff 0e 	cmp    BYTE PTR [ebp-0x11c],0xe
c01017f1:	75 72                	jne    c0101865 <general_intr_handler+0x21a>
c01017f3:	0f 20 d3             	mov    ebx,cr2
c01017f6:	89 5d f4             	mov    DWORD PTR [ebp-0xc],ebx
c01017f9:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c01017fc:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
c0101800:	c7 44 24 04 fb a2 10 	mov    DWORD PTR [esp+0x4],0xc010a2fb
c0101807:	c0 
c0101808:	8d 85 f5 fe ff ff    	lea    eax,[ebp-0x10b]
c010180e:	89 04 24             	mov    DWORD PTR [esp],eax
c0101811:	e8 06 4c 00 00       	call   c010641c <sprintf>
c0101816:	8d 85 f5 fe ff ff    	lea    eax,[ebp-0x10b]
c010181c:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c0101820:	c7 04 24 17 00 00 00 	mov    DWORD PTR [esp],0x17
c0101827:	e8 2f 46 00 00       	call   c0105e5b <put_str>
c010182c:	b8 24 7c 00 c0       	mov    eax,0xc0007c24
c0101831:	8b 00                	mov    eax,DWORD PTR [eax]
c0101833:	8d 95 f5 fe ff ff    	lea    edx,[ebp-0x10b]
c0101839:	89 54 24 14          	mov    DWORD PTR [esp+0x14],edx
c010183d:	c7 44 24 10 ff ff ff 	mov    DWORD PTR [esp+0x10],0xffffff
c0101844:	00 
c0101845:	c7 44 24 0c 9a 00 00 	mov    DWORD PTR [esp+0xc],0x9a
c010184c:	00 
c010184d:	c7 44 24 08 0a 00 00 	mov    DWORD PTR [esp+0x8],0xa
c0101854:	00 
c0101855:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c0101859:	c7 04 24 00 00 00 e0 	mov    DWORD PTR [esp],0xe0000000
c0101860:	e8 63 5b 00 00       	call   c01073c8 <vput_str>
c0101865:	eb fe                	jmp    c0101865 <general_intr_handler+0x21a>

c0101867 <exception_init>:
c0101867:	55                   	push   ebp
c0101868:	89 e5                	mov    ebp,esp
c010186a:	c7 05 20 b4 10 c0 11 	mov    DWORD PTR ds:0xc010b420,0xc010a311
c0101871:	a3 10 c0 
c0101874:	c7 05 24 b4 10 c0 22 	mov    DWORD PTR ds:0xc010b424,0xc010a322
c010187b:	a3 10 c0 
c010187e:	c7 05 28 b4 10 c0 36 	mov    DWORD PTR ds:0xc010b428,0xc010a336
c0101885:	a3 10 c0 
c0101888:	c7 05 2c b4 10 c0 44 	mov    DWORD PTR ds:0xc010b42c,0xc010a344
c010188f:	a3 10 c0 
c0101892:	c7 05 30 b4 10 c0 5d 	mov    DWORD PTR ds:0xc010b430,0xc010a35d
c0101899:	a3 10 c0 
c010189c:	c7 05 34 b4 10 c0 74 	mov    DWORD PTR ds:0xc010b434,0xc010a374
c01018a3:	a3 10 c0 
c01018a6:	c7 05 38 b4 10 c0 97 	mov    DWORD PTR ds:0xc010b438,0xc010a397
c01018ad:	a3 10 c0 
c01018b0:	c7 05 3c b4 10 c0 b4 	mov    DWORD PTR ds:0xc010b43c,0xc010a3b4
c01018b7:	a3 10 c0 
c01018ba:	c7 05 40 b4 10 c0 d7 	mov    DWORD PTR ds:0xc010b440,0xc010a3d7
c01018c1:	a3 10 c0 
c01018c4:	c7 05 44 b4 10 c0 f2 	mov    DWORD PTR ds:0xc010b444,0xc010a3f2
c01018cb:	a3 10 c0 
c01018ce:	c7 05 48 b4 10 c0 0e 	mov    DWORD PTR ds:0xc010b448,0xc010a40e
c01018d5:	a4 10 c0 
c01018d8:	c7 05 4c b4 10 c0 28 	mov    DWORD PTR ds:0xc010b44c,0xc010a428
c01018df:	a4 10 c0 
c01018e2:	c7 05 50 b4 10 c0 40 	mov    DWORD PTR ds:0xc010b450,0xc010a440
c01018e9:	a4 10 c0 
c01018ec:	c7 05 54 b4 10 c0 5c 	mov    DWORD PTR ds:0xc010b454,0xc010a45c
c01018f3:	a4 10 c0 
c01018f6:	c7 05 58 b4 10 c0 7d 	mov    DWORD PTR ds:0xc010b458,0xc010a47d
c01018fd:	a4 10 c0 
c0101900:	c7 05 5c b4 10 c0 96 	mov    DWORD PTR ds:0xc010b45c,0xc010a496
c0101907:	a4 10 c0 
c010190a:	c7 05 60 b4 10 c0 a0 	mov    DWORD PTR ds:0xc010b460,0xc010a4a0
c0101911:	a4 10 c0 
c0101914:	c7 05 64 b4 10 c0 c1 	mov    DWORD PTR ds:0xc010b464,0xc010a4c1
c010191b:	a4 10 c0 
c010191e:	c7 05 68 b4 10 c0 df 	mov    DWORD PTR ds:0xc010b468,0xc010a4df
c0101925:	a4 10 c0 
c0101928:	c7 05 6c b4 10 c0 fc 	mov    DWORD PTR ds:0xc010b46c,0xc010a4fc
c010192f:	a4 10 c0 
c0101932:	5d                   	pop    ebp
c0101933:	c3                   	ret    

c0101934 <intr_enable>:
c0101934:	55                   	push   ebp
c0101935:	89 e5                	mov    ebp,esp
c0101937:	83 ec 18             	sub    esp,0x18
c010193a:	e8 69 00 00 00       	call   c01019a8 <intr_get_status>
c010193f:	83 f8 01             	cmp    eax,0x1
c0101942:	75 0c                	jne    c0101950 <intr_enable+0x1c>
c0101944:	c7 45 f4 01 00 00 00 	mov    DWORD PTR [ebp-0xc],0x1
c010194b:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c010194e:	eb 0f                	jmp    c010195f <intr_enable+0x2b>
c0101950:	c7 45 f4 00 00 00 00 	mov    DWORD PTR [ebp-0xc],0x0
c0101957:	e8 68 fa ff ff       	call   c01013c4 <io_sti>
c010195c:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c010195f:	c9                   	leave  
c0101960:	c3                   	ret    

c0101961 <intr_disable>:
c0101961:	55                   	push   ebp
c0101962:	89 e5                	mov    ebp,esp
c0101964:	83 ec 18             	sub    esp,0x18
c0101967:	e8 3c 00 00 00       	call   c01019a8 <intr_get_status>
c010196c:	83 f8 01             	cmp    eax,0x1
c010196f:	75 11                	jne    c0101982 <intr_disable+0x21>
c0101971:	c7 45 f4 01 00 00 00 	mov    DWORD PTR [ebp-0xc],0x1
c0101978:	e8 4d fa ff ff       	call   c01013ca <io_cli>
c010197d:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0101980:	eb 0a                	jmp    c010198c <intr_disable+0x2b>
c0101982:	c7 45 f4 00 00 00 00 	mov    DWORD PTR [ebp-0xc],0x0
c0101989:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c010198c:	c9                   	leave  
c010198d:	c3                   	ret    

c010198e <intr_set_status>:
c010198e:	55                   	push   ebp
c010198f:	89 e5                	mov    ebp,esp
c0101991:	83 ec 08             	sub    esp,0x8
c0101994:	83 7d 08 01          	cmp    DWORD PTR [ebp+0x8],0x1
c0101998:	75 07                	jne    c01019a1 <intr_set_status+0x13>
c010199a:	e8 95 ff ff ff       	call   c0101934 <intr_enable>
c010199f:	eb 05                	jmp    c01019a6 <intr_set_status+0x18>
c01019a1:	e8 bb ff ff ff       	call   c0101961 <intr_disable>
c01019a6:	c9                   	leave  
c01019a7:	c3                   	ret    

c01019a8 <intr_get_status>:
c01019a8:	55                   	push   ebp
c01019a9:	89 e5                	mov    ebp,esp
c01019ab:	e8 2c fa ff ff       	call   c01013dc <get_flages>
c01019b0:	25 00 02 00 00       	and    eax,0x200
c01019b5:	85 c0                	test   eax,eax
c01019b7:	0f 95 c0             	setne  al
c01019ba:	0f b6 c0             	movzx  eax,al
c01019bd:	5d                   	pop    ebp
c01019be:	c3                   	ret    
	...

c01019c0 <init_block>:
c01019c0:	55                   	push   ebp
c01019c1:	89 e5                	mov    ebp,esp
c01019c3:	53                   	push   ebx
c01019c4:	83 ec 34             	sub    esp,0x34
c01019c7:	c7 45 f0 20 00 00 00 	mov    DWORD PTR [ebp-0x10],0x20
c01019ce:	c7 45 f4 00 00 00 00 	mov    DWORD PTR [ebp-0xc],0x0
c01019d5:	eb 4a                	jmp    c0101a21 <init_block+0x61>
c01019d7:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c01019da:	c1 e0 05             	shl    eax,0x5
c01019dd:	03 45 08             	add    eax,DWORD PTR [ebp+0x8]
c01019e0:	8b 55 f0             	mov    edx,DWORD PTR [ebp-0x10]
c01019e3:	89 10                	mov    DWORD PTR [eax],edx
c01019e5:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c01019e8:	c1 e0 05             	shl    eax,0x5
c01019eb:	89 c1                	mov    ecx,eax
c01019ed:	03 4d 08             	add    ecx,DWORD PTR [ebp+0x8]
c01019f0:	8b 55 f0             	mov    edx,DWORD PTR [ebp-0x10]
c01019f3:	89 55 e4             	mov    DWORD PTR [ebp-0x1c],edx
c01019f6:	b8 f4 0f 00 00       	mov    eax,0xff4
c01019fb:	ba 00 00 00 00       	mov    edx,0x0
c0101a00:	f7 75 e4             	div    DWORD PTR [ebp-0x1c]
c0101a03:	89 41 04             	mov    DWORD PTR [ecx+0x4],eax
c0101a06:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0101a09:	c1 e0 05             	shl    eax,0x5
c0101a0c:	03 45 08             	add    eax,DWORD PTR [ebp+0x8]
c0101a0f:	83 c0 08             	add    eax,0x8
c0101a12:	89 04 24             	mov    DWORD PTR [esp],eax
c0101a15:	e8 1e 41 00 00       	call   c0105b38 <list_init>
c0101a1a:	d1 65 f0             	shl    DWORD PTR [ebp-0x10],1
c0101a1d:	83 45 f4 01          	add    DWORD PTR [ebp-0xc],0x1
c0101a21:	83 7d f4 05          	cmp    DWORD PTR [ebp-0xc],0x5
c0101a25:	7e b0                	jle    c01019d7 <init_block+0x17>
c0101a27:	83 c4 34             	add    esp,0x34
c0101a2a:	5b                   	pop    ebx
c0101a2b:	5d                   	pop    ebp
c0101a2c:	c3                   	ret    

c0101a2d <arena2block>:
c0101a2d:	55                   	push   ebp
c0101a2e:	89 e5                	mov    ebp,esp
c0101a30:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0101a33:	8b 00                	mov    eax,DWORD PTR [eax]
c0101a35:	8b 10                	mov    edx,DWORD PTR [eax]
c0101a37:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c0101a3a:	0f af d0             	imul   edx,eax
c0101a3d:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0101a40:	01 d0                	add    eax,edx
c0101a42:	83 c0 0c             	add    eax,0xc
c0101a45:	5d                   	pop    ebp
c0101a46:	c3                   	ret    

c0101a47 <block2arena>:
c0101a47:	55                   	push   ebp
c0101a48:	89 e5                	mov    ebp,esp
c0101a4a:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0101a4d:	25 00 f0 ff ff       	and    eax,0xfffff000
c0101a52:	5d                   	pop    ebp
c0101a53:	c3                   	ret    

c0101a54 <sys_malloc>:
c0101a54:	55                   	push   ebp
c0101a55:	89 e5                	mov    ebp,esp
c0101a57:	83 ec 58             	sub    esp,0x58
c0101a5a:	c7 04 24 3f a5 10 c0 	mov    DWORD PTR [esp],0xc010a53f
c0101a61:	e8 22 f2 ff ff       	call   c0100c88 <log>
c0101a66:	e8 08 1c 00 00       	call   c0103673 <running_thread>
c0101a6b:	89 45 dc             	mov    DWORD PTR [ebp-0x24],eax
c0101a6e:	8b 45 dc             	mov    eax,DWORD PTR [ebp-0x24]
c0101a71:	8b 40 3c             	mov    eax,DWORD PTR [eax+0x3c]
c0101a74:	85 c0                	test   eax,eax
c0101a76:	75 22                	jne    c0101a9a <sys_malloc+0x46>
c0101a78:	c7 45 f4 01 00 00 00 	mov    DWORD PTR [ebp-0xc],0x1
c0101a7f:	a1 54 18 11 c0       	mov    eax,ds:0xc0111854
c0101a84:	c1 e0 0c             	shl    eax,0xc
c0101a87:	89 45 ec             	mov    DWORD PTR [ebp-0x14],eax
c0101a8a:	c7 45 f0 20 18 11 c0 	mov    DWORD PTR [ebp-0x10],0xc0111820
c0101a91:	c7 45 e8 60 d8 10 c0 	mov    DWORD PTR [ebp-0x18],0xc010d860
c0101a98:	eb 22                	jmp    c0101abc <sys_malloc+0x68>
c0101a9a:	c7 45 f4 02 00 00 00 	mov    DWORD PTR [ebp-0xc],0x2
c0101aa1:	a1 54 d9 10 c0       	mov    eax,ds:0xc010d954
c0101aa6:	c1 e0 0c             	shl    eax,0xc
c0101aa9:	89 45 ec             	mov    DWORD PTR [ebp-0x14],eax
c0101aac:	c7 45 f0 20 d9 10 c0 	mov    DWORD PTR [ebp-0x10],0xc010d920
c0101ab3:	8b 45 dc             	mov    eax,DWORD PTR [ebp-0x24]
c0101ab6:	83 c0 7c             	add    eax,0x7c
c0101ab9:	89 45 e8             	mov    DWORD PTR [ebp-0x18],eax
c0101abc:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0101abf:	3b 45 ec             	cmp    eax,DWORD PTR [ebp-0x14]
c0101ac2:	7e 0a                	jle    c0101ace <sys_malloc+0x7a>
c0101ac4:	b8 00 00 00 00       	mov    eax,0x0
c0101ac9:	e9 b3 02 00 00       	jmp    c0101d81 <sys_malloc+0x32d>
c0101ace:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c0101ad1:	89 04 24             	mov    DWORD PTR [esp],eax
c0101ad4:	e8 09 19 00 00       	call   c01033e2 <lock_acquire>
c0101ad9:	81 7d 08 ff 03 00 00 	cmp    DWORD PTR [ebp+0x8],0x3ff
c0101ae0:	0f 8f ba 01 00 00    	jg     c0101ca0 <sys_malloc+0x24c>
c0101ae6:	c7 04 24 4d a5 10 c0 	mov    DWORD PTR [esp],0xc010a54d
c0101aed:	e8 96 f1 ff ff       	call   c0100c88 <log>
c0101af2:	c7 45 e4 00 00 00 00 	mov    DWORD PTR [ebp-0x1c],0x0
c0101af9:	eb 17                	jmp    c0101b12 <sys_malloc+0xbe>
c0101afb:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c0101afe:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
c0101b01:	c1 e0 05             	shl    eax,0x5
c0101b04:	03 45 e8             	add    eax,DWORD PTR [ebp-0x18]
c0101b07:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
c0101b0a:	39 c2                	cmp    edx,eax
c0101b0c:	76 0c                	jbe    c0101b1a <sys_malloc+0xc6>
c0101b0e:	83 45 e4 01          	add    DWORD PTR [ebp-0x1c],0x1
c0101b12:	83 7d e4 05          	cmp    DWORD PTR [ebp-0x1c],0x5
c0101b16:	7e e3                	jle    c0101afb <sys_malloc+0xa7>
c0101b18:	eb 01                	jmp    c0101b1b <sys_malloc+0xc7>
c0101b1a:	90                   	nop
c0101b1b:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
c0101b1e:	c1 e0 05             	shl    eax,0x5
c0101b21:	03 45 e8             	add    eax,DWORD PTR [ebp-0x18]
c0101b24:	83 c0 08             	add    eax,0x8
c0101b27:	89 04 24             	mov    DWORD PTR [esp],eax
c0101b2a:	e8 bd 41 00 00       	call   c0105cec <list_empty>
c0101b2f:	85 c0                	test   eax,eax
c0101b31:	0f 84 1f 01 00 00    	je     c0101c56 <sys_malloc+0x202>
c0101b37:	c7 44 24 04 01 00 00 	mov    DWORD PTR [esp+0x4],0x1
c0101b3e:	00 
c0101b3f:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0101b42:	89 04 24             	mov    DWORD PTR [esp],eax
c0101b45:	e8 a5 0e 00 00       	call   c01029ef <page_alloc>
c0101b4a:	89 45 d8             	mov    DWORD PTR [ebp-0x28],eax
c0101b4d:	83 7d d8 00          	cmp    DWORD PTR [ebp-0x28],0x0
c0101b51:	75 21                	jne    c0101b74 <sys_malloc+0x120>
c0101b53:	c7 04 24 62 a5 10 c0 	mov    DWORD PTR [esp],0xc010a562
c0101b5a:	e8 29 f1 ff ff       	call   c0100c88 <log>
c0101b5f:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c0101b62:	89 04 24             	mov    DWORD PTR [esp],eax
c0101b65:	e8 fc 18 00 00       	call   c0103466 <lock_release>
c0101b6a:	b8 00 00 00 00       	mov    eax,0x0
c0101b6f:	e9 0d 02 00 00       	jmp    c0101d81 <sys_malloc+0x32d>
c0101b74:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
c0101b77:	c1 e0 05             	shl    eax,0x5
c0101b7a:	89 c2                	mov    edx,eax
c0101b7c:	03 55 e8             	add    edx,DWORD PTR [ebp-0x18]
c0101b7f:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
c0101b82:	89 10                	mov    DWORD PTR [eax],edx
c0101b84:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
c0101b87:	c7 40 08 00 00 00 00 	mov    DWORD PTR [eax+0x8],0x0
c0101b8e:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
c0101b91:	c1 e0 05             	shl    eax,0x5
c0101b94:	03 45 e8             	add    eax,DWORD PTR [ebp-0x18]
c0101b97:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
c0101b9a:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
c0101b9d:	89 50 04             	mov    DWORD PTR [eax+0x4],edx
c0101ba0:	e8 bc fd ff ff       	call   c0101961 <intr_disable>
c0101ba5:	89 45 d4             	mov    DWORD PTR [ebp-0x2c],eax
c0101ba8:	c7 45 e0 00 00 00 00 	mov    DWORD PTR [ebp-0x20],0x0
c0101baf:	e9 80 00 00 00       	jmp    c0101c34 <sys_malloc+0x1e0>
c0101bb4:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
c0101bb7:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c0101bbb:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
c0101bbe:	89 04 24             	mov    DWORD PTR [esp],eax
c0101bc1:	e8 67 fe ff ff       	call   c0101a2d <arena2block>
c0101bc6:	89 45 d0             	mov    DWORD PTR [ebp-0x30],eax
c0101bc9:	8b 45 d0             	mov    eax,DWORD PTR [ebp-0x30]
c0101bcc:	8b 55 d0             	mov    edx,DWORD PTR [ebp-0x30]
c0101bcf:	89 50 04             	mov    DWORD PTR [eax+0x4],edx
c0101bd2:	8b 45 d0             	mov    eax,DWORD PTR [ebp-0x30]
c0101bd5:	8b 55 d8             	mov    edx,DWORD PTR [ebp-0x28]
c0101bd8:	8b 12                	mov    edx,DWORD PTR [edx]
c0101bda:	83 c2 08             	add    edx,0x8
c0101bdd:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c0101be1:	89 14 24             	mov    DWORD PTR [esp],edx
c0101be4:	e8 4c 40 00 00       	call   c0105c35 <list_find>
c0101be9:	85 c0                	test   eax,eax
c0101beb:	74 2c                	je     c0101c19 <sys_malloc+0x1c5>
c0101bed:	c7 44 24 10 70 a5 10 	mov    DWORD PTR [esp+0x10],0xc010a570
c0101bf4:	c0 
c0101bf5:	c7 44 24 0c 4f a6 10 	mov    DWORD PTR [esp+0xc],0xc010a64f
c0101bfc:	c0 
c0101bfd:	c7 44 24 08 63 00 00 	mov    DWORD PTR [esp+0x8],0x63
c0101c04:	00 
c0101c05:	c7 44 24 04 9f a5 10 	mov    DWORD PTR [esp+0x4],0xc010a59f
c0101c0c:	c0 
c0101c0d:	c7 04 24 9f a5 10 c0 	mov    DWORD PTR [esp],0xc010a59f
c0101c14:	e8 cb ef ff ff       	call   c0100be4 <panic_spin>
c0101c19:	8b 45 d0             	mov    eax,DWORD PTR [ebp-0x30]
c0101c1c:	8b 55 d8             	mov    edx,DWORD PTR [ebp-0x28]
c0101c1f:	8b 12                	mov    edx,DWORD PTR [edx]
c0101c21:	83 c2 08             	add    edx,0x8
c0101c24:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c0101c28:	89 14 24             	mov    DWORD PTR [esp],edx
c0101c2b:	e8 93 3f 00 00       	call   c0105bc3 <list_append>
c0101c30:	83 45 e0 01          	add    DWORD PTR [ebp-0x20],0x1
c0101c34:	8b 55 e0             	mov    edx,DWORD PTR [ebp-0x20]
c0101c37:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
c0101c3a:	c1 e0 05             	shl    eax,0x5
c0101c3d:	03 45 e8             	add    eax,DWORD PTR [ebp-0x18]
c0101c40:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
c0101c43:	39 c2                	cmp    edx,eax
c0101c45:	0f 82 69 ff ff ff    	jb     c0101bb4 <sys_malloc+0x160>
c0101c4b:	8b 45 d4             	mov    eax,DWORD PTR [ebp-0x2c]
c0101c4e:	89 04 24             	mov    DWORD PTR [esp],eax
c0101c51:	e8 38 fd ff ff       	call   c010198e <intr_set_status>
c0101c56:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
c0101c59:	c1 e0 05             	shl    eax,0x5
c0101c5c:	03 45 e8             	add    eax,DWORD PTR [ebp-0x18]
c0101c5f:	83 c0 08             	add    eax,0x8
c0101c62:	89 04 24             	mov    DWORD PTR [esp],eax
c0101c65:	e8 ac 3f 00 00       	call   c0105c16 <list_pop>
c0101c6a:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
c0101c6d:	89 45 d0             	mov    DWORD PTR [ebp-0x30],eax
c0101c70:	8b 45 d0             	mov    eax,DWORD PTR [ebp-0x30]
c0101c73:	89 04 24             	mov    DWORD PTR [esp],eax
c0101c76:	e8 cc fd ff ff       	call   c0101a47 <block2arena>
c0101c7b:	89 45 d8             	mov    DWORD PTR [ebp-0x28],eax
c0101c7e:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
c0101c81:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
c0101c84:	8d 50 ff             	lea    edx,[eax-0x1]
c0101c87:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
c0101c8a:	89 50 04             	mov    DWORD PTR [eax+0x4],edx
c0101c8d:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c0101c90:	89 04 24             	mov    DWORD PTR [esp],eax
c0101c93:	e8 ce 17 00 00       	call   c0103466 <lock_release>
c0101c98:	8b 45 d0             	mov    eax,DWORD PTR [ebp-0x30]
c0101c9b:	e9 e1 00 00 00       	jmp    c0101d81 <sys_malloc+0x32d>
c0101ca0:	c7 04 24 ae a5 10 c0 	mov    DWORD PTR [esp],0xc010a5ae
c0101ca7:	e8 dc ef ff ff       	call   c0100c88 <log>
c0101cac:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0101caf:	05 0b 10 00 00       	add    eax,0x100b
c0101cb4:	c1 e8 0c             	shr    eax,0xc
c0101cb7:	89 45 cc             	mov    DWORD PTR [ebp-0x34],eax
c0101cba:	8b 45 cc             	mov    eax,DWORD PTR [ebp-0x34]
c0101cbd:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c0101cc1:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0101cc4:	89 04 24             	mov    DWORD PTR [esp],eax
c0101cc7:	e8 23 0d 00 00       	call   c01029ef <page_alloc>
c0101ccc:	89 45 d8             	mov    DWORD PTR [ebp-0x28],eax
c0101ccf:	83 7d d8 00          	cmp    DWORD PTR [ebp-0x28],0x0
c0101cd3:	75 15                	jne    c0101cea <sys_malloc+0x296>
c0101cd5:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c0101cd8:	89 04 24             	mov    DWORD PTR [esp],eax
c0101cdb:	e8 86 17 00 00       	call   c0103466 <lock_release>
c0101ce0:	b8 00 00 00 00       	mov    eax,0x0
c0101ce5:	e9 97 00 00 00       	jmp    c0101d81 <sys_malloc+0x32d>
c0101cea:	8b 45 cc             	mov    eax,DWORD PTR [ebp-0x34]
c0101ced:	c1 e0 0c             	shl    eax,0xc
c0101cf0:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
c0101cf4:	c7 44 24 04 00 00 00 	mov    DWORD PTR [esp+0x4],0x0
c0101cfb:	00 
c0101cfc:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
c0101cff:	89 04 24             	mov    DWORD PTR [esp],eax
c0101d02:	e8 39 45 00 00       	call   c0106240 <memset>
c0101d07:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
c0101d0a:	c7 00 00 00 00 00    	mov    DWORD PTR [eax],0x0
c0101d10:	8b 55 cc             	mov    edx,DWORD PTR [ebp-0x34]
c0101d13:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
c0101d16:	89 50 04             	mov    DWORD PTR [eax+0x4],edx
c0101d19:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
c0101d1c:	c7 40 08 01 00 00 00 	mov    DWORD PTR [eax+0x8],0x1
c0101d23:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
c0101d26:	8b 00                	mov    eax,DWORD PTR [eax]
c0101d28:	85 c0                	test   eax,eax
c0101d2a:	75 18                	jne    c0101d44 <sys_malloc+0x2f0>
c0101d2c:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
c0101d2f:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
c0101d32:	8b 45 cc             	mov    eax,DWORD PTR [ebp-0x34]
c0101d35:	39 c2                	cmp    edx,eax
c0101d37:	75 0b                	jne    c0101d44 <sys_malloc+0x2f0>
c0101d39:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
c0101d3c:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
c0101d3f:	83 f8 01             	cmp    eax,0x1
c0101d42:	74 2c                	je     c0101d70 <sys_malloc+0x31c>
c0101d44:	c7 44 24 10 c4 a5 10 	mov    DWORD PTR [esp+0x10],0xc010a5c4
c0101d4b:	c0 
c0101d4c:	c7 44 24 0c 4f a6 10 	mov    DWORD PTR [esp+0xc],0xc010a64f
c0101d53:	c0 
c0101d54:	c7 44 24 08 7f 00 00 	mov    DWORD PTR [esp+0x8],0x7f
c0101d5b:	00 
c0101d5c:	c7 44 24 04 9f a5 10 	mov    DWORD PTR [esp+0x4],0xc010a59f
c0101d63:	c0 
c0101d64:	c7 04 24 9f a5 10 c0 	mov    DWORD PTR [esp],0xc010a59f
c0101d6b:	e8 74 ee ff ff       	call   c0100be4 <panic_spin>
c0101d70:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c0101d73:	89 04 24             	mov    DWORD PTR [esp],eax
c0101d76:	e8 eb 16 00 00       	call   c0103466 <lock_release>
c0101d7b:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
c0101d7e:	83 c0 0c             	add    eax,0xc
c0101d81:	c9                   	leave  
c0101d82:	c3                   	ret    

c0101d83 <sys_free>:
c0101d83:	55                   	push   ebp
c0101d84:	89 e5                	mov    ebp,esp
c0101d86:	83 ec 48             	sub    esp,0x48
c0101d89:	c7 04 24 fc a5 10 c0 	mov    DWORD PTR [esp],0xc010a5fc
c0101d90:	e8 f3 ee ff ff       	call   c0100c88 <log>
c0101d95:	83 7d 08 00          	cmp    DWORD PTR [ebp+0x8],0x0
c0101d99:	0f 84 65 01 00 00    	je     c0101f04 <sys_free+0x181>
c0101d9f:	e8 cf 18 00 00       	call   c0103673 <running_thread>
c0101da4:	8b 40 3c             	mov    eax,DWORD PTR [eax+0x3c]
c0101da7:	85 c0                	test   eax,eax
c0101da9:	75 10                	jne    c0101dbb <sys_free+0x38>
c0101dab:	c7 45 f4 01 00 00 00 	mov    DWORD PTR [ebp-0xc],0x1
c0101db2:	c7 45 f0 20 18 11 c0 	mov    DWORD PTR [ebp-0x10],0xc0111820
c0101db9:	eb 0e                	jmp    c0101dc9 <sys_free+0x46>
c0101dbb:	c7 45 f4 02 00 00 00 	mov    DWORD PTR [ebp-0xc],0x2
c0101dc2:	c7 45 f0 20 d9 10 c0 	mov    DWORD PTR [ebp-0x10],0xc010d920
c0101dc9:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c0101dcc:	89 04 24             	mov    DWORD PTR [esp],eax
c0101dcf:	e8 0e 16 00 00       	call   c01033e2 <lock_acquire>
c0101dd4:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0101dd7:	89 45 e8             	mov    DWORD PTR [ebp-0x18],eax
c0101dda:	8b 45 e8             	mov    eax,DWORD PTR [ebp-0x18]
c0101ddd:	89 04 24             	mov    DWORD PTR [esp],eax
c0101de0:	e8 62 fc ff ff       	call   c0101a47 <block2arena>
c0101de5:	89 45 e4             	mov    DWORD PTR [ebp-0x1c],eax
c0101de8:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
c0101deb:	8b 00                	mov    eax,DWORD PTR [eax]
c0101ded:	85 c0                	test   eax,eax
c0101def:	75 2c                	jne    c0101e1d <sys_free+0x9a>
c0101df1:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
c0101df4:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
c0101df7:	83 f8 01             	cmp    eax,0x1
c0101dfa:	75 21                	jne    c0101e1d <sys_free+0x9a>
c0101dfc:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
c0101dff:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
c0101e02:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
c0101e06:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
c0101e09:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c0101e0d:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0101e10:	89 04 24             	mov    DWORD PTR [esp],eax
c0101e13:	e8 af 11 00 00       	call   c0102fc7 <page_free>
c0101e18:	e9 d9 00 00 00       	jmp    c0101ef6 <sys_free+0x173>
c0101e1d:	8b 45 e8             	mov    eax,DWORD PTR [ebp-0x18]
c0101e20:	8b 55 e4             	mov    edx,DWORD PTR [ebp-0x1c]
c0101e23:	8b 12                	mov    edx,DWORD PTR [edx]
c0101e25:	83 c2 08             	add    edx,0x8
c0101e28:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c0101e2c:	89 14 24             	mov    DWORD PTR [esp],edx
c0101e2f:	e8 8f 3d 00 00       	call   c0105bc3 <list_append>
c0101e34:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
c0101e37:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
c0101e3a:	8d 50 01             	lea    edx,[eax+0x1]
c0101e3d:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
c0101e40:	89 50 04             	mov    DWORD PTR [eax+0x4],edx
c0101e43:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
c0101e46:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
c0101e49:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
c0101e4c:	8b 00                	mov    eax,DWORD PTR [eax]
c0101e4e:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
c0101e51:	39 c2                	cmp    edx,eax
c0101e53:	0f 85 9d 00 00 00    	jne    c0101ef6 <sys_free+0x173>
c0101e59:	c7 45 ec 00 00 00 00 	mov    DWORD PTR [ebp-0x14],0x0
c0101e60:	eb 6b                	jmp    c0101ecd <sys_free+0x14a>
c0101e62:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
c0101e65:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c0101e69:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
c0101e6c:	89 04 24             	mov    DWORD PTR [esp],eax
c0101e6f:	e8 b9 fb ff ff       	call   c0101a2d <arena2block>
c0101e74:	89 45 e0             	mov    DWORD PTR [ebp-0x20],eax
c0101e77:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
c0101e7a:	8b 55 e4             	mov    edx,DWORD PTR [ebp-0x1c]
c0101e7d:	8b 12                	mov    edx,DWORD PTR [edx]
c0101e7f:	83 c2 08             	add    edx,0x8
c0101e82:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c0101e86:	89 14 24             	mov    DWORD PTR [esp],edx
c0101e89:	e8 a7 3d 00 00       	call   c0105c35 <list_find>
c0101e8e:	85 c0                	test   eax,eax
c0101e90:	75 2c                	jne    c0101ebe <sys_free+0x13b>
c0101e92:	c7 44 24 10 08 a6 10 	mov    DWORD PTR [esp+0x10],0xc010a608
c0101e99:	c0 
c0101e9a:	c7 44 24 0c 46 a6 10 	mov    DWORD PTR [esp+0xc],0xc010a646
c0101ea1:	c0 
c0101ea2:	c7 44 24 08 ae 00 00 	mov    DWORD PTR [esp+0x8],0xae
c0101ea9:	00 
c0101eaa:	c7 44 24 04 9f a5 10 	mov    DWORD PTR [esp+0x4],0xc010a59f
c0101eb1:	c0 
c0101eb2:	c7 04 24 9f a5 10 c0 	mov    DWORD PTR [esp],0xc010a59f
c0101eb9:	e8 26 ed ff ff       	call   c0100be4 <panic_spin>
c0101ebe:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
c0101ec1:	89 04 24             	mov    DWORD PTR [esp],eax
c0101ec4:	e8 17 3d 00 00       	call   c0105be0 <list_remove>
c0101ec9:	83 45 ec 01          	add    DWORD PTR [ebp-0x14],0x1
c0101ecd:	8b 55 ec             	mov    edx,DWORD PTR [ebp-0x14]
c0101ed0:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
c0101ed3:	8b 00                	mov    eax,DWORD PTR [eax]
c0101ed5:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
c0101ed8:	39 c2                	cmp    edx,eax
c0101eda:	72 86                	jb     c0101e62 <sys_free+0xdf>
c0101edc:	c7 44 24 08 01 00 00 	mov    DWORD PTR [esp+0x8],0x1
c0101ee3:	00 
c0101ee4:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
c0101ee7:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c0101eeb:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0101eee:	89 04 24             	mov    DWORD PTR [esp],eax
c0101ef1:	e8 d1 10 00 00       	call   c0102fc7 <page_free>
c0101ef6:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c0101ef9:	89 04 24             	mov    DWORD PTR [esp],eax
c0101efc:	e8 65 15 00 00       	call   c0103466 <lock_release>
c0101f01:	90                   	nop
c0101f02:	eb 01                	jmp    c0101f05 <sys_free+0x182>
c0101f04:	90                   	nop
c0101f05:	c9                   	leave  
c0101f06:	c3                   	ret    

c0101f07 <mm_malloc>:
c0101f07:	55                   	push   ebp
c0101f08:	89 e5                	mov    ebp,esp
c0101f0a:	83 ec 58             	sub    esp,0x58
c0101f0d:	c7 04 24 3f a5 10 c0 	mov    DWORD PTR [esp],0xc010a53f
c0101f14:	e8 6f ed ff ff       	call   c0100c88 <log>
c0101f19:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c0101f1c:	8b 40 3c             	mov    eax,DWORD PTR [eax+0x3c]
c0101f1f:	85 c0                	test   eax,eax
c0101f21:	75 22                	jne    c0101f45 <mm_malloc+0x3e>
c0101f23:	c7 45 f4 01 00 00 00 	mov    DWORD PTR [ebp-0xc],0x1
c0101f2a:	a1 54 18 11 c0       	mov    eax,ds:0xc0111854
c0101f2f:	c1 e0 0c             	shl    eax,0xc
c0101f32:	89 45 ec             	mov    DWORD PTR [ebp-0x14],eax
c0101f35:	c7 45 f0 20 18 11 c0 	mov    DWORD PTR [ebp-0x10],0xc0111820
c0101f3c:	c7 45 e8 60 d8 10 c0 	mov    DWORD PTR [ebp-0x18],0xc010d860
c0101f43:	eb 22                	jmp    c0101f67 <mm_malloc+0x60>
c0101f45:	c7 45 f4 02 00 00 00 	mov    DWORD PTR [ebp-0xc],0x2
c0101f4c:	a1 54 d9 10 c0       	mov    eax,ds:0xc010d954
c0101f51:	c1 e0 0c             	shl    eax,0xc
c0101f54:	89 45 ec             	mov    DWORD PTR [ebp-0x14],eax
c0101f57:	c7 45 f0 20 d9 10 c0 	mov    DWORD PTR [ebp-0x10],0xc010d920
c0101f5e:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c0101f61:	83 c0 7c             	add    eax,0x7c
c0101f64:	89 45 e8             	mov    DWORD PTR [ebp-0x18],eax
c0101f67:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0101f6a:	3b 45 ec             	cmp    eax,DWORD PTR [ebp-0x14]
c0101f6d:	7e 0a                	jle    c0101f79 <mm_malloc+0x72>
c0101f6f:	b8 00 00 00 00       	mov    eax,0x0
c0101f74:	e9 b3 02 00 00       	jmp    c010222c <mm_malloc+0x325>
c0101f79:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c0101f7c:	89 04 24             	mov    DWORD PTR [esp],eax
c0101f7f:	e8 5e 14 00 00       	call   c01033e2 <lock_acquire>
c0101f84:	81 7d 08 ff 03 00 00 	cmp    DWORD PTR [ebp+0x8],0x3ff
c0101f8b:	0f 8f ba 01 00 00    	jg     c010214b <mm_malloc+0x244>
c0101f91:	c7 04 24 4d a5 10 c0 	mov    DWORD PTR [esp],0xc010a54d
c0101f98:	e8 eb ec ff ff       	call   c0100c88 <log>
c0101f9d:	c7 45 e4 00 00 00 00 	mov    DWORD PTR [ebp-0x1c],0x0
c0101fa4:	eb 17                	jmp    c0101fbd <mm_malloc+0xb6>
c0101fa6:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c0101fa9:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
c0101fac:	c1 e0 05             	shl    eax,0x5
c0101faf:	03 45 e8             	add    eax,DWORD PTR [ebp-0x18]
c0101fb2:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
c0101fb5:	39 c2                	cmp    edx,eax
c0101fb7:	76 0c                	jbe    c0101fc5 <mm_malloc+0xbe>
c0101fb9:	83 45 e4 01          	add    DWORD PTR [ebp-0x1c],0x1
c0101fbd:	83 7d e4 05          	cmp    DWORD PTR [ebp-0x1c],0x5
c0101fc1:	7e e3                	jle    c0101fa6 <mm_malloc+0x9f>
c0101fc3:	eb 01                	jmp    c0101fc6 <mm_malloc+0xbf>
c0101fc5:	90                   	nop
c0101fc6:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
c0101fc9:	c1 e0 05             	shl    eax,0x5
c0101fcc:	03 45 e8             	add    eax,DWORD PTR [ebp-0x18]
c0101fcf:	83 c0 08             	add    eax,0x8
c0101fd2:	89 04 24             	mov    DWORD PTR [esp],eax
c0101fd5:	e8 12 3d 00 00       	call   c0105cec <list_empty>
c0101fda:	85 c0                	test   eax,eax
c0101fdc:	0f 84 1f 01 00 00    	je     c0102101 <mm_malloc+0x1fa>
c0101fe2:	c7 44 24 04 01 00 00 	mov    DWORD PTR [esp+0x4],0x1
c0101fe9:	00 
c0101fea:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0101fed:	89 04 24             	mov    DWORD PTR [esp],eax
c0101ff0:	e8 fa 09 00 00       	call   c01029ef <page_alloc>
c0101ff5:	89 45 dc             	mov    DWORD PTR [ebp-0x24],eax
c0101ff8:	83 7d dc 00          	cmp    DWORD PTR [ebp-0x24],0x0
c0101ffc:	75 21                	jne    c010201f <mm_malloc+0x118>
c0101ffe:	c7 04 24 62 a5 10 c0 	mov    DWORD PTR [esp],0xc010a562
c0102005:	e8 7e ec ff ff       	call   c0100c88 <log>
c010200a:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c010200d:	89 04 24             	mov    DWORD PTR [esp],eax
c0102010:	e8 51 14 00 00       	call   c0103466 <lock_release>
c0102015:	b8 00 00 00 00       	mov    eax,0x0
c010201a:	e9 0d 02 00 00       	jmp    c010222c <mm_malloc+0x325>
c010201f:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
c0102022:	c1 e0 05             	shl    eax,0x5
c0102025:	89 c2                	mov    edx,eax
c0102027:	03 55 e8             	add    edx,DWORD PTR [ebp-0x18]
c010202a:	8b 45 dc             	mov    eax,DWORD PTR [ebp-0x24]
c010202d:	89 10                	mov    DWORD PTR [eax],edx
c010202f:	8b 45 dc             	mov    eax,DWORD PTR [ebp-0x24]
c0102032:	c7 40 08 00 00 00 00 	mov    DWORD PTR [eax+0x8],0x0
c0102039:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
c010203c:	c1 e0 05             	shl    eax,0x5
c010203f:	03 45 e8             	add    eax,DWORD PTR [ebp-0x18]
c0102042:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
c0102045:	8b 45 dc             	mov    eax,DWORD PTR [ebp-0x24]
c0102048:	89 50 04             	mov    DWORD PTR [eax+0x4],edx
c010204b:	e8 11 f9 ff ff       	call   c0101961 <intr_disable>
c0102050:	89 45 d8             	mov    DWORD PTR [ebp-0x28],eax
c0102053:	c7 45 e0 00 00 00 00 	mov    DWORD PTR [ebp-0x20],0x0
c010205a:	e9 80 00 00 00       	jmp    c01020df <mm_malloc+0x1d8>
c010205f:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
c0102062:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c0102066:	8b 45 dc             	mov    eax,DWORD PTR [ebp-0x24]
c0102069:	89 04 24             	mov    DWORD PTR [esp],eax
c010206c:	e8 bc f9 ff ff       	call   c0101a2d <arena2block>
c0102071:	89 45 d4             	mov    DWORD PTR [ebp-0x2c],eax
c0102074:	8b 45 d4             	mov    eax,DWORD PTR [ebp-0x2c]
c0102077:	8b 55 d4             	mov    edx,DWORD PTR [ebp-0x2c]
c010207a:	89 50 04             	mov    DWORD PTR [eax+0x4],edx
c010207d:	8b 45 d4             	mov    eax,DWORD PTR [ebp-0x2c]
c0102080:	8b 55 dc             	mov    edx,DWORD PTR [ebp-0x24]
c0102083:	8b 12                	mov    edx,DWORD PTR [edx]
c0102085:	83 c2 08             	add    edx,0x8
c0102088:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c010208c:	89 14 24             	mov    DWORD PTR [esp],edx
c010208f:	e8 a1 3b 00 00       	call   c0105c35 <list_find>
c0102094:	85 c0                	test   eax,eax
c0102096:	74 2c                	je     c01020c4 <mm_malloc+0x1bd>
c0102098:	c7 44 24 10 70 a5 10 	mov    DWORD PTR [esp+0x10],0xc010a570
c010209f:	c0 
c01020a0:	c7 44 24 0c 3c a6 10 	mov    DWORD PTR [esp+0xc],0xc010a63c
c01020a7:	c0 
c01020a8:	c7 44 24 08 f3 00 00 	mov    DWORD PTR [esp+0x8],0xf3
c01020af:	00 
c01020b0:	c7 44 24 04 9f a5 10 	mov    DWORD PTR [esp+0x4],0xc010a59f
c01020b7:	c0 
c01020b8:	c7 04 24 9f a5 10 c0 	mov    DWORD PTR [esp],0xc010a59f
c01020bf:	e8 20 eb ff ff       	call   c0100be4 <panic_spin>
c01020c4:	8b 45 d4             	mov    eax,DWORD PTR [ebp-0x2c]
c01020c7:	8b 55 dc             	mov    edx,DWORD PTR [ebp-0x24]
c01020ca:	8b 12                	mov    edx,DWORD PTR [edx]
c01020cc:	83 c2 08             	add    edx,0x8
c01020cf:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c01020d3:	89 14 24             	mov    DWORD PTR [esp],edx
c01020d6:	e8 e8 3a 00 00       	call   c0105bc3 <list_append>
c01020db:	83 45 e0 01          	add    DWORD PTR [ebp-0x20],0x1
c01020df:	8b 55 e0             	mov    edx,DWORD PTR [ebp-0x20]
c01020e2:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
c01020e5:	c1 e0 05             	shl    eax,0x5
c01020e8:	03 45 e8             	add    eax,DWORD PTR [ebp-0x18]
c01020eb:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
c01020ee:	39 c2                	cmp    edx,eax
c01020f0:	0f 82 69 ff ff ff    	jb     c010205f <mm_malloc+0x158>
c01020f6:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
c01020f9:	89 04 24             	mov    DWORD PTR [esp],eax
c01020fc:	e8 8d f8 ff ff       	call   c010198e <intr_set_status>
c0102101:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
c0102104:	c1 e0 05             	shl    eax,0x5
c0102107:	03 45 e8             	add    eax,DWORD PTR [ebp-0x18]
c010210a:	83 c0 08             	add    eax,0x8
c010210d:	89 04 24             	mov    DWORD PTR [esp],eax
c0102110:	e8 01 3b 00 00       	call   c0105c16 <list_pop>
c0102115:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
c0102118:	89 45 d4             	mov    DWORD PTR [ebp-0x2c],eax
c010211b:	8b 45 d4             	mov    eax,DWORD PTR [ebp-0x2c]
c010211e:	89 04 24             	mov    DWORD PTR [esp],eax
c0102121:	e8 21 f9 ff ff       	call   c0101a47 <block2arena>
c0102126:	89 45 dc             	mov    DWORD PTR [ebp-0x24],eax
c0102129:	8b 45 dc             	mov    eax,DWORD PTR [ebp-0x24]
c010212c:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
c010212f:	8d 50 ff             	lea    edx,[eax-0x1]
c0102132:	8b 45 dc             	mov    eax,DWORD PTR [ebp-0x24]
c0102135:	89 50 04             	mov    DWORD PTR [eax+0x4],edx
c0102138:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c010213b:	89 04 24             	mov    DWORD PTR [esp],eax
c010213e:	e8 23 13 00 00       	call   c0103466 <lock_release>
c0102143:	8b 45 d4             	mov    eax,DWORD PTR [ebp-0x2c]
c0102146:	e9 e1 00 00 00       	jmp    c010222c <mm_malloc+0x325>
c010214b:	c7 04 24 ae a5 10 c0 	mov    DWORD PTR [esp],0xc010a5ae
c0102152:	e8 31 eb ff ff       	call   c0100c88 <log>
c0102157:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c010215a:	05 0b 10 00 00       	add    eax,0x100b
c010215f:	c1 e8 0c             	shr    eax,0xc
c0102162:	89 45 d0             	mov    DWORD PTR [ebp-0x30],eax
c0102165:	8b 45 d0             	mov    eax,DWORD PTR [ebp-0x30]
c0102168:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c010216c:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c010216f:	89 04 24             	mov    DWORD PTR [esp],eax
c0102172:	e8 78 08 00 00       	call   c01029ef <page_alloc>
c0102177:	89 45 dc             	mov    DWORD PTR [ebp-0x24],eax
c010217a:	83 7d dc 00          	cmp    DWORD PTR [ebp-0x24],0x0
c010217e:	75 15                	jne    c0102195 <mm_malloc+0x28e>
c0102180:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c0102183:	89 04 24             	mov    DWORD PTR [esp],eax
c0102186:	e8 db 12 00 00       	call   c0103466 <lock_release>
c010218b:	b8 00 00 00 00       	mov    eax,0x0
c0102190:	e9 97 00 00 00       	jmp    c010222c <mm_malloc+0x325>
c0102195:	8b 45 d0             	mov    eax,DWORD PTR [ebp-0x30]
c0102198:	c1 e0 0c             	shl    eax,0xc
c010219b:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
c010219f:	c7 44 24 04 00 00 00 	mov    DWORD PTR [esp+0x4],0x0
c01021a6:	00 
c01021a7:	8b 45 dc             	mov    eax,DWORD PTR [ebp-0x24]
c01021aa:	89 04 24             	mov    DWORD PTR [esp],eax
c01021ad:	e8 8e 40 00 00       	call   c0106240 <memset>
c01021b2:	8b 45 dc             	mov    eax,DWORD PTR [ebp-0x24]
c01021b5:	c7 00 00 00 00 00    	mov    DWORD PTR [eax],0x0
c01021bb:	8b 55 d0             	mov    edx,DWORD PTR [ebp-0x30]
c01021be:	8b 45 dc             	mov    eax,DWORD PTR [ebp-0x24]
c01021c1:	89 50 04             	mov    DWORD PTR [eax+0x4],edx
c01021c4:	8b 45 dc             	mov    eax,DWORD PTR [ebp-0x24]
c01021c7:	c7 40 08 01 00 00 00 	mov    DWORD PTR [eax+0x8],0x1
c01021ce:	8b 45 dc             	mov    eax,DWORD PTR [ebp-0x24]
c01021d1:	8b 00                	mov    eax,DWORD PTR [eax]
c01021d3:	85 c0                	test   eax,eax
c01021d5:	75 18                	jne    c01021ef <mm_malloc+0x2e8>
c01021d7:	8b 45 dc             	mov    eax,DWORD PTR [ebp-0x24]
c01021da:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
c01021dd:	8b 45 d0             	mov    eax,DWORD PTR [ebp-0x30]
c01021e0:	39 c2                	cmp    edx,eax
c01021e2:	75 0b                	jne    c01021ef <mm_malloc+0x2e8>
c01021e4:	8b 45 dc             	mov    eax,DWORD PTR [ebp-0x24]
c01021e7:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
c01021ea:	83 f8 01             	cmp    eax,0x1
c01021ed:	74 2c                	je     c010221b <mm_malloc+0x314>
c01021ef:	c7 44 24 10 c4 a5 10 	mov    DWORD PTR [esp+0x10],0xc010a5c4
c01021f6:	c0 
c01021f7:	c7 44 24 0c 3c a6 10 	mov    DWORD PTR [esp+0xc],0xc010a63c
c01021fe:	c0 
c01021ff:	c7 44 24 08 0f 01 00 	mov    DWORD PTR [esp+0x8],0x10f
c0102206:	00 
c0102207:	c7 44 24 04 9f a5 10 	mov    DWORD PTR [esp+0x4],0xc010a59f
c010220e:	c0 
c010220f:	c7 04 24 9f a5 10 c0 	mov    DWORD PTR [esp],0xc010a59f
c0102216:	e8 c9 e9 ff ff       	call   c0100be4 <panic_spin>
c010221b:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c010221e:	89 04 24             	mov    DWORD PTR [esp],eax
c0102221:	e8 40 12 00 00       	call   c0103466 <lock_release>
c0102226:	8b 45 dc             	mov    eax,DWORD PTR [ebp-0x24]
c0102229:	83 c0 0c             	add    eax,0xc
c010222c:	c9                   	leave  
c010222d:	c3                   	ret    

c010222e <mm_free>:
c010222e:	55                   	push   ebp
c010222f:	89 e5                	mov    ebp,esp
c0102231:	83 ec 48             	sub    esp,0x48
c0102234:	c7 04 24 fc a5 10 c0 	mov    DWORD PTR [esp],0xc010a5fc
c010223b:	e8 48 ea ff ff       	call   c0100c88 <log>
c0102240:	83 7d 08 00          	cmp    DWORD PTR [ebp+0x8],0x0
c0102244:	0f 84 63 01 00 00    	je     c01023ad <mm_free+0x17f>
c010224a:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c010224d:	8b 40 3c             	mov    eax,DWORD PTR [eax+0x3c]
c0102250:	85 c0                	test   eax,eax
c0102252:	75 10                	jne    c0102264 <mm_free+0x36>
c0102254:	c7 45 f4 01 00 00 00 	mov    DWORD PTR [ebp-0xc],0x1
c010225b:	c7 45 f0 20 18 11 c0 	mov    DWORD PTR [ebp-0x10],0xc0111820
c0102262:	eb 0e                	jmp    c0102272 <mm_free+0x44>
c0102264:	c7 45 f4 02 00 00 00 	mov    DWORD PTR [ebp-0xc],0x2
c010226b:	c7 45 f0 20 d9 10 c0 	mov    DWORD PTR [ebp-0x10],0xc010d920
c0102272:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c0102275:	89 04 24             	mov    DWORD PTR [esp],eax
c0102278:	e8 65 11 00 00       	call   c01033e2 <lock_acquire>
c010227d:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102280:	89 45 e8             	mov    DWORD PTR [ebp-0x18],eax
c0102283:	8b 45 e8             	mov    eax,DWORD PTR [ebp-0x18]
c0102286:	89 04 24             	mov    DWORD PTR [esp],eax
c0102289:	e8 b9 f7 ff ff       	call   c0101a47 <block2arena>
c010228e:	89 45 e4             	mov    DWORD PTR [ebp-0x1c],eax
c0102291:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
c0102294:	8b 00                	mov    eax,DWORD PTR [eax]
c0102296:	85 c0                	test   eax,eax
c0102298:	75 2c                	jne    c01022c6 <mm_free+0x98>
c010229a:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
c010229d:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
c01022a0:	83 f8 01             	cmp    eax,0x1
c01022a3:	75 21                	jne    c01022c6 <mm_free+0x98>
c01022a5:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
c01022a8:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
c01022ab:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
c01022af:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
c01022b2:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c01022b6:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c01022b9:	89 04 24             	mov    DWORD PTR [esp],eax
c01022bc:	e8 06 0d 00 00       	call   c0102fc7 <page_free>
c01022c1:	e9 d9 00 00 00       	jmp    c010239f <mm_free+0x171>
c01022c6:	8b 45 e8             	mov    eax,DWORD PTR [ebp-0x18]
c01022c9:	8b 55 e4             	mov    edx,DWORD PTR [ebp-0x1c]
c01022cc:	8b 12                	mov    edx,DWORD PTR [edx]
c01022ce:	83 c2 08             	add    edx,0x8
c01022d1:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c01022d5:	89 14 24             	mov    DWORD PTR [esp],edx
c01022d8:	e8 e6 38 00 00       	call   c0105bc3 <list_append>
c01022dd:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
c01022e0:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
c01022e3:	8d 50 01             	lea    edx,[eax+0x1]
c01022e6:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
c01022e9:	89 50 04             	mov    DWORD PTR [eax+0x4],edx
c01022ec:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
c01022ef:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
c01022f2:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
c01022f5:	8b 00                	mov    eax,DWORD PTR [eax]
c01022f7:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
c01022fa:	39 c2                	cmp    edx,eax
c01022fc:	0f 85 9d 00 00 00    	jne    c010239f <mm_free+0x171>
c0102302:	c7 45 ec 00 00 00 00 	mov    DWORD PTR [ebp-0x14],0x0
c0102309:	eb 6b                	jmp    c0102376 <mm_free+0x148>
c010230b:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
c010230e:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c0102312:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
c0102315:	89 04 24             	mov    DWORD PTR [esp],eax
c0102318:	e8 10 f7 ff ff       	call   c0101a2d <arena2block>
c010231d:	89 45 e0             	mov    DWORD PTR [ebp-0x20],eax
c0102320:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
c0102323:	8b 55 e4             	mov    edx,DWORD PTR [ebp-0x1c]
c0102326:	8b 12                	mov    edx,DWORD PTR [edx]
c0102328:	83 c2 08             	add    edx,0x8
c010232b:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c010232f:	89 14 24             	mov    DWORD PTR [esp],edx
c0102332:	e8 fe 38 00 00       	call   c0105c35 <list_find>
c0102337:	85 c0                	test   eax,eax
c0102339:	75 2c                	jne    c0102367 <mm_free+0x139>
c010233b:	c7 44 24 10 08 a6 10 	mov    DWORD PTR [esp+0x10],0xc010a608
c0102342:	c0 
c0102343:	c7 44 24 0c 34 a6 10 	mov    DWORD PTR [esp+0xc],0xc010a634
c010234a:	c0 
c010234b:	c7 44 24 08 3c 01 00 	mov    DWORD PTR [esp+0x8],0x13c
c0102352:	00 
c0102353:	c7 44 24 04 9f a5 10 	mov    DWORD PTR [esp+0x4],0xc010a59f
c010235a:	c0 
c010235b:	c7 04 24 9f a5 10 c0 	mov    DWORD PTR [esp],0xc010a59f
c0102362:	e8 7d e8 ff ff       	call   c0100be4 <panic_spin>
c0102367:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
c010236a:	89 04 24             	mov    DWORD PTR [esp],eax
c010236d:	e8 6e 38 00 00       	call   c0105be0 <list_remove>
c0102372:	83 45 ec 01          	add    DWORD PTR [ebp-0x14],0x1
c0102376:	8b 55 ec             	mov    edx,DWORD PTR [ebp-0x14]
c0102379:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
c010237c:	8b 00                	mov    eax,DWORD PTR [eax]
c010237e:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
c0102381:	39 c2                	cmp    edx,eax
c0102383:	72 86                	jb     c010230b <mm_free+0xdd>
c0102385:	c7 44 24 08 01 00 00 	mov    DWORD PTR [esp+0x8],0x1
c010238c:	00 
c010238d:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
c0102390:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c0102394:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0102397:	89 04 24             	mov    DWORD PTR [esp],eax
c010239a:	e8 28 0c 00 00       	call   c0102fc7 <page_free>
c010239f:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c01023a2:	89 04 24             	mov    DWORD PTR [esp],eax
c01023a5:	e8 bc 10 00 00       	call   c0103466 <lock_release>
c01023aa:	90                   	nop
c01023ab:	eb 01                	jmp    c01023ae <mm_free+0x180>
c01023ad:	90                   	nop
c01023ae:	c9                   	leave  
c01023af:	c3                   	ret    

c01023b0 <init_memory>:
c01023b0:	55                   	push   ebp
c01023b1:	89 e5                	mov    ebp,esp
c01023b3:	57                   	push   edi
c01023b4:	56                   	push   esi
c01023b5:	53                   	push   ebx
c01023b6:	83 ec 4c             	sub    esp,0x4c
c01023b9:	b8 08 7c 00 c0       	mov    eax,0xc0007c08
c01023be:	8b 00                	mov    eax,DWORD PTR [eax]
c01023c0:	85 c0                	test   eax,eax
c01023c2:	0f 85 21 01 00 00    	jne    c01024e9 <init_memory+0x139>
c01023c8:	b8 0c 7c 00 c0       	mov    eax,0xc0007c0c
c01023cd:	8b 00                	mov    eax,DWORD PTR [eax]
c01023cf:	85 c0                	test   eax,eax
c01023d1:	0f 85 12 01 00 00    	jne    c01024e9 <init_memory+0x139>
c01023d7:	b8 00 7c 00 c0       	mov    eax,0xc0007c00
c01023dc:	8b 00                	mov    eax,DWORD PTR [eax]
c01023de:	89 45 e4             	mov    DWORD PTR [ebp-0x1c],eax
c01023e1:	c7 45 d8 00 00 00 00 	mov    DWORD PTR [ebp-0x28],0x0
c01023e8:	c7 45 dc 00 00 00 00 	mov    DWORD PTR [ebp-0x24],0x0
c01023ef:	c7 45 e0 00 00 00 00 	mov    DWORD PTR [ebp-0x20],0x0
c01023f6:	eb 74                	jmp    c010246c <init_memory+0xbc>
c01023f8:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
c01023fb:	8b 40 10             	mov    eax,DWORD PTR [eax+0x10]
c01023fe:	83 f8 01             	cmp    eax,0x1
c0102401:	75 61                	jne    c0102464 <init_memory+0xb4>
c0102403:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
c0102406:	8b 00                	mov    eax,DWORD PTR [eax]
c0102408:	3d 00 00 10 00       	cmp    eax,0x100000
c010240d:	75 55                	jne    c0102464 <init_memory+0xb4>
c010240f:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
c0102412:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
c0102415:	ba 00 00 00 00       	mov    edx,0x0
c010241a:	89 c1                	mov    ecx,eax
c010241c:	89 d3                	mov    ebx,edx
c010241e:	89 cb                	mov    ebx,ecx
c0102420:	b9 00 00 00 00       	mov    ecx,0x0
c0102425:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
c0102428:	8b 00                	mov    eax,DWORD PTR [eax]
c010242a:	ba 00 00 00 00       	mov    edx,0x0
c010242f:	01 c1                	add    ecx,eax
c0102431:	11 d3                	adc    ebx,edx
c0102433:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
c0102436:	8b 40 0c             	mov    eax,DWORD PTR [eax+0xc]
c0102439:	ba 00 00 00 00       	mov    edx,0x0
c010243e:	89 c6                	mov    esi,eax
c0102440:	89 d7                	mov    edi,edx
c0102442:	89 f7                	mov    edi,esi
c0102444:	be 00 00 00 00       	mov    esi,0x0
c0102449:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
c010244c:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
c010244f:	ba 00 00 00 00       	mov    edx,0x0
c0102454:	01 f0                	add    eax,esi
c0102456:	11 fa                	adc    edx,edi
c0102458:	01 c8                	add    eax,ecx
c010245a:	11 da                	adc    edx,ebx
c010245c:	89 45 d8             	mov    DWORD PTR [ebp-0x28],eax
c010245f:	89 55 dc             	mov    DWORD PTR [ebp-0x24],edx
c0102462:	eb 1a                	jmp    c010247e <init_memory+0xce>
c0102464:	83 45 e4 14          	add    DWORD PTR [ebp-0x1c],0x14
c0102468:	83 45 e0 01          	add    DWORD PTR [ebp-0x20],0x1
c010246c:	8b 55 e0             	mov    edx,DWORD PTR [ebp-0x20]
c010246f:	b8 04 7c 00 c0       	mov    eax,0xc0007c04
c0102474:	8b 00                	mov    eax,DWORD PTR [eax]
c0102476:	39 c2                	cmp    edx,eax
c0102478:	0f 82 7a ff ff ff    	jb     c01023f8 <init_memory+0x48>
c010247e:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
c0102481:	8b 55 dc             	mov    edx,DWORD PTR [ebp-0x24]
c0102484:	09 d0                	or     eax,edx
c0102486:	85 c0                	test   eax,eax
c0102488:	75 2c                	jne    c01024b6 <init_memory+0x106>
c010248a:	c7 44 24 10 7b a6 10 	mov    DWORD PTR [esp+0x10],0xc010a67b
c0102491:	c0 
c0102492:	c7 44 24 0c 21 a8 10 	mov    DWORD PTR [esp+0xc],0xc010a821
c0102499:	c0 
c010249a:	c7 44 24 08 2f 00 00 	mov    DWORD PTR [esp+0x8],0x2f
c01024a1:	00 
c01024a2:	c7 44 24 04 90 a6 10 	mov    DWORD PTR [esp+0x4],0xc010a690
c01024a9:	c0 
c01024aa:	c7 04 24 90 a6 10 c0 	mov    DWORD PTR [esp],0xc010a690
c01024b1:	e8 2e e7 ff ff       	call   c0100be4 <panic_spin>
c01024b6:	83 7d dc 00          	cmp    DWORD PTR [ebp-0x24],0x0
c01024ba:	72 1d                	jb     c01024d9 <init_memory+0x129>
c01024bc:	83 7d dc 00          	cmp    DWORD PTR [ebp-0x24],0x0
c01024c0:	77 09                	ja     c01024cb <init_memory+0x11b>
c01024c2:	81 7d d8 ff ff ff 3f 	cmp    DWORD PTR [ebp-0x28],0x3fffffff
c01024c9:	76 0e                	jbe    c01024d9 <init_memory+0x129>
c01024cb:	c7 45 d8 ff ff ff 3f 	mov    DWORD PTR [ebp-0x28],0x3fffffff
c01024d2:	c7 45 dc 00 00 00 00 	mov    DWORD PTR [ebp-0x24],0x0
c01024d9:	b8 08 7c 00 c0       	mov    eax,0xc0007c08
c01024de:	8b 55 d8             	mov    edx,DWORD PTR [ebp-0x28]
c01024e1:	81 c2 00 00 10 00    	add    edx,0x100000
c01024e7:	89 10                	mov    DWORD PTR [eax],edx
c01024e9:	c7 45 d4 00 00 10 00 	mov    DWORD PTR [ebp-0x2c],0x100000
c01024f0:	b8 08 7c 00 c0       	mov    eax,0xc0007c08
c01024f5:	8b 00                	mov    eax,DWORD PTR [eax]
c01024f7:	2b 45 d4             	sub    eax,DWORD PTR [ebp-0x2c]
c01024fa:	2d 00 00 40 00       	sub    eax,0x400000
c01024ff:	89 45 d0             	mov    DWORD PTR [ebp-0x30],eax
c0102502:	8b 45 d0             	mov    eax,DWORD PTR [ebp-0x30]
c0102505:	d1 e8                	shr    eax,1
c0102507:	89 45 cc             	mov    DWORD PTR [ebp-0x34],eax
c010250a:	8b 45 cc             	mov    eax,DWORD PTR [ebp-0x34]
c010250d:	8b 55 d0             	mov    edx,DWORD PTR [ebp-0x30]
c0102510:	89 d1                	mov    ecx,edx
c0102512:	29 c1                	sub    ecx,eax
c0102514:	89 c8                	mov    eax,ecx
c0102516:	89 45 c8             	mov    DWORD PTR [ebp-0x38],eax
c0102519:	8b 45 cc             	mov    eax,DWORD PTR [ebp-0x34]
c010251c:	c1 e8 0c             	shr    eax,0xc
c010251f:	c7 44 24 08 e0 f8 10 	mov    DWORD PTR [esp+0x8],0xc010f8e0
c0102526:	c0 
c0102527:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c010252b:	c7 04 24 20 18 11 c0 	mov    DWORD PTR [esp],0xc0111820
c0102532:	e8 c9 00 00 00       	call   c0102600 <init_memman>
c0102537:	c7 44 24 08 20 b9 10 	mov    DWORD PTR [esp+0x8],0xc010b920
c010253e:	c0 
c010253f:	c7 44 24 04 ff ff 0f 	mov    DWORD PTR [esp+0x4],0xfffff
c0102546:	00 
c0102547:	c7 04 24 60 d9 10 c0 	mov    DWORD PTR [esp],0xc010d960
c010254e:	e8 ad 00 00 00       	call   c0102600 <init_memman>
c0102553:	8b 45 c8             	mov    eax,DWORD PTR [ebp-0x38]
c0102556:	c1 e8 0c             	shr    eax,0xc
c0102559:	c7 44 24 08 a0 d9 10 	mov    DWORD PTR [esp+0x8],0xc010d9a0
c0102560:	c0 
c0102561:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c0102565:	c7 04 24 20 d9 10 c0 	mov    DWORD PTR [esp],0xc010d920
c010256c:	e8 8f 00 00 00       	call   c0102600 <init_memman>
c0102571:	8b 45 cc             	mov    eax,DWORD PTR [ebp-0x34]
c0102574:	c1 e8 0c             	shr    eax,0xc
c0102577:	89 c2                	mov    edx,eax
c0102579:	8b 45 d4             	mov    eax,DWORD PTR [ebp-0x2c]
c010257c:	05 00 00 40 00       	add    eax,0x400000
c0102581:	89 54 24 08          	mov    DWORD PTR [esp+0x8],edx
c0102585:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c0102589:	c7 04 24 20 18 11 c0 	mov    DWORD PTR [esp],0xc0111820
c0102590:	e8 5e 06 00 00       	call   c0102bf3 <pgman_free>
c0102595:	8b 45 c8             	mov    eax,DWORD PTR [ebp-0x38]
c0102598:	c1 e8 0c             	shr    eax,0xc
c010259b:	89 c2                	mov    edx,eax
c010259d:	8b 45 cc             	mov    eax,DWORD PTR [ebp-0x34]
c01025a0:	8b 4d d4             	mov    ecx,DWORD PTR [ebp-0x2c]
c01025a3:	01 c8                	add    eax,ecx
c01025a5:	05 00 00 40 00       	add    eax,0x400000
c01025aa:	89 54 24 08          	mov    DWORD PTR [esp+0x8],edx
c01025ae:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c01025b2:	c7 04 24 20 d9 10 c0 	mov    DWORD PTR [esp],0xc010d920
c01025b9:	e8 35 06 00 00       	call   c0102bf3 <pgman_free>
c01025be:	8b 45 cc             	mov    eax,DWORD PTR [ebp-0x34]
c01025c1:	8b 55 d4             	mov    edx,DWORD PTR [ebp-0x2c]
c01025c4:	01 d0                	add    eax,edx
c01025c6:	05 00 00 40 00       	add    eax,0x400000
c01025cb:	a3 70 b2 10 c0       	mov    ds:0xc010b270,eax
c01025d0:	c7 44 24 08 00 fc 01 	mov    DWORD PTR [esp+0x8],0x1fc00
c01025d7:	00 
c01025d8:	c7 44 24 04 00 00 40 	mov    DWORD PTR [esp+0x4],0xc0400000
c01025df:	c0 
c01025e0:	c7 04 24 60 d9 10 c0 	mov    DWORD PTR [esp],0xc010d960
c01025e7:	e8 07 06 00 00       	call   c0102bf3 <pgman_free>
c01025ec:	c7 04 24 60 d8 10 c0 	mov    DWORD PTR [esp],0xc010d860
c01025f3:	e8 c8 f3 ff ff       	call   c01019c0 <init_block>
c01025f8:	83 c4 4c             	add    esp,0x4c
c01025fb:	5b                   	pop    ebx
c01025fc:	5e                   	pop    esi
c01025fd:	5f                   	pop    edi
c01025fe:	5d                   	pop    ebp
c01025ff:	c3                   	ret    

c0102600 <init_memman>:
c0102600:	55                   	push   ebp
c0102601:	89 e5                	mov    ebp,esp
c0102603:	83 ec 28             	sub    esp,0x28
c0102606:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102609:	89 04 24             	mov    DWORD PTR [esp],eax
c010260c:	e8 71 0b 00 00       	call   c0103182 <lock_init>
c0102611:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102614:	c7 40 24 00 00 00 00 	mov    DWORD PTR [eax+0x24],0x0
c010261b:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c010261e:	c7 40 28 00 00 00 00 	mov    DWORD PTR [eax+0x28],0x0
c0102625:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102628:	c7 40 2c 00 00 00 00 	mov    DWORD PTR [eax+0x2c],0x0
c010262f:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102632:	c7 40 30 00 00 00 00 	mov    DWORD PTR [eax+0x30],0x0
c0102639:	83 7d 0c 00          	cmp    DWORD PTR [ebp+0xc],0x0
c010263d:	75 2c                	jne    c010266b <init_memman+0x6b>
c010263f:	c7 44 24 10 a0 a6 10 	mov    DWORD PTR [esp+0x10],0xc010a6a0
c0102646:	c0 
c0102647:	c7 44 24 0c 15 a8 10 	mov    DWORD PTR [esp+0xc],0xc010a815
c010264e:	c0 
c010264f:	c7 44 24 08 55 00 00 	mov    DWORD PTR [esp+0x8],0x55
c0102656:	00 
c0102657:	c7 44 24 04 90 a6 10 	mov    DWORD PTR [esp+0x4],0xc010a690
c010265e:	c0 
c010265f:	c7 04 24 90 a6 10 c0 	mov    DWORD PTR [esp],0xc010a690
c0102666:	e8 79 e5 ff ff       	call   c0100be4 <panic_spin>
c010266b:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c010266e:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
c0102671:	89 50 34             	mov    DWORD PTR [eax+0x34],edx
c0102674:	83 7d 10 00          	cmp    DWORD PTR [ebp+0x10],0x0
c0102678:	75 2c                	jne    c01026a6 <init_memman+0xa6>
c010267a:	c7 44 24 10 ab a6 10 	mov    DWORD PTR [esp+0x10],0xc010a6ab
c0102681:	c0 
c0102682:	c7 44 24 0c 15 a8 10 	mov    DWORD PTR [esp+0xc],0xc010a815
c0102689:	c0 
c010268a:	c7 44 24 08 57 00 00 	mov    DWORD PTR [esp+0x8],0x57
c0102691:	00 
c0102692:	c7 44 24 04 90 a6 10 	mov    DWORD PTR [esp+0x4],0xc010a690
c0102699:	c0 
c010269a:	c7 04 24 90 a6 10 c0 	mov    DWORD PTR [esp],0xc010a690
c01026a1:	e8 3e e5 ff ff       	call   c0100be4 <panic_spin>
c01026a6:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01026a9:	8b 55 10             	mov    edx,DWORD PTR [ebp+0x10]
c01026ac:	89 50 38             	mov    DWORD PTR [eax+0x38],edx
c01026af:	c9                   	leave  
c01026b0:	c3                   	ret    

c01026b1 <TotalFreeSize>:
c01026b1:	55                   	push   ebp
c01026b2:	89 e5                	mov    ebp,esp
c01026b4:	83 ec 10             	sub    esp,0x10
c01026b7:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [ebp-0x4],0x0
c01026be:	c7 45 f8 00 00 00 00 	mov    DWORD PTR [ebp-0x8],0x0
c01026c5:	eb 18                	jmp    c01026df <TotalFreeSize+0x2e>
c01026c7:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01026ca:	8b 40 38             	mov    eax,DWORD PTR [eax+0x38]
c01026cd:	8b 55 f8             	mov    edx,DWORD PTR [ebp-0x8]
c01026d0:	c1 e2 03             	shl    edx,0x3
c01026d3:	01 d0                	add    eax,edx
c01026d5:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
c01026d8:	01 45 fc             	add    DWORD PTR [ebp-0x4],eax
c01026db:	83 45 f8 01          	add    DWORD PTR [ebp-0x8],0x1
c01026df:	8b 55 f8             	mov    edx,DWORD PTR [ebp-0x8]
c01026e2:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01026e5:	8b 40 24             	mov    eax,DWORD PTR [eax+0x24]
c01026e8:	39 c2                	cmp    edx,eax
c01026ea:	72 db                	jb     c01026c7 <TotalFreeSize+0x16>
c01026ec:	8b 45 fc             	mov    eax,DWORD PTR [ebp-0x4]
c01026ef:	c9                   	leave  
c01026f0:	c3                   	ret    

c01026f1 <pde_ptr>:
c01026f1:	55                   	push   ebp
c01026f2:	89 e5                	mov    ebp,esp
c01026f4:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01026f7:	c1 e8 16             	shr    eax,0x16
c01026fa:	c1 e0 02             	shl    eax,0x2
c01026fd:	2d 00 10 00 00       	sub    eax,0x1000
c0102702:	5d                   	pop    ebp
c0102703:	c3                   	ret    

c0102704 <pte_ptr>:
c0102704:	55                   	push   ebp
c0102705:	89 e5                	mov    ebp,esp
c0102707:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c010270a:	25 00 00 c0 ff       	and    eax,0xffc00000
c010270f:	89 c2                	mov    edx,eax
c0102711:	c1 ea 0a             	shr    edx,0xa
c0102714:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102717:	25 00 f0 3f 00       	and    eax,0x3ff000
c010271c:	c1 f8 0c             	sar    eax,0xc
c010271f:	c1 e0 02             	shl    eax,0x2
c0102722:	01 d0                	add    eax,edx
c0102724:	2d 00 00 40 00       	sub    eax,0x400000
c0102729:	5d                   	pop    ebp
c010272a:	c3                   	ret    

c010272b <addr_v2p>:
c010272b:	55                   	push   ebp
c010272c:	89 e5                	mov    ebp,esp
c010272e:	83 ec 14             	sub    esp,0x14
c0102731:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102734:	89 04 24             	mov    DWORD PTR [esp],eax
c0102737:	e8 c8 ff ff ff       	call   c0102704 <pte_ptr>
c010273c:	89 45 fc             	mov    DWORD PTR [ebp-0x4],eax
c010273f:	8b 45 fc             	mov    eax,DWORD PTR [ebp-0x4]
c0102742:	8b 00                	mov    eax,DWORD PTR [eax]
c0102744:	89 c2                	mov    edx,eax
c0102746:	81 e2 00 f0 ff ff    	and    edx,0xfffff000
c010274c:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c010274f:	25 ff 0f 00 00       	and    eax,0xfff
c0102754:	09 d0                	or     eax,edx
c0102756:	c9                   	leave  
c0102757:	c3                   	ret    

c0102758 <pgman_alloc>:
c0102758:	55                   	push   ebp
c0102759:	89 e5                	mov    ebp,esp
c010275b:	53                   	push   ebx
c010275c:	83 ec 24             	sub    esp,0x24
c010275f:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102762:	89 04 24             	mov    DWORD PTR [esp],eax
c0102765:	e8 78 0c 00 00       	call   c01033e2 <lock_acquire>
c010276a:	c7 45 f4 00 00 00 00 	mov    DWORD PTR [ebp-0xc],0x0
c0102771:	e9 fb 00 00 00       	jmp    c0102871 <pgman_alloc+0x119>
c0102776:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102779:	8b 40 38             	mov    eax,DWORD PTR [eax+0x38]
c010277c:	8b 55 f4             	mov    edx,DWORD PTR [ebp-0xc]
c010277f:	c1 e2 03             	shl    edx,0x3
c0102782:	01 d0                	add    eax,edx
c0102784:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
c0102787:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c010278a:	39 c2                	cmp    edx,eax
c010278c:	0f 82 db 00 00 00    	jb     c010286d <pgman_alloc+0x115>
c0102792:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102795:	8b 40 38             	mov    eax,DWORD PTR [eax+0x38]
c0102798:	8b 55 f4             	mov    edx,DWORD PTR [ebp-0xc]
c010279b:	c1 e2 03             	shl    edx,0x3
c010279e:	01 d0                	add    eax,edx
c01027a0:	8b 00                	mov    eax,DWORD PTR [eax]
c01027a2:	89 45 ec             	mov    DWORD PTR [ebp-0x14],eax
c01027a5:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01027a8:	8b 40 38             	mov    eax,DWORD PTR [eax+0x38]
c01027ab:	8b 55 f4             	mov    edx,DWORD PTR [ebp-0xc]
c01027ae:	c1 e2 03             	shl    edx,0x3
c01027b1:	01 c2                	add    edx,eax
c01027b3:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01027b6:	8b 40 38             	mov    eax,DWORD PTR [eax+0x38]
c01027b9:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
c01027bc:	c1 e1 03             	shl    ecx,0x3
c01027bf:	01 c8                	add    eax,ecx
c01027c1:	8b 00                	mov    eax,DWORD PTR [eax]
c01027c3:	03 45 0c             	add    eax,DWORD PTR [ebp+0xc]
c01027c6:	89 02                	mov    DWORD PTR [edx],eax
c01027c8:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01027cb:	8b 40 38             	mov    eax,DWORD PTR [eax+0x38]
c01027ce:	8b 55 f4             	mov    edx,DWORD PTR [ebp-0xc]
c01027d1:	c1 e2 03             	shl    edx,0x3
c01027d4:	01 c2                	add    edx,eax
c01027d6:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01027d9:	8b 40 38             	mov    eax,DWORD PTR [eax+0x38]
c01027dc:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
c01027df:	c1 e1 03             	shl    ecx,0x3
c01027e2:	01 c8                	add    eax,ecx
c01027e4:	8b 48 04             	mov    ecx,DWORD PTR [eax+0x4]
c01027e7:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c01027ea:	89 cb                	mov    ebx,ecx
c01027ec:	29 c3                	sub    ebx,eax
c01027ee:	89 d8                	mov    eax,ebx
c01027f0:	89 42 04             	mov    DWORD PTR [edx+0x4],eax
c01027f3:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01027f6:	8b 40 38             	mov    eax,DWORD PTR [eax+0x38]
c01027f9:	8b 55 f4             	mov    edx,DWORD PTR [ebp-0xc]
c01027fc:	c1 e2 03             	shl    edx,0x3
c01027ff:	01 d0                	add    eax,edx
c0102801:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
c0102804:	85 c0                	test   eax,eax
c0102806:	75 52                	jne    c010285a <pgman_alloc+0x102>
c0102808:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c010280b:	8b 40 24             	mov    eax,DWORD PTR [eax+0x24]
c010280e:	8d 50 ff             	lea    edx,[eax-0x1]
c0102811:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102814:	89 50 24             	mov    DWORD PTR [eax+0x24],edx
c0102817:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c010281a:	89 45 f0             	mov    DWORD PTR [ebp-0x10],eax
c010281d:	eb 2e                	jmp    c010284d <pgman_alloc+0xf5>
c010281f:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102822:	8b 40 38             	mov    eax,DWORD PTR [eax+0x38]
c0102825:	8b 55 f0             	mov    edx,DWORD PTR [ebp-0x10]
c0102828:	c1 e2 03             	shl    edx,0x3
c010282b:	8d 0c 10             	lea    ecx,[eax+edx*1]
c010282e:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102831:	8b 40 38             	mov    eax,DWORD PTR [eax+0x38]
c0102834:	8b 55 f0             	mov    edx,DWORD PTR [ebp-0x10]
c0102837:	83 c2 01             	add    edx,0x1
c010283a:	c1 e2 03             	shl    edx,0x3
c010283d:	01 d0                	add    eax,edx
c010283f:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
c0102842:	8b 00                	mov    eax,DWORD PTR [eax]
c0102844:	89 01                	mov    DWORD PTR [ecx],eax
c0102846:	89 51 04             	mov    DWORD PTR [ecx+0x4],edx
c0102849:	83 45 f0 01          	add    DWORD PTR [ebp-0x10],0x1
c010284d:	8b 55 f0             	mov    edx,DWORD PTR [ebp-0x10]
c0102850:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102853:	8b 40 24             	mov    eax,DWORD PTR [eax+0x24]
c0102856:	39 c2                	cmp    edx,eax
c0102858:	72 c5                	jb     c010281f <pgman_alloc+0xc7>
c010285a:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c010285d:	89 04 24             	mov    DWORD PTR [esp],eax
c0102860:	e8 01 0c 00 00       	call   c0103466 <lock_release>
c0102865:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
c0102868:	c1 e0 0c             	shl    eax,0xc
c010286b:	eb 25                	jmp    c0102892 <pgman_alloc+0x13a>
c010286d:	83 45 f4 01          	add    DWORD PTR [ebp-0xc],0x1
c0102871:	8b 55 f4             	mov    edx,DWORD PTR [ebp-0xc]
c0102874:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102877:	8b 40 24             	mov    eax,DWORD PTR [eax+0x24]
c010287a:	39 c2                	cmp    edx,eax
c010287c:	0f 82 f4 fe ff ff    	jb     c0102776 <pgman_alloc+0x1e>
c0102882:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102885:	89 04 24             	mov    DWORD PTR [esp],eax
c0102888:	e8 d9 0b 00 00       	call   c0103466 <lock_release>
c010288d:	b8 00 00 00 00       	mov    eax,0x0
c0102892:	83 c4 24             	add    esp,0x24
c0102895:	5b                   	pop    ebx
c0102896:	5d                   	pop    ebp
c0102897:	c3                   	ret    

c0102898 <page_table_add>:
c0102898:	55                   	push   ebp
c0102899:	89 e5                	mov    ebp,esp
c010289b:	83 ec 38             	sub    esp,0x38
c010289e:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01028a1:	89 04 24             	mov    DWORD PTR [esp],eax
c01028a4:	e8 48 fe ff ff       	call   c01026f1 <pde_ptr>
c01028a9:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
c01028ac:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01028af:	89 04 24             	mov    DWORD PTR [esp],eax
c01028b2:	e8 4d fe ff ff       	call   c0102704 <pte_ptr>
c01028b7:	89 45 f0             	mov    DWORD PTR [ebp-0x10],eax
c01028ba:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c01028bd:	89 45 ec             	mov    DWORD PTR [ebp-0x14],eax
c01028c0:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c01028c3:	8b 00                	mov    eax,DWORD PTR [eax]
c01028c5:	83 e0 01             	and    eax,0x1
c01028c8:	84 c0                	test   al,al
c01028ca:	0f 84 94 00 00 00    	je     c0102964 <page_table_add+0xcc>
c01028d0:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c01028d3:	8b 00                	mov    eax,DWORD PTR [eax]
c01028d5:	83 e0 01             	and    eax,0x1
c01028d8:	85 c0                	test   eax,eax
c01028da:	74 2c                	je     c0102908 <page_table_add+0x70>
c01028dc:	c7 44 24 10 b8 a6 10 	mov    DWORD PTR [esp+0x10],0xc010a6b8
c01028e3:	c0 
c01028e4:	c7 44 24 0c 06 a8 10 	mov    DWORD PTR [esp+0xc],0xc010a806
c01028eb:	c0 
c01028ec:	c7 44 24 08 a3 00 00 	mov    DWORD PTR [esp+0x8],0xa3
c01028f3:	00 
c01028f4:	c7 44 24 04 90 a6 10 	mov    DWORD PTR [esp+0x4],0xc010a690
c01028fb:	c0 
c01028fc:	c7 04 24 90 a6 10 c0 	mov    DWORD PTR [esp],0xc010a690
c0102903:	e8 dc e2 ff ff       	call   c0100be4 <panic_spin>
c0102908:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c010290b:	8b 00                	mov    eax,DWORD PTR [eax]
c010290d:	83 e0 01             	and    eax,0x1
c0102910:	85 c0                	test   eax,eax
c0102912:	75 12                	jne    c0102926 <page_table_add+0x8e>
c0102914:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
c0102917:	89 c2                	mov    edx,eax
c0102919:	83 ca 07             	or     edx,0x7
c010291c:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c010291f:	89 10                	mov    DWORD PTR [eax],edx
c0102921:	e9 c7 00 00 00       	jmp    c01029ed <page_table_add+0x155>
c0102926:	c7 44 24 10 cd a6 10 	mov    DWORD PTR [esp+0x10],0xc010a6cd
c010292d:	c0 
c010292e:	c7 44 24 0c 06 a8 10 	mov    DWORD PTR [esp+0xc],0xc010a806
c0102935:	c0 
c0102936:	c7 44 24 08 aa 00 00 	mov    DWORD PTR [esp+0x8],0xaa
c010293d:	00 
c010293e:	c7 44 24 04 90 a6 10 	mov    DWORD PTR [esp+0x4],0xc010a690
c0102945:	c0 
c0102946:	c7 04 24 90 a6 10 c0 	mov    DWORD PTR [esp],0xc010a690
c010294d:	e8 92 e2 ff ff       	call   c0100be4 <panic_spin>
c0102952:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
c0102955:	89 c2                	mov    edx,eax
c0102957:	83 ca 07             	or     edx,0x7
c010295a:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c010295d:	89 10                	mov    DWORD PTR [eax],edx
c010295f:	e9 89 00 00 00       	jmp    c01029ed <page_table_add+0x155>
c0102964:	c7 44 24 04 01 00 00 	mov    DWORD PTR [esp+0x4],0x1
c010296b:	00 
c010296c:	c7 04 24 20 18 11 c0 	mov    DWORD PTR [esp],0xc0111820
c0102973:	e8 e0 fd ff ff       	call   c0102758 <pgman_alloc>
c0102978:	89 45 e8             	mov    DWORD PTR [ebp-0x18],eax
c010297b:	8b 45 e8             	mov    eax,DWORD PTR [ebp-0x18]
c010297e:	89 c2                	mov    edx,eax
c0102980:	83 ca 07             	or     edx,0x7
c0102983:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0102986:	89 10                	mov    DWORD PTR [eax],edx
c0102988:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c010298b:	25 00 f0 ff ff       	and    eax,0xfffff000
c0102990:	c7 44 24 08 00 10 00 	mov    DWORD PTR [esp+0x8],0x1000
c0102997:	00 
c0102998:	c7 44 24 04 00 00 00 	mov    DWORD PTR [esp+0x4],0x0
c010299f:	00 
c01029a0:	89 04 24             	mov    DWORD PTR [esp],eax
c01029a3:	e8 98 38 00 00       	call   c0106240 <memset>
c01029a8:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c01029ab:	8b 00                	mov    eax,DWORD PTR [eax]
c01029ad:	83 e0 01             	and    eax,0x1
c01029b0:	85 c0                	test   eax,eax
c01029b2:	74 2c                	je     c01029e0 <page_table_add+0x148>
c01029b4:	c7 44 24 10 b8 a6 10 	mov    DWORD PTR [esp+0x10],0xc010a6b8
c01029bb:	c0 
c01029bc:	c7 44 24 0c 06 a8 10 	mov    DWORD PTR [esp+0xc],0xc010a806
c01029c3:	c0 
c01029c4:	c7 44 24 08 b3 00 00 	mov    DWORD PTR [esp+0x8],0xb3
c01029cb:	00 
c01029cc:	c7 44 24 04 90 a6 10 	mov    DWORD PTR [esp+0x4],0xc010a690
c01029d3:	c0 
c01029d4:	c7 04 24 90 a6 10 c0 	mov    DWORD PTR [esp],0xc010a690
c01029db:	e8 04 e2 ff ff       	call   c0100be4 <panic_spin>
c01029e0:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
c01029e3:	89 c2                	mov    edx,eax
c01029e5:	83 ca 07             	or     edx,0x7
c01029e8:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c01029eb:	89 10                	mov    DWORD PTR [eax],edx
c01029ed:	c9                   	leave  
c01029ee:	c3                   	ret    

c01029ef <page_alloc>:
c01029ef:	55                   	push   ebp
c01029f0:	89 e5                	mov    ebp,esp
c01029f2:	83 ec 38             	sub    esp,0x38
c01029f5:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c01029f8:	89 45 f0             	mov    DWORD PTR [ebp-0x10],eax
c01029fb:	83 7d 08 01          	cmp    DWORD PTR [ebp+0x8],0x1
c01029ff:	75 07                	jne    c0102a08 <page_alloc+0x19>
c0102a01:	b8 20 18 11 c0       	mov    eax,0xc0111820
c0102a06:	eb 05                	jmp    c0102a0d <page_alloc+0x1e>
c0102a08:	b8 20 d9 10 c0       	mov    eax,0xc010d920
c0102a0d:	89 45 ec             	mov    DWORD PTR [ebp-0x14],eax
c0102a10:	83 7d 08 01          	cmp    DWORD PTR [ebp+0x8],0x1
c0102a14:	74 0a                	je     c0102a20 <page_alloc+0x31>
c0102a16:	e8 58 0c 00 00       	call   c0103673 <running_thread>
c0102a1b:	83 c0 40             	add    eax,0x40
c0102a1e:	eb 05                	jmp    c0102a25 <page_alloc+0x36>
c0102a20:	b8 60 d9 10 c0       	mov    eax,0xc010d960
c0102a25:	89 45 e8             	mov    DWORD PTR [ebp-0x18],eax
c0102a28:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c0102a2b:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c0102a2f:	8b 45 e8             	mov    eax,DWORD PTR [ebp-0x18]
c0102a32:	89 04 24             	mov    DWORD PTR [esp],eax
c0102a35:	e8 1e fd ff ff       	call   c0102758 <pgman_alloc>
c0102a3a:	89 45 e4             	mov    DWORD PTR [ebp-0x1c],eax
c0102a3d:	83 7d e4 00          	cmp    DWORD PTR [ebp-0x1c],0x0
c0102a41:	75 07                	jne    c0102a4a <page_alloc+0x5b>
c0102a43:	b8 00 00 00 00       	mov    eax,0x0
c0102a48:	eb 51                	jmp    c0102a9b <page_alloc+0xac>
c0102a4a:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
c0102a4d:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
c0102a50:	eb 40                	jmp    c0102a92 <page_alloc+0xa3>
c0102a52:	83 6d f0 01          	sub    DWORD PTR [ebp-0x10],0x1
c0102a56:	c7 44 24 04 01 00 00 	mov    DWORD PTR [esp+0x4],0x1
c0102a5d:	00 
c0102a5e:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
c0102a61:	89 04 24             	mov    DWORD PTR [esp],eax
c0102a64:	e8 ef fc ff ff       	call   c0102758 <pgman_alloc>
c0102a69:	89 45 e0             	mov    DWORD PTR [ebp-0x20],eax
c0102a6c:	83 7d e0 00          	cmp    DWORD PTR [ebp-0x20],0x0
c0102a70:	75 07                	jne    c0102a79 <page_alloc+0x8a>
c0102a72:	b8 00 00 00 00       	mov    eax,0x0
c0102a77:	eb 22                	jmp    c0102a9b <page_alloc+0xac>
c0102a79:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0102a7c:	8b 55 e0             	mov    edx,DWORD PTR [ebp-0x20]
c0102a7f:	89 54 24 04          	mov    DWORD PTR [esp+0x4],edx
c0102a83:	89 04 24             	mov    DWORD PTR [esp],eax
c0102a86:	e8 0d fe ff ff       	call   c0102898 <page_table_add>
c0102a8b:	81 45 f4 00 10 00 00 	add    DWORD PTR [ebp-0xc],0x1000
c0102a92:	83 7d f0 00          	cmp    DWORD PTR [ebp-0x10],0x0
c0102a96:	75 ba                	jne    c0102a52 <page_alloc+0x63>
c0102a98:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
c0102a9b:	c9                   	leave  
c0102a9c:	c3                   	ret    

c0102a9d <get_kernel_page>:
c0102a9d:	55                   	push   ebp
c0102a9e:	89 e5                	mov    ebp,esp
c0102aa0:	83 ec 28             	sub    esp,0x28
c0102aa3:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102aa6:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c0102aaa:	c7 04 24 01 00 00 00 	mov    DWORD PTR [esp],0x1
c0102ab1:	e8 39 ff ff ff       	call   c01029ef <page_alloc>
c0102ab6:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
c0102ab9:	83 7d f4 00          	cmp    DWORD PTR [ebp-0xc],0x0
c0102abd:	74 1d                	je     c0102adc <get_kernel_page+0x3f>
c0102abf:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102ac2:	c1 e0 0c             	shl    eax,0xc
c0102ac5:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
c0102ac9:	c7 44 24 04 00 00 00 	mov    DWORD PTR [esp+0x4],0x0
c0102ad0:	00 
c0102ad1:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0102ad4:	89 04 24             	mov    DWORD PTR [esp],eax
c0102ad7:	e8 64 37 00 00       	call   c0106240 <memset>
c0102adc:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0102adf:	c9                   	leave  
c0102ae0:	c3                   	ret    

c0102ae1 <get_user_page>:
c0102ae1:	55                   	push   ebp
c0102ae2:	89 e5                	mov    ebp,esp
c0102ae4:	83 ec 28             	sub    esp,0x28
c0102ae7:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102aea:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c0102aee:	c7 04 24 02 00 00 00 	mov    DWORD PTR [esp],0x2
c0102af5:	e8 f5 fe ff ff       	call   c01029ef <page_alloc>
c0102afa:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
c0102afd:	83 7d f4 00          	cmp    DWORD PTR [ebp-0xc],0x0
c0102b01:	74 1d                	je     c0102b20 <get_user_page+0x3f>
c0102b03:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102b06:	c1 e0 0c             	shl    eax,0xc
c0102b09:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
c0102b0d:	c7 44 24 04 00 00 00 	mov    DWORD PTR [esp+0x4],0x0
c0102b14:	00 
c0102b15:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0102b18:	89 04 24             	mov    DWORD PTR [esp],eax
c0102b1b:	e8 20 37 00 00       	call   c0106240 <memset>
c0102b20:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0102b23:	c9                   	leave  
c0102b24:	c3                   	ret    

c0102b25 <get_a_page>:
c0102b25:	55                   	push   ebp
c0102b26:	89 e5                	mov    ebp,esp
c0102b28:	83 ec 38             	sub    esp,0x38
c0102b2b:	83 7d 08 01          	cmp    DWORD PTR [ebp+0x8],0x1
c0102b2f:	75 07                	jne    c0102b38 <get_a_page+0x13>
c0102b31:	b8 20 18 11 c0       	mov    eax,0xc0111820
c0102b36:	eb 05                	jmp    c0102b3d <get_a_page+0x18>
c0102b38:	b8 20 d9 10 c0       	mov    eax,0xc010d920
c0102b3d:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
c0102b40:	e8 2e 0b 00 00       	call   c0103673 <running_thread>
c0102b45:	89 45 f0             	mov    DWORD PTR [ebp-0x10],eax
c0102b48:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c0102b4b:	8b 40 3c             	mov    eax,DWORD PTR [eax+0x3c]
c0102b4e:	85 c0                	test   eax,eax
c0102b50:	74 06                	je     c0102b58 <get_a_page+0x33>
c0102b52:	83 7d 08 02          	cmp    DWORD PTR [ebp+0x8],0x2
c0102b56:	74 3c                	je     c0102b94 <get_a_page+0x6f>
c0102b58:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c0102b5b:	8b 40 3c             	mov    eax,DWORD PTR [eax+0x3c]
c0102b5e:	85 c0                	test   eax,eax
c0102b60:	75 06                	jne    c0102b68 <get_a_page+0x43>
c0102b62:	83 7d 08 01          	cmp    DWORD PTR [ebp+0x8],0x1
c0102b66:	74 2c                	je     c0102b94 <get_a_page+0x6f>
c0102b68:	c7 44 24 10 d8 a6 10 	mov    DWORD PTR [esp+0x10],0xc010a6d8
c0102b6f:	c0 
c0102b70:	c7 44 24 0c fb a7 10 	mov    DWORD PTR [esp+0xc],0xc010a7fb
c0102b77:	c0 
c0102b78:	c7 44 24 08 f7 00 00 	mov    DWORD PTR [esp+0x8],0xf7
c0102b7f:	00 
c0102b80:	c7 44 24 04 90 a6 10 	mov    DWORD PTR [esp+0x4],0xc010a690
c0102b87:	c0 
c0102b88:	c7 04 24 90 a6 10 c0 	mov    DWORD PTR [esp],0xc010a690
c0102b8f:	e8 50 e0 ff ff       	call   c0100be4 <panic_spin>
c0102b94:	c7 44 24 04 01 00 00 	mov    DWORD PTR [esp+0x4],0x1
c0102b9b:	00 
c0102b9c:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0102b9f:	89 04 24             	mov    DWORD PTR [esp],eax
c0102ba2:	e8 b1 fb ff ff       	call   c0102758 <pgman_alloc>
c0102ba7:	89 45 ec             	mov    DWORD PTR [ebp-0x14],eax
c0102baa:	83 7d ec 00          	cmp    DWORD PTR [ebp-0x14],0x0
c0102bae:	75 2c                	jne    c0102bdc <get_a_page+0xb7>
c0102bb0:	c7 44 24 10 2f a7 10 	mov    DWORD PTR [esp+0x10],0xc010a72f
c0102bb7:	c0 
c0102bb8:	c7 44 24 0c fb a7 10 	mov    DWORD PTR [esp+0xc],0xc010a7fb
c0102bbf:	c0 
c0102bc0:	c7 44 24 08 fa 00 00 	mov    DWORD PTR [esp+0x8],0xfa
c0102bc7:	00 
c0102bc8:	c7 44 24 04 90 a6 10 	mov    DWORD PTR [esp+0x4],0xc010a690
c0102bcf:	c0 
c0102bd0:	c7 04 24 90 a6 10 c0 	mov    DWORD PTR [esp],0xc010a690
c0102bd7:	e8 08 e0 ff ff       	call   c0100be4 <panic_spin>
c0102bdc:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
c0102bdf:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c0102be3:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c0102be6:	89 04 24             	mov    DWORD PTR [esp],eax
c0102be9:	e8 aa fc ff ff       	call   c0102898 <page_table_add>
c0102bee:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c0102bf1:	c9                   	leave  
c0102bf2:	c3                   	ret    

c0102bf3 <pgman_free>:
c0102bf3:	55                   	push   ebp
c0102bf4:	89 e5                	mov    ebp,esp
c0102bf6:	53                   	push   ebx
c0102bf7:	83 ec 34             	sub    esp,0x34
c0102bfa:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c0102bfd:	c1 e8 0c             	shr    eax,0xc
c0102c00:	89 45 e8             	mov    DWORD PTR [ebp-0x18],eax
c0102c03:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102c06:	89 04 24             	mov    DWORD PTR [esp],eax
c0102c09:	e8 d4 07 00 00       	call   c01033e2 <lock_acquire>
c0102c0e:	c7 45 f4 00 00 00 00 	mov    DWORD PTR [ebp-0xc],0x0
c0102c15:	eb 19                	jmp    c0102c30 <pgman_free+0x3d>
c0102c17:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102c1a:	8b 40 38             	mov    eax,DWORD PTR [eax+0x38]
c0102c1d:	8b 55 f4             	mov    edx,DWORD PTR [ebp-0xc]
c0102c20:	c1 e2 03             	shl    edx,0x3
c0102c23:	01 d0                	add    eax,edx
c0102c25:	8b 00                	mov    eax,DWORD PTR [eax]
c0102c27:	3b 45 e8             	cmp    eax,DWORD PTR [ebp-0x18]
c0102c2a:	7f 13                	jg     c0102c3f <pgman_free+0x4c>
c0102c2c:	83 45 f4 01          	add    DWORD PTR [ebp-0xc],0x1
c0102c30:	8b 55 f4             	mov    edx,DWORD PTR [ebp-0xc]
c0102c33:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102c36:	8b 40 24             	mov    eax,DWORD PTR [eax+0x24]
c0102c39:	39 c2                	cmp    edx,eax
c0102c3b:	72 da                	jb     c0102c17 <pgman_free+0x24>
c0102c3d:	eb 01                	jmp    c0102c40 <pgman_free+0x4d>
c0102c3f:	90                   	nop
c0102c40:	83 7d f4 00          	cmp    DWORD PTR [ebp-0xc],0x0
c0102c44:	0f 8e 37 01 00 00    	jle    c0102d81 <pgman_free+0x18e>
c0102c4a:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102c4d:	8b 40 38             	mov    eax,DWORD PTR [eax+0x38]
c0102c50:	8b 55 f4             	mov    edx,DWORD PTR [ebp-0xc]
c0102c53:	83 ea 01             	sub    edx,0x1
c0102c56:	c1 e2 03             	shl    edx,0x3
c0102c59:	01 d0                	add    eax,edx
c0102c5b:	8b 00                	mov    eax,DWORD PTR [eax]
c0102c5d:	89 c2                	mov    edx,eax
c0102c5f:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102c62:	8b 40 38             	mov    eax,DWORD PTR [eax+0x38]
c0102c65:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
c0102c68:	83 e9 01             	sub    ecx,0x1
c0102c6b:	c1 e1 03             	shl    ecx,0x3
c0102c6e:	01 c8                	add    eax,ecx
c0102c70:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
c0102c73:	01 c2                	add    edx,eax
c0102c75:	8b 45 e8             	mov    eax,DWORD PTR [ebp-0x18]
c0102c78:	39 c2                	cmp    edx,eax
c0102c7a:	0f 85 01 01 00 00    	jne    c0102d81 <pgman_free+0x18e>
c0102c80:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102c83:	8b 40 38             	mov    eax,DWORD PTR [eax+0x38]
c0102c86:	8b 55 f4             	mov    edx,DWORD PTR [ebp-0xc]
c0102c89:	83 ea 01             	sub    edx,0x1
c0102c8c:	c1 e2 03             	shl    edx,0x3
c0102c8f:	01 c2                	add    edx,eax
c0102c91:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102c94:	8b 40 38             	mov    eax,DWORD PTR [eax+0x38]
c0102c97:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
c0102c9a:	83 e9 01             	sub    ecx,0x1
c0102c9d:	c1 e1 03             	shl    ecx,0x3
c0102ca0:	01 c8                	add    eax,ecx
c0102ca2:	8b 48 04             	mov    ecx,DWORD PTR [eax+0x4]
c0102ca5:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
c0102ca8:	01 c8                	add    eax,ecx
c0102caa:	89 42 04             	mov    DWORD PTR [edx+0x4],eax
c0102cad:	8b 55 f4             	mov    edx,DWORD PTR [ebp-0xc]
c0102cb0:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102cb3:	8b 40 24             	mov    eax,DWORD PTR [eax+0x24]
c0102cb6:	39 c2                	cmp    edx,eax
c0102cb8:	0f 83 ae 00 00 00    	jae    c0102d6c <pgman_free+0x179>
c0102cbe:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
c0102cc1:	8b 55 e8             	mov    edx,DWORD PTR [ebp-0x18]
c0102cc4:	8d 0c 02             	lea    ecx,[edx+eax*1]
c0102cc7:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102cca:	8b 40 38             	mov    eax,DWORD PTR [eax+0x38]
c0102ccd:	8b 55 f4             	mov    edx,DWORD PTR [ebp-0xc]
c0102cd0:	c1 e2 03             	shl    edx,0x3
c0102cd3:	01 d0                	add    eax,edx
c0102cd5:	8b 00                	mov    eax,DWORD PTR [eax]
c0102cd7:	39 c1                	cmp    ecx,eax
c0102cd9:	0f 85 8d 00 00 00    	jne    c0102d6c <pgman_free+0x179>
c0102cdf:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102ce2:	8b 40 38             	mov    eax,DWORD PTR [eax+0x38]
c0102ce5:	8b 55 f4             	mov    edx,DWORD PTR [ebp-0xc]
c0102ce8:	83 ea 01             	sub    edx,0x1
c0102ceb:	c1 e2 03             	shl    edx,0x3
c0102cee:	01 c2                	add    edx,eax
c0102cf0:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102cf3:	8b 40 38             	mov    eax,DWORD PTR [eax+0x38]
c0102cf6:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
c0102cf9:	83 e9 01             	sub    ecx,0x1
c0102cfc:	c1 e1 03             	shl    ecx,0x3
c0102cff:	01 c8                	add    eax,ecx
c0102d01:	8b 48 04             	mov    ecx,DWORD PTR [eax+0x4]
c0102d04:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102d07:	8b 40 38             	mov    eax,DWORD PTR [eax+0x38]
c0102d0a:	8b 5d f4             	mov    ebx,DWORD PTR [ebp-0xc]
c0102d0d:	c1 e3 03             	shl    ebx,0x3
c0102d10:	01 d8                	add    eax,ebx
c0102d12:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
c0102d15:	01 c8                	add    eax,ecx
c0102d17:	89 42 04             	mov    DWORD PTR [edx+0x4],eax
c0102d1a:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102d1d:	8b 40 24             	mov    eax,DWORD PTR [eax+0x24]
c0102d20:	8d 50 ff             	lea    edx,[eax-0x1]
c0102d23:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102d26:	89 50 24             	mov    DWORD PTR [eax+0x24],edx
c0102d29:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0102d2c:	89 45 f0             	mov    DWORD PTR [ebp-0x10],eax
c0102d2f:	eb 2e                	jmp    c0102d5f <pgman_free+0x16c>
c0102d31:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102d34:	8b 40 38             	mov    eax,DWORD PTR [eax+0x38]
c0102d37:	8b 55 f0             	mov    edx,DWORD PTR [ebp-0x10]
c0102d3a:	c1 e2 03             	shl    edx,0x3
c0102d3d:	8d 0c 10             	lea    ecx,[eax+edx*1]
c0102d40:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102d43:	8b 40 38             	mov    eax,DWORD PTR [eax+0x38]
c0102d46:	8b 55 f0             	mov    edx,DWORD PTR [ebp-0x10]
c0102d49:	83 c2 01             	add    edx,0x1
c0102d4c:	c1 e2 03             	shl    edx,0x3
c0102d4f:	01 d0                	add    eax,edx
c0102d51:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
c0102d54:	8b 00                	mov    eax,DWORD PTR [eax]
c0102d56:	89 01                	mov    DWORD PTR [ecx],eax
c0102d58:	89 51 04             	mov    DWORD PTR [ecx+0x4],edx
c0102d5b:	83 45 f0 01          	add    DWORD PTR [ebp-0x10],0x1
c0102d5f:	8b 55 f0             	mov    edx,DWORD PTR [ebp-0x10]
c0102d62:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102d65:	8b 40 24             	mov    eax,DWORD PTR [eax+0x24]
c0102d68:	39 c2                	cmp    edx,eax
c0102d6a:	72 c5                	jb     c0102d31 <pgman_free+0x13e>
c0102d6c:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102d6f:	89 04 24             	mov    DWORD PTR [esp],eax
c0102d72:	e8 ef 06 00 00       	call   c0103466 <lock_release>
c0102d77:	b8 00 00 00 00       	mov    eax,0x0
c0102d7c:	e9 8b 01 00 00       	jmp    c0102f0c <pgman_free+0x319>
c0102d81:	8b 55 f4             	mov    edx,DWORD PTR [ebp-0xc]
c0102d84:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102d87:	8b 40 24             	mov    eax,DWORD PTR [eax+0x24]
c0102d8a:	39 c2                	cmp    edx,eax
c0102d8c:	73 6c                	jae    c0102dfa <pgman_free+0x207>
c0102d8e:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
c0102d91:	8b 55 e8             	mov    edx,DWORD PTR [ebp-0x18]
c0102d94:	8d 0c 02             	lea    ecx,[edx+eax*1]
c0102d97:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102d9a:	8b 40 38             	mov    eax,DWORD PTR [eax+0x38]
c0102d9d:	8b 55 f4             	mov    edx,DWORD PTR [ebp-0xc]
c0102da0:	c1 e2 03             	shl    edx,0x3
c0102da3:	01 d0                	add    eax,edx
c0102da5:	8b 00                	mov    eax,DWORD PTR [eax]
c0102da7:	39 c1                	cmp    ecx,eax
c0102da9:	75 4f                	jne    c0102dfa <pgman_free+0x207>
c0102dab:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102dae:	8b 40 38             	mov    eax,DWORD PTR [eax+0x38]
c0102db1:	8b 55 f4             	mov    edx,DWORD PTR [ebp-0xc]
c0102db4:	c1 e2 03             	shl    edx,0x3
c0102db7:	01 c2                	add    edx,eax
c0102db9:	8b 45 e8             	mov    eax,DWORD PTR [ebp-0x18]
c0102dbc:	89 02                	mov    DWORD PTR [edx],eax
c0102dbe:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102dc1:	8b 40 38             	mov    eax,DWORD PTR [eax+0x38]
c0102dc4:	8b 55 f4             	mov    edx,DWORD PTR [ebp-0xc]
c0102dc7:	c1 e2 03             	shl    edx,0x3
c0102dca:	01 c2                	add    edx,eax
c0102dcc:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102dcf:	8b 40 38             	mov    eax,DWORD PTR [eax+0x38]
c0102dd2:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
c0102dd5:	c1 e1 03             	shl    ecx,0x3
c0102dd8:	01 c8                	add    eax,ecx
c0102dda:	8b 48 04             	mov    ecx,DWORD PTR [eax+0x4]
c0102ddd:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
c0102de0:	01 c8                	add    eax,ecx
c0102de2:	89 42 04             	mov    DWORD PTR [edx+0x4],eax
c0102de5:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102de8:	89 04 24             	mov    DWORD PTR [esp],eax
c0102deb:	e8 76 06 00 00       	call   c0103466 <lock_release>
c0102df0:	b8 00 00 00 00       	mov    eax,0x0
c0102df5:	e9 12 01 00 00       	jmp    c0102f0c <pgman_free+0x319>
c0102dfa:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102dfd:	8b 40 24             	mov    eax,DWORD PTR [eax+0x24]
c0102e00:	3d e7 03 00 00       	cmp    eax,0x3e7
c0102e05:	0f 87 a5 00 00 00    	ja     c0102eb0 <pgman_free+0x2bd>
c0102e0b:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102e0e:	8b 40 24             	mov    eax,DWORD PTR [eax+0x24]
c0102e11:	89 45 ec             	mov    DWORD PTR [ebp-0x14],eax
c0102e14:	eb 2e                	jmp    c0102e44 <pgman_free+0x251>
c0102e16:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102e19:	8b 40 38             	mov    eax,DWORD PTR [eax+0x38]
c0102e1c:	8b 55 ec             	mov    edx,DWORD PTR [ebp-0x14]
c0102e1f:	c1 e2 03             	shl    edx,0x3
c0102e22:	8d 0c 10             	lea    ecx,[eax+edx*1]
c0102e25:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102e28:	8b 40 38             	mov    eax,DWORD PTR [eax+0x38]
c0102e2b:	8b 55 ec             	mov    edx,DWORD PTR [ebp-0x14]
c0102e2e:	83 ea 01             	sub    edx,0x1
c0102e31:	c1 e2 03             	shl    edx,0x3
c0102e34:	01 d0                	add    eax,edx
c0102e36:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
c0102e39:	8b 00                	mov    eax,DWORD PTR [eax]
c0102e3b:	89 01                	mov    DWORD PTR [ecx],eax
c0102e3d:	89 51 04             	mov    DWORD PTR [ecx+0x4],edx
c0102e40:	83 6d ec 01          	sub    DWORD PTR [ebp-0x14],0x1
c0102e44:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
c0102e47:	3b 45 f4             	cmp    eax,DWORD PTR [ebp-0xc]
c0102e4a:	7f ca                	jg     c0102e16 <pgman_free+0x223>
c0102e4c:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102e4f:	8b 40 24             	mov    eax,DWORD PTR [eax+0x24]
c0102e52:	8d 50 01             	lea    edx,[eax+0x1]
c0102e55:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102e58:	89 50 24             	mov    DWORD PTR [eax+0x24],edx
c0102e5b:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102e5e:	8b 50 28             	mov    edx,DWORD PTR [eax+0x28]
c0102e61:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102e64:	8b 40 24             	mov    eax,DWORD PTR [eax+0x24]
c0102e67:	39 c2                	cmp    edx,eax
c0102e69:	73 0c                	jae    c0102e77 <pgman_free+0x284>
c0102e6b:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102e6e:	8b 50 24             	mov    edx,DWORD PTR [eax+0x24]
c0102e71:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102e74:	89 50 28             	mov    DWORD PTR [eax+0x28],edx
c0102e77:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102e7a:	8b 40 38             	mov    eax,DWORD PTR [eax+0x38]
c0102e7d:	8b 55 f4             	mov    edx,DWORD PTR [ebp-0xc]
c0102e80:	c1 e2 03             	shl    edx,0x3
c0102e83:	01 c2                	add    edx,eax
c0102e85:	8b 45 e8             	mov    eax,DWORD PTR [ebp-0x18]
c0102e88:	89 02                	mov    DWORD PTR [edx],eax
c0102e8a:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102e8d:	8b 40 38             	mov    eax,DWORD PTR [eax+0x38]
c0102e90:	8b 55 f4             	mov    edx,DWORD PTR [ebp-0xc]
c0102e93:	c1 e2 03             	shl    edx,0x3
c0102e96:	01 c2                	add    edx,eax
c0102e98:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
c0102e9b:	89 42 04             	mov    DWORD PTR [edx+0x4],eax
c0102e9e:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102ea1:	89 04 24             	mov    DWORD PTR [esp],eax
c0102ea4:	e8 bd 05 00 00       	call   c0103466 <lock_release>
c0102ea9:	b8 00 00 00 00       	mov    eax,0x0
c0102eae:	eb 5c                	jmp    c0102f0c <pgman_free+0x319>
c0102eb0:	c7 44 24 10 42 a7 10 	mov    DWORD PTR [esp+0x10],0xc010a742
c0102eb7:	c0 
c0102eb8:	c7 44 24 0c f0 a7 10 	mov    DWORD PTR [esp+0xc],0xc010a7f0
c0102ebf:	c0 
c0102ec0:	c7 44 24 08 48 01 00 	mov    DWORD PTR [esp+0x8],0x148
c0102ec7:	00 
c0102ec8:	c7 44 24 04 90 a6 10 	mov    DWORD PTR [esp+0x4],0xc010a690
c0102ecf:	c0 
c0102ed0:	c7 04 24 90 a6 10 c0 	mov    DWORD PTR [esp],0xc010a690
c0102ed7:	e8 08 dd ff ff       	call   c0100be4 <panic_spin>
c0102edc:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102edf:	8b 40 30             	mov    eax,DWORD PTR [eax+0x30]
c0102ee2:	8d 50 01             	lea    edx,[eax+0x1]
c0102ee5:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102ee8:	89 50 30             	mov    DWORD PTR [eax+0x30],edx
c0102eeb:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102eee:	8b 50 2c             	mov    edx,DWORD PTR [eax+0x2c]
c0102ef1:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
c0102ef4:	01 c2                	add    edx,eax
c0102ef6:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102ef9:	89 50 2c             	mov    DWORD PTR [eax+0x2c],edx
c0102efc:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102eff:	89 04 24             	mov    DWORD PTR [esp],eax
c0102f02:	e8 5f 05 00 00       	call   c0103466 <lock_release>
c0102f07:	b8 01 00 00 00       	mov    eax,0x1
c0102f0c:	83 c4 34             	add    esp,0x34
c0102f0f:	5b                   	pop    ebx
c0102f10:	5d                   	pop    ebp
c0102f11:	c3                   	ret    

c0102f12 <page_table_remove>:
c0102f12:	55                   	push   ebp
c0102f13:	89 e5                	mov    ebp,esp
c0102f15:	83 ec 14             	sub    esp,0x14
c0102f18:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102f1b:	89 04 24             	mov    DWORD PTR [esp],eax
c0102f1e:	e8 e1 f7 ff ff       	call   c0102704 <pte_ptr>
c0102f23:	89 45 fc             	mov    DWORD PTR [ebp-0x4],eax
c0102f26:	8b 45 fc             	mov    eax,DWORD PTR [ebp-0x4]
c0102f29:	8b 00                	mov    eax,DWORD PTR [eax]
c0102f2b:	89 c2                	mov    edx,eax
c0102f2d:	83 e2 fe             	and    edx,0xfffffffe
c0102f30:	8b 45 fc             	mov    eax,DWORD PTR [ebp-0x4]
c0102f33:	89 10                	mov    DWORD PTR [eax],edx
c0102f35:	0f 01 7d 08          	invlpg BYTE PTR [ebp+0x8]
c0102f39:	c9                   	leave  
c0102f3a:	c3                   	ret    

c0102f3b <paddr_free>:
c0102f3b:	55                   	push   ebp
c0102f3c:	89 e5                	mov    ebp,esp
c0102f3e:	83 ec 28             	sub    esp,0x28
c0102f41:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c0102f44:	a1 70 b2 10 c0       	mov    eax,ds:0xc010b270
c0102f49:	39 c2                	cmp    edx,eax
c0102f4b:	72 09                	jb     c0102f56 <paddr_free+0x1b>
c0102f4d:	c7 45 f4 20 d9 10 c0 	mov    DWORD PTR [ebp-0xc],0xc010d920
c0102f54:	eb 07                	jmp    c0102f5d <paddr_free+0x22>
c0102f56:	c7 45 f4 20 18 11 c0 	mov    DWORD PTR [ebp-0xc],0xc0111820
c0102f5d:	c7 44 24 08 01 00 00 	mov    DWORD PTR [esp+0x8],0x1
c0102f64:	00 
c0102f65:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102f68:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c0102f6c:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0102f6f:	89 04 24             	mov    DWORD PTR [esp],eax
c0102f72:	e8 7c fc ff ff       	call   c0102bf3 <pgman_free>
c0102f77:	c9                   	leave  
c0102f78:	c3                   	ret    

c0102f79 <vaddr_free>:
c0102f79:	55                   	push   ebp
c0102f7a:	89 e5                	mov    ebp,esp
c0102f7c:	83 ec 28             	sub    esp,0x28
c0102f7f:	83 7d 08 01          	cmp    DWORD PTR [ebp+0x8],0x1
c0102f83:	75 1c                	jne    c0102fa1 <vaddr_free+0x28>
c0102f85:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
c0102f88:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
c0102f8c:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c0102f8f:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c0102f93:	c7 04 24 60 d9 10 c0 	mov    DWORD PTR [esp],0xc010d960
c0102f9a:	e8 54 fc ff ff       	call   c0102bf3 <pgman_free>
c0102f9f:	eb 24                	jmp    c0102fc5 <vaddr_free+0x4c>
c0102fa1:	e8 cd 06 00 00       	call   c0103673 <running_thread>
c0102fa6:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
c0102fa9:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
c0102fac:	8b 55 f4             	mov    edx,DWORD PTR [ebp-0xc]
c0102faf:	83 c2 40             	add    edx,0x40
c0102fb2:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
c0102fb6:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c0102fb9:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c0102fbd:	89 14 24             	mov    DWORD PTR [esp],edx
c0102fc0:	e8 2e fc ff ff       	call   c0102bf3 <pgman_free>
c0102fc5:	c9                   	leave  
c0102fc6:	c3                   	ret    

c0102fc7 <page_free>:
c0102fc7:	55                   	push   ebp
c0102fc8:	89 e5                	mov    ebp,esp
c0102fca:	83 ec 38             	sub    esp,0x38
c0102fcd:	83 7d 10 00          	cmp    DWORD PTR [ebp+0x10],0x0
c0102fd1:	7e 0c                	jle    c0102fdf <page_free+0x18>
c0102fd3:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c0102fd6:	25 ff 0f 00 00       	and    eax,0xfff
c0102fdb:	85 c0                	test   eax,eax
c0102fdd:	74 2c                	je     c010300b <page_free+0x44>
c0102fdf:	c7 44 24 10 54 a7 10 	mov    DWORD PTR [esp+0x10],0xc010a754
c0102fe6:	c0 
c0102fe7:	c7 44 24 0c e6 a7 10 	mov    DWORD PTR [esp+0xc],0xc010a7e6
c0102fee:	c0 
c0102fef:	c7 44 24 08 78 01 00 	mov    DWORD PTR [esp+0x8],0x178
c0102ff6:	00 
c0102ff7:	c7 44 24 04 90 a6 10 	mov    DWORD PTR [esp+0x4],0xc010a690
c0102ffe:	c0 
c0102fff:	c7 04 24 90 a6 10 c0 	mov    DWORD PTR [esp],0xc010a690
c0103006:	e8 d9 db ff ff       	call   c0100be4 <panic_spin>
c010300b:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c010300e:	89 04 24             	mov    DWORD PTR [esp],eax
c0103011:	e8 15 f7 ff ff       	call   c010272b <addr_v2p>
c0103016:	89 45 ec             	mov    DWORD PTR [ebp-0x14],eax
c0103019:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
c010301c:	25 ff 0f 00 00       	and    eax,0xfff
c0103021:	85 c0                	test   eax,eax
c0103023:	75 0a                	jne    c010302f <page_free+0x68>
c0103025:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
c0103028:	3d ff ff 5f 00       	cmp    eax,0x5fffff
c010302d:	77 2c                	ja     c010305b <page_free+0x94>
c010302f:	c7 44 24 10 88 a7 10 	mov    DWORD PTR [esp+0x10],0xc010a788
c0103036:	c0 
c0103037:	c7 44 24 0c e6 a7 10 	mov    DWORD PTR [esp+0xc],0xc010a7e6
c010303e:	c0 
c010303f:	c7 44 24 08 7a 01 00 	mov    DWORD PTR [esp+0x8],0x17a
c0103046:	00 
c0103047:	c7 44 24 04 90 a6 10 	mov    DWORD PTR [esp+0x4],0xc010a690
c010304e:	c0 
c010304f:	c7 04 24 90 a6 10 c0 	mov    DWORD PTR [esp],0xc010a690
c0103056:	e8 89 db ff ff       	call   c0100be4 <panic_spin>
c010305b:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c010305e:	89 45 f0             	mov    DWORD PTR [ebp-0x10],eax
c0103061:	8b 55 ec             	mov    edx,DWORD PTR [ebp-0x14]
c0103064:	a1 70 b2 10 c0       	mov    eax,ds:0xc010b270
c0103069:	39 c2                	cmp    edx,eax
c010306b:	72 5b                	jb     c01030c8 <page_free+0x101>
c010306d:	c7 45 f4 00 00 00 00 	mov    DWORD PTR [ebp-0xc],0x0
c0103074:	eb 2f                	jmp    c01030a5 <page_free+0xde>
c0103076:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c0103079:	89 04 24             	mov    DWORD PTR [esp],eax
c010307c:	e8 aa f6 ff ff       	call   c010272b <addr_v2p>
c0103081:	89 45 ec             	mov    DWORD PTR [ebp-0x14],eax
c0103084:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
c0103087:	89 04 24             	mov    DWORD PTR [esp],eax
c010308a:	e8 ac fe ff ff       	call   c0102f3b <paddr_free>
c010308f:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c0103092:	89 04 24             	mov    DWORD PTR [esp],eax
c0103095:	e8 78 fe ff ff       	call   c0102f12 <page_table_remove>
c010309a:	83 45 f4 01          	add    DWORD PTR [ebp-0xc],0x1
c010309e:	81 45 f0 00 10 00 00 	add    DWORD PTR [ebp-0x10],0x1000
c01030a5:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
c01030a8:	3b 45 f4             	cmp    eax,DWORD PTR [ebp-0xc]
c01030ab:	77 c9                	ja     c0103076 <page_free+0xaf>
c01030ad:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
c01030b0:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
c01030b4:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c01030b7:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c01030bb:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01030be:	89 04 24             	mov    DWORD PTR [esp],eax
c01030c1:	e8 b3 fe ff ff       	call   c0102f79 <vaddr_free>
c01030c6:	eb 59                	jmp    c0103121 <page_free+0x15a>
c01030c8:	c7 45 f4 00 00 00 00 	mov    DWORD PTR [ebp-0xc],0x0
c01030cf:	eb 2f                	jmp    c0103100 <page_free+0x139>
c01030d1:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c01030d4:	89 04 24             	mov    DWORD PTR [esp],eax
c01030d7:	e8 4f f6 ff ff       	call   c010272b <addr_v2p>
c01030dc:	89 45 ec             	mov    DWORD PTR [ebp-0x14],eax
c01030df:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
c01030e2:	89 04 24             	mov    DWORD PTR [esp],eax
c01030e5:	e8 51 fe ff ff       	call   c0102f3b <paddr_free>
c01030ea:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c01030ed:	89 04 24             	mov    DWORD PTR [esp],eax
c01030f0:	e8 1d fe ff ff       	call   c0102f12 <page_table_remove>
c01030f5:	83 45 f4 01          	add    DWORD PTR [ebp-0xc],0x1
c01030f9:	81 45 f0 00 10 00 00 	add    DWORD PTR [ebp-0x10],0x1000
c0103100:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
c0103103:	3b 45 f4             	cmp    eax,DWORD PTR [ebp-0xc]
c0103106:	77 c9                	ja     c01030d1 <page_free+0x10a>
c0103108:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
c010310b:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
c010310f:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c0103112:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c0103116:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0103119:	89 04 24             	mov    DWORD PTR [esp],eax
c010311c:	e8 58 fe ff ff       	call   c0102f79 <vaddr_free>
c0103121:	c9                   	leave  
c0103122:	c3                   	ret    
	...

c0103124 <sema_init>:
c0103124:	55                   	push   ebp
c0103125:	89 e5                	mov    ebp,esp
c0103127:	83 ec 38             	sub    esp,0x38
c010312a:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c010312d:	88 45 f4             	mov    BYTE PTR [ebp-0xc],al
c0103130:	0f b6 55 f4          	movzx  edx,BYTE PTR [ebp-0xc]
c0103134:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0103137:	89 10                	mov    DWORD PTR [eax],edx
c0103139:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c010313c:	83 c0 04             	add    eax,0x4
c010313f:	89 04 24             	mov    DWORD PTR [esp],eax
c0103142:	e8 f1 29 00 00       	call   c0105b38 <list_init>
c0103147:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c010314a:	8b 10                	mov    edx,DWORD PTR [eax]
c010314c:	0f b6 45 f4          	movzx  eax,BYTE PTR [ebp-0xc]
c0103150:	39 c2                	cmp    edx,eax
c0103152:	74 2c                	je     c0103180 <sema_init+0x5c>
c0103154:	c7 44 24 10 4f a8 10 	mov    DWORD PTR [esp+0x10],0xc010a84f
c010315b:	c0 
c010315c:	c7 44 24 0c cf a9 10 	mov    DWORD PTR [esp+0xc],0xc010a9cf
c0103163:	c0 
c0103164:	c7 44 24 08 0d 00 00 	mov    DWORD PTR [esp+0x8],0xd
c010316b:	00 
c010316c:	c7 44 24 04 65 a8 10 	mov    DWORD PTR [esp+0x4],0xc010a865
c0103173:	c0 
c0103174:	c7 04 24 65 a8 10 c0 	mov    DWORD PTR [esp],0xc010a865
c010317b:	e8 64 da ff ff       	call   c0100be4 <panic_spin>
c0103180:	c9                   	leave  
c0103181:	c3                   	ret    

c0103182 <lock_init>:
c0103182:	55                   	push   ebp
c0103183:	89 e5                	mov    ebp,esp
c0103185:	83 ec 18             	sub    esp,0x18
c0103188:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c010318b:	c7 00 00 00 00 00    	mov    DWORD PTR [eax],0x0
c0103191:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0103194:	c7 40 20 00 00 00 00 	mov    DWORD PTR [eax+0x20],0x0
c010319b:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c010319e:	83 c0 04             	add    eax,0x4
c01031a1:	c7 44 24 04 01 00 00 	mov    DWORD PTR [esp+0x4],0x1
c01031a8:	00 
c01031a9:	89 04 24             	mov    DWORD PTR [esp],eax
c01031ac:	e8 73 ff ff ff       	call   c0103124 <sema_init>
c01031b1:	c9                   	leave  
c01031b2:	c3                   	ret    

c01031b3 <sema_down>:
c01031b3:	55                   	push   ebp
c01031b4:	89 e5                	mov    ebp,esp
c01031b6:	53                   	push   ebx
c01031b7:	83 ec 34             	sub    esp,0x34
c01031ba:	e8 a2 e7 ff ff       	call   c0101961 <intr_disable>
c01031bf:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
c01031c2:	e9 f7 00 00 00       	jmp    c01032be <sema_down+0x10b>
c01031c7:	e8 a7 04 00 00       	call   c0103673 <running_thread>
c01031cc:	8d 50 30             	lea    edx,[eax+0x30]
c01031cf:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01031d2:	83 c0 04             	add    eax,0x4
c01031d5:	89 54 24 04          	mov    DWORD PTR [esp+0x4],edx
c01031d9:	89 04 24             	mov    DWORD PTR [esp],eax
c01031dc:	e8 54 2a 00 00       	call   c0105c35 <list_find>
c01031e1:	85 c0                	test   eax,eax
c01031e3:	74 2c                	je     c0103211 <sema_down+0x5e>
c01031e5:	c7 44 24 10 74 a8 10 	mov    DWORD PTR [esp+0x10],0xc010a874
c01031ec:	c0 
c01031ed:	c7 44 24 0c c5 a9 10 	mov    DWORD PTR [esp+0xc],0xc010a9c5
c01031f4:	c0 
c01031f5:	c7 44 24 08 24 00 00 	mov    DWORD PTR [esp+0x8],0x24
c01031fc:	00 
c01031fd:	c7 44 24 04 65 a8 10 	mov    DWORD PTR [esp+0x4],0xc010a865
c0103204:	c0 
c0103205:	c7 04 24 65 a8 10 c0 	mov    DWORD PTR [esp],0xc010a865
c010320c:	e8 d3 d9 ff ff       	call   c0100be4 <panic_spin>
c0103211:	e8 5d 04 00 00       	call   c0103673 <running_thread>
c0103216:	8d 50 30             	lea    edx,[eax+0x30]
c0103219:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c010321c:	83 c0 04             	add    eax,0x4
c010321f:	89 54 24 04          	mov    DWORD PTR [esp+0x4],edx
c0103223:	89 04 24             	mov    DWORD PTR [esp],eax
c0103226:	e8 0a 2a 00 00       	call   c0105c35 <list_find>
c010322b:	85 c0                	test   eax,eax
c010322d:	74 2c                	je     c010325b <sema_down+0xa8>
c010322f:	c7 44 24 10 b8 a8 10 	mov    DWORD PTR [esp+0x10],0xc010a8b8
c0103236:	c0 
c0103237:	c7 44 24 0c c5 a9 10 	mov    DWORD PTR [esp+0xc],0xc010a9c5
c010323e:	c0 
c010323f:	c7 44 24 08 27 00 00 	mov    DWORD PTR [esp+0x8],0x27
c0103246:	00 
c0103247:	c7 44 24 04 65 a8 10 	mov    DWORD PTR [esp+0x4],0xc010a865
c010324e:	c0 
c010324f:	c7 04 24 65 a8 10 c0 	mov    DWORD PTR [esp],0xc010a865
c0103256:	e8 89 d9 ff ff       	call   c0100be4 <panic_spin>
c010325b:	e8 13 04 00 00       	call   c0103673 <running_thread>
c0103260:	8b 58 34             	mov    ebx,DWORD PTR [eax+0x34]
c0103263:	e8 0b 04 00 00       	call   c0103673 <running_thread>
c0103268:	39 c3                	cmp    ebx,eax
c010326a:	74 2c                	je     c0103298 <sema_down+0xe5>
c010326c:	c7 44 24 10 ec a8 10 	mov    DWORD PTR [esp+0x10],0xc010a8ec
c0103273:	c0 
c0103274:	c7 44 24 0c c5 a9 10 	mov    DWORD PTR [esp+0xc],0xc010a9c5
c010327b:	c0 
c010327c:	c7 44 24 08 29 00 00 	mov    DWORD PTR [esp+0x8],0x29
c0103283:	00 
c0103284:	c7 44 24 04 65 a8 10 	mov    DWORD PTR [esp+0x4],0xc010a865
c010328b:	c0 
c010328c:	c7 04 24 65 a8 10 c0 	mov    DWORD PTR [esp],0xc010a865
c0103293:	e8 4c d9 ff ff       	call   c0100be4 <panic_spin>
c0103298:	e8 d6 03 00 00       	call   c0103673 <running_thread>
c010329d:	8d 50 30             	lea    edx,[eax+0x30]
c01032a0:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01032a3:	83 c0 04             	add    eax,0x4
c01032a6:	89 54 24 04          	mov    DWORD PTR [esp+0x4],edx
c01032aa:	89 04 24             	mov    DWORD PTR [esp],eax
c01032ad:	e8 11 29 00 00       	call   c0105bc3 <list_append>
c01032b2:	c7 04 24 02 00 00 00 	mov    DWORD PTR [esp],0x2
c01032b9:	e8 5b 07 00 00       	call   c0103a19 <thread_block>
c01032be:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01032c1:	8b 00                	mov    eax,DWORD PTR [eax]
c01032c3:	85 c0                	test   eax,eax
c01032c5:	0f 84 fc fe ff ff    	je     c01031c7 <sema_down+0x14>
c01032cb:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01032ce:	8b 00                	mov    eax,DWORD PTR [eax]
c01032d0:	8d 50 ff             	lea    edx,[eax-0x1]
c01032d3:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01032d6:	89 10                	mov    DWORD PTR [eax],edx
c01032d8:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01032db:	8b 00                	mov    eax,DWORD PTR [eax]
c01032dd:	85 c0                	test   eax,eax
c01032df:	74 2c                	je     c010330d <sema_down+0x15a>
c01032e1:	c7 44 24 10 23 a9 10 	mov    DWORD PTR [esp+0x10],0xc010a923
c01032e8:	c0 
c01032e9:	c7 44 24 0c c5 a9 10 	mov    DWORD PTR [esp+0xc],0xc010a9c5
c01032f0:	c0 
c01032f1:	c7 44 24 08 2e 00 00 	mov    DWORD PTR [esp+0x8],0x2e
c01032f8:	00 
c01032f9:	c7 44 24 04 65 a8 10 	mov    DWORD PTR [esp+0x4],0xc010a865
c0103300:	c0 
c0103301:	c7 04 24 65 a8 10 c0 	mov    DWORD PTR [esp],0xc010a865
c0103308:	e8 d7 d8 ff ff       	call   c0100be4 <panic_spin>
c010330d:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0103310:	89 04 24             	mov    DWORD PTR [esp],eax
c0103313:	e8 76 e6 ff ff       	call   c010198e <intr_set_status>
c0103318:	83 c4 34             	add    esp,0x34
c010331b:	5b                   	pop    ebx
c010331c:	5d                   	pop    ebp
c010331d:	c3                   	ret    

c010331e <sema_up>:
c010331e:	55                   	push   ebp
c010331f:	89 e5                	mov    ebp,esp
c0103321:	83 ec 38             	sub    esp,0x38
c0103324:	e8 38 e6 ff ff       	call   c0101961 <intr_disable>
c0103329:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
c010332c:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c010332f:	8b 00                	mov    eax,DWORD PTR [eax]
c0103331:	85 c0                	test   eax,eax
c0103333:	74 2c                	je     c0103361 <sema_up+0x43>
c0103335:	c7 44 24 10 23 a9 10 	mov    DWORD PTR [esp+0x10],0xc010a923
c010333c:	c0 
c010333d:	c7 44 24 0c bd a9 10 	mov    DWORD PTR [esp+0xc],0xc010a9bd
c0103344:	c0 
c0103345:	c7 44 24 08 39 00 00 	mov    DWORD PTR [esp+0x8],0x39
c010334c:	00 
c010334d:	c7 44 24 04 65 a8 10 	mov    DWORD PTR [esp+0x4],0xc010a865
c0103354:	c0 
c0103355:	c7 04 24 65 a8 10 c0 	mov    DWORD PTR [esp],0xc010a865
c010335c:	e8 83 d8 ff ff       	call   c0100be4 <panic_spin>
c0103361:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0103364:	83 c0 04             	add    eax,0x4
c0103367:	89 04 24             	mov    DWORD PTR [esp],eax
c010336a:	e8 7d 29 00 00       	call   c0105cec <list_empty>
c010336f:	85 c0                	test   eax,eax
c0103371:	75 1f                	jne    c0103392 <sema_up+0x74>
c0103373:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0103376:	83 c0 04             	add    eax,0x4
c0103379:	89 04 24             	mov    DWORD PTR [esp],eax
c010337c:	e8 95 28 00 00       	call   c0105c16 <list_pop>
c0103381:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
c0103384:	89 45 f0             	mov    DWORD PTR [ebp-0x10],eax
c0103387:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c010338a:	89 04 24             	mov    DWORD PTR [esp],eax
c010338d:	e8 27 07 00 00       	call   c0103ab9 <thread_unblock>
c0103392:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0103395:	8b 00                	mov    eax,DWORD PTR [eax]
c0103397:	8d 50 01             	lea    edx,[eax+0x1]
c010339a:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c010339d:	89 10                	mov    DWORD PTR [eax],edx
c010339f:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01033a2:	8b 00                	mov    eax,DWORD PTR [eax]
c01033a4:	83 f8 01             	cmp    eax,0x1
c01033a7:	74 2c                	je     c01033d5 <sema_up+0xb7>
c01033a9:	c7 44 24 10 35 a9 10 	mov    DWORD PTR [esp+0x10],0xc010a935
c01033b0:	c0 
c01033b1:	c7 44 24 0c bd a9 10 	mov    DWORD PTR [esp+0xc],0xc010a9bd
c01033b8:	c0 
c01033b9:	c7 44 24 08 40 00 00 	mov    DWORD PTR [esp+0x8],0x40
c01033c0:	00 
c01033c1:	c7 44 24 04 65 a8 10 	mov    DWORD PTR [esp+0x4],0xc010a865
c01033c8:	c0 
c01033c9:	c7 04 24 65 a8 10 c0 	mov    DWORD PTR [esp],0xc010a865
c01033d0:	e8 0f d8 ff ff       	call   c0100be4 <panic_spin>
c01033d5:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c01033d8:	89 04 24             	mov    DWORD PTR [esp],eax
c01033db:	e8 ae e5 ff ff       	call   c010198e <intr_set_status>
c01033e0:	c9                   	leave  
c01033e1:	c3                   	ret    

c01033e2 <lock_acquire>:
c01033e2:	55                   	push   ebp
c01033e3:	89 e5                	mov    ebp,esp
c01033e5:	53                   	push   ebx
c01033e6:	83 ec 24             	sub    esp,0x24
c01033e9:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01033ec:	8b 18                	mov    ebx,DWORD PTR [eax]
c01033ee:	e8 80 02 00 00       	call   c0103673 <running_thread>
c01033f3:	39 c3                	cmp    ebx,eax
c01033f5:	74 5a                	je     c0103451 <lock_acquire+0x6f>
c01033f7:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01033fa:	83 c0 04             	add    eax,0x4
c01033fd:	89 04 24             	mov    DWORD PTR [esp],eax
c0103400:	e8 ae fd ff ff       	call   c01031b3 <sema_down>
c0103405:	e8 69 02 00 00       	call   c0103673 <running_thread>
c010340a:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c010340d:	89 02                	mov    DWORD PTR [edx],eax
c010340f:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0103412:	8b 40 20             	mov    eax,DWORD PTR [eax+0x20]
c0103415:	85 c0                	test   eax,eax
c0103417:	74 2c                	je     c0103445 <lock_acquire+0x63>
c0103419:	c7 44 24 10 47 a9 10 	mov    DWORD PTR [esp+0x10],0xc010a947
c0103420:	c0 
c0103421:	c7 44 24 0c b0 a9 10 	mov    DWORD PTR [esp+0xc],0xc010a9b0
c0103428:	c0 
c0103429:	c7 44 24 08 4e 00 00 	mov    DWORD PTR [esp+0x8],0x4e
c0103430:	00 
c0103431:	c7 44 24 04 65 a8 10 	mov    DWORD PTR [esp+0x4],0xc010a865
c0103438:	c0 
c0103439:	c7 04 24 65 a8 10 c0 	mov    DWORD PTR [esp],0xc010a865
c0103440:	e8 9f d7 ff ff       	call   c0100be4 <panic_spin>
c0103445:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0103448:	c7 40 20 01 00 00 00 	mov    DWORD PTR [eax+0x20],0x1
c010344f:	eb 0f                	jmp    c0103460 <lock_acquire+0x7e>
c0103451:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0103454:	8b 40 20             	mov    eax,DWORD PTR [eax+0x20]
c0103457:	8d 50 01             	lea    edx,[eax+0x1]
c010345a:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c010345d:	89 50 20             	mov    DWORD PTR [eax+0x20],edx
c0103460:	83 c4 24             	add    esp,0x24
c0103463:	5b                   	pop    ebx
c0103464:	5d                   	pop    ebp
c0103465:	c3                   	ret    

c0103466 <lock_release>:
c0103466:	55                   	push   ebp
c0103467:	89 e5                	mov    ebp,esp
c0103469:	53                   	push   ebx
c010346a:	83 ec 24             	sub    esp,0x24
c010346d:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0103470:	8b 18                	mov    ebx,DWORD PTR [eax]
c0103472:	e8 fc 01 00 00       	call   c0103673 <running_thread>
c0103477:	39 c3                	cmp    ebx,eax
c0103479:	74 2c                	je     c01034a7 <lock_release+0x41>
c010347b:	c7 44 24 10 64 a9 10 	mov    DWORD PTR [esp+0x10],0xc010a964
c0103482:	c0 
c0103483:	c7 44 24 0c a3 a9 10 	mov    DWORD PTR [esp+0xc],0xc010a9a3
c010348a:	c0 
c010348b:	c7 44 24 08 5d 00 00 	mov    DWORD PTR [esp+0x8],0x5d
c0103492:	00 
c0103493:	c7 44 24 04 65 a8 10 	mov    DWORD PTR [esp+0x4],0xc010a865
c010349a:	c0 
c010349b:	c7 04 24 65 a8 10 c0 	mov    DWORD PTR [esp],0xc010a865
c01034a2:	e8 3d d7 ff ff       	call   c0100be4 <panic_spin>
c01034a7:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01034aa:	8b 40 20             	mov    eax,DWORD PTR [eax+0x20]
c01034ad:	83 f8 01             	cmp    eax,0x1
c01034b0:	76 11                	jbe    c01034c3 <lock_release+0x5d>
c01034b2:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01034b5:	8b 40 20             	mov    eax,DWORD PTR [eax+0x20]
c01034b8:	8d 50 ff             	lea    edx,[eax-0x1]
c01034bb:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01034be:	89 50 20             	mov    DWORD PTR [eax+0x20],edx
c01034c1:	eb 59                	jmp    c010351c <lock_release+0xb6>
c01034c3:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01034c6:	8b 40 20             	mov    eax,DWORD PTR [eax+0x20]
c01034c9:	83 f8 01             	cmp    eax,0x1
c01034cc:	74 2c                	je     c01034fa <lock_release+0x94>
c01034ce:	c7 44 24 10 86 a9 10 	mov    DWORD PTR [esp+0x10],0xc010a986
c01034d5:	c0 
c01034d6:	c7 44 24 0c a3 a9 10 	mov    DWORD PTR [esp+0xc],0xc010a9a3
c01034dd:	c0 
c01034de:	c7 44 24 08 63 00 00 	mov    DWORD PTR [esp+0x8],0x63
c01034e5:	00 
c01034e6:	c7 44 24 04 65 a8 10 	mov    DWORD PTR [esp+0x4],0xc010a865
c01034ed:	c0 
c01034ee:	c7 04 24 65 a8 10 c0 	mov    DWORD PTR [esp],0xc010a865
c01034f5:	e8 ea d6 ff ff       	call   c0100be4 <panic_spin>
c01034fa:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01034fd:	c7 00 00 00 00 00    	mov    DWORD PTR [eax],0x0
c0103503:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0103506:	c7 40 20 00 00 00 00 	mov    DWORD PTR [eax+0x20],0x0
c010350d:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0103510:	83 c0 04             	add    eax,0x4
c0103513:	89 04 24             	mov    DWORD PTR [esp],eax
c0103516:	e8 03 fe ff ff       	call   c010331e <sema_up>
c010351b:	90                   	nop
c010351c:	83 c4 24             	add    esp,0x24
c010351f:	5b                   	pop    ebx
c0103520:	5d                   	pop    ebp
c0103521:	c3                   	ret    
	...

c0103524 <init_thread>:
c0103524:	55                   	push   ebp
c0103525:	89 e5                	mov    ebp,esp
c0103527:	83 ec 18             	sub    esp,0x18
c010352a:	c7 04 24 5c 18 11 c0 	mov    DWORD PTR [esp],0xc011185c
c0103531:	e8 02 26 00 00       	call   c0105b38 <list_init>
c0103536:	c7 04 24 74 18 11 c0 	mov    DWORD PTR [esp],0xc0111874
c010353d:	e8 f6 25 00 00       	call   c0105b38 <list_init>
c0103542:	c7 05 a0 b2 10 c0 0a 	mov    DWORD PTR ds:0xc010b2a0,0xa
c0103549:	00 00 00 
c010354c:	c7 04 24 a4 b2 10 c0 	mov    DWORD PTR [esp],0xc010b2a4
c0103553:	e8 2a fc ff ff       	call   c0103182 <lock_init>
c0103558:	e8 d5 02 00 00       	call   c0103832 <make_main_thread>
c010355d:	c9                   	leave  
c010355e:	c3                   	ret    

c010355f <alloc_pid>:
c010355f:	55                   	push   ebp
c0103560:	89 e5                	mov    ebp,esp
c0103562:	83 ec 28             	sub    esp,0x28
c0103565:	c7 04 24 a4 b2 10 c0 	mov    DWORD PTR [esp],0xc010b2a4
c010356c:	e8 71 fe ff ff       	call   c01033e2 <lock_acquire>
c0103571:	a1 a0 b2 10 c0       	mov    eax,ds:0xc010b2a0
c0103576:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
c0103579:	a1 a0 b2 10 c0       	mov    eax,ds:0xc010b2a0
c010357e:	83 c0 01             	add    eax,0x1
c0103581:	a3 a0 b2 10 c0       	mov    ds:0xc010b2a0,eax
c0103586:	c7 04 24 a4 b2 10 c0 	mov    DWORD PTR [esp],0xc010b2a4
c010358d:	e8 d4 fe ff ff       	call   c0103466 <lock_release>
c0103592:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0103595:	c9                   	leave  
c0103596:	c3                   	ret    

c0103597 <thread_init>:
c0103597:	55                   	push   ebp
c0103598:	89 e5                	mov    ebp,esp
c010359a:	83 ec 28             	sub    esp,0x28
c010359d:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
c01035a0:	88 45 f4             	mov    BYTE PTR [ebp-0xc],al
c01035a3:	c7 44 24 08 a0 01 00 	mov    DWORD PTR [esp+0x8],0x1a0
c01035aa:	00 
c01035ab:	c7 44 24 04 00 00 00 	mov    DWORD PTR [esp+0x4],0x0
c01035b2:	00 
c01035b3:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01035b6:	89 04 24             	mov    DWORD PTR [esp],eax
c01035b9:	e8 82 2c 00 00       	call   c0106240 <memset>
c01035be:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01035c1:	8d 50 0c             	lea    edx,[eax+0xc]
c01035c4:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c01035c7:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c01035cb:	89 14 24             	mov    DWORD PTR [esp],edx
c01035ce:	e8 e8 2d 00 00       	call   c01063bb <strcpy>
c01035d3:	a1 8c 18 11 c0       	mov    eax,ds:0xc011188c
c01035d8:	39 45 08             	cmp    DWORD PTR [ebp+0x8],eax
c01035db:	75 0c                	jne    c01035e9 <thread_init+0x52>
c01035dd:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01035e0:	c7 40 04 00 00 00 00 	mov    DWORD PTR [eax+0x4],0x0
c01035e7:	eb 0a                	jmp    c01035f3 <thread_init+0x5c>
c01035e9:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01035ec:	c7 40 04 01 00 00 00 	mov    DWORD PTR [eax+0x4],0x1
c01035f3:	e8 67 ff ff ff       	call   c010355f <alloc_pid>
c01035f8:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c01035fb:	89 42 08             	mov    DWORD PTR [edx+0x8],eax
c01035fe:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0103601:	0f b6 55 f4          	movzx  edx,BYTE PTR [ebp-0xc]
c0103605:	88 50 1c             	mov    BYTE PTR [eax+0x1c],dl
c0103608:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c010360b:	05 00 10 00 00       	add    eax,0x1000
c0103610:	89 c2                	mov    edx,eax
c0103612:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0103615:	89 10                	mov    DWORD PTR [eax],edx
c0103617:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c010361a:	c7 40 3c 00 00 00 00 	mov    DWORD PTR [eax+0x3c],0x0
c0103621:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0103624:	c7 80 6c 01 00 00 00 	mov    DWORD PTR [eax+0x16c],0x0
c010362b:	00 00 00 
c010362e:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0103631:	c7 80 70 01 00 00 00 	mov    DWORD PTR [eax+0x170],0x0
c0103638:	00 00 00 
c010363b:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c010363e:	c7 80 74 01 00 00 00 	mov    DWORD PTR [eax+0x174],0x0
c0103645:	00 00 00 
c0103648:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c010364b:	05 78 01 00 00       	add    eax,0x178
c0103650:	89 04 24             	mov    DWORD PTR [esp],eax
c0103653:	e8 e0 24 00 00       	call   c0105b38 <list_init>
c0103658:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c010365b:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c010365e:	89 90 94 01 00 00    	mov    DWORD PTR [eax+0x194],edx
c0103664:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0103667:	c7 80 9c 01 00 00 78 	mov    DWORD PTR [eax+0x19c],0x12345678
c010366e:	56 34 12 
c0103671:	c9                   	leave  
c0103672:	c3                   	ret    

c0103673 <running_thread>:
c0103673:	55                   	push   ebp
c0103674:	89 e5                	mov    ebp,esp
c0103676:	53                   	push   ebx
c0103677:	83 ec 10             	sub    esp,0x10
c010367a:	89 e3                	mov    ebx,esp
c010367c:	89 5d f8             	mov    DWORD PTR [ebp-0x8],ebx
c010367f:	8b 45 f8             	mov    eax,DWORD PTR [ebp-0x8]
c0103682:	25 00 f0 ff ff       	and    eax,0xfffff000
c0103687:	83 c4 10             	add    esp,0x10
c010368a:	5b                   	pop    ebx
c010368b:	5d                   	pop    ebp
c010368c:	c3                   	ret    

c010368d <kernel_thread>:
c010368d:	55                   	push   ebp
c010368e:	89 e5                	mov    ebp,esp
c0103690:	83 ec 18             	sub    esp,0x18
c0103693:	e8 9c e2 ff ff       	call   c0101934 <intr_enable>
c0103698:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c010369b:	89 04 24             	mov    DWORD PTR [esp],eax
c010369e:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01036a1:	ff d0                	call   eax
c01036a3:	c9                   	leave  
c01036a4:	c3                   	ret    

c01036a5 <thread_create>:
c01036a5:	55                   	push   ebp
c01036a6:	89 e5                	mov    ebp,esp
c01036a8:	83 ec 10             	sub    esp,0x10
c01036ab:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01036ae:	8b 00                	mov    eax,DWORD PTR [eax]
c01036b0:	8d 90 d0 fe ff ff    	lea    edx,[eax-0x130]
c01036b6:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01036b9:	89 10                	mov    DWORD PTR [eax],edx
c01036bb:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01036be:	8b 00                	mov    eax,DWORD PTR [eax]
c01036c0:	8d 50 80             	lea    edx,[eax-0x80]
c01036c3:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01036c6:	89 10                	mov    DWORD PTR [eax],edx
c01036c8:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01036cb:	8b 00                	mov    eax,DWORD PTR [eax]
c01036cd:	89 45 fc             	mov    DWORD PTR [ebp-0x4],eax
c01036d0:	8b 45 fc             	mov    eax,DWORD PTR [ebp-0x4]
c01036d3:	c7 40 10 8d 36 10 c0 	mov    DWORD PTR [eax+0x10],0xc010368d
c01036da:	8b 45 fc             	mov    eax,DWORD PTR [ebp-0x4]
c01036dd:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
c01036e0:	89 50 18             	mov    DWORD PTR [eax+0x18],edx
c01036e3:	8b 45 fc             	mov    eax,DWORD PTR [ebp-0x4]
c01036e6:	8b 55 10             	mov    edx,DWORD PTR [ebp+0x10]
c01036e9:	89 50 1c             	mov    DWORD PTR [eax+0x1c],edx
c01036ec:	8b 45 fc             	mov    eax,DWORD PTR [ebp-0x4]
c01036ef:	c7 00 00 00 00 00    	mov    DWORD PTR [eax],0x0
c01036f5:	8b 45 fc             	mov    eax,DWORD PTR [ebp-0x4]
c01036f8:	c7 40 04 00 00 00 00 	mov    DWORD PTR [eax+0x4],0x0
c01036ff:	8b 45 fc             	mov    eax,DWORD PTR [ebp-0x4]
c0103702:	c7 40 0c 00 00 00 00 	mov    DWORD PTR [eax+0xc],0x0
c0103709:	8b 45 fc             	mov    eax,DWORD PTR [ebp-0x4]
c010370c:	c7 40 08 00 00 00 00 	mov    DWORD PTR [eax+0x8],0x0
c0103713:	c9                   	leave  
c0103714:	c3                   	ret    

c0103715 <thread_start>:
c0103715:	55                   	push   ebp
c0103716:	89 e5                	mov    ebp,esp
c0103718:	83 ec 48             	sub    esp,0x48
c010371b:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c010371e:	88 45 e4             	mov    BYTE PTR [ebp-0x1c],al
c0103721:	c7 04 24 01 00 00 00 	mov    DWORD PTR [esp],0x1
c0103728:	e8 70 f3 ff ff       	call   c0102a9d <get_kernel_page>
c010372d:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
c0103730:	0f b6 45 e4          	movzx  eax,BYTE PTR [ebp-0x1c]
c0103734:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
c0103738:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c010373b:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c010373f:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0103742:	89 04 24             	mov    DWORD PTR [esp],eax
c0103745:	e8 4d fe ff ff       	call   c0103597 <thread_init>
c010374a:	8b 45 14             	mov    eax,DWORD PTR [ebp+0x14]
c010374d:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
c0103751:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
c0103754:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c0103758:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c010375b:	89 04 24             	mov    DWORD PTR [esp],eax
c010375e:	e8 42 ff ff ff       	call   c01036a5 <thread_create>
c0103763:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0103766:	8b 55 f4             	mov    edx,DWORD PTR [ebp-0xc]
c0103769:	89 50 28             	mov    DWORD PTR [eax+0x28],edx
c010376c:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c010376f:	8b 55 f4             	mov    edx,DWORD PTR [ebp-0xc]
c0103772:	89 50 34             	mov    DWORD PTR [eax+0x34],edx
c0103775:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0103778:	83 c0 30             	add    eax,0x30
c010377b:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c010377f:	c7 04 24 5c 18 11 c0 	mov    DWORD PTR [esp],0xc011185c
c0103786:	e8 aa 24 00 00       	call   c0105c35 <list_find>
c010378b:	85 c0                	test   eax,eax
c010378d:	74 2c                	je     c01037bb <thread_start+0xa6>
c010378f:	c7 44 24 10 fc a9 10 	mov    DWORD PTR [esp+0x10],0xc010a9fc
c0103796:	c0 
c0103797:	c7 44 24 0c f6 ab 10 	mov    DWORD PTR [esp+0xc],0xc010abf6
c010379e:	c0 
c010379f:	c7 44 24 08 7e 00 00 	mov    DWORD PTR [esp+0x8],0x7e
c01037a6:	00 
c01037a7:	c7 44 24 04 2b aa 10 	mov    DWORD PTR [esp+0x4],0xc010aa2b
c01037ae:	c0 
c01037af:	c7 04 24 2b aa 10 c0 	mov    DWORD PTR [esp],0xc010aa2b
c01037b6:	e8 29 d4 ff ff       	call   c0100be4 <panic_spin>
c01037bb:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c01037be:	83 c0 30             	add    eax,0x30
c01037c1:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c01037c5:	c7 04 24 5c 18 11 c0 	mov    DWORD PTR [esp],0xc011185c
c01037cc:	e8 f2 23 00 00       	call   c0105bc3 <list_append>
c01037d1:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c01037d4:	83 c0 24             	add    eax,0x24
c01037d7:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c01037db:	c7 04 24 74 18 11 c0 	mov    DWORD PTR [esp],0xc0111874
c01037e2:	e8 4e 24 00 00       	call   c0105c35 <list_find>
c01037e7:	85 c0                	test   eax,eax
c01037e9:	74 2c                	je     c0103817 <thread_start+0x102>
c01037eb:	c7 44 24 10 3c aa 10 	mov    DWORD PTR [esp+0x10],0xc010aa3c
c01037f2:	c0 
c01037f3:	c7 44 24 0c f6 ab 10 	mov    DWORD PTR [esp+0xc],0xc010abf6
c01037fa:	c0 
c01037fb:	c7 44 24 08 81 00 00 	mov    DWORD PTR [esp+0x8],0x81
c0103802:	00 
c0103803:	c7 44 24 04 2b aa 10 	mov    DWORD PTR [esp+0x4],0xc010aa2b
c010380a:	c0 
c010380b:	c7 04 24 2b aa 10 c0 	mov    DWORD PTR [esp],0xc010aa2b
c0103812:	e8 cd d3 ff ff       	call   c0100be4 <panic_spin>
c0103817:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c010381a:	83 c0 24             	add    eax,0x24
c010381d:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c0103821:	c7 04 24 74 18 11 c0 	mov    DWORD PTR [esp],0xc0111874
c0103828:	e8 96 23 00 00       	call   c0105bc3 <list_append>
c010382d:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0103830:	c9                   	leave  
c0103831:	c3                   	ret    

c0103832 <make_main_thread>:
c0103832:	55                   	push   ebp
c0103833:	89 e5                	mov    ebp,esp
c0103835:	83 ec 18             	sub    esp,0x18
c0103838:	e8 36 fe ff ff       	call   c0103673 <running_thread>
c010383d:	a3 8c 18 11 c0       	mov    ds:0xc011188c,eax
c0103842:	a1 8c 18 11 c0       	mov    eax,ds:0xc011188c
c0103847:	c7 44 24 08 1f 00 00 	mov    DWORD PTR [esp+0x8],0x1f
c010384e:	00 
c010384f:	c7 44 24 04 65 aa 10 	mov    DWORD PTR [esp+0x4],0xc010aa65
c0103856:	c0 
c0103857:	89 04 24             	mov    DWORD PTR [esp],eax
c010385a:	e8 38 fd ff ff       	call   c0103597 <thread_init>
c010385f:	a1 8c 18 11 c0       	mov    eax,ds:0xc011188c
c0103864:	8b 15 8c 18 11 c0    	mov    edx,DWORD PTR ds:0xc011188c
c010386a:	89 50 28             	mov    DWORD PTR [eax+0x28],edx
c010386d:	a1 8c 18 11 c0       	mov    eax,ds:0xc011188c
c0103872:	8b 15 8c 18 11 c0    	mov    edx,DWORD PTR ds:0xc011188c
c0103878:	89 50 34             	mov    DWORD PTR [eax+0x34],edx
c010387b:	a1 8c 18 11 c0       	mov    eax,ds:0xc011188c
c0103880:	83 c0 24             	add    eax,0x24
c0103883:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c0103887:	c7 04 24 74 18 11 c0 	mov    DWORD PTR [esp],0xc0111874
c010388e:	e8 30 23 00 00       	call   c0105bc3 <list_append>
c0103893:	c9                   	leave  
c0103894:	c3                   	ret    

c0103895 <schedule>:
c0103895:	55                   	push   ebp
c0103896:	89 e5                	mov    ebp,esp
c0103898:	83 ec 38             	sub    esp,0x38
c010389b:	e8 d3 fd ff ff       	call   c0103673 <running_thread>
c01038a0:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
c01038a3:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c01038a6:	8b 80 9c 01 00 00    	mov    eax,DWORD PTR [eax+0x19c]
c01038ac:	3d 78 56 34 12       	cmp    eax,0x12345678
c01038b1:	74 2c                	je     c01038df <schedule+0x4a>
c01038b3:	c7 44 24 10 74 aa 10 	mov    DWORD PTR [esp+0x10],0xc010aa74
c01038ba:	c0 
c01038bb:	c7 44 24 0c ed ab 10 	mov    DWORD PTR [esp+0xc],0xc010abed
c01038c2:	c0 
c01038c3:	c7 44 24 08 93 00 00 	mov    DWORD PTR [esp+0x8],0x93
c01038ca:	00 
c01038cb:	c7 44 24 04 2b aa 10 	mov    DWORD PTR [esp+0x4],0xc010aa2b
c01038d2:	c0 
c01038d3:	c7 04 24 2b aa 10 c0 	mov    DWORD PTR [esp],0xc010aa2b
c01038da:	e8 05 d3 ff ff       	call   c0100be4 <panic_spin>
c01038df:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c01038e2:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
c01038e5:	85 c0                	test   eax,eax
c01038e7:	75 66                	jne    c010394f <schedule+0xba>
c01038e9:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c01038ec:	83 c0 30             	add    eax,0x30
c01038ef:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c01038f3:	c7 04 24 5c 18 11 c0 	mov    DWORD PTR [esp],0xc011185c
c01038fa:	e8 36 23 00 00       	call   c0105c35 <list_find>
c01038ff:	85 c0                	test   eax,eax
c0103901:	74 2c                	je     c010392f <schedule+0x9a>
c0103903:	c7 44 24 10 9c aa 10 	mov    DWORD PTR [esp+0x10],0xc010aa9c
c010390a:	c0 
c010390b:	c7 44 24 0c ed ab 10 	mov    DWORD PTR [esp+0xc],0xc010abed
c0103912:	c0 
c0103913:	c7 44 24 08 97 00 00 	mov    DWORD PTR [esp+0x8],0x97
c010391a:	00 
c010391b:	c7 44 24 04 2b aa 10 	mov    DWORD PTR [esp+0x4],0xc010aa2b
c0103922:	c0 
c0103923:	c7 04 24 2b aa 10 c0 	mov    DWORD PTR [esp],0xc010aa2b
c010392a:	e8 b5 d2 ff ff       	call   c0100be4 <panic_spin>
c010392f:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0103932:	83 c0 30             	add    eax,0x30
c0103935:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c0103939:	c7 04 24 5c 18 11 c0 	mov    DWORD PTR [esp],0xc011185c
c0103940:	e8 7e 22 00 00       	call   c0105bc3 <list_append>
c0103945:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0103948:	c7 40 04 00 00 00 00 	mov    DWORD PTR [eax+0x4],0x0
c010394f:	c7 45 f0 00 00 00 00 	mov    DWORD PTR [ebp-0x10],0x0
c0103956:	c7 05 80 b2 10 c0 00 	mov    DWORD PTR ds:0xc010b280,0x0
c010395d:	00 00 00 
c0103960:	c7 04 24 5c 18 11 c0 	mov    DWORD PTR [esp],0xc011185c
c0103967:	e8 80 23 00 00       	call   c0105cec <list_empty>
c010396c:	85 c0                	test   eax,eax
c010396e:	74 2c                	je     c010399c <schedule+0x107>
c0103970:	c7 44 24 10 d1 aa 10 	mov    DWORD PTR [esp+0x10],0xc010aad1
c0103977:	c0 
c0103978:	c7 44 24 0c ed ab 10 	mov    DWORD PTR [esp+0xc],0xc010abed
c010397f:	c0 
c0103980:	c7 44 24 08 a3 00 00 	mov    DWORD PTR [esp+0x8],0xa3
c0103987:	00 
c0103988:	c7 44 24 04 2b aa 10 	mov    DWORD PTR [esp+0x4],0xc010aa2b
c010398f:	c0 
c0103990:	c7 04 24 2b aa 10 c0 	mov    DWORD PTR [esp],0xc010aa2b
c0103997:	e8 48 d2 ff ff       	call   c0100be4 <panic_spin>
c010399c:	a1 68 18 11 c0       	mov    eax,ds:0xc0111868
c01039a1:	3d 5c 18 11 c0       	cmp    eax,0xc011185c
c01039a6:	75 2c                	jne    c01039d4 <schedule+0x13f>
c01039a8:	c7 44 24 10 ec aa 10 	mov    DWORD PTR [esp+0x10],0xc010aaec
c01039af:	c0 
c01039b0:	c7 44 24 0c ed ab 10 	mov    DWORD PTR [esp+0xc],0xc010abed
c01039b7:	c0 
c01039b8:	c7 44 24 08 a4 00 00 	mov    DWORD PTR [esp+0x8],0xa4
c01039bf:	00 
c01039c0:	c7 44 24 04 2b aa 10 	mov    DWORD PTR [esp+0x4],0xc010aa2b
c01039c7:	c0 
c01039c8:	c7 04 24 2b aa 10 c0 	mov    DWORD PTR [esp],0xc010aa2b
c01039cf:	e8 10 d2 ff ff       	call   c0100be4 <panic_spin>
c01039d4:	c7 04 24 5c 18 11 c0 	mov    DWORD PTR [esp],0xc011185c
c01039db:	e8 36 22 00 00       	call   c0105c16 <list_pop>
c01039e0:	a3 80 b2 10 c0       	mov    ds:0xc010b280,eax
c01039e5:	a1 80 b2 10 c0       	mov    eax,ds:0xc010b280
c01039ea:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
c01039ed:	89 45 f0             	mov    DWORD PTR [ebp-0x10],eax
c01039f0:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c01039f3:	c7 40 04 00 00 00 00 	mov    DWORD PTR [eax+0x4],0x0
c01039fa:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c01039fd:	89 04 24             	mov    DWORD PTR [esp],eax
c0103a00:	e8 25 06 00 00       	call   c010402a <process_activate>
c0103a05:	8b 55 f0             	mov    edx,DWORD PTR [ebp-0x10]
c0103a08:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0103a0b:	89 54 24 04          	mov    DWORD PTR [esp+0x4],edx
c0103a0f:	89 04 24             	mov    DWORD PTR [esp],eax
c0103a12:	e8 c8 01 00 00       	call   c0103bdf <switch_to>
c0103a17:	c9                   	leave  
c0103a18:	c3                   	ret    

c0103a19 <thread_block>:
c0103a19:	55                   	push   ebp
c0103a1a:	89 e5                	mov    ebp,esp
c0103a1c:	83 ec 38             	sub    esp,0x38
c0103a1f:	83 7d 08 00          	cmp    DWORD PTR [ebp+0x8],0x0
c0103a23:	74 06                	je     c0103a2b <thread_block+0x12>
c0103a25:	83 7d 08 01          	cmp    DWORD PTR [ebp+0x8],0x1
c0103a29:	75 2c                	jne    c0103a57 <thread_block+0x3e>
c0103a2b:	c7 44 24 10 18 ab 10 	mov    DWORD PTR [esp+0x10],0xc010ab18
c0103a32:	c0 
c0103a33:	c7 44 24 0c e0 ab 10 	mov    DWORD PTR [esp+0xc],0xc010abe0
c0103a3a:	c0 
c0103a3b:	c7 44 24 08 b1 00 00 	mov    DWORD PTR [esp+0x8],0xb1
c0103a42:	00 
c0103a43:	c7 44 24 04 2b aa 10 	mov    DWORD PTR [esp+0x4],0xc010aa2b
c0103a4a:	c0 
c0103a4b:	c7 04 24 2b aa 10 c0 	mov    DWORD PTR [esp],0xc010aa2b
c0103a52:	e8 8d d1 ff ff       	call   c0100be4 <panic_spin>
c0103a57:	e8 05 df ff ff       	call   c0101961 <intr_disable>
c0103a5c:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
c0103a5f:	e8 0f fc ff ff       	call   c0103673 <running_thread>
c0103a64:	89 45 f0             	mov    DWORD PTR [ebp-0x10],eax
c0103a67:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c0103a6a:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c0103a6d:	89 50 04             	mov    DWORD PTR [eax+0x4],edx
c0103a70:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c0103a73:	8b 40 34             	mov    eax,DWORD PTR [eax+0x34]
c0103a76:	3b 45 f0             	cmp    eax,DWORD PTR [ebp-0x10]
c0103a79:	74 2c                	je     c0103aa7 <thread_block+0x8e>
c0103a7b:	c7 44 24 10 48 ab 10 	mov    DWORD PTR [esp+0x10],0xc010ab48
c0103a82:	c0 
c0103a83:	c7 44 24 0c e0 ab 10 	mov    DWORD PTR [esp+0xc],0xc010abe0
c0103a8a:	c0 
c0103a8b:	c7 44 24 08 b5 00 00 	mov    DWORD PTR [esp+0x8],0xb5
c0103a92:	00 
c0103a93:	c7 44 24 04 2b aa 10 	mov    DWORD PTR [esp+0x4],0xc010aa2b
c0103a9a:	c0 
c0103a9b:	c7 04 24 2b aa 10 c0 	mov    DWORD PTR [esp],0xc010aa2b
c0103aa2:	e8 3d d1 ff ff       	call   c0100be4 <panic_spin>
c0103aa7:	e8 e9 fd ff ff       	call   c0103895 <schedule>
c0103aac:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0103aaf:	89 04 24             	mov    DWORD PTR [esp],eax
c0103ab2:	e8 d7 de ff ff       	call   c010198e <intr_set_status>
c0103ab7:	c9                   	leave  
c0103ab8:	c3                   	ret    

c0103ab9 <thread_unblock>:
c0103ab9:	55                   	push   ebp
c0103aba:	89 e5                	mov    ebp,esp
c0103abc:	83 ec 38             	sub    esp,0x38
c0103abf:	e8 9d de ff ff       	call   c0101961 <intr_disable>
c0103ac4:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
c0103ac7:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0103aca:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
c0103acd:	83 f8 01             	cmp    eax,0x1
c0103ad0:	0f 84 ac 00 00 00    	je     c0103b82 <thread_unblock+0xc9>
c0103ad6:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0103ad9:	83 c0 30             	add    eax,0x30
c0103adc:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c0103ae0:	c7 04 24 5c 18 11 c0 	mov    DWORD PTR [esp],0xc011185c
c0103ae7:	e8 49 21 00 00       	call   c0105c35 <list_find>
c0103aec:	85 c0                	test   eax,eax
c0103aee:	74 2c                	je     c0103b1c <thread_unblock+0x63>
c0103af0:	c7 44 24 10 74 ab 10 	mov    DWORD PTR [esp+0x10],0xc010ab74
c0103af7:	c0 
c0103af8:	c7 44 24 0c d1 ab 10 	mov    DWORD PTR [esp+0xc],0xc010abd1
c0103aff:	c0 
c0103b00:	c7 44 24 08 c0 00 00 	mov    DWORD PTR [esp+0x8],0xc0
c0103b07:	00 
c0103b08:	c7 44 24 04 2b aa 10 	mov    DWORD PTR [esp+0x4],0xc010aa2b
c0103b0f:	c0 
c0103b10:	c7 04 24 2b aa 10 c0 	mov    DWORD PTR [esp],0xc010aa2b
c0103b17:	e8 c8 d0 ff ff       	call   c0100be4 <panic_spin>
c0103b1c:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0103b1f:	83 c0 30             	add    eax,0x30
c0103b22:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c0103b26:	c7 04 24 5c 18 11 c0 	mov    DWORD PTR [esp],0xc011185c
c0103b2d:	e8 03 21 00 00       	call   c0105c35 <list_find>
c0103b32:	85 c0                	test   eax,eax
c0103b34:	74 2c                	je     c0103b62 <thread_unblock+0xa9>
c0103b36:	c7 44 24 10 a4 ab 10 	mov    DWORD PTR [esp+0x10],0xc010aba4
c0103b3d:	c0 
c0103b3e:	c7 44 24 0c d1 ab 10 	mov    DWORD PTR [esp+0xc],0xc010abd1
c0103b45:	c0 
c0103b46:	c7 44 24 08 c3 00 00 	mov    DWORD PTR [esp+0x8],0xc3
c0103b4d:	00 
c0103b4e:	c7 44 24 04 2b aa 10 	mov    DWORD PTR [esp+0x4],0xc010aa2b
c0103b55:	c0 
c0103b56:	c7 04 24 2b aa 10 c0 	mov    DWORD PTR [esp],0xc010aa2b
c0103b5d:	e8 82 d0 ff ff       	call   c0100be4 <panic_spin>
c0103b62:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0103b65:	83 c0 30             	add    eax,0x30
c0103b68:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c0103b6c:	c7 04 24 5c 18 11 c0 	mov    DWORD PTR [esp],0xc011185c
c0103b73:	e8 2e 20 00 00       	call   c0105ba6 <list_push>
c0103b78:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0103b7b:	c7 40 04 01 00 00 00 	mov    DWORD PTR [eax+0x4],0x1
c0103b82:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0103b85:	89 04 24             	mov    DWORD PTR [esp],eax
c0103b88:	e8 01 de ff ff       	call   c010198e <intr_set_status>
c0103b8d:	c9                   	leave  
c0103b8e:	c3                   	ret    

c0103b8f <pid_check>:
c0103b8f:	55                   	push   ebp
c0103b90:	89 e5                	mov    ebp,esp
c0103b92:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0103b95:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
c0103b98:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
c0103b9b:	3b 45 0c             	cmp    eax,DWORD PTR [ebp+0xc]
c0103b9e:	0f 94 c0             	sete   al
c0103ba1:	0f b6 c0             	movzx  eax,al
c0103ba4:	5d                   	pop    ebp
c0103ba5:	c3                   	ret    

c0103ba6 <pid2thread>:
c0103ba6:	55                   	push   ebp
c0103ba7:	89 e5                	mov    ebp,esp
c0103ba9:	83 ec 28             	sub    esp,0x28
c0103bac:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0103baf:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
c0103bb3:	c7 44 24 04 8f 3b 10 	mov    DWORD PTR [esp+0x4],0xc0103b8f
c0103bba:	c0 
c0103bbb:	c7 04 24 74 18 11 c0 	mov    DWORD PTR [esp],0xc0111874
c0103bc2:	e8 a9 20 00 00       	call   c0105c70 <list_traversal>
c0103bc7:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
c0103bca:	83 7d f4 00          	cmp    DWORD PTR [ebp-0xc],0x0
c0103bce:	75 07                	jne    c0103bd7 <pid2thread+0x31>
c0103bd0:	b8 00 00 00 00       	mov    eax,0x0
c0103bd5:	eb 06                	jmp    c0103bdd <pid2thread+0x37>
c0103bd7:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0103bda:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
c0103bdd:	c9                   	leave  
c0103bde:	c3                   	ret    

c0103bdf <switch_to>:
c0103bdf:	56                   	push   esi
c0103be0:	57                   	push   edi
c0103be1:	53                   	push   ebx
c0103be2:	55                   	push   ebp
c0103be3:	8b 44 24 14          	mov    eax,DWORD PTR [esp+0x14]
c0103be7:	89 20                	mov    DWORD PTR [eax],esp
c0103be9:	8b 44 24 18          	mov    eax,DWORD PTR [esp+0x18]
c0103bed:	8b 20                	mov    esp,DWORD PTR [eax]
c0103bef:	5d                   	pop    ebp
c0103bf0:	5b                   	pop    ebx
c0103bf1:	5f                   	pop    edi
c0103bf2:	5e                   	pop    esi
c0103bf3:	c3                   	ret    

c0103bf4 <make_segmdesc>:
c0103bf4:	55                   	push   ebp
c0103bf5:	89 e5                	mov    ebp,esp
c0103bf7:	83 ec 14             	sub    esp,0x14
c0103bfa:	8b 45 14             	mov    eax,DWORD PTR [ebp+0x14]
c0103bfd:	66 89 45 ec          	mov    WORD PTR [ebp-0x14],ax
c0103c01:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
c0103c04:	66 89 45 f8          	mov    WORD PTR [ebp-0x8],ax
c0103c08:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c0103c0b:	66 89 45 fa          	mov    WORD PTR [ebp-0x6],ax
c0103c0f:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c0103c12:	25 00 00 ff 00       	and    eax,0xff0000
c0103c17:	c1 e8 10             	shr    eax,0x10
c0103c1a:	88 45 fc             	mov    BYTE PTR [ebp-0x4],al
c0103c1d:	0f b7 45 ec          	movzx  eax,WORD PTR [ebp-0x14]
c0103c21:	88 45 fd             	mov    BYTE PTR [ebp-0x3],al
c0103c24:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
c0103c27:	c1 e8 10             	shr    eax,0x10
c0103c2a:	89 c2                	mov    edx,eax
c0103c2c:	83 e2 0f             	and    edx,0xf
c0103c2f:	0f b7 45 ec          	movzx  eax,WORD PTR [ebp-0x14]
c0103c33:	66 c1 e8 08          	shr    ax,0x8
c0103c37:	83 e0 f0             	and    eax,0xfffffff0
c0103c3a:	09 d0                	or     eax,edx
c0103c3c:	88 45 fe             	mov    BYTE PTR [ebp-0x2],al
c0103c3f:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c0103c42:	c1 e8 18             	shr    eax,0x18
c0103c45:	88 45 ff             	mov    BYTE PTR [ebp-0x1],al
c0103c48:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
c0103c4b:	8b 45 f8             	mov    eax,DWORD PTR [ebp-0x8]
c0103c4e:	8b 55 fc             	mov    edx,DWORD PTR [ebp-0x4]
c0103c51:	89 01                	mov    DWORD PTR [ecx],eax
c0103c53:	89 51 04             	mov    DWORD PTR [ecx+0x4],edx
c0103c56:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0103c59:	c9                   	leave  
c0103c5a:	c2 04 00             	ret    0x4

c0103c5d <init_tss>:
c0103c5d:	55                   	push   ebp
c0103c5e:	89 e5                	mov    ebp,esp
c0103c60:	53                   	push   ebx
c0103c61:	83 ec 34             	sub    esp,0x34
c0103c64:	c7 45 f4 6c 00 00 00 	mov    DWORD PTR [ebp-0xc],0x6c
c0103c6b:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0103c6e:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
c0103c72:	c7 44 24 04 00 00 00 	mov    DWORD PTR [esp+0x4],0x0
c0103c79:	00 
c0103c7a:	c7 04 24 e0 b2 10 c0 	mov    DWORD PTR [esp],0xc010b2e0
c0103c81:	e8 ba 25 00 00       	call   c0106240 <memset>
c0103c86:	c7 05 e8 b2 10 c0 10 	mov    DWORD PTR ds:0xc010b2e8,0x10
c0103c8d:	00 00 00 
c0103c90:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0103c93:	a3 48 b3 10 c0       	mov    ds:0xc010b348,eax
c0103c98:	bb 18 10 00 c0       	mov    ebx,0xc0001018
c0103c9d:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0103ca0:	8d 48 ff             	lea    ecx,[eax-0x1]
c0103ca3:	ba e0 b2 10 c0       	mov    edx,0xc010b2e0
c0103ca8:	8d 45 e0             	lea    eax,[ebp-0x20]
c0103cab:	c7 44 24 0c 89 80 00 	mov    DWORD PTR [esp+0xc],0x8089
c0103cb2:	00 
c0103cb3:	89 4c 24 08          	mov    DWORD PTR [esp+0x8],ecx
c0103cb7:	89 54 24 04          	mov    DWORD PTR [esp+0x4],edx
c0103cbb:	89 04 24             	mov    DWORD PTR [esp],eax
c0103cbe:	e8 31 ff ff ff       	call   c0103bf4 <make_segmdesc>
c0103cc3:	83 ec 04             	sub    esp,0x4
c0103cc6:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
c0103cc9:	8b 55 e4             	mov    edx,DWORD PTR [ebp-0x1c]
c0103ccc:	89 03                	mov    DWORD PTR [ebx],eax
c0103cce:	89 53 04             	mov    DWORD PTR [ebx+0x4],edx
c0103cd1:	bb 20 10 00 c0       	mov    ebx,0xc0001020
c0103cd6:	8d 45 e0             	lea    eax,[ebp-0x20]
c0103cd9:	c7 44 24 0c b8 c0 00 	mov    DWORD PTR [esp+0xc],0xc0b8
c0103ce0:	00 
c0103ce1:	c7 44 24 08 ff ff 0f 	mov    DWORD PTR [esp+0x8],0xfffff
c0103ce8:	00 
c0103ce9:	c7 44 24 04 00 00 00 	mov    DWORD PTR [esp+0x4],0x0
c0103cf0:	00 
c0103cf1:	89 04 24             	mov    DWORD PTR [esp],eax
c0103cf4:	e8 fb fe ff ff       	call   c0103bf4 <make_segmdesc>
c0103cf9:	83 ec 04             	sub    esp,0x4
c0103cfc:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
c0103cff:	8b 55 e4             	mov    edx,DWORD PTR [ebp-0x1c]
c0103d02:	89 03                	mov    DWORD PTR [ebx],eax
c0103d04:	89 53 04             	mov    DWORD PTR [ebx+0x4],edx
c0103d07:	bb 28 10 00 c0       	mov    ebx,0xc0001028
c0103d0c:	8d 45 e0             	lea    eax,[ebp-0x20]
c0103d0f:	c7 44 24 0c b2 c0 00 	mov    DWORD PTR [esp+0xc],0xc0b2
c0103d16:	00 
c0103d17:	c7 44 24 08 ff ff 0f 	mov    DWORD PTR [esp+0x8],0xfffff
c0103d1e:	00 
c0103d1f:	c7 44 24 04 00 00 00 	mov    DWORD PTR [esp+0x4],0x0
c0103d26:	00 
c0103d27:	89 04 24             	mov    DWORD PTR [esp],eax
c0103d2a:	e8 c5 fe ff ff       	call   c0103bf4 <make_segmdesc>
c0103d2f:	83 ec 04             	sub    esp,0x4
c0103d32:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
c0103d35:	8b 55 e4             	mov    edx,DWORD PTR [ebp-0x1c]
c0103d38:	89 03                	mov    DWORD PTR [ebx],eax
c0103d3a:	89 53 04             	mov    DWORD PTR [ebx+0x4],edx
c0103d3d:	bb 30 10 00 c0       	mov    ebx,0xc0001030
c0103d42:	8d 45 e0             	lea    eax,[ebp-0x20]
c0103d45:	c7 44 24 0c f8 c0 00 	mov    DWORD PTR [esp+0xc],0xc0f8
c0103d4c:	00 
c0103d4d:	c7 44 24 08 ff ff 0f 	mov    DWORD PTR [esp+0x8],0xfffff
c0103d54:	00 
c0103d55:	c7 44 24 04 00 00 00 	mov    DWORD PTR [esp+0x4],0x0
c0103d5c:	00 
c0103d5d:	89 04 24             	mov    DWORD PTR [esp],eax
c0103d60:	e8 8f fe ff ff       	call   c0103bf4 <make_segmdesc>
c0103d65:	83 ec 04             	sub    esp,0x4
c0103d68:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
c0103d6b:	8b 55 e4             	mov    edx,DWORD PTR [ebp-0x1c]
c0103d6e:	89 03                	mov    DWORD PTR [ebx],eax
c0103d70:	89 53 04             	mov    DWORD PTR [ebx+0x4],edx
c0103d73:	bb 38 10 00 c0       	mov    ebx,0xc0001038
c0103d78:	8d 45 e0             	lea    eax,[ebp-0x20]
c0103d7b:	c7 44 24 0c f2 c0 00 	mov    DWORD PTR [esp+0xc],0xc0f2
c0103d82:	00 
c0103d83:	c7 44 24 08 ff ff 0f 	mov    DWORD PTR [esp+0x8],0xfffff
c0103d8a:	00 
c0103d8b:	c7 44 24 04 00 00 00 	mov    DWORD PTR [esp+0x4],0x0
c0103d92:	00 
c0103d93:	89 04 24             	mov    DWORD PTR [esp],eax
c0103d96:	e8 59 fe ff ff       	call   c0103bf4 <make_segmdesc>
c0103d9b:	83 ec 04             	sub    esp,0x4
c0103d9e:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
c0103da1:	8b 55 e4             	mov    edx,DWORD PTR [ebp-0x1c]
c0103da4:	89 03                	mov    DWORD PTR [ebx],eax
c0103da6:	89 53 04             	mov    DWORD PTR [ebx+0x4],edx
c0103da9:	c7 45 e8 3f 00 00 10 	mov    DWORD PTR [ebp-0x18],0x1000003f
c0103db0:	c7 45 ec 00 c0 00 00 	mov    DWORD PTR [ebp-0x14],0xc000
c0103db7:	0f 01 55 e8          	lgdtd  [ebp-0x18]
c0103dbb:	b8 18 00 00 00       	mov    eax,0x18
c0103dc0:	0f 00 d8             	ltr    ax
c0103dc3:	8b 5d fc             	mov    ebx,DWORD PTR [ebp-0x4]
c0103dc6:	c9                   	leave  
c0103dc7:	c3                   	ret    

c0103dc8 <update_tss_esp0>:
c0103dc8:	55                   	push   ebp
c0103dc9:	89 e5                	mov    ebp,esp
c0103dcb:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0103dce:	05 00 10 00 00       	add    eax,0x1000
c0103dd3:	a3 e4 b2 10 c0       	mov    ds:0xc010b2e4,eax
c0103dd8:	5d                   	pop    ebp
c0103dd9:	c3                   	ret    
	...

c0103ddc <start_process>:
c0103ddc:	55                   	push   ebp
c0103ddd:	89 e5                	mov    ebp,esp
c0103ddf:	83 ec 28             	sub    esp,0x28
c0103de2:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0103de5:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
c0103de8:	e8 86 f8 ff ff       	call   c0103673 <running_thread>
c0103ded:	89 45 f0             	mov    DWORD PTR [ebp-0x10],eax
c0103df0:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c0103df3:	8b 00                	mov    eax,DWORD PTR [eax]
c0103df5:	8d 90 80 00 00 00    	lea    edx,[eax+0x80]
c0103dfb:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c0103dfe:	89 10                	mov    DWORD PTR [eax],edx
c0103e00:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c0103e03:	8b 00                	mov    eax,DWORD PTR [eax]
c0103e05:	89 45 ec             	mov    DWORD PTR [ebp-0x14],eax
c0103e08:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
c0103e0b:	c7 40 04 00 00 00 00 	mov    DWORD PTR [eax+0x4],0x0
c0103e12:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
c0103e15:	c7 40 08 00 00 00 00 	mov    DWORD PTR [eax+0x8],0x0
c0103e1c:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
c0103e1f:	c7 40 0c 00 00 00 00 	mov    DWORD PTR [eax+0xc],0x0
c0103e26:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
c0103e29:	c7 40 10 00 00 00 00 	mov    DWORD PTR [eax+0x10],0x0
c0103e30:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
c0103e33:	c7 40 14 00 00 00 00 	mov    DWORD PTR [eax+0x14],0x0
c0103e3a:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
c0103e3d:	c7 40 18 00 00 00 00 	mov    DWORD PTR [eax+0x18],0x0
c0103e44:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
c0103e47:	c7 40 1c 00 00 00 00 	mov    DWORD PTR [eax+0x1c],0x0
c0103e4e:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
c0103e51:	c7 40 20 00 00 00 00 	mov    DWORD PTR [eax+0x20],0x0
c0103e58:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
c0103e5b:	c7 40 24 00 00 00 00 	mov    DWORD PTR [eax+0x24],0x0
c0103e62:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
c0103e65:	c7 40 28 3b 00 00 00 	mov    DWORD PTR [eax+0x28],0x3b
c0103e6c:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
c0103e6f:	c7 40 2c 3b 00 00 00 	mov    DWORD PTR [eax+0x2c],0x3b
c0103e76:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
c0103e79:	c7 40 30 3b 00 00 00 	mov    DWORD PTR [eax+0x30],0x3b
c0103e80:	8b 55 f4             	mov    edx,DWORD PTR [ebp-0xc]
c0103e83:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
c0103e86:	89 50 38             	mov    DWORD PTR [eax+0x38],edx
c0103e89:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
c0103e8c:	c7 40 3c 33 00 00 00 	mov    DWORD PTR [eax+0x3c],0x33
c0103e93:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
c0103e96:	c7 40 40 02 12 00 00 	mov    DWORD PTR [eax+0x40],0x1202
c0103e9d:	c7 44 24 04 00 f0 ff 	mov    DWORD PTR [esp+0x4],0xbffff000
c0103ea4:	bf 
c0103ea5:	c7 04 24 02 00 00 00 	mov    DWORD PTR [esp],0x2
c0103eac:	e8 74 ec ff ff       	call   c0102b25 <get_a_page>
c0103eb1:	05 00 10 00 00       	add    eax,0x1000
c0103eb6:	89 c2                	mov    edx,eax
c0103eb8:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
c0103ebb:	89 50 44             	mov    DWORD PTR [eax+0x44],edx
c0103ebe:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
c0103ec1:	c7 40 48 3b 00 00 00 	mov    DWORD PTR [eax+0x48],0x3b
c0103ec8:	8b 65 ec             	mov    esp,DWORD PTR [ebp-0x14]
c0103ecb:	e9 50 ce ff ff       	jmp    c0100d20 <intr_exit>
c0103ed0:	c9                   	leave  
c0103ed1:	c3                   	ret    

c0103ed2 <start_task>:
c0103ed2:	55                   	push   ebp
c0103ed3:	89 e5                	mov    ebp,esp
c0103ed5:	83 ec 28             	sub    esp,0x28
c0103ed8:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0103edb:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
c0103ede:	e8 90 f7 ff ff       	call   c0103673 <running_thread>
c0103ee3:	89 45 f0             	mov    DWORD PTR [ebp-0x10],eax
c0103ee6:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c0103ee9:	8b 00                	mov    eax,DWORD PTR [eax]
c0103eeb:	8d 90 80 00 00 00    	lea    edx,[eax+0x80]
c0103ef1:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c0103ef4:	89 10                	mov    DWORD PTR [eax],edx
c0103ef6:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c0103ef9:	8b 00                	mov    eax,DWORD PTR [eax]
c0103efb:	89 45 ec             	mov    DWORD PTR [ebp-0x14],eax
c0103efe:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
c0103f01:	c7 40 04 00 00 00 00 	mov    DWORD PTR [eax+0x4],0x0
c0103f08:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
c0103f0b:	c7 40 08 00 00 00 00 	mov    DWORD PTR [eax+0x8],0x0
c0103f12:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
c0103f15:	c7 40 0c 00 00 00 00 	mov    DWORD PTR [eax+0xc],0x0
c0103f1c:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
c0103f1f:	c7 40 10 00 00 00 00 	mov    DWORD PTR [eax+0x10],0x0
c0103f26:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
c0103f29:	c7 40 14 00 00 00 00 	mov    DWORD PTR [eax+0x14],0x0
c0103f30:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
c0103f33:	c7 40 18 00 00 00 00 	mov    DWORD PTR [eax+0x18],0x0
c0103f3a:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
c0103f3d:	c7 40 1c 00 00 00 00 	mov    DWORD PTR [eax+0x1c],0x0
c0103f44:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
c0103f47:	c7 40 20 00 00 00 00 	mov    DWORD PTR [eax+0x20],0x0
c0103f4e:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
c0103f51:	c7 40 24 00 00 00 00 	mov    DWORD PTR [eax+0x24],0x0
c0103f58:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
c0103f5b:	c7 40 28 29 00 00 00 	mov    DWORD PTR [eax+0x28],0x29
c0103f62:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
c0103f65:	c7 40 2c 29 00 00 00 	mov    DWORD PTR [eax+0x2c],0x29
c0103f6c:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
c0103f6f:	c7 40 30 29 00 00 00 	mov    DWORD PTR [eax+0x30],0x29
c0103f76:	8b 55 f4             	mov    edx,DWORD PTR [ebp-0xc]
c0103f79:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
c0103f7c:	89 50 38             	mov    DWORD PTR [eax+0x38],edx
c0103f7f:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
c0103f82:	c7 40 3c 21 00 00 00 	mov    DWORD PTR [eax+0x3c],0x21
c0103f89:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
c0103f8c:	c7 40 40 02 12 00 00 	mov    DWORD PTR [eax+0x40],0x1202
c0103f93:	c7 44 24 04 00 f0 ff 	mov    DWORD PTR [esp+0x4],0xbffff000
c0103f9a:	bf 
c0103f9b:	c7 04 24 02 00 00 00 	mov    DWORD PTR [esp],0x2
c0103fa2:	e8 7e eb ff ff       	call   c0102b25 <get_a_page>
c0103fa7:	05 00 10 00 00       	add    eax,0x1000
c0103fac:	89 c2                	mov    edx,eax
c0103fae:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
c0103fb1:	89 50 44             	mov    DWORD PTR [eax+0x44],edx
c0103fb4:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
c0103fb7:	c7 40 48 29 00 00 00 	mov    DWORD PTR [eax+0x48],0x29
c0103fbe:	8b 65 ec             	mov    esp,DWORD PTR [ebp-0x14]
c0103fc1:	e9 5a cd ff ff       	jmp    c0100d20 <intr_exit>
c0103fc6:	c9                   	leave  
c0103fc7:	c3                   	ret    

c0103fc8 <page_dir_activate>:
c0103fc8:	55                   	push   ebp
c0103fc9:	89 e5                	mov    ebp,esp
c0103fcb:	83 ec 38             	sub    esp,0x38
c0103fce:	c7 45 f4 00 00 40 00 	mov    DWORD PTR [ebp-0xc],0x400000
c0103fd5:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0103fd8:	8b 40 3c             	mov    eax,DWORD PTR [eax+0x3c]
c0103fdb:	85 c0                	test   eax,eax
c0103fdd:	74 11                	je     c0103ff0 <page_dir_activate+0x28>
c0103fdf:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0103fe2:	8b 40 3c             	mov    eax,DWORD PTR [eax+0x3c]
c0103fe5:	89 04 24             	mov    DWORD PTR [esp],eax
c0103fe8:	e8 3e e7 ff ff       	call   c010272b <addr_v2p>
c0103fed:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
c0103ff0:	83 7d f4 00          	cmp    DWORD PTR [ebp-0xc],0x0
c0103ff4:	75 2c                	jne    c0104022 <page_dir_activate+0x5a>
c0103ff6:	c7 44 24 10 43 ac 10 	mov    DWORD PTR [esp+0x10],0xc010ac43
c0103ffd:	c0 
c0103ffe:	c7 44 24 0c 38 ad 10 	mov    DWORD PTR [esp+0xc],0xc010ad38
c0104005:	c0 
c0104006:	c7 44 24 08 4e 00 00 	mov    DWORD PTR [esp+0x8],0x4e
c010400d:	00 
c010400e:	c7 44 24 04 5e ac 10 	mov    DWORD PTR [esp+0x4],0xc010ac5e
c0104015:	c0 
c0104016:	c7 04 24 5e ac 10 c0 	mov    DWORD PTR [esp],0xc010ac5e
c010401d:	e8 c2 cb ff ff       	call   c0100be4 <panic_spin>
c0104022:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0104025:	0f 22 d8             	mov    cr3,eax
c0104028:	c9                   	leave  
c0104029:	c3                   	ret    

c010402a <process_activate>:
c010402a:	55                   	push   ebp
c010402b:	89 e5                	mov    ebp,esp
c010402d:	83 ec 28             	sub    esp,0x28
c0104030:	83 7d 08 00          	cmp    DWORD PTR [ebp+0x8],0x0
c0104034:	75 2c                	jne    c0104062 <process_activate+0x38>
c0104036:	c7 44 24 10 6d ac 10 	mov    DWORD PTR [esp+0x10],0xc010ac6d
c010403d:	c0 
c010403e:	c7 44 24 0c 27 ad 10 	mov    DWORD PTR [esp+0xc],0xc010ad27
c0104045:	c0 
c0104046:	c7 44 24 08 5e 00 00 	mov    DWORD PTR [esp+0x8],0x5e
c010404d:	00 
c010404e:	c7 44 24 04 5e ac 10 	mov    DWORD PTR [esp+0x4],0xc010ac5e
c0104055:	c0 
c0104056:	c7 04 24 5e ac 10 c0 	mov    DWORD PTR [esp],0xc010ac5e
c010405d:	e8 82 cb ff ff       	call   c0100be4 <panic_spin>
c0104062:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0104065:	89 04 24             	mov    DWORD PTR [esp],eax
c0104068:	e8 5b ff ff ff       	call   c0103fc8 <page_dir_activate>
c010406d:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0104070:	8b 40 3c             	mov    eax,DWORD PTR [eax+0x3c]
c0104073:	85 c0                	test   eax,eax
c0104075:	74 0b                	je     c0104082 <process_activate+0x58>
c0104077:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c010407a:	89 04 24             	mov    DWORD PTR [esp],eax
c010407d:	e8 46 fd ff ff       	call   c0103dc8 <update_tss_esp0>
c0104082:	c9                   	leave  
c0104083:	c3                   	ret    

c0104084 <create_page_dir>:
c0104084:	55                   	push   ebp
c0104085:	89 e5                	mov    ebp,esp
c0104087:	83 ec 28             	sub    esp,0x28
c010408a:	c7 04 24 01 00 00 00 	mov    DWORD PTR [esp],0x1
c0104091:	e8 07 ea ff ff       	call   c0102a9d <get_kernel_page>
c0104096:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
c0104099:	83 7d f4 00          	cmp    DWORD PTR [ebp-0xc],0x0
c010409d:	75 1b                	jne    c01040ba <create_page_dir+0x36>
c010409f:	c7 44 24 04 80 ac 10 	mov    DWORD PTR [esp+0x4],0xc010ac80
c01040a6:	c0 
c01040a7:	c7 04 24 04 00 00 00 	mov    DWORD PTR [esp],0x4
c01040ae:	e8 88 03 00 00       	call   c010443b <console_str>
c01040b3:	b8 00 00 00 00       	mov    eax,0x0
c01040b8:	eb 41                	jmp    c01040fb <create_page_dir+0x77>
c01040ba:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c01040bd:	05 00 0c 00 00       	add    eax,0xc00
c01040c2:	c7 44 24 08 00 04 00 	mov    DWORD PTR [esp+0x8],0x400
c01040c9:	00 
c01040ca:	c7 44 24 04 00 fc ff 	mov    DWORD PTR [esp+0x4],0xfffffc00
c01040d1:	ff 
c01040d2:	89 04 24             	mov    DWORD PTR [esp],eax
c01040d5:	e8 ce 21 00 00       	call   c01062a8 <memcpy>
c01040da:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c01040dd:	89 04 24             	mov    DWORD PTR [esp],eax
c01040e0:	e8 46 e6 ff ff       	call   c010272b <addr_v2p>
c01040e5:	89 45 f0             	mov    DWORD PTR [ebp-0x10],eax
c01040e8:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c01040eb:	05 fc 0f 00 00       	add    eax,0xffc
c01040f0:	8b 55 f0             	mov    edx,DWORD PTR [ebp-0x10]
c01040f3:	83 ca 07             	or     edx,0x7
c01040f6:	89 10                	mov    DWORD PTR [eax],edx
c01040f8:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c01040fb:	c9                   	leave  
c01040fc:	c3                   	ret    

c01040fd <create_user_vaddr_memman>:
c01040fd:	55                   	push   ebp
c01040fe:	89 e5                	mov    ebp,esp
c0104100:	83 ec 18             	sub    esp,0x18
c0104103:	c7 04 24 02 00 00 00 	mov    DWORD PTR [esp],0x2
c010410a:	e8 8e e9 ff ff       	call   c0102a9d <get_kernel_page>
c010410f:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c0104112:	83 c2 40             	add    edx,0x40
c0104115:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
c0104119:	c7 44 24 04 ff ff 0f 	mov    DWORD PTR [esp+0x4],0xfffff
c0104120:	00 
c0104121:	89 14 24             	mov    DWORD PTR [esp],edx
c0104124:	e8 d7 e4 ff ff       	call   c0102600 <init_memman>
c0104129:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c010412c:	83 c0 40             	add    eax,0x40
c010412f:	c7 44 24 08 b7 7f 0b 	mov    DWORD PTR [esp+0x8],0xb7fb7
c0104136:	00 
c0104137:	c7 44 24 04 00 80 04 	mov    DWORD PTR [esp+0x4],0x8048000
c010413e:	08 
c010413f:	89 04 24             	mov    DWORD PTR [esp],eax
c0104142:	e8 ac ea ff ff       	call   c0102bf3 <pgman_free>
c0104147:	c9                   	leave  
c0104148:	c3                   	ret    

c0104149 <process_execute>:
c0104149:	55                   	push   ebp
c010414a:	89 e5                	mov    ebp,esp
c010414c:	83 ec 38             	sub    esp,0x38
c010414f:	c7 04 24 01 00 00 00 	mov    DWORD PTR [esp],0x1
c0104156:	e8 42 e9 ff ff       	call   c0102a9d <get_kernel_page>
c010415b:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
c010415e:	c7 44 24 08 1f 00 00 	mov    DWORD PTR [esp+0x8],0x1f
c0104165:	00 
c0104166:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c0104169:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c010416d:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0104170:	89 04 24             	mov    DWORD PTR [esp],eax
c0104173:	e8 1f f4 ff ff       	call   c0103597 <thread_init>
c0104178:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c010417b:	89 04 24             	mov    DWORD PTR [esp],eax
c010417e:	e8 7a ff ff ff       	call   c01040fd <create_user_vaddr_memman>
c0104183:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0104186:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
c010418a:	c7 44 24 04 dc 3d 10 	mov    DWORD PTR [esp+0x4],0xc0103ddc
c0104191:	c0 
c0104192:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0104195:	89 04 24             	mov    DWORD PTR [esp],eax
c0104198:	e8 08 f5 ff ff       	call   c01036a5 <thread_create>
c010419d:	e8 e2 fe ff ff       	call   c0104084 <create_page_dir>
c01041a2:	8b 55 f4             	mov    edx,DWORD PTR [ebp-0xc]
c01041a5:	89 42 3c             	mov    DWORD PTR [edx+0x3c],eax
c01041a8:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c01041ab:	83 c0 7c             	add    eax,0x7c
c01041ae:	89 04 24             	mov    DWORD PTR [esp],eax
c01041b1:	e8 0a d8 ff ff       	call   c01019c0 <init_block>
c01041b6:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c01041b9:	8b 55 f4             	mov    edx,DWORD PTR [ebp-0xc]
c01041bc:	89 50 34             	mov    DWORD PTR [eax+0x34],edx
c01041bf:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c01041c2:	8b 55 f4             	mov    edx,DWORD PTR [ebp-0xc]
c01041c5:	89 50 28             	mov    DWORD PTR [eax+0x28],edx
c01041c8:	e8 94 d7 ff ff       	call   c0101961 <intr_disable>
c01041cd:	89 45 f0             	mov    DWORD PTR [ebp-0x10],eax
c01041d0:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c01041d3:	83 c0 24             	add    eax,0x24
c01041d6:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c01041da:	c7 04 24 74 18 11 c0 	mov    DWORD PTR [esp],0xc0111874
c01041e1:	e8 4f 1a 00 00       	call   c0105c35 <list_find>
c01041e6:	85 c0                	test   eax,eax
c01041e8:	74 2c                	je     c0104216 <process_execute+0xcd>
c01041ea:	c7 44 24 10 ac ac 10 	mov    DWORD PTR [esp+0x10],0xc010acac
c01041f1:	c0 
c01041f2:	c7 44 24 0c 17 ad 10 	mov    DWORD PTR [esp+0xc],0xc010ad17
c01041f9:	c0 
c01041fa:	c7 44 24 08 90 00 00 	mov    DWORD PTR [esp+0x8],0x90
c0104201:	00 
c0104202:	c7 44 24 04 5e ac 10 	mov    DWORD PTR [esp+0x4],0xc010ac5e
c0104209:	c0 
c010420a:	c7 04 24 5e ac 10 c0 	mov    DWORD PTR [esp],0xc010ac5e
c0104211:	e8 ce c9 ff ff       	call   c0100be4 <panic_spin>
c0104216:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0104219:	83 c0 24             	add    eax,0x24
c010421c:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c0104220:	c7 04 24 74 18 11 c0 	mov    DWORD PTR [esp],0xc0111874
c0104227:	e8 97 19 00 00       	call   c0105bc3 <list_append>
c010422c:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c010422f:	83 c0 30             	add    eax,0x30
c0104232:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c0104236:	c7 04 24 5c 18 11 c0 	mov    DWORD PTR [esp],0xc011185c
c010423d:	e8 f3 19 00 00       	call   c0105c35 <list_find>
c0104242:	85 c0                	test   eax,eax
c0104244:	74 2c                	je     c0104272 <process_execute+0x129>
c0104246:	c7 44 24 10 d8 ac 10 	mov    DWORD PTR [esp+0x10],0xc010acd8
c010424d:	c0 
c010424e:	c7 44 24 0c 17 ad 10 	mov    DWORD PTR [esp+0xc],0xc010ad17
c0104255:	c0 
c0104256:	c7 44 24 08 93 00 00 	mov    DWORD PTR [esp+0x8],0x93
c010425d:	00 
c010425e:	c7 44 24 04 5e ac 10 	mov    DWORD PTR [esp+0x4],0xc010ac5e
c0104265:	c0 
c0104266:	c7 04 24 5e ac 10 c0 	mov    DWORD PTR [esp],0xc010ac5e
c010426d:	e8 72 c9 ff ff       	call   c0100be4 <panic_spin>
c0104272:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0104275:	83 c0 30             	add    eax,0x30
c0104278:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c010427c:	c7 04 24 5c 18 11 c0 	mov    DWORD PTR [esp],0xc011185c
c0104283:	e8 3b 19 00 00       	call   c0105bc3 <list_append>
c0104288:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c010428b:	89 04 24             	mov    DWORD PTR [esp],eax
c010428e:	e8 fb d6 ff ff       	call   c010198e <intr_set_status>
c0104293:	c9                   	leave  
c0104294:	c3                   	ret    

c0104295 <task_execute>:
c0104295:	55                   	push   ebp
c0104296:	89 e5                	mov    ebp,esp
c0104298:	83 ec 38             	sub    esp,0x38
c010429b:	c7 04 24 01 00 00 00 	mov    DWORD PTR [esp],0x1
c01042a2:	e8 f6 e7 ff ff       	call   c0102a9d <get_kernel_page>
c01042a7:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
c01042aa:	c7 44 24 08 1f 00 00 	mov    DWORD PTR [esp+0x8],0x1f
c01042b1:	00 
c01042b2:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c01042b5:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c01042b9:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c01042bc:	89 04 24             	mov    DWORD PTR [esp],eax
c01042bf:	e8 d3 f2 ff ff       	call   c0103597 <thread_init>
c01042c4:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c01042c7:	89 04 24             	mov    DWORD PTR [esp],eax
c01042ca:	e8 2e fe ff ff       	call   c01040fd <create_user_vaddr_memman>
c01042cf:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01042d2:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
c01042d6:	c7 44 24 04 d2 3e 10 	mov    DWORD PTR [esp+0x4],0xc0103ed2
c01042dd:	c0 
c01042de:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c01042e1:	89 04 24             	mov    DWORD PTR [esp],eax
c01042e4:	e8 bc f3 ff ff       	call   c01036a5 <thread_create>
c01042e9:	e8 96 fd ff ff       	call   c0104084 <create_page_dir>
c01042ee:	8b 55 f4             	mov    edx,DWORD PTR [ebp-0xc]
c01042f1:	89 42 3c             	mov    DWORD PTR [edx+0x3c],eax
c01042f4:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c01042f7:	83 c0 7c             	add    eax,0x7c
c01042fa:	89 04 24             	mov    DWORD PTR [esp],eax
c01042fd:	e8 be d6 ff ff       	call   c01019c0 <init_block>
c0104302:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0104305:	8b 55 f4             	mov    edx,DWORD PTR [ebp-0xc]
c0104308:	89 50 34             	mov    DWORD PTR [eax+0x34],edx
c010430b:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c010430e:	8b 55 f4             	mov    edx,DWORD PTR [ebp-0xc]
c0104311:	89 50 28             	mov    DWORD PTR [eax+0x28],edx
c0104314:	e8 48 d6 ff ff       	call   c0101961 <intr_disable>
c0104319:	89 45 f0             	mov    DWORD PTR [ebp-0x10],eax
c010431c:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c010431f:	83 c0 24             	add    eax,0x24
c0104322:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c0104326:	c7 04 24 74 18 11 c0 	mov    DWORD PTR [esp],0xc0111874
c010432d:	e8 03 19 00 00       	call   c0105c35 <list_find>
c0104332:	85 c0                	test   eax,eax
c0104334:	74 2c                	je     c0104362 <task_execute+0xcd>
c0104336:	c7 44 24 10 ac ac 10 	mov    DWORD PTR [esp+0x10],0xc010acac
c010433d:	c0 
c010433e:	c7 44 24 0c 0a ad 10 	mov    DWORD PTR [esp+0xc],0xc010ad0a
c0104345:	c0 
c0104346:	c7 44 24 08 a8 00 00 	mov    DWORD PTR [esp+0x8],0xa8
c010434d:	00 
c010434e:	c7 44 24 04 5e ac 10 	mov    DWORD PTR [esp+0x4],0xc010ac5e
c0104355:	c0 
c0104356:	c7 04 24 5e ac 10 c0 	mov    DWORD PTR [esp],0xc010ac5e
c010435d:	e8 82 c8 ff ff       	call   c0100be4 <panic_spin>
c0104362:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0104365:	83 c0 24             	add    eax,0x24
c0104368:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c010436c:	c7 04 24 74 18 11 c0 	mov    DWORD PTR [esp],0xc0111874
c0104373:	e8 4b 18 00 00       	call   c0105bc3 <list_append>
c0104378:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c010437b:	83 c0 30             	add    eax,0x30
c010437e:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c0104382:	c7 04 24 5c 18 11 c0 	mov    DWORD PTR [esp],0xc011185c
c0104389:	e8 a7 18 00 00       	call   c0105c35 <list_find>
c010438e:	85 c0                	test   eax,eax
c0104390:	74 2c                	je     c01043be <task_execute+0x129>
c0104392:	c7 44 24 10 d8 ac 10 	mov    DWORD PTR [esp+0x10],0xc010acd8
c0104399:	c0 
c010439a:	c7 44 24 0c 0a ad 10 	mov    DWORD PTR [esp+0xc],0xc010ad0a
c01043a1:	c0 
c01043a2:	c7 44 24 08 ab 00 00 	mov    DWORD PTR [esp+0x8],0xab
c01043a9:	00 
c01043aa:	c7 44 24 04 5e ac 10 	mov    DWORD PTR [esp+0x4],0xc010ac5e
c01043b1:	c0 
c01043b2:	c7 04 24 5e ac 10 c0 	mov    DWORD PTR [esp],0xc010ac5e
c01043b9:	e8 26 c8 ff ff       	call   c0100be4 <panic_spin>
c01043be:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c01043c1:	83 c0 30             	add    eax,0x30
c01043c4:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c01043c8:	c7 04 24 5c 18 11 c0 	mov    DWORD PTR [esp],0xc011185c
c01043cf:	e8 ef 17 00 00       	call   c0105bc3 <list_append>
c01043d4:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c01043d7:	89 04 24             	mov    DWORD PTR [esp],eax
c01043da:	e8 af d5 ff ff       	call   c010198e <intr_set_status>
c01043df:	c9                   	leave  
c01043e0:	c3                   	ret    
c01043e1:	00 00                	add    BYTE PTR [eax],al
	...

c01043e4 <init_console>:
c01043e4:	55                   	push   ebp
c01043e5:	89 e5                	mov    ebp,esp
c01043e7:	83 ec 18             	sub    esp,0x18
c01043ea:	c7 04 24 60 b3 10 c0 	mov    DWORD PTR [esp],0xc010b360
c01043f1:	e8 8c ed ff ff       	call   c0103182 <lock_init>
c01043f6:	c9                   	leave  
c01043f7:	c3                   	ret    

c01043f8 <console_char>:
c01043f8:	55                   	push   ebp
c01043f9:	89 e5                	mov    ebp,esp
c01043fb:	83 ec 28             	sub    esp,0x28
c01043fe:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c0104401:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c0104404:	88 55 f4             	mov    BYTE PTR [ebp-0xc],dl
c0104407:	88 45 f0             	mov    BYTE PTR [ebp-0x10],al
c010440a:	c7 04 24 60 b3 10 c0 	mov    DWORD PTR [esp],0xc010b360
c0104411:	e8 cc ef ff ff       	call   c01033e2 <lock_acquire>
c0104416:	0f b6 45 f0          	movzx  eax,BYTE PTR [ebp-0x10]
c010441a:	0f b6 d0             	movzx  edx,al
c010441d:	0f b6 45 f4          	movzx  eax,BYTE PTR [ebp-0xc]
c0104421:	89 54 24 04          	mov    DWORD PTR [esp+0x4],edx
c0104425:	89 04 24             	mov    DWORD PTR [esp],eax
c0104428:	e8 06 19 00 00       	call   c0105d33 <put_char>
c010442d:	c7 04 24 60 b3 10 c0 	mov    DWORD PTR [esp],0xc010b360
c0104434:	e8 2d f0 ff ff       	call   c0103466 <lock_release>
c0104439:	c9                   	leave  
c010443a:	c3                   	ret    

c010443b <console_str>:
c010443b:	55                   	push   ebp
c010443c:	89 e5                	mov    ebp,esp
c010443e:	83 ec 28             	sub    esp,0x28
c0104441:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0104444:	88 45 f4             	mov    BYTE PTR [ebp-0xc],al
c0104447:	c7 04 24 60 b3 10 c0 	mov    DWORD PTR [esp],0xc010b360
c010444e:	e8 8f ef ff ff       	call   c01033e2 <lock_acquire>
c0104453:	0f b6 45 f4          	movzx  eax,BYTE PTR [ebp-0xc]
c0104457:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
c010445a:	89 54 24 04          	mov    DWORD PTR [esp+0x4],edx
c010445e:	89 04 24             	mov    DWORD PTR [esp],eax
c0104461:	e8 f5 19 00 00       	call   c0105e5b <put_str>
c0104466:	c7 04 24 60 b3 10 c0 	mov    DWORD PTR [esp],0xc010b360
c010446d:	e8 f4 ef ff ff       	call   c0103466 <lock_release>
c0104472:	c9                   	leave  
c0104473:	c3                   	ret    

c0104474 <console_int>:
c0104474:	55                   	push   ebp
c0104475:	89 e5                	mov    ebp,esp
c0104477:	83 ec 28             	sub    esp,0x28
c010447a:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c010447d:	88 45 f4             	mov    BYTE PTR [ebp-0xc],al
c0104480:	c7 04 24 60 b3 10 c0 	mov    DWORD PTR [esp],0xc010b360
c0104487:	e8 56 ef ff ff       	call   c01033e2 <lock_acquire>
c010448c:	0f b6 45 f4          	movzx  eax,BYTE PTR [ebp-0xc]
c0104490:	8b 55 10             	mov    edx,DWORD PTR [ebp+0x10]
c0104493:	89 54 24 08          	mov    DWORD PTR [esp+0x8],edx
c0104497:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
c010449a:	89 54 24 04          	mov    DWORD PTR [esp+0x4],edx
c010449e:	89 04 24             	mov    DWORD PTR [esp],eax
c01044a1:	e8 ec 19 00 00       	call   c0105e92 <put_int>
c01044a6:	c7 04 24 60 b3 10 c0 	mov    DWORD PTR [esp],0xc010b360
c01044ad:	e8 b4 ef ff ff       	call   c0103466 <lock_release>
c01044b2:	c9                   	leave  
c01044b3:	c3                   	ret    

c01044b4 <console_uint>:
c01044b4:	55                   	push   ebp
c01044b5:	89 e5                	mov    ebp,esp
c01044b7:	83 ec 28             	sub    esp,0x28
c01044ba:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01044bd:	88 45 f4             	mov    BYTE PTR [ebp-0xc],al
c01044c0:	c7 04 24 60 b3 10 c0 	mov    DWORD PTR [esp],0xc010b360
c01044c7:	e8 16 ef ff ff       	call   c01033e2 <lock_acquire>
c01044cc:	0f b6 45 f4          	movzx  eax,BYTE PTR [ebp-0xc]
c01044d0:	8b 55 10             	mov    edx,DWORD PTR [ebp+0x10]
c01044d3:	89 54 24 08          	mov    DWORD PTR [esp+0x8],edx
c01044d7:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
c01044da:	89 54 24 04          	mov    DWORD PTR [esp+0x4],edx
c01044de:	89 04 24             	mov    DWORD PTR [esp],eax
c01044e1:	e8 34 1a 00 00       	call   c0105f1a <put_uint>
c01044e6:	c7 04 24 60 b3 10 c0 	mov    DWORD PTR [esp],0xc010b360
c01044ed:	e8 74 ef ff ff       	call   c0103466 <lock_release>
c01044f2:	c9                   	leave  
c01044f3:	c3                   	ret    

c01044f4 <get_cpuid>:
c01044f4:	55                   	push   ebp
c01044f5:	89 e5                	mov    ebp,esp
c01044f7:	56                   	push   esi
c01044f8:	53                   	push   ebx
c01044f9:	83 ec 0c             	sub    esp,0xc
c01044fc:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c01044ff:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c0104502:	89 55 f4             	mov    DWORD PTR [ebp-0xc],edx
c0104505:	89 45 f0             	mov    DWORD PTR [ebp-0x10],eax
c0104508:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c010450b:	8b 4d f0             	mov    ecx,DWORD PTR [ebp-0x10]
c010450e:	0f a2                	cpuid  
c0104510:	89 55 ec             	mov    DWORD PTR [ebp-0x14],edx
c0104513:	89 4d f0             	mov    DWORD PTR [ebp-0x10],ecx
c0104516:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
c0104519:	8b 75 10             	mov    esi,DWORD PTR [ebp+0x10]
c010451c:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c010451f:	89 06                	mov    DWORD PTR [esi],eax
c0104521:	8b 55 14             	mov    edx,DWORD PTR [ebp+0x14]
c0104524:	89 1a                	mov    DWORD PTR [edx],ebx
c0104526:	8b 55 18             	mov    edx,DWORD PTR [ebp+0x18]
c0104529:	8b 4d f0             	mov    ecx,DWORD PTR [ebp-0x10]
c010452c:	89 0a                	mov    DWORD PTR [edx],ecx
c010452e:	8b 45 1c             	mov    eax,DWORD PTR [ebp+0x1c]
c0104531:	8b 55 ec             	mov    edx,DWORD PTR [ebp-0x14]
c0104534:	89 10                	mov    DWORD PTR [eax],edx
c0104536:	83 c4 0c             	add    esp,0xc
c0104539:	5b                   	pop    ebx
c010453a:	5e                   	pop    esi
c010453b:	5d                   	pop    ebp
c010453c:	c3                   	ret    

c010453d <init_cpu>:
c010453d:	55                   	push   ebp
c010453e:	89 e5                	mov    ebp,esp
c0104540:	83 ec 58             	sub    esp,0x58
c0104543:	c7 45 e4 00 00 00 00 	mov    DWORD PTR [ebp-0x1c],0x0
c010454a:	c7 45 e8 00 00 00 00 	mov    DWORD PTR [ebp-0x18],0x0
c0104551:	c7 45 ec 00 00 00 00 	mov    DWORD PTR [ebp-0x14],0x0
c0104558:	c7 45 f0 00 00 00 00 	mov    DWORD PTR [ebp-0x10],0x0
c010455f:	c7 45 d3 00 00 00 00 	mov    DWORD PTR [ebp-0x2d],0x0
c0104566:	c7 45 d7 00 00 00 00 	mov    DWORD PTR [ebp-0x29],0x0
c010456d:	c7 45 db 00 00 00 00 	mov    DWORD PTR [ebp-0x25],0x0
c0104574:	c7 45 df 00 00 00 00 	mov    DWORD PTR [ebp-0x21],0x0
c010457b:	c6 45 e3 00          	mov    BYTE PTR [ebp-0x1d],0x0
c010457f:	c7 45 f4 02 00 00 80 	mov    DWORD PTR [ebp-0xc],0x80000002
c0104586:	eb 7c                	jmp    c0104604 <init_cpu+0xc7>
c0104588:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c010458b:	8d 55 e4             	lea    edx,[ebp-0x1c]
c010458e:	83 c2 0c             	add    edx,0xc
c0104591:	89 54 24 14          	mov    DWORD PTR [esp+0x14],edx
c0104595:	8d 55 e4             	lea    edx,[ebp-0x1c]
c0104598:	83 c2 08             	add    edx,0x8
c010459b:	89 54 24 10          	mov    DWORD PTR [esp+0x10],edx
c010459f:	8d 55 e4             	lea    edx,[ebp-0x1c]
c01045a2:	83 c2 04             	add    edx,0x4
c01045a5:	89 54 24 0c          	mov    DWORD PTR [esp+0xc],edx
c01045a9:	8d 55 e4             	lea    edx,[ebp-0x1c]
c01045ac:	89 54 24 08          	mov    DWORD PTR [esp+0x8],edx
c01045b0:	c7 44 24 04 00 00 00 	mov    DWORD PTR [esp+0x4],0x0
c01045b7:	00 
c01045b8:	89 04 24             	mov    DWORD PTR [esp],eax
c01045bb:	e8 34 ff ff ff       	call   c01044f4 <get_cpuid>
c01045c0:	8d 45 d3             	lea    eax,[ebp-0x2d]
c01045c3:	8b 55 e4             	mov    edx,DWORD PTR [ebp-0x1c]
c01045c6:	89 10                	mov    DWORD PTR [eax],edx
c01045c8:	8d 45 d3             	lea    eax,[ebp-0x2d]
c01045cb:	8d 50 04             	lea    edx,[eax+0x4]
c01045ce:	8b 45 e8             	mov    eax,DWORD PTR [ebp-0x18]
c01045d1:	89 02                	mov    DWORD PTR [edx],eax
c01045d3:	8d 45 d3             	lea    eax,[ebp-0x2d]
c01045d6:	8d 50 08             	lea    edx,[eax+0x8]
c01045d9:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
c01045dc:	89 02                	mov    DWORD PTR [edx],eax
c01045de:	8d 45 d3             	lea    eax,[ebp-0x2d]
c01045e1:	8d 50 0c             	lea    edx,[eax+0xc]
c01045e4:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c01045e7:	89 02                	mov    DWORD PTR [edx],eax
c01045e9:	c6 45 e3 00          	mov    BYTE PTR [ebp-0x1d],0x0
c01045ed:	8d 45 d3             	lea    eax,[ebp-0x2d]
c01045f0:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c01045f4:	c7 04 24 07 00 00 00 	mov    DWORD PTR [esp],0x7
c01045fb:	e8 5b 18 00 00       	call   c0105e5b <put_str>
c0104600:	83 45 f4 01          	add    DWORD PTR [ebp-0xc],0x1
c0104604:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0104607:	3d 04 00 00 80       	cmp    eax,0x80000004
c010460c:	0f 86 76 ff ff ff    	jbe    c0104588 <init_cpu+0x4b>
c0104612:	c9                   	leave  
c0104613:	c3                   	ret    

c0104614 <cpu_info>:
c0104614:	55                   	push   ebp
c0104615:	89 e5                	mov    ebp,esp
c0104617:	83 ec 58             	sub    esp,0x58
c010461a:	c7 45 e4 00 00 00 00 	mov    DWORD PTR [ebp-0x1c],0x0
c0104621:	c7 45 e8 00 00 00 00 	mov    DWORD PTR [ebp-0x18],0x0
c0104628:	c7 45 ec 00 00 00 00 	mov    DWORD PTR [ebp-0x14],0x0
c010462f:	c7 45 f0 00 00 00 00 	mov    DWORD PTR [ebp-0x10],0x0
c0104636:	c7 45 d3 00 00 00 00 	mov    DWORD PTR [ebp-0x2d],0x0
c010463d:	c7 45 d7 00 00 00 00 	mov    DWORD PTR [ebp-0x29],0x0
c0104644:	c7 45 db 00 00 00 00 	mov    DWORD PTR [ebp-0x25],0x0
c010464b:	c7 45 df 00 00 00 00 	mov    DWORD PTR [ebp-0x21],0x0
c0104652:	c6 45 e3 00          	mov    BYTE PTR [ebp-0x1d],0x0
c0104656:	c7 45 f4 02 00 00 80 	mov    DWORD PTR [ebp-0xc],0x80000002
c010465d:	eb 7c                	jmp    c01046db <cpu_info+0xc7>
c010465f:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0104662:	8d 55 e4             	lea    edx,[ebp-0x1c]
c0104665:	83 c2 0c             	add    edx,0xc
c0104668:	89 54 24 14          	mov    DWORD PTR [esp+0x14],edx
c010466c:	8d 55 e4             	lea    edx,[ebp-0x1c]
c010466f:	83 c2 08             	add    edx,0x8
c0104672:	89 54 24 10          	mov    DWORD PTR [esp+0x10],edx
c0104676:	8d 55 e4             	lea    edx,[ebp-0x1c]
c0104679:	83 c2 04             	add    edx,0x4
c010467c:	89 54 24 0c          	mov    DWORD PTR [esp+0xc],edx
c0104680:	8d 55 e4             	lea    edx,[ebp-0x1c]
c0104683:	89 54 24 08          	mov    DWORD PTR [esp+0x8],edx
c0104687:	c7 44 24 04 00 00 00 	mov    DWORD PTR [esp+0x4],0x0
c010468e:	00 
c010468f:	89 04 24             	mov    DWORD PTR [esp],eax
c0104692:	e8 5d fe ff ff       	call   c01044f4 <get_cpuid>
c0104697:	8d 45 d3             	lea    eax,[ebp-0x2d]
c010469a:	8b 55 e4             	mov    edx,DWORD PTR [ebp-0x1c]
c010469d:	89 10                	mov    DWORD PTR [eax],edx
c010469f:	8d 45 d3             	lea    eax,[ebp-0x2d]
c01046a2:	8d 50 04             	lea    edx,[eax+0x4]
c01046a5:	8b 45 e8             	mov    eax,DWORD PTR [ebp-0x18]
c01046a8:	89 02                	mov    DWORD PTR [edx],eax
c01046aa:	8d 45 d3             	lea    eax,[ebp-0x2d]
c01046ad:	8d 50 08             	lea    edx,[eax+0x8]
c01046b0:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
c01046b3:	89 02                	mov    DWORD PTR [edx],eax
c01046b5:	8d 45 d3             	lea    eax,[ebp-0x2d]
c01046b8:	8d 50 0c             	lea    edx,[eax+0xc]
c01046bb:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c01046be:	89 02                	mov    DWORD PTR [edx],eax
c01046c0:	c6 45 e3 00          	mov    BYTE PTR [ebp-0x1d],0x0
c01046c4:	8d 45 d3             	lea    eax,[ebp-0x2d]
c01046c7:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c01046cb:	c7 04 24 07 00 00 00 	mov    DWORD PTR [esp],0x7
c01046d2:	e8 84 17 00 00       	call   c0105e5b <put_str>
c01046d7:	83 45 f4 01          	add    DWORD PTR [ebp-0xc],0x1
c01046db:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c01046de:	3d 04 00 00 80       	cmp    eax,0x80000004
c01046e3:	0f 86 76 ff ff ff    	jbe    c010465f <cpu_info+0x4b>
c01046e9:	c9                   	leave  
c01046ea:	c3                   	ret    
	...

c01046ec <io_in8>:
c01046ec:	55                   	push   ebp
c01046ed:	89 e5                	mov    ebp,esp
c01046ef:	53                   	push   ebx
c01046f0:	83 ec 14             	sub    esp,0x14
c01046f3:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c01046f6:	89 55 e8             	mov    DWORD PTR [ebp-0x18],edx
c01046f9:	8b 55 e8             	mov    edx,DWORD PTR [ebp-0x18]
c01046fc:	ec                   	in     al,dx
c01046fd:	89 c3                	mov    ebx,eax
c01046ff:	89 5d f8             	mov    DWORD PTR [ebp-0x8],ebx
c0104702:	8b 45 f8             	mov    eax,DWORD PTR [ebp-0x8]
c0104705:	83 c4 14             	add    esp,0x14
c0104708:	5b                   	pop    ebx
c0104709:	5d                   	pop    ebp
c010470a:	c3                   	ret    

c010470b <io_out8>:
c010470b:	55                   	push   ebp
c010470c:	89 e5                	mov    ebp,esp
c010470e:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c0104711:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c0104714:	ee                   	out    dx,al
c0104715:	5d                   	pop    ebp
c0104716:	c3                   	ret    

c0104717 <wait_keyboard_ready>:
c0104717:	55                   	push   ebp
c0104718:	89 e5                	mov    ebp,esp
c010471a:	83 ec 04             	sub    esp,0x4
c010471d:	eb 01                	jmp    c0104720 <wait_keyboard_ready+0x9>
c010471f:	90                   	nop
c0104720:	c7 04 24 64 00 00 00 	mov    DWORD PTR [esp],0x64
c0104727:	e8 c0 ff ff ff       	call   c01046ec <io_in8>
c010472c:	83 e0 02             	and    eax,0x2
c010472f:	85 c0                	test   eax,eax
c0104731:	75 ec                	jne    c010471f <wait_keyboard_ready+0x8>
c0104733:	90                   	nop
c0104734:	c9                   	leave  
c0104735:	c3                   	ret    

c0104736 <init_keyboard>:
c0104736:	55                   	push   ebp
c0104737:	89 e5                	mov    ebp,esp
c0104739:	83 ec 18             	sub    esp,0x18
c010473c:	e8 d6 ff ff ff       	call   c0104717 <wait_keyboard_ready>
c0104741:	c7 44 24 04 60 00 00 	mov    DWORD PTR [esp+0x4],0x60
c0104748:	00 
c0104749:	c7 04 24 64 00 00 00 	mov    DWORD PTR [esp],0x64
c0104750:	e8 b6 ff ff ff       	call   c010470b <io_out8>
c0104755:	e8 bd ff ff ff       	call   c0104717 <wait_keyboard_ready>
c010475a:	c7 44 24 04 47 00 00 	mov    DWORD PTR [esp+0x4],0x47
c0104761:	00 
c0104762:	c7 04 24 60 00 00 00 	mov    DWORD PTR [esp],0x60
c0104769:	e8 9d ff ff ff       	call   c010470b <io_out8>
c010476e:	c7 44 24 0c 40 00 00 	mov    DWORD PTR [esp+0xc],0x40
c0104775:	00 
c0104776:	c7 44 24 08 08 00 00 	mov    DWORD PTR [esp+0x8],0x8
c010477d:	00 
c010477e:	c7 44 24 04 a0 b3 10 	mov    DWORD PTR [esp+0x4],0xc010b3a0
c0104785:	c0 
c0104786:	c7 04 24 a0 18 11 c0 	mov    DWORD PTR [esp],0xc01118a0
c010478d:	e8 ae 0f 00 00       	call   c0105740 <init_fifo>
c0104792:	c9                   	leave  
c0104793:	c3                   	ret    

c0104794 <intr0x21_handler>:
c0104794:	55                   	push   ebp
c0104795:	89 e5                	mov    ebp,esp
c0104797:	83 ec 38             	sub    esp,0x38
c010479a:	c7 44 24 04 20 00 00 	mov    DWORD PTR [esp+0x4],0x20
c01047a1:	00 
c01047a2:	c7 04 24 20 00 00 00 	mov    DWORD PTR [esp],0x20
c01047a9:	e8 5d ff ff ff       	call   c010470b <io_out8>
c01047ae:	a1 e4 b3 10 c0       	mov    eax,ds:0xc010b3e4
c01047b3:	89 45 ec             	mov    DWORD PTR [ebp-0x14],eax
c01047b6:	a1 ec b3 10 c0       	mov    eax,ds:0xc010b3ec
c01047bb:	89 45 e8             	mov    DWORD PTR [ebp-0x18],eax
c01047be:	c7 04 24 60 00 00 00 	mov    DWORD PTR [esp],0x60
c01047c5:	e8 22 ff ff ff       	call   c01046ec <io_in8>
c01047ca:	66 89 45 f6          	mov    WORD PTR [ebp-0xa],ax
c01047ce:	66 81 7d f6 e0 00    	cmp    WORD PTR [ebp-0xa],0xe0
c01047d4:	75 0f                	jne    c01047e5 <intr0x21_handler+0x51>
c01047d6:	c7 05 f0 b3 10 c0 01 	mov    DWORD PTR ds:0xc010b3f0,0x1
c01047dd:	00 00 00 
c01047e0:	e9 0e 02 00 00       	jmp    c01049f3 <intr0x21_handler+0x25f>
c01047e5:	a1 f0 b3 10 c0       	mov    eax,ds:0xc010b3f0
c01047ea:	83 f8 01             	cmp    eax,0x1
c01047ed:	75 10                	jne    c01047ff <intr0x21_handler+0x6b>
c01047ef:	66 81 4d f6 00 e0    	or     WORD PTR [ebp-0xa],0xe000
c01047f5:	c7 05 f0 b3 10 c0 00 	mov    DWORD PTR ds:0xc010b3f0,0x0
c01047fc:	00 00 00 
c01047ff:	0f b7 45 f6          	movzx  eax,WORD PTR [ebp-0xa]
c0104803:	25 80 00 00 00       	and    eax,0x80
c0104808:	85 c0                	test   eax,eax
c010480a:	0f 95 c0             	setne  al
c010480d:	0f b6 c0             	movzx  eax,al
c0104810:	89 45 e4             	mov    DWORD PTR [ebp-0x1c],eax
c0104813:	83 7d e4 01          	cmp    DWORD PTR [ebp-0x1c],0x1
c0104817:	75 5d                	jne    c0104876 <intr0x21_handler+0xe2>
c0104819:	66 81 65 f6 7f ff    	and    WORD PTR [ebp-0xa],0xff7f
c010481f:	0f b7 45 f6          	movzx  eax,WORD PTR [ebp-0xa]
c0104823:	83 f8 36             	cmp    eax,0x36
c0104826:	74 32                	je     c010485a <intr0x21_handler+0xc6>
c0104828:	83 f8 36             	cmp    eax,0x36
c010482b:	7f 0c                	jg     c0104839 <intr0x21_handler+0xa5>
c010482d:	83 f8 1d             	cmp    eax,0x1d
c0104830:	74 1c                	je     c010484e <intr0x21_handler+0xba>
c0104832:	83 f8 2a             	cmp    eax,0x2a
c0104835:	74 23                	je     c010485a <intr0x21_handler+0xc6>
c0104837:	eb 38                	jmp    c0104871 <intr0x21_handler+0xdd>
c0104839:	3d 1d e0 00 00       	cmp    eax,0xe01d
c010483e:	74 0e                	je     c010484e <intr0x21_handler+0xba>
c0104840:	3d 38 e0 00 00       	cmp    eax,0xe038
c0104845:	74 1f                	je     c0104866 <intr0x21_handler+0xd2>
c0104847:	83 f8 38             	cmp    eax,0x38
c010484a:	74 1a                	je     c0104866 <intr0x21_handler+0xd2>
c010484c:	eb 23                	jmp    c0104871 <intr0x21_handler+0xdd>
c010484e:	c7 05 e0 b3 10 c0 00 	mov    DWORD PTR ds:0xc010b3e0,0x0
c0104855:	00 00 00 
c0104858:	eb 17                	jmp    c0104871 <intr0x21_handler+0xdd>
c010485a:	c7 05 e4 b3 10 c0 00 	mov    DWORD PTR ds:0xc010b3e4,0x0
c0104861:	00 00 00 
c0104864:	eb 0b                	jmp    c0104871 <intr0x21_handler+0xdd>
c0104866:	c7 05 e8 b3 10 c0 00 	mov    DWORD PTR ds:0xc010b3e8,0x0
c010486d:	00 00 00 
c0104870:	90                   	nop
c0104871:	e9 7d 01 00 00       	jmp    c01049f3 <intr0x21_handler+0x25f>
c0104876:	66 83 7d f6 3a       	cmp    WORD PTR [ebp-0xa],0x3a
c010487b:	77 07                	ja     c0104884 <intr0x21_handler+0xf0>
c010487d:	66 83 7d f6 00       	cmp    WORD PTR [ebp-0xa],0x0
c0104882:	75 14                	jne    c0104898 <intr0x21_handler+0x104>
c0104884:	66 81 7d f6 38 e0    	cmp    WORD PTR [ebp-0xa],0xe038
c010488a:	74 0c                	je     c0104898 <intr0x21_handler+0x104>
c010488c:	66 81 7d f6 1d e0    	cmp    WORD PTR [ebp-0xa],0xe01d
c0104892:	0f 85 57 01 00 00    	jne    c01049ef <intr0x21_handler+0x25b>
c0104898:	c7 45 f0 00 00 00 00 	mov    DWORD PTR [ebp-0x10],0x0
c010489f:	66 83 7d f6 0d       	cmp    WORD PTR [ebp-0xa],0xd
c01048a4:	76 38                	jbe    c01048de <intr0x21_handler+0x14a>
c01048a6:	66 83 7d f6 29       	cmp    WORD PTR [ebp-0xa],0x29
c01048ab:	74 31                	je     c01048de <intr0x21_handler+0x14a>
c01048ad:	66 83 7d f6 1a       	cmp    WORD PTR [ebp-0xa],0x1a
c01048b2:	74 2a                	je     c01048de <intr0x21_handler+0x14a>
c01048b4:	66 83 7d f6 1b       	cmp    WORD PTR [ebp-0xa],0x1b
c01048b9:	74 23                	je     c01048de <intr0x21_handler+0x14a>
c01048bb:	66 83 7d f6 2b       	cmp    WORD PTR [ebp-0xa],0x2b
c01048c0:	74 1c                	je     c01048de <intr0x21_handler+0x14a>
c01048c2:	66 83 7d f6 27       	cmp    WORD PTR [ebp-0xa],0x27
c01048c7:	74 15                	je     c01048de <intr0x21_handler+0x14a>
c01048c9:	66 83 7d f6 28       	cmp    WORD PTR [ebp-0xa],0x28
c01048ce:	74 0e                	je     c01048de <intr0x21_handler+0x14a>
c01048d0:	66 83 7d f6 32       	cmp    WORD PTR [ebp-0xa],0x32
c01048d5:	76 16                	jbe    c01048ed <intr0x21_handler+0x159>
c01048d7:	66 83 7d f6 35       	cmp    WORD PTR [ebp-0xa],0x35
c01048dc:	77 0f                	ja     c01048ed <intr0x21_handler+0x159>
c01048de:	83 7d ec 01          	cmp    DWORD PTR [ebp-0x14],0x1
c01048e2:	75 3a                	jne    c010491e <intr0x21_handler+0x18a>
c01048e4:	c7 45 f0 01 00 00 00 	mov    DWORD PTR [ebp-0x10],0x1
c01048eb:	eb 31                	jmp    c010491e <intr0x21_handler+0x18a>
c01048ed:	83 7d ec 00          	cmp    DWORD PTR [ebp-0x14],0x0
c01048f1:	74 0f                	je     c0104902 <intr0x21_handler+0x16e>
c01048f3:	83 7d e8 00          	cmp    DWORD PTR [ebp-0x18],0x0
c01048f7:	74 09                	je     c0104902 <intr0x21_handler+0x16e>
c01048f9:	c7 45 f0 00 00 00 00 	mov    DWORD PTR [ebp-0x10],0x0
c0104900:	eb 1c                	jmp    c010491e <intr0x21_handler+0x18a>
c0104902:	83 7d ec 00          	cmp    DWORD PTR [ebp-0x14],0x0
c0104906:	75 06                	jne    c010490e <intr0x21_handler+0x17a>
c0104908:	83 7d e8 00          	cmp    DWORD PTR [ebp-0x18],0x0
c010490c:	74 09                	je     c0104917 <intr0x21_handler+0x183>
c010490e:	c7 45 f0 01 00 00 00 	mov    DWORD PTR [ebp-0x10],0x1
c0104915:	eb 07                	jmp    c010491e <intr0x21_handler+0x18a>
c0104917:	c7 45 f0 00 00 00 00 	mov    DWORD PTR [ebp-0x10],0x0
c010491e:	66 81 65 f6 ff 00    	and    WORD PTR [ebp-0xa],0xff
c0104924:	0f b7 45 f6          	movzx  eax,WORD PTR [ebp-0xa]
c0104928:	01 c0                	add    eax,eax
c010492a:	03 45 f0             	add    eax,DWORD PTR [ebp-0x10]
c010492d:	05 00 79 10 c0       	add    eax,0xc0107900
c0104932:	0f b6 00             	movzx  eax,BYTE PTR [eax]
c0104935:	88 45 e3             	mov    BYTE PTR [ebp-0x1d],al
c0104938:	0f b6 45 e3          	movzx  eax,BYTE PTR [ebp-0x1d]
c010493c:	84 c0                	test   al,al
c010493e:	74 2c                	je     c010496c <intr0x21_handler+0x1d8>
c0104940:	c7 04 24 a0 18 11 c0 	mov    DWORD PTR [esp],0xc01118a0
c0104947:	e8 d6 11 00 00       	call   c0105b22 <fifo_fill>
c010494c:	85 c0                	test   eax,eax
c010494e:	0f 85 9e 00 00 00    	jne    c01049f2 <intr0x21_handler+0x25e>
c0104954:	8d 45 e3             	lea    eax,[ebp-0x1d]
c0104957:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c010495b:	c7 04 24 a0 18 11 c0 	mov    DWORD PTR [esp],0xc01118a0
c0104962:	e8 7a 0e 00 00       	call   c01057e1 <fifo_put>
c0104967:	e9 86 00 00 00       	jmp    c01049f2 <intr0x21_handler+0x25e>
c010496c:	0f b7 45 f6          	movzx  eax,WORD PTR [ebp-0xa]
c0104970:	83 f8 38             	cmp    eax,0x38
c0104973:	74 43                	je     c01049b8 <intr0x21_handler+0x224>
c0104975:	83 f8 38             	cmp    eax,0x38
c0104978:	7f 11                	jg     c010498b <intr0x21_handler+0x1f7>
c010497a:	83 f8 2a             	cmp    eax,0x2a
c010497d:	74 2d                	je     c01049ac <intr0x21_handler+0x218>
c010497f:	83 f8 36             	cmp    eax,0x36
c0104982:	74 28                	je     c01049ac <intr0x21_handler+0x218>
c0104984:	83 f8 1d             	cmp    eax,0x1d
c0104987:	74 17                	je     c01049a0 <intr0x21_handler+0x20c>
c0104989:	eb 4d                	jmp    c01049d8 <intr0x21_handler+0x244>
c010498b:	3d 1d e0 00 00       	cmp    eax,0xe01d
c0104990:	74 0e                	je     c01049a0 <intr0x21_handler+0x20c>
c0104992:	3d 38 e0 00 00       	cmp    eax,0xe038
c0104997:	74 1f                	je     c01049b8 <intr0x21_handler+0x224>
c0104999:	83 f8 3a             	cmp    eax,0x3a
c010499c:	74 26                	je     c01049c4 <intr0x21_handler+0x230>
c010499e:	eb 38                	jmp    c01049d8 <intr0x21_handler+0x244>
c01049a0:	c7 05 e0 b3 10 c0 01 	mov    DWORD PTR ds:0xc010b3e0,0x1
c01049a7:	00 00 00 
c01049aa:	eb 42                	jmp    c01049ee <intr0x21_handler+0x25a>
c01049ac:	c7 05 e4 b3 10 c0 01 	mov    DWORD PTR ds:0xc010b3e4,0x1
c01049b3:	00 00 00 
c01049b6:	eb 36                	jmp    c01049ee <intr0x21_handler+0x25a>
c01049b8:	c7 05 e8 b3 10 c0 01 	mov    DWORD PTR ds:0xc010b3e8,0x1
c01049bf:	00 00 00 
c01049c2:	eb 2a                	jmp    c01049ee <intr0x21_handler+0x25a>
c01049c4:	a1 ec b3 10 c0       	mov    eax,ds:0xc010b3ec
c01049c9:	85 c0                	test   eax,eax
c01049cb:	0f 94 c0             	sete   al
c01049ce:	0f b6 c0             	movzx  eax,al
c01049d1:	a3 ec b3 10 c0       	mov    ds:0xc010b3ec,eax
c01049d6:	eb 16                	jmp    c01049ee <intr0x21_handler+0x25a>
c01049d8:	c7 44 24 04 ab ad 10 	mov    DWORD PTR [esp+0x4],0xc010adab
c01049df:	c0 
c01049e0:	c7 04 24 04 00 00 00 	mov    DWORD PTR [esp],0x4
c01049e7:	e8 6f 14 00 00       	call   c0105e5b <put_str>
c01049ec:	eb 01                	jmp    c01049ef <intr0x21_handler+0x25b>
c01049ee:	90                   	nop
c01049ef:	90                   	nop
c01049f0:	eb 01                	jmp    c01049f3 <intr0x21_handler+0x25f>
c01049f2:	90                   	nop
c01049f3:	c9                   	leave  
c01049f4:	c3                   	ret    
c01049f5:	00 00                	add    BYTE PTR [eax],al
	...

c01049f8 <io_in8>:
c01049f8:	55                   	push   ebp
c01049f9:	89 e5                	mov    ebp,esp
c01049fb:	53                   	push   ebx
c01049fc:	83 ec 14             	sub    esp,0x14
c01049ff:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c0104a02:	89 55 e8             	mov    DWORD PTR [ebp-0x18],edx
c0104a05:	8b 55 e8             	mov    edx,DWORD PTR [ebp-0x18]
c0104a08:	ec                   	in     al,dx
c0104a09:	89 c3                	mov    ebx,eax
c0104a0b:	89 5d f8             	mov    DWORD PTR [ebp-0x8],ebx
c0104a0e:	8b 45 f8             	mov    eax,DWORD PTR [ebp-0x8]
c0104a11:	83 c4 14             	add    esp,0x14
c0104a14:	5b                   	pop    ebx
c0104a15:	5d                   	pop    ebp
c0104a16:	c3                   	ret    

c0104a17 <io_out8>:
c0104a17:	55                   	push   ebp
c0104a18:	89 e5                	mov    ebp,esp
c0104a1a:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c0104a1d:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c0104a20:	ee                   	out    dx,al
c0104a21:	5d                   	pop    ebp
c0104a22:	c3                   	ret    

c0104a23 <init_mouse>:
c0104a23:	55                   	push   ebp
c0104a24:	89 e5                	mov    ebp,esp
c0104a26:	83 ec 18             	sub    esp,0x18
c0104a29:	e8 e9 fc ff ff       	call   c0104717 <wait_keyboard_ready>
c0104a2e:	c7 44 24 04 d4 00 00 	mov    DWORD PTR [esp+0x4],0xd4
c0104a35:	00 
c0104a36:	c7 04 24 64 00 00 00 	mov    DWORD PTR [esp],0x64
c0104a3d:	e8 d5 ff ff ff       	call   c0104a17 <io_out8>
c0104a42:	e8 d0 fc ff ff       	call   c0104717 <wait_keyboard_ready>
c0104a47:	c7 44 24 04 f4 00 00 	mov    DWORD PTR [esp+0x4],0xf4
c0104a4e:	00 
c0104a4f:	c7 04 24 60 00 00 00 	mov    DWORD PTR [esp],0x60
c0104a56:	e8 bc ff ff ff       	call   c0104a17 <io_out8>
c0104a5b:	c7 05 fc b3 10 c0 00 	mov    DWORD PTR ds:0xc010b3fc,0x0
c0104a62:	00 00 00 
c0104a65:	c9                   	leave  
c0104a66:	c3                   	ret    

c0104a67 <intr0x2c_handler>:
c0104a67:	55                   	push   ebp
c0104a68:	89 e5                	mov    ebp,esp
c0104a6a:	83 ec 18             	sub    esp,0x18
c0104a6d:	c7 44 24 04 20 00 00 	mov    DWORD PTR [esp+0x4],0x20
c0104a74:	00 
c0104a75:	c7 04 24 a0 00 00 00 	mov    DWORD PTR [esp],0xa0
c0104a7c:	e8 96 ff ff ff       	call   c0104a17 <io_out8>
c0104a81:	c7 44 24 04 20 00 00 	mov    DWORD PTR [esp+0x4],0x20
c0104a88:	00 
c0104a89:	c7 04 24 20 00 00 00 	mov    DWORD PTR [esp],0x20
c0104a90:	e8 82 ff ff ff       	call   c0104a17 <io_out8>
c0104a95:	c7 04 24 60 00 00 00 	mov    DWORD PTR [esp],0x60
c0104a9c:	e8 57 ff ff ff       	call   c01049f8 <io_in8>
c0104aa1:	88 45 ff             	mov    BYTE PTR [ebp-0x1],al
c0104aa4:	a1 fc b3 10 c0       	mov    eax,ds:0xc010b3fc
c0104aa9:	85 c0                	test   eax,eax
c0104aab:	75 19                	jne    c0104ac6 <intr0x2c_handler+0x5f>
c0104aad:	80 7d ff fa          	cmp    BYTE PTR [ebp-0x1],0xfa
c0104ab1:	0f 85 04 01 00 00    	jne    c0104bbb <intr0x2c_handler+0x154>
c0104ab7:	c7 05 fc b3 10 c0 01 	mov    DWORD PTR ds:0xc010b3fc,0x1
c0104abe:	00 00 00 
c0104ac1:	e9 f5 00 00 00       	jmp    c0104bbb <intr0x2c_handler+0x154>
c0104ac6:	a1 fc b3 10 c0       	mov    eax,ds:0xc010b3fc
c0104acb:	83 f8 01             	cmp    eax,0x1
c0104ace:	75 2a                	jne    c0104afa <intr0x2c_handler+0x93>
c0104ad0:	0f b6 45 ff          	movzx  eax,BYTE PTR [ebp-0x1]
c0104ad4:	25 c8 00 00 00       	and    eax,0xc8
c0104ad9:	83 f8 08             	cmp    eax,0x8
c0104adc:	0f 85 dc 00 00 00    	jne    c0104bbe <intr0x2c_handler+0x157>
c0104ae2:	0f b6 45 ff          	movzx  eax,BYTE PTR [ebp-0x1]
c0104ae6:	a2 f8 b3 10 c0       	mov    ds:0xc010b3f8,al
c0104aeb:	c7 05 fc b3 10 c0 02 	mov    DWORD PTR ds:0xc010b3fc,0x2
c0104af2:	00 00 00 
c0104af5:	e9 c4 00 00 00       	jmp    c0104bbe <intr0x2c_handler+0x157>
c0104afa:	a1 fc b3 10 c0       	mov    eax,ds:0xc010b3fc
c0104aff:	83 f8 02             	cmp    eax,0x2
c0104b02:	75 18                	jne    c0104b1c <intr0x2c_handler+0xb5>
c0104b04:	0f b6 45 ff          	movzx  eax,BYTE PTR [ebp-0x1]
c0104b08:	a2 f9 b3 10 c0       	mov    ds:0xc010b3f9,al
c0104b0d:	c7 05 fc b3 10 c0 03 	mov    DWORD PTR ds:0xc010b3fc,0x3
c0104b14:	00 00 00 
c0104b17:	e9 a2 00 00 00       	jmp    c0104bbe <intr0x2c_handler+0x157>
c0104b1c:	a1 fc b3 10 c0       	mov    eax,ds:0xc010b3fc
c0104b21:	83 f8 03             	cmp    eax,0x3
c0104b24:	0f 85 94 00 00 00    	jne    c0104bbe <intr0x2c_handler+0x157>
c0104b2a:	0f b6 45 ff          	movzx  eax,BYTE PTR [ebp-0x1]
c0104b2e:	a2 fa b3 10 c0       	mov    ds:0xc010b3fa,al
c0104b33:	c7 05 fc b3 10 c0 04 	mov    DWORD PTR ds:0xc010b3fc,0x4
c0104b3a:	00 00 00 
c0104b3d:	0f b6 05 f8 b3 10 c0 	movzx  eax,BYTE PTR ds:0xc010b3f8
c0104b44:	0f b6 c0             	movzx  eax,al
c0104b47:	83 e0 07             	and    eax,0x7
c0104b4a:	a3 08 b4 10 c0       	mov    ds:0xc010b408,eax
c0104b4f:	0f b6 05 f9 b3 10 c0 	movzx  eax,BYTE PTR ds:0xc010b3f9
c0104b56:	0f b6 c0             	movzx  eax,al
c0104b59:	a3 00 b4 10 c0       	mov    ds:0xc010b400,eax
c0104b5e:	0f b6 05 fa b3 10 c0 	movzx  eax,BYTE PTR ds:0xc010b3fa
c0104b65:	0f b6 c0             	movzx  eax,al
c0104b68:	a3 04 b4 10 c0       	mov    ds:0xc010b404,eax
c0104b6d:	0f b6 05 f8 b3 10 c0 	movzx  eax,BYTE PTR ds:0xc010b3f8
c0104b74:	0f b6 c0             	movzx  eax,al
c0104b77:	83 e0 10             	and    eax,0x10
c0104b7a:	85 c0                	test   eax,eax
c0104b7c:	74 0f                	je     c0104b8d <intr0x2c_handler+0x126>
c0104b7e:	a1 00 b4 10 c0       	mov    eax,ds:0xc010b400
c0104b83:	0d 00 ff ff ff       	or     eax,0xffffff00
c0104b88:	a3 00 b4 10 c0       	mov    ds:0xc010b400,eax
c0104b8d:	0f b6 05 f8 b3 10 c0 	movzx  eax,BYTE PTR ds:0xc010b3f8
c0104b94:	0f b6 c0             	movzx  eax,al
c0104b97:	83 e0 20             	and    eax,0x20
c0104b9a:	85 c0                	test   eax,eax
c0104b9c:	74 0f                	je     c0104bad <intr0x2c_handler+0x146>
c0104b9e:	a1 04 b4 10 c0       	mov    eax,ds:0xc010b404
c0104ba3:	0d 00 ff ff ff       	or     eax,0xffffff00
c0104ba8:	a3 04 b4 10 c0       	mov    ds:0xc010b404,eax
c0104bad:	a1 04 b4 10 c0       	mov    eax,ds:0xc010b404
c0104bb2:	f7 d8                	neg    eax
c0104bb4:	a3 04 b4 10 c0       	mov    ds:0xc010b404,eax
c0104bb9:	eb 03                	jmp    c0104bbe <intr0x2c_handler+0x157>
c0104bbb:	90                   	nop
c0104bbc:	eb 01                	jmp    c0104bbf <intr0x2c_handler+0x158>
c0104bbe:	90                   	nop
c0104bbf:	c9                   	leave  
c0104bc0:	c3                   	ret    

c0104bc1 <get_mouse>:
c0104bc1:	55                   	push   ebp
c0104bc2:	89 e5                	mov    ebp,esp
c0104bc4:	83 ec 20             	sub    esp,0x20
c0104bc7:	a1 fc b3 10 c0       	mov    eax,ds:0xc010b3fc
c0104bcc:	83 f8 04             	cmp    eax,0x4
c0104bcf:	74 29                	je     c0104bfa <get_mouse+0x39>
c0104bd1:	c7 45 f0 00 00 00 00 	mov    DWORD PTR [ebp-0x10],0x0
c0104bd8:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0104bdb:	8b 55 ec             	mov    edx,DWORD PTR [ebp-0x14]
c0104bde:	89 10                	mov    DWORD PTR [eax],edx
c0104be0:	8b 55 f0             	mov    edx,DWORD PTR [ebp-0x10]
c0104be3:	89 50 04             	mov    DWORD PTR [eax+0x4],edx
c0104be6:	8b 55 f4             	mov    edx,DWORD PTR [ebp-0xc]
c0104be9:	89 50 08             	mov    DWORD PTR [eax+0x8],edx
c0104bec:	8b 55 f8             	mov    edx,DWORD PTR [ebp-0x8]
c0104bef:	89 50 0c             	mov    DWORD PTR [eax+0xc],edx
c0104bf2:	8b 55 fc             	mov    edx,DWORD PTR [ebp-0x4]
c0104bf5:	89 50 10             	mov    DWORD PTR [eax+0x10],edx
c0104bf8:	eb 39                	jmp    c0104c33 <get_mouse+0x72>
c0104bfa:	c7 05 fc b3 10 c0 01 	mov    DWORD PTR ds:0xc010b3fc,0x1
c0104c01:	00 00 00 
c0104c04:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0104c07:	8b 15 f8 b3 10 c0    	mov    edx,DWORD PTR ds:0xc010b3f8
c0104c0d:	89 10                	mov    DWORD PTR [eax],edx
c0104c0f:	8b 15 fc b3 10 c0    	mov    edx,DWORD PTR ds:0xc010b3fc
c0104c15:	89 50 04             	mov    DWORD PTR [eax+0x4],edx
c0104c18:	8b 15 00 b4 10 c0    	mov    edx,DWORD PTR ds:0xc010b400
c0104c1e:	89 50 08             	mov    DWORD PTR [eax+0x8],edx
c0104c21:	8b 15 04 b4 10 c0    	mov    edx,DWORD PTR ds:0xc010b404
c0104c27:	89 50 0c             	mov    DWORD PTR [eax+0xc],edx
c0104c2a:	8b 15 08 b4 10 c0    	mov    edx,DWORD PTR ds:0xc010b408
c0104c30:	89 50 10             	mov    DWORD PTR [eax+0x10],edx
c0104c33:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0104c36:	c9                   	leave  
c0104c37:	c2 04 00             	ret    0x4
	...

c0104c3c <io_in8>:
c0104c3c:	55                   	push   ebp
c0104c3d:	89 e5                	mov    ebp,esp
c0104c3f:	53                   	push   ebx
c0104c40:	83 ec 14             	sub    esp,0x14
c0104c43:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c0104c46:	89 55 e8             	mov    DWORD PTR [ebp-0x18],edx
c0104c49:	8b 55 e8             	mov    edx,DWORD PTR [ebp-0x18]
c0104c4c:	ec                   	in     al,dx
c0104c4d:	89 c3                	mov    ebx,eax
c0104c4f:	89 5d f8             	mov    DWORD PTR [ebp-0x8],ebx
c0104c52:	8b 45 f8             	mov    eax,DWORD PTR [ebp-0x8]
c0104c55:	83 c4 14             	add    esp,0x14
c0104c58:	5b                   	pop    ebx
c0104c59:	5d                   	pop    ebp
c0104c5a:	c3                   	ret    

c0104c5b <io_out8>:
c0104c5b:	55                   	push   ebp
c0104c5c:	89 e5                	mov    ebp,esp
c0104c5e:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c0104c61:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c0104c64:	ee                   	out    dx,al
c0104c65:	5d                   	pop    ebp
c0104c66:	c3                   	ret    

c0104c67 <get_time>:
c0104c67:	55                   	push   ebp
c0104c68:	89 e5                	mov    ebp,esp
c0104c6a:	53                   	push   ebx
c0104c6b:	83 ec 24             	sub    esp,0x24
c0104c6e:	e8 35 cd ff ff       	call   c01019a8 <intr_get_status>
c0104c73:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
c0104c76:	c7 44 24 04 89 00 00 	mov    DWORD PTR [esp+0x4],0x89
c0104c7d:	00 
c0104c7e:	c7 04 24 70 00 00 00 	mov    DWORD PTR [esp],0x70
c0104c85:	e8 d1 ff ff ff       	call   c0104c5b <io_out8>
c0104c8a:	c7 04 24 71 00 00 00 	mov    DWORD PTR [esp],0x71
c0104c91:	e8 a6 ff ff ff       	call   c0104c3c <io_in8>
c0104c96:	89 c3                	mov    ebx,eax
c0104c98:	c7 44 24 04 b2 00 00 	mov    DWORD PTR [esp+0x4],0xb2
c0104c9f:	00 
c0104ca0:	c7 04 24 70 00 00 00 	mov    DWORD PTR [esp],0x70
c0104ca7:	e8 af ff ff ff       	call   c0104c5b <io_out8>
c0104cac:	c7 04 24 71 00 00 00 	mov    DWORD PTR [esp],0x71
c0104cb3:	e8 84 ff ff ff       	call   c0104c3c <io_in8>
c0104cb8:	c1 e0 08             	shl    eax,0x8
c0104cbb:	8d 14 03             	lea    edx,[ebx+eax*1]
c0104cbe:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0104cc1:	89 50 14             	mov    DWORD PTR [eax+0x14],edx
c0104cc4:	c7 44 24 04 88 00 00 	mov    DWORD PTR [esp+0x4],0x88
c0104ccb:	00 
c0104ccc:	c7 04 24 70 00 00 00 	mov    DWORD PTR [esp],0x70
c0104cd3:	e8 83 ff ff ff       	call   c0104c5b <io_out8>
c0104cd8:	c7 04 24 71 00 00 00 	mov    DWORD PTR [esp],0x71
c0104cdf:	e8 58 ff ff ff       	call   c0104c3c <io_in8>
c0104ce4:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c0104ce7:	89 42 10             	mov    DWORD PTR [edx+0x10],eax
c0104cea:	c7 44 24 04 87 00 00 	mov    DWORD PTR [esp+0x4],0x87
c0104cf1:	00 
c0104cf2:	c7 04 24 70 00 00 00 	mov    DWORD PTR [esp],0x70
c0104cf9:	e8 5d ff ff ff       	call   c0104c5b <io_out8>
c0104cfe:	c7 04 24 71 00 00 00 	mov    DWORD PTR [esp],0x71
c0104d05:	e8 32 ff ff ff       	call   c0104c3c <io_in8>
c0104d0a:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c0104d0d:	89 42 0c             	mov    DWORD PTR [edx+0xc],eax
c0104d10:	c7 44 24 04 84 00 00 	mov    DWORD PTR [esp+0x4],0x84
c0104d17:	00 
c0104d18:	c7 04 24 70 00 00 00 	mov    DWORD PTR [esp],0x70
c0104d1f:	e8 37 ff ff ff       	call   c0104c5b <io_out8>
c0104d24:	c7 04 24 71 00 00 00 	mov    DWORD PTR [esp],0x71
c0104d2b:	e8 0c ff ff ff       	call   c0104c3c <io_in8>
c0104d30:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c0104d33:	89 42 08             	mov    DWORD PTR [edx+0x8],eax
c0104d36:	c7 44 24 04 82 00 00 	mov    DWORD PTR [esp+0x4],0x82
c0104d3d:	00 
c0104d3e:	c7 04 24 70 00 00 00 	mov    DWORD PTR [esp],0x70
c0104d45:	e8 11 ff ff ff       	call   c0104c5b <io_out8>
c0104d4a:	c7 04 24 71 00 00 00 	mov    DWORD PTR [esp],0x71
c0104d51:	e8 e6 fe ff ff       	call   c0104c3c <io_in8>
c0104d56:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c0104d59:	89 42 04             	mov    DWORD PTR [edx+0x4],eax
c0104d5c:	c7 44 24 04 80 00 00 	mov    DWORD PTR [esp+0x4],0x80
c0104d63:	00 
c0104d64:	c7 04 24 70 00 00 00 	mov    DWORD PTR [esp],0x70
c0104d6b:	e8 eb fe ff ff       	call   c0104c5b <io_out8>
c0104d70:	c7 04 24 71 00 00 00 	mov    DWORD PTR [esp],0x71
c0104d77:	e8 c0 fe ff ff       	call   c0104c3c <io_in8>
c0104d7c:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c0104d7f:	89 02                	mov    DWORD PTR [edx],eax
c0104d81:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0104d84:	8b 18                	mov    ebx,DWORD PTR [eax]
c0104d86:	c7 44 24 04 80 00 00 	mov    DWORD PTR [esp+0x4],0x80
c0104d8d:	00 
c0104d8e:	c7 04 24 70 00 00 00 	mov    DWORD PTR [esp],0x70
c0104d95:	e8 c1 fe ff ff       	call   c0104c5b <io_out8>
c0104d9a:	c7 04 24 71 00 00 00 	mov    DWORD PTR [esp],0x71
c0104da1:	e8 96 fe ff ff       	call   c0104c3c <io_in8>
c0104da6:	39 c3                	cmp    ebx,eax
c0104da8:	0f 85 c8 fe ff ff    	jne    c0104c76 <get_time+0xf>
c0104dae:	c7 44 24 04 00 00 00 	mov    DWORD PTR [esp+0x4],0x0
c0104db5:	00 
c0104db6:	c7 04 24 70 00 00 00 	mov    DWORD PTR [esp],0x70
c0104dbd:	e8 99 fe ff ff       	call   c0104c5b <io_out8>
c0104dc2:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0104dc5:	89 04 24             	mov    DWORD PTR [esp],eax
c0104dc8:	e8 c1 cb ff ff       	call   c010198e <intr_set_status>
c0104dcd:	83 c4 24             	add    esp,0x24
c0104dd0:	5b                   	pop    ebx
c0104dd1:	5d                   	pop    ebp
c0104dd2:	c3                   	ret    
	...

c0104dd4 <io_out8>:
c0104dd4:	55                   	push   ebp
c0104dd5:	89 e5                	mov    ebp,esp
c0104dd7:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c0104dda:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c0104ddd:	ee                   	out    dx,al
c0104dde:	5d                   	pop    ebp
c0104ddf:	c3                   	ret    

c0104de0 <init_pit>:
c0104de0:	55                   	push   ebp
c0104de1:	89 e5                	mov    ebp,esp
c0104de3:	83 ec 08             	sub    esp,0x8
c0104de6:	c7 44 24 04 34 00 00 	mov    DWORD PTR [esp+0x4],0x34
c0104ded:	00 
c0104dee:	c7 04 24 43 00 00 00 	mov    DWORD PTR [esp],0x43
c0104df5:	e8 da ff ff ff       	call   c0104dd4 <io_out8>
c0104dfa:	c7 44 24 04 9c 00 00 	mov    DWORD PTR [esp+0x4],0x9c
c0104e01:	00 
c0104e02:	c7 04 24 40 00 00 00 	mov    DWORD PTR [esp],0x40
c0104e09:	e8 c6 ff ff ff       	call   c0104dd4 <io_out8>
c0104e0e:	c7 44 24 04 2e 00 00 	mov    DWORD PTR [esp+0x4],0x2e
c0104e15:	00 
c0104e16:	c7 04 24 40 00 00 00 	mov    DWORD PTR [esp],0x40
c0104e1d:	e8 b2 ff ff ff       	call   c0104dd4 <io_out8>
c0104e22:	c9                   	leave  
c0104e23:	c3                   	ret    

c0104e24 <intr0x20_handler>:
c0104e24:	55                   	push   ebp
c0104e25:	89 e5                	mov    ebp,esp
c0104e27:	83 ec 28             	sub    esp,0x28
c0104e2a:	c7 44 24 04 20 00 00 	mov    DWORD PTR [esp+0x4],0x20
c0104e31:	00 
c0104e32:	c7 04 24 20 00 00 00 	mov    DWORD PTR [esp],0x20
c0104e39:	e8 96 ff ff ff       	call   c0104dd4 <io_out8>
c0104e3e:	e8 30 e8 ff ff       	call   c0103673 <running_thread>
c0104e43:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
c0104e46:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0104e49:	8b 40 20             	mov    eax,DWORD PTR [eax+0x20]
c0104e4c:	8d 50 01             	lea    edx,[eax+0x1]
c0104e4f:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0104e52:	89 50 20             	mov    DWORD PTR [eax+0x20],edx
c0104e55:	a1 0c b4 10 c0       	mov    eax,ds:0xc010b40c
c0104e5a:	83 c0 01             	add    eax,0x1
c0104e5d:	a3 0c b4 10 c0       	mov    ds:0xc010b40c,eax
c0104e62:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0104e65:	0f b6 40 1d          	movzx  eax,BYTE PTR [eax+0x1d]
c0104e69:	84 c0                	test   al,al
c0104e6b:	75 07                	jne    c0104e74 <intr0x20_handler+0x50>
c0104e6d:	e8 23 ea ff ff       	call   c0103895 <schedule>
c0104e72:	eb 10                	jmp    c0104e84 <intr0x20_handler+0x60>
c0104e74:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0104e77:	0f b6 40 1d          	movzx  eax,BYTE PTR [eax+0x1d]
c0104e7b:	8d 50 ff             	lea    edx,[eax-0x1]
c0104e7e:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0104e81:	88 50 1d             	mov    BYTE PTR [eax+0x1d],dl
c0104e84:	c9                   	leave  
c0104e85:	c3                   	ret    
	...

c0104e88 <send_recv>:
c0104e88:	55                   	push   ebp
c0104e89:	89 e5                	mov    ebp,esp
c0104e8b:	53                   	push   ebx
c0104e8c:	83 ec 18             	sub    esp,0x18
c0104e8f:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0104e92:	89 45 e4             	mov    DWORD PTR [ebp-0x1c],eax
c0104e95:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
c0104e98:	8b 4d 10             	mov    ecx,DWORD PTR [ebp+0x10]
c0104e9b:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
c0104e9e:	89 d3                	mov    ebx,edx
c0104ea0:	cd 4d                	int    0x4d
c0104ea2:	89 45 e8             	mov    DWORD PTR [ebp-0x18],eax
c0104ea5:	8b 45 e8             	mov    eax,DWORD PTR [ebp-0x18]
c0104ea8:	89 45 f8             	mov    DWORD PTR [ebp-0x8],eax
c0104eab:	8b 45 f8             	mov    eax,DWORD PTR [ebp-0x8]
c0104eae:	83 c4 18             	add    esp,0x18
c0104eb1:	5b                   	pop    ebx
c0104eb2:	5d                   	pop    ebp
c0104eb3:	c3                   	ret    

c0104eb4 <resetmsg>:
c0104eb4:	55                   	push   ebp
c0104eb5:	89 e5                	mov    ebp,esp
c0104eb7:	83 ec 18             	sub    esp,0x18
c0104eba:	c7 44 24 08 30 00 00 	mov    DWORD PTR [esp+0x8],0x30
c0104ec1:	00 
c0104ec2:	c7 44 24 04 00 00 00 	mov    DWORD PTR [esp+0x4],0x0
c0104ec9:	00 
c0104eca:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0104ecd:	89 04 24             	mov    DWORD PTR [esp],eax
c0104ed0:	e8 6b 13 00 00       	call   c0106240 <memset>
c0104ed5:	c9                   	leave  
c0104ed6:	c3                   	ret    

c0104ed7 <deadlock>:
c0104ed7:	55                   	push   ebp
c0104ed8:	89 e5                	mov    ebp,esp
c0104eda:	83 ec 28             	sub    esp,0x28
c0104edd:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c0104ee0:	89 04 24             	mov    DWORD PTR [esp],eax
c0104ee3:	e8 be ec ff ff       	call   c0103ba6 <pid2thread>
c0104ee8:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
c0104eeb:	eb 01                	jmp    c0104eee <deadlock+0x17>
c0104eed:	90                   	nop
c0104eee:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0104ef1:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
c0104ef4:	83 f8 03             	cmp    eax,0x3
c0104ef7:	75 36                	jne    c0104f2f <deadlock+0x58>
c0104ef9:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0104efc:	8b 80 6c 01 00 00    	mov    eax,DWORD PTR [eax+0x16c]
c0104f02:	3b 45 08             	cmp    eax,DWORD PTR [ebp+0x8]
c0104f05:	75 07                	jne    c0104f0e <deadlock+0x37>
c0104f07:	b8 01 00 00 00       	mov    eax,0x1
c0104f0c:	eb 27                	jmp    c0104f35 <deadlock+0x5e>
c0104f0e:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0104f11:	8b 80 6c 01 00 00    	mov    eax,DWORD PTR [eax+0x16c]
c0104f17:	89 04 24             	mov    DWORD PTR [esp],eax
c0104f1a:	e8 87 ec ff ff       	call   c0103ba6 <pid2thread>
c0104f1f:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
c0104f22:	83 7d f4 00          	cmp    DWORD PTR [ebp-0xc],0x0
c0104f26:	75 c5                	jne    c0104eed <deadlock+0x16>
c0104f28:	b8 00 00 00 00       	mov    eax,0x0
c0104f2d:	eb 06                	jmp    c0104f35 <deadlock+0x5e>
c0104f2f:	90                   	nop
c0104f30:	b8 00 00 00 00       	mov    eax,0x0
c0104f35:	c9                   	leave  
c0104f36:	c3                   	ret    

c0104f37 <msg_send>:
c0104f37:	55                   	push   ebp
c0104f38:	89 e5                	mov    ebp,esp
c0104f3a:	83 ec 78             	sub    esp,0x78
c0104f3d:	e8 31 e7 ff ff       	call   c0103673 <running_thread>
c0104f42:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
c0104f45:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0104f48:	89 04 24             	mov    DWORD PTR [esp],eax
c0104f4b:	e8 56 ec ff ff       	call   c0103ba6 <pid2thread>
c0104f50:	89 45 f0             	mov    DWORD PTR [ebp-0x10],eax
c0104f53:	83 7d f0 00          	cmp    DWORD PTR [ebp-0x10],0x0
c0104f57:	75 2c                	jne    c0104f85 <msg_send+0x4e>
c0104f59:	c7 44 24 10 57 ae 10 	mov    DWORD PTR [esp+0x10],0xc010ae57
c0104f60:	c0 
c0104f61:	c7 44 24 0c 73 af 10 	mov    DWORD PTR [esp+0xc],0xc010af73
c0104f68:	c0 
c0104f69:	c7 44 24 08 3c 00 00 	mov    DWORD PTR [esp+0x8],0x3c
c0104f70:	00 
c0104f71:	c7 44 24 04 65 ae 10 	mov    DWORD PTR [esp+0x4],0xc010ae65
c0104f78:	c0 
c0104f79:	c7 04 24 65 ae 10 c0 	mov    DWORD PTR [esp],0xc010ae65
c0104f80:	e8 5f bc ff ff       	call   c0100be4 <panic_spin>
c0104f85:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0104f88:	3b 45 f0             	cmp    eax,DWORD PTR [ebp-0x10]
c0104f8b:	75 2c                	jne    c0104fb9 <msg_send+0x82>
c0104f8d:	c7 44 24 10 77 ae 10 	mov    DWORD PTR [esp+0x10],0xc010ae77
c0104f94:	c0 
c0104f95:	c7 44 24 0c 73 af 10 	mov    DWORD PTR [esp+0xc],0xc010af73
c0104f9c:	c0 
c0104f9d:	c7 44 24 08 3d 00 00 	mov    DWORD PTR [esp+0x8],0x3d
c0104fa4:	00 
c0104fa5:	c7 44 24 04 65 ae 10 	mov    DWORD PTR [esp+0x4],0xc010ae65
c0104fac:	c0 
c0104fad:	c7 04 24 65 ae 10 c0 	mov    DWORD PTR [esp],0xc010ae65
c0104fb4:	e8 2b bc ff ff       	call   c0100be4 <panic_spin>
c0104fb9:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0104fbc:	8b 50 08             	mov    edx,DWORD PTR [eax+0x8]
c0104fbf:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c0104fc2:	89 10                	mov    DWORD PTR [eax],edx
c0104fc4:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0104fc7:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
c0104fca:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c0104fcd:	89 54 24 04          	mov    DWORD PTR [esp+0x4],edx
c0104fd1:	89 04 24             	mov    DWORD PTR [esp],eax
c0104fd4:	e8 fe fe ff ff       	call   c0104ed7 <deadlock>
c0104fd9:	85 c0                	test   eax,eax
c0104fdb:	74 59                	je     c0105036 <msg_send+0xff>
c0104fdd:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0104fe0:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
c0104fe3:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c0104fe6:	89 54 24 0c          	mov    DWORD PTR [esp+0xc],edx
c0104fea:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
c0104fee:	c7 44 24 04 87 ae 10 	mov    DWORD PTR [esp+0x4],0xc010ae87
c0104ff5:	c0 
c0104ff6:	8d 45 af             	lea    eax,[ebp-0x51]
c0104ff9:	89 04 24             	mov    DWORD PTR [esp],eax
c0104ffc:	e8 1b 14 00 00       	call   c010641c <sprintf>
c0105001:	8d 45 af             	lea    eax,[ebp-0x51]
c0105004:	89 44 24 10          	mov    DWORD PTR [esp+0x10],eax
c0105008:	c7 44 24 0c 73 af 10 	mov    DWORD PTR [esp+0xc],0xc010af73
c010500f:	c0 
c0105010:	c7 44 24 08 44 00 00 	mov    DWORD PTR [esp+0x8],0x44
c0105017:	00 
c0105018:	c7 44 24 04 65 ae 10 	mov    DWORD PTR [esp+0x4],0xc010ae65
c010501f:	c0 
c0105020:	c7 04 24 65 ae 10 c0 	mov    DWORD PTR [esp],0xc010ae65
c0105027:	e8 b8 bb ff ff       	call   c0100be4 <panic_spin>
c010502c:	b8 01 00 00 00       	mov    eax,0x1
c0105031:	e9 c8 01 00 00       	jmp    c01051fe <msg_send+0x2c7>
c0105036:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c0105039:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
c010503c:	83 f8 04             	cmp    eax,0x4
c010503f:	0f 85 fe 00 00 00    	jne    c0105143 <msg_send+0x20c>
c0105045:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c0105048:	8b 80 70 01 00 00    	mov    eax,DWORD PTR [eax+0x170]
c010504e:	83 f8 ff             	cmp    eax,0xffffffff
c0105051:	74 17                	je     c010506a <msg_send+0x133>
c0105053:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c0105056:	8b 90 70 01 00 00    	mov    edx,DWORD PTR [eax+0x170]
c010505c:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c010505f:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
c0105062:	39 c2                	cmp    edx,eax
c0105064:	0f 85 d9 00 00 00    	jne    c0105143 <msg_send+0x20c>
c010506a:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c010506d:	8d 90 3c 01 00 00    	lea    edx,[eax+0x13c]
c0105073:	c7 44 24 08 30 00 00 	mov    DWORD PTR [esp+0x8],0x30
c010507a:	00 
c010507b:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c010507e:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c0105082:	89 14 24             	mov    DWORD PTR [esp],edx
c0105085:	e8 1e 12 00 00       	call   c01062a8 <memcpy>
c010508a:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c010508d:	8b 80 94 01 00 00    	mov    eax,DWORD PTR [eax+0x194]
c0105093:	3b 45 f4             	cmp    eax,DWORD PTR [ebp-0xc]
c0105096:	74 2c                	je     c01050c4 <msg_send+0x18d>
c0105098:	c7 44 24 10 a4 ae 10 	mov    DWORD PTR [esp+0x10],0xc010aea4
c010509f:	c0 
c01050a0:	c7 44 24 0c 73 af 10 	mov    DWORD PTR [esp+0xc],0xc010af73
c01050a7:	c0 
c01050a8:	c7 44 24 08 4e 00 00 	mov    DWORD PTR [esp+0x8],0x4e
c01050af:	00 
c01050b0:	c7 44 24 04 65 ae 10 	mov    DWORD PTR [esp+0x4],0xc010ae65
c01050b7:	c0 
c01050b8:	c7 04 24 65 ae 10 c0 	mov    DWORD PTR [esp],0xc010ae65
c01050bf:	e8 20 bb ff ff       	call   c0100be4 <panic_spin>
c01050c4:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c01050c7:	8d 90 90 01 00 00    	lea    edx,[eax+0x190]
c01050cd:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c01050d0:	05 78 01 00 00       	add    eax,0x178
c01050d5:	89 54 24 04          	mov    DWORD PTR [esp+0x4],edx
c01050d9:	89 04 24             	mov    DWORD PTR [esp],eax
c01050dc:	e8 54 0b 00 00       	call   c0105c35 <list_find>
c01050e1:	85 c0                	test   eax,eax
c01050e3:	74 2c                	je     c0105111 <msg_send+0x1da>
c01050e5:	c7 44 24 10 c4 ae 10 	mov    DWORD PTR [esp+0x10],0xc010aec4
c01050ec:	c0 
c01050ed:	c7 44 24 0c 73 af 10 	mov    DWORD PTR [esp+0xc],0xc010af73
c01050f4:	c0 
c01050f5:	c7 44 24 08 4f 00 00 	mov    DWORD PTR [esp+0x8],0x4f
c01050fc:	00 
c01050fd:	c7 44 24 04 65 ae 10 	mov    DWORD PTR [esp+0x4],0xc010ae65
c0105104:	c0 
c0105105:	c7 04 24 65 ae 10 c0 	mov    DWORD PTR [esp],0xc010ae65
c010510c:	e8 d3 ba ff ff       	call   c0100be4 <panic_spin>
c0105111:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0105114:	8d 90 90 01 00 00    	lea    edx,[eax+0x190]
c010511a:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c010511d:	05 78 01 00 00       	add    eax,0x178
c0105122:	89 54 24 04          	mov    DWORD PTR [esp+0x4],edx
c0105126:	89 04 24             	mov    DWORD PTR [esp],eax
c0105129:	e8 95 0a 00 00       	call   c0105bc3 <list_append>
c010512e:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c0105131:	89 04 24             	mov    DWORD PTR [esp],eax
c0105134:	e8 80 e9 ff ff       	call   c0103ab9 <thread_unblock>
c0105139:	b8 00 00 00 00       	mov    eax,0x0
c010513e:	e9 bb 00 00 00       	jmp    c01051fe <msg_send+0x2c7>
c0105143:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0105146:	c7 40 04 03 00 00 00 	mov    DWORD PTR [eax+0x4],0x3
c010514d:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0105150:	8d 90 3c 01 00 00    	lea    edx,[eax+0x13c]
c0105156:	c7 44 24 08 30 00 00 	mov    DWORD PTR [esp+0x8],0x30
c010515d:	00 
c010515e:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c0105161:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c0105165:	89 14 24             	mov    DWORD PTR [esp],edx
c0105168:	e8 3b 11 00 00       	call   c01062a8 <memcpy>
c010516d:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0105170:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c0105173:	89 90 6c 01 00 00    	mov    DWORD PTR [eax+0x16c],edx
c0105179:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c010517c:	8b 80 94 01 00 00    	mov    eax,DWORD PTR [eax+0x194]
c0105182:	3b 45 f4             	cmp    eax,DWORD PTR [ebp-0xc]
c0105185:	74 2c                	je     c01051b3 <msg_send+0x27c>
c0105187:	c7 44 24 10 a4 ae 10 	mov    DWORD PTR [esp+0x10],0xc010aea4
c010518e:	c0 
c010518f:	c7 44 24 0c 73 af 10 	mov    DWORD PTR [esp+0xc],0xc010af73
c0105196:	c0 
c0105197:	c7 44 24 08 5d 00 00 	mov    DWORD PTR [esp+0x8],0x5d
c010519e:	00 
c010519f:	c7 44 24 04 65 ae 10 	mov    DWORD PTR [esp+0x4],0xc010ae65
c01051a6:	c0 
c01051a7:	c7 04 24 65 ae 10 c0 	mov    DWORD PTR [esp],0xc010ae65
c01051ae:	e8 31 ba ff ff       	call   c0100be4 <panic_spin>
c01051b3:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c01051b6:	8d 90 90 01 00 00    	lea    edx,[eax+0x190]
c01051bc:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c01051bf:	05 78 01 00 00       	add    eax,0x178
c01051c4:	89 54 24 04          	mov    DWORD PTR [esp+0x4],edx
c01051c8:	89 04 24             	mov    DWORD PTR [esp],eax
c01051cb:	e8 f3 09 00 00       	call   c0105bc3 <list_append>
c01051d0:	c7 04 24 03 00 00 00 	mov    DWORD PTR [esp],0x3
c01051d7:	e8 3d e8 ff ff       	call   c0103a19 <thread_block>
c01051dc:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c01051df:	c7 80 6c 01 00 00 fe 	mov    DWORD PTR [eax+0x16c],0xfffffffe
c01051e6:	ff ff ff 
c01051e9:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c01051ec:	05 3c 01 00 00       	add    eax,0x13c
c01051f1:	89 04 24             	mov    DWORD PTR [esp],eax
c01051f4:	e8 bb fc ff ff       	call   c0104eb4 <resetmsg>
c01051f9:	b8 00 00 00 00       	mov    eax,0x0
c01051fe:	c9                   	leave  
c01051ff:	c3                   	ret    

c0105200 <pid_check>:
c0105200:	55                   	push   ebp
c0105201:	89 e5                	mov    ebp,esp
c0105203:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0105206:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
c0105209:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
c010520c:	3b 45 0c             	cmp    eax,DWORD PTR [ebp+0xc]
c010520f:	0f 94 c0             	sete   al
c0105212:	0f b6 c0             	movzx  eax,al
c0105215:	5d                   	pop    ebp
c0105216:	c3                   	ret    

c0105217 <msg_recv>:
c0105217:	55                   	push   ebp
c0105218:	89 e5                	mov    ebp,esp
c010521a:	83 ec 38             	sub    esp,0x38
c010521d:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0105220:	89 04 24             	mov    DWORD PTR [esp],eax
c0105223:	e8 7e e9 ff ff       	call   c0103ba6 <pid2thread>
c0105228:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
c010522b:	e8 43 e4 ff ff       	call   c0103673 <running_thread>
c0105230:	89 45 f0             	mov    DWORD PTR [ebp-0x10],eax
c0105233:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0105236:	3b 45 f0             	cmp    eax,DWORD PTR [ebp-0x10]
c0105239:	75 2c                	jne    c0105267 <msg_recv+0x50>
c010523b:	c7 44 24 10 fa ae 10 	mov    DWORD PTR [esp+0x10],0xc010aefa
c0105242:	c0 
c0105243:	c7 44 24 0c 6a af 10 	mov    DWORD PTR [esp+0xc],0xc010af6a
c010524a:	c0 
c010524b:	c7 44 24 08 7a 00 00 	mov    DWORD PTR [esp+0x8],0x7a
c0105252:	00 
c0105253:	c7 44 24 04 65 ae 10 	mov    DWORD PTR [esp+0x4],0xc010ae65
c010525a:	c0 
c010525b:	c7 04 24 65 ae 10 c0 	mov    DWORD PTR [esp],0xc010ae65
c0105262:	e8 7d b9 ff ff       	call   c0100be4 <panic_spin>
c0105267:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c010526a:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c010526d:	89 90 70 01 00 00    	mov    DWORD PTR [eax+0x170],edx
c0105273:	83 7d 08 ff          	cmp    DWORD PTR [ebp+0x8],0xffffffff
c0105277:	75 38                	jne    c01052b1 <msg_recv+0x9a>
c0105279:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c010527c:	05 78 01 00 00       	add    eax,0x178
c0105281:	89 04 24             	mov    DWORD PTR [esp],eax
c0105284:	e8 63 0a 00 00       	call   c0105cec <list_empty>
c0105289:	85 c0                	test   eax,eax
c010528b:	74 0c                	je     c0105299 <msg_recv+0x82>
c010528d:	c7 04 24 04 00 00 00 	mov    DWORD PTR [esp],0x4
c0105294:	e8 80 e7 ff ff       	call   c0103a19 <thread_block>
c0105299:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c010529c:	05 78 01 00 00       	add    eax,0x178
c01052a1:	89 04 24             	mov    DWORD PTR [esp],eax
c01052a4:	e8 6d 09 00 00       	call   c0105c16 <list_pop>
c01052a9:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
c01052ac:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
c01052af:	eb 7e                	jmp    c010532f <msg_recv+0x118>
c01052b1:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c01052b4:	05 78 01 00 00       	add    eax,0x178
c01052b9:	89 04 24             	mov    DWORD PTR [esp],eax
c01052bc:	e8 2b 0a 00 00       	call   c0105cec <list_empty>
c01052c1:	85 c0                	test   eax,eax
c01052c3:	74 0c                	je     c01052d1 <msg_recv+0xba>
c01052c5:	c7 04 24 04 00 00 00 	mov    DWORD PTR [esp],0x4
c01052cc:	e8 48 e7 ff ff       	call   c0103a19 <thread_block>
c01052d1:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01052d4:	8b 55 f0             	mov    edx,DWORD PTR [ebp-0x10]
c01052d7:	81 c2 78 01 00 00    	add    edx,0x178
c01052dd:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
c01052e1:	c7 44 24 04 00 52 10 	mov    DWORD PTR [esp+0x4],0xc0105200
c01052e8:	c0 
c01052e9:	89 14 24             	mov    DWORD PTR [esp],edx
c01052ec:	e8 7f 09 00 00       	call   c0105c70 <list_traversal>
c01052f1:	89 45 ec             	mov    DWORD PTR [ebp-0x14],eax
c01052f4:	83 7d ec 00          	cmp    DWORD PTR [ebp-0x14],0x0
c01052f8:	75 2c                	jne    c0105326 <msg_recv+0x10f>
c01052fa:	c7 44 24 10 0b af 10 	mov    DWORD PTR [esp+0x10],0xc010af0b
c0105301:	c0 
c0105302:	c7 44 24 0c 6a af 10 	mov    DWORD PTR [esp+0xc],0xc010af6a
c0105309:	c0 
c010530a:	c7 44 24 08 8e 00 00 	mov    DWORD PTR [esp+0x8],0x8e
c0105311:	00 
c0105312:	c7 44 24 04 65 ae 10 	mov    DWORD PTR [esp+0x4],0xc010ae65
c0105319:	c0 
c010531a:	c7 04 24 65 ae 10 c0 	mov    DWORD PTR [esp],0xc010ae65
c0105321:	e8 be b8 ff ff       	call   c0100be4 <panic_spin>
c0105326:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
c0105329:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
c010532c:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
c010532f:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0105332:	05 3c 01 00 00       	add    eax,0x13c
c0105337:	c7 44 24 08 30 00 00 	mov    DWORD PTR [esp+0x8],0x30
c010533e:	00 
c010533f:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c0105343:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c0105346:	89 04 24             	mov    DWORD PTR [esp],eax
c0105349:	e8 5a 0f 00 00       	call   c01062a8 <memcpy>
c010534e:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0105351:	c7 80 6c 01 00 00 fe 	mov    DWORD PTR [eax+0x16c],0xfffffffe
c0105358:	ff ff ff 
c010535b:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c010535e:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
c0105361:	83 f8 03             	cmp    eax,0x3
c0105364:	75 0b                	jne    c0105371 <msg_recv+0x15a>
c0105366:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0105369:	89 04 24             	mov    DWORD PTR [esp],eax
c010536c:	e8 48 e7 ff ff       	call   c0103ab9 <thread_unblock>
c0105371:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c0105374:	c7 80 70 01 00 00 fe 	mov    DWORD PTR [eax+0x170],0xfffffffe
c010537b:	ff ff ff 
c010537e:	b8 00 00 00 00       	mov    eax,0x0
c0105383:	c9                   	leave  
c0105384:	c3                   	ret    

c0105385 <sys_sendrec>:
c0105385:	55                   	push   ebp
c0105386:	89 e5                	mov    ebp,esp
c0105388:	83 ec 38             	sub    esp,0x38
c010538b:	c7 45 f4 01 00 00 00 	mov    DWORD PTR [ebp-0xc],0x1
c0105392:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0105395:	83 f8 02             	cmp    eax,0x2
c0105398:	74 24                	je     c01053be <sys_sendrec+0x39>
c010539a:	83 f8 03             	cmp    eax,0x3
c010539d:	74 36                	je     c01053d5 <sys_sendrec+0x50>
c010539f:	83 f8 01             	cmp    eax,0x1
c01053a2:	75 61                	jne    c0105405 <sys_sendrec+0x80>
c01053a4:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
c01053a7:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c01053ab:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c01053ae:	89 04 24             	mov    DWORD PTR [esp],eax
c01053b1:	e8 81 fb ff ff       	call   c0104f37 <msg_send>
c01053b6:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
c01053b9:	e9 86 00 00 00       	jmp    c0105444 <sys_sendrec+0xbf>
c01053be:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
c01053c1:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c01053c5:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c01053c8:	89 04 24             	mov    DWORD PTR [esp],eax
c01053cb:	e8 47 fe ff ff       	call   c0105217 <msg_recv>
c01053d0:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
c01053d3:	eb 6f                	jmp    c0105444 <sys_sendrec+0xbf>
c01053d5:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
c01053d8:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c01053dc:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c01053df:	89 04 24             	mov    DWORD PTR [esp],eax
c01053e2:	e8 50 fb ff ff       	call   c0104f37 <msg_send>
c01053e7:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
c01053ea:	83 7d f4 00          	cmp    DWORD PTR [ebp-0xc],0x0
c01053ee:	75 15                	jne    c0105405 <sys_sendrec+0x80>
c01053f0:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
c01053f3:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c01053f7:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c01053fa:	89 04 24             	mov    DWORD PTR [esp],eax
c01053fd:	e8 15 fe ff ff       	call   c0105217 <msg_recv>
c0105402:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
c0105405:	83 7d 08 01          	cmp    DWORD PTR [ebp+0x8],0x1
c0105409:	74 38                	je     c0105443 <sys_sendrec+0xbe>
c010540b:	83 7d 08 02          	cmp    DWORD PTR [ebp+0x8],0x2
c010540f:	74 32                	je     c0105443 <sys_sendrec+0xbe>
c0105411:	83 7d 08 03          	cmp    DWORD PTR [ebp+0x8],0x3
c0105415:	74 2c                	je     c0105443 <sys_sendrec+0xbe>
c0105417:	c7 44 24 10 1c af 10 	mov    DWORD PTR [esp+0x10],0xc010af1c
c010541e:	c0 
c010541f:	c7 44 24 0c 5e af 10 	mov    DWORD PTR [esp+0xc],0xc010af5e
c0105426:	c0 
c0105427:	c7 44 24 08 ad 00 00 	mov    DWORD PTR [esp+0x8],0xad
c010542e:	00 
c010542f:	c7 44 24 04 65 ae 10 	mov    DWORD PTR [esp+0x4],0xc010ae65
c0105436:	c0 
c0105437:	c7 04 24 65 ae 10 c0 	mov    DWORD PTR [esp],0xc010ae65
c010543e:	e8 a1 b7 ff ff       	call   c0100be4 <panic_spin>
c0105443:	90                   	nop
c0105444:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0105447:	c9                   	leave  
c0105448:	c3                   	ret    
c0105449:	00 00                	add    BYTE PTR [eax],al
	...

c010544c <MM_task>:
c010544c:	55                   	push   ebp
c010544d:	89 e5                	mov    ebp,esp
c010544f:	53                   	push   ebx
c0105450:	83 ec 44             	sub    esp,0x44
c0105453:	b8 02 00 00 00       	mov    eax,0x2
c0105458:	ba ff ff ff ff       	mov    edx,0xffffffff
c010545d:	8d 4d c8             	lea    ecx,[ebp-0x38]
c0105460:	89 d3                	mov    ebx,edx
c0105462:	cd 4d                	int    0x4d
c0105464:	8b 45 cc             	mov    eax,DWORD PTR [ebp-0x34]
c0105467:	83 f8 01             	cmp    eax,0x1
c010546a:	74 07                	je     c0105473 <MM_task+0x27>
c010546c:	83 f8 02             	cmp    eax,0x2
c010546f:	74 30                	je     c01054a1 <MM_task+0x55>
c0105471:	eb 49                	jmp    c01054bc <MM_task+0x70>
c0105473:	8b 45 c8             	mov    eax,DWORD PTR [ebp-0x38]
c0105476:	89 04 24             	mov    DWORD PTR [esp],eax
c0105479:	e8 28 e7 ff ff       	call   c0103ba6 <pid2thread>
c010547e:	8b 55 d0             	mov    edx,DWORD PTR [ebp-0x30]
c0105481:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c0105485:	89 14 24             	mov    DWORD PTR [esp],edx
c0105488:	e8 7a ca ff ff       	call   c0101f07 <mm_malloc>
c010548d:	89 45 d0             	mov    DWORD PTR [ebp-0x30],eax
c0105490:	8b 55 c8             	mov    edx,DWORD PTR [ebp-0x38]
c0105493:	b8 01 00 00 00       	mov    eax,0x1
c0105498:	8d 4d c8             	lea    ecx,[ebp-0x38]
c010549b:	89 d3                	mov    ebx,edx
c010549d:	cd 4d                	int    0x4d
c010549f:	eb 1b                	jmp    c01054bc <MM_task+0x70>
c01054a1:	8b 45 c8             	mov    eax,DWORD PTR [ebp-0x38]
c01054a4:	89 04 24             	mov    DWORD PTR [esp],eax
c01054a7:	e8 fa e6 ff ff       	call   c0103ba6 <pid2thread>
c01054ac:	8b 55 d0             	mov    edx,DWORD PTR [ebp-0x30]
c01054af:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c01054b3:	89 14 24             	mov    DWORD PTR [esp],edx
c01054b6:	e8 73 cd ff ff       	call   c010222e <mm_free>
c01054bb:	90                   	nop
c01054bc:	eb 95                	jmp    c0105453 <MM_task+0x7>
	...

c01054c0 <bitmap_init>:
c01054c0:	55                   	push   ebp
c01054c1:	89 e5                	mov    ebp,esp
c01054c3:	83 ec 18             	sub    esp,0x18
c01054c6:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01054c9:	8b 10                	mov    edx,DWORD PTR [eax]
c01054cb:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01054ce:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
c01054d1:	89 54 24 08          	mov    DWORD PTR [esp+0x8],edx
c01054d5:	c7 44 24 04 00 00 00 	mov    DWORD PTR [esp+0x4],0x0
c01054dc:	00 
c01054dd:	89 04 24             	mov    DWORD PTR [esp],eax
c01054e0:	e8 5b 0d 00 00       	call   c0106240 <memset>
c01054e5:	c9                   	leave  
c01054e6:	c3                   	ret    

c01054e7 <bitmap_scan_test>:
c01054e7:	55                   	push   ebp
c01054e8:	89 e5                	mov    ebp,esp
c01054ea:	56                   	push   esi
c01054eb:	53                   	push   ebx
c01054ec:	83 ec 10             	sub    esp,0x10
c01054ef:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c01054f2:	c1 e8 03             	shr    eax,0x3
c01054f5:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
c01054f8:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c01054fb:	83 e0 07             	and    eax,0x7
c01054fe:	89 45 f0             	mov    DWORD PTR [ebp-0x10],eax
c0105501:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0105504:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
c0105507:	03 45 f4             	add    eax,DWORD PTR [ebp-0xc]
c010550a:	0f b6 00             	movzx  eax,BYTE PTR [eax]
c010550d:	0f b6 d0             	movzx  edx,al
c0105510:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c0105513:	bb 01 00 00 00       	mov    ebx,0x1
c0105518:	89 de                	mov    esi,ebx
c010551a:	89 c1                	mov    ecx,eax
c010551c:	d3 e6                	shl    esi,cl
c010551e:	89 f0                	mov    eax,esi
c0105520:	21 d0                	and    eax,edx
c0105522:	83 c4 10             	add    esp,0x10
c0105525:	5b                   	pop    ebx
c0105526:	5e                   	pop    esi
c0105527:	5d                   	pop    ebp
c0105528:	c3                   	ret    

c0105529 <bitmap_alloc>:
c0105529:	55                   	push   ebp
c010552a:	89 e5                	mov    ebp,esp
c010552c:	53                   	push   ebx
c010552d:	83 ec 44             	sub    esp,0x44
c0105530:	c7 45 f4 00 00 00 00 	mov    DWORD PTR [ebp-0xc],0x0
c0105537:	eb 04                	jmp    c010553d <bitmap_alloc+0x14>
c0105539:	83 45 f4 01          	add    DWORD PTR [ebp-0xc],0x1
c010553d:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0105540:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
c0105543:	03 45 f4             	add    eax,DWORD PTR [ebp-0xc]
c0105546:	0f b6 00             	movzx  eax,BYTE PTR [eax]
c0105549:	3c ff                	cmp    al,0xff
c010554b:	75 0a                	jne    c0105557 <bitmap_alloc+0x2e>
c010554d:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0105550:	8b 00                	mov    eax,DWORD PTR [eax]
c0105552:	3b 45 f4             	cmp    eax,DWORD PTR [ebp-0xc]
c0105555:	77 e2                	ja     c0105539 <bitmap_alloc+0x10>
c0105557:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c010555a:	8b 00                	mov    eax,DWORD PTR [eax]
c010555c:	3b 45 f4             	cmp    eax,DWORD PTR [ebp-0xc]
c010555f:	77 2c                	ja     c010558d <bitmap_alloc+0x64>
c0105561:	c7 44 24 10 bc af 10 	mov    DWORD PTR [esp+0x10],0xc010afbc
c0105568:	c0 
c0105569:	c7 44 24 0c 11 b0 10 	mov    DWORD PTR [esp+0xc],0xc010b011
c0105570:	c0 
c0105571:	c7 44 24 08 2e 00 00 	mov    DWORD PTR [esp+0x8],0x2e
c0105578:	00 
c0105579:	c7 44 24 04 e0 af 10 	mov    DWORD PTR [esp+0x4],0xc010afe0
c0105580:	c0 
c0105581:	c7 04 24 e0 af 10 c0 	mov    DWORD PTR [esp],0xc010afe0
c0105588:	e8 57 b6 ff ff       	call   c0100be4 <panic_spin>
c010558d:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0105590:	8b 00                	mov    eax,DWORD PTR [eax]
c0105592:	3b 45 f4             	cmp    eax,DWORD PTR [ebp-0xc]
c0105595:	75 0a                	jne    c01055a1 <bitmap_alloc+0x78>
c0105597:	b8 ff ff ff ff       	mov    eax,0xffffffff
c010559c:	e9 cc 00 00 00       	jmp    c010566d <bitmap_alloc+0x144>
c01055a1:	c7 45 f0 00 00 00 00 	mov    DWORD PTR [ebp-0x10],0x0
c01055a8:	eb 04                	jmp    c01055ae <bitmap_alloc+0x85>
c01055aa:	83 45 f0 01          	add    DWORD PTR [ebp-0x10],0x1
c01055ae:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c01055b1:	ba 01 00 00 00       	mov    edx,0x1
c01055b6:	89 d3                	mov    ebx,edx
c01055b8:	89 c1                	mov    ecx,eax
c01055ba:	d3 e3                	shl    ebx,cl
c01055bc:	89 d8                	mov    eax,ebx
c01055be:	89 c2                	mov    edx,eax
c01055c0:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01055c3:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
c01055c6:	03 45 f4             	add    eax,DWORD PTR [ebp-0xc]
c01055c9:	0f b6 00             	movzx  eax,BYTE PTR [eax]
c01055cc:	21 d0                	and    eax,edx
c01055ce:	84 c0                	test   al,al
c01055d0:	75 d8                	jne    c01055aa <bitmap_alloc+0x81>
c01055d2:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c01055d5:	c1 e0 03             	shl    eax,0x3
c01055d8:	03 45 f0             	add    eax,DWORD PTR [ebp-0x10]
c01055db:	89 45 ec             	mov    DWORD PTR [ebp-0x14],eax
c01055de:	83 7d 0c 01          	cmp    DWORD PTR [ebp+0xc],0x1
c01055e2:	75 08                	jne    c01055ec <bitmap_alloc+0xc3>
c01055e4:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
c01055e7:	e9 81 00 00 00       	jmp    c010566d <bitmap_alloc+0x144>
c01055ec:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01055ef:	8b 00                	mov    eax,DWORD PTR [eax]
c01055f1:	8d 14 c5 00 00 00 00 	lea    edx,[eax*8+0x0]
c01055f8:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
c01055fb:	89 d1                	mov    ecx,edx
c01055fd:	29 c1                	sub    ecx,eax
c01055ff:	89 c8                	mov    eax,ecx
c0105601:	89 45 e8             	mov    DWORD PTR [ebp-0x18],eax
c0105604:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
c0105607:	83 c0 01             	add    eax,0x1
c010560a:	89 45 e4             	mov    DWORD PTR [ebp-0x1c],eax
c010560d:	c7 45 e0 01 00 00 00 	mov    DWORD PTR [ebp-0x20],0x1
c0105614:	c7 45 ec ff ff ff ff 	mov    DWORD PTR [ebp-0x14],0xffffffff
c010561b:	eb 47                	jmp    c0105664 <bitmap_alloc+0x13b>
c010561d:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
c0105620:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c0105624:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0105627:	89 04 24             	mov    DWORD PTR [esp],eax
c010562a:	e8 b8 fe ff ff       	call   c01054e7 <bitmap_scan_test>
c010562f:	85 c0                	test   eax,eax
c0105631:	75 06                	jne    c0105639 <bitmap_alloc+0x110>
c0105633:	83 45 e0 01          	add    DWORD PTR [ebp-0x20],0x1
c0105637:	eb 07                	jmp    c0105640 <bitmap_alloc+0x117>
c0105639:	c7 45 e0 00 00 00 00 	mov    DWORD PTR [ebp-0x20],0x0
c0105640:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
c0105643:	3b 45 0c             	cmp    eax,DWORD PTR [ebp+0xc]
c0105646:	75 14                	jne    c010565c <bitmap_alloc+0x133>
c0105648:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c010564b:	8b 55 e4             	mov    edx,DWORD PTR [ebp-0x1c]
c010564e:	89 d3                	mov    ebx,edx
c0105650:	29 c3                	sub    ebx,eax
c0105652:	89 d8                	mov    eax,ebx
c0105654:	83 c0 01             	add    eax,0x1
c0105657:	89 45 ec             	mov    DWORD PTR [ebp-0x14],eax
c010565a:	eb 0e                	jmp    c010566a <bitmap_alloc+0x141>
c010565c:	83 6d e8 01          	sub    DWORD PTR [ebp-0x18],0x1
c0105660:	83 45 e4 01          	add    DWORD PTR [ebp-0x1c],0x1
c0105664:	83 7d e8 00          	cmp    DWORD PTR [ebp-0x18],0x0
c0105668:	75 b3                	jne    c010561d <bitmap_alloc+0xf4>
c010566a:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
c010566d:	83 c4 44             	add    esp,0x44
c0105670:	5b                   	pop    ebx
c0105671:	5d                   	pop    ebp
c0105672:	c3                   	ret    

c0105673 <bitmap_set>:
c0105673:	55                   	push   ebp
c0105674:	89 e5                	mov    ebp,esp
c0105676:	57                   	push   edi
c0105677:	56                   	push   esi
c0105678:	53                   	push   ebx
c0105679:	83 ec 4c             	sub    esp,0x4c
c010567c:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
c010567f:	88 45 d4             	mov    BYTE PTR [ebp-0x2c],al
c0105682:	80 7d d4 00          	cmp    BYTE PTR [ebp-0x2c],0x0
c0105686:	74 32                	je     c01056ba <bitmap_set+0x47>
c0105688:	80 7d d4 01          	cmp    BYTE PTR [ebp-0x2c],0x1
c010568c:	74 2c                	je     c01056ba <bitmap_set+0x47>
c010568e:	c7 44 24 10 ed af 10 	mov    DWORD PTR [esp+0x10],0xc010afed
c0105695:	c0 
c0105696:	c7 44 24 0c 06 b0 10 	mov    DWORD PTR [esp+0xc],0xc010b006
c010569d:	c0 
c010569e:	c7 44 24 08 65 00 00 	mov    DWORD PTR [esp+0x8],0x65
c01056a5:	00 
c01056a6:	c7 44 24 04 e0 af 10 	mov    DWORD PTR [esp+0x4],0xc010afe0
c01056ad:	c0 
c01056ae:	c7 04 24 e0 af 10 c0 	mov    DWORD PTR [esp],0xc010afe0
c01056b5:	e8 2a b5 ff ff       	call   c0100be4 <panic_spin>
c01056ba:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c01056bd:	c1 e8 03             	shr    eax,0x3
c01056c0:	89 45 e4             	mov    DWORD PTR [ebp-0x1c],eax
c01056c3:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c01056c6:	83 e0 07             	and    eax,0x7
c01056c9:	89 45 e0             	mov    DWORD PTR [ebp-0x20],eax
c01056cc:	0f b6 45 d4          	movzx  eax,BYTE PTR [ebp-0x2c]
c01056d0:	85 c0                	test   eax,eax
c01056d2:	74 07                	je     c01056db <bitmap_set+0x68>
c01056d4:	83 f8 01             	cmp    eax,0x1
c01056d7:	74 31                	je     c010570a <bitmap_set+0x97>
c01056d9:	eb 5b                	jmp    c0105736 <bitmap_set+0xc3>
c01056db:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01056de:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
c01056e1:	03 45 e4             	add    eax,DWORD PTR [ebp-0x1c]
c01056e4:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c01056e7:	8b 52 04             	mov    edx,DWORD PTR [edx+0x4]
c01056ea:	03 55 e4             	add    edx,DWORD PTR [ebp-0x1c]
c01056ed:	0f b6 12             	movzx  edx,BYTE PTR [edx]
c01056f0:	89 d3                	mov    ebx,edx
c01056f2:	8b 55 e0             	mov    edx,DWORD PTR [ebp-0x20]
c01056f5:	be 01 00 00 00       	mov    esi,0x1
c01056fa:	89 f7                	mov    edi,esi
c01056fc:	89 d1                	mov    ecx,edx
c01056fe:	d3 e7                	shl    edi,cl
c0105700:	89 fa                	mov    edx,edi
c0105702:	f7 d2                	not    edx
c0105704:	21 da                	and    edx,ebx
c0105706:	88 10                	mov    BYTE PTR [eax],dl
c0105708:	eb 2c                	jmp    c0105736 <bitmap_set+0xc3>
c010570a:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c010570d:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
c0105710:	03 45 e4             	add    eax,DWORD PTR [ebp-0x1c]
c0105713:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c0105716:	8b 52 04             	mov    edx,DWORD PTR [edx+0x4]
c0105719:	03 55 e4             	add    edx,DWORD PTR [ebp-0x1c]
c010571c:	0f b6 12             	movzx  edx,BYTE PTR [edx]
c010571f:	89 d3                	mov    ebx,edx
c0105721:	8b 55 e0             	mov    edx,DWORD PTR [ebp-0x20]
c0105724:	be 01 00 00 00       	mov    esi,0x1
c0105729:	89 f7                	mov    edi,esi
c010572b:	89 d1                	mov    ecx,edx
c010572d:	d3 e7                	shl    edi,cl
c010572f:	89 fa                	mov    edx,edi
c0105731:	09 da                	or     edx,ebx
c0105733:	88 10                	mov    BYTE PTR [eax],dl
c0105735:	90                   	nop
c0105736:	83 c4 4c             	add    esp,0x4c
c0105739:	5b                   	pop    ebx
c010573a:	5e                   	pop    esi
c010573b:	5f                   	pop    edi
c010573c:	5d                   	pop    ebp
c010573d:	c3                   	ret    
	...

c0105740 <init_fifo>:
c0105740:	55                   	push   ebp
c0105741:	89 e5                	mov    ebp,esp
c0105743:	83 ec 18             	sub    esp,0x18
c0105746:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0105749:	89 04 24             	mov    DWORD PTR [esp],eax
c010574c:	e8 31 da ff ff       	call   c0103182 <lock_init>
c0105751:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0105754:	c7 40 24 00 00 00 00 	mov    DWORD PTR [eax+0x24],0x0
c010575b:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c010575e:	c7 40 28 00 00 00 00 	mov    DWORD PTR [eax+0x28],0x0
c0105765:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0105768:	8b 55 10             	mov    edx,DWORD PTR [ebp+0x10]
c010576b:	89 50 30             	mov    DWORD PTR [eax+0x30],edx
c010576e:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
c0105771:	83 f8 10             	cmp    eax,0x10
c0105774:	74 23                	je     c0105799 <init_fifo+0x59>
c0105776:	83 f8 10             	cmp    eax,0x10
c0105779:	7f 07                	jg     c0105782 <init_fifo+0x42>
c010577b:	83 f8 08             	cmp    eax,0x8
c010577e:	74 0e                	je     c010578e <init_fifo+0x4e>
c0105780:	eb 37                	jmp    c01057b9 <init_fifo+0x79>
c0105782:	83 f8 20             	cmp    eax,0x20
c0105785:	74 1d                	je     c01057a4 <init_fifo+0x64>
c0105787:	83 f8 40             	cmp    eax,0x40
c010578a:	74 23                	je     c01057af <init_fifo+0x6f>
c010578c:	eb 2b                	jmp    c01057b9 <init_fifo+0x79>
c010578e:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0105791:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
c0105794:	89 50 2c             	mov    DWORD PTR [eax+0x2c],edx
c0105797:	eb 20                	jmp    c01057b9 <init_fifo+0x79>
c0105799:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c010579c:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
c010579f:	89 50 2c             	mov    DWORD PTR [eax+0x2c],edx
c01057a2:	eb 15                	jmp    c01057b9 <init_fifo+0x79>
c01057a4:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01057a7:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
c01057aa:	89 50 2c             	mov    DWORD PTR [eax+0x2c],edx
c01057ad:	eb 0a                	jmp    c01057b9 <init_fifo+0x79>
c01057af:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01057b2:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
c01057b5:	89 50 2c             	mov    DWORD PTR [eax+0x2c],edx
c01057b8:	90                   	nop
c01057b9:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01057bc:	8b 55 14             	mov    edx,DWORD PTR [ebp+0x14]
c01057bf:	89 50 34             	mov    DWORD PTR [eax+0x34],edx
c01057c2:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01057c5:	8b 55 14             	mov    edx,DWORD PTR [ebp+0x14]
c01057c8:	89 50 38             	mov    DWORD PTR [eax+0x38],edx
c01057cb:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01057ce:	c7 40 3c 00 00 00 00 	mov    DWORD PTR [eax+0x3c],0x0
c01057d5:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01057d8:	c7 40 40 00 00 00 00 	mov    DWORD PTR [eax+0x40],0x0
c01057df:	c9                   	leave  
c01057e0:	c3                   	ret    

c01057e1 <fifo_put>:
c01057e1:	55                   	push   ebp
c01057e2:	89 e5                	mov    ebp,esp
c01057e4:	83 ec 38             	sub    esp,0x38
c01057e7:	e8 75 c1 ff ff       	call   c0101961 <intr_disable>
c01057ec:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
c01057ef:	eb 2d                	jmp    c010581e <fifo_put+0x3d>
c01057f1:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01057f4:	89 04 24             	mov    DWORD PTR [esp],eax
c01057f7:	e8 e6 db ff ff       	call   c01033e2 <lock_acquire>
c01057fc:	e8 72 de ff ff       	call   c0103673 <running_thread>
c0105801:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c0105804:	89 42 24             	mov    DWORD PTR [edx+0x24],eax
c0105807:	c7 04 24 02 00 00 00 	mov    DWORD PTR [esp],0x2
c010580e:	e8 06 e2 ff ff       	call   c0103a19 <thread_block>
c0105813:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0105816:	89 04 24             	mov    DWORD PTR [esp],eax
c0105819:	e8 48 dc ff ff       	call   c0103466 <lock_release>
c010581e:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0105821:	8b 40 38             	mov    eax,DWORD PTR [eax+0x38]
c0105824:	85 c0                	test   eax,eax
c0105826:	74 c9                	je     c01057f1 <fifo_put+0x10>
c0105828:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c010582b:	8b 40 38             	mov    eax,DWORD PTR [eax+0x38]
c010582e:	8d 50 ff             	lea    edx,[eax-0x1]
c0105831:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0105834:	89 50 38             	mov    DWORD PTR [eax+0x38],edx
c0105837:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c010583a:	8b 40 30             	mov    eax,DWORD PTR [eax+0x30]
c010583d:	83 f8 08             	cmp    eax,0x8
c0105840:	74 4d                	je     c010588f <fifo_put+0xae>
c0105842:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0105845:	8b 40 30             	mov    eax,DWORD PTR [eax+0x30]
c0105848:	83 f8 10             	cmp    eax,0x10
c010584b:	74 42                	je     c010588f <fifo_put+0xae>
c010584d:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0105850:	8b 40 30             	mov    eax,DWORD PTR [eax+0x30]
c0105853:	83 f8 20             	cmp    eax,0x20
c0105856:	74 37                	je     c010588f <fifo_put+0xae>
c0105858:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c010585b:	8b 40 30             	mov    eax,DWORD PTR [eax+0x30]
c010585e:	83 f8 40             	cmp    eax,0x40
c0105861:	74 2c                	je     c010588f <fifo_put+0xae>
c0105863:	c7 44 24 10 40 b0 10 	mov    DWORD PTR [esp+0x10],0xc010b040
c010586a:	c0 
c010586b:	c7 44 24 0c a3 b0 10 	mov    DWORD PTR [esp+0xc],0xc010b0a3
c0105872:	c0 
c0105873:	c7 44 24 08 3b 00 00 	mov    DWORD PTR [esp+0x8],0x3b
c010587a:	00 
c010587b:	c7 44 24 04 8c b0 10 	mov    DWORD PTR [esp+0x4],0xc010b08c
c0105882:	c0 
c0105883:	c7 04 24 8c b0 10 c0 	mov    DWORD PTR [esp],0xc010b08c
c010588a:	e8 55 b3 ff ff       	call   c0100be4 <panic_spin>
c010588f:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0105892:	8b 40 30             	mov    eax,DWORD PTR [eax+0x30]
c0105895:	83 f8 10             	cmp    eax,0x10
c0105898:	74 30                	je     c01058ca <fifo_put+0xe9>
c010589a:	83 f8 10             	cmp    eax,0x10
c010589d:	7f 07                	jg     c01058a6 <fifo_put+0xc5>
c010589f:	83 f8 08             	cmp    eax,0x8
c01058a2:	74 0e                	je     c01058b2 <fifo_put+0xd1>
c01058a4:	eb 79                	jmp    c010591f <fifo_put+0x13e>
c01058a6:	83 f8 20             	cmp    eax,0x20
c01058a9:	74 3a                	je     c01058e5 <fifo_put+0x104>
c01058ab:	83 f8 40             	cmp    eax,0x40
c01058ae:	74 4f                	je     c01058ff <fifo_put+0x11e>
c01058b0:	eb 6d                	jmp    c010591f <fifo_put+0x13e>
c01058b2:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01058b5:	8b 50 2c             	mov    edx,DWORD PTR [eax+0x2c]
c01058b8:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01058bb:	8b 40 40             	mov    eax,DWORD PTR [eax+0x40]
c01058be:	01 c2                	add    edx,eax
c01058c0:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c01058c3:	0f b6 00             	movzx  eax,BYTE PTR [eax]
c01058c6:	88 02                	mov    BYTE PTR [edx],al
c01058c8:	eb 55                	jmp    c010591f <fifo_put+0x13e>
c01058ca:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01058cd:	8b 50 2c             	mov    edx,DWORD PTR [eax+0x2c]
c01058d0:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01058d3:	8b 40 40             	mov    eax,DWORD PTR [eax+0x40]
c01058d6:	01 c0                	add    eax,eax
c01058d8:	01 c2                	add    edx,eax
c01058da:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c01058dd:	0f b7 00             	movzx  eax,WORD PTR [eax]
c01058e0:	66 89 02             	mov    WORD PTR [edx],ax
c01058e3:	eb 3a                	jmp    c010591f <fifo_put+0x13e>
c01058e5:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01058e8:	8b 50 2c             	mov    edx,DWORD PTR [eax+0x2c]
c01058eb:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01058ee:	8b 40 40             	mov    eax,DWORD PTR [eax+0x40]
c01058f1:	c1 e0 02             	shl    eax,0x2
c01058f4:	01 c2                	add    edx,eax
c01058f6:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c01058f9:	8b 00                	mov    eax,DWORD PTR [eax]
c01058fb:	89 02                	mov    DWORD PTR [edx],eax
c01058fd:	eb 20                	jmp    c010591f <fifo_put+0x13e>
c01058ff:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0105902:	8b 50 2c             	mov    edx,DWORD PTR [eax+0x2c]
c0105905:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0105908:	8b 40 40             	mov    eax,DWORD PTR [eax+0x40]
c010590b:	c1 e0 03             	shl    eax,0x3
c010590e:	8d 0c 02             	lea    ecx,[edx+eax*1]
c0105911:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c0105914:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
c0105917:	8b 00                	mov    eax,DWORD PTR [eax]
c0105919:	89 01                	mov    DWORD PTR [ecx],eax
c010591b:	89 51 04             	mov    DWORD PTR [ecx+0x4],edx
c010591e:	90                   	nop
c010591f:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0105922:	8b 40 40             	mov    eax,DWORD PTR [eax+0x40]
c0105925:	8d 50 01             	lea    edx,[eax+0x1]
c0105928:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c010592b:	8b 48 34             	mov    ecx,DWORD PTR [eax+0x34]
c010592e:	89 d0                	mov    eax,edx
c0105930:	89 c2                	mov    edx,eax
c0105932:	c1 fa 1f             	sar    edx,0x1f
c0105935:	f7 f9                	idiv   ecx
c0105937:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c010593a:	89 50 40             	mov    DWORD PTR [eax+0x40],edx
c010593d:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0105940:	8b 40 28             	mov    eax,DWORD PTR [eax+0x28]
c0105943:	85 c0                	test   eax,eax
c0105945:	74 18                	je     c010595f <fifo_put+0x17e>
c0105947:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c010594a:	8b 40 28             	mov    eax,DWORD PTR [eax+0x28]
c010594d:	89 04 24             	mov    DWORD PTR [esp],eax
c0105950:	e8 64 e1 ff ff       	call   c0103ab9 <thread_unblock>
c0105955:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0105958:	c7 40 28 00 00 00 00 	mov    DWORD PTR [eax+0x28],0x0
c010595f:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0105962:	89 04 24             	mov    DWORD PTR [esp],eax
c0105965:	e8 24 c0 ff ff       	call   c010198e <intr_set_status>
c010596a:	b8 00 00 00 00       	mov    eax,0x0
c010596f:	c9                   	leave  
c0105970:	c3                   	ret    

c0105971 <fifo_get>:
c0105971:	55                   	push   ebp
c0105972:	89 e5                	mov    ebp,esp
c0105974:	83 ec 38             	sub    esp,0x38
c0105977:	e8 e5 bf ff ff       	call   c0101961 <intr_disable>
c010597c:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
c010597f:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0105982:	8b 40 30             	mov    eax,DWORD PTR [eax+0x30]
c0105985:	83 f8 08             	cmp    eax,0x8
c0105988:	74 7e                	je     c0105a08 <fifo_get+0x97>
c010598a:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c010598d:	8b 40 30             	mov    eax,DWORD PTR [eax+0x30]
c0105990:	83 f8 10             	cmp    eax,0x10
c0105993:	74 73                	je     c0105a08 <fifo_get+0x97>
c0105995:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0105998:	8b 40 30             	mov    eax,DWORD PTR [eax+0x30]
c010599b:	83 f8 20             	cmp    eax,0x20
c010599e:	74 68                	je     c0105a08 <fifo_get+0x97>
c01059a0:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01059a3:	8b 40 30             	mov    eax,DWORD PTR [eax+0x30]
c01059a6:	83 f8 40             	cmp    eax,0x40
c01059a9:	74 5d                	je     c0105a08 <fifo_get+0x97>
c01059ab:	c7 44 24 10 40 b0 10 	mov    DWORD PTR [esp+0x10],0xc010b040
c01059b2:	c0 
c01059b3:	c7 44 24 0c 9a b0 10 	mov    DWORD PTR [esp+0xc],0xc010b09a
c01059ba:	c0 
c01059bb:	c7 44 24 08 5a 00 00 	mov    DWORD PTR [esp+0x8],0x5a
c01059c2:	00 
c01059c3:	c7 44 24 04 8c b0 10 	mov    DWORD PTR [esp+0x4],0xc010b08c
c01059ca:	c0 
c01059cb:	c7 04 24 8c b0 10 c0 	mov    DWORD PTR [esp],0xc010b08c
c01059d2:	e8 0d b2 ff ff       	call   c0100be4 <panic_spin>
c01059d7:	eb 2f                	jmp    c0105a08 <fifo_get+0x97>
c01059d9:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01059dc:	89 04 24             	mov    DWORD PTR [esp],eax
c01059df:	e8 fe d9 ff ff       	call   c01033e2 <lock_acquire>
c01059e4:	e8 8a dc ff ff       	call   c0103673 <running_thread>
c01059e9:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c01059ec:	89 42 28             	mov    DWORD PTR [edx+0x28],eax
c01059ef:	c7 04 24 02 00 00 00 	mov    DWORD PTR [esp],0x2
c01059f6:	e8 1e e0 ff ff       	call   c0103a19 <thread_block>
c01059fb:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01059fe:	89 04 24             	mov    DWORD PTR [esp],eax
c0105a01:	e8 60 da ff ff       	call   c0103466 <lock_release>
c0105a06:	eb 01                	jmp    c0105a09 <fifo_get+0x98>
c0105a08:	90                   	nop
c0105a09:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0105a0c:	8b 50 38             	mov    edx,DWORD PTR [eax+0x38]
c0105a0f:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0105a12:	8b 40 34             	mov    eax,DWORD PTR [eax+0x34]
c0105a15:	39 c2                	cmp    edx,eax
c0105a17:	74 c0                	je     c01059d9 <fifo_get+0x68>
c0105a19:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0105a1c:	8b 40 38             	mov    eax,DWORD PTR [eax+0x38]
c0105a1f:	8d 50 01             	lea    edx,[eax+0x1]
c0105a22:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0105a25:	89 50 38             	mov    DWORD PTR [eax+0x38],edx
c0105a28:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0105a2b:	8b 40 30             	mov    eax,DWORD PTR [eax+0x30]
c0105a2e:	83 f8 10             	cmp    eax,0x10
c0105a31:	74 30                	je     c0105a63 <fifo_get+0xf2>
c0105a33:	83 f8 10             	cmp    eax,0x10
c0105a36:	7f 07                	jg     c0105a3f <fifo_get+0xce>
c0105a38:	83 f8 08             	cmp    eax,0x8
c0105a3b:	74 0e                	je     c0105a4b <fifo_get+0xda>
c0105a3d:	eb 78                	jmp    c0105ab7 <fifo_get+0x146>
c0105a3f:	83 f8 20             	cmp    eax,0x20
c0105a42:	74 3a                	je     c0105a7e <fifo_get+0x10d>
c0105a44:	83 f8 40             	cmp    eax,0x40
c0105a47:	74 4f                	je     c0105a98 <fifo_get+0x127>
c0105a49:	eb 6c                	jmp    c0105ab7 <fifo_get+0x146>
c0105a4b:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0105a4e:	8b 50 2c             	mov    edx,DWORD PTR [eax+0x2c]
c0105a51:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0105a54:	8b 40 3c             	mov    eax,DWORD PTR [eax+0x3c]
c0105a57:	01 d0                	add    eax,edx
c0105a59:	0f b6 10             	movzx  edx,BYTE PTR [eax]
c0105a5c:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c0105a5f:	88 10                	mov    BYTE PTR [eax],dl
c0105a61:	eb 54                	jmp    c0105ab7 <fifo_get+0x146>
c0105a63:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0105a66:	8b 50 2c             	mov    edx,DWORD PTR [eax+0x2c]
c0105a69:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0105a6c:	8b 40 3c             	mov    eax,DWORD PTR [eax+0x3c]
c0105a6f:	01 c0                	add    eax,eax
c0105a71:	01 d0                	add    eax,edx
c0105a73:	0f b7 10             	movzx  edx,WORD PTR [eax]
c0105a76:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c0105a79:	66 89 10             	mov    WORD PTR [eax],dx
c0105a7c:	eb 39                	jmp    c0105ab7 <fifo_get+0x146>
c0105a7e:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0105a81:	8b 50 2c             	mov    edx,DWORD PTR [eax+0x2c]
c0105a84:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0105a87:	8b 40 3c             	mov    eax,DWORD PTR [eax+0x3c]
c0105a8a:	c1 e0 02             	shl    eax,0x2
c0105a8d:	01 d0                	add    eax,edx
c0105a8f:	8b 10                	mov    edx,DWORD PTR [eax]
c0105a91:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c0105a94:	89 10                	mov    DWORD PTR [eax],edx
c0105a96:	eb 1f                	jmp    c0105ab7 <fifo_get+0x146>
c0105a98:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0105a9b:	8b 50 2c             	mov    edx,DWORD PTR [eax+0x2c]
c0105a9e:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0105aa1:	8b 40 3c             	mov    eax,DWORD PTR [eax+0x3c]
c0105aa4:	c1 e0 03             	shl    eax,0x3
c0105aa7:	01 d0                	add    eax,edx
c0105aa9:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
c0105aac:	8b 00                	mov    eax,DWORD PTR [eax]
c0105aae:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
c0105ab1:	89 01                	mov    DWORD PTR [ecx],eax
c0105ab3:	89 51 04             	mov    DWORD PTR [ecx+0x4],edx
c0105ab6:	90                   	nop
c0105ab7:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0105aba:	8b 40 3c             	mov    eax,DWORD PTR [eax+0x3c]
c0105abd:	8d 50 01             	lea    edx,[eax+0x1]
c0105ac0:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0105ac3:	8b 48 34             	mov    ecx,DWORD PTR [eax+0x34]
c0105ac6:	89 d0                	mov    eax,edx
c0105ac8:	89 c2                	mov    edx,eax
c0105aca:	c1 fa 1f             	sar    edx,0x1f
c0105acd:	f7 f9                	idiv   ecx
c0105acf:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0105ad2:	89 50 3c             	mov    DWORD PTR [eax+0x3c],edx
c0105ad5:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0105ad8:	8b 40 24             	mov    eax,DWORD PTR [eax+0x24]
c0105adb:	85 c0                	test   eax,eax
c0105add:	74 18                	je     c0105af7 <fifo_get+0x186>
c0105adf:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0105ae2:	8b 40 24             	mov    eax,DWORD PTR [eax+0x24]
c0105ae5:	89 04 24             	mov    DWORD PTR [esp],eax
c0105ae8:	e8 cc df ff ff       	call   c0103ab9 <thread_unblock>
c0105aed:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0105af0:	c7 40 24 00 00 00 00 	mov    DWORD PTR [eax+0x24],0x0
c0105af7:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0105afa:	89 04 24             	mov    DWORD PTR [esp],eax
c0105afd:	e8 8c be ff ff       	call   c010198e <intr_set_status>
c0105b02:	b8 00 00 00 00       	mov    eax,0x0
c0105b07:	c9                   	leave  
c0105b08:	c3                   	ret    

c0105b09 <fifo_empty>:
c0105b09:	55                   	push   ebp
c0105b0a:	89 e5                	mov    ebp,esp
c0105b0c:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0105b0f:	8b 50 38             	mov    edx,DWORD PTR [eax+0x38]
c0105b12:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0105b15:	8b 40 34             	mov    eax,DWORD PTR [eax+0x34]
c0105b18:	39 c2                	cmp    edx,eax
c0105b1a:	0f 94 c0             	sete   al
c0105b1d:	0f b6 c0             	movzx  eax,al
c0105b20:	5d                   	pop    ebp
c0105b21:	c3                   	ret    

c0105b22 <fifo_fill>:
c0105b22:	55                   	push   ebp
c0105b23:	89 e5                	mov    ebp,esp
c0105b25:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0105b28:	8b 40 38             	mov    eax,DWORD PTR [eax+0x38]
c0105b2b:	85 c0                	test   eax,eax
c0105b2d:	0f 94 c0             	sete   al
c0105b30:	0f b6 c0             	movzx  eax,al
c0105b33:	5d                   	pop    ebp
c0105b34:	c3                   	ret    
c0105b35:	00 00                	add    BYTE PTR [eax],al
	...

c0105b38 <list_init>:
c0105b38:	55                   	push   ebp
c0105b39:	89 e5                	mov    ebp,esp
c0105b3b:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0105b3e:	c7 00 00 00 00 00    	mov    DWORD PTR [eax],0x0
c0105b44:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0105b47:	8d 50 0c             	lea    edx,[eax+0xc]
c0105b4a:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0105b4d:	89 50 08             	mov    DWORD PTR [eax+0x8],edx
c0105b50:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c0105b53:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0105b56:	89 50 0c             	mov    DWORD PTR [eax+0xc],edx
c0105b59:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0105b5c:	c7 40 14 00 00 00 00 	mov    DWORD PTR [eax+0x14],0x0
c0105b63:	5d                   	pop    ebp
c0105b64:	c3                   	ret    

c0105b65 <list_in>:
c0105b65:	55                   	push   ebp
c0105b66:	89 e5                	mov    ebp,esp
c0105b68:	83 ec 28             	sub    esp,0x28
c0105b6b:	e8 f1 bd ff ff       	call   c0101961 <intr_disable>
c0105b70:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
c0105b73:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c0105b76:	8b 00                	mov    eax,DWORD PTR [eax]
c0105b78:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c0105b7b:	89 50 08             	mov    DWORD PTR [eax+0x8],edx
c0105b7e:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c0105b81:	8b 10                	mov    edx,DWORD PTR [eax]
c0105b83:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0105b86:	89 10                	mov    DWORD PTR [eax],edx
c0105b88:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0105b8b:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
c0105b8e:	89 50 08             	mov    DWORD PTR [eax+0x8],edx
c0105b91:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c0105b94:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c0105b97:	89 10                	mov    DWORD PTR [eax],edx
c0105b99:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0105b9c:	89 04 24             	mov    DWORD PTR [esp],eax
c0105b9f:	e8 ea bd ff ff       	call   c010198e <intr_set_status>
c0105ba4:	c9                   	leave  
c0105ba5:	c3                   	ret    

c0105ba6 <list_push>:
c0105ba6:	55                   	push   ebp
c0105ba7:	89 e5                	mov    ebp,esp
c0105ba9:	83 ec 18             	sub    esp,0x18
c0105bac:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0105baf:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
c0105bb2:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c0105bb6:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c0105bb9:	89 04 24             	mov    DWORD PTR [esp],eax
c0105bbc:	e8 a4 ff ff ff       	call   c0105b65 <list_in>
c0105bc1:	c9                   	leave  
c0105bc2:	c3                   	ret    

c0105bc3 <list_append>:
c0105bc3:	55                   	push   ebp
c0105bc4:	89 e5                	mov    ebp,esp
c0105bc6:	83 ec 18             	sub    esp,0x18
c0105bc9:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0105bcc:	83 c0 0c             	add    eax,0xc
c0105bcf:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c0105bd3:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c0105bd6:	89 04 24             	mov    DWORD PTR [esp],eax
c0105bd9:	e8 87 ff ff ff       	call   c0105b65 <list_in>
c0105bde:	c9                   	leave  
c0105bdf:	c3                   	ret    

c0105be0 <list_remove>:
c0105be0:	55                   	push   ebp
c0105be1:	89 e5                	mov    ebp,esp
c0105be3:	83 ec 28             	sub    esp,0x28
c0105be6:	e8 76 bd ff ff       	call   c0101961 <intr_disable>
c0105beb:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
c0105bee:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0105bf1:	8b 00                	mov    eax,DWORD PTR [eax]
c0105bf3:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c0105bf6:	8b 52 08             	mov    edx,DWORD PTR [edx+0x8]
c0105bf9:	89 50 08             	mov    DWORD PTR [eax+0x8],edx
c0105bfc:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0105bff:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
c0105c02:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c0105c05:	8b 12                	mov    edx,DWORD PTR [edx]
c0105c07:	89 10                	mov    DWORD PTR [eax],edx
c0105c09:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0105c0c:	89 04 24             	mov    DWORD PTR [esp],eax
c0105c0f:	e8 7a bd ff ff       	call   c010198e <intr_set_status>
c0105c14:	c9                   	leave  
c0105c15:	c3                   	ret    

c0105c16 <list_pop>:
c0105c16:	55                   	push   ebp
c0105c17:	89 e5                	mov    ebp,esp
c0105c19:	83 ec 28             	sub    esp,0x28
c0105c1c:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0105c1f:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
c0105c22:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
c0105c25:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0105c28:	89 04 24             	mov    DWORD PTR [esp],eax
c0105c2b:	e8 b0 ff ff ff       	call   c0105be0 <list_remove>
c0105c30:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0105c33:	c9                   	leave  
c0105c34:	c3                   	ret    

c0105c35 <list_find>:
c0105c35:	55                   	push   ebp
c0105c36:	89 e5                	mov    ebp,esp
c0105c38:	83 ec 10             	sub    esp,0x10
c0105c3b:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0105c3e:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
c0105c41:	89 45 fc             	mov    DWORD PTR [ebp-0x4],eax
c0105c44:	eb 18                	jmp    c0105c5e <list_find+0x29>
c0105c46:	8b 45 fc             	mov    eax,DWORD PTR [ebp-0x4]
c0105c49:	3b 45 0c             	cmp    eax,DWORD PTR [ebp+0xc]
c0105c4c:	75 07                	jne    c0105c55 <list_find+0x20>
c0105c4e:	b8 01 00 00 00       	mov    eax,0x1
c0105c53:	eb 19                	jmp    c0105c6e <list_find+0x39>
c0105c55:	8b 45 fc             	mov    eax,DWORD PTR [ebp-0x4]
c0105c58:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
c0105c5b:	89 45 fc             	mov    DWORD PTR [ebp-0x4],eax
c0105c5e:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0105c61:	83 c0 0c             	add    eax,0xc
c0105c64:	3b 45 fc             	cmp    eax,DWORD PTR [ebp-0x4]
c0105c67:	75 dd                	jne    c0105c46 <list_find+0x11>
c0105c69:	b8 00 00 00 00       	mov    eax,0x0
c0105c6e:	c9                   	leave  
c0105c6f:	c3                   	ret    

c0105c70 <list_traversal>:
c0105c70:	55                   	push   ebp
c0105c71:	89 e5                	mov    ebp,esp
c0105c73:	83 ec 28             	sub    esp,0x28
c0105c76:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0105c79:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
c0105c7c:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
c0105c7f:	eb 24                	jmp    c0105ca5 <list_traversal+0x35>
c0105c81:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
c0105c84:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c0105c88:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0105c8b:	89 04 24             	mov    DWORD PTR [esp],eax
c0105c8e:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c0105c91:	ff d0                	call   eax
c0105c93:	85 c0                	test   eax,eax
c0105c95:	74 05                	je     c0105c9c <list_traversal+0x2c>
c0105c97:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0105c9a:	eb 19                	jmp    c0105cb5 <list_traversal+0x45>
c0105c9c:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0105c9f:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
c0105ca2:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
c0105ca5:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0105ca8:	83 c0 0c             	add    eax,0xc
c0105cab:	3b 45 f4             	cmp    eax,DWORD PTR [ebp-0xc]
c0105cae:	75 d1                	jne    c0105c81 <list_traversal+0x11>
c0105cb0:	b8 00 00 00 00       	mov    eax,0x0
c0105cb5:	c9                   	leave  
c0105cb6:	c3                   	ret    

c0105cb7 <list_len>:
c0105cb7:	55                   	push   ebp
c0105cb8:	89 e5                	mov    ebp,esp
c0105cba:	83 ec 10             	sub    esp,0x10
c0105cbd:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0105cc0:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
c0105cc3:	89 45 fc             	mov    DWORD PTR [ebp-0x4],eax
c0105cc6:	c7 45 f8 00 00 00 00 	mov    DWORD PTR [ebp-0x8],0x0
c0105ccd:	eb 0d                	jmp    c0105cdc <list_len+0x25>
c0105ccf:	83 45 f8 01          	add    DWORD PTR [ebp-0x8],0x1
c0105cd3:	8b 45 fc             	mov    eax,DWORD PTR [ebp-0x4]
c0105cd6:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
c0105cd9:	89 45 fc             	mov    DWORD PTR [ebp-0x4],eax
c0105cdc:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0105cdf:	83 c0 0c             	add    eax,0xc
c0105ce2:	3b 45 fc             	cmp    eax,DWORD PTR [ebp-0x4]
c0105ce5:	75 e8                	jne    c0105ccf <list_len+0x18>
c0105ce7:	8b 45 f8             	mov    eax,DWORD PTR [ebp-0x8]
c0105cea:	c9                   	leave  
c0105ceb:	c3                   	ret    

c0105cec <list_empty>:
c0105cec:	55                   	push   ebp
c0105ced:	89 e5                	mov    ebp,esp
c0105cef:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0105cf2:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
c0105cf5:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c0105cf8:	83 c2 0c             	add    edx,0xc
c0105cfb:	39 d0                	cmp    eax,edx
c0105cfd:	0f 94 c0             	sete   al
c0105d00:	0f b6 c0             	movzx  eax,al
c0105d03:	5d                   	pop    ebp
c0105d04:	c3                   	ret    
c0105d05:	00 00                	add    BYTE PTR [eax],al
	...

c0105d08 <io_in8>:
c0105d08:	55                   	push   ebp
c0105d09:	89 e5                	mov    ebp,esp
c0105d0b:	53                   	push   ebx
c0105d0c:	83 ec 14             	sub    esp,0x14
c0105d0f:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c0105d12:	89 55 e8             	mov    DWORD PTR [ebp-0x18],edx
c0105d15:	8b 55 e8             	mov    edx,DWORD PTR [ebp-0x18]
c0105d18:	ec                   	in     al,dx
c0105d19:	89 c3                	mov    ebx,eax
c0105d1b:	89 5d f8             	mov    DWORD PTR [ebp-0x8],ebx
c0105d1e:	8b 45 f8             	mov    eax,DWORD PTR [ebp-0x8]
c0105d21:	83 c4 14             	add    esp,0x14
c0105d24:	5b                   	pop    ebx
c0105d25:	5d                   	pop    ebp
c0105d26:	c3                   	ret    

c0105d27 <io_out8>:
c0105d27:	55                   	push   ebp
c0105d28:	89 e5                	mov    ebp,esp
c0105d2a:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c0105d2d:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c0105d30:	ee                   	out    dx,al
c0105d31:	5d                   	pop    ebp
c0105d32:	c3                   	ret    

c0105d33 <put_char>:
c0105d33:	55                   	push   ebp
c0105d34:	89 e5                	mov    ebp,esp
c0105d36:	53                   	push   ebx
c0105d37:	83 ec 34             	sub    esp,0x34
c0105d3a:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c0105d3d:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c0105d40:	88 55 e4             	mov    BYTE PTR [ebp-0x1c],dl
c0105d43:	88 45 e0             	mov    BYTE PTR [ebp-0x20],al
c0105d46:	b8 14 7c 00 c0       	mov    eax,0xc0007c14
c0105d4b:	8b 00                	mov    eax,DWORD PTR [eax]
c0105d4d:	85 c0                	test   eax,eax
c0105d4f:	0f 85 fc 00 00 00    	jne    c0105e51 <put_char+0x11e>
c0105d55:	0f b6 45 e4          	movzx  eax,BYTE PTR [ebp-0x1c]
c0105d59:	66 89 45 f2          	mov    WORD PTR [ebp-0xe],ax
c0105d5d:	e8 14 04 00 00       	call   c0106176 <get_cursor>
c0105d62:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
c0105d65:	0f b6 45 e0          	movzx  eax,BYTE PTR [ebp-0x20]
c0105d69:	83 f8 0d             	cmp    eax,0xd
c0105d6c:	77 61                	ja     c0105dcf <put_char+0x9c>
c0105d6e:	8b 04 85 ec b0 10 c0 	mov    eax,DWORD PTR [eax*4-0x3fef4f14]
c0105d75:	ff e0                	jmp    eax
c0105d77:	83 6d f4 01          	sub    DWORD PTR [ebp-0xc],0x1
c0105d7b:	b8 1c 7c 00 c0       	mov    eax,0xc0007c1c
c0105d80:	8b 10                	mov    edx,DWORD PTR [eax]
c0105d82:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0105d85:	01 c0                	add    eax,eax
c0105d87:	01 d0                	add    eax,edx
c0105d89:	c6 00 20             	mov    BYTE PTR [eax],0x20
c0105d8c:	e9 81 00 00 00       	jmp    c0105e12 <put_char+0xdf>
c0105d91:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
c0105d94:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0105d97:	ba 24 7c 00 c0       	mov    edx,0xc0007c24
c0105d9c:	8b 1a                	mov    ebx,DWORD PTR [edx]
c0105d9e:	ba 00 00 00 00       	mov    edx,0x0
c0105da3:	f7 f3                	div    ebx
c0105da5:	89 d0                	mov    eax,edx
c0105da7:	89 ca                	mov    edx,ecx
c0105da9:	29 c2                	sub    edx,eax
c0105dab:	89 d0                	mov    eax,edx
c0105dad:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
c0105db0:	b8 24 7c 00 c0       	mov    eax,0xc0007c24
c0105db5:	8b 10                	mov    edx,DWORD PTR [eax]
c0105db7:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0105dba:	01 d0                	add    eax,edx
c0105dbc:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
c0105dbf:	eb 51                	jmp    c0105e12 <put_char+0xdf>
c0105dc1:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0105dc4:	83 c0 04             	add    eax,0x4
c0105dc7:	83 e0 fc             	and    eax,0xfffffffc
c0105dca:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
c0105dcd:	eb 43                	jmp    c0105e12 <put_char+0xdf>
c0105dcf:	0f b6 45 e0          	movzx  eax,BYTE PTR [ebp-0x20]
c0105dd3:	c1 e0 08             	shl    eax,0x8
c0105dd6:	89 c2                	mov    edx,eax
c0105dd8:	0f b7 45 f2          	movzx  eax,WORD PTR [ebp-0xe]
c0105ddc:	09 d0                	or     eax,edx
c0105dde:	66 89 45 f2          	mov    WORD PTR [ebp-0xe],ax
c0105de2:	b8 1c 7c 00 c0       	mov    eax,0xc0007c1c
c0105de7:	8b 10                	mov    edx,DWORD PTR [eax]
c0105de9:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0105dec:	01 c0                	add    eax,eax
c0105dee:	01 d0                	add    eax,edx
c0105df0:	0f b6 55 e0          	movzx  edx,BYTE PTR [ebp-0x20]
c0105df4:	88 10                	mov    BYTE PTR [eax],dl
c0105df6:	b8 1c 7c 00 c0       	mov    eax,0xc0007c1c
c0105dfb:	8b 10                	mov    edx,DWORD PTR [eax]
c0105dfd:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0105e00:	01 c0                	add    eax,eax
c0105e02:	01 d0                	add    eax,edx
c0105e04:	83 c0 01             	add    eax,0x1
c0105e07:	0f b6 55 e4          	movzx  edx,BYTE PTR [ebp-0x1c]
c0105e0b:	88 10                	mov    BYTE PTR [eax],dl
c0105e0d:	83 45 f4 01          	add    DWORD PTR [ebp-0xc],0x1
c0105e11:	90                   	nop
c0105e12:	8b 55 f4             	mov    edx,DWORD PTR [ebp-0xc]
c0105e15:	b8 24 7c 00 c0       	mov    eax,0xc0007c24
c0105e1a:	8b 08                	mov    ecx,DWORD PTR [eax]
c0105e1c:	b8 28 7c 00 c0       	mov    eax,0xc0007c28
c0105e21:	8b 00                	mov    eax,DWORD PTR [eax]
c0105e23:	0f af c1             	imul   eax,ecx
c0105e26:	39 c2                	cmp    edx,eax
c0105e28:	72 1c                	jb     c0105e46 <put_char+0x113>
c0105e2a:	e8 dc 02 00 00       	call   c010610b <roll_screen>
c0105e2f:	b8 28 7c 00 c0       	mov    eax,0xc0007c28
c0105e34:	8b 00                	mov    eax,DWORD PTR [eax]
c0105e36:	8d 50 ff             	lea    edx,[eax-0x1]
c0105e39:	b8 24 7c 00 c0       	mov    eax,0xc0007c24
c0105e3e:	8b 00                	mov    eax,DWORD PTR [eax]
c0105e40:	0f af c2             	imul   eax,edx
c0105e43:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
c0105e46:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0105e49:	89 04 24             	mov    DWORD PTR [esp],eax
c0105e4c:	e8 8c 03 00 00       	call   c01061dd <set_cursor>
c0105e51:	90                   	nop
c0105e52:	eb 01                	jmp    c0105e55 <put_char+0x122>
c0105e54:	90                   	nop
c0105e55:	83 c4 34             	add    esp,0x34
c0105e58:	5b                   	pop    ebx
c0105e59:	5d                   	pop    ebp
c0105e5a:	c3                   	ret    

c0105e5b <put_str>:
c0105e5b:	55                   	push   ebp
c0105e5c:	89 e5                	mov    ebp,esp
c0105e5e:	83 ec 28             	sub    esp,0x28
c0105e61:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0105e64:	88 45 f4             	mov    BYTE PTR [ebp-0xc],al
c0105e67:	eb 1d                	jmp    c0105e86 <put_str+0x2b>
c0105e69:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c0105e6c:	0f b6 00             	movzx  eax,BYTE PTR [eax]
c0105e6f:	0f b6 d0             	movzx  edx,al
c0105e72:	0f b6 45 f4          	movzx  eax,BYTE PTR [ebp-0xc]
c0105e76:	89 54 24 04          	mov    DWORD PTR [esp+0x4],edx
c0105e7a:	89 04 24             	mov    DWORD PTR [esp],eax
c0105e7d:	e8 b1 fe ff ff       	call   c0105d33 <put_char>
c0105e82:	83 45 0c 01          	add    DWORD PTR [ebp+0xc],0x1
c0105e86:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c0105e89:	0f b6 00             	movzx  eax,BYTE PTR [eax]
c0105e8c:	84 c0                	test   al,al
c0105e8e:	75 d9                	jne    c0105e69 <put_str+0xe>
c0105e90:	c9                   	leave  
c0105e91:	c3                   	ret    

c0105e92 <put_int>:
c0105e92:	55                   	push   ebp
c0105e93:	89 e5                	mov    ebp,esp
c0105e95:	57                   	push   edi
c0105e96:	53                   	push   ebx
c0105e97:	83 ec 70             	sub    esp,0x70
c0105e9a:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0105e9d:	88 45 a4             	mov    BYTE PTR [ebp-0x5c],al
c0105ea0:	8d 55 b6             	lea    edx,[ebp-0x4a]
c0105ea3:	bb 42 00 00 00       	mov    ebx,0x42
c0105ea8:	b8 00 00 00 00       	mov    eax,0x0
c0105ead:	89 d1                	mov    ecx,edx
c0105eaf:	83 e1 02             	and    ecx,0x2
c0105eb2:	85 c9                	test   ecx,ecx
c0105eb4:	74 09                	je     c0105ebf <put_int+0x2d>
c0105eb6:	66 89 02             	mov    WORD PTR [edx],ax
c0105eb9:	83 c2 02             	add    edx,0x2
c0105ebc:	83 eb 02             	sub    ebx,0x2
c0105ebf:	89 d9                	mov    ecx,ebx
c0105ec1:	c1 e9 02             	shr    ecx,0x2
c0105ec4:	89 d7                	mov    edi,edx
c0105ec6:	f3 ab                	rep stos DWORD PTR es:[edi],eax
c0105ec8:	89 fa                	mov    edx,edi
c0105eca:	89 d9                	mov    ecx,ebx
c0105ecc:	83 e1 02             	and    ecx,0x2
c0105ecf:	85 c9                	test   ecx,ecx
c0105ed1:	74 06                	je     c0105ed9 <put_int+0x47>
c0105ed3:	66 89 02             	mov    WORD PTR [edx],ax
c0105ed6:	83 c2 02             	add    edx,0x2
c0105ed9:	89 d9                	mov    ecx,ebx
c0105edb:	83 e1 01             	and    ecx,0x1
c0105ede:	85 c9                	test   ecx,ecx
c0105ee0:	74 05                	je     c0105ee7 <put_int+0x55>
c0105ee2:	88 02                	mov    BYTE PTR [edx],al
c0105ee4:	83 c2 01             	add    edx,0x1
c0105ee7:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
c0105eea:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
c0105eee:	8d 45 b6             	lea    eax,[ebp-0x4a]
c0105ef1:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c0105ef5:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c0105ef8:	89 04 24             	mov    DWORD PTR [esp],eax
c0105efb:	e8 a2 00 00 00       	call   c0105fa2 <itoa>
c0105f00:	0f b6 45 a4          	movzx  eax,BYTE PTR [ebp-0x5c]
c0105f04:	8d 55 b6             	lea    edx,[ebp-0x4a]
c0105f07:	89 54 24 04          	mov    DWORD PTR [esp+0x4],edx
c0105f0b:	89 04 24             	mov    DWORD PTR [esp],eax
c0105f0e:	e8 48 ff ff ff       	call   c0105e5b <put_str>
c0105f13:	83 c4 70             	add    esp,0x70
c0105f16:	5b                   	pop    ebx
c0105f17:	5f                   	pop    edi
c0105f18:	5d                   	pop    ebp
c0105f19:	c3                   	ret    

c0105f1a <put_uint>:
c0105f1a:	55                   	push   ebp
c0105f1b:	89 e5                	mov    ebp,esp
c0105f1d:	57                   	push   edi
c0105f1e:	53                   	push   ebx
c0105f1f:	83 ec 70             	sub    esp,0x70
c0105f22:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0105f25:	88 45 a4             	mov    BYTE PTR [ebp-0x5c],al
c0105f28:	8d 55 b6             	lea    edx,[ebp-0x4a]
c0105f2b:	bb 42 00 00 00       	mov    ebx,0x42
c0105f30:	b8 00 00 00 00       	mov    eax,0x0
c0105f35:	89 d1                	mov    ecx,edx
c0105f37:	83 e1 02             	and    ecx,0x2
c0105f3a:	85 c9                	test   ecx,ecx
c0105f3c:	74 09                	je     c0105f47 <put_uint+0x2d>
c0105f3e:	66 89 02             	mov    WORD PTR [edx],ax
c0105f41:	83 c2 02             	add    edx,0x2
c0105f44:	83 eb 02             	sub    ebx,0x2
c0105f47:	89 d9                	mov    ecx,ebx
c0105f49:	c1 e9 02             	shr    ecx,0x2
c0105f4c:	89 d7                	mov    edi,edx
c0105f4e:	f3 ab                	rep stos DWORD PTR es:[edi],eax
c0105f50:	89 fa                	mov    edx,edi
c0105f52:	89 d9                	mov    ecx,ebx
c0105f54:	83 e1 02             	and    ecx,0x2
c0105f57:	85 c9                	test   ecx,ecx
c0105f59:	74 06                	je     c0105f61 <put_uint+0x47>
c0105f5b:	66 89 02             	mov    WORD PTR [edx],ax
c0105f5e:	83 c2 02             	add    edx,0x2
c0105f61:	89 d9                	mov    ecx,ebx
c0105f63:	83 e1 01             	and    ecx,0x1
c0105f66:	85 c9                	test   ecx,ecx
c0105f68:	74 05                	je     c0105f6f <put_uint+0x55>
c0105f6a:	88 02                	mov    BYTE PTR [edx],al
c0105f6c:	83 c2 01             	add    edx,0x1
c0105f6f:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
c0105f72:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
c0105f76:	8d 45 b6             	lea    eax,[ebp-0x4a]
c0105f79:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c0105f7d:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c0105f80:	89 04 24             	mov    DWORD PTR [esp],eax
c0105f83:	e8 d9 00 00 00       	call   c0106061 <utoa>
c0105f88:	0f b6 45 a4          	movzx  eax,BYTE PTR [ebp-0x5c]
c0105f8c:	8d 55 b6             	lea    edx,[ebp-0x4a]
c0105f8f:	89 54 24 04          	mov    DWORD PTR [esp+0x4],edx
c0105f93:	89 04 24             	mov    DWORD PTR [esp],eax
c0105f96:	e8 c0 fe ff ff       	call   c0105e5b <put_str>
c0105f9b:	83 c4 70             	add    esp,0x70
c0105f9e:	5b                   	pop    ebx
c0105f9f:	5f                   	pop    edi
c0105fa0:	5d                   	pop    ebp
c0105fa1:	c3                   	ret    

c0105fa2 <itoa>:
c0105fa2:	55                   	push   ebp
c0105fa3:	89 e5                	mov    ebp,esp
c0105fa5:	83 ec 20             	sub    esp,0x20
c0105fa8:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0105fab:	89 45 f0             	mov    DWORD PTR [ebp-0x10],eax
c0105fae:	83 7d 08 00          	cmp    DWORD PTR [ebp+0x8],0x0
c0105fb2:	79 03                	jns    c0105fb7 <itoa+0x15>
c0105fb4:	f7 5d 08             	neg    DWORD PTR [ebp+0x8]
c0105fb7:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [ebp-0x4],0x0
c0105fbe:	8b 45 fc             	mov    eax,DWORD PTR [ebp-0x4]
c0105fc1:	89 c1                	mov    ecx,eax
c0105fc3:	03 4d 0c             	add    ecx,DWORD PTR [ebp+0xc]
c0105fc6:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0105fc9:	89 c2                	mov    edx,eax
c0105fcb:	c1 fa 1f             	sar    edx,0x1f
c0105fce:	f7 7d 10             	idiv   DWORD PTR [ebp+0x10]
c0105fd1:	89 d0                	mov    eax,edx
c0105fd3:	0f b6 80 c0 89 10 c0 	movzx  eax,BYTE PTR [eax-0x3fef7640]
c0105fda:	88 01                	mov    BYTE PTR [ecx],al
c0105fdc:	83 45 fc 01          	add    DWORD PTR [ebp-0x4],0x1
c0105fe0:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0105fe3:	89 c2                	mov    edx,eax
c0105fe5:	c1 fa 1f             	sar    edx,0x1f
c0105fe8:	f7 7d 10             	idiv   DWORD PTR [ebp+0x10]
c0105feb:	89 45 08             	mov    DWORD PTR [ebp+0x8],eax
c0105fee:	83 7d 08 00          	cmp    DWORD PTR [ebp+0x8],0x0
c0105ff2:	7f ca                	jg     c0105fbe <itoa+0x1c>
c0105ff4:	83 7d f0 00          	cmp    DWORD PTR [ebp-0x10],0x0
c0105ff8:	79 0d                	jns    c0106007 <itoa+0x65>
c0105ffa:	8b 45 fc             	mov    eax,DWORD PTR [ebp-0x4]
c0105ffd:	03 45 0c             	add    eax,DWORD PTR [ebp+0xc]
c0106000:	c6 00 2d             	mov    BYTE PTR [eax],0x2d
c0106003:	83 45 fc 01          	add    DWORD PTR [ebp-0x4],0x1
c0106007:	8b 45 fc             	mov    eax,DWORD PTR [ebp-0x4]
c010600a:	03 45 0c             	add    eax,DWORD PTR [ebp+0xc]
c010600d:	c6 00 00             	mov    BYTE PTR [eax],0x0
c0106010:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c0106013:	89 45 f8             	mov    DWORD PTR [ebp-0x8],eax
c0106016:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c0106019:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
c010601c:	eb 04                	jmp    c0106022 <itoa+0x80>
c010601e:	83 45 f4 01          	add    DWORD PTR [ebp-0xc],0x1
c0106022:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0106025:	0f b6 00             	movzx  eax,BYTE PTR [eax]
c0106028:	84 c0                	test   al,al
c010602a:	75 f2                	jne    c010601e <itoa+0x7c>
c010602c:	83 6d f4 01          	sub    DWORD PTR [ebp-0xc],0x1
c0106030:	eb 25                	jmp    c0106057 <itoa+0xb5>
c0106032:	8b 45 f8             	mov    eax,DWORD PTR [ebp-0x8]
c0106035:	0f b6 00             	movzx  eax,BYTE PTR [eax]
c0106038:	88 45 ef             	mov    BYTE PTR [ebp-0x11],al
c010603b:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c010603e:	0f b6 10             	movzx  edx,BYTE PTR [eax]
c0106041:	8b 45 f8             	mov    eax,DWORD PTR [ebp-0x8]
c0106044:	88 10                	mov    BYTE PTR [eax],dl
c0106046:	83 45 f8 01          	add    DWORD PTR [ebp-0x8],0x1
c010604a:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c010604d:	0f b6 55 ef          	movzx  edx,BYTE PTR [ebp-0x11]
c0106051:	88 10                	mov    BYTE PTR [eax],dl
c0106053:	83 6d f4 01          	sub    DWORD PTR [ebp-0xc],0x1
c0106057:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c010605a:	3b 45 f8             	cmp    eax,DWORD PTR [ebp-0x8]
c010605d:	77 d3                	ja     c0106032 <itoa+0x90>
c010605f:	c9                   	leave  
c0106060:	c3                   	ret    

c0106061 <utoa>:
c0106061:	55                   	push   ebp
c0106062:	89 e5                	mov    ebp,esp
c0106064:	53                   	push   ebx
c0106065:	83 ec 14             	sub    esp,0x14
c0106068:	c7 45 f8 00 00 00 00 	mov    DWORD PTR [ebp-0x8],0x0
c010606f:	8b 45 f8             	mov    eax,DWORD PTR [ebp-0x8]
c0106072:	89 c1                	mov    ecx,eax
c0106074:	03 4d 0c             	add    ecx,DWORD PTR [ebp+0xc]
c0106077:	8b 5d 10             	mov    ebx,DWORD PTR [ebp+0x10]
c010607a:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c010607d:	ba 00 00 00 00       	mov    edx,0x0
c0106082:	f7 f3                	div    ebx
c0106084:	89 d0                	mov    eax,edx
c0106086:	0f b6 80 80 89 10 c0 	movzx  eax,BYTE PTR [eax-0x3fef7680]
c010608d:	88 01                	mov    BYTE PTR [ecx],al
c010608f:	83 45 f8 01          	add    DWORD PTR [ebp-0x8],0x1
c0106093:	8b 55 10             	mov    edx,DWORD PTR [ebp+0x10]
c0106096:	89 55 e8             	mov    DWORD PTR [ebp-0x18],edx
c0106099:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c010609c:	ba 00 00 00 00       	mov    edx,0x0
c01060a1:	f7 75 e8             	div    DWORD PTR [ebp-0x18]
c01060a4:	89 45 08             	mov    DWORD PTR [ebp+0x8],eax
c01060a7:	83 7d 08 00          	cmp    DWORD PTR [ebp+0x8],0x0
c01060ab:	75 c2                	jne    c010606f <utoa+0xe>
c01060ad:	8b 45 f8             	mov    eax,DWORD PTR [ebp-0x8]
c01060b0:	03 45 0c             	add    eax,DWORD PTR [ebp+0xc]
c01060b3:	c6 00 00             	mov    BYTE PTR [eax],0x0
c01060b6:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c01060b9:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
c01060bc:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c01060bf:	89 45 f0             	mov    DWORD PTR [ebp-0x10],eax
c01060c2:	eb 04                	jmp    c01060c8 <utoa+0x67>
c01060c4:	83 45 f0 01          	add    DWORD PTR [ebp-0x10],0x1
c01060c8:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c01060cb:	0f b6 00             	movzx  eax,BYTE PTR [eax]
c01060ce:	84 c0                	test   al,al
c01060d0:	75 f2                	jne    c01060c4 <utoa+0x63>
c01060d2:	83 6d f0 01          	sub    DWORD PTR [ebp-0x10],0x1
c01060d6:	eb 25                	jmp    c01060fd <utoa+0x9c>
c01060d8:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c01060db:	0f b6 00             	movzx  eax,BYTE PTR [eax]
c01060de:	88 45 ef             	mov    BYTE PTR [ebp-0x11],al
c01060e1:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c01060e4:	0f b6 10             	movzx  edx,BYTE PTR [eax]
c01060e7:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c01060ea:	88 10                	mov    BYTE PTR [eax],dl
c01060ec:	83 45 f4 01          	add    DWORD PTR [ebp-0xc],0x1
c01060f0:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c01060f3:	0f b6 55 ef          	movzx  edx,BYTE PTR [ebp-0x11]
c01060f7:	88 10                	mov    BYTE PTR [eax],dl
c01060f9:	83 6d f0 01          	sub    DWORD PTR [ebp-0x10],0x1
c01060fd:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c0106100:	3b 45 f4             	cmp    eax,DWORD PTR [ebp-0xc]
c0106103:	77 d3                	ja     c01060d8 <utoa+0x77>
c0106105:	83 c4 14             	add    esp,0x14
c0106108:	5b                   	pop    ebx
c0106109:	5d                   	pop    ebp
c010610a:	c3                   	ret    

c010610b <roll_screen>:
c010610b:	55                   	push   ebp
c010610c:	89 e5                	mov    ebp,esp
c010610e:	83 ec 10             	sub    esp,0x10
c0106111:	b8 14 7c 00 c0       	mov    eax,0xc0007c14
c0106116:	8b 00                	mov    eax,DWORD PTR [eax]
c0106118:	85 c0                	test   eax,eax
c010611a:	75 58                	jne    c0106174 <roll_screen+0x69>
c010611c:	b8 1c 7c 00 c0       	mov    eax,0xc0007c1c
c0106121:	8b 10                	mov    edx,DWORD PTR [eax]
c0106123:	b8 24 7c 00 c0       	mov    eax,0xc0007c24
c0106128:	8b 00                	mov    eax,DWORD PTR [eax]
c010612a:	01 c0                	add    eax,eax
c010612c:	01 d0                	add    eax,edx
c010612e:	89 45 fc             	mov    DWORD PTR [ebp-0x4],eax
c0106131:	b8 1c 7c 00 c0       	mov    eax,0xc0007c1c
c0106136:	8b 00                	mov    eax,DWORD PTR [eax]
c0106138:	89 45 f8             	mov    DWORD PTR [ebp-0x8],eax
c010613b:	c7 45 f4 00 00 00 00 	mov    DWORD PTR [ebp-0xc],0x0
c0106142:	eb 18                	jmp    c010615c <roll_screen+0x51>
c0106144:	8b 45 fc             	mov    eax,DWORD PTR [ebp-0x4]
c0106147:	0f b7 10             	movzx  edx,WORD PTR [eax]
c010614a:	8b 45 f8             	mov    eax,DWORD PTR [ebp-0x8]
c010614d:	66 89 10             	mov    WORD PTR [eax],dx
c0106150:	83 45 f8 02          	add    DWORD PTR [ebp-0x8],0x2
c0106154:	83 45 fc 02          	add    DWORD PTR [ebp-0x4],0x2
c0106158:	83 45 f4 01          	add    DWORD PTR [ebp-0xc],0x1
c010615c:	8b 55 f4             	mov    edx,DWORD PTR [ebp-0xc]
c010615f:	b8 24 7c 00 c0       	mov    eax,0xc0007c24
c0106164:	8b 08                	mov    ecx,DWORD PTR [eax]
c0106166:	b8 28 7c 00 c0       	mov    eax,0xc0007c28
c010616b:	8b 00                	mov    eax,DWORD PTR [eax]
c010616d:	0f af c1             	imul   eax,ecx
c0106170:	39 c2                	cmp    edx,eax
c0106172:	72 d0                	jb     c0106144 <roll_screen+0x39>
c0106174:	c9                   	leave  
c0106175:	c3                   	ret    

c0106176 <get_cursor>:
c0106176:	55                   	push   ebp
c0106177:	89 e5                	mov    ebp,esp
c0106179:	83 ec 18             	sub    esp,0x18
c010617c:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [ebp-0x4],0x0
c0106183:	c7 44 24 04 0e 00 00 	mov    DWORD PTR [esp+0x4],0xe
c010618a:	00 
c010618b:	c7 04 24 d4 03 00 00 	mov    DWORD PTR [esp],0x3d4
c0106192:	e8 90 fb ff ff       	call   c0105d27 <io_out8>
c0106197:	c7 04 24 d5 03 00 00 	mov    DWORD PTR [esp],0x3d5
c010619e:	e8 65 fb ff ff       	call   c0105d08 <io_in8>
c01061a3:	89 c2                	mov    edx,eax
c01061a5:	c1 e2 08             	shl    edx,0x8
c01061a8:	8b 45 fc             	mov    eax,DWORD PTR [ebp-0x4]
c01061ab:	09 d0                	or     eax,edx
c01061ad:	89 45 fc             	mov    DWORD PTR [ebp-0x4],eax
c01061b0:	c7 44 24 04 0f 00 00 	mov    DWORD PTR [esp+0x4],0xf
c01061b7:	00 
c01061b8:	c7 04 24 d4 03 00 00 	mov    DWORD PTR [esp],0x3d4
c01061bf:	e8 63 fb ff ff       	call   c0105d27 <io_out8>
c01061c4:	c7 04 24 d5 03 00 00 	mov    DWORD PTR [esp],0x3d5
c01061cb:	e8 38 fb ff ff       	call   c0105d08 <io_in8>
c01061d0:	8b 55 fc             	mov    edx,DWORD PTR [ebp-0x4]
c01061d3:	09 d0                	or     eax,edx
c01061d5:	89 45 fc             	mov    DWORD PTR [ebp-0x4],eax
c01061d8:	8b 45 fc             	mov    eax,DWORD PTR [ebp-0x4]
c01061db:	c9                   	leave  
c01061dc:	c3                   	ret    

c01061dd <set_cursor>:
c01061dd:	55                   	push   ebp
c01061de:	89 e5                	mov    ebp,esp
c01061e0:	83 ec 08             	sub    esp,0x8
c01061e3:	c7 44 24 04 0e 00 00 	mov    DWORD PTR [esp+0x4],0xe
c01061ea:	00 
c01061eb:	c7 04 24 d4 03 00 00 	mov    DWORD PTR [esp],0x3d4
c01061f2:	e8 30 fb ff ff       	call   c0105d27 <io_out8>
c01061f7:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01061fa:	25 00 ff 00 00       	and    eax,0xff00
c01061ff:	c1 e8 08             	shr    eax,0x8
c0106202:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c0106206:	c7 04 24 d5 03 00 00 	mov    DWORD PTR [esp],0x3d5
c010620d:	e8 15 fb ff ff       	call   c0105d27 <io_out8>
c0106212:	c7 44 24 04 0f 00 00 	mov    DWORD PTR [esp+0x4],0xf
c0106219:	00 
c010621a:	c7 04 24 d4 03 00 00 	mov    DWORD PTR [esp],0x3d4
c0106221:	e8 01 fb ff ff       	call   c0105d27 <io_out8>
c0106226:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106229:	25 ff 00 00 00       	and    eax,0xff
c010622e:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c0106232:	c7 04 24 d5 03 00 00 	mov    DWORD PTR [esp],0x3d5
c0106239:	e8 e9 fa ff ff       	call   c0105d27 <io_out8>
c010623e:	c9                   	leave  
c010623f:	c3                   	ret    

c0106240 <memset>:
c0106240:	55                   	push   ebp
c0106241:	89 e5                	mov    ebp,esp
c0106243:	83 ec 48             	sub    esp,0x48
c0106246:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c0106249:	88 45 e4             	mov    BYTE PTR [ebp-0x1c],al
c010624c:	83 7d 08 00          	cmp    DWORD PTR [ebp+0x8],0x0
c0106250:	75 2c                	jne    c010627e <memset+0x3e>
c0106252:	c7 44 24 10 43 b1 10 	mov    DWORD PTR [esp+0x10],0xc010b143
c0106259:	c0 
c010625a:	c7 44 24 0c aa b1 10 	mov    DWORD PTR [esp+0xc],0xc010b1aa
c0106261:	c0 
c0106262:	c7 44 24 08 0f 00 00 	mov    DWORD PTR [esp+0x8],0xf
c0106269:	00 
c010626a:	c7 44 24 04 51 b1 10 	mov    DWORD PTR [esp+0x4],0xc010b151
c0106271:	c0 
c0106272:	c7 04 24 51 b1 10 c0 	mov    DWORD PTR [esp],0xc010b151
c0106279:	e8 66 a9 ff ff       	call   c0100be4 <panic_spin>
c010627e:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106281:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
c0106284:	c7 45 f0 00 00 00 00 	mov    DWORD PTR [ebp-0x10],0x0
c010628b:	eb 11                	jmp    c010629e <memset+0x5e>
c010628d:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0106290:	0f b6 55 e4          	movzx  edx,BYTE PTR [ebp-0x1c]
c0106294:	88 10                	mov    BYTE PTR [eax],dl
c0106296:	83 45 f4 01          	add    DWORD PTR [ebp-0xc],0x1
c010629a:	83 45 f0 01          	add    DWORD PTR [ebp-0x10],0x1
c010629e:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c01062a1:	3b 45 10             	cmp    eax,DWORD PTR [ebp+0x10]
c01062a4:	72 e7                	jb     c010628d <memset+0x4d>
c01062a6:	c9                   	leave  
c01062a7:	c3                   	ret    

c01062a8 <memcpy>:
c01062a8:	55                   	push   ebp
c01062a9:	89 e5                	mov    ebp,esp
c01062ab:	83 ec 38             	sub    esp,0x38
c01062ae:	83 7d 08 00          	cmp    DWORD PTR [ebp+0x8],0x0
c01062b2:	74 06                	je     c01062ba <memcpy+0x12>
c01062b4:	83 7d 0c 00          	cmp    DWORD PTR [ebp+0xc],0x0
c01062b8:	75 2c                	jne    c01062e6 <memcpy+0x3e>
c01062ba:	c7 44 24 10 60 b1 10 	mov    DWORD PTR [esp+0x10],0xc010b160
c01062c1:	c0 
c01062c2:	c7 44 24 0c a3 b1 10 	mov    DWORD PTR [esp+0xc],0xc010b1a3
c01062c9:	c0 
c01062ca:	c7 44 24 08 22 00 00 	mov    DWORD PTR [esp+0x8],0x22
c01062d1:	00 
c01062d2:	c7 44 24 04 51 b1 10 	mov    DWORD PTR [esp+0x4],0xc010b151
c01062d9:	c0 
c01062da:	c7 04 24 51 b1 10 c0 	mov    DWORD PTR [esp],0xc010b151
c01062e1:	e8 fe a8 ff ff       	call   c0100be4 <panic_spin>
c01062e6:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01062e9:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
c01062ec:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c01062ef:	89 45 f0             	mov    DWORD PTR [ebp-0x10],eax
c01062f2:	c7 45 ec 00 00 00 00 	mov    DWORD PTR [ebp-0x14],0x0
c01062f9:	eb 17                	jmp    c0106312 <memcpy+0x6a>
c01062fb:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c01062fe:	0f b6 10             	movzx  edx,BYTE PTR [eax]
c0106301:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0106304:	88 10                	mov    BYTE PTR [eax],dl
c0106306:	83 45 f4 01          	add    DWORD PTR [ebp-0xc],0x1
c010630a:	83 45 f0 01          	add    DWORD PTR [ebp-0x10],0x1
c010630e:	83 45 ec 01          	add    DWORD PTR [ebp-0x14],0x1
c0106312:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
c0106315:	3b 45 10             	cmp    eax,DWORD PTR [ebp+0x10]
c0106318:	72 e1                	jb     c01062fb <memcpy+0x53>
c010631a:	c9                   	leave  
c010631b:	c3                   	ret    

c010631c <memcmp>:
c010631c:	55                   	push   ebp
c010631d:	89 e5                	mov    ebp,esp
c010631f:	83 ec 38             	sub    esp,0x38
c0106322:	83 7d 08 00          	cmp    DWORD PTR [ebp+0x8],0x0
c0106326:	74 06                	je     c010632e <memcmp+0x12>
c0106328:	83 7d 0c 00          	cmp    DWORD PTR [ebp+0xc],0x0
c010632c:	75 2c                	jne    c010635a <memcmp+0x3e>
c010632e:	c7 44 24 10 7f b1 10 	mov    DWORD PTR [esp+0x10],0xc010b17f
c0106335:	c0 
c0106336:	c7 44 24 0c 9c b1 10 	mov    DWORD PTR [esp+0xc],0xc010b19c
c010633d:	c0 
c010633e:	c7 44 24 08 3b 00 00 	mov    DWORD PTR [esp+0x8],0x3b
c0106345:	00 
c0106346:	c7 44 24 04 51 b1 10 	mov    DWORD PTR [esp+0x4],0xc010b151
c010634d:	c0 
c010634e:	c7 04 24 51 b1 10 c0 	mov    DWORD PTR [esp],0xc010b151
c0106355:	e8 8a a8 ff ff       	call   c0100be4 <panic_spin>
c010635a:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c010635d:	89 45 f0             	mov    DWORD PTR [ebp-0x10],eax
c0106360:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c0106363:	89 45 ec             	mov    DWORD PTR [ebp-0x14],eax
c0106366:	c7 45 f4 00 00 00 00 	mov    DWORD PTR [ebp-0xc],0x0
c010636d:	eb 14                	jmp    c0106383 <memcmp+0x67>
c010636f:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c0106372:	0f b6 10             	movzx  edx,BYTE PTR [eax]
c0106375:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
c0106378:	0f b6 00             	movzx  eax,BYTE PTR [eax]
c010637b:	38 c2                	cmp    dl,al
c010637d:	75 0e                	jne    c010638d <memcmp+0x71>
c010637f:	83 45 f4 01          	add    DWORD PTR [ebp-0xc],0x1
c0106383:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0106386:	3b 45 10             	cmp    eax,DWORD PTR [ebp+0x10]
c0106389:	72 e4                	jb     c010636f <memcmp+0x53>
c010638b:	eb 01                	jmp    c010638e <memcmp+0x72>
c010638d:	90                   	nop
c010638e:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c0106391:	0f b6 10             	movzx  edx,BYTE PTR [eax]
c0106394:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
c0106397:	0f b6 00             	movzx  eax,BYTE PTR [eax]
c010639a:	38 c2                	cmp    dl,al
c010639c:	72 16                	jb     c01063b4 <memcmp+0x98>
c010639e:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c01063a1:	0f b6 10             	movzx  edx,BYTE PTR [eax]
c01063a4:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
c01063a7:	0f b6 00             	movzx  eax,BYTE PTR [eax]
c01063aa:	38 c2                	cmp    dl,al
c01063ac:	0f 97 c0             	seta   al
c01063af:	0f b6 c0             	movzx  eax,al
c01063b2:	eb 05                	jmp    c01063b9 <memcmp+0x9d>
c01063b4:	b8 ff ff ff ff       	mov    eax,0xffffffff
c01063b9:	c9                   	leave  
c01063ba:	c3                   	ret    

c01063bb <strcpy>:
c01063bb:	55                   	push   ebp
c01063bc:	89 e5                	mov    ebp,esp
c01063be:	83 ec 10             	sub    esp,0x10
c01063c1:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01063c4:	89 45 fc             	mov    DWORD PTR [ebp-0x4],eax
c01063c7:	90                   	nop
c01063c8:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c01063cb:	0f b6 10             	movzx  edx,BYTE PTR [eax]
c01063ce:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01063d1:	88 10                	mov    BYTE PTR [eax],dl
c01063d3:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01063d6:	0f b6 00             	movzx  eax,BYTE PTR [eax]
c01063d9:	84 c0                	test   al,al
c01063db:	0f 95 c0             	setne  al
c01063de:	83 45 08 01          	add    DWORD PTR [ebp+0x8],0x1
c01063e2:	83 45 0c 01          	add    DWORD PTR [ebp+0xc],0x1
c01063e6:	84 c0                	test   al,al
c01063e8:	75 de                	jne    c01063c8 <strcpy+0xd>
c01063ea:	8b 45 fc             	mov    eax,DWORD PTR [ebp-0x4]
c01063ed:	c9                   	leave  
c01063ee:	c3                   	ret    

c01063ef <strlen>:
c01063ef:	55                   	push   ebp
c01063f0:	89 e5                	mov    ebp,esp
c01063f2:	83 ec 10             	sub    esp,0x10
c01063f5:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [ebp-0x4],0x0
c01063fc:	eb 04                	jmp    c0106402 <strlen+0x13>
c01063fe:	83 45 fc 01          	add    DWORD PTR [ebp-0x4],0x1
c0106402:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106405:	0f b6 00             	movzx  eax,BYTE PTR [eax]
c0106408:	84 c0                	test   al,al
c010640a:	0f 95 c0             	setne  al
c010640d:	83 45 08 01          	add    DWORD PTR [ebp+0x8],0x1
c0106411:	84 c0                	test   al,al
c0106413:	75 e9                	jne    c01063fe <strlen+0xf>
c0106415:	8b 45 fc             	mov    eax,DWORD PTR [ebp-0x4]
c0106418:	c9                   	leave  
c0106419:	c3                   	ret    
	...

c010641c <sprintf>:
c010641c:	55                   	push   ebp
c010641d:	89 e5                	mov    ebp,esp
c010641f:	83 ec 28             	sub    esp,0x28
c0106422:	8d 55 10             	lea    edx,[ebp+0x10]
c0106425:	8d 45 f0             	lea    eax,[ebp-0x10]
c0106428:	89 10                	mov    DWORD PTR [eax],edx
c010642a:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c010642d:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
c0106431:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c0106434:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c0106438:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c010643b:	89 04 24             	mov    DWORD PTR [esp],eax
c010643e:	e8 08 00 00 00       	call   c010644b <vsprintf>
c0106443:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
c0106446:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0106449:	c9                   	leave  
c010644a:	c3                   	ret    

c010644b <vsprintf>:
c010644b:	55                   	push   ebp
c010644c:	89 e5                	mov    ebp,esp
c010644e:	53                   	push   ebx
c010644f:	83 ec 54             	sub    esp,0x54
c0106452:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106455:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
c0106458:	e9 9d 02 00 00       	jmp    c01066fa <vsprintf+0x2af>
c010645d:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c0106460:	0f b6 00             	movzx  eax,BYTE PTR [eax]
c0106463:	3c 25                	cmp    al,0x25
c0106465:	74 14                	je     c010647b <vsprintf+0x30>
c0106467:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c010646a:	0f b6 10             	movzx  edx,BYTE PTR [eax]
c010646d:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0106470:	88 10                	mov    BYTE PTR [eax],dl
c0106472:	83 45 f4 01          	add    DWORD PTR [ebp-0xc],0x1
c0106476:	e9 7b 02 00 00       	jmp    c01066f6 <vsprintf+0x2ab>
c010647b:	83 45 0c 01          	add    DWORD PTR [ebp+0xc],0x1
c010647f:	c6 45 bb 00          	mov    BYTE PTR [ebp-0x45],0x0
c0106483:	c7 45 ec 00 00 00 00 	mov    DWORD PTR [ebp-0x14],0x0
c010648a:	c7 45 e8 01 00 00 00 	mov    DWORD PTR [ebp-0x18],0x1
c0106491:	c7 45 f0 01 00 00 00 	mov    DWORD PTR [ebp-0x10],0x1
c0106498:	eb 44                	jmp    c01064de <vsprintf+0x93>
c010649a:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c010649d:	0f b6 00             	movzx  eax,BYTE PTR [eax]
c01064a0:	0f be c0             	movsx  eax,al
c01064a3:	83 e8 20             	sub    eax,0x20
c01064a6:	83 f8 10             	cmp    eax,0x10
c01064a9:	77 21                	ja     c01064cc <vsprintf+0x81>
c01064ab:	8b 04 85 d4 b1 10 c0 	mov    eax,DWORD PTR [eax*4-0x3fef4e2c]
c01064b2:	ff e0                	jmp    eax
c01064b4:	c7 45 e8 01 00 00 00 	mov    DWORD PTR [ebp-0x18],0x1
c01064bb:	eb 1d                	jmp    c01064da <vsprintf+0x8f>
c01064bd:	c7 45 e8 00 00 00 00 	mov    DWORD PTR [ebp-0x18],0x0
c01064c4:	eb 14                	jmp    c01064da <vsprintf+0x8f>
c01064c6:	83 4d ec 01          	or     DWORD PTR [ebp-0x14],0x1
c01064ca:	eb 0d                	jmp    c01064d9 <vsprintf+0x8e>
c01064cc:	83 6d 0c 01          	sub    DWORD PTR [ebp+0xc],0x1
c01064d0:	c7 45 f0 00 00 00 00 	mov    DWORD PTR [ebp-0x10],0x0
c01064d7:	eb 01                	jmp    c01064da <vsprintf+0x8f>
c01064d9:	90                   	nop
c01064da:	83 45 0c 01          	add    DWORD PTR [ebp+0xc],0x1
c01064de:	83 7d f0 00          	cmp    DWORD PTR [ebp-0x10],0x0
c01064e2:	75 b6                	jne    c010649a <vsprintf+0x4f>
c01064e4:	c7 45 e4 00 00 00 00 	mov    DWORD PTR [ebp-0x1c],0x0
c01064eb:	eb 23                	jmp    c0106510 <vsprintf+0xc5>
c01064ed:	8b 55 e4             	mov    edx,DWORD PTR [ebp-0x1c]
c01064f0:	89 d0                	mov    eax,edx
c01064f2:	c1 e0 02             	shl    eax,0x2
c01064f5:	01 d0                	add    eax,edx
c01064f7:	01 c0                	add    eax,eax
c01064f9:	89 c2                	mov    edx,eax
c01064fb:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c01064fe:	0f b6 00             	movzx  eax,BYTE PTR [eax]
c0106501:	0f be c0             	movsx  eax,al
c0106504:	83 e8 30             	sub    eax,0x30
c0106507:	01 d0                	add    eax,edx
c0106509:	89 45 e4             	mov    DWORD PTR [ebp-0x1c],eax
c010650c:	83 45 0c 01          	add    DWORD PTR [ebp+0xc],0x1
c0106510:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c0106513:	0f b6 00             	movzx  eax,BYTE PTR [eax]
c0106516:	3c 2f                	cmp    al,0x2f
c0106518:	7e 0a                	jle    c0106524 <vsprintf+0xd9>
c010651a:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c010651d:	0f b6 00             	movzx  eax,BYTE PTR [eax]
c0106520:	3c 39                	cmp    al,0x39
c0106522:	7e c9                	jle    c01064ed <vsprintf+0xa2>
c0106524:	83 7d e4 00          	cmp    DWORD PTR [ebp-0x1c],0x0
c0106528:	75 07                	jne    c0106531 <vsprintf+0xe6>
c010652a:	c7 45 e8 00 00 00 00 	mov    DWORD PTR [ebp-0x18],0x0
c0106531:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c0106534:	0f b6 00             	movzx  eax,BYTE PTR [eax]
c0106537:	0f be c0             	movsx  eax,al
c010653a:	83 f8 6f             	cmp    eax,0x6f
c010653d:	0f 84 86 00 00 00    	je     c01065c9 <vsprintf+0x17e>
c0106543:	83 f8 6f             	cmp    eax,0x6f
c0106546:	7f 14                	jg     c010655c <vsprintf+0x111>
c0106548:	83 f8 63             	cmp    eax,0x63
c010654b:	74 3a                	je     c0106587 <vsprintf+0x13c>
c010654d:	83 f8 64             	cmp    eax,0x64
c0106550:	74 50                	je     c01065a2 <vsprintf+0x157>
c0106552:	83 f8 25             	cmp    eax,0x25
c0106555:	74 21                	je     c0106578 <vsprintf+0x12d>
c0106557:	e9 16 01 00 00       	jmp    c0106672 <vsprintf+0x227>
c010655c:	83 f8 73             	cmp    eax,0x73
c010655f:	0f 84 ba 00 00 00    	je     c010661f <vsprintf+0x1d4>
c0106565:	83 f8 78             	cmp    eax,0x78
c0106568:	0f 84 e1 00 00 00    	je     c010664f <vsprintf+0x204>
c010656e:	83 f8 70             	cmp    eax,0x70
c0106571:	74 7d                	je     c01065f0 <vsprintf+0x1a5>
c0106573:	e9 fa 00 00 00       	jmp    c0106672 <vsprintf+0x227>
c0106578:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c010657b:	c6 00 25             	mov    BYTE PTR [eax],0x25
c010657e:	83 45 f4 01          	add    DWORD PTR [ebp-0xc],0x1
c0106582:	e9 eb 00 00 00       	jmp    c0106672 <vsprintf+0x227>
c0106587:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
c010658a:	8d 50 04             	lea    edx,[eax+0x4]
c010658d:	89 55 10             	mov    DWORD PTR [ebp+0x10],edx
c0106590:	8b 00                	mov    eax,DWORD PTR [eax]
c0106592:	89 c2                	mov    edx,eax
c0106594:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0106597:	88 10                	mov    BYTE PTR [eax],dl
c0106599:	83 45 f4 01          	add    DWORD PTR [ebp-0xc],0x1
c010659d:	e9 d0 00 00 00       	jmp    c0106672 <vsprintf+0x227>
c01065a2:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
c01065a5:	8d 50 04             	lea    edx,[eax+0x4]
c01065a8:	89 55 10             	mov    DWORD PTR [ebp+0x10],edx
c01065ab:	8b 00                	mov    eax,DWORD PTR [eax]
c01065ad:	c7 44 24 08 0a 00 00 	mov    DWORD PTR [esp+0x8],0xa
c01065b4:	00 
c01065b5:	8d 55 bb             	lea    edx,[ebp-0x45]
c01065b8:	89 54 24 04          	mov    DWORD PTR [esp+0x4],edx
c01065bc:	89 04 24             	mov    DWORD PTR [esp],eax
c01065bf:	e8 de f9 ff ff       	call   c0105fa2 <itoa>
c01065c4:	e9 a9 00 00 00       	jmp    c0106672 <vsprintf+0x227>
c01065c9:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
c01065cc:	8d 50 04             	lea    edx,[eax+0x4]
c01065cf:	89 55 10             	mov    DWORD PTR [ebp+0x10],edx
c01065d2:	8b 00                	mov    eax,DWORD PTR [eax]
c01065d4:	c7 44 24 08 08 00 00 	mov    DWORD PTR [esp+0x8],0x8
c01065db:	00 
c01065dc:	8d 55 bb             	lea    edx,[ebp-0x45]
c01065df:	89 54 24 04          	mov    DWORD PTR [esp+0x4],edx
c01065e3:	89 04 24             	mov    DWORD PTR [esp],eax
c01065e6:	e8 b7 f9 ff ff       	call   c0105fa2 <itoa>
c01065eb:	e9 82 00 00 00       	jmp    c0106672 <vsprintf+0x227>
c01065f0:	c6 45 bb 30          	mov    BYTE PTR [ebp-0x45],0x30
c01065f4:	c6 45 bc 78          	mov    BYTE PTR [ebp-0x44],0x78
c01065f8:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
c01065fb:	8d 50 04             	lea    edx,[eax+0x4]
c01065fe:	89 55 10             	mov    DWORD PTR [ebp+0x10],edx
c0106601:	8b 00                	mov    eax,DWORD PTR [eax]
c0106603:	c7 44 24 08 10 00 00 	mov    DWORD PTR [esp+0x8],0x10
c010660a:	00 
c010660b:	8d 55 bb             	lea    edx,[ebp-0x45]
c010660e:	83 c2 02             	add    edx,0x2
c0106611:	89 54 24 04          	mov    DWORD PTR [esp+0x4],edx
c0106615:	89 04 24             	mov    DWORD PTR [esp],eax
c0106618:	e8 44 fa ff ff       	call   c0106061 <utoa>
c010661d:	eb 53                	jmp    c0106672 <vsprintf+0x227>
c010661f:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
c0106622:	8d 50 04             	lea    edx,[eax+0x4]
c0106625:	89 55 10             	mov    DWORD PTR [ebp+0x10],edx
c0106628:	8b 00                	mov    eax,DWORD PTR [eax]
c010662a:	89 45 e0             	mov    DWORD PTR [ebp-0x20],eax
c010662d:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
c0106630:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c0106634:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0106637:	89 04 24             	mov    DWORD PTR [esp],eax
c010663a:	e8 7c fd ff ff       	call   c01063bb <strcpy>
c010663f:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
c0106642:	89 04 24             	mov    DWORD PTR [esp],eax
c0106645:	e8 a5 fd ff ff       	call   c01063ef <strlen>
c010664a:	01 45 f4             	add    DWORD PTR [ebp-0xc],eax
c010664d:	eb 23                	jmp    c0106672 <vsprintf+0x227>
c010664f:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
c0106652:	8d 50 04             	lea    edx,[eax+0x4]
c0106655:	89 55 10             	mov    DWORD PTR [ebp+0x10],edx
c0106658:	8b 00                	mov    eax,DWORD PTR [eax]
c010665a:	c7 44 24 08 10 00 00 	mov    DWORD PTR [esp+0x8],0x10
c0106661:	00 
c0106662:	8d 55 bb             	lea    edx,[ebp-0x45]
c0106665:	89 54 24 04          	mov    DWORD PTR [esp+0x4],edx
c0106669:	89 04 24             	mov    DWORD PTR [esp],eax
c010666c:	e8 31 f9 ff ff       	call   c0105fa2 <itoa>
c0106671:	90                   	nop
c0106672:	8b 5d e4             	mov    ebx,DWORD PTR [ebp-0x1c]
c0106675:	8d 45 bb             	lea    eax,[ebp-0x45]
c0106678:	89 04 24             	mov    DWORD PTR [esp],eax
c010667b:	e8 6f fd ff ff       	call   c01063ef <strlen>
c0106680:	89 da                	mov    edx,ebx
c0106682:	29 c2                	sub    edx,eax
c0106684:	89 d0                	mov    eax,edx
c0106686:	89 45 e4             	mov    DWORD PTR [ebp-0x1c],eax
c0106689:	eb 23                	jmp    c01066ae <vsprintf+0x263>
c010668b:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
c010668e:	83 e0 01             	and    eax,0x1
c0106691:	84 c0                	test   al,al
c0106693:	74 07                	je     c010669c <vsprintf+0x251>
c0106695:	b8 30 00 00 00       	mov    eax,0x30
c010669a:	eb 05                	jmp    c01066a1 <vsprintf+0x256>
c010669c:	b8 20 00 00 00       	mov    eax,0x20
c01066a1:	8b 55 f4             	mov    edx,DWORD PTR [ebp-0xc]
c01066a4:	88 02                	mov    BYTE PTR [edx],al
c01066a6:	83 45 f4 01          	add    DWORD PTR [ebp-0xc],0x1
c01066aa:	83 6d e4 01          	sub    DWORD PTR [ebp-0x1c],0x1
c01066ae:	83 7d e4 00          	cmp    DWORD PTR [ebp-0x1c],0x0
c01066b2:	7e 06                	jle    c01066ba <vsprintf+0x26f>
c01066b4:	83 7d e8 01          	cmp    DWORD PTR [ebp-0x18],0x1
c01066b8:	74 d1                	je     c010668b <vsprintf+0x240>
c01066ba:	8d 45 bb             	lea    eax,[ebp-0x45]
c01066bd:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c01066c1:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c01066c4:	89 04 24             	mov    DWORD PTR [esp],eax
c01066c7:	e8 ef fc ff ff       	call   c01063bb <strcpy>
c01066cc:	8d 45 bb             	lea    eax,[ebp-0x45]
c01066cf:	89 04 24             	mov    DWORD PTR [esp],eax
c01066d2:	e8 18 fd ff ff       	call   c01063ef <strlen>
c01066d7:	01 45 f4             	add    DWORD PTR [ebp-0xc],eax
c01066da:	eb 0e                	jmp    c01066ea <vsprintf+0x29f>
c01066dc:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c01066df:	c6 00 20             	mov    BYTE PTR [eax],0x20
c01066e2:	83 45 f4 01          	add    DWORD PTR [ebp-0xc],0x1
c01066e6:	83 6d e4 01          	sub    DWORD PTR [ebp-0x1c],0x1
c01066ea:	83 7d e4 00          	cmp    DWORD PTR [ebp-0x1c],0x0
c01066ee:	7e 06                	jle    c01066f6 <vsprintf+0x2ab>
c01066f0:	83 7d e8 00          	cmp    DWORD PTR [ebp-0x18],0x0
c01066f4:	74 e6                	je     c01066dc <vsprintf+0x291>
c01066f6:	83 45 0c 01          	add    DWORD PTR [ebp+0xc],0x1
c01066fa:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c01066fd:	0f b6 00             	movzx  eax,BYTE PTR [eax]
c0106700:	84 c0                	test   al,al
c0106702:	0f 85 55 fd ff ff    	jne    c010645d <vsprintf+0x12>
c0106708:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c010670b:	c6 00 00             	mov    BYTE PTR [eax],0x0
c010670e:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106711:	89 04 24             	mov    DWORD PTR [esp],eax
c0106714:	e8 d6 fc ff ff       	call   c01063ef <strlen>
c0106719:	83 c4 54             	add    esp,0x54
c010671c:	5b                   	pop    ebx
c010671d:	5d                   	pop    ebp
c010671e:	c3                   	ret    
	...

c0106720 <viewctl_init>:
c0106720:	55                   	push   ebp
c0106721:	89 e5                	mov    ebp,esp
c0106723:	83 ec 18             	sub    esp,0x18
c0106726:	8b 45 18             	mov    eax,DWORD PTR [ebp+0x18]
c0106729:	c1 e0 02             	shl    eax,0x2
c010672c:	89 04 24             	mov    DWORD PTR [esp],eax
c010672f:	e8 20 b3 ff ff       	call   c0101a54 <sys_malloc>
c0106734:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c0106737:	89 42 24             	mov    DWORD PTR [edx+0x24],eax
c010673a:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c010673d:	8b 55 18             	mov    edx,DWORD PTR [ebp+0x18]
c0106740:	89 50 28             	mov    DWORD PTR [eax+0x28],edx
c0106743:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106746:	c7 40 2c 00 00 00 00 	mov    DWORD PTR [eax+0x2c],0x0
c010674d:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106750:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
c0106753:	89 50 30             	mov    DWORD PTR [eax+0x30],edx
c0106756:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106759:	8b 55 10             	mov    edx,DWORD PTR [ebp+0x10]
c010675c:	89 50 34             	mov    DWORD PTR [eax+0x34],edx
c010675f:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106762:	8b 55 14             	mov    edx,DWORD PTR [ebp+0x14]
c0106765:	89 50 38             	mov    DWORD PTR [eax+0x38],edx
c0106768:	8b 55 10             	mov    edx,DWORD PTR [ebp+0x10]
c010676b:	8b 45 14             	mov    eax,DWORD PTR [ebp+0x14]
c010676e:	0f af c2             	imul   eax,edx
c0106771:	c1 e0 02             	shl    eax,0x2
c0106774:	89 04 24             	mov    DWORD PTR [esp],eax
c0106777:	e8 d8 b2 ff ff       	call   c0101a54 <sys_malloc>
c010677c:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c010677f:	89 42 3c             	mov    DWORD PTR [edx+0x3c],eax
c0106782:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106785:	89 04 24             	mov    DWORD PTR [esp],eax
c0106788:	e8 f5 c9 ff ff       	call   c0103182 <lock_init>
c010678d:	c9                   	leave  
c010678e:	c3                   	ret    

c010678f <viewblock_init>:
c010678f:	55                   	push   ebp
c0106790:	89 e5                	mov    ebp,esp
c0106792:	83 ec 28             	sub    esp,0x28
c0106795:	c7 04 24 1c 00 00 00 	mov    DWORD PTR [esp],0x1c
c010679c:	e8 b3 b2 ff ff       	call   c0101a54 <sys_malloc>
c01067a1:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
c01067a4:	83 7d f4 00          	cmp    DWORD PTR [ebp-0xc],0x0
c01067a8:	75 07                	jne    c01067b1 <viewblock_init+0x22>
c01067aa:	b8 00 00 00 00       	mov    eax,0x0
c01067af:	eb 72                	jmp    c0106823 <viewblock_init+0x94>
c01067b1:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c01067b4:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c01067b7:	0f af c2             	imul   eax,edx
c01067ba:	c1 e0 02             	shl    eax,0x2
c01067bd:	89 04 24             	mov    DWORD PTR [esp],eax
c01067c0:	e8 8f b2 ff ff       	call   c0101a54 <sys_malloc>
c01067c5:	8b 55 f4             	mov    edx,DWORD PTR [ebp-0xc]
c01067c8:	89 42 04             	mov    DWORD PTR [edx+0x4],eax
c01067cb:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c01067ce:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
c01067d1:	85 c0                	test   eax,eax
c01067d3:	75 12                	jne    c01067e7 <viewblock_init+0x58>
c01067d5:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c01067d8:	89 04 24             	mov    DWORD PTR [esp],eax
c01067db:	e8 a3 b5 ff ff       	call   c0101d83 <sys_free>
c01067e0:	b8 00 00 00 00       	mov    eax,0x0
c01067e5:	eb 3c                	jmp    c0106823 <viewblock_init+0x94>
c01067e7:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c01067ea:	c7 00 00 00 00 00    	mov    DWORD PTR [eax],0x0
c01067f0:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c01067f3:	c7 40 08 00 00 00 00 	mov    DWORD PTR [eax+0x8],0x0
c01067fa:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c01067fd:	c7 40 0c 00 00 00 00 	mov    DWORD PTR [eax+0xc],0x0
c0106804:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0106807:	c7 40 10 00 00 00 00 	mov    DWORD PTR [eax+0x10],0x0
c010680e:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c0106811:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0106814:	89 50 14             	mov    DWORD PTR [eax+0x14],edx
c0106817:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
c010681a:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c010681d:	89 50 18             	mov    DWORD PTR [eax+0x18],edx
c0106820:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0106823:	c9                   	leave  
c0106824:	c3                   	ret    

c0106825 <view_free>:
c0106825:	55                   	push   ebp
c0106826:	89 e5                	mov    ebp,esp
c0106828:	83 ec 18             	sub    esp,0x18
c010682b:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c010682e:	8b 00                	mov    eax,DWORD PTR [eax]
c0106830:	85 c0                	test   eax,eax
c0106832:	74 0b                	je     c010683f <view_free+0x1a>
c0106834:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106837:	89 04 24             	mov    DWORD PTR [esp],eax
c010683a:	e8 85 00 00 00       	call   c01068c4 <viewRemove>
c010683f:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106842:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
c0106845:	89 04 24             	mov    DWORD PTR [esp],eax
c0106848:	e8 36 b5 ff ff       	call   c0101d83 <sys_free>
c010684d:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106850:	89 04 24             	mov    DWORD PTR [esp],eax
c0106853:	e8 2b b5 ff ff       	call   c0101d83 <sys_free>
c0106858:	c9                   	leave  
c0106859:	c3                   	ret    

c010685a <viewInsert>:
c010685a:	55                   	push   ebp
c010685b:	89 e5                	mov    ebp,esp
c010685d:	83 ec 18             	sub    esp,0x18
c0106860:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106863:	89 04 24             	mov    DWORD PTR [esp],eax
c0106866:	e8 77 cb ff ff       	call   c01033e2 <lock_acquire>
c010686b:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c010686e:	8b 50 2c             	mov    edx,DWORD PTR [eax+0x2c]
c0106871:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106874:	8b 40 28             	mov    eax,DWORD PTR [eax+0x28]
c0106877:	83 e8 01             	sub    eax,0x1
c010687a:	39 c2                	cmp    edx,eax
c010687c:	7f 39                	jg     c01068b7 <viewInsert+0x5d>
c010687e:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c0106881:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c0106884:	89 10                	mov    DWORD PTR [eax],edx
c0106886:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106889:	8b 50 24             	mov    edx,DWORD PTR [eax+0x24]
c010688c:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c010688f:	8b 40 2c             	mov    eax,DWORD PTR [eax+0x2c]
c0106892:	c1 e0 02             	shl    eax,0x2
c0106895:	01 c2                	add    edx,eax
c0106897:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c010689a:	89 02                	mov    DWORD PTR [edx],eax
c010689c:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c010689f:	8b 50 2c             	mov    edx,DWORD PTR [eax+0x2c]
c01068a2:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c01068a5:	89 50 08             	mov    DWORD PTR [eax+0x8],edx
c01068a8:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01068ab:	8b 40 2c             	mov    eax,DWORD PTR [eax+0x2c]
c01068ae:	8d 50 01             	lea    edx,[eax+0x1]
c01068b1:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01068b4:	89 50 2c             	mov    DWORD PTR [eax+0x2c],edx
c01068b7:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01068ba:	89 04 24             	mov    DWORD PTR [esp],eax
c01068bd:	e8 a4 cb ff ff       	call   c0103466 <lock_release>
c01068c2:	c9                   	leave  
c01068c3:	c3                   	ret    

c01068c4 <viewRemove>:
c01068c4:	55                   	push   ebp
c01068c5:	89 e5                	mov    ebp,esp
c01068c7:	57                   	push   edi
c01068c8:	56                   	push   esi
c01068c9:	53                   	push   ebx
c01068ca:	83 ec 3c             	sub    esp,0x3c
c01068cd:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01068d0:	8b 00                	mov    eax,DWORD PTR [eax]
c01068d2:	89 04 24             	mov    DWORD PTR [esp],eax
c01068d5:	e8 08 cb ff ff       	call   c01033e2 <lock_acquire>
c01068da:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01068dd:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
c01068e0:	89 45 e4             	mov    DWORD PTR [ebp-0x1c],eax
c01068e3:	eb 43                	jmp    c0106928 <viewRemove+0x64>
c01068e5:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01068e8:	8b 00                	mov    eax,DWORD PTR [eax]
c01068ea:	8b 40 24             	mov    eax,DWORD PTR [eax+0x24]
c01068ed:	8b 55 e4             	mov    edx,DWORD PTR [ebp-0x1c]
c01068f0:	c1 e2 02             	shl    edx,0x2
c01068f3:	01 c2                	add    edx,eax
c01068f5:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01068f8:	8b 00                	mov    eax,DWORD PTR [eax]
c01068fa:	8b 40 24             	mov    eax,DWORD PTR [eax+0x24]
c01068fd:	8b 4d e4             	mov    ecx,DWORD PTR [ebp-0x1c]
c0106900:	83 e9 01             	sub    ecx,0x1
c0106903:	c1 e1 02             	shl    ecx,0x2
c0106906:	01 c8                	add    eax,ecx
c0106908:	8b 00                	mov    eax,DWORD PTR [eax]
c010690a:	89 02                	mov    DWORD PTR [edx],eax
c010690c:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c010690f:	8b 00                	mov    eax,DWORD PTR [eax]
c0106911:	8b 40 24             	mov    eax,DWORD PTR [eax+0x24]
c0106914:	8b 55 e4             	mov    edx,DWORD PTR [ebp-0x1c]
c0106917:	c1 e2 02             	shl    edx,0x2
c010691a:	01 d0                	add    eax,edx
c010691c:	8b 00                	mov    eax,DWORD PTR [eax]
c010691e:	8b 55 e4             	mov    edx,DWORD PTR [ebp-0x1c]
c0106921:	89 50 08             	mov    DWORD PTR [eax+0x8],edx
c0106924:	83 45 e4 01          	add    DWORD PTR [ebp-0x1c],0x1
c0106928:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c010692b:	8b 00                	mov    eax,DWORD PTR [eax]
c010692d:	8b 40 2c             	mov    eax,DWORD PTR [eax+0x2c]
c0106930:	83 e8 01             	sub    eax,0x1
c0106933:	3b 45 e4             	cmp    eax,DWORD PTR [ebp-0x1c]
c0106936:	7f ad                	jg     c01068e5 <viewRemove+0x21>
c0106938:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c010693b:	8b 00                	mov    eax,DWORD PTR [eax]
c010693d:	8b 50 2c             	mov    edx,DWORD PTR [eax+0x2c]
c0106940:	83 ea 01             	sub    edx,0x1
c0106943:	89 50 2c             	mov    DWORD PTR [eax+0x2c],edx
c0106946:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106949:	8b 40 10             	mov    eax,DWORD PTR [eax+0x10]
c010694c:	89 c2                	mov    edx,eax
c010694e:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106951:	8b 40 18             	mov    eax,DWORD PTR [eax+0x18]
c0106954:	01 d0                	add    eax,edx
c0106956:	89 c6                	mov    esi,eax
c0106958:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c010695b:	8b 40 0c             	mov    eax,DWORD PTR [eax+0xc]
c010695e:	89 c2                	mov    edx,eax
c0106960:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106963:	8b 40 14             	mov    eax,DWORD PTR [eax+0x14]
c0106966:	01 d0                	add    eax,edx
c0106968:	89 c3                	mov    ebx,eax
c010696a:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c010696d:	8b 48 10             	mov    ecx,DWORD PTR [eax+0x10]
c0106970:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106973:	8b 50 0c             	mov    edx,DWORD PTR [eax+0xc]
c0106976:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106979:	8b 00                	mov    eax,DWORD PTR [eax]
c010697b:	c7 44 24 14 00 00 00 	mov    DWORD PTR [esp+0x14],0x0
c0106982:	00 
c0106983:	89 74 24 10          	mov    DWORD PTR [esp+0x10],esi
c0106987:	89 5c 24 0c          	mov    DWORD PTR [esp+0xc],ebx
c010698b:	89 4c 24 08          	mov    DWORD PTR [esp+0x8],ecx
c010698f:	89 54 24 04          	mov    DWORD PTR [esp+0x4],edx
c0106993:	89 04 24             	mov    DWORD PTR [esp],eax
c0106996:	e8 02 07 00 00       	call   c010709d <view_reflushmap>
c010699b:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c010699e:	8b 78 08             	mov    edi,DWORD PTR [eax+0x8]
c01069a1:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01069a4:	8b 40 10             	mov    eax,DWORD PTR [eax+0x10]
c01069a7:	89 c2                	mov    edx,eax
c01069a9:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01069ac:	8b 40 18             	mov    eax,DWORD PTR [eax+0x18]
c01069af:	01 d0                	add    eax,edx
c01069b1:	89 c6                	mov    esi,eax
c01069b3:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01069b6:	8b 40 0c             	mov    eax,DWORD PTR [eax+0xc]
c01069b9:	89 c2                	mov    edx,eax
c01069bb:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01069be:	8b 40 14             	mov    eax,DWORD PTR [eax+0x14]
c01069c1:	01 d0                	add    eax,edx
c01069c3:	89 c3                	mov    ebx,eax
c01069c5:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01069c8:	8b 48 10             	mov    ecx,DWORD PTR [eax+0x10]
c01069cb:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01069ce:	8b 50 0c             	mov    edx,DWORD PTR [eax+0xc]
c01069d1:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01069d4:	8b 00                	mov    eax,DWORD PTR [eax]
c01069d6:	89 7c 24 18          	mov    DWORD PTR [esp+0x18],edi
c01069da:	c7 44 24 14 00 00 00 	mov    DWORD PTR [esp+0x14],0x0
c01069e1:	00 
c01069e2:	89 74 24 10          	mov    DWORD PTR [esp+0x10],esi
c01069e6:	89 5c 24 0c          	mov    DWORD PTR [esp+0xc],ebx
c01069ea:	89 4c 24 08          	mov    DWORD PTR [esp+0x8],ecx
c01069ee:	89 54 24 04          	mov    DWORD PTR [esp+0x4],edx
c01069f2:	89 04 24             	mov    DWORD PTR [esp],eax
c01069f5:	e8 e2 04 00 00       	call   c0106edc <view_reflushsub>
c01069fa:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01069fd:	8b 00                	mov    eax,DWORD PTR [eax]
c01069ff:	89 04 24             	mov    DWORD PTR [esp],eax
c0106a02:	e8 5f ca ff ff       	call   c0103466 <lock_release>
c0106a07:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106a0a:	c7 40 08 00 00 00 00 	mov    DWORD PTR [eax+0x8],0x0
c0106a11:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106a14:	c7 00 00 00 00 00    	mov    DWORD PTR [eax],0x0
c0106a1a:	83 c4 3c             	add    esp,0x3c
c0106a1d:	5b                   	pop    ebx
c0106a1e:	5e                   	pop    esi
c0106a1f:	5f                   	pop    edi
c0106a20:	5d                   	pop    ebp
c0106a21:	c3                   	ret    

c0106a22 <viewUpdown>:
c0106a22:	55                   	push   ebp
c0106a23:	89 e5                	mov    ebp,esp
c0106a25:	57                   	push   edi
c0106a26:	56                   	push   esi
c0106a27:	53                   	push   ebx
c0106a28:	83 ec 3c             	sub    esp,0x3c
c0106a2b:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106a2e:	8b 00                	mov    eax,DWORD PTR [eax]
c0106a30:	89 45 e0             	mov    DWORD PTR [ebp-0x20],eax
c0106a33:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106a36:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
c0106a39:	89 45 dc             	mov    DWORD PTR [ebp-0x24],eax
c0106a3c:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
c0106a3f:	89 04 24             	mov    DWORD PTR [esp],eax
c0106a42:	e8 9b c9 ff ff       	call   c01033e2 <lock_acquire>
c0106a47:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
c0106a4a:	8b 40 2c             	mov    eax,DWORD PTR [eax+0x2c]
c0106a4d:	83 e8 01             	sub    eax,0x1
c0106a50:	3b 45 0c             	cmp    eax,DWORD PTR [ebp+0xc]
c0106a53:	7d 0c                	jge    c0106a61 <viewUpdown+0x3f>
c0106a55:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
c0106a58:	8b 40 2c             	mov    eax,DWORD PTR [eax+0x2c]
c0106a5b:	83 e8 01             	sub    eax,0x1
c0106a5e:	89 45 0c             	mov    DWORD PTR [ebp+0xc],eax
c0106a61:	83 7d 0c 00          	cmp    DWORD PTR [ebp+0xc],0x0
c0106a65:	79 07                	jns    c0106a6e <viewUpdown+0x4c>
c0106a67:	c7 45 0c 00 00 00 00 	mov    DWORD PTR [ebp+0xc],0x0
c0106a6e:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106a71:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
c0106a74:	89 50 08             	mov    DWORD PTR [eax+0x8],edx
c0106a77:	8b 45 dc             	mov    eax,DWORD PTR [ebp-0x24]
c0106a7a:	3b 45 0c             	cmp    eax,DWORD PTR [ebp+0xc]
c0106a7d:	0f 8e 1c 01 00 00    	jle    c0106b9f <viewUpdown+0x17d>
c0106a83:	8b 45 dc             	mov    eax,DWORD PTR [ebp-0x24]
c0106a86:	89 45 e4             	mov    DWORD PTR [ebp-0x1c],eax
c0106a89:	eb 3d                	jmp    c0106ac8 <viewUpdown+0xa6>
c0106a8b:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
c0106a8e:	8b 40 24             	mov    eax,DWORD PTR [eax+0x24]
c0106a91:	8b 55 e4             	mov    edx,DWORD PTR [ebp-0x1c]
c0106a94:	c1 e2 02             	shl    edx,0x2
c0106a97:	01 c2                	add    edx,eax
c0106a99:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
c0106a9c:	8b 40 24             	mov    eax,DWORD PTR [eax+0x24]
c0106a9f:	8b 4d e4             	mov    ecx,DWORD PTR [ebp-0x1c]
c0106aa2:	83 e9 01             	sub    ecx,0x1
c0106aa5:	c1 e1 02             	shl    ecx,0x2
c0106aa8:	01 c8                	add    eax,ecx
c0106aaa:	8b 00                	mov    eax,DWORD PTR [eax]
c0106aac:	89 02                	mov    DWORD PTR [edx],eax
c0106aae:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
c0106ab1:	8b 40 24             	mov    eax,DWORD PTR [eax+0x24]
c0106ab4:	8b 55 e4             	mov    edx,DWORD PTR [ebp-0x1c]
c0106ab7:	c1 e2 02             	shl    edx,0x2
c0106aba:	01 d0                	add    eax,edx
c0106abc:	8b 00                	mov    eax,DWORD PTR [eax]
c0106abe:	8b 55 e4             	mov    edx,DWORD PTR [ebp-0x1c]
c0106ac1:	89 50 08             	mov    DWORD PTR [eax+0x8],edx
c0106ac4:	83 6d e4 01          	sub    DWORD PTR [ebp-0x1c],0x1
c0106ac8:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
c0106acb:	3b 45 0c             	cmp    eax,DWORD PTR [ebp+0xc]
c0106ace:	7f bb                	jg     c0106a8b <viewUpdown+0x69>
c0106ad0:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
c0106ad3:	8b 40 24             	mov    eax,DWORD PTR [eax+0x24]
c0106ad6:	8b 55 e4             	mov    edx,DWORD PTR [ebp-0x1c]
c0106ad9:	c1 e2 02             	shl    edx,0x2
c0106adc:	01 c2                	add    edx,eax
c0106ade:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106ae1:	89 02                	mov    DWORD PTR [edx],eax
c0106ae3:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106ae6:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
c0106ae9:	8d 70 01             	lea    esi,[eax+0x1]
c0106aec:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106aef:	8b 40 10             	mov    eax,DWORD PTR [eax+0x10]
c0106af2:	89 c2                	mov    edx,eax
c0106af4:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106af7:	8b 40 18             	mov    eax,DWORD PTR [eax+0x18]
c0106afa:	01 d0                	add    eax,edx
c0106afc:	89 c3                	mov    ebx,eax
c0106afe:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106b01:	8b 40 0c             	mov    eax,DWORD PTR [eax+0xc]
c0106b04:	89 c2                	mov    edx,eax
c0106b06:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106b09:	8b 40 14             	mov    eax,DWORD PTR [eax+0x14]
c0106b0c:	01 d0                	add    eax,edx
c0106b0e:	89 c1                	mov    ecx,eax
c0106b10:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106b13:	8b 50 10             	mov    edx,DWORD PTR [eax+0x10]
c0106b16:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106b19:	8b 40 0c             	mov    eax,DWORD PTR [eax+0xc]
c0106b1c:	89 74 24 14          	mov    DWORD PTR [esp+0x14],esi
c0106b20:	89 5c 24 10          	mov    DWORD PTR [esp+0x10],ebx
c0106b24:	89 4c 24 0c          	mov    DWORD PTR [esp+0xc],ecx
c0106b28:	89 54 24 08          	mov    DWORD PTR [esp+0x8],edx
c0106b2c:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c0106b30:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
c0106b33:	89 04 24             	mov    DWORD PTR [esp],eax
c0106b36:	e8 62 05 00 00       	call   c010709d <view_reflushmap>
c0106b3b:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106b3e:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
c0106b41:	8d 78 01             	lea    edi,[eax+0x1]
c0106b44:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106b47:	8b 40 10             	mov    eax,DWORD PTR [eax+0x10]
c0106b4a:	89 c2                	mov    edx,eax
c0106b4c:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106b4f:	8b 40 18             	mov    eax,DWORD PTR [eax+0x18]
c0106b52:	01 d0                	add    eax,edx
c0106b54:	89 c3                	mov    ebx,eax
c0106b56:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106b59:	8b 40 0c             	mov    eax,DWORD PTR [eax+0xc]
c0106b5c:	89 c2                	mov    edx,eax
c0106b5e:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106b61:	8b 40 14             	mov    eax,DWORD PTR [eax+0x14]
c0106b64:	01 d0                	add    eax,edx
c0106b66:	89 c1                	mov    ecx,eax
c0106b68:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106b6b:	8b 50 10             	mov    edx,DWORD PTR [eax+0x10]
c0106b6e:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106b71:	8b 40 0c             	mov    eax,DWORD PTR [eax+0xc]
c0106b74:	8b 75 dc             	mov    esi,DWORD PTR [ebp-0x24]
c0106b77:	89 74 24 18          	mov    DWORD PTR [esp+0x18],esi
c0106b7b:	89 7c 24 14          	mov    DWORD PTR [esp+0x14],edi
c0106b7f:	89 5c 24 10          	mov    DWORD PTR [esp+0x10],ebx
c0106b83:	89 4c 24 0c          	mov    DWORD PTR [esp+0xc],ecx
c0106b87:	89 54 24 08          	mov    DWORD PTR [esp+0x8],edx
c0106b8b:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c0106b8f:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
c0106b92:	89 04 24             	mov    DWORD PTR [esp],eax
c0106b95:	e8 42 03 00 00       	call   c0106edc <view_reflushsub>
c0106b9a:	e9 20 01 00 00       	jmp    c0106cbf <viewUpdown+0x29d>
c0106b9f:	8b 45 dc             	mov    eax,DWORD PTR [ebp-0x24]
c0106ba2:	3b 45 0c             	cmp    eax,DWORD PTR [ebp+0xc]
c0106ba5:	0f 8d 14 01 00 00    	jge    c0106cbf <viewUpdown+0x29d>
c0106bab:	8b 45 dc             	mov    eax,DWORD PTR [ebp-0x24]
c0106bae:	89 45 e4             	mov    DWORD PTR [ebp-0x1c],eax
c0106bb1:	eb 3d                	jmp    c0106bf0 <viewUpdown+0x1ce>
c0106bb3:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
c0106bb6:	8b 40 24             	mov    eax,DWORD PTR [eax+0x24]
c0106bb9:	8b 55 e4             	mov    edx,DWORD PTR [ebp-0x1c]
c0106bbc:	c1 e2 02             	shl    edx,0x2
c0106bbf:	01 c2                	add    edx,eax
c0106bc1:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
c0106bc4:	8b 40 24             	mov    eax,DWORD PTR [eax+0x24]
c0106bc7:	8b 4d e4             	mov    ecx,DWORD PTR [ebp-0x1c]
c0106bca:	83 c1 01             	add    ecx,0x1
c0106bcd:	c1 e1 02             	shl    ecx,0x2
c0106bd0:	01 c8                	add    eax,ecx
c0106bd2:	8b 00                	mov    eax,DWORD PTR [eax]
c0106bd4:	89 02                	mov    DWORD PTR [edx],eax
c0106bd6:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
c0106bd9:	8b 40 24             	mov    eax,DWORD PTR [eax+0x24]
c0106bdc:	8b 55 e4             	mov    edx,DWORD PTR [ebp-0x1c]
c0106bdf:	c1 e2 02             	shl    edx,0x2
c0106be2:	01 d0                	add    eax,edx
c0106be4:	8b 00                	mov    eax,DWORD PTR [eax]
c0106be6:	8b 55 e4             	mov    edx,DWORD PTR [ebp-0x1c]
c0106be9:	89 50 08             	mov    DWORD PTR [eax+0x8],edx
c0106bec:	83 45 e4 01          	add    DWORD PTR [ebp-0x1c],0x1
c0106bf0:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
c0106bf3:	3b 45 0c             	cmp    eax,DWORD PTR [ebp+0xc]
c0106bf6:	7c bb                	jl     c0106bb3 <viewUpdown+0x191>
c0106bf8:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
c0106bfb:	8b 40 24             	mov    eax,DWORD PTR [eax+0x24]
c0106bfe:	8b 55 e4             	mov    edx,DWORD PTR [ebp-0x1c]
c0106c01:	c1 e2 02             	shl    edx,0x2
c0106c04:	01 c2                	add    edx,eax
c0106c06:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106c09:	89 02                	mov    DWORD PTR [edx],eax
c0106c0b:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106c0e:	8b 70 08             	mov    esi,DWORD PTR [eax+0x8]
c0106c11:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106c14:	8b 40 10             	mov    eax,DWORD PTR [eax+0x10]
c0106c17:	89 c2                	mov    edx,eax
c0106c19:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106c1c:	8b 40 18             	mov    eax,DWORD PTR [eax+0x18]
c0106c1f:	01 d0                	add    eax,edx
c0106c21:	89 c3                	mov    ebx,eax
c0106c23:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106c26:	8b 40 0c             	mov    eax,DWORD PTR [eax+0xc]
c0106c29:	89 c2                	mov    edx,eax
c0106c2b:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106c2e:	8b 40 14             	mov    eax,DWORD PTR [eax+0x14]
c0106c31:	01 d0                	add    eax,edx
c0106c33:	89 c1                	mov    ecx,eax
c0106c35:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106c38:	8b 50 10             	mov    edx,DWORD PTR [eax+0x10]
c0106c3b:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106c3e:	8b 40 0c             	mov    eax,DWORD PTR [eax+0xc]
c0106c41:	89 74 24 14          	mov    DWORD PTR [esp+0x14],esi
c0106c45:	89 5c 24 10          	mov    DWORD PTR [esp+0x10],ebx
c0106c49:	89 4c 24 0c          	mov    DWORD PTR [esp+0xc],ecx
c0106c4d:	89 54 24 08          	mov    DWORD PTR [esp+0x8],edx
c0106c51:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c0106c55:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
c0106c58:	89 04 24             	mov    DWORD PTR [esp],eax
c0106c5b:	e8 3d 04 00 00       	call   c010709d <view_reflushmap>
c0106c60:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106c63:	8b 78 08             	mov    edi,DWORD PTR [eax+0x8]
c0106c66:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106c69:	8b 70 08             	mov    esi,DWORD PTR [eax+0x8]
c0106c6c:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106c6f:	8b 40 10             	mov    eax,DWORD PTR [eax+0x10]
c0106c72:	89 c2                	mov    edx,eax
c0106c74:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106c77:	8b 40 18             	mov    eax,DWORD PTR [eax+0x18]
c0106c7a:	01 d0                	add    eax,edx
c0106c7c:	89 c3                	mov    ebx,eax
c0106c7e:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106c81:	8b 40 0c             	mov    eax,DWORD PTR [eax+0xc]
c0106c84:	89 c2                	mov    edx,eax
c0106c86:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106c89:	8b 40 14             	mov    eax,DWORD PTR [eax+0x14]
c0106c8c:	01 d0                	add    eax,edx
c0106c8e:	89 c1                	mov    ecx,eax
c0106c90:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106c93:	8b 50 10             	mov    edx,DWORD PTR [eax+0x10]
c0106c96:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106c99:	8b 40 0c             	mov    eax,DWORD PTR [eax+0xc]
c0106c9c:	89 7c 24 18          	mov    DWORD PTR [esp+0x18],edi
c0106ca0:	89 74 24 14          	mov    DWORD PTR [esp+0x14],esi
c0106ca4:	89 5c 24 10          	mov    DWORD PTR [esp+0x10],ebx
c0106ca8:	89 4c 24 0c          	mov    DWORD PTR [esp+0xc],ecx
c0106cac:	89 54 24 08          	mov    DWORD PTR [esp+0x8],edx
c0106cb0:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c0106cb4:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
c0106cb7:	89 04 24             	mov    DWORD PTR [esp],eax
c0106cba:	e8 1d 02 00 00       	call   c0106edc <view_reflushsub>
c0106cbf:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
c0106cc2:	89 04 24             	mov    DWORD PTR [esp],eax
c0106cc5:	e8 9c c7 ff ff       	call   c0103466 <lock_release>
c0106cca:	83 c4 3c             	add    esp,0x3c
c0106ccd:	5b                   	pop    ebx
c0106cce:	5e                   	pop    esi
c0106ccf:	5f                   	pop    edi
c0106cd0:	5d                   	pop    ebp
c0106cd1:	c3                   	ret    

c0106cd2 <viewSlide>:
c0106cd2:	55                   	push   ebp
c0106cd3:	89 e5                	mov    ebp,esp
c0106cd5:	57                   	push   edi
c0106cd6:	56                   	push   esi
c0106cd7:	53                   	push   ebx
c0106cd8:	83 ec 4c             	sub    esp,0x4c
c0106cdb:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106cde:	8b 40 0c             	mov    eax,DWORD PTR [eax+0xc]
c0106ce1:	89 45 e4             	mov    DWORD PTR [ebp-0x1c],eax
c0106ce4:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106ce7:	8b 40 10             	mov    eax,DWORD PTR [eax+0x10]
c0106cea:	89 45 e0             	mov    DWORD PTR [ebp-0x20],eax
c0106ced:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106cf0:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
c0106cf3:	89 50 0c             	mov    DWORD PTR [eax+0xc],edx
c0106cf6:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106cf9:	8b 55 10             	mov    edx,DWORD PTR [ebp+0x10]
c0106cfc:	89 50 10             	mov    DWORD PTR [eax+0x10],edx
c0106cff:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106d02:	8b 50 18             	mov    edx,DWORD PTR [eax+0x18]
c0106d05:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
c0106d08:	01 d0                	add    eax,edx
c0106d0a:	89 c1                	mov    ecx,eax
c0106d0c:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106d0f:	8b 50 14             	mov    edx,DWORD PTR [eax+0x14]
c0106d12:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
c0106d15:	01 d0                	add    eax,edx
c0106d17:	89 c2                	mov    edx,eax
c0106d19:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106d1c:	8b 00                	mov    eax,DWORD PTR [eax]
c0106d1e:	c7 44 24 14 00 00 00 	mov    DWORD PTR [esp+0x14],0x0
c0106d25:	00 
c0106d26:	89 4c 24 10          	mov    DWORD PTR [esp+0x10],ecx
c0106d2a:	89 54 24 0c          	mov    DWORD PTR [esp+0xc],edx
c0106d2e:	8b 55 e0             	mov    edx,DWORD PTR [ebp-0x20]
c0106d31:	89 54 24 08          	mov    DWORD PTR [esp+0x8],edx
c0106d35:	8b 55 e4             	mov    edx,DWORD PTR [ebp-0x1c]
c0106d38:	89 54 24 04          	mov    DWORD PTR [esp+0x4],edx
c0106d3c:	89 04 24             	mov    DWORD PTR [esp],eax
c0106d3f:	e8 59 03 00 00       	call   c010709d <view_reflushmap>
c0106d44:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106d47:	8b 78 08             	mov    edi,DWORD PTR [eax+0x8]
c0106d4a:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106d4d:	8b 40 10             	mov    eax,DWORD PTR [eax+0x10]
c0106d50:	89 c2                	mov    edx,eax
c0106d52:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106d55:	8b 40 18             	mov    eax,DWORD PTR [eax+0x18]
c0106d58:	01 d0                	add    eax,edx
c0106d5a:	89 c6                	mov    esi,eax
c0106d5c:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106d5f:	8b 40 0c             	mov    eax,DWORD PTR [eax+0xc]
c0106d62:	89 c2                	mov    edx,eax
c0106d64:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106d67:	8b 40 14             	mov    eax,DWORD PTR [eax+0x14]
c0106d6a:	01 d0                	add    eax,edx
c0106d6c:	89 c3                	mov    ebx,eax
c0106d6e:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106d71:	8b 48 10             	mov    ecx,DWORD PTR [eax+0x10]
c0106d74:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106d77:	8b 50 0c             	mov    edx,DWORD PTR [eax+0xc]
c0106d7a:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106d7d:	8b 00                	mov    eax,DWORD PTR [eax]
c0106d7f:	89 7c 24 14          	mov    DWORD PTR [esp+0x14],edi
c0106d83:	89 74 24 10          	mov    DWORD PTR [esp+0x10],esi
c0106d87:	89 5c 24 0c          	mov    DWORD PTR [esp+0xc],ebx
c0106d8b:	89 4c 24 08          	mov    DWORD PTR [esp+0x8],ecx
c0106d8f:	89 54 24 04          	mov    DWORD PTR [esp+0x4],edx
c0106d93:	89 04 24             	mov    DWORD PTR [esp],eax
c0106d96:	e8 02 03 00 00       	call   c010709d <view_reflushmap>
c0106d9b:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106d9e:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
c0106da1:	8d 58 ff             	lea    ebx,[eax-0x1]
c0106da4:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106da7:	8b 50 18             	mov    edx,DWORD PTR [eax+0x18]
c0106daa:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
c0106dad:	01 d0                	add    eax,edx
c0106daf:	89 c1                	mov    ecx,eax
c0106db1:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106db4:	8b 50 14             	mov    edx,DWORD PTR [eax+0x14]
c0106db7:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
c0106dba:	01 d0                	add    eax,edx
c0106dbc:	89 c2                	mov    edx,eax
c0106dbe:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106dc1:	8b 00                	mov    eax,DWORD PTR [eax]
c0106dc3:	89 5c 24 18          	mov    DWORD PTR [esp+0x18],ebx
c0106dc7:	c7 44 24 14 00 00 00 	mov    DWORD PTR [esp+0x14],0x0
c0106dce:	00 
c0106dcf:	89 4c 24 10          	mov    DWORD PTR [esp+0x10],ecx
c0106dd3:	89 54 24 0c          	mov    DWORD PTR [esp+0xc],edx
c0106dd7:	8b 55 e0             	mov    edx,DWORD PTR [ebp-0x20]
c0106dda:	89 54 24 08          	mov    DWORD PTR [esp+0x8],edx
c0106dde:	8b 55 e4             	mov    edx,DWORD PTR [ebp-0x1c]
c0106de1:	89 54 24 04          	mov    DWORD PTR [esp+0x4],edx
c0106de5:	89 04 24             	mov    DWORD PTR [esp],eax
c0106de8:	e8 ef 00 00 00       	call   c0106edc <view_reflushsub>
c0106ded:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106df0:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
c0106df3:	89 45 d4             	mov    DWORD PTR [ebp-0x2c],eax
c0106df6:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106df9:	8b 78 08             	mov    edi,DWORD PTR [eax+0x8]
c0106dfc:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106dff:	8b 40 10             	mov    eax,DWORD PTR [eax+0x10]
c0106e02:	89 c2                	mov    edx,eax
c0106e04:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106e07:	8b 40 18             	mov    eax,DWORD PTR [eax+0x18]
c0106e0a:	01 d0                	add    eax,edx
c0106e0c:	89 c6                	mov    esi,eax
c0106e0e:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106e11:	8b 40 0c             	mov    eax,DWORD PTR [eax+0xc]
c0106e14:	89 c2                	mov    edx,eax
c0106e16:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106e19:	8b 40 14             	mov    eax,DWORD PTR [eax+0x14]
c0106e1c:	01 d0                	add    eax,edx
c0106e1e:	89 c3                	mov    ebx,eax
c0106e20:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106e23:	8b 48 10             	mov    ecx,DWORD PTR [eax+0x10]
c0106e26:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106e29:	8b 50 0c             	mov    edx,DWORD PTR [eax+0xc]
c0106e2c:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106e2f:	8b 00                	mov    eax,DWORD PTR [eax]
c0106e31:	89 45 d0             	mov    DWORD PTR [ebp-0x30],eax
c0106e34:	8b 45 d4             	mov    eax,DWORD PTR [ebp-0x2c]
c0106e37:	89 44 24 18          	mov    DWORD PTR [esp+0x18],eax
c0106e3b:	89 7c 24 14          	mov    DWORD PTR [esp+0x14],edi
c0106e3f:	89 74 24 10          	mov    DWORD PTR [esp+0x10],esi
c0106e43:	89 5c 24 0c          	mov    DWORD PTR [esp+0xc],ebx
c0106e47:	89 4c 24 08          	mov    DWORD PTR [esp+0x8],ecx
c0106e4b:	89 54 24 04          	mov    DWORD PTR [esp+0x4],edx
c0106e4f:	8b 45 d0             	mov    eax,DWORD PTR [ebp-0x30]
c0106e52:	89 04 24             	mov    DWORD PTR [esp],eax
c0106e55:	e8 82 00 00 00       	call   c0106edc <view_reflushsub>
c0106e5a:	83 c4 4c             	add    esp,0x4c
c0106e5d:	5b                   	pop    ebx
c0106e5e:	5e                   	pop    esi
c0106e5f:	5f                   	pop    edi
c0106e60:	5d                   	pop    ebp
c0106e61:	c3                   	ret    

c0106e62 <view_reflush>:
c0106e62:	55                   	push   ebp
c0106e63:	89 e5                	mov    ebp,esp
c0106e65:	57                   	push   edi
c0106e66:	56                   	push   esi
c0106e67:	53                   	push   ebx
c0106e68:	83 ec 3c             	sub    esp,0x3c
c0106e6b:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106e6e:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
c0106e71:	89 45 e4             	mov    DWORD PTR [ebp-0x1c],eax
c0106e74:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106e77:	8b 78 08             	mov    edi,DWORD PTR [eax+0x8]
c0106e7a:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106e7d:	8b 40 10             	mov    eax,DWORD PTR [eax+0x10]
c0106e80:	89 c6                	mov    esi,eax
c0106e82:	03 75 18             	add    esi,DWORD PTR [ebp+0x18]
c0106e85:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106e88:	8b 40 0c             	mov    eax,DWORD PTR [eax+0xc]
c0106e8b:	89 c3                	mov    ebx,eax
c0106e8d:	03 5d 14             	add    ebx,DWORD PTR [ebp+0x14]
c0106e90:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106e93:	8b 40 10             	mov    eax,DWORD PTR [eax+0x10]
c0106e96:	89 c1                	mov    ecx,eax
c0106e98:	03 4d 10             	add    ecx,DWORD PTR [ebp+0x10]
c0106e9b:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106e9e:	8b 40 0c             	mov    eax,DWORD PTR [eax+0xc]
c0106ea1:	89 c2                	mov    edx,eax
c0106ea3:	03 55 0c             	add    edx,DWORD PTR [ebp+0xc]
c0106ea6:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106ea9:	8b 00                	mov    eax,DWORD PTR [eax]
c0106eab:	89 45 e0             	mov    DWORD PTR [ebp-0x20],eax
c0106eae:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
c0106eb1:	89 44 24 18          	mov    DWORD PTR [esp+0x18],eax
c0106eb5:	89 7c 24 14          	mov    DWORD PTR [esp+0x14],edi
c0106eb9:	89 74 24 10          	mov    DWORD PTR [esp+0x10],esi
c0106ebd:	89 5c 24 0c          	mov    DWORD PTR [esp+0xc],ebx
c0106ec1:	89 4c 24 08          	mov    DWORD PTR [esp+0x8],ecx
c0106ec5:	89 54 24 04          	mov    DWORD PTR [esp+0x4],edx
c0106ec9:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
c0106ecc:	89 04 24             	mov    DWORD PTR [esp],eax
c0106ecf:	e8 08 00 00 00       	call   c0106edc <view_reflushsub>
c0106ed4:	83 c4 3c             	add    esp,0x3c
c0106ed7:	5b                   	pop    ebx
c0106ed8:	5e                   	pop    esi
c0106ed9:	5f                   	pop    edi
c0106eda:	5d                   	pop    ebp
c0106edb:	c3                   	ret    

c0106edc <view_reflushsub>:
c0106edc:	55                   	push   ebp
c0106edd:	89 e5                	mov    ebp,esp
c0106edf:	53                   	push   ebx
c0106ee0:	83 ec 44             	sub    esp,0x44
c0106ee3:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106ee6:	89 04 24             	mov    DWORD PTR [esp],eax
c0106ee9:	e8 f4 c4 ff ff       	call   c01033e2 <lock_acquire>
c0106eee:	83 7d 0c 00          	cmp    DWORD PTR [ebp+0xc],0x0
c0106ef2:	79 07                	jns    c0106efb <view_reflushsub+0x1f>
c0106ef4:	c7 45 0c 00 00 00 00 	mov    DWORD PTR [ebp+0xc],0x0
c0106efb:	83 7d 10 00          	cmp    DWORD PTR [ebp+0x10],0x0
c0106eff:	79 07                	jns    c0106f08 <view_reflushsub+0x2c>
c0106f01:	c7 45 10 00 00 00 00 	mov    DWORD PTR [ebp+0x10],0x0
c0106f08:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106f0b:	8b 40 34             	mov    eax,DWORD PTR [eax+0x34]
c0106f0e:	3b 45 14             	cmp    eax,DWORD PTR [ebp+0x14]
c0106f11:	7d 09                	jge    c0106f1c <view_reflushsub+0x40>
c0106f13:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106f16:	8b 40 34             	mov    eax,DWORD PTR [eax+0x34]
c0106f19:	89 45 14             	mov    DWORD PTR [ebp+0x14],eax
c0106f1c:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106f1f:	8b 40 38             	mov    eax,DWORD PTR [eax+0x38]
c0106f22:	3b 45 18             	cmp    eax,DWORD PTR [ebp+0x18]
c0106f25:	7d 09                	jge    c0106f30 <view_reflushsub+0x54>
c0106f27:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106f2a:	8b 40 38             	mov    eax,DWORD PTR [eax+0x38]
c0106f2d:	89 45 18             	mov    DWORD PTR [ebp+0x18],eax
c0106f30:	8b 45 1c             	mov    eax,DWORD PTR [ebp+0x1c]
c0106f33:	89 45 dc             	mov    DWORD PTR [ebp-0x24],eax
c0106f36:	e9 45 01 00 00       	jmp    c0107080 <view_reflushsub+0x1a4>
c0106f3b:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106f3e:	8b 40 24             	mov    eax,DWORD PTR [eax+0x24]
c0106f41:	8b 55 dc             	mov    edx,DWORD PTR [ebp-0x24]
c0106f44:	c1 e2 02             	shl    edx,0x2
c0106f47:	01 d0                	add    eax,edx
c0106f49:	8b 00                	mov    eax,DWORD PTR [eax]
c0106f4b:	89 45 d8             	mov    DWORD PTR [ebp-0x28],eax
c0106f4e:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
c0106f51:	8b 40 0c             	mov    eax,DWORD PTR [eax+0xc]
c0106f54:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
c0106f57:	89 d1                	mov    ecx,edx
c0106f59:	29 c1                	sub    ecx,eax
c0106f5b:	89 c8                	mov    eax,ecx
c0106f5d:	89 45 ec             	mov    DWORD PTR [ebp-0x14],eax
c0106f60:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
c0106f63:	8b 40 10             	mov    eax,DWORD PTR [eax+0x10]
c0106f66:	8b 55 10             	mov    edx,DWORD PTR [ebp+0x10]
c0106f69:	89 d1                	mov    ecx,edx
c0106f6b:	29 c1                	sub    ecx,eax
c0106f6d:	89 c8                	mov    eax,ecx
c0106f6f:	89 45 e8             	mov    DWORD PTR [ebp-0x18],eax
c0106f72:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
c0106f75:	8b 40 0c             	mov    eax,DWORD PTR [eax+0xc]
c0106f78:	8b 55 14             	mov    edx,DWORD PTR [ebp+0x14]
c0106f7b:	89 d1                	mov    ecx,edx
c0106f7d:	29 c1                	sub    ecx,eax
c0106f7f:	89 c8                	mov    eax,ecx
c0106f81:	89 45 e4             	mov    DWORD PTR [ebp-0x1c],eax
c0106f84:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
c0106f87:	8b 40 10             	mov    eax,DWORD PTR [eax+0x10]
c0106f8a:	8b 55 18             	mov    edx,DWORD PTR [ebp+0x18]
c0106f8d:	89 d1                	mov    ecx,edx
c0106f8f:	29 c1                	sub    ecx,eax
c0106f91:	89 c8                	mov    eax,ecx
c0106f93:	89 45 e0             	mov    DWORD PTR [ebp-0x20],eax
c0106f96:	83 7d ec 00          	cmp    DWORD PTR [ebp-0x14],0x0
c0106f9a:	79 07                	jns    c0106fa3 <view_reflushsub+0xc7>
c0106f9c:	c7 45 ec 00 00 00 00 	mov    DWORD PTR [ebp-0x14],0x0
c0106fa3:	83 7d e8 00          	cmp    DWORD PTR [ebp-0x18],0x0
c0106fa7:	79 07                	jns    c0106fb0 <view_reflushsub+0xd4>
c0106fa9:	c7 45 e8 00 00 00 00 	mov    DWORD PTR [ebp-0x18],0x0
c0106fb0:	8b 55 e4             	mov    edx,DWORD PTR [ebp-0x1c]
c0106fb3:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
c0106fb6:	8b 40 14             	mov    eax,DWORD PTR [eax+0x14]
c0106fb9:	39 c2                	cmp    edx,eax
c0106fbb:	76 09                	jbe    c0106fc6 <view_reflushsub+0xea>
c0106fbd:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
c0106fc0:	8b 40 14             	mov    eax,DWORD PTR [eax+0x14]
c0106fc3:	89 45 e4             	mov    DWORD PTR [ebp-0x1c],eax
c0106fc6:	8b 55 e0             	mov    edx,DWORD PTR [ebp-0x20]
c0106fc9:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
c0106fcc:	8b 40 18             	mov    eax,DWORD PTR [eax+0x18]
c0106fcf:	39 c2                	cmp    edx,eax
c0106fd1:	76 09                	jbe    c0106fdc <view_reflushsub+0x100>
c0106fd3:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
c0106fd6:	8b 40 18             	mov    eax,DWORD PTR [eax+0x18]
c0106fd9:	89 45 e0             	mov    DWORD PTR [ebp-0x20],eax
c0106fdc:	8b 45 e8             	mov    eax,DWORD PTR [ebp-0x18]
c0106fdf:	89 45 f0             	mov    DWORD PTR [ebp-0x10],eax
c0106fe2:	e9 89 00 00 00       	jmp    c0107070 <view_reflushsub+0x194>
c0106fe7:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
c0106fea:	8b 40 10             	mov    eax,DWORD PTR [eax+0x10]
c0106fed:	03 45 f0             	add    eax,DWORD PTR [ebp-0x10]
c0106ff0:	89 45 d4             	mov    DWORD PTR [ebp-0x2c],eax
c0106ff3:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
c0106ff6:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
c0106ff9:	eb 69                	jmp    c0107064 <view_reflushsub+0x188>
c0106ffb:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
c0106ffe:	8b 40 0c             	mov    eax,DWORD PTR [eax+0xc]
c0107001:	03 45 f4             	add    eax,DWORD PTR [ebp-0xc]
c0107004:	89 45 d0             	mov    DWORD PTR [ebp-0x30],eax
c0107007:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c010700a:	8b 50 3c             	mov    edx,DWORD PTR [eax+0x3c]
c010700d:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0107010:	8b 40 34             	mov    eax,DWORD PTR [eax+0x34]
c0107013:	0f af 45 d4          	imul   eax,DWORD PTR [ebp-0x2c]
c0107017:	03 45 d0             	add    eax,DWORD PTR [ebp-0x30]
c010701a:	c1 e0 02             	shl    eax,0x2
c010701d:	01 d0                	add    eax,edx
c010701f:	8b 10                	mov    edx,DWORD PTR [eax]
c0107021:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
c0107024:	39 c2                	cmp    edx,eax
c0107026:	75 38                	jne    c0107060 <view_reflushsub+0x184>
c0107028:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c010702b:	8b 50 30             	mov    edx,DWORD PTR [eax+0x30]
c010702e:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0107031:	8b 40 34             	mov    eax,DWORD PTR [eax+0x34]
c0107034:	0f af 45 d4          	imul   eax,DWORD PTR [ebp-0x2c]
c0107038:	03 45 d0             	add    eax,DWORD PTR [ebp-0x30]
c010703b:	c1 e0 02             	shl    eax,0x2
c010703e:	01 c2                	add    edx,eax
c0107040:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
c0107043:	8b 48 04             	mov    ecx,DWORD PTR [eax+0x4]
c0107046:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
c0107049:	8b 58 14             	mov    ebx,DWORD PTR [eax+0x14]
c010704c:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c010704f:	0f af d8             	imul   ebx,eax
c0107052:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0107055:	01 d8                	add    eax,ebx
c0107057:	c1 e0 02             	shl    eax,0x2
c010705a:	01 c8                	add    eax,ecx
c010705c:	8b 00                	mov    eax,DWORD PTR [eax]
c010705e:	89 02                	mov    DWORD PTR [edx],eax
c0107060:	83 45 f4 01          	add    DWORD PTR [ebp-0xc],0x1
c0107064:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0107067:	3b 45 e4             	cmp    eax,DWORD PTR [ebp-0x1c]
c010706a:	7c 8f                	jl     c0106ffb <view_reflushsub+0x11f>
c010706c:	83 45 f0 01          	add    DWORD PTR [ebp-0x10],0x1
c0107070:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c0107073:	3b 45 e0             	cmp    eax,DWORD PTR [ebp-0x20]
c0107076:	0f 8c 6b ff ff ff    	jl     c0106fe7 <view_reflushsub+0x10b>
c010707c:	83 45 dc 01          	add    DWORD PTR [ebp-0x24],0x1
c0107080:	8b 45 dc             	mov    eax,DWORD PTR [ebp-0x24]
c0107083:	3b 45 20             	cmp    eax,DWORD PTR [ebp+0x20]
c0107086:	0f 8e af fe ff ff    	jle    c0106f3b <view_reflushsub+0x5f>
c010708c:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c010708f:	89 04 24             	mov    DWORD PTR [esp],eax
c0107092:	e8 cf c3 ff ff       	call   c0103466 <lock_release>
c0107097:	83 c4 44             	add    esp,0x44
c010709a:	5b                   	pop    ebx
c010709b:	5d                   	pop    ebp
c010709c:	c3                   	ret    

c010709d <view_reflushmap>:
c010709d:	55                   	push   ebp
c010709e:	89 e5                	mov    ebp,esp
c01070a0:	83 ec 48             	sub    esp,0x48
c01070a3:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01070a6:	89 04 24             	mov    DWORD PTR [esp],eax
c01070a9:	e8 34 c3 ff ff       	call   c01033e2 <lock_acquire>
c01070ae:	83 7d 0c 00          	cmp    DWORD PTR [ebp+0xc],0x0
c01070b2:	79 07                	jns    c01070bb <view_reflushmap+0x1e>
c01070b4:	c7 45 0c 00 00 00 00 	mov    DWORD PTR [ebp+0xc],0x0
c01070bb:	83 7d 10 00          	cmp    DWORD PTR [ebp+0x10],0x0
c01070bf:	79 07                	jns    c01070c8 <view_reflushmap+0x2b>
c01070c1:	c7 45 10 00 00 00 00 	mov    DWORD PTR [ebp+0x10],0x0
c01070c8:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01070cb:	8b 40 34             	mov    eax,DWORD PTR [eax+0x34]
c01070ce:	3b 45 14             	cmp    eax,DWORD PTR [ebp+0x14]
c01070d1:	7d 09                	jge    c01070dc <view_reflushmap+0x3f>
c01070d3:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01070d6:	8b 40 34             	mov    eax,DWORD PTR [eax+0x34]
c01070d9:	89 45 14             	mov    DWORD PTR [ebp+0x14],eax
c01070dc:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01070df:	8b 40 38             	mov    eax,DWORD PTR [eax+0x38]
c01070e2:	3b 45 18             	cmp    eax,DWORD PTR [ebp+0x18]
c01070e5:	7d 09                	jge    c01070f0 <view_reflushmap+0x53>
c01070e7:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01070ea:	8b 40 38             	mov    eax,DWORD PTR [eax+0x38]
c01070ed:	89 45 18             	mov    DWORD PTR [ebp+0x18],eax
c01070f0:	8b 45 1c             	mov    eax,DWORD PTR [ebp+0x1c]
c01070f3:	89 45 dc             	mov    DWORD PTR [ebp-0x24],eax
c01070f6:	e9 2c 01 00 00       	jmp    c0107227 <view_reflushmap+0x18a>
c01070fb:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01070fe:	8b 40 24             	mov    eax,DWORD PTR [eax+0x24]
c0107101:	8b 55 dc             	mov    edx,DWORD PTR [ebp-0x24]
c0107104:	c1 e2 02             	shl    edx,0x2
c0107107:	01 d0                	add    eax,edx
c0107109:	8b 00                	mov    eax,DWORD PTR [eax]
c010710b:	89 45 d8             	mov    DWORD PTR [ebp-0x28],eax
c010710e:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
c0107111:	8b 40 0c             	mov    eax,DWORD PTR [eax+0xc]
c0107114:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
c0107117:	89 d1                	mov    ecx,edx
c0107119:	29 c1                	sub    ecx,eax
c010711b:	89 c8                	mov    eax,ecx
c010711d:	89 45 ec             	mov    DWORD PTR [ebp-0x14],eax
c0107120:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
c0107123:	8b 40 10             	mov    eax,DWORD PTR [eax+0x10]
c0107126:	8b 55 10             	mov    edx,DWORD PTR [ebp+0x10]
c0107129:	89 d1                	mov    ecx,edx
c010712b:	29 c1                	sub    ecx,eax
c010712d:	89 c8                	mov    eax,ecx
c010712f:	89 45 e8             	mov    DWORD PTR [ebp-0x18],eax
c0107132:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
c0107135:	8b 40 0c             	mov    eax,DWORD PTR [eax+0xc]
c0107138:	8b 55 14             	mov    edx,DWORD PTR [ebp+0x14]
c010713b:	89 d1                	mov    ecx,edx
c010713d:	29 c1                	sub    ecx,eax
c010713f:	89 c8                	mov    eax,ecx
c0107141:	89 45 e4             	mov    DWORD PTR [ebp-0x1c],eax
c0107144:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
c0107147:	8b 40 10             	mov    eax,DWORD PTR [eax+0x10]
c010714a:	8b 55 18             	mov    edx,DWORD PTR [ebp+0x18]
c010714d:	89 d1                	mov    ecx,edx
c010714f:	29 c1                	sub    ecx,eax
c0107151:	89 c8                	mov    eax,ecx
c0107153:	89 45 e0             	mov    DWORD PTR [ebp-0x20],eax
c0107156:	83 7d ec 00          	cmp    DWORD PTR [ebp-0x14],0x0
c010715a:	79 07                	jns    c0107163 <view_reflushmap+0xc6>
c010715c:	c7 45 ec 00 00 00 00 	mov    DWORD PTR [ebp-0x14],0x0
c0107163:	83 7d e8 00          	cmp    DWORD PTR [ebp-0x18],0x0
c0107167:	79 07                	jns    c0107170 <view_reflushmap+0xd3>
c0107169:	c7 45 e8 00 00 00 00 	mov    DWORD PTR [ebp-0x18],0x0
c0107170:	8b 55 e4             	mov    edx,DWORD PTR [ebp-0x1c]
c0107173:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
c0107176:	8b 40 14             	mov    eax,DWORD PTR [eax+0x14]
c0107179:	39 c2                	cmp    edx,eax
c010717b:	76 09                	jbe    c0107186 <view_reflushmap+0xe9>
c010717d:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
c0107180:	8b 40 14             	mov    eax,DWORD PTR [eax+0x14]
c0107183:	89 45 e4             	mov    DWORD PTR [ebp-0x1c],eax
c0107186:	8b 55 e0             	mov    edx,DWORD PTR [ebp-0x20]
c0107189:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
c010718c:	8b 40 18             	mov    eax,DWORD PTR [eax+0x18]
c010718f:	39 c2                	cmp    edx,eax
c0107191:	76 09                	jbe    c010719c <view_reflushmap+0xff>
c0107193:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
c0107196:	8b 40 18             	mov    eax,DWORD PTR [eax+0x18]
c0107199:	89 45 e0             	mov    DWORD PTR [ebp-0x20],eax
c010719c:	8b 45 e8             	mov    eax,DWORD PTR [ebp-0x18]
c010719f:	89 45 f0             	mov    DWORD PTR [ebp-0x10],eax
c01071a2:	eb 77                	jmp    c010721b <view_reflushmap+0x17e>
c01071a4:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
c01071a7:	8b 40 10             	mov    eax,DWORD PTR [eax+0x10]
c01071aa:	03 45 f0             	add    eax,DWORD PTR [ebp-0x10]
c01071ad:	89 45 d4             	mov    DWORD PTR [ebp-0x2c],eax
c01071b0:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
c01071b3:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
c01071b6:	eb 57                	jmp    c010720f <view_reflushmap+0x172>
c01071b8:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
c01071bb:	8b 40 0c             	mov    eax,DWORD PTR [eax+0xc]
c01071be:	03 45 f4             	add    eax,DWORD PTR [ebp-0xc]
c01071c1:	89 45 d0             	mov    DWORD PTR [ebp-0x30],eax
c01071c4:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
c01071c7:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
c01071ca:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
c01071cd:	8b 48 14             	mov    ecx,DWORD PTR [eax+0x14]
c01071d0:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c01071d3:	0f af c8             	imul   ecx,eax
c01071d6:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c01071d9:	01 c8                	add    eax,ecx
c01071db:	c1 e0 02             	shl    eax,0x2
c01071de:	01 d0                	add    eax,edx
c01071e0:	8b 00                	mov    eax,DWORD PTR [eax]
c01071e2:	25 00 00 00 ff       	and    eax,0xff000000
c01071e7:	3d 00 00 00 ff       	cmp    eax,0xff000000
c01071ec:	74 1d                	je     c010720b <view_reflushmap+0x16e>
c01071ee:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01071f1:	8b 50 3c             	mov    edx,DWORD PTR [eax+0x3c]
c01071f4:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01071f7:	8b 40 34             	mov    eax,DWORD PTR [eax+0x34]
c01071fa:	0f af 45 d4          	imul   eax,DWORD PTR [ebp-0x2c]
c01071fe:	03 45 d0             	add    eax,DWORD PTR [ebp-0x30]
c0107201:	c1 e0 02             	shl    eax,0x2
c0107204:	01 c2                	add    edx,eax
c0107206:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
c0107209:	89 02                	mov    DWORD PTR [edx],eax
c010720b:	83 45 f4 01          	add    DWORD PTR [ebp-0xc],0x1
c010720f:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0107212:	3b 45 e4             	cmp    eax,DWORD PTR [ebp-0x1c]
c0107215:	7c a1                	jl     c01071b8 <view_reflushmap+0x11b>
c0107217:	83 45 f0 01          	add    DWORD PTR [ebp-0x10],0x1
c010721b:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c010721e:	3b 45 e0             	cmp    eax,DWORD PTR [ebp-0x20]
c0107221:	7c 81                	jl     c01071a4 <view_reflushmap+0x107>
c0107223:	83 45 dc 01          	add    DWORD PTR [ebp-0x24],0x1
c0107227:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c010722a:	8b 40 2c             	mov    eax,DWORD PTR [eax+0x2c]
c010722d:	3b 45 dc             	cmp    eax,DWORD PTR [ebp-0x24]
c0107230:	0f 8f c5 fe ff ff    	jg     c01070fb <view_reflushmap+0x5e>
c0107236:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0107239:	89 04 24             	mov    DWORD PTR [esp],eax
c010723c:	e8 25 c2 ff ff       	call   c0103466 <lock_release>
c0107241:	c9                   	leave  
c0107242:	c3                   	ret    

c0107243 <viewFill>:
c0107243:	55                   	push   ebp
c0107244:	89 e5                	mov    ebp,esp
c0107246:	83 ec 10             	sub    esp,0x10
c0107249:	b8 14 7c 00 c0       	mov    eax,0xc0007c14
c010724e:	8b 00                	mov    eax,DWORD PTR [eax]
c0107250:	83 f8 01             	cmp    eax,0x1
c0107253:	75 52                	jne    c01072a7 <viewFill+0x64>
c0107255:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
c0107258:	25 00 00 00 ff       	and    eax,0xff000000
c010725d:	3d 00 00 00 ff       	cmp    eax,0xff000000
c0107262:	74 46                	je     c01072aa <viewFill+0x67>
c0107264:	8b 45 18             	mov    eax,DWORD PTR [ebp+0x18]
c0107267:	89 45 f8             	mov    DWORD PTR [ebp-0x8],eax
c010726a:	eb 31                	jmp    c010729d <viewFill+0x5a>
c010726c:	8b 45 14             	mov    eax,DWORD PTR [ebp+0x14]
c010726f:	89 45 fc             	mov    DWORD PTR [ebp-0x4],eax
c0107272:	eb 1d                	jmp    c0107291 <viewFill+0x4e>
c0107274:	8b 45 f8             	mov    eax,DWORD PTR [ebp-0x8]
c0107277:	0f af 45 0c          	imul   eax,DWORD PTR [ebp+0xc]
c010727b:	89 c2                	mov    edx,eax
c010727d:	8b 45 fc             	mov    eax,DWORD PTR [ebp-0x4]
c0107280:	01 d0                	add    eax,edx
c0107282:	c1 e0 02             	shl    eax,0x2
c0107285:	03 45 08             	add    eax,DWORD PTR [ebp+0x8]
c0107288:	8b 55 10             	mov    edx,DWORD PTR [ebp+0x10]
c010728b:	89 10                	mov    DWORD PTR [eax],edx
c010728d:	83 45 fc 01          	add    DWORD PTR [ebp-0x4],0x1
c0107291:	8b 45 fc             	mov    eax,DWORD PTR [ebp-0x4]
c0107294:	3b 45 1c             	cmp    eax,DWORD PTR [ebp+0x1c]
c0107297:	7e db                	jle    c0107274 <viewFill+0x31>
c0107299:	83 45 f8 01          	add    DWORD PTR [ebp-0x8],0x1
c010729d:	8b 45 f8             	mov    eax,DWORD PTR [ebp-0x8]
c01072a0:	3b 45 20             	cmp    eax,DWORD PTR [ebp+0x20]
c01072a3:	7e c7                	jle    c010726c <viewFill+0x29>
c01072a5:	eb 03                	jmp    c01072aa <viewFill+0x67>
c01072a7:	90                   	nop
c01072a8:	eb 01                	jmp    c01072ab <viewFill+0x68>
c01072aa:	90                   	nop
c01072ab:	c9                   	leave  
c01072ac:	c3                   	ret    

c01072ad <vput_char>:
c01072ad:	55                   	push   ebp
c01072ae:	89 e5                	mov    ebp,esp
c01072b0:	83 ec 24             	sub    esp,0x24
c01072b3:	8b 45 1c             	mov    eax,DWORD PTR [ebp+0x1c]
c01072b6:	88 45 dc             	mov    BYTE PTR [ebp-0x24],al
c01072b9:	0f be 45 dc          	movsx  eax,BYTE PTR [ebp-0x24]
c01072bd:	89 45 f8             	mov    DWORD PTR [ebp-0x8],eax
c01072c0:	8b 45 f8             	mov    eax,DWORD PTR [ebp-0x8]
c01072c3:	c1 e0 04             	shl    eax,0x4
c01072c6:	05 80 79 10 c0       	add    eax,0xc0107980
c01072cb:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
c01072ce:	b8 14 7c 00 c0       	mov    eax,0xc0007c14
c01072d3:	8b 00                	mov    eax,DWORD PTR [eax]
c01072d5:	83 f8 01             	cmp    eax,0x1
c01072d8:	0f 85 e8 00 00 00    	jne    c01073c6 <vput_char+0x119>
c01072de:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [ebp-0x4],0x0
c01072e5:	e9 d2 00 00 00       	jmp    c01073bc <vput_char+0x10f>
c01072ea:	8b 45 fc             	mov    eax,DWORD PTR [ebp-0x4]
c01072ed:	8b 55 14             	mov    edx,DWORD PTR [ebp+0x14]
c01072f0:	01 d0                	add    eax,edx
c01072f2:	0f af 45 0c          	imul   eax,DWORD PTR [ebp+0xc]
c01072f6:	03 45 10             	add    eax,DWORD PTR [ebp+0x10]
c01072f9:	c1 e0 02             	shl    eax,0x2
c01072fc:	03 45 08             	add    eax,DWORD PTR [ebp+0x8]
c01072ff:	89 45 f0             	mov    DWORD PTR [ebp-0x10],eax
c0107302:	8b 45 fc             	mov    eax,DWORD PTR [ebp-0x4]
c0107305:	03 45 f4             	add    eax,DWORD PTR [ebp-0xc]
c0107308:	0f b6 00             	movzx  eax,BYTE PTR [eax]
c010730b:	88 45 ef             	mov    BYTE PTR [ebp-0x11],al
c010730e:	0f b6 45 ef          	movzx  eax,BYTE PTR [ebp-0x11]
c0107312:	84 c0                	test   al,al
c0107314:	79 08                	jns    c010731e <vput_char+0x71>
c0107316:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c0107319:	8b 55 18             	mov    edx,DWORD PTR [ebp+0x18]
c010731c:	89 10                	mov    DWORD PTR [eax],edx
c010731e:	0f b6 45 ef          	movzx  eax,BYTE PTR [ebp-0x11]
c0107322:	83 e0 40             	and    eax,0x40
c0107325:	85 c0                	test   eax,eax
c0107327:	74 0b                	je     c0107334 <vput_char+0x87>
c0107329:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c010732c:	8d 50 04             	lea    edx,[eax+0x4]
c010732f:	8b 45 18             	mov    eax,DWORD PTR [ebp+0x18]
c0107332:	89 02                	mov    DWORD PTR [edx],eax
c0107334:	0f b6 45 ef          	movzx  eax,BYTE PTR [ebp-0x11]
c0107338:	83 e0 20             	and    eax,0x20
c010733b:	85 c0                	test   eax,eax
c010733d:	74 0b                	je     c010734a <vput_char+0x9d>
c010733f:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c0107342:	8d 50 08             	lea    edx,[eax+0x8]
c0107345:	8b 45 18             	mov    eax,DWORD PTR [ebp+0x18]
c0107348:	89 02                	mov    DWORD PTR [edx],eax
c010734a:	0f b6 45 ef          	movzx  eax,BYTE PTR [ebp-0x11]
c010734e:	83 e0 10             	and    eax,0x10
c0107351:	85 c0                	test   eax,eax
c0107353:	74 0b                	je     c0107360 <vput_char+0xb3>
c0107355:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c0107358:	8d 50 0c             	lea    edx,[eax+0xc]
c010735b:	8b 45 18             	mov    eax,DWORD PTR [ebp+0x18]
c010735e:	89 02                	mov    DWORD PTR [edx],eax
c0107360:	0f b6 45 ef          	movzx  eax,BYTE PTR [ebp-0x11]
c0107364:	83 e0 08             	and    eax,0x8
c0107367:	85 c0                	test   eax,eax
c0107369:	74 0b                	je     c0107376 <vput_char+0xc9>
c010736b:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c010736e:	8d 50 10             	lea    edx,[eax+0x10]
c0107371:	8b 45 18             	mov    eax,DWORD PTR [ebp+0x18]
c0107374:	89 02                	mov    DWORD PTR [edx],eax
c0107376:	0f b6 45 ef          	movzx  eax,BYTE PTR [ebp-0x11]
c010737a:	83 e0 04             	and    eax,0x4
c010737d:	85 c0                	test   eax,eax
c010737f:	74 0b                	je     c010738c <vput_char+0xdf>
c0107381:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c0107384:	8d 50 14             	lea    edx,[eax+0x14]
c0107387:	8b 45 18             	mov    eax,DWORD PTR [ebp+0x18]
c010738a:	89 02                	mov    DWORD PTR [edx],eax
c010738c:	0f b6 45 ef          	movzx  eax,BYTE PTR [ebp-0x11]
c0107390:	83 e0 02             	and    eax,0x2
c0107393:	85 c0                	test   eax,eax
c0107395:	74 0b                	je     c01073a2 <vput_char+0xf5>
c0107397:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c010739a:	8d 50 18             	lea    edx,[eax+0x18]
c010739d:	8b 45 18             	mov    eax,DWORD PTR [ebp+0x18]
c01073a0:	89 02                	mov    DWORD PTR [edx],eax
c01073a2:	0f b6 45 ef          	movzx  eax,BYTE PTR [ebp-0x11]
c01073a6:	83 e0 01             	and    eax,0x1
c01073a9:	84 c0                	test   al,al
c01073ab:	74 0b                	je     c01073b8 <vput_char+0x10b>
c01073ad:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c01073b0:	8d 50 1c             	lea    edx,[eax+0x1c]
c01073b3:	8b 45 18             	mov    eax,DWORD PTR [ebp+0x18]
c01073b6:	89 02                	mov    DWORD PTR [edx],eax
c01073b8:	83 45 fc 01          	add    DWORD PTR [ebp-0x4],0x1
c01073bc:	83 7d fc 0f          	cmp    DWORD PTR [ebp-0x4],0xf
c01073c0:	0f 8e 24 ff ff ff    	jle    c01072ea <vput_char+0x3d>
c01073c6:	c9                   	leave  
c01073c7:	c3                   	ret    

c01073c8 <vput_str>:
c01073c8:	55                   	push   ebp
c01073c9:	89 e5                	mov    ebp,esp
c01073cb:	83 ec 28             	sub    esp,0x28
c01073ce:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
c01073d1:	89 45 fc             	mov    DWORD PTR [ebp-0x4],eax
c01073d4:	8b 45 14             	mov    eax,DWORD PTR [ebp+0x14]
c01073d7:	89 45 f8             	mov    DWORD PTR [ebp-0x8],eax
c01073da:	eb 5c                	jmp    c0107438 <vput_str+0x70>
c01073dc:	8b 45 1c             	mov    eax,DWORD PTR [ebp+0x1c]
c01073df:	0f b6 00             	movzx  eax,BYTE PTR [eax]
c01073e2:	0f be c0             	movsx  eax,al
c01073e5:	83 f8 0a             	cmp    eax,0xa
c01073e8:	74 05                	je     c01073ef <vput_str+0x27>
c01073ea:	83 f8 0d             	cmp    eax,0xd
c01073ed:	75 0c                	jne    c01073fb <vput_str+0x33>
c01073ef:	83 45 f8 10          	add    DWORD PTR [ebp-0x8],0x10
c01073f3:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
c01073f6:	89 45 fc             	mov    DWORD PTR [ebp-0x4],eax
c01073f9:	eb 39                	jmp    c0107434 <vput_str+0x6c>
c01073fb:	8b 45 1c             	mov    eax,DWORD PTR [ebp+0x1c]
c01073fe:	0f b6 00             	movzx  eax,BYTE PTR [eax]
c0107401:	0f be c0             	movsx  eax,al
c0107404:	89 44 24 14          	mov    DWORD PTR [esp+0x14],eax
c0107408:	8b 45 18             	mov    eax,DWORD PTR [ebp+0x18]
c010740b:	89 44 24 10          	mov    DWORD PTR [esp+0x10],eax
c010740f:	8b 45 f8             	mov    eax,DWORD PTR [ebp-0x8]
c0107412:	89 44 24 0c          	mov    DWORD PTR [esp+0xc],eax
c0107416:	8b 45 fc             	mov    eax,DWORD PTR [ebp-0x4]
c0107419:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
c010741d:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c0107420:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c0107424:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0107427:	89 04 24             	mov    DWORD PTR [esp],eax
c010742a:	e8 7e fe ff ff       	call   c01072ad <vput_char>
c010742f:	83 45 fc 08          	add    DWORD PTR [ebp-0x4],0x8
c0107433:	90                   	nop
c0107434:	83 45 1c 01          	add    DWORD PTR [ebp+0x1c],0x1
c0107438:	8b 45 1c             	mov    eax,DWORD PTR [ebp+0x1c]
c010743b:	0f b6 00             	movzx  eax,BYTE PTR [eax]
c010743e:	84 c0                	test   al,al
c0107440:	75 9a                	jne    c01073dc <vput_str+0x14>
c0107442:	c9                   	leave  
c0107443:	c3                   	ret    

c0107444 <init_screen>:
c0107444:	55                   	push   ebp
c0107445:	89 e5                	mov    ebp,esp
c0107447:	56                   	push   esi
c0107448:	53                   	push   ebx
c0107449:	83 ec 30             	sub    esp,0x30
c010744c:	b8 28 7c 00 c0       	mov    eax,0xc0007c28
c0107451:	8b 00                	mov    eax,DWORD PTR [eax]
c0107453:	89 c2                	mov    edx,eax
c0107455:	b8 24 7c 00 c0       	mov    eax,0xc0007c24
c010745a:	8b 00                	mov    eax,DWORD PTR [eax]
c010745c:	c7 44 24 10 00 02 00 	mov    DWORD PTR [esp+0x10],0x200
c0107463:	00 
c0107464:	89 54 24 0c          	mov    DWORD PTR [esp+0xc],edx
c0107468:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
c010746c:	c7 44 24 04 00 00 00 	mov    DWORD PTR [esp+0x4],0xe0000000
c0107473:	e0 
c0107474:	c7 04 24 20 19 11 c0 	mov    DWORD PTR [esp],0xc0111920
c010747b:	e8 a0 f2 ff ff       	call   c0106720 <viewctl_init>
c0107480:	b8 28 7c 00 c0       	mov    eax,0xc0007c28
c0107485:	8b 00                	mov    eax,DWORD PTR [eax]
c0107487:	89 c2                	mov    edx,eax
c0107489:	b8 24 7c 00 c0       	mov    eax,0xc0007c24
c010748e:	8b 00                	mov    eax,DWORD PTR [eax]
c0107490:	89 54 24 04          	mov    DWORD PTR [esp+0x4],edx
c0107494:	89 04 24             	mov    DWORD PTR [esp],eax
c0107497:	e8 f3 f2 ff ff       	call   c010678f <viewblock_init>
c010749c:	a3 00 19 11 c0       	mov    ds:0xc0111900,eax
c01074a1:	a1 00 19 11 c0       	mov    eax,ds:0xc0111900
c01074a6:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c01074aa:	c7 04 24 20 19 11 c0 	mov    DWORD PTR [esp],0xc0111920
c01074b1:	e8 a4 f3 ff ff       	call   c010685a <viewInsert>
c01074b6:	b8 24 7c 00 c0       	mov    eax,0xc0007c24
c01074bb:	8b 00                	mov    eax,DWORD PTR [eax]
c01074bd:	d1 e8                	shr    eax,1
c01074bf:	2d 96 00 00 00       	sub    eax,0x96
c01074c4:	89 45 ec             	mov    DWORD PTR [ebp-0x14],eax
c01074c7:	b8 28 7c 00 c0       	mov    eax,0xc0007c28
c01074cc:	8b 00                	mov    eax,DWORD PTR [eax]
c01074ce:	d1 e8                	shr    eax,1
c01074d0:	2d 96 00 00 00       	sub    eax,0x96
c01074d5:	89 45 e8             	mov    DWORD PTR [ebp-0x18],eax
c01074d8:	c7 45 f4 00 00 00 00 	mov    DWORD PTR [ebp-0xc],0x0
c01074df:	e9 33 01 00 00       	jmp    c0107617 <init_screen+0x1d3>
c01074e4:	c7 45 f0 00 00 00 00 	mov    DWORD PTR [ebp-0x10],0x0
c01074eb:	e9 19 01 00 00       	jmp    c0107609 <init_screen+0x1c5>
c01074f0:	8b 55 f4             	mov    edx,DWORD PTR [ebp-0xc]
c01074f3:	89 d0                	mov    eax,edx
c01074f5:	c1 e0 04             	shl    eax,0x4
c01074f8:	29 d0                	sub    eax,edx
c01074fa:	03 45 f0             	add    eax,DWORD PTR [ebp-0x10]
c01074fd:	05 40 76 10 c0       	add    eax,0xc0107640
c0107502:	0f b6 00             	movzx  eax,BYTE PTR [eax]
c0107505:	3c 23                	cmp    al,0x23
c0107507:	75 7f                	jne    c0107588 <init_screen+0x144>
c0107509:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c010750c:	8d 50 01             	lea    edx,[eax+0x1]
c010750f:	89 d0                	mov    eax,edx
c0107511:	c1 e0 02             	shl    eax,0x2
c0107514:	01 d0                	add    eax,edx
c0107516:	c1 e0 02             	shl    eax,0x2
c0107519:	89 c6                	mov    esi,eax
c010751b:	03 75 e8             	add    esi,DWORD PTR [ebp-0x18]
c010751e:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c0107521:	8d 50 01             	lea    edx,[eax+0x1]
c0107524:	89 d0                	mov    eax,edx
c0107526:	c1 e0 02             	shl    eax,0x2
c0107529:	01 d0                	add    eax,edx
c010752b:	c1 e0 02             	shl    eax,0x2
c010752e:	89 c3                	mov    ebx,eax
c0107530:	03 5d ec             	add    ebx,DWORD PTR [ebp-0x14]
c0107533:	8b 55 f4             	mov    edx,DWORD PTR [ebp-0xc]
c0107536:	89 d0                	mov    eax,edx
c0107538:	c1 e0 02             	shl    eax,0x2
c010753b:	01 d0                	add    eax,edx
c010753d:	c1 e0 02             	shl    eax,0x2
c0107540:	89 c1                	mov    ecx,eax
c0107542:	03 4d e8             	add    ecx,DWORD PTR [ebp-0x18]
c0107545:	8b 55 f0             	mov    edx,DWORD PTR [ebp-0x10]
c0107548:	89 d0                	mov    eax,edx
c010754a:	c1 e0 02             	shl    eax,0x2
c010754d:	01 d0                	add    eax,edx
c010754f:	c1 e0 02             	shl    eax,0x2
c0107552:	89 c2                	mov    edx,eax
c0107554:	03 55 ec             	add    edx,DWORD PTR [ebp-0x14]
c0107557:	b8 24 7c 00 c0       	mov    eax,0xc0007c24
c010755c:	8b 00                	mov    eax,DWORD PTR [eax]
c010755e:	89 74 24 18          	mov    DWORD PTR [esp+0x18],esi
c0107562:	89 5c 24 14          	mov    DWORD PTR [esp+0x14],ebx
c0107566:	89 4c 24 10          	mov    DWORD PTR [esp+0x10],ecx
c010756a:	89 54 24 0c          	mov    DWORD PTR [esp+0xc],edx
c010756e:	c7 44 24 08 ff ff ff 	mov    DWORD PTR [esp+0x8],0xffffff
c0107575:	00 
c0107576:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c010757a:	c7 04 24 00 00 00 e0 	mov    DWORD PTR [esp],0xe0000000
c0107581:	e8 bd fc ff ff       	call   c0107243 <viewFill>
c0107586:	eb 7d                	jmp    c0107605 <init_screen+0x1c1>
c0107588:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c010758b:	8d 50 01             	lea    edx,[eax+0x1]
c010758e:	89 d0                	mov    eax,edx
c0107590:	c1 e0 02             	shl    eax,0x2
c0107593:	01 d0                	add    eax,edx
c0107595:	c1 e0 02             	shl    eax,0x2
c0107598:	89 c6                	mov    esi,eax
c010759a:	03 75 e8             	add    esi,DWORD PTR [ebp-0x18]
c010759d:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c01075a0:	8d 50 01             	lea    edx,[eax+0x1]
c01075a3:	89 d0                	mov    eax,edx
c01075a5:	c1 e0 02             	shl    eax,0x2
c01075a8:	01 d0                	add    eax,edx
c01075aa:	c1 e0 02             	shl    eax,0x2
c01075ad:	89 c3                	mov    ebx,eax
c01075af:	03 5d ec             	add    ebx,DWORD PTR [ebp-0x14]
c01075b2:	8b 55 f4             	mov    edx,DWORD PTR [ebp-0xc]
c01075b5:	89 d0                	mov    eax,edx
c01075b7:	c1 e0 02             	shl    eax,0x2
c01075ba:	01 d0                	add    eax,edx
c01075bc:	c1 e0 02             	shl    eax,0x2
c01075bf:	89 c1                	mov    ecx,eax
c01075c1:	03 4d e8             	add    ecx,DWORD PTR [ebp-0x18]
c01075c4:	8b 55 f0             	mov    edx,DWORD PTR [ebp-0x10]
c01075c7:	89 d0                	mov    eax,edx
c01075c9:	c1 e0 02             	shl    eax,0x2
c01075cc:	01 d0                	add    eax,edx
c01075ce:	c1 e0 02             	shl    eax,0x2
c01075d1:	89 c2                	mov    edx,eax
c01075d3:	03 55 ec             	add    edx,DWORD PTR [ebp-0x14]
c01075d6:	b8 24 7c 00 c0       	mov    eax,0xc0007c24
c01075db:	8b 00                	mov    eax,DWORD PTR [eax]
c01075dd:	89 74 24 18          	mov    DWORD PTR [esp+0x18],esi
c01075e1:	89 5c 24 14          	mov    DWORD PTR [esp+0x14],ebx
c01075e5:	89 4c 24 10          	mov    DWORD PTR [esp+0x10],ecx
c01075e9:	89 54 24 0c          	mov    DWORD PTR [esp+0xc],edx
c01075ed:	c7 44 24 08 00 00 00 	mov    DWORD PTR [esp+0x8],0x0
c01075f4:	00 
c01075f5:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c01075f9:	c7 04 24 00 00 00 e0 	mov    DWORD PTR [esp],0xe0000000
c0107600:	e8 3e fc ff ff       	call   c0107243 <viewFill>
c0107605:	83 45 f0 01          	add    DWORD PTR [ebp-0x10],0x1
c0107609:	83 7d f0 0e          	cmp    DWORD PTR [ebp-0x10],0xe
c010760d:	0f 8e dd fe ff ff    	jle    c01074f0 <init_screen+0xac>
c0107613:	83 45 f4 01          	add    DWORD PTR [ebp-0xc],0x1
c0107617:	83 7d f4 0e          	cmp    DWORD PTR [ebp-0xc],0xe
c010761b:	0f 8e c3 fe ff ff    	jle    c01074e4 <init_screen+0xa0>
c0107621:	83 c4 30             	add    esp,0x30
c0107624:	5b                   	pop    ebx
c0107625:	5e                   	pop    esi
c0107626:	5d                   	pop    ebp
c0107627:	c3                   	ret    

Disassembly of section .data:

c0107640 <PencilLogo>:
c0107640:	20 20                	and    BYTE PTR [eax],ah
c0107642:	20 20                	and    BYTE PTR [eax],ah
c0107644:	20 20                	and    BYTE PTR [eax],ah
c0107646:	20 20                	and    BYTE PTR [eax],ah
c0107648:	20 20                	and    BYTE PTR [eax],ah
c010764a:	20 20                	and    BYTE PTR [eax],ah
c010764c:	20 20                	and    BYTE PTR [eax],ah
c010764e:	20 20                	and    BYTE PTR [eax],ah
c0107650:	23 23                	and    esp,DWORD PTR [ebx]
c0107652:	23 23                	and    esp,DWORD PTR [ebx]
c0107654:	23 23                	and    esp,DWORD PTR [ebx]
c0107656:	23 23                	and    esp,DWORD PTR [ebx]
c0107658:	23 23                	and    esp,DWORD PTR [ebx]
c010765a:	23 23                	and    esp,DWORD PTR [ebx]
c010765c:	23 20                	and    esp,DWORD PTR [eax]
c010765e:	20 23                	and    BYTE PTR [ebx],ah
c0107660:	20 20                	and    BYTE PTR [eax],ah
c0107662:	20 20                	and    BYTE PTR [eax],ah
c0107664:	20 20                	and    BYTE PTR [eax],ah
c0107666:	20 20                	and    BYTE PTR [eax],ah
c0107668:	20 20                	and    BYTE PTR [eax],ah
c010766a:	20 23                	and    BYTE PTR [ebx],ah
c010766c:	20 20                	and    BYTE PTR [eax],ah
c010766e:	23 20                	and    esp,DWORD PTR [eax]
c0107670:	20 20                	and    BYTE PTR [eax],ah
c0107672:	20 20                	and    BYTE PTR [eax],ah
c0107674:	20 20                	and    BYTE PTR [eax],ah
c0107676:	20 20                	and    BYTE PTR [eax],ah
c0107678:	20 20                	and    BYTE PTR [eax],ah
c010767a:	23 20                	and    esp,DWORD PTR [eax]
c010767c:	20 23                	and    BYTE PTR [ebx],ah
c010767e:	20 20                	and    BYTE PTR [eax],ah
c0107680:	20 20                	and    BYTE PTR [eax],ah
c0107682:	20 20                	and    BYTE PTR [eax],ah
c0107684:	20 20                	and    BYTE PTR [eax],ah
c0107686:	20 20                	and    BYTE PTR [eax],ah
c0107688:	20 23                	and    BYTE PTR [ebx],ah
c010768a:	20 20                	and    BYTE PTR [eax],ah
c010768c:	23 20                	and    esp,DWORD PTR [eax]
c010768e:	20 20                	and    BYTE PTR [eax],ah
c0107690:	23 23                	and    esp,DWORD PTR [ebx]
c0107692:	23 23                	and    esp,DWORD PTR [ebx]
c0107694:	23 20                	and    esp,DWORD PTR [eax]
c0107696:	20 20                	and    BYTE PTR [eax],ah
c0107698:	23 20                	and    esp,DWORD PTR [eax]
c010769a:	20 23                	and    BYTE PTR [ebx],ah
c010769c:	20 20                	and    BYTE PTR [eax],ah
c010769e:	20 23                	and    BYTE PTR [ebx],ah
c01076a0:	20 20                	and    BYTE PTR [eax],ah
c01076a2:	20 23                	and    BYTE PTR [ebx],ah
c01076a4:	20 20                	and    BYTE PTR [eax],ah
c01076a6:	20 23                	and    BYTE PTR [ebx],ah
c01076a8:	20 20                	and    BYTE PTR [eax],ah
c01076aa:	23 20                	and    esp,DWORD PTR [eax]
c01076ac:	20 20                	and    BYTE PTR [eax],ah
c01076ae:	23 20                	and    esp,DWORD PTR [eax]
c01076b0:	20 20                	and    BYTE PTR [eax],ah
c01076b2:	23 20                	and    esp,DWORD PTR [eax]
c01076b4:	20 20                	and    BYTE PTR [eax],ah
c01076b6:	23 20                	and    esp,DWORD PTR [eax]
c01076b8:	20 23                	and    BYTE PTR [ebx],ah
c01076ba:	20 20                	and    BYTE PTR [eax],ah
c01076bc:	20 23                	and    BYTE PTR [ebx],ah
c01076be:	20 20                	and    BYTE PTR [eax],ah
c01076c0:	20 23                	and    BYTE PTR [ebx],ah
c01076c2:	20 20                	and    BYTE PTR [eax],ah
c01076c4:	20 23                	and    BYTE PTR [ebx],ah
c01076c6:	20 20                	and    BYTE PTR [eax],ah
c01076c8:	23 23                	and    esp,DWORD PTR [ebx]
c01076ca:	23 23                	and    esp,DWORD PTR [ebx]
c01076cc:	23 23                	and    esp,DWORD PTR [ebx]
c01076ce:	23 23                	and    esp,DWORD PTR [ebx]
c01076d0:	23 20                	and    esp,DWORD PTR [eax]
c01076d2:	20 20                	and    BYTE PTR [eax],ah
c01076d4:	23 20                	and    esp,DWORD PTR [eax]
c01076d6:	20 23                	and    BYTE PTR [ebx],ah
c01076d8:	23 20                	and    esp,DWORD PTR [eax]
c01076da:	20 23                	and    BYTE PTR [ebx],ah
c01076dc:	20 20                	and    BYTE PTR [eax],ah
c01076de:	20 20                	and    BYTE PTR [eax],ah
c01076e0:	20 20                	and    BYTE PTR [eax],ah
c01076e2:	20 23                	and    BYTE PTR [ebx],ah
c01076e4:	20 20                	and    BYTE PTR [eax],ah
c01076e6:	23 20                	and    esp,DWORD PTR [eax]
c01076e8:	23 20                	and    esp,DWORD PTR [eax]
c01076ea:	23 20                	and    esp,DWORD PTR [eax]
c01076ec:	20 20                	and    BYTE PTR [eax],ah
c01076ee:	20 20                	and    BYTE PTR [eax],ah
c01076f0:	20 20                	and    BYTE PTR [eax],ah
c01076f2:	23 20                	and    esp,DWORD PTR [eax]
c01076f4:	20 23                	and    BYTE PTR [ebx],ah
c01076f6:	20 20                	and    BYTE PTR [eax],ah
c01076f8:	23 23                	and    esp,DWORD PTR [ebx]
c01076fa:	20 20                	and    BYTE PTR [eax],ah
c01076fc:	20 20                	and    BYTE PTR [eax],ah
c01076fe:	20 20                	and    BYTE PTR [eax],ah
c0107700:	20 23                	and    BYTE PTR [ebx],ah
c0107702:	20 20                	and    BYTE PTR [eax],ah
c0107704:	23 23                	and    esp,DWORD PTR [ebx]
c0107706:	23 23                	and    esp,DWORD PTR [ebx]
c0107708:	23 23                	and    esp,DWORD PTR [ebx]
c010770a:	23 23                	and    esp,DWORD PTR [ebx]
c010770c:	23 23                	and    esp,DWORD PTR [ebx]
c010770e:	23 23                	and    esp,DWORD PTR [ebx]
c0107710:	23 20                	and    esp,DWORD PTR [eax]
c0107712:	20 20                	and    BYTE PTR [eax],ah
c0107714:	20 20                	and    BYTE PTR [eax],ah
c0107716:	20 20                	and    BYTE PTR [eax],ah
c0107718:	20 20                	and    BYTE PTR [eax],ah
c010771a:	20 20                	and    BYTE PTR [eax],ah
c010771c:	20 20                	and    BYTE PTR [eax],ah
c010771e:	20 20                	and    BYTE PTR [eax],ah
c0107720:	20 00                	and    BYTE PTR [eax],al
	...

c0107740 <cursor.1524>:
c0107740:	2a 2d 2d 2d 2d 2d    	sub    ch,BYTE PTR ds:0x2d2d2d2d
c0107746:	2d 2d 2d 2d 2d       	sub    eax,0x2d2d2d2d
c010774b:	2d 2d 2d 2d 2d       	sub    eax,0x2d2d2d2d
c0107750:	2a 2a                	sub    ch,BYTE PTR [edx]
c0107752:	2d 2d 2d 2d 2d       	sub    eax,0x2d2d2d2d
c0107757:	2d 2d 2d 2d 2d       	sub    eax,0x2d2d2d2d
c010775c:	2d 2d 2d 2d 2a       	sub    eax,0x2a2d2d2d
c0107761:	23 2a                	and    ebp,DWORD PTR [edx]
c0107763:	2d 2d 2d 2d 2d       	sub    eax,0x2d2d2d2d
c0107768:	2d 2d 2d 2d 2d       	sub    eax,0x2d2d2d2d
c010776d:	2d 2d 2d 2a 23       	sub    eax,0x232a2d2d
c0107772:	23 2a                	and    ebp,DWORD PTR [edx]
c0107774:	2d 2d 2d 2d 2d       	sub    eax,0x2d2d2d2d
c0107779:	2d 2d 2d 2d 2d       	sub    eax,0x2d2d2d2d
c010777e:	2d 2d 2a 23 23       	sub    eax,0x23232a2d
c0107783:	23 2a                	and    ebp,DWORD PTR [edx]
c0107785:	2d 2d 2d 2d 2d       	sub    eax,0x2d2d2d2d
c010778a:	2d 2d 2d 2d 2d       	sub    eax,0x2d2d2d2d
c010778f:	2d 2a 23 23 23       	sub    eax,0x2323232a
c0107794:	23 2a                	and    ebp,DWORD PTR [edx]
c0107796:	2d 2d 2d 2d 2d       	sub    eax,0x2d2d2d2d
c010779b:	2d 2d 2d 2d 2d       	sub    eax,0x2d2d2d2d
c01077a0:	2a 23                	sub    ah,BYTE PTR [ebx]
c01077a2:	23 23                	and    esp,DWORD PTR [ebx]
c01077a4:	23 23                	and    esp,DWORD PTR [ebx]
c01077a6:	2a 2d 2d 2d 2d 2d    	sub    ch,BYTE PTR ds:0x2d2d2d2d
c01077ac:	2d 2d 2d 2d 2a       	sub    eax,0x2a2d2d2d
c01077b1:	23 23                	and    esp,DWORD PTR [ebx]
c01077b3:	23 23                	and    esp,DWORD PTR [ebx]
c01077b5:	23 23                	and    esp,DWORD PTR [ebx]
c01077b7:	2a 2d 2d 2d 2d 2d    	sub    ch,BYTE PTR ds:0x2d2d2d2d
c01077bd:	2d 2d 2d 2a 23       	sub    eax,0x232a2d2d
c01077c2:	23 23                	and    esp,DWORD PTR [ebx]
c01077c4:	23 23                	and    esp,DWORD PTR [ebx]
c01077c6:	23 23                	and    esp,DWORD PTR [ebx]
c01077c8:	2a 2d 2d 2d 2d 2d    	sub    ch,BYTE PTR ds:0x2d2d2d2d
c01077ce:	2d 2d 2a 23 23       	sub    eax,0x23232a2d
c01077d3:	23 23                	and    esp,DWORD PTR [ebx]
c01077d5:	2a 2a                	sub    ch,BYTE PTR [edx]
c01077d7:	2a 2a                	sub    ch,BYTE PTR [edx]
c01077d9:	2a 2d 2d 2d 2d 2d    	sub    ch,BYTE PTR ds:0x2d2d2d2d
c01077df:	2d 2a 23 23 2a       	sub    eax,0x2a23232a
c01077e4:	23 2a                	and    ebp,DWORD PTR [edx]
c01077e6:	2d 2d 2d 2d 2d       	sub    eax,0x2d2d2d2d
c01077eb:	2d 2d 2d 2d 2d       	sub    eax,0x2d2d2d2d
c01077f0:	2a 23                	sub    ah,BYTE PTR [ebx]
c01077f2:	2a 2d 2a 23 2a 2d    	sub    ch,BYTE PTR ds:0x2d2a232a
c01077f8:	2d 2d 2d 2d 2d       	sub    eax,0x2d2d2d2d
c01077fd:	2d 2d 2d 2a 2a       	sub    eax,0x2a2a2d2d
c0107802:	2d 2d 2a 23 2a       	sub    eax,0x2a232a2d
c0107807:	2d 2d 2d 2d 2d       	sub    eax,0x2d2d2d2d
c010780c:	2d 2d 2d 2d 2a       	sub    eax,0x2a2d2d2d
c0107811:	2d 2d 2d 2d 2a       	sub    eax,0x2a2d2d2d
c0107816:	23 2a                	and    ebp,DWORD PTR [edx]
c0107818:	2d 2d 2d 2d 2d       	sub    eax,0x2d2d2d2d
c010781d:	2d 2d 2d 2d 2d       	sub    eax,0x2d2d2d2d
c0107822:	2d 2d 2d 2a 23       	sub    eax,0x232a2d2d
c0107827:	2a 2d 2d 2d 2d 2d    	sub    ch,BYTE PTR ds:0x2d2d2d2d
c010782d:	2d 2d 2d 2d 2d       	sub    eax,0x2d2d2d2d
c0107832:	2d 2d 2d 2d 2a       	sub    eax,0x2a2d2d2d
c0107837:	2d 2d 2d 2d 2d       	sub    eax,0x2d2d2d2d
c010783c:	2d 2d 2d 2d 34       	sub    eax,0x342d2d2d

c0107840 <intr_entry_table>:
c0107840:	34 0d                	xor    al,0xd
c0107842:	10 c0                	adc    al,al
c0107844:	57                   	push   edi
c0107845:	0d 10 c0 7a 0d       	or     eax,0xd7ac010
c010784a:	10 c0                	adc    al,al
c010784c:	9d                   	popf   
c010784d:	0d 10 c0 c0 0d       	or     eax,0xdc0c010
c0107852:	10 c0                	adc    al,al
c0107854:	e3 0d                	jecxz  c0107863 <intr_entry_table+0x23>
c0107856:	10 c0                	adc    al,al
c0107858:	06                   	push   es
c0107859:	0e                   	push   cs
c010785a:	10 c0                	adc    al,al
c010785c:	29 0e                	sub    DWORD PTR [esi],ecx
c010785e:	10 c0                	adc    al,al
c0107860:	4c                   	dec    esp
c0107861:	0e                   	push   cs
c0107862:	10 c0                	adc    al,al
c0107864:	6b 0e 10             	imul   ecx,DWORD PTR [esi],0x10
c0107867:	c0 8e 0e 10 c0 ad 0e 	ror    BYTE PTR [esi-0x523feff2],0xe
c010786e:	10 c0                	adc    al,al
c0107870:	cc                   	int3   
c0107871:	0e                   	push   cs
c0107872:	10 c0                	adc    al,al
c0107874:	ef                   	out    dx,eax
c0107875:	0e                   	push   cs
c0107876:	10 c0                	adc    al,al
c0107878:	0e                   	push   cs
c0107879:	0f 10 c0             	movups xmm0,xmm0
c010787c:	2d 0f 10 c0 50       	sub    eax,0x50c0100f
c0107881:	0f 10 c0             	movups xmm0,xmm0
c0107884:	73 0f                	jae    c0107895 <intr_entry_table+0x55>
c0107886:	10 c0                	adc    al,al
c0107888:	92                   	xchg   edx,eax
c0107889:	0f 10 c0             	movups xmm0,xmm0
c010788c:	b5 0f                	mov    ch,0xf
c010788e:	10 c0                	adc    al,al
c0107890:	d8 0f                	fmul   DWORD PTR [edi]
c0107892:	10 c0                	adc    al,al
c0107894:	fb                   	sti    
c0107895:	0f 10 c0             	movups xmm0,xmm0
c0107898:	1e                   	push   ds
c0107899:	10 10                	adc    BYTE PTR [eax],dl
c010789b:	c0 41 10 10          	rol    BYTE PTR [ecx+0x10],0x10
c010789f:	c0 64 10 10 c0       	shl    BYTE PTR [eax+edx*1+0x10],0xc0
c01078a4:	83 10 10             	adc    DWORD PTR [eax],0x10
c01078a7:	c0 a6 10 10 c0 c5 10 	shl    BYTE PTR [esi-0x3a3feff0],0x10
c01078ae:	10 c0                	adc    al,al
c01078b0:	e4 10                	in     al,0x10
c01078b2:	10 c0                	adc    al,al
c01078b4:	07                   	pop    es
c01078b5:	11 10                	adc    DWORD PTR [eax],edx
c01078b7:	c0 26 11             	shl    BYTE PTR [esi],0x11
c01078ba:	10 c0                	adc    al,al
c01078bc:	45                   	inc    ebp
c01078bd:	11 10                	adc    DWORD PTR [eax],edx
c01078bf:	c0 68 11 10          	shr    BYTE PTR [eax+0x11],0x10
c01078c3:	c0 8b 11 10 c0 ae 11 	ror    BYTE PTR [ebx-0x513fefef],0x11
c01078ca:	10 c0                	adc    al,al
c01078cc:	d1 11                	rcl    DWORD PTR [ecx],1
c01078ce:	10 c0                	adc    al,al
c01078d0:	f4                   	hlt    
c01078d1:	11 10                	adc    DWORD PTR [eax],edx
c01078d3:	c0 17 12             	rcl    BYTE PTR [edi],0x12
c01078d6:	10 c0                	adc    al,al
c01078d8:	3a 12                	cmp    dl,BYTE PTR [edx]
c01078da:	10 c0                	adc    al,al
c01078dc:	5d                   	pop    ebp
c01078dd:	12 10                	adc    dl,BYTE PTR [eax]
c01078df:	c0 80 12 10 c0 a3 12 	rol    BYTE PTR [eax-0x5c3fefee],0x12
c01078e6:	10 c0                	adc    al,al
c01078e8:	c6                   	(bad)  
c01078e9:	12 10                	adc    dl,BYTE PTR [eax]
c01078eb:	c0 e9 12             	shr    cl,0x12
c01078ee:	10 c0                	adc    al,al
c01078f0:	0c 13                	or     al,0x13
c01078f2:	10 c0                	adc    al,al
c01078f4:	2f                   	das    
c01078f5:	13 10                	adc    edx,DWORD PTR [eax]
c01078f7:	c0 52 13 10          	rcl    BYTE PTR [edx+0x13],0x10
c01078fb:	c0                   	(bad)  
c01078fc:	75 13                	jne    c0107911 <keymap+0x11>
c01078fe:	10 c0                	adc    al,al

c0107900 <keymap>:
c0107900:	00 00                	add    BYTE PTR [eax],al
c0107902:	1b 1b                	sbb    ebx,DWORD PTR [ebx]
c0107904:	31 21                	xor    DWORD PTR [ecx],esp
c0107906:	32 40 33             	xor    al,BYTE PTR [eax+0x33]
c0107909:	23 34 24             	and    esi,DWORD PTR [esp]
c010790c:	35 25 36 5e 37       	xor    eax,0x375e3625
c0107911:	26 38 2a             	cmp    BYTE PTR es:[edx],ch
c0107914:	39 28                	cmp    DWORD PTR [eax],ebp
c0107916:	30 29                	xor    BYTE PTR [ecx],ch
c0107918:	2d 5f 3d 2b 08       	sub    eax,0x82b3d5f
c010791d:	08 09                	or     BYTE PTR [ecx],cl
c010791f:	09 71 51             	or     DWORD PTR [ecx+0x51],esi
c0107922:	77 57                	ja     c010797b <keymap+0x7b>
c0107924:	65 45                	gs inc ebp
c0107926:	72 52                	jb     c010797a <keymap+0x7a>
c0107928:	74 54                	je     c010797e <keymap+0x7e>
c010792a:	79 59                	jns    c0107985 <PKnFont+0x5>
c010792c:	75 55                	jne    c0107983 <PKnFont+0x3>
c010792e:	69 49 6f 4f 70 50 5b 	imul   ecx,DWORD PTR [ecx+0x6f],0x5b50704f
c0107935:	7b 5d                	jnp    c0107994 <PKnFont+0x14>
c0107937:	7d 0d                	jge    c0107946 <keymap+0x46>
c0107939:	0d 00 00 61 41       	or     eax,0x41610000
c010793e:	73 53                	jae    c0107993 <PKnFont+0x13>
c0107940:	64 44                	fs inc esp
c0107942:	66 46                	inc    si
c0107944:	67 47                	addr16 inc edi
c0107946:	68 48 6a 4a 6b       	push   0x6b4a6a48
c010794b:	4b                   	dec    ebx
c010794c:	6c                   	ins    BYTE PTR es:[edi],dx
c010794d:	4c                   	dec    esp
c010794e:	3b 3a                	cmp    edi,DWORD PTR [edx]
c0107950:	27                   	daa    
c0107951:	22 60 7e             	and    ah,BYTE PTR [eax+0x7e]
c0107954:	00 00                	add    BYTE PTR [eax],al
c0107956:	5c                   	pop    esp
c0107957:	7c 7a                	jl     c01079d3 <PKnFont+0x53>
c0107959:	5a                   	pop    edx
c010795a:	78 58                	js     c01079b4 <PKnFont+0x34>
c010795c:	63 43 76             	arpl   WORD PTR [ebx+0x76],ax
c010795f:	56                   	push   esi
c0107960:	62 42 6e             	bound  eax,QWORD PTR [edx+0x6e]
c0107963:	4e                   	dec    esi
c0107964:	6d                   	ins    DWORD PTR es:[edi],dx
c0107965:	4d                   	dec    ebp
c0107966:	2c 3c                	sub    al,0x3c
c0107968:	2e 3e 2f             	cs ds das 
c010796b:	3f                   	aas    
c010796c:	00 00                	add    BYTE PTR [eax],al
c010796e:	2a 2a                	sub    ch,BYTE PTR [edx]
c0107970:	00 00                	add    BYTE PTR [eax],al
c0107972:	20 20                	and    BYTE PTR [eax],ah
	...

c0107980 <PKnFont>:
	...
c0107b90:	00 10                	add    BYTE PTR [eax],dl
c0107b92:	10 10                	adc    BYTE PTR [eax],dl
c0107b94:	10 10                	adc    BYTE PTR [eax],dl
c0107b96:	10 10                	adc    BYTE PTR [eax],dl
c0107b98:	10 10                	adc    BYTE PTR [eax],dl
c0107b9a:	00 00                	add    BYTE PTR [eax],al
c0107b9c:	10 10                	adc    BYTE PTR [eax],dl
c0107b9e:	00 00                	add    BYTE PTR [eax],al
c0107ba0:	28 28                	sub    BYTE PTR [eax],ch
c0107ba2:	28 00                	sub    BYTE PTR [eax],al
	...
c0107bb0:	00 44 44 44          	add    BYTE PTR [esp+eax*2+0x44],al
c0107bb4:	fe 44 44 44          	inc    BYTE PTR [esp+eax*2+0x44]
c0107bb8:	44                   	inc    esp
c0107bb9:	44                   	inc    esp
c0107bba:	fe 44 44 44          	inc    BYTE PTR [esp+eax*2+0x44]
c0107bbe:	00 00                	add    BYTE PTR [eax],al
c0107bc0:	10 3a                	adc    BYTE PTR [edx],bh
c0107bc2:	56                   	push   esi
c0107bc3:	92                   	xchg   edx,eax
c0107bc4:	92                   	xchg   edx,eax
c0107bc5:	90                   	nop
c0107bc6:	50                   	push   eax
c0107bc7:	38 14 12             	cmp    BYTE PTR [edx+edx*1],dl
c0107bca:	92                   	xchg   edx,eax
c0107bcb:	92                   	xchg   edx,eax
c0107bcc:	d4 b8                	aam    0xb8
c0107bce:	10 10                	adc    BYTE PTR [eax],dl
c0107bd0:	62 92 94 94 68 08    	bound  edx,QWORD PTR [edx+0x8689494]
c0107bd6:	10 10                	adc    BYTE PTR [eax],dl
c0107bd8:	20 2c 52             	and    BYTE PTR [edx+edx*2],ch
c0107bdb:	52                   	push   edx
c0107bdc:	92                   	xchg   edx,eax
c0107bdd:	8c 00                	mov    WORD PTR [eax],es
c0107bdf:	00 00                	add    BYTE PTR [eax],al
c0107be1:	70 88                	jo     c0107b6b <PKnFont+0x1eb>
c0107be3:	88 88 90 60 47 a2    	mov    BYTE PTR [eax-0x5db89f70],cl
c0107be9:	92                   	xchg   edx,eax
c0107bea:	8a 84 46 39 00 00 04 	mov    al,BYTE PTR [esi+eax*2+0x4000039]
c0107bf1:	08 10                	or     BYTE PTR [eax],dl
	...
c0107bff:	00 02                	add    BYTE PTR [edx],al
c0107c01:	04 08                	add    al,0x8
c0107c03:	08 10                	or     BYTE PTR [eax],dl
c0107c05:	10 10                	adc    BYTE PTR [eax],dl
c0107c07:	10 10                	adc    BYTE PTR [eax],dl
c0107c09:	10 10                	adc    BYTE PTR [eax],dl
c0107c0b:	08 08                	or     BYTE PTR [eax],cl
c0107c0d:	04 02                	add    al,0x2
c0107c0f:	00 80 40 20 20 10    	add    BYTE PTR [eax+0x10202040],al
c0107c15:	10 10                	adc    BYTE PTR [eax],dl
c0107c17:	10 10                	adc    BYTE PTR [eax],dl
c0107c19:	10 10                	adc    BYTE PTR [eax],dl
c0107c1b:	20 20                	and    BYTE PTR [eax],ah
c0107c1d:	40                   	inc    eax
c0107c1e:	80 00 00             	add    BYTE PTR [eax],0x0
c0107c21:	00 00                	add    BYTE PTR [eax],al
c0107c23:	00 00                	add    BYTE PTR [eax],al
c0107c25:	10 92 54 38 54 92    	adc    BYTE PTR [edx-0x6dabc7ac],dl
c0107c2b:	10 00                	adc    BYTE PTR [eax],al
	...
c0107c35:	10 10                	adc    BYTE PTR [eax],dl
c0107c37:	10 fe                	adc    dh,bh
c0107c39:	10 10                	adc    BYTE PTR [eax],dl
c0107c3b:	10 00                	adc    BYTE PTR [eax],al
	...
c0107c49:	00 00                	add    BYTE PTR [eax],al
c0107c4b:	18 18                	sbb    BYTE PTR [eax],bl
c0107c4d:	08 08                	or     BYTE PTR [eax],cl
c0107c4f:	10 00                	adc    BYTE PTR [eax],al
c0107c51:	00 00                	add    BYTE PTR [eax],al
c0107c53:	00 00                	add    BYTE PTR [eax],al
c0107c55:	00 00                	add    BYTE PTR [eax],al
c0107c57:	00 fe                	add    dh,bh
	...
c0107c69:	00 00                	add    BYTE PTR [eax],al
c0107c6b:	00 18                	add    BYTE PTR [eax],bl
c0107c6d:	18 00                	sbb    BYTE PTR [eax],al
c0107c6f:	00 02                	add    BYTE PTR [edx],al
c0107c71:	02 04 04             	add    al,BYTE PTR [esp+eax*1]
c0107c74:	08 08                	or     BYTE PTR [eax],cl
c0107c76:	08 10                	or     BYTE PTR [eax],dl
c0107c78:	10 20                	adc    BYTE PTR [eax],ah
c0107c7a:	20 40 40             	and    BYTE PTR [eax+0x40],al
c0107c7d:	40                   	inc    eax
c0107c7e:	80 80 00 18 24 24 42 	add    BYTE PTR [eax+0x24241800],0x42
c0107c85:	42                   	inc    edx
c0107c86:	42                   	inc    edx
c0107c87:	42                   	inc    edx
c0107c88:	42                   	inc    edx
c0107c89:	42                   	inc    edx
c0107c8a:	42                   	inc    edx
c0107c8b:	24 24                	and    al,0x24
c0107c8d:	18 00                	sbb    BYTE PTR [eax],al
c0107c8f:	00 00                	add    BYTE PTR [eax],al
c0107c91:	08 18                	or     BYTE PTR [eax],bl
c0107c93:	28 08                	sub    BYTE PTR [eax],cl
c0107c95:	08 08                	or     BYTE PTR [eax],cl
c0107c97:	08 08                	or     BYTE PTR [eax],cl
c0107c99:	08 08                	or     BYTE PTR [eax],cl
c0107c9b:	08 08                	or     BYTE PTR [eax],cl
c0107c9d:	3e 00 00             	add    BYTE PTR ds:[eax],al
c0107ca0:	00 18                	add    BYTE PTR [eax],bl
c0107ca2:	24 42                	and    al,0x42
c0107ca4:	42                   	inc    edx
c0107ca5:	02 04 08             	add    al,BYTE PTR [eax+ecx*1]
c0107ca8:	10 20                	adc    BYTE PTR [eax],ah
c0107caa:	20 40 40             	and    BYTE PTR [eax+0x40],al
c0107cad:	7e 00                	jle    c0107caf <PKnFont+0x32f>
c0107caf:	00 00                	add    BYTE PTR [eax],al
c0107cb1:	18 24 42             	sbb    BYTE PTR [edx+eax*2],ah
c0107cb4:	02 02                	add    al,BYTE PTR [edx]
c0107cb6:	04 18                	add    al,0x18
c0107cb8:	04 02                	add    al,0x2
c0107cba:	02 42 24             	add    al,BYTE PTR [edx+0x24]
c0107cbd:	18 00                	sbb    BYTE PTR [eax],al
c0107cbf:	00 00                	add    BYTE PTR [eax],al
c0107cc1:	0c 0c                	or     al,0xc
c0107cc3:	0c 14                	or     al,0x14
c0107cc5:	14 14                	adc    al,0x14
c0107cc7:	24 24                	and    al,0x24
c0107cc9:	44                   	inc    esp
c0107cca:	7e 04                	jle    c0107cd0 <PKnFont+0x350>
c0107ccc:	04 1e                	add    al,0x1e
c0107cce:	00 00                	add    BYTE PTR [eax],al
c0107cd0:	00 7c 40 40          	add    BYTE PTR [eax+eax*2+0x40],bh
c0107cd4:	40                   	inc    eax
c0107cd5:	58                   	pop    eax
c0107cd6:	64 02 02             	add    al,BYTE PTR fs:[edx]
c0107cd9:	02 02                	add    al,BYTE PTR [edx]
c0107cdb:	42                   	inc    edx
c0107cdc:	24 18                	and    al,0x18
c0107cde:	00 00                	add    BYTE PTR [eax],al
c0107ce0:	00 18                	add    BYTE PTR [eax],bl
c0107ce2:	24 42                	and    al,0x42
c0107ce4:	40                   	inc    eax
c0107ce5:	58                   	pop    eax
c0107ce6:	64 42                	fs inc edx
c0107ce8:	42                   	inc    edx
c0107ce9:	42                   	inc    edx
c0107cea:	42                   	inc    edx
c0107ceb:	42                   	inc    edx
c0107cec:	24 18                	and    al,0x18
c0107cee:	00 00                	add    BYTE PTR [eax],al
c0107cf0:	00 7e 42             	add    BYTE PTR [esi+0x42],bh
c0107cf3:	42                   	inc    edx
c0107cf4:	04 04                	add    al,0x4
c0107cf6:	08 08                	or     BYTE PTR [eax],cl
c0107cf8:	08 10                	or     BYTE PTR [eax],dl
c0107cfa:	10 10                	adc    BYTE PTR [eax],dl
c0107cfc:	10 38                	adc    BYTE PTR [eax],bh
c0107cfe:	00 00                	add    BYTE PTR [eax],al
c0107d00:	00 18                	add    BYTE PTR [eax],bl
c0107d02:	24 42                	and    al,0x42
c0107d04:	42                   	inc    edx
c0107d05:	42                   	inc    edx
c0107d06:	24 18                	and    al,0x18
c0107d08:	24 42                	and    al,0x42
c0107d0a:	42                   	inc    edx
c0107d0b:	42                   	inc    edx
c0107d0c:	24 18                	and    al,0x18
c0107d0e:	00 00                	add    BYTE PTR [eax],al
c0107d10:	00 18                	add    BYTE PTR [eax],bl
c0107d12:	24 42                	and    al,0x42
c0107d14:	42                   	inc    edx
c0107d15:	42                   	inc    edx
c0107d16:	42                   	inc    edx
c0107d17:	42                   	inc    edx
c0107d18:	26 1a 02             	sbb    al,BYTE PTR es:[edx]
c0107d1b:	42                   	inc    edx
c0107d1c:	24 18                	and    al,0x18
c0107d1e:	00 00                	add    BYTE PTR [eax],al
c0107d20:	00 00                	add    BYTE PTR [eax],al
c0107d22:	00 00                	add    BYTE PTR [eax],al
c0107d24:	00 18                	add    BYTE PTR [eax],bl
c0107d26:	18 00                	sbb    BYTE PTR [eax],al
c0107d28:	00 00                	add    BYTE PTR [eax],al
c0107d2a:	00 00                	add    BYTE PTR [eax],al
c0107d2c:	18 18                	sbb    BYTE PTR [eax],bl
c0107d2e:	00 00                	add    BYTE PTR [eax],al
c0107d30:	00 00                	add    BYTE PTR [eax],al
c0107d32:	00 00                	add    BYTE PTR [eax],al
c0107d34:	00 18                	add    BYTE PTR [eax],bl
c0107d36:	18 00                	sbb    BYTE PTR [eax],al
c0107d38:	00 00                	add    BYTE PTR [eax],al
c0107d3a:	00 18                	add    BYTE PTR [eax],bl
c0107d3c:	18 08                	sbb    BYTE PTR [eax],cl
c0107d3e:	08 10                	or     BYTE PTR [eax],dl
c0107d40:	00 02                	add    BYTE PTR [edx],al
c0107d42:	04 08                	add    al,0x8
c0107d44:	10 20                	adc    BYTE PTR [eax],ah
c0107d46:	40                   	inc    eax
c0107d47:	80 80 40 20 10 08 04 	add    BYTE PTR [eax+0x8102040],0x4
c0107d4e:	02 00                	add    al,BYTE PTR [eax]
c0107d50:	00 00                	add    BYTE PTR [eax],al
c0107d52:	00 00                	add    BYTE PTR [eax],al
c0107d54:	00 00                	add    BYTE PTR [eax],al
c0107d56:	fe 00                	inc    BYTE PTR [eax]
c0107d58:	00 fe                	add    dh,bh
c0107d5a:	00 00                	add    BYTE PTR [eax],al
c0107d5c:	00 00                	add    BYTE PTR [eax],al
c0107d5e:	00 00                	add    BYTE PTR [eax],al
c0107d60:	00 80 40 20 10 08    	add    BYTE PTR [eax+0x8102040],al
c0107d66:	04 02                	add    al,0x2
c0107d68:	02 04 08             	add    al,BYTE PTR [eax+ecx*1]
c0107d6b:	10 20                	adc    BYTE PTR [eax],ah
c0107d6d:	40                   	inc    eax
c0107d6e:	80 00 00             	add    BYTE PTR [eax],0x0
c0107d71:	38 44 82 82          	cmp    BYTE PTR [edx+eax*4-0x7e],al
c0107d75:	82                   	(bad)  
c0107d76:	04 08                	add    al,0x8
c0107d78:	10 10                	adc    BYTE PTR [eax],dl
c0107d7a:	00 00                	add    BYTE PTR [eax],al
c0107d7c:	18 18                	sbb    BYTE PTR [eax],bl
c0107d7e:	00 00                	add    BYTE PTR [eax],al
c0107d80:	00 38                	add    BYTE PTR [eax],bh
c0107d82:	44                   	inc    esp
c0107d83:	82                   	(bad)  
c0107d84:	9a aa aa aa aa aa 9c 	call   0x9caa:0xaaaaaaaa
c0107d8b:	80 46 38 00          	add    BYTE PTR [esi+0x38],0x0
c0107d8f:	00 00                	add    BYTE PTR [eax],al
c0107d91:	18 18                	sbb    BYTE PTR [eax],bl
c0107d93:	18 18                	sbb    BYTE PTR [eax],bl
c0107d95:	24 24                	and    al,0x24
c0107d97:	24 24                	and    al,0x24
c0107d99:	7e 42                	jle    c0107ddd <PKnFont+0x45d>
c0107d9b:	42                   	inc    edx
c0107d9c:	42                   	inc    edx
c0107d9d:	e7 00                	out    0x0,eax
c0107d9f:	00 00                	add    BYTE PTR [eax],al
c0107da1:	f0 48                	lock dec eax
c0107da3:	44                   	inc    esp
c0107da4:	44                   	inc    esp
c0107da5:	44                   	inc    esp
c0107da6:	48                   	dec    eax
c0107da7:	78 44                	js     c0107ded <PKnFont+0x46d>
c0107da9:	42                   	inc    edx
c0107daa:	42                   	inc    edx
c0107dab:	42                   	inc    edx
c0107dac:	44                   	inc    esp
c0107dad:	f8                   	clc    
c0107dae:	00 00                	add    BYTE PTR [eax],al
c0107db0:	00 3a                	add    BYTE PTR [edx],bh
c0107db2:	46                   	inc    esi
c0107db3:	42                   	inc    edx
c0107db4:	82                   	(bad)  
c0107db5:	80 80 80 80 80 82 42 	add    BYTE PTR [eax-0x7d7f7f80],0x42
c0107dbc:	44                   	inc    esp
c0107dbd:	38 00                	cmp    BYTE PTR [eax],al
c0107dbf:	00 00                	add    BYTE PTR [eax],al
c0107dc1:	f8                   	clc    
c0107dc2:	44                   	inc    esp
c0107dc3:	44                   	inc    esp
c0107dc4:	42                   	inc    edx
c0107dc5:	42                   	inc    edx
c0107dc6:	42                   	inc    edx
c0107dc7:	42                   	inc    edx
c0107dc8:	42                   	inc    edx
c0107dc9:	42                   	inc    edx
c0107dca:	42                   	inc    edx
c0107dcb:	44                   	inc    esp
c0107dcc:	44                   	inc    esp
c0107dcd:	f8                   	clc    
c0107dce:	00 00                	add    BYTE PTR [eax],al
c0107dd0:	00 fe                	add    dh,bh
c0107dd2:	42                   	inc    edx
c0107dd3:	42                   	inc    edx
c0107dd4:	40                   	inc    eax
c0107dd5:	40                   	inc    eax
c0107dd6:	44                   	inc    esp
c0107dd7:	7c 44                	jl     c0107e1d <PKnFont+0x49d>
c0107dd9:	40                   	inc    eax
c0107dda:	40                   	inc    eax
c0107ddb:	42                   	inc    edx
c0107ddc:	42                   	inc    edx
c0107ddd:	fe 00                	inc    BYTE PTR [eax]
c0107ddf:	00 00                	add    BYTE PTR [eax],al
c0107de1:	fe 42 42             	inc    BYTE PTR [edx+0x42]
c0107de4:	40                   	inc    eax
c0107de5:	40                   	inc    eax
c0107de6:	44                   	inc    esp
c0107de7:	7c 44                	jl     c0107e2d <PKnFont+0x4ad>
c0107de9:	44                   	inc    esp
c0107dea:	40                   	inc    eax
c0107deb:	40                   	inc    eax
c0107dec:	40                   	inc    eax
c0107ded:	f0 00 00             	lock add BYTE PTR [eax],al
c0107df0:	00 3a                	add    BYTE PTR [edx],bh
c0107df2:	46                   	inc    esi
c0107df3:	42                   	inc    edx
c0107df4:	82                   	(bad)  
c0107df5:	80 80 9e 82 82 82 42 	add    BYTE PTR [eax-0x7d7d7d62],0x42
c0107dfc:	46                   	inc    esi
c0107dfd:	38 00                	cmp    BYTE PTR [eax],al
c0107dff:	00 00                	add    BYTE PTR [eax],al
c0107e01:	e7 42                	out    0x42,eax
c0107e03:	42                   	inc    edx
c0107e04:	42                   	inc    edx
c0107e05:	42                   	inc    edx
c0107e06:	42                   	inc    edx
c0107e07:	7e 42                	jle    c0107e4b <PKnFont+0x4cb>
c0107e09:	42                   	inc    edx
c0107e0a:	42                   	inc    edx
c0107e0b:	42                   	inc    edx
c0107e0c:	42                   	inc    edx
c0107e0d:	e7 00                	out    0x0,eax
c0107e0f:	00 00                	add    BYTE PTR [eax],al
c0107e11:	7c 10                	jl     c0107e23 <PKnFont+0x4a3>
c0107e13:	10 10                	adc    BYTE PTR [eax],dl
c0107e15:	10 10                	adc    BYTE PTR [eax],dl
c0107e17:	10 10                	adc    BYTE PTR [eax],dl
c0107e19:	10 10                	adc    BYTE PTR [eax],dl
c0107e1b:	10 10                	adc    BYTE PTR [eax],dl
c0107e1d:	7c 00                	jl     c0107e1f <PKnFont+0x49f>
c0107e1f:	00 00                	add    BYTE PTR [eax],al
c0107e21:	1f                   	pop    ds
c0107e22:	04 04                	add    al,0x4
c0107e24:	04 04                	add    al,0x4
c0107e26:	04 04                	add    al,0x4
c0107e28:	04 04                	add    al,0x4
c0107e2a:	04 04                	add    al,0x4
c0107e2c:	84 48 30             	test   BYTE PTR [eax+0x30],cl
c0107e2f:	00 00                	add    BYTE PTR [eax],al
c0107e31:	e7 42                	out    0x42,eax
c0107e33:	44                   	inc    esp
c0107e34:	48                   	dec    eax
c0107e35:	50                   	push   eax
c0107e36:	50                   	push   eax
c0107e37:	60                   	pusha  
c0107e38:	50                   	push   eax
c0107e39:	50                   	push   eax
c0107e3a:	48                   	dec    eax
c0107e3b:	44                   	inc    esp
c0107e3c:	42                   	inc    edx
c0107e3d:	e7 00                	out    0x0,eax
c0107e3f:	00 00                	add    BYTE PTR [eax],al
c0107e41:	f0 40                	lock inc eax
c0107e43:	40                   	inc    eax
c0107e44:	40                   	inc    eax
c0107e45:	40                   	inc    eax
c0107e46:	40                   	inc    eax
c0107e47:	40                   	inc    eax
c0107e48:	40                   	inc    eax
c0107e49:	40                   	inc    eax
c0107e4a:	40                   	inc    eax
c0107e4b:	42                   	inc    edx
c0107e4c:	42                   	inc    edx
c0107e4d:	fe 00                	inc    BYTE PTR [eax]
c0107e4f:	00 00                	add    BYTE PTR [eax],al
c0107e51:	c3                   	ret    
c0107e52:	42                   	inc    edx
c0107e53:	66 66 66 5a          	data16 data16 pop dx
c0107e57:	5a                   	pop    edx
c0107e58:	5a                   	pop    edx
c0107e59:	42                   	inc    edx
c0107e5a:	42                   	inc    edx
c0107e5b:	42                   	inc    edx
c0107e5c:	42                   	inc    edx
c0107e5d:	e7 00                	out    0x0,eax
c0107e5f:	00 00                	add    BYTE PTR [eax],al
c0107e61:	c7 42 62 62 52 52 52 	mov    DWORD PTR [edx+0x62],0x52525262
c0107e68:	4a                   	dec    edx
c0107e69:	4a                   	dec    edx
c0107e6a:	4a                   	dec    edx
c0107e6b:	46                   	inc    esi
c0107e6c:	46                   	inc    esi
c0107e6d:	e2 00                	loop   c0107e6f <PKnFont+0x4ef>
c0107e6f:	00 00                	add    BYTE PTR [eax],al
c0107e71:	38 44 82 82          	cmp    BYTE PTR [edx+eax*4-0x7e],al
c0107e75:	82                   	(bad)  
c0107e76:	82                   	(bad)  
c0107e77:	82                   	(bad)  
c0107e78:	82                   	(bad)  
c0107e79:	82                   	(bad)  
c0107e7a:	82                   	(bad)  
c0107e7b:	82                   	(bad)  
c0107e7c:	44                   	inc    esp
c0107e7d:	38 00                	cmp    BYTE PTR [eax],al
c0107e7f:	00 00                	add    BYTE PTR [eax],al
c0107e81:	f8                   	clc    
c0107e82:	44                   	inc    esp
c0107e83:	42                   	inc    edx
c0107e84:	42                   	inc    edx
c0107e85:	42                   	inc    edx
c0107e86:	44                   	inc    esp
c0107e87:	78 40                	js     c0107ec9 <PKnFont+0x549>
c0107e89:	40                   	inc    eax
c0107e8a:	40                   	inc    eax
c0107e8b:	40                   	inc    eax
c0107e8c:	40                   	inc    eax
c0107e8d:	f0 00 00             	lock add BYTE PTR [eax],al
c0107e90:	00 38                	add    BYTE PTR [eax],bh
c0107e92:	44                   	inc    esp
c0107e93:	82                   	(bad)  
c0107e94:	82                   	(bad)  
c0107e95:	82                   	(bad)  
c0107e96:	82                   	(bad)  
c0107e97:	82                   	(bad)  
c0107e98:	82                   	(bad)  
c0107e99:	82                   	(bad)  
c0107e9a:	92                   	xchg   edx,eax
c0107e9b:	8a 44 3a 00          	mov    al,BYTE PTR [edx+edi*1+0x0]
c0107e9f:	00 00                	add    BYTE PTR [eax],al
c0107ea1:	fc                   	cld    
c0107ea2:	42                   	inc    edx
c0107ea3:	42                   	inc    edx
c0107ea4:	42                   	inc    edx
c0107ea5:	42                   	inc    edx
c0107ea6:	7c 44                	jl     c0107eec <PKnFont+0x56c>
c0107ea8:	42                   	inc    edx
c0107ea9:	42                   	inc    edx
c0107eaa:	42                   	inc    edx
c0107eab:	42                   	inc    edx
c0107eac:	42                   	inc    edx
c0107ead:	e7 00                	out    0x0,eax
c0107eaf:	00 00                	add    BYTE PTR [eax],al
c0107eb1:	3a 46 82             	cmp    al,BYTE PTR [esi-0x7e]
c0107eb4:	82                   	(bad)  
c0107eb5:	80 40 38 04          	add    BYTE PTR [eax+0x38],0x4
c0107eb9:	02 82 82 c4 b8 00    	add    al,BYTE PTR [edx+0xb8c482]
c0107ebf:	00 00                	add    BYTE PTR [eax],al
c0107ec1:	fe                   	(bad)  
c0107ec2:	92                   	xchg   edx,eax
c0107ec3:	92                   	xchg   edx,eax
c0107ec4:	10 10                	adc    BYTE PTR [eax],dl
c0107ec6:	10 10                	adc    BYTE PTR [eax],dl
c0107ec8:	10 10                	adc    BYTE PTR [eax],dl
c0107eca:	10 10                	adc    BYTE PTR [eax],dl
c0107ecc:	10 7c 00 00          	adc    BYTE PTR [eax+eax*1+0x0],bh
c0107ed0:	00 e7                	add    bh,ah
c0107ed2:	42                   	inc    edx
c0107ed3:	42                   	inc    edx
c0107ed4:	42                   	inc    edx
c0107ed5:	42                   	inc    edx
c0107ed6:	42                   	inc    edx
c0107ed7:	42                   	inc    edx
c0107ed8:	42                   	inc    edx
c0107ed9:	42                   	inc    edx
c0107eda:	42                   	inc    edx
c0107edb:	42                   	inc    edx
c0107edc:	24 3c                	and    al,0x3c
c0107ede:	00 00                	add    BYTE PTR [eax],al
c0107ee0:	00 e7                	add    bh,ah
c0107ee2:	42                   	inc    edx
c0107ee3:	42                   	inc    edx
c0107ee4:	42                   	inc    edx
c0107ee5:	42                   	inc    edx
c0107ee6:	24 24                	and    al,0x24
c0107ee8:	24 24                	and    al,0x24
c0107eea:	18 18                	sbb    BYTE PTR [eax],bl
c0107eec:	18 18                	sbb    BYTE PTR [eax],bl
c0107eee:	00 00                	add    BYTE PTR [eax],al
c0107ef0:	00 e7                	add    bh,ah
c0107ef2:	42                   	inc    edx
c0107ef3:	42                   	inc    edx
c0107ef4:	42                   	inc    edx
c0107ef5:	5a                   	pop    edx
c0107ef6:	5a                   	pop    edx
c0107ef7:	5a                   	pop    edx
c0107ef8:	5a                   	pop    edx
c0107ef9:	24 24                	and    al,0x24
c0107efb:	24 24                	and    al,0x24
c0107efd:	24 00                	and    al,0x0
c0107eff:	00 00                	add    BYTE PTR [eax],al
c0107f01:	e7 42                	out    0x42,eax
c0107f03:	42                   	inc    edx
c0107f04:	24 24                	and    al,0x24
c0107f06:	24 18                	and    al,0x18
c0107f08:	24 24                	and    al,0x24
c0107f0a:	24 42                	and    al,0x42
c0107f0c:	42                   	inc    edx
c0107f0d:	e7 00                	out    0x0,eax
c0107f0f:	00 00                	add    BYTE PTR [eax],al
c0107f11:	ee                   	out    dx,al
c0107f12:	44                   	inc    esp
c0107f13:	44                   	inc    esp
c0107f14:	44                   	inc    esp
c0107f15:	28 28                	sub    BYTE PTR [eax],ch
c0107f17:	28 10                	sub    BYTE PTR [eax],dl
c0107f19:	10 10                	adc    BYTE PTR [eax],dl
c0107f1b:	10 10                	adc    BYTE PTR [eax],dl
c0107f1d:	7c 00                	jl     c0107f1f <PKnFont+0x59f>
c0107f1f:	00 00                	add    BYTE PTR [eax],al
c0107f21:	fe 84 84 08 08 10 10 	inc    BYTE PTR [esp+eax*4+0x10100808]
c0107f28:	20 20                	and    BYTE PTR [eax],ah
c0107f2a:	40                   	inc    eax
c0107f2b:	42                   	inc    edx
c0107f2c:	82                   	(bad)  
c0107f2d:	fe 00                	inc    BYTE PTR [eax]
c0107f2f:	00 00                	add    BYTE PTR [eax],al
c0107f31:	3e 20 20             	and    BYTE PTR ds:[eax],ah
c0107f34:	20 20                	and    BYTE PTR [eax],ah
c0107f36:	20 20                	and    BYTE PTR [eax],ah
c0107f38:	20 20                	and    BYTE PTR [eax],ah
c0107f3a:	20 20                	and    BYTE PTR [eax],ah
c0107f3c:	20 20                	and    BYTE PTR [eax],ah
c0107f3e:	3e 00 80 80 40 40 20 	add    BYTE PTR ds:[eax+0x20404080],al
c0107f45:	20 20                	and    BYTE PTR [eax],ah
c0107f47:	10 10                	adc    BYTE PTR [eax],dl
c0107f49:	08 08                	or     BYTE PTR [eax],cl
c0107f4b:	04 04                	add    al,0x4
c0107f4d:	04 02                	add    al,0x2
c0107f4f:	02 00                	add    al,BYTE PTR [eax]
c0107f51:	7c 04                	jl     c0107f57 <PKnFont+0x5d7>
c0107f53:	04 04                	add    al,0x4
c0107f55:	04 04                	add    al,0x4
c0107f57:	04 04                	add    al,0x4
c0107f59:	04 04                	add    al,0x4
c0107f5b:	04 04                	add    al,0x4
c0107f5d:	04 7c                	add    al,0x7c
c0107f5f:	00 00                	add    BYTE PTR [eax],al
c0107f61:	10 28                	adc    BYTE PTR [eax],ch
c0107f63:	44                   	inc    esp
c0107f64:	82                   	(bad)  
	...
c0107f7d:	00 fe                	add    dh,bh
c0107f7f:	00 10                	add    BYTE PTR [eax],dl
c0107f81:	08 04 00             	or     BYTE PTR [eax+eax*1],al
	...
c0107f94:	00 70 08             	add    BYTE PTR [eax+0x8],dh
c0107f97:	04 3c                	add    al,0x3c
c0107f99:	44                   	inc    esp
c0107f9a:	84 84 8c 76 00 00 c0 	test   BYTE PTR [esp+ecx*4-0x3fffff8a],al
c0107fa1:	40                   	inc    eax
c0107fa2:	40                   	inc    eax
c0107fa3:	40                   	inc    eax
c0107fa4:	40                   	inc    eax
c0107fa5:	58                   	pop    eax
c0107fa6:	64 42                	fs inc edx
c0107fa8:	42                   	inc    edx
c0107fa9:	42                   	inc    edx
c0107faa:	42                   	inc    edx
c0107fab:	42                   	inc    edx
c0107fac:	64 58                	fs pop eax
c0107fae:	00 00                	add    BYTE PTR [eax],al
c0107fb0:	00 00                	add    BYTE PTR [eax],al
c0107fb2:	00 00                	add    BYTE PTR [eax],al
c0107fb4:	00 30                	add    BYTE PTR [eax],dh
c0107fb6:	4c                   	dec    esp
c0107fb7:	84 84 80 80 82 44 38 	test   BYTE PTR [eax+eax*4+0x38448280],al
c0107fbe:	00 00                	add    BYTE PTR [eax],al
c0107fc0:	0c 04                	or     al,0x4
c0107fc2:	04 04                	add    al,0x4
c0107fc4:	04 34                	add    al,0x34
c0107fc6:	4c                   	dec    esp
c0107fc7:	84 84 84 84 84 4c 36 	test   BYTE PTR [esp+eax*4+0x364c8484],al
c0107fce:	00 00                	add    BYTE PTR [eax],al
c0107fd0:	00 00                	add    BYTE PTR [eax],al
c0107fd2:	00 00                	add    BYTE PTR [eax],al
c0107fd4:	00 38                	add    BYTE PTR [eax],bh
c0107fd6:	44                   	inc    esp
c0107fd7:	82                   	(bad)  
c0107fd8:	82                   	(bad)  
c0107fd9:	fc                   	cld    
c0107fda:	80 82 42 3c 00 00 0e 	add    BYTE PTR [edx+0x3c42],0xe
c0107fe1:	10 10                	adc    BYTE PTR [eax],dl
c0107fe3:	10 10                	adc    BYTE PTR [eax],dl
c0107fe5:	7c 10                	jl     c0107ff7 <PKnFont+0x677>
c0107fe7:	10 10                	adc    BYTE PTR [eax],dl
c0107fe9:	10 10                	adc    BYTE PTR [eax],dl
c0107feb:	10 10                	adc    BYTE PTR [eax],dl
c0107fed:	7c 00                	jl     c0107fef <PKnFont+0x66f>
c0107fef:	00 00                	add    BYTE PTR [eax],al
c0107ff1:	00 00                	add    BYTE PTR [eax],al
c0107ff3:	00 00                	add    BYTE PTR [eax],al
c0107ff5:	36 4c                	ss dec esp
c0107ff7:	84 84 84 84 4c 34 04 	test   BYTE PTR [esp+eax*4+0x4344c84],al
c0107ffe:	04 38                	add    al,0x38
c0108000:	c0 40 40 40          	rol    BYTE PTR [eax+0x40],0x40
c0108004:	40                   	inc    eax
c0108005:	58                   	pop    eax
c0108006:	64 42                	fs inc edx
c0108008:	42                   	inc    edx
c0108009:	42                   	inc    edx
c010800a:	42                   	inc    edx
c010800b:	42                   	inc    edx
c010800c:	42                   	inc    edx
c010800d:	e3 00                	jecxz  c010800f <PKnFont+0x68f>
c010800f:	00 00                	add    BYTE PTR [eax],al
c0108011:	10 10                	adc    BYTE PTR [eax],dl
c0108013:	00 00                	add    BYTE PTR [eax],al
c0108015:	30 10                	xor    BYTE PTR [eax],dl
c0108017:	10 10                	adc    BYTE PTR [eax],dl
c0108019:	10 10                	adc    BYTE PTR [eax],dl
c010801b:	10 10                	adc    BYTE PTR [eax],dl
c010801d:	38 00                	cmp    BYTE PTR [eax],al
c010801f:	00 00                	add    BYTE PTR [eax],al
c0108021:	04 04                	add    al,0x4
c0108023:	00 00                	add    BYTE PTR [eax],al
c0108025:	0c 04                	or     al,0x4
c0108027:	04 04                	add    al,0x4
c0108029:	04 04                	add    al,0x4
c010802b:	04 04                	add    al,0x4
c010802d:	08 08                	or     BYTE PTR [eax],cl
c010802f:	30 c0                	xor    al,al
c0108031:	40                   	inc    eax
c0108032:	40                   	inc    eax
c0108033:	40                   	inc    eax
c0108034:	40                   	inc    eax
c0108035:	4e                   	dec    esi
c0108036:	44                   	inc    esp
c0108037:	48                   	dec    eax
c0108038:	50                   	push   eax
c0108039:	60                   	pusha  
c010803a:	50                   	push   eax
c010803b:	48                   	dec    eax
c010803c:	44                   	inc    esp
c010803d:	e6 00                	out    0x0,al
c010803f:	00 30                	add    BYTE PTR [eax],dh
c0108041:	10 10                	adc    BYTE PTR [eax],dl
c0108043:	10 10                	adc    BYTE PTR [eax],dl
c0108045:	10 10                	adc    BYTE PTR [eax],dl
c0108047:	10 10                	adc    BYTE PTR [eax],dl
c0108049:	10 10                	adc    BYTE PTR [eax],dl
c010804b:	10 10                	adc    BYTE PTR [eax],dl
c010804d:	38 00                	cmp    BYTE PTR [eax],al
c010804f:	00 00                	add    BYTE PTR [eax],al
c0108051:	00 00                	add    BYTE PTR [eax],al
c0108053:	00 00                	add    BYTE PTR [eax],al
c0108055:	f6                   	(bad)  
c0108056:	49                   	dec    ecx
c0108057:	49                   	dec    ecx
c0108058:	49                   	dec    ecx
c0108059:	49                   	dec    ecx
c010805a:	49                   	dec    ecx
c010805b:	49                   	dec    ecx
c010805c:	49                   	dec    ecx
c010805d:	db 00                	fild   DWORD PTR [eax]
c010805f:	00 00                	add    BYTE PTR [eax],al
c0108061:	00 00                	add    BYTE PTR [eax],al
c0108063:	00 00                	add    BYTE PTR [eax],al
c0108065:	d8 64 42 42          	fsub   DWORD PTR [edx+eax*2+0x42]
c0108069:	42                   	inc    edx
c010806a:	42                   	inc    edx
c010806b:	42                   	inc    edx
c010806c:	42                   	inc    edx
c010806d:	e3 00                	jecxz  c010806f <PKnFont+0x6ef>
c010806f:	00 00                	add    BYTE PTR [eax],al
c0108071:	00 00                	add    BYTE PTR [eax],al
c0108073:	00 00                	add    BYTE PTR [eax],al
c0108075:	38 44 82 82          	cmp    BYTE PTR [edx+eax*4-0x7e],al
c0108079:	82                   	(bad)  
c010807a:	82                   	(bad)  
c010807b:	82                   	(bad)  
c010807c:	44                   	inc    esp
c010807d:	38 00                	cmp    BYTE PTR [eax],al
c010807f:	00 00                	add    BYTE PTR [eax],al
c0108081:	00 00                	add    BYTE PTR [eax],al
c0108083:	00 d8                	add    al,bl
c0108085:	64 42                	fs inc edx
c0108087:	42                   	inc    edx
c0108088:	42                   	inc    edx
c0108089:	42                   	inc    edx
c010808a:	42                   	inc    edx
c010808b:	64 58                	fs pop eax
c010808d:	40                   	inc    eax
c010808e:	40                   	inc    eax
c010808f:	e0 00                	loopne c0108091 <PKnFont+0x711>
c0108091:	00 00                	add    BYTE PTR [eax],al
c0108093:	00 34 4c             	add    BYTE PTR [esp+ecx*2],dh
c0108096:	84 84 84 84 84 4c 34 	test   BYTE PTR [esp+eax*4+0x344c8484],al
c010809d:	04 04                	add    al,0x4
c010809f:	0e                   	push   cs
c01080a0:	00 00                	add    BYTE PTR [eax],al
c01080a2:	00 00                	add    BYTE PTR [eax],al
c01080a4:	00 dc                	add    ah,bl
c01080a6:	62 42 40             	bound  eax,QWORD PTR [edx+0x40]
c01080a9:	40                   	inc    eax
c01080aa:	40                   	inc    eax
c01080ab:	40                   	inc    eax
c01080ac:	40                   	inc    eax
c01080ad:	e0 00                	loopne c01080af <PKnFont+0x72f>
c01080af:	00 00                	add    BYTE PTR [eax],al
c01080b1:	00 00                	add    BYTE PTR [eax],al
c01080b3:	00 00                	add    BYTE PTR [eax],al
c01080b5:	7a 86                	jp     c010803d <PKnFont+0x6bd>
c01080b7:	82                   	(bad)  
c01080b8:	c0 38 06             	sar    BYTE PTR [eax],0x6
c01080bb:	82                   	(bad)  
c01080bc:	c2 bc 00             	ret    0xbc
c01080bf:	00 00                	add    BYTE PTR [eax],al
c01080c1:	00 10                	add    BYTE PTR [eax],dl
c01080c3:	10 10                	adc    BYTE PTR [eax],dl
c01080c5:	7c 10                	jl     c01080d7 <PKnFont+0x757>
c01080c7:	10 10                	adc    BYTE PTR [eax],dl
c01080c9:	10 10                	adc    BYTE PTR [eax],dl
c01080cb:	10 10                	adc    BYTE PTR [eax],dl
c01080cd:	0e                   	push   cs
c01080ce:	00 00                	add    BYTE PTR [eax],al
c01080d0:	00 00                	add    BYTE PTR [eax],al
c01080d2:	00 00                	add    BYTE PTR [eax],al
c01080d4:	00 c6                	add    dh,al
c01080d6:	42                   	inc    edx
c01080d7:	42                   	inc    edx
c01080d8:	42                   	inc    edx
c01080d9:	42                   	inc    edx
c01080da:	42                   	inc    edx
c01080db:	42                   	inc    edx
c01080dc:	46                   	inc    esi
c01080dd:	3b 00                	cmp    eax,DWORD PTR [eax]
c01080df:	00 00                	add    BYTE PTR [eax],al
c01080e1:	00 00                	add    BYTE PTR [eax],al
c01080e3:	00 00                	add    BYTE PTR [eax],al
c01080e5:	e7 42                	out    0x42,eax
c01080e7:	42                   	inc    edx
c01080e8:	42                   	inc    edx
c01080e9:	24 24                	and    al,0x24
c01080eb:	24 18                	and    al,0x18
c01080ed:	18 00                	sbb    BYTE PTR [eax],al
c01080ef:	00 00                	add    BYTE PTR [eax],al
c01080f1:	00 00                	add    BYTE PTR [eax],al
c01080f3:	00 00                	add    BYTE PTR [eax],al
c01080f5:	e7 42                	out    0x42,eax
c01080f7:	42                   	inc    edx
c01080f8:	5a                   	pop    edx
c01080f9:	5a                   	pop    edx
c01080fa:	5a                   	pop    edx
c01080fb:	24 24                	and    al,0x24
c01080fd:	24 00                	and    al,0x0
c01080ff:	00 00                	add    BYTE PTR [eax],al
c0108101:	00 00                	add    BYTE PTR [eax],al
c0108103:	00 00                	add    BYTE PTR [eax],al
c0108105:	c6 44 28 28 10       	mov    BYTE PTR [eax+ebp*1+0x28],0x10
c010810a:	28 28                	sub    BYTE PTR [eax],ch
c010810c:	44                   	inc    esp
c010810d:	c6 00 00             	mov    BYTE PTR [eax],0x0
c0108110:	00 00                	add    BYTE PTR [eax],al
c0108112:	00 00                	add    BYTE PTR [eax],al
c0108114:	00 e7                	add    bh,ah
c0108116:	42                   	inc    edx
c0108117:	42                   	inc    edx
c0108118:	24 24                	and    al,0x24
c010811a:	24 18                	and    al,0x18
c010811c:	18 10                	sbb    BYTE PTR [eax],dl
c010811e:	10 60 00             	adc    BYTE PTR [eax+0x0],ah
c0108121:	00 00                	add    BYTE PTR [eax],al
c0108123:	00 00                	add    BYTE PTR [eax],al
c0108125:	fe 82 84 08 10 20    	inc    BYTE PTR [edx+0x20100884]
c010812b:	42                   	inc    edx
c010812c:	82                   	(bad)  
c010812d:	fe 00                	inc    BYTE PTR [eax]
c010812f:	00 00                	add    BYTE PTR [eax],al
c0108131:	06                   	push   es
c0108132:	08 10                	or     BYTE PTR [eax],dl
c0108134:	10 10                	adc    BYTE PTR [eax],dl
c0108136:	10 60 10             	adc    BYTE PTR [eax+0x10],ah
c0108139:	10 10                	adc    BYTE PTR [eax],dl
c010813b:	10 08                	adc    BYTE PTR [eax],cl
c010813d:	06                   	push   es
c010813e:	00 00                	add    BYTE PTR [eax],al
c0108140:	10 10                	adc    BYTE PTR [eax],dl
c0108142:	10 10                	adc    BYTE PTR [eax],dl
c0108144:	10 10                	adc    BYTE PTR [eax],dl
c0108146:	10 10                	adc    BYTE PTR [eax],dl
c0108148:	10 10                	adc    BYTE PTR [eax],dl
c010814a:	10 10                	adc    BYTE PTR [eax],dl
c010814c:	10 10                	adc    BYTE PTR [eax],dl
c010814e:	10 10                	adc    BYTE PTR [eax],dl
c0108150:	00 60 10             	add    BYTE PTR [eax+0x10],ah
c0108153:	08 08                	or     BYTE PTR [eax],cl
c0108155:	08 08                	or     BYTE PTR [eax],cl
c0108157:	06                   	push   es
c0108158:	08 08                	or     BYTE PTR [eax],cl
c010815a:	08 08                	or     BYTE PTR [eax],cl
c010815c:	10 60 00             	adc    BYTE PTR [eax+0x0],ah
c010815f:	00 00                	add    BYTE PTR [eax],al
c0108161:	72 8c                	jb     c01080ef <PKnFont+0x76f>
	...

c0108980 <digits.1066>:
c0108980:	30 31                	xor    BYTE PTR [ecx],dh
c0108982:	32 33                	xor    dh,BYTE PTR [ebx]
c0108984:	34 35                	xor    al,0x35
c0108986:	36 37                	ss aaa 
c0108988:	38 39                	cmp    BYTE PTR [ecx],bh
c010898a:	41                   	inc    ecx
c010898b:	42                   	inc    edx
c010898c:	43                   	inc    ebx
c010898d:	44                   	inc    esp
c010898e:	45                   	inc    ebp
c010898f:	46                   	inc    esi
c0108990:	47                   	inc    edi
c0108991:	48                   	dec    eax
c0108992:	49                   	dec    ecx
c0108993:	4a                   	dec    edx
c0108994:	4b                   	dec    ebx
c0108995:	4c                   	dec    esp
c0108996:	4d                   	dec    ebp
c0108997:	4e                   	dec    esi
c0108998:	4f                   	dec    edi
c0108999:	50                   	push   eax
c010899a:	51                   	push   ecx
c010899b:	52                   	push   edx
c010899c:	53                   	push   ebx
c010899d:	54                   	push   esp
c010899e:	55                   	push   ebp
c010899f:	56                   	push   esi
c01089a0:	57                   	push   edi
c01089a1:	58                   	pop    eax
c01089a2:	59                   	pop    ecx
c01089a3:	5a                   	pop    edx
	...

c01089c0 <digits.1047>:
c01089c0:	30 31                	xor    BYTE PTR [ecx],dh
c01089c2:	32 33                	xor    dh,BYTE PTR [ebx]
c01089c4:	34 35                	xor    al,0x35
c01089c6:	36 37                	ss aaa 
c01089c8:	38 39                	cmp    BYTE PTR [ecx],bh
c01089ca:	41                   	inc    ecx
c01089cb:	42                   	inc    edx
c01089cc:	43                   	inc    ebx
c01089cd:	44                   	inc    esp
c01089ce:	45                   	inc    ebp
c01089cf:	46                   	inc    esi
c01089d0:	47                   	inc    edi
c01089d1:	48                   	dec    eax
c01089d2:	49                   	dec    ecx
c01089d3:	4a                   	dec    edx
c01089d4:	4b                   	dec    ebx
c01089d5:	4c                   	dec    esp
c01089d6:	4d                   	dec    ebp
c01089d7:	4e                   	dec    esi
c01089d8:	4f                   	dec    edi
c01089d9:	50                   	push   eax
c01089da:	51                   	push   ecx
c01089db:	52                   	push   edx
c01089dc:	53                   	push   ebx
c01089dd:	54                   	push   esp
c01089de:	55                   	push   ebp
c01089df:	56                   	push   esi
c01089e0:	57                   	push   edi
c01089e1:	58                   	pop    eax
c01089e2:	59                   	pop    ecx
c01089e3:	5a                   	pop    edx
	...
c0108a00:	20 20                	and    BYTE PTR [eax],ah
c0108a02:	20 20                	and    BYTE PTR [eax],ah
c0108a04:	20 20                	and    BYTE PTR [eax],ah
c0108a06:	20 20                	and    BYTE PTR [eax],ah
c0108a08:	20 20                	and    BYTE PTR [eax],ah
c0108a0a:	20 20                	and    BYTE PTR [eax],ah
c0108a0c:	20 20                	and    BYTE PTR [eax],ah
c0108a0e:	20 20                	and    BYTE PTR [eax],ah
c0108a10:	23 23                	and    esp,DWORD PTR [ebx]
c0108a12:	23 23                	and    esp,DWORD PTR [ebx]
c0108a14:	23 23                	and    esp,DWORD PTR [ebx]
c0108a16:	23 23                	and    esp,DWORD PTR [ebx]
c0108a18:	23 23                	and    esp,DWORD PTR [ebx]
c0108a1a:	23 23                	and    esp,DWORD PTR [ebx]
c0108a1c:	23 20                	and    esp,DWORD PTR [eax]
c0108a1e:	20 23                	and    BYTE PTR [ebx],ah
c0108a20:	20 20                	and    BYTE PTR [eax],ah
c0108a22:	20 20                	and    BYTE PTR [eax],ah
c0108a24:	20 20                	and    BYTE PTR [eax],ah
c0108a26:	20 20                	and    BYTE PTR [eax],ah
c0108a28:	20 20                	and    BYTE PTR [eax],ah
c0108a2a:	20 23                	and    BYTE PTR [ebx],ah
c0108a2c:	20 20                	and    BYTE PTR [eax],ah
c0108a2e:	23 20                	and    esp,DWORD PTR [eax]
c0108a30:	20 20                	and    BYTE PTR [eax],ah
c0108a32:	20 20                	and    BYTE PTR [eax],ah
c0108a34:	20 20                	and    BYTE PTR [eax],ah
c0108a36:	20 20                	and    BYTE PTR [eax],ah
c0108a38:	20 20                	and    BYTE PTR [eax],ah
c0108a3a:	23 20                	and    esp,DWORD PTR [eax]
c0108a3c:	20 23                	and    BYTE PTR [ebx],ah
c0108a3e:	20 20                	and    BYTE PTR [eax],ah
c0108a40:	20 20                	and    BYTE PTR [eax],ah
c0108a42:	20 20                	and    BYTE PTR [eax],ah
c0108a44:	20 20                	and    BYTE PTR [eax],ah
c0108a46:	20 20                	and    BYTE PTR [eax],ah
c0108a48:	20 23                	and    BYTE PTR [ebx],ah
c0108a4a:	20 20                	and    BYTE PTR [eax],ah
c0108a4c:	23 20                	and    esp,DWORD PTR [eax]
c0108a4e:	20 20                	and    BYTE PTR [eax],ah
c0108a50:	23 23                	and    esp,DWORD PTR [ebx]
c0108a52:	23 23                	and    esp,DWORD PTR [ebx]
c0108a54:	23 20                	and    esp,DWORD PTR [eax]
c0108a56:	20 20                	and    BYTE PTR [eax],ah
c0108a58:	23 20                	and    esp,DWORD PTR [eax]
c0108a5a:	20 23                	and    BYTE PTR [ebx],ah
c0108a5c:	20 20                	and    BYTE PTR [eax],ah
c0108a5e:	20 23                	and    BYTE PTR [ebx],ah
c0108a60:	20 20                	and    BYTE PTR [eax],ah
c0108a62:	20 23                	and    BYTE PTR [ebx],ah
c0108a64:	20 20                	and    BYTE PTR [eax],ah
c0108a66:	20 23                	and    BYTE PTR [ebx],ah
c0108a68:	20 20                	and    BYTE PTR [eax],ah
c0108a6a:	23 20                	and    esp,DWORD PTR [eax]
c0108a6c:	20 20                	and    BYTE PTR [eax],ah
c0108a6e:	23 20                	and    esp,DWORD PTR [eax]
c0108a70:	20 20                	and    BYTE PTR [eax],ah
c0108a72:	23 20                	and    esp,DWORD PTR [eax]
c0108a74:	20 20                	and    BYTE PTR [eax],ah
c0108a76:	23 20                	and    esp,DWORD PTR [eax]
c0108a78:	20 23                	and    BYTE PTR [ebx],ah
c0108a7a:	20 20                	and    BYTE PTR [eax],ah
c0108a7c:	20 23                	and    BYTE PTR [ebx],ah
c0108a7e:	20 20                	and    BYTE PTR [eax],ah
c0108a80:	20 23                	and    BYTE PTR [ebx],ah
c0108a82:	20 20                	and    BYTE PTR [eax],ah
c0108a84:	20 23                	and    BYTE PTR [ebx],ah
c0108a86:	20 20                	and    BYTE PTR [eax],ah
c0108a88:	23 23                	and    esp,DWORD PTR [ebx]
c0108a8a:	23 23                	and    esp,DWORD PTR [ebx]
c0108a8c:	23 23                	and    esp,DWORD PTR [ebx]
c0108a8e:	23 23                	and    esp,DWORD PTR [ebx]
c0108a90:	23 20                	and    esp,DWORD PTR [eax]
c0108a92:	20 20                	and    BYTE PTR [eax],ah
c0108a94:	23 20                	and    esp,DWORD PTR [eax]
c0108a96:	20 23                	and    BYTE PTR [ebx],ah
c0108a98:	23 20                	and    esp,DWORD PTR [eax]
c0108a9a:	20 23                	and    BYTE PTR [ebx],ah
c0108a9c:	20 20                	and    BYTE PTR [eax],ah
c0108a9e:	20 20                	and    BYTE PTR [eax],ah
c0108aa0:	20 20                	and    BYTE PTR [eax],ah
c0108aa2:	20 23                	and    BYTE PTR [ebx],ah
c0108aa4:	20 20                	and    BYTE PTR [eax],ah
c0108aa6:	23 20                	and    esp,DWORD PTR [eax]
c0108aa8:	23 20                	and    esp,DWORD PTR [eax]
c0108aaa:	23 20                	and    esp,DWORD PTR [eax]
c0108aac:	20 20                	and    BYTE PTR [eax],ah
c0108aae:	20 20                	and    BYTE PTR [eax],ah
c0108ab0:	20 20                	and    BYTE PTR [eax],ah
c0108ab2:	23 20                	and    esp,DWORD PTR [eax]
c0108ab4:	20 23                	and    BYTE PTR [ebx],ah
c0108ab6:	20 20                	and    BYTE PTR [eax],ah
c0108ab8:	23 23                	and    esp,DWORD PTR [ebx]
c0108aba:	20 20                	and    BYTE PTR [eax],ah
c0108abc:	20 20                	and    BYTE PTR [eax],ah
c0108abe:	20 20                	and    BYTE PTR [eax],ah
c0108ac0:	20 23                	and    BYTE PTR [ebx],ah
c0108ac2:	20 20                	and    BYTE PTR [eax],ah
c0108ac4:	23 23                	and    esp,DWORD PTR [ebx]
c0108ac6:	23 23                	and    esp,DWORD PTR [ebx]
c0108ac8:	23 23                	and    esp,DWORD PTR [ebx]
c0108aca:	23 23                	and    esp,DWORD PTR [ebx]
c0108acc:	23 23                	and    esp,DWORD PTR [ebx]
c0108ace:	23 23                	and    esp,DWORD PTR [ebx]
c0108ad0:	23 20                	and    esp,DWORD PTR [eax]
c0108ad2:	20 20                	and    BYTE PTR [eax],ah
c0108ad4:	20 20                	and    BYTE PTR [eax],ah
c0108ad6:	20 20                	and    BYTE PTR [eax],ah
c0108ad8:	20 20                	and    BYTE PTR [eax],ah
c0108ada:	20 20                	and    BYTE PTR [eax],ah
c0108adc:	20 20                	and    BYTE PTR [eax],ah
c0108ade:	20 20                	and    BYTE PTR [eax],ah
c0108ae0:	20                   	.byte 0x20

Disassembly of section .eh_frame:

c0108ae4 <.eh_frame>:
c0108ae4:	10 00                	adc    BYTE PTR [eax],al
c0108ae6:	00 00                	add    BYTE PTR [eax],al
c0108ae8:	00 00                	add    BYTE PTR [eax],al
c0108aea:	00 00                	add    BYTE PTR [eax],al
c0108aec:	01 00                	add    DWORD PTR [eax],eax
c0108aee:	01 7c 08 0c          	add    DWORD PTR [eax+ecx*1+0xc],edi
c0108af2:	04 04                	add    al,0x4
c0108af4:	88 01                	mov    BYTE PTR [ecx],al
c0108af6:	00 00                	add    BYTE PTR [eax],al
c0108af8:	18 00                	sbb    BYTE PTR [eax],al
c0108afa:	00 00                	add    BYTE PTR [eax],al
c0108afc:	18 00                	sbb    BYTE PTR [eax],al
c0108afe:	00 00                	add    BYTE PTR [eax],al
c0108b00:	20 00                	and    BYTE PTR [eax],al
c0108b02:	10 c0                	adc    al,al
c0108b04:	38 02                	cmp    BYTE PTR [edx],al
c0108b06:	00 00                	add    BYTE PTR [eax],al
c0108b08:	41                   	inc    ecx
c0108b09:	0e                   	push   cs
c0108b0a:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0108b10:	44                   	inc    esp
c0108b11:	83 03 00             	add    DWORD PTR [ebx],0x0
c0108b14:	1c 00                	sbb    al,0x0
c0108b16:	00 00                	add    BYTE PTR [eax],al
c0108b18:	34 00                	xor    al,0x0
c0108b1a:	00 00                	add    BYTE PTR [eax],al
c0108b1c:	58                   	pop    eax
c0108b1d:	02 10                	add    dl,BYTE PTR [eax]
c0108b1f:	c0 b8 04 00 00 41 0e 	sar    BYTE PTR [eax+0x41000004],0xe
c0108b26:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0108b2c:	49                   	dec    ecx
c0108b2d:	83 05 86 04 87 03 00 	add    DWORD PTR ds:0x3870486,0x0
c0108b34:	14 00                	adc    al,0x0
c0108b36:	00 00                	add    BYTE PTR [eax],al
c0108b38:	54                   	push   esp
c0108b39:	00 00                	add    BYTE PTR [eax],al
c0108b3b:	00 10                	add    BYTE PTR [eax],dl
c0108b3d:	07                   	pop    es
c0108b3e:	10 c0                	adc    al,al
c0108b40:	cd 00                	int    0x0
c0108b42:	00 00                	add    BYTE PTR [eax],al
c0108b44:	41                   	inc    ecx
c0108b45:	0e                   	push   cs
c0108b46:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0108b4c:	1c 00                	sbb    al,0x0
c0108b4e:	00 00                	add    BYTE PTR [eax],al
c0108b50:	6c                   	ins    BYTE PTR es:[edi],dx
c0108b51:	00 00                	add    BYTE PTR [eax],al
c0108b53:	00 dd                	add    ch,bl
c0108b55:	07                   	pop    es
c0108b56:	10 c0                	adc    al,al
c0108b58:	9f                   	lahf   
c0108b59:	03 00                	add    eax,DWORD PTR [eax]
c0108b5b:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c0108b5e:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0108b64:	49                   	dec    ecx
c0108b65:	83 05 86 04 87 03 00 	add    DWORD PTR ds:0x3870486,0x0
c0108b6c:	1c 00                	sbb    al,0x0
c0108b6e:	00 00                	add    BYTE PTR [eax],al
c0108b70:	8c 00                	mov    WORD PTR [eax],es
c0108b72:	00 00                	add    BYTE PTR [eax],al
c0108b74:	7c 0b                	jl     c0108b81 <_edata+0xa0>
c0108b76:	10 c0                	adc    al,al
c0108b78:	05 00 00 00 41       	add    eax,0x41000000
c0108b7d:	0e                   	push   cs
c0108b7e:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0108b84:	41                   	inc    ecx
c0108b85:	0c 04                	or     al,0x4
c0108b87:	04 c5                	add    al,0xc5
c0108b89:	00 00                	add    BYTE PTR [eax],al
c0108b8b:	00 14 00             	add    BYTE PTR [eax+eax*1],dl
c0108b8e:	00 00                	add    BYTE PTR [eax],al
c0108b90:	ac                   	lods   al,BYTE PTR ds:[esi]
c0108b91:	00 00                	add    BYTE PTR [eax],al
c0108b93:	00 81 0b 10 c0 59    	add    BYTE PTR [ecx+0x59c0100b],al
c0108b99:	00 00                	add    BYTE PTR [eax],al
c0108b9b:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c0108b9e:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0108ba4:	14 00                	adc    al,0x0
c0108ba6:	00 00                	add    BYTE PTR [eax],al
c0108ba8:	c4 00                	les    eax,FWORD PTR [eax]
c0108baa:	00 00                	add    BYTE PTR [eax],al
c0108bac:	da 0b                	fimul  DWORD PTR [ebx]
c0108bae:	10 c0                	adc    al,al
c0108bb0:	0a 00                	or     al,BYTE PTR [eax]
c0108bb2:	00 00                	add    BYTE PTR [eax],al
c0108bb4:	41                   	inc    ecx
c0108bb5:	0e                   	push   cs
c0108bb6:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0108bbc:	14 00                	adc    al,0x0
c0108bbe:	00 00                	add    BYTE PTR [eax],al
c0108bc0:	dc 00                	fadd   QWORD PTR [eax]
c0108bc2:	00 00                	add    BYTE PTR [eax],al
c0108bc4:	e4 0b                	in     al,0xb
c0108bc6:	10 c0                	adc    al,al
c0108bc8:	a4                   	movs   BYTE PTR es:[edi],BYTE PTR ds:[esi]
c0108bc9:	00 00                	add    BYTE PTR [eax],al
c0108bcb:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c0108bce:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0108bd4:	1c 00                	sbb    al,0x0
c0108bd6:	00 00                	add    BYTE PTR [eax],al
c0108bd8:	f4                   	hlt    
c0108bd9:	00 00                	add    BYTE PTR [eax],al
c0108bdb:	00 88 0c 10 c0 43    	add    BYTE PTR [eax+0x43c0100c],cl
c0108be1:	00 00                	add    BYTE PTR [eax],al
c0108be3:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c0108be6:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0108bec:	7f c5                	jg     c0108bb3 <_edata+0xd2>
c0108bee:	0c 04                	or     al,0x4
c0108bf0:	04 00                	add    al,0x0
c0108bf2:	00 00                	add    BYTE PTR [eax],al
c0108bf4:	1c 00                	sbb    al,0x0
c0108bf6:	00 00                	add    BYTE PTR [eax],al
c0108bf8:	14 01                	adc    al,0x1
c0108bfa:	00 00                	add    BYTE PTR [eax],al
c0108bfc:	cc                   	int3   
c0108bfd:	0c 10                	or     al,0x10
c0108bff:	c0 4d 00 00          	ror    BYTE PTR [ebp+0x0],0x0
c0108c03:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c0108c06:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0108c0c:	02 49 c5             	add    cl,BYTE PTR [ecx-0x3b]
c0108c0f:	0c 04                	or     al,0x4
c0108c11:	04 00                	add    al,0x0
c0108c13:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c0108c16:	00 00                	add    BYTE PTR [eax],al
c0108c18:	34 01                	xor    al,0x1
c0108c1a:	00 00                	add    BYTE PTR [eax],al
c0108c1c:	c4 13                	les    edx,FWORD PTR [ebx]
c0108c1e:	10 c0                	adc    al,al
c0108c20:	06                   	push   es
c0108c21:	00 00                	add    BYTE PTR [eax],al
c0108c23:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c0108c26:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0108c2c:	42                   	inc    edx
c0108c2d:	0c 04                	or     al,0x4
c0108c2f:	04 c5                	add    al,0xc5
c0108c31:	00 00                	add    BYTE PTR [eax],al
c0108c33:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c0108c36:	00 00                	add    BYTE PTR [eax],al
c0108c38:	54                   	push   esp
c0108c39:	01 00                	add    DWORD PTR [eax],eax
c0108c3b:	00 ca                	add    dl,cl
c0108c3d:	13 10                	adc    edx,DWORD PTR [eax]
c0108c3f:	c0 06 00             	rol    BYTE PTR [esi],0x0
c0108c42:	00 00                	add    BYTE PTR [eax],al
c0108c44:	41                   	inc    ecx
c0108c45:	0e                   	push   cs
c0108c46:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0108c4c:	42                   	inc    edx
c0108c4d:	0c 04                	or     al,0x4
c0108c4f:	04 c5                	add    al,0xc5
c0108c51:	00 00                	add    BYTE PTR [eax],al
c0108c53:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c0108c56:	00 00                	add    BYTE PTR [eax],al
c0108c58:	74 01                	je     c0108c5b <_edata+0x17a>
c0108c5a:	00 00                	add    BYTE PTR [eax],al
c0108c5c:	d0 13                	rcl    BYTE PTR [ebx],1
c0108c5e:	10 c0                	adc    al,al
c0108c60:	0c 00                	or     al,0x0
c0108c62:	00 00                	add    BYTE PTR [eax],al
c0108c64:	41                   	inc    ecx
c0108c65:	0e                   	push   cs
c0108c66:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0108c6c:	48                   	dec    eax
c0108c6d:	0c 04                	or     al,0x4
c0108c6f:	04 c5                	add    al,0xc5
c0108c71:	00 00                	add    BYTE PTR [eax],al
c0108c73:	00 20                	add    BYTE PTR [eax],ah
c0108c75:	00 00                	add    BYTE PTR [eax],al
c0108c77:	00 94 01 00 00 dc 13 	add    BYTE PTR [ecx+eax*1+0x13dc0000],dl
c0108c7e:	10 c0                	adc    al,al
c0108c80:	17                   	pop    ss
c0108c81:	00 00                	add    BYTE PTR [eax],al
c0108c83:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c0108c86:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0108c8c:	44                   	inc    esp
c0108c8d:	83 03 4e             	add    DWORD PTR [ebx],0x4e
c0108c90:	c3                   	ret    
c0108c91:	41                   	inc    ecx
c0108c92:	0c 04                	or     al,0x4
c0108c94:	04 c5                	add    al,0xc5
c0108c96:	00 00                	add    BYTE PTR [eax],al
c0108c98:	1c 00                	sbb    al,0x0
c0108c9a:	00 00                	add    BYTE PTR [eax],al
c0108c9c:	b8 01 00 00 f3       	mov    eax,0xf3000001
c0108ca1:	13 10                	adc    edx,DWORD PTR [eax]
c0108ca3:	c0 f8 00             	sar    al,0x0
c0108ca6:	00 00                	add    BYTE PTR [eax],al
c0108ca8:	41                   	inc    ecx
c0108ca9:	0e                   	push   cs
c0108caa:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0108cb0:	02 f4                	add    dh,ah
c0108cb2:	c5 0c 04             	lds    ecx,FWORD PTR [esp+eax*1]
c0108cb5:	04 00                	add    al,0x0
c0108cb7:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c0108cba:	00 00                	add    BYTE PTR [eax],al
c0108cbc:	d8 01                	fadd   DWORD PTR [ecx]
c0108cbe:	00 00                	add    BYTE PTR [eax],al
c0108cc0:	eb 14                	jmp    c0108cd6 <_edata+0x1f5>
c0108cc2:	10 c0                	adc    al,al
c0108cc4:	1c 00                	sbb    al,0x0
c0108cc6:	00 00                	add    BYTE PTR [eax],al
c0108cc8:	41                   	inc    ecx
c0108cc9:	0e                   	push   cs
c0108cca:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0108cd0:	58                   	pop    eax
c0108cd1:	c5 0c 04             	lds    ecx,FWORD PTR [esp+eax*1]
c0108cd4:	04 00                	add    al,0x0
c0108cd6:	00 00                	add    BYTE PTR [eax],al
c0108cd8:	1c 00                	sbb    al,0x0
c0108cda:	00 00                	add    BYTE PTR [eax],al
c0108cdc:	f8                   	clc    
c0108cdd:	01 00                	add    DWORD PTR [eax],eax
c0108cdf:	00 07                	add    BYTE PTR [edi],al
c0108ce1:	15 10 c0 ba 00       	adc    eax,0xbac010
c0108ce6:	00 00                	add    BYTE PTR [eax],al
c0108ce8:	41                   	inc    ecx
c0108ce9:	0e                   	push   cs
c0108cea:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0108cf0:	02 b6 c5 0c 04 04    	add    dh,BYTE PTR [esi+0x4040cc5]
c0108cf6:	00 00                	add    BYTE PTR [eax],al
c0108cf8:	1c 00                	sbb    al,0x0
c0108cfa:	00 00                	add    BYTE PTR [eax],al
c0108cfc:	18 02                	sbb    BYTE PTR [edx],al
c0108cfe:	00 00                	add    BYTE PTR [eax],al
c0108d00:	c1 15 10 c0 44 00 00 	rcl    DWORD PTR ds:0x44c010,0x0
c0108d07:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c0108d0a:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0108d10:	02 40 0c             	add    al,BYTE PTR [eax+0xc]
c0108d13:	04 04                	add    al,0x4
c0108d15:	c5 00                	lds    eax,FWORD PTR [eax]
c0108d17:	00 24 00             	add    BYTE PTR [eax+eax*1],ah
c0108d1a:	00 00                	add    BYTE PTR [eax],al
c0108d1c:	38 02                	cmp    BYTE PTR [edx],al
c0108d1e:	00 00                	add    BYTE PTR [eax],al
c0108d20:	05 16 10 c0 46       	add    eax,0x46c01016
c0108d25:	00 00                	add    BYTE PTR [eax],al
c0108d27:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c0108d2a:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0108d30:	45                   	inc    ebp
c0108d31:	83 04 86 03          	add    DWORD PTR [esi+eax*4],0x3
c0108d35:	7b c3                	jnp    c0108cfa <_edata+0x219>
c0108d37:	41                   	inc    ecx
c0108d38:	c6 41 0c 04          	mov    BYTE PTR [ecx+0xc],0x4
c0108d3c:	04 c5                	add    al,0xc5
c0108d3e:	00 00                	add    BYTE PTR [eax],al
c0108d40:	18 00                	sbb    BYTE PTR [eax],al
c0108d42:	00 00                	add    BYTE PTR [eax],al
c0108d44:	60                   	pusha  
c0108d45:	02 00                	add    al,BYTE PTR [eax]
c0108d47:	00 4b 16             	add    BYTE PTR [ebx+0x16],cl
c0108d4a:	10 c0                	adc    al,al
c0108d4c:	1c 02                	sbb    al,0x2
c0108d4e:	00 00                	add    BYTE PTR [eax],al
c0108d50:	41                   	inc    ecx
c0108d51:	0e                   	push   cs
c0108d52:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0108d58:	47                   	inc    edi
c0108d59:	83 03 00             	add    DWORD PTR [ebx],0x0
c0108d5c:	1c 00                	sbb    al,0x0
c0108d5e:	00 00                	add    BYTE PTR [eax],al
c0108d60:	7c 02                	jl     c0108d64 <_edata+0x283>
c0108d62:	00 00                	add    BYTE PTR [eax],al
c0108d64:	67 18 10             	sbb    BYTE PTR [bx+si],dl
c0108d67:	c0 cd 00             	ror    ch,0x0
c0108d6a:	00 00                	add    BYTE PTR [eax],al
c0108d6c:	41                   	inc    ecx
c0108d6d:	0e                   	push   cs
c0108d6e:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0108d74:	02 c9                	add    cl,cl
c0108d76:	0c 04                	or     al,0x4
c0108d78:	04 c5                	add    al,0xc5
c0108d7a:	00 00                	add    BYTE PTR [eax],al
c0108d7c:	1c 00                	sbb    al,0x0
c0108d7e:	00 00                	add    BYTE PTR [eax],al
c0108d80:	9c                   	pushf  
c0108d81:	02 00                	add    al,BYTE PTR [eax]
c0108d83:	00 34 19             	add    BYTE PTR [ecx+ebx*1],dh
c0108d86:	10 c0                	adc    al,al
c0108d88:	2d 00 00 00 41       	sub    eax,0x41000000
c0108d8d:	0e                   	push   cs
c0108d8e:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0108d94:	69 c5 0c 04 04 00    	imul   eax,ebp,0x4040c
c0108d9a:	00 00                	add    BYTE PTR [eax],al
c0108d9c:	1c 00                	sbb    al,0x0
c0108d9e:	00 00                	add    BYTE PTR [eax],al
c0108da0:	bc 02 00 00 61       	mov    esp,0x61000002
c0108da5:	19 10                	sbb    DWORD PTR [eax],edx
c0108da7:	c0 2d 00 00 00 41 0e 	shr    BYTE PTR ds:0x41000000,0xe
c0108dae:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0108db4:	69 c5 0c 04 04 00    	imul   eax,ebp,0x4040c
c0108dba:	00 00                	add    BYTE PTR [eax],al
c0108dbc:	1c 00                	sbb    al,0x0
c0108dbe:	00 00                	add    BYTE PTR [eax],al
c0108dc0:	dc 02                	fadd   QWORD PTR [edx]
c0108dc2:	00 00                	add    BYTE PTR [eax],al
c0108dc4:	8e 19                	mov    ds,WORD PTR [ecx]
c0108dc6:	10 c0                	adc    al,al
c0108dc8:	1a 00                	sbb    al,BYTE PTR [eax]
c0108dca:	00 00                	add    BYTE PTR [eax],al
c0108dcc:	41                   	inc    ecx
c0108dcd:	0e                   	push   cs
c0108dce:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0108dd4:	56                   	push   esi
c0108dd5:	c5 0c 04             	lds    ecx,FWORD PTR [esp+eax*1]
c0108dd8:	04 00                	add    al,0x0
c0108dda:	00 00                	add    BYTE PTR [eax],al
c0108ddc:	1c 00                	sbb    al,0x0
c0108dde:	00 00                	add    BYTE PTR [eax],al
c0108de0:	fc                   	cld    
c0108de1:	02 00                	add    al,BYTE PTR [eax]
c0108de3:	00 a8 19 10 c0 17    	add    BYTE PTR [eax+0x17c01019],ch
c0108de9:	00 00                	add    BYTE PTR [eax],al
c0108deb:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c0108dee:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0108df4:	53                   	push   ebx
c0108df5:	0c 04                	or     al,0x4
c0108df7:	04 c5                	add    al,0xc5
c0108df9:	00 00                	add    BYTE PTR [eax],al
c0108dfb:	00 20                	add    BYTE PTR [eax],ah
c0108dfd:	00 00                	add    BYTE PTR [eax],al
c0108dff:	00 1c 03             	add    BYTE PTR [ebx+eax*1],bl
c0108e02:	00 00                	add    BYTE PTR [eax],al
c0108e04:	c0 19 10             	rcr    BYTE PTR [ecx],0x10
c0108e07:	c0 6d 00 00          	shr    BYTE PTR [ebp+0x0],0x0
c0108e0b:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c0108e0e:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0108e14:	44                   	inc    esp
c0108e15:	83 03 02             	add    DWORD PTR [ebx],0x2
c0108e18:	64 c3                	fs ret 
c0108e1a:	41                   	inc    ecx
c0108e1b:	0c 04                	or     al,0x4
c0108e1d:	04 c5                	add    al,0xc5
c0108e1f:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c0108e22:	00 00                	add    BYTE PTR [eax],al
c0108e24:	40                   	inc    eax
c0108e25:	03 00                	add    eax,DWORD PTR [eax]
c0108e27:	00 2d 1a 10 c0 1a    	add    BYTE PTR ds:0x1ac0101a,ch
c0108e2d:	00 00                	add    BYTE PTR [eax],al
c0108e2f:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c0108e32:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0108e38:	56                   	push   esi
c0108e39:	0c 04                	or     al,0x4
c0108e3b:	04 c5                	add    al,0xc5
c0108e3d:	00 00                	add    BYTE PTR [eax],al
c0108e3f:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c0108e42:	00 00                	add    BYTE PTR [eax],al
c0108e44:	60                   	pusha  
c0108e45:	03 00                	add    eax,DWORD PTR [eax]
c0108e47:	00 47 1a             	add    BYTE PTR [edi+0x1a],al
c0108e4a:	10 c0                	adc    al,al
c0108e4c:	0d 00 00 00 41       	or     eax,0x41000000
c0108e51:	0e                   	push   cs
c0108e52:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0108e58:	49                   	dec    ecx
c0108e59:	0c 04                	or     al,0x4
c0108e5b:	04 c5                	add    al,0xc5
c0108e5d:	00 00                	add    BYTE PTR [eax],al
c0108e5f:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c0108e62:	00 00                	add    BYTE PTR [eax],al
c0108e64:	80 03 00             	add    BYTE PTR [ebx],0x0
c0108e67:	00 54 1a 10          	add    BYTE PTR [edx+ebx*1+0x10],dl
c0108e6b:	c0 2f 03             	shr    BYTE PTR [edi],0x3
c0108e6e:	00 00                	add    BYTE PTR [eax],al
c0108e70:	41                   	inc    ecx
c0108e71:	0e                   	push   cs
c0108e72:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0108e78:	03 2b                	add    ebp,DWORD PTR [ebx]
c0108e7a:	03 c5                	add    eax,ebp
c0108e7c:	0c 04                	or     al,0x4
c0108e7e:	04 00                	add    al,0x0
c0108e80:	1c 00                	sbb    al,0x0
c0108e82:	00 00                	add    BYTE PTR [eax],al
c0108e84:	a0 03 00 00 83       	mov    al,ds:0x83000003
c0108e89:	1d 10 c0 84 01       	sbb    eax,0x184c010
c0108e8e:	00 00                	add    BYTE PTR [eax],al
c0108e90:	41                   	inc    ecx
c0108e91:	0e                   	push   cs
c0108e92:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0108e98:	03 80 01 c5 0c 04    	add    eax,DWORD PTR [eax+0x40cc501]
c0108e9e:	04 00                	add    al,0x0
c0108ea0:	1c 00                	sbb    al,0x0
c0108ea2:	00 00                	add    BYTE PTR [eax],al
c0108ea4:	c0 03 00             	rol    BYTE PTR [ebx],0x0
c0108ea7:	00 07                	add    BYTE PTR [edi],al
c0108ea9:	1f                   	pop    ds
c0108eaa:	10 c0                	adc    al,al
c0108eac:	27                   	daa    
c0108ead:	03 00                	add    eax,DWORD PTR [eax]
c0108eaf:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c0108eb2:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0108eb8:	03 23                	add    esp,DWORD PTR [ebx]
c0108eba:	03 c5                	add    eax,ebp
c0108ebc:	0c 04                	or     al,0x4
c0108ebe:	04 00                	add    al,0x0
c0108ec0:	1c 00                	sbb    al,0x0
c0108ec2:	00 00                	add    BYTE PTR [eax],al
c0108ec4:	e0 03                	loopne c0108ec9 <_edata+0x3e8>
c0108ec6:	00 00                	add    BYTE PTR [eax],al
c0108ec8:	2e 22 10             	and    dl,BYTE PTR cs:[eax]
c0108ecb:	c0 82 01 00 00 41 0e 	rol    BYTE PTR [edx+0x41000001],0xe
c0108ed2:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0108ed8:	03 7e 01             	add    edi,DWORD PTR [esi+0x1]
c0108edb:	c5 0c 04             	lds    ecx,FWORD PTR [esp+eax*1]
c0108ede:	04 00                	add    al,0x0
c0108ee0:	28 00                	sub    BYTE PTR [eax],al
c0108ee2:	00 00                	add    BYTE PTR [eax],al
c0108ee4:	00 04 00             	add    BYTE PTR [eax+eax*1],al
c0108ee7:	00 b0 23 10 c0 50    	add    BYTE PTR [eax+0x50c01023],dh
c0108eed:	02 00                	add    al,BYTE PTR [eax]
c0108eef:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c0108ef2:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0108ef8:	46                   	inc    esi
c0108ef9:	83 05 86 04 87 03 03 	add    DWORD PTR ds:0x3870486,0x3
c0108f00:	43                   	inc    ebx
c0108f01:	02 c3                	add    al,bl
c0108f03:	41                   	inc    ecx
c0108f04:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c0108f08:	0c 04                	or     al,0x4
c0108f0a:	04 c5                	add    al,0xc5
c0108f0c:	1c 00                	sbb    al,0x0
c0108f0e:	00 00                	add    BYTE PTR [eax],al
c0108f10:	2c 04                	sub    al,0x4
c0108f12:	00 00                	add    BYTE PTR [eax],al
c0108f14:	00 26                	add    BYTE PTR [esi],ah
c0108f16:	10 c0                	adc    al,al
c0108f18:	b1 00                	mov    cl,0x0
c0108f1a:	00 00                	add    BYTE PTR [eax],al
c0108f1c:	41                   	inc    ecx
c0108f1d:	0e                   	push   cs
c0108f1e:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0108f24:	02 ad c5 0c 04 04    	add    ch,BYTE PTR [ebp+0x4040cc5]
c0108f2a:	00 00                	add    BYTE PTR [eax],al
c0108f2c:	1c 00                	sbb    al,0x0
c0108f2e:	00 00                	add    BYTE PTR [eax],al
c0108f30:	4c                   	dec    esp
c0108f31:	04 00                	add    al,0x0
c0108f33:	00 b1 26 10 c0 40    	add    BYTE PTR [ecx+0x40c01026],dh
c0108f39:	00 00                	add    BYTE PTR [eax],al
c0108f3b:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c0108f3e:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0108f44:	7c c5                	jl     c0108f0b <_edata+0x42a>
c0108f46:	0c 04                	or     al,0x4
c0108f48:	04 00                	add    al,0x0
c0108f4a:	00 00                	add    BYTE PTR [eax],al
c0108f4c:	1c 00                	sbb    al,0x0
c0108f4e:	00 00                	add    BYTE PTR [eax],al
c0108f50:	6c                   	ins    BYTE PTR es:[edi],dx
c0108f51:	04 00                	add    al,0x0
c0108f53:	00 f1                	add    cl,dh
c0108f55:	26 10 c0             	es adc al,al
c0108f58:	13 00                	adc    eax,DWORD PTR [eax]
c0108f5a:	00 00                	add    BYTE PTR [eax],al
c0108f5c:	41                   	inc    ecx
c0108f5d:	0e                   	push   cs
c0108f5e:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0108f64:	4f                   	dec    edi
c0108f65:	0c 04                	or     al,0x4
c0108f67:	04 c5                	add    al,0xc5
c0108f69:	00 00                	add    BYTE PTR [eax],al
c0108f6b:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c0108f6e:	00 00                	add    BYTE PTR [eax],al
c0108f70:	8c 04 00             	mov    WORD PTR [eax+eax*1],es
c0108f73:	00 04 27             	add    BYTE PTR [edi+eiz*1],al
c0108f76:	10 c0                	adc    al,al
c0108f78:	27                   	daa    
c0108f79:	00 00                	add    BYTE PTR [eax],al
c0108f7b:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c0108f7e:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0108f84:	63 0c 04             	arpl   WORD PTR [esp+eax*1],cx
c0108f87:	04 c5                	add    al,0xc5
c0108f89:	00 00                	add    BYTE PTR [eax],al
c0108f8b:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c0108f8e:	00 00                	add    BYTE PTR [eax],al
c0108f90:	ac                   	lods   al,BYTE PTR ds:[esi]
c0108f91:	04 00                	add    al,0x0
c0108f93:	00 2b                	add    BYTE PTR [ebx],ch
c0108f95:	27                   	daa    
c0108f96:	10 c0                	adc    al,al
c0108f98:	2d 00 00 00 41       	sub    eax,0x41000000
c0108f9d:	0e                   	push   cs
c0108f9e:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0108fa4:	69 c5 0c 04 04 00    	imul   eax,ebp,0x4040c
c0108faa:	00 00                	add    BYTE PTR [eax],al
c0108fac:	20 00                	and    BYTE PTR [eax],al
c0108fae:	00 00                	add    BYTE PTR [eax],al
c0108fb0:	cc                   	int3   
c0108fb1:	04 00                	add    al,0x0
c0108fb3:	00 58 27             	add    BYTE PTR [eax+0x27],bl
c0108fb6:	10 c0                	adc    al,al
c0108fb8:	40                   	inc    eax
c0108fb9:	01 00                	add    DWORD PTR [eax],eax
c0108fbb:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c0108fbe:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0108fc4:	44                   	inc    esp
c0108fc5:	83 03 03             	add    DWORD PTR [ebx],0x3
c0108fc8:	37                   	aaa    
c0108fc9:	01 c3                	add    ebx,eax
c0108fcb:	41                   	inc    ecx
c0108fcc:	0c 04                	or     al,0x4
c0108fce:	04 c5                	add    al,0xc5
c0108fd0:	1c 00                	sbb    al,0x0
c0108fd2:	00 00                	add    BYTE PTR [eax],al
c0108fd4:	f0 04 00             	lock add al,0x0
c0108fd7:	00 98 28 10 c0 57    	add    BYTE PTR [eax+0x57c01028],bl
c0108fdd:	01 00                	add    DWORD PTR [eax],eax
c0108fdf:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c0108fe2:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0108fe8:	03 53 01             	add    edx,DWORD PTR [ebx+0x1]
c0108feb:	c5 0c 04             	lds    ecx,FWORD PTR [esp+eax*1]
c0108fee:	04 00                	add    al,0x0
c0108ff0:	1c 00                	sbb    al,0x0
c0108ff2:	00 00                	add    BYTE PTR [eax],al
c0108ff4:	10 05 00 00 ef 29    	adc    BYTE PTR ds:0x29ef0000,al
c0108ffa:	10 c0                	adc    al,al
c0108ffc:	ae                   	scas   al,BYTE PTR es:[edi]
c0108ffd:	00 00                	add    BYTE PTR [eax],al
c0108fff:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c0109002:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0109008:	02 aa c5 0c 04 04    	add    ch,BYTE PTR [edx+0x4040cc5]
c010900e:	00 00                	add    BYTE PTR [eax],al
c0109010:	1c 00                	sbb    al,0x0
c0109012:	00 00                	add    BYTE PTR [eax],al
c0109014:	30 05 00 00 9d 2a    	xor    BYTE PTR ds:0x2a9d0000,al
c010901a:	10 c0                	adc    al,al
c010901c:	44                   	inc    esp
c010901d:	00 00                	add    BYTE PTR [eax],al
c010901f:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c0109022:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0109028:	02 40 c5             	add    al,BYTE PTR [eax-0x3b]
c010902b:	0c 04                	or     al,0x4
c010902d:	04 00                	add    al,0x0
c010902f:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c0109032:	00 00                	add    BYTE PTR [eax],al
c0109034:	50                   	push   eax
c0109035:	05 00 00 e1 2a       	add    eax,0x2ae10000
c010903a:	10 c0                	adc    al,al
c010903c:	44                   	inc    esp
c010903d:	00 00                	add    BYTE PTR [eax],al
c010903f:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c0109042:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0109048:	02 40 c5             	add    al,BYTE PTR [eax-0x3b]
c010904b:	0c 04                	or     al,0x4
c010904d:	04 00                	add    al,0x0
c010904f:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c0109052:	00 00                	add    BYTE PTR [eax],al
c0109054:	70 05                	jo     c010905b <_edata+0x57a>
c0109056:	00 00                	add    BYTE PTR [eax],al
c0109058:	25 2b 10 c0 ce       	and    eax,0xcec0102b
c010905d:	00 00                	add    BYTE PTR [eax],al
c010905f:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c0109062:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0109068:	02 ca                	add    cl,dl
c010906a:	c5 0c 04             	lds    ecx,FWORD PTR [esp+eax*1]
c010906d:	04 00                	add    al,0x0
c010906f:	00 20                	add    BYTE PTR [eax],ah
c0109071:	00 00                	add    BYTE PTR [eax],al
c0109073:	00 90 05 00 00 f3    	add    BYTE PTR [eax-0xcfffffb],dl
c0109079:	2b 10                	sub    edx,DWORD PTR [eax]
c010907b:	c0 1f 03             	rcr    BYTE PTR [edi],0x3
c010907e:	00 00                	add    BYTE PTR [eax],al
c0109080:	41                   	inc    ecx
c0109081:	0e                   	push   cs
c0109082:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0109088:	44                   	inc    esp
c0109089:	83 03 03             	add    DWORD PTR [ebx],0x3
c010908c:	16                   	push   ss
c010908d:	03 c3                	add    eax,ebx
c010908f:	41                   	inc    ecx
c0109090:	0c 04                	or     al,0x4
c0109092:	04 c5                	add    al,0xc5
c0109094:	1c 00                	sbb    al,0x0
c0109096:	00 00                	add    BYTE PTR [eax],al
c0109098:	b4 05                	mov    ah,0x5
c010909a:	00 00                	add    BYTE PTR [eax],al
c010909c:	12 2f                	adc    ch,BYTE PTR [edi]
c010909e:	10 c0                	adc    al,al
c01090a0:	29 00                	sub    DWORD PTR [eax],eax
c01090a2:	00 00                	add    BYTE PTR [eax],al
c01090a4:	41                   	inc    ecx
c01090a5:	0e                   	push   cs
c01090a6:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c01090ac:	65 c5 0c 04          	lds    ecx,FWORD PTR gs:[esp+eax*1]
c01090b0:	04 00                	add    al,0x0
c01090b2:	00 00                	add    BYTE PTR [eax],al
c01090b4:	1c 00                	sbb    al,0x0
c01090b6:	00 00                	add    BYTE PTR [eax],al
c01090b8:	d4 05                	aam    0x5
c01090ba:	00 00                	add    BYTE PTR [eax],al
c01090bc:	3b 2f                	cmp    ebp,DWORD PTR [edi]
c01090be:	10 c0                	adc    al,al
c01090c0:	3e 00 00             	add    BYTE PTR ds:[eax],al
c01090c3:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c01090c6:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c01090cc:	7a c5                	jp     c0109093 <_edata+0x5b2>
c01090ce:	0c 04                	or     al,0x4
c01090d0:	04 00                	add    al,0x0
c01090d2:	00 00                	add    BYTE PTR [eax],al
c01090d4:	1c 00                	sbb    al,0x0
c01090d6:	00 00                	add    BYTE PTR [eax],al
c01090d8:	f4                   	hlt    
c01090d9:	05 00 00 79 2f       	add    eax,0x2f790000
c01090de:	10 c0                	adc    al,al
c01090e0:	4e                   	dec    esi
c01090e1:	00 00                	add    BYTE PTR [eax],al
c01090e3:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c01090e6:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c01090ec:	02 4a c5             	add    cl,BYTE PTR [edx-0x3b]
c01090ef:	0c 04                	or     al,0x4
c01090f1:	04 00                	add    al,0x0
c01090f3:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c01090f6:	00 00                	add    BYTE PTR [eax],al
c01090f8:	14 06                	adc    al,0x6
c01090fa:	00 00                	add    BYTE PTR [eax],al
c01090fc:	c7                   	(bad)  
c01090fd:	2f                   	das    
c01090fe:	10 c0                	adc    al,al
c0109100:	5c                   	pop    esp
c0109101:	01 00                	add    DWORD PTR [eax],eax
c0109103:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c0109106:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010910c:	03 58 01             	add    ebx,DWORD PTR [eax+0x1]
c010910f:	c5 0c 04             	lds    ecx,FWORD PTR [esp+eax*1]
c0109112:	04 00                	add    al,0x0
c0109114:	1c 00                	sbb    al,0x0
c0109116:	00 00                	add    BYTE PTR [eax],al
c0109118:	34 06                	xor    al,0x6
c010911a:	00 00                	add    BYTE PTR [eax],al
c010911c:	24 31                	and    al,0x31
c010911e:	10 c0                	adc    al,al
c0109120:	5e                   	pop    esi
c0109121:	00 00                	add    BYTE PTR [eax],al
c0109123:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c0109126:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010912c:	02 5a c5             	add    bl,BYTE PTR [edx-0x3b]
c010912f:	0c 04                	or     al,0x4
c0109131:	04 00                	add    al,0x0
c0109133:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c0109136:	00 00                	add    BYTE PTR [eax],al
c0109138:	54                   	push   esp
c0109139:	06                   	push   es
c010913a:	00 00                	add    BYTE PTR [eax],al
c010913c:	82                   	(bad)  
c010913d:	31 10                	xor    DWORD PTR [eax],edx
c010913f:	c0                   	(bad)  
c0109140:	31 00                	xor    DWORD PTR [eax],eax
c0109142:	00 00                	add    BYTE PTR [eax],al
c0109144:	41                   	inc    ecx
c0109145:	0e                   	push   cs
c0109146:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010914c:	6d                   	ins    DWORD PTR es:[edi],dx
c010914d:	c5 0c 04             	lds    ecx,FWORD PTR [esp+eax*1]
c0109150:	04 00                	add    al,0x0
c0109152:	00 00                	add    BYTE PTR [eax],al
c0109154:	20 00                	and    BYTE PTR [eax],al
c0109156:	00 00                	add    BYTE PTR [eax],al
c0109158:	74 06                	je     c0109160 <_edata+0x67f>
c010915a:	00 00                	add    BYTE PTR [eax],al
c010915c:	b3 31                	mov    bl,0x31
c010915e:	10 c0                	adc    al,al
c0109160:	6b 01 00             	imul   eax,DWORD PTR [ecx],0x0
c0109163:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c0109166:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010916c:	44                   	inc    esp
c010916d:	83 03 03             	add    DWORD PTR [ebx],0x3
c0109170:	62 01                	bound  eax,QWORD PTR [ecx]
c0109172:	c3                   	ret    
c0109173:	41                   	inc    ecx
c0109174:	0c 04                	or     al,0x4
c0109176:	04 c5                	add    al,0xc5
c0109178:	1c 00                	sbb    al,0x0
c010917a:	00 00                	add    BYTE PTR [eax],al
c010917c:	98                   	cwde   
c010917d:	06                   	push   es
c010917e:	00 00                	add    BYTE PTR [eax],al
c0109180:	1e                   	push   ds
c0109181:	33 10                	xor    edx,DWORD PTR [eax]
c0109183:	c0 c4 00             	rol    ah,0x0
c0109186:	00 00                	add    BYTE PTR [eax],al
c0109188:	41                   	inc    ecx
c0109189:	0e                   	push   cs
c010918a:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0109190:	02 c0                	add    al,al
c0109192:	c5 0c 04             	lds    ecx,FWORD PTR [esp+eax*1]
c0109195:	04 00                	add    al,0x0
c0109197:	00 20                	add    BYTE PTR [eax],ah
c0109199:	00 00                	add    BYTE PTR [eax],al
c010919b:	00 b8 06 00 00 e2    	add    BYTE PTR [eax-0x1dfffffa],bh
c01091a1:	33 10                	xor    edx,DWORD PTR [eax]
c01091a3:	c0 84 00 00 00 41 0e 	rol    BYTE PTR [eax+eax*1+0xe410000],0x8
c01091aa:	08 
c01091ab:	85 02                	test   DWORD PTR [edx],eax
c01091ad:	42                   	inc    edx
c01091ae:	0d 05 44 83 03       	or     eax,0x3834405
c01091b3:	02 7b c3             	add    bh,BYTE PTR [ebx-0x3d]
c01091b6:	41                   	inc    ecx
c01091b7:	0c 04                	or     al,0x4
c01091b9:	04 c5                	add    al,0xc5
c01091bb:	00 20                	add    BYTE PTR [eax],ah
c01091bd:	00 00                	add    BYTE PTR [eax],al
c01091bf:	00 dc                	add    ah,bl
c01091c1:	06                   	push   es
c01091c2:	00 00                	add    BYTE PTR [eax],al
c01091c4:	66 34 10             	data16 xor al,0x10
c01091c7:	c0 bc 00 00 00 41 0e 	sar    BYTE PTR [eax+eax*1+0xe410000],0x8
c01091ce:	08 
c01091cf:	85 02                	test   DWORD PTR [edx],eax
c01091d1:	42                   	inc    edx
c01091d2:	0d 05 44 83 03       	or     eax,0x3834405
c01091d7:	02 b3 c3 41 0c 04    	add    dh,BYTE PTR [ebx+0x40c41c3]
c01091dd:	04 c5                	add    al,0xc5
c01091df:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c01091e2:	00 00                	add    BYTE PTR [eax],al
c01091e4:	00 07                	add    BYTE PTR [edi],al
c01091e6:	00 00                	add    BYTE PTR [eax],al
c01091e8:	24 35                	and    al,0x35
c01091ea:	10 c0                	adc    al,al
c01091ec:	3b 00                	cmp    eax,DWORD PTR [eax]
c01091ee:	00 00                	add    BYTE PTR [eax],al
c01091f0:	41                   	inc    ecx
c01091f1:	0e                   	push   cs
c01091f2:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c01091f8:	77 c5                	ja     c01091bf <_edata+0x6de>
c01091fa:	0c 04                	or     al,0x4
c01091fc:	04 00                	add    al,0x0
c01091fe:	00 00                	add    BYTE PTR [eax],al
c0109200:	1c 00                	sbb    al,0x0
c0109202:	00 00                	add    BYTE PTR [eax],al
c0109204:	20 07                	and    BYTE PTR [edi],al
c0109206:	00 00                	add    BYTE PTR [eax],al
c0109208:	5f                   	pop    edi
c0109209:	35 10 c0 38 00       	xor    eax,0x38c010
c010920e:	00 00                	add    BYTE PTR [eax],al
c0109210:	41                   	inc    ecx
c0109211:	0e                   	push   cs
c0109212:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0109218:	74 c5                	je     c01091df <_edata+0x6fe>
c010921a:	0c 04                	or     al,0x4
c010921c:	04 00                	add    al,0x0
c010921e:	00 00                	add    BYTE PTR [eax],al
c0109220:	1c 00                	sbb    al,0x0
c0109222:	00 00                	add    BYTE PTR [eax],al
c0109224:	40                   	inc    eax
c0109225:	07                   	pop    es
c0109226:	00 00                	add    BYTE PTR [eax],al
c0109228:	97                   	xchg   edi,eax
c0109229:	35 10 c0 dc 00       	xor    eax,0xdcc010
c010922e:	00 00                	add    BYTE PTR [eax],al
c0109230:	41                   	inc    ecx
c0109231:	0e                   	push   cs
c0109232:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0109238:	02 d8                	add    bl,al
c010923a:	c5 0c 04             	lds    ecx,FWORD PTR [esp+eax*1]
c010923d:	04 00                	add    al,0x0
c010923f:	00 20                	add    BYTE PTR [eax],ah
c0109241:	00 00                	add    BYTE PTR [eax],al
c0109243:	00 60 07             	add    BYTE PTR [eax+0x7],ah
c0109246:	00 00                	add    BYTE PTR [eax],al
c0109248:	73 36                	jae    c0109280 <_edata+0x79f>
c010924a:	10 c0                	adc    al,al
c010924c:	1a 00                	sbb    al,BYTE PTR [eax]
c010924e:	00 00                	add    BYTE PTR [eax],al
c0109250:	41                   	inc    ecx
c0109251:	0e                   	push   cs
c0109252:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0109258:	44                   	inc    esp
c0109259:	83 03 51             	add    DWORD PTR [ebx],0x51
c010925c:	c3                   	ret    
c010925d:	41                   	inc    ecx
c010925e:	0c 04                	or     al,0x4
c0109260:	04 c5                	add    al,0xc5
c0109262:	00 00                	add    BYTE PTR [eax],al
c0109264:	1c 00                	sbb    al,0x0
c0109266:	00 00                	add    BYTE PTR [eax],al
c0109268:	84 07                	test   BYTE PTR [edi],al
c010926a:	00 00                	add    BYTE PTR [eax],al
c010926c:	8d 36                	lea    esi,[esi]
c010926e:	10 c0                	adc    al,al
c0109270:	18 00                	sbb    BYTE PTR [eax],al
c0109272:	00 00                	add    BYTE PTR [eax],al
c0109274:	41                   	inc    ecx
c0109275:	0e                   	push   cs
c0109276:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010927c:	54                   	push   esp
c010927d:	c5 0c 04             	lds    ecx,FWORD PTR [esp+eax*1]
c0109280:	04 00                	add    al,0x0
c0109282:	00 00                	add    BYTE PTR [eax],al
c0109284:	1c 00                	sbb    al,0x0
c0109286:	00 00                	add    BYTE PTR [eax],al
c0109288:	a4                   	movs   BYTE PTR es:[edi],BYTE PTR ds:[esi]
c0109289:	07                   	pop    es
c010928a:	00 00                	add    BYTE PTR [eax],al
c010928c:	a5                   	movs   DWORD PTR es:[edi],DWORD PTR ds:[esi]
c010928d:	36 10 c0             	ss adc al,al
c0109290:	70 00                	jo     c0109292 <_edata+0x7b1>
c0109292:	00 00                	add    BYTE PTR [eax],al
c0109294:	41                   	inc    ecx
c0109295:	0e                   	push   cs
c0109296:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010929c:	02 6c c5 0c          	add    ch,BYTE PTR [ebp+eax*8+0xc]
c01092a0:	04 04                	add    al,0x4
c01092a2:	00 00                	add    BYTE PTR [eax],al
c01092a4:	1c 00                	sbb    al,0x0
c01092a6:	00 00                	add    BYTE PTR [eax],al
c01092a8:	c4 07                	les    eax,FWORD PTR [edi]
c01092aa:	00 00                	add    BYTE PTR [eax],al
c01092ac:	15 37 10 c0 1d       	adc    eax,0x1dc01037
c01092b1:	01 00                	add    DWORD PTR [eax],eax
c01092b3:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c01092b6:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c01092bc:	03 19                	add    ebx,DWORD PTR [ecx]
c01092be:	01 c5                	add    ebp,eax
c01092c0:	0c 04                	or     al,0x4
c01092c2:	04 00                	add    al,0x0
c01092c4:	1c 00                	sbb    al,0x0
c01092c6:	00 00                	add    BYTE PTR [eax],al
c01092c8:	e4 07                	in     al,0x7
c01092ca:	00 00                	add    BYTE PTR [eax],al
c01092cc:	32 38                	xor    bh,BYTE PTR [eax]
c01092ce:	10 c0                	adc    al,al
c01092d0:	63 00                	arpl   WORD PTR [eax],ax
c01092d2:	00 00                	add    BYTE PTR [eax],al
c01092d4:	41                   	inc    ecx
c01092d5:	0e                   	push   cs
c01092d6:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c01092dc:	02 5f c5             	add    bl,BYTE PTR [edi-0x3b]
c01092df:	0c 04                	or     al,0x4
c01092e1:	04 00                	add    al,0x0
c01092e3:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c01092e6:	00 00                	add    BYTE PTR [eax],al
c01092e8:	04 08                	add    al,0x8
c01092ea:	00 00                	add    BYTE PTR [eax],al
c01092ec:	95                   	xchg   ebp,eax
c01092ed:	38 10                	cmp    BYTE PTR [eax],dl
c01092ef:	c0 84 01 00 00 41 0e 	rol    BYTE PTR [ecx+eax*1+0xe410000],0x8
c01092f6:	08 
c01092f7:	85 02                	test   DWORD PTR [edx],eax
c01092f9:	42                   	inc    edx
c01092fa:	0d 05 03 80 01       	or     eax,0x1800305
c01092ff:	c5 0c 04             	lds    ecx,FWORD PTR [esp+eax*1]
c0109302:	04 00                	add    al,0x0
c0109304:	1c 00                	sbb    al,0x0
c0109306:	00 00                	add    BYTE PTR [eax],al
c0109308:	24 08                	and    al,0x8
c010930a:	00 00                	add    BYTE PTR [eax],al
c010930c:	19 3a                	sbb    DWORD PTR [edx],edi
c010930e:	10 c0                	adc    al,al
c0109310:	a0 00 00 00 41       	mov    al,ds:0x41000000
c0109315:	0e                   	push   cs
c0109316:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010931c:	02 9c c5 0c 04 04 00 	add    bl,BYTE PTR [ebp+eax*8+0x4040c]
c0109323:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c0109326:	00 00                	add    BYTE PTR [eax],al
c0109328:	44                   	inc    esp
c0109329:	08 00                	or     BYTE PTR [eax],al
c010932b:	00 b9 3a 10 c0 d6    	add    BYTE PTR [ecx-0x293fefc6],bh
c0109331:	00 00                	add    BYTE PTR [eax],al
c0109333:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c0109336:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010933c:	02 d2                	add    dl,dl
c010933e:	c5 0c 04             	lds    ecx,FWORD PTR [esp+eax*1]
c0109341:	04 00                	add    al,0x0
c0109343:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c0109346:	00 00                	add    BYTE PTR [eax],al
c0109348:	64 08 00             	or     BYTE PTR fs:[eax],al
c010934b:	00 8f 3b 10 c0 17    	add    BYTE PTR [edi+0x17c0103b],cl
c0109351:	00 00                	add    BYTE PTR [eax],al
c0109353:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c0109356:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010935c:	53                   	push   ebx
c010935d:	0c 04                	or     al,0x4
c010935f:	04 c5                	add    al,0xc5
c0109361:	00 00                	add    BYTE PTR [eax],al
c0109363:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c0109366:	00 00                	add    BYTE PTR [eax],al
c0109368:	84 08                	test   BYTE PTR [eax],cl
c010936a:	00 00                	add    BYTE PTR [eax],al
c010936c:	a6                   	cmps   BYTE PTR ds:[esi],BYTE PTR es:[edi]
c010936d:	3b 10                	cmp    edx,DWORD PTR [eax]
c010936f:	c0 39 00             	sar    BYTE PTR [ecx],0x0
c0109372:	00 00                	add    BYTE PTR [eax],al
c0109374:	41                   	inc    ecx
c0109375:	0e                   	push   cs
c0109376:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010937c:	75 c5                	jne    c0109343 <_edata+0x862>
c010937e:	0c 04                	or     al,0x4
c0109380:	04 00                	add    al,0x0
c0109382:	00 00                	add    BYTE PTR [eax],al
c0109384:	1c 00                	sbb    al,0x0
c0109386:	00 00                	add    BYTE PTR [eax],al
c0109388:	a4                   	movs   BYTE PTR es:[edi],BYTE PTR ds:[esi]
c0109389:	08 00                	or     BYTE PTR [eax],al
c010938b:	00 f4                	add    ah,dh
c010938d:	3b 10                	cmp    edx,DWORD PTR [eax]
c010938f:	c0 69 00 00          	shr    BYTE PTR [ecx+0x0],0x0
c0109393:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c0109396:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010939c:	02 63 c5             	add    ah,BYTE PTR [ebx-0x3b]
c010939f:	0c 04                	or     al,0x4
c01093a1:	04 00                	add    al,0x0
c01093a3:	00 20                	add    BYTE PTR [eax],ah
c01093a5:	00 00                	add    BYTE PTR [eax],al
c01093a7:	00 c4                	add    ah,al
c01093a9:	08 00                	or     BYTE PTR [eax],al
c01093ab:	00 5d 3c             	add    BYTE PTR [ebp+0x3c],bl
c01093ae:	10 c0                	adc    al,al
c01093b0:	6b 01 00             	imul   eax,DWORD PTR [ecx],0x0
c01093b3:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c01093b6:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c01093bc:	44                   	inc    esp
c01093bd:	83 03 03             	add    DWORD PTR [ebx],0x3
c01093c0:	63 01                	arpl   WORD PTR [ecx],ax
c01093c2:	c5 0c 04             	lds    ecx,FWORD PTR [esp+eax*1]
c01093c5:	04 c3                	add    al,0xc3
c01093c7:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c01093ca:	00 00                	add    BYTE PTR [eax],al
c01093cc:	e8 08 00 00 c8       	call   881093d9 <AR_CODE32+0x880fd341>
c01093d1:	3d 10 c0 12 00       	cmp    eax,0x12c010
c01093d6:	00 00                	add    BYTE PTR [eax],al
c01093d8:	41                   	inc    ecx
c01093d9:	0e                   	push   cs
c01093da:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c01093e0:	4e                   	dec    esi
c01093e1:	0c 04                	or     al,0x4
c01093e3:	04 c5                	add    al,0xc5
c01093e5:	00 00                	add    BYTE PTR [eax],al
c01093e7:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c01093ea:	00 00                	add    BYTE PTR [eax],al
c01093ec:	08 09                	or     BYTE PTR [ecx],cl
c01093ee:	00 00                	add    BYTE PTR [eax],al
c01093f0:	dc 3d 10 c0 f6 00    	fdivr  QWORD PTR ds:0xf6c010
c01093f6:	00 00                	add    BYTE PTR [eax],al
c01093f8:	41                   	inc    ecx
c01093f9:	0e                   	push   cs
c01093fa:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0109400:	02 f2                	add    dh,dl
c0109402:	c5 0c 04             	lds    ecx,FWORD PTR [esp+eax*1]
c0109405:	04 00                	add    al,0x0
c0109407:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c010940a:	00 00                	add    BYTE PTR [eax],al
c010940c:	28 09                	sub    BYTE PTR [ecx],cl
c010940e:	00 00                	add    BYTE PTR [eax],al
c0109410:	d2 3e                	sar    BYTE PTR [esi],cl
c0109412:	10 c0                	adc    al,al
c0109414:	f6 00 00             	test   BYTE PTR [eax],0x0
c0109417:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c010941a:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0109420:	02 f2                	add    dh,dl
c0109422:	c5 0c 04             	lds    ecx,FWORD PTR [esp+eax*1]
c0109425:	04 00                	add    al,0x0
c0109427:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c010942a:	00 00                	add    BYTE PTR [eax],al
c010942c:	48                   	dec    eax
c010942d:	09 00                	or     DWORD PTR [eax],eax
c010942f:	00 c8                	add    al,cl
c0109431:	3f                   	aas    
c0109432:	10 c0                	adc    al,al
c0109434:	62 00                	bound  eax,QWORD PTR [eax]
c0109436:	00 00                	add    BYTE PTR [eax],al
c0109438:	41                   	inc    ecx
c0109439:	0e                   	push   cs
c010943a:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0109440:	02 5e c5             	add    bl,BYTE PTR [esi-0x3b]
c0109443:	0c 04                	or     al,0x4
c0109445:	04 00                	add    al,0x0
c0109447:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c010944a:	00 00                	add    BYTE PTR [eax],al
c010944c:	68 09 00 00 2a       	push   0x2a000009
c0109451:	40                   	inc    eax
c0109452:	10 c0                	adc    al,al
c0109454:	5a                   	pop    edx
c0109455:	00 00                	add    BYTE PTR [eax],al
c0109457:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c010945a:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0109460:	02 56 c5             	add    dl,BYTE PTR [esi-0x3b]
c0109463:	0c 04                	or     al,0x4
c0109465:	04 00                	add    al,0x0
c0109467:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c010946a:	00 00                	add    BYTE PTR [eax],al
c010946c:	88 09                	mov    BYTE PTR [ecx],cl
c010946e:	00 00                	add    BYTE PTR [eax],al
c0109470:	84 40 10             	test   BYTE PTR [eax+0x10],al
c0109473:	c0 79 00 00          	sar    BYTE PTR [ecx+0x0],0x0
c0109477:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c010947a:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0109480:	02 75 c5             	add    dh,BYTE PTR [ebp-0x3b]
c0109483:	0c 04                	or     al,0x4
c0109485:	04 00                	add    al,0x0
c0109487:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c010948a:	00 00                	add    BYTE PTR [eax],al
c010948c:	a8 09                	test   al,0x9
c010948e:	00 00                	add    BYTE PTR [eax],al
c0109490:	fd                   	std    
c0109491:	40                   	inc    eax
c0109492:	10 c0                	adc    al,al
c0109494:	4c                   	dec    esp
c0109495:	00 00                	add    BYTE PTR [eax],al
c0109497:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c010949a:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c01094a0:	02 48 c5             	add    cl,BYTE PTR [eax-0x3b]
c01094a3:	0c 04                	or     al,0x4
c01094a5:	04 00                	add    al,0x0
c01094a7:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c01094aa:	00 00                	add    BYTE PTR [eax],al
c01094ac:	c8 09 00 00          	enter  0x9,0x0
c01094b0:	49                   	dec    ecx
c01094b1:	41                   	inc    ecx
c01094b2:	10 c0                	adc    al,al
c01094b4:	4c                   	dec    esp
c01094b5:	01 00                	add    DWORD PTR [eax],eax
c01094b7:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c01094ba:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c01094c0:	03 48 01             	add    ecx,DWORD PTR [eax+0x1]
c01094c3:	c5 0c 04             	lds    ecx,FWORD PTR [esp+eax*1]
c01094c6:	04 00                	add    al,0x0
c01094c8:	1c 00                	sbb    al,0x0
c01094ca:	00 00                	add    BYTE PTR [eax],al
c01094cc:	e8 09 00 00 95       	call   551094da <AR_CODE32+0x550fd442>
c01094d1:	42                   	inc    edx
c01094d2:	10 c0                	adc    al,al
c01094d4:	4c                   	dec    esp
c01094d5:	01 00                	add    DWORD PTR [eax],eax
c01094d7:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c01094da:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c01094e0:	03 48 01             	add    ecx,DWORD PTR [eax+0x1]
c01094e3:	c5 0c 04             	lds    ecx,FWORD PTR [esp+eax*1]
c01094e6:	04 00                	add    al,0x0
c01094e8:	1c 00                	sbb    al,0x0
c01094ea:	00 00                	add    BYTE PTR [eax],al
c01094ec:	08 0a                	or     BYTE PTR [edx],cl
c01094ee:	00 00                	add    BYTE PTR [eax],al
c01094f0:	e4 43                	in     al,0x43
c01094f2:	10 c0                	adc    al,al
c01094f4:	14 00                	adc    al,0x0
c01094f6:	00 00                	add    BYTE PTR [eax],al
c01094f8:	41                   	inc    ecx
c01094f9:	0e                   	push   cs
c01094fa:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0109500:	50                   	push   eax
c0109501:	c5 0c 04             	lds    ecx,FWORD PTR [esp+eax*1]
c0109504:	04 00                	add    al,0x0
c0109506:	00 00                	add    BYTE PTR [eax],al
c0109508:	1c 00                	sbb    al,0x0
c010950a:	00 00                	add    BYTE PTR [eax],al
c010950c:	28 0a                	sub    BYTE PTR [edx],cl
c010950e:	00 00                	add    BYTE PTR [eax],al
c0109510:	f8                   	clc    
c0109511:	43                   	inc    ebx
c0109512:	10 c0                	adc    al,al
c0109514:	43                   	inc    ebx
c0109515:	00 00                	add    BYTE PTR [eax],al
c0109517:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c010951a:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0109520:	7f c5                	jg     c01094e7 <_edata+0xa06>
c0109522:	0c 04                	or     al,0x4
c0109524:	04 00                	add    al,0x0
c0109526:	00 00                	add    BYTE PTR [eax],al
c0109528:	1c 00                	sbb    al,0x0
c010952a:	00 00                	add    BYTE PTR [eax],al
c010952c:	48                   	dec    eax
c010952d:	0a 00                	or     al,BYTE PTR [eax]
c010952f:	00 3b                	add    BYTE PTR [ebx],bh
c0109531:	44                   	inc    esp
c0109532:	10 c0                	adc    al,al
c0109534:	39 00                	cmp    DWORD PTR [eax],eax
c0109536:	00 00                	add    BYTE PTR [eax],al
c0109538:	41                   	inc    ecx
c0109539:	0e                   	push   cs
c010953a:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0109540:	75 c5                	jne    c0109507 <_edata+0xa26>
c0109542:	0c 04                	or     al,0x4
c0109544:	04 00                	add    al,0x0
c0109546:	00 00                	add    BYTE PTR [eax],al
c0109548:	1c 00                	sbb    al,0x0
c010954a:	00 00                	add    BYTE PTR [eax],al
c010954c:	68 0a 00 00 74       	push   0x7400000a
c0109551:	44                   	inc    esp
c0109552:	10 c0                	adc    al,al
c0109554:	40                   	inc    eax
c0109555:	00 00                	add    BYTE PTR [eax],al
c0109557:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c010955a:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0109560:	7c c5                	jl     c0109527 <_edata+0xa46>
c0109562:	0c 04                	or     al,0x4
c0109564:	04 00                	add    al,0x0
c0109566:	00 00                	add    BYTE PTR [eax],al
c0109568:	1c 00                	sbb    al,0x0
c010956a:	00 00                	add    BYTE PTR [eax],al
c010956c:	88 0a                	mov    BYTE PTR [edx],cl
c010956e:	00 00                	add    BYTE PTR [eax],al
c0109570:	b4 44                	mov    ah,0x44
c0109572:	10 c0                	adc    al,al
c0109574:	40                   	inc    eax
c0109575:	00 00                	add    BYTE PTR [eax],al
c0109577:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c010957a:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0109580:	7c c5                	jl     c0109547 <_edata+0xa66>
c0109582:	0c 04                	or     al,0x4
c0109584:	04 00                	add    al,0x0
c0109586:	00 00                	add    BYTE PTR [eax],al
c0109588:	24 00                	and    al,0x0
c010958a:	00 00                	add    BYTE PTR [eax],al
c010958c:	a8 0a                	test   al,0xa
c010958e:	00 00                	add    BYTE PTR [eax],al
c0109590:	f4                   	hlt    
c0109591:	44                   	inc    esp
c0109592:	10 c0                	adc    al,al
c0109594:	49                   	dec    ecx
c0109595:	00 00                	add    BYTE PTR [eax],al
c0109597:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c010959a:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c01095a0:	45                   	inc    ebp
c01095a1:	83 04 86 03          	add    DWORD PTR [esi+eax*4],0x3
c01095a5:	7e c3                	jle    c010956a <_edata+0xa89>
c01095a7:	41                   	inc    ecx
c01095a8:	c6 41 0c 04          	mov    BYTE PTR [ecx+0xc],0x4
c01095ac:	04 c5                	add    al,0xc5
c01095ae:	00 00                	add    BYTE PTR [eax],al
c01095b0:	1c 00                	sbb    al,0x0
c01095b2:	00 00                	add    BYTE PTR [eax],al
c01095b4:	d0 0a                	ror    BYTE PTR [edx],1
c01095b6:	00 00                	add    BYTE PTR [eax],al
c01095b8:	3d 45 10 c0 d7       	cmp    eax,0xd7c01045
c01095bd:	00 00                	add    BYTE PTR [eax],al
c01095bf:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c01095c2:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c01095c8:	02 d3                	add    dl,bl
c01095ca:	c5 0c 04             	lds    ecx,FWORD PTR [esp+eax*1]
c01095cd:	04 00                	add    al,0x0
c01095cf:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c01095d2:	00 00                	add    BYTE PTR [eax],al
c01095d4:	f0 0a 00             	lock or al,BYTE PTR [eax]
c01095d7:	00 14 46             	add    BYTE PTR [esi+eax*2],dl
c01095da:	10 c0                	adc    al,al
c01095dc:	d7                   	xlat   BYTE PTR ds:[ebx]
c01095dd:	00 00                	add    BYTE PTR [eax],al
c01095df:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c01095e2:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c01095e8:	02 d3                	add    dl,bl
c01095ea:	c5 0c 04             	lds    ecx,FWORD PTR [esp+eax*1]
c01095ed:	04 00                	add    al,0x0
c01095ef:	00 20                	add    BYTE PTR [eax],ah
c01095f1:	00 00                	add    BYTE PTR [eax],al
c01095f3:	00 10                	add    BYTE PTR [eax],dl
c01095f5:	0b 00                	or     eax,DWORD PTR [eax]
c01095f7:	00 ec                	add    ah,ch
c01095f9:	46                   	inc    esi
c01095fa:	10 c0                	adc    al,al
c01095fc:	1f                   	pop    ds
c01095fd:	00 00                	add    BYTE PTR [eax],al
c01095ff:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c0109602:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0109608:	44                   	inc    esp
c0109609:	83 03 56             	add    DWORD PTR [ebx],0x56
c010960c:	c3                   	ret    
c010960d:	41                   	inc    ecx
c010960e:	0c 04                	or     al,0x4
c0109610:	04 c5                	add    al,0xc5
c0109612:	00 00                	add    BYTE PTR [eax],al
c0109614:	1c 00                	sbb    al,0x0
c0109616:	00 00                	add    BYTE PTR [eax],al
c0109618:	34 0b                	xor    al,0xb
c010961a:	00 00                	add    BYTE PTR [eax],al
c010961c:	0b 47 10             	or     eax,DWORD PTR [edi+0x10]
c010961f:	c0 0c 00 00          	ror    BYTE PTR [eax+eax*1],0x0
c0109623:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c0109626:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010962c:	48                   	dec    eax
c010962d:	0c 04                	or     al,0x4
c010962f:	04 c5                	add    al,0xc5
c0109631:	00 00                	add    BYTE PTR [eax],al
c0109633:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c0109636:	00 00                	add    BYTE PTR [eax],al
c0109638:	54                   	push   esp
c0109639:	0b 00                	or     eax,DWORD PTR [eax]
c010963b:	00 17                	add    BYTE PTR [edi],dl
c010963d:	47                   	inc    edi
c010963e:	10 c0                	adc    al,al
c0109640:	1f                   	pop    ds
c0109641:	00 00                	add    BYTE PTR [eax],al
c0109643:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c0109646:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010964c:	5b                   	pop    ebx
c010964d:	c5 0c 04             	lds    ecx,FWORD PTR [esp+eax*1]
c0109650:	04 00                	add    al,0x0
c0109652:	00 00                	add    BYTE PTR [eax],al
c0109654:	1c 00                	sbb    al,0x0
c0109656:	00 00                	add    BYTE PTR [eax],al
c0109658:	74 0b                	je     c0109665 <_edata+0xb84>
c010965a:	00 00                	add    BYTE PTR [eax],al
c010965c:	36 47                	ss inc edi
c010965e:	10 c0                	adc    al,al
c0109660:	5e                   	pop    esi
c0109661:	00 00                	add    BYTE PTR [eax],al
c0109663:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c0109666:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010966c:	02 5a c5             	add    bl,BYTE PTR [edx-0x3b]
c010966f:	0c 04                	or     al,0x4
c0109671:	04 00                	add    al,0x0
c0109673:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c0109676:	00 00                	add    BYTE PTR [eax],al
c0109678:	94                   	xchg   esp,eax
c0109679:	0b 00                	or     eax,DWORD PTR [eax]
c010967b:	00 94 47 10 c0 61 02 	add    BYTE PTR [edi+eax*2+0x261c010],dl
c0109682:	00 00                	add    BYTE PTR [eax],al
c0109684:	41                   	inc    ecx
c0109685:	0e                   	push   cs
c0109686:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010968c:	03 5d 02             	add    ebx,DWORD PTR [ebp+0x2]
c010968f:	c5 0c 04             	lds    ecx,FWORD PTR [esp+eax*1]
c0109692:	04 00                	add    al,0x0
c0109694:	20 00                	and    BYTE PTR [eax],al
c0109696:	00 00                	add    BYTE PTR [eax],al
c0109698:	b4 0b                	mov    ah,0xb
c010969a:	00 00                	add    BYTE PTR [eax],al
c010969c:	f8                   	clc    
c010969d:	49                   	dec    ecx
c010969e:	10 c0                	adc    al,al
c01096a0:	1f                   	pop    ds
c01096a1:	00 00                	add    BYTE PTR [eax],al
c01096a3:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c01096a6:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c01096ac:	44                   	inc    esp
c01096ad:	83 03 56             	add    DWORD PTR [ebx],0x56
c01096b0:	c3                   	ret    
c01096b1:	41                   	inc    ecx
c01096b2:	0c 04                	or     al,0x4
c01096b4:	04 c5                	add    al,0xc5
c01096b6:	00 00                	add    BYTE PTR [eax],al
c01096b8:	1c 00                	sbb    al,0x0
c01096ba:	00 00                	add    BYTE PTR [eax],al
c01096bc:	d8 0b                	fmul   DWORD PTR [ebx]
c01096be:	00 00                	add    BYTE PTR [eax],al
c01096c0:	17                   	pop    ss
c01096c1:	4a                   	dec    edx
c01096c2:	10 c0                	adc    al,al
c01096c4:	0c 00                	or     al,0x0
c01096c6:	00 00                	add    BYTE PTR [eax],al
c01096c8:	41                   	inc    ecx
c01096c9:	0e                   	push   cs
c01096ca:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c01096d0:	48                   	dec    eax
c01096d1:	0c 04                	or     al,0x4
c01096d3:	04 c5                	add    al,0xc5
c01096d5:	00 00                	add    BYTE PTR [eax],al
c01096d7:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c01096da:	00 00                	add    BYTE PTR [eax],al
c01096dc:	f8                   	clc    
c01096dd:	0b 00                	or     eax,DWORD PTR [eax]
c01096df:	00 23                	add    BYTE PTR [ebx],ah
c01096e1:	4a                   	dec    edx
c01096e2:	10 c0                	adc    al,al
c01096e4:	44                   	inc    esp
c01096e5:	00 00                	add    BYTE PTR [eax],al
c01096e7:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c01096ea:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c01096f0:	02 40 c5             	add    al,BYTE PTR [eax-0x3b]
c01096f3:	0c 04                	or     al,0x4
c01096f5:	04 00                	add    al,0x0
c01096f7:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c01096fa:	00 00                	add    BYTE PTR [eax],al
c01096fc:	18 0c 00             	sbb    BYTE PTR [eax+eax*1],cl
c01096ff:	00 67 4a             	add    BYTE PTR [edi+0x4a],ah
c0109702:	10 c0                	adc    al,al
c0109704:	5a                   	pop    edx
c0109705:	01 00                	add    DWORD PTR [eax],eax
c0109707:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c010970a:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0109710:	03 56 01             	add    edx,DWORD PTR [esi+0x1]
c0109713:	c5 0c 04             	lds    ecx,FWORD PTR [esp+eax*1]
c0109716:	04 00                	add    al,0x0
c0109718:	1c 00                	sbb    al,0x0
c010971a:	00 00                	add    BYTE PTR [eax],al
c010971c:	38 0c 00             	cmp    BYTE PTR [eax+eax*1],cl
c010971f:	00 c1                	add    cl,al
c0109721:	4b                   	dec    ebx
c0109722:	10 c0                	adc    al,al
c0109724:	79 00                	jns    c0109726 <_edata+0xc45>
c0109726:	00 00                	add    BYTE PTR [eax],al
c0109728:	41                   	inc    ecx
c0109729:	0e                   	push   cs
c010972a:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0109730:	02 73 c5             	add    dh,BYTE PTR [ebx-0x3b]
c0109733:	0c 04                	or     al,0x4
c0109735:	04 00                	add    al,0x0
c0109737:	00 20                	add    BYTE PTR [eax],ah
c0109739:	00 00                	add    BYTE PTR [eax],al
c010973b:	00 58 0c             	add    BYTE PTR [eax+0xc],bl
c010973e:	00 00                	add    BYTE PTR [eax],al
c0109740:	3c 4c                	cmp    al,0x4c
c0109742:	10 c0                	adc    al,al
c0109744:	1f                   	pop    ds
c0109745:	00 00                	add    BYTE PTR [eax],al
c0109747:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c010974a:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0109750:	44                   	inc    esp
c0109751:	83 03 56             	add    DWORD PTR [ebx],0x56
c0109754:	c3                   	ret    
c0109755:	41                   	inc    ecx
c0109756:	0c 04                	or     al,0x4
c0109758:	04 c5                	add    al,0xc5
c010975a:	00 00                	add    BYTE PTR [eax],al
c010975c:	1c 00                	sbb    al,0x0
c010975e:	00 00                	add    BYTE PTR [eax],al
c0109760:	7c 0c                	jl     c010976e <_edata+0xc8d>
c0109762:	00 00                	add    BYTE PTR [eax],al
c0109764:	5b                   	pop    ebx
c0109765:	4c                   	dec    esp
c0109766:	10 c0                	adc    al,al
c0109768:	0c 00                	or     al,0x0
c010976a:	00 00                	add    BYTE PTR [eax],al
c010976c:	41                   	inc    ecx
c010976d:	0e                   	push   cs
c010976e:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0109774:	48                   	dec    eax
c0109775:	0c 04                	or     al,0x4
c0109777:	04 c5                	add    al,0xc5
c0109779:	00 00                	add    BYTE PTR [eax],al
c010977b:	00 20                	add    BYTE PTR [eax],ah
c010977d:	00 00                	add    BYTE PTR [eax],al
c010977f:	00 9c 0c 00 00 67 4c 	add    BYTE PTR [esp+ecx*1+0x4c670000],bl
c0109786:	10 c0                	adc    al,al
c0109788:	6c                   	ins    BYTE PTR es:[edi],dx
c0109789:	01 00                	add    DWORD PTR [eax],eax
c010978b:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c010978e:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0109794:	44                   	inc    esp
c0109795:	83 03 03             	add    DWORD PTR [ebx],0x3
c0109798:	63 01                	arpl   WORD PTR [ecx],ax
c010979a:	c3                   	ret    
c010979b:	41                   	inc    ecx
c010979c:	0c 04                	or     al,0x4
c010979e:	04 c5                	add    al,0xc5
c01097a0:	1c 00                	sbb    al,0x0
c01097a2:	00 00                	add    BYTE PTR [eax],al
c01097a4:	c0 0c 00 00          	ror    BYTE PTR [eax+eax*1],0x0
c01097a8:	d4 4d                	aam    0x4d
c01097aa:	10 c0                	adc    al,al
c01097ac:	0c 00                	or     al,0x0
c01097ae:	00 00                	add    BYTE PTR [eax],al
c01097b0:	41                   	inc    ecx
c01097b1:	0e                   	push   cs
c01097b2:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c01097b8:	48                   	dec    eax
c01097b9:	0c 04                	or     al,0x4
c01097bb:	04 c5                	add    al,0xc5
c01097bd:	00 00                	add    BYTE PTR [eax],al
c01097bf:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c01097c2:	00 00                	add    BYTE PTR [eax],al
c01097c4:	e0 0c                	loopne c01097d2 <_edata+0xcf1>
c01097c6:	00 00                	add    BYTE PTR [eax],al
c01097c8:	e0 4d                	loopne c0109817 <_edata+0xd36>
c01097ca:	10 c0                	adc    al,al
c01097cc:	44                   	inc    esp
c01097cd:	00 00                	add    BYTE PTR [eax],al
c01097cf:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c01097d2:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c01097d8:	02 40 c5             	add    al,BYTE PTR [eax-0x3b]
c01097db:	0c 04                	or     al,0x4
c01097dd:	04 00                	add    al,0x0
c01097df:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c01097e2:	00 00                	add    BYTE PTR [eax],al
c01097e4:	00 0d 00 00 24 4e    	add    BYTE PTR ds:0x4e240000,cl
c01097ea:	10 c0                	adc    al,al
c01097ec:	62 00                	bound  eax,QWORD PTR [eax]
c01097ee:	00 00                	add    BYTE PTR [eax],al
c01097f0:	41                   	inc    ecx
c01097f1:	0e                   	push   cs
c01097f2:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c01097f8:	02 5e c5             	add    bl,BYTE PTR [esi-0x3b]
c01097fb:	0c 04                	or     al,0x4
c01097fd:	04 00                	add    al,0x0
c01097ff:	00 20                	add    BYTE PTR [eax],ah
c0109801:	00 00                	add    BYTE PTR [eax],al
c0109803:	00 20                	add    BYTE PTR [eax],ah
c0109805:	0d 00 00 88 4e       	or     eax,0x4e880000
c010980a:	10 c0                	adc    al,al
c010980c:	2c 00                	sub    al,0x0
c010980e:	00 00                	add    BYTE PTR [eax],al
c0109810:	41                   	inc    ecx
c0109811:	0e                   	push   cs
c0109812:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0109818:	44                   	inc    esp
c0109819:	83 03 63             	add    DWORD PTR [ebx],0x63
c010981c:	c3                   	ret    
c010981d:	41                   	inc    ecx
c010981e:	0c 04                	or     al,0x4
c0109820:	04 c5                	add    al,0xc5
c0109822:	00 00                	add    BYTE PTR [eax],al
c0109824:	1c 00                	sbb    al,0x0
c0109826:	00 00                	add    BYTE PTR [eax],al
c0109828:	44                   	inc    esp
c0109829:	0d 00 00 b4 4e       	or     eax,0x4eb40000
c010982e:	10 c0                	adc    al,al
c0109830:	23 00                	and    eax,DWORD PTR [eax]
c0109832:	00 00                	add    BYTE PTR [eax],al
c0109834:	41                   	inc    ecx
c0109835:	0e                   	push   cs
c0109836:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010983c:	5f                   	pop    edi
c010983d:	c5 0c 04             	lds    ecx,FWORD PTR [esp+eax*1]
c0109840:	04 00                	add    al,0x0
c0109842:	00 00                	add    BYTE PTR [eax],al
c0109844:	1c 00                	sbb    al,0x0
c0109846:	00 00                	add    BYTE PTR [eax],al
c0109848:	64 0d 00 00 d7 4e    	fs or  eax,0x4ed70000
c010984e:	10 c0                	adc    al,al
c0109850:	60                   	pusha  
c0109851:	00 00                	add    BYTE PTR [eax],al
c0109853:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c0109856:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010985c:	02 5c c5 0c          	add    bl,BYTE PTR [ebp+eax*8+0xc]
c0109860:	04 04                	add    al,0x4
c0109862:	00 00                	add    BYTE PTR [eax],al
c0109864:	1c 00                	sbb    al,0x0
c0109866:	00 00                	add    BYTE PTR [eax],al
c0109868:	84 0d 00 00 37 4f    	test   BYTE PTR ds:0x4f370000,cl
c010986e:	10 c0                	adc    al,al
c0109870:	c9                   	leave  
c0109871:	02 00                	add    al,BYTE PTR [eax]
c0109873:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c0109876:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010987c:	03 c5                	add    eax,ebp
c010987e:	02 c5                	add    al,ch
c0109880:	0c 04                	or     al,0x4
c0109882:	04 00                	add    al,0x0
c0109884:	1c 00                	sbb    al,0x0
c0109886:	00 00                	add    BYTE PTR [eax],al
c0109888:	a4                   	movs   BYTE PTR es:[edi],BYTE PTR ds:[esi]
c0109889:	0d 00 00 00 52       	or     eax,0x52000000
c010988e:	10 c0                	adc    al,al
c0109890:	17                   	pop    ss
c0109891:	00 00                	add    BYTE PTR [eax],al
c0109893:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c0109896:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010989c:	53                   	push   ebx
c010989d:	0c 04                	or     al,0x4
c010989f:	04 c5                	add    al,0xc5
c01098a1:	00 00                	add    BYTE PTR [eax],al
c01098a3:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c01098a6:	00 00                	add    BYTE PTR [eax],al
c01098a8:	c4 0d 00 00 17 52    	les    ecx,FWORD PTR ds:0x52170000
c01098ae:	10 c0                	adc    al,al
c01098b0:	6e                   	outs   dx,BYTE PTR ds:[esi]
c01098b1:	01 00                	add    DWORD PTR [eax],eax
c01098b3:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c01098b6:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c01098bc:	03 6a 01             	add    ebp,DWORD PTR [edx+0x1]
c01098bf:	c5 0c 04             	lds    ecx,FWORD PTR [esp+eax*1]
c01098c2:	04 00                	add    al,0x0
c01098c4:	1c 00                	sbb    al,0x0
c01098c6:	00 00                	add    BYTE PTR [eax],al
c01098c8:	e4 0d                	in     al,0xd
c01098ca:	00 00                	add    BYTE PTR [eax],al
c01098cc:	85 53 10             	test   DWORD PTR [ebx+0x10],edx
c01098cf:	c0 c4 00             	rol    ah,0x0
c01098d2:	00 00                	add    BYTE PTR [eax],al
c01098d4:	41                   	inc    ecx
c01098d5:	0e                   	push   cs
c01098d6:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c01098dc:	02 c0                	add    al,al
c01098de:	c5 0c 04             	lds    ecx,FWORD PTR [esp+eax*1]
c01098e1:	04 00                	add    al,0x0
c01098e3:	00 18                	add    BYTE PTR [eax],bl
c01098e5:	00 00                	add    BYTE PTR [eax],al
c01098e7:	00 04 0e             	add    BYTE PTR [esi+ecx*1],al
c01098ea:	00 00                	add    BYTE PTR [eax],al
c01098ec:	4c                   	dec    esp
c01098ed:	54                   	push   esp
c01098ee:	10 c0                	adc    al,al
c01098f0:	72 00                	jb     c01098f2 <_edata+0xe11>
c01098f2:	00 00                	add    BYTE PTR [eax],al
c01098f4:	41                   	inc    ecx
c01098f5:	0e                   	push   cs
c01098f6:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c01098fc:	44                   	inc    esp
c01098fd:	83 03 00             	add    DWORD PTR [ebx],0x0
c0109900:	1c 00                	sbb    al,0x0
c0109902:	00 00                	add    BYTE PTR [eax],al
c0109904:	20 0e                	and    BYTE PTR [esi],cl
c0109906:	00 00                	add    BYTE PTR [eax],al
c0109908:	c0 54 10 c0 27       	rcl    BYTE PTR [eax+edx*1-0x40],0x27
c010990d:	00 00                	add    BYTE PTR [eax],al
c010990f:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c0109912:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0109918:	63 c5                	arpl   bp,ax
c010991a:	0c 04                	or     al,0x4
c010991c:	04 00                	add    al,0x0
c010991e:	00 00                	add    BYTE PTR [eax],al
c0109920:	24 00                	and    al,0x0
c0109922:	00 00                	add    BYTE PTR [eax],al
c0109924:	40                   	inc    eax
c0109925:	0e                   	push   cs
c0109926:	00 00                	add    BYTE PTR [eax],al
c0109928:	e7 54                	out    0x54,eax
c010992a:	10 c0                	adc    al,al
c010992c:	42                   	inc    edx
c010992d:	00 00                	add    BYTE PTR [eax],al
c010992f:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c0109932:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0109938:	45                   	inc    ebp
c0109939:	83 04 86 03          	add    DWORD PTR [esi+eax*4],0x3
c010993d:	77 c3                	ja     c0109902 <_edata+0xe21>
c010993f:	41                   	inc    ecx
c0109940:	c6 41 0c 04          	mov    BYTE PTR [ecx+0xc],0x4
c0109944:	04 c5                	add    al,0xc5
c0109946:	00 00                	add    BYTE PTR [eax],al
c0109948:	20 00                	and    BYTE PTR [eax],al
c010994a:	00 00                	add    BYTE PTR [eax],al
c010994c:	68 0e 00 00 29       	push   0x2900000e
c0109951:	55                   	push   ebp
c0109952:	10 c0                	adc    al,al
c0109954:	4a                   	dec    edx
c0109955:	01 00                	add    DWORD PTR [eax],eax
c0109957:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c010995a:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0109960:	44                   	inc    esp
c0109961:	83 03 03             	add    DWORD PTR [ebx],0x3
c0109964:	41                   	inc    ecx
c0109965:	01 c3                	add    ebx,eax
c0109967:	41                   	inc    ecx
c0109968:	0c 04                	or     al,0x4
c010996a:	04 c5                	add    al,0xc5
c010996c:	28 00                	sub    BYTE PTR [eax],al
c010996e:	00 00                	add    BYTE PTR [eax],al
c0109970:	8c 0e                	mov    WORD PTR [esi],cs
c0109972:	00 00                	add    BYTE PTR [eax],al
c0109974:	73 56                	jae    c01099cc <_edata+0xeeb>
c0109976:	10 c0                	adc    al,al
c0109978:	cb                   	retf   
c0109979:	00 00                	add    BYTE PTR [eax],al
c010997b:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c010997e:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0109984:	46                   	inc    esi
c0109985:	83 05 86 04 87 03 02 	add    DWORD PTR ds:0x3870486,0x2
c010998c:	be c3 41 c6 41       	mov    esi,0x41c641c3
c0109991:	c7 41 0c 04 04 c5 00 	mov    DWORD PTR [ecx+0xc],0xc50404
c0109998:	1c 00                	sbb    al,0x0
c010999a:	00 00                	add    BYTE PTR [eax],al
c010999c:	b8 0e 00 00 40       	mov    eax,0x4000000e
c01099a1:	57                   	push   edi
c01099a2:	10 c0                	adc    al,al
c01099a4:	a1 00 00 00 41       	mov    eax,ds:0x41000000
c01099a9:	0e                   	push   cs
c01099aa:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c01099b0:	02 9d c5 0c 04 04    	add    bl,BYTE PTR [ebp+0x4040cc5]
c01099b6:	00 00                	add    BYTE PTR [eax],al
c01099b8:	1c 00                	sbb    al,0x0
c01099ba:	00 00                	add    BYTE PTR [eax],al
c01099bc:	d8 0e                	fmul   DWORD PTR [esi]
c01099be:	00 00                	add    BYTE PTR [eax],al
c01099c0:	e1 57                	loope  c0109a19 <_edata+0xf38>
c01099c2:	10 c0                	adc    al,al
c01099c4:	90                   	nop
c01099c5:	01 00                	add    DWORD PTR [eax],eax
c01099c7:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c01099ca:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c01099d0:	03 8c 01 c5 0c 04 04 	add    ecx,DWORD PTR [ecx+eax*1+0x4040cc5]
c01099d7:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c01099da:	00 00                	add    BYTE PTR [eax],al
c01099dc:	f8                   	clc    
c01099dd:	0e                   	push   cs
c01099de:	00 00                	add    BYTE PTR [eax],al
c01099e0:	71 59                	jno    c0109a3b <_edata+0xf5a>
c01099e2:	10 c0                	adc    al,al
c01099e4:	98                   	cwde   
c01099e5:	01 00                	add    DWORD PTR [eax],eax
c01099e7:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c01099ea:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c01099f0:	03 94 01 c5 0c 04 04 	add    edx,DWORD PTR [ecx+eax*1+0x4040cc5]
c01099f7:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c01099fa:	00 00                	add    BYTE PTR [eax],al
c01099fc:	18 0f                	sbb    BYTE PTR [edi],cl
c01099fe:	00 00                	add    BYTE PTR [eax],al
c0109a00:	09 5b 10             	or     DWORD PTR [ebx+0x10],ebx
c0109a03:	c0 19 00             	rcr    BYTE PTR [ecx],0x0
c0109a06:	00 00                	add    BYTE PTR [eax],al
c0109a08:	41                   	inc    ecx
c0109a09:	0e                   	push   cs
c0109a0a:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0109a10:	55                   	push   ebp
c0109a11:	0c 04                	or     al,0x4
c0109a13:	04 c5                	add    al,0xc5
c0109a15:	00 00                	add    BYTE PTR [eax],al
c0109a17:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c0109a1a:	00 00                	add    BYTE PTR [eax],al
c0109a1c:	38 0f                	cmp    BYTE PTR [edi],cl
c0109a1e:	00 00                	add    BYTE PTR [eax],al
c0109a20:	22 5b 10             	and    bl,BYTE PTR [ebx+0x10]
c0109a23:	c0 13 00             	rcl    BYTE PTR [ebx],0x0
c0109a26:	00 00                	add    BYTE PTR [eax],al
c0109a28:	41                   	inc    ecx
c0109a29:	0e                   	push   cs
c0109a2a:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0109a30:	4f                   	dec    edi
c0109a31:	0c 04                	or     al,0x4
c0109a33:	04 c5                	add    al,0xc5
c0109a35:	00 00                	add    BYTE PTR [eax],al
c0109a37:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c0109a3a:	00 00                	add    BYTE PTR [eax],al
c0109a3c:	58                   	pop    eax
c0109a3d:	0f 00 00             	sldt   WORD PTR [eax]
c0109a40:	38 5b 10             	cmp    BYTE PTR [ebx+0x10],bl
c0109a43:	c0 2d 00 00 00 41 0e 	shr    BYTE PTR ds:0x41000000,0xe
c0109a4a:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0109a50:	69 0c 04 04 c5 00 00 	imul   ecx,DWORD PTR [esp+eax*1],0xc504
c0109a57:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c0109a5a:	00 00                	add    BYTE PTR [eax],al
c0109a5c:	78 0f                	js     c0109a6d <_edata+0xf8c>
c0109a5e:	00 00                	add    BYTE PTR [eax],al
c0109a60:	65 5b                	gs pop ebx
c0109a62:	10 c0                	adc    al,al
c0109a64:	41                   	inc    ecx
c0109a65:	00 00                	add    BYTE PTR [eax],al
c0109a67:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c0109a6a:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0109a70:	7d c5                	jge    c0109a37 <_edata+0xf56>
c0109a72:	0c 04                	or     al,0x4
c0109a74:	04 00                	add    al,0x0
c0109a76:	00 00                	add    BYTE PTR [eax],al
c0109a78:	1c 00                	sbb    al,0x0
c0109a7a:	00 00                	add    BYTE PTR [eax],al
c0109a7c:	98                   	cwde   
c0109a7d:	0f 00 00             	sldt   WORD PTR [eax]
c0109a80:	a6                   	cmps   BYTE PTR ds:[esi],BYTE PTR es:[edi]
c0109a81:	5b                   	pop    ebx
c0109a82:	10 c0                	adc    al,al
c0109a84:	1d 00 00 00 41       	sbb    eax,0x41000000
c0109a89:	0e                   	push   cs
c0109a8a:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0109a90:	59                   	pop    ecx
c0109a91:	c5 0c 04             	lds    ecx,FWORD PTR [esp+eax*1]
c0109a94:	04 00                	add    al,0x0
c0109a96:	00 00                	add    BYTE PTR [eax],al
c0109a98:	1c 00                	sbb    al,0x0
c0109a9a:	00 00                	add    BYTE PTR [eax],al
c0109a9c:	b8 0f 00 00 c3       	mov    eax,0xc300000f
c0109aa1:	5b                   	pop    ebx
c0109aa2:	10 c0                	adc    al,al
c0109aa4:	1d 00 00 00 41       	sbb    eax,0x41000000
c0109aa9:	0e                   	push   cs
c0109aaa:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0109ab0:	59                   	pop    ecx
c0109ab1:	c5 0c 04             	lds    ecx,FWORD PTR [esp+eax*1]
c0109ab4:	04 00                	add    al,0x0
c0109ab6:	00 00                	add    BYTE PTR [eax],al
c0109ab8:	1c 00                	sbb    al,0x0
c0109aba:	00 00                	add    BYTE PTR [eax],al
c0109abc:	d8 0f                	fmul   DWORD PTR [edi]
c0109abe:	00 00                	add    BYTE PTR [eax],al
c0109ac0:	e0 5b                	loopne c0109b1d <_edata+0x103c>
c0109ac2:	10 c0                	adc    al,al
c0109ac4:	36 00 00             	add    BYTE PTR ss:[eax],al
c0109ac7:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c0109aca:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0109ad0:	72 c5                	jb     c0109a97 <_edata+0xfb6>
c0109ad2:	0c 04                	or     al,0x4
c0109ad4:	04 00                	add    al,0x0
c0109ad6:	00 00                	add    BYTE PTR [eax],al
c0109ad8:	1c 00                	sbb    al,0x0
c0109ada:	00 00                	add    BYTE PTR [eax],al
c0109adc:	f8                   	clc    
c0109add:	0f 00 00             	sldt   WORD PTR [eax]
c0109ae0:	16                   	push   ss
c0109ae1:	5c                   	pop    esp
c0109ae2:	10 c0                	adc    al,al
c0109ae4:	1f                   	pop    ds
c0109ae5:	00 00                	add    BYTE PTR [eax],al
c0109ae7:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c0109aea:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0109af0:	5b                   	pop    ebx
c0109af1:	c5 0c 04             	lds    ecx,FWORD PTR [esp+eax*1]
c0109af4:	04 00                	add    al,0x0
c0109af6:	00 00                	add    BYTE PTR [eax],al
c0109af8:	1c 00                	sbb    al,0x0
c0109afa:	00 00                	add    BYTE PTR [eax],al
c0109afc:	18 10                	sbb    BYTE PTR [eax],dl
c0109afe:	00 00                	add    BYTE PTR [eax],al
c0109b00:	35 5c 10 c0 3b       	xor    eax,0x3bc0105c
c0109b05:	00 00                	add    BYTE PTR [eax],al
c0109b07:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c0109b0a:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0109b10:	77 c5                	ja     c0109ad7 <_edata+0xff6>
c0109b12:	0c 04                	or     al,0x4
c0109b14:	04 00                	add    al,0x0
c0109b16:	00 00                	add    BYTE PTR [eax],al
c0109b18:	1c 00                	sbb    al,0x0
c0109b1a:	00 00                	add    BYTE PTR [eax],al
c0109b1c:	38 10                	cmp    BYTE PTR [eax],dl
c0109b1e:	00 00                	add    BYTE PTR [eax],al
c0109b20:	70 5c                	jo     c0109b7e <_edata+0x109d>
c0109b22:	10 c0                	adc    al,al
c0109b24:	47                   	inc    edi
c0109b25:	00 00                	add    BYTE PTR [eax],al
c0109b27:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c0109b2a:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0109b30:	02 43 c5             	add    al,BYTE PTR [ebx-0x3b]
c0109b33:	0c 04                	or     al,0x4
c0109b35:	04 00                	add    al,0x0
c0109b37:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c0109b3a:	00 00                	add    BYTE PTR [eax],al
c0109b3c:	58                   	pop    eax
c0109b3d:	10 00                	adc    BYTE PTR [eax],al
c0109b3f:	00 b7 5c 10 c0 35    	add    BYTE PTR [edi+0x35c0105c],dh
c0109b45:	00 00                	add    BYTE PTR [eax],al
c0109b47:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c0109b4a:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0109b50:	71 c5                	jno    c0109b17 <_edata+0x1036>
c0109b52:	0c 04                	or     al,0x4
c0109b54:	04 00                	add    al,0x0
c0109b56:	00 00                	add    BYTE PTR [eax],al
c0109b58:	1c 00                	sbb    al,0x0
c0109b5a:	00 00                	add    BYTE PTR [eax],al
c0109b5c:	78 10                	js     c0109b6e <_edata+0x108d>
c0109b5e:	00 00                	add    BYTE PTR [eax],al
c0109b60:	ec                   	in     al,dx
c0109b61:	5c                   	pop    esp
c0109b62:	10 c0                	adc    al,al
c0109b64:	19 00                	sbb    DWORD PTR [eax],eax
c0109b66:	00 00                	add    BYTE PTR [eax],al
c0109b68:	41                   	inc    ecx
c0109b69:	0e                   	push   cs
c0109b6a:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0109b70:	55                   	push   ebp
c0109b71:	0c 04                	or     al,0x4
c0109b73:	04 c5                	add    al,0xc5
c0109b75:	00 00                	add    BYTE PTR [eax],al
c0109b77:	00 20                	add    BYTE PTR [eax],ah
c0109b79:	00 00                	add    BYTE PTR [eax],al
c0109b7b:	00 98 10 00 00 08    	add    BYTE PTR [eax+0x8000010],bl
c0109b81:	5d                   	pop    ebp
c0109b82:	10 c0                	adc    al,al
c0109b84:	1f                   	pop    ds
c0109b85:	00 00                	add    BYTE PTR [eax],al
c0109b87:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c0109b8a:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0109b90:	44                   	inc    esp
c0109b91:	83 03 56             	add    DWORD PTR [ebx],0x56
c0109b94:	c3                   	ret    
c0109b95:	41                   	inc    ecx
c0109b96:	0c 04                	or     al,0x4
c0109b98:	04 c5                	add    al,0xc5
c0109b9a:	00 00                	add    BYTE PTR [eax],al
c0109b9c:	1c 00                	sbb    al,0x0
c0109b9e:	00 00                	add    BYTE PTR [eax],al
c0109ba0:	bc 10 00 00 27       	mov    esp,0x27000010
c0109ba5:	5d                   	pop    ebp
c0109ba6:	10 c0                	adc    al,al
c0109ba8:	0c 00                	or     al,0x0
c0109baa:	00 00                	add    BYTE PTR [eax],al
c0109bac:	41                   	inc    ecx
c0109bad:	0e                   	push   cs
c0109bae:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0109bb4:	48                   	dec    eax
c0109bb5:	0c 04                	or     al,0x4
c0109bb7:	04 c5                	add    al,0xc5
c0109bb9:	00 00                	add    BYTE PTR [eax],al
c0109bbb:	00 20                	add    BYTE PTR [eax],ah
c0109bbd:	00 00                	add    BYTE PTR [eax],al
c0109bbf:	00 dc                	add    ah,bl
c0109bc1:	10 00                	adc    BYTE PTR [eax],al
c0109bc3:	00 33                	add    BYTE PTR [ebx],dh
c0109bc5:	5d                   	pop    ebp
c0109bc6:	10 c0                	adc    al,al
c0109bc8:	28 01                	sub    BYTE PTR [ecx],al
c0109bca:	00 00                	add    BYTE PTR [eax],al
c0109bcc:	41                   	inc    ecx
c0109bcd:	0e                   	push   cs
c0109bce:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0109bd4:	44                   	inc    esp
c0109bd5:	83 03 03             	add    DWORD PTR [ebx],0x3
c0109bd8:	1f                   	pop    ds
c0109bd9:	01 c3                	add    ebx,eax
c0109bdb:	41                   	inc    ecx
c0109bdc:	0c 04                	or     al,0x4
c0109bde:	04 c5                	add    al,0xc5
c0109be0:	1c 00                	sbb    al,0x0
c0109be2:	00 00                	add    BYTE PTR [eax],al
c0109be4:	00 11                	add    BYTE PTR [ecx],dl
c0109be6:	00 00                	add    BYTE PTR [eax],al
c0109be8:	5b                   	pop    ebx
c0109be9:	5e                   	pop    esi
c0109bea:	10 c0                	adc    al,al
c0109bec:	37                   	aaa    
c0109bed:	00 00                	add    BYTE PTR [eax],al
c0109bef:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c0109bf2:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0109bf8:	73 c5                	jae    c0109bbf <_edata+0x10de>
c0109bfa:	0c 04                	or     al,0x4
c0109bfc:	04 00                	add    al,0x0
c0109bfe:	00 00                	add    BYTE PTR [eax],al
c0109c00:	24 00                	and    al,0x0
c0109c02:	00 00                	add    BYTE PTR [eax],al
c0109c04:	20 11                	and    BYTE PTR [ecx],dl
c0109c06:	00 00                	add    BYTE PTR [eax],al
c0109c08:	92                   	xchg   edx,eax
c0109c09:	5e                   	pop    esi
c0109c0a:	10 c0                	adc    al,al
c0109c0c:	88 00                	mov    BYTE PTR [eax],al
c0109c0e:	00 00                	add    BYTE PTR [eax],al
c0109c10:	41                   	inc    ecx
c0109c11:	0e                   	push   cs
c0109c12:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0109c18:	45                   	inc    ebp
c0109c19:	83 04 87 03          	add    DWORD PTR [edi+eax*4],0x3
c0109c1d:	02 7d c3             	add    bh,BYTE PTR [ebp-0x3d]
c0109c20:	41                   	inc    ecx
c0109c21:	c7 41 0c 04 04 c5 00 	mov    DWORD PTR [ecx+0xc],0xc50404
c0109c28:	24 00                	and    al,0x0
c0109c2a:	00 00                	add    BYTE PTR [eax],al
c0109c2c:	48                   	dec    eax
c0109c2d:	11 00                	adc    DWORD PTR [eax],eax
c0109c2f:	00 1a                	add    BYTE PTR [edx],bl
c0109c31:	5f                   	pop    edi
c0109c32:	10 c0                	adc    al,al
c0109c34:	88 00                	mov    BYTE PTR [eax],al
c0109c36:	00 00                	add    BYTE PTR [eax],al
c0109c38:	41                   	inc    ecx
c0109c39:	0e                   	push   cs
c0109c3a:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0109c40:	45                   	inc    ebp
c0109c41:	83 04 87 03          	add    DWORD PTR [edi+eax*4],0x3
c0109c45:	02 7d c3             	add    bh,BYTE PTR [ebp-0x3d]
c0109c48:	41                   	inc    ecx
c0109c49:	c7 41 0c 04 04 c5 00 	mov    DWORD PTR [ecx+0xc],0xc50404
c0109c50:	1c 00                	sbb    al,0x0
c0109c52:	00 00                	add    BYTE PTR [eax],al
c0109c54:	70 11                	jo     c0109c67 <_edata+0x1186>
c0109c56:	00 00                	add    BYTE PTR [eax],al
c0109c58:	a2 5f 10 c0 bf       	mov    ds:0xbfc0105f,al
c0109c5d:	00 00                	add    BYTE PTR [eax],al
c0109c5f:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c0109c62:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0109c68:	02 bb c5 0c 04 04    	add    bh,BYTE PTR [ebx+0x4040cc5]
c0109c6e:	00 00                	add    BYTE PTR [eax],al
c0109c70:	20 00                	and    BYTE PTR [eax],al
c0109c72:	00 00                	add    BYTE PTR [eax],al
c0109c74:	90                   	nop
c0109c75:	11 00                	adc    DWORD PTR [eax],eax
c0109c77:	00 61 60             	add    BYTE PTR [ecx+0x60],ah
c0109c7a:	10 c0                	adc    al,al
c0109c7c:	aa                   	stos   BYTE PTR es:[edi],al
c0109c7d:	00 00                	add    BYTE PTR [eax],al
c0109c7f:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c0109c82:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0109c88:	44                   	inc    esp
c0109c89:	83 03 02             	add    DWORD PTR [ebx],0x2
c0109c8c:	a1 c3 41 0c 04       	mov    eax,ds:0x40c41c3
c0109c91:	04 c5                	add    al,0xc5
c0109c93:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c0109c96:	00 00                	add    BYTE PTR [eax],al
c0109c98:	b4 11                	mov    ah,0x11
c0109c9a:	00 00                	add    BYTE PTR [eax],al
c0109c9c:	0b 61 10             	or     esp,DWORD PTR [ecx+0x10]
c0109c9f:	c0 6b 00 00          	shr    BYTE PTR [ebx+0x0],0x0
c0109ca3:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c0109ca6:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0109cac:	02 67 c5             	add    ah,BYTE PTR [edi-0x3b]
c0109caf:	0c 04                	or     al,0x4
c0109cb1:	04 00                	add    al,0x0
c0109cb3:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c0109cb6:	00 00                	add    BYTE PTR [eax],al
c0109cb8:	d4 11                	aam    0x11
c0109cba:	00 00                	add    BYTE PTR [eax],al
c0109cbc:	76 61                	jbe    c0109d1f <_edata+0x123e>
c0109cbe:	10 c0                	adc    al,al
c0109cc0:	67 00 00             	add    BYTE PTR [bx+si],al
c0109cc3:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c0109cc6:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0109ccc:	02 63 c5             	add    ah,BYTE PTR [ebx-0x3b]
c0109ccf:	0c 04                	or     al,0x4
c0109cd1:	04 00                	add    al,0x0
c0109cd3:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c0109cd6:	00 00                	add    BYTE PTR [eax],al
c0109cd8:	f4                   	hlt    
c0109cd9:	11 00                	adc    DWORD PTR [eax],eax
c0109cdb:	00 dd                	add    ch,bl
c0109cdd:	61                   	popa   
c0109cde:	10 c0                	adc    al,al
c0109ce0:	63 00                	arpl   WORD PTR [eax],ax
c0109ce2:	00 00                	add    BYTE PTR [eax],al
c0109ce4:	41                   	inc    ecx
c0109ce5:	0e                   	push   cs
c0109ce6:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0109cec:	02 5f c5             	add    bl,BYTE PTR [edi-0x3b]
c0109cef:	0c 04                	or     al,0x4
c0109cf1:	04 00                	add    al,0x0
c0109cf3:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c0109cf6:	00 00                	add    BYTE PTR [eax],al
c0109cf8:	14 12                	adc    al,0x12
c0109cfa:	00 00                	add    BYTE PTR [eax],al
c0109cfc:	40                   	inc    eax
c0109cfd:	62 10                	bound  edx,QWORD PTR [eax]
c0109cff:	c0 68 00 00          	shr    BYTE PTR [eax+0x0],0x0
c0109d03:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c0109d06:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0109d0c:	02 64 c5 0c          	add    ah,BYTE PTR [ebp+eax*8+0xc]
c0109d10:	04 04                	add    al,0x4
c0109d12:	00 00                	add    BYTE PTR [eax],al
c0109d14:	1c 00                	sbb    al,0x0
c0109d16:	00 00                	add    BYTE PTR [eax],al
c0109d18:	34 12                	xor    al,0x12
c0109d1a:	00 00                	add    BYTE PTR [eax],al
c0109d1c:	a8 62                	test   al,0x62
c0109d1e:	10 c0                	adc    al,al
c0109d20:	74 00                	je     c0109d22 <_edata+0x1241>
c0109d22:	00 00                	add    BYTE PTR [eax],al
c0109d24:	41                   	inc    ecx
c0109d25:	0e                   	push   cs
c0109d26:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0109d2c:	02 70 c5             	add    dh,BYTE PTR [eax-0x3b]
c0109d2f:	0c 04                	or     al,0x4
c0109d31:	04 00                	add    al,0x0
c0109d33:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c0109d36:	00 00                	add    BYTE PTR [eax],al
c0109d38:	54                   	push   esp
c0109d39:	12 00                	adc    al,BYTE PTR [eax]
c0109d3b:	00 1c 63             	add    BYTE PTR [ebx+eiz*2],bl
c0109d3e:	10 c0                	adc    al,al
c0109d40:	9f                   	lahf   
c0109d41:	00 00                	add    BYTE PTR [eax],al
c0109d43:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c0109d46:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0109d4c:	02 9b c5 0c 04 04    	add    bl,BYTE PTR [ebx+0x4040cc5]
c0109d52:	00 00                	add    BYTE PTR [eax],al
c0109d54:	1c 00                	sbb    al,0x0
c0109d56:	00 00                	add    BYTE PTR [eax],al
c0109d58:	74 12                	je     c0109d6c <_edata+0x128b>
c0109d5a:	00 00                	add    BYTE PTR [eax],al
c0109d5c:	bb 63 10 c0 34       	mov    ebx,0x34c01063
c0109d61:	00 00                	add    BYTE PTR [eax],al
c0109d63:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c0109d66:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0109d6c:	70 c5                	jo     c0109d33 <_edata+0x1252>
c0109d6e:	0c 04                	or     al,0x4
c0109d70:	04 00                	add    al,0x0
c0109d72:	00 00                	add    BYTE PTR [eax],al
c0109d74:	1c 00                	sbb    al,0x0
c0109d76:	00 00                	add    BYTE PTR [eax],al
c0109d78:	94                   	xchg   esp,eax
c0109d79:	12 00                	adc    al,BYTE PTR [eax]
c0109d7b:	00 ef                	add    bh,ch
c0109d7d:	63 10                	arpl   WORD PTR [eax],dx
c0109d7f:	c0 2b 00             	shr    BYTE PTR [ebx],0x0
c0109d82:	00 00                	add    BYTE PTR [eax],al
c0109d84:	41                   	inc    ecx
c0109d85:	0e                   	push   cs
c0109d86:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0109d8c:	67 c5 0c             	lds    ecx,FWORD PTR [si]
c0109d8f:	04 04                	add    al,0x4
c0109d91:	00 00                	add    BYTE PTR [eax],al
c0109d93:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c0109d96:	00 00                	add    BYTE PTR [eax],al
c0109d98:	b4 12                	mov    ah,0x12
c0109d9a:	00 00                	add    BYTE PTR [eax],al
c0109d9c:	1c 64                	sbb    al,0x64
c0109d9e:	10 c0                	adc    al,al
c0109da0:	2f                   	das    
c0109da1:	00 00                	add    BYTE PTR [eax],al
c0109da3:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c0109da6:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0109dac:	6b c5 0c             	imul   eax,ebp,0xc
c0109daf:	04 04                	add    al,0x4
c0109db1:	00 00                	add    BYTE PTR [eax],al
c0109db3:	00 20                	add    BYTE PTR [eax],ah
c0109db5:	00 00                	add    BYTE PTR [eax],al
c0109db7:	00 d4                	add    ah,dl
c0109db9:	12 00                	adc    al,BYTE PTR [eax]
c0109dbb:	00 4b 64             	add    BYTE PTR [ebx+0x64],cl
c0109dbe:	10 c0                	adc    al,al
c0109dc0:	d4 02                	aam    0x2
c0109dc2:	00 00                	add    BYTE PTR [eax],al
c0109dc4:	41                   	inc    ecx
c0109dc5:	0e                   	push   cs
c0109dc6:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0109dcc:	44                   	inc    esp
c0109dcd:	83 03 03             	add    DWORD PTR [ebx],0x3
c0109dd0:	cb                   	retf   
c0109dd1:	02 c3                	add    al,bl
c0109dd3:	41                   	inc    ecx
c0109dd4:	0c 04                	or     al,0x4
c0109dd6:	04 c5                	add    al,0xc5
c0109dd8:	1c 00                	sbb    al,0x0
c0109dda:	00 00                	add    BYTE PTR [eax],al
c0109ddc:	f8                   	clc    
c0109ddd:	12 00                	adc    al,BYTE PTR [eax]
c0109ddf:	00 20                	add    BYTE PTR [eax],ah
c0109de1:	67 10 c0             	addr16 adc al,al
c0109de4:	6f                   	outs   dx,DWORD PTR ds:[esi]
c0109de5:	00 00                	add    BYTE PTR [eax],al
c0109de7:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c0109dea:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0109df0:	02 6b c5             	add    ch,BYTE PTR [ebx-0x3b]
c0109df3:	0c 04                	or     al,0x4
c0109df5:	04 00                	add    al,0x0
c0109df7:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c0109dfa:	00 00                	add    BYTE PTR [eax],al
c0109dfc:	18 13                	sbb    BYTE PTR [ebx],dl
c0109dfe:	00 00                	add    BYTE PTR [eax],al
c0109e00:	8f                   	(bad)  
c0109e01:	67 10 c0             	addr16 adc al,al
c0109e04:	96                   	xchg   esi,eax
c0109e05:	00 00                	add    BYTE PTR [eax],al
c0109e07:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c0109e0a:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0109e10:	02 92 c5 0c 04 04    	add    dl,BYTE PTR [edx+0x4040cc5]
c0109e16:	00 00                	add    BYTE PTR [eax],al
c0109e18:	1c 00                	sbb    al,0x0
c0109e1a:	00 00                	add    BYTE PTR [eax],al
c0109e1c:	38 13                	cmp    BYTE PTR [ebx],dl
c0109e1e:	00 00                	add    BYTE PTR [eax],al
c0109e20:	25 68 10 c0 35       	and    eax,0x35c01068
c0109e25:	00 00                	add    BYTE PTR [eax],al
c0109e27:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c0109e2a:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0109e30:	71 c5                	jno    c0109df7 <_edata+0x1316>
c0109e32:	0c 04                	or     al,0x4
c0109e34:	04 00                	add    al,0x0
c0109e36:	00 00                	add    BYTE PTR [eax],al
c0109e38:	1c 00                	sbb    al,0x0
c0109e3a:	00 00                	add    BYTE PTR [eax],al
c0109e3c:	58                   	pop    eax
c0109e3d:	13 00                	adc    eax,DWORD PTR [eax]
c0109e3f:	00 5a 68             	add    BYTE PTR [edx+0x68],bl
c0109e42:	10 c0                	adc    al,al
c0109e44:	6a 00                	push   0x0
c0109e46:	00 00                	add    BYTE PTR [eax],al
c0109e48:	41                   	inc    ecx
c0109e49:	0e                   	push   cs
c0109e4a:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0109e50:	02 66 c5             	add    ah,BYTE PTR [esi-0x3b]
c0109e53:	0c 04                	or     al,0x4
c0109e55:	04 00                	add    al,0x0
c0109e57:	00 28                	add    BYTE PTR [eax],ch
c0109e59:	00 00                	add    BYTE PTR [eax],al
c0109e5b:	00 78 13             	add    BYTE PTR [eax+0x13],bh
c0109e5e:	00 00                	add    BYTE PTR [eax],al
c0109e60:	c4 68 10             	les    ebp,FWORD PTR [eax+0x10]
c0109e63:	c0 5e 01 00          	rcr    BYTE PTR [esi+0x1],0x0
c0109e67:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c0109e6a:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0109e70:	46                   	inc    esi
c0109e71:	83 05 86 04 87 03 03 	add    DWORD PTR ds:0x3870486,0x3
c0109e78:	51                   	push   ecx
c0109e79:	01 c3                	add    ebx,eax
c0109e7b:	41                   	inc    ecx
c0109e7c:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c0109e80:	0c 04                	or     al,0x4
c0109e82:	04 c5                	add    al,0xc5
c0109e84:	28 00                	sub    BYTE PTR [eax],al
c0109e86:	00 00                	add    BYTE PTR [eax],al
c0109e88:	a4                   	movs   BYTE PTR es:[edi],BYTE PTR ds:[esi]
c0109e89:	13 00                	adc    eax,DWORD PTR [eax]
c0109e8b:	00 22                	add    BYTE PTR [edx],ah
c0109e8d:	6a 10                	push   0x10
c0109e8f:	c0                   	(bad)  
c0109e90:	b0 02                	mov    al,0x2
c0109e92:	00 00                	add    BYTE PTR [eax],al
c0109e94:	41                   	inc    ecx
c0109e95:	0e                   	push   cs
c0109e96:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0109e9c:	46                   	inc    esi
c0109e9d:	83 05 86 04 87 03 03 	add    DWORD PTR ds:0x3870486,0x3
c0109ea4:	a3 02 c3 41 c6       	mov    ds:0xc641c302,eax
c0109ea9:	41                   	inc    ecx
c0109eaa:	c7 41 0c 04 04 c5 28 	mov    DWORD PTR [ecx+0xc],0x28c50404
c0109eb1:	00 00                	add    BYTE PTR [eax],al
c0109eb3:	00 d0                	add    al,dl
c0109eb5:	13 00                	adc    eax,DWORD PTR [eax]
c0109eb7:	00 d2                	add    dl,dl
c0109eb9:	6c                   	ins    BYTE PTR es:[edi],dx
c0109eba:	10 c0                	adc    al,al
c0109ebc:	90                   	nop
c0109ebd:	01 00                	add    DWORD PTR [eax],eax
c0109ebf:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c0109ec2:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0109ec8:	46                   	inc    esi
c0109ec9:	83 05 86 04 87 03 03 	add    DWORD PTR ds:0x3870486,0x3
c0109ed0:	83 01 c3             	add    DWORD PTR [ecx],0xffffffc3
c0109ed3:	41                   	inc    ecx
c0109ed4:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c0109ed8:	0c 04                	or     al,0x4
c0109eda:	04 c5                	add    al,0xc5
c0109edc:	28 00                	sub    BYTE PTR [eax],al
c0109ede:	00 00                	add    BYTE PTR [eax],al
c0109ee0:	fc                   	cld    
c0109ee1:	13 00                	adc    eax,DWORD PTR [eax]
c0109ee3:	00 62 6e             	add    BYTE PTR [edx+0x6e],ah
c0109ee6:	10 c0                	adc    al,al
c0109ee8:	7a 00                	jp     c0109eea <_edata+0x1409>
c0109eea:	00 00                	add    BYTE PTR [eax],al
c0109eec:	41                   	inc    ecx
c0109eed:	0e                   	push   cs
c0109eee:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0109ef4:	46                   	inc    esi
c0109ef5:	83 05 86 04 87 03 02 	add    DWORD PTR ds:0x3870486,0x2
c0109efc:	6d                   	ins    DWORD PTR es:[edi],dx
c0109efd:	c3                   	ret    
c0109efe:	41                   	inc    ecx
c0109eff:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c0109f03:	0c 04                	or     al,0x4
c0109f05:	04 c5                	add    al,0xc5
c0109f07:	00 20                	add    BYTE PTR [eax],ah
c0109f09:	00 00                	add    BYTE PTR [eax],al
c0109f0b:	00 28                	add    BYTE PTR [eax],ch
c0109f0d:	14 00                	adc    al,0x0
c0109f0f:	00 dc                	add    ah,bl
c0109f11:	6e                   	outs   dx,BYTE PTR ds:[esi]
c0109f12:	10 c0                	adc    al,al
c0109f14:	c1 01 00             	rol    DWORD PTR [ecx],0x0
c0109f17:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c0109f1a:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0109f20:	44                   	inc    esp
c0109f21:	83 03 03             	add    DWORD PTR [ebx],0x3
c0109f24:	b8 01 c3 41 0c       	mov    eax,0xc41c301
c0109f29:	04 04                	add    al,0x4
c0109f2b:	c5 1c 00             	lds    ebx,FWORD PTR [eax+eax*1]
c0109f2e:	00 00                	add    BYTE PTR [eax],al
c0109f30:	4c                   	dec    esp
c0109f31:	14 00                	adc    al,0x0
c0109f33:	00 9d 70 10 c0 a6    	add    BYTE PTR [ebp-0x593fef90],bl
c0109f39:	01 00                	add    DWORD PTR [eax],eax
c0109f3b:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c0109f3e:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0109f44:	03 a2 01 c5 0c 04    	add    esp,DWORD PTR [edx+0x40cc501]
c0109f4a:	04 00                	add    al,0x0
c0109f4c:	1c 00                	sbb    al,0x0
c0109f4e:	00 00                	add    BYTE PTR [eax],al
c0109f50:	6c                   	ins    BYTE PTR es:[edi],dx
c0109f51:	14 00                	adc    al,0x0
c0109f53:	00 43 72             	add    BYTE PTR [ebx+0x72],al
c0109f56:	10 c0                	adc    al,al
c0109f58:	6a 00                	push   0x0
c0109f5a:	00 00                	add    BYTE PTR [eax],al
c0109f5c:	41                   	inc    ecx
c0109f5d:	0e                   	push   cs
c0109f5e:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0109f64:	02 66 c5             	add    ah,BYTE PTR [esi-0x3b]
c0109f67:	0c 04                	or     al,0x4
c0109f69:	04 00                	add    al,0x0
c0109f6b:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c0109f6e:	00 00                	add    BYTE PTR [eax],al
c0109f70:	8c 14 00             	mov    WORD PTR [eax+eax*1],ss
c0109f73:	00 ad 72 10 c0 1b    	add    BYTE PTR [ebp+0x1bc01072],ch
c0109f79:	01 00                	add    DWORD PTR [eax],eax
c0109f7b:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c0109f7e:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0109f84:	03 17                	add    edx,DWORD PTR [edi]
c0109f86:	01 c5                	add    ebp,eax
c0109f88:	0c 04                	or     al,0x4
c0109f8a:	04 00                	add    al,0x0
c0109f8c:	1c 00                	sbb    al,0x0
c0109f8e:	00 00                	add    BYTE PTR [eax],al
c0109f90:	ac                   	lods   al,BYTE PTR ds:[esi]
c0109f91:	14 00                	adc    al,0x0
c0109f93:	00 c8                	add    al,cl
c0109f95:	73 10                	jae    c0109fa7 <_edata+0x14c6>
c0109f97:	c0 7c 00 00 00       	sar    BYTE PTR [eax+eax*1+0x0],0x0
c0109f9c:	41                   	inc    ecx
c0109f9d:	0e                   	push   cs
c0109f9e:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0109fa4:	02 78 c5             	add    bh,BYTE PTR [eax-0x3b]
c0109fa7:	0c 04                	or     al,0x4
c0109fa9:	04 00                	add    al,0x0
c0109fab:	00 24 00             	add    BYTE PTR [eax+eax*1],ah
c0109fae:	00 00                	add    BYTE PTR [eax],al
c0109fb0:	cc                   	int3   
c0109fb1:	14 00                	adc    al,0x0
c0109fb3:	00 44 74 10          	add    BYTE PTR [esp+esi*2+0x10],al
c0109fb7:	c0 e4 01             	shl    ah,0x1
c0109fba:	00 00                	add    BYTE PTR [eax],al
c0109fbc:	41                   	inc    ecx
c0109fbd:	0e                   	push   cs
c0109fbe:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0109fc4:	45                   	inc    ebp
c0109fc5:	83 04 86 03          	add    DWORD PTR [esi+eax*4],0x3
c0109fc9:	03 d9                	add    ebx,ecx
c0109fcb:	01 c3                	add    ebx,eax
c0109fcd:	41                   	inc    ecx
c0109fce:	c6 41 0c 04          	mov    BYTE PTR [ecx+0xc],0x4
c0109fd2:	04 c5                	add    al,0xc5

Disassembly of section .rodata:

c0109fd4 <PKn_Version>:
c0109fd4:	50                   	push   eax
c0109fd5:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c0109fd7:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c0109fda:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c0109fdf:	65 6c                	gs ins BYTE PTR es:[edi],dx
c0109fe1:	20 28                	and    BYTE PTR [eax],ch
c0109fe3:	50                   	push   eax
c0109fe4:	4b                   	dec    ebx
c0109fe5:	6e                   	outs   dx,BYTE PTR ds:[esi]
c0109fe6:	29 20                	sub    DWORD PTR [eax],esp
c0109fe8:	30 2e                	xor    BYTE PTR [esi],ch
c0109fea:	30 2e                	xor    BYTE PTR [esi],ch
c0109fec:	31 20                	xor    DWORD PTR [eax],esp
c0109fee:	41                   	inc    ecx
c0109fef:	75 67                	jne    c010a058 <PKn_Version+0x84>
c0109ff1:	2e 00 00             	add    BYTE PTR cs:[eax],al
c0109ff4:	56                   	push   esi
c0109ff5:	69 64 65 6f 20 4d 6f 	imul   esp,DWORD PTR [ebp+eiz*2+0x6f],0x646f4d20
c0109ffc:	64 
c0109ffd:	65 3a 20             	cmp    ah,BYTE PTR gs:[eax]
c010a000:	30 78 25             	xor    BYTE PTR [eax+0x25],bh
c010a003:	78 20                	js     c010a025 <PKn_Version+0x51>
c010a005:	53                   	push   ebx
c010a006:	63 72 6e             	arpl   WORD PTR [edx+0x6e],si
c010a009:	78 20                	js     c010a02b <PKn_Version+0x57>
c010a00b:	3d 20 25 64 20       	cmp    eax,0x20642520
c010a010:	53                   	push   ebx
c010a011:	63 72 6e             	arpl   WORD PTR [edx+0x6e],si
c010a014:	79 20                	jns    c010a036 <PKn_Version+0x62>
c010a016:	3d 20 25 64 0a       	cmp    eax,0xa642520
c010a01b:	4d                   	dec    ebp
c010a01c:	65 6d                	gs ins DWORD PTR es:[edi],dx
c010a01e:	6f                   	outs   dx,DWORD PTR ds:[esi]
c010a01f:	72 79                	jb     c010a09a <PKn_Version+0xc6>
c010a021:	3a 20                	cmp    ah,BYTE PTR [eax]
c010a023:	25 64 4d 42 00       	and    eax,0x424d64
c010a028:	43                   	inc    ebx
c010a029:	6f                   	outs   dx,DWORD PTR ds:[esi]
c010a02a:	70 79                	jo     c010a0a5 <PKn_Version+0xd1>
c010a02c:	72 69                	jb     c010a097 <PKn_Version+0xc3>
c010a02e:	67 68 74 20 28 63    	addr16 push 0x63282074
c010a034:	29 20                	sub    DWORD PTR [eax],esp
c010a036:	32 30                	xor    dh,BYTE PTR [eax]
c010a038:	32 31                	xor    dh,BYTE PTR [ecx]
c010a03a:	2d 32 30 32 32       	sub    eax,0x32323032
c010a03f:	20 50 65             	and    BYTE PTR [eax+0x65],dl
c010a042:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010a043:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c010a046:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c010a04b:	65 6c                	gs ins BYTE PTR es:[edi],dx
c010a04d:	20 64 65 76          	and    BYTE PTR [ebp+eiz*2+0x76],ah
c010a051:	65 6c                	gs ins BYTE PTR es:[edi],dx
c010a053:	6f                   	outs   dx,DWORD PTR ds:[esi]
c010a054:	70 65                	jo     c010a0bb <PKn_Version+0xe7>
c010a056:	72 73                	jb     c010a0cb <PKn_Version+0xf7>
c010a058:	2c 20                	sub    al,0x20
c010a05a:	41                   	inc    ecx
c010a05b:	6c                   	ins    BYTE PTR es:[edi],dx
c010a05c:	6c                   	ins    BYTE PTR es:[edi],dx
c010a05d:	20 72 69             	and    BYTE PTR [edx+0x69],dh
c010a060:	67 68 74 73 20 72    	addr16 push 0x72207374
c010a066:	65 73 65             	gs jae c010a0ce <PKn_Version+0xfa>
c010a069:	72 76                	jb     c010a0e1 <PKn_Version+0x10d>
c010a06b:	65 64 2e 00 4d 4d    	gs fs add BYTE PTR cs:[ebp+0x4d],cl
c010a071:	00 61 72             	add    BYTE PTR [ecx+0x72],ah
c010a074:	67 5f                	addr16 pop edi
c010a076:	41                   	inc    ecx
c010a077:	20 00                	and    BYTE PTR [eax],al
c010a079:	6b 5f 61 00          	imul   ebx,DWORD PTR [edi+0x61],0x0
c010a07d:	73 68                	jae    c010a0e7 <PKn_Version+0x113>
c010a07f:	65 6c                	gs ins BYTE PTR es:[edi],dx
c010a081:	6c                   	ins    BYTE PTR es:[edi],dx
c010a082:	00 56 69             	add    BYTE PTR [esi+0x69],dl
c010a085:	65 77 00             	gs ja  c010a088 <PKn_Version+0xb4>
c010a088:	75 73                	jne    c010a0fd <PKn_Version+0x129>
c010a08a:	65 72 5f             	gs jb  c010a0ec <PKn_Version+0x118>
c010a08d:	70 72                	jo     c010a101 <PKn_Version+0x12d>
c010a08f:	6f                   	outs   dx,DWORD PTR ds:[esi]
c010a090:	67 41                	addr16 inc ecx
c010a092:	00 54 61 73          	add    BYTE PTR [ecx+eiz*2+0x73],dl
c010a096:	6b 5f 41 00          	imul   ebx,DWORD PTR [edi+0x41],0x0
c010a09a:	25 30 34 78 2f       	and    eax,0x2f783430
c010a09f:	25 30 32 78 2f       	and    eax,0x2f783230
c010a0a4:	25 30 32 78 20       	and    eax,0x20783230
c010a0a9:	25 30 32 78 3a       	and    eax,0x3a783230
c010a0ae:	25 30 32 78 00       	and    eax,0x783230
c010a0b3:	0a 5b 55             	or     bl,BYTE PTR [ebx+0x55]
c010a0b6:	73 65                	jae    c010a11d <PKn_Version+0x149>
c010a0b8:	72 5d                	jb     c010a117 <PKn_Version+0x143>
c010a0ba:	3a 00                	cmp    al,BYTE PTR [eax]
c010a0bc:	5b                   	pop    ebx
c010a0bd:	55                   	push   ebp
c010a0be:	73 65                	jae    c010a125 <PKn_Version+0x151>
c010a0c0:	72 5d                	jb     c010a11f <PKn_Version+0x14b>
c010a0c2:	3a 00                	cmp    al,BYTE PTR [eax]
c010a0c4:	6d                   	ins    DWORD PTR es:[edi],dx
c010a0c5:	6d                   	ins    DWORD PTR es:[edi],dx
c010a0c6:	20 6d 61             	and    BYTE PTR [ebp+0x61],ch
c010a0c9:	6c                   	ins    BYTE PTR es:[edi],dx
c010a0ca:	6c                   	ins    BYTE PTR es:[edi],dx
c010a0cb:	6f                   	outs   dx,DWORD PTR ds:[esi]
c010a0cc:	63 3a                	arpl   WORD PTR [edx],di
c010a0ce:	20 25 70 00 00 00    	and    BYTE PTR ds:0x70,ah
c010a0d4:	50                   	push   eax
c010a0d5:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c010a0d7:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c010a0da:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c010a0df:	65 6c                	gs ins BYTE PTR es:[edi],dx
c010a0e1:	20 28                	and    BYTE PTR [eax],ch
c010a0e3:	50                   	push   eax
c010a0e4:	4b                   	dec    ebx
c010a0e5:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010a0e6:	29 20                	sub    DWORD PTR [eax],esp
c010a0e8:	30 2e                	xor    BYTE PTR [esi],ch
c010a0ea:	30 2e                	xor    BYTE PTR [esi],ch
c010a0ec:	31 20                	xor    DWORD PTR [eax],esp
c010a0ee:	41                   	inc    ecx
c010a0ef:	75 67                	jne    c010a158 <PKn_Version+0x184>
c010a0f1:	2e 00 00             	add    BYTE PTR cs:[eax],al
c010a0f4:	0a 20                	or     ah,BYTE PTR [eax]
c010a0f6:	45                   	inc    ebp
c010a0f7:	72 72                	jb     c010a16b <PKn_Version+0x197>
c010a0f9:	6f                   	outs   dx,DWORD PTR ds:[esi]
c010a0fa:	72 0a                	jb     c010a106 <PKn_Version+0x132>
c010a0fc:	20 46 69             	and    BYTE PTR [esi+0x69],al
c010a0ff:	6c                   	ins    BYTE PTR es:[edi],dx
c010a100:	65 3a 20             	cmp    ah,BYTE PTR gs:[eax]
c010a103:	20 20                	and    BYTE PTR [eax],ah
c010a105:	20 20                	and    BYTE PTR [eax],ah
c010a107:	20 20                	and    BYTE PTR [eax],ah
c010a109:	20 25 73 0a 20 42    	and    BYTE PTR ds:0x42200a73,ah
c010a10f:	61                   	popa   
c010a110:	73 65                	jae    c010a177 <PKn_Version+0x1a3>
c010a112:	20 46 69             	and    BYTE PTR [esi+0x69],al
c010a115:	6c                   	ins    BYTE PTR es:[edi],dx
c010a116:	65 3a 20             	cmp    ah,BYTE PTR gs:[eax]
c010a119:	20 20                	and    BYTE PTR [eax],ah
c010a11b:	25 73 0a 20 49       	and    eax,0x49200a73
c010a120:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010a121:	20 66 75             	and    BYTE PTR [esi+0x75],ah
c010a124:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010a125:	63 74 69 6f          	arpl   WORD PTR [ecx+ebp*2+0x6f],si
c010a129:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010a12a:	3a 20                	cmp    ah,BYTE PTR [eax]
c010a12c:	25 73 0a 20 4c       	and    eax,0x4c200a73
c010a131:	69 6e 65 3a 20 20 20 	imul   ebp,DWORD PTR [esi+0x65],0x2020203a
c010a138:	20 20                	and    BYTE PTR [eax],ah
c010a13a:	20 20                	and    BYTE PTR [eax],ah
c010a13c:	20 25 64 0a 20 43    	and    BYTE PTR ds:0x43200a64,ah
c010a142:	6f                   	outs   dx,DWORD PTR ds:[esi]
c010a143:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010a144:	64 69 74 69 6f 6e 3a 	imul   esi,DWORD PTR fs:[ecx+ebp*2+0x6f],0x20203a6e
c010a14b:	20 20 
c010a14d:	20 25 73 00 20 5b    	and    BYTE PTR ds:0x5b200073,ah
c010a153:	20 4c 6f 67          	and    BYTE PTR [edi+ebp*2+0x67],cl
c010a157:	5d                   	pop    ebp
c010a158:	00 00                	add    BYTE PTR [eax],al
c010a15a:	00 00                	add    BYTE PTR [eax],al
c010a15c:	50                   	push   eax
c010a15d:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c010a15f:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c010a162:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c010a167:	65 6c                	gs ins BYTE PTR es:[edi],dx
c010a169:	20 28                	and    BYTE PTR [eax],ch
c010a16b:	50                   	push   eax
c010a16c:	4b                   	dec    ebx
c010a16d:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010a16e:	29 20                	sub    DWORD PTR [eax],esp
c010a170:	30 2e                	xor    BYTE PTR [esi],ch
c010a172:	30 2e                	xor    BYTE PTR [esi],ch
c010a174:	31 20                	xor    DWORD PTR [eax],esp
c010a176:	41                   	inc    ecx
c010a177:	75 67                	jne    c010a1e0 <PKn_Version+0x20c>
c010a179:	2e 00 69 6e          	add    BYTE PTR cs:[ecx+0x6e],ch
c010a17d:	69 74 20 61 6c 6c 00 	imul   esi,DWORD PTR [eax+eiz*1+0x61],0x69006c6c
c010a184:	69 
c010a185:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010a186:	69 74 20 64 6f 6e 65 	imul   esi,DWORD PTR [eax+eiz*1+0x64],0x656e6f
c010a18d:	00 
c010a18e:	00 00                	add    BYTE PTR [eax],al
c010a190:	50                   	push   eax
c010a191:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c010a193:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c010a196:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c010a19b:	65 6c                	gs ins BYTE PTR es:[edi],dx
c010a19d:	20 28                	and    BYTE PTR [eax],ch
c010a19f:	50                   	push   eax
c010a1a0:	4b                   	dec    ebx
c010a1a1:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010a1a2:	29 20                	sub    DWORD PTR [eax],esp
c010a1a4:	30 2e                	xor    BYTE PTR [esi],ch
c010a1a6:	30 2e                	xor    BYTE PTR [esi],ch
c010a1a8:	31 20                	xor    DWORD PTR [eax],esp
c010a1aa:	41                   	inc    ecx
c010a1ab:	75 67                	jne    c010a214 <PKn_Version+0x240>
c010a1ad:	2e 00 00             	add    BYTE PTR cs:[eax],al
c010a1b0:	53                   	push   ebx
c010a1b1:	6f                   	outs   dx,DWORD PTR ds:[esi]
c010a1b2:	72 72                	jb     c010a226 <PKn_Version+0x252>
c010a1b4:	79 2c                	jns    c010a1e2 <PKn_Version+0x20e>
c010a1b6:	20 61 20             	and    BYTE PTR [ecx+0x20],ah
c010a1b9:	70 72                	jo     c010a22d <PKn_Version+0x259>
c010a1bb:	6f                   	outs   dx,DWORD PTR ds:[esi]
c010a1bc:	62 6c 65 6d          	bound  ebp,QWORD PTR [ebp+eiz*2+0x6d]
c010a1c0:	20 62 65             	and    BYTE PTR [edx+0x65],ah
c010a1c3:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c010a1c5:	20 64 65 74          	and    BYTE PTR [ebp+eiz*2+0x74],ah
c010a1c9:	65 63 74 65 64       	arpl   WORD PTR gs:[ebp+eiz*2+0x64],si
c010a1ce:	20 61 6e             	and    BYTE PTR [ecx+0x6e],ah
c010a1d1:	64 20 50 4b          	and    BYTE PTR fs:[eax+0x4b],dl
c010a1d5:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010a1d6:	20 73 68             	and    BYTE PTR [ebx+0x68],dh
c010a1d9:	75 74                	jne    c010a24f <PKn_Version+0x27b>
c010a1db:	20 64 6f 77          	and    BYTE PTR [edi+ebp*2+0x77],ah
c010a1df:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010a1e0:	20 74 6f 20          	and    BYTE PTR [edi+ebp*2+0x20],dh
c010a1e4:	70 72                	jo     c010a258 <PKn_Version+0x284>
c010a1e6:	65 76 65             	gs jbe c010a24e <PKn_Version+0x27a>
c010a1e9:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010a1ea:	74 20                	je     c010a20c <PKn_Version+0x238>
c010a1ec:	64 61                	fs popa 
c010a1ee:	6d                   	ins    DWORD PTR es:[edi],dx
c010a1ef:	61                   	popa   
c010a1f0:	67 65 20 74 6f       	and    BYTE PTR gs:[si+0x6f],dh
c010a1f5:	20 79 6f             	and    BYTE PTR [ecx+0x6f],bh
c010a1f8:	75 72                	jne    c010a26c <PKn_Version+0x298>
c010a1fa:	20 63 6f             	and    BYTE PTR [ebx+0x6f],ah
c010a1fd:	6d                   	ins    DWORD PTR es:[edi],dx
c010a1fe:	70 75                	jo     c010a275 <PKn_Version+0x2a1>
c010a200:	74 65                	je     c010a267 <PKn_Version+0x293>
c010a202:	72 2e                	jb     c010a232 <PKn_Version+0x25e>
c010a204:	0a 49 66             	or     cl,BYTE PTR [ecx+0x66]
c010a207:	20 74 68 69          	and    BYTE PTR [eax+ebp*2+0x69],dh
c010a20b:	73 20                	jae    c010a22d <PKn_Version+0x259>
c010a20d:	69 73 20 74 68 65 20 	imul   esi,DWORD PTR [ebx+0x20],0x20656874
c010a214:	66 69 72 73 74 20    	imul   si,WORD PTR [edx+0x73],0x2074
c010a21a:	74 69                	je     c010a285 <PKn_Version+0x2b1>
c010a21c:	6d                   	ins    DWORD PTR es:[edi],dx
c010a21d:	65 20 79 6f          	and    BYTE PTR gs:[ecx+0x6f],bh
c010a221:	75 27                	jne    c010a24a <PKn_Version+0x276>
c010a223:	76 65                	jbe    c010a28a <PKn_Version+0x2b6>
c010a225:	20 73 65             	and    BYTE PTR [ebx+0x65],dh
c010a228:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c010a22a:	20 74 68 69          	and    BYTE PTR [eax+ebp*2+0x69],dh
c010a22e:	73 20                	jae    c010a250 <PKn_Version+0x27c>
c010a230:	73 74                	jae    c010a2a6 <PKn_Version+0x2d2>
c010a232:	6f                   	outs   dx,DWORD PTR ds:[esi]
c010a233:	70 20                	jo     c010a255 <PKn_Version+0x281>
c010a235:	65 72 72             	gs jb  c010a2aa <PKn_Version+0x2d6>
c010a238:	6f                   	outs   dx,DWORD PTR ds:[esi]
c010a239:	72 20                	jb     c010a25b <PKn_Version+0x287>
c010a23b:	73 65                	jae    c010a2a2 <PKn_Version+0x2ce>
c010a23d:	72 65                	jb     c010a2a4 <PKn_Version+0x2d0>
c010a23f:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c010a241:	2c 20                	sub    al,0x20
c010a243:	72 65                	jb     c010a2aa <PKn_Version+0x2d6>
c010a245:	73 74                	jae    c010a2bb <PKn_Version+0x2e7>
c010a247:	61                   	popa   
c010a248:	72 74                	jb     c010a2be <PKn_Version+0x2ea>
c010a24a:	20 79 6f             	and    BYTE PTR [ecx+0x6f],bh
c010a24d:	75 72                	jne    c010a2c1 <PKn_Version+0x2ed>
c010a24f:	20 63 6f             	and    BYTE PTR [ebx+0x6f],ah
c010a252:	6d                   	ins    DWORD PTR es:[edi],dx
c010a253:	70 75                	jo     c010a2ca <PKn_Version+0x2f6>
c010a255:	74 65                	je     c010a2bc <PKn_Version+0x2e8>
c010a257:	72 2e                	jb     c010a287 <PKn_Version+0x2b3>
c010a259:	0a 49 66             	or     cl,BYTE PTR [ecx+0x66]
c010a25c:	20 74 68 69          	and    BYTE PTR [eax+ebp*2+0x69],dh
c010a260:	73 20                	jae    c010a282 <PKn_Version+0x2ae>
c010a262:	73 63                	jae    c010a2c7 <PKn_Version+0x2f3>
c010a264:	72 65                	jb     c010a2cb <PKn_Version+0x2f7>
c010a266:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c010a268:	20 61 70             	and    BYTE PTR [ecx+0x70],ah
c010a26b:	70 65                	jo     c010a2d2 <PKn_Version+0x2fe>
c010a26d:	72 73                	jb     c010a2e2 <PKn_Version+0x30e>
c010a26f:	20 61 67             	and    BYTE PTR [ecx+0x67],ah
c010a272:	61                   	popa   
c010a273:	69 6e 2c 66 6f 6c 6c 	imul   ebp,DWORD PTR [esi+0x2c],0x6c6c6f66
c010a27a:	6f                   	outs   dx,DWORD PTR ds:[esi]
c010a27b:	77 20                	ja     c010a29d <PKn_Version+0x2c9>
c010a27d:	74 68                	je     c010a2e7 <PKn_Version+0x313>
c010a27f:	65 73 65             	gs jae c010a2e7 <PKn_Version+0x313>
c010a282:	20 73 74             	and    BYTE PTR [ebx+0x74],dh
c010a285:	65 70 73             	gs jo  c010a2fb <PKn_Version+0x327>
c010a288:	3a 0a                	cmp    cl,BYTE PTR [edx]
c010a28a:	20 31                	and    BYTE PTR [ecx],dh
c010a28c:	2e 20 52 65          	and    BYTE PTR cs:[edx+0x65],dl
c010a290:	62 75 69             	bound  esi,QWORD PTR [ebp+0x69]
c010a293:	6c                   	ins    BYTE PTR es:[edi],dx
c010a294:	64 20 50 65          	and    BYTE PTR fs:[eax+0x65],dl
c010a298:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010a299:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c010a29c:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c010a2a1:	65 6c                	gs ins BYTE PTR es:[edi],dx
c010a2a3:	2e 20 0a             	and    BYTE PTR cs:[edx],cl
c010a2a6:	20 32                	and    BYTE PTR [edx],dh
c010a2a8:	2e 20 44 65 62       	and    BYTE PTR cs:[ebp+eiz*2+0x62],al
c010a2ad:	75 67                	jne    c010a316 <PKn_Version+0x342>
c010a2af:	20 50 65             	and    BYTE PTR [eax+0x65],dl
c010a2b2:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010a2b3:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c010a2b6:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c010a2bb:	65 6c                	gs ins BYTE PTR es:[edi],dx
c010a2bd:	20 6f 6e             	and    BYTE PTR [edi+0x6e],ch
c010a2c0:	20 76 69             	and    BYTE PTR [esi+0x69],dh
c010a2c3:	72 74                	jb     c010a339 <PKn_Version+0x365>
c010a2c5:	75 61                	jne    c010a328 <PKn_Version+0x354>
c010a2c7:	6c                   	ins    BYTE PTR es:[edi],dx
c010a2c8:	20 6d 61             	and    BYTE PTR [ebp+0x61],ch
c010a2cb:	63 68 69             	arpl   WORD PTR [eax+0x69],bp
c010a2ce:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010a2cf:	65 2e 0a 00          	gs or  al,BYTE PTR cs:[eax]
c010a2d3:	00 20                	add    BYTE PTR [eax],ah
c010a2d5:	25 73 0a 20 69       	and    eax,0x69200a73
c010a2da:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010a2db:	74 72                	je     c010a34f <PKn_Version+0x37b>
c010a2dd:	3a 20                	cmp    ah,BYTE PTR [eax]
c010a2df:	30 78 25             	xor    BYTE PTR [eax+0x25],bh
c010a2e2:	30 32                	xor    BYTE PTR [edx],dh
c010a2e4:	78 0a                	js     c010a2f0 <PKn_Version+0x31c>
c010a2e6:	20 43 53             	and    BYTE PTR [ebx+0x53],al
c010a2e9:	3a 45 49             	cmp    al,BYTE PTR [ebp+0x49]
c010a2ec:	50                   	push   eax
c010a2ed:	20 20                	and    BYTE PTR [eax],ah
c010a2ef:	30 78 25             	xor    BYTE PTR [eax+0x25],bh
c010a2f2:	78 3a                	js     c010a32e <PKn_Version+0x35a>
c010a2f4:	25 30 38 70 0a       	and    eax,0xa703830
c010a2f9:	20 00                	and    BYTE PTR [eax],al
c010a2fb:	28 20                	sub    BYTE PTR [eax],ah
c010a2fd:	46                   	inc    esi
c010a2fe:	61                   	popa   
c010a2ff:	75 6c                	jne    c010a36d <PKn_Version+0x399>
c010a301:	74 20                	je     c010a323 <PKn_Version+0x34f>
c010a303:	61                   	popa   
c010a304:	64 64 72 65          	fs fs jb c010a36d <PKn_Version+0x399>
c010a308:	73 73                	jae    c010a37d <PKn_Version+0x3a9>
c010a30a:	3a 20                	cmp    ah,BYTE PTR [eax]
c010a30c:	25 70 20 29 00       	and    eax,0x292070
c010a311:	23 44 45 20          	and    eax,DWORD PTR [ebp+eax*2+0x20]
c010a315:	44                   	inc    esp
c010a316:	69 76 69 64 65 20 45 	imul   esi,DWORD PTR [esi+0x69],0x45206564
c010a31d:	72 72                	jb     c010a391 <PKn_Version+0x3bd>
c010a31f:	6f                   	outs   dx,DWORD PTR ds:[esi]
c010a320:	72 00                	jb     c010a322 <PKn_Version+0x34e>
c010a322:	23 44 42 20          	and    eax,DWORD PTR [edx+eax*2+0x20]
c010a326:	44                   	inc    esp
c010a327:	65 62 75 67          	bound  esi,QWORD PTR gs:[ebp+0x67]
c010a32b:	20 45 78             	and    BYTE PTR [ebp+0x78],al
c010a32e:	63 65 70             	arpl   WORD PTR [ebp+0x70],sp
c010a331:	74 69                	je     c010a39c <PKn_Version+0x3c8>
c010a333:	6f                   	outs   dx,DWORD PTR ds:[esi]
c010a334:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010a335:	00 4e 4d             	add    BYTE PTR [esi+0x4d],cl
c010a338:	49                   	dec    ecx
c010a339:	20 49 6e             	and    BYTE PTR [ecx+0x6e],cl
c010a33c:	74 65                	je     c010a3a3 <PKn_Version+0x3cf>
c010a33e:	72 72                	jb     c010a3b2 <PKn_Version+0x3de>
c010a340:	75 70                	jne    c010a3b2 <PKn_Version+0x3de>
c010a342:	74 00                	je     c010a344 <PKn_Version+0x370>
c010a344:	23 42 50             	and    eax,DWORD PTR [edx+0x50]
c010a347:	20 42 72             	and    BYTE PTR [edx+0x72],al
c010a34a:	65 61                	gs popa 
c010a34c:	6b 70 6f 69          	imul   esi,DWORD PTR [eax+0x6f],0x69
c010a350:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010a351:	74 20                	je     c010a373 <PKn_Version+0x39f>
c010a353:	45                   	inc    ebp
c010a354:	78 63                	js     c010a3b9 <PKn_Version+0x3e5>
c010a356:	65 70 74             	gs jo  c010a3cd <PKn_Version+0x3f9>
c010a359:	69 6f 6e 00 23 4f 46 	imul   ebp,DWORD PTR [edi+0x6e],0x464f2300
c010a360:	20 4f 76             	and    BYTE PTR [edi+0x76],cl
c010a363:	65 72 66             	gs jb  c010a3cc <PKn_Version+0x3f8>
c010a366:	6c                   	ins    BYTE PTR es:[edi],dx
c010a367:	6f                   	outs   dx,DWORD PTR ds:[esi]
c010a368:	77 20                	ja     c010a38a <PKn_Version+0x3b6>
c010a36a:	45                   	inc    ebp
c010a36b:	78 63                	js     c010a3d0 <PKn_Version+0x3fc>
c010a36d:	65 70 74             	gs jo  c010a3e4 <PKn_Version+0x410>
c010a370:	69 6f 6e 00 23 42 52 	imul   ebp,DWORD PTR [edi+0x6e],0x52422300
c010a377:	20 42 4f             	and    BYTE PTR [edx+0x4f],al
c010a37a:	55                   	push   ebp
c010a37b:	4e                   	dec    esi
c010a37c:	44                   	inc    esp
c010a37d:	20 52 61             	and    BYTE PTR [edx+0x61],dl
c010a380:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010a381:	67 65 20 45 78       	and    BYTE PTR gs:[di+0x78],al
c010a386:	63 65 65             	arpl   WORD PTR [ebp+0x65],sp
c010a389:	64 65 64 20 45 78    	fs gs and BYTE PTR fs:[ebp+0x78],al
c010a38f:	63 65 70             	arpl   WORD PTR [ebp+0x70],sp
c010a392:	74 69                	je     c010a3fd <PKn_Version+0x429>
c010a394:	6f                   	outs   dx,DWORD PTR ds:[esi]
c010a395:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010a396:	00 23                	add    BYTE PTR [ebx],ah
c010a398:	55                   	push   ebp
c010a399:	44                   	inc    esp
c010a39a:	20 49 6e             	and    BYTE PTR [ecx+0x6e],cl
c010a39d:	76 61                	jbe    c010a400 <PKn_Version+0x42c>
c010a39f:	6c                   	ins    BYTE PTR es:[edi],dx
c010a3a0:	69 64 20 4f 70 63 6f 	imul   esp,DWORD PTR [eax+eiz*1+0x4f],0x646f6370
c010a3a7:	64 
c010a3a8:	65 20 45 78          	and    BYTE PTR gs:[ebp+0x78],al
c010a3ac:	63 65 70             	arpl   WORD PTR [ebp+0x70],sp
c010a3af:	74 69                	je     c010a41a <PKn_Version+0x446>
c010a3b1:	6f                   	outs   dx,DWORD PTR ds:[esi]
c010a3b2:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010a3b3:	00 23                	add    BYTE PTR [ebx],ah
c010a3b5:	4e                   	dec    esi
c010a3b6:	4d                   	dec    ebp
c010a3b7:	20 44 65 76          	and    BYTE PTR [ebp+eiz*2+0x76],al
c010a3bb:	69 63 65 20 4e 6f 74 	imul   esp,DWORD PTR [ebx+0x65],0x746f4e20
c010a3c2:	20 41 76             	and    BYTE PTR [ecx+0x76],al
c010a3c5:	61                   	popa   
c010a3c6:	69 6c 61 62 6c 65 20 	imul   ebp,DWORD PTR [ecx+eiz*2+0x62],0x4520656c
c010a3cd:	45 
c010a3ce:	78 63                	js     c010a433 <PKn_Version+0x45f>
c010a3d0:	65 70 74             	gs jo  c010a447 <PKn_Version+0x473>
c010a3d3:	69 6f 6e 00 23 44 46 	imul   ebp,DWORD PTR [edi+0x6e],0x46442300
c010a3da:	20 44 6f 75          	and    BYTE PTR [edi+ebp*2+0x75],al
c010a3de:	62 6c 65 20          	bound  ebp,QWORD PTR [ebp+eiz*2+0x20]
c010a3e2:	46                   	inc    esi
c010a3e3:	61                   	popa   
c010a3e4:	75 6c                	jne    c010a452 <PKn_Version+0x47e>
c010a3e6:	74 20                	je     c010a408 <PKn_Version+0x434>
c010a3e8:	45                   	inc    ebp
c010a3e9:	78 63                	js     c010a44e <PKn_Version+0x47a>
c010a3eb:	65 70 74             	gs jo  c010a462 <PKn_Version+0x48e>
c010a3ee:	69 6f 6e 00 43 6f 70 	imul   ebp,DWORD PTR [edi+0x6e],0x706f4300
c010a3f5:	72 6f                	jb     c010a466 <PKn_Version+0x492>
c010a3f7:	63 65 73             	arpl   WORD PTR [ebp+0x73],sp
c010a3fa:	73 6f                	jae    c010a46b <PKn_Version+0x497>
c010a3fc:	72 20                	jb     c010a41e <PKn_Version+0x44a>
c010a3fe:	53                   	push   ebx
c010a3ff:	65 67 6d             	gs ins DWORD PTR es:[di],dx
c010a402:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c010a404:	74 20                	je     c010a426 <PKn_Version+0x452>
c010a406:	4f                   	dec    edi
c010a407:	76 65                	jbe    c010a46e <PKn_Version+0x49a>
c010a409:	72 72                	jb     c010a47d <PKn_Version+0x4a9>
c010a40b:	75 6e                	jne    c010a47b <PKn_Version+0x4a7>
c010a40d:	00 23                	add    BYTE PTR [ebx],ah
c010a40f:	54                   	push   esp
c010a410:	53                   	push   ebx
c010a411:	20 49 6e             	and    BYTE PTR [ecx+0x6e],cl
c010a414:	76 61                	jbe    c010a477 <PKn_Version+0x4a3>
c010a416:	6c                   	ins    BYTE PTR es:[edi],dx
c010a417:	69 64 20 54 53 53 20 	imul   esp,DWORD PTR [eax+eiz*1+0x54],0x45205353
c010a41e:	45 
c010a41f:	78 63                	js     c010a484 <PKn_Version+0x4b0>
c010a421:	65 70 74             	gs jo  c010a498 <PKn_Version+0x4c4>
c010a424:	69 6f 6e 00 23 4e 50 	imul   ebp,DWORD PTR [edi+0x6e],0x504e2300
c010a42b:	20 53 65             	and    BYTE PTR [ebx+0x65],dl
c010a42e:	67 6d                	ins    DWORD PTR es:[di],dx
c010a430:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c010a432:	74 20                	je     c010a454 <PKn_Version+0x480>
c010a434:	4e                   	dec    esi
c010a435:	6f                   	outs   dx,DWORD PTR ds:[esi]
c010a436:	74 20                	je     c010a458 <PKn_Version+0x484>
c010a438:	50                   	push   eax
c010a439:	72 65                	jb     c010a4a0 <PKn_Version+0x4cc>
c010a43b:	73 65                	jae    c010a4a2 <PKn_Version+0x4ce>
c010a43d:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010a43e:	74 00                	je     c010a440 <PKn_Version+0x46c>
c010a440:	23 53 53             	and    edx,DWORD PTR [ebx+0x53]
c010a443:	20 53 74             	and    BYTE PTR [ebx+0x74],dl
c010a446:	61                   	popa   
c010a447:	63 6b 20             	arpl   WORD PTR [ebx+0x20],bp
c010a44a:	46                   	inc    esi
c010a44b:	61                   	popa   
c010a44c:	75 6c                	jne    c010a4ba <PKn_Version+0x4e6>
c010a44e:	74 20                	je     c010a470 <PKn_Version+0x49c>
c010a450:	45                   	inc    ebp
c010a451:	78 63                	js     c010a4b6 <PKn_Version+0x4e2>
c010a453:	65 70 74             	gs jo  c010a4ca <PKn_Version+0x4f6>
c010a456:	69 6f 6e 00 00 00 23 	imul   ebp,DWORD PTR [edi+0x6e],0x23000000
c010a45d:	47                   	inc    edi
c010a45e:	50                   	push   eax
c010a45f:	20 47 65             	and    BYTE PTR [edi+0x65],al
c010a462:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010a463:	65 72 61             	gs jb  c010a4c7 <PKn_Version+0x4f3>
c010a466:	6c                   	ins    BYTE PTR es:[edi],dx
c010a467:	20 50 72             	and    BYTE PTR [eax+0x72],dl
c010a46a:	6f                   	outs   dx,DWORD PTR ds:[esi]
c010a46b:	74 65                	je     c010a4d2 <PKn_Version+0x4fe>
c010a46d:	63 74 69 6f          	arpl   WORD PTR [ecx+ebp*2+0x6f],si
c010a471:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010a472:	20 45 78             	and    BYTE PTR [ebp+0x78],al
c010a475:	63 65 70             	arpl   WORD PTR [ebp+0x70],sp
c010a478:	74 69                	je     c010a4e3 <PKn_Version+0x50f>
c010a47a:	6f                   	outs   dx,DWORD PTR ds:[esi]
c010a47b:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010a47c:	00 23                	add    BYTE PTR [ebx],ah
c010a47e:	50                   	push   eax
c010a47f:	46                   	inc    esi
c010a480:	20 50 61             	and    BYTE PTR [eax+0x61],dl
c010a483:	67 65 2d 46 61 75 6c 	addr16 gs sub eax,0x6c756146
c010a48a:	74 20                	je     c010a4ac <PKn_Version+0x4d8>
c010a48c:	45                   	inc    ebp
c010a48d:	78 63                	js     c010a4f2 <PKn_Version+0x51e>
c010a48f:	65 70 74             	gs jo  c010a506 <PKn_Version+0x532>
c010a492:	69 6f 6e 00 52 65 73 	imul   ebp,DWORD PTR [edi+0x6e],0x73655200
c010a499:	65 72 76             	gs jb  c010a512 <PKn_Version+0x53e>
c010a49c:	65 64 00 00          	gs add BYTE PTR fs:[eax],al
c010a4a0:	23 4d 46             	and    ecx,DWORD PTR [ebp+0x46]
c010a4a3:	20 78 38             	and    BYTE PTR [eax+0x38],bh
c010a4a6:	37                   	aaa    
c010a4a7:	20 46 50             	and    BYTE PTR [esi+0x50],al
c010a4aa:	55                   	push   ebp
c010a4ab:	20 46 6c             	and    BYTE PTR [esi+0x6c],al
c010a4ae:	6f                   	outs   dx,DWORD PTR ds:[esi]
c010a4af:	61                   	popa   
c010a4b0:	74 69                	je     c010a51b <PKn_Version+0x547>
c010a4b2:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010a4b3:	67 2d 50 6f 69 6e    	addr16 sub eax,0x6e696f50
c010a4b9:	74 20                	je     c010a4db <PKn_Version+0x507>
c010a4bb:	45                   	inc    ebp
c010a4bc:	72 72                	jb     c010a530 <PKn_Version+0x55c>
c010a4be:	6f                   	outs   dx,DWORD PTR ds:[esi]
c010a4bf:	72 00                	jb     c010a4c1 <PKn_Version+0x4ed>
c010a4c1:	23 41 43             	and    eax,DWORD PTR [ecx+0x43]
c010a4c4:	20 41 6c             	and    BYTE PTR [ecx+0x6c],al
c010a4c7:	69 67 6e 6d 65 6e 74 	imul   esp,DWORD PTR [edi+0x6e],0x746e656d
c010a4ce:	20 43 68             	and    BYTE PTR [ebx+0x68],al
c010a4d1:	65 63 6b 20          	arpl   WORD PTR gs:[ebx+0x20],bp
c010a4d5:	45                   	inc    ebp
c010a4d6:	78 63                	js     c010a53b <PKn_Version+0x567>
c010a4d8:	65 70 74             	gs jo  c010a54f <PKn_Version+0x57b>
c010a4db:	69 6f 6e 00 23 4d 43 	imul   ebp,DWORD PTR [edi+0x6e],0x434d2300
c010a4e2:	20 4d 61             	and    BYTE PTR [ebp+0x61],cl
c010a4e5:	63 68 69             	arpl   WORD PTR [eax+0x69],bp
c010a4e8:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010a4e9:	65 2d 43 68 65 63    	gs sub eax,0x63656843
c010a4ef:	6b 20 45             	imul   esp,DWORD PTR [eax],0x45
c010a4f2:	78 63                	js     c010a557 <PKn_Version+0x583>
c010a4f4:	65 70 74             	gs jo  c010a56b <PKn_Version+0x597>
c010a4f7:	69 6f 6e 00 00 23 58 	imul   ebp,DWORD PTR [edi+0x6e],0x58230000
c010a4fe:	46                   	inc    esi
c010a4ff:	20 53 49             	and    BYTE PTR [ebx+0x49],dl
c010a502:	4d                   	dec    ebp
c010a503:	44                   	inc    esp
c010a504:	20 46 6c             	and    BYTE PTR [esi+0x6c],al
c010a507:	6f                   	outs   dx,DWORD PTR ds:[esi]
c010a508:	61                   	popa   
c010a509:	74 69                	je     c010a574 <PKn_Version+0x5a0>
c010a50b:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010a50c:	67 2d 50 6f 69 6e    	addr16 sub eax,0x6e696f50
c010a512:	74 20                	je     c010a534 <PKn_Version+0x560>
c010a514:	45                   	inc    ebp
c010a515:	78 63                	js     c010a57a <PKn_Version+0x5a6>
c010a517:	65 70 74             	gs jo  c010a58e <PKn_Version+0x5ba>
c010a51a:	69 6f 6e 00 00 00 50 	imul   ebp,DWORD PTR [edi+0x6e],0x50000000
c010a521:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c010a523:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c010a526:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c010a52b:	65 6c                	gs ins BYTE PTR es:[edi],dx
c010a52d:	20 28                	and    BYTE PTR [eax],ch
c010a52f:	50                   	push   eax
c010a530:	4b                   	dec    ebx
c010a531:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010a532:	29 20                	sub    DWORD PTR [eax],esp
c010a534:	30 2e                	xor    BYTE PTR [esi],ch
c010a536:	30 2e                	xor    BYTE PTR [esi],ch
c010a538:	31 20                	xor    DWORD PTR [eax],esp
c010a53a:	41                   	inc    ecx
c010a53b:	75 67                	jne    c010a5a4 <PKn_Version+0x5d0>
c010a53d:	2e 00 4d 65          	add    BYTE PTR cs:[ebp+0x65],cl
c010a541:	6d                   	ins    DWORD PTR es:[edi],dx
c010a542:	6f                   	outs   dx,DWORD PTR ds:[esi]
c010a543:	72 79                	jb     c010a5be <PKn_Version+0x5ea>
c010a545:	20 41 6c             	and    BYTE PTR [ecx+0x6c],al
c010a548:	6c                   	ins    BYTE PTR es:[edi],dx
c010a549:	6f                   	outs   dx,DWORD PTR ds:[esi]
c010a54a:	63 20                	arpl   WORD PTR [eax],sp
c010a54c:	00 61 6c             	add    BYTE PTR [ecx+0x6c],ah
c010a54f:	6c                   	ins    BYTE PTR es:[edi],dx
c010a550:	6f                   	outs   dx,DWORD PTR ds:[esi]
c010a551:	63 20                	arpl   WORD PTR [eax],sp
c010a553:	67 65 6e             	outs   dx,BYTE PTR gs:[si]
c010a556:	65 72 61             	gs jb  c010a5ba <PKn_Version+0x5e6>
c010a559:	6c                   	ins    BYTE PTR es:[edi],dx
c010a55a:	20 6d 65             	and    BYTE PTR [ebp+0x65],ch
c010a55d:	6d                   	ins    DWORD PTR es:[edi],dx
c010a55e:	6f                   	outs   dx,DWORD PTR ds:[esi]
c010a55f:	72 79                	jb     c010a5da <PKn_Version+0x606>
c010a561:	00 61 72             	add    BYTE PTR [ecx+0x72],ah
c010a564:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c010a566:	61                   	popa   
c010a567:	20 69 73             	and    BYTE PTR [ecx+0x73],ch
c010a56a:	20 4e 55             	and    BYTE PTR [esi+0x55],cl
c010a56d:	4c                   	dec    esp
c010a56e:	4c                   	dec    esp
c010a56f:	00 21                	add    BYTE PTR [ecx],ah
c010a571:	28 6c 69 73          	sub    BYTE PTR [ecx+ebp*2+0x73],ch
c010a575:	74 5f                	je     c010a5d6 <PKn_Version+0x602>
c010a577:	66 69 6e 64 28 26    	imul   bp,WORD PTR [esi+0x64],0x2628
c010a57d:	28 61 2d             	sub    BYTE PTR [ecx+0x2d],ah
c010a580:	3e 64 65 73 63       	ds fs gs jae c010a5e8 <PKn_Version+0x614>
c010a585:	2d 3e 66 72 65       	sub    eax,0x6572663e
c010a58a:	65 5f                	gs pop edi
c010a58c:	6c                   	ins    BYTE PTR es:[edi],dx
c010a58d:	69 73 74 29 2c 26 28 	imul   esi,DWORD PTR [ebx+0x74],0x28262c29
c010a594:	62 2d 3e 66 72 65    	bound  ebp,QWORD PTR ds:0x6572663e
c010a59a:	65 29 29             	sub    DWORD PTR gs:[ecx],ebp
c010a59d:	29 00                	sub    DWORD PTR [eax],eax
c010a59f:	6d                   	ins    DWORD PTR es:[edi],dx
c010a5a0:	65 6d                	gs ins DWORD PTR es:[edi],dx
c010a5a2:	6f                   	outs   dx,DWORD PTR ds:[esi]
c010a5a3:	72 79                	jb     c010a61e <PKn_Version+0x64a>
c010a5a5:	2f                   	das    
c010a5a6:	61                   	popa   
c010a5a7:	72 65                	jb     c010a60e <PKn_Version+0x63a>
c010a5a9:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010a5aa:	61                   	popa   
c010a5ab:	2e 63 00             	arpl   WORD PTR cs:[eax],ax
c010a5ae:	61                   	popa   
c010a5af:	6c                   	ins    BYTE PTR es:[edi],dx
c010a5b0:	6c                   	ins    BYTE PTR es:[edi],dx
c010a5b1:	6f                   	outs   dx,DWORD PTR ds:[esi]
c010a5b2:	63 20                	arpl   WORD PTR [eax],sp
c010a5b4:	6c                   	ins    BYTE PTR es:[edi],dx
c010a5b5:	61                   	popa   
c010a5b6:	72 67                	jb     c010a61f <PKn_Version+0x64b>
c010a5b8:	65 20 6d 65          	and    BYTE PTR gs:[ebp+0x65],ch
c010a5bc:	6d                   	ins    DWORD PTR es:[edi],dx
c010a5bd:	6f                   	outs   dx,DWORD PTR ds:[esi]
c010a5be:	72 79                	jb     c010a639 <__func__.1363+0x5>
c010a5c0:	00 00                	add    BYTE PTR [eax],al
c010a5c2:	00 00                	add    BYTE PTR [eax],al
c010a5c4:	61                   	popa   
c010a5c5:	2d 3e 64 65 73       	sub    eax,0x7365643e
c010a5ca:	63 20                	arpl   WORD PTR [eax],sp
c010a5cc:	3d 3d 20 4e 55       	cmp    eax,0x554e203d
c010a5d1:	4c                   	dec    esp
c010a5d2:	4c                   	dec    esp
c010a5d3:	20 26                	and    BYTE PTR [esi],ah
c010a5d5:	26 20 61 2d          	and    BYTE PTR es:[ecx+0x2d],ah
c010a5d9:	3e 63 6e 74          	arpl   WORD PTR ds:[esi+0x74],bp
c010a5dd:	20 3d 3d 20 70 67    	and    BYTE PTR ds:0x6770203d,bh
c010a5e3:	5f                   	pop    edi
c010a5e4:	63 6e 74             	arpl   WORD PTR [esi+0x74],bp
c010a5e7:	20 26                	and    BYTE PTR [esi],ah
c010a5e9:	26 20 61 2d          	and    BYTE PTR es:[ecx+0x2d],ah
c010a5ed:	3e 6c                	ds ins BYTE PTR es:[edi],dx
c010a5ef:	61                   	popa   
c010a5f0:	72 67                	jb     c010a659 <__func__.1314+0xa>
c010a5f2:	65 20 3d 3d 20 74 72 	and    BYTE PTR gs:0x7274203d,bh
c010a5f9:	75 65                	jne    c010a660 <__func__.1314+0x11>
c010a5fb:	00 4d 65             	add    BYTE PTR [ebp+0x65],cl
c010a5fe:	6d                   	ins    DWORD PTR es:[edi],dx
c010a5ff:	6f                   	outs   dx,DWORD PTR ds:[esi]
c010a600:	72 79                	jb     c010a67b <__func__.1314+0x2c>
c010a602:	20 46 72             	and    BYTE PTR [esi+0x72],al
c010a605:	65 65 00 6c 69 73    	gs add BYTE PTR gs:[ecx+ebp*2+0x73],ch
c010a60b:	74 5f                	je     c010a66c <__func__.1314+0x1d>
c010a60d:	66 69 6e 64 28 26    	imul   bp,WORD PTR [esi+0x64],0x2628
c010a613:	28 61 2d             	sub    BYTE PTR [ecx+0x2d],ah
c010a616:	3e 64 65 73 63       	ds fs gs jae c010a67e <__func__.1314+0x2f>
c010a61b:	2d 3e 66 72 65       	sub    eax,0x6572663e
c010a620:	65 5f                	gs pop edi
c010a622:	6c                   	ins    BYTE PTR es:[edi],dx
c010a623:	69 73 74 29 2c 26 28 	imul   esi,DWORD PTR [ebx+0x74],0x28262c29
c010a62a:	62 2d 3e 66 72 65    	bound  ebp,QWORD PTR ds:0x6572663e
c010a630:	65 29 29             	sub    DWORD PTR gs:[ecx],ebp
	...

c010a634 <__func__.1363>:
c010a634:	6d                   	ins    DWORD PTR es:[edi],dx
c010a635:	6d                   	ins    DWORD PTR es:[edi],dx
c010a636:	5f                   	pop    edi
c010a637:	66 72 65             	data16 jb c010a69f <__func__.1314+0x50>
c010a63a:	65 00 6d 6d          	add    BYTE PTR gs:[ebp+0x6d],ch

c010a63c <__func__.1348>:
c010a63c:	6d                   	ins    DWORD PTR es:[edi],dx
c010a63d:	6d                   	ins    DWORD PTR es:[edi],dx
c010a63e:	5f                   	pop    edi
c010a63f:	6d                   	ins    DWORD PTR es:[edi],dx
c010a640:	61                   	popa   
c010a641:	6c                   	ins    BYTE PTR es:[edi],dx
c010a642:	6c                   	ins    BYTE PTR es:[edi],dx
c010a643:	6f                   	outs   dx,DWORD PTR ds:[esi]
c010a644:	63 00                	arpl   WORD PTR [eax],ax

c010a646 <__func__.1328>:
c010a646:	73 79                	jae    c010a6c1 <__func__.1314+0x72>
c010a648:	73 5f                	jae    c010a6a9 <__func__.1314+0x5a>
c010a64a:	66 72 65             	data16 jb c010a6b2 <__func__.1314+0x63>
c010a64d:	65 00 73 79          	add    BYTE PTR gs:[ebx+0x79],dh

c010a64f <__func__.1314>:
c010a64f:	73 79                	jae    c010a6ca <__func__.1314+0x7b>
c010a651:	73 5f                	jae    c010a6b2 <__func__.1314+0x63>
c010a653:	6d                   	ins    DWORD PTR es:[edi],dx
c010a654:	61                   	popa   
c010a655:	6c                   	ins    BYTE PTR es:[edi],dx
c010a656:	6c                   	ins    BYTE PTR es:[edi],dx
c010a657:	6f                   	outs   dx,DWORD PTR ds:[esi]
c010a658:	63 00                	arpl   WORD PTR [eax],ax
c010a65a:	00 00                	add    BYTE PTR [eax],al
c010a65c:	50                   	push   eax
c010a65d:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c010a65f:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c010a662:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c010a667:	65 6c                	gs ins BYTE PTR es:[edi],dx
c010a669:	20 28                	and    BYTE PTR [eax],ch
c010a66b:	50                   	push   eax
c010a66c:	4b                   	dec    ebx
c010a66d:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010a66e:	29 20                	sub    DWORD PTR [eax],esp
c010a670:	30 2e                	xor    BYTE PTR [esi],ch
c010a672:	30 2e                	xor    BYTE PTR [esi],ch
c010a674:	31 20                	xor    DWORD PTR [eax],esp
c010a676:	41                   	inc    ecx
c010a677:	75 67                	jne    c010a6e0 <__func__.1314+0x91>
c010a679:	2e 00 4e 6f          	add    BYTE PTR cs:[esi+0x6f],cl
c010a67d:	20 4d 65             	and    BYTE PTR [ebp+0x65],cl
c010a680:	6d                   	ins    DWORD PTR es:[edi],dx
c010a681:	6f                   	outs   dx,DWORD PTR ds:[esi]
c010a682:	72 79                	jb     c010a6fd <__func__.1314+0xae>
c010a684:	20 61 76             	and    BYTE PTR [ecx+0x76],ah
c010a687:	61                   	popa   
c010a688:	69 6c 61 62 6c 65 21 	imul   ebp,DWORD PTR [ecx+eiz*2+0x62],0x21656c
c010a68f:	00 
c010a690:	6d                   	ins    DWORD PTR es:[edi],dx
c010a691:	65 6d                	gs ins DWORD PTR es:[edi],dx
c010a693:	6f                   	outs   dx,DWORD PTR ds:[esi]
c010a694:	72 79                	jb     c010a70f <__func__.1314+0xc0>
c010a696:	2f                   	das    
c010a697:	6d                   	ins    DWORD PTR es:[edi],dx
c010a698:	65 6d                	gs ins DWORD PTR es:[edi],dx
c010a69a:	6f                   	outs   dx,DWORD PTR ds:[esi]
c010a69b:	72 79                	jb     c010a716 <__func__.1314+0xc7>
c010a69d:	2e 63 00             	arpl   WORD PTR cs:[eax],ax
c010a6a0:	70 61                	jo     c010a703 <__func__.1314+0xb4>
c010a6a2:	67 65 73 20          	addr16 gs jae c010a6c6 <__func__.1314+0x77>
c010a6a6:	21 3d 20 30 00 66    	and    DWORD PTR ds:0x66003020,edi
c010a6ac:	72 65                	jb     c010a713 <__func__.1314+0xc4>
c010a6ae:	65 20 21             	and    BYTE PTR gs:[ecx],ah
c010a6b1:	3d 20 4e 55 4c       	cmp    eax,0x4c554e20
c010a6b6:	4c                   	dec    esp
c010a6b7:	00 21                	add    BYTE PTR [ecx],ah
c010a6b9:	28 2a                	sub    BYTE PTR [edx],ch
c010a6bb:	70 74                	jo     c010a731 <__func__.1314+0xe2>
c010a6bd:	65 20 26             	and    BYTE PTR gs:[esi],ah
c010a6c0:	20 30                	and    BYTE PTR [eax],dh
c010a6c2:	78 30                	js     c010a6f4 <__func__.1314+0xa5>
c010a6c4:	30 30                	xor    BYTE PTR [eax],dh
c010a6c6:	30 30                	xor    BYTE PTR [eax],dh
c010a6c8:	30 30                	xor    BYTE PTR [eax],dh
c010a6ca:	31 29                	xor    DWORD PTR [ecx],ebp
c010a6cc:	00 70 74             	add    BYTE PTR [eax+0x74],dh
c010a6cf:	65 20 72 65          	and    BYTE PTR gs:[edx+0x65],dh
c010a6d3:	70 65                	jo     c010a73a <__func__.1314+0xeb>
c010a6d5:	61                   	popa   
c010a6d6:	74 00                	je     c010a6d8 <__func__.1314+0x89>
c010a6d8:	67 65 74 5f          	addr16 gs je c010a73b <__func__.1314+0xec>
c010a6dc:	61                   	popa   
c010a6dd:	5f                   	pop    edi
c010a6de:	70 61                	jo     c010a741 <__func__.1314+0xf2>
c010a6e0:	67 65 3a 20          	cmp    ah,BYTE PTR gs:[bx+si]
c010a6e4:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010a6e5:	6f                   	outs   dx,DWORD PTR ds:[esi]
c010a6e6:	74 20                	je     c010a708 <__func__.1314+0xb9>
c010a6e8:	61                   	popa   
c010a6e9:	6c                   	ins    BYTE PTR es:[edi],dx
c010a6ea:	6c                   	ins    BYTE PTR es:[edi],dx
c010a6eb:	6f                   	outs   dx,DWORD PTR ds:[esi]
c010a6ec:	77 20                	ja     c010a70e <__func__.1314+0xbf>
c010a6ee:	6b 65 72 6e          	imul   esp,DWORD PTR [ebp+0x72],0x6e
c010a6f2:	65 6c                	gs ins BYTE PTR es:[edi],dx
c010a6f4:	20 61 6c             	and    BYTE PTR [ecx+0x6c],ah
c010a6f7:	6c                   	ins    BYTE PTR es:[edi],dx
c010a6f8:	6f                   	outs   dx,DWORD PTR ds:[esi]
c010a6f9:	63 20                	arpl   WORD PTR [eax],sp
c010a6fb:	75 73                	jne    c010a770 <__func__.1314+0x121>
c010a6fd:	65 72 73             	gs jb  c010a773 <__func__.1314+0x124>
c010a700:	70 61                	jo     c010a763 <__func__.1314+0x114>
c010a702:	63 65 20             	arpl   WORD PTR [ebp+0x20],sp
c010a705:	6f                   	outs   dx,DWORD PTR ds:[esi]
c010a706:	72 20                	jb     c010a728 <__func__.1314+0xd9>
c010a708:	75 73                	jne    c010a77d <__func__.1314+0x12e>
c010a70a:	65 72 20             	gs jb  c010a72d <__func__.1314+0xde>
c010a70d:	61                   	popa   
c010a70e:	6c                   	ins    BYTE PTR es:[edi],dx
c010a70f:	6c                   	ins    BYTE PTR es:[edi],dx
c010a710:	6f                   	outs   dx,DWORD PTR ds:[esi]
c010a711:	63 20                	arpl   WORD PTR [eax],sp
c010a713:	6b 65 72 6e          	imul   esp,DWORD PTR [ebp+0x72],0x6e
c010a717:	65 6c                	gs ins BYTE PTR es:[edi],dx
c010a719:	73 70                	jae    c010a78b <__func__.1314+0x13c>
c010a71b:	61                   	popa   
c010a71c:	63 65 20             	arpl   WORD PTR [ebp+0x20],sp
c010a71f:	62 79 20             	bound  edi,QWORD PTR [ecx+0x20]
c010a722:	67 65 74 5f          	addr16 gs je c010a785 <__func__.1314+0x136>
c010a726:	61                   	popa   
c010a727:	5f                   	pop    edi
c010a728:	70 61                	jo     c010a78b <__func__.1314+0x13c>
c010a72a:	67 65 28 29          	sub    BYTE PTR gs:[bx+di],ch
c010a72e:	00 70 61             	add    BYTE PTR [eax+0x61],dh
c010a731:	67 65 5f             	addr16 gs pop edi
c010a734:	70 61                	jo     c010a797 <__func__.1314+0x148>
c010a736:	64 64 72 20          	fs fs jb c010a75a <__func__.1314+0x10b>
c010a73a:	21 3d 20 4e 55 4c    	and    DWORD PTR ds:0x4c554e20,edi
c010a740:	4c                   	dec    esp
c010a741:	00 50 61             	add    BYTE PTR [eax+0x61],dl
c010a744:	67 65 20 46 72       	and    BYTE PTR gs:[bp+0x72],al
c010a749:	65 65 20 45 72       	gs and BYTE PTR gs:[ebp+0x72],al
c010a74e:	72 6f                	jb     c010a7bf <__func__.1314+0x170>
c010a750:	72 20                	jb     c010a772 <__func__.1314+0x123>
c010a752:	21 00                	and    DWORD PTR [eax],eax
c010a754:	66 72 65             	data16 jb c010a7bc <__func__.1314+0x16d>
c010a757:	65 5f                	gs pop edi
c010a759:	70 67                	jo     c010a7c2 <__func__.1314+0x173>
c010a75b:	5f                   	pop    edi
c010a75c:	63 6e 74             	arpl   WORD PTR [esi+0x74],bp
c010a75f:	20 3e                	and    BYTE PTR [esi],bh
c010a761:	3d 20 31 20 26       	cmp    eax,0x26203120
c010a766:	26 20 28             	and    BYTE PTR es:[eax],ch
c010a769:	75 69                	jne    c010a7d4 <__func__.1314+0x185>
c010a76b:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010a76c:	74 33                	je     c010a7a1 <__func__.1314+0x152>
c010a76e:	32 5f 74             	xor    bl,BYTE PTR [edi+0x74]
c010a771:	29 70 76             	sub    DWORD PTR [eax+0x76],esi
c010a774:	61                   	popa   
c010a775:	64 64 72 20          	fs fs jb c010a799 <__func__.1314+0x14a>
c010a779:	25 20 50 47 5f       	and    eax,0x5f475020
c010a77e:	53                   	push   ebx
c010a77f:	49                   	dec    ecx
c010a780:	5a                   	pop    edx
c010a781:	45                   	inc    ebp
c010a782:	20 3d 3d 20 30 00    	and    BYTE PTR ds:0x30203d,bh
c010a788:	28 28                	sub    BYTE PTR [eax],ch
c010a78a:	70 74                	jo     c010a800 <__func__.1327+0x5>
c010a78c:	72 5f                	jb     c010a7ed <__func__.1369+0x7>
c010a78e:	74 29                	je     c010a7b9 <__func__.1314+0x16a>
c010a790:	70 67                	jo     c010a7f9 <__func__.1347+0x9>
c010a792:	5f                   	pop    edi
c010a793:	70 61                	jo     c010a7f6 <__func__.1347+0x6>
c010a795:	64 64 72 20          	fs fs jb c010a7b9 <__func__.1314+0x16a>
c010a799:	25 20 50 47 5f       	and    eax,0x5f475020
c010a79e:	53                   	push   ebx
c010a79f:	49                   	dec    ecx
c010a7a0:	5a                   	pop    edx
c010a7a1:	45                   	inc    ebp
c010a7a2:	29 20                	sub    DWORD PTR [eax],esp
c010a7a4:	3d 3d 20 30 20       	cmp    eax,0x2030203d
c010a7a9:	26 26 20 28          	es and BYTE PTR es:[eax],ch
c010a7ad:	28 70 74             	sub    BYTE PTR [eax+0x74],dh
c010a7b0:	72 5f                	jb     c010a811 <__func__.1298+0xb>
c010a7b2:	74 29                	je     c010a7dd <__func__.1314+0x18e>
c010a7b4:	70 67                	jo     c010a81d <__func__.1259+0x8>
c010a7b6:	5f                   	pop    edi
c010a7b7:	70 61                	jo     c010a81a <__func__.1259+0x5>
c010a7b9:	64 64 72 29          	fs fs jb c010a7e6 <__func__.1369>
c010a7bd:	20 3e                	and    BYTE PTR [esi],bh
c010a7bf:	3d 20 4b 45 52       	cmp    eax,0x52454b20
c010a7c4:	4e                   	dec    esi
c010a7c5:	45                   	inc    ebp
c010a7c6:	4c                   	dec    esp
c010a7c7:	5f                   	pop    edi
c010a7c8:	50                   	push   eax
c010a7c9:	41                   	inc    ecx
c010a7ca:	47                   	inc    edi
c010a7cb:	45                   	inc    ebp
c010a7cc:	5f                   	pop    edi
c010a7cd:	44                   	inc    esp
c010a7ce:	49                   	dec    ecx
c010a7cf:	52                   	push   edx
c010a7d0:	5f                   	pop    edi
c010a7d1:	54                   	push   esp
c010a7d2:	41                   	inc    ecx
c010a7d3:	42                   	inc    edx
c010a7d4:	4c                   	dec    esp
c010a7d5:	45                   	inc    ebp
c010a7d6:	5f                   	pop    edi
c010a7d7:	50                   	push   eax
c010a7d8:	4f                   	dec    edi
c010a7d9:	53                   	push   ebx
c010a7da:	20 2b                	and    BYTE PTR [ebx],ch
c010a7dc:	20 30                	and    BYTE PTR [eax],dh
c010a7de:	78 32                	js     c010a812 <__func__.1298+0xc>
c010a7e0:	30 30                	xor    BYTE PTR [eax],dh
c010a7e2:	30 30                	xor    BYTE PTR [eax],dh
c010a7e4:	30 00                	xor    BYTE PTR [eax],al

c010a7e6 <__func__.1369>:
c010a7e6:	70 61                	jo     c010a849 <__func__.1249+0x28>
c010a7e8:	67 65 5f             	addr16 gs pop edi
c010a7eb:	66 72 65             	data16 jb c010a853 <__func__.1249+0x32>
c010a7ee:	65 00 70 67          	add    BYTE PTR gs:[eax+0x67],dh

c010a7f0 <__func__.1347>:
c010a7f0:	70 67                	jo     c010a859 <__func__.1249+0x38>
c010a7f2:	6d                   	ins    DWORD PTR es:[edi],dx
c010a7f3:	61                   	popa   
c010a7f4:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010a7f5:	5f                   	pop    edi
c010a7f6:	66 72 65             	data16 jb c010a85e <__func__.1249+0x3d>
c010a7f9:	65 00 67 65          	add    BYTE PTR gs:[edi+0x65],ah

c010a7fb <__func__.1327>:
c010a7fb:	67 65 74 5f          	addr16 gs je c010a85e <__func__.1249+0x3d>
c010a7ff:	61                   	popa   
c010a800:	5f                   	pop    edi
c010a801:	70 61                	jo     c010a864 <__func__.1249+0x43>
c010a803:	67 65 00 70 61       	add    BYTE PTR gs:[bx+si+0x61],dh

c010a806 <__func__.1298>:
c010a806:	70 61                	jo     c010a869 <__func__.1249+0x48>
c010a808:	67 65 5f             	addr16 gs pop edi
c010a80b:	74 61                	je     c010a86e <__func__.1249+0x4d>
c010a80d:	62 6c 65 5f          	bound  ebp,QWORD PTR [ebp+eiz*2+0x5f]
c010a811:	61                   	popa   
c010a812:	64 64 00 69 6e       	fs add BYTE PTR fs:[ecx+0x6e],ch

c010a815 <__func__.1259>:
c010a815:	69 6e 69 74 5f 6d 65 	imul   ebp,DWORD PTR [esi+0x69],0x656d5f74
c010a81c:	6d                   	ins    DWORD PTR es:[edi],dx
c010a81d:	6d                   	ins    DWORD PTR es:[edi],dx
c010a81e:	61                   	popa   
c010a81f:	6e                   	outs   dx,BYTE PTR ds:[esi]
	...

c010a821 <__func__.1249>:
c010a821:	69 6e 69 74 5f 6d 65 	imul   ebp,DWORD PTR [esi+0x69],0x656d5f74
c010a828:	6d                   	ins    DWORD PTR es:[edi],dx
c010a829:	6f                   	outs   dx,DWORD PTR ds:[esi]
c010a82a:	72 79                	jb     c010a8a5 <__func__.1249+0x84>
c010a82c:	00 00                	add    BYTE PTR [eax],al
c010a82e:	00 00                	add    BYTE PTR [eax],al
c010a830:	50                   	push   eax
c010a831:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c010a833:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c010a836:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c010a83b:	65 6c                	gs ins BYTE PTR es:[edi],dx
c010a83d:	20 28                	and    BYTE PTR [eax],ch
c010a83f:	50                   	push   eax
c010a840:	4b                   	dec    ebx
c010a841:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010a842:	29 20                	sub    DWORD PTR [eax],esp
c010a844:	30 2e                	xor    BYTE PTR [esi],ch
c010a846:	30 2e                	xor    BYTE PTR [esi],ch
c010a848:	31 20                	xor    DWORD PTR [eax],esp
c010a84a:	41                   	inc    ecx
c010a84b:	75 67                	jne    c010a8b4 <__func__.1249+0x93>
c010a84d:	2e 00 70 73          	add    BYTE PTR cs:[eax+0x73],dh
c010a851:	65 6d                	gs ins DWORD PTR es:[edi],dx
c010a853:	61                   	popa   
c010a854:	2d 3e 76 61 6c       	sub    eax,0x6c61763e
c010a859:	75 65                	jne    c010a8c0 <__func__.1249+0x9f>
c010a85b:	20 3d 3d 20 76 61    	and    BYTE PTR ds:0x6176203d,bh
c010a861:	6c                   	ins    BYTE PTR es:[edi],dx
c010a862:	75 65                	jne    c010a8c9 <__func__.1249+0xa8>
c010a864:	00 74 68 72          	add    BYTE PTR [eax+ebp*2+0x72],dh
c010a868:	65 61                	gs popa 
c010a86a:	64 2f                	fs das 
c010a86c:	73 79                	jae    c010a8e7 <__func__.1249+0xc6>
c010a86e:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010a86f:	63 2e                	arpl   WORD PTR [esi],bp
c010a871:	63 00                	arpl   WORD PTR [eax],ax
c010a873:	00 21                	add    BYTE PTR [ecx],ah
c010a875:	28 6c 69 73          	sub    BYTE PTR [ecx+ebp*2+0x73],ch
c010a879:	74 5f                	je     c010a8da <__func__.1249+0xb9>
c010a87b:	66 69 6e 64 28 26    	imul   bp,WORD PTR [esi+0x64],0x2628
c010a881:	28 70 73             	sub    BYTE PTR [eax+0x73],dh
c010a884:	65 6d                	gs ins DWORD PTR es:[edi],dx
c010a886:	61                   	popa   
c010a887:	2d 3e 77 61 69       	sub    eax,0x6961773e
c010a88c:	74 65                	je     c010a8f3 <__func__.1249+0xd2>
c010a88e:	72 73                	jb     c010a903 <__func__.1249+0xe2>
c010a890:	29 2c 26             	sub    DWORD PTR [esi+eiz*1],ebp
c010a893:	28 72 75             	sub    BYTE PTR [edx+0x75],dh
c010a896:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010a897:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010a898:	69 6e 67 5f 74 68 72 	imul   ebp,DWORD PTR [esi+0x67],0x7268745f
c010a89f:	65 61                	gs popa 
c010a8a1:	64 28 29             	sub    BYTE PTR fs:[ecx],ch
c010a8a4:	2d 3e 67 65 6e       	sub    eax,0x6e65673e
c010a8a9:	65 72 61             	gs jb  c010a90d <__func__.1249+0xec>
c010a8ac:	6c                   	ins    BYTE PTR es:[edi],dx
c010a8ad:	5f                   	pop    edi
c010a8ae:	74 61                	je     c010a911 <__func__.1249+0xf0>
c010a8b0:	67 29 29             	sub    DWORD PTR [bx+di],ebp
c010a8b3:	29 00                	sub    DWORD PTR [eax],eax
c010a8b5:	00 00                	add    BYTE PTR [eax],al
c010a8b7:	00 73 65             	add    BYTE PTR [ebx+0x65],dh
c010a8ba:	6d                   	ins    DWORD PTR es:[edi],dx
c010a8bb:	61                   	popa   
c010a8bc:	20 64 6f 77          	and    BYTE PTR [edi+ebp*2+0x77],ah
c010a8c0:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010a8c1:	3a 74 68 72          	cmp    dh,BYTE PTR [eax+ebp*2+0x72]
c010a8c5:	65 61                	gs popa 
c010a8c7:	64 20 62 6c          	and    BYTE PTR fs:[edx+0x6c],ah
c010a8cb:	6f                   	outs   dx,DWORD PTR ds:[esi]
c010a8cc:	63 6b 65             	arpl   WORD PTR [ebx+0x65],bp
c010a8cf:	64 20 68 61          	and    BYTE PTR fs:[eax+0x61],ch
c010a8d3:	73 20                	jae    c010a8f5 <__func__.1249+0xd4>
c010a8d5:	62 65 65             	bound  esp,QWORD PTR [ebp+0x65]
c010a8d8:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010a8d9:	20 69 6e             	and    BYTE PTR [ecx+0x6e],ch
c010a8dc:	20 77 61             	and    BYTE PTR [edi+0x61],dh
c010a8df:	69 74 65 72 73 20 6c 	imul   esi,DWORD PTR [ebp+eiz*2+0x72],0x696c2073
c010a8e6:	69 
c010a8e7:	73 74                	jae    c010a95d <__func__.1249+0x13c>
c010a8e9:	21 0a                	and    DWORD PTR [edx],ecx
c010a8eb:	00 72 75             	add    BYTE PTR [edx+0x75],dh
c010a8ee:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010a8ef:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010a8f0:	69 6e 67 5f 74 68 72 	imul   ebp,DWORD PTR [esi+0x67],0x7268745f
c010a8f7:	65 61                	gs popa 
c010a8f9:	64 28 29             	sub    BYTE PTR fs:[ecx],ch
c010a8fc:	2d 3e 67 65 6e       	sub    eax,0x6e65673e
c010a901:	65 72 61             	gs jb  c010a965 <__func__.1249+0x144>
c010a904:	6c                   	ins    BYTE PTR es:[edi],dx
c010a905:	5f                   	pop    edi
c010a906:	74 61                	je     c010a969 <__func__.1249+0x148>
c010a908:	67 2e 64 61          	addr16 cs fs popa 
c010a90c:	74 61                	je     c010a96f <__func__.1249+0x14e>
c010a90e:	20 3d 3d 20 72 75    	and    BYTE PTR ds:0x7572203d,bh
c010a914:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010a915:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010a916:	69 6e 67 5f 74 68 72 	imul   ebp,DWORD PTR [esi+0x67],0x7268745f
c010a91d:	65 61                	gs popa 
c010a91f:	64 28 29             	sub    BYTE PTR fs:[ecx],ch
c010a922:	00 70 73             	add    BYTE PTR [eax+0x73],dh
c010a925:	65 6d                	gs ins DWORD PTR es:[edi],dx
c010a927:	61                   	popa   
c010a928:	2d 3e 76 61 6c       	sub    eax,0x6c61763e
c010a92d:	75 65                	jne    c010a994 <__func__.1249+0x173>
c010a92f:	20 3d 3d 20 30 00    	and    BYTE PTR ds:0x30203d,bh
c010a935:	70 73                	jo     c010a9aa <__func__.1161+0x7>
c010a937:	65 6d                	gs ins DWORD PTR es:[edi],dx
c010a939:	61                   	popa   
c010a93a:	2d 3e 76 61 6c       	sub    eax,0x6c61763e
c010a93f:	75 65                	jne    c010a9a6 <__func__.1161+0x3>
c010a941:	20 3d 3d 20 31 00    	and    BYTE PTR ds:0x31203d,bh
c010a947:	70 6c                	jo     c010a9b5 <__func__.1157+0x5>
c010a949:	6f                   	outs   dx,DWORD PTR ds:[esi]
c010a94a:	63 6b 2d             	arpl   WORD PTR [ebx+0x2d],bp
c010a94d:	3e 68 6f 6c 64 65    	ds push 0x65646c6f
c010a953:	72 5f                	jb     c010a9b4 <__func__.1157+0x4>
c010a955:	72 65                	jb     c010a9bc <__func__.1157+0xc>
c010a957:	70 65                	jo     c010a9be <__func__.1152+0x1>
c010a959:	61                   	popa   
c010a95a:	74 5f                	je     c010a9bb <__func__.1157+0xb>
c010a95c:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010a95d:	72 20                	jb     c010a97f <__func__.1249+0x15e>
c010a95f:	3d 3d 20 30 00       	cmp    eax,0x30203d
c010a964:	70 6c                	jo     c010a9d2 <__func__.1136+0x3>
c010a966:	6f                   	outs   dx,DWORD PTR ds:[esi]
c010a967:	63 6b 2d             	arpl   WORD PTR [ebx+0x2d],bp
c010a96a:	3e 68 6f 6c 64 65    	ds push 0x65646c6f
c010a970:	72 20                	jb     c010a992 <__func__.1249+0x171>
c010a972:	3d 3d 20 72 75       	cmp    eax,0x7572203d
c010a977:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010a978:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010a979:	69 6e 67 5f 74 68 72 	imul   ebp,DWORD PTR [esi+0x67],0x7268745f
c010a980:	65 61                	gs popa 
c010a982:	64 28 29             	sub    BYTE PTR fs:[ecx],ch
c010a985:	00 70 6c             	add    BYTE PTR [eax+0x6c],dh
c010a988:	6f                   	outs   dx,DWORD PTR ds:[esi]
c010a989:	63 6b 2d             	arpl   WORD PTR [ebx+0x2d],bp
c010a98c:	3e 68 6f 6c 64 65    	ds push 0x65646c6f
c010a992:	72 5f                	jb     c010a9f3 <__func__.1136+0x24>
c010a994:	72 65                	jb     c010a9fb <__func__.1136+0x2c>
c010a996:	70 65                	jo     c010a9fd <__func__.1136+0x2e>
c010a998:	61                   	popa   
c010a999:	74 5f                	je     c010a9fa <__func__.1136+0x2b>
c010a99b:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010a99c:	72 20                	jb     c010a9be <__func__.1152+0x1>
c010a99e:	3d 3d 20 31 00       	cmp    eax,0x31203d

c010a9a3 <__func__.1161>:
c010a9a3:	6c                   	ins    BYTE PTR es:[edi],dx
c010a9a4:	6f                   	outs   dx,DWORD PTR ds:[esi]
c010a9a5:	63 6b 5f             	arpl   WORD PTR [ebx+0x5f],bp
c010a9a8:	72 65                	jb     c010aa0f <__func__.1136+0x40>
c010a9aa:	6c                   	ins    BYTE PTR es:[edi],dx
c010a9ab:	65 61                	gs popa 
c010a9ad:	73 65                	jae    c010aa14 <__func__.1136+0x45>
	...

c010a9b0 <__func__.1157>:
c010a9b0:	6c                   	ins    BYTE PTR es:[edi],dx
c010a9b1:	6f                   	outs   dx,DWORD PTR ds:[esi]
c010a9b2:	63 6b 5f             	arpl   WORD PTR [ebx+0x5f],bp
c010a9b5:	61                   	popa   
c010a9b6:	63 71 75             	arpl   WORD PTR [ecx+0x75],si
c010a9b9:	69 72 65 00 73 65 6d 	imul   esi,DWORD PTR [edx+0x65],0x6d657300

c010a9bd <__func__.1152>:
c010a9bd:	73 65                	jae    c010aa24 <__func__.1136+0x55>
c010a9bf:	6d                   	ins    DWORD PTR es:[edi],dx
c010a9c0:	61                   	popa   
c010a9c1:	5f                   	pop    edi
c010a9c2:	75 70                	jne    c010aa34 <__func__.1136+0x65>
	...

c010a9c5 <__func__.1144>:
c010a9c5:	73 65                	jae    c010aa2c <__func__.1136+0x5d>
c010a9c7:	6d                   	ins    DWORD PTR es:[edi],dx
c010a9c8:	61                   	popa   
c010a9c9:	5f                   	pop    edi
c010a9ca:	64 6f                	outs   dx,DWORD PTR fs:[esi]
c010a9cc:	77 6e                	ja     c010aa3c <__func__.1136+0x6d>
	...

c010a9cf <__func__.1136>:
c010a9cf:	73 65                	jae    c010aa36 <__func__.1136+0x67>
c010a9d1:	6d                   	ins    DWORD PTR es:[edi],dx
c010a9d2:	61                   	popa   
c010a9d3:	5f                   	pop    edi
c010a9d4:	69 6e 69 74 00 00 00 	imul   ebp,DWORD PTR [esi+0x69],0x74
c010a9db:	00 50 65             	add    BYTE PTR [eax+0x65],dl
c010a9de:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010a9df:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c010a9e2:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c010a9e7:	65 6c                	gs ins BYTE PTR es:[edi],dx
c010a9e9:	20 28                	and    BYTE PTR [eax],ch
c010a9eb:	50                   	push   eax
c010a9ec:	4b                   	dec    ebx
c010a9ed:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010a9ee:	29 20                	sub    DWORD PTR [eax],esp
c010a9f0:	30 2e                	xor    BYTE PTR [esi],ch
c010a9f2:	30 2e                	xor    BYTE PTR [esi],ch
c010a9f4:	31 20                	xor    DWORD PTR [eax],esp
c010a9f6:	41                   	inc    ecx
c010a9f7:	75 67                	jne    c010aa60 <__func__.1136+0x91>
c010a9f9:	2e 00 00             	add    BYTE PTR cs:[eax],al
c010a9fc:	21 6c 69 73          	and    DWORD PTR [ecx+ebp*2+0x73],ebp
c010aa00:	74 5f                	je     c010aa61 <__func__.1136+0x92>
c010aa02:	66 69 6e 64 28 26    	imul   bp,WORD PTR [esi+0x64],0x2628
c010aa08:	72 65                	jb     c010aa6f <__func__.1136+0xa0>
c010aa0a:	61                   	popa   
c010aa0b:	64 79 5f             	fs jns c010aa6d <__func__.1136+0x9e>
c010aa0e:	6c                   	ins    BYTE PTR es:[edi],dx
c010aa0f:	69 73 74 2c 26 28 74 	imul   esi,DWORD PTR [ebx+0x74],0x7428262c
c010aa16:	68 72 65 61 64       	push   0x64616572
c010aa1b:	2d 3e 67 65 6e       	sub    eax,0x6e65673e
c010aa20:	65 72 61             	gs jb  c010aa84 <__func__.1136+0xb5>
c010aa23:	6c                   	ins    BYTE PTR es:[edi],dx
c010aa24:	5f                   	pop    edi
c010aa25:	74 61                	je     c010aa88 <__func__.1136+0xb9>
c010aa27:	67 29 29             	sub    DWORD PTR [bx+di],ebp
c010aa2a:	00 74 68 72          	add    BYTE PTR [eax+ebp*2+0x72],dh
c010aa2e:	65 61                	gs popa 
c010aa30:	64 2f                	fs das 
c010aa32:	74 68                	je     c010aa9c <__func__.1136+0xcd>
c010aa34:	72 65                	jb     c010aa9b <__func__.1136+0xcc>
c010aa36:	61                   	popa   
c010aa37:	64 2e 63 00          	fs arpl WORD PTR cs:[eax],ax
c010aa3b:	00 21                	add    BYTE PTR [ecx],ah
c010aa3d:	6c                   	ins    BYTE PTR es:[edi],dx
c010aa3e:	69 73 74 5f 66 69 6e 	imul   esi,DWORD PTR [ebx+0x74],0x6e69665f
c010aa45:	64 28 26             	sub    BYTE PTR fs:[esi],ah
c010aa48:	61                   	popa   
c010aa49:	6c                   	ins    BYTE PTR es:[edi],dx
c010aa4a:	6c                   	ins    BYTE PTR es:[edi],dx
c010aa4b:	5f                   	pop    edi
c010aa4c:	6c                   	ins    BYTE PTR es:[edi],dx
c010aa4d:	69 73 74 2c 26 28 74 	imul   esi,DWORD PTR [ebx+0x74],0x7428262c
c010aa54:	68 72 65 61 64       	push   0x64616572
c010aa59:	2d 3e 61 6c 6c       	sub    eax,0x6c6c613e
c010aa5e:	5f                   	pop    edi
c010aa5f:	74 61                	je     c010aac2 <__func__.1136+0xf3>
c010aa61:	67 29 29             	sub    DWORD PTR [bx+di],ebp
c010aa64:	00 4d 61             	add    BYTE PTR [ebp+0x61],cl
c010aa67:	69 6e 20 74 68 72 65 	imul   ebp,DWORD PTR [esi+0x20],0x65726874
c010aa6e:	61                   	popa   
c010aa6f:	64 00 00             	add    BYTE PTR fs:[eax],al
c010aa72:	00 00                	add    BYTE PTR [eax],al
c010aa74:	63 75 72             	arpl   WORD PTR [ebp+0x72],si
c010aa77:	5f                   	pop    edi
c010aa78:	74 68                	je     c010aae2 <__func__.1136+0x113>
c010aa7a:	72 65                	jb     c010aae1 <__func__.1136+0x112>
c010aa7c:	61                   	popa   
c010aa7d:	64 2d 3e 73 74 61    	fs sub eax,0x6174733e
c010aa83:	63 6b 5f             	arpl   WORD PTR [ebx+0x5f],bp
c010aa86:	6d                   	ins    DWORD PTR es:[edi],dx
c010aa87:	61                   	popa   
c010aa88:	67 69 63 20 3d 3d 20 	imul   esp,DWORD PTR [bp+di+0x20],0x30203d3d
c010aa8f:	30 
c010aa90:	78 31                	js     c010aac3 <__func__.1136+0xf4>
c010aa92:	32 33                	xor    dh,BYTE PTR [ebx]
c010aa94:	34 35                	xor    al,0x35
c010aa96:	36 37                	ss aaa 
c010aa98:	38 00                	cmp    BYTE PTR [eax],al
c010aa9a:	00 00                	add    BYTE PTR [eax],al
c010aa9c:	21 28                	and    DWORD PTR [eax],ebp
c010aa9e:	6c                   	ins    BYTE PTR es:[edi],dx
c010aa9f:	69 73 74 5f 66 69 6e 	imul   esi,DWORD PTR [ebx+0x74],0x6e69665f
c010aaa6:	64 28 26             	sub    BYTE PTR fs:[esi],ah
c010aaa9:	72 65                	jb     c010ab10 <__func__.1136+0x141>
c010aaab:	61                   	popa   
c010aaac:	64 79 5f             	fs jns c010ab0e <__func__.1136+0x13f>
c010aaaf:	6c                   	ins    BYTE PTR es:[edi],dx
c010aab0:	69 73 74 2c 26 28 63 	imul   esi,DWORD PTR [ebx+0x74],0x6328262c
c010aab7:	75 72                	jne    c010ab2b <__func__.1136+0x15c>
c010aab9:	5f                   	pop    edi
c010aaba:	74 68                	je     c010ab24 <__func__.1136+0x155>
c010aabc:	72 65                	jb     c010ab23 <__func__.1136+0x154>
c010aabe:	61                   	popa   
c010aabf:	64 2d 3e 67 65 6e    	fs sub eax,0x6e65673e
c010aac5:	65 72 61             	gs jb  c010ab29 <__func__.1136+0x15a>
c010aac8:	6c                   	ins    BYTE PTR es:[edi],dx
c010aac9:	5f                   	pop    edi
c010aaca:	74 61                	je     c010ab2d <__func__.1136+0x15e>
c010aacc:	67 29 29             	sub    DWORD PTR [bx+di],ebp
c010aacf:	29 00                	sub    DWORD PTR [eax],eax
c010aad1:	21 28                	and    DWORD PTR [eax],ebp
c010aad3:	6c                   	ins    BYTE PTR es:[edi],dx
c010aad4:	69 73 74 5f 65 6d 70 	imul   esi,DWORD PTR [ebx+0x74],0x706d655f
c010aadb:	74 79                	je     c010ab56 <__func__.1136+0x187>
c010aadd:	28 26                	sub    BYTE PTR [esi],ah
c010aadf:	72 65                	jb     c010ab46 <__func__.1136+0x177>
c010aae1:	61                   	popa   
c010aae2:	64 79 5f             	fs jns c010ab44 <__func__.1136+0x175>
c010aae5:	6c                   	ins    BYTE PTR es:[edi],dx
c010aae6:	69 73 74 29 29 00 72 	imul   esi,DWORD PTR [ebx+0x74],0x72002929
c010aaed:	65 61                	gs popa 
c010aaef:	64 79 5f             	fs jns c010ab51 <__func__.1136+0x182>
c010aaf2:	6c                   	ins    BYTE PTR es:[edi],dx
c010aaf3:	69 73 74 2e 74 61 69 	imul   esi,DWORD PTR [ebx+0x74],0x6961742e
c010aafa:	6c                   	ins    BYTE PTR es:[edi],dx
c010aafb:	2e 70 72             	cs jo  c010ab70 <__func__.1136+0x1a1>
c010aafe:	65 76 20             	gs jbe c010ab21 <__func__.1136+0x152>
c010ab01:	21 3d 20 26 72 65    	and    DWORD PTR ds:0x65722620,edi
c010ab07:	61                   	popa   
c010ab08:	64 79 5f             	fs jns c010ab6a <__func__.1136+0x19b>
c010ab0b:	6c                   	ins    BYTE PTR es:[edi],dx
c010ab0c:	69 73 74 2e 68 65 61 	imul   esi,DWORD PTR [ebx+0x74],0x6165682e
c010ab13:	64 00 00             	add    BYTE PTR fs:[eax],al
c010ab16:	00 00                	add    BYTE PTR [eax],al
c010ab18:	73 74                	jae    c010ab8e <__func__.1136+0x1bf>
c010ab1a:	61                   	popa   
c010ab1b:	74 75                	je     c010ab92 <__func__.1136+0x1c3>
c010ab1d:	73 20                	jae    c010ab3f <__func__.1136+0x170>
c010ab1f:	21 3d 20 54 41 53    	and    DWORD PTR ds:0x53415420,edi
c010ab25:	4b                   	dec    ebx
c010ab26:	5f                   	pop    edi
c010ab27:	52                   	push   edx
c010ab28:	55                   	push   ebp
c010ab29:	4e                   	dec    esi
c010ab2a:	4e                   	dec    esi
c010ab2b:	49                   	dec    ecx
c010ab2c:	4e                   	dec    esi
c010ab2d:	47                   	inc    edi
c010ab2e:	20 26                	and    BYTE PTR [esi],ah
c010ab30:	26 20 73 74          	and    BYTE PTR es:[ebx+0x74],dh
c010ab34:	61                   	popa   
c010ab35:	74 75                	je     c010abac <__func__.1136+0x1dd>
c010ab37:	73 20                	jae    c010ab59 <__func__.1136+0x18a>
c010ab39:	21 3d 20 54 41 53    	and    DWORD PTR ds:0x53415420,edi
c010ab3f:	4b                   	dec    ebx
c010ab40:	5f                   	pop    edi
c010ab41:	52                   	push   edx
c010ab42:	45                   	inc    ebp
c010ab43:	41                   	inc    ecx
c010ab44:	44                   	inc    esp
c010ab45:	59                   	pop    ecx
c010ab46:	00 00                	add    BYTE PTR [eax],al
c010ab48:	63 75 72             	arpl   WORD PTR [ebp+0x72],si
c010ab4b:	5f                   	pop    edi
c010ab4c:	74 68                	je     c010abb6 <__func__.1136+0x1e7>
c010ab4e:	72 65                	jb     c010abb5 <__func__.1136+0x1e6>
c010ab50:	61                   	popa   
c010ab51:	64 2d 3e 67 65 6e    	fs sub eax,0x6e65673e
c010ab57:	65 72 61             	gs jb  c010abbb <__func__.1136+0x1ec>
c010ab5a:	6c                   	ins    BYTE PTR es:[edi],dx
c010ab5b:	5f                   	pop    edi
c010ab5c:	74 61                	je     c010abbf <__func__.1136+0x1f0>
c010ab5e:	67 2e 64 61          	addr16 cs fs popa 
c010ab62:	74 61                	je     c010abc5 <__func__.1136+0x1f6>
c010ab64:	20 3d 3d 20 63 75    	and    BYTE PTR ds:0x7563203d,bh
c010ab6a:	72 5f                	jb     c010abcb <__func__.1136+0x1fc>
c010ab6c:	74 68                	je     c010abd6 <__func__.1385+0x5>
c010ab6e:	72 65                	jb     c010abd5 <__func__.1385+0x4>
c010ab70:	61                   	popa   
c010ab71:	64 00 00             	add    BYTE PTR fs:[eax],al
c010ab74:	21 6c 69 73          	and    DWORD PTR [ecx+ebp*2+0x73],ebp
c010ab78:	74 5f                	je     c010abd9 <__func__.1385+0x8>
c010ab7a:	66 69 6e 64 28 26    	imul   bp,WORD PTR [esi+0x64],0x2628
c010ab80:	72 65                	jb     c010abe7 <__func__.1378+0x7>
c010ab82:	61                   	popa   
c010ab83:	64 79 5f             	fs jns c010abe5 <__func__.1378+0x5>
c010ab86:	6c                   	ins    BYTE PTR es:[edi],dx
c010ab87:	69 73 74 2c 26 28 70 	imul   esi,DWORD PTR [ebx+0x74],0x7028262c
c010ab8e:	74 68                	je     c010abf8 <__func__.1366+0x2>
c010ab90:	72 65                	jb     c010abf7 <__func__.1366+0x1>
c010ab92:	61                   	popa   
c010ab93:	64 2d 3e 67 65 6e    	fs sub eax,0x6e65673e
c010ab99:	65 72 61             	gs jb  c010abfd <__func__.1366+0x7>
c010ab9c:	6c                   	ins    BYTE PTR es:[edi],dx
c010ab9d:	5f                   	pop    edi
c010ab9e:	74 61                	je     c010ac01 <__func__.1366+0xb>
c010aba0:	67 29 29             	sub    DWORD PTR [bx+di],ebp
c010aba3:	00 74 68 72          	add    BYTE PTR [eax+ebp*2+0x72],dh
c010aba7:	65 61                	gs popa 
c010aba9:	64 20 75 6e          	and    BYTE PTR fs:[ebp+0x6e],dh
c010abad:	62 6c 6f 63          	bound  ebp,QWORD PTR [edi+ebp*2+0x63]
c010abb1:	6b 3a 20             	imul   edi,DWORD PTR [edx],0x20
c010abb4:	62 6c 6f 63          	bound  ebp,QWORD PTR [edi+ebp*2+0x63]
c010abb8:	6b 65 64 20          	imul   esp,DWORD PTR [ebp+0x64],0x20
c010abbc:	74 68                	je     c010ac26 <__func__.1366+0x30>
c010abbe:	72 65                	jb     c010ac25 <__func__.1366+0x2f>
c010abc0:	61                   	popa   
c010abc1:	64 20 69 6e          	and    BYTE PTR fs:[ecx+0x6e],ch
c010abc5:	20 72 65             	and    BYTE PTR [edx+0x65],dh
c010abc8:	61                   	popa   
c010abc9:	64 79 20             	fs jns c010abec <__func__.1378+0xc>
c010abcc:	6c                   	ins    BYTE PTR es:[edi],dx
c010abcd:	69 73 74 00 74 68 72 	imul   esi,DWORD PTR [ebx+0x74],0x72687400

c010abd1 <__func__.1385>:
c010abd1:	74 68                	je     c010ac3b <__func__.1366+0x45>
c010abd3:	72 65                	jb     c010ac3a <__func__.1366+0x44>
c010abd5:	61                   	popa   
c010abd6:	64 5f                	fs pop edi
c010abd8:	75 6e                	jne    c010ac48 <__func__.1366+0x52>
c010abda:	62 6c 6f 63          	bound  ebp,QWORD PTR [edi+ebp*2+0x63]
c010abde:	6b 00 74             	imul   eax,DWORD PTR [eax],0x74

c010abe0 <__func__.1378>:
c010abe0:	74 68                	je     c010ac4a <__func__.1366+0x54>
c010abe2:	72 65                	jb     c010ac49 <__func__.1366+0x53>
c010abe4:	61                   	popa   
c010abe5:	64 5f                	fs pop edi
c010abe7:	62 6c 6f 63          	bound  ebp,QWORD PTR [edi+ebp*2+0x63]
c010abeb:	6b 00 73             	imul   eax,DWORD PTR [eax],0x73

c010abed <__func__.1373>:
c010abed:	73 63                	jae    c010ac52 <__func__.1366+0x5c>
c010abef:	68 65 64 75 6c       	push   0x6c756465
c010abf4:	65 00 74 68 72       	add    BYTE PTR gs:[eax+ebp*2+0x72],dh

c010abf6 <__func__.1366>:
c010abf6:	74 68                	je     c010ac60 <__func__.1366+0x6a>
c010abf8:	72 65                	jb     c010ac5f <__func__.1366+0x69>
c010abfa:	61                   	popa   
c010abfb:	64 5f                	fs pop edi
c010abfd:	73 74                	jae    c010ac73 <__func__.1366+0x7d>
c010abff:	61                   	popa   
c010ac00:	72 74                	jb     c010ac76 <__func__.1366+0x80>
c010ac02:	00 00                	add    BYTE PTR [eax],al
c010ac04:	50                   	push   eax
c010ac05:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c010ac07:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c010ac0a:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c010ac0f:	65 6c                	gs ins BYTE PTR es:[edi],dx
c010ac11:	20 28                	and    BYTE PTR [eax],ch
c010ac13:	50                   	push   eax
c010ac14:	4b                   	dec    ebx
c010ac15:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010ac16:	29 20                	sub    DWORD PTR [eax],esp
c010ac18:	30 2e                	xor    BYTE PTR [esi],ch
c010ac1a:	30 2e                	xor    BYTE PTR [esi],ch
c010ac1c:	31 20                	xor    DWORD PTR [eax],esp
c010ac1e:	41                   	inc    ecx
c010ac1f:	75 67                	jne    c010ac88 <__func__.1366+0x92>
c010ac21:	2e 00 00             	add    BYTE PTR cs:[eax],al
c010ac24:	50                   	push   eax
c010ac25:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c010ac27:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c010ac2a:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c010ac2f:	65 6c                	gs ins BYTE PTR es:[edi],dx
c010ac31:	20 28                	and    BYTE PTR [eax],ch
c010ac33:	50                   	push   eax
c010ac34:	4b                   	dec    ebx
c010ac35:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010ac36:	29 20                	sub    DWORD PTR [eax],esp
c010ac38:	30 2e                	xor    BYTE PTR [esi],ch
c010ac3a:	30 2e                	xor    BYTE PTR [esi],ch
c010ac3c:	31 20                	xor    DWORD PTR [eax],esp
c010ac3e:	41                   	inc    ecx
c010ac3f:	75 67                	jne    c010aca8 <__func__.1366+0xb2>
c010ac41:	2e 00 70 61          	add    BYTE PTR cs:[eax+0x61],dh
c010ac45:	67 65 5f             	addr16 gs pop edi
c010ac48:	64 69 72 5f 74 61 62 	imul   esi,DWORD PTR fs:[edx+0x5f],0x6c626174
c010ac4f:	6c 
c010ac50:	65 5f                	gs pop edi
c010ac52:	70 6f                	jo     c010acc3 <__func__.1366+0xcd>
c010ac54:	73 20                	jae    c010ac76 <__func__.1366+0x80>
c010ac56:	21 3d 20 4e 55 4c    	and    DWORD PTR ds:0x4c554e20,edi
c010ac5c:	4c                   	dec    esp
c010ac5d:	00 70 72             	add    BYTE PTR [eax+0x72],dh
c010ac60:	6f                   	outs   dx,DWORD PTR ds:[esi]
c010ac61:	67 2f                	addr16 das 
c010ac63:	70 72                	jo     c010acd7 <__func__.1366+0xe1>
c010ac65:	6f                   	outs   dx,DWORD PTR ds:[esi]
c010ac66:	63 65 73             	arpl   WORD PTR [ebp+0x73],sp
c010ac69:	73 2e                	jae    c010ac99 <__func__.1366+0xa3>
c010ac6b:	63 00                	arpl   WORD PTR [eax],ax
c010ac6d:	70 74                	jo     c010ace3 <__func__.1366+0xed>
c010ac6f:	68 72 65 61 64       	push   0x64616572
c010ac74:	20 21                	and    BYTE PTR [ecx],ah
c010ac76:	3d 20 4e 55 4c       	cmp    eax,0x4c554e20
c010ac7b:	4c                   	dec    esp
c010ac7c:	00 00                	add    BYTE PTR [eax],al
c010ac7e:	00 00                	add    BYTE PTR [eax],al
c010ac80:	63 72 65             	arpl   WORD PTR [edx+0x65],si
c010ac83:	61                   	popa   
c010ac84:	74 65                	je     c010aceb <__func__.1366+0xf5>
c010ac86:	5f                   	pop    edi
c010ac87:	70 61                	jo     c010acea <__func__.1366+0xf4>
c010ac89:	67 65 5f             	addr16 gs pop edi
c010ac8c:	64 69 72 3a 20 67 65 	imul   esi,DWORD PTR fs:[edx+0x3a],0x74656720
c010ac93:	74 
c010ac94:	20 6b 65             	and    BYTE PTR [ebx+0x65],ch
c010ac97:	72 6e                	jb     c010ad07 <__func__.1366+0x111>
c010ac99:	65 6c                	gs ins BYTE PTR es:[edi],dx
c010ac9b:	20 70 61             	and    BYTE PTR [eax+0x61],dh
c010ac9e:	67 65 20 66 61       	and    BYTE PTR gs:[bp+0x61],ah
c010aca3:	69 6c 65 64 21 0a 00 	imul   ebp,DWORD PTR [ebp+eiz*2+0x64],0xa21
c010acaa:	00 
c010acab:	00 21                	add    BYTE PTR [ecx],ah
c010acad:	28 6c 69 73          	sub    BYTE PTR [ecx+ebp*2+0x73],ch
c010acb1:	74 5f                	je     c010ad12 <__func__.1389+0x8>
c010acb3:	66 69 6e 64 28 26    	imul   bp,WORD PTR [esi+0x64],0x2628
c010acb9:	61                   	popa   
c010acba:	6c                   	ins    BYTE PTR es:[edi],dx
c010acbb:	6c                   	ins    BYTE PTR es:[edi],dx
c010acbc:	5f                   	pop    edi
c010acbd:	6c                   	ins    BYTE PTR es:[edi],dx
c010acbe:	69 73 74 2c 26 28 70 	imul   esi,DWORD PTR [ebx+0x74],0x7028262c
c010acc5:	74 68                	je     c010ad2f <__func__.1367+0x8>
c010acc7:	72 65                	jb     c010ad2e <__func__.1367+0x7>
c010acc9:	61                   	popa   
c010acca:	64 2d 3e 61 6c 6c    	fs sub eax,0x6c6c613e
c010acd0:	5f                   	pop    edi
c010acd1:	74 61                	je     c010ad34 <__func__.1367+0xd>
c010acd3:	67 29 29             	sub    DWORD PTR [bx+di],ebp
c010acd6:	29 00                	sub    DWORD PTR [eax],eax
c010acd8:	21 28                	and    DWORD PTR [eax],ebp
c010acda:	6c                   	ins    BYTE PTR es:[edi],dx
c010acdb:	69 73 74 5f 66 69 6e 	imul   esi,DWORD PTR [ebx+0x74],0x6e69665f
c010ace2:	64 28 26             	sub    BYTE PTR fs:[esi],ah
c010ace5:	72 65                	jb     c010ad4c <__func__.1363+0x14>
c010ace7:	61                   	popa   
c010ace8:	64 79 5f             	fs jns c010ad4a <__func__.1363+0x12>
c010aceb:	6c                   	ins    BYTE PTR es:[edi],dx
c010acec:	69 73 74 2c 26 28 70 	imul   esi,DWORD PTR [ebx+0x74],0x7028262c
c010acf3:	74 68                	je     c010ad5d <__func__.1363+0x25>
c010acf5:	72 65                	jb     c010ad5c <__func__.1363+0x24>
c010acf7:	61                   	popa   
c010acf8:	64 2d 3e 67 65 6e    	fs sub eax,0x6e65673e
c010acfe:	65 72 61             	gs jb  c010ad62 <__func__.1363+0x2a>
c010ad01:	6c                   	ins    BYTE PTR es:[edi],dx
c010ad02:	5f                   	pop    edi
c010ad03:	74 61                	je     c010ad66 <__func__.1363+0x2e>
c010ad05:	67 29 29             	sub    DWORD PTR [bx+di],ebp
c010ad08:	29 00                	sub    DWORD PTR [eax],eax

c010ad0a <__func__.1389>:
c010ad0a:	74 61                	je     c010ad6d <__func__.1363+0x35>
c010ad0c:	73 6b                	jae    c010ad79 <__func__.1363+0x41>
c010ad0e:	5f                   	pop    edi
c010ad0f:	65 78 65             	gs js  c010ad77 <__func__.1363+0x3f>
c010ad12:	63 75 74             	arpl   WORD PTR [ebp+0x74],si
c010ad15:	65 00 70 72          	add    BYTE PTR gs:[eax+0x72],dh

c010ad17 <__func__.1382>:
c010ad17:	70 72                	jo     c010ad8b <__func__.1363+0x53>
c010ad19:	6f                   	outs   dx,DWORD PTR ds:[esi]
c010ad1a:	63 65 73             	arpl   WORD PTR [ebp+0x73],sp
c010ad1d:	73 5f                	jae    c010ad7e <__func__.1363+0x46>
c010ad1f:	65 78 65             	gs js  c010ad87 <__func__.1363+0x4f>
c010ad22:	63 75 74             	arpl   WORD PTR [ebp+0x74],si
c010ad25:	65 00 70 72          	add    BYTE PTR gs:[eax+0x72],dh

c010ad27 <__func__.1367>:
c010ad27:	70 72                	jo     c010ad9b <__func__.1363+0x63>
c010ad29:	6f                   	outs   dx,DWORD PTR ds:[esi]
c010ad2a:	63 65 73             	arpl   WORD PTR [ebp+0x73],sp
c010ad2d:	73 5f                	jae    c010ad8e <__func__.1363+0x56>
c010ad2f:	61                   	popa   
c010ad30:	63 74 69 76          	arpl   WORD PTR [ecx+ebp*2+0x76],si
c010ad34:	61                   	popa   
c010ad35:	74 65                	je     c010ad9c <__func__.1363+0x64>
	...

c010ad38 <__func__.1363>:
c010ad38:	70 61                	jo     c010ad9b <__func__.1363+0x63>
c010ad3a:	67 65 5f             	addr16 gs pop edi
c010ad3d:	64 69 72 5f 61 63 74 	imul   esi,DWORD PTR fs:[edx+0x5f],0x69746361
c010ad44:	69 
c010ad45:	76 61                	jbe    c010ada8 <__func__.1363+0x70>
c010ad47:	74 65                	je     c010adae <__func__.1363+0x76>
c010ad49:	00 00                	add    BYTE PTR [eax],al
c010ad4b:	00 50 65             	add    BYTE PTR [eax+0x65],dl
c010ad4e:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010ad4f:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c010ad52:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c010ad57:	65 6c                	gs ins BYTE PTR es:[edi],dx
c010ad59:	20 28                	and    BYTE PTR [eax],ch
c010ad5b:	50                   	push   eax
c010ad5c:	4b                   	dec    ebx
c010ad5d:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010ad5e:	29 20                	sub    DWORD PTR [eax],esp
c010ad60:	30 2e                	xor    BYTE PTR [esi],ch
c010ad62:	30 2e                	xor    BYTE PTR [esi],ch
c010ad64:	31 20                	xor    DWORD PTR [eax],esp
c010ad66:	41                   	inc    ecx
c010ad67:	75 67                	jne    c010add0 <__func__.1363+0x98>
c010ad69:	2e 00 00             	add    BYTE PTR cs:[eax],al
c010ad6c:	50                   	push   eax
c010ad6d:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c010ad6f:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c010ad72:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c010ad77:	65 6c                	gs ins BYTE PTR es:[edi],dx
c010ad79:	20 28                	and    BYTE PTR [eax],ch
c010ad7b:	50                   	push   eax
c010ad7c:	4b                   	dec    ebx
c010ad7d:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010ad7e:	29 20                	sub    DWORD PTR [eax],esp
c010ad80:	30 2e                	xor    BYTE PTR [esi],ch
c010ad82:	30 2e                	xor    BYTE PTR [esi],ch
c010ad84:	31 20                	xor    DWORD PTR [eax],esp
c010ad86:	41                   	inc    ecx
c010ad87:	75 67                	jne    c010adf0 <__func__.1363+0xb8>
c010ad89:	2e 00 00             	add    BYTE PTR cs:[eax],al
c010ad8c:	50                   	push   eax
c010ad8d:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c010ad8f:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c010ad92:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c010ad97:	65 6c                	gs ins BYTE PTR es:[edi],dx
c010ad99:	20 28                	and    BYTE PTR [eax],ch
c010ad9b:	50                   	push   eax
c010ad9c:	4b                   	dec    ebx
c010ad9d:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010ad9e:	29 20                	sub    DWORD PTR [eax],esp
c010ada0:	30 2e                	xor    BYTE PTR [esi],ch
c010ada2:	30 2e                	xor    BYTE PTR [esi],ch
c010ada4:	31 20                	xor    DWORD PTR [eax],esp
c010ada6:	41                   	inc    ecx
c010ada7:	75 67                	jne    c010ae10 <__func__.1363+0xd8>
c010ada9:	2e 00 75 6e          	add    BYTE PTR cs:[ebp+0x6e],dh
c010adad:	6b 6e 6f 77          	imul   ebp,DWORD PTR [esi+0x6f],0x77
c010adb1:	20 6b 65             	and    BYTE PTR [ebx+0x65],ch
c010adb4:	79 00                	jns    c010adb6 <__func__.1363+0x7e>
c010adb6:	00 00                	add    BYTE PTR [eax],al
c010adb8:	50                   	push   eax
c010adb9:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c010adbb:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c010adbe:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c010adc3:	65 6c                	gs ins BYTE PTR es:[edi],dx
c010adc5:	20 28                	and    BYTE PTR [eax],ch
c010adc7:	50                   	push   eax
c010adc8:	4b                   	dec    ebx
c010adc9:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010adca:	29 20                	sub    DWORD PTR [eax],esp
c010adcc:	30 2e                	xor    BYTE PTR [esi],ch
c010adce:	30 2e                	xor    BYTE PTR [esi],ch
c010add0:	31 20                	xor    DWORD PTR [eax],esp
c010add2:	41                   	inc    ecx
c010add3:	75 67                	jne    c010ae3c <__func__.1363+0x104>
c010add5:	2e 00 00             	add    BYTE PTR cs:[eax],al
c010add8:	50                   	push   eax
c010add9:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c010addb:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c010adde:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c010ade3:	65 6c                	gs ins BYTE PTR es:[edi],dx
c010ade5:	20 28                	and    BYTE PTR [eax],ch
c010ade7:	50                   	push   eax
c010ade8:	4b                   	dec    ebx
c010ade9:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010adea:	29 20                	sub    DWORD PTR [eax],esp
c010adec:	30 2e                	xor    BYTE PTR [esi],ch
c010adee:	30 2e                	xor    BYTE PTR [esi],ch
c010adf0:	31 20                	xor    DWORD PTR [eax],esp
c010adf2:	41                   	inc    ecx
c010adf3:	75 67                	jne    c010ae5c <__func__.1363+0x124>
c010adf5:	2e 00 00             	add    BYTE PTR cs:[eax],al
c010adf8:	50                   	push   eax
c010adf9:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c010adfb:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c010adfe:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c010ae03:	65 6c                	gs ins BYTE PTR es:[edi],dx
c010ae05:	20 28                	and    BYTE PTR [eax],ch
c010ae07:	50                   	push   eax
c010ae08:	4b                   	dec    ebx
c010ae09:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010ae0a:	29 20                	sub    DWORD PTR [eax],esp
c010ae0c:	30 2e                	xor    BYTE PTR [esi],ch
c010ae0e:	30 2e                	xor    BYTE PTR [esi],ch
c010ae10:	31 20                	xor    DWORD PTR [eax],esp
c010ae12:	41                   	inc    ecx
c010ae13:	75 67                	jne    c010ae7c <__func__.1363+0x144>
c010ae15:	2e 00 00             	add    BYTE PTR cs:[eax],al
c010ae18:	50                   	push   eax
c010ae19:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c010ae1b:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c010ae1e:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c010ae23:	65 6c                	gs ins BYTE PTR es:[edi],dx
c010ae25:	20 28                	and    BYTE PTR [eax],ch
c010ae27:	50                   	push   eax
c010ae28:	4b                   	dec    ebx
c010ae29:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010ae2a:	29 20                	sub    DWORD PTR [eax],esp
c010ae2c:	30 2e                	xor    BYTE PTR [esi],ch
c010ae2e:	30 2e                	xor    BYTE PTR [esi],ch
c010ae30:	31 20                	xor    DWORD PTR [eax],esp
c010ae32:	41                   	inc    ecx
c010ae33:	75 67                	jne    c010ae9c <__func__.1363+0x164>
c010ae35:	2e 00 00             	add    BYTE PTR cs:[eax],al
c010ae38:	50                   	push   eax
c010ae39:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c010ae3b:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c010ae3e:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c010ae43:	65 6c                	gs ins BYTE PTR es:[edi],dx
c010ae45:	20 28                	and    BYTE PTR [eax],ch
c010ae47:	50                   	push   eax
c010ae48:	4b                   	dec    ebx
c010ae49:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010ae4a:	29 20                	sub    DWORD PTR [eax],esp
c010ae4c:	30 2e                	xor    BYTE PTR [esi],ch
c010ae4e:	30 2e                	xor    BYTE PTR [esi],ch
c010ae50:	31 20                	xor    DWORD PTR [eax],esp
c010ae52:	41                   	inc    ecx
c010ae53:	75 67                	jne    c010aebc <__func__.1363+0x184>
c010ae55:	2e 00 70 64          	add    BYTE PTR cs:[eax+0x64],dh
c010ae59:	65 73 74             	gs jae c010aed0 <__func__.1363+0x198>
c010ae5c:	20 21                	and    BYTE PTR [ecx],ah
c010ae5e:	3d 20 4e 55 4c       	cmp    eax,0x4c554e20
c010ae63:	4c                   	dec    esp
c010ae64:	00 73 79             	add    BYTE PTR [ebx+0x79],dh
c010ae67:	73 63                	jae    c010aecc <__func__.1363+0x194>
c010ae69:	61                   	popa   
c010ae6a:	6c                   	ins    BYTE PTR es:[edi],dx
c010ae6b:	6c                   	ins    BYTE PTR es:[edi],dx
c010ae6c:	2f                   	das    
c010ae6d:	73 79                	jae    c010aee8 <__func__.1363+0x1b0>
c010ae6f:	73 63                	jae    c010aed4 <__func__.1363+0x19c>
c010ae71:	61                   	popa   
c010ae72:	6c                   	ins    BYTE PTR es:[edi],dx
c010ae73:	6c                   	ins    BYTE PTR es:[edi],dx
c010ae74:	2e 63 00             	arpl   WORD PTR cs:[eax],ax
c010ae77:	73 65                	jae    c010aede <__func__.1363+0x1a6>
c010ae79:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010ae7a:	64 65 72 20          	fs gs jb c010ae9e <__func__.1363+0x166>
c010ae7e:	21 3d 20 70 64 65    	and    DWORD PTR ds:0x65647020,edi
c010ae84:	73 74                	jae    c010aefa <__func__.1363+0x1c2>
c010ae86:	00 6d 73             	add    BYTE PTR [ebp+0x73],ch
c010ae89:	67 5f                	addr16 pop edi
c010ae8b:	73 65                	jae    c010aef2 <__func__.1363+0x1ba>
c010ae8d:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010ae8e:	64 3a 20             	cmp    ah,BYTE PTR fs:[eax]
c010ae91:	25 64 20 2d 3e       	and    eax,0x3e2d2064
c010ae96:	20 25 64 20 64 65    	and    BYTE PTR ds:0x65642064,ah
c010ae9c:	61                   	popa   
c010ae9d:	64 6c                	fs ins BYTE PTR es:[edi],dx
c010ae9f:	6f                   	outs   dx,DWORD PTR ds:[esi]
c010aea0:	63 6b 21             	arpl   WORD PTR [ebx+0x21],bp
c010aea3:	00 73 65             	add    BYTE PTR [ebx+0x65],dh
c010aea6:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010aea7:	64 65 72 2d          	fs gs jb c010aed8 <__func__.1363+0x1a0>
c010aeab:	3e 73 65             	ds jae c010af13 <__func__.1363+0x1db>
c010aeae:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010aeaf:	64 5f                	fs pop edi
c010aeb1:	74 61                	je     c010af14 <__func__.1363+0x1dc>
c010aeb3:	67 2e 64 61          	addr16 cs fs popa 
c010aeb7:	74 61                	je     c010af1a <__func__.1363+0x1e2>
c010aeb9:	20 3d 3d 20 73 65    	and    BYTE PTR ds:0x6573203d,bh
c010aebf:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010aec0:	64 65 72 00          	fs gs jb c010aec4 <__func__.1363+0x18c>
c010aec4:	21 6c 69 73          	and    DWORD PTR [ecx+ebp*2+0x73],ebp
c010aec8:	74 5f                	je     c010af29 <__func__.1363+0x1f1>
c010aeca:	66 69 6e 64 28 26    	imul   bp,WORD PTR [esi+0x64],0x2628
c010aed0:	28 70 64             	sub    BYTE PTR [eax+0x64],dh
c010aed3:	65 73 74             	gs jae c010af4a <__func__.1363+0x212>
c010aed6:	2d 3e 73 65 6e       	sub    eax,0x6e65733e
c010aedb:	64 65 72 5f          	fs gs jb c010af3e <__func__.1363+0x206>
c010aedf:	6c                   	ins    BYTE PTR es:[edi],dx
c010aee0:	69 73 74 29 2c 26 28 	imul   esi,DWORD PTR [ebx+0x74],0x28262c29
c010aee7:	73 65                	jae    c010af4e <__func__.1363+0x216>
c010aee9:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010aeea:	64 65 72 2d          	fs gs jb c010af1b <__func__.1363+0x1e3>
c010aeee:	3e 73 65             	ds jae c010af56 <__func__.1363+0x21e>
c010aef1:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010aef2:	64 5f                	fs pop edi
c010aef4:	74 61                	je     c010af57 <__func__.1363+0x21f>
c010aef6:	67 29 29             	sub    DWORD PTR [bx+di],ebp
c010aef9:	00 70 73             	add    BYTE PTR [eax+0x73],dh
c010aefc:	72 63                	jb     c010af61 <__func__.1258+0x3>
c010aefe:	20 21                	and    BYTE PTR [ecx],ah
c010af00:	3d 20 72 65 63       	cmp    eax,0x63657220
c010af05:	65 69 76 65 72 00 73 	imul   esi,DWORD PTR gs:[esi+0x65],0x72730072
c010af0c:	72 
c010af0d:	63 5f 65             	arpl   WORD PTR [edi+0x65],bx
c010af10:	6c                   	ins    BYTE PTR es:[edi],dx
c010af11:	65 6d                	gs ins DWORD PTR es:[edi],dx
c010af13:	20 21                	and    BYTE PTR [ecx],ah
c010af15:	3d 20 4e 55 4c       	cmp    eax,0x4c554e20
c010af1a:	4c                   	dec    esp
c010af1b:	00 28                	add    BYTE PTR [eax],ch
c010af1d:	66 75 6e             	data16 jne c010af8e <__func__.1233+0x1b>
c010af20:	63 74 69 6f          	arpl   WORD PTR [ecx+ebp*2+0x6f],si
c010af24:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010af25:	20 3d 3d 20 53 45    	and    BYTE PTR ds:0x4553203d,bh
c010af2b:	4e                   	dec    esi
c010af2c:	44                   	inc    esp
c010af2d:	29 20                	sub    DWORD PTR [eax],esp
c010af2f:	7c 7c                	jl     c010afad <__func__.1233+0x3a>
c010af31:	20 28                	and    BYTE PTR [eax],ch
c010af33:	66 75 6e             	data16 jne c010afa4 <__func__.1233+0x31>
c010af36:	63 74 69 6f          	arpl   WORD PTR [ecx+ebp*2+0x6f],si
c010af3a:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010af3b:	20 3d 3d 20 52 45    	and    BYTE PTR ds:0x4552203d,bh
c010af41:	43                   	inc    ebx
c010af42:	45                   	inc    ebp
c010af43:	49                   	dec    ecx
c010af44:	56                   	push   esi
c010af45:	45                   	inc    ebp
c010af46:	29 20                	sub    DWORD PTR [eax],esp
c010af48:	7c 7c                	jl     c010afc6 <__func__.1233+0x53>
c010af4a:	20 28                	and    BYTE PTR [eax],ch
c010af4c:	66 75 6e             	data16 jne c010afbd <__func__.1233+0x4a>
c010af4f:	63 74 69 6f          	arpl   WORD PTR [ecx+ebp*2+0x6f],si
c010af53:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010af54:	20 3d 3d 20 42 4f    	and    BYTE PTR ds:0x4f42203d,bh
c010af5a:	54                   	push   esp
c010af5b:	48                   	dec    eax
c010af5c:	29 00                	sub    DWORD PTR [eax],eax

c010af5e <__func__.1258>:
c010af5e:	73 79                	jae    c010afd9 <__func__.1233+0x66>
c010af60:	73 5f                	jae    c010afc1 <__func__.1233+0x4e>
c010af62:	73 65                	jae    c010afc9 <__func__.1233+0x56>
c010af64:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010af65:	64 72 65             	fs jb  c010afcd <__func__.1233+0x5a>
c010af68:	63 00                	arpl   WORD PTR [eax],ax

c010af6a <__func__.1245>:
c010af6a:	6d                   	ins    DWORD PTR es:[edi],dx
c010af6b:	73 67                	jae    c010afd4 <__func__.1233+0x61>
c010af6d:	5f                   	pop    edi
c010af6e:	72 65                	jb     c010afd5 <__func__.1233+0x62>
c010af70:	63 76 00             	arpl   WORD PTR [esi+0x0],si

c010af73 <__func__.1233>:
c010af73:	6d                   	ins    DWORD PTR es:[edi],dx
c010af74:	73 67                	jae    c010afdd <__func__.1233+0x6a>
c010af76:	5f                   	pop    edi
c010af77:	73 65                	jae    c010afde <__func__.1233+0x6b>
c010af79:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010af7a:	64 00 50 65          	add    BYTE PTR fs:[eax+0x65],dl
c010af7e:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010af7f:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c010af82:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c010af87:	65 6c                	gs ins BYTE PTR es:[edi],dx
c010af89:	20 28                	and    BYTE PTR [eax],ch
c010af8b:	50                   	push   eax
c010af8c:	4b                   	dec    ebx
c010af8d:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010af8e:	29 20                	sub    DWORD PTR [eax],esp
c010af90:	30 2e                	xor    BYTE PTR [esi],ch
c010af92:	30 2e                	xor    BYTE PTR [esi],ch
c010af94:	31 20                	xor    DWORD PTR [eax],esp
c010af96:	41                   	inc    ecx
c010af97:	75 67                	jne    c010b000 <__func__.1233+0x8d>
c010af99:	2e 00 00             	add    BYTE PTR cs:[eax],al
c010af9c:	50                   	push   eax
c010af9d:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c010af9f:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c010afa2:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c010afa7:	65 6c                	gs ins BYTE PTR es:[edi],dx
c010afa9:	20 28                	and    BYTE PTR [eax],ch
c010afab:	50                   	push   eax
c010afac:	4b                   	dec    ebx
c010afad:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010afae:	29 20                	sub    DWORD PTR [eax],esp
c010afb0:	30 2e                	xor    BYTE PTR [esi],ch
c010afb2:	30 2e                	xor    BYTE PTR [esi],ch
c010afb4:	31 20                	xor    DWORD PTR [eax],esp
c010afb6:	41                   	inc    ecx
c010afb7:	75 67                	jne    c010b020 <__func__.870+0xf>
c010afb9:	2e 00 00             	add    BYTE PTR cs:[eax],al
c010afbc:	62 79 74             	bound  edi,QWORD PTR [ecx+0x74]
c010afbf:	65 5f                	gs pop edi
c010afc1:	69 6e 64 65 78 20 3c 	imul   ebp,DWORD PTR [esi+0x64],0x3c207865
c010afc8:	20 28                	and    BYTE PTR [eax],ch
c010afca:	62 74 6d 70          	bound  esi,QWORD PTR [ebp+ebp*2+0x70]
c010afce:	2d 3e 62 74 6d       	sub    eax,0x6d74623e
c010afd3:	70 5f                	jo     c010b034 <__func__.870+0x23>
c010afd5:	62 79 74             	bound  edi,QWORD PTR [ecx+0x74]
c010afd8:	65 73 5f             	gs jae c010b03a <__func__.870+0x29>
c010afdb:	6c                   	ins    BYTE PTR es:[edi],dx
c010afdc:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c010afde:	29 00                	sub    DWORD PTR [eax],eax
c010afe0:	6c                   	ins    BYTE PTR es:[edi],dx
c010afe1:	69 62 2f 62 69 74 6d 	imul   esp,DWORD PTR [edx+0x2f],0x6d746962
c010afe8:	61                   	popa   
c010afe9:	70 2e                	jo     c010b019 <__func__.870+0x8>
c010afeb:	63 00                	arpl   WORD PTR [eax],ax
c010afed:	76 61                	jbe    c010b050 <__func__.870+0x3f>
c010afef:	6c                   	ins    BYTE PTR es:[edi],dx
c010aff0:	75 65                	jne    c010b057 <__func__.870+0x46>
c010aff2:	20 3d 3d 20 30 20    	and    BYTE PTR ds:0x2030203d,bh
c010aff8:	7c 7c                	jl     c010b076 <__func__.870+0x65>
c010affa:	20 76 61             	and    BYTE PTR [esi+0x61],dh
c010affd:	6c                   	ins    BYTE PTR es:[edi],dx
c010affe:	75 65                	jne    c010b065 <__func__.870+0x54>
c010b000:	20 3d 3d 20 31 00    	and    BYTE PTR ds:0x31203d,bh

c010b006 <__func__.887>:
c010b006:	62 69 74             	bound  ebp,QWORD PTR [ecx+0x74]
c010b009:	6d                   	ins    DWORD PTR es:[edi],dx
c010b00a:	61                   	popa   
c010b00b:	70 5f                	jo     c010b06c <__func__.870+0x5b>
c010b00d:	73 65                	jae    c010b074 <__func__.870+0x63>
c010b00f:	74 00                	je     c010b011 <__func__.870>

c010b011 <__func__.870>:
c010b011:	62 69 74             	bound  ebp,QWORD PTR [ecx+0x74]
c010b014:	6d                   	ins    DWORD PTR es:[edi],dx
c010b015:	61                   	popa   
c010b016:	70 5f                	jo     c010b077 <__func__.870+0x66>
c010b018:	61                   	popa   
c010b019:	6c                   	ins    BYTE PTR es:[edi],dx
c010b01a:	6c                   	ins    BYTE PTR es:[edi],dx
c010b01b:	6f                   	outs   dx,DWORD PTR ds:[esi]
c010b01c:	63 00                	arpl   WORD PTR [eax],ax
c010b01e:	00 00                	add    BYTE PTR [eax],al
c010b020:	50                   	push   eax
c010b021:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c010b023:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c010b026:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c010b02b:	65 6c                	gs ins BYTE PTR es:[edi],dx
c010b02d:	20 28                	and    BYTE PTR [eax],ch
c010b02f:	50                   	push   eax
c010b030:	4b                   	dec    ebx
c010b031:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010b032:	29 20                	sub    DWORD PTR [eax],esp
c010b034:	30 2e                	xor    BYTE PTR [esi],ch
c010b036:	30 2e                	xor    BYTE PTR [esi],ch
c010b038:	31 20                	xor    DWORD PTR [eax],esp
c010b03a:	41                   	inc    ecx
c010b03b:	75 67                	jne    c010b0a4 <__func__.1181+0x1>
c010b03d:	2e 00 00             	add    BYTE PTR cs:[eax],al
c010b040:	66 69 66 6f 2d 3e    	imul   sp,WORD PTR [esi+0x6f],0x3e2d
c010b046:	74 79                	je     c010b0c1 <__func__.1181+0x1e>
c010b048:	70 65                	jo     c010b0af <__func__.1181+0xc>
c010b04a:	20 3d 3d 20 38 20    	and    BYTE PTR ds:0x2038203d,bh
c010b050:	7c 7c                	jl     c010b0ce <__func__.1181+0x2b>
c010b052:	20 66 69             	and    BYTE PTR [esi+0x69],ah
c010b055:	66 6f                	outs   dx,WORD PTR ds:[esi]
c010b057:	2d 3e 74 79 70       	sub    eax,0x7079743e
c010b05c:	65 20 3d 3d 20 31 36 	and    BYTE PTR gs:0x3631203d,bh
c010b063:	20 7c 7c 20          	and    BYTE PTR [esp+edi*2+0x20],bh
c010b067:	66 69 66 6f 2d 3e    	imul   sp,WORD PTR [esi+0x6f],0x3e2d
c010b06d:	74 79                	je     c010b0e8 <__func__.1181+0x45>
c010b06f:	70 65                	jo     c010b0d6 <__func__.1181+0x33>
c010b071:	20 3d 3d 20 33 32    	and    BYTE PTR ds:0x3233203d,bh
c010b077:	20 7c 7c 20          	and    BYTE PTR [esp+edi*2+0x20],bh
c010b07b:	66 69 66 6f 2d 3e    	imul   sp,WORD PTR [esi+0x6f],0x3e2d
c010b081:	74 79                	je     c010b0fc <__func__.1181+0x59>
c010b083:	70 65                	jo     c010b0ea <__func__.1181+0x47>
c010b085:	20 3d 3d 20 36 34    	and    BYTE PTR ds:0x3436203d,bh
c010b08b:	00 64 65 76          	add    BYTE PTR [ebp+eiz*2+0x76],ah
c010b08f:	69 63 65 2f 66 69 66 	imul   esp,DWORD PTR [ebx+0x65],0x6669662f
c010b096:	6f                   	outs   dx,DWORD PTR ds:[esi]
c010b097:	2e 63 00             	arpl   WORD PTR cs:[eax],ax

c010b09a <__func__.1192>:
c010b09a:	66 69 66 6f 5f 67    	imul   sp,WORD PTR [esi+0x6f],0x675f
c010b0a0:	65 74 00             	gs je  c010b0a3 <__func__.1181>

c010b0a3 <__func__.1181>:
c010b0a3:	66 69 66 6f 5f 70    	imul   sp,WORD PTR [esi+0x6f],0x705f
c010b0a9:	75 74                	jne    c010b11f <__func__.1181+0x7c>
c010b0ab:	00 50 65             	add    BYTE PTR [eax+0x65],dl
c010b0ae:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010b0af:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c010b0b2:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c010b0b7:	65 6c                	gs ins BYTE PTR es:[edi],dx
c010b0b9:	20 28                	and    BYTE PTR [eax],ch
c010b0bb:	50                   	push   eax
c010b0bc:	4b                   	dec    ebx
c010b0bd:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010b0be:	29 20                	sub    DWORD PTR [eax],esp
c010b0c0:	30 2e                	xor    BYTE PTR [esi],ch
c010b0c2:	30 2e                	xor    BYTE PTR [esi],ch
c010b0c4:	31 20                	xor    DWORD PTR [eax],esp
c010b0c6:	41                   	inc    ecx
c010b0c7:	75 67                	jne    c010b130 <__func__.1181+0x8d>
c010b0c9:	2e 00 00             	add    BYTE PTR cs:[eax],al
c010b0cc:	50                   	push   eax
c010b0cd:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c010b0cf:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c010b0d2:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c010b0d7:	65 6c                	gs ins BYTE PTR es:[edi],dx
c010b0d9:	20 28                	and    BYTE PTR [eax],ch
c010b0db:	50                   	push   eax
c010b0dc:	4b                   	dec    ebx
c010b0dd:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010b0de:	29 20                	sub    DWORD PTR [eax],esp
c010b0e0:	30 2e                	xor    BYTE PTR [esi],ch
c010b0e2:	30 2e                	xor    BYTE PTR [esi],ch
c010b0e4:	31 20                	xor    DWORD PTR [eax],esp
c010b0e6:	41                   	inc    ecx
c010b0e7:	75 67                	jne    c010b150 <__func__.1181+0xad>
c010b0e9:	2e 00 00             	add    BYTE PTR cs:[eax],al
c010b0ec:	54                   	push   esp
c010b0ed:	5e                   	pop    esi
c010b0ee:	10 c0                	adc    al,al
c010b0f0:	cf                   	iret   
c010b0f1:	5d                   	pop    ebp
c010b0f2:	10 c0                	adc    al,al
c010b0f4:	cf                   	iret   
c010b0f5:	5d                   	pop    ebp
c010b0f6:	10 c0                	adc    al,al
c010b0f8:	cf                   	iret   
c010b0f9:	5d                   	pop    ebp
c010b0fa:	10 c0                	adc    al,al
c010b0fc:	cf                   	iret   
c010b0fd:	5d                   	pop    ebp
c010b0fe:	10 c0                	adc    al,al
c010b100:	cf                   	iret   
c010b101:	5d                   	pop    ebp
c010b102:	10 c0                	adc    al,al
c010b104:	cf                   	iret   
c010b105:	5d                   	pop    ebp
c010b106:	10 c0                	adc    al,al
c010b108:	cf                   	iret   
c010b109:	5d                   	pop    ebp
c010b10a:	10 c0                	adc    al,al
c010b10c:	77 5d                	ja     c010b16b <__func__.1181+0xc8>
c010b10e:	10 c0                	adc    al,al
c010b110:	c1 5d 10 c0          	rcr    DWORD PTR [ebp+0x10],0xc0
c010b114:	91                   	xchg   ecx,eax
c010b115:	5d                   	pop    ebp
c010b116:	10 c0                	adc    al,al
c010b118:	cf                   	iret   
c010b119:	5d                   	pop    ebp
c010b11a:	10 c0                	adc    al,al
c010b11c:	cf                   	iret   
c010b11d:	5d                   	pop    ebp
c010b11e:	10 c0                	adc    al,al
c010b120:	91                   	xchg   ecx,eax
c010b121:	5d                   	pop    ebp
c010b122:	10 c0                	adc    al,al
c010b124:	50                   	push   eax
c010b125:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c010b127:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c010b12a:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c010b12f:	65 6c                	gs ins BYTE PTR es:[edi],dx
c010b131:	20 28                	and    BYTE PTR [eax],ch
c010b133:	50                   	push   eax
c010b134:	4b                   	dec    ebx
c010b135:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010b136:	29 20                	sub    DWORD PTR [eax],esp
c010b138:	30 2e                	xor    BYTE PTR [esi],ch
c010b13a:	30 2e                	xor    BYTE PTR [esi],ch
c010b13c:	31 20                	xor    DWORD PTR [eax],esp
c010b13e:	41                   	inc    ecx
c010b13f:	75 67                	jne    c010b1a8 <__func__.854+0x5>
c010b141:	2e 00 64 73 74       	add    BYTE PTR cs:[ebx+esi*2+0x74],ah
c010b146:	5f                   	pop    edi
c010b147:	5f                   	pop    edi
c010b148:	20 21                	and    BYTE PTR [ecx],ah
c010b14a:	3d 20 4e 55 4c       	cmp    eax,0x4c554e20
c010b14f:	4c                   	dec    esp
c010b150:	00 6c 69 62          	add    BYTE PTR [ecx+ebp*2+0x62],ch
c010b154:	63 2f                	arpl   WORD PTR [edi],bp
c010b156:	73 74                	jae    c010b1cc <__func__.843+0x22>
c010b158:	72 69                	jb     c010b1c3 <__func__.843+0x19>
c010b15a:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010b15b:	67 2e 63 00          	arpl   WORD PTR cs:[bx+si],ax
c010b15f:	00 64 73 74          	add    BYTE PTR [ebx+esi*2+0x74],ah
c010b163:	5f                   	pop    edi
c010b164:	5f                   	pop    edi
c010b165:	20 21                	and    BYTE PTR [ecx],ah
c010b167:	3d 20 4e 55 4c       	cmp    eax,0x4c554e20
c010b16c:	4c                   	dec    esp
c010b16d:	20 26                	and    BYTE PTR [esi],ah
c010b16f:	26 20 73 72          	and    BYTE PTR es:[ebx+0x72],dh
c010b173:	63 5f 5f             	arpl   WORD PTR [edi+0x5f],bx
c010b176:	20 21                	and    BYTE PTR [ecx],ah
c010b178:	3d 20 4e 55 4c       	cmp    eax,0x4c554e20
c010b17d:	4c                   	dec    esp
c010b17e:	00 70 31             	add    BYTE PTR [eax+0x31],dh
c010b181:	5f                   	pop    edi
c010b182:	5f                   	pop    edi
c010b183:	20 21                	and    BYTE PTR [ecx],ah
c010b185:	3d 20 4e 55 4c       	cmp    eax,0x4c554e20
c010b18a:	4c                   	dec    esp
c010b18b:	20 26                	and    BYTE PTR [esi],ah
c010b18d:	26 20 70 32          	and    BYTE PTR es:[eax+0x32],dh
c010b191:	5f                   	pop    edi
c010b192:	5f                   	pop    edi
c010b193:	20 21                	and    BYTE PTR [ecx],ah
c010b195:	3d 20 4e 55 4c       	cmp    eax,0x4c554e20
c010b19a:	4c                   	dec    esp
	...

c010b19c <__func__.866>:
c010b19c:	6d                   	ins    DWORD PTR es:[edi],dx
c010b19d:	65 6d                	gs ins DWORD PTR es:[edi],dx
c010b19f:	63 6d 70             	arpl   WORD PTR [ebp+0x70],bp
	...

c010b1a3 <__func__.854>:
c010b1a3:	6d                   	ins    DWORD PTR es:[edi],dx
c010b1a4:	65 6d                	gs ins DWORD PTR es:[edi],dx
c010b1a6:	63 70 79             	arpl   WORD PTR [eax+0x79],si
	...

c010b1aa <__func__.843>:
c010b1aa:	6d                   	ins    DWORD PTR es:[edi],dx
c010b1ab:	65 6d                	gs ins DWORD PTR es:[edi],dx
c010b1ad:	73 65                	jae    c010b214 <__func__.843+0x6a>
c010b1af:	74 00                	je     c010b1b1 <__func__.843+0x7>
c010b1b1:	00 00                	add    BYTE PTR [eax],al
c010b1b3:	00 50 65             	add    BYTE PTR [eax+0x65],dl
c010b1b6:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010b1b7:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c010b1ba:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c010b1bf:	65 6c                	gs ins BYTE PTR es:[edi],dx
c010b1c1:	20 28                	and    BYTE PTR [eax],ch
c010b1c3:	50                   	push   eax
c010b1c4:	4b                   	dec    ebx
c010b1c5:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010b1c6:	29 20                	sub    DWORD PTR [eax],esp
c010b1c8:	30 2e                	xor    BYTE PTR [esi],ch
c010b1ca:	30 2e                	xor    BYTE PTR [esi],ch
c010b1cc:	31 20                	xor    DWORD PTR [eax],esp
c010b1ce:	41                   	inc    ecx
c010b1cf:	75 67                	jne    c010b238 <_erodata+0x1>
c010b1d1:	2e 00 00             	add    BYTE PTR cs:[eax],al
c010b1d4:	d9 64 10 c0          	fldenv [eax+edx*1-0x40]
c010b1d8:	cc                   	int3   
c010b1d9:	64 10 c0             	fs adc al,al
c010b1dc:	cc                   	int3   
c010b1dd:	64 10 c0             	fs adc al,al
c010b1e0:	d9 64 10 c0          	fldenv [eax+edx*1-0x40]
c010b1e4:	cc                   	int3   
c010b1e5:	64 10 c0             	fs adc al,al
c010b1e8:	cc                   	int3   
c010b1e9:	64 10 c0             	fs adc al,al
c010b1ec:	cc                   	int3   
c010b1ed:	64 10 c0             	fs adc al,al
c010b1f0:	cc                   	int3   
c010b1f1:	64 10 c0             	fs adc al,al
c010b1f4:	cc                   	int3   
c010b1f5:	64 10 c0             	fs adc al,al
c010b1f8:	cc                   	int3   
c010b1f9:	64 10 c0             	fs adc al,al
c010b1fc:	cc                   	int3   
c010b1fd:	64 10 c0             	fs adc al,al
c010b200:	b4 64                	mov    ah,0x64
c010b202:	10 c0                	adc    al,al
c010b204:	cc                   	int3   
c010b205:	64 10 c0             	fs adc al,al
c010b208:	bd 64 10 c0 cc       	mov    ebp,0xccc01064
c010b20d:	64 10 c0             	fs adc al,al
c010b210:	cc                   	int3   
c010b211:	64 10 c0             	fs adc al,al
c010b214:	c6                   	(bad)  
c010b215:	64 10 c0             	fs adc al,al
c010b218:	50                   	push   eax
c010b219:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c010b21b:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c010b21e:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c010b223:	65 6c                	gs ins BYTE PTR es:[edi],dx
c010b225:	20 28                	and    BYTE PTR [eax],ch
c010b227:	50                   	push   eax
c010b228:	4b                   	dec    ebx
c010b229:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010b22a:	29 20                	sub    DWORD PTR [eax],esp
c010b22c:	30 2e                	xor    BYTE PTR [esi],ch
c010b22e:	30 2e                	xor    BYTE PTR [esi],ch
c010b230:	31 20                	xor    DWORD PTR [eax],esp
c010b232:	41                   	inc    ecx
c010b233:	75 67                	jne    c010b29c <this_thread_tag+0x1c>
c010b235:	2e                   	cs
	...

Disassembly of section .bss:

c010b240 <_bss>:
	...

c010b270 <user_pool_start>:
	...

c010b280 <this_thread_tag>:
	...

c010b2a0 <pid_pool>:
	...

c010b2e0 <tss>:
	...

c010b360 <console_lock>:
	...

c010b3a0 <buf>:
	...

c010b3e0 <ctrl_status>:
c010b3e0:	00 00                	add    BYTE PTR [eax],al
	...

c010b3e4 <shift_status>:
c010b3e4:	00 00                	add    BYTE PTR [eax],al
	...

c010b3e8 <alt_status>:
c010b3e8:	00 00                	add    BYTE PTR [eax],al
	...

c010b3ec <casplock_status>:
c010b3ec:	00 00                	add    BYTE PTR [eax],al
	...

c010b3f0 <ext_scandcode>:
c010b3f0:	00 00                	add    BYTE PTR [eax],al
	...

c010b3f4 <i>:
c010b3f4:	00 00                	add    BYTE PTR [eax],al
	...

c010b3f8 <MouseData>:
	...

c010b40c <ticks>:
	...

c010b414 <_ebss>:
	...

c010b420 <intr_name>:
	...

c010b560 <idt>:
	...

c010b7e0 <idt_table>:
	...

c010b920 <kvinfo>:
	...

c010d860 <k_desc>:
	...

c010d920 <user_pool>:
	...

c010d960 <kernel_vaddr>:
	...

c010d9a0 <upinfo>:
	...

c010f8e0 <kpinfo>:
	...

c0111820 <kernel_pool>:
	...

c011185c <ready_list>:
	...

c0111874 <all_list>:
	...

c011188c <main_thread>:
	...

c01118a0 <keybuf>:
	...

c0111900 <background>:
	...

c0111920 <Screen_Ctl>:
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
