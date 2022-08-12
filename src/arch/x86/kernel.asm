
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
c0100023:	83 ec 28             	sub    esp,0x28
c0100026:	c7 04 24 00 00 00 00 	mov    DWORD PTR [esp],0x0
c010002d:	e8 4f 7f 00 00       	call   c0107f81 <set_cursor>
c0100032:	c7 45 f4 00 00 00 00 	mov    DWORD PTR [ebp-0xc],0x0
c0100039:	eb 18                	jmp    c0100053 <kernel_main+0x33>
c010003b:	c7 44 24 04 0a 00 00 	mov    DWORD PTR [esp+0x4],0xa
c0100042:	00 
c0100043:	c7 04 24 07 00 00 00 	mov    DWORD PTR [esp],0x7
c010004a:	e8 88 7a 00 00       	call   c0107ad7 <put_char>
c010004f:	83 45 f4 01          	add    DWORD PTR [ebp-0xc],0x1
c0100053:	83 7d f4 22          	cmp    DWORD PTR [ebp-0xc],0x22
c0100057:	7e e2                	jle    c010003b <kernel_main+0x1b>
c0100059:	e8 e2 88 00 00       	call   c0108940 <init_screen>
c010005e:	c7 04 24 00 00 00 00 	mov    DWORD PTR [esp],0x0
c0100065:	e8 17 7f 00 00       	call   c0107f81 <set_cursor>
c010006a:	e8 41 09 00 00       	call   c01009b0 <init_all>
c010006f:	e8 25 16 00 00       	call   c0101699 <intr_enable>
c0100074:	c7 44 24 0c 7f b7 10 	mov    DWORD PTR [esp+0xc],0xc010b77f
c010007b:	c0 
c010007c:	c7 44 24 08 d2 00 10 	mov    DWORD PTR [esp+0x8],0xc01000d2
c0100083:	c0 
c0100084:	c7 44 24 04 1f 00 00 	mov    DWORD PTR [esp+0x4],0x1f
c010008b:	00 
c010008c:	c7 04 24 86 b7 10 c0 	mov    DWORD PTR [esp],0xc010b786
c0100093:	e8 d1 2e 00 00       	call   c0102f69 <thread_start>
c0100098:	c7 44 24 0c 00 00 00 	mov    DWORD PTR [esp+0xc],0x0
c010009f:	00 
c01000a0:	c7 44 24 08 07 06 10 	mov    DWORD PTR [esp+0x8],0xc0100607
c01000a7:	c0 
c01000a8:	c7 44 24 04 1f 00 00 	mov    DWORD PTR [esp+0x4],0x1f
c01000af:	00 
c01000b0:	c7 04 24 8a b7 10 c0 	mov    DWORD PTR [esp],0xc010b78a
c01000b7:	e8 ad 2e 00 00       	call   c0102f69 <thread_start>
c01000bc:	c7 44 24 04 90 b7 10 	mov    DWORD PTR [esp+0x4],0xc010b790
c01000c3:	c0 
c01000c4:	c7 04 24 fd 07 10 c0 	mov    DWORD PTR [esp],0xc01007fd
c01000cb:	e8 6b 37 00 00       	call   c010383b <process_execute>
c01000d0:	eb fe                	jmp    c01000d0 <kernel_main+0xb0>

c01000d2 <k_thread_a>:
c01000d2:	55                   	push   ebp
c01000d3:	89 e5                	mov    ebp,esp
c01000d5:	57                   	push   edi
c01000d6:	56                   	push   esi
c01000d7:	53                   	push   ebx
c01000d8:	81 ec 9c 00 00 00    	sub    esp,0x9c
c01000de:	b8 24 7c 00 c0       	mov    eax,0xc0007c24
c01000e3:	8b 00                	mov    eax,DWORD PTR [eax]
c01000e5:	69 c0 c8 00 00 00    	imul   eax,eax,0xc8
c01000eb:	89 04 24             	mov    DWORD PTR [esp],eax
c01000ee:	e8 c5 16 00 00       	call   c01017b8 <kmalloc>
c01000f3:	89 45 d8             	mov    DWORD PTR [ebp-0x28],eax
c01000f6:	b8 24 7c 00 c0       	mov    eax,0xc0007c24
c01000fb:	8b 00                	mov    eax,DWORD PTR [eax]
c01000fd:	8b 55 d8             	mov    edx,DWORD PTR [ebp-0x28]
c0100100:	89 54 24 08          	mov    DWORD PTR [esp+0x8],edx
c0100104:	c7 44 24 04 32 00 00 	mov    DWORD PTR [esp+0x4],0x32
c010010b:	00 
c010010c:	89 04 24             	mov    DWORD PTR [esp],eax
c010010f:	e8 e5 70 00 00       	call   c01071f9 <api_viewinit>
c0100114:	89 45 d4             	mov    DWORD PTR [ebp-0x2c],eax
c0100117:	b8 24 7c 00 c0       	mov    eax,0xc0007c24
c010011c:	8b 00                	mov    eax,DWORD PTR [eax]
c010011e:	83 e8 01             	sub    eax,0x1
c0100121:	89 c3                	mov    ebx,eax
c0100123:	c7 44 24 08 c6 00 00 	mov    DWORD PTR [esp+0x8],0xc6
c010012a:	00 
c010012b:	c7 44 24 04 c6 00 00 	mov    DWORD PTR [esp+0x4],0xc6
c0100132:	00 
c0100133:	c7 04 24 c6 00 00 00 	mov    DWORD PTR [esp],0xc6
c010013a:	e8 25 84 00 00       	call   c0108564 <rgb>
c010013f:	ba 24 7c 00 c0       	mov    edx,0xc0007c24
c0100144:	8b 12                	mov    edx,DWORD PTR [edx]
c0100146:	c7 44 24 18 31 00 00 	mov    DWORD PTR [esp+0x18],0x31
c010014d:	00 
c010014e:	89 5c 24 14          	mov    DWORD PTR [esp+0x14],ebx
c0100152:	c7 44 24 10 00 00 00 	mov    DWORD PTR [esp+0x10],0x0
c0100159:	00 
c010015a:	c7 44 24 0c 00 00 00 	mov    DWORD PTR [esp+0xc],0x0
c0100161:	00 
c0100162:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
c0100166:	89 54 24 04          	mov    DWORD PTR [esp+0x4],edx
c010016a:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
c010016d:	89 04 24             	mov    DWORD PTR [esp],eax
c0100170:	e8 b7 85 00 00       	call   c010872c <viewFill>
c0100175:	c7 45 d0 03 00 00 00 	mov    DWORD PTR [ebp-0x30],0x3
c010017c:	8b 45 d0             	mov    eax,DWORD PTR [ebp-0x30]
c010017f:	83 c0 28             	add    eax,0x28
c0100182:	89 45 84             	mov    DWORD PTR [ebp-0x7c],eax
c0100185:	8b 45 d0             	mov    eax,DWORD PTR [ebp-0x30]
c0100188:	8d 78 28             	lea    edi,[eax+0x28]
c010018b:	8b 45 d0             	mov    eax,DWORD PTR [ebp-0x30]
c010018e:	8d 70 0a             	lea    esi,[eax+0xa]
c0100191:	8b 45 d0             	mov    eax,DWORD PTR [ebp-0x30]
c0100194:	8d 58 0a             	lea    ebx,[eax+0xa]
c0100197:	c7 44 24 08 84 00 00 	mov    DWORD PTR [esp+0x8],0x84
c010019e:	00 
c010019f:	c7 44 24 04 84 00 00 	mov    DWORD PTR [esp+0x4],0x84
c01001a6:	00 
c01001a7:	c7 04 24 84 00 00 00 	mov    DWORD PTR [esp],0x84
c01001ae:	e8 b1 83 00 00       	call   c0108564 <rgb>
c01001b3:	ba 24 7c 00 c0       	mov    edx,0xc0007c24
c01001b8:	8b 12                	mov    edx,DWORD PTR [edx]
c01001ba:	8b 4d 84             	mov    ecx,DWORD PTR [ebp-0x7c]
c01001bd:	89 4c 24 18          	mov    DWORD PTR [esp+0x18],ecx
c01001c1:	89 7c 24 14          	mov    DWORD PTR [esp+0x14],edi
c01001c5:	89 74 24 10          	mov    DWORD PTR [esp+0x10],esi
c01001c9:	89 5c 24 0c          	mov    DWORD PTR [esp+0xc],ebx
c01001cd:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
c01001d1:	89 54 24 04          	mov    DWORD PTR [esp+0x4],edx
c01001d5:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
c01001d8:	89 04 24             	mov    DWORD PTR [esp],eax
c01001db:	e8 4c 85 00 00       	call   c010872c <viewFill>
c01001e0:	c7 44 24 08 ff 00 00 	mov    DWORD PTR [esp+0x8],0xff
c01001e7:	00 
c01001e8:	c7 44 24 04 ff 00 00 	mov    DWORD PTR [esp+0x4],0xff
c01001ef:	00 
c01001f0:	c7 04 24 ff 00 00 00 	mov    DWORD PTR [esp],0xff
c01001f7:	e8 68 83 00 00       	call   c0108564 <rgb>
c01001fc:	ba 24 7c 00 c0       	mov    edx,0xc0007c24
c0100201:	8b 12                	mov    edx,DWORD PTR [edx]
c0100203:	c7 44 24 18 28 00 00 	mov    DWORD PTR [esp+0x18],0x28
c010020a:	00 
c010020b:	c7 44 24 14 28 00 00 	mov    DWORD PTR [esp+0x14],0x28
c0100212:	00 
c0100213:	c7 44 24 10 0a 00 00 	mov    DWORD PTR [esp+0x10],0xa
c010021a:	00 
c010021b:	c7 44 24 0c 0a 00 00 	mov    DWORD PTR [esp+0xc],0xa
c0100222:	00 
c0100223:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
c0100227:	89 54 24 04          	mov    DWORD PTR [esp+0x4],edx
c010022b:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
c010022e:	89 04 24             	mov    DWORD PTR [esp],eax
c0100231:	e8 f6 84 00 00       	call   c010872c <viewFill>
c0100236:	c7 45 cc 0a 00 00 00 	mov    DWORD PTR [ebp-0x34],0xa
c010023d:	c7 45 c8 0a 00 00 00 	mov    DWORD PTR [ebp-0x38],0xa
c0100244:	c7 45 e0 00 00 00 00 	mov    DWORD PTR [ebp-0x20],0x0
c010024b:	e9 b1 00 00 00       	jmp    c0100301 <k_thread_a+0x22f>
c0100250:	c7 45 e4 00 00 00 00 	mov    DWORD PTR [ebp-0x1c],0x0
c0100257:	e9 97 00 00 00       	jmp    c01002f3 <k_thread_a+0x221>
c010025c:	8b 55 e0             	mov    edx,DWORD PTR [ebp-0x20]
c010025f:	89 d0                	mov    eax,edx
c0100261:	c1 e0 04             	shl    eax,0x4
c0100264:	29 d0                	sub    eax,edx
c0100266:	03 45 e4             	add    eax,DWORD PTR [ebp-0x1c]
c0100269:	05 00 8b 10 c0       	add    eax,0xc0108b00
c010026e:	0f b6 00             	movzx  eax,BYTE PTR [eax]
c0100271:	3c 23                	cmp    al,0x23
c0100273:	75 7a                	jne    c01002ef <k_thread_a+0x21d>
c0100275:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
c0100278:	83 c0 01             	add    eax,0x1
c010027b:	01 c0                	add    eax,eax
c010027d:	8b 55 c8             	mov    edx,DWORD PTR [ebp-0x38]
c0100280:	01 c2                	add    edx,eax
c0100282:	89 55 80             	mov    DWORD PTR [ebp-0x80],edx
c0100285:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
c0100288:	83 c0 01             	add    eax,0x1
c010028b:	01 c0                	add    eax,eax
c010028d:	89 c7                	mov    edi,eax
c010028f:	03 7d cc             	add    edi,DWORD PTR [ebp-0x34]
c0100292:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
c0100295:	01 c0                	add    eax,eax
c0100297:	89 c6                	mov    esi,eax
c0100299:	03 75 c8             	add    esi,DWORD PTR [ebp-0x38]
c010029c:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
c010029f:	01 c0                	add    eax,eax
c01002a1:	89 c3                	mov    ebx,eax
c01002a3:	03 5d cc             	add    ebx,DWORD PTR [ebp-0x34]
c01002a6:	c7 44 24 08 84 00 00 	mov    DWORD PTR [esp+0x8],0x84
c01002ad:	00 
c01002ae:	c7 44 24 04 84 00 00 	mov    DWORD PTR [esp+0x4],0x84
c01002b5:	00 
c01002b6:	c7 04 24 84 00 00 00 	mov    DWORD PTR [esp],0x84
c01002bd:	e8 a2 82 00 00       	call   c0108564 <rgb>
c01002c2:	ba 24 7c 00 c0       	mov    edx,0xc0007c24
c01002c7:	8b 12                	mov    edx,DWORD PTR [edx]
c01002c9:	8b 4d 80             	mov    ecx,DWORD PTR [ebp-0x80]
c01002cc:	89 4c 24 18          	mov    DWORD PTR [esp+0x18],ecx
c01002d0:	89 7c 24 14          	mov    DWORD PTR [esp+0x14],edi
c01002d4:	89 74 24 10          	mov    DWORD PTR [esp+0x10],esi
c01002d8:	89 5c 24 0c          	mov    DWORD PTR [esp+0xc],ebx
c01002dc:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
c01002e0:	89 54 24 04          	mov    DWORD PTR [esp+0x4],edx
c01002e4:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
c01002e7:	89 04 24             	mov    DWORD PTR [esp],eax
c01002ea:	e8 3d 84 00 00       	call   c010872c <viewFill>
c01002ef:	83 45 e4 01          	add    DWORD PTR [ebp-0x1c],0x1
c01002f3:	83 7d e4 0e          	cmp    DWORD PTR [ebp-0x1c],0xe
c01002f7:	0f 8e 5f ff ff ff    	jle    c010025c <k_thread_a+0x18a>
c01002fd:	83 45 e0 01          	add    DWORD PTR [ebp-0x20],0x1
c0100301:	83 7d e0 0e          	cmp    DWORD PTR [ebp-0x20],0xe
c0100305:	0f 8e 45 ff ff ff    	jle    c0100250 <k_thread_a+0x17e>
c010030b:	8b 45 d0             	mov    eax,DWORD PTR [ebp-0x30]
c010030e:	83 c0 28             	add    eax,0x28
c0100311:	89 85 7c ff ff ff    	mov    DWORD PTR [ebp-0x84],eax
c0100317:	8b 45 d0             	mov    eax,DWORD PTR [ebp-0x30]
c010031a:	8d 78 3c             	lea    edi,[eax+0x3c]
c010031d:	8b 45 d0             	mov    eax,DWORD PTR [ebp-0x30]
c0100320:	8d 70 0a             	lea    esi,[eax+0xa]
c0100323:	8b 45 d0             	mov    eax,DWORD PTR [ebp-0x30]
c0100326:	8d 58 32             	lea    ebx,[eax+0x32]
c0100329:	c7 44 24 08 84 00 00 	mov    DWORD PTR [esp+0x8],0x84
c0100330:	00 
c0100331:	c7 44 24 04 84 00 00 	mov    DWORD PTR [esp+0x4],0x84
c0100338:	00 
c0100339:	c7 04 24 84 00 00 00 	mov    DWORD PTR [esp],0x84
c0100340:	e8 1f 82 00 00       	call   c0108564 <rgb>
c0100345:	ba 24 7c 00 c0       	mov    edx,0xc0007c24
c010034a:	8b 12                	mov    edx,DWORD PTR [edx]
c010034c:	8b 8d 7c ff ff ff    	mov    ecx,DWORD PTR [ebp-0x84]
c0100352:	89 4c 24 18          	mov    DWORD PTR [esp+0x18],ecx
c0100356:	89 7c 24 14          	mov    DWORD PTR [esp+0x14],edi
c010035a:	89 74 24 10          	mov    DWORD PTR [esp+0x10],esi
c010035e:	89 5c 24 0c          	mov    DWORD PTR [esp+0xc],ebx
c0100362:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
c0100366:	89 54 24 04          	mov    DWORD PTR [esp+0x4],edx
c010036a:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
c010036d:	89 04 24             	mov    DWORD PTR [esp],eax
c0100370:	e8 b7 83 00 00       	call   c010872c <viewFill>
c0100375:	c7 44 24 08 ff 00 00 	mov    DWORD PTR [esp+0x8],0xff
c010037c:	00 
c010037d:	c7 44 24 04 ff 00 00 	mov    DWORD PTR [esp+0x4],0xff
c0100384:	00 
c0100385:	c7 04 24 ff 00 00 00 	mov    DWORD PTR [esp],0xff
c010038c:	e8 d3 81 00 00       	call   c0108564 <rgb>
c0100391:	ba 24 7c 00 c0       	mov    edx,0xc0007c24
c0100396:	8b 12                	mov    edx,DWORD PTR [edx]
c0100398:	c7 44 24 18 28 00 00 	mov    DWORD PTR [esp+0x18],0x28
c010039f:	00 
c01003a0:	c7 44 24 14 3c 00 00 	mov    DWORD PTR [esp+0x14],0x3c
c01003a7:	00 
c01003a8:	c7 44 24 10 0a 00 00 	mov    DWORD PTR [esp+0x10],0xa
c01003af:	00 
c01003b0:	c7 44 24 0c 32 00 00 	mov    DWORD PTR [esp+0xc],0x32
c01003b7:	00 
c01003b8:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
c01003bc:	89 54 24 04          	mov    DWORD PTR [esp+0x4],edx
c01003c0:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
c01003c3:	89 04 24             	mov    DWORD PTR [esp],eax
c01003c6:	e8 61 83 00 00       	call   c010872c <viewFill>
c01003cb:	8b 45 d0             	mov    eax,DWORD PTR [ebp-0x30]
c01003ce:	83 c0 27             	add    eax,0x27
c01003d1:	89 85 78 ff ff ff    	mov    DWORD PTR [ebp-0x88],eax
c01003d7:	b8 24 7c 00 c0       	mov    eax,0xc0007c24
c01003dc:	8b 10                	mov    edx,DWORD PTR [eax]
c01003de:	8b 45 d0             	mov    eax,DWORD PTR [ebp-0x30]
c01003e1:	01 d0                	add    eax,edx
c01003e3:	83 e8 0b             	sub    eax,0xb
c01003e6:	89 c6                	mov    esi,eax
c01003e8:	8b 45 d0             	mov    eax,DWORD PTR [ebp-0x30]
c01003eb:	8d 78 09             	lea    edi,[eax+0x9]
c01003ee:	b8 24 7c 00 c0       	mov    eax,0xc0007c24
c01003f3:	8b 10                	mov    edx,DWORD PTR [eax]
c01003f5:	8b 45 d0             	mov    eax,DWORD PTR [ebp-0x30]
c01003f8:	01 d0                	add    eax,edx
c01003fa:	2d 99 00 00 00       	sub    eax,0x99
c01003ff:	89 c3                	mov    ebx,eax
c0100401:	c7 44 24 08 84 00 00 	mov    DWORD PTR [esp+0x8],0x84
c0100408:	00 
c0100409:	c7 44 24 04 84 00 00 	mov    DWORD PTR [esp+0x4],0x84
c0100410:	00 
c0100411:	c7 04 24 84 00 00 00 	mov    DWORD PTR [esp],0x84
c0100418:	e8 47 81 00 00       	call   c0108564 <rgb>
c010041d:	ba 24 7c 00 c0       	mov    edx,0xc0007c24
c0100422:	8b 12                	mov    edx,DWORD PTR [edx]
c0100424:	8b 8d 78 ff ff ff    	mov    ecx,DWORD PTR [ebp-0x88]
c010042a:	89 4c 24 18          	mov    DWORD PTR [esp+0x18],ecx
c010042e:	89 74 24 14          	mov    DWORD PTR [esp+0x14],esi
c0100432:	89 7c 24 10          	mov    DWORD PTR [esp+0x10],edi
c0100436:	89 5c 24 0c          	mov    DWORD PTR [esp+0xc],ebx
c010043a:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
c010043e:	89 54 24 04          	mov    DWORD PTR [esp+0x4],edx
c0100442:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
c0100445:	89 04 24             	mov    DWORD PTR [esp],eax
c0100448:	e8 df 82 00 00       	call   c010872c <viewFill>
c010044d:	b8 24 7c 00 c0       	mov    eax,0xc0007c24
c0100452:	8b 00                	mov    eax,DWORD PTR [eax]
c0100454:	83 e8 0b             	sub    eax,0xb
c0100457:	89 c6                	mov    esi,eax
c0100459:	b8 24 7c 00 c0       	mov    eax,0xc0007c24
c010045e:	8b 00                	mov    eax,DWORD PTR [eax]
c0100460:	2d 99 00 00 00       	sub    eax,0x99
c0100465:	89 c3                	mov    ebx,eax
c0100467:	c7 44 24 08 ff 00 00 	mov    DWORD PTR [esp+0x8],0xff
c010046e:	00 
c010046f:	c7 44 24 04 ff 00 00 	mov    DWORD PTR [esp+0x4],0xff
c0100476:	00 
c0100477:	c7 04 24 ff 00 00 00 	mov    DWORD PTR [esp],0xff
c010047e:	e8 e1 80 00 00       	call   c0108564 <rgb>
c0100483:	ba 24 7c 00 c0       	mov    edx,0xc0007c24
c0100488:	8b 12                	mov    edx,DWORD PTR [edx]
c010048a:	c7 44 24 18 27 00 00 	mov    DWORD PTR [esp+0x18],0x27
c0100491:	00 
c0100492:	89 74 24 14          	mov    DWORD PTR [esp+0x14],esi
c0100496:	c7 44 24 10 09 00 00 	mov    DWORD PTR [esp+0x10],0x9
c010049d:	00 
c010049e:	89 5c 24 0c          	mov    DWORD PTR [esp+0xc],ebx
c01004a2:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
c01004a6:	89 54 24 04          	mov    DWORD PTR [esp+0x4],edx
c01004aa:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
c01004ad:	89 04 24             	mov    DWORD PTR [esp],eax
c01004b0:	e8 77 82 00 00       	call   c010872c <viewFill>
c01004b5:	8d 45 b0             	lea    eax,[ebp-0x50]
c01004b8:	89 04 24             	mov    DWORD PTR [esp],eax
c01004bb:	e8 53 40 00 00       	call   c0104513 <get_time>
c01004c0:	a1 2c ce 10 c0       	mov    eax,ds:0xc010ce2c
c01004c5:	89 45 dc             	mov    DWORD PTR [ebp-0x24],eax
c01004c8:	8b 75 b4             	mov    esi,DWORD PTR [ebp-0x4c]
c01004cb:	8b 5d b8             	mov    ebx,DWORD PTR [ebp-0x48]
c01004ce:	8b 4d bc             	mov    ecx,DWORD PTR [ebp-0x44]
c01004d1:	8b 55 c0             	mov    edx,DWORD PTR [ebp-0x40]
c01004d4:	8b 45 c4             	mov    eax,DWORD PTR [ebp-0x3c]
c01004d7:	89 74 24 18          	mov    DWORD PTR [esp+0x18],esi
c01004db:	89 5c 24 14          	mov    DWORD PTR [esp+0x14],ebx
c01004df:	89 4c 24 10          	mov    DWORD PTR [esp+0x10],ecx
c01004e3:	89 54 24 0c          	mov    DWORD PTR [esp+0xc],edx
c01004e7:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
c01004eb:	c7 44 24 04 9b b7 10 	mov    DWORD PTR [esp+0x4],0xc010b79b
c01004f2:	c0 
c01004f3:	8d 45 90             	lea    eax,[ebp-0x70]
c01004f6:	89 04 24             	mov    DWORD PTR [esp],eax
c01004f9:	e8 52 7d 00 00       	call   c0108250 <sprintf>
c01004fe:	b8 24 7c 00 c0       	mov    eax,0xc0007c24
c0100503:	8b 00                	mov    eax,DWORD PTR [eax]
c0100505:	83 e8 11             	sub    eax,0x11
c0100508:	89 c6                	mov    esi,eax
c010050a:	b8 24 7c 00 c0       	mov    eax,0xc0007c24
c010050f:	8b 00                	mov    eax,DWORD PTR [eax]
c0100511:	2d 91 00 00 00       	sub    eax,0x91
c0100516:	89 c3                	mov    ebx,eax
c0100518:	c7 44 24 08 ff 00 00 	mov    DWORD PTR [esp+0x8],0xff
c010051f:	00 
c0100520:	c7 44 24 04 ff 00 00 	mov    DWORD PTR [esp+0x4],0xff
c0100527:	00 
c0100528:	c7 04 24 ff 00 00 00 	mov    DWORD PTR [esp],0xff
c010052f:	e8 30 80 00 00       	call   c0108564 <rgb>
c0100534:	ba 24 7c 00 c0       	mov    edx,0xc0007c24
c0100539:	8b 12                	mov    edx,DWORD PTR [edx]
c010053b:	c7 44 24 18 20 00 00 	mov    DWORD PTR [esp+0x18],0x20
c0100542:	00 
c0100543:	89 74 24 14          	mov    DWORD PTR [esp+0x14],esi
c0100547:	c7 44 24 10 11 00 00 	mov    DWORD PTR [esp+0x10],0x11
c010054e:	00 
c010054f:	89 5c 24 0c          	mov    DWORD PTR [esp+0xc],ebx
c0100553:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
c0100557:	89 54 24 04          	mov    DWORD PTR [esp+0x4],edx
c010055b:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
c010055e:	89 04 24             	mov    DWORD PTR [esp],eax
c0100561:	e8 c6 81 00 00       	call   c010872c <viewFill>
c0100566:	c7 44 24 08 84 00 00 	mov    DWORD PTR [esp+0x8],0x84
c010056d:	00 
c010056e:	c7 44 24 04 84 00 00 	mov    DWORD PTR [esp+0x4],0x84
c0100575:	00 
c0100576:	c7 04 24 84 00 00 00 	mov    DWORD PTR [esp],0x84
c010057d:	e8 e2 7f 00 00       	call   c0108564 <rgb>
c0100582:	ba 24 7c 00 c0       	mov    edx,0xc0007c24
c0100587:	8b 12                	mov    edx,DWORD PTR [edx]
c0100589:	81 ea 91 00 00 00    	sub    edx,0x91
c010058f:	89 d1                	mov    ecx,edx
c0100591:	ba 24 7c 00 c0       	mov    edx,0xc0007c24
c0100596:	8b 12                	mov    edx,DWORD PTR [edx]
c0100598:	8d 5d 90             	lea    ebx,[ebp-0x70]
c010059b:	89 5c 24 14          	mov    DWORD PTR [esp+0x14],ebx
c010059f:	89 44 24 10          	mov    DWORD PTR [esp+0x10],eax
c01005a3:	c7 44 24 0c 11 00 00 	mov    DWORD PTR [esp+0xc],0x11
c01005aa:	00 
c01005ab:	89 4c 24 08          	mov    DWORD PTR [esp+0x8],ecx
c01005af:	89 54 24 04          	mov    DWORD PTR [esp+0x4],edx
c01005b3:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
c01005b6:	89 04 24             	mov    DWORD PTR [esp],eax
c01005b9:	e8 f3 82 00 00       	call   c01088b1 <vput_str>
c01005be:	b8 28 7c 00 c0       	mov    eax,0xc0007c28
c01005c3:	8b 00                	mov    eax,DWORD PTR [eax]
c01005c5:	83 e8 32             	sub    eax,0x32
c01005c8:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
c01005cc:	c7 44 24 04 00 00 00 	mov    DWORD PTR [esp+0x4],0x0
c01005d3:	00 
c01005d4:	8b 45 d4             	mov    eax,DWORD PTR [ebp-0x2c]
c01005d7:	89 04 24             	mov    DWORD PTR [esp],eax
c01005da:	e8 ad 6c 00 00       	call   c010728c <api_viewslide>
c01005df:	90                   	nop
c01005e0:	8b 45 dc             	mov    eax,DWORD PTR [ebp-0x24]
c01005e3:	8d 50 64             	lea    edx,[eax+0x64]
c01005e6:	a1 2c ce 10 c0       	mov    eax,ds:0xc010ce2c
c01005eb:	39 c2                	cmp    edx,eax
c01005ed:	7d f1                	jge    c01005e0 <k_thread_a+0x50e>
c01005ef:	a1 2c ce 10 c0       	mov    eax,ds:0xc010ce2c
c01005f4:	89 45 dc             	mov    DWORD PTR [ebp-0x24],eax
c01005f7:	8d 45 b0             	lea    eax,[ebp-0x50]
c01005fa:	89 04 24             	mov    DWORD PTR [esp],eax
c01005fd:	e8 11 3f 00 00       	call   c0104513 <get_time>
c0100602:	e9 c1 fe ff ff       	jmp    c01004c8 <k_thread_a+0x3f6>

c0100607 <View_thread>:
c0100607:	55                   	push   ebp
c0100608:	89 e5                	mov    ebp,esp
c010060a:	53                   	push   ebx
c010060b:	83 ec 44             	sub    esp,0x44
c010060e:	c7 04 24 00 04 00 00 	mov    DWORD PTR [esp],0x400
c0100615:	e8 2e 6b 00 00       	call   c0107148 <api_malloc>
c010061a:	89 45 e4             	mov    DWORD PTR [ebp-0x1c],eax
c010061d:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
c0100620:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
c0100624:	c7 44 24 04 10 00 00 	mov    DWORD PTR [esp+0x4],0x10
c010062b:	00 
c010062c:	c7 04 24 10 00 00 00 	mov    DWORD PTR [esp],0x10
c0100633:	e8 c1 6b 00 00       	call   c01071f9 <api_viewinit>
c0100638:	89 45 e0             	mov    DWORD PTR [ebp-0x20],eax
c010063b:	c7 45 f0 00 00 00 00 	mov    DWORD PTR [ebp-0x10],0x0
c0100642:	e9 d0 00 00 00       	jmp    c0100717 <View_thread+0x110>
c0100647:	c7 45 f4 00 00 00 00 	mov    DWORD PTR [ebp-0xc],0x0
c010064e:	e9 b6 00 00 00       	jmp    c0100709 <View_thread+0x102>
c0100653:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c0100656:	c1 e0 04             	shl    eax,0x4
c0100659:	03 45 f4             	add    eax,DWORD PTR [ebp-0xc]
c010065c:	05 00 8c 10 c0       	add    eax,0xc0108c00
c0100661:	0f b6 00             	movzx  eax,BYTE PTR [eax]
c0100664:	3c 23                	cmp    al,0x23
c0100666:	75 2f                	jne    c0100697 <View_thread+0x90>
c0100668:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c010066b:	c1 e0 04             	shl    eax,0x4
c010066e:	03 45 f4             	add    eax,DWORD PTR [ebp-0xc]
c0100671:	c1 e0 02             	shl    eax,0x2
c0100674:	89 c3                	mov    ebx,eax
c0100676:	03 5d e4             	add    ebx,DWORD PTR [ebp-0x1c]
c0100679:	c7 44 24 08 ff 00 00 	mov    DWORD PTR [esp+0x8],0xff
c0100680:	00 
c0100681:	c7 44 24 04 ff 00 00 	mov    DWORD PTR [esp+0x4],0xff
c0100688:	00 
c0100689:	c7 04 24 ff 00 00 00 	mov    DWORD PTR [esp],0xff
c0100690:	e8 cf 7e 00 00       	call   c0108564 <rgb>
c0100695:	89 03                	mov    DWORD PTR [ebx],eax
c0100697:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c010069a:	c1 e0 04             	shl    eax,0x4
c010069d:	03 45 f4             	add    eax,DWORD PTR [ebp-0xc]
c01006a0:	05 00 8c 10 c0       	add    eax,0xc0108c00
c01006a5:	0f b6 00             	movzx  eax,BYTE PTR [eax]
c01006a8:	3c 2d                	cmp    al,0x2d
c01006aa:	75 15                	jne    c01006c1 <View_thread+0xba>
c01006ac:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c01006af:	c1 e0 04             	shl    eax,0x4
c01006b2:	03 45 f4             	add    eax,DWORD PTR [ebp-0xc]
c01006b5:	c1 e0 02             	shl    eax,0x2
c01006b8:	03 45 e4             	add    eax,DWORD PTR [ebp-0x1c]
c01006bb:	c7 00 00 00 00 ff    	mov    DWORD PTR [eax],0xff000000
c01006c1:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c01006c4:	c1 e0 04             	shl    eax,0x4
c01006c7:	03 45 f4             	add    eax,DWORD PTR [ebp-0xc]
c01006ca:	05 00 8c 10 c0       	add    eax,0xc0108c00
c01006cf:	0f b6 00             	movzx  eax,BYTE PTR [eax]
c01006d2:	3c 2a                	cmp    al,0x2a
c01006d4:	75 2f                	jne    c0100705 <View_thread+0xfe>
c01006d6:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c01006d9:	c1 e0 04             	shl    eax,0x4
c01006dc:	03 45 f4             	add    eax,DWORD PTR [ebp-0xc]
c01006df:	c1 e0 02             	shl    eax,0x2
c01006e2:	89 c3                	mov    ebx,eax
c01006e4:	03 5d e4             	add    ebx,DWORD PTR [ebp-0x1c]
c01006e7:	c7 44 24 08 84 00 00 	mov    DWORD PTR [esp+0x8],0x84
c01006ee:	00 
c01006ef:	c7 44 24 04 84 00 00 	mov    DWORD PTR [esp+0x4],0x84
c01006f6:	00 
c01006f7:	c7 04 24 84 00 00 00 	mov    DWORD PTR [esp],0x84
c01006fe:	e8 61 7e 00 00       	call   c0108564 <rgb>
c0100703:	89 03                	mov    DWORD PTR [ebx],eax
c0100705:	83 45 f4 01          	add    DWORD PTR [ebp-0xc],0x1
c0100709:	83 7d f4 0f          	cmp    DWORD PTR [ebp-0xc],0xf
c010070d:	0f 8e 40 ff ff ff    	jle    c0100653 <View_thread+0x4c>
c0100713:	83 45 f0 01          	add    DWORD PTR [ebp-0x10],0x1
c0100717:	83 7d f0 0f          	cmp    DWORD PTR [ebp-0x10],0xf
c010071b:	0f 8e 26 ff ff ff    	jle    c0100647 <View_thread+0x40>
c0100721:	b8 24 7c 00 c0       	mov    eax,0xc0007c24
c0100726:	8b 00                	mov    eax,DWORD PTR [eax]
c0100728:	d1 e8                	shr    eax,1
c010072a:	89 45 ec             	mov    DWORD PTR [ebp-0x14],eax
c010072d:	b8 28 7c 00 c0       	mov    eax,0xc0007c28
c0100732:	8b 00                	mov    eax,DWORD PTR [eax]
c0100734:	d1 e8                	shr    eax,1
c0100736:	89 45 e8             	mov    DWORD PTR [ebp-0x18],eax
c0100739:	8b 45 e8             	mov    eax,DWORD PTR [ebp-0x18]
c010073c:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
c0100740:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
c0100743:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c0100747:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
c010074a:	89 04 24             	mov    DWORD PTR [esp],eax
c010074d:	e8 3a 6b 00 00       	call   c010728c <api_viewslide>
c0100752:	eb 01                	jmp    c0100755 <View_thread+0x14e>
c0100754:	90                   	nop
c0100755:	8d 45 cc             	lea    eax,[ebp-0x34]
c0100758:	89 04 24             	mov    DWORD PTR [esp],eax
c010075b:	e8 0d 3d 00 00       	call   c010446d <get_mouse>
c0100760:	83 ec 04             	sub    esp,0x4
c0100763:	8b 45 d0             	mov    eax,DWORD PTR [ebp-0x30]
c0100766:	85 c0                	test   eax,eax
c0100768:	74 ea                	je     c0100754 <View_thread+0x14d>
c010076a:	8b 45 d4             	mov    eax,DWORD PTR [ebp-0x2c]
c010076d:	01 45 ec             	add    DWORD PTR [ebp-0x14],eax
c0100770:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
c0100773:	01 45 e8             	add    DWORD PTR [ebp-0x18],eax
c0100776:	83 7d ec 00          	cmp    DWORD PTR [ebp-0x14],0x0
c010077a:	79 07                	jns    c0100783 <View_thread+0x17c>
c010077c:	c7 45 ec 00 00 00 00 	mov    DWORD PTR [ebp-0x14],0x0
c0100783:	83 7d e8 00          	cmp    DWORD PTR [ebp-0x18],0x0
c0100787:	79 07                	jns    c0100790 <View_thread+0x189>
c0100789:	c7 45 e8 00 00 00 00 	mov    DWORD PTR [ebp-0x18],0x0
c0100790:	8b 55 ec             	mov    edx,DWORD PTR [ebp-0x14]
c0100793:	b8 24 7c 00 c0       	mov    eax,0xc0007c24
c0100798:	8b 00                	mov    eax,DWORD PTR [eax]
c010079a:	83 e8 03             	sub    eax,0x3
c010079d:	39 c2                	cmp    edx,eax
c010079f:	76 0d                	jbe    c01007ae <View_thread+0x1a7>
c01007a1:	b8 24 7c 00 c0       	mov    eax,0xc0007c24
c01007a6:	8b 00                	mov    eax,DWORD PTR [eax]
c01007a8:	83 e8 03             	sub    eax,0x3
c01007ab:	89 45 ec             	mov    DWORD PTR [ebp-0x14],eax
c01007ae:	8b 55 e8             	mov    edx,DWORD PTR [ebp-0x18]
c01007b1:	b8 28 7c 00 c0       	mov    eax,0xc0007c28
c01007b6:	8b 00                	mov    eax,DWORD PTR [eax]
c01007b8:	83 e8 03             	sub    eax,0x3
c01007bb:	39 c2                	cmp    edx,eax
c01007bd:	76 0d                	jbe    c01007cc <View_thread+0x1c5>
c01007bf:	b8 28 7c 00 c0       	mov    eax,0xc0007c28
c01007c4:	8b 00                	mov    eax,DWORD PTR [eax]
c01007c6:	83 e8 03             	sub    eax,0x3
c01007c9:	89 45 e8             	mov    DWORD PTR [ebp-0x18],eax
c01007cc:	c7 44 24 04 00 04 00 	mov    DWORD PTR [esp+0x4],0x400
c01007d3:	00 
c01007d4:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
c01007d7:	89 04 24             	mov    DWORD PTR [esp],eax
c01007da:	e8 fa 6a 00 00       	call   c01072d9 <api_viewupdown>
c01007df:	8b 45 e8             	mov    eax,DWORD PTR [ebp-0x18]
c01007e2:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
c01007e6:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
c01007e9:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c01007ed:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
c01007f0:	89 04 24             	mov    DWORD PTR [esp],eax
c01007f3:	e8 94 6a 00 00       	call   c010728c <api_viewslide>
c01007f8:	e9 57 ff ff ff       	jmp    c0100754 <View_thread+0x14d>

c01007fd <u_prog_a>:
c01007fd:	55                   	push   ebp
c01007fe:	89 e5                	mov    ebp,esp
c0100800:	83 ec 38             	sub    esp,0x38
c0100803:	c7 04 24 40 9c 00 00 	mov    DWORD PTR [esp],0x9c40
c010080a:	e8 39 69 00 00       	call   c0107148 <api_malloc>
c010080f:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
c0100812:	83 7d f4 00          	cmp    DWORD PTR [ebp-0xc],0x0
c0100816:	75 2c                	jne    c0100844 <u_prog_a+0x47>
c0100818:	c7 44 24 10 b4 b7 10 	mov    DWORD PTR [esp+0x10],0xc010b7b4
c010081f:	c0 
c0100820:	c7 44 24 0c d7 b7 10 	mov    DWORD PTR [esp+0xc],0xc010b7d7
c0100827:	c0 
c0100828:	c7 44 24 08 be 00 00 	mov    DWORD PTR [esp+0x8],0xbe
c010082f:	00 
c0100830:	c7 44 24 04 c0 b7 10 	mov    DWORD PTR [esp+0x4],0xc010b7c0
c0100837:	c0 
c0100838:	c7 04 24 c0 b7 10 c0 	mov    DWORD PTR [esp],0xc010b7c0
c010083f:	e8 60 00 00 00       	call   c01008a4 <panic_spin>
c0100844:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0100847:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
c010084b:	c7 44 24 04 64 00 00 	mov    DWORD PTR [esp+0x4],0x64
c0100852:	00 
c0100853:	c7 04 24 64 00 00 00 	mov    DWORD PTR [esp],0x64
c010085a:	e8 9a 69 00 00       	call   c01071f9 <api_viewinit>
c010085f:	89 45 f0             	mov    DWORD PTR [ebp-0x10],eax
c0100862:	c7 44 24 0c ce b7 10 	mov    DWORD PTR [esp+0xc],0xc010b7ce
c0100869:	c0 
c010086a:	c7 44 24 08 64 00 00 	mov    DWORD PTR [esp+0x8],0x64
c0100871:	00 
c0100872:	c7 44 24 04 64 00 00 	mov    DWORD PTR [esp+0x4],0x64
c0100879:	00 
c010087a:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c010087d:	89 04 24             	mov    DWORD PTR [esp],eax
c0100880:	e8 cf 6a 00 00       	call   c0107354 <api_makeWindow>
c0100885:	c7 44 24 08 64 00 00 	mov    DWORD PTR [esp+0x8],0x64
c010088c:	00 
c010088d:	c7 44 24 04 64 00 00 	mov    DWORD PTR [esp+0x4],0x64
c0100894:	00 
c0100895:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c0100898:	89 04 24             	mov    DWORD PTR [esp],eax
c010089b:	e8 ec 69 00 00       	call   c010728c <api_viewslide>
c01008a0:	eb fe                	jmp    c01008a0 <u_prog_a+0xa3>
	...

c01008a4 <panic_spin>:
c01008a4:	55                   	push   ebp
c01008a5:	89 e5                	mov    ebp,esp
c01008a7:	81 ec a8 00 00 00    	sub    esp,0xa8
c01008ad:	e8 14 0e 00 00       	call   c01016c6 <intr_disable>
c01008b2:	c7 04 24 00 00 00 00 	mov    DWORD PTR [esp],0x0
c01008b9:	e8 c3 76 00 00       	call   c0107f81 <set_cursor>
c01008be:	e8 04 26 00 00       	call   c0102ec7 <running_thread>
c01008c3:	83 c0 0c             	add    eax,0xc
c01008c6:	89 44 24 1c          	mov    DWORD PTR [esp+0x1c],eax
c01008ca:	8b 45 18             	mov    eax,DWORD PTR [ebp+0x18]
c01008cd:	89 44 24 18          	mov    DWORD PTR [esp+0x18],eax
c01008d1:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
c01008d4:	89 44 24 14          	mov    DWORD PTR [esp+0x14],eax
c01008d8:	8b 45 14             	mov    eax,DWORD PTR [ebp+0x14]
c01008db:	89 44 24 10          	mov    DWORD PTR [esp+0x10],eax
c01008df:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c01008e2:	89 44 24 0c          	mov    DWORD PTR [esp+0xc],eax
c01008e6:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01008e9:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
c01008ed:	c7 44 24 04 00 b8 10 	mov    DWORD PTR [esp+0x4],0xc010b800
c01008f4:	c0 
c01008f5:	8d 85 79 ff ff ff    	lea    eax,[ebp-0x87]
c01008fb:	89 04 24             	mov    DWORD PTR [esp],eax
c01008fe:	e8 4d 79 00 00       	call   c0108250 <sprintf>
c0100903:	8d 85 79 ff ff ff    	lea    eax,[ebp-0x87]
c0100909:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c010090d:	c7 04 24 04 00 00 00 	mov    DWORD PTR [esp],0x4
c0100914:	e8 e6 72 00 00       	call   c0107bff <put_str>
c0100919:	c7 44 24 08 00 00 00 	mov    DWORD PTR [esp+0x8],0x0
c0100920:	00 
c0100921:	c7 44 24 04 00 00 00 	mov    DWORD PTR [esp+0x4],0x0
c0100928:	00 
c0100929:	c7 04 24 ff 00 00 00 	mov    DWORD PTR [esp],0xff
c0100930:	e8 2f 7c 00 00       	call   c0108564 <rgb>
c0100935:	ba 24 7c 00 c0       	mov    edx,0xc0007c24
c010093a:	8b 12                	mov    edx,DWORD PTR [edx]
c010093c:	8d 8d 79 ff ff ff    	lea    ecx,[ebp-0x87]
c0100942:	89 4c 24 14          	mov    DWORD PTR [esp+0x14],ecx
c0100946:	89 44 24 10          	mov    DWORD PTR [esp+0x10],eax
c010094a:	c7 44 24 0c 00 00 00 	mov    DWORD PTR [esp+0xc],0x0
c0100951:	00 
c0100952:	c7 44 24 08 00 00 00 	mov    DWORD PTR [esp+0x8],0x0
c0100959:	00 
c010095a:	89 54 24 04          	mov    DWORD PTR [esp+0x4],edx
c010095e:	c7 04 24 00 00 00 e0 	mov    DWORD PTR [esp],0xe0000000
c0100965:	e8 47 7f 00 00       	call   c01088b1 <vput_str>
c010096a:	eb fe                	jmp    c010096a <panic_spin+0xc6>

c010096c <log>:
c010096c:	55                   	push   ebp
c010096d:	89 e5                	mov    ebp,esp
c010096f:	83 ec 18             	sub    esp,0x18
c0100972:	c7 44 24 04 6e b8 10 	mov    DWORD PTR [esp+0x4],0xc010b86e
c0100979:	c0 
c010097a:	c7 04 24 06 00 00 00 	mov    DWORD PTR [esp],0x6
c0100981:	e8 79 72 00 00       	call   c0107bff <put_str>
c0100986:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0100989:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c010098d:	c7 04 24 06 00 00 00 	mov    DWORD PTR [esp],0x6
c0100994:	e8 66 72 00 00       	call   c0107bff <put_str>
c0100999:	c7 44 24 04 0a 00 00 	mov    DWORD PTR [esp+0x4],0xa
c01009a0:	00 
c01009a1:	c7 04 24 06 00 00 00 	mov    DWORD PTR [esp],0x6
c01009a8:	e8 2a 71 00 00       	call   c0107ad7 <put_char>
c01009ad:	c9                   	leave  
c01009ae:	c3                   	ret    
	...

c01009b0 <init_all>:
c01009b0:	55                   	push   ebp
c01009b1:	89 e5                	mov    ebp,esp
c01009b3:	83 ec 18             	sub    esp,0x18
c01009b6:	c7 04 24 97 b8 10 c0 	mov    DWORD PTR [esp],0xc010b897
c01009bd:	e8 aa ff ff ff       	call   c010096c <log>
c01009c2:	e8 1a 09 00 00       	call   c01012e1 <init_idt>
c01009c7:	e8 e5 2a 00 00       	call   c01034b1 <init_tss>
c01009cc:	e8 bb 3c 00 00       	call   c010468c <init_pit>
c01009d1:	e8 96 12 00 00       	call   c0101c6c <init_memory>
c01009d6:	e8 1f 36 00 00       	call   c0103ffa <init_keyboard>
c01009db:	e8 ef 38 00 00       	call   c01042cf <init_mouse>
c01009e0:	e8 93 23 00 00       	call   c0102d78 <init_thread>
c01009e5:	e8 3a 4c 00 00       	call   c0105624 <init_task>
c01009ea:	e8 99 2f 00 00       	call   c0103988 <init_console>
c01009ef:	c7 04 24 a0 b8 10 c0 	mov    DWORD PTR [esp],0xc010b8a0
c01009f6:	e8 71 ff ff ff       	call   c010096c <log>
c01009fb:	c9                   	leave  
c01009fc:	c3                   	ret    
c01009fd:	00 00                	add    BYTE PTR [eax],al
	...

c0100a00 <intr_exit>:
c0100a00:	81 c4 04 00 00 00    	add    esp,0x4
c0100a06:	61                   	popa   
c0100a07:	0f a9                	pop    gs
c0100a09:	0f a1                	pop    fs
c0100a0b:	07                   	pop    es
c0100a0c:	1f                   	pop    ds
c0100a0d:	81 c4 04 00 00 00    	add    esp,0x4
c0100a13:	cf                   	iret   

c0100a14 <asm_intr0x00_handler>:
c0100a14:	68 00 00 00 00       	push   0x0
c0100a19:	1e                   	push   ds
c0100a1a:	06                   	push   es
c0100a1b:	0f a0                	push   fs
c0100a1d:	0f a8                	push   gs
c0100a1f:	60                   	pusha  
c0100a20:	68 00 00 00 00       	push   0x0
c0100a25:	66 8c d0             	mov    ax,ss
c0100a28:	8e d8                	mov    ds,eax
c0100a2a:	8e c0                	mov    es,eax
c0100a2c:	ff 15 00 d2 10 c0    	call   DWORD PTR ds:0xc010d200
c0100a32:	e9 c9 ff ff ff       	jmp    c0100a00 <intr_exit>

c0100a37 <asm_intr0x01_handler>:
c0100a37:	68 00 00 00 00       	push   0x0
c0100a3c:	1e                   	push   ds
c0100a3d:	06                   	push   es
c0100a3e:	0f a0                	push   fs
c0100a40:	0f a8                	push   gs
c0100a42:	60                   	pusha  
c0100a43:	68 01 00 00 00       	push   0x1
c0100a48:	66 8c d0             	mov    ax,ss
c0100a4b:	8e d8                	mov    ds,eax
c0100a4d:	8e c0                	mov    es,eax
c0100a4f:	ff 15 04 d2 10 c0    	call   DWORD PTR ds:0xc010d204
c0100a55:	e9 a6 ff ff ff       	jmp    c0100a00 <intr_exit>

c0100a5a <asm_intr0x02_handler>:
c0100a5a:	68 00 00 00 00       	push   0x0
c0100a5f:	1e                   	push   ds
c0100a60:	06                   	push   es
c0100a61:	0f a0                	push   fs
c0100a63:	0f a8                	push   gs
c0100a65:	60                   	pusha  
c0100a66:	68 02 00 00 00       	push   0x2
c0100a6b:	66 8c d0             	mov    ax,ss
c0100a6e:	8e d8                	mov    ds,eax
c0100a70:	8e c0                	mov    es,eax
c0100a72:	ff 15 08 d2 10 c0    	call   DWORD PTR ds:0xc010d208
c0100a78:	e9 83 ff ff ff       	jmp    c0100a00 <intr_exit>

c0100a7d <asm_intr0x03_handler>:
c0100a7d:	68 00 00 00 00       	push   0x0
c0100a82:	1e                   	push   ds
c0100a83:	06                   	push   es
c0100a84:	0f a0                	push   fs
c0100a86:	0f a8                	push   gs
c0100a88:	60                   	pusha  
c0100a89:	68 03 00 00 00       	push   0x3
c0100a8e:	66 8c d0             	mov    ax,ss
c0100a91:	8e d8                	mov    ds,eax
c0100a93:	8e c0                	mov    es,eax
c0100a95:	ff 15 0c d2 10 c0    	call   DWORD PTR ds:0xc010d20c
c0100a9b:	e9 60 ff ff ff       	jmp    c0100a00 <intr_exit>

c0100aa0 <asm_intr0x04_handler>:
c0100aa0:	68 00 00 00 00       	push   0x0
c0100aa5:	1e                   	push   ds
c0100aa6:	06                   	push   es
c0100aa7:	0f a0                	push   fs
c0100aa9:	0f a8                	push   gs
c0100aab:	60                   	pusha  
c0100aac:	68 04 00 00 00       	push   0x4
c0100ab1:	66 8c d0             	mov    ax,ss
c0100ab4:	8e d8                	mov    ds,eax
c0100ab6:	8e c0                	mov    es,eax
c0100ab8:	ff 15 10 d2 10 c0    	call   DWORD PTR ds:0xc010d210
c0100abe:	e9 3d ff ff ff       	jmp    c0100a00 <intr_exit>

c0100ac3 <asm_intr0x05_handler>:
c0100ac3:	68 00 00 00 00       	push   0x0
c0100ac8:	1e                   	push   ds
c0100ac9:	06                   	push   es
c0100aca:	0f a0                	push   fs
c0100acc:	0f a8                	push   gs
c0100ace:	60                   	pusha  
c0100acf:	68 05 00 00 00       	push   0x5
c0100ad4:	66 8c d0             	mov    ax,ss
c0100ad7:	8e d8                	mov    ds,eax
c0100ad9:	8e c0                	mov    es,eax
c0100adb:	ff 15 14 d2 10 c0    	call   DWORD PTR ds:0xc010d214
c0100ae1:	e9 1a ff ff ff       	jmp    c0100a00 <intr_exit>

c0100ae6 <asm_intr0x06_handler>:
c0100ae6:	68 00 00 00 00       	push   0x0
c0100aeb:	1e                   	push   ds
c0100aec:	06                   	push   es
c0100aed:	0f a0                	push   fs
c0100aef:	0f a8                	push   gs
c0100af1:	60                   	pusha  
c0100af2:	68 06 00 00 00       	push   0x6
c0100af7:	66 8c d0             	mov    ax,ss
c0100afa:	8e d8                	mov    ds,eax
c0100afc:	8e c0                	mov    es,eax
c0100afe:	ff 15 18 d2 10 c0    	call   DWORD PTR ds:0xc010d218
c0100b04:	e9 f7 fe ff ff       	jmp    c0100a00 <intr_exit>

c0100b09 <asm_intr0x07_handler>:
c0100b09:	68 00 00 00 00       	push   0x0
c0100b0e:	1e                   	push   ds
c0100b0f:	06                   	push   es
c0100b10:	0f a0                	push   fs
c0100b12:	0f a8                	push   gs
c0100b14:	60                   	pusha  
c0100b15:	68 07 00 00 00       	push   0x7
c0100b1a:	66 8c d0             	mov    ax,ss
c0100b1d:	8e d8                	mov    ds,eax
c0100b1f:	8e c0                	mov    es,eax
c0100b21:	ff 15 1c d2 10 c0    	call   DWORD PTR ds:0xc010d21c
c0100b27:	e9 d4 fe ff ff       	jmp    c0100a00 <intr_exit>

c0100b2c <asm_intr0x08_handler>:
c0100b2c:	90                   	nop
c0100b2d:	1e                   	push   ds
c0100b2e:	06                   	push   es
c0100b2f:	0f a0                	push   fs
c0100b31:	0f a8                	push   gs
c0100b33:	60                   	pusha  
c0100b34:	68 08 00 00 00       	push   0x8
c0100b39:	66 8c d0             	mov    ax,ss
c0100b3c:	8e d8                	mov    ds,eax
c0100b3e:	8e c0                	mov    es,eax
c0100b40:	ff 15 20 d2 10 c0    	call   DWORD PTR ds:0xc010d220
c0100b46:	e9 b5 fe ff ff       	jmp    c0100a00 <intr_exit>

c0100b4b <asm_intr0x09_handler>:
c0100b4b:	68 00 00 00 00       	push   0x0
c0100b50:	1e                   	push   ds
c0100b51:	06                   	push   es
c0100b52:	0f a0                	push   fs
c0100b54:	0f a8                	push   gs
c0100b56:	60                   	pusha  
c0100b57:	68 09 00 00 00       	push   0x9
c0100b5c:	66 8c d0             	mov    ax,ss
c0100b5f:	8e d8                	mov    ds,eax
c0100b61:	8e c0                	mov    es,eax
c0100b63:	ff 15 24 d2 10 c0    	call   DWORD PTR ds:0xc010d224
c0100b69:	e9 92 fe ff ff       	jmp    c0100a00 <intr_exit>

c0100b6e <asm_intr0x0a_handler>:
c0100b6e:	90                   	nop
c0100b6f:	1e                   	push   ds
c0100b70:	06                   	push   es
c0100b71:	0f a0                	push   fs
c0100b73:	0f a8                	push   gs
c0100b75:	60                   	pusha  
c0100b76:	68 0a 00 00 00       	push   0xa
c0100b7b:	66 8c d0             	mov    ax,ss
c0100b7e:	8e d8                	mov    ds,eax
c0100b80:	8e c0                	mov    es,eax
c0100b82:	ff 15 28 d2 10 c0    	call   DWORD PTR ds:0xc010d228
c0100b88:	e9 73 fe ff ff       	jmp    c0100a00 <intr_exit>

c0100b8d <asm_intr0x0b_handler>:
c0100b8d:	90                   	nop
c0100b8e:	1e                   	push   ds
c0100b8f:	06                   	push   es
c0100b90:	0f a0                	push   fs
c0100b92:	0f a8                	push   gs
c0100b94:	60                   	pusha  
c0100b95:	68 0b 00 00 00       	push   0xb
c0100b9a:	66 8c d0             	mov    ax,ss
c0100b9d:	8e d8                	mov    ds,eax
c0100b9f:	8e c0                	mov    es,eax
c0100ba1:	ff 15 2c d2 10 c0    	call   DWORD PTR ds:0xc010d22c
c0100ba7:	e9 54 fe ff ff       	jmp    c0100a00 <intr_exit>

c0100bac <asm_intr0x0c_handler>:
c0100bac:	68 00 00 00 00       	push   0x0
c0100bb1:	1e                   	push   ds
c0100bb2:	06                   	push   es
c0100bb3:	0f a0                	push   fs
c0100bb5:	0f a8                	push   gs
c0100bb7:	60                   	pusha  
c0100bb8:	68 0c 00 00 00       	push   0xc
c0100bbd:	66 8c d0             	mov    ax,ss
c0100bc0:	8e d8                	mov    ds,eax
c0100bc2:	8e c0                	mov    es,eax
c0100bc4:	ff 15 30 d2 10 c0    	call   DWORD PTR ds:0xc010d230
c0100bca:	e9 31 fe ff ff       	jmp    c0100a00 <intr_exit>

c0100bcf <asm_intr0x0d_handler>:
c0100bcf:	90                   	nop
c0100bd0:	1e                   	push   ds
c0100bd1:	06                   	push   es
c0100bd2:	0f a0                	push   fs
c0100bd4:	0f a8                	push   gs
c0100bd6:	60                   	pusha  
c0100bd7:	68 0d 00 00 00       	push   0xd
c0100bdc:	66 8c d0             	mov    ax,ss
c0100bdf:	8e d8                	mov    ds,eax
c0100be1:	8e c0                	mov    es,eax
c0100be3:	ff 15 34 d2 10 c0    	call   DWORD PTR ds:0xc010d234
c0100be9:	e9 12 fe ff ff       	jmp    c0100a00 <intr_exit>

c0100bee <asm_intr0x0e_handler>:
c0100bee:	90                   	nop
c0100bef:	1e                   	push   ds
c0100bf0:	06                   	push   es
c0100bf1:	0f a0                	push   fs
c0100bf3:	0f a8                	push   gs
c0100bf5:	60                   	pusha  
c0100bf6:	68 0e 00 00 00       	push   0xe
c0100bfb:	66 8c d0             	mov    ax,ss
c0100bfe:	8e d8                	mov    ds,eax
c0100c00:	8e c0                	mov    es,eax
c0100c02:	ff 15 38 d2 10 c0    	call   DWORD PTR ds:0xc010d238
c0100c08:	e9 f3 fd ff ff       	jmp    c0100a00 <intr_exit>

c0100c0d <asm_intr0x0f_handler>:
c0100c0d:	68 00 00 00 00       	push   0x0
c0100c12:	1e                   	push   ds
c0100c13:	06                   	push   es
c0100c14:	0f a0                	push   fs
c0100c16:	0f a8                	push   gs
c0100c18:	60                   	pusha  
c0100c19:	68 0f 00 00 00       	push   0xf
c0100c1e:	66 8c d0             	mov    ax,ss
c0100c21:	8e d8                	mov    ds,eax
c0100c23:	8e c0                	mov    es,eax
c0100c25:	ff 15 3c d2 10 c0    	call   DWORD PTR ds:0xc010d23c
c0100c2b:	e9 d0 fd ff ff       	jmp    c0100a00 <intr_exit>

c0100c30 <asm_intr0x10_handler>:
c0100c30:	68 00 00 00 00       	push   0x0
c0100c35:	1e                   	push   ds
c0100c36:	06                   	push   es
c0100c37:	0f a0                	push   fs
c0100c39:	0f a8                	push   gs
c0100c3b:	60                   	pusha  
c0100c3c:	68 10 00 00 00       	push   0x10
c0100c41:	66 8c d0             	mov    ax,ss
c0100c44:	8e d8                	mov    ds,eax
c0100c46:	8e c0                	mov    es,eax
c0100c48:	ff 15 40 d2 10 c0    	call   DWORD PTR ds:0xc010d240
c0100c4e:	e9 ad fd ff ff       	jmp    c0100a00 <intr_exit>

c0100c53 <asm_intr0x11_handler>:
c0100c53:	90                   	nop
c0100c54:	1e                   	push   ds
c0100c55:	06                   	push   es
c0100c56:	0f a0                	push   fs
c0100c58:	0f a8                	push   gs
c0100c5a:	60                   	pusha  
c0100c5b:	68 11 00 00 00       	push   0x11
c0100c60:	66 8c d0             	mov    ax,ss
c0100c63:	8e d8                	mov    ds,eax
c0100c65:	8e c0                	mov    es,eax
c0100c67:	ff 15 44 d2 10 c0    	call   DWORD PTR ds:0xc010d244
c0100c6d:	e9 8e fd ff ff       	jmp    c0100a00 <intr_exit>

c0100c72 <asm_intr0x12_handler>:
c0100c72:	68 00 00 00 00       	push   0x0
c0100c77:	1e                   	push   ds
c0100c78:	06                   	push   es
c0100c79:	0f a0                	push   fs
c0100c7b:	0f a8                	push   gs
c0100c7d:	60                   	pusha  
c0100c7e:	68 12 00 00 00       	push   0x12
c0100c83:	66 8c d0             	mov    ax,ss
c0100c86:	8e d8                	mov    ds,eax
c0100c88:	8e c0                	mov    es,eax
c0100c8a:	ff 15 48 d2 10 c0    	call   DWORD PTR ds:0xc010d248
c0100c90:	e9 6b fd ff ff       	jmp    c0100a00 <intr_exit>

c0100c95 <asm_intr0x13_handler>:
c0100c95:	68 00 00 00 00       	push   0x0
c0100c9a:	1e                   	push   ds
c0100c9b:	06                   	push   es
c0100c9c:	0f a0                	push   fs
c0100c9e:	0f a8                	push   gs
c0100ca0:	60                   	pusha  
c0100ca1:	68 13 00 00 00       	push   0x13
c0100ca6:	66 8c d0             	mov    ax,ss
c0100ca9:	8e d8                	mov    ds,eax
c0100cab:	8e c0                	mov    es,eax
c0100cad:	ff 15 4c d2 10 c0    	call   DWORD PTR ds:0xc010d24c
c0100cb3:	e9 48 fd ff ff       	jmp    c0100a00 <intr_exit>

c0100cb8 <asm_intr0x14_handler>:
c0100cb8:	68 00 00 00 00       	push   0x0
c0100cbd:	1e                   	push   ds
c0100cbe:	06                   	push   es
c0100cbf:	0f a0                	push   fs
c0100cc1:	0f a8                	push   gs
c0100cc3:	60                   	pusha  
c0100cc4:	68 14 00 00 00       	push   0x14
c0100cc9:	66 8c d0             	mov    ax,ss
c0100ccc:	8e d8                	mov    ds,eax
c0100cce:	8e c0                	mov    es,eax
c0100cd0:	ff 15 50 d2 10 c0    	call   DWORD PTR ds:0xc010d250
c0100cd6:	e9 25 fd ff ff       	jmp    c0100a00 <intr_exit>

c0100cdb <asm_intr0x15_handler>:
c0100cdb:	68 00 00 00 00       	push   0x0
c0100ce0:	1e                   	push   ds
c0100ce1:	06                   	push   es
c0100ce2:	0f a0                	push   fs
c0100ce4:	0f a8                	push   gs
c0100ce6:	60                   	pusha  
c0100ce7:	68 15 00 00 00       	push   0x15
c0100cec:	66 8c d0             	mov    ax,ss
c0100cef:	8e d8                	mov    ds,eax
c0100cf1:	8e c0                	mov    es,eax
c0100cf3:	ff 15 54 d2 10 c0    	call   DWORD PTR ds:0xc010d254
c0100cf9:	e9 02 fd ff ff       	jmp    c0100a00 <intr_exit>

c0100cfe <asm_intr0x16_handler>:
c0100cfe:	68 00 00 00 00       	push   0x0
c0100d03:	1e                   	push   ds
c0100d04:	06                   	push   es
c0100d05:	0f a0                	push   fs
c0100d07:	0f a8                	push   gs
c0100d09:	60                   	pusha  
c0100d0a:	68 16 00 00 00       	push   0x16
c0100d0f:	66 8c d0             	mov    ax,ss
c0100d12:	8e d8                	mov    ds,eax
c0100d14:	8e c0                	mov    es,eax
c0100d16:	ff 15 58 d2 10 c0    	call   DWORD PTR ds:0xc010d258
c0100d1c:	e9 df fc ff ff       	jmp    c0100a00 <intr_exit>

c0100d21 <asm_intr0x17_handler>:
c0100d21:	68 00 00 00 00       	push   0x0
c0100d26:	1e                   	push   ds
c0100d27:	06                   	push   es
c0100d28:	0f a0                	push   fs
c0100d2a:	0f a8                	push   gs
c0100d2c:	60                   	pusha  
c0100d2d:	68 17 00 00 00       	push   0x17
c0100d32:	66 8c d0             	mov    ax,ss
c0100d35:	8e d8                	mov    ds,eax
c0100d37:	8e c0                	mov    es,eax
c0100d39:	ff 15 5c d2 10 c0    	call   DWORD PTR ds:0xc010d25c
c0100d3f:	e9 bc fc ff ff       	jmp    c0100a00 <intr_exit>

c0100d44 <asm_intr0x18_handler>:
c0100d44:	90                   	nop
c0100d45:	1e                   	push   ds
c0100d46:	06                   	push   es
c0100d47:	0f a0                	push   fs
c0100d49:	0f a8                	push   gs
c0100d4b:	60                   	pusha  
c0100d4c:	68 18 00 00 00       	push   0x18
c0100d51:	66 8c d0             	mov    ax,ss
c0100d54:	8e d8                	mov    ds,eax
c0100d56:	8e c0                	mov    es,eax
c0100d58:	ff 15 60 d2 10 c0    	call   DWORD PTR ds:0xc010d260
c0100d5e:	e9 9d fc ff ff       	jmp    c0100a00 <intr_exit>

c0100d63 <asm_intr0x19_handler>:
c0100d63:	68 00 00 00 00       	push   0x0
c0100d68:	1e                   	push   ds
c0100d69:	06                   	push   es
c0100d6a:	0f a0                	push   fs
c0100d6c:	0f a8                	push   gs
c0100d6e:	60                   	pusha  
c0100d6f:	68 19 00 00 00       	push   0x19
c0100d74:	66 8c d0             	mov    ax,ss
c0100d77:	8e d8                	mov    ds,eax
c0100d79:	8e c0                	mov    es,eax
c0100d7b:	ff 15 64 d2 10 c0    	call   DWORD PTR ds:0xc010d264
c0100d81:	e9 7a fc ff ff       	jmp    c0100a00 <intr_exit>

c0100d86 <asm_intr0x1a_handler>:
c0100d86:	90                   	nop
c0100d87:	1e                   	push   ds
c0100d88:	06                   	push   es
c0100d89:	0f a0                	push   fs
c0100d8b:	0f a8                	push   gs
c0100d8d:	60                   	pusha  
c0100d8e:	68 1a 00 00 00       	push   0x1a
c0100d93:	66 8c d0             	mov    ax,ss
c0100d96:	8e d8                	mov    ds,eax
c0100d98:	8e c0                	mov    es,eax
c0100d9a:	ff 15 68 d2 10 c0    	call   DWORD PTR ds:0xc010d268
c0100da0:	e9 5b fc ff ff       	jmp    c0100a00 <intr_exit>

c0100da5 <asm_intr0x1b_handler>:
c0100da5:	90                   	nop
c0100da6:	1e                   	push   ds
c0100da7:	06                   	push   es
c0100da8:	0f a0                	push   fs
c0100daa:	0f a8                	push   gs
c0100dac:	60                   	pusha  
c0100dad:	68 1b 00 00 00       	push   0x1b
c0100db2:	66 8c d0             	mov    ax,ss
c0100db5:	8e d8                	mov    ds,eax
c0100db7:	8e c0                	mov    es,eax
c0100db9:	ff 15 6c d2 10 c0    	call   DWORD PTR ds:0xc010d26c
c0100dbf:	e9 3c fc ff ff       	jmp    c0100a00 <intr_exit>

c0100dc4 <asm_intr0x1c_handler>:
c0100dc4:	68 00 00 00 00       	push   0x0
c0100dc9:	1e                   	push   ds
c0100dca:	06                   	push   es
c0100dcb:	0f a0                	push   fs
c0100dcd:	0f a8                	push   gs
c0100dcf:	60                   	pusha  
c0100dd0:	68 1c 00 00 00       	push   0x1c
c0100dd5:	66 8c d0             	mov    ax,ss
c0100dd8:	8e d8                	mov    ds,eax
c0100dda:	8e c0                	mov    es,eax
c0100ddc:	ff 15 70 d2 10 c0    	call   DWORD PTR ds:0xc010d270
c0100de2:	e9 19 fc ff ff       	jmp    c0100a00 <intr_exit>

c0100de7 <asm_intr0x1d_handler>:
c0100de7:	90                   	nop
c0100de8:	1e                   	push   ds
c0100de9:	06                   	push   es
c0100dea:	0f a0                	push   fs
c0100dec:	0f a8                	push   gs
c0100dee:	60                   	pusha  
c0100def:	68 1d 00 00 00       	push   0x1d
c0100df4:	66 8c d0             	mov    ax,ss
c0100df7:	8e d8                	mov    ds,eax
c0100df9:	8e c0                	mov    es,eax
c0100dfb:	ff 15 74 d2 10 c0    	call   DWORD PTR ds:0xc010d274
c0100e01:	e9 fa fb ff ff       	jmp    c0100a00 <intr_exit>

c0100e06 <asm_intr0x1e_handler>:
c0100e06:	90                   	nop
c0100e07:	1e                   	push   ds
c0100e08:	06                   	push   es
c0100e09:	0f a0                	push   fs
c0100e0b:	0f a8                	push   gs
c0100e0d:	60                   	pusha  
c0100e0e:	68 1e 00 00 00       	push   0x1e
c0100e13:	66 8c d0             	mov    ax,ss
c0100e16:	8e d8                	mov    ds,eax
c0100e18:	8e c0                	mov    es,eax
c0100e1a:	ff 15 78 d2 10 c0    	call   DWORD PTR ds:0xc010d278
c0100e20:	e9 db fb ff ff       	jmp    c0100a00 <intr_exit>

c0100e25 <asm_intr0x1f_handler>:
c0100e25:	68 00 00 00 00       	push   0x0
c0100e2a:	1e                   	push   ds
c0100e2b:	06                   	push   es
c0100e2c:	0f a0                	push   fs
c0100e2e:	0f a8                	push   gs
c0100e30:	60                   	pusha  
c0100e31:	68 1f 00 00 00       	push   0x1f
c0100e36:	66 8c d0             	mov    ax,ss
c0100e39:	8e d8                	mov    ds,eax
c0100e3b:	8e c0                	mov    es,eax
c0100e3d:	ff 15 7c d2 10 c0    	call   DWORD PTR ds:0xc010d27c
c0100e43:	e9 b8 fb ff ff       	jmp    c0100a00 <intr_exit>

c0100e48 <asm_intr0x20_handler>:
c0100e48:	68 00 00 00 00       	push   0x0
c0100e4d:	1e                   	push   ds
c0100e4e:	06                   	push   es
c0100e4f:	0f a0                	push   fs
c0100e51:	0f a8                	push   gs
c0100e53:	60                   	pusha  
c0100e54:	68 20 00 00 00       	push   0x20
c0100e59:	66 8c d0             	mov    ax,ss
c0100e5c:	8e d8                	mov    ds,eax
c0100e5e:	8e c0                	mov    es,eax
c0100e60:	ff 15 80 d2 10 c0    	call   DWORD PTR ds:0xc010d280
c0100e66:	e9 95 fb ff ff       	jmp    c0100a00 <intr_exit>

c0100e6b <asm_intr0x21_handler>:
c0100e6b:	68 00 00 00 00       	push   0x0
c0100e70:	1e                   	push   ds
c0100e71:	06                   	push   es
c0100e72:	0f a0                	push   fs
c0100e74:	0f a8                	push   gs
c0100e76:	60                   	pusha  
c0100e77:	68 21 00 00 00       	push   0x21
c0100e7c:	66 8c d0             	mov    ax,ss
c0100e7f:	8e d8                	mov    ds,eax
c0100e81:	8e c0                	mov    es,eax
c0100e83:	ff 15 84 d2 10 c0    	call   DWORD PTR ds:0xc010d284
c0100e89:	e9 72 fb ff ff       	jmp    c0100a00 <intr_exit>

c0100e8e <asm_intr0x22_handler>:
c0100e8e:	68 00 00 00 00       	push   0x0
c0100e93:	1e                   	push   ds
c0100e94:	06                   	push   es
c0100e95:	0f a0                	push   fs
c0100e97:	0f a8                	push   gs
c0100e99:	60                   	pusha  
c0100e9a:	68 22 00 00 00       	push   0x22
c0100e9f:	66 8c d0             	mov    ax,ss
c0100ea2:	8e d8                	mov    ds,eax
c0100ea4:	8e c0                	mov    es,eax
c0100ea6:	ff 15 88 d2 10 c0    	call   DWORD PTR ds:0xc010d288
c0100eac:	e9 4f fb ff ff       	jmp    c0100a00 <intr_exit>

c0100eb1 <asm_intr0x23_handler>:
c0100eb1:	68 00 00 00 00       	push   0x0
c0100eb6:	1e                   	push   ds
c0100eb7:	06                   	push   es
c0100eb8:	0f a0                	push   fs
c0100eba:	0f a8                	push   gs
c0100ebc:	60                   	pusha  
c0100ebd:	68 23 00 00 00       	push   0x23
c0100ec2:	66 8c d0             	mov    ax,ss
c0100ec5:	8e d8                	mov    ds,eax
c0100ec7:	8e c0                	mov    es,eax
c0100ec9:	ff 15 8c d2 10 c0    	call   DWORD PTR ds:0xc010d28c
c0100ecf:	e9 2c fb ff ff       	jmp    c0100a00 <intr_exit>

c0100ed4 <asm_intr0x24_handler>:
c0100ed4:	68 00 00 00 00       	push   0x0
c0100ed9:	1e                   	push   ds
c0100eda:	06                   	push   es
c0100edb:	0f a0                	push   fs
c0100edd:	0f a8                	push   gs
c0100edf:	60                   	pusha  
c0100ee0:	68 24 00 00 00       	push   0x24
c0100ee5:	66 8c d0             	mov    ax,ss
c0100ee8:	8e d8                	mov    ds,eax
c0100eea:	8e c0                	mov    es,eax
c0100eec:	ff 15 90 d2 10 c0    	call   DWORD PTR ds:0xc010d290
c0100ef2:	e9 09 fb ff ff       	jmp    c0100a00 <intr_exit>

c0100ef7 <asm_intr0x25_handler>:
c0100ef7:	68 00 00 00 00       	push   0x0
c0100efc:	1e                   	push   ds
c0100efd:	06                   	push   es
c0100efe:	0f a0                	push   fs
c0100f00:	0f a8                	push   gs
c0100f02:	60                   	pusha  
c0100f03:	68 25 00 00 00       	push   0x25
c0100f08:	66 8c d0             	mov    ax,ss
c0100f0b:	8e d8                	mov    ds,eax
c0100f0d:	8e c0                	mov    es,eax
c0100f0f:	ff 15 94 d2 10 c0    	call   DWORD PTR ds:0xc010d294
c0100f15:	e9 e6 fa ff ff       	jmp    c0100a00 <intr_exit>

c0100f1a <asm_intr0x26_handler>:
c0100f1a:	68 00 00 00 00       	push   0x0
c0100f1f:	1e                   	push   ds
c0100f20:	06                   	push   es
c0100f21:	0f a0                	push   fs
c0100f23:	0f a8                	push   gs
c0100f25:	60                   	pusha  
c0100f26:	68 26 00 00 00       	push   0x26
c0100f2b:	66 8c d0             	mov    ax,ss
c0100f2e:	8e d8                	mov    ds,eax
c0100f30:	8e c0                	mov    es,eax
c0100f32:	ff 15 98 d2 10 c0    	call   DWORD PTR ds:0xc010d298
c0100f38:	e9 c3 fa ff ff       	jmp    c0100a00 <intr_exit>

c0100f3d <asm_intr0x27_handler>:
c0100f3d:	68 00 00 00 00       	push   0x0
c0100f42:	1e                   	push   ds
c0100f43:	06                   	push   es
c0100f44:	0f a0                	push   fs
c0100f46:	0f a8                	push   gs
c0100f48:	60                   	pusha  
c0100f49:	68 27 00 00 00       	push   0x27
c0100f4e:	66 8c d0             	mov    ax,ss
c0100f51:	8e d8                	mov    ds,eax
c0100f53:	8e c0                	mov    es,eax
c0100f55:	ff 15 9c d2 10 c0    	call   DWORD PTR ds:0xc010d29c
c0100f5b:	e9 a0 fa ff ff       	jmp    c0100a00 <intr_exit>

c0100f60 <asm_intr0x28_handler>:
c0100f60:	68 00 00 00 00       	push   0x0
c0100f65:	1e                   	push   ds
c0100f66:	06                   	push   es
c0100f67:	0f a0                	push   fs
c0100f69:	0f a8                	push   gs
c0100f6b:	60                   	pusha  
c0100f6c:	68 28 00 00 00       	push   0x28
c0100f71:	66 8c d0             	mov    ax,ss
c0100f74:	8e d8                	mov    ds,eax
c0100f76:	8e c0                	mov    es,eax
c0100f78:	ff 15 a0 d2 10 c0    	call   DWORD PTR ds:0xc010d2a0
c0100f7e:	e9 7d fa ff ff       	jmp    c0100a00 <intr_exit>

c0100f83 <asm_intr0x29_handler>:
c0100f83:	68 00 00 00 00       	push   0x0
c0100f88:	1e                   	push   ds
c0100f89:	06                   	push   es
c0100f8a:	0f a0                	push   fs
c0100f8c:	0f a8                	push   gs
c0100f8e:	60                   	pusha  
c0100f8f:	68 29 00 00 00       	push   0x29
c0100f94:	66 8c d0             	mov    ax,ss
c0100f97:	8e d8                	mov    ds,eax
c0100f99:	8e c0                	mov    es,eax
c0100f9b:	ff 15 a4 d2 10 c0    	call   DWORD PTR ds:0xc010d2a4
c0100fa1:	e9 5a fa ff ff       	jmp    c0100a00 <intr_exit>

c0100fa6 <asm_intr0x2a_handler>:
c0100fa6:	68 00 00 00 00       	push   0x0
c0100fab:	1e                   	push   ds
c0100fac:	06                   	push   es
c0100fad:	0f a0                	push   fs
c0100faf:	0f a8                	push   gs
c0100fb1:	60                   	pusha  
c0100fb2:	68 2a 00 00 00       	push   0x2a
c0100fb7:	66 8c d0             	mov    ax,ss
c0100fba:	8e d8                	mov    ds,eax
c0100fbc:	8e c0                	mov    es,eax
c0100fbe:	ff 15 a8 d2 10 c0    	call   DWORD PTR ds:0xc010d2a8
c0100fc4:	e9 37 fa ff ff       	jmp    c0100a00 <intr_exit>

c0100fc9 <asm_intr0x2b_handler>:
c0100fc9:	68 00 00 00 00       	push   0x0
c0100fce:	1e                   	push   ds
c0100fcf:	06                   	push   es
c0100fd0:	0f a0                	push   fs
c0100fd2:	0f a8                	push   gs
c0100fd4:	60                   	pusha  
c0100fd5:	68 2b 00 00 00       	push   0x2b
c0100fda:	66 8c d0             	mov    ax,ss
c0100fdd:	8e d8                	mov    ds,eax
c0100fdf:	8e c0                	mov    es,eax
c0100fe1:	ff 15 ac d2 10 c0    	call   DWORD PTR ds:0xc010d2ac
c0100fe7:	e9 14 fa ff ff       	jmp    c0100a00 <intr_exit>

c0100fec <asm_intr0x2c_handler>:
c0100fec:	68 00 00 00 00       	push   0x0
c0100ff1:	1e                   	push   ds
c0100ff2:	06                   	push   es
c0100ff3:	0f a0                	push   fs
c0100ff5:	0f a8                	push   gs
c0100ff7:	60                   	pusha  
c0100ff8:	68 2c 00 00 00       	push   0x2c
c0100ffd:	66 8c d0             	mov    ax,ss
c0101000:	8e d8                	mov    ds,eax
c0101002:	8e c0                	mov    es,eax
c0101004:	ff 15 b0 d2 10 c0    	call   DWORD PTR ds:0xc010d2b0
c010100a:	e9 f1 f9 ff ff       	jmp    c0100a00 <intr_exit>

c010100f <asm_intr0x2d_handler>:
c010100f:	68 00 00 00 00       	push   0x0
c0101014:	1e                   	push   ds
c0101015:	06                   	push   es
c0101016:	0f a0                	push   fs
c0101018:	0f a8                	push   gs
c010101a:	60                   	pusha  
c010101b:	68 2d 00 00 00       	push   0x2d
c0101020:	66 8c d0             	mov    ax,ss
c0101023:	8e d8                	mov    ds,eax
c0101025:	8e c0                	mov    es,eax
c0101027:	ff 15 b4 d2 10 c0    	call   DWORD PTR ds:0xc010d2b4
c010102d:	e9 ce f9 ff ff       	jmp    c0100a00 <intr_exit>

c0101032 <asm_intr0x2e_handler>:
c0101032:	68 00 00 00 00       	push   0x0
c0101037:	1e                   	push   ds
c0101038:	06                   	push   es
c0101039:	0f a0                	push   fs
c010103b:	0f a8                	push   gs
c010103d:	60                   	pusha  
c010103e:	68 2e 00 00 00       	push   0x2e
c0101043:	66 8c d0             	mov    ax,ss
c0101046:	8e d8                	mov    ds,eax
c0101048:	8e c0                	mov    es,eax
c010104a:	ff 15 b8 d2 10 c0    	call   DWORD PTR ds:0xc010d2b8
c0101050:	e9 ab f9 ff ff       	jmp    c0100a00 <intr_exit>

c0101055 <asm_intr0x2f_handler>:
c0101055:	68 00 00 00 00       	push   0x0
c010105a:	1e                   	push   ds
c010105b:	06                   	push   es
c010105c:	0f a0                	push   fs
c010105e:	0f a8                	push   gs
c0101060:	60                   	pusha  
c0101061:	68 2f 00 00 00       	push   0x2f
c0101066:	66 8c d0             	mov    ax,ss
c0101069:	8e d8                	mov    ds,eax
c010106b:	8e c0                	mov    es,eax
c010106d:	ff 15 bc d2 10 c0    	call   DWORD PTR ds:0xc010d2bc
c0101073:	e9 88 f9 ff ff       	jmp    c0100a00 <intr_exit>

c0101078 <syscall_entry>:
c0101078:	68 00 00 00 00       	push   0x0
c010107d:	1e                   	push   ds
c010107e:	06                   	push   es
c010107f:	0f a0                	push   fs
c0101081:	0f a8                	push   gs
c0101083:	60                   	pusha  
c0101084:	68 4d 00 00 00       	push   0x4d
c0101089:	51                   	push   ecx
c010108a:	53                   	push   ebx
c010108b:	50                   	push   eax
c010108c:	e8 c3 3b 00 00       	call   c0104c54 <sys_sendrec>
c0101091:	81 c4 0c 00 00 00    	add    esp,0xc
c0101097:	89 44 24 20          	mov    DWORD PTR [esp+0x20],eax
c010109b:	e9 60 f9 ff ff       	jmp    c0100a00 <intr_exit>

c01010a0 <io_sti>:
c01010a0:	55                   	push   ebp
c01010a1:	89 e5                	mov    ebp,esp
c01010a3:	fb                   	sti    
c01010a4:	5d                   	pop    ebp
c01010a5:	c3                   	ret    

c01010a6 <io_cli>:
c01010a6:	55                   	push   ebp
c01010a7:	89 e5                	mov    ebp,esp
c01010a9:	fa                   	cli    
c01010aa:	5d                   	pop    ebp
c01010ab:	c3                   	ret    

c01010ac <io_out8>:
c01010ac:	55                   	push   ebp
c01010ad:	89 e5                	mov    ebp,esp
c01010af:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c01010b2:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c01010b5:	ee                   	out    dx,al
c01010b6:	5d                   	pop    ebp
c01010b7:	c3                   	ret    

c01010b8 <get_flages>:
c01010b8:	55                   	push   ebp
c01010b9:	89 e5                	mov    ebp,esp
c01010bb:	53                   	push   ebx
c01010bc:	83 ec 10             	sub    esp,0x10
c01010bf:	9c                   	pushf  
c01010c0:	58                   	pop    eax
c01010c1:	89 c3                	mov    ebx,eax
c01010c3:	89 5d f8             	mov    DWORD PTR [ebp-0x8],ebx
c01010c6:	8b 45 f8             	mov    eax,DWORD PTR [ebp-0x8]
c01010c9:	83 c4 10             	add    esp,0x10
c01010cc:	5b                   	pop    ebx
c01010cd:	5d                   	pop    ebp
c01010ce:	c3                   	ret    

c01010cf <init_pic>:
c01010cf:	55                   	push   ebp
c01010d0:	89 e5                	mov    ebp,esp
c01010d2:	83 ec 08             	sub    esp,0x8
c01010d5:	c7 44 24 04 ff 00 00 	mov    DWORD PTR [esp+0x4],0xff
c01010dc:	00 
c01010dd:	c7 04 24 21 00 00 00 	mov    DWORD PTR [esp],0x21
c01010e4:	e8 c3 ff ff ff       	call   c01010ac <io_out8>
c01010e9:	c7 44 24 04 ff 00 00 	mov    DWORD PTR [esp+0x4],0xff
c01010f0:	00 
c01010f1:	c7 04 24 a1 00 00 00 	mov    DWORD PTR [esp],0xa1
c01010f8:	e8 af ff ff ff       	call   c01010ac <io_out8>
c01010fd:	c7 44 24 04 11 00 00 	mov    DWORD PTR [esp+0x4],0x11
c0101104:	00 
c0101105:	c7 04 24 20 00 00 00 	mov    DWORD PTR [esp],0x20
c010110c:	e8 9b ff ff ff       	call   c01010ac <io_out8>
c0101111:	c7 44 24 04 20 00 00 	mov    DWORD PTR [esp+0x4],0x20
c0101118:	00 
c0101119:	c7 04 24 21 00 00 00 	mov    DWORD PTR [esp],0x21
c0101120:	e8 87 ff ff ff       	call   c01010ac <io_out8>
c0101125:	c7 44 24 04 04 00 00 	mov    DWORD PTR [esp+0x4],0x4
c010112c:	00 
c010112d:	c7 04 24 21 00 00 00 	mov    DWORD PTR [esp],0x21
c0101134:	e8 73 ff ff ff       	call   c01010ac <io_out8>
c0101139:	c7 44 24 04 01 00 00 	mov    DWORD PTR [esp+0x4],0x1
c0101140:	00 
c0101141:	c7 04 24 21 00 00 00 	mov    DWORD PTR [esp],0x21
c0101148:	e8 5f ff ff ff       	call   c01010ac <io_out8>
c010114d:	c7 44 24 04 11 00 00 	mov    DWORD PTR [esp+0x4],0x11
c0101154:	00 
c0101155:	c7 04 24 a0 00 00 00 	mov    DWORD PTR [esp],0xa0
c010115c:	e8 4b ff ff ff       	call   c01010ac <io_out8>
c0101161:	c7 44 24 04 28 00 00 	mov    DWORD PTR [esp+0x4],0x28
c0101168:	00 
c0101169:	c7 04 24 a1 00 00 00 	mov    DWORD PTR [esp],0xa1
c0101170:	e8 37 ff ff ff       	call   c01010ac <io_out8>
c0101175:	c7 44 24 04 02 00 00 	mov    DWORD PTR [esp+0x4],0x2
c010117c:	00 
c010117d:	c7 04 24 a1 00 00 00 	mov    DWORD PTR [esp],0xa1
c0101184:	e8 23 ff ff ff       	call   c01010ac <io_out8>
c0101189:	c7 44 24 04 01 00 00 	mov    DWORD PTR [esp+0x4],0x1
c0101190:	00 
c0101191:	c7 04 24 a1 00 00 00 	mov    DWORD PTR [esp],0xa1
c0101198:	e8 0f ff ff ff       	call   c01010ac <io_out8>
c010119d:	c7 44 24 04 f8 00 00 	mov    DWORD PTR [esp+0x4],0xf8
c01011a4:	00 
c01011a5:	c7 04 24 21 00 00 00 	mov    DWORD PTR [esp],0x21
c01011ac:	e8 fb fe ff ff       	call   c01010ac <io_out8>
c01011b1:	c7 44 24 04 ef 00 00 	mov    DWORD PTR [esp+0x4],0xef
c01011b8:	00 
c01011b9:	c7 04 24 a1 00 00 00 	mov    DWORD PTR [esp],0xa1
c01011c0:	e8 e7 fe ff ff       	call   c01010ac <io_out8>
c01011c5:	c9                   	leave  
c01011c6:	c3                   	ret    

c01011c7 <intr0x27_handler>:
c01011c7:	55                   	push   ebp
c01011c8:	89 e5                	mov    ebp,esp
c01011ca:	83 ec 08             	sub    esp,0x8
c01011cd:	c7 44 24 04 20 00 00 	mov    DWORD PTR [esp+0x4],0x20
c01011d4:	00 
c01011d5:	c7 04 24 20 00 00 00 	mov    DWORD PTR [esp],0x20
c01011dc:	e8 cb fe ff ff       	call   c01010ac <io_out8>
c01011e1:	c9                   	leave  
c01011e2:	c3                   	ret    

c01011e3 <idt_desc_init>:
c01011e3:	55                   	push   ebp
c01011e4:	89 e5                	mov    ebp,esp
c01011e6:	83 ec 28             	sub    esp,0x28
c01011e9:	c7 45 f4 00 00 00 00 	mov    DWORD PTR [ebp-0xc],0x0
c01011f0:	eb 12                	jmp    c0101204 <idt_desc_init+0x21>
c01011f2:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c01011f5:	c7 04 85 00 d2 10 c0 	mov    DWORD PTR [eax*4-0x3fef2e00],0xc0101327
c01011fc:	27 13 10 c0 
c0101200:	83 45 f4 01          	add    DWORD PTR [ebp-0xc],0x1
c0101204:	83 7d f4 4d          	cmp    DWORD PTR [ebp-0xc],0x4d
c0101208:	7e e8                	jle    c01011f2 <idt_desc_init+0xf>
c010120a:	c7 05 80 d2 10 c0 d0 	mov    DWORD PTR ds:0xc010d280,0xc01046d0
c0101211:	46 10 c0 
c0101214:	c7 05 84 d2 10 c0 58 	mov    DWORD PTR ds:0xc010d284,0xc0104058
c010121b:	40 10 c0 
c010121e:	c7 05 9c d2 10 c0 c7 	mov    DWORD PTR ds:0xc010d29c,0xc01011c7
c0101225:	11 10 c0 
c0101228:	c7 05 b0 d2 10 c0 13 	mov    DWORD PTR ds:0xc010d2b0,0xc0104313
c010122f:	43 10 c0 
c0101232:	c7 45 f4 00 00 00 00 	mov    DWORD PTR [ebp-0xc],0x0
c0101239:	eb 36                	jmp    c0101271 <idt_desc_init+0x8e>
c010123b:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c010123e:	8b 04 85 00 8d 10 c0 	mov    eax,DWORD PTR [eax*4-0x3fef7300]
c0101245:	8b 55 f4             	mov    edx,DWORD PTR [ebp-0xc]
c0101248:	c1 e2 03             	shl    edx,0x3
c010124b:	81 c2 80 cf 10 c0    	add    edx,0xc010cf80
c0101251:	c7 44 24 0c 8e 00 00 	mov    DWORD PTR [esp+0xc],0x8e
c0101258:	00 
c0101259:	c7 44 24 08 08 00 00 	mov    DWORD PTR [esp+0x8],0x8
c0101260:	00 
c0101261:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c0101265:	89 14 24             	mov    DWORD PTR [esp],edx
c0101268:	e8 30 00 00 00       	call   c010129d <set_gatedesc>
c010126d:	83 45 f4 01          	add    DWORD PTR [ebp-0xc],0x1
c0101271:	83 7d f4 4d          	cmp    DWORD PTR [ebp-0xc],0x4d
c0101275:	7e c4                	jle    c010123b <idt_desc_init+0x58>
c0101277:	c7 44 24 0c ee 00 00 	mov    DWORD PTR [esp+0xc],0xee
c010127e:	00 
c010127f:	c7 44 24 08 08 00 00 	mov    DWORD PTR [esp+0x8],0x8
c0101286:	00 
c0101287:	c7 44 24 04 78 10 10 	mov    DWORD PTR [esp+0x4],0xc0101078
c010128e:	c0 
c010128f:	c7 04 24 e8 d1 10 c0 	mov    DWORD PTR [esp],0xc010d1e8
c0101296:	e8 02 00 00 00       	call   c010129d <set_gatedesc>
c010129b:	c9                   	leave  
c010129c:	c3                   	ret    

c010129d <set_gatedesc>:
c010129d:	55                   	push   ebp
c010129e:	89 e5                	mov    ebp,esp
c01012a0:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c01012a3:	89 c2                	mov    edx,eax
c01012a5:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01012a8:	66 89 10             	mov    WORD PTR [eax],dx
c01012ab:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
c01012ae:	89 c2                	mov    edx,eax
c01012b0:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01012b3:	66 89 50 02          	mov    WORD PTR [eax+0x2],dx
c01012b7:	8b 45 14             	mov    eax,DWORD PTR [ebp+0x14]
c01012ba:	c1 f8 08             	sar    eax,0x8
c01012bd:	89 c2                	mov    edx,eax
c01012bf:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01012c2:	88 50 04             	mov    BYTE PTR [eax+0x4],dl
c01012c5:	8b 45 14             	mov    eax,DWORD PTR [ebp+0x14]
c01012c8:	89 c2                	mov    edx,eax
c01012ca:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01012cd:	88 50 05             	mov    BYTE PTR [eax+0x5],dl
c01012d0:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c01012d3:	c1 e8 10             	shr    eax,0x10
c01012d6:	89 c2                	mov    edx,eax
c01012d8:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01012db:	66 89 50 06          	mov    WORD PTR [eax+0x6],dx
c01012df:	5d                   	pop    ebp
c01012e0:	c3                   	ret    

c01012e1 <init_idt>:
c01012e1:	55                   	push   ebp
c01012e2:	89 e5                	mov    ebp,esp
c01012e4:	56                   	push   esi
c01012e5:	53                   	push   ebx
c01012e6:	83 ec 10             	sub    esp,0x10
c01012e9:	e8 f5 fe ff ff       	call   c01011e3 <idt_desc_init>
c01012ee:	e8 dc fd ff ff       	call   c01010cf <init_pic>
c01012f3:	b8 80 cf 10 c0       	mov    eax,0xc010cf80
c01012f8:	ba 00 00 00 00       	mov    edx,0x0
c01012fd:	0f a4 c2 10          	shld   edx,eax,0x10
c0101301:	c1 e0 10             	shl    eax,0x10
c0101304:	89 c3                	mov    ebx,eax
c0101306:	81 cb 6f 02 00 00    	or     ebx,0x26f
c010130c:	89 d6                	mov    esi,edx
c010130e:	83 ce 00             	or     esi,0x0
c0101311:	89 5d f0             	mov    DWORD PTR [ebp-0x10],ebx
c0101314:	89 75 f4             	mov    DWORD PTR [ebp-0xc],esi
c0101317:	e8 b0 02 00 00       	call   c01015cc <exception_init>
c010131c:	0f 01 5d f0          	lidtd  [ebp-0x10]
c0101320:	83 c4 10             	add    esp,0x10
c0101323:	5b                   	pop    ebx
c0101324:	5e                   	pop    esi
c0101325:	5d                   	pop    ebp
c0101326:	c3                   	ret    

c0101327 <general_intr_handler>:
c0101327:	55                   	push   ebp
c0101328:	89 e5                	mov    ebp,esp
c010132a:	56                   	push   esi
c010132b:	53                   	push   ebx
c010132c:	81 ec 40 01 00 00    	sub    esp,0x140
c0101332:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0101335:	88 85 e4 fe ff ff    	mov    BYTE PTR [ebp-0x11c],al
c010133b:	e8 86 03 00 00       	call   c01016c6 <intr_disable>
c0101340:	c7 04 24 00 00 00 00 	mov    DWORD PTR [esp],0x0
c0101347:	e8 35 6c 00 00       	call   c0107f81 <set_cursor>
c010134c:	b8 28 7c 00 c0       	mov    eax,0xc0007c28
c0101351:	8b 00                	mov    eax,DWORD PTR [eax]
c0101353:	83 e8 01             	sub    eax,0x1
c0101356:	89 c6                	mov    esi,eax
c0101358:	b8 24 7c 00 c0       	mov    eax,0xc0007c24
c010135d:	8b 00                	mov    eax,DWORD PTR [eax]
c010135f:	83 e8 01             	sub    eax,0x1
c0101362:	89 c3                	mov    ebx,eax
c0101364:	c7 44 24 08 ff 00 00 	mov    DWORD PTR [esp+0x8],0xff
c010136b:	00 
c010136c:	c7 44 24 04 00 00 00 	mov    DWORD PTR [esp+0x4],0x0
c0101373:	00 
c0101374:	c7 04 24 00 00 00 00 	mov    DWORD PTR [esp],0x0
c010137b:	e8 e4 71 00 00       	call   c0108564 <rgb>
c0101380:	ba 24 7c 00 c0       	mov    edx,0xc0007c24
c0101385:	8b 12                	mov    edx,DWORD PTR [edx]
c0101387:	89 74 24 18          	mov    DWORD PTR [esp+0x18],esi
c010138b:	89 5c 24 14          	mov    DWORD PTR [esp+0x14],ebx
c010138f:	c7 44 24 10 00 00 00 	mov    DWORD PTR [esp+0x10],0x0
c0101396:	00 
c0101397:	c7 44 24 0c 00 00 00 	mov    DWORD PTR [esp+0xc],0x0
c010139e:	00 
c010139f:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
c01013a3:	89 54 24 04          	mov    DWORD PTR [esp+0x4],edx
c01013a7:	c7 04 24 00 00 00 e0 	mov    DWORD PTR [esp],0xe0000000
c01013ae:	e8 79 73 00 00       	call   c010872c <viewFill>
c01013b3:	c7 44 24 08 ff 00 00 	mov    DWORD PTR [esp+0x8],0xff
c01013ba:	00 
c01013bb:	c7 44 24 04 ff 00 00 	mov    DWORD PTR [esp+0x4],0xff
c01013c2:	00 
c01013c3:	c7 04 24 ff 00 00 00 	mov    DWORD PTR [esp],0xff
c01013ca:	e8 95 71 00 00       	call   c0108564 <rgb>
c01013cf:	ba 24 7c 00 c0       	mov    edx,0xc0007c24
c01013d4:	8b 12                	mov    edx,DWORD PTR [edx]
c01013d6:	c7 44 24 14 cc b8 10 	mov    DWORD PTR [esp+0x14],0xc010b8cc
c01013dd:	c0 
c01013de:	89 44 24 10          	mov    DWORD PTR [esp+0x10],eax
c01013e2:	c7 44 24 0c 0a 00 00 	mov    DWORD PTR [esp+0xc],0xa
c01013e9:	00 
c01013ea:	c7 44 24 08 0a 00 00 	mov    DWORD PTR [esp+0x8],0xa
c01013f1:	00 
c01013f2:	89 54 24 04          	mov    DWORD PTR [esp+0x4],edx
c01013f6:	c7 04 24 00 00 00 e0 	mov    DWORD PTR [esp],0xe0000000
c01013fd:	e8 af 74 00 00       	call   c01088b1 <vput_str>
c0101402:	e8 c0 1a 00 00       	call   c0102ec7 <running_thread>
c0101407:	8d 50 0c             	lea    edx,[eax+0xc]
c010140a:	0f b6 85 e4 fe ff ff 	movzx  eax,BYTE PTR [ebp-0x11c]
c0101411:	89 54 24 18          	mov    DWORD PTR [esp+0x18],edx
c0101415:	8b 55 40             	mov    edx,DWORD PTR [ebp+0x40]
c0101418:	89 54 24 14          	mov    DWORD PTR [esp+0x14],edx
c010141c:	8b 55 44             	mov    edx,DWORD PTR [ebp+0x44]
c010141f:	89 54 24 10          	mov    DWORD PTR [esp+0x10],edx
c0101423:	89 44 24 0c          	mov    DWORD PTR [esp+0xc],eax
c0101427:	c7 44 24 08 60 b7 10 	mov    DWORD PTR [esp+0x8],0xc010b760
c010142e:	c0 
c010142f:	c7 44 24 04 f0 b9 10 	mov    DWORD PTR [esp+0x4],0xc010b9f0
c0101436:	c0 
c0101437:	8d 85 f5 fe ff ff    	lea    eax,[ebp-0x10b]
c010143d:	89 04 24             	mov    DWORD PTR [esp],eax
c0101440:	e8 0b 6e 00 00       	call   c0108250 <sprintf>
c0101445:	8d 85 f5 fe ff ff    	lea    eax,[ebp-0x10b]
c010144b:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c010144f:	c7 04 24 17 00 00 00 	mov    DWORD PTR [esp],0x17
c0101456:	e8 a4 67 00 00       	call   c0107bff <put_str>
c010145b:	c7 44 24 08 ff 00 00 	mov    DWORD PTR [esp+0x8],0xff
c0101462:	00 
c0101463:	c7 44 24 04 ff 00 00 	mov    DWORD PTR [esp+0x4],0xff
c010146a:	00 
c010146b:	c7 04 24 ff 00 00 00 	mov    DWORD PTR [esp],0xff
c0101472:	e8 ed 70 00 00       	call   c0108564 <rgb>
c0101477:	ba 24 7c 00 c0       	mov    edx,0xc0007c24
c010147c:	8b 12                	mov    edx,DWORD PTR [edx]
c010147e:	8d 8d f5 fe ff ff    	lea    ecx,[ebp-0x10b]
c0101484:	89 4c 24 14          	mov    DWORD PTR [esp+0x14],ecx
c0101488:	89 44 24 10          	mov    DWORD PTR [esp+0x10],eax
c010148c:	c7 44 24 0c 5a 00 00 	mov    DWORD PTR [esp+0xc],0x5a
c0101493:	00 
c0101494:	c7 44 24 08 0a 00 00 	mov    DWORD PTR [esp+0x8],0xa
c010149b:	00 
c010149c:	89 54 24 04          	mov    DWORD PTR [esp+0x4],edx
c01014a0:	c7 04 24 00 00 00 e0 	mov    DWORD PTR [esp],0xe0000000
c01014a7:	e8 05 74 00 00       	call   c01088b1 <vput_str>
c01014ac:	80 bd e4 fe ff ff 13 	cmp    BYTE PTR [ebp-0x11c],0x13
c01014b3:	77 77                	ja     c010152c <general_intr_handler+0x205>
c01014b5:	0f b6 85 e4 fe ff ff 	movzx  eax,BYTE PTR [ebp-0x11c]
c01014bc:	8b 04 85 40 ce 10 c0 	mov    eax,DWORD PTR [eax*4-0x3fef31c0]
c01014c3:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c01014c7:	c7 04 24 14 00 00 00 	mov    DWORD PTR [esp],0x14
c01014ce:	e8 2c 67 00 00       	call   c0107bff <put_str>
c01014d3:	0f b6 85 e4 fe ff ff 	movzx  eax,BYTE PTR [ebp-0x11c]
c01014da:	8b 1c 85 40 ce 10 c0 	mov    ebx,DWORD PTR [eax*4-0x3fef31c0]
c01014e1:	c7 44 24 08 ff 00 00 	mov    DWORD PTR [esp+0x8],0xff
c01014e8:	00 
c01014e9:	c7 44 24 04 00 00 00 	mov    DWORD PTR [esp+0x4],0x0
c01014f0:	00 
c01014f1:	c7 04 24 ff 00 00 00 	mov    DWORD PTR [esp],0xff
c01014f8:	e8 67 70 00 00       	call   c0108564 <rgb>
c01014fd:	ba 24 7c 00 c0       	mov    edx,0xc0007c24
c0101502:	8b 12                	mov    edx,DWORD PTR [edx]
c0101504:	89 5c 24 14          	mov    DWORD PTR [esp+0x14],ebx
c0101508:	89 44 24 10          	mov    DWORD PTR [esp+0x10],eax
c010150c:	c7 44 24 0c 8a 00 00 	mov    DWORD PTR [esp+0xc],0x8a
c0101513:	00 
c0101514:	c7 44 24 08 12 00 00 	mov    DWORD PTR [esp+0x8],0x12
c010151b:	00 
c010151c:	89 54 24 04          	mov    DWORD PTR [esp+0x4],edx
c0101520:	c7 04 24 00 00 00 e0 	mov    DWORD PTR [esp],0xe0000000
c0101527:	e8 85 73 00 00       	call   c01088b1 <vput_str>
c010152c:	c7 45 f4 00 00 00 00 	mov    DWORD PTR [ebp-0xc],0x0
c0101533:	80 bd e4 fe ff ff 0e 	cmp    BYTE PTR [ebp-0x11c],0xe
c010153a:	0f 85 8a 00 00 00    	jne    c01015ca <general_intr_handler+0x2a3>
c0101540:	0f 20 d3             	mov    ebx,cr2
c0101543:	89 5d f4             	mov    DWORD PTR [ebp-0xc],ebx
c0101546:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0101549:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
c010154d:	c7 44 24 04 23 ba 10 	mov    DWORD PTR [esp+0x4],0xc010ba23
c0101554:	c0 
c0101555:	8d 85 f5 fe ff ff    	lea    eax,[ebp-0x10b]
c010155b:	89 04 24             	mov    DWORD PTR [esp],eax
c010155e:	e8 ed 6c 00 00       	call   c0108250 <sprintf>
c0101563:	8d 85 f5 fe ff ff    	lea    eax,[ebp-0x10b]
c0101569:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c010156d:	c7 04 24 17 00 00 00 	mov    DWORD PTR [esp],0x17
c0101574:	e8 86 66 00 00       	call   c0107bff <put_str>
c0101579:	c7 44 24 08 ff 00 00 	mov    DWORD PTR [esp+0x8],0xff
c0101580:	00 
c0101581:	c7 44 24 04 ff 00 00 	mov    DWORD PTR [esp+0x4],0xff
c0101588:	00 
c0101589:	c7 04 24 ff 00 00 00 	mov    DWORD PTR [esp],0xff
c0101590:	e8 cf 6f 00 00       	call   c0108564 <rgb>
c0101595:	ba 24 7c 00 c0       	mov    edx,0xc0007c24
c010159a:	8b 12                	mov    edx,DWORD PTR [edx]
c010159c:	8d 8d f5 fe ff ff    	lea    ecx,[ebp-0x10b]
c01015a2:	89 4c 24 14          	mov    DWORD PTR [esp+0x14],ecx
c01015a6:	89 44 24 10          	mov    DWORD PTR [esp+0x10],eax
c01015aa:	c7 44 24 0c 9a 00 00 	mov    DWORD PTR [esp+0xc],0x9a
c01015b1:	00 
c01015b2:	c7 44 24 08 0a 00 00 	mov    DWORD PTR [esp+0x8],0xa
c01015b9:	00 
c01015ba:	89 54 24 04          	mov    DWORD PTR [esp+0x4],edx
c01015be:	c7 04 24 00 00 00 e0 	mov    DWORD PTR [esp],0xe0000000
c01015c5:	e8 e7 72 00 00       	call   c01088b1 <vput_str>
c01015ca:	eb fe                	jmp    c01015ca <general_intr_handler+0x2a3>

c01015cc <exception_init>:
c01015cc:	55                   	push   ebp
c01015cd:	89 e5                	mov    ebp,esp
c01015cf:	c7 05 40 ce 10 c0 39 	mov    DWORD PTR ds:0xc010ce40,0xc010ba39
c01015d6:	ba 10 c0 
c01015d9:	c7 05 44 ce 10 c0 4a 	mov    DWORD PTR ds:0xc010ce44,0xc010ba4a
c01015e0:	ba 10 c0 
c01015e3:	c7 05 48 ce 10 c0 5e 	mov    DWORD PTR ds:0xc010ce48,0xc010ba5e
c01015ea:	ba 10 c0 
c01015ed:	c7 05 4c ce 10 c0 6c 	mov    DWORD PTR ds:0xc010ce4c,0xc010ba6c
c01015f4:	ba 10 c0 
c01015f7:	c7 05 50 ce 10 c0 85 	mov    DWORD PTR ds:0xc010ce50,0xc010ba85
c01015fe:	ba 10 c0 
c0101601:	c7 05 54 ce 10 c0 9c 	mov    DWORD PTR ds:0xc010ce54,0xc010ba9c
c0101608:	ba 10 c0 
c010160b:	c7 05 58 ce 10 c0 bf 	mov    DWORD PTR ds:0xc010ce58,0xc010babf
c0101612:	ba 10 c0 
c0101615:	c7 05 5c ce 10 c0 dc 	mov    DWORD PTR ds:0xc010ce5c,0xc010badc
c010161c:	ba 10 c0 
c010161f:	c7 05 60 ce 10 c0 ff 	mov    DWORD PTR ds:0xc010ce60,0xc010baff
c0101626:	ba 10 c0 
c0101629:	c7 05 64 ce 10 c0 1a 	mov    DWORD PTR ds:0xc010ce64,0xc010bb1a
c0101630:	bb 10 c0 
c0101633:	c7 05 68 ce 10 c0 36 	mov    DWORD PTR ds:0xc010ce68,0xc010bb36
c010163a:	bb 10 c0 
c010163d:	c7 05 6c ce 10 c0 50 	mov    DWORD PTR ds:0xc010ce6c,0xc010bb50
c0101644:	bb 10 c0 
c0101647:	c7 05 70 ce 10 c0 68 	mov    DWORD PTR ds:0xc010ce70,0xc010bb68
c010164e:	bb 10 c0 
c0101651:	c7 05 74 ce 10 c0 84 	mov    DWORD PTR ds:0xc010ce74,0xc010bb84
c0101658:	bb 10 c0 
c010165b:	c7 05 78 ce 10 c0 a5 	mov    DWORD PTR ds:0xc010ce78,0xc010bba5
c0101662:	bb 10 c0 
c0101665:	c7 05 7c ce 10 c0 be 	mov    DWORD PTR ds:0xc010ce7c,0xc010bbbe
c010166c:	bb 10 c0 
c010166f:	c7 05 80 ce 10 c0 c8 	mov    DWORD PTR ds:0xc010ce80,0xc010bbc8
c0101676:	bb 10 c0 
c0101679:	c7 05 84 ce 10 c0 e9 	mov    DWORD PTR ds:0xc010ce84,0xc010bbe9
c0101680:	bb 10 c0 
c0101683:	c7 05 88 ce 10 c0 07 	mov    DWORD PTR ds:0xc010ce88,0xc010bc07
c010168a:	bc 10 c0 
c010168d:	c7 05 8c ce 10 c0 24 	mov    DWORD PTR ds:0xc010ce8c,0xc010bc24
c0101694:	bc 10 c0 
c0101697:	5d                   	pop    ebp
c0101698:	c3                   	ret    

c0101699 <intr_enable>:
c0101699:	55                   	push   ebp
c010169a:	89 e5                	mov    ebp,esp
c010169c:	83 ec 18             	sub    esp,0x18
c010169f:	e8 69 00 00 00       	call   c010170d <intr_get_status>
c01016a4:	83 f8 01             	cmp    eax,0x1
c01016a7:	75 0c                	jne    c01016b5 <intr_enable+0x1c>
c01016a9:	c7 45 f4 01 00 00 00 	mov    DWORD PTR [ebp-0xc],0x1
c01016b0:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c01016b3:	eb 0f                	jmp    c01016c4 <intr_enable+0x2b>
c01016b5:	c7 45 f4 00 00 00 00 	mov    DWORD PTR [ebp-0xc],0x0
c01016bc:	e8 df f9 ff ff       	call   c01010a0 <io_sti>
c01016c1:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c01016c4:	c9                   	leave  
c01016c5:	c3                   	ret    

c01016c6 <intr_disable>:
c01016c6:	55                   	push   ebp
c01016c7:	89 e5                	mov    ebp,esp
c01016c9:	83 ec 18             	sub    esp,0x18
c01016cc:	e8 3c 00 00 00       	call   c010170d <intr_get_status>
c01016d1:	83 f8 01             	cmp    eax,0x1
c01016d4:	75 11                	jne    c01016e7 <intr_disable+0x21>
c01016d6:	c7 45 f4 01 00 00 00 	mov    DWORD PTR [ebp-0xc],0x1
c01016dd:	e8 c4 f9 ff ff       	call   c01010a6 <io_cli>
c01016e2:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c01016e5:	eb 0a                	jmp    c01016f1 <intr_disable+0x2b>
c01016e7:	c7 45 f4 00 00 00 00 	mov    DWORD PTR [ebp-0xc],0x0
c01016ee:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c01016f1:	c9                   	leave  
c01016f2:	c3                   	ret    

c01016f3 <intr_set_status>:
c01016f3:	55                   	push   ebp
c01016f4:	89 e5                	mov    ebp,esp
c01016f6:	83 ec 08             	sub    esp,0x8
c01016f9:	83 7d 08 01          	cmp    DWORD PTR [ebp+0x8],0x1
c01016fd:	75 07                	jne    c0101706 <intr_set_status+0x13>
c01016ff:	e8 95 ff ff ff       	call   c0101699 <intr_enable>
c0101704:	eb 05                	jmp    c010170b <intr_set_status+0x18>
c0101706:	e8 bb ff ff ff       	call   c01016c6 <intr_disable>
c010170b:	c9                   	leave  
c010170c:	c3                   	ret    

c010170d <intr_get_status>:
c010170d:	55                   	push   ebp
c010170e:	89 e5                	mov    ebp,esp
c0101710:	e8 a3 f9 ff ff       	call   c01010b8 <get_flages>
c0101715:	25 00 02 00 00       	and    eax,0x200
c010171a:	85 c0                	test   eax,eax
c010171c:	0f 95 c0             	setne  al
c010171f:	0f b6 c0             	movzx  eax,al
c0101722:	5d                   	pop    ebp
c0101723:	c3                   	ret    

c0101724 <init_block>:
c0101724:	55                   	push   ebp
c0101725:	89 e5                	mov    ebp,esp
c0101727:	53                   	push   ebx
c0101728:	83 ec 34             	sub    esp,0x34
c010172b:	c7 45 f0 20 00 00 00 	mov    DWORD PTR [ebp-0x10],0x20
c0101732:	c7 45 f4 00 00 00 00 	mov    DWORD PTR [ebp-0xc],0x0
c0101739:	eb 4a                	jmp    c0101785 <init_block+0x61>
c010173b:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c010173e:	c1 e0 05             	shl    eax,0x5
c0101741:	03 45 08             	add    eax,DWORD PTR [ebp+0x8]
c0101744:	8b 55 f0             	mov    edx,DWORD PTR [ebp-0x10]
c0101747:	89 10                	mov    DWORD PTR [eax],edx
c0101749:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c010174c:	c1 e0 05             	shl    eax,0x5
c010174f:	89 c1                	mov    ecx,eax
c0101751:	03 4d 08             	add    ecx,DWORD PTR [ebp+0x8]
c0101754:	8b 55 f0             	mov    edx,DWORD PTR [ebp-0x10]
c0101757:	89 55 e4             	mov    DWORD PTR [ebp-0x1c],edx
c010175a:	b8 f4 0f 00 00       	mov    eax,0xff4
c010175f:	ba 00 00 00 00       	mov    edx,0x0
c0101764:	f7 75 e4             	div    DWORD PTR [ebp-0x1c]
c0101767:	89 41 04             	mov    DWORD PTR [ecx+0x4],eax
c010176a:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c010176d:	c1 e0 05             	shl    eax,0x5
c0101770:	03 45 08             	add    eax,DWORD PTR [ebp+0x8]
c0101773:	83 c0 08             	add    eax,0x8
c0101776:	89 04 24             	mov    DWORD PTR [esp],eax
c0101779:	e8 5e 61 00 00       	call   c01078dc <list_init>
c010177e:	d1 65 f0             	shl    DWORD PTR [ebp-0x10],1
c0101781:	83 45 f4 01          	add    DWORD PTR [ebp-0xc],0x1
c0101785:	83 7d f4 05          	cmp    DWORD PTR [ebp-0xc],0x5
c0101789:	7e b0                	jle    c010173b <init_block+0x17>
c010178b:	83 c4 34             	add    esp,0x34
c010178e:	5b                   	pop    ebx
c010178f:	5d                   	pop    ebp
c0101790:	c3                   	ret    

c0101791 <arena2block>:
c0101791:	55                   	push   ebp
c0101792:	89 e5                	mov    ebp,esp
c0101794:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0101797:	8b 00                	mov    eax,DWORD PTR [eax]
c0101799:	8b 10                	mov    edx,DWORD PTR [eax]
c010179b:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c010179e:	0f af d0             	imul   edx,eax
c01017a1:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01017a4:	01 d0                	add    eax,edx
c01017a6:	83 c0 0c             	add    eax,0xc
c01017a9:	5d                   	pop    ebp
c01017aa:	c3                   	ret    

c01017ab <block2arena>:
c01017ab:	55                   	push   ebp
c01017ac:	89 e5                	mov    ebp,esp
c01017ae:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01017b1:	25 00 f0 ff ff       	and    eax,0xfffff000
c01017b6:	5d                   	pop    ebp
c01017b7:	c3                   	ret    

c01017b8 <kmalloc>:
c01017b8:	55                   	push   ebp
c01017b9:	89 e5                	mov    ebp,esp
c01017bb:	83 ec 58             	sub    esp,0x58
c01017be:	e8 04 17 00 00       	call   c0102ec7 <running_thread>
c01017c3:	89 45 dc             	mov    DWORD PTR [ebp-0x24],eax
c01017c6:	8b 45 dc             	mov    eax,DWORD PTR [ebp-0x24]
c01017c9:	8b 40 3c             	mov    eax,DWORD PTR [eax+0x3c]
c01017cc:	85 c0                	test   eax,eax
c01017ce:	75 22                	jne    c01017f2 <kmalloc+0x3a>
c01017d0:	c7 45 f4 01 00 00 00 	mov    DWORD PTR [ebp-0xc],0x1
c01017d7:	a1 74 32 11 c0       	mov    eax,ds:0xc0113274
c01017dc:	c1 e0 0c             	shl    eax,0xc
c01017df:	89 45 ec             	mov    DWORD PTR [ebp-0x14],eax
c01017e2:	c7 45 f0 40 32 11 c0 	mov    DWORD PTR [ebp-0x10],0xc0113240
c01017e9:	c7 45 e8 80 f2 10 c0 	mov    DWORD PTR [ebp-0x18],0xc010f280
c01017f0:	eb 22                	jmp    c0101814 <kmalloc+0x5c>
c01017f2:	c7 45 f4 02 00 00 00 	mov    DWORD PTR [ebp-0xc],0x2
c01017f9:	a1 74 f3 10 c0       	mov    eax,ds:0xc010f374
c01017fe:	c1 e0 0c             	shl    eax,0xc
c0101801:	89 45 ec             	mov    DWORD PTR [ebp-0x14],eax
c0101804:	c7 45 f0 40 f3 10 c0 	mov    DWORD PTR [ebp-0x10],0xc010f340
c010180b:	8b 45 dc             	mov    eax,DWORD PTR [ebp-0x24]
c010180e:	83 c0 7c             	add    eax,0x7c
c0101811:	89 45 e8             	mov    DWORD PTR [ebp-0x18],eax
c0101814:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0101817:	3b 45 ec             	cmp    eax,DWORD PTR [ebp-0x14]
c010181a:	7e 0a                	jle    c0101826 <kmalloc+0x6e>
c010181c:	b8 00 00 00 00       	mov    eax,0x0
c0101821:	e9 cc 02 00 00       	jmp    c0101af2 <kmalloc+0x33a>
c0101826:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c0101829:	89 04 24             	mov    DWORD PTR [esp],eax
c010182c:	e8 05 14 00 00       	call   c0102c36 <lock_acquire>
c0101831:	81 7d 08 ff 03 00 00 	cmp    DWORD PTR [ebp+0x8],0x3ff
c0101838:	0f 8f df 01 00 00    	jg     c0101a1d <kmalloc+0x265>
c010183e:	c7 45 e4 00 00 00 00 	mov    DWORD PTR [ebp-0x1c],0x0
c0101845:	eb 17                	jmp    c010185e <kmalloc+0xa6>
c0101847:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c010184a:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
c010184d:	c1 e0 05             	shl    eax,0x5
c0101850:	03 45 e8             	add    eax,DWORD PTR [ebp-0x18]
c0101853:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
c0101856:	39 c2                	cmp    edx,eax
c0101858:	76 0c                	jbe    c0101866 <kmalloc+0xae>
c010185a:	83 45 e4 01          	add    DWORD PTR [ebp-0x1c],0x1
c010185e:	83 7d e4 05          	cmp    DWORD PTR [ebp-0x1c],0x5
c0101862:	7e e3                	jle    c0101847 <kmalloc+0x8f>
c0101864:	eb 01                	jmp    c0101867 <kmalloc+0xaf>
c0101866:	90                   	nop
c0101867:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
c010186a:	c1 e0 05             	shl    eax,0x5
c010186d:	03 45 e8             	add    eax,DWORD PTR [ebp-0x18]
c0101870:	83 c0 08             	add    eax,0x8
c0101873:	89 04 24             	mov    DWORD PTR [esp],eax
c0101876:	e8 15 62 00 00       	call   c0107a90 <list_empty>
c010187b:	85 c0                	test   eax,eax
c010187d:	0f 84 2e 01 00 00    	je     c01019b1 <kmalloc+0x1f9>
c0101883:	c7 44 24 04 01 00 00 	mov    DWORD PTR [esp+0x4],0x1
c010188a:	00 
c010188b:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c010188e:	89 04 24             	mov    DWORD PTR [esp],eax
c0101891:	e8 ad 09 00 00       	call   c0102243 <page_alloc>
c0101896:	89 45 d8             	mov    DWORD PTR [ebp-0x28],eax
c0101899:	83 7d d8 00          	cmp    DWORD PTR [ebp-0x28],0x0
c010189d:	75 15                	jne    c01018b4 <kmalloc+0xfc>
c010189f:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c01018a2:	89 04 24             	mov    DWORD PTR [esp],eax
c01018a5:	e8 10 14 00 00       	call   c0102cba <lock_release>
c01018aa:	b8 00 00 00 00       	mov    eax,0x0
c01018af:	e9 3e 02 00 00       	jmp    c0101af2 <kmalloc+0x33a>
c01018b4:	c7 44 24 08 00 10 00 	mov    DWORD PTR [esp+0x8],0x1000
c01018bb:	00 
c01018bc:	c7 44 24 04 00 00 00 	mov    DWORD PTR [esp+0x4],0x0
c01018c3:	00 
c01018c4:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
c01018c7:	89 04 24             	mov    DWORD PTR [esp],eax
c01018ca:	e8 15 67 00 00       	call   c0107fe4 <memset>
c01018cf:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
c01018d2:	c1 e0 05             	shl    eax,0x5
c01018d5:	89 c2                	mov    edx,eax
c01018d7:	03 55 e8             	add    edx,DWORD PTR [ebp-0x18]
c01018da:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
c01018dd:	89 10                	mov    DWORD PTR [eax],edx
c01018df:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
c01018e2:	c7 40 08 00 00 00 00 	mov    DWORD PTR [eax+0x8],0x0
c01018e9:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
c01018ec:	c1 e0 05             	shl    eax,0x5
c01018ef:	03 45 e8             	add    eax,DWORD PTR [ebp-0x18]
c01018f2:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
c01018f5:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
c01018f8:	89 50 04             	mov    DWORD PTR [eax+0x4],edx
c01018fb:	e8 c6 fd ff ff       	call   c01016c6 <intr_disable>
c0101900:	89 45 d4             	mov    DWORD PTR [ebp-0x2c],eax
c0101903:	c7 45 e0 00 00 00 00 	mov    DWORD PTR [ebp-0x20],0x0
c010190a:	e9 80 00 00 00       	jmp    c010198f <kmalloc+0x1d7>
c010190f:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
c0101912:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c0101916:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
c0101919:	89 04 24             	mov    DWORD PTR [esp],eax
c010191c:	e8 70 fe ff ff       	call   c0101791 <arena2block>
c0101921:	89 45 d0             	mov    DWORD PTR [ebp-0x30],eax
c0101924:	8b 45 d0             	mov    eax,DWORD PTR [ebp-0x30]
c0101927:	8b 55 d0             	mov    edx,DWORD PTR [ebp-0x30]
c010192a:	89 50 04             	mov    DWORD PTR [eax+0x4],edx
c010192d:	8b 45 d0             	mov    eax,DWORD PTR [ebp-0x30]
c0101930:	8b 55 d8             	mov    edx,DWORD PTR [ebp-0x28]
c0101933:	8b 12                	mov    edx,DWORD PTR [edx]
c0101935:	83 c2 08             	add    edx,0x8
c0101938:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c010193c:	89 14 24             	mov    DWORD PTR [esp],edx
c010193f:	e8 95 60 00 00       	call   c01079d9 <list_find>
c0101944:	85 c0                	test   eax,eax
c0101946:	74 2c                	je     c0101974 <kmalloc+0x1bc>
c0101948:	c7 44 24 10 68 bc 10 	mov    DWORD PTR [esp+0x10],0xc010bc68
c010194f:	c0 
c0101950:	c7 44 24 0c 12 bd 10 	mov    DWORD PTR [esp+0xc],0xc010bd12
c0101957:	c0 
c0101958:	c7 44 24 08 60 00 00 	mov    DWORD PTR [esp+0x8],0x60
c010195f:	00 
c0101960:	c7 44 24 04 97 bc 10 	mov    DWORD PTR [esp+0x4],0xc010bc97
c0101967:	c0 
c0101968:	c7 04 24 97 bc 10 c0 	mov    DWORD PTR [esp],0xc010bc97
c010196f:	e8 30 ef ff ff       	call   c01008a4 <panic_spin>
c0101974:	8b 45 d0             	mov    eax,DWORD PTR [ebp-0x30]
c0101977:	8b 55 d8             	mov    edx,DWORD PTR [ebp-0x28]
c010197a:	8b 12                	mov    edx,DWORD PTR [edx]
c010197c:	83 c2 08             	add    edx,0x8
c010197f:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c0101983:	89 14 24             	mov    DWORD PTR [esp],edx
c0101986:	e8 dc 5f 00 00       	call   c0107967 <list_append>
c010198b:	83 45 e0 01          	add    DWORD PTR [ebp-0x20],0x1
c010198f:	8b 55 e0             	mov    edx,DWORD PTR [ebp-0x20]
c0101992:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
c0101995:	c1 e0 05             	shl    eax,0x5
c0101998:	03 45 e8             	add    eax,DWORD PTR [ebp-0x18]
c010199b:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
c010199e:	39 c2                	cmp    edx,eax
c01019a0:	0f 82 69 ff ff ff    	jb     c010190f <kmalloc+0x157>
c01019a6:	8b 45 d4             	mov    eax,DWORD PTR [ebp-0x2c]
c01019a9:	89 04 24             	mov    DWORD PTR [esp],eax
c01019ac:	e8 42 fd ff ff       	call   c01016f3 <intr_set_status>
c01019b1:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
c01019b4:	c1 e0 05             	shl    eax,0x5
c01019b7:	03 45 e8             	add    eax,DWORD PTR [ebp-0x18]
c01019ba:	83 c0 08             	add    eax,0x8
c01019bd:	89 04 24             	mov    DWORD PTR [esp],eax
c01019c0:	e8 f5 5f 00 00       	call   c01079ba <list_pop>
c01019c5:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
c01019c8:	89 45 d0             	mov    DWORD PTR [ebp-0x30],eax
c01019cb:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
c01019ce:	c1 e0 05             	shl    eax,0x5
c01019d1:	03 45 e8             	add    eax,DWORD PTR [ebp-0x18]
c01019d4:	8b 00                	mov    eax,DWORD PTR [eax]
c01019d6:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
c01019da:	c7 44 24 04 00 00 00 	mov    DWORD PTR [esp+0x4],0x0
c01019e1:	00 
c01019e2:	8b 45 d0             	mov    eax,DWORD PTR [ebp-0x30]
c01019e5:	89 04 24             	mov    DWORD PTR [esp],eax
c01019e8:	e8 f7 65 00 00       	call   c0107fe4 <memset>
c01019ed:	8b 45 d0             	mov    eax,DWORD PTR [ebp-0x30]
c01019f0:	89 04 24             	mov    DWORD PTR [esp],eax
c01019f3:	e8 b3 fd ff ff       	call   c01017ab <block2arena>
c01019f8:	89 45 d8             	mov    DWORD PTR [ebp-0x28],eax
c01019fb:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
c01019fe:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
c0101a01:	8d 50 ff             	lea    edx,[eax-0x1]
c0101a04:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
c0101a07:	89 50 04             	mov    DWORD PTR [eax+0x4],edx
c0101a0a:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c0101a0d:	89 04 24             	mov    DWORD PTR [esp],eax
c0101a10:	e8 a5 12 00 00       	call   c0102cba <lock_release>
c0101a15:	8b 45 d0             	mov    eax,DWORD PTR [ebp-0x30]
c0101a18:	e9 d5 00 00 00       	jmp    c0101af2 <kmalloc+0x33a>
c0101a1d:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0101a20:	05 0b 10 00 00       	add    eax,0x100b
c0101a25:	c1 e8 0c             	shr    eax,0xc
c0101a28:	89 45 cc             	mov    DWORD PTR [ebp-0x34],eax
c0101a2b:	8b 45 cc             	mov    eax,DWORD PTR [ebp-0x34]
c0101a2e:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c0101a32:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0101a35:	89 04 24             	mov    DWORD PTR [esp],eax
c0101a38:	e8 06 08 00 00       	call   c0102243 <page_alloc>
c0101a3d:	89 45 d8             	mov    DWORD PTR [ebp-0x28],eax
c0101a40:	83 7d d8 00          	cmp    DWORD PTR [ebp-0x28],0x0
c0101a44:	75 15                	jne    c0101a5b <kmalloc+0x2a3>
c0101a46:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c0101a49:	89 04 24             	mov    DWORD PTR [esp],eax
c0101a4c:	e8 69 12 00 00       	call   c0102cba <lock_release>
c0101a51:	b8 00 00 00 00       	mov    eax,0x0
c0101a56:	e9 97 00 00 00       	jmp    c0101af2 <kmalloc+0x33a>
c0101a5b:	8b 45 cc             	mov    eax,DWORD PTR [ebp-0x34]
c0101a5e:	c1 e0 0c             	shl    eax,0xc
c0101a61:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
c0101a65:	c7 44 24 04 00 00 00 	mov    DWORD PTR [esp+0x4],0x0
c0101a6c:	00 
c0101a6d:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
c0101a70:	89 04 24             	mov    DWORD PTR [esp],eax
c0101a73:	e8 6c 65 00 00       	call   c0107fe4 <memset>
c0101a78:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
c0101a7b:	c7 00 00 00 00 00    	mov    DWORD PTR [eax],0x0
c0101a81:	8b 55 cc             	mov    edx,DWORD PTR [ebp-0x34]
c0101a84:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
c0101a87:	89 50 04             	mov    DWORD PTR [eax+0x4],edx
c0101a8a:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
c0101a8d:	c7 40 08 01 00 00 00 	mov    DWORD PTR [eax+0x8],0x1
c0101a94:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
c0101a97:	8b 00                	mov    eax,DWORD PTR [eax]
c0101a99:	85 c0                	test   eax,eax
c0101a9b:	75 18                	jne    c0101ab5 <kmalloc+0x2fd>
c0101a9d:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
c0101aa0:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
c0101aa3:	8b 45 cc             	mov    eax,DWORD PTR [ebp-0x34]
c0101aa6:	39 c2                	cmp    edx,eax
c0101aa8:	75 0b                	jne    c0101ab5 <kmalloc+0x2fd>
c0101aaa:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
c0101aad:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
c0101ab0:	83 f8 01             	cmp    eax,0x1
c0101ab3:	74 2c                	je     c0101ae1 <kmalloc+0x329>
c0101ab5:	c7 44 24 10 a8 bc 10 	mov    DWORD PTR [esp+0x10],0xc010bca8
c0101abc:	c0 
c0101abd:	c7 44 24 0c 12 bd 10 	mov    DWORD PTR [esp+0xc],0xc010bd12
c0101ac4:	c0 
c0101ac5:	c7 44 24 08 7b 00 00 	mov    DWORD PTR [esp+0x8],0x7b
c0101acc:	00 
c0101acd:	c7 44 24 04 97 bc 10 	mov    DWORD PTR [esp+0x4],0xc010bc97
c0101ad4:	c0 
c0101ad5:	c7 04 24 97 bc 10 c0 	mov    DWORD PTR [esp],0xc010bc97
c0101adc:	e8 c3 ed ff ff       	call   c01008a4 <panic_spin>
c0101ae1:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c0101ae4:	89 04 24             	mov    DWORD PTR [esp],eax
c0101ae7:	e8 ce 11 00 00       	call   c0102cba <lock_release>
c0101aec:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
c0101aef:	83 c0 0c             	add    eax,0xc
c0101af2:	c9                   	leave  
c0101af3:	c3                   	ret    

c0101af4 <kfree>:
c0101af4:	55                   	push   ebp
c0101af5:	89 e5                	mov    ebp,esp
c0101af7:	83 ec 48             	sub    esp,0x48
c0101afa:	83 7d 08 00          	cmp    DWORD PTR [ebp+0x8],0x0
c0101afe:	0f 84 65 01 00 00    	je     c0101c69 <kfree+0x175>
c0101b04:	e8 be 13 00 00       	call   c0102ec7 <running_thread>
c0101b09:	8b 40 3c             	mov    eax,DWORD PTR [eax+0x3c]
c0101b0c:	85 c0                	test   eax,eax
c0101b0e:	75 10                	jne    c0101b20 <kfree+0x2c>
c0101b10:	c7 45 f4 01 00 00 00 	mov    DWORD PTR [ebp-0xc],0x1
c0101b17:	c7 45 f0 40 32 11 c0 	mov    DWORD PTR [ebp-0x10],0xc0113240
c0101b1e:	eb 0e                	jmp    c0101b2e <kfree+0x3a>
c0101b20:	c7 45 f4 02 00 00 00 	mov    DWORD PTR [ebp-0xc],0x2
c0101b27:	c7 45 f0 40 f3 10 c0 	mov    DWORD PTR [ebp-0x10],0xc010f340
c0101b2e:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c0101b31:	89 04 24             	mov    DWORD PTR [esp],eax
c0101b34:	e8 fd 10 00 00       	call   c0102c36 <lock_acquire>
c0101b39:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0101b3c:	89 45 e8             	mov    DWORD PTR [ebp-0x18],eax
c0101b3f:	8b 45 e8             	mov    eax,DWORD PTR [ebp-0x18]
c0101b42:	89 04 24             	mov    DWORD PTR [esp],eax
c0101b45:	e8 61 fc ff ff       	call   c01017ab <block2arena>
c0101b4a:	89 45 e4             	mov    DWORD PTR [ebp-0x1c],eax
c0101b4d:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
c0101b50:	8b 00                	mov    eax,DWORD PTR [eax]
c0101b52:	85 c0                	test   eax,eax
c0101b54:	75 2c                	jne    c0101b82 <kfree+0x8e>
c0101b56:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
c0101b59:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
c0101b5c:	83 f8 01             	cmp    eax,0x1
c0101b5f:	75 21                	jne    c0101b82 <kfree+0x8e>
c0101b61:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
c0101b64:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
c0101b67:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
c0101b6b:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
c0101b6e:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c0101b72:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0101b75:	89 04 24             	mov    DWORD PTR [esp],eax
c0101b78:	e8 9e 0c 00 00       	call   c010281b <page_free>
c0101b7d:	e9 d9 00 00 00       	jmp    c0101c5b <kfree+0x167>
c0101b82:	8b 45 e8             	mov    eax,DWORD PTR [ebp-0x18]
c0101b85:	8b 55 e4             	mov    edx,DWORD PTR [ebp-0x1c]
c0101b88:	8b 12                	mov    edx,DWORD PTR [edx]
c0101b8a:	83 c2 08             	add    edx,0x8
c0101b8d:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c0101b91:	89 14 24             	mov    DWORD PTR [esp],edx
c0101b94:	e8 ce 5d 00 00       	call   c0107967 <list_append>
c0101b99:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
c0101b9c:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
c0101b9f:	8d 50 01             	lea    edx,[eax+0x1]
c0101ba2:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
c0101ba5:	89 50 04             	mov    DWORD PTR [eax+0x4],edx
c0101ba8:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
c0101bab:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
c0101bae:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
c0101bb1:	8b 00                	mov    eax,DWORD PTR [eax]
c0101bb3:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
c0101bb6:	39 c2                	cmp    edx,eax
c0101bb8:	0f 85 9d 00 00 00    	jne    c0101c5b <kfree+0x167>
c0101bbe:	c7 45 ec 00 00 00 00 	mov    DWORD PTR [ebp-0x14],0x0
c0101bc5:	eb 6b                	jmp    c0101c32 <kfree+0x13e>
c0101bc7:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
c0101bca:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c0101bce:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
c0101bd1:	89 04 24             	mov    DWORD PTR [esp],eax
c0101bd4:	e8 b8 fb ff ff       	call   c0101791 <arena2block>
c0101bd9:	89 45 e0             	mov    DWORD PTR [ebp-0x20],eax
c0101bdc:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
c0101bdf:	8b 55 e4             	mov    edx,DWORD PTR [ebp-0x1c]
c0101be2:	8b 12                	mov    edx,DWORD PTR [edx]
c0101be4:	83 c2 08             	add    edx,0x8
c0101be7:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c0101beb:	89 14 24             	mov    DWORD PTR [esp],edx
c0101bee:	e8 e6 5d 00 00       	call   c01079d9 <list_find>
c0101bf3:	85 c0                	test   eax,eax
c0101bf5:	75 2c                	jne    c0101c23 <kfree+0x12f>
c0101bf7:	c7 44 24 10 e0 bc 10 	mov    DWORD PTR [esp+0x10],0xc010bce0
c0101bfe:	c0 
c0101bff:	c7 44 24 0c 0c bd 10 	mov    DWORD PTR [esp+0xc],0xc010bd0c
c0101c06:	c0 
c0101c07:	c7 44 24 08 a9 00 00 	mov    DWORD PTR [esp+0x8],0xa9
c0101c0e:	00 
c0101c0f:	c7 44 24 04 97 bc 10 	mov    DWORD PTR [esp+0x4],0xc010bc97
c0101c16:	c0 
c0101c17:	c7 04 24 97 bc 10 c0 	mov    DWORD PTR [esp],0xc010bc97
c0101c1e:	e8 81 ec ff ff       	call   c01008a4 <panic_spin>
c0101c23:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
c0101c26:	89 04 24             	mov    DWORD PTR [esp],eax
c0101c29:	e8 56 5d 00 00       	call   c0107984 <list_remove>
c0101c2e:	83 45 ec 01          	add    DWORD PTR [ebp-0x14],0x1
c0101c32:	8b 55 ec             	mov    edx,DWORD PTR [ebp-0x14]
c0101c35:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
c0101c38:	8b 00                	mov    eax,DWORD PTR [eax]
c0101c3a:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
c0101c3d:	39 c2                	cmp    edx,eax
c0101c3f:	72 86                	jb     c0101bc7 <kfree+0xd3>
c0101c41:	c7 44 24 08 01 00 00 	mov    DWORD PTR [esp+0x8],0x1
c0101c48:	00 
c0101c49:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
c0101c4c:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c0101c50:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0101c53:	89 04 24             	mov    DWORD PTR [esp],eax
c0101c56:	e8 c0 0b 00 00       	call   c010281b <page_free>
c0101c5b:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c0101c5e:	89 04 24             	mov    DWORD PTR [esp],eax
c0101c61:	e8 54 10 00 00       	call   c0102cba <lock_release>
c0101c66:	90                   	nop
c0101c67:	eb 01                	jmp    c0101c6a <kfree+0x176>
c0101c69:	90                   	nop
c0101c6a:	c9                   	leave  
c0101c6b:	c3                   	ret    

c0101c6c <init_memory>:
c0101c6c:	55                   	push   ebp
c0101c6d:	89 e5                	mov    ebp,esp
c0101c6f:	57                   	push   edi
c0101c70:	56                   	push   esi
c0101c71:	53                   	push   ebx
c0101c72:	83 ec 4c             	sub    esp,0x4c
c0101c75:	b8 08 7c 00 c0       	mov    eax,0xc0007c08
c0101c7a:	8b 00                	mov    eax,DWORD PTR [eax]
c0101c7c:	85 c0                	test   eax,eax
c0101c7e:	0f 85 21 01 00 00    	jne    c0101da5 <init_memory+0x139>
c0101c84:	b8 0c 7c 00 c0       	mov    eax,0xc0007c0c
c0101c89:	8b 00                	mov    eax,DWORD PTR [eax]
c0101c8b:	85 c0                	test   eax,eax
c0101c8d:	0f 85 12 01 00 00    	jne    c0101da5 <init_memory+0x139>
c0101c93:	b8 00 7c 00 c0       	mov    eax,0xc0007c00
c0101c98:	8b 00                	mov    eax,DWORD PTR [eax]
c0101c9a:	89 45 e4             	mov    DWORD PTR [ebp-0x1c],eax
c0101c9d:	c7 45 d8 00 00 00 00 	mov    DWORD PTR [ebp-0x28],0x0
c0101ca4:	c7 45 dc 00 00 00 00 	mov    DWORD PTR [ebp-0x24],0x0
c0101cab:	c7 45 e0 00 00 00 00 	mov    DWORD PTR [ebp-0x20],0x0
c0101cb2:	eb 74                	jmp    c0101d28 <init_memory+0xbc>
c0101cb4:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
c0101cb7:	8b 40 10             	mov    eax,DWORD PTR [eax+0x10]
c0101cba:	83 f8 01             	cmp    eax,0x1
c0101cbd:	75 61                	jne    c0101d20 <init_memory+0xb4>
c0101cbf:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
c0101cc2:	8b 00                	mov    eax,DWORD PTR [eax]
c0101cc4:	3d 00 00 10 00       	cmp    eax,0x100000
c0101cc9:	75 55                	jne    c0101d20 <init_memory+0xb4>
c0101ccb:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
c0101cce:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
c0101cd1:	ba 00 00 00 00       	mov    edx,0x0
c0101cd6:	89 c1                	mov    ecx,eax
c0101cd8:	89 d3                	mov    ebx,edx
c0101cda:	89 cb                	mov    ebx,ecx
c0101cdc:	b9 00 00 00 00       	mov    ecx,0x0
c0101ce1:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
c0101ce4:	8b 00                	mov    eax,DWORD PTR [eax]
c0101ce6:	ba 00 00 00 00       	mov    edx,0x0
c0101ceb:	01 c1                	add    ecx,eax
c0101ced:	11 d3                	adc    ebx,edx
c0101cef:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
c0101cf2:	8b 40 0c             	mov    eax,DWORD PTR [eax+0xc]
c0101cf5:	ba 00 00 00 00       	mov    edx,0x0
c0101cfa:	89 c6                	mov    esi,eax
c0101cfc:	89 d7                	mov    edi,edx
c0101cfe:	89 f7                	mov    edi,esi
c0101d00:	be 00 00 00 00       	mov    esi,0x0
c0101d05:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
c0101d08:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
c0101d0b:	ba 00 00 00 00       	mov    edx,0x0
c0101d10:	01 f0                	add    eax,esi
c0101d12:	11 fa                	adc    edx,edi
c0101d14:	01 c8                	add    eax,ecx
c0101d16:	11 da                	adc    edx,ebx
c0101d18:	89 45 d8             	mov    DWORD PTR [ebp-0x28],eax
c0101d1b:	89 55 dc             	mov    DWORD PTR [ebp-0x24],edx
c0101d1e:	eb 1a                	jmp    c0101d3a <init_memory+0xce>
c0101d20:	83 45 e4 14          	add    DWORD PTR [ebp-0x1c],0x14
c0101d24:	83 45 e0 01          	add    DWORD PTR [ebp-0x20],0x1
c0101d28:	8b 55 e0             	mov    edx,DWORD PTR [ebp-0x20]
c0101d2b:	b8 04 7c 00 c0       	mov    eax,0xc0007c04
c0101d30:	8b 00                	mov    eax,DWORD PTR [eax]
c0101d32:	39 c2                	cmp    edx,eax
c0101d34:	0f 82 7a ff ff ff    	jb     c0101cb4 <init_memory+0x48>
c0101d3a:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
c0101d3d:	8b 55 dc             	mov    edx,DWORD PTR [ebp-0x24]
c0101d40:	09 d0                	or     eax,edx
c0101d42:	85 c0                	test   eax,eax
c0101d44:	75 2c                	jne    c0101d72 <init_memory+0x106>
c0101d46:	c7 44 24 10 3b bd 10 	mov    DWORD PTR [esp+0x10],0xc010bd3b
c0101d4d:	c0 
c0101d4e:	c7 44 24 0c d9 be 10 	mov    DWORD PTR [esp+0xc],0xc010bed9
c0101d55:	c0 
c0101d56:	c7 44 24 08 2f 00 00 	mov    DWORD PTR [esp+0x8],0x2f
c0101d5d:	00 
c0101d5e:	c7 44 24 04 50 bd 10 	mov    DWORD PTR [esp+0x4],0xc010bd50
c0101d65:	c0 
c0101d66:	c7 04 24 50 bd 10 c0 	mov    DWORD PTR [esp],0xc010bd50
c0101d6d:	e8 32 eb ff ff       	call   c01008a4 <panic_spin>
c0101d72:	83 7d dc 00          	cmp    DWORD PTR [ebp-0x24],0x0
c0101d76:	72 1d                	jb     c0101d95 <init_memory+0x129>
c0101d78:	83 7d dc 00          	cmp    DWORD PTR [ebp-0x24],0x0
c0101d7c:	77 09                	ja     c0101d87 <init_memory+0x11b>
c0101d7e:	81 7d d8 ff ff ff 3f 	cmp    DWORD PTR [ebp-0x28],0x3fffffff
c0101d85:	76 0e                	jbe    c0101d95 <init_memory+0x129>
c0101d87:	c7 45 d8 ff ff ff 3f 	mov    DWORD PTR [ebp-0x28],0x3fffffff
c0101d8e:	c7 45 dc 00 00 00 00 	mov    DWORD PTR [ebp-0x24],0x0
c0101d95:	b8 08 7c 00 c0       	mov    eax,0xc0007c08
c0101d9a:	8b 55 d8             	mov    edx,DWORD PTR [ebp-0x28]
c0101d9d:	81 c2 00 00 10 00    	add    edx,0x100000
c0101da3:	89 10                	mov    DWORD PTR [eax],edx
c0101da5:	c7 45 d4 00 00 10 00 	mov    DWORD PTR [ebp-0x2c],0x100000
c0101dac:	b8 08 7c 00 c0       	mov    eax,0xc0007c08
c0101db1:	8b 00                	mov    eax,DWORD PTR [eax]
c0101db3:	2b 45 d4             	sub    eax,DWORD PTR [ebp-0x2c]
c0101db6:	2d 00 00 40 00       	sub    eax,0x400000
c0101dbb:	89 45 d0             	mov    DWORD PTR [ebp-0x30],eax
c0101dbe:	8b 45 d0             	mov    eax,DWORD PTR [ebp-0x30]
c0101dc1:	d1 e8                	shr    eax,1
c0101dc3:	89 45 cc             	mov    DWORD PTR [ebp-0x34],eax
c0101dc6:	8b 45 cc             	mov    eax,DWORD PTR [ebp-0x34]
c0101dc9:	8b 55 d0             	mov    edx,DWORD PTR [ebp-0x30]
c0101dcc:	89 d1                	mov    ecx,edx
c0101dce:	29 c1                	sub    ecx,eax
c0101dd0:	89 c8                	mov    eax,ecx
c0101dd2:	89 45 c8             	mov    DWORD PTR [ebp-0x38],eax
c0101dd5:	8b 45 cc             	mov    eax,DWORD PTR [ebp-0x34]
c0101dd8:	c1 e8 0c             	shr    eax,0xc
c0101ddb:	c7 44 24 08 00 13 11 	mov    DWORD PTR [esp+0x8],0xc0111300
c0101de2:	c0 
c0101de3:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c0101de7:	c7 04 24 40 32 11 c0 	mov    DWORD PTR [esp],0xc0113240
c0101dee:	e8 c9 00 00 00       	call   c0101ebc <init_memman>
c0101df3:	c7 44 24 08 40 d3 10 	mov    DWORD PTR [esp+0x8],0xc010d340
c0101dfa:	c0 
c0101dfb:	c7 44 24 04 ff ff 0f 	mov    DWORD PTR [esp+0x4],0xfffff
c0101e02:	00 
c0101e03:	c7 04 24 80 f3 10 c0 	mov    DWORD PTR [esp],0xc010f380
c0101e0a:	e8 ad 00 00 00       	call   c0101ebc <init_memman>
c0101e0f:	8b 45 c8             	mov    eax,DWORD PTR [ebp-0x38]
c0101e12:	c1 e8 0c             	shr    eax,0xc
c0101e15:	c7 44 24 08 c0 f3 10 	mov    DWORD PTR [esp+0x8],0xc010f3c0
c0101e1c:	c0 
c0101e1d:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c0101e21:	c7 04 24 40 f3 10 c0 	mov    DWORD PTR [esp],0xc010f340
c0101e28:	e8 8f 00 00 00       	call   c0101ebc <init_memman>
c0101e2d:	8b 45 cc             	mov    eax,DWORD PTR [ebp-0x34]
c0101e30:	c1 e8 0c             	shr    eax,0xc
c0101e33:	89 c2                	mov    edx,eax
c0101e35:	8b 45 d4             	mov    eax,DWORD PTR [ebp-0x2c]
c0101e38:	05 00 00 40 00       	add    eax,0x400000
c0101e3d:	89 54 24 08          	mov    DWORD PTR [esp+0x8],edx
c0101e41:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c0101e45:	c7 04 24 40 32 11 c0 	mov    DWORD PTR [esp],0xc0113240
c0101e4c:	e8 f6 05 00 00       	call   c0102447 <pgman_free>
c0101e51:	8b 45 c8             	mov    eax,DWORD PTR [ebp-0x38]
c0101e54:	c1 e8 0c             	shr    eax,0xc
c0101e57:	89 c2                	mov    edx,eax
c0101e59:	8b 45 cc             	mov    eax,DWORD PTR [ebp-0x34]
c0101e5c:	8b 4d d4             	mov    ecx,DWORD PTR [ebp-0x2c]
c0101e5f:	01 c8                	add    eax,ecx
c0101e61:	05 00 00 40 00       	add    eax,0x400000
c0101e66:	89 54 24 08          	mov    DWORD PTR [esp+0x8],edx
c0101e6a:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c0101e6e:	c7 04 24 40 f3 10 c0 	mov    DWORD PTR [esp],0xc010f340
c0101e75:	e8 cd 05 00 00       	call   c0102447 <pgman_free>
c0101e7a:	8b 45 cc             	mov    eax,DWORD PTR [ebp-0x34]
c0101e7d:	8b 55 d4             	mov    edx,DWORD PTR [ebp-0x2c]
c0101e80:	01 d0                	add    eax,edx
c0101e82:	05 00 00 40 00       	add    eax,0x400000
c0101e87:	a3 80 cc 10 c0       	mov    ds:0xc010cc80,eax
c0101e8c:	c7 44 24 08 00 fc 01 	mov    DWORD PTR [esp+0x8],0x1fc00
c0101e93:	00 
c0101e94:	c7 44 24 04 00 00 40 	mov    DWORD PTR [esp+0x4],0xc0400000
c0101e9b:	c0 
c0101e9c:	c7 04 24 80 f3 10 c0 	mov    DWORD PTR [esp],0xc010f380
c0101ea3:	e8 9f 05 00 00       	call   c0102447 <pgman_free>
c0101ea8:	c7 04 24 80 f2 10 c0 	mov    DWORD PTR [esp],0xc010f280
c0101eaf:	e8 70 f8 ff ff       	call   c0101724 <init_block>
c0101eb4:	83 c4 4c             	add    esp,0x4c
c0101eb7:	5b                   	pop    ebx
c0101eb8:	5e                   	pop    esi
c0101eb9:	5f                   	pop    edi
c0101eba:	5d                   	pop    ebp
c0101ebb:	c3                   	ret    

c0101ebc <init_memman>:
c0101ebc:	55                   	push   ebp
c0101ebd:	89 e5                	mov    ebp,esp
c0101ebf:	83 ec 28             	sub    esp,0x28
c0101ec2:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0101ec5:	89 04 24             	mov    DWORD PTR [esp],eax
c0101ec8:	e8 09 0b 00 00       	call   c01029d6 <lock_init>
c0101ecd:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0101ed0:	c7 40 24 00 00 00 00 	mov    DWORD PTR [eax+0x24],0x0
c0101ed7:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0101eda:	c7 40 28 00 00 00 00 	mov    DWORD PTR [eax+0x28],0x0
c0101ee1:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0101ee4:	c7 40 2c 00 00 00 00 	mov    DWORD PTR [eax+0x2c],0x0
c0101eeb:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0101eee:	c7 40 30 00 00 00 00 	mov    DWORD PTR [eax+0x30],0x0
c0101ef5:	83 7d 0c 00          	cmp    DWORD PTR [ebp+0xc],0x0
c0101ef9:	75 2c                	jne    c0101f27 <init_memman+0x6b>
c0101efb:	c7 44 24 10 60 bd 10 	mov    DWORD PTR [esp+0x10],0xc010bd60
c0101f02:	c0 
c0101f03:	c7 44 24 0c cd be 10 	mov    DWORD PTR [esp+0xc],0xc010becd
c0101f0a:	c0 
c0101f0b:	c7 44 24 08 55 00 00 	mov    DWORD PTR [esp+0x8],0x55
c0101f12:	00 
c0101f13:	c7 44 24 04 50 bd 10 	mov    DWORD PTR [esp+0x4],0xc010bd50
c0101f1a:	c0 
c0101f1b:	c7 04 24 50 bd 10 c0 	mov    DWORD PTR [esp],0xc010bd50
c0101f22:	e8 7d e9 ff ff       	call   c01008a4 <panic_spin>
c0101f27:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0101f2a:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
c0101f2d:	89 50 34             	mov    DWORD PTR [eax+0x34],edx
c0101f30:	83 7d 10 00          	cmp    DWORD PTR [ebp+0x10],0x0
c0101f34:	75 2c                	jne    c0101f62 <init_memman+0xa6>
c0101f36:	c7 44 24 10 6b bd 10 	mov    DWORD PTR [esp+0x10],0xc010bd6b
c0101f3d:	c0 
c0101f3e:	c7 44 24 0c cd be 10 	mov    DWORD PTR [esp+0xc],0xc010becd
c0101f45:	c0 
c0101f46:	c7 44 24 08 57 00 00 	mov    DWORD PTR [esp+0x8],0x57
c0101f4d:	00 
c0101f4e:	c7 44 24 04 50 bd 10 	mov    DWORD PTR [esp+0x4],0xc010bd50
c0101f55:	c0 
c0101f56:	c7 04 24 50 bd 10 c0 	mov    DWORD PTR [esp],0xc010bd50
c0101f5d:	e8 42 e9 ff ff       	call   c01008a4 <panic_spin>
c0101f62:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0101f65:	8b 55 10             	mov    edx,DWORD PTR [ebp+0x10]
c0101f68:	89 50 38             	mov    DWORD PTR [eax+0x38],edx
c0101f6b:	c9                   	leave  
c0101f6c:	c3                   	ret    

c0101f6d <TotalFreeSize>:
c0101f6d:	55                   	push   ebp
c0101f6e:	89 e5                	mov    ebp,esp
c0101f70:	83 ec 10             	sub    esp,0x10
c0101f73:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [ebp-0x4],0x0
c0101f7a:	c7 45 f8 00 00 00 00 	mov    DWORD PTR [ebp-0x8],0x0
c0101f81:	eb 18                	jmp    c0101f9b <TotalFreeSize+0x2e>
c0101f83:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0101f86:	8b 40 38             	mov    eax,DWORD PTR [eax+0x38]
c0101f89:	8b 55 f8             	mov    edx,DWORD PTR [ebp-0x8]
c0101f8c:	c1 e2 03             	shl    edx,0x3
c0101f8f:	01 d0                	add    eax,edx
c0101f91:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
c0101f94:	01 45 fc             	add    DWORD PTR [ebp-0x4],eax
c0101f97:	83 45 f8 01          	add    DWORD PTR [ebp-0x8],0x1
c0101f9b:	8b 55 f8             	mov    edx,DWORD PTR [ebp-0x8]
c0101f9e:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0101fa1:	8b 40 24             	mov    eax,DWORD PTR [eax+0x24]
c0101fa4:	39 c2                	cmp    edx,eax
c0101fa6:	72 db                	jb     c0101f83 <TotalFreeSize+0x16>
c0101fa8:	8b 45 fc             	mov    eax,DWORD PTR [ebp-0x4]
c0101fab:	c9                   	leave  
c0101fac:	c3                   	ret    

c0101fad <pde_ptr>:
c0101fad:	55                   	push   ebp
c0101fae:	89 e5                	mov    ebp,esp
c0101fb0:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0101fb3:	c1 e8 16             	shr    eax,0x16
c0101fb6:	c1 e0 02             	shl    eax,0x2
c0101fb9:	2d 00 10 00 00       	sub    eax,0x1000
c0101fbe:	5d                   	pop    ebp
c0101fbf:	c3                   	ret    

c0101fc0 <pte_ptr>:
c0101fc0:	55                   	push   ebp
c0101fc1:	89 e5                	mov    ebp,esp
c0101fc3:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0101fc6:	25 00 00 c0 ff       	and    eax,0xffc00000
c0101fcb:	89 c2                	mov    edx,eax
c0101fcd:	c1 ea 0a             	shr    edx,0xa
c0101fd0:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0101fd3:	25 00 f0 3f 00       	and    eax,0x3ff000
c0101fd8:	c1 f8 0c             	sar    eax,0xc
c0101fdb:	c1 e0 02             	shl    eax,0x2
c0101fde:	01 d0                	add    eax,edx
c0101fe0:	2d 00 00 40 00       	sub    eax,0x400000
c0101fe5:	5d                   	pop    ebp
c0101fe6:	c3                   	ret    

c0101fe7 <addr_v2p>:
c0101fe7:	55                   	push   ebp
c0101fe8:	89 e5                	mov    ebp,esp
c0101fea:	83 ec 14             	sub    esp,0x14
c0101fed:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0101ff0:	89 04 24             	mov    DWORD PTR [esp],eax
c0101ff3:	e8 c8 ff ff ff       	call   c0101fc0 <pte_ptr>
c0101ff8:	89 45 fc             	mov    DWORD PTR [ebp-0x4],eax
c0101ffb:	8b 45 fc             	mov    eax,DWORD PTR [ebp-0x4]
c0101ffe:	8b 00                	mov    eax,DWORD PTR [eax]
c0102000:	89 c2                	mov    edx,eax
c0102002:	81 e2 00 f0 ff ff    	and    edx,0xfffff000
c0102008:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c010200b:	25 ff 0f 00 00       	and    eax,0xfff
c0102010:	09 d0                	or     eax,edx
c0102012:	c9                   	leave  
c0102013:	c3                   	ret    

c0102014 <pgman_alloc>:
c0102014:	55                   	push   ebp
c0102015:	89 e5                	mov    ebp,esp
c0102017:	53                   	push   ebx
c0102018:	83 ec 24             	sub    esp,0x24
c010201b:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c010201e:	89 04 24             	mov    DWORD PTR [esp],eax
c0102021:	e8 10 0c 00 00       	call   c0102c36 <lock_acquire>
c0102026:	c7 45 f4 00 00 00 00 	mov    DWORD PTR [ebp-0xc],0x0
c010202d:	e9 fb 00 00 00       	jmp    c010212d <pgman_alloc+0x119>
c0102032:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102035:	8b 40 38             	mov    eax,DWORD PTR [eax+0x38]
c0102038:	8b 55 f4             	mov    edx,DWORD PTR [ebp-0xc]
c010203b:	c1 e2 03             	shl    edx,0x3
c010203e:	01 d0                	add    eax,edx
c0102040:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
c0102043:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c0102046:	39 c2                	cmp    edx,eax
c0102048:	0f 82 db 00 00 00    	jb     c0102129 <pgman_alloc+0x115>
c010204e:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102051:	8b 40 38             	mov    eax,DWORD PTR [eax+0x38]
c0102054:	8b 55 f4             	mov    edx,DWORD PTR [ebp-0xc]
c0102057:	c1 e2 03             	shl    edx,0x3
c010205a:	01 d0                	add    eax,edx
c010205c:	8b 00                	mov    eax,DWORD PTR [eax]
c010205e:	89 45 ec             	mov    DWORD PTR [ebp-0x14],eax
c0102061:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102064:	8b 40 38             	mov    eax,DWORD PTR [eax+0x38]
c0102067:	8b 55 f4             	mov    edx,DWORD PTR [ebp-0xc]
c010206a:	c1 e2 03             	shl    edx,0x3
c010206d:	01 c2                	add    edx,eax
c010206f:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102072:	8b 40 38             	mov    eax,DWORD PTR [eax+0x38]
c0102075:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
c0102078:	c1 e1 03             	shl    ecx,0x3
c010207b:	01 c8                	add    eax,ecx
c010207d:	8b 00                	mov    eax,DWORD PTR [eax]
c010207f:	03 45 0c             	add    eax,DWORD PTR [ebp+0xc]
c0102082:	89 02                	mov    DWORD PTR [edx],eax
c0102084:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102087:	8b 40 38             	mov    eax,DWORD PTR [eax+0x38]
c010208a:	8b 55 f4             	mov    edx,DWORD PTR [ebp-0xc]
c010208d:	c1 e2 03             	shl    edx,0x3
c0102090:	01 c2                	add    edx,eax
c0102092:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102095:	8b 40 38             	mov    eax,DWORD PTR [eax+0x38]
c0102098:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
c010209b:	c1 e1 03             	shl    ecx,0x3
c010209e:	01 c8                	add    eax,ecx
c01020a0:	8b 48 04             	mov    ecx,DWORD PTR [eax+0x4]
c01020a3:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c01020a6:	89 cb                	mov    ebx,ecx
c01020a8:	29 c3                	sub    ebx,eax
c01020aa:	89 d8                	mov    eax,ebx
c01020ac:	89 42 04             	mov    DWORD PTR [edx+0x4],eax
c01020af:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01020b2:	8b 40 38             	mov    eax,DWORD PTR [eax+0x38]
c01020b5:	8b 55 f4             	mov    edx,DWORD PTR [ebp-0xc]
c01020b8:	c1 e2 03             	shl    edx,0x3
c01020bb:	01 d0                	add    eax,edx
c01020bd:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
c01020c0:	85 c0                	test   eax,eax
c01020c2:	75 52                	jne    c0102116 <pgman_alloc+0x102>
c01020c4:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01020c7:	8b 40 24             	mov    eax,DWORD PTR [eax+0x24]
c01020ca:	8d 50 ff             	lea    edx,[eax-0x1]
c01020cd:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01020d0:	89 50 24             	mov    DWORD PTR [eax+0x24],edx
c01020d3:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c01020d6:	89 45 f0             	mov    DWORD PTR [ebp-0x10],eax
c01020d9:	eb 2e                	jmp    c0102109 <pgman_alloc+0xf5>
c01020db:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01020de:	8b 40 38             	mov    eax,DWORD PTR [eax+0x38]
c01020e1:	8b 55 f0             	mov    edx,DWORD PTR [ebp-0x10]
c01020e4:	c1 e2 03             	shl    edx,0x3
c01020e7:	8d 0c 10             	lea    ecx,[eax+edx*1]
c01020ea:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01020ed:	8b 40 38             	mov    eax,DWORD PTR [eax+0x38]
c01020f0:	8b 55 f0             	mov    edx,DWORD PTR [ebp-0x10]
c01020f3:	83 c2 01             	add    edx,0x1
c01020f6:	c1 e2 03             	shl    edx,0x3
c01020f9:	01 d0                	add    eax,edx
c01020fb:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
c01020fe:	8b 00                	mov    eax,DWORD PTR [eax]
c0102100:	89 01                	mov    DWORD PTR [ecx],eax
c0102102:	89 51 04             	mov    DWORD PTR [ecx+0x4],edx
c0102105:	83 45 f0 01          	add    DWORD PTR [ebp-0x10],0x1
c0102109:	8b 55 f0             	mov    edx,DWORD PTR [ebp-0x10]
c010210c:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c010210f:	8b 40 24             	mov    eax,DWORD PTR [eax+0x24]
c0102112:	39 c2                	cmp    edx,eax
c0102114:	72 c5                	jb     c01020db <pgman_alloc+0xc7>
c0102116:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102119:	89 04 24             	mov    DWORD PTR [esp],eax
c010211c:	e8 99 0b 00 00       	call   c0102cba <lock_release>
c0102121:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
c0102124:	c1 e0 0c             	shl    eax,0xc
c0102127:	eb 25                	jmp    c010214e <pgman_alloc+0x13a>
c0102129:	83 45 f4 01          	add    DWORD PTR [ebp-0xc],0x1
c010212d:	8b 55 f4             	mov    edx,DWORD PTR [ebp-0xc]
c0102130:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102133:	8b 40 24             	mov    eax,DWORD PTR [eax+0x24]
c0102136:	39 c2                	cmp    edx,eax
c0102138:	0f 82 f4 fe ff ff    	jb     c0102032 <pgman_alloc+0x1e>
c010213e:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102141:	89 04 24             	mov    DWORD PTR [esp],eax
c0102144:	e8 71 0b 00 00       	call   c0102cba <lock_release>
c0102149:	b8 00 00 00 00       	mov    eax,0x0
c010214e:	83 c4 24             	add    esp,0x24
c0102151:	5b                   	pop    ebx
c0102152:	5d                   	pop    ebp
c0102153:	c3                   	ret    

c0102154 <page_table_add>:
c0102154:	55                   	push   ebp
c0102155:	89 e5                	mov    ebp,esp
c0102157:	83 ec 38             	sub    esp,0x38
c010215a:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c010215d:	89 04 24             	mov    DWORD PTR [esp],eax
c0102160:	e8 48 fe ff ff       	call   c0101fad <pde_ptr>
c0102165:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
c0102168:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c010216b:	89 04 24             	mov    DWORD PTR [esp],eax
c010216e:	e8 4d fe ff ff       	call   c0101fc0 <pte_ptr>
c0102173:	89 45 f0             	mov    DWORD PTR [ebp-0x10],eax
c0102176:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c0102179:	89 45 ec             	mov    DWORD PTR [ebp-0x14],eax
c010217c:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c010217f:	8b 00                	mov    eax,DWORD PTR [eax]
c0102181:	83 e0 01             	and    eax,0x1
c0102184:	84 c0                	test   al,al
c0102186:	74 30                	je     c01021b8 <page_table_add+0x64>
c0102188:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c010218b:	8b 00                	mov    eax,DWORD PTR [eax]
c010218d:	83 e0 01             	and    eax,0x1
c0102190:	85 c0                	test   eax,eax
c0102192:	75 12                	jne    c01021a6 <page_table_add+0x52>
c0102194:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
c0102197:	89 c2                	mov    edx,eax
c0102199:	83 ca 07             	or     edx,0x7
c010219c:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c010219f:	89 10                	mov    DWORD PTR [eax],edx
c01021a1:	e9 9b 00 00 00       	jmp    c0102241 <page_table_add+0xed>
c01021a6:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
c01021a9:	89 c2                	mov    edx,eax
c01021ab:	83 ca 07             	or     edx,0x7
c01021ae:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c01021b1:	89 10                	mov    DWORD PTR [eax],edx
c01021b3:	e9 89 00 00 00       	jmp    c0102241 <page_table_add+0xed>
c01021b8:	c7 44 24 04 01 00 00 	mov    DWORD PTR [esp+0x4],0x1
c01021bf:	00 
c01021c0:	c7 04 24 40 32 11 c0 	mov    DWORD PTR [esp],0xc0113240
c01021c7:	e8 48 fe ff ff       	call   c0102014 <pgman_alloc>
c01021cc:	89 45 e8             	mov    DWORD PTR [ebp-0x18],eax
c01021cf:	8b 45 e8             	mov    eax,DWORD PTR [ebp-0x18]
c01021d2:	89 c2                	mov    edx,eax
c01021d4:	83 ca 07             	or     edx,0x7
c01021d7:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c01021da:	89 10                	mov    DWORD PTR [eax],edx
c01021dc:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c01021df:	25 00 f0 ff ff       	and    eax,0xfffff000
c01021e4:	c7 44 24 08 00 10 00 	mov    DWORD PTR [esp+0x8],0x1000
c01021eb:	00 
c01021ec:	c7 44 24 04 00 00 00 	mov    DWORD PTR [esp+0x4],0x0
c01021f3:	00 
c01021f4:	89 04 24             	mov    DWORD PTR [esp],eax
c01021f7:	e8 e8 5d 00 00       	call   c0107fe4 <memset>
c01021fc:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c01021ff:	8b 00                	mov    eax,DWORD PTR [eax]
c0102201:	83 e0 01             	and    eax,0x1
c0102204:	85 c0                	test   eax,eax
c0102206:	74 2c                	je     c0102234 <page_table_add+0xe0>
c0102208:	c7 44 24 10 78 bd 10 	mov    DWORD PTR [esp+0x10],0xc010bd78
c010220f:	c0 
c0102210:	c7 44 24 0c be be 10 	mov    DWORD PTR [esp+0xc],0xc010bebe
c0102217:	c0 
c0102218:	c7 44 24 08 b3 00 00 	mov    DWORD PTR [esp+0x8],0xb3
c010221f:	00 
c0102220:	c7 44 24 04 50 bd 10 	mov    DWORD PTR [esp+0x4],0xc010bd50
c0102227:	c0 
c0102228:	c7 04 24 50 bd 10 c0 	mov    DWORD PTR [esp],0xc010bd50
c010222f:	e8 70 e6 ff ff       	call   c01008a4 <panic_spin>
c0102234:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
c0102237:	89 c2                	mov    edx,eax
c0102239:	83 ca 07             	or     edx,0x7
c010223c:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c010223f:	89 10                	mov    DWORD PTR [eax],edx
c0102241:	c9                   	leave  
c0102242:	c3                   	ret    

c0102243 <page_alloc>:
c0102243:	55                   	push   ebp
c0102244:	89 e5                	mov    ebp,esp
c0102246:	83 ec 38             	sub    esp,0x38
c0102249:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c010224c:	89 45 f0             	mov    DWORD PTR [ebp-0x10],eax
c010224f:	83 7d 08 01          	cmp    DWORD PTR [ebp+0x8],0x1
c0102253:	75 07                	jne    c010225c <page_alloc+0x19>
c0102255:	b8 40 32 11 c0       	mov    eax,0xc0113240
c010225a:	eb 05                	jmp    c0102261 <page_alloc+0x1e>
c010225c:	b8 40 f3 10 c0       	mov    eax,0xc010f340
c0102261:	89 45 ec             	mov    DWORD PTR [ebp-0x14],eax
c0102264:	83 7d 08 01          	cmp    DWORD PTR [ebp+0x8],0x1
c0102268:	74 0a                	je     c0102274 <page_alloc+0x31>
c010226a:	e8 58 0c 00 00       	call   c0102ec7 <running_thread>
c010226f:	83 c0 40             	add    eax,0x40
c0102272:	eb 05                	jmp    c0102279 <page_alloc+0x36>
c0102274:	b8 80 f3 10 c0       	mov    eax,0xc010f380
c0102279:	89 45 e8             	mov    DWORD PTR [ebp-0x18],eax
c010227c:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c010227f:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c0102283:	8b 45 e8             	mov    eax,DWORD PTR [ebp-0x18]
c0102286:	89 04 24             	mov    DWORD PTR [esp],eax
c0102289:	e8 86 fd ff ff       	call   c0102014 <pgman_alloc>
c010228e:	89 45 e4             	mov    DWORD PTR [ebp-0x1c],eax
c0102291:	83 7d e4 00          	cmp    DWORD PTR [ebp-0x1c],0x0
c0102295:	75 07                	jne    c010229e <page_alloc+0x5b>
c0102297:	b8 00 00 00 00       	mov    eax,0x0
c010229c:	eb 51                	jmp    c01022ef <page_alloc+0xac>
c010229e:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
c01022a1:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
c01022a4:	eb 40                	jmp    c01022e6 <page_alloc+0xa3>
c01022a6:	83 6d f0 01          	sub    DWORD PTR [ebp-0x10],0x1
c01022aa:	c7 44 24 04 01 00 00 	mov    DWORD PTR [esp+0x4],0x1
c01022b1:	00 
c01022b2:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
c01022b5:	89 04 24             	mov    DWORD PTR [esp],eax
c01022b8:	e8 57 fd ff ff       	call   c0102014 <pgman_alloc>
c01022bd:	89 45 e0             	mov    DWORD PTR [ebp-0x20],eax
c01022c0:	83 7d e0 00          	cmp    DWORD PTR [ebp-0x20],0x0
c01022c4:	75 07                	jne    c01022cd <page_alloc+0x8a>
c01022c6:	b8 00 00 00 00       	mov    eax,0x0
c01022cb:	eb 22                	jmp    c01022ef <page_alloc+0xac>
c01022cd:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c01022d0:	8b 55 e0             	mov    edx,DWORD PTR [ebp-0x20]
c01022d3:	89 54 24 04          	mov    DWORD PTR [esp+0x4],edx
c01022d7:	89 04 24             	mov    DWORD PTR [esp],eax
c01022da:	e8 75 fe ff ff       	call   c0102154 <page_table_add>
c01022df:	81 45 f4 00 10 00 00 	add    DWORD PTR [ebp-0xc],0x1000
c01022e6:	83 7d f0 00          	cmp    DWORD PTR [ebp-0x10],0x0
c01022ea:	75 ba                	jne    c01022a6 <page_alloc+0x63>
c01022ec:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
c01022ef:	c9                   	leave  
c01022f0:	c3                   	ret    

c01022f1 <get_kernel_page>:
c01022f1:	55                   	push   ebp
c01022f2:	89 e5                	mov    ebp,esp
c01022f4:	83 ec 28             	sub    esp,0x28
c01022f7:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01022fa:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c01022fe:	c7 04 24 01 00 00 00 	mov    DWORD PTR [esp],0x1
c0102305:	e8 39 ff ff ff       	call   c0102243 <page_alloc>
c010230a:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
c010230d:	83 7d f4 00          	cmp    DWORD PTR [ebp-0xc],0x0
c0102311:	74 1d                	je     c0102330 <get_kernel_page+0x3f>
c0102313:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102316:	c1 e0 0c             	shl    eax,0xc
c0102319:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
c010231d:	c7 44 24 04 00 00 00 	mov    DWORD PTR [esp+0x4],0x0
c0102324:	00 
c0102325:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0102328:	89 04 24             	mov    DWORD PTR [esp],eax
c010232b:	e8 b4 5c 00 00       	call   c0107fe4 <memset>
c0102330:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0102333:	c9                   	leave  
c0102334:	c3                   	ret    

c0102335 <get_user_page>:
c0102335:	55                   	push   ebp
c0102336:	89 e5                	mov    ebp,esp
c0102338:	83 ec 28             	sub    esp,0x28
c010233b:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c010233e:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c0102342:	c7 04 24 02 00 00 00 	mov    DWORD PTR [esp],0x2
c0102349:	e8 f5 fe ff ff       	call   c0102243 <page_alloc>
c010234e:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
c0102351:	83 7d f4 00          	cmp    DWORD PTR [ebp-0xc],0x0
c0102355:	74 1d                	je     c0102374 <get_user_page+0x3f>
c0102357:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c010235a:	c1 e0 0c             	shl    eax,0xc
c010235d:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
c0102361:	c7 44 24 04 00 00 00 	mov    DWORD PTR [esp+0x4],0x0
c0102368:	00 
c0102369:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c010236c:	89 04 24             	mov    DWORD PTR [esp],eax
c010236f:	e8 70 5c 00 00       	call   c0107fe4 <memset>
c0102374:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0102377:	c9                   	leave  
c0102378:	c3                   	ret    

c0102379 <get_a_page>:
c0102379:	55                   	push   ebp
c010237a:	89 e5                	mov    ebp,esp
c010237c:	83 ec 38             	sub    esp,0x38
c010237f:	83 7d 08 01          	cmp    DWORD PTR [ebp+0x8],0x1
c0102383:	75 07                	jne    c010238c <get_a_page+0x13>
c0102385:	b8 40 32 11 c0       	mov    eax,0xc0113240
c010238a:	eb 05                	jmp    c0102391 <get_a_page+0x18>
c010238c:	b8 40 f3 10 c0       	mov    eax,0xc010f340
c0102391:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
c0102394:	e8 2e 0b 00 00       	call   c0102ec7 <running_thread>
c0102399:	89 45 f0             	mov    DWORD PTR [ebp-0x10],eax
c010239c:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c010239f:	8b 40 3c             	mov    eax,DWORD PTR [eax+0x3c]
c01023a2:	85 c0                	test   eax,eax
c01023a4:	74 06                	je     c01023ac <get_a_page+0x33>
c01023a6:	83 7d 08 02          	cmp    DWORD PTR [ebp+0x8],0x2
c01023aa:	74 3c                	je     c01023e8 <get_a_page+0x6f>
c01023ac:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c01023af:	8b 40 3c             	mov    eax,DWORD PTR [eax+0x3c]
c01023b2:	85 c0                	test   eax,eax
c01023b4:	75 06                	jne    c01023bc <get_a_page+0x43>
c01023b6:	83 7d 08 01          	cmp    DWORD PTR [ebp+0x8],0x1
c01023ba:	74 2c                	je     c01023e8 <get_a_page+0x6f>
c01023bc:	c7 44 24 10 90 bd 10 	mov    DWORD PTR [esp+0x10],0xc010bd90
c01023c3:	c0 
c01023c4:	c7 44 24 0c b3 be 10 	mov    DWORD PTR [esp+0xc],0xc010beb3
c01023cb:	c0 
c01023cc:	c7 44 24 08 f7 00 00 	mov    DWORD PTR [esp+0x8],0xf7
c01023d3:	00 
c01023d4:	c7 44 24 04 50 bd 10 	mov    DWORD PTR [esp+0x4],0xc010bd50
c01023db:	c0 
c01023dc:	c7 04 24 50 bd 10 c0 	mov    DWORD PTR [esp],0xc010bd50
c01023e3:	e8 bc e4 ff ff       	call   c01008a4 <panic_spin>
c01023e8:	c7 44 24 04 01 00 00 	mov    DWORD PTR [esp+0x4],0x1
c01023ef:	00 
c01023f0:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c01023f3:	89 04 24             	mov    DWORD PTR [esp],eax
c01023f6:	e8 19 fc ff ff       	call   c0102014 <pgman_alloc>
c01023fb:	89 45 ec             	mov    DWORD PTR [ebp-0x14],eax
c01023fe:	83 7d ec 00          	cmp    DWORD PTR [ebp-0x14],0x0
c0102402:	75 2c                	jne    c0102430 <get_a_page+0xb7>
c0102404:	c7 44 24 10 e7 bd 10 	mov    DWORD PTR [esp+0x10],0xc010bde7
c010240b:	c0 
c010240c:	c7 44 24 0c b3 be 10 	mov    DWORD PTR [esp+0xc],0xc010beb3
c0102413:	c0 
c0102414:	c7 44 24 08 fa 00 00 	mov    DWORD PTR [esp+0x8],0xfa
c010241b:	00 
c010241c:	c7 44 24 04 50 bd 10 	mov    DWORD PTR [esp+0x4],0xc010bd50
c0102423:	c0 
c0102424:	c7 04 24 50 bd 10 c0 	mov    DWORD PTR [esp],0xc010bd50
c010242b:	e8 74 e4 ff ff       	call   c01008a4 <panic_spin>
c0102430:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
c0102433:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c0102437:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c010243a:	89 04 24             	mov    DWORD PTR [esp],eax
c010243d:	e8 12 fd ff ff       	call   c0102154 <page_table_add>
c0102442:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c0102445:	c9                   	leave  
c0102446:	c3                   	ret    

c0102447 <pgman_free>:
c0102447:	55                   	push   ebp
c0102448:	89 e5                	mov    ebp,esp
c010244a:	53                   	push   ebx
c010244b:	83 ec 34             	sub    esp,0x34
c010244e:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c0102451:	c1 e8 0c             	shr    eax,0xc
c0102454:	89 45 e8             	mov    DWORD PTR [ebp-0x18],eax
c0102457:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c010245a:	89 04 24             	mov    DWORD PTR [esp],eax
c010245d:	e8 d4 07 00 00       	call   c0102c36 <lock_acquire>
c0102462:	c7 45 f4 00 00 00 00 	mov    DWORD PTR [ebp-0xc],0x0
c0102469:	eb 19                	jmp    c0102484 <pgman_free+0x3d>
c010246b:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c010246e:	8b 40 38             	mov    eax,DWORD PTR [eax+0x38]
c0102471:	8b 55 f4             	mov    edx,DWORD PTR [ebp-0xc]
c0102474:	c1 e2 03             	shl    edx,0x3
c0102477:	01 d0                	add    eax,edx
c0102479:	8b 00                	mov    eax,DWORD PTR [eax]
c010247b:	3b 45 e8             	cmp    eax,DWORD PTR [ebp-0x18]
c010247e:	7f 13                	jg     c0102493 <pgman_free+0x4c>
c0102480:	83 45 f4 01          	add    DWORD PTR [ebp-0xc],0x1
c0102484:	8b 55 f4             	mov    edx,DWORD PTR [ebp-0xc]
c0102487:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c010248a:	8b 40 24             	mov    eax,DWORD PTR [eax+0x24]
c010248d:	39 c2                	cmp    edx,eax
c010248f:	72 da                	jb     c010246b <pgman_free+0x24>
c0102491:	eb 01                	jmp    c0102494 <pgman_free+0x4d>
c0102493:	90                   	nop
c0102494:	83 7d f4 00          	cmp    DWORD PTR [ebp-0xc],0x0
c0102498:	0f 8e 37 01 00 00    	jle    c01025d5 <pgman_free+0x18e>
c010249e:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01024a1:	8b 40 38             	mov    eax,DWORD PTR [eax+0x38]
c01024a4:	8b 55 f4             	mov    edx,DWORD PTR [ebp-0xc]
c01024a7:	83 ea 01             	sub    edx,0x1
c01024aa:	c1 e2 03             	shl    edx,0x3
c01024ad:	01 d0                	add    eax,edx
c01024af:	8b 00                	mov    eax,DWORD PTR [eax]
c01024b1:	89 c2                	mov    edx,eax
c01024b3:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01024b6:	8b 40 38             	mov    eax,DWORD PTR [eax+0x38]
c01024b9:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
c01024bc:	83 e9 01             	sub    ecx,0x1
c01024bf:	c1 e1 03             	shl    ecx,0x3
c01024c2:	01 c8                	add    eax,ecx
c01024c4:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
c01024c7:	01 c2                	add    edx,eax
c01024c9:	8b 45 e8             	mov    eax,DWORD PTR [ebp-0x18]
c01024cc:	39 c2                	cmp    edx,eax
c01024ce:	0f 85 01 01 00 00    	jne    c01025d5 <pgman_free+0x18e>
c01024d4:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01024d7:	8b 40 38             	mov    eax,DWORD PTR [eax+0x38]
c01024da:	8b 55 f4             	mov    edx,DWORD PTR [ebp-0xc]
c01024dd:	83 ea 01             	sub    edx,0x1
c01024e0:	c1 e2 03             	shl    edx,0x3
c01024e3:	01 c2                	add    edx,eax
c01024e5:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01024e8:	8b 40 38             	mov    eax,DWORD PTR [eax+0x38]
c01024eb:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
c01024ee:	83 e9 01             	sub    ecx,0x1
c01024f1:	c1 e1 03             	shl    ecx,0x3
c01024f4:	01 c8                	add    eax,ecx
c01024f6:	8b 48 04             	mov    ecx,DWORD PTR [eax+0x4]
c01024f9:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
c01024fc:	01 c8                	add    eax,ecx
c01024fe:	89 42 04             	mov    DWORD PTR [edx+0x4],eax
c0102501:	8b 55 f4             	mov    edx,DWORD PTR [ebp-0xc]
c0102504:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102507:	8b 40 24             	mov    eax,DWORD PTR [eax+0x24]
c010250a:	39 c2                	cmp    edx,eax
c010250c:	0f 83 ae 00 00 00    	jae    c01025c0 <pgman_free+0x179>
c0102512:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
c0102515:	8b 55 e8             	mov    edx,DWORD PTR [ebp-0x18]
c0102518:	8d 0c 02             	lea    ecx,[edx+eax*1]
c010251b:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c010251e:	8b 40 38             	mov    eax,DWORD PTR [eax+0x38]
c0102521:	8b 55 f4             	mov    edx,DWORD PTR [ebp-0xc]
c0102524:	c1 e2 03             	shl    edx,0x3
c0102527:	01 d0                	add    eax,edx
c0102529:	8b 00                	mov    eax,DWORD PTR [eax]
c010252b:	39 c1                	cmp    ecx,eax
c010252d:	0f 85 8d 00 00 00    	jne    c01025c0 <pgman_free+0x179>
c0102533:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102536:	8b 40 38             	mov    eax,DWORD PTR [eax+0x38]
c0102539:	8b 55 f4             	mov    edx,DWORD PTR [ebp-0xc]
c010253c:	83 ea 01             	sub    edx,0x1
c010253f:	c1 e2 03             	shl    edx,0x3
c0102542:	01 c2                	add    edx,eax
c0102544:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102547:	8b 40 38             	mov    eax,DWORD PTR [eax+0x38]
c010254a:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
c010254d:	83 e9 01             	sub    ecx,0x1
c0102550:	c1 e1 03             	shl    ecx,0x3
c0102553:	01 c8                	add    eax,ecx
c0102555:	8b 48 04             	mov    ecx,DWORD PTR [eax+0x4]
c0102558:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c010255b:	8b 40 38             	mov    eax,DWORD PTR [eax+0x38]
c010255e:	8b 5d f4             	mov    ebx,DWORD PTR [ebp-0xc]
c0102561:	c1 e3 03             	shl    ebx,0x3
c0102564:	01 d8                	add    eax,ebx
c0102566:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
c0102569:	01 c8                	add    eax,ecx
c010256b:	89 42 04             	mov    DWORD PTR [edx+0x4],eax
c010256e:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102571:	8b 40 24             	mov    eax,DWORD PTR [eax+0x24]
c0102574:	8d 50 ff             	lea    edx,[eax-0x1]
c0102577:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c010257a:	89 50 24             	mov    DWORD PTR [eax+0x24],edx
c010257d:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0102580:	89 45 f0             	mov    DWORD PTR [ebp-0x10],eax
c0102583:	eb 2e                	jmp    c01025b3 <pgman_free+0x16c>
c0102585:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102588:	8b 40 38             	mov    eax,DWORD PTR [eax+0x38]
c010258b:	8b 55 f0             	mov    edx,DWORD PTR [ebp-0x10]
c010258e:	c1 e2 03             	shl    edx,0x3
c0102591:	8d 0c 10             	lea    ecx,[eax+edx*1]
c0102594:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102597:	8b 40 38             	mov    eax,DWORD PTR [eax+0x38]
c010259a:	8b 55 f0             	mov    edx,DWORD PTR [ebp-0x10]
c010259d:	83 c2 01             	add    edx,0x1
c01025a0:	c1 e2 03             	shl    edx,0x3
c01025a3:	01 d0                	add    eax,edx
c01025a5:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
c01025a8:	8b 00                	mov    eax,DWORD PTR [eax]
c01025aa:	89 01                	mov    DWORD PTR [ecx],eax
c01025ac:	89 51 04             	mov    DWORD PTR [ecx+0x4],edx
c01025af:	83 45 f0 01          	add    DWORD PTR [ebp-0x10],0x1
c01025b3:	8b 55 f0             	mov    edx,DWORD PTR [ebp-0x10]
c01025b6:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01025b9:	8b 40 24             	mov    eax,DWORD PTR [eax+0x24]
c01025bc:	39 c2                	cmp    edx,eax
c01025be:	72 c5                	jb     c0102585 <pgman_free+0x13e>
c01025c0:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01025c3:	89 04 24             	mov    DWORD PTR [esp],eax
c01025c6:	e8 ef 06 00 00       	call   c0102cba <lock_release>
c01025cb:	b8 00 00 00 00       	mov    eax,0x0
c01025d0:	e9 8b 01 00 00       	jmp    c0102760 <pgman_free+0x319>
c01025d5:	8b 55 f4             	mov    edx,DWORD PTR [ebp-0xc]
c01025d8:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01025db:	8b 40 24             	mov    eax,DWORD PTR [eax+0x24]
c01025de:	39 c2                	cmp    edx,eax
c01025e0:	73 6c                	jae    c010264e <pgman_free+0x207>
c01025e2:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
c01025e5:	8b 55 e8             	mov    edx,DWORD PTR [ebp-0x18]
c01025e8:	8d 0c 02             	lea    ecx,[edx+eax*1]
c01025eb:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01025ee:	8b 40 38             	mov    eax,DWORD PTR [eax+0x38]
c01025f1:	8b 55 f4             	mov    edx,DWORD PTR [ebp-0xc]
c01025f4:	c1 e2 03             	shl    edx,0x3
c01025f7:	01 d0                	add    eax,edx
c01025f9:	8b 00                	mov    eax,DWORD PTR [eax]
c01025fb:	39 c1                	cmp    ecx,eax
c01025fd:	75 4f                	jne    c010264e <pgman_free+0x207>
c01025ff:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102602:	8b 40 38             	mov    eax,DWORD PTR [eax+0x38]
c0102605:	8b 55 f4             	mov    edx,DWORD PTR [ebp-0xc]
c0102608:	c1 e2 03             	shl    edx,0x3
c010260b:	01 c2                	add    edx,eax
c010260d:	8b 45 e8             	mov    eax,DWORD PTR [ebp-0x18]
c0102610:	89 02                	mov    DWORD PTR [edx],eax
c0102612:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102615:	8b 40 38             	mov    eax,DWORD PTR [eax+0x38]
c0102618:	8b 55 f4             	mov    edx,DWORD PTR [ebp-0xc]
c010261b:	c1 e2 03             	shl    edx,0x3
c010261e:	01 c2                	add    edx,eax
c0102620:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102623:	8b 40 38             	mov    eax,DWORD PTR [eax+0x38]
c0102626:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
c0102629:	c1 e1 03             	shl    ecx,0x3
c010262c:	01 c8                	add    eax,ecx
c010262e:	8b 48 04             	mov    ecx,DWORD PTR [eax+0x4]
c0102631:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
c0102634:	01 c8                	add    eax,ecx
c0102636:	89 42 04             	mov    DWORD PTR [edx+0x4],eax
c0102639:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c010263c:	89 04 24             	mov    DWORD PTR [esp],eax
c010263f:	e8 76 06 00 00       	call   c0102cba <lock_release>
c0102644:	b8 00 00 00 00       	mov    eax,0x0
c0102649:	e9 12 01 00 00       	jmp    c0102760 <pgman_free+0x319>
c010264e:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102651:	8b 40 24             	mov    eax,DWORD PTR [eax+0x24]
c0102654:	3d e7 03 00 00       	cmp    eax,0x3e7
c0102659:	0f 87 a5 00 00 00    	ja     c0102704 <pgman_free+0x2bd>
c010265f:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102662:	8b 40 24             	mov    eax,DWORD PTR [eax+0x24]
c0102665:	89 45 ec             	mov    DWORD PTR [ebp-0x14],eax
c0102668:	eb 2e                	jmp    c0102698 <pgman_free+0x251>
c010266a:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c010266d:	8b 40 38             	mov    eax,DWORD PTR [eax+0x38]
c0102670:	8b 55 ec             	mov    edx,DWORD PTR [ebp-0x14]
c0102673:	c1 e2 03             	shl    edx,0x3
c0102676:	8d 0c 10             	lea    ecx,[eax+edx*1]
c0102679:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c010267c:	8b 40 38             	mov    eax,DWORD PTR [eax+0x38]
c010267f:	8b 55 ec             	mov    edx,DWORD PTR [ebp-0x14]
c0102682:	83 ea 01             	sub    edx,0x1
c0102685:	c1 e2 03             	shl    edx,0x3
c0102688:	01 d0                	add    eax,edx
c010268a:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
c010268d:	8b 00                	mov    eax,DWORD PTR [eax]
c010268f:	89 01                	mov    DWORD PTR [ecx],eax
c0102691:	89 51 04             	mov    DWORD PTR [ecx+0x4],edx
c0102694:	83 6d ec 01          	sub    DWORD PTR [ebp-0x14],0x1
c0102698:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
c010269b:	3b 45 f4             	cmp    eax,DWORD PTR [ebp-0xc]
c010269e:	7f ca                	jg     c010266a <pgman_free+0x223>
c01026a0:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01026a3:	8b 40 24             	mov    eax,DWORD PTR [eax+0x24]
c01026a6:	8d 50 01             	lea    edx,[eax+0x1]
c01026a9:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01026ac:	89 50 24             	mov    DWORD PTR [eax+0x24],edx
c01026af:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01026b2:	8b 50 28             	mov    edx,DWORD PTR [eax+0x28]
c01026b5:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01026b8:	8b 40 24             	mov    eax,DWORD PTR [eax+0x24]
c01026bb:	39 c2                	cmp    edx,eax
c01026bd:	73 0c                	jae    c01026cb <pgman_free+0x284>
c01026bf:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01026c2:	8b 50 24             	mov    edx,DWORD PTR [eax+0x24]
c01026c5:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01026c8:	89 50 28             	mov    DWORD PTR [eax+0x28],edx
c01026cb:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01026ce:	8b 40 38             	mov    eax,DWORD PTR [eax+0x38]
c01026d1:	8b 55 f4             	mov    edx,DWORD PTR [ebp-0xc]
c01026d4:	c1 e2 03             	shl    edx,0x3
c01026d7:	01 c2                	add    edx,eax
c01026d9:	8b 45 e8             	mov    eax,DWORD PTR [ebp-0x18]
c01026dc:	89 02                	mov    DWORD PTR [edx],eax
c01026de:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01026e1:	8b 40 38             	mov    eax,DWORD PTR [eax+0x38]
c01026e4:	8b 55 f4             	mov    edx,DWORD PTR [ebp-0xc]
c01026e7:	c1 e2 03             	shl    edx,0x3
c01026ea:	01 c2                	add    edx,eax
c01026ec:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
c01026ef:	89 42 04             	mov    DWORD PTR [edx+0x4],eax
c01026f2:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01026f5:	89 04 24             	mov    DWORD PTR [esp],eax
c01026f8:	e8 bd 05 00 00       	call   c0102cba <lock_release>
c01026fd:	b8 00 00 00 00       	mov    eax,0x0
c0102702:	eb 5c                	jmp    c0102760 <pgman_free+0x319>
c0102704:	c7 44 24 10 fa bd 10 	mov    DWORD PTR [esp+0x10],0xc010bdfa
c010270b:	c0 
c010270c:	c7 44 24 0c a8 be 10 	mov    DWORD PTR [esp+0xc],0xc010bea8
c0102713:	c0 
c0102714:	c7 44 24 08 48 01 00 	mov    DWORD PTR [esp+0x8],0x148
c010271b:	00 
c010271c:	c7 44 24 04 50 bd 10 	mov    DWORD PTR [esp+0x4],0xc010bd50
c0102723:	c0 
c0102724:	c7 04 24 50 bd 10 c0 	mov    DWORD PTR [esp],0xc010bd50
c010272b:	e8 74 e1 ff ff       	call   c01008a4 <panic_spin>
c0102730:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102733:	8b 40 30             	mov    eax,DWORD PTR [eax+0x30]
c0102736:	8d 50 01             	lea    edx,[eax+0x1]
c0102739:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c010273c:	89 50 30             	mov    DWORD PTR [eax+0x30],edx
c010273f:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102742:	8b 50 2c             	mov    edx,DWORD PTR [eax+0x2c]
c0102745:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
c0102748:	01 c2                	add    edx,eax
c010274a:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c010274d:	89 50 2c             	mov    DWORD PTR [eax+0x2c],edx
c0102750:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102753:	89 04 24             	mov    DWORD PTR [esp],eax
c0102756:	e8 5f 05 00 00       	call   c0102cba <lock_release>
c010275b:	b8 01 00 00 00       	mov    eax,0x1
c0102760:	83 c4 34             	add    esp,0x34
c0102763:	5b                   	pop    ebx
c0102764:	5d                   	pop    ebp
c0102765:	c3                   	ret    

c0102766 <page_table_remove>:
c0102766:	55                   	push   ebp
c0102767:	89 e5                	mov    ebp,esp
c0102769:	83 ec 14             	sub    esp,0x14
c010276c:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c010276f:	89 04 24             	mov    DWORD PTR [esp],eax
c0102772:	e8 49 f8 ff ff       	call   c0101fc0 <pte_ptr>
c0102777:	89 45 fc             	mov    DWORD PTR [ebp-0x4],eax
c010277a:	8b 45 fc             	mov    eax,DWORD PTR [ebp-0x4]
c010277d:	8b 00                	mov    eax,DWORD PTR [eax]
c010277f:	89 c2                	mov    edx,eax
c0102781:	83 e2 fe             	and    edx,0xfffffffe
c0102784:	8b 45 fc             	mov    eax,DWORD PTR [ebp-0x4]
c0102787:	89 10                	mov    DWORD PTR [eax],edx
c0102789:	0f 01 7d 08          	invlpg BYTE PTR [ebp+0x8]
c010278d:	c9                   	leave  
c010278e:	c3                   	ret    

c010278f <paddr_free>:
c010278f:	55                   	push   ebp
c0102790:	89 e5                	mov    ebp,esp
c0102792:	83 ec 28             	sub    esp,0x28
c0102795:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c0102798:	a1 80 cc 10 c0       	mov    eax,ds:0xc010cc80
c010279d:	39 c2                	cmp    edx,eax
c010279f:	72 09                	jb     c01027aa <paddr_free+0x1b>
c01027a1:	c7 45 f4 40 f3 10 c0 	mov    DWORD PTR [ebp-0xc],0xc010f340
c01027a8:	eb 07                	jmp    c01027b1 <paddr_free+0x22>
c01027aa:	c7 45 f4 40 32 11 c0 	mov    DWORD PTR [ebp-0xc],0xc0113240
c01027b1:	c7 44 24 08 01 00 00 	mov    DWORD PTR [esp+0x8],0x1
c01027b8:	00 
c01027b9:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01027bc:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c01027c0:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c01027c3:	89 04 24             	mov    DWORD PTR [esp],eax
c01027c6:	e8 7c fc ff ff       	call   c0102447 <pgman_free>
c01027cb:	c9                   	leave  
c01027cc:	c3                   	ret    

c01027cd <vaddr_free>:
c01027cd:	55                   	push   ebp
c01027ce:	89 e5                	mov    ebp,esp
c01027d0:	83 ec 28             	sub    esp,0x28
c01027d3:	83 7d 08 01          	cmp    DWORD PTR [ebp+0x8],0x1
c01027d7:	75 1c                	jne    c01027f5 <vaddr_free+0x28>
c01027d9:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
c01027dc:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
c01027e0:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c01027e3:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c01027e7:	c7 04 24 80 f3 10 c0 	mov    DWORD PTR [esp],0xc010f380
c01027ee:	e8 54 fc ff ff       	call   c0102447 <pgman_free>
c01027f3:	eb 24                	jmp    c0102819 <vaddr_free+0x4c>
c01027f5:	e8 cd 06 00 00       	call   c0102ec7 <running_thread>
c01027fa:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
c01027fd:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
c0102800:	8b 55 f4             	mov    edx,DWORD PTR [ebp-0xc]
c0102803:	83 c2 40             	add    edx,0x40
c0102806:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
c010280a:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c010280d:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c0102811:	89 14 24             	mov    DWORD PTR [esp],edx
c0102814:	e8 2e fc ff ff       	call   c0102447 <pgman_free>
c0102819:	c9                   	leave  
c010281a:	c3                   	ret    

c010281b <page_free>:
c010281b:	55                   	push   ebp
c010281c:	89 e5                	mov    ebp,esp
c010281e:	83 ec 38             	sub    esp,0x38
c0102821:	83 7d 10 00          	cmp    DWORD PTR [ebp+0x10],0x0
c0102825:	7e 0c                	jle    c0102833 <page_free+0x18>
c0102827:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c010282a:	25 ff 0f 00 00       	and    eax,0xfff
c010282f:	85 c0                	test   eax,eax
c0102831:	74 2c                	je     c010285f <page_free+0x44>
c0102833:	c7 44 24 10 0c be 10 	mov    DWORD PTR [esp+0x10],0xc010be0c
c010283a:	c0 
c010283b:	c7 44 24 0c 9e be 10 	mov    DWORD PTR [esp+0xc],0xc010be9e
c0102842:	c0 
c0102843:	c7 44 24 08 78 01 00 	mov    DWORD PTR [esp+0x8],0x178
c010284a:	00 
c010284b:	c7 44 24 04 50 bd 10 	mov    DWORD PTR [esp+0x4],0xc010bd50
c0102852:	c0 
c0102853:	c7 04 24 50 bd 10 c0 	mov    DWORD PTR [esp],0xc010bd50
c010285a:	e8 45 e0 ff ff       	call   c01008a4 <panic_spin>
c010285f:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c0102862:	89 04 24             	mov    DWORD PTR [esp],eax
c0102865:	e8 7d f7 ff ff       	call   c0101fe7 <addr_v2p>
c010286a:	89 45 ec             	mov    DWORD PTR [ebp-0x14],eax
c010286d:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
c0102870:	25 ff 0f 00 00       	and    eax,0xfff
c0102875:	85 c0                	test   eax,eax
c0102877:	75 0a                	jne    c0102883 <page_free+0x68>
c0102879:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
c010287c:	3d ff ff 5f 00       	cmp    eax,0x5fffff
c0102881:	77 2c                	ja     c01028af <page_free+0x94>
c0102883:	c7 44 24 10 40 be 10 	mov    DWORD PTR [esp+0x10],0xc010be40
c010288a:	c0 
c010288b:	c7 44 24 0c 9e be 10 	mov    DWORD PTR [esp+0xc],0xc010be9e
c0102892:	c0 
c0102893:	c7 44 24 08 7a 01 00 	mov    DWORD PTR [esp+0x8],0x17a
c010289a:	00 
c010289b:	c7 44 24 04 50 bd 10 	mov    DWORD PTR [esp+0x4],0xc010bd50
c01028a2:	c0 
c01028a3:	c7 04 24 50 bd 10 c0 	mov    DWORD PTR [esp],0xc010bd50
c01028aa:	e8 f5 df ff ff       	call   c01008a4 <panic_spin>
c01028af:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c01028b2:	89 45 f0             	mov    DWORD PTR [ebp-0x10],eax
c01028b5:	8b 55 ec             	mov    edx,DWORD PTR [ebp-0x14]
c01028b8:	a1 80 cc 10 c0       	mov    eax,ds:0xc010cc80
c01028bd:	39 c2                	cmp    edx,eax
c01028bf:	72 5b                	jb     c010291c <page_free+0x101>
c01028c1:	c7 45 f4 00 00 00 00 	mov    DWORD PTR [ebp-0xc],0x0
c01028c8:	eb 2f                	jmp    c01028f9 <page_free+0xde>
c01028ca:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c01028cd:	89 04 24             	mov    DWORD PTR [esp],eax
c01028d0:	e8 12 f7 ff ff       	call   c0101fe7 <addr_v2p>
c01028d5:	89 45 ec             	mov    DWORD PTR [ebp-0x14],eax
c01028d8:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
c01028db:	89 04 24             	mov    DWORD PTR [esp],eax
c01028de:	e8 ac fe ff ff       	call   c010278f <paddr_free>
c01028e3:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c01028e6:	89 04 24             	mov    DWORD PTR [esp],eax
c01028e9:	e8 78 fe ff ff       	call   c0102766 <page_table_remove>
c01028ee:	83 45 f4 01          	add    DWORD PTR [ebp-0xc],0x1
c01028f2:	81 45 f0 00 10 00 00 	add    DWORD PTR [ebp-0x10],0x1000
c01028f9:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
c01028fc:	3b 45 f4             	cmp    eax,DWORD PTR [ebp-0xc]
c01028ff:	77 c9                	ja     c01028ca <page_free+0xaf>
c0102901:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
c0102904:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
c0102908:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c010290b:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c010290f:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102912:	89 04 24             	mov    DWORD PTR [esp],eax
c0102915:	e8 b3 fe ff ff       	call   c01027cd <vaddr_free>
c010291a:	eb 59                	jmp    c0102975 <page_free+0x15a>
c010291c:	c7 45 f4 00 00 00 00 	mov    DWORD PTR [ebp-0xc],0x0
c0102923:	eb 2f                	jmp    c0102954 <page_free+0x139>
c0102925:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c0102928:	89 04 24             	mov    DWORD PTR [esp],eax
c010292b:	e8 b7 f6 ff ff       	call   c0101fe7 <addr_v2p>
c0102930:	89 45 ec             	mov    DWORD PTR [ebp-0x14],eax
c0102933:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
c0102936:	89 04 24             	mov    DWORD PTR [esp],eax
c0102939:	e8 51 fe ff ff       	call   c010278f <paddr_free>
c010293e:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c0102941:	89 04 24             	mov    DWORD PTR [esp],eax
c0102944:	e8 1d fe ff ff       	call   c0102766 <page_table_remove>
c0102949:	83 45 f4 01          	add    DWORD PTR [ebp-0xc],0x1
c010294d:	81 45 f0 00 10 00 00 	add    DWORD PTR [ebp-0x10],0x1000
c0102954:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
c0102957:	3b 45 f4             	cmp    eax,DWORD PTR [ebp-0xc]
c010295a:	77 c9                	ja     c0102925 <page_free+0x10a>
c010295c:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
c010295f:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
c0102963:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c0102966:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c010296a:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c010296d:	89 04 24             	mov    DWORD PTR [esp],eax
c0102970:	e8 58 fe ff ff       	call   c01027cd <vaddr_free>
c0102975:	c9                   	leave  
c0102976:	c3                   	ret    
	...

c0102978 <sema_init>:
c0102978:	55                   	push   ebp
c0102979:	89 e5                	mov    ebp,esp
c010297b:	83 ec 38             	sub    esp,0x38
c010297e:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c0102981:	88 45 f4             	mov    BYTE PTR [ebp-0xc],al
c0102984:	0f b6 55 f4          	movzx  edx,BYTE PTR [ebp-0xc]
c0102988:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c010298b:	89 10                	mov    DWORD PTR [eax],edx
c010298d:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102990:	83 c0 04             	add    eax,0x4
c0102993:	89 04 24             	mov    DWORD PTR [esp],eax
c0102996:	e8 41 4f 00 00       	call   c01078dc <list_init>
c010299b:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c010299e:	8b 10                	mov    edx,DWORD PTR [eax]
c01029a0:	0f b6 45 f4          	movzx  eax,BYTE PTR [ebp-0xc]
c01029a4:	39 c2                	cmp    edx,eax
c01029a6:	74 2c                	je     c01029d4 <sema_init+0x5c>
c01029a8:	c7 44 24 10 07 bf 10 	mov    DWORD PTR [esp+0x10],0xc010bf07
c01029af:	c0 
c01029b0:	c7 44 24 0c 87 c0 10 	mov    DWORD PTR [esp+0xc],0xc010c087
c01029b7:	c0 
c01029b8:	c7 44 24 08 0d 00 00 	mov    DWORD PTR [esp+0x8],0xd
c01029bf:	00 
c01029c0:	c7 44 24 04 1d bf 10 	mov    DWORD PTR [esp+0x4],0xc010bf1d
c01029c7:	c0 
c01029c8:	c7 04 24 1d bf 10 c0 	mov    DWORD PTR [esp],0xc010bf1d
c01029cf:	e8 d0 de ff ff       	call   c01008a4 <panic_spin>
c01029d4:	c9                   	leave  
c01029d5:	c3                   	ret    

c01029d6 <lock_init>:
c01029d6:	55                   	push   ebp
c01029d7:	89 e5                	mov    ebp,esp
c01029d9:	83 ec 18             	sub    esp,0x18
c01029dc:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01029df:	c7 00 00 00 00 00    	mov    DWORD PTR [eax],0x0
c01029e5:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01029e8:	c7 40 20 00 00 00 00 	mov    DWORD PTR [eax+0x20],0x0
c01029ef:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01029f2:	83 c0 04             	add    eax,0x4
c01029f5:	c7 44 24 04 01 00 00 	mov    DWORD PTR [esp+0x4],0x1
c01029fc:	00 
c01029fd:	89 04 24             	mov    DWORD PTR [esp],eax
c0102a00:	e8 73 ff ff ff       	call   c0102978 <sema_init>
c0102a05:	c9                   	leave  
c0102a06:	c3                   	ret    

c0102a07 <sema_down>:
c0102a07:	55                   	push   ebp
c0102a08:	89 e5                	mov    ebp,esp
c0102a0a:	53                   	push   ebx
c0102a0b:	83 ec 34             	sub    esp,0x34
c0102a0e:	e8 b3 ec ff ff       	call   c01016c6 <intr_disable>
c0102a13:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
c0102a16:	e9 f7 00 00 00       	jmp    c0102b12 <sema_down+0x10b>
c0102a1b:	e8 a7 04 00 00       	call   c0102ec7 <running_thread>
c0102a20:	8d 50 30             	lea    edx,[eax+0x30]
c0102a23:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102a26:	83 c0 04             	add    eax,0x4
c0102a29:	89 54 24 04          	mov    DWORD PTR [esp+0x4],edx
c0102a2d:	89 04 24             	mov    DWORD PTR [esp],eax
c0102a30:	e8 a4 4f 00 00       	call   c01079d9 <list_find>
c0102a35:	85 c0                	test   eax,eax
c0102a37:	74 2c                	je     c0102a65 <sema_down+0x5e>
c0102a39:	c7 44 24 10 2c bf 10 	mov    DWORD PTR [esp+0x10],0xc010bf2c
c0102a40:	c0 
c0102a41:	c7 44 24 0c 7d c0 10 	mov    DWORD PTR [esp+0xc],0xc010c07d
c0102a48:	c0 
c0102a49:	c7 44 24 08 24 00 00 	mov    DWORD PTR [esp+0x8],0x24
c0102a50:	00 
c0102a51:	c7 44 24 04 1d bf 10 	mov    DWORD PTR [esp+0x4],0xc010bf1d
c0102a58:	c0 
c0102a59:	c7 04 24 1d bf 10 c0 	mov    DWORD PTR [esp],0xc010bf1d
c0102a60:	e8 3f de ff ff       	call   c01008a4 <panic_spin>
c0102a65:	e8 5d 04 00 00       	call   c0102ec7 <running_thread>
c0102a6a:	8d 50 30             	lea    edx,[eax+0x30]
c0102a6d:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102a70:	83 c0 04             	add    eax,0x4
c0102a73:	89 54 24 04          	mov    DWORD PTR [esp+0x4],edx
c0102a77:	89 04 24             	mov    DWORD PTR [esp],eax
c0102a7a:	e8 5a 4f 00 00       	call   c01079d9 <list_find>
c0102a7f:	85 c0                	test   eax,eax
c0102a81:	74 2c                	je     c0102aaf <sema_down+0xa8>
c0102a83:	c7 44 24 10 70 bf 10 	mov    DWORD PTR [esp+0x10],0xc010bf70
c0102a8a:	c0 
c0102a8b:	c7 44 24 0c 7d c0 10 	mov    DWORD PTR [esp+0xc],0xc010c07d
c0102a92:	c0 
c0102a93:	c7 44 24 08 27 00 00 	mov    DWORD PTR [esp+0x8],0x27
c0102a9a:	00 
c0102a9b:	c7 44 24 04 1d bf 10 	mov    DWORD PTR [esp+0x4],0xc010bf1d
c0102aa2:	c0 
c0102aa3:	c7 04 24 1d bf 10 c0 	mov    DWORD PTR [esp],0xc010bf1d
c0102aaa:	e8 f5 dd ff ff       	call   c01008a4 <panic_spin>
c0102aaf:	e8 13 04 00 00       	call   c0102ec7 <running_thread>
c0102ab4:	8b 58 34             	mov    ebx,DWORD PTR [eax+0x34]
c0102ab7:	e8 0b 04 00 00       	call   c0102ec7 <running_thread>
c0102abc:	39 c3                	cmp    ebx,eax
c0102abe:	74 2c                	je     c0102aec <sema_down+0xe5>
c0102ac0:	c7 44 24 10 a4 bf 10 	mov    DWORD PTR [esp+0x10],0xc010bfa4
c0102ac7:	c0 
c0102ac8:	c7 44 24 0c 7d c0 10 	mov    DWORD PTR [esp+0xc],0xc010c07d
c0102acf:	c0 
c0102ad0:	c7 44 24 08 29 00 00 	mov    DWORD PTR [esp+0x8],0x29
c0102ad7:	00 
c0102ad8:	c7 44 24 04 1d bf 10 	mov    DWORD PTR [esp+0x4],0xc010bf1d
c0102adf:	c0 
c0102ae0:	c7 04 24 1d bf 10 c0 	mov    DWORD PTR [esp],0xc010bf1d
c0102ae7:	e8 b8 dd ff ff       	call   c01008a4 <panic_spin>
c0102aec:	e8 d6 03 00 00       	call   c0102ec7 <running_thread>
c0102af1:	8d 50 30             	lea    edx,[eax+0x30]
c0102af4:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102af7:	83 c0 04             	add    eax,0x4
c0102afa:	89 54 24 04          	mov    DWORD PTR [esp+0x4],edx
c0102afe:	89 04 24             	mov    DWORD PTR [esp],eax
c0102b01:	e8 61 4e 00 00       	call   c0107967 <list_append>
c0102b06:	c7 04 24 02 00 00 00 	mov    DWORD PTR [esp],0x2
c0102b0d:	e8 5b 07 00 00       	call   c010326d <thread_block>
c0102b12:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102b15:	8b 00                	mov    eax,DWORD PTR [eax]
c0102b17:	85 c0                	test   eax,eax
c0102b19:	0f 84 fc fe ff ff    	je     c0102a1b <sema_down+0x14>
c0102b1f:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102b22:	8b 00                	mov    eax,DWORD PTR [eax]
c0102b24:	8d 50 ff             	lea    edx,[eax-0x1]
c0102b27:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102b2a:	89 10                	mov    DWORD PTR [eax],edx
c0102b2c:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102b2f:	8b 00                	mov    eax,DWORD PTR [eax]
c0102b31:	85 c0                	test   eax,eax
c0102b33:	74 2c                	je     c0102b61 <sema_down+0x15a>
c0102b35:	c7 44 24 10 db bf 10 	mov    DWORD PTR [esp+0x10],0xc010bfdb
c0102b3c:	c0 
c0102b3d:	c7 44 24 0c 7d c0 10 	mov    DWORD PTR [esp+0xc],0xc010c07d
c0102b44:	c0 
c0102b45:	c7 44 24 08 2e 00 00 	mov    DWORD PTR [esp+0x8],0x2e
c0102b4c:	00 
c0102b4d:	c7 44 24 04 1d bf 10 	mov    DWORD PTR [esp+0x4],0xc010bf1d
c0102b54:	c0 
c0102b55:	c7 04 24 1d bf 10 c0 	mov    DWORD PTR [esp],0xc010bf1d
c0102b5c:	e8 43 dd ff ff       	call   c01008a4 <panic_spin>
c0102b61:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0102b64:	89 04 24             	mov    DWORD PTR [esp],eax
c0102b67:	e8 87 eb ff ff       	call   c01016f3 <intr_set_status>
c0102b6c:	83 c4 34             	add    esp,0x34
c0102b6f:	5b                   	pop    ebx
c0102b70:	5d                   	pop    ebp
c0102b71:	c3                   	ret    

c0102b72 <sema_up>:
c0102b72:	55                   	push   ebp
c0102b73:	89 e5                	mov    ebp,esp
c0102b75:	83 ec 38             	sub    esp,0x38
c0102b78:	e8 49 eb ff ff       	call   c01016c6 <intr_disable>
c0102b7d:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
c0102b80:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102b83:	8b 00                	mov    eax,DWORD PTR [eax]
c0102b85:	85 c0                	test   eax,eax
c0102b87:	74 2c                	je     c0102bb5 <sema_up+0x43>
c0102b89:	c7 44 24 10 db bf 10 	mov    DWORD PTR [esp+0x10],0xc010bfdb
c0102b90:	c0 
c0102b91:	c7 44 24 0c 75 c0 10 	mov    DWORD PTR [esp+0xc],0xc010c075
c0102b98:	c0 
c0102b99:	c7 44 24 08 39 00 00 	mov    DWORD PTR [esp+0x8],0x39
c0102ba0:	00 
c0102ba1:	c7 44 24 04 1d bf 10 	mov    DWORD PTR [esp+0x4],0xc010bf1d
c0102ba8:	c0 
c0102ba9:	c7 04 24 1d bf 10 c0 	mov    DWORD PTR [esp],0xc010bf1d
c0102bb0:	e8 ef dc ff ff       	call   c01008a4 <panic_spin>
c0102bb5:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102bb8:	83 c0 04             	add    eax,0x4
c0102bbb:	89 04 24             	mov    DWORD PTR [esp],eax
c0102bbe:	e8 cd 4e 00 00       	call   c0107a90 <list_empty>
c0102bc3:	85 c0                	test   eax,eax
c0102bc5:	75 1f                	jne    c0102be6 <sema_up+0x74>
c0102bc7:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102bca:	83 c0 04             	add    eax,0x4
c0102bcd:	89 04 24             	mov    DWORD PTR [esp],eax
c0102bd0:	e8 e5 4d 00 00       	call   c01079ba <list_pop>
c0102bd5:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
c0102bd8:	89 45 f0             	mov    DWORD PTR [ebp-0x10],eax
c0102bdb:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c0102bde:	89 04 24             	mov    DWORD PTR [esp],eax
c0102be1:	e8 27 07 00 00       	call   c010330d <thread_unblock>
c0102be6:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102be9:	8b 00                	mov    eax,DWORD PTR [eax]
c0102beb:	8d 50 01             	lea    edx,[eax+0x1]
c0102bee:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102bf1:	89 10                	mov    DWORD PTR [eax],edx
c0102bf3:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102bf6:	8b 00                	mov    eax,DWORD PTR [eax]
c0102bf8:	83 f8 01             	cmp    eax,0x1
c0102bfb:	74 2c                	je     c0102c29 <sema_up+0xb7>
c0102bfd:	c7 44 24 10 ed bf 10 	mov    DWORD PTR [esp+0x10],0xc010bfed
c0102c04:	c0 
c0102c05:	c7 44 24 0c 75 c0 10 	mov    DWORD PTR [esp+0xc],0xc010c075
c0102c0c:	c0 
c0102c0d:	c7 44 24 08 40 00 00 	mov    DWORD PTR [esp+0x8],0x40
c0102c14:	00 
c0102c15:	c7 44 24 04 1d bf 10 	mov    DWORD PTR [esp+0x4],0xc010bf1d
c0102c1c:	c0 
c0102c1d:	c7 04 24 1d bf 10 c0 	mov    DWORD PTR [esp],0xc010bf1d
c0102c24:	e8 7b dc ff ff       	call   c01008a4 <panic_spin>
c0102c29:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0102c2c:	89 04 24             	mov    DWORD PTR [esp],eax
c0102c2f:	e8 bf ea ff ff       	call   c01016f3 <intr_set_status>
c0102c34:	c9                   	leave  
c0102c35:	c3                   	ret    

c0102c36 <lock_acquire>:
c0102c36:	55                   	push   ebp
c0102c37:	89 e5                	mov    ebp,esp
c0102c39:	53                   	push   ebx
c0102c3a:	83 ec 24             	sub    esp,0x24
c0102c3d:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102c40:	8b 18                	mov    ebx,DWORD PTR [eax]
c0102c42:	e8 80 02 00 00       	call   c0102ec7 <running_thread>
c0102c47:	39 c3                	cmp    ebx,eax
c0102c49:	74 5a                	je     c0102ca5 <lock_acquire+0x6f>
c0102c4b:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102c4e:	83 c0 04             	add    eax,0x4
c0102c51:	89 04 24             	mov    DWORD PTR [esp],eax
c0102c54:	e8 ae fd ff ff       	call   c0102a07 <sema_down>
c0102c59:	e8 69 02 00 00       	call   c0102ec7 <running_thread>
c0102c5e:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c0102c61:	89 02                	mov    DWORD PTR [edx],eax
c0102c63:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102c66:	8b 40 20             	mov    eax,DWORD PTR [eax+0x20]
c0102c69:	85 c0                	test   eax,eax
c0102c6b:	74 2c                	je     c0102c99 <lock_acquire+0x63>
c0102c6d:	c7 44 24 10 ff bf 10 	mov    DWORD PTR [esp+0x10],0xc010bfff
c0102c74:	c0 
c0102c75:	c7 44 24 0c 68 c0 10 	mov    DWORD PTR [esp+0xc],0xc010c068
c0102c7c:	c0 
c0102c7d:	c7 44 24 08 4e 00 00 	mov    DWORD PTR [esp+0x8],0x4e
c0102c84:	00 
c0102c85:	c7 44 24 04 1d bf 10 	mov    DWORD PTR [esp+0x4],0xc010bf1d
c0102c8c:	c0 
c0102c8d:	c7 04 24 1d bf 10 c0 	mov    DWORD PTR [esp],0xc010bf1d
c0102c94:	e8 0b dc ff ff       	call   c01008a4 <panic_spin>
c0102c99:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102c9c:	c7 40 20 01 00 00 00 	mov    DWORD PTR [eax+0x20],0x1
c0102ca3:	eb 0f                	jmp    c0102cb4 <lock_acquire+0x7e>
c0102ca5:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102ca8:	8b 40 20             	mov    eax,DWORD PTR [eax+0x20]
c0102cab:	8d 50 01             	lea    edx,[eax+0x1]
c0102cae:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102cb1:	89 50 20             	mov    DWORD PTR [eax+0x20],edx
c0102cb4:	83 c4 24             	add    esp,0x24
c0102cb7:	5b                   	pop    ebx
c0102cb8:	5d                   	pop    ebp
c0102cb9:	c3                   	ret    

c0102cba <lock_release>:
c0102cba:	55                   	push   ebp
c0102cbb:	89 e5                	mov    ebp,esp
c0102cbd:	53                   	push   ebx
c0102cbe:	83 ec 24             	sub    esp,0x24
c0102cc1:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102cc4:	8b 18                	mov    ebx,DWORD PTR [eax]
c0102cc6:	e8 fc 01 00 00       	call   c0102ec7 <running_thread>
c0102ccb:	39 c3                	cmp    ebx,eax
c0102ccd:	74 2c                	je     c0102cfb <lock_release+0x41>
c0102ccf:	c7 44 24 10 1c c0 10 	mov    DWORD PTR [esp+0x10],0xc010c01c
c0102cd6:	c0 
c0102cd7:	c7 44 24 0c 5b c0 10 	mov    DWORD PTR [esp+0xc],0xc010c05b
c0102cde:	c0 
c0102cdf:	c7 44 24 08 5d 00 00 	mov    DWORD PTR [esp+0x8],0x5d
c0102ce6:	00 
c0102ce7:	c7 44 24 04 1d bf 10 	mov    DWORD PTR [esp+0x4],0xc010bf1d
c0102cee:	c0 
c0102cef:	c7 04 24 1d bf 10 c0 	mov    DWORD PTR [esp],0xc010bf1d
c0102cf6:	e8 a9 db ff ff       	call   c01008a4 <panic_spin>
c0102cfb:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102cfe:	8b 40 20             	mov    eax,DWORD PTR [eax+0x20]
c0102d01:	83 f8 01             	cmp    eax,0x1
c0102d04:	76 11                	jbe    c0102d17 <lock_release+0x5d>
c0102d06:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102d09:	8b 40 20             	mov    eax,DWORD PTR [eax+0x20]
c0102d0c:	8d 50 ff             	lea    edx,[eax-0x1]
c0102d0f:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102d12:	89 50 20             	mov    DWORD PTR [eax+0x20],edx
c0102d15:	eb 59                	jmp    c0102d70 <lock_release+0xb6>
c0102d17:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102d1a:	8b 40 20             	mov    eax,DWORD PTR [eax+0x20]
c0102d1d:	83 f8 01             	cmp    eax,0x1
c0102d20:	74 2c                	je     c0102d4e <lock_release+0x94>
c0102d22:	c7 44 24 10 3e c0 10 	mov    DWORD PTR [esp+0x10],0xc010c03e
c0102d29:	c0 
c0102d2a:	c7 44 24 0c 5b c0 10 	mov    DWORD PTR [esp+0xc],0xc010c05b
c0102d31:	c0 
c0102d32:	c7 44 24 08 63 00 00 	mov    DWORD PTR [esp+0x8],0x63
c0102d39:	00 
c0102d3a:	c7 44 24 04 1d bf 10 	mov    DWORD PTR [esp+0x4],0xc010bf1d
c0102d41:	c0 
c0102d42:	c7 04 24 1d bf 10 c0 	mov    DWORD PTR [esp],0xc010bf1d
c0102d49:	e8 56 db ff ff       	call   c01008a4 <panic_spin>
c0102d4e:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102d51:	c7 00 00 00 00 00    	mov    DWORD PTR [eax],0x0
c0102d57:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102d5a:	c7 40 20 00 00 00 00 	mov    DWORD PTR [eax+0x20],0x0
c0102d61:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102d64:	83 c0 04             	add    eax,0x4
c0102d67:	89 04 24             	mov    DWORD PTR [esp],eax
c0102d6a:	e8 03 fe ff ff       	call   c0102b72 <sema_up>
c0102d6f:	90                   	nop
c0102d70:	83 c4 24             	add    esp,0x24
c0102d73:	5b                   	pop    ebx
c0102d74:	5d                   	pop    ebp
c0102d75:	c3                   	ret    
	...

c0102d78 <init_thread>:
c0102d78:	55                   	push   ebp
c0102d79:	89 e5                	mov    ebp,esp
c0102d7b:	83 ec 18             	sub    esp,0x18
c0102d7e:	c7 04 24 7c 32 11 c0 	mov    DWORD PTR [esp],0xc011327c
c0102d85:	e8 52 4b 00 00       	call   c01078dc <list_init>
c0102d8a:	c7 04 24 94 32 11 c0 	mov    DWORD PTR [esp],0xc0113294
c0102d91:	e8 46 4b 00 00       	call   c01078dc <list_init>
c0102d96:	c7 05 c0 cc 10 c0 06 	mov    DWORD PTR ds:0xc010ccc0,0x6
c0102d9d:	00 00 00 
c0102da0:	c7 04 24 c4 cc 10 c0 	mov    DWORD PTR [esp],0xc010ccc4
c0102da7:	e8 2a fc ff ff       	call   c01029d6 <lock_init>
c0102dac:	e8 d5 02 00 00       	call   c0103086 <make_main_thread>
c0102db1:	c9                   	leave  
c0102db2:	c3                   	ret    

c0102db3 <alloc_pid>:
c0102db3:	55                   	push   ebp
c0102db4:	89 e5                	mov    ebp,esp
c0102db6:	83 ec 28             	sub    esp,0x28
c0102db9:	c7 04 24 c4 cc 10 c0 	mov    DWORD PTR [esp],0xc010ccc4
c0102dc0:	e8 71 fe ff ff       	call   c0102c36 <lock_acquire>
c0102dc5:	a1 c0 cc 10 c0       	mov    eax,ds:0xc010ccc0
c0102dca:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
c0102dcd:	a1 c0 cc 10 c0       	mov    eax,ds:0xc010ccc0
c0102dd2:	83 c0 01             	add    eax,0x1
c0102dd5:	a3 c0 cc 10 c0       	mov    ds:0xc010ccc0,eax
c0102dda:	c7 04 24 c4 cc 10 c0 	mov    DWORD PTR [esp],0xc010ccc4
c0102de1:	e8 d4 fe ff ff       	call   c0102cba <lock_release>
c0102de6:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0102de9:	c9                   	leave  
c0102dea:	c3                   	ret    

c0102deb <thread_init>:
c0102deb:	55                   	push   ebp
c0102dec:	89 e5                	mov    ebp,esp
c0102dee:	83 ec 28             	sub    esp,0x28
c0102df1:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
c0102df4:	88 45 f4             	mov    BYTE PTR [ebp-0xc],al
c0102df7:	c7 44 24 08 a0 01 00 	mov    DWORD PTR [esp+0x8],0x1a0
c0102dfe:	00 
c0102dff:	c7 44 24 04 00 00 00 	mov    DWORD PTR [esp+0x4],0x0
c0102e06:	00 
c0102e07:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102e0a:	89 04 24             	mov    DWORD PTR [esp],eax
c0102e0d:	e8 d2 51 00 00       	call   c0107fe4 <memset>
c0102e12:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102e15:	8d 50 0c             	lea    edx,[eax+0xc]
c0102e18:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c0102e1b:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c0102e1f:	89 14 24             	mov    DWORD PTR [esp],edx
c0102e22:	e8 38 53 00 00       	call   c010815f <strcpy>
c0102e27:	a1 ac 32 11 c0       	mov    eax,ds:0xc01132ac
c0102e2c:	39 45 08             	cmp    DWORD PTR [ebp+0x8],eax
c0102e2f:	75 0c                	jne    c0102e3d <thread_init+0x52>
c0102e31:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102e34:	c7 40 04 00 00 00 00 	mov    DWORD PTR [eax+0x4],0x0
c0102e3b:	eb 0a                	jmp    c0102e47 <thread_init+0x5c>
c0102e3d:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102e40:	c7 40 04 01 00 00 00 	mov    DWORD PTR [eax+0x4],0x1
c0102e47:	e8 67 ff ff ff       	call   c0102db3 <alloc_pid>
c0102e4c:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c0102e4f:	89 42 08             	mov    DWORD PTR [edx+0x8],eax
c0102e52:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102e55:	0f b6 55 f4          	movzx  edx,BYTE PTR [ebp-0xc]
c0102e59:	88 50 1c             	mov    BYTE PTR [eax+0x1c],dl
c0102e5c:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102e5f:	05 00 10 00 00       	add    eax,0x1000
c0102e64:	89 c2                	mov    edx,eax
c0102e66:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102e69:	89 10                	mov    DWORD PTR [eax],edx
c0102e6b:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102e6e:	c7 40 3c 00 00 00 00 	mov    DWORD PTR [eax+0x3c],0x0
c0102e75:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102e78:	c7 80 6c 01 00 00 00 	mov    DWORD PTR [eax+0x16c],0x0
c0102e7f:	00 00 00 
c0102e82:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102e85:	c7 80 70 01 00 00 00 	mov    DWORD PTR [eax+0x170],0x0
c0102e8c:	00 00 00 
c0102e8f:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102e92:	c7 80 74 01 00 00 00 	mov    DWORD PTR [eax+0x174],0x0
c0102e99:	00 00 00 
c0102e9c:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102e9f:	05 78 01 00 00       	add    eax,0x178
c0102ea4:	89 04 24             	mov    DWORD PTR [esp],eax
c0102ea7:	e8 30 4a 00 00       	call   c01078dc <list_init>
c0102eac:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102eaf:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c0102eb2:	89 90 94 01 00 00    	mov    DWORD PTR [eax+0x194],edx
c0102eb8:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102ebb:	c7 80 9c 01 00 00 78 	mov    DWORD PTR [eax+0x19c],0x12345678
c0102ec2:	56 34 12 
c0102ec5:	c9                   	leave  
c0102ec6:	c3                   	ret    

c0102ec7 <running_thread>:
c0102ec7:	55                   	push   ebp
c0102ec8:	89 e5                	mov    ebp,esp
c0102eca:	53                   	push   ebx
c0102ecb:	83 ec 10             	sub    esp,0x10
c0102ece:	89 e3                	mov    ebx,esp
c0102ed0:	89 5d f8             	mov    DWORD PTR [ebp-0x8],ebx
c0102ed3:	8b 45 f8             	mov    eax,DWORD PTR [ebp-0x8]
c0102ed6:	25 00 f0 ff ff       	and    eax,0xfffff000
c0102edb:	83 c4 10             	add    esp,0x10
c0102ede:	5b                   	pop    ebx
c0102edf:	5d                   	pop    ebp
c0102ee0:	c3                   	ret    

c0102ee1 <kernel_thread>:
c0102ee1:	55                   	push   ebp
c0102ee2:	89 e5                	mov    ebp,esp
c0102ee4:	83 ec 18             	sub    esp,0x18
c0102ee7:	e8 ad e7 ff ff       	call   c0101699 <intr_enable>
c0102eec:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c0102eef:	89 04 24             	mov    DWORD PTR [esp],eax
c0102ef2:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102ef5:	ff d0                	call   eax
c0102ef7:	c9                   	leave  
c0102ef8:	c3                   	ret    

c0102ef9 <thread_create>:
c0102ef9:	55                   	push   ebp
c0102efa:	89 e5                	mov    ebp,esp
c0102efc:	83 ec 10             	sub    esp,0x10
c0102eff:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102f02:	8b 00                	mov    eax,DWORD PTR [eax]
c0102f04:	8d 90 d0 fe ff ff    	lea    edx,[eax-0x130]
c0102f0a:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102f0d:	89 10                	mov    DWORD PTR [eax],edx
c0102f0f:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102f12:	8b 00                	mov    eax,DWORD PTR [eax]
c0102f14:	8d 50 80             	lea    edx,[eax-0x80]
c0102f17:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102f1a:	89 10                	mov    DWORD PTR [eax],edx
c0102f1c:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102f1f:	8b 00                	mov    eax,DWORD PTR [eax]
c0102f21:	89 45 fc             	mov    DWORD PTR [ebp-0x4],eax
c0102f24:	8b 45 fc             	mov    eax,DWORD PTR [ebp-0x4]
c0102f27:	c7 40 10 e1 2e 10 c0 	mov    DWORD PTR [eax+0x10],0xc0102ee1
c0102f2e:	8b 45 fc             	mov    eax,DWORD PTR [ebp-0x4]
c0102f31:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
c0102f34:	89 50 18             	mov    DWORD PTR [eax+0x18],edx
c0102f37:	8b 45 fc             	mov    eax,DWORD PTR [ebp-0x4]
c0102f3a:	8b 55 10             	mov    edx,DWORD PTR [ebp+0x10]
c0102f3d:	89 50 1c             	mov    DWORD PTR [eax+0x1c],edx
c0102f40:	8b 45 fc             	mov    eax,DWORD PTR [ebp-0x4]
c0102f43:	c7 00 00 00 00 00    	mov    DWORD PTR [eax],0x0
c0102f49:	8b 45 fc             	mov    eax,DWORD PTR [ebp-0x4]
c0102f4c:	c7 40 04 00 00 00 00 	mov    DWORD PTR [eax+0x4],0x0
c0102f53:	8b 45 fc             	mov    eax,DWORD PTR [ebp-0x4]
c0102f56:	c7 40 0c 00 00 00 00 	mov    DWORD PTR [eax+0xc],0x0
c0102f5d:	8b 45 fc             	mov    eax,DWORD PTR [ebp-0x4]
c0102f60:	c7 40 08 00 00 00 00 	mov    DWORD PTR [eax+0x8],0x0
c0102f67:	c9                   	leave  
c0102f68:	c3                   	ret    

c0102f69 <thread_start>:
c0102f69:	55                   	push   ebp
c0102f6a:	89 e5                	mov    ebp,esp
c0102f6c:	83 ec 48             	sub    esp,0x48
c0102f6f:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c0102f72:	88 45 e4             	mov    BYTE PTR [ebp-0x1c],al
c0102f75:	c7 04 24 01 00 00 00 	mov    DWORD PTR [esp],0x1
c0102f7c:	e8 70 f3 ff ff       	call   c01022f1 <get_kernel_page>
c0102f81:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
c0102f84:	0f b6 45 e4          	movzx  eax,BYTE PTR [ebp-0x1c]
c0102f88:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
c0102f8c:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0102f8f:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c0102f93:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0102f96:	89 04 24             	mov    DWORD PTR [esp],eax
c0102f99:	e8 4d fe ff ff       	call   c0102deb <thread_init>
c0102f9e:	8b 45 14             	mov    eax,DWORD PTR [ebp+0x14]
c0102fa1:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
c0102fa5:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
c0102fa8:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c0102fac:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0102faf:	89 04 24             	mov    DWORD PTR [esp],eax
c0102fb2:	e8 42 ff ff ff       	call   c0102ef9 <thread_create>
c0102fb7:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0102fba:	8b 55 f4             	mov    edx,DWORD PTR [ebp-0xc]
c0102fbd:	89 50 28             	mov    DWORD PTR [eax+0x28],edx
c0102fc0:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0102fc3:	8b 55 f4             	mov    edx,DWORD PTR [ebp-0xc]
c0102fc6:	89 50 34             	mov    DWORD PTR [eax+0x34],edx
c0102fc9:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0102fcc:	83 c0 30             	add    eax,0x30
c0102fcf:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c0102fd3:	c7 04 24 7c 32 11 c0 	mov    DWORD PTR [esp],0xc011327c
c0102fda:	e8 fa 49 00 00       	call   c01079d9 <list_find>
c0102fdf:	85 c0                	test   eax,eax
c0102fe1:	74 2c                	je     c010300f <thread_start+0xa6>
c0102fe3:	c7 44 24 10 b4 c0 10 	mov    DWORD PTR [esp+0x10],0xc010c0b4
c0102fea:	c0 
c0102feb:	c7 44 24 0c ae c2 10 	mov    DWORD PTR [esp+0xc],0xc010c2ae
c0102ff2:	c0 
c0102ff3:	c7 44 24 08 7f 00 00 	mov    DWORD PTR [esp+0x8],0x7f
c0102ffa:	00 
c0102ffb:	c7 44 24 04 e3 c0 10 	mov    DWORD PTR [esp+0x4],0xc010c0e3
c0103002:	c0 
c0103003:	c7 04 24 e3 c0 10 c0 	mov    DWORD PTR [esp],0xc010c0e3
c010300a:	e8 95 d8 ff ff       	call   c01008a4 <panic_spin>
c010300f:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0103012:	83 c0 30             	add    eax,0x30
c0103015:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c0103019:	c7 04 24 7c 32 11 c0 	mov    DWORD PTR [esp],0xc011327c
c0103020:	e8 42 49 00 00       	call   c0107967 <list_append>
c0103025:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0103028:	83 c0 24             	add    eax,0x24
c010302b:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c010302f:	c7 04 24 94 32 11 c0 	mov    DWORD PTR [esp],0xc0113294
c0103036:	e8 9e 49 00 00       	call   c01079d9 <list_find>
c010303b:	85 c0                	test   eax,eax
c010303d:	74 2c                	je     c010306b <thread_start+0x102>
c010303f:	c7 44 24 10 f4 c0 10 	mov    DWORD PTR [esp+0x10],0xc010c0f4
c0103046:	c0 
c0103047:	c7 44 24 0c ae c2 10 	mov    DWORD PTR [esp+0xc],0xc010c2ae
c010304e:	c0 
c010304f:	c7 44 24 08 82 00 00 	mov    DWORD PTR [esp+0x8],0x82
c0103056:	00 
c0103057:	c7 44 24 04 e3 c0 10 	mov    DWORD PTR [esp+0x4],0xc010c0e3
c010305e:	c0 
c010305f:	c7 04 24 e3 c0 10 c0 	mov    DWORD PTR [esp],0xc010c0e3
c0103066:	e8 39 d8 ff ff       	call   c01008a4 <panic_spin>
c010306b:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c010306e:	83 c0 24             	add    eax,0x24
c0103071:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c0103075:	c7 04 24 94 32 11 c0 	mov    DWORD PTR [esp],0xc0113294
c010307c:	e8 e6 48 00 00       	call   c0107967 <list_append>
c0103081:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0103084:	c9                   	leave  
c0103085:	c3                   	ret    

c0103086 <make_main_thread>:
c0103086:	55                   	push   ebp
c0103087:	89 e5                	mov    ebp,esp
c0103089:	83 ec 18             	sub    esp,0x18
c010308c:	e8 36 fe ff ff       	call   c0102ec7 <running_thread>
c0103091:	a3 ac 32 11 c0       	mov    ds:0xc01132ac,eax
c0103096:	a1 ac 32 11 c0       	mov    eax,ds:0xc01132ac
c010309b:	c7 44 24 08 1f 00 00 	mov    DWORD PTR [esp+0x8],0x1f
c01030a2:	00 
c01030a3:	c7 44 24 04 1d c1 10 	mov    DWORD PTR [esp+0x4],0xc010c11d
c01030aa:	c0 
c01030ab:	89 04 24             	mov    DWORD PTR [esp],eax
c01030ae:	e8 38 fd ff ff       	call   c0102deb <thread_init>
c01030b3:	a1 ac 32 11 c0       	mov    eax,ds:0xc01132ac
c01030b8:	8b 15 ac 32 11 c0    	mov    edx,DWORD PTR ds:0xc01132ac
c01030be:	89 50 28             	mov    DWORD PTR [eax+0x28],edx
c01030c1:	a1 ac 32 11 c0       	mov    eax,ds:0xc01132ac
c01030c6:	8b 15 ac 32 11 c0    	mov    edx,DWORD PTR ds:0xc01132ac
c01030cc:	89 50 34             	mov    DWORD PTR [eax+0x34],edx
c01030cf:	a1 ac 32 11 c0       	mov    eax,ds:0xc01132ac
c01030d4:	83 c0 24             	add    eax,0x24
c01030d7:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c01030db:	c7 04 24 94 32 11 c0 	mov    DWORD PTR [esp],0xc0113294
c01030e2:	e8 80 48 00 00       	call   c0107967 <list_append>
c01030e7:	c9                   	leave  
c01030e8:	c3                   	ret    

c01030e9 <schedule>:
c01030e9:	55                   	push   ebp
c01030ea:	89 e5                	mov    ebp,esp
c01030ec:	83 ec 38             	sub    esp,0x38
c01030ef:	e8 d3 fd ff ff       	call   c0102ec7 <running_thread>
c01030f4:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
c01030f7:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c01030fa:	8b 80 9c 01 00 00    	mov    eax,DWORD PTR [eax+0x19c]
c0103100:	3d 78 56 34 12       	cmp    eax,0x12345678
c0103105:	74 2c                	je     c0103133 <schedule+0x4a>
c0103107:	c7 44 24 10 2c c1 10 	mov    DWORD PTR [esp+0x10],0xc010c12c
c010310e:	c0 
c010310f:	c7 44 24 0c a5 c2 10 	mov    DWORD PTR [esp+0xc],0xc010c2a5
c0103116:	c0 
c0103117:	c7 44 24 08 94 00 00 	mov    DWORD PTR [esp+0x8],0x94
c010311e:	00 
c010311f:	c7 44 24 04 e3 c0 10 	mov    DWORD PTR [esp+0x4],0xc010c0e3
c0103126:	c0 
c0103127:	c7 04 24 e3 c0 10 c0 	mov    DWORD PTR [esp],0xc010c0e3
c010312e:	e8 71 d7 ff ff       	call   c01008a4 <panic_spin>
c0103133:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0103136:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
c0103139:	85 c0                	test   eax,eax
c010313b:	75 66                	jne    c01031a3 <schedule+0xba>
c010313d:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0103140:	83 c0 30             	add    eax,0x30
c0103143:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c0103147:	c7 04 24 7c 32 11 c0 	mov    DWORD PTR [esp],0xc011327c
c010314e:	e8 86 48 00 00       	call   c01079d9 <list_find>
c0103153:	85 c0                	test   eax,eax
c0103155:	74 2c                	je     c0103183 <schedule+0x9a>
c0103157:	c7 44 24 10 54 c1 10 	mov    DWORD PTR [esp+0x10],0xc010c154
c010315e:	c0 
c010315f:	c7 44 24 0c a5 c2 10 	mov    DWORD PTR [esp+0xc],0xc010c2a5
c0103166:	c0 
c0103167:	c7 44 24 08 98 00 00 	mov    DWORD PTR [esp+0x8],0x98
c010316e:	00 
c010316f:	c7 44 24 04 e3 c0 10 	mov    DWORD PTR [esp+0x4],0xc010c0e3
c0103176:	c0 
c0103177:	c7 04 24 e3 c0 10 c0 	mov    DWORD PTR [esp],0xc010c0e3
c010317e:	e8 21 d7 ff ff       	call   c01008a4 <panic_spin>
c0103183:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0103186:	83 c0 30             	add    eax,0x30
c0103189:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c010318d:	c7 04 24 7c 32 11 c0 	mov    DWORD PTR [esp],0xc011327c
c0103194:	e8 ce 47 00 00       	call   c0107967 <list_append>
c0103199:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c010319c:	c7 40 04 00 00 00 00 	mov    DWORD PTR [eax+0x4],0x0
c01031a3:	c7 45 f0 00 00 00 00 	mov    DWORD PTR [ebp-0x10],0x0
c01031aa:	c7 05 a0 cc 10 c0 00 	mov    DWORD PTR ds:0xc010cca0,0x0
c01031b1:	00 00 00 
c01031b4:	c7 04 24 7c 32 11 c0 	mov    DWORD PTR [esp],0xc011327c
c01031bb:	e8 d0 48 00 00       	call   c0107a90 <list_empty>
c01031c0:	85 c0                	test   eax,eax
c01031c2:	74 2c                	je     c01031f0 <schedule+0x107>
c01031c4:	c7 44 24 10 89 c1 10 	mov    DWORD PTR [esp+0x10],0xc010c189
c01031cb:	c0 
c01031cc:	c7 44 24 0c a5 c2 10 	mov    DWORD PTR [esp+0xc],0xc010c2a5
c01031d3:	c0 
c01031d4:	c7 44 24 08 a4 00 00 	mov    DWORD PTR [esp+0x8],0xa4
c01031db:	00 
c01031dc:	c7 44 24 04 e3 c0 10 	mov    DWORD PTR [esp+0x4],0xc010c0e3
c01031e3:	c0 
c01031e4:	c7 04 24 e3 c0 10 c0 	mov    DWORD PTR [esp],0xc010c0e3
c01031eb:	e8 b4 d6 ff ff       	call   c01008a4 <panic_spin>
c01031f0:	a1 88 32 11 c0       	mov    eax,ds:0xc0113288
c01031f5:	3d 7c 32 11 c0       	cmp    eax,0xc011327c
c01031fa:	75 2c                	jne    c0103228 <schedule+0x13f>
c01031fc:	c7 44 24 10 a4 c1 10 	mov    DWORD PTR [esp+0x10],0xc010c1a4
c0103203:	c0 
c0103204:	c7 44 24 0c a5 c2 10 	mov    DWORD PTR [esp+0xc],0xc010c2a5
c010320b:	c0 
c010320c:	c7 44 24 08 a5 00 00 	mov    DWORD PTR [esp+0x8],0xa5
c0103213:	00 
c0103214:	c7 44 24 04 e3 c0 10 	mov    DWORD PTR [esp+0x4],0xc010c0e3
c010321b:	c0 
c010321c:	c7 04 24 e3 c0 10 c0 	mov    DWORD PTR [esp],0xc010c0e3
c0103223:	e8 7c d6 ff ff       	call   c01008a4 <panic_spin>
c0103228:	c7 04 24 7c 32 11 c0 	mov    DWORD PTR [esp],0xc011327c
c010322f:	e8 86 47 00 00       	call   c01079ba <list_pop>
c0103234:	a3 a0 cc 10 c0       	mov    ds:0xc010cca0,eax
c0103239:	a1 a0 cc 10 c0       	mov    eax,ds:0xc010cca0
c010323e:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
c0103241:	89 45 f0             	mov    DWORD PTR [ebp-0x10],eax
c0103244:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c0103247:	c7 40 04 00 00 00 00 	mov    DWORD PTR [eax+0x4],0x0
c010324e:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c0103251:	89 04 24             	mov    DWORD PTR [esp],eax
c0103254:	e8 c3 04 00 00       	call   c010371c <process_activate>
c0103259:	8b 55 f0             	mov    edx,DWORD PTR [ebp-0x10]
c010325c:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c010325f:	89 54 24 04          	mov    DWORD PTR [esp+0x4],edx
c0103263:	89 04 24             	mov    DWORD PTR [esp],eax
c0103266:	e8 c8 01 00 00       	call   c0103433 <switch_to>
c010326b:	c9                   	leave  
c010326c:	c3                   	ret    

c010326d <thread_block>:
c010326d:	55                   	push   ebp
c010326e:	89 e5                	mov    ebp,esp
c0103270:	83 ec 38             	sub    esp,0x38
c0103273:	83 7d 08 00          	cmp    DWORD PTR [ebp+0x8],0x0
c0103277:	74 06                	je     c010327f <thread_block+0x12>
c0103279:	83 7d 08 01          	cmp    DWORD PTR [ebp+0x8],0x1
c010327d:	75 2c                	jne    c01032ab <thread_block+0x3e>
c010327f:	c7 44 24 10 d0 c1 10 	mov    DWORD PTR [esp+0x10],0xc010c1d0
c0103286:	c0 
c0103287:	c7 44 24 0c 98 c2 10 	mov    DWORD PTR [esp+0xc],0xc010c298
c010328e:	c0 
c010328f:	c7 44 24 08 b2 00 00 	mov    DWORD PTR [esp+0x8],0xb2
c0103296:	00 
c0103297:	c7 44 24 04 e3 c0 10 	mov    DWORD PTR [esp+0x4],0xc010c0e3
c010329e:	c0 
c010329f:	c7 04 24 e3 c0 10 c0 	mov    DWORD PTR [esp],0xc010c0e3
c01032a6:	e8 f9 d5 ff ff       	call   c01008a4 <panic_spin>
c01032ab:	e8 16 e4 ff ff       	call   c01016c6 <intr_disable>
c01032b0:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
c01032b3:	e8 0f fc ff ff       	call   c0102ec7 <running_thread>
c01032b8:	89 45 f0             	mov    DWORD PTR [ebp-0x10],eax
c01032bb:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c01032be:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c01032c1:	89 50 04             	mov    DWORD PTR [eax+0x4],edx
c01032c4:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c01032c7:	8b 40 34             	mov    eax,DWORD PTR [eax+0x34]
c01032ca:	3b 45 f0             	cmp    eax,DWORD PTR [ebp-0x10]
c01032cd:	74 2c                	je     c01032fb <thread_block+0x8e>
c01032cf:	c7 44 24 10 00 c2 10 	mov    DWORD PTR [esp+0x10],0xc010c200
c01032d6:	c0 
c01032d7:	c7 44 24 0c 98 c2 10 	mov    DWORD PTR [esp+0xc],0xc010c298
c01032de:	c0 
c01032df:	c7 44 24 08 b6 00 00 	mov    DWORD PTR [esp+0x8],0xb6
c01032e6:	00 
c01032e7:	c7 44 24 04 e3 c0 10 	mov    DWORD PTR [esp+0x4],0xc010c0e3
c01032ee:	c0 
c01032ef:	c7 04 24 e3 c0 10 c0 	mov    DWORD PTR [esp],0xc010c0e3
c01032f6:	e8 a9 d5 ff ff       	call   c01008a4 <panic_spin>
c01032fb:	e8 e9 fd ff ff       	call   c01030e9 <schedule>
c0103300:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0103303:	89 04 24             	mov    DWORD PTR [esp],eax
c0103306:	e8 e8 e3 ff ff       	call   c01016f3 <intr_set_status>
c010330b:	c9                   	leave  
c010330c:	c3                   	ret    

c010330d <thread_unblock>:
c010330d:	55                   	push   ebp
c010330e:	89 e5                	mov    ebp,esp
c0103310:	83 ec 38             	sub    esp,0x38
c0103313:	e8 ae e3 ff ff       	call   c01016c6 <intr_disable>
c0103318:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
c010331b:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c010331e:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
c0103321:	83 f8 01             	cmp    eax,0x1
c0103324:	0f 84 ac 00 00 00    	je     c01033d6 <thread_unblock+0xc9>
c010332a:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c010332d:	83 c0 30             	add    eax,0x30
c0103330:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c0103334:	c7 04 24 7c 32 11 c0 	mov    DWORD PTR [esp],0xc011327c
c010333b:	e8 99 46 00 00       	call   c01079d9 <list_find>
c0103340:	85 c0                	test   eax,eax
c0103342:	74 2c                	je     c0103370 <thread_unblock+0x63>
c0103344:	c7 44 24 10 2c c2 10 	mov    DWORD PTR [esp+0x10],0xc010c22c
c010334b:	c0 
c010334c:	c7 44 24 0c 89 c2 10 	mov    DWORD PTR [esp+0xc],0xc010c289
c0103353:	c0 
c0103354:	c7 44 24 08 c1 00 00 	mov    DWORD PTR [esp+0x8],0xc1
c010335b:	00 
c010335c:	c7 44 24 04 e3 c0 10 	mov    DWORD PTR [esp+0x4],0xc010c0e3
c0103363:	c0 
c0103364:	c7 04 24 e3 c0 10 c0 	mov    DWORD PTR [esp],0xc010c0e3
c010336b:	e8 34 d5 ff ff       	call   c01008a4 <panic_spin>
c0103370:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0103373:	83 c0 30             	add    eax,0x30
c0103376:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c010337a:	c7 04 24 7c 32 11 c0 	mov    DWORD PTR [esp],0xc011327c
c0103381:	e8 53 46 00 00       	call   c01079d9 <list_find>
c0103386:	85 c0                	test   eax,eax
c0103388:	74 2c                	je     c01033b6 <thread_unblock+0xa9>
c010338a:	c7 44 24 10 5c c2 10 	mov    DWORD PTR [esp+0x10],0xc010c25c
c0103391:	c0 
c0103392:	c7 44 24 0c 89 c2 10 	mov    DWORD PTR [esp+0xc],0xc010c289
c0103399:	c0 
c010339a:	c7 44 24 08 c4 00 00 	mov    DWORD PTR [esp+0x8],0xc4
c01033a1:	00 
c01033a2:	c7 44 24 04 e3 c0 10 	mov    DWORD PTR [esp+0x4],0xc010c0e3
c01033a9:	c0 
c01033aa:	c7 04 24 e3 c0 10 c0 	mov    DWORD PTR [esp],0xc010c0e3
c01033b1:	e8 ee d4 ff ff       	call   c01008a4 <panic_spin>
c01033b6:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01033b9:	83 c0 30             	add    eax,0x30
c01033bc:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c01033c0:	c7 04 24 7c 32 11 c0 	mov    DWORD PTR [esp],0xc011327c
c01033c7:	e8 7e 45 00 00       	call   c010794a <list_push>
c01033cc:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01033cf:	c7 40 04 01 00 00 00 	mov    DWORD PTR [eax+0x4],0x1
c01033d6:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c01033d9:	89 04 24             	mov    DWORD PTR [esp],eax
c01033dc:	e8 12 e3 ff ff       	call   c01016f3 <intr_set_status>
c01033e1:	c9                   	leave  
c01033e2:	c3                   	ret    

c01033e3 <pid_check>:
c01033e3:	55                   	push   ebp
c01033e4:	89 e5                	mov    ebp,esp
c01033e6:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01033e9:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
c01033ec:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
c01033ef:	3b 45 0c             	cmp    eax,DWORD PTR [ebp+0xc]
c01033f2:	0f 94 c0             	sete   al
c01033f5:	0f b6 c0             	movzx  eax,al
c01033f8:	5d                   	pop    ebp
c01033f9:	c3                   	ret    

c01033fa <pid2thread>:
c01033fa:	55                   	push   ebp
c01033fb:	89 e5                	mov    ebp,esp
c01033fd:	83 ec 28             	sub    esp,0x28
c0103400:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0103403:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
c0103407:	c7 44 24 04 e3 33 10 	mov    DWORD PTR [esp+0x4],0xc01033e3
c010340e:	c0 
c010340f:	c7 04 24 94 32 11 c0 	mov    DWORD PTR [esp],0xc0113294
c0103416:	e8 f9 45 00 00       	call   c0107a14 <list_traversal>
c010341b:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
c010341e:	83 7d f4 00          	cmp    DWORD PTR [ebp-0xc],0x0
c0103422:	75 07                	jne    c010342b <pid2thread+0x31>
c0103424:	b8 00 00 00 00       	mov    eax,0x0
c0103429:	eb 06                	jmp    c0103431 <pid2thread+0x37>
c010342b:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c010342e:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
c0103431:	c9                   	leave  
c0103432:	c3                   	ret    

c0103433 <switch_to>:
c0103433:	56                   	push   esi
c0103434:	57                   	push   edi
c0103435:	53                   	push   ebx
c0103436:	55                   	push   ebp
c0103437:	8b 44 24 14          	mov    eax,DWORD PTR [esp+0x14]
c010343b:	89 20                	mov    DWORD PTR [eax],esp
c010343d:	8b 44 24 18          	mov    eax,DWORD PTR [esp+0x18]
c0103441:	8b 20                	mov    esp,DWORD PTR [eax]
c0103443:	5d                   	pop    ebp
c0103444:	5b                   	pop    ebx
c0103445:	5f                   	pop    edi
c0103446:	5e                   	pop    esi
c0103447:	c3                   	ret    

c0103448 <make_segmdesc>:
c0103448:	55                   	push   ebp
c0103449:	89 e5                	mov    ebp,esp
c010344b:	83 ec 14             	sub    esp,0x14
c010344e:	8b 45 14             	mov    eax,DWORD PTR [ebp+0x14]
c0103451:	66 89 45 ec          	mov    WORD PTR [ebp-0x14],ax
c0103455:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
c0103458:	66 89 45 f8          	mov    WORD PTR [ebp-0x8],ax
c010345c:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c010345f:	66 89 45 fa          	mov    WORD PTR [ebp-0x6],ax
c0103463:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c0103466:	25 00 00 ff 00       	and    eax,0xff0000
c010346b:	c1 e8 10             	shr    eax,0x10
c010346e:	88 45 fc             	mov    BYTE PTR [ebp-0x4],al
c0103471:	0f b7 45 ec          	movzx  eax,WORD PTR [ebp-0x14]
c0103475:	88 45 fd             	mov    BYTE PTR [ebp-0x3],al
c0103478:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
c010347b:	c1 e8 10             	shr    eax,0x10
c010347e:	89 c2                	mov    edx,eax
c0103480:	83 e2 0f             	and    edx,0xf
c0103483:	0f b7 45 ec          	movzx  eax,WORD PTR [ebp-0x14]
c0103487:	66 c1 e8 08          	shr    ax,0x8
c010348b:	83 e0 f0             	and    eax,0xfffffff0
c010348e:	09 d0                	or     eax,edx
c0103490:	88 45 fe             	mov    BYTE PTR [ebp-0x2],al
c0103493:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c0103496:	c1 e8 18             	shr    eax,0x18
c0103499:	88 45 ff             	mov    BYTE PTR [ebp-0x1],al
c010349c:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
c010349f:	8b 45 f8             	mov    eax,DWORD PTR [ebp-0x8]
c01034a2:	8b 55 fc             	mov    edx,DWORD PTR [ebp-0x4]
c01034a5:	89 01                	mov    DWORD PTR [ecx],eax
c01034a7:	89 51 04             	mov    DWORD PTR [ecx+0x4],edx
c01034aa:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01034ad:	c9                   	leave  
c01034ae:	c2 04 00             	ret    0x4

c01034b1 <init_tss>:
c01034b1:	55                   	push   ebp
c01034b2:	89 e5                	mov    ebp,esp
c01034b4:	53                   	push   ebx
c01034b5:	83 ec 34             	sub    esp,0x34
c01034b8:	c7 45 f4 6c 00 00 00 	mov    DWORD PTR [ebp-0xc],0x6c
c01034bf:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c01034c2:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
c01034c6:	c7 44 24 04 00 00 00 	mov    DWORD PTR [esp+0x4],0x0
c01034cd:	00 
c01034ce:	c7 04 24 00 cd 10 c0 	mov    DWORD PTR [esp],0xc010cd00
c01034d5:	e8 0a 4b 00 00       	call   c0107fe4 <memset>
c01034da:	c7 05 08 cd 10 c0 10 	mov    DWORD PTR ds:0xc010cd08,0x10
c01034e1:	00 00 00 
c01034e4:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c01034e7:	a3 68 cd 10 c0       	mov    ds:0xc010cd68,eax
c01034ec:	bb 18 10 00 c0       	mov    ebx,0xc0001018
c01034f1:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c01034f4:	8d 48 ff             	lea    ecx,[eax-0x1]
c01034f7:	ba 00 cd 10 c0       	mov    edx,0xc010cd00
c01034fc:	8d 45 e0             	lea    eax,[ebp-0x20]
c01034ff:	c7 44 24 0c 89 80 00 	mov    DWORD PTR [esp+0xc],0x8089
c0103506:	00 
c0103507:	89 4c 24 08          	mov    DWORD PTR [esp+0x8],ecx
c010350b:	89 54 24 04          	mov    DWORD PTR [esp+0x4],edx
c010350f:	89 04 24             	mov    DWORD PTR [esp],eax
c0103512:	e8 31 ff ff ff       	call   c0103448 <make_segmdesc>
c0103517:	83 ec 04             	sub    esp,0x4
c010351a:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
c010351d:	8b 55 e4             	mov    edx,DWORD PTR [ebp-0x1c]
c0103520:	89 03                	mov    DWORD PTR [ebx],eax
c0103522:	89 53 04             	mov    DWORD PTR [ebx+0x4],edx
c0103525:	bb 20 10 00 c0       	mov    ebx,0xc0001020
c010352a:	8d 45 e0             	lea    eax,[ebp-0x20]
c010352d:	c7 44 24 0c f8 c0 00 	mov    DWORD PTR [esp+0xc],0xc0f8
c0103534:	00 
c0103535:	c7 44 24 08 ff ff 0f 	mov    DWORD PTR [esp+0x8],0xfffff
c010353c:	00 
c010353d:	c7 44 24 04 00 00 00 	mov    DWORD PTR [esp+0x4],0x0
c0103544:	00 
c0103545:	89 04 24             	mov    DWORD PTR [esp],eax
c0103548:	e8 fb fe ff ff       	call   c0103448 <make_segmdesc>
c010354d:	83 ec 04             	sub    esp,0x4
c0103550:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
c0103553:	8b 55 e4             	mov    edx,DWORD PTR [ebp-0x1c]
c0103556:	89 03                	mov    DWORD PTR [ebx],eax
c0103558:	89 53 04             	mov    DWORD PTR [ebx+0x4],edx
c010355b:	bb 28 10 00 c0       	mov    ebx,0xc0001028
c0103560:	8d 45 e0             	lea    eax,[ebp-0x20]
c0103563:	c7 44 24 0c f2 c0 00 	mov    DWORD PTR [esp+0xc],0xc0f2
c010356a:	00 
c010356b:	c7 44 24 08 ff ff 0f 	mov    DWORD PTR [esp+0x8],0xfffff
c0103572:	00 
c0103573:	c7 44 24 04 00 00 00 	mov    DWORD PTR [esp+0x4],0x0
c010357a:	00 
c010357b:	89 04 24             	mov    DWORD PTR [esp],eax
c010357e:	e8 c5 fe ff ff       	call   c0103448 <make_segmdesc>
c0103583:	83 ec 04             	sub    esp,0x4
c0103586:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
c0103589:	8b 55 e4             	mov    edx,DWORD PTR [ebp-0x1c]
c010358c:	89 03                	mov    DWORD PTR [ebx],eax
c010358e:	89 53 04             	mov    DWORD PTR [ebx+0x4],edx
c0103591:	c7 45 e8 2f 00 00 10 	mov    DWORD PTR [ebp-0x18],0x1000002f
c0103598:	c7 45 ec 00 c0 00 00 	mov    DWORD PTR [ebp-0x14],0xc000
c010359f:	0f 01 55 e8          	lgdtd  [ebp-0x18]
c01035a3:	b8 18 00 00 00       	mov    eax,0x18
c01035a8:	0f 00 d8             	ltr    ax
c01035ab:	8b 5d fc             	mov    ebx,DWORD PTR [ebp-0x4]
c01035ae:	c9                   	leave  
c01035af:	c3                   	ret    

c01035b0 <update_tss_esp0>:
c01035b0:	55                   	push   ebp
c01035b1:	89 e5                	mov    ebp,esp
c01035b3:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01035b6:	05 00 10 00 00       	add    eax,0x1000
c01035bb:	a3 04 cd 10 c0       	mov    ds:0xc010cd04,eax
c01035c0:	5d                   	pop    ebp
c01035c1:	c3                   	ret    
	...

c01035c4 <start_process>:
c01035c4:	55                   	push   ebp
c01035c5:	89 e5                	mov    ebp,esp
c01035c7:	83 ec 28             	sub    esp,0x28
c01035ca:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01035cd:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
c01035d0:	e8 f2 f8 ff ff       	call   c0102ec7 <running_thread>
c01035d5:	89 45 f0             	mov    DWORD PTR [ebp-0x10],eax
c01035d8:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c01035db:	8b 00                	mov    eax,DWORD PTR [eax]
c01035dd:	8d 90 80 00 00 00    	lea    edx,[eax+0x80]
c01035e3:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c01035e6:	89 10                	mov    DWORD PTR [eax],edx
c01035e8:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c01035eb:	8b 00                	mov    eax,DWORD PTR [eax]
c01035ed:	89 45 ec             	mov    DWORD PTR [ebp-0x14],eax
c01035f0:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
c01035f3:	c7 40 04 00 00 00 00 	mov    DWORD PTR [eax+0x4],0x0
c01035fa:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
c01035fd:	c7 40 08 00 00 00 00 	mov    DWORD PTR [eax+0x8],0x0
c0103604:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
c0103607:	c7 40 0c 00 00 00 00 	mov    DWORD PTR [eax+0xc],0x0
c010360e:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
c0103611:	c7 40 10 00 00 00 00 	mov    DWORD PTR [eax+0x10],0x0
c0103618:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
c010361b:	c7 40 14 00 00 00 00 	mov    DWORD PTR [eax+0x14],0x0
c0103622:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
c0103625:	c7 40 18 00 00 00 00 	mov    DWORD PTR [eax+0x18],0x0
c010362c:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
c010362f:	c7 40 1c 00 00 00 00 	mov    DWORD PTR [eax+0x1c],0x0
c0103636:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
c0103639:	c7 40 20 00 00 00 00 	mov    DWORD PTR [eax+0x20],0x0
c0103640:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
c0103643:	c7 40 24 00 00 00 00 	mov    DWORD PTR [eax+0x24],0x0
c010364a:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
c010364d:	c7 40 28 2b 00 00 00 	mov    DWORD PTR [eax+0x28],0x2b
c0103654:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
c0103657:	c7 40 2c 2b 00 00 00 	mov    DWORD PTR [eax+0x2c],0x2b
c010365e:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
c0103661:	c7 40 30 2b 00 00 00 	mov    DWORD PTR [eax+0x30],0x2b
c0103668:	8b 55 f4             	mov    edx,DWORD PTR [ebp-0xc]
c010366b:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
c010366e:	89 50 38             	mov    DWORD PTR [eax+0x38],edx
c0103671:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
c0103674:	c7 40 3c 23 00 00 00 	mov    DWORD PTR [eax+0x3c],0x23
c010367b:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
c010367e:	c7 40 40 02 02 00 00 	mov    DWORD PTR [eax+0x40],0x202
c0103685:	c7 44 24 04 00 f0 ff 	mov    DWORD PTR [esp+0x4],0xbffff000
c010368c:	bf 
c010368d:	c7 04 24 02 00 00 00 	mov    DWORD PTR [esp],0x2
c0103694:	e8 e0 ec ff ff       	call   c0102379 <get_a_page>
c0103699:	05 00 10 00 00       	add    eax,0x1000
c010369e:	89 c2                	mov    edx,eax
c01036a0:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
c01036a3:	89 50 44             	mov    DWORD PTR [eax+0x44],edx
c01036a6:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
c01036a9:	c7 40 48 2b 00 00 00 	mov    DWORD PTR [eax+0x48],0x2b
c01036b0:	8b 65 ec             	mov    esp,DWORD PTR [ebp-0x14]
c01036b3:	e9 48 d3 ff ff       	jmp    c0100a00 <intr_exit>
c01036b8:	c9                   	leave  
c01036b9:	c3                   	ret    

c01036ba <page_dir_activate>:
c01036ba:	55                   	push   ebp
c01036bb:	89 e5                	mov    ebp,esp
c01036bd:	83 ec 38             	sub    esp,0x38
c01036c0:	c7 45 f4 00 00 40 00 	mov    DWORD PTR [ebp-0xc],0x400000
c01036c7:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01036ca:	8b 40 3c             	mov    eax,DWORD PTR [eax+0x3c]
c01036cd:	85 c0                	test   eax,eax
c01036cf:	74 11                	je     c01036e2 <page_dir_activate+0x28>
c01036d1:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01036d4:	8b 40 3c             	mov    eax,DWORD PTR [eax+0x3c]
c01036d7:	89 04 24             	mov    DWORD PTR [esp],eax
c01036da:	e8 08 e9 ff ff       	call   c0101fe7 <addr_v2p>
c01036df:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
c01036e2:	83 7d f4 00          	cmp    DWORD PTR [ebp-0xc],0x0
c01036e6:	75 2c                	jne    c0103714 <page_dir_activate+0x5a>
c01036e8:	c7 44 24 10 fb c2 10 	mov    DWORD PTR [esp+0x10],0xc010c2fb
c01036ef:	c0 
c01036f0:	c7 44 24 0c e3 c3 10 	mov    DWORD PTR [esp+0xc],0xc010c3e3
c01036f7:	c0 
c01036f8:	c7 44 24 08 33 00 00 	mov    DWORD PTR [esp+0x8],0x33
c01036ff:	00 
c0103700:	c7 44 24 04 16 c3 10 	mov    DWORD PTR [esp+0x4],0xc010c316
c0103707:	c0 
c0103708:	c7 04 24 16 c3 10 c0 	mov    DWORD PTR [esp],0xc010c316
c010370f:	e8 90 d1 ff ff       	call   c01008a4 <panic_spin>
c0103714:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0103717:	0f 22 d8             	mov    cr3,eax
c010371a:	c9                   	leave  
c010371b:	c3                   	ret    

c010371c <process_activate>:
c010371c:	55                   	push   ebp
c010371d:	89 e5                	mov    ebp,esp
c010371f:	83 ec 28             	sub    esp,0x28
c0103722:	83 7d 08 00          	cmp    DWORD PTR [ebp+0x8],0x0
c0103726:	75 2c                	jne    c0103754 <process_activate+0x38>
c0103728:	c7 44 24 10 25 c3 10 	mov    DWORD PTR [esp+0x10],0xc010c325
c010372f:	c0 
c0103730:	c7 44 24 0c d2 c3 10 	mov    DWORD PTR [esp+0xc],0xc010c3d2
c0103737:	c0 
c0103738:	c7 44 24 08 43 00 00 	mov    DWORD PTR [esp+0x8],0x43
c010373f:	00 
c0103740:	c7 44 24 04 16 c3 10 	mov    DWORD PTR [esp+0x4],0xc010c316
c0103747:	c0 
c0103748:	c7 04 24 16 c3 10 c0 	mov    DWORD PTR [esp],0xc010c316
c010374f:	e8 50 d1 ff ff       	call   c01008a4 <panic_spin>
c0103754:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0103757:	89 04 24             	mov    DWORD PTR [esp],eax
c010375a:	e8 5b ff ff ff       	call   c01036ba <page_dir_activate>
c010375f:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0103762:	8b 40 3c             	mov    eax,DWORD PTR [eax+0x3c]
c0103765:	85 c0                	test   eax,eax
c0103767:	74 0b                	je     c0103774 <process_activate+0x58>
c0103769:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c010376c:	89 04 24             	mov    DWORD PTR [esp],eax
c010376f:	e8 3c fe ff ff       	call   c01035b0 <update_tss_esp0>
c0103774:	c9                   	leave  
c0103775:	c3                   	ret    

c0103776 <create_page_dir>:
c0103776:	55                   	push   ebp
c0103777:	89 e5                	mov    ebp,esp
c0103779:	83 ec 28             	sub    esp,0x28
c010377c:	c7 04 24 01 00 00 00 	mov    DWORD PTR [esp],0x1
c0103783:	e8 69 eb ff ff       	call   c01022f1 <get_kernel_page>
c0103788:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
c010378b:	83 7d f4 00          	cmp    DWORD PTR [ebp-0xc],0x0
c010378f:	75 1b                	jne    c01037ac <create_page_dir+0x36>
c0103791:	c7 44 24 04 38 c3 10 	mov    DWORD PTR [esp+0x4],0xc010c338
c0103798:	c0 
c0103799:	c7 04 24 04 00 00 00 	mov    DWORD PTR [esp],0x4
c01037a0:	e8 3a 02 00 00       	call   c01039df <console_str>
c01037a5:	b8 00 00 00 00       	mov    eax,0x0
c01037aa:	eb 41                	jmp    c01037ed <create_page_dir+0x77>
c01037ac:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c01037af:	05 00 0c 00 00       	add    eax,0xc00
c01037b4:	c7 44 24 08 00 04 00 	mov    DWORD PTR [esp+0x8],0x400
c01037bb:	00 
c01037bc:	c7 44 24 04 00 fc ff 	mov    DWORD PTR [esp+0x4],0xfffffc00
c01037c3:	ff 
c01037c4:	89 04 24             	mov    DWORD PTR [esp],eax
c01037c7:	e8 80 48 00 00       	call   c010804c <memcpy>
c01037cc:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c01037cf:	89 04 24             	mov    DWORD PTR [esp],eax
c01037d2:	e8 10 e8 ff ff       	call   c0101fe7 <addr_v2p>
c01037d7:	89 45 f0             	mov    DWORD PTR [ebp-0x10],eax
c01037da:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c01037dd:	05 fc 0f 00 00       	add    eax,0xffc
c01037e2:	8b 55 f0             	mov    edx,DWORD PTR [ebp-0x10]
c01037e5:	83 ca 07             	or     edx,0x7
c01037e8:	89 10                	mov    DWORD PTR [eax],edx
c01037ea:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c01037ed:	c9                   	leave  
c01037ee:	c3                   	ret    

c01037ef <create_user_vaddr_memman>:
c01037ef:	55                   	push   ebp
c01037f0:	89 e5                	mov    ebp,esp
c01037f2:	83 ec 18             	sub    esp,0x18
c01037f5:	c7 04 24 02 00 00 00 	mov    DWORD PTR [esp],0x2
c01037fc:	e8 f0 ea ff ff       	call   c01022f1 <get_kernel_page>
c0103801:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c0103804:	83 c2 40             	add    edx,0x40
c0103807:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
c010380b:	c7 44 24 04 ff ff 0f 	mov    DWORD PTR [esp+0x4],0xfffff
c0103812:	00 
c0103813:	89 14 24             	mov    DWORD PTR [esp],edx
c0103816:	e8 a1 e6 ff ff       	call   c0101ebc <init_memman>
c010381b:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c010381e:	83 c0 40             	add    eax,0x40
c0103821:	c7 44 24 08 b7 7f 0b 	mov    DWORD PTR [esp+0x8],0xb7fb7
c0103828:	00 
c0103829:	c7 44 24 04 00 80 04 	mov    DWORD PTR [esp+0x4],0x8048000
c0103830:	08 
c0103831:	89 04 24             	mov    DWORD PTR [esp],eax
c0103834:	e8 0e ec ff ff       	call   c0102447 <pgman_free>
c0103839:	c9                   	leave  
c010383a:	c3                   	ret    

c010383b <process_execute>:
c010383b:	55                   	push   ebp
c010383c:	89 e5                	mov    ebp,esp
c010383e:	83 ec 38             	sub    esp,0x38
c0103841:	c7 04 24 01 00 00 00 	mov    DWORD PTR [esp],0x1
c0103848:	e8 a4 ea ff ff       	call   c01022f1 <get_kernel_page>
c010384d:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
c0103850:	c7 44 24 08 1f 00 00 	mov    DWORD PTR [esp+0x8],0x1f
c0103857:	00 
c0103858:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c010385b:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c010385f:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0103862:	89 04 24             	mov    DWORD PTR [esp],eax
c0103865:	e8 81 f5 ff ff       	call   c0102deb <thread_init>
c010386a:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c010386d:	89 04 24             	mov    DWORD PTR [esp],eax
c0103870:	e8 7a ff ff ff       	call   c01037ef <create_user_vaddr_memman>
c0103875:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0103878:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
c010387c:	c7 44 24 04 c4 35 10 	mov    DWORD PTR [esp+0x4],0xc01035c4
c0103883:	c0 
c0103884:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0103887:	89 04 24             	mov    DWORD PTR [esp],eax
c010388a:	e8 6a f6 ff ff       	call   c0102ef9 <thread_create>
c010388f:	e8 e2 fe ff ff       	call   c0103776 <create_page_dir>
c0103894:	8b 55 f4             	mov    edx,DWORD PTR [ebp-0xc]
c0103897:	89 42 3c             	mov    DWORD PTR [edx+0x3c],eax
c010389a:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c010389d:	83 c0 7c             	add    eax,0x7c
c01038a0:	89 04 24             	mov    DWORD PTR [esp],eax
c01038a3:	e8 7c de ff ff       	call   c0101724 <init_block>
c01038a8:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c01038ab:	8b 55 f4             	mov    edx,DWORD PTR [ebp-0xc]
c01038ae:	89 50 34             	mov    DWORD PTR [eax+0x34],edx
c01038b1:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c01038b4:	8b 55 f4             	mov    edx,DWORD PTR [ebp-0xc]
c01038b7:	89 50 28             	mov    DWORD PTR [eax+0x28],edx
c01038ba:	e8 07 de ff ff       	call   c01016c6 <intr_disable>
c01038bf:	89 45 f0             	mov    DWORD PTR [ebp-0x10],eax
c01038c2:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c01038c5:	83 c0 24             	add    eax,0x24
c01038c8:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c01038cc:	c7 04 24 94 32 11 c0 	mov    DWORD PTR [esp],0xc0113294
c01038d3:	e8 01 41 00 00       	call   c01079d9 <list_find>
c01038d8:	85 c0                	test   eax,eax
c01038da:	74 2c                	je     c0103908 <process_execute+0xcd>
c01038dc:	c7 44 24 10 64 c3 10 	mov    DWORD PTR [esp+0x10],0xc010c364
c01038e3:	c0 
c01038e4:	c7 44 24 0c c2 c3 10 	mov    DWORD PTR [esp+0xc],0xc010c3c2
c01038eb:	c0 
c01038ec:	c7 44 24 08 75 00 00 	mov    DWORD PTR [esp+0x8],0x75
c01038f3:	00 
c01038f4:	c7 44 24 04 16 c3 10 	mov    DWORD PTR [esp+0x4],0xc010c316
c01038fb:	c0 
c01038fc:	c7 04 24 16 c3 10 c0 	mov    DWORD PTR [esp],0xc010c316
c0103903:	e8 9c cf ff ff       	call   c01008a4 <panic_spin>
c0103908:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c010390b:	83 c0 24             	add    eax,0x24
c010390e:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c0103912:	c7 04 24 94 32 11 c0 	mov    DWORD PTR [esp],0xc0113294
c0103919:	e8 49 40 00 00       	call   c0107967 <list_append>
c010391e:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0103921:	83 c0 30             	add    eax,0x30
c0103924:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c0103928:	c7 04 24 7c 32 11 c0 	mov    DWORD PTR [esp],0xc011327c
c010392f:	e8 a5 40 00 00       	call   c01079d9 <list_find>
c0103934:	85 c0                	test   eax,eax
c0103936:	74 2c                	je     c0103964 <process_execute+0x129>
c0103938:	c7 44 24 10 90 c3 10 	mov    DWORD PTR [esp+0x10],0xc010c390
c010393f:	c0 
c0103940:	c7 44 24 0c c2 c3 10 	mov    DWORD PTR [esp+0xc],0xc010c3c2
c0103947:	c0 
c0103948:	c7 44 24 08 78 00 00 	mov    DWORD PTR [esp+0x8],0x78
c010394f:	00 
c0103950:	c7 44 24 04 16 c3 10 	mov    DWORD PTR [esp+0x4],0xc010c316
c0103957:	c0 
c0103958:	c7 04 24 16 c3 10 c0 	mov    DWORD PTR [esp],0xc010c316
c010395f:	e8 40 cf ff ff       	call   c01008a4 <panic_spin>
c0103964:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0103967:	83 c0 30             	add    eax,0x30
c010396a:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c010396e:	c7 04 24 7c 32 11 c0 	mov    DWORD PTR [esp],0xc011327c
c0103975:	e8 ed 3f 00 00       	call   c0107967 <list_append>
c010397a:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c010397d:	89 04 24             	mov    DWORD PTR [esp],eax
c0103980:	e8 6e dd ff ff       	call   c01016f3 <intr_set_status>
c0103985:	c9                   	leave  
c0103986:	c3                   	ret    
	...

c0103988 <init_console>:
c0103988:	55                   	push   ebp
c0103989:	89 e5                	mov    ebp,esp
c010398b:	83 ec 18             	sub    esp,0x18
c010398e:	c7 04 24 80 cd 10 c0 	mov    DWORD PTR [esp],0xc010cd80
c0103995:	e8 3c f0 ff ff       	call   c01029d6 <lock_init>
c010399a:	c9                   	leave  
c010399b:	c3                   	ret    

c010399c <console_char>:
c010399c:	55                   	push   ebp
c010399d:	89 e5                	mov    ebp,esp
c010399f:	83 ec 28             	sub    esp,0x28
c01039a2:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c01039a5:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c01039a8:	88 55 f4             	mov    BYTE PTR [ebp-0xc],dl
c01039ab:	88 45 f0             	mov    BYTE PTR [ebp-0x10],al
c01039ae:	c7 04 24 80 cd 10 c0 	mov    DWORD PTR [esp],0xc010cd80
c01039b5:	e8 7c f2 ff ff       	call   c0102c36 <lock_acquire>
c01039ba:	0f b6 45 f0          	movzx  eax,BYTE PTR [ebp-0x10]
c01039be:	0f b6 d0             	movzx  edx,al
c01039c1:	0f b6 45 f4          	movzx  eax,BYTE PTR [ebp-0xc]
c01039c5:	89 54 24 04          	mov    DWORD PTR [esp+0x4],edx
c01039c9:	89 04 24             	mov    DWORD PTR [esp],eax
c01039cc:	e8 06 41 00 00       	call   c0107ad7 <put_char>
c01039d1:	c7 04 24 80 cd 10 c0 	mov    DWORD PTR [esp],0xc010cd80
c01039d8:	e8 dd f2 ff ff       	call   c0102cba <lock_release>
c01039dd:	c9                   	leave  
c01039de:	c3                   	ret    

c01039df <console_str>:
c01039df:	55                   	push   ebp
c01039e0:	89 e5                	mov    ebp,esp
c01039e2:	83 ec 28             	sub    esp,0x28
c01039e5:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01039e8:	88 45 f4             	mov    BYTE PTR [ebp-0xc],al
c01039eb:	c7 04 24 80 cd 10 c0 	mov    DWORD PTR [esp],0xc010cd80
c01039f2:	e8 3f f2 ff ff       	call   c0102c36 <lock_acquire>
c01039f7:	0f b6 45 f4          	movzx  eax,BYTE PTR [ebp-0xc]
c01039fb:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
c01039fe:	89 54 24 04          	mov    DWORD PTR [esp+0x4],edx
c0103a02:	89 04 24             	mov    DWORD PTR [esp],eax
c0103a05:	e8 f5 41 00 00       	call   c0107bff <put_str>
c0103a0a:	c7 04 24 80 cd 10 c0 	mov    DWORD PTR [esp],0xc010cd80
c0103a11:	e8 a4 f2 ff ff       	call   c0102cba <lock_release>
c0103a16:	c9                   	leave  
c0103a17:	c3                   	ret    

c0103a18 <console_int>:
c0103a18:	55                   	push   ebp
c0103a19:	89 e5                	mov    ebp,esp
c0103a1b:	83 ec 28             	sub    esp,0x28
c0103a1e:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0103a21:	88 45 f4             	mov    BYTE PTR [ebp-0xc],al
c0103a24:	c7 04 24 80 cd 10 c0 	mov    DWORD PTR [esp],0xc010cd80
c0103a2b:	e8 06 f2 ff ff       	call   c0102c36 <lock_acquire>
c0103a30:	0f b6 45 f4          	movzx  eax,BYTE PTR [ebp-0xc]
c0103a34:	8b 55 10             	mov    edx,DWORD PTR [ebp+0x10]
c0103a37:	89 54 24 08          	mov    DWORD PTR [esp+0x8],edx
c0103a3b:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
c0103a3e:	89 54 24 04          	mov    DWORD PTR [esp+0x4],edx
c0103a42:	89 04 24             	mov    DWORD PTR [esp],eax
c0103a45:	e8 ec 41 00 00       	call   c0107c36 <put_int>
c0103a4a:	c7 04 24 80 cd 10 c0 	mov    DWORD PTR [esp],0xc010cd80
c0103a51:	e8 64 f2 ff ff       	call   c0102cba <lock_release>
c0103a56:	c9                   	leave  
c0103a57:	c3                   	ret    

c0103a58 <console_uint>:
c0103a58:	55                   	push   ebp
c0103a59:	89 e5                	mov    ebp,esp
c0103a5b:	83 ec 28             	sub    esp,0x28
c0103a5e:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0103a61:	88 45 f4             	mov    BYTE PTR [ebp-0xc],al
c0103a64:	c7 04 24 80 cd 10 c0 	mov    DWORD PTR [esp],0xc010cd80
c0103a6b:	e8 c6 f1 ff ff       	call   c0102c36 <lock_acquire>
c0103a70:	0f b6 45 f4          	movzx  eax,BYTE PTR [ebp-0xc]
c0103a74:	8b 55 10             	mov    edx,DWORD PTR [ebp+0x10]
c0103a77:	89 54 24 08          	mov    DWORD PTR [esp+0x8],edx
c0103a7b:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
c0103a7e:	89 54 24 04          	mov    DWORD PTR [esp+0x4],edx
c0103a82:	89 04 24             	mov    DWORD PTR [esp],eax
c0103a85:	e8 34 42 00 00       	call   c0107cbe <put_uint>
c0103a8a:	c7 04 24 80 cd 10 c0 	mov    DWORD PTR [esp],0xc010cd80
c0103a91:	e8 24 f2 ff ff       	call   c0102cba <lock_release>
c0103a96:	c9                   	leave  
c0103a97:	c3                   	ret    

c0103a98 <get_cpuid>:
c0103a98:	55                   	push   ebp
c0103a99:	89 e5                	mov    ebp,esp
c0103a9b:	56                   	push   esi
c0103a9c:	53                   	push   ebx
c0103a9d:	83 ec 0c             	sub    esp,0xc
c0103aa0:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c0103aa3:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c0103aa6:	89 55 f4             	mov    DWORD PTR [ebp-0xc],edx
c0103aa9:	89 45 f0             	mov    DWORD PTR [ebp-0x10],eax
c0103aac:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0103aaf:	8b 4d f0             	mov    ecx,DWORD PTR [ebp-0x10]
c0103ab2:	0f a2                	cpuid  
c0103ab4:	89 55 ec             	mov    DWORD PTR [ebp-0x14],edx
c0103ab7:	89 4d f0             	mov    DWORD PTR [ebp-0x10],ecx
c0103aba:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
c0103abd:	8b 75 10             	mov    esi,DWORD PTR [ebp+0x10]
c0103ac0:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0103ac3:	89 06                	mov    DWORD PTR [esi],eax
c0103ac5:	8b 55 14             	mov    edx,DWORD PTR [ebp+0x14]
c0103ac8:	89 1a                	mov    DWORD PTR [edx],ebx
c0103aca:	8b 55 18             	mov    edx,DWORD PTR [ebp+0x18]
c0103acd:	8b 4d f0             	mov    ecx,DWORD PTR [ebp-0x10]
c0103ad0:	89 0a                	mov    DWORD PTR [edx],ecx
c0103ad2:	8b 45 1c             	mov    eax,DWORD PTR [ebp+0x1c]
c0103ad5:	8b 55 ec             	mov    edx,DWORD PTR [ebp-0x14]
c0103ad8:	89 10                	mov    DWORD PTR [eax],edx
c0103ada:	83 c4 0c             	add    esp,0xc
c0103add:	5b                   	pop    ebx
c0103ade:	5e                   	pop    esi
c0103adf:	5d                   	pop    ebp
c0103ae0:	c3                   	ret    

c0103ae1 <cpu_info>:
c0103ae1:	55                   	push   ebp
c0103ae2:	89 e5                	mov    ebp,esp
c0103ae4:	83 ec 38             	sub    esp,0x38
c0103ae7:	c7 45 e8 00 00 00 00 	mov    DWORD PTR [ebp-0x18],0x0
c0103aee:	c7 45 ec 00 00 00 00 	mov    DWORD PTR [ebp-0x14],0x0
c0103af5:	c7 45 f0 00 00 00 00 	mov    DWORD PTR [ebp-0x10],0x0
c0103afc:	c7 45 f4 00 00 00 00 	mov    DWORD PTR [ebp-0xc],0x0
c0103b03:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0103b06:	89 45 f8             	mov    DWORD PTR [ebp-0x8],eax
c0103b09:	c7 45 fc 02 00 00 80 	mov    DWORD PTR [ebp-0x4],0x80000002
c0103b10:	e9 92 00 00 00       	jmp    c0103ba7 <cpu_info+0xc6>
c0103b15:	8b 45 fc             	mov    eax,DWORD PTR [ebp-0x4]
c0103b18:	8d 55 e8             	lea    edx,[ebp-0x18]
c0103b1b:	83 c2 0c             	add    edx,0xc
c0103b1e:	89 54 24 14          	mov    DWORD PTR [esp+0x14],edx
c0103b22:	8d 55 e8             	lea    edx,[ebp-0x18]
c0103b25:	83 c2 08             	add    edx,0x8
c0103b28:	89 54 24 10          	mov    DWORD PTR [esp+0x10],edx
c0103b2c:	8d 55 e8             	lea    edx,[ebp-0x18]
c0103b2f:	83 c2 04             	add    edx,0x4
c0103b32:	89 54 24 0c          	mov    DWORD PTR [esp+0xc],edx
c0103b36:	8d 55 e8             	lea    edx,[ebp-0x18]
c0103b39:	89 54 24 08          	mov    DWORD PTR [esp+0x8],edx
c0103b3d:	c7 44 24 04 00 00 00 	mov    DWORD PTR [esp+0x4],0x0
c0103b44:	00 
c0103b45:	89 04 24             	mov    DWORD PTR [esp],eax
c0103b48:	e8 4b ff ff ff       	call   c0103a98 <get_cpuid>
c0103b4d:	8b 45 fc             	mov    eax,DWORD PTR [ebp-0x4]
c0103b50:	c1 e0 04             	shl    eax,0x4
c0103b53:	83 e8 20             	sub    eax,0x20
c0103b56:	03 45 f8             	add    eax,DWORD PTR [ebp-0x8]
c0103b59:	8b 55 e8             	mov    edx,DWORD PTR [ebp-0x18]
c0103b5c:	89 10                	mov    DWORD PTR [eax],edx
c0103b5e:	8b 45 fc             	mov    eax,DWORD PTR [ebp-0x4]
c0103b61:	c1 e0 04             	shl    eax,0x4
c0103b64:	83 e8 1c             	sub    eax,0x1c
c0103b67:	03 45 f8             	add    eax,DWORD PTR [ebp-0x8]
c0103b6a:	8b 55 ec             	mov    edx,DWORD PTR [ebp-0x14]
c0103b6d:	89 10                	mov    DWORD PTR [eax],edx
c0103b6f:	8b 45 fc             	mov    eax,DWORD PTR [ebp-0x4]
c0103b72:	c1 e0 04             	shl    eax,0x4
c0103b75:	83 e8 18             	sub    eax,0x18
c0103b78:	03 45 f8             	add    eax,DWORD PTR [ebp-0x8]
c0103b7b:	8b 55 f0             	mov    edx,DWORD PTR [ebp-0x10]
c0103b7e:	89 10                	mov    DWORD PTR [eax],edx
c0103b80:	8b 45 fc             	mov    eax,DWORD PTR [ebp-0x4]
c0103b83:	c1 e0 04             	shl    eax,0x4
c0103b86:	83 e8 14             	sub    eax,0x14
c0103b89:	03 45 f8             	add    eax,DWORD PTR [ebp-0x8]
c0103b8c:	8b 55 f4             	mov    edx,DWORD PTR [ebp-0xc]
c0103b8f:	89 10                	mov    DWORD PTR [eax],edx
c0103b91:	8b 45 fc             	mov    eax,DWORD PTR [ebp-0x4]
c0103b94:	c1 e0 04             	shl    eax,0x4
c0103b97:	83 e8 10             	sub    eax,0x10
c0103b9a:	03 45 f8             	add    eax,DWORD PTR [ebp-0x8]
c0103b9d:	c7 00 00 00 00 00    	mov    DWORD PTR [eax],0x0
c0103ba3:	83 45 fc 01          	add    DWORD PTR [ebp-0x4],0x1
c0103ba7:	8b 45 fc             	mov    eax,DWORD PTR [ebp-0x4]
c0103baa:	3d 04 00 00 80       	cmp    eax,0x80000004
c0103baf:	0f 86 60 ff ff ff    	jbe    c0103b15 <cpu_info+0x34>
c0103bb5:	c9                   	leave  
c0103bb6:	c3                   	ret    
	...

c0103bb8 <init_fifo>:
c0103bb8:	55                   	push   ebp
c0103bb9:	89 e5                	mov    ebp,esp
c0103bbb:	83 ec 18             	sub    esp,0x18
c0103bbe:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0103bc1:	89 04 24             	mov    DWORD PTR [esp],eax
c0103bc4:	e8 0d ee ff ff       	call   c01029d6 <lock_init>
c0103bc9:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0103bcc:	c7 40 24 00 00 00 00 	mov    DWORD PTR [eax+0x24],0x0
c0103bd3:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0103bd6:	c7 40 28 00 00 00 00 	mov    DWORD PTR [eax+0x28],0x0
c0103bdd:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0103be0:	8b 55 10             	mov    edx,DWORD PTR [ebp+0x10]
c0103be3:	89 50 30             	mov    DWORD PTR [eax+0x30],edx
c0103be6:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
c0103be9:	83 f8 10             	cmp    eax,0x10
c0103bec:	74 23                	je     c0103c11 <init_fifo+0x59>
c0103bee:	83 f8 10             	cmp    eax,0x10
c0103bf1:	7f 07                	jg     c0103bfa <init_fifo+0x42>
c0103bf3:	83 f8 08             	cmp    eax,0x8
c0103bf6:	74 0e                	je     c0103c06 <init_fifo+0x4e>
c0103bf8:	eb 37                	jmp    c0103c31 <init_fifo+0x79>
c0103bfa:	83 f8 20             	cmp    eax,0x20
c0103bfd:	74 1d                	je     c0103c1c <init_fifo+0x64>
c0103bff:	83 f8 40             	cmp    eax,0x40
c0103c02:	74 23                	je     c0103c27 <init_fifo+0x6f>
c0103c04:	eb 2b                	jmp    c0103c31 <init_fifo+0x79>
c0103c06:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0103c09:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
c0103c0c:	89 50 2c             	mov    DWORD PTR [eax+0x2c],edx
c0103c0f:	eb 20                	jmp    c0103c31 <init_fifo+0x79>
c0103c11:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0103c14:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
c0103c17:	89 50 2c             	mov    DWORD PTR [eax+0x2c],edx
c0103c1a:	eb 15                	jmp    c0103c31 <init_fifo+0x79>
c0103c1c:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0103c1f:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
c0103c22:	89 50 2c             	mov    DWORD PTR [eax+0x2c],edx
c0103c25:	eb 0a                	jmp    c0103c31 <init_fifo+0x79>
c0103c27:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0103c2a:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
c0103c2d:	89 50 2c             	mov    DWORD PTR [eax+0x2c],edx
c0103c30:	90                   	nop
c0103c31:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0103c34:	8b 55 14             	mov    edx,DWORD PTR [ebp+0x14]
c0103c37:	89 50 34             	mov    DWORD PTR [eax+0x34],edx
c0103c3a:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0103c3d:	8b 55 14             	mov    edx,DWORD PTR [ebp+0x14]
c0103c40:	89 50 38             	mov    DWORD PTR [eax+0x38],edx
c0103c43:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0103c46:	c7 40 3c 00 00 00 00 	mov    DWORD PTR [eax+0x3c],0x0
c0103c4d:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0103c50:	c7 40 40 00 00 00 00 	mov    DWORD PTR [eax+0x40],0x0
c0103c57:	c9                   	leave  
c0103c58:	c3                   	ret    

c0103c59 <fifo_put>:
c0103c59:	55                   	push   ebp
c0103c5a:	89 e5                	mov    ebp,esp
c0103c5c:	83 ec 38             	sub    esp,0x38
c0103c5f:	e8 62 da ff ff       	call   c01016c6 <intr_disable>
c0103c64:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
c0103c67:	eb 2d                	jmp    c0103c96 <fifo_put+0x3d>
c0103c69:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0103c6c:	89 04 24             	mov    DWORD PTR [esp],eax
c0103c6f:	e8 c2 ef ff ff       	call   c0102c36 <lock_acquire>
c0103c74:	e8 4e f2 ff ff       	call   c0102ec7 <running_thread>
c0103c79:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c0103c7c:	89 42 24             	mov    DWORD PTR [edx+0x24],eax
c0103c7f:	c7 04 24 02 00 00 00 	mov    DWORD PTR [esp],0x2
c0103c86:	e8 e2 f5 ff ff       	call   c010326d <thread_block>
c0103c8b:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0103c8e:	89 04 24             	mov    DWORD PTR [esp],eax
c0103c91:	e8 24 f0 ff ff       	call   c0102cba <lock_release>
c0103c96:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0103c99:	8b 40 38             	mov    eax,DWORD PTR [eax+0x38]
c0103c9c:	85 c0                	test   eax,eax
c0103c9e:	74 c9                	je     c0103c69 <fifo_put+0x10>
c0103ca0:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0103ca3:	8b 40 38             	mov    eax,DWORD PTR [eax+0x38]
c0103ca6:	8d 50 ff             	lea    edx,[eax-0x1]
c0103ca9:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0103cac:	89 50 38             	mov    DWORD PTR [eax+0x38],edx
c0103caf:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0103cb2:	8b 40 30             	mov    eax,DWORD PTR [eax+0x30]
c0103cb5:	83 f8 08             	cmp    eax,0x8
c0103cb8:	74 4d                	je     c0103d07 <fifo_put+0xae>
c0103cba:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0103cbd:	8b 40 30             	mov    eax,DWORD PTR [eax+0x30]
c0103cc0:	83 f8 10             	cmp    eax,0x10
c0103cc3:	74 42                	je     c0103d07 <fifo_put+0xae>
c0103cc5:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0103cc8:	8b 40 30             	mov    eax,DWORD PTR [eax+0x30]
c0103ccb:	83 f8 20             	cmp    eax,0x20
c0103cce:	74 37                	je     c0103d07 <fifo_put+0xae>
c0103cd0:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0103cd3:	8b 40 30             	mov    eax,DWORD PTR [eax+0x30]
c0103cd6:	83 f8 40             	cmp    eax,0x40
c0103cd9:	74 2c                	je     c0103d07 <fifo_put+0xae>
c0103cdb:	c7 44 24 10 58 c4 10 	mov    DWORD PTR [esp+0x10],0xc010c458
c0103ce2:	c0 
c0103ce3:	c7 44 24 0c bb c4 10 	mov    DWORD PTR [esp+0xc],0xc010c4bb
c0103cea:	c0 
c0103ceb:	c7 44 24 08 3b 00 00 	mov    DWORD PTR [esp+0x8],0x3b
c0103cf2:	00 
c0103cf3:	c7 44 24 04 a4 c4 10 	mov    DWORD PTR [esp+0x4],0xc010c4a4
c0103cfa:	c0 
c0103cfb:	c7 04 24 a4 c4 10 c0 	mov    DWORD PTR [esp],0xc010c4a4
c0103d02:	e8 9d cb ff ff       	call   c01008a4 <panic_spin>
c0103d07:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0103d0a:	8b 40 30             	mov    eax,DWORD PTR [eax+0x30]
c0103d0d:	83 f8 10             	cmp    eax,0x10
c0103d10:	74 30                	je     c0103d42 <fifo_put+0xe9>
c0103d12:	83 f8 10             	cmp    eax,0x10
c0103d15:	7f 07                	jg     c0103d1e <fifo_put+0xc5>
c0103d17:	83 f8 08             	cmp    eax,0x8
c0103d1a:	74 0e                	je     c0103d2a <fifo_put+0xd1>
c0103d1c:	eb 79                	jmp    c0103d97 <fifo_put+0x13e>
c0103d1e:	83 f8 20             	cmp    eax,0x20
c0103d21:	74 3a                	je     c0103d5d <fifo_put+0x104>
c0103d23:	83 f8 40             	cmp    eax,0x40
c0103d26:	74 4f                	je     c0103d77 <fifo_put+0x11e>
c0103d28:	eb 6d                	jmp    c0103d97 <fifo_put+0x13e>
c0103d2a:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0103d2d:	8b 50 2c             	mov    edx,DWORD PTR [eax+0x2c]
c0103d30:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0103d33:	8b 40 40             	mov    eax,DWORD PTR [eax+0x40]
c0103d36:	01 c2                	add    edx,eax
c0103d38:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c0103d3b:	0f b6 00             	movzx  eax,BYTE PTR [eax]
c0103d3e:	88 02                	mov    BYTE PTR [edx],al
c0103d40:	eb 55                	jmp    c0103d97 <fifo_put+0x13e>
c0103d42:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0103d45:	8b 50 2c             	mov    edx,DWORD PTR [eax+0x2c]
c0103d48:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0103d4b:	8b 40 40             	mov    eax,DWORD PTR [eax+0x40]
c0103d4e:	01 c0                	add    eax,eax
c0103d50:	01 c2                	add    edx,eax
c0103d52:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c0103d55:	0f b7 00             	movzx  eax,WORD PTR [eax]
c0103d58:	66 89 02             	mov    WORD PTR [edx],ax
c0103d5b:	eb 3a                	jmp    c0103d97 <fifo_put+0x13e>
c0103d5d:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0103d60:	8b 50 2c             	mov    edx,DWORD PTR [eax+0x2c]
c0103d63:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0103d66:	8b 40 40             	mov    eax,DWORD PTR [eax+0x40]
c0103d69:	c1 e0 02             	shl    eax,0x2
c0103d6c:	01 c2                	add    edx,eax
c0103d6e:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c0103d71:	8b 00                	mov    eax,DWORD PTR [eax]
c0103d73:	89 02                	mov    DWORD PTR [edx],eax
c0103d75:	eb 20                	jmp    c0103d97 <fifo_put+0x13e>
c0103d77:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0103d7a:	8b 50 2c             	mov    edx,DWORD PTR [eax+0x2c]
c0103d7d:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0103d80:	8b 40 40             	mov    eax,DWORD PTR [eax+0x40]
c0103d83:	c1 e0 03             	shl    eax,0x3
c0103d86:	8d 0c 02             	lea    ecx,[edx+eax*1]
c0103d89:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c0103d8c:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
c0103d8f:	8b 00                	mov    eax,DWORD PTR [eax]
c0103d91:	89 01                	mov    DWORD PTR [ecx],eax
c0103d93:	89 51 04             	mov    DWORD PTR [ecx+0x4],edx
c0103d96:	90                   	nop
c0103d97:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0103d9a:	8b 40 40             	mov    eax,DWORD PTR [eax+0x40]
c0103d9d:	8d 50 01             	lea    edx,[eax+0x1]
c0103da0:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0103da3:	8b 48 34             	mov    ecx,DWORD PTR [eax+0x34]
c0103da6:	89 d0                	mov    eax,edx
c0103da8:	89 c2                	mov    edx,eax
c0103daa:	c1 fa 1f             	sar    edx,0x1f
c0103dad:	f7 f9                	idiv   ecx
c0103daf:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0103db2:	89 50 40             	mov    DWORD PTR [eax+0x40],edx
c0103db5:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0103db8:	8b 40 28             	mov    eax,DWORD PTR [eax+0x28]
c0103dbb:	85 c0                	test   eax,eax
c0103dbd:	74 18                	je     c0103dd7 <fifo_put+0x17e>
c0103dbf:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0103dc2:	8b 40 28             	mov    eax,DWORD PTR [eax+0x28]
c0103dc5:	89 04 24             	mov    DWORD PTR [esp],eax
c0103dc8:	e8 40 f5 ff ff       	call   c010330d <thread_unblock>
c0103dcd:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0103dd0:	c7 40 28 00 00 00 00 	mov    DWORD PTR [eax+0x28],0x0
c0103dd7:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0103dda:	89 04 24             	mov    DWORD PTR [esp],eax
c0103ddd:	e8 11 d9 ff ff       	call   c01016f3 <intr_set_status>
c0103de2:	b8 00 00 00 00       	mov    eax,0x0
c0103de7:	c9                   	leave  
c0103de8:	c3                   	ret    

c0103de9 <fifo_get>:
c0103de9:	55                   	push   ebp
c0103dea:	89 e5                	mov    ebp,esp
c0103dec:	83 ec 38             	sub    esp,0x38
c0103def:	e8 d2 d8 ff ff       	call   c01016c6 <intr_disable>
c0103df4:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
c0103df7:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0103dfa:	8b 40 30             	mov    eax,DWORD PTR [eax+0x30]
c0103dfd:	83 f8 08             	cmp    eax,0x8
c0103e00:	74 7e                	je     c0103e80 <fifo_get+0x97>
c0103e02:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0103e05:	8b 40 30             	mov    eax,DWORD PTR [eax+0x30]
c0103e08:	83 f8 10             	cmp    eax,0x10
c0103e0b:	74 73                	je     c0103e80 <fifo_get+0x97>
c0103e0d:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0103e10:	8b 40 30             	mov    eax,DWORD PTR [eax+0x30]
c0103e13:	83 f8 20             	cmp    eax,0x20
c0103e16:	74 68                	je     c0103e80 <fifo_get+0x97>
c0103e18:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0103e1b:	8b 40 30             	mov    eax,DWORD PTR [eax+0x30]
c0103e1e:	83 f8 40             	cmp    eax,0x40
c0103e21:	74 5d                	je     c0103e80 <fifo_get+0x97>
c0103e23:	c7 44 24 10 58 c4 10 	mov    DWORD PTR [esp+0x10],0xc010c458
c0103e2a:	c0 
c0103e2b:	c7 44 24 0c b2 c4 10 	mov    DWORD PTR [esp+0xc],0xc010c4b2
c0103e32:	c0 
c0103e33:	c7 44 24 08 5a 00 00 	mov    DWORD PTR [esp+0x8],0x5a
c0103e3a:	00 
c0103e3b:	c7 44 24 04 a4 c4 10 	mov    DWORD PTR [esp+0x4],0xc010c4a4
c0103e42:	c0 
c0103e43:	c7 04 24 a4 c4 10 c0 	mov    DWORD PTR [esp],0xc010c4a4
c0103e4a:	e8 55 ca ff ff       	call   c01008a4 <panic_spin>
c0103e4f:	eb 2f                	jmp    c0103e80 <fifo_get+0x97>
c0103e51:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0103e54:	89 04 24             	mov    DWORD PTR [esp],eax
c0103e57:	e8 da ed ff ff       	call   c0102c36 <lock_acquire>
c0103e5c:	e8 66 f0 ff ff       	call   c0102ec7 <running_thread>
c0103e61:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c0103e64:	89 42 28             	mov    DWORD PTR [edx+0x28],eax
c0103e67:	c7 04 24 02 00 00 00 	mov    DWORD PTR [esp],0x2
c0103e6e:	e8 fa f3 ff ff       	call   c010326d <thread_block>
c0103e73:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0103e76:	89 04 24             	mov    DWORD PTR [esp],eax
c0103e79:	e8 3c ee ff ff       	call   c0102cba <lock_release>
c0103e7e:	eb 01                	jmp    c0103e81 <fifo_get+0x98>
c0103e80:	90                   	nop
c0103e81:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0103e84:	8b 50 38             	mov    edx,DWORD PTR [eax+0x38]
c0103e87:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0103e8a:	8b 40 34             	mov    eax,DWORD PTR [eax+0x34]
c0103e8d:	39 c2                	cmp    edx,eax
c0103e8f:	74 c0                	je     c0103e51 <fifo_get+0x68>
c0103e91:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0103e94:	8b 40 38             	mov    eax,DWORD PTR [eax+0x38]
c0103e97:	8d 50 01             	lea    edx,[eax+0x1]
c0103e9a:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0103e9d:	89 50 38             	mov    DWORD PTR [eax+0x38],edx
c0103ea0:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0103ea3:	8b 40 30             	mov    eax,DWORD PTR [eax+0x30]
c0103ea6:	83 f8 10             	cmp    eax,0x10
c0103ea9:	74 30                	je     c0103edb <fifo_get+0xf2>
c0103eab:	83 f8 10             	cmp    eax,0x10
c0103eae:	7f 07                	jg     c0103eb7 <fifo_get+0xce>
c0103eb0:	83 f8 08             	cmp    eax,0x8
c0103eb3:	74 0e                	je     c0103ec3 <fifo_get+0xda>
c0103eb5:	eb 78                	jmp    c0103f2f <fifo_get+0x146>
c0103eb7:	83 f8 20             	cmp    eax,0x20
c0103eba:	74 3a                	je     c0103ef6 <fifo_get+0x10d>
c0103ebc:	83 f8 40             	cmp    eax,0x40
c0103ebf:	74 4f                	je     c0103f10 <fifo_get+0x127>
c0103ec1:	eb 6c                	jmp    c0103f2f <fifo_get+0x146>
c0103ec3:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0103ec6:	8b 50 2c             	mov    edx,DWORD PTR [eax+0x2c]
c0103ec9:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0103ecc:	8b 40 3c             	mov    eax,DWORD PTR [eax+0x3c]
c0103ecf:	01 d0                	add    eax,edx
c0103ed1:	0f b6 10             	movzx  edx,BYTE PTR [eax]
c0103ed4:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c0103ed7:	88 10                	mov    BYTE PTR [eax],dl
c0103ed9:	eb 54                	jmp    c0103f2f <fifo_get+0x146>
c0103edb:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0103ede:	8b 50 2c             	mov    edx,DWORD PTR [eax+0x2c]
c0103ee1:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0103ee4:	8b 40 3c             	mov    eax,DWORD PTR [eax+0x3c]
c0103ee7:	01 c0                	add    eax,eax
c0103ee9:	01 d0                	add    eax,edx
c0103eeb:	0f b7 10             	movzx  edx,WORD PTR [eax]
c0103eee:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c0103ef1:	66 89 10             	mov    WORD PTR [eax],dx
c0103ef4:	eb 39                	jmp    c0103f2f <fifo_get+0x146>
c0103ef6:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0103ef9:	8b 50 2c             	mov    edx,DWORD PTR [eax+0x2c]
c0103efc:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0103eff:	8b 40 3c             	mov    eax,DWORD PTR [eax+0x3c]
c0103f02:	c1 e0 02             	shl    eax,0x2
c0103f05:	01 d0                	add    eax,edx
c0103f07:	8b 10                	mov    edx,DWORD PTR [eax]
c0103f09:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c0103f0c:	89 10                	mov    DWORD PTR [eax],edx
c0103f0e:	eb 1f                	jmp    c0103f2f <fifo_get+0x146>
c0103f10:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0103f13:	8b 50 2c             	mov    edx,DWORD PTR [eax+0x2c]
c0103f16:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0103f19:	8b 40 3c             	mov    eax,DWORD PTR [eax+0x3c]
c0103f1c:	c1 e0 03             	shl    eax,0x3
c0103f1f:	01 d0                	add    eax,edx
c0103f21:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
c0103f24:	8b 00                	mov    eax,DWORD PTR [eax]
c0103f26:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
c0103f29:	89 01                	mov    DWORD PTR [ecx],eax
c0103f2b:	89 51 04             	mov    DWORD PTR [ecx+0x4],edx
c0103f2e:	90                   	nop
c0103f2f:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0103f32:	8b 40 3c             	mov    eax,DWORD PTR [eax+0x3c]
c0103f35:	8d 50 01             	lea    edx,[eax+0x1]
c0103f38:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0103f3b:	8b 48 34             	mov    ecx,DWORD PTR [eax+0x34]
c0103f3e:	89 d0                	mov    eax,edx
c0103f40:	89 c2                	mov    edx,eax
c0103f42:	c1 fa 1f             	sar    edx,0x1f
c0103f45:	f7 f9                	idiv   ecx
c0103f47:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0103f4a:	89 50 3c             	mov    DWORD PTR [eax+0x3c],edx
c0103f4d:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0103f50:	8b 40 24             	mov    eax,DWORD PTR [eax+0x24]
c0103f53:	85 c0                	test   eax,eax
c0103f55:	74 18                	je     c0103f6f <fifo_get+0x186>
c0103f57:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0103f5a:	8b 40 24             	mov    eax,DWORD PTR [eax+0x24]
c0103f5d:	89 04 24             	mov    DWORD PTR [esp],eax
c0103f60:	e8 a8 f3 ff ff       	call   c010330d <thread_unblock>
c0103f65:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0103f68:	c7 40 24 00 00 00 00 	mov    DWORD PTR [eax+0x24],0x0
c0103f6f:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0103f72:	89 04 24             	mov    DWORD PTR [esp],eax
c0103f75:	e8 79 d7 ff ff       	call   c01016f3 <intr_set_status>
c0103f7a:	b8 00 00 00 00       	mov    eax,0x0
c0103f7f:	c9                   	leave  
c0103f80:	c3                   	ret    

c0103f81 <fifo_empty>:
c0103f81:	55                   	push   ebp
c0103f82:	89 e5                	mov    ebp,esp
c0103f84:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0103f87:	8b 50 38             	mov    edx,DWORD PTR [eax+0x38]
c0103f8a:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0103f8d:	8b 40 34             	mov    eax,DWORD PTR [eax+0x34]
c0103f90:	39 c2                	cmp    edx,eax
c0103f92:	0f 94 c0             	sete   al
c0103f95:	0f b6 c0             	movzx  eax,al
c0103f98:	5d                   	pop    ebp
c0103f99:	c3                   	ret    

c0103f9a <fifo_fill>:
c0103f9a:	55                   	push   ebp
c0103f9b:	89 e5                	mov    ebp,esp
c0103f9d:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0103fa0:	8b 40 38             	mov    eax,DWORD PTR [eax+0x38]
c0103fa3:	85 c0                	test   eax,eax
c0103fa5:	0f 94 c0             	sete   al
c0103fa8:	0f b6 c0             	movzx  eax,al
c0103fab:	5d                   	pop    ebp
c0103fac:	c3                   	ret    
c0103fad:	00 00                	add    BYTE PTR [eax],al
	...

c0103fb0 <io_in8>:
c0103fb0:	55                   	push   ebp
c0103fb1:	89 e5                	mov    ebp,esp
c0103fb3:	53                   	push   ebx
c0103fb4:	83 ec 14             	sub    esp,0x14
c0103fb7:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c0103fba:	89 55 e8             	mov    DWORD PTR [ebp-0x18],edx
c0103fbd:	8b 55 e8             	mov    edx,DWORD PTR [ebp-0x18]
c0103fc0:	ec                   	in     al,dx
c0103fc1:	89 c3                	mov    ebx,eax
c0103fc3:	89 5d f8             	mov    DWORD PTR [ebp-0x8],ebx
c0103fc6:	8b 45 f8             	mov    eax,DWORD PTR [ebp-0x8]
c0103fc9:	83 c4 14             	add    esp,0x14
c0103fcc:	5b                   	pop    ebx
c0103fcd:	5d                   	pop    ebp
c0103fce:	c3                   	ret    

c0103fcf <io_out8>:
c0103fcf:	55                   	push   ebp
c0103fd0:	89 e5                	mov    ebp,esp
c0103fd2:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c0103fd5:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c0103fd8:	ee                   	out    dx,al
c0103fd9:	5d                   	pop    ebp
c0103fda:	c3                   	ret    

c0103fdb <wait_keyboard_ready>:
c0103fdb:	55                   	push   ebp
c0103fdc:	89 e5                	mov    ebp,esp
c0103fde:	83 ec 04             	sub    esp,0x4
c0103fe1:	eb 01                	jmp    c0103fe4 <wait_keyboard_ready+0x9>
c0103fe3:	90                   	nop
c0103fe4:	c7 04 24 64 00 00 00 	mov    DWORD PTR [esp],0x64
c0103feb:	e8 c0 ff ff ff       	call   c0103fb0 <io_in8>
c0103ff0:	83 e0 02             	and    eax,0x2
c0103ff3:	85 c0                	test   eax,eax
c0103ff5:	75 ec                	jne    c0103fe3 <wait_keyboard_ready+0x8>
c0103ff7:	90                   	nop
c0103ff8:	c9                   	leave  
c0103ff9:	c3                   	ret    

c0103ffa <init_keyboard>:
c0103ffa:	55                   	push   ebp
c0103ffb:	89 e5                	mov    ebp,esp
c0103ffd:	83 ec 18             	sub    esp,0x18
c0104000:	e8 d6 ff ff ff       	call   c0103fdb <wait_keyboard_ready>
c0104005:	c7 44 24 04 60 00 00 	mov    DWORD PTR [esp+0x4],0x60
c010400c:	00 
c010400d:	c7 04 24 64 00 00 00 	mov    DWORD PTR [esp],0x64
c0104014:	e8 b6 ff ff ff       	call   c0103fcf <io_out8>
c0104019:	e8 bd ff ff ff       	call   c0103fdb <wait_keyboard_ready>
c010401e:	c7 44 24 04 47 00 00 	mov    DWORD PTR [esp+0x4],0x47
c0104025:	00 
c0104026:	c7 04 24 60 00 00 00 	mov    DWORD PTR [esp],0x60
c010402d:	e8 9d ff ff ff       	call   c0103fcf <io_out8>
c0104032:	c7 44 24 0c 40 00 00 	mov    DWORD PTR [esp+0xc],0x40
c0104039:	00 
c010403a:	c7 44 24 08 08 00 00 	mov    DWORD PTR [esp+0x8],0x8
c0104041:	00 
c0104042:	c7 44 24 04 c0 cd 10 	mov    DWORD PTR [esp+0x4],0xc010cdc0
c0104049:	c0 
c010404a:	c7 04 24 c0 32 11 c0 	mov    DWORD PTR [esp],0xc01132c0
c0104051:	e8 62 fb ff ff       	call   c0103bb8 <init_fifo>
c0104056:	c9                   	leave  
c0104057:	c3                   	ret    

c0104058 <intr0x21_handler>:
c0104058:	55                   	push   ebp
c0104059:	89 e5                	mov    ebp,esp
c010405b:	83 ec 38             	sub    esp,0x38
c010405e:	c7 44 24 04 20 00 00 	mov    DWORD PTR [esp+0x4],0x20
c0104065:	00 
c0104066:	c7 04 24 20 00 00 00 	mov    DWORD PTR [esp],0x20
c010406d:	e8 5d ff ff ff       	call   c0103fcf <io_out8>
c0104072:	a1 04 ce 10 c0       	mov    eax,ds:0xc010ce04
c0104077:	89 45 ec             	mov    DWORD PTR [ebp-0x14],eax
c010407a:	a1 0c ce 10 c0       	mov    eax,ds:0xc010ce0c
c010407f:	89 45 e8             	mov    DWORD PTR [ebp-0x18],eax
c0104082:	c7 04 24 60 00 00 00 	mov    DWORD PTR [esp],0x60
c0104089:	e8 22 ff ff ff       	call   c0103fb0 <io_in8>
c010408e:	66 89 45 f6          	mov    WORD PTR [ebp-0xa],ax
c0104092:	66 81 7d f6 e0 00    	cmp    WORD PTR [ebp-0xa],0xe0
c0104098:	75 0f                	jne    c01040a9 <intr0x21_handler+0x51>
c010409a:	c7 05 10 ce 10 c0 01 	mov    DWORD PTR ds:0xc010ce10,0x1
c01040a1:	00 00 00 
c01040a4:	e9 f6 01 00 00       	jmp    c010429f <intr0x21_handler+0x247>
c01040a9:	a1 10 ce 10 c0       	mov    eax,ds:0xc010ce10
c01040ae:	83 f8 01             	cmp    eax,0x1
c01040b1:	75 10                	jne    c01040c3 <intr0x21_handler+0x6b>
c01040b3:	66 81 4d f6 00 e0    	or     WORD PTR [ebp-0xa],0xe000
c01040b9:	c7 05 10 ce 10 c0 00 	mov    DWORD PTR ds:0xc010ce10,0x0
c01040c0:	00 00 00 
c01040c3:	0f b7 45 f6          	movzx  eax,WORD PTR [ebp-0xa]
c01040c7:	25 80 00 00 00       	and    eax,0x80
c01040cc:	85 c0                	test   eax,eax
c01040ce:	0f 95 c0             	setne  al
c01040d1:	0f b6 c0             	movzx  eax,al
c01040d4:	89 45 e4             	mov    DWORD PTR [ebp-0x1c],eax
c01040d7:	83 7d e4 01          	cmp    DWORD PTR [ebp-0x1c],0x1
c01040db:	75 5d                	jne    c010413a <intr0x21_handler+0xe2>
c01040dd:	66 81 65 f6 7f ff    	and    WORD PTR [ebp-0xa],0xff7f
c01040e3:	0f b7 45 f6          	movzx  eax,WORD PTR [ebp-0xa]
c01040e7:	83 f8 36             	cmp    eax,0x36
c01040ea:	74 32                	je     c010411e <intr0x21_handler+0xc6>
c01040ec:	83 f8 36             	cmp    eax,0x36
c01040ef:	7f 0c                	jg     c01040fd <intr0x21_handler+0xa5>
c01040f1:	83 f8 1d             	cmp    eax,0x1d
c01040f4:	74 1c                	je     c0104112 <intr0x21_handler+0xba>
c01040f6:	83 f8 2a             	cmp    eax,0x2a
c01040f9:	74 23                	je     c010411e <intr0x21_handler+0xc6>
c01040fb:	eb 38                	jmp    c0104135 <intr0x21_handler+0xdd>
c01040fd:	3d 1d e0 00 00       	cmp    eax,0xe01d
c0104102:	74 0e                	je     c0104112 <intr0x21_handler+0xba>
c0104104:	3d 38 e0 00 00       	cmp    eax,0xe038
c0104109:	74 1f                	je     c010412a <intr0x21_handler+0xd2>
c010410b:	83 f8 38             	cmp    eax,0x38
c010410e:	74 1a                	je     c010412a <intr0x21_handler+0xd2>
c0104110:	eb 23                	jmp    c0104135 <intr0x21_handler+0xdd>
c0104112:	c7 05 00 ce 10 c0 00 	mov    DWORD PTR ds:0xc010ce00,0x0
c0104119:	00 00 00 
c010411c:	eb 17                	jmp    c0104135 <intr0x21_handler+0xdd>
c010411e:	c7 05 04 ce 10 c0 00 	mov    DWORD PTR ds:0xc010ce04,0x0
c0104125:	00 00 00 
c0104128:	eb 0b                	jmp    c0104135 <intr0x21_handler+0xdd>
c010412a:	c7 05 08 ce 10 c0 00 	mov    DWORD PTR ds:0xc010ce08,0x0
c0104131:	00 00 00 
c0104134:	90                   	nop
c0104135:	e9 65 01 00 00       	jmp    c010429f <intr0x21_handler+0x247>
c010413a:	66 83 7d f6 3a       	cmp    WORD PTR [ebp-0xa],0x3a
c010413f:	77 07                	ja     c0104148 <intr0x21_handler+0xf0>
c0104141:	66 83 7d f6 00       	cmp    WORD PTR [ebp-0xa],0x0
c0104146:	75 14                	jne    c010415c <intr0x21_handler+0x104>
c0104148:	66 81 7d f6 38 e0    	cmp    WORD PTR [ebp-0xa],0xe038
c010414e:	74 0c                	je     c010415c <intr0x21_handler+0x104>
c0104150:	66 81 7d f6 1d e0    	cmp    WORD PTR [ebp-0xa],0xe01d
c0104156:	0f 85 3f 01 00 00    	jne    c010429b <intr0x21_handler+0x243>
c010415c:	c7 45 f0 00 00 00 00 	mov    DWORD PTR [ebp-0x10],0x0
c0104163:	66 83 7d f6 0d       	cmp    WORD PTR [ebp-0xa],0xd
c0104168:	76 38                	jbe    c01041a2 <intr0x21_handler+0x14a>
c010416a:	66 83 7d f6 29       	cmp    WORD PTR [ebp-0xa],0x29
c010416f:	74 31                	je     c01041a2 <intr0x21_handler+0x14a>
c0104171:	66 83 7d f6 1a       	cmp    WORD PTR [ebp-0xa],0x1a
c0104176:	74 2a                	je     c01041a2 <intr0x21_handler+0x14a>
c0104178:	66 83 7d f6 1b       	cmp    WORD PTR [ebp-0xa],0x1b
c010417d:	74 23                	je     c01041a2 <intr0x21_handler+0x14a>
c010417f:	66 83 7d f6 2b       	cmp    WORD PTR [ebp-0xa],0x2b
c0104184:	74 1c                	je     c01041a2 <intr0x21_handler+0x14a>
c0104186:	66 83 7d f6 27       	cmp    WORD PTR [ebp-0xa],0x27
c010418b:	74 15                	je     c01041a2 <intr0x21_handler+0x14a>
c010418d:	66 83 7d f6 28       	cmp    WORD PTR [ebp-0xa],0x28
c0104192:	74 0e                	je     c01041a2 <intr0x21_handler+0x14a>
c0104194:	66 83 7d f6 32       	cmp    WORD PTR [ebp-0xa],0x32
c0104199:	76 16                	jbe    c01041b1 <intr0x21_handler+0x159>
c010419b:	66 83 7d f6 35       	cmp    WORD PTR [ebp-0xa],0x35
c01041a0:	77 0f                	ja     c01041b1 <intr0x21_handler+0x159>
c01041a2:	83 7d ec 01          	cmp    DWORD PTR [ebp-0x14],0x1
c01041a6:	75 3a                	jne    c01041e2 <intr0x21_handler+0x18a>
c01041a8:	c7 45 f0 01 00 00 00 	mov    DWORD PTR [ebp-0x10],0x1
c01041af:	eb 31                	jmp    c01041e2 <intr0x21_handler+0x18a>
c01041b1:	83 7d ec 00          	cmp    DWORD PTR [ebp-0x14],0x0
c01041b5:	74 0f                	je     c01041c6 <intr0x21_handler+0x16e>
c01041b7:	83 7d e8 00          	cmp    DWORD PTR [ebp-0x18],0x0
c01041bb:	74 09                	je     c01041c6 <intr0x21_handler+0x16e>
c01041bd:	c7 45 f0 00 00 00 00 	mov    DWORD PTR [ebp-0x10],0x0
c01041c4:	eb 1c                	jmp    c01041e2 <intr0x21_handler+0x18a>
c01041c6:	83 7d ec 00          	cmp    DWORD PTR [ebp-0x14],0x0
c01041ca:	75 06                	jne    c01041d2 <intr0x21_handler+0x17a>
c01041cc:	83 7d e8 00          	cmp    DWORD PTR [ebp-0x18],0x0
c01041d0:	74 09                	je     c01041db <intr0x21_handler+0x183>
c01041d2:	c7 45 f0 01 00 00 00 	mov    DWORD PTR [ebp-0x10],0x1
c01041d9:	eb 07                	jmp    c01041e2 <intr0x21_handler+0x18a>
c01041db:	c7 45 f0 00 00 00 00 	mov    DWORD PTR [ebp-0x10],0x0
c01041e2:	66 81 65 f6 ff 00    	and    WORD PTR [ebp-0xa],0xff
c01041e8:	0f b7 45 f6          	movzx  eax,WORD PTR [ebp-0xa]
c01041ec:	01 c0                	add    eax,eax
c01041ee:	03 45 f0             	add    eax,DWORD PTR [ebp-0x10]
c01041f1:	05 c0 8d 10 c0       	add    eax,0xc0108dc0
c01041f6:	0f b6 00             	movzx  eax,BYTE PTR [eax]
c01041f9:	88 45 e3             	mov    BYTE PTR [ebp-0x1d],al
c01041fc:	0f b6 45 e3          	movzx  eax,BYTE PTR [ebp-0x1d]
c0104200:	84 c0                	test   al,al
c0104202:	74 29                	je     c010422d <intr0x21_handler+0x1d5>
c0104204:	c7 04 24 c0 32 11 c0 	mov    DWORD PTR [esp],0xc01132c0
c010420b:	e8 8a fd ff ff       	call   c0103f9a <fifo_fill>
c0104210:	85 c0                	test   eax,eax
c0104212:	0f 85 86 00 00 00    	jne    c010429e <intr0x21_handler+0x246>
c0104218:	8d 45 e3             	lea    eax,[ebp-0x1d]
c010421b:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c010421f:	c7 04 24 c0 32 11 c0 	mov    DWORD PTR [esp],0xc01132c0
c0104226:	e8 2e fa ff ff       	call   c0103c59 <fifo_put>
c010422b:	eb 71                	jmp    c010429e <intr0x21_handler+0x246>
c010422d:	0f b7 45 f6          	movzx  eax,WORD PTR [ebp-0xa]
c0104231:	83 f8 38             	cmp    eax,0x38
c0104234:	74 43                	je     c0104279 <intr0x21_handler+0x221>
c0104236:	83 f8 38             	cmp    eax,0x38
c0104239:	7f 11                	jg     c010424c <intr0x21_handler+0x1f4>
c010423b:	83 f8 2a             	cmp    eax,0x2a
c010423e:	74 2d                	je     c010426d <intr0x21_handler+0x215>
c0104240:	83 f8 36             	cmp    eax,0x36
c0104243:	74 28                	je     c010426d <intr0x21_handler+0x215>
c0104245:	83 f8 1d             	cmp    eax,0x1d
c0104248:	74 17                	je     c0104261 <intr0x21_handler+0x209>
c010424a:	eb 4d                	jmp    c0104299 <intr0x21_handler+0x241>
c010424c:	3d 1d e0 00 00       	cmp    eax,0xe01d
c0104251:	74 0e                	je     c0104261 <intr0x21_handler+0x209>
c0104253:	3d 38 e0 00 00       	cmp    eax,0xe038
c0104258:	74 1f                	je     c0104279 <intr0x21_handler+0x221>
c010425a:	83 f8 3a             	cmp    eax,0x3a
c010425d:	74 26                	je     c0104285 <intr0x21_handler+0x22d>
c010425f:	eb 38                	jmp    c0104299 <intr0x21_handler+0x241>
c0104261:	c7 05 00 ce 10 c0 01 	mov    DWORD PTR ds:0xc010ce00,0x1
c0104268:	00 00 00 
c010426b:	eb 2d                	jmp    c010429a <intr0x21_handler+0x242>
c010426d:	c7 05 04 ce 10 c0 01 	mov    DWORD PTR ds:0xc010ce04,0x1
c0104274:	00 00 00 
c0104277:	eb 21                	jmp    c010429a <intr0x21_handler+0x242>
c0104279:	c7 05 08 ce 10 c0 01 	mov    DWORD PTR ds:0xc010ce08,0x1
c0104280:	00 00 00 
c0104283:	eb 15                	jmp    c010429a <intr0x21_handler+0x242>
c0104285:	a1 0c ce 10 c0       	mov    eax,ds:0xc010ce0c
c010428a:	85 c0                	test   eax,eax
c010428c:	0f 94 c0             	sete   al
c010428f:	0f b6 c0             	movzx  eax,al
c0104292:	a3 0c ce 10 c0       	mov    ds:0xc010ce0c,eax
c0104297:	eb 01                	jmp    c010429a <intr0x21_handler+0x242>
c0104299:	90                   	nop
c010429a:	90                   	nop
c010429b:	90                   	nop
c010429c:	eb 01                	jmp    c010429f <intr0x21_handler+0x247>
c010429e:	90                   	nop
c010429f:	c9                   	leave  
c01042a0:	c3                   	ret    
c01042a1:	00 00                	add    BYTE PTR [eax],al
	...

c01042a4 <io_in8>:
c01042a4:	55                   	push   ebp
c01042a5:	89 e5                	mov    ebp,esp
c01042a7:	53                   	push   ebx
c01042a8:	83 ec 14             	sub    esp,0x14
c01042ab:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c01042ae:	89 55 e8             	mov    DWORD PTR [ebp-0x18],edx
c01042b1:	8b 55 e8             	mov    edx,DWORD PTR [ebp-0x18]
c01042b4:	ec                   	in     al,dx
c01042b5:	89 c3                	mov    ebx,eax
c01042b7:	89 5d f8             	mov    DWORD PTR [ebp-0x8],ebx
c01042ba:	8b 45 f8             	mov    eax,DWORD PTR [ebp-0x8]
c01042bd:	83 c4 14             	add    esp,0x14
c01042c0:	5b                   	pop    ebx
c01042c1:	5d                   	pop    ebp
c01042c2:	c3                   	ret    

c01042c3 <io_out8>:
c01042c3:	55                   	push   ebp
c01042c4:	89 e5                	mov    ebp,esp
c01042c6:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c01042c9:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c01042cc:	ee                   	out    dx,al
c01042cd:	5d                   	pop    ebp
c01042ce:	c3                   	ret    

c01042cf <init_mouse>:
c01042cf:	55                   	push   ebp
c01042d0:	89 e5                	mov    ebp,esp
c01042d2:	83 ec 18             	sub    esp,0x18
c01042d5:	e8 01 fd ff ff       	call   c0103fdb <wait_keyboard_ready>
c01042da:	c7 44 24 04 d4 00 00 	mov    DWORD PTR [esp+0x4],0xd4
c01042e1:	00 
c01042e2:	c7 04 24 64 00 00 00 	mov    DWORD PTR [esp],0x64
c01042e9:	e8 d5 ff ff ff       	call   c01042c3 <io_out8>
c01042ee:	e8 e8 fc ff ff       	call   c0103fdb <wait_keyboard_ready>
c01042f3:	c7 44 24 04 f4 00 00 	mov    DWORD PTR [esp+0x4],0xf4
c01042fa:	00 
c01042fb:	c7 04 24 60 00 00 00 	mov    DWORD PTR [esp],0x60
c0104302:	e8 bc ff ff ff       	call   c01042c3 <io_out8>
c0104307:	c7 05 1c ce 10 c0 00 	mov    DWORD PTR ds:0xc010ce1c,0x0
c010430e:	00 00 00 
c0104311:	c9                   	leave  
c0104312:	c3                   	ret    

c0104313 <intr0x2c_handler>:
c0104313:	55                   	push   ebp
c0104314:	89 e5                	mov    ebp,esp
c0104316:	83 ec 18             	sub    esp,0x18
c0104319:	c7 44 24 04 20 00 00 	mov    DWORD PTR [esp+0x4],0x20
c0104320:	00 
c0104321:	c7 04 24 a0 00 00 00 	mov    DWORD PTR [esp],0xa0
c0104328:	e8 96 ff ff ff       	call   c01042c3 <io_out8>
c010432d:	c7 44 24 04 20 00 00 	mov    DWORD PTR [esp+0x4],0x20
c0104334:	00 
c0104335:	c7 04 24 20 00 00 00 	mov    DWORD PTR [esp],0x20
c010433c:	e8 82 ff ff ff       	call   c01042c3 <io_out8>
c0104341:	c7 04 24 60 00 00 00 	mov    DWORD PTR [esp],0x60
c0104348:	e8 57 ff ff ff       	call   c01042a4 <io_in8>
c010434d:	88 45 ff             	mov    BYTE PTR [ebp-0x1],al
c0104350:	a1 1c ce 10 c0       	mov    eax,ds:0xc010ce1c
c0104355:	85 c0                	test   eax,eax
c0104357:	75 19                	jne    c0104372 <intr0x2c_handler+0x5f>
c0104359:	80 7d ff fa          	cmp    BYTE PTR [ebp-0x1],0xfa
c010435d:	0f 85 04 01 00 00    	jne    c0104467 <intr0x2c_handler+0x154>
c0104363:	c7 05 1c ce 10 c0 01 	mov    DWORD PTR ds:0xc010ce1c,0x1
c010436a:	00 00 00 
c010436d:	e9 f5 00 00 00       	jmp    c0104467 <intr0x2c_handler+0x154>
c0104372:	a1 1c ce 10 c0       	mov    eax,ds:0xc010ce1c
c0104377:	83 f8 01             	cmp    eax,0x1
c010437a:	75 2a                	jne    c01043a6 <intr0x2c_handler+0x93>
c010437c:	0f b6 45 ff          	movzx  eax,BYTE PTR [ebp-0x1]
c0104380:	25 c8 00 00 00       	and    eax,0xc8
c0104385:	83 f8 08             	cmp    eax,0x8
c0104388:	0f 85 dc 00 00 00    	jne    c010446a <intr0x2c_handler+0x157>
c010438e:	0f b6 45 ff          	movzx  eax,BYTE PTR [ebp-0x1]
c0104392:	a2 18 ce 10 c0       	mov    ds:0xc010ce18,al
c0104397:	c7 05 1c ce 10 c0 02 	mov    DWORD PTR ds:0xc010ce1c,0x2
c010439e:	00 00 00 
c01043a1:	e9 c4 00 00 00       	jmp    c010446a <intr0x2c_handler+0x157>
c01043a6:	a1 1c ce 10 c0       	mov    eax,ds:0xc010ce1c
c01043ab:	83 f8 02             	cmp    eax,0x2
c01043ae:	75 18                	jne    c01043c8 <intr0x2c_handler+0xb5>
c01043b0:	0f b6 45 ff          	movzx  eax,BYTE PTR [ebp-0x1]
c01043b4:	a2 19 ce 10 c0       	mov    ds:0xc010ce19,al
c01043b9:	c7 05 1c ce 10 c0 03 	mov    DWORD PTR ds:0xc010ce1c,0x3
c01043c0:	00 00 00 
c01043c3:	e9 a2 00 00 00       	jmp    c010446a <intr0x2c_handler+0x157>
c01043c8:	a1 1c ce 10 c0       	mov    eax,ds:0xc010ce1c
c01043cd:	83 f8 03             	cmp    eax,0x3
c01043d0:	0f 85 94 00 00 00    	jne    c010446a <intr0x2c_handler+0x157>
c01043d6:	0f b6 45 ff          	movzx  eax,BYTE PTR [ebp-0x1]
c01043da:	a2 1a ce 10 c0       	mov    ds:0xc010ce1a,al
c01043df:	c7 05 1c ce 10 c0 04 	mov    DWORD PTR ds:0xc010ce1c,0x4
c01043e6:	00 00 00 
c01043e9:	0f b6 05 18 ce 10 c0 	movzx  eax,BYTE PTR ds:0xc010ce18
c01043f0:	0f b6 c0             	movzx  eax,al
c01043f3:	83 e0 07             	and    eax,0x7
c01043f6:	a3 28 ce 10 c0       	mov    ds:0xc010ce28,eax
c01043fb:	0f b6 05 19 ce 10 c0 	movzx  eax,BYTE PTR ds:0xc010ce19
c0104402:	0f b6 c0             	movzx  eax,al
c0104405:	a3 20 ce 10 c0       	mov    ds:0xc010ce20,eax
c010440a:	0f b6 05 1a ce 10 c0 	movzx  eax,BYTE PTR ds:0xc010ce1a
c0104411:	0f b6 c0             	movzx  eax,al
c0104414:	a3 24 ce 10 c0       	mov    ds:0xc010ce24,eax
c0104419:	0f b6 05 18 ce 10 c0 	movzx  eax,BYTE PTR ds:0xc010ce18
c0104420:	0f b6 c0             	movzx  eax,al
c0104423:	83 e0 10             	and    eax,0x10
c0104426:	85 c0                	test   eax,eax
c0104428:	74 0f                	je     c0104439 <intr0x2c_handler+0x126>
c010442a:	a1 20 ce 10 c0       	mov    eax,ds:0xc010ce20
c010442f:	0d 00 ff ff ff       	or     eax,0xffffff00
c0104434:	a3 20 ce 10 c0       	mov    ds:0xc010ce20,eax
c0104439:	0f b6 05 18 ce 10 c0 	movzx  eax,BYTE PTR ds:0xc010ce18
c0104440:	0f b6 c0             	movzx  eax,al
c0104443:	83 e0 20             	and    eax,0x20
c0104446:	85 c0                	test   eax,eax
c0104448:	74 0f                	je     c0104459 <intr0x2c_handler+0x146>
c010444a:	a1 24 ce 10 c0       	mov    eax,ds:0xc010ce24
c010444f:	0d 00 ff ff ff       	or     eax,0xffffff00
c0104454:	a3 24 ce 10 c0       	mov    ds:0xc010ce24,eax
c0104459:	a1 24 ce 10 c0       	mov    eax,ds:0xc010ce24
c010445e:	f7 d8                	neg    eax
c0104460:	a3 24 ce 10 c0       	mov    ds:0xc010ce24,eax
c0104465:	eb 03                	jmp    c010446a <intr0x2c_handler+0x157>
c0104467:	90                   	nop
c0104468:	eb 01                	jmp    c010446b <intr0x2c_handler+0x158>
c010446a:	90                   	nop
c010446b:	c9                   	leave  
c010446c:	c3                   	ret    

c010446d <get_mouse>:
c010446d:	55                   	push   ebp
c010446e:	89 e5                	mov    ebp,esp
c0104470:	83 ec 20             	sub    esp,0x20
c0104473:	a1 1c ce 10 c0       	mov    eax,ds:0xc010ce1c
c0104478:	83 f8 04             	cmp    eax,0x4
c010447b:	74 29                	je     c01044a6 <get_mouse+0x39>
c010447d:	c7 45 f0 00 00 00 00 	mov    DWORD PTR [ebp-0x10],0x0
c0104484:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0104487:	8b 55 ec             	mov    edx,DWORD PTR [ebp-0x14]
c010448a:	89 10                	mov    DWORD PTR [eax],edx
c010448c:	8b 55 f0             	mov    edx,DWORD PTR [ebp-0x10]
c010448f:	89 50 04             	mov    DWORD PTR [eax+0x4],edx
c0104492:	8b 55 f4             	mov    edx,DWORD PTR [ebp-0xc]
c0104495:	89 50 08             	mov    DWORD PTR [eax+0x8],edx
c0104498:	8b 55 f8             	mov    edx,DWORD PTR [ebp-0x8]
c010449b:	89 50 0c             	mov    DWORD PTR [eax+0xc],edx
c010449e:	8b 55 fc             	mov    edx,DWORD PTR [ebp-0x4]
c01044a1:	89 50 10             	mov    DWORD PTR [eax+0x10],edx
c01044a4:	eb 39                	jmp    c01044df <get_mouse+0x72>
c01044a6:	c7 05 1c ce 10 c0 01 	mov    DWORD PTR ds:0xc010ce1c,0x1
c01044ad:	00 00 00 
c01044b0:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01044b3:	8b 15 18 ce 10 c0    	mov    edx,DWORD PTR ds:0xc010ce18
c01044b9:	89 10                	mov    DWORD PTR [eax],edx
c01044bb:	8b 15 1c ce 10 c0    	mov    edx,DWORD PTR ds:0xc010ce1c
c01044c1:	89 50 04             	mov    DWORD PTR [eax+0x4],edx
c01044c4:	8b 15 20 ce 10 c0    	mov    edx,DWORD PTR ds:0xc010ce20
c01044ca:	89 50 08             	mov    DWORD PTR [eax+0x8],edx
c01044cd:	8b 15 24 ce 10 c0    	mov    edx,DWORD PTR ds:0xc010ce24
c01044d3:	89 50 0c             	mov    DWORD PTR [eax+0xc],edx
c01044d6:	8b 15 28 ce 10 c0    	mov    edx,DWORD PTR ds:0xc010ce28
c01044dc:	89 50 10             	mov    DWORD PTR [eax+0x10],edx
c01044df:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01044e2:	c9                   	leave  
c01044e3:	c2 04 00             	ret    0x4
	...

c01044e8 <io_in8>:
c01044e8:	55                   	push   ebp
c01044e9:	89 e5                	mov    ebp,esp
c01044eb:	53                   	push   ebx
c01044ec:	83 ec 14             	sub    esp,0x14
c01044ef:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c01044f2:	89 55 e8             	mov    DWORD PTR [ebp-0x18],edx
c01044f5:	8b 55 e8             	mov    edx,DWORD PTR [ebp-0x18]
c01044f8:	ec                   	in     al,dx
c01044f9:	89 c3                	mov    ebx,eax
c01044fb:	89 5d f8             	mov    DWORD PTR [ebp-0x8],ebx
c01044fe:	8b 45 f8             	mov    eax,DWORD PTR [ebp-0x8]
c0104501:	83 c4 14             	add    esp,0x14
c0104504:	5b                   	pop    ebx
c0104505:	5d                   	pop    ebp
c0104506:	c3                   	ret    

c0104507 <io_out8>:
c0104507:	55                   	push   ebp
c0104508:	89 e5                	mov    ebp,esp
c010450a:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c010450d:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c0104510:	ee                   	out    dx,al
c0104511:	5d                   	pop    ebp
c0104512:	c3                   	ret    

c0104513 <get_time>:
c0104513:	55                   	push   ebp
c0104514:	89 e5                	mov    ebp,esp
c0104516:	53                   	push   ebx
c0104517:	83 ec 24             	sub    esp,0x24
c010451a:	e8 ee d1 ff ff       	call   c010170d <intr_get_status>
c010451f:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
c0104522:	c7 44 24 04 89 00 00 	mov    DWORD PTR [esp+0x4],0x89
c0104529:	00 
c010452a:	c7 04 24 70 00 00 00 	mov    DWORD PTR [esp],0x70
c0104531:	e8 d1 ff ff ff       	call   c0104507 <io_out8>
c0104536:	c7 04 24 71 00 00 00 	mov    DWORD PTR [esp],0x71
c010453d:	e8 a6 ff ff ff       	call   c01044e8 <io_in8>
c0104542:	89 c3                	mov    ebx,eax
c0104544:	c7 44 24 04 b2 00 00 	mov    DWORD PTR [esp+0x4],0xb2
c010454b:	00 
c010454c:	c7 04 24 70 00 00 00 	mov    DWORD PTR [esp],0x70
c0104553:	e8 af ff ff ff       	call   c0104507 <io_out8>
c0104558:	c7 04 24 71 00 00 00 	mov    DWORD PTR [esp],0x71
c010455f:	e8 84 ff ff ff       	call   c01044e8 <io_in8>
c0104564:	c1 e0 08             	shl    eax,0x8
c0104567:	8d 14 03             	lea    edx,[ebx+eax*1]
c010456a:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c010456d:	89 50 14             	mov    DWORD PTR [eax+0x14],edx
c0104570:	c7 44 24 04 88 00 00 	mov    DWORD PTR [esp+0x4],0x88
c0104577:	00 
c0104578:	c7 04 24 70 00 00 00 	mov    DWORD PTR [esp],0x70
c010457f:	e8 83 ff ff ff       	call   c0104507 <io_out8>
c0104584:	c7 04 24 71 00 00 00 	mov    DWORD PTR [esp],0x71
c010458b:	e8 58 ff ff ff       	call   c01044e8 <io_in8>
c0104590:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c0104593:	89 42 10             	mov    DWORD PTR [edx+0x10],eax
c0104596:	c7 44 24 04 87 00 00 	mov    DWORD PTR [esp+0x4],0x87
c010459d:	00 
c010459e:	c7 04 24 70 00 00 00 	mov    DWORD PTR [esp],0x70
c01045a5:	e8 5d ff ff ff       	call   c0104507 <io_out8>
c01045aa:	c7 04 24 71 00 00 00 	mov    DWORD PTR [esp],0x71
c01045b1:	e8 32 ff ff ff       	call   c01044e8 <io_in8>
c01045b6:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c01045b9:	89 42 0c             	mov    DWORD PTR [edx+0xc],eax
c01045bc:	c7 44 24 04 84 00 00 	mov    DWORD PTR [esp+0x4],0x84
c01045c3:	00 
c01045c4:	c7 04 24 70 00 00 00 	mov    DWORD PTR [esp],0x70
c01045cb:	e8 37 ff ff ff       	call   c0104507 <io_out8>
c01045d0:	c7 04 24 71 00 00 00 	mov    DWORD PTR [esp],0x71
c01045d7:	e8 0c ff ff ff       	call   c01044e8 <io_in8>
c01045dc:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c01045df:	89 42 08             	mov    DWORD PTR [edx+0x8],eax
c01045e2:	c7 44 24 04 82 00 00 	mov    DWORD PTR [esp+0x4],0x82
c01045e9:	00 
c01045ea:	c7 04 24 70 00 00 00 	mov    DWORD PTR [esp],0x70
c01045f1:	e8 11 ff ff ff       	call   c0104507 <io_out8>
c01045f6:	c7 04 24 71 00 00 00 	mov    DWORD PTR [esp],0x71
c01045fd:	e8 e6 fe ff ff       	call   c01044e8 <io_in8>
c0104602:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c0104605:	89 42 04             	mov    DWORD PTR [edx+0x4],eax
c0104608:	c7 44 24 04 80 00 00 	mov    DWORD PTR [esp+0x4],0x80
c010460f:	00 
c0104610:	c7 04 24 70 00 00 00 	mov    DWORD PTR [esp],0x70
c0104617:	e8 eb fe ff ff       	call   c0104507 <io_out8>
c010461c:	c7 04 24 71 00 00 00 	mov    DWORD PTR [esp],0x71
c0104623:	e8 c0 fe ff ff       	call   c01044e8 <io_in8>
c0104628:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c010462b:	89 02                	mov    DWORD PTR [edx],eax
c010462d:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0104630:	8b 18                	mov    ebx,DWORD PTR [eax]
c0104632:	c7 44 24 04 80 00 00 	mov    DWORD PTR [esp+0x4],0x80
c0104639:	00 
c010463a:	c7 04 24 70 00 00 00 	mov    DWORD PTR [esp],0x70
c0104641:	e8 c1 fe ff ff       	call   c0104507 <io_out8>
c0104646:	c7 04 24 71 00 00 00 	mov    DWORD PTR [esp],0x71
c010464d:	e8 96 fe ff ff       	call   c01044e8 <io_in8>
c0104652:	39 c3                	cmp    ebx,eax
c0104654:	0f 85 c8 fe ff ff    	jne    c0104522 <get_time+0xf>
c010465a:	c7 44 24 04 00 00 00 	mov    DWORD PTR [esp+0x4],0x0
c0104661:	00 
c0104662:	c7 04 24 70 00 00 00 	mov    DWORD PTR [esp],0x70
c0104669:	e8 99 fe ff ff       	call   c0104507 <io_out8>
c010466e:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0104671:	89 04 24             	mov    DWORD PTR [esp],eax
c0104674:	e8 7a d0 ff ff       	call   c01016f3 <intr_set_status>
c0104679:	83 c4 24             	add    esp,0x24
c010467c:	5b                   	pop    ebx
c010467d:	5d                   	pop    ebp
c010467e:	c3                   	ret    
	...

c0104680 <io_out8>:
c0104680:	55                   	push   ebp
c0104681:	89 e5                	mov    ebp,esp
c0104683:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c0104686:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c0104689:	ee                   	out    dx,al
c010468a:	5d                   	pop    ebp
c010468b:	c3                   	ret    

c010468c <init_pit>:
c010468c:	55                   	push   ebp
c010468d:	89 e5                	mov    ebp,esp
c010468f:	83 ec 08             	sub    esp,0x8
c0104692:	c7 44 24 04 34 00 00 	mov    DWORD PTR [esp+0x4],0x34
c0104699:	00 
c010469a:	c7 04 24 43 00 00 00 	mov    DWORD PTR [esp],0x43
c01046a1:	e8 da ff ff ff       	call   c0104680 <io_out8>
c01046a6:	c7 44 24 04 9c 00 00 	mov    DWORD PTR [esp+0x4],0x9c
c01046ad:	00 
c01046ae:	c7 04 24 40 00 00 00 	mov    DWORD PTR [esp],0x40
c01046b5:	e8 c6 ff ff ff       	call   c0104680 <io_out8>
c01046ba:	c7 44 24 04 2e 00 00 	mov    DWORD PTR [esp+0x4],0x2e
c01046c1:	00 
c01046c2:	c7 04 24 40 00 00 00 	mov    DWORD PTR [esp],0x40
c01046c9:	e8 b2 ff ff ff       	call   c0104680 <io_out8>
c01046ce:	c9                   	leave  
c01046cf:	c3                   	ret    

c01046d0 <intr0x20_handler>:
c01046d0:	55                   	push   ebp
c01046d1:	89 e5                	mov    ebp,esp
c01046d3:	83 ec 28             	sub    esp,0x28
c01046d6:	c7 44 24 04 20 00 00 	mov    DWORD PTR [esp+0x4],0x20
c01046dd:	00 
c01046de:	c7 04 24 20 00 00 00 	mov    DWORD PTR [esp],0x20
c01046e5:	e8 96 ff ff ff       	call   c0104680 <io_out8>
c01046ea:	e8 d8 e7 ff ff       	call   c0102ec7 <running_thread>
c01046ef:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
c01046f2:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c01046f5:	8b 40 20             	mov    eax,DWORD PTR [eax+0x20]
c01046f8:	8d 50 01             	lea    edx,[eax+0x1]
c01046fb:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c01046fe:	89 50 20             	mov    DWORD PTR [eax+0x20],edx
c0104701:	a1 2c ce 10 c0       	mov    eax,ds:0xc010ce2c
c0104706:	83 c0 01             	add    eax,0x1
c0104709:	a3 2c ce 10 c0       	mov    ds:0xc010ce2c,eax
c010470e:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0104711:	0f b6 40 1d          	movzx  eax,BYTE PTR [eax+0x1d]
c0104715:	84 c0                	test   al,al
c0104717:	75 07                	jne    c0104720 <intr0x20_handler+0x50>
c0104719:	e8 cb e9 ff ff       	call   c01030e9 <schedule>
c010471e:	eb 10                	jmp    c0104730 <intr0x20_handler+0x60>
c0104720:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0104723:	0f b6 40 1d          	movzx  eax,BYTE PTR [eax+0x1d]
c0104727:	8d 50 ff             	lea    edx,[eax-0x1]
c010472a:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c010472d:	88 50 1d             	mov    BYTE PTR [eax+0x1d],dl
c0104730:	c9                   	leave  
c0104731:	c3                   	ret    
	...

c0104734 <send_recv>:
c0104734:	55                   	push   ebp
c0104735:	89 e5                	mov    ebp,esp
c0104737:	53                   	push   ebx
c0104738:	83 ec 18             	sub    esp,0x18
c010473b:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c010473e:	89 45 e4             	mov    DWORD PTR [ebp-0x1c],eax
c0104741:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
c0104744:	8b 4d 10             	mov    ecx,DWORD PTR [ebp+0x10]
c0104747:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
c010474a:	89 d3                	mov    ebx,edx
c010474c:	cd 4d                	int    0x4d
c010474e:	89 45 e8             	mov    DWORD PTR [ebp-0x18],eax
c0104751:	8b 45 e8             	mov    eax,DWORD PTR [ebp-0x18]
c0104754:	89 45 f8             	mov    DWORD PTR [ebp-0x8],eax
c0104757:	8b 45 f8             	mov    eax,DWORD PTR [ebp-0x8]
c010475a:	83 c4 18             	add    esp,0x18
c010475d:	5b                   	pop    ebx
c010475e:	5d                   	pop    ebp
c010475f:	c3                   	ret    

c0104760 <resetmsg>:
c0104760:	55                   	push   ebp
c0104761:	89 e5                	mov    ebp,esp
c0104763:	83 ec 18             	sub    esp,0x18
c0104766:	c7 44 24 08 30 00 00 	mov    DWORD PTR [esp+0x8],0x30
c010476d:	00 
c010476e:	c7 44 24 04 00 00 00 	mov    DWORD PTR [esp+0x4],0x0
c0104775:	00 
c0104776:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0104779:	89 04 24             	mov    DWORD PTR [esp],eax
c010477c:	e8 63 38 00 00       	call   c0107fe4 <memset>
c0104781:	c9                   	leave  
c0104782:	c3                   	ret    

c0104783 <deadlock>:
c0104783:	55                   	push   ebp
c0104784:	89 e5                	mov    ebp,esp
c0104786:	53                   	push   ebx
c0104787:	83 ec 54             	sub    esp,0x54
c010478a:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c010478d:	89 04 24             	mov    DWORD PTR [esp],eax
c0104790:	e8 65 ec ff ff       	call   c01033fa <pid2thread>
c0104795:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
c0104798:	eb 01                	jmp    c010479b <deadlock+0x18>
c010479a:	90                   	nop
c010479b:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c010479e:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
c01047a1:	83 f8 03             	cmp    eax,0x3
c01047a4:	0f 85 a7 00 00 00    	jne    c0104851 <deadlock+0xce>
c01047aa:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c01047ad:	8b 80 6c 01 00 00    	mov    eax,DWORD PTR [eax+0x16c]
c01047b3:	3b 45 08             	cmp    eax,DWORD PTR [ebp+0x8]
c01047b6:	75 74                	jne    c010482c <deadlock+0xa9>
c01047b8:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c01047bb:	89 04 24             	mov    DWORD PTR [esp],eax
c01047be:	e8 37 ec ff ff       	call   c01033fa <pid2thread>
c01047c3:	8d 58 0c             	lea    ebx,[eax+0xc]
c01047c6:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01047c9:	89 04 24             	mov    DWORD PTR [esp],eax
c01047cc:	e8 29 ec ff ff       	call   c01033fa <pid2thread>
c01047d1:	83 c0 0c             	add    eax,0xc
c01047d4:	89 5c 24 0c          	mov    DWORD PTR [esp+0xc],ebx
c01047d8:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
c01047dc:	c7 44 24 04 83 c5 10 	mov    DWORD PTR [esp+0x4],0xc010c583
c01047e3:	c0 
c01047e4:	8d 45 d6             	lea    eax,[ebp-0x2a]
c01047e7:	89 04 24             	mov    DWORD PTR [esp],eax
c01047ea:	e8 61 3a 00 00       	call   c0108250 <sprintf>
c01047ef:	b8 24 7c 00 c0       	mov    eax,0xc0007c24
c01047f4:	8b 00                	mov    eax,DWORD PTR [eax]
c01047f6:	8d 55 d6             	lea    edx,[ebp-0x2a]
c01047f9:	89 54 24 14          	mov    DWORD PTR [esp+0x14],edx
c01047fd:	c7 44 24 10 00 00 ff 	mov    DWORD PTR [esp+0x10],0xff0000
c0104804:	00 
c0104805:	c7 44 24 0c 00 00 00 	mov    DWORD PTR [esp+0xc],0x0
c010480c:	00 
c010480d:	c7 44 24 08 00 00 00 	mov    DWORD PTR [esp+0x8],0x0
c0104814:	00 
c0104815:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c0104819:	c7 04 24 00 00 00 e0 	mov    DWORD PTR [esp],0xe0000000
c0104820:	e8 8c 40 00 00       	call   c01088b1 <vput_str>
c0104825:	b8 01 00 00 00       	mov    eax,0x1
c010482a:	eb 2b                	jmp    c0104857 <deadlock+0xd4>
c010482c:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c010482f:	8b 80 6c 01 00 00    	mov    eax,DWORD PTR [eax+0x16c]
c0104835:	89 04 24             	mov    DWORD PTR [esp],eax
c0104838:	e8 bd eb ff ff       	call   c01033fa <pid2thread>
c010483d:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
c0104840:	83 7d f4 00          	cmp    DWORD PTR [ebp-0xc],0x0
c0104844:	0f 85 50 ff ff ff    	jne    c010479a <deadlock+0x17>
c010484a:	b8 00 00 00 00       	mov    eax,0x0
c010484f:	eb 06                	jmp    c0104857 <deadlock+0xd4>
c0104851:	90                   	nop
c0104852:	b8 00 00 00 00       	mov    eax,0x0
c0104857:	83 c4 54             	add    esp,0x54
c010485a:	5b                   	pop    ebx
c010485b:	5d                   	pop    ebp
c010485c:	c3                   	ret    

c010485d <msg_send>:
c010485d:	55                   	push   ebp
c010485e:	89 e5                	mov    ebp,esp
c0104860:	83 ec 38             	sub    esp,0x38
c0104863:	e8 5f e6 ff ff       	call   c0102ec7 <running_thread>
c0104868:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
c010486b:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c010486e:	89 04 24             	mov    DWORD PTR [esp],eax
c0104871:	e8 84 eb ff ff       	call   c01033fa <pid2thread>
c0104876:	89 45 f0             	mov    DWORD PTR [ebp-0x10],eax
c0104879:	83 7d f0 00          	cmp    DWORD PTR [ebp-0x10],0x0
c010487d:	75 2c                	jne    c01048ab <msg_send+0x4e>
c010487f:	c7 44 24 10 9e c5 10 	mov    DWORD PTR [esp+0x10],0xc010c59e
c0104886:	c0 
c0104887:	c7 44 24 0c 9b c6 10 	mov    DWORD PTR [esp+0xc],0xc010c69b
c010488e:	c0 
c010488f:	c7 44 24 08 44 00 00 	mov    DWORD PTR [esp+0x8],0x44
c0104896:	00 
c0104897:	c7 44 24 04 ac c5 10 	mov    DWORD PTR [esp+0x4],0xc010c5ac
c010489e:	c0 
c010489f:	c7 04 24 ac c5 10 c0 	mov    DWORD PTR [esp],0xc010c5ac
c01048a6:	e8 f9 bf ff ff       	call   c01008a4 <panic_spin>
c01048ab:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c01048ae:	3b 45 f0             	cmp    eax,DWORD PTR [ebp-0x10]
c01048b1:	75 2c                	jne    c01048df <msg_send+0x82>
c01048b3:	c7 44 24 10 be c5 10 	mov    DWORD PTR [esp+0x10],0xc010c5be
c01048ba:	c0 
c01048bb:	c7 44 24 0c 9b c6 10 	mov    DWORD PTR [esp+0xc],0xc010c69b
c01048c2:	c0 
c01048c3:	c7 44 24 08 45 00 00 	mov    DWORD PTR [esp+0x8],0x45
c01048ca:	00 
c01048cb:	c7 44 24 04 ac c5 10 	mov    DWORD PTR [esp+0x4],0xc010c5ac
c01048d2:	c0 
c01048d3:	c7 04 24 ac c5 10 c0 	mov    DWORD PTR [esp],0xc010c5ac
c01048da:	e8 c5 bf ff ff       	call   c01008a4 <panic_spin>
c01048df:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c01048e2:	8b 50 08             	mov    edx,DWORD PTR [eax+0x8]
c01048e5:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c01048e8:	89 10                	mov    DWORD PTR [eax],edx
c01048ea:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c01048ed:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
c01048f0:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c01048f3:	89 54 24 04          	mov    DWORD PTR [esp+0x4],edx
c01048f7:	89 04 24             	mov    DWORD PTR [esp],eax
c01048fa:	e8 84 fe ff ff       	call   c0104783 <deadlock>
c01048ff:	85 c0                	test   eax,eax
c0104901:	74 0a                	je     c010490d <msg_send+0xb0>
c0104903:	b8 01 00 00 00       	mov    eax,0x1
c0104908:	e9 bd 01 00 00       	jmp    c0104aca <msg_send+0x26d>
c010490d:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c0104910:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
c0104913:	83 f8 04             	cmp    eax,0x4
c0104916:	0f 85 fd 00 00 00    	jne    c0104a19 <msg_send+0x1bc>
c010491c:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c010491f:	8b 80 70 01 00 00    	mov    eax,DWORD PTR [eax+0x170]
c0104925:	85 c0                	test   eax,eax
c0104927:	74 17                	je     c0104940 <msg_send+0xe3>
c0104929:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c010492c:	8b 90 70 01 00 00    	mov    edx,DWORD PTR [eax+0x170]
c0104932:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0104935:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
c0104938:	39 c2                	cmp    edx,eax
c010493a:	0f 85 d9 00 00 00    	jne    c0104a19 <msg_send+0x1bc>
c0104940:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0104943:	8d 90 3c 01 00 00    	lea    edx,[eax+0x13c]
c0104949:	c7 44 24 08 30 00 00 	mov    DWORD PTR [esp+0x8],0x30
c0104950:	00 
c0104951:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c0104954:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c0104958:	89 14 24             	mov    DWORD PTR [esp],edx
c010495b:	e8 ec 36 00 00       	call   c010804c <memcpy>
c0104960:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0104963:	8b 80 94 01 00 00    	mov    eax,DWORD PTR [eax+0x194]
c0104969:	3b 45 f4             	cmp    eax,DWORD PTR [ebp-0xc]
c010496c:	74 2c                	je     c010499a <msg_send+0x13d>
c010496e:	c7 44 24 10 d0 c5 10 	mov    DWORD PTR [esp+0x10],0xc010c5d0
c0104975:	c0 
c0104976:	c7 44 24 0c 9b c6 10 	mov    DWORD PTR [esp+0xc],0xc010c69b
c010497d:	c0 
c010497e:	c7 44 24 08 53 00 00 	mov    DWORD PTR [esp+0x8],0x53
c0104985:	00 
c0104986:	c7 44 24 04 ac c5 10 	mov    DWORD PTR [esp+0x4],0xc010c5ac
c010498d:	c0 
c010498e:	c7 04 24 ac c5 10 c0 	mov    DWORD PTR [esp],0xc010c5ac
c0104995:	e8 0a bf ff ff       	call   c01008a4 <panic_spin>
c010499a:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c010499d:	8d 90 90 01 00 00    	lea    edx,[eax+0x190]
c01049a3:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c01049a6:	05 78 01 00 00       	add    eax,0x178
c01049ab:	89 54 24 04          	mov    DWORD PTR [esp+0x4],edx
c01049af:	89 04 24             	mov    DWORD PTR [esp],eax
c01049b2:	e8 22 30 00 00       	call   c01079d9 <list_find>
c01049b7:	85 c0                	test   eax,eax
c01049b9:	74 2c                	je     c01049e7 <msg_send+0x18a>
c01049bb:	c7 44 24 10 f0 c5 10 	mov    DWORD PTR [esp+0x10],0xc010c5f0
c01049c2:	c0 
c01049c3:	c7 44 24 0c 9b c6 10 	mov    DWORD PTR [esp+0xc],0xc010c69b
c01049ca:	c0 
c01049cb:	c7 44 24 08 54 00 00 	mov    DWORD PTR [esp+0x8],0x54
c01049d2:	00 
c01049d3:	c7 44 24 04 ac c5 10 	mov    DWORD PTR [esp+0x4],0xc010c5ac
c01049da:	c0 
c01049db:	c7 04 24 ac c5 10 c0 	mov    DWORD PTR [esp],0xc010c5ac
c01049e2:	e8 bd be ff ff       	call   c01008a4 <panic_spin>
c01049e7:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c01049ea:	8d 90 90 01 00 00    	lea    edx,[eax+0x190]
c01049f0:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c01049f3:	05 78 01 00 00       	add    eax,0x178
c01049f8:	89 54 24 04          	mov    DWORD PTR [esp+0x4],edx
c01049fc:	89 04 24             	mov    DWORD PTR [esp],eax
c01049ff:	e8 63 2f 00 00       	call   c0107967 <list_append>
c0104a04:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c0104a07:	89 04 24             	mov    DWORD PTR [esp],eax
c0104a0a:	e8 fe e8 ff ff       	call   c010330d <thread_unblock>
c0104a0f:	b8 00 00 00 00       	mov    eax,0x0
c0104a14:	e9 b1 00 00 00       	jmp    c0104aca <msg_send+0x26d>
c0104a19:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0104a1c:	8d 90 3c 01 00 00    	lea    edx,[eax+0x13c]
c0104a22:	c7 44 24 08 30 00 00 	mov    DWORD PTR [esp+0x8],0x30
c0104a29:	00 
c0104a2a:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c0104a2d:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c0104a31:	89 14 24             	mov    DWORD PTR [esp],edx
c0104a34:	e8 13 36 00 00       	call   c010804c <memcpy>
c0104a39:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0104a3c:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c0104a3f:	89 90 6c 01 00 00    	mov    DWORD PTR [eax+0x16c],edx
c0104a45:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0104a48:	8b 80 94 01 00 00    	mov    eax,DWORD PTR [eax+0x194]
c0104a4e:	3b 45 f4             	cmp    eax,DWORD PTR [ebp-0xc]
c0104a51:	74 2c                	je     c0104a7f <msg_send+0x222>
c0104a53:	c7 44 24 10 d0 c5 10 	mov    DWORD PTR [esp+0x10],0xc010c5d0
c0104a5a:	c0 
c0104a5b:	c7 44 24 0c 9b c6 10 	mov    DWORD PTR [esp+0xc],0xc010c69b
c0104a62:	c0 
c0104a63:	c7 44 24 08 61 00 00 	mov    DWORD PTR [esp+0x8],0x61
c0104a6a:	00 
c0104a6b:	c7 44 24 04 ac c5 10 	mov    DWORD PTR [esp+0x4],0xc010c5ac
c0104a72:	c0 
c0104a73:	c7 04 24 ac c5 10 c0 	mov    DWORD PTR [esp],0xc010c5ac
c0104a7a:	e8 25 be ff ff       	call   c01008a4 <panic_spin>
c0104a7f:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0104a82:	8d 90 90 01 00 00    	lea    edx,[eax+0x190]
c0104a88:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c0104a8b:	05 78 01 00 00       	add    eax,0x178
c0104a90:	89 54 24 04          	mov    DWORD PTR [esp+0x4],edx
c0104a94:	89 04 24             	mov    DWORD PTR [esp],eax
c0104a97:	e8 cb 2e 00 00       	call   c0107967 <list_append>
c0104a9c:	c7 04 24 03 00 00 00 	mov    DWORD PTR [esp],0x3
c0104aa3:	e8 c5 e7 ff ff       	call   c010326d <thread_block>
c0104aa8:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0104aab:	c7 80 6c 01 00 00 01 	mov    DWORD PTR [eax+0x16c],0x1
c0104ab2:	00 00 00 
c0104ab5:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0104ab8:	05 3c 01 00 00       	add    eax,0x13c
c0104abd:	89 04 24             	mov    DWORD PTR [esp],eax
c0104ac0:	e8 9b fc ff ff       	call   c0104760 <resetmsg>
c0104ac5:	b8 00 00 00 00       	mov    eax,0x0
c0104aca:	c9                   	leave  
c0104acb:	c3                   	ret    

c0104acc <pid_check>:
c0104acc:	55                   	push   ebp
c0104acd:	89 e5                	mov    ebp,esp
c0104acf:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0104ad2:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
c0104ad5:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
c0104ad8:	3b 45 0c             	cmp    eax,DWORD PTR [ebp+0xc]
c0104adb:	0f 94 c0             	sete   al
c0104ade:	0f b6 c0             	movzx  eax,al
c0104ae1:	5d                   	pop    ebp
c0104ae2:	c3                   	ret    

c0104ae3 <msg_recv>:
c0104ae3:	55                   	push   ebp
c0104ae4:	89 e5                	mov    ebp,esp
c0104ae6:	83 ec 38             	sub    esp,0x38
c0104ae9:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0104aec:	89 04 24             	mov    DWORD PTR [esp],eax
c0104aef:	e8 06 e9 ff ff       	call   c01033fa <pid2thread>
c0104af4:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
c0104af7:	e8 cb e3 ff ff       	call   c0102ec7 <running_thread>
c0104afc:	89 45 f0             	mov    DWORD PTR [ebp-0x10],eax
c0104aff:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0104b02:	3b 45 f0             	cmp    eax,DWORD PTR [ebp-0x10]
c0104b05:	75 2c                	jne    c0104b33 <msg_recv+0x50>
c0104b07:	c7 44 24 10 26 c6 10 	mov    DWORD PTR [esp+0x10],0xc010c626
c0104b0e:	c0 
c0104b0f:	c7 44 24 0c 92 c6 10 	mov    DWORD PTR [esp+0xc],0xc010c692
c0104b16:	c0 
c0104b17:	c7 44 24 08 83 00 00 	mov    DWORD PTR [esp+0x8],0x83
c0104b1e:	00 
c0104b1f:	c7 44 24 04 ac c5 10 	mov    DWORD PTR [esp+0x4],0xc010c5ac
c0104b26:	c0 
c0104b27:	c7 04 24 ac c5 10 c0 	mov    DWORD PTR [esp],0xc010c5ac
c0104b2e:	e8 71 bd ff ff       	call   c01008a4 <panic_spin>
c0104b33:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c0104b36:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c0104b39:	89 90 70 01 00 00    	mov    DWORD PTR [eax+0x170],edx
c0104b3f:	83 7d 08 00          	cmp    DWORD PTR [ebp+0x8],0x0
c0104b43:	75 38                	jne    c0104b7d <msg_recv+0x9a>
c0104b45:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c0104b48:	05 78 01 00 00       	add    eax,0x178
c0104b4d:	89 04 24             	mov    DWORD PTR [esp],eax
c0104b50:	e8 3b 2f 00 00       	call   c0107a90 <list_empty>
c0104b55:	85 c0                	test   eax,eax
c0104b57:	74 0c                	je     c0104b65 <msg_recv+0x82>
c0104b59:	c7 04 24 04 00 00 00 	mov    DWORD PTR [esp],0x4
c0104b60:	e8 08 e7 ff ff       	call   c010326d <thread_block>
c0104b65:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c0104b68:	05 78 01 00 00       	add    eax,0x178
c0104b6d:	89 04 24             	mov    DWORD PTR [esp],eax
c0104b70:	e8 45 2e 00 00       	call   c01079ba <list_pop>
c0104b75:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
c0104b78:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
c0104b7b:	eb 4f                	jmp    c0104bcc <msg_recv+0xe9>
c0104b7d:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0104b80:	8b 55 f0             	mov    edx,DWORD PTR [ebp-0x10]
c0104b83:	81 c2 78 01 00 00    	add    edx,0x178
c0104b89:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
c0104b8d:	c7 44 24 04 cc 4a 10 	mov    DWORD PTR [esp+0x4],0xc0104acc
c0104b94:	c0 
c0104b95:	89 14 24             	mov    DWORD PTR [esp],edx
c0104b98:	e8 77 2e 00 00       	call   c0107a14 <list_traversal>
c0104b9d:	89 45 ec             	mov    DWORD PTR [ebp-0x14],eax
c0104ba0:	83 7d ec 00          	cmp    DWORD PTR [ebp-0x14],0x0
c0104ba4:	75 0c                	jne    c0104bb2 <msg_recv+0xcf>
c0104ba6:	c7 04 24 04 00 00 00 	mov    DWORD PTR [esp],0x4
c0104bad:	e8 bb e6 ff ff       	call   c010326d <thread_block>
c0104bb2:	83 7d ec 00          	cmp    DWORD PTR [ebp-0x14],0x0
c0104bb6:	74 c5                	je     c0104b7d <msg_recv+0x9a>
c0104bb8:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
c0104bbb:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
c0104bbe:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
c0104bc1:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
c0104bc4:	89 04 24             	mov    DWORD PTR [esp],eax
c0104bc7:	e8 b8 2d 00 00       	call   c0107984 <list_remove>
c0104bcc:	83 7d f4 00          	cmp    DWORD PTR [ebp-0xc],0x0
c0104bd0:	75 2c                	jne    c0104bfe <msg_recv+0x11b>
c0104bd2:	c7 44 24 10 37 c6 10 	mov    DWORD PTR [esp+0x10],0xc010c637
c0104bd9:	c0 
c0104bda:	c7 44 24 0c 92 c6 10 	mov    DWORD PTR [esp+0xc],0xc010c692
c0104be1:	c0 
c0104be2:	c7 44 24 08 9e 00 00 	mov    DWORD PTR [esp+0x8],0x9e
c0104be9:	00 
c0104bea:	c7 44 24 04 ac c5 10 	mov    DWORD PTR [esp+0x4],0xc010c5ac
c0104bf1:	c0 
c0104bf2:	c7 04 24 ac c5 10 c0 	mov    DWORD PTR [esp],0xc010c5ac
c0104bf9:	e8 a6 bc ff ff       	call   c01008a4 <panic_spin>
c0104bfe:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0104c01:	05 3c 01 00 00       	add    eax,0x13c
c0104c06:	c7 44 24 08 30 00 00 	mov    DWORD PTR [esp+0x8],0x30
c0104c0d:	00 
c0104c0e:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c0104c12:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c0104c15:	89 04 24             	mov    DWORD PTR [esp],eax
c0104c18:	e8 2f 34 00 00       	call   c010804c <memcpy>
c0104c1d:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0104c20:	c7 80 6c 01 00 00 01 	mov    DWORD PTR [eax+0x16c],0x1
c0104c27:	00 00 00 
c0104c2a:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0104c2d:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
c0104c30:	83 f8 03             	cmp    eax,0x3
c0104c33:	75 0b                	jne    c0104c40 <msg_recv+0x15d>
c0104c35:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0104c38:	89 04 24             	mov    DWORD PTR [esp],eax
c0104c3b:	e8 cd e6 ff ff       	call   c010330d <thread_unblock>
c0104c40:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c0104c43:	c7 80 70 01 00 00 01 	mov    DWORD PTR [eax+0x170],0x1
c0104c4a:	00 00 00 
c0104c4d:	b8 00 00 00 00       	mov    eax,0x0
c0104c52:	c9                   	leave  
c0104c53:	c3                   	ret    

c0104c54 <sys_sendrec>:
c0104c54:	55                   	push   ebp
c0104c55:	89 e5                	mov    ebp,esp
c0104c57:	83 ec 38             	sub    esp,0x38
c0104c5a:	c7 45 f4 01 00 00 00 	mov    DWORD PTR [ebp-0xc],0x1
c0104c61:	83 7d 0c 05          	cmp    DWORD PTR [ebp+0xc],0x5
c0104c65:	77 13                	ja     c0104c7a <sys_sendrec+0x26>
c0104c67:	83 7d 0c 01          	cmp    DWORD PTR [ebp+0xc],0x1
c0104c6b:	76 0d                	jbe    c0104c7a <sys_sendrec+0x26>
c0104c6d:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c0104c70:	8b 04 85 04 33 11 c0 	mov    eax,DWORD PTR [eax*4-0x3feeccfc]
c0104c77:	89 45 0c             	mov    DWORD PTR [ebp+0xc],eax
c0104c7a:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0104c7d:	83 f8 02             	cmp    eax,0x2
c0104c80:	74 24                	je     c0104ca6 <sys_sendrec+0x52>
c0104c82:	83 f8 03             	cmp    eax,0x3
c0104c85:	74 36                	je     c0104cbd <sys_sendrec+0x69>
c0104c87:	83 f8 01             	cmp    eax,0x1
c0104c8a:	75 63                	jne    c0104cef <sys_sendrec+0x9b>
c0104c8c:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
c0104c8f:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c0104c93:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c0104c96:	89 04 24             	mov    DWORD PTR [esp],eax
c0104c99:	e8 bf fb ff ff       	call   c010485d <msg_send>
c0104c9e:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
c0104ca1:	e9 8d 00 00 00       	jmp    c0104d33 <sys_sendrec+0xdf>
c0104ca6:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
c0104ca9:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c0104cad:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c0104cb0:	89 04 24             	mov    DWORD PTR [esp],eax
c0104cb3:	e8 2b fe ff ff       	call   c0104ae3 <msg_recv>
c0104cb8:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
c0104cbb:	eb 76                	jmp    c0104d33 <sys_sendrec+0xdf>
c0104cbd:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
c0104cc0:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c0104cc4:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c0104cc7:	89 04 24             	mov    DWORD PTR [esp],eax
c0104cca:	e8 8e fb ff ff       	call   c010485d <msg_send>
c0104ccf:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
c0104cd2:	83 7d f4 00          	cmp    DWORD PTR [ebp-0xc],0x0
c0104cd6:	75 57                	jne    c0104d2f <sys_sendrec+0xdb>
c0104cd8:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
c0104cdb:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c0104cdf:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c0104ce2:	89 04 24             	mov    DWORD PTR [esp],eax
c0104ce5:	e8 f9 fd ff ff       	call   c0104ae3 <msg_recv>
c0104cea:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
c0104ced:	eb 40                	jmp    c0104d2f <sys_sendrec+0xdb>
c0104cef:	83 7d 08 01          	cmp    DWORD PTR [ebp+0x8],0x1
c0104cf3:	74 3d                	je     c0104d32 <sys_sendrec+0xde>
c0104cf5:	83 7d 08 02          	cmp    DWORD PTR [ebp+0x8],0x2
c0104cf9:	74 37                	je     c0104d32 <sys_sendrec+0xde>
c0104cfb:	83 7d 08 03          	cmp    DWORD PTR [ebp+0x8],0x3
c0104cff:	74 31                	je     c0104d32 <sys_sendrec+0xde>
c0104d01:	c7 44 24 10 44 c6 10 	mov    DWORD PTR [esp+0x10],0xc010c644
c0104d08:	c0 
c0104d09:	c7 44 24 0c 86 c6 10 	mov    DWORD PTR [esp+0xc],0xc010c686
c0104d10:	c0 
c0104d11:	c7 44 24 08 c5 00 00 	mov    DWORD PTR [esp+0x8],0xc5
c0104d18:	00 
c0104d19:	c7 44 24 04 ac c5 10 	mov    DWORD PTR [esp+0x4],0xc010c5ac
c0104d20:	c0 
c0104d21:	c7 04 24 ac c5 10 c0 	mov    DWORD PTR [esp],0xc010c5ac
c0104d28:	e8 77 bb ff ff       	call   c01008a4 <panic_spin>
c0104d2d:	eb 03                	jmp    c0104d32 <sys_sendrec+0xde>
c0104d2f:	90                   	nop
c0104d30:	eb 01                	jmp    c0104d33 <sys_sendrec+0xdf>
c0104d32:	90                   	nop
c0104d33:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0104d36:	c9                   	leave  
c0104d37:	c3                   	ret    

c0104d38 <MM_task>:
c0104d38:	55                   	push   ebp
c0104d39:	89 e5                	mov    ebp,esp
c0104d3b:	81 ec a8 00 00 00    	sub    esp,0xa8
c0104d41:	e8 81 e1 ff ff       	call   c0102ec7 <running_thread>
c0104d46:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
c0104d49:	c7 45 f0 00 00 00 00 	mov    DWORD PTR [ebp-0x10],0x0
c0104d50:	8d 45 b4             	lea    eax,[ebp-0x4c]
c0104d53:	89 04 24             	mov    DWORD PTR [esp],eax
c0104d56:	e8 05 fa ff ff       	call   c0104760 <resetmsg>
c0104d5b:	c7 45 ec 01 00 00 00 	mov    DWORD PTR [ebp-0x14],0x1
c0104d62:	8d 45 b4             	lea    eax,[ebp-0x4c]
c0104d65:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
c0104d69:	c7 44 24 04 00 00 00 	mov    DWORD PTR [esp+0x4],0x0
c0104d70:	00 
c0104d71:	c7 04 24 02 00 00 00 	mov    DWORD PTR [esp],0x2
c0104d78:	e8 b7 f9 ff ff       	call   c0104734 <send_recv>
c0104d7d:	8b 45 b4             	mov    eax,DWORD PTR [ebp-0x4c]
c0104d80:	89 45 ec             	mov    DWORD PTR [ebp-0x14],eax
c0104d83:	c7 45 e8 00 00 00 00 	mov    DWORD PTR [ebp-0x18],0x0
c0104d8a:	8b 45 b8             	mov    eax,DWORD PTR [ebp-0x48]
c0104d8d:	83 f8 02             	cmp    eax,0x2
c0104d90:	0f 84 a8 00 00 00    	je     c0104e3e <MM_task+0x106>
c0104d96:	83 f8 03             	cmp    eax,0x3
c0104d99:	0f 84 2c 01 00 00    	je     c0104ecb <MM_task+0x193>
c0104d9f:	83 f8 01             	cmp    eax,0x1
c0104da2:	0f 85 3b 02 00 00    	jne    c0104fe3 <MM_task+0x2ab>
c0104da8:	8b 45 bc             	mov    eax,DWORD PTR [ebp-0x44]
c0104dab:	89 45 a4             	mov    DWORD PTR [ebp-0x5c],eax
c0104dae:	8b 45 c0             	mov    eax,DWORD PTR [ebp-0x40]
c0104db1:	89 45 a8             	mov    DWORD PTR [ebp-0x58],eax
c0104db4:	8b 45 c4             	mov    eax,DWORD PTR [ebp-0x3c]
c0104db7:	89 45 ac             	mov    DWORD PTR [ebp-0x54],eax
c0104dba:	8b 45 c8             	mov    eax,DWORD PTR [ebp-0x38]
c0104dbd:	89 45 b0             	mov    DWORD PTR [ebp-0x50],eax
c0104dc0:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0104dc3:	8b 40 3c             	mov    eax,DWORD PTR [eax+0x3c]
c0104dc6:	89 45 f0             	mov    DWORD PTR [ebp-0x10],eax
c0104dc9:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
c0104dcc:	89 04 24             	mov    DWORD PTR [esp],eax
c0104dcf:	e8 26 e6 ff ff       	call   c01033fa <pid2thread>
c0104dd4:	8b 50 3c             	mov    edx,DWORD PTR [eax+0x3c]
c0104dd7:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0104dda:	89 50 3c             	mov    DWORD PTR [eax+0x3c],edx
c0104ddd:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0104de0:	89 04 24             	mov    DWORD PTR [esp],eax
c0104de3:	e8 d2 e8 ff ff       	call   c01036ba <page_dir_activate>
c0104de8:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
c0104deb:	89 04 24             	mov    DWORD PTR [esp],eax
c0104dee:	e8 07 e6 ff ff       	call   c01033fa <pid2thread>
c0104df3:	8b 55 a4             	mov    edx,DWORD PTR [ebp-0x5c]
c0104df6:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c0104dfa:	89 14 24             	mov    DWORD PTR [esp],edx
c0104dfd:	e8 0d 02 00 00       	call   c010500f <mm_malloc>
c0104e02:	89 45 e8             	mov    DWORD PTR [ebp-0x18],eax
c0104e05:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0104e08:	8b 55 f0             	mov    edx,DWORD PTR [ebp-0x10]
c0104e0b:	89 50 3c             	mov    DWORD PTR [eax+0x3c],edx
c0104e0e:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0104e11:	89 04 24             	mov    DWORD PTR [esp],eax
c0104e14:	e8 a1 e8 ff ff       	call   c01036ba <page_dir_activate>
c0104e19:	8b 45 e8             	mov    eax,DWORD PTR [ebp-0x18]
c0104e1c:	89 45 bc             	mov    DWORD PTR [ebp-0x44],eax
c0104e1f:	8d 45 b4             	lea    eax,[ebp-0x4c]
c0104e22:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
c0104e26:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
c0104e29:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c0104e2d:	c7 04 24 01 00 00 00 	mov    DWORD PTR [esp],0x1
c0104e34:	e8 fb f8 ff ff       	call   c0104734 <send_recv>
c0104e39:	e9 a5 01 00 00       	jmp    c0104fe3 <MM_task+0x2ab>
c0104e3e:	8b 45 bc             	mov    eax,DWORD PTR [ebp-0x44]
c0104e41:	89 45 94             	mov    DWORD PTR [ebp-0x6c],eax
c0104e44:	8b 45 c0             	mov    eax,DWORD PTR [ebp-0x40]
c0104e47:	89 45 98             	mov    DWORD PTR [ebp-0x68],eax
c0104e4a:	8b 45 c4             	mov    eax,DWORD PTR [ebp-0x3c]
c0104e4d:	89 45 9c             	mov    DWORD PTR [ebp-0x64],eax
c0104e50:	8b 45 c8             	mov    eax,DWORD PTR [ebp-0x38]
c0104e53:	89 45 a0             	mov    DWORD PTR [ebp-0x60],eax
c0104e56:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0104e59:	8b 40 3c             	mov    eax,DWORD PTR [eax+0x3c]
c0104e5c:	89 45 f0             	mov    DWORD PTR [ebp-0x10],eax
c0104e5f:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
c0104e62:	89 04 24             	mov    DWORD PTR [esp],eax
c0104e65:	e8 90 e5 ff ff       	call   c01033fa <pid2thread>
c0104e6a:	8b 50 3c             	mov    edx,DWORD PTR [eax+0x3c]
c0104e6d:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0104e70:	89 50 3c             	mov    DWORD PTR [eax+0x3c],edx
c0104e73:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0104e76:	89 04 24             	mov    DWORD PTR [esp],eax
c0104e79:	e8 3c e8 ff ff       	call   c01036ba <page_dir_activate>
c0104e7e:	8b 45 b4             	mov    eax,DWORD PTR [ebp-0x4c]
c0104e81:	89 04 24             	mov    DWORD PTR [esp],eax
c0104e84:	e8 71 e5 ff ff       	call   c01033fa <pid2thread>
c0104e89:	8b 55 94             	mov    edx,DWORD PTR [ebp-0x6c]
c0104e8c:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c0104e90:	89 14 24             	mov    DWORD PTR [esp],edx
c0104e93:	e8 74 04 00 00       	call   c010530c <mm_free>
c0104e98:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0104e9b:	8b 55 f0             	mov    edx,DWORD PTR [ebp-0x10]
c0104e9e:	89 50 3c             	mov    DWORD PTR [eax+0x3c],edx
c0104ea1:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0104ea4:	89 04 24             	mov    DWORD PTR [esp],eax
c0104ea7:	e8 0e e8 ff ff       	call   c01036ba <page_dir_activate>
c0104eac:	8d 45 b4             	lea    eax,[ebp-0x4c]
c0104eaf:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
c0104eb3:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
c0104eb6:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c0104eba:	c7 04 24 01 00 00 00 	mov    DWORD PTR [esp],0x1
c0104ec1:	e8 6e f8 ff ff       	call   c0104734 <send_recv>
c0104ec6:	e9 18 01 00 00       	jmp    c0104fe3 <MM_task+0x2ab>
c0104ecb:	8b 45 bc             	mov    eax,DWORD PTR [ebp-0x44]
c0104ece:	89 85 6c ff ff ff    	mov    DWORD PTR [ebp-0x94],eax
c0104ed4:	8b 45 c0             	mov    eax,DWORD PTR [ebp-0x40]
c0104ed7:	89 85 70 ff ff ff    	mov    DWORD PTR [ebp-0x90],eax
c0104edd:	8b 45 c4             	mov    eax,DWORD PTR [ebp-0x3c]
c0104ee0:	89 85 74 ff ff ff    	mov    DWORD PTR [ebp-0x8c],eax
c0104ee6:	8b 45 c8             	mov    eax,DWORD PTR [ebp-0x38]
c0104ee9:	89 85 78 ff ff ff    	mov    DWORD PTR [ebp-0x88],eax
c0104eef:	8b 45 cc             	mov    eax,DWORD PTR [ebp-0x34]
c0104ef2:	89 85 7c ff ff ff    	mov    DWORD PTR [ebp-0x84],eax
c0104ef8:	8b 45 d0             	mov    eax,DWORD PTR [ebp-0x30]
c0104efb:	89 45 80             	mov    DWORD PTR [ebp-0x80],eax
c0104efe:	8b 45 d4             	mov    eax,DWORD PTR [ebp-0x2c]
c0104f01:	89 45 84             	mov    DWORD PTR [ebp-0x7c],eax
c0104f04:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
c0104f07:	89 45 88             	mov    DWORD PTR [ebp-0x78],eax
c0104f0a:	8b 45 dc             	mov    eax,DWORD PTR [ebp-0x24]
c0104f0d:	89 45 8c             	mov    DWORD PTR [ebp-0x74],eax
c0104f10:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
c0104f13:	89 45 90             	mov    DWORD PTR [ebp-0x70],eax
c0104f16:	8b 85 6c ff ff ff    	mov    eax,DWORD PTR [ebp-0x94]
c0104f1c:	89 04 24             	mov    DWORD PTR [esp],eax
c0104f1f:	e8 94 c8 ff ff       	call   c01017b8 <kmalloc>
c0104f24:	89 45 e4             	mov    DWORD PTR [ebp-0x1c],eax
c0104f27:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0104f2a:	8b 40 3c             	mov    eax,DWORD PTR [eax+0x3c]
c0104f2d:	89 45 f0             	mov    DWORD PTR [ebp-0x10],eax
c0104f30:	8b 85 70 ff ff ff    	mov    eax,DWORD PTR [ebp-0x90]
c0104f36:	89 04 24             	mov    DWORD PTR [esp],eax
c0104f39:	e8 bc e4 ff ff       	call   c01033fa <pid2thread>
c0104f3e:	8b 50 3c             	mov    edx,DWORD PTR [eax+0x3c]
c0104f41:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0104f44:	89 50 3c             	mov    DWORD PTR [eax+0x3c],edx
c0104f47:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0104f4a:	89 04 24             	mov    DWORD PTR [esp],eax
c0104f4d:	e8 68 e7 ff ff       	call   c01036ba <page_dir_activate>
c0104f52:	8b 95 6c ff ff ff    	mov    edx,DWORD PTR [ebp-0x94]
c0104f58:	8b 45 90             	mov    eax,DWORD PTR [ebp-0x70]
c0104f5b:	89 54 24 08          	mov    DWORD PTR [esp+0x8],edx
c0104f5f:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c0104f63:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
c0104f66:	89 04 24             	mov    DWORD PTR [esp],eax
c0104f69:	e8 de 30 00 00       	call   c010804c <memcpy>
c0104f6e:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
c0104f71:	89 04 24             	mov    DWORD PTR [esp],eax
c0104f74:	e8 81 e4 ff ff       	call   c01033fa <pid2thread>
c0104f79:	8b 50 3c             	mov    edx,DWORD PTR [eax+0x3c]
c0104f7c:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0104f7f:	89 50 3c             	mov    DWORD PTR [eax+0x3c],edx
c0104f82:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0104f85:	89 04 24             	mov    DWORD PTR [esp],eax
c0104f88:	e8 2d e7 ff ff       	call   c01036ba <page_dir_activate>
c0104f8d:	8b 95 6c ff ff ff    	mov    edx,DWORD PTR [ebp-0x94]
c0104f93:	8b 45 8c             	mov    eax,DWORD PTR [ebp-0x74]
c0104f96:	89 54 24 08          	mov    DWORD PTR [esp+0x8],edx
c0104f9a:	8b 55 e4             	mov    edx,DWORD PTR [ebp-0x1c]
c0104f9d:	89 54 24 04          	mov    DWORD PTR [esp+0x4],edx
c0104fa1:	89 04 24             	mov    DWORD PTR [esp],eax
c0104fa4:	e8 a3 30 00 00       	call   c010804c <memcpy>
c0104fa9:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0104fac:	8b 55 f0             	mov    edx,DWORD PTR [ebp-0x10]
c0104faf:	89 50 3c             	mov    DWORD PTR [eax+0x3c],edx
c0104fb2:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0104fb5:	89 04 24             	mov    DWORD PTR [esp],eax
c0104fb8:	e8 fd e6 ff ff       	call   c01036ba <page_dir_activate>
c0104fbd:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
c0104fc0:	89 04 24             	mov    DWORD PTR [esp],eax
c0104fc3:	e8 2c cb ff ff       	call   c0101af4 <kfree>
c0104fc8:	8d 45 b4             	lea    eax,[ebp-0x4c]
c0104fcb:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
c0104fcf:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
c0104fd2:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c0104fd6:	c7 04 24 01 00 00 00 	mov    DWORD PTR [esp],0x1
c0104fdd:	e8 52 f7 ff ff       	call   c0104734 <send_recv>
c0104fe2:	90                   	nop
c0104fe3:	e9 68 fd ff ff       	jmp    c0104d50 <MM_task+0x18>

c0104fe8 <arena2block>:
c0104fe8:	55                   	push   ebp
c0104fe9:	89 e5                	mov    ebp,esp
c0104feb:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0104fee:	8b 00                	mov    eax,DWORD PTR [eax]
c0104ff0:	8b 10                	mov    edx,DWORD PTR [eax]
c0104ff2:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c0104ff5:	0f af d0             	imul   edx,eax
c0104ff8:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0104ffb:	01 d0                	add    eax,edx
c0104ffd:	83 c0 0c             	add    eax,0xc
c0105000:	5d                   	pop    ebp
c0105001:	c3                   	ret    

c0105002 <block2arena>:
c0105002:	55                   	push   ebp
c0105003:	89 e5                	mov    ebp,esp
c0105005:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0105008:	25 00 f0 ff ff       	and    eax,0xfffff000
c010500d:	5d                   	pop    ebp
c010500e:	c3                   	ret    

c010500f <mm_malloc>:
c010500f:	55                   	push   ebp
c0105010:	89 e5                	mov    ebp,esp
c0105012:	83 ec 58             	sub    esp,0x58
c0105015:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c0105018:	8b 40 3c             	mov    eax,DWORD PTR [eax+0x3c]
c010501b:	85 c0                	test   eax,eax
c010501d:	75 1b                	jne    c010503a <mm_malloc+0x2b>
c010501f:	c7 45 f4 01 00 00 00 	mov    DWORD PTR [ebp-0xc],0x1
c0105026:	a1 74 32 11 c0       	mov    eax,ds:0xc0113274
c010502b:	c1 e0 0c             	shl    eax,0xc
c010502e:	89 45 f0             	mov    DWORD PTR [ebp-0x10],eax
c0105031:	c7 45 ec 80 f2 10 c0 	mov    DWORD PTR [ebp-0x14],0xc010f280
c0105038:	eb 1b                	jmp    c0105055 <mm_malloc+0x46>
c010503a:	c7 45 f4 02 00 00 00 	mov    DWORD PTR [ebp-0xc],0x2
c0105041:	a1 74 f3 10 c0       	mov    eax,ds:0xc010f374
c0105046:	c1 e0 0c             	shl    eax,0xc
c0105049:	89 45 f0             	mov    DWORD PTR [ebp-0x10],eax
c010504c:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c010504f:	83 c0 7c             	add    eax,0x7c
c0105052:	89 45 ec             	mov    DWORD PTR [ebp-0x14],eax
c0105055:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0105058:	3b 45 f0             	cmp    eax,DWORD PTR [ebp-0x10]
c010505b:	7e 0a                	jle    c0105067 <mm_malloc+0x58>
c010505d:	b8 00 00 00 00       	mov    eax,0x0
c0105062:	e9 a3 02 00 00       	jmp    c010530a <mm_malloc+0x2fb>
c0105067:	81 7d 08 ff 03 00 00 	cmp    DWORD PTR [ebp+0x8],0x3ff
c010506e:	0f 8f d0 01 00 00    	jg     c0105244 <mm_malloc+0x235>
c0105074:	c7 45 e8 00 00 00 00 	mov    DWORD PTR [ebp-0x18],0x0
c010507b:	eb 17                	jmp    c0105094 <mm_malloc+0x85>
c010507d:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c0105080:	8b 45 e8             	mov    eax,DWORD PTR [ebp-0x18]
c0105083:	c1 e0 05             	shl    eax,0x5
c0105086:	03 45 ec             	add    eax,DWORD PTR [ebp-0x14]
c0105089:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
c010508c:	39 c2                	cmp    edx,eax
c010508e:	76 0c                	jbe    c010509c <mm_malloc+0x8d>
c0105090:	83 45 e8 01          	add    DWORD PTR [ebp-0x18],0x1
c0105094:	83 7d e8 05          	cmp    DWORD PTR [ebp-0x18],0x5
c0105098:	7e e3                	jle    c010507d <mm_malloc+0x6e>
c010509a:	eb 01                	jmp    c010509d <mm_malloc+0x8e>
c010509c:	90                   	nop
c010509d:	8b 45 e8             	mov    eax,DWORD PTR [ebp-0x18]
c01050a0:	c1 e0 05             	shl    eax,0x5
c01050a3:	03 45 ec             	add    eax,DWORD PTR [ebp-0x14]
c01050a6:	83 c0 08             	add    eax,0x8
c01050a9:	89 04 24             	mov    DWORD PTR [esp],eax
c01050ac:	e8 df 29 00 00       	call   c0107a90 <list_empty>
c01050b1:	85 c0                	test   eax,eax
c01050b3:	0f 84 2a 01 00 00    	je     c01051e3 <mm_malloc+0x1d4>
c01050b9:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c01050bc:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
c01050c0:	c7 44 24 04 01 00 00 	mov    DWORD PTR [esp+0x4],0x1
c01050c7:	00 
c01050c8:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c01050cb:	89 04 24             	mov    DWORD PTR [esp],eax
c01050ce:	e8 8e 03 00 00       	call   c0105461 <mm_page_alloc>
c01050d3:	89 45 e0             	mov    DWORD PTR [ebp-0x20],eax
c01050d6:	83 7d e0 00          	cmp    DWORD PTR [ebp-0x20],0x0
c01050da:	75 0a                	jne    c01050e6 <mm_malloc+0xd7>
c01050dc:	b8 00 00 00 00       	mov    eax,0x0
c01050e1:	e9 24 02 00 00       	jmp    c010530a <mm_malloc+0x2fb>
c01050e6:	c7 44 24 08 00 10 00 	mov    DWORD PTR [esp+0x8],0x1000
c01050ed:	00 
c01050ee:	c7 44 24 04 00 00 00 	mov    DWORD PTR [esp+0x4],0x0
c01050f5:	00 
c01050f6:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
c01050f9:	89 04 24             	mov    DWORD PTR [esp],eax
c01050fc:	e8 e3 2e 00 00       	call   c0107fe4 <memset>
c0105101:	8b 45 e8             	mov    eax,DWORD PTR [ebp-0x18]
c0105104:	c1 e0 05             	shl    eax,0x5
c0105107:	89 c2                	mov    edx,eax
c0105109:	03 55 ec             	add    edx,DWORD PTR [ebp-0x14]
c010510c:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
c010510f:	89 10                	mov    DWORD PTR [eax],edx
c0105111:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
c0105114:	c7 40 08 00 00 00 00 	mov    DWORD PTR [eax+0x8],0x0
c010511b:	8b 45 e8             	mov    eax,DWORD PTR [ebp-0x18]
c010511e:	c1 e0 05             	shl    eax,0x5
c0105121:	03 45 ec             	add    eax,DWORD PTR [ebp-0x14]
c0105124:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
c0105127:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
c010512a:	89 50 04             	mov    DWORD PTR [eax+0x4],edx
c010512d:	e8 94 c5 ff ff       	call   c01016c6 <intr_disable>
c0105132:	89 45 dc             	mov    DWORD PTR [ebp-0x24],eax
c0105135:	c7 45 e4 00 00 00 00 	mov    DWORD PTR [ebp-0x1c],0x0
c010513c:	e9 80 00 00 00       	jmp    c01051c1 <mm_malloc+0x1b2>
c0105141:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
c0105144:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c0105148:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
c010514b:	89 04 24             	mov    DWORD PTR [esp],eax
c010514e:	e8 95 fe ff ff       	call   c0104fe8 <arena2block>
c0105153:	89 45 d8             	mov    DWORD PTR [ebp-0x28],eax
c0105156:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
c0105159:	8b 55 d8             	mov    edx,DWORD PTR [ebp-0x28]
c010515c:	89 50 04             	mov    DWORD PTR [eax+0x4],edx
c010515f:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
c0105162:	8b 55 e0             	mov    edx,DWORD PTR [ebp-0x20]
c0105165:	8b 12                	mov    edx,DWORD PTR [edx]
c0105167:	83 c2 08             	add    edx,0x8
c010516a:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c010516e:	89 14 24             	mov    DWORD PTR [esp],edx
c0105171:	e8 63 28 00 00       	call   c01079d9 <list_find>
c0105176:	85 c0                	test   eax,eax
c0105178:	74 2c                	je     c01051a6 <mm_malloc+0x197>
c010517a:	c7 44 24 10 c4 c6 10 	mov    DWORD PTR [esp+0x10],0xc010c6c4
c0105181:	c0 
c0105182:	c7 44 24 0c b5 c7 10 	mov    DWORD PTR [esp+0xc],0xc010c7b5
c0105189:	c0 
c010518a:	c7 44 24 08 9b 00 00 	mov    DWORD PTR [esp+0x8],0x9b
c0105191:	00 
c0105192:	c7 44 24 04 f3 c6 10 	mov    DWORD PTR [esp+0x4],0xc010c6f3
c0105199:	c0 
c010519a:	c7 04 24 f3 c6 10 c0 	mov    DWORD PTR [esp],0xc010c6f3
c01051a1:	e8 fe b6 ff ff       	call   c01008a4 <panic_spin>
c01051a6:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
c01051a9:	8b 55 e0             	mov    edx,DWORD PTR [ebp-0x20]
c01051ac:	8b 12                	mov    edx,DWORD PTR [edx]
c01051ae:	83 c2 08             	add    edx,0x8
c01051b1:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c01051b5:	89 14 24             	mov    DWORD PTR [esp],edx
c01051b8:	e8 aa 27 00 00       	call   c0107967 <list_append>
c01051bd:	83 45 e4 01          	add    DWORD PTR [ebp-0x1c],0x1
c01051c1:	8b 55 e4             	mov    edx,DWORD PTR [ebp-0x1c]
c01051c4:	8b 45 e8             	mov    eax,DWORD PTR [ebp-0x18]
c01051c7:	c1 e0 05             	shl    eax,0x5
c01051ca:	03 45 ec             	add    eax,DWORD PTR [ebp-0x14]
c01051cd:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
c01051d0:	39 c2                	cmp    edx,eax
c01051d2:	0f 82 69 ff ff ff    	jb     c0105141 <mm_malloc+0x132>
c01051d8:	8b 45 dc             	mov    eax,DWORD PTR [ebp-0x24]
c01051db:	89 04 24             	mov    DWORD PTR [esp],eax
c01051de:	e8 10 c5 ff ff       	call   c01016f3 <intr_set_status>
c01051e3:	8b 45 e8             	mov    eax,DWORD PTR [ebp-0x18]
c01051e6:	c1 e0 05             	shl    eax,0x5
c01051e9:	03 45 ec             	add    eax,DWORD PTR [ebp-0x14]
c01051ec:	83 c0 08             	add    eax,0x8
c01051ef:	89 04 24             	mov    DWORD PTR [esp],eax
c01051f2:	e8 c3 27 00 00       	call   c01079ba <list_pop>
c01051f7:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
c01051fa:	89 45 d8             	mov    DWORD PTR [ebp-0x28],eax
c01051fd:	8b 45 e8             	mov    eax,DWORD PTR [ebp-0x18]
c0105200:	c1 e0 05             	shl    eax,0x5
c0105203:	03 45 ec             	add    eax,DWORD PTR [ebp-0x14]
c0105206:	8b 00                	mov    eax,DWORD PTR [eax]
c0105208:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
c010520c:	c7 44 24 04 00 00 00 	mov    DWORD PTR [esp+0x4],0x0
c0105213:	00 
c0105214:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
c0105217:	89 04 24             	mov    DWORD PTR [esp],eax
c010521a:	e8 c5 2d 00 00       	call   c0107fe4 <memset>
c010521f:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
c0105222:	89 04 24             	mov    DWORD PTR [esp],eax
c0105225:	e8 d8 fd ff ff       	call   c0105002 <block2arena>
c010522a:	89 45 e0             	mov    DWORD PTR [ebp-0x20],eax
c010522d:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
c0105230:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
c0105233:	8d 50 ff             	lea    edx,[eax-0x1]
c0105236:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
c0105239:	89 50 04             	mov    DWORD PTR [eax+0x4],edx
c010523c:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
c010523f:	e9 c6 00 00 00       	jmp    c010530a <mm_malloc+0x2fb>
c0105244:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0105247:	05 0b 10 00 00       	add    eax,0x100b
c010524c:	c1 e8 0c             	shr    eax,0xc
c010524f:	89 45 d4             	mov    DWORD PTR [ebp-0x2c],eax
c0105252:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c0105255:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
c0105259:	8b 45 d4             	mov    eax,DWORD PTR [ebp-0x2c]
c010525c:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c0105260:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0105263:	89 04 24             	mov    DWORD PTR [esp],eax
c0105266:	e8 f6 01 00 00       	call   c0105461 <mm_page_alloc>
c010526b:	89 45 e0             	mov    DWORD PTR [ebp-0x20],eax
c010526e:	83 7d e0 00          	cmp    DWORD PTR [ebp-0x20],0x0
c0105272:	75 0a                	jne    c010527e <mm_malloc+0x26f>
c0105274:	b8 00 00 00 00       	mov    eax,0x0
c0105279:	e9 8c 00 00 00       	jmp    c010530a <mm_malloc+0x2fb>
c010527e:	8b 45 d4             	mov    eax,DWORD PTR [ebp-0x2c]
c0105281:	c1 e0 0c             	shl    eax,0xc
c0105284:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
c0105288:	c7 44 24 04 00 00 00 	mov    DWORD PTR [esp+0x4],0x0
c010528f:	00 
c0105290:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
c0105293:	89 04 24             	mov    DWORD PTR [esp],eax
c0105296:	e8 49 2d 00 00       	call   c0107fe4 <memset>
c010529b:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
c010529e:	c7 00 00 00 00 00    	mov    DWORD PTR [eax],0x0
c01052a4:	8b 55 d4             	mov    edx,DWORD PTR [ebp-0x2c]
c01052a7:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
c01052aa:	89 50 04             	mov    DWORD PTR [eax+0x4],edx
c01052ad:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
c01052b0:	c7 40 08 01 00 00 00 	mov    DWORD PTR [eax+0x8],0x1
c01052b7:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
c01052ba:	8b 00                	mov    eax,DWORD PTR [eax]
c01052bc:	85 c0                	test   eax,eax
c01052be:	75 18                	jne    c01052d8 <mm_malloc+0x2c9>
c01052c0:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
c01052c3:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
c01052c6:	8b 45 d4             	mov    eax,DWORD PTR [ebp-0x2c]
c01052c9:	39 c2                	cmp    edx,eax
c01052cb:	75 0b                	jne    c01052d8 <mm_malloc+0x2c9>
c01052cd:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
c01052d0:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
c01052d3:	83 f8 01             	cmp    eax,0x1
c01052d6:	74 2c                	je     c0105304 <mm_malloc+0x2f5>
c01052d8:	c7 44 24 10 00 c7 10 	mov    DWORD PTR [esp+0x10],0xc010c700
c01052df:	c0 
c01052e0:	c7 44 24 0c b5 c7 10 	mov    DWORD PTR [esp+0xc],0xc010c7b5
c01052e7:	c0 
c01052e8:	c7 44 24 08 b6 00 00 	mov    DWORD PTR [esp+0x8],0xb6
c01052ef:	00 
c01052f0:	c7 44 24 04 f3 c6 10 	mov    DWORD PTR [esp+0x4],0xc010c6f3
c01052f7:	c0 
c01052f8:	c7 04 24 f3 c6 10 c0 	mov    DWORD PTR [esp],0xc010c6f3
c01052ff:	e8 a0 b5 ff ff       	call   c01008a4 <panic_spin>
c0105304:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
c0105307:	83 c0 0c             	add    eax,0xc
c010530a:	c9                   	leave  
c010530b:	c3                   	ret    

c010530c <mm_free>:
c010530c:	55                   	push   ebp
c010530d:	89 e5                	mov    ebp,esp
c010530f:	83 ec 48             	sub    esp,0x48
c0105312:	83 7d 08 00          	cmp    DWORD PTR [ebp+0x8],0x0
c0105316:	0f 84 3f 01 00 00    	je     c010545b <mm_free+0x14f>
c010531c:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c010531f:	8b 40 3c             	mov    eax,DWORD PTR [eax+0x3c]
c0105322:	85 c0                	test   eax,eax
c0105324:	75 09                	jne    c010532f <mm_free+0x23>
c0105326:	c7 45 f4 01 00 00 00 	mov    DWORD PTR [ebp-0xc],0x1
c010532d:	eb 07                	jmp    c0105336 <mm_free+0x2a>
c010532f:	c7 45 f4 02 00 00 00 	mov    DWORD PTR [ebp-0xc],0x2
c0105336:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0105339:	89 45 ec             	mov    DWORD PTR [ebp-0x14],eax
c010533c:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
c010533f:	89 04 24             	mov    DWORD PTR [esp],eax
c0105342:	e8 bb fc ff ff       	call   c0105002 <block2arena>
c0105347:	89 45 e8             	mov    DWORD PTR [ebp-0x18],eax
c010534a:	8b 45 e8             	mov    eax,DWORD PTR [ebp-0x18]
c010534d:	8b 00                	mov    eax,DWORD PTR [eax]
c010534f:	85 c0                	test   eax,eax
c0105351:	75 2d                	jne    c0105380 <mm_free+0x74>
c0105353:	8b 45 e8             	mov    eax,DWORD PTR [ebp-0x18]
c0105356:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
c0105359:	83 f8 01             	cmp    eax,0x1
c010535c:	75 22                	jne    c0105380 <mm_free+0x74>
c010535e:	8b 45 e8             	mov    eax,DWORD PTR [ebp-0x18]
c0105361:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
c0105364:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
c0105368:	8b 45 e8             	mov    eax,DWORD PTR [ebp-0x18]
c010536b:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c010536f:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0105372:	89 04 24             	mov    DWORD PTR [esp],eax
c0105375:	e8 a1 d4 ff ff       	call   c010281b <page_free>
c010537a:	90                   	nop
c010537b:	e9 de 00 00 00       	jmp    c010545e <mm_free+0x152>
c0105380:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
c0105383:	8b 55 e8             	mov    edx,DWORD PTR [ebp-0x18]
c0105386:	8b 12                	mov    edx,DWORD PTR [edx]
c0105388:	83 c2 08             	add    edx,0x8
c010538b:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c010538f:	89 14 24             	mov    DWORD PTR [esp],edx
c0105392:	e8 d0 25 00 00       	call   c0107967 <list_append>
c0105397:	8b 45 e8             	mov    eax,DWORD PTR [ebp-0x18]
c010539a:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
c010539d:	8d 50 01             	lea    edx,[eax+0x1]
c01053a0:	8b 45 e8             	mov    eax,DWORD PTR [ebp-0x18]
c01053a3:	89 50 04             	mov    DWORD PTR [eax+0x4],edx
c01053a6:	8b 45 e8             	mov    eax,DWORD PTR [ebp-0x18]
c01053a9:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
c01053ac:	8b 45 e8             	mov    eax,DWORD PTR [ebp-0x18]
c01053af:	8b 00                	mov    eax,DWORD PTR [eax]
c01053b1:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
c01053b4:	39 c2                	cmp    edx,eax
c01053b6:	0f 85 a2 00 00 00    	jne    c010545e <mm_free+0x152>
c01053bc:	c7 45 f0 00 00 00 00 	mov    DWORD PTR [ebp-0x10],0x0
c01053c3:	eb 6b                	jmp    c0105430 <mm_free+0x124>
c01053c5:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c01053c8:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c01053cc:	8b 45 e8             	mov    eax,DWORD PTR [ebp-0x18]
c01053cf:	89 04 24             	mov    DWORD PTR [esp],eax
c01053d2:	e8 11 fc ff ff       	call   c0104fe8 <arena2block>
c01053d7:	89 45 e4             	mov    DWORD PTR [ebp-0x1c],eax
c01053da:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
c01053dd:	8b 55 e8             	mov    edx,DWORD PTR [ebp-0x18]
c01053e0:	8b 12                	mov    edx,DWORD PTR [edx]
c01053e2:	83 c2 08             	add    edx,0x8
c01053e5:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c01053e9:	89 14 24             	mov    DWORD PTR [esp],edx
c01053ec:	e8 e8 25 00 00       	call   c01079d9 <list_find>
c01053f1:	85 c0                	test   eax,eax
c01053f3:	75 2c                	jne    c0105421 <mm_free+0x115>
c01053f5:	c7 44 24 10 38 c7 10 	mov    DWORD PTR [esp+0x10],0xc010c738
c01053fc:	c0 
c01053fd:	c7 44 24 0c ad c7 10 	mov    DWORD PTR [esp+0xc],0xc010c7ad
c0105404:	c0 
c0105405:	c7 44 24 08 e2 00 00 	mov    DWORD PTR [esp+0x8],0xe2
c010540c:	00 
c010540d:	c7 44 24 04 f3 c6 10 	mov    DWORD PTR [esp+0x4],0xc010c6f3
c0105414:	c0 
c0105415:	c7 04 24 f3 c6 10 c0 	mov    DWORD PTR [esp],0xc010c6f3
c010541c:	e8 83 b4 ff ff       	call   c01008a4 <panic_spin>
c0105421:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
c0105424:	89 04 24             	mov    DWORD PTR [esp],eax
c0105427:	e8 58 25 00 00       	call   c0107984 <list_remove>
c010542c:	83 45 f0 01          	add    DWORD PTR [ebp-0x10],0x1
c0105430:	8b 55 f0             	mov    edx,DWORD PTR [ebp-0x10]
c0105433:	8b 45 e8             	mov    eax,DWORD PTR [ebp-0x18]
c0105436:	8b 00                	mov    eax,DWORD PTR [eax]
c0105438:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
c010543b:	39 c2                	cmp    edx,eax
c010543d:	72 86                	jb     c01053c5 <mm_free+0xb9>
c010543f:	c7 44 24 08 01 00 00 	mov    DWORD PTR [esp+0x8],0x1
c0105446:	00 
c0105447:	8b 45 e8             	mov    eax,DWORD PTR [ebp-0x18]
c010544a:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c010544e:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0105451:	89 04 24             	mov    DWORD PTR [esp],eax
c0105454:	e8 c2 d3 ff ff       	call   c010281b <page_free>
c0105459:	eb 03                	jmp    c010545e <mm_free+0x152>
c010545b:	90                   	nop
c010545c:	eb 01                	jmp    c010545f <mm_free+0x153>
c010545e:	90                   	nop
c010545f:	c9                   	leave  
c0105460:	c3                   	ret    

c0105461 <mm_page_alloc>:
c0105461:	55                   	push   ebp
c0105462:	89 e5                	mov    ebp,esp
c0105464:	83 ec 38             	sub    esp,0x38
c0105467:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c010546a:	89 45 f0             	mov    DWORD PTR [ebp-0x10],eax
c010546d:	83 7d 08 01          	cmp    DWORD PTR [ebp+0x8],0x1
c0105471:	75 07                	jne    c010547a <mm_page_alloc+0x19>
c0105473:	b8 40 32 11 c0       	mov    eax,0xc0113240
c0105478:	eb 05                	jmp    c010547f <mm_page_alloc+0x1e>
c010547a:	b8 40 f3 10 c0       	mov    eax,0xc010f340
c010547f:	89 45 ec             	mov    DWORD PTR [ebp-0x14],eax
c0105482:	83 7d 08 01          	cmp    DWORD PTR [ebp+0x8],0x1
c0105486:	74 08                	je     c0105490 <mm_page_alloc+0x2f>
c0105488:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
c010548b:	83 c0 40             	add    eax,0x40
c010548e:	eb 05                	jmp    c0105495 <mm_page_alloc+0x34>
c0105490:	b8 80 f3 10 c0       	mov    eax,0xc010f380
c0105495:	89 45 e8             	mov    DWORD PTR [ebp-0x18],eax
c0105498:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c010549b:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c010549f:	8b 45 e8             	mov    eax,DWORD PTR [ebp-0x18]
c01054a2:	89 04 24             	mov    DWORD PTR [esp],eax
c01054a5:	e8 6a cb ff ff       	call   c0102014 <pgman_alloc>
c01054aa:	89 45 e4             	mov    DWORD PTR [ebp-0x1c],eax
c01054ad:	83 7d e4 00          	cmp    DWORD PTR [ebp-0x1c],0x0
c01054b1:	75 07                	jne    c01054ba <mm_page_alloc+0x59>
c01054b3:	b8 00 00 00 00       	mov    eax,0x0
c01054b8:	eb 58                	jmp    c0105512 <mm_page_alloc+0xb1>
c01054ba:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
c01054bd:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
c01054c0:	eb 47                	jmp    c0105509 <mm_page_alloc+0xa8>
c01054c2:	83 6d f0 01          	sub    DWORD PTR [ebp-0x10],0x1
c01054c6:	c7 44 24 04 01 00 00 	mov    DWORD PTR [esp+0x4],0x1
c01054cd:	00 
c01054ce:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
c01054d1:	89 04 24             	mov    DWORD PTR [esp],eax
c01054d4:	e8 3b cb ff ff       	call   c0102014 <pgman_alloc>
c01054d9:	89 45 e0             	mov    DWORD PTR [ebp-0x20],eax
c01054dc:	83 7d e0 00          	cmp    DWORD PTR [ebp-0x20],0x0
c01054e0:	75 07                	jne    c01054e9 <mm_page_alloc+0x88>
c01054e2:	b8 00 00 00 00       	mov    eax,0x0
c01054e7:	eb 29                	jmp    c0105512 <mm_page_alloc+0xb1>
c01054e9:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c01054ec:	8b 55 10             	mov    edx,DWORD PTR [ebp+0x10]
c01054ef:	89 54 24 08          	mov    DWORD PTR [esp+0x8],edx
c01054f3:	8b 55 e0             	mov    edx,DWORD PTR [ebp-0x20]
c01054f6:	89 54 24 04          	mov    DWORD PTR [esp+0x4],edx
c01054fa:	89 04 24             	mov    DWORD PTR [esp],eax
c01054fd:	e8 12 00 00 00       	call   c0105514 <mm_page_table_add>
c0105502:	81 45 f4 00 10 00 00 	add    DWORD PTR [ebp-0xc],0x1000
c0105509:	83 7d f0 00          	cmp    DWORD PTR [ebp-0x10],0x0
c010550d:	75 b3                	jne    c01054c2 <mm_page_alloc+0x61>
c010550f:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
c0105512:	c9                   	leave  
c0105513:	c3                   	ret    

c0105514 <mm_page_table_add>:
c0105514:	55                   	push   ebp
c0105515:	89 e5                	mov    ebp,esp
c0105517:	83 ec 58             	sub    esp,0x58
c010551a:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c010551d:	89 04 24             	mov    DWORD PTR [esp],eax
c0105520:	e8 88 ca ff ff       	call   c0101fad <pde_ptr>
c0105525:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
c0105528:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c010552b:	89 04 24             	mov    DWORD PTR [esp],eax
c010552e:	e8 8d ca ff ff       	call   c0101fc0 <pte_ptr>
c0105533:	89 45 f0             	mov    DWORD PTR [ebp-0x10],eax
c0105536:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c0105539:	89 45 ec             	mov    DWORD PTR [ebp-0x14],eax
c010553c:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c010553f:	8b 00                	mov    eax,DWORD PTR [eax]
c0105541:	83 e0 01             	and    eax,0x1
c0105544:	84 c0                	test   al,al
c0105546:	74 51                	je     c0105599 <mm_page_table_add+0x85>
c0105548:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c010554b:	8b 00                	mov    eax,DWORD PTR [eax]
c010554d:	83 e0 01             	and    eax,0x1
c0105550:	85 c0                	test   eax,eax
c0105552:	75 12                	jne    c0105566 <mm_page_table_add+0x52>
c0105554:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
c0105557:	89 c2                	mov    edx,eax
c0105559:	83 ca 07             	or     edx,0x7
c010555c:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c010555f:	89 10                	mov    DWORD PTR [eax],edx
c0105561:	e9 bc 00 00 00       	jmp    c0105622 <mm_page_table_add+0x10e>
c0105566:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
c0105569:	89 44 24 0c          	mov    DWORD PTR [esp+0xc],eax
c010556d:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0105570:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
c0105574:	c7 44 24 04 64 c7 10 	mov    DWORD PTR [esp+0x4],0xc010c764
c010557b:	c0 
c010557c:	8d 45 c9             	lea    eax,[ebp-0x37]
c010557f:	89 04 24             	mov    DWORD PTR [esp],eax
c0105582:	e8 c9 2c 00 00       	call   c0108250 <sprintf>
c0105587:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
c010558a:	89 c2                	mov    edx,eax
c010558c:	83 ca 07             	or     edx,0x7
c010558f:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c0105592:	89 10                	mov    DWORD PTR [eax],edx
c0105594:	e9 89 00 00 00       	jmp    c0105622 <mm_page_table_add+0x10e>
c0105599:	c7 44 24 04 01 00 00 	mov    DWORD PTR [esp+0x4],0x1
c01055a0:	00 
c01055a1:	c7 04 24 40 32 11 c0 	mov    DWORD PTR [esp],0xc0113240
c01055a8:	e8 67 ca ff ff       	call   c0102014 <pgman_alloc>
c01055ad:	89 45 e8             	mov    DWORD PTR [ebp-0x18],eax
c01055b0:	8b 45 e8             	mov    eax,DWORD PTR [ebp-0x18]
c01055b3:	89 c2                	mov    edx,eax
c01055b5:	83 ca 07             	or     edx,0x7
c01055b8:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c01055bb:	89 10                	mov    DWORD PTR [eax],edx
c01055bd:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c01055c0:	25 00 f0 ff ff       	and    eax,0xfffff000
c01055c5:	c7 44 24 08 00 10 00 	mov    DWORD PTR [esp+0x8],0x1000
c01055cc:	00 
c01055cd:	c7 44 24 04 00 00 00 	mov    DWORD PTR [esp+0x4],0x0
c01055d4:	00 
c01055d5:	89 04 24             	mov    DWORD PTR [esp],eax
c01055d8:	e8 07 2a 00 00       	call   c0107fe4 <memset>
c01055dd:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c01055e0:	8b 00                	mov    eax,DWORD PTR [eax]
c01055e2:	83 e0 01             	and    eax,0x1
c01055e5:	85 c0                	test   eax,eax
c01055e7:	74 2c                	je     c0105615 <mm_page_table_add+0x101>
c01055e9:	c7 44 24 10 86 c7 10 	mov    DWORD PTR [esp+0x10],0xc010c786
c01055f0:	c0 
c01055f1:	c7 44 24 0c 9b c7 10 	mov    DWORD PTR [esp+0xc],0xc010c79b
c01055f8:	c0 
c01055f9:	c7 44 24 08 22 01 00 	mov    DWORD PTR [esp+0x8],0x122
c0105600:	00 
c0105601:	c7 44 24 04 f3 c6 10 	mov    DWORD PTR [esp+0x4],0xc010c6f3
c0105608:	c0 
c0105609:	c7 04 24 f3 c6 10 c0 	mov    DWORD PTR [esp],0xc010c6f3
c0105610:	e8 8f b2 ff ff       	call   c01008a4 <panic_spin>
c0105615:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
c0105618:	89 c2                	mov    edx,eax
c010561a:	83 ca 07             	or     edx,0x7
c010561d:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c0105620:	89 10                	mov    DWORD PTR [eax],edx
c0105622:	c9                   	leave  
c0105623:	c3                   	ret    

c0105624 <init_task>:
c0105624:	55                   	push   ebp
c0105625:	89 e5                	mov    ebp,esp
c0105627:	83 ec 18             	sub    esp,0x18
c010562a:	b8 38 4d 10 c0       	mov    eax,0xc0104d38
c010562f:	c7 44 24 0c 00 00 00 	mov    DWORD PTR [esp+0xc],0x0
c0105636:	00 
c0105637:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
c010563b:	c7 44 24 04 1f 00 00 	mov    DWORD PTR [esp+0x4],0x1f
c0105642:	00 
c0105643:	c7 04 24 df c7 10 c0 	mov    DWORD PTR [esp],0xc010c7df
c010564a:	e8 1a d9 ff ff       	call   c0102f69 <thread_start>
c010564f:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
c0105652:	a3 10 33 11 c0       	mov    ds:0xc0113310,eax
c0105657:	c7 44 24 0c 00 00 00 	mov    DWORD PTR [esp+0xc],0x0
c010565e:	00 
c010565f:	c7 44 24 08 30 5f 10 	mov    DWORD PTR [esp+0x8],0xc0105f30
c0105666:	c0 
c0105667:	c7 44 24 04 1f 00 00 	mov    DWORD PTR [esp+0x4],0x1f
c010566e:	00 
c010566f:	c7 04 24 e2 c7 10 c0 	mov    DWORD PTR [esp],0xc010c7e2
c0105676:	e8 ee d8 ff ff       	call   c0102f69 <thread_start>
c010567b:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
c010567e:	a3 18 33 11 c0       	mov    ds:0xc0113318,eax
c0105683:	c7 44 24 0c 00 00 00 	mov    DWORD PTR [esp+0xc],0x0
c010568a:	00 
c010568b:	c7 44 24 08 b4 56 10 	mov    DWORD PTR [esp+0x8],0xc01056b4
c0105692:	c0 
c0105693:	c7 44 24 04 1f 00 00 	mov    DWORD PTR [esp+0x4],0x1f
c010569a:	00 
c010569b:	c7 04 24 e7 c7 10 c0 	mov    DWORD PTR [esp],0xc010c7e7
c01056a2:	e8 c2 d8 ff ff       	call   c0102f69 <thread_start>
c01056a7:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
c01056aa:	a3 14 33 11 c0       	mov    ds:0xc0113314,eax
c01056af:	c9                   	leave  
c01056b0:	c3                   	ret    
c01056b1:	00 00                	add    BYTE PTR [eax],al
	...

c01056b4 <Type_task>:
c01056b4:	55                   	push   ebp
c01056b5:	89 e5                	mov    ebp,esp
c01056b7:	57                   	push   edi
c01056b8:	56                   	push   esi
c01056b9:	53                   	push   ebx
c01056ba:	81 ec bc 00 00 00    	sub    esp,0xbc
c01056c0:	8d 9d 60 ff ff ff    	lea    ebx,[ebp-0xa0]
c01056c6:	b8 00 00 00 00       	mov    eax,0x0
c01056cb:	ba 20 00 00 00       	mov    edx,0x20
c01056d0:	89 df                	mov    edi,ebx
c01056d2:	89 d1                	mov    ecx,edx
c01056d4:	f3 ab                	rep stos DWORD PTR es:[edi],eax
c01056d6:	a1 40 8e 10 c0       	mov    eax,ds:0xc0108e40
c01056db:	89 c2                	mov    edx,eax
c01056dd:	a1 44 8e 10 c0       	mov    eax,ds:0xc0108e44
c01056e2:	0f af c2             	imul   eax,edx
c01056e5:	c1 e0 02             	shl    eax,0x2
c01056e8:	89 04 24             	mov    DWORD PTR [esp],eax
c01056eb:	e8 58 1a 00 00       	call   c0107148 <api_malloc>
c01056f0:	a3 20 33 11 c0       	mov    ds:0xc0113320,eax
c01056f5:	a1 20 33 11 c0       	mov    eax,ds:0xc0113320
c01056fa:	85 c0                	test   eax,eax
c01056fc:	75 2c                	jne    c010572a <Type_task+0x76>
c01056fe:	c7 44 24 10 0b c8 10 	mov    DWORD PTR [esp+0x10],0xc010c80b
c0105705:	c0 
c0105706:	c7 44 24 0c 25 c9 10 	mov    DWORD PTR [esp+0xc],0xc010c925
c010570d:	c0 
c010570e:	c7 44 24 08 22 00 00 	mov    DWORD PTR [esp+0x8],0x22
c0105715:	00 
c0105716:	c7 44 24 04 17 c8 10 	mov    DWORD PTR [esp+0x4],0xc010c817
c010571d:	c0 
c010571e:	c7 04 24 17 c8 10 c0 	mov    DWORD PTR [esp],0xc010c817
c0105725:	e8 7a b1 ff ff       	call   c01008a4 <panic_spin>
c010572a:	8b 0d 20 33 11 c0    	mov    ecx,DWORD PTR ds:0xc0113320
c0105730:	8b 15 44 8e 10 c0    	mov    edx,DWORD PTR ds:0xc0108e44
c0105736:	a1 40 8e 10 c0       	mov    eax,ds:0xc0108e40
c010573b:	89 4c 24 08          	mov    DWORD PTR [esp+0x8],ecx
c010573f:	89 54 24 04          	mov    DWORD PTR [esp+0x4],edx
c0105743:	89 04 24             	mov    DWORD PTR [esp],eax
c0105746:	e8 ae 1a 00 00       	call   c01071f9 <api_viewinit>
c010574b:	a3 1c 33 11 c0       	mov    ds:0xc011331c,eax
c0105750:	8b 0d 44 8e 10 c0    	mov    ecx,DWORD PTR ds:0xc0108e44
c0105756:	8b 15 40 8e 10 c0    	mov    edx,DWORD PTR ds:0xc0108e40
c010575c:	a1 20 33 11 c0       	mov    eax,ds:0xc0113320
c0105761:	c7 44 24 0c 22 c8 10 	mov    DWORD PTR [esp+0xc],0xc010c822
c0105768:	c0 
c0105769:	89 4c 24 08          	mov    DWORD PTR [esp+0x8],ecx
c010576d:	89 54 24 04          	mov    DWORD PTR [esp+0x4],edx
c0105771:	89 04 24             	mov    DWORD PTR [esp],eax
c0105774:	e8 db 1b 00 00       	call   c0107354 <api_makeWindow>
c0105779:	c7 44 24 08 ff 00 00 	mov    DWORD PTR [esp+0x8],0xff
c0105780:	00 
c0105781:	c7 44 24 04 ff 00 00 	mov    DWORD PTR [esp+0x4],0xff
c0105788:	00 
c0105789:	c7 04 24 ff 00 00 00 	mov    DWORD PTR [esp],0xff
c0105790:	e8 cf 2d 00 00       	call   c0108564 <rgb>
c0105795:	8b 35 3c 8e 10 c0    	mov    esi,DWORD PTR ds:0xc0108e3c
c010579b:	8b 1d 38 8e 10 c0    	mov    ebx,DWORD PTR ds:0xc0108e38
c01057a1:	8b 0d 40 8e 10 c0    	mov    ecx,DWORD PTR ds:0xc0108e40
c01057a7:	8b 15 20 33 11 c0    	mov    edx,DWORD PTR ds:0xc0113320
c01057ad:	c7 44 24 14 60 b7 10 	mov    DWORD PTR [esp+0x14],0xc010b760
c01057b4:	c0 
c01057b5:	89 44 24 10          	mov    DWORD PTR [esp+0x10],eax
c01057b9:	89 74 24 0c          	mov    DWORD PTR [esp+0xc],esi
c01057bd:	89 5c 24 08          	mov    DWORD PTR [esp+0x8],ebx
c01057c1:	89 4c 24 04          	mov    DWORD PTR [esp+0x4],ecx
c01057c5:	89 14 24             	mov    DWORD PTR [esp],edx
c01057c8:	e8 e4 30 00 00       	call   c01088b1 <vput_str>
c01057cd:	a1 3c 8e 10 c0       	mov    eax,ds:0xc0108e3c
c01057d2:	83 c0 10             	add    eax,0x10
c01057d5:	a3 3c 8e 10 c0       	mov    ds:0xc0108e3c,eax
c01057da:	a1 1c 33 11 c0       	mov    eax,ds:0xc011331c
c01057df:	c7 44 24 08 64 00 00 	mov    DWORD PTR [esp+0x8],0x64
c01057e6:	00 
c01057e7:	c7 44 24 04 d2 00 00 	mov    DWORD PTR [esp+0x4],0xd2
c01057ee:	00 
c01057ef:	89 04 24             	mov    DWORD PTR [esp],eax
c01057f2:	e8 95 1a 00 00       	call   c010728c <api_viewslide>
c01057f7:	e8 bd 02 00 00       	call   c0105ab9 <print_prompt>
c01057fc:	8b 0d 44 8e 10 c0    	mov    ecx,DWORD PTR ds:0xc0108e44
c0105802:	8b 15 40 8e 10 c0    	mov    edx,DWORD PTR ds:0xc0108e40
c0105808:	a1 1c 33 11 c0       	mov    eax,ds:0xc011331c
c010580d:	89 4c 24 10          	mov    DWORD PTR [esp+0x10],ecx
c0105811:	89 54 24 0c          	mov    DWORD PTR [esp+0xc],edx
c0105815:	c7 44 24 08 00 00 00 	mov    DWORD PTR [esp+0x8],0x0
c010581c:	00 
c010581d:	c7 44 24 04 00 00 00 	mov    DWORD PTR [esp+0x4],0x0
c0105824:	00 
c0105825:	89 04 24             	mov    DWORD PTR [esp],eax
c0105828:	e8 11 1a 00 00       	call   c010723e <api_viewflush>
c010582d:	8d 85 60 ff ff ff    	lea    eax,[ebp-0xa0]
c0105833:	89 04 24             	mov    DWORD PTR [esp],eax
c0105836:	e8 ee 02 00 00       	call   c0105b29 <readline>
c010583b:	c7 05 38 8e 10 c0 02 	mov    DWORD PTR ds:0xc0108e38,0x2
c0105842:	00 00 00 
c0105845:	a1 44 8e 10 c0       	mov    eax,ds:0xc0108e44
c010584a:	8d 50 e0             	lea    edx,[eax-0x20]
c010584d:	a1 3c 8e 10 c0       	mov    eax,ds:0xc0108e3c
c0105852:	39 c2                	cmp    edx,eax
c0105854:	7d 07                	jge    c010585d <Type_task+0x1a9>
c0105856:	e8 f9 04 00 00       	call   c0105d54 <win_roll_screen>
c010585b:	eb 0d                	jmp    c010586a <Type_task+0x1b6>
c010585d:	a1 3c 8e 10 c0       	mov    eax,ds:0xc0108e3c
c0105862:	83 c0 10             	add    eax,0x10
c0105865:	a3 3c 8e 10 c0       	mov    ds:0xc0108e3c,eax
c010586a:	8d 85 60 ff ff ff    	lea    eax,[ebp-0xa0]
c0105870:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c0105874:	c7 04 24 2a c8 10 c0 	mov    DWORD PTR [esp],0xc010c82a
c010587b:	e8 3e 29 00 00       	call   c01081be <strcmp>
c0105880:	85 c0                	test   eax,eax
c0105882:	74 1a                	je     c010589e <Type_task+0x1ea>
c0105884:	8d 85 60 ff ff ff    	lea    eax,[ebp-0xa0]
c010588a:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c010588e:	c7 04 24 2f c8 10 c0 	mov    DWORD PTR [esp],0xc010c82f
c0105895:	e8 24 29 00 00       	call   c01081be <strcmp>
c010589a:	85 c0                	test   eax,eax
c010589c:	75 0a                	jne    c01058a8 <Type_task+0x1f4>
c010589e:	e8 c8 05 00 00       	call   c0105e6b <help>
c01058a3:	e9 4f ff ff ff       	jmp    c01057f7 <Type_task+0x143>
c01058a8:	8d 85 60 ff ff ff    	lea    eax,[ebp-0xa0]
c01058ae:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c01058b2:	c7 04 24 31 c8 10 c0 	mov    DWORD PTR [esp],0xc010c831
c01058b9:	e8 00 29 00 00       	call   c01081be <strcmp>
c01058be:	85 c0                	test   eax,eax
c01058c0:	0f 85 83 00 00 00    	jne    c0105949 <Type_task+0x295>
c01058c6:	c7 45 e0 17 00 00 00 	mov    DWORD PTR [ebp-0x20],0x17
c01058cd:	eb 54                	jmp    c0105923 <Type_task+0x26f>
c01058cf:	c7 45 e4 01 00 00 00 	mov    DWORD PTR [ebp-0x1c],0x1
c01058d6:	eb 3a                	jmp    c0105912 <Type_task+0x25e>
c01058d8:	8b 15 20 33 11 c0    	mov    edx,DWORD PTR ds:0xc0113320
c01058de:	a1 40 8e 10 c0       	mov    eax,ds:0xc0108e40
c01058e3:	0f af 45 e0          	imul   eax,DWORD PTR [ebp-0x20]
c01058e7:	03 45 e4             	add    eax,DWORD PTR [ebp-0x1c]
c01058ea:	c1 e0 02             	shl    eax,0x2
c01058ed:	8d 1c 02             	lea    ebx,[edx+eax*1]
c01058f0:	c7 44 24 08 00 00 00 	mov    DWORD PTR [esp+0x8],0x0
c01058f7:	00 
c01058f8:	c7 44 24 04 00 00 00 	mov    DWORD PTR [esp+0x4],0x0
c01058ff:	00 
c0105900:	c7 04 24 00 00 00 00 	mov    DWORD PTR [esp],0x0
c0105907:	e8 58 2c 00 00       	call   c0108564 <rgb>
c010590c:	89 03                	mov    DWORD PTR [ebx],eax
c010590e:	83 45 e4 01          	add    DWORD PTR [ebp-0x1c],0x1
c0105912:	a1 40 8e 10 c0       	mov    eax,ds:0xc0108e40
c0105917:	83 e8 01             	sub    eax,0x1
c010591a:	3b 45 e4             	cmp    eax,DWORD PTR [ebp-0x1c]
c010591d:	7f b9                	jg     c01058d8 <Type_task+0x224>
c010591f:	83 45 e0 01          	add    DWORD PTR [ebp-0x20],0x1
c0105923:	a1 44 8e 10 c0       	mov    eax,ds:0xc0108e44
c0105928:	83 e8 01             	sub    eax,0x1
c010592b:	3b 45 e0             	cmp    eax,DWORD PTR [ebp-0x20]
c010592e:	7f 9f                	jg     c01058cf <Type_task+0x21b>
c0105930:	c7 05 38 8e 10 c0 01 	mov    DWORD PTR ds:0xc0108e38,0x1
c0105937:	00 00 00 
c010593a:	c7 05 3c 8e 10 c0 18 	mov    DWORD PTR ds:0xc0108e3c,0x18
c0105941:	00 00 00 
c0105944:	e9 ae fe ff ff       	jmp    c01057f7 <Type_task+0x143>
c0105949:	8d 85 60 ff ff ff    	lea    eax,[ebp-0xa0]
c010594f:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c0105953:	c7 04 24 35 c8 10 c0 	mov    DWORD PTR [esp],0xc010c835
c010595a:	e8 5f 28 00 00       	call   c01081be <strcmp>
c010595f:	85 c0                	test   eax,eax
c0105961:	75 0c                	jne    c010596f <Type_task+0x2bb>
c0105963:	b8 f2 5e 10 c0       	mov    eax,0xc0105ef2
c0105968:	ff d0                	call   eax
c010596a:	e9 88 fe ff ff       	jmp    c01057f7 <Type_task+0x143>
c010596f:	b8 a0 59 10 c0       	mov    eax,0xc01059a0
c0105974:	c7 04 24 38 c8 10 c0 	mov    DWORD PTR [esp],0xc010c838
c010597b:	ff d0                	call   eax
c010597d:	ba a0 59 10 c0       	mov    edx,0xc01059a0
c0105982:	8d 85 60 ff ff ff    	lea    eax,[ebp-0xa0]
c0105988:	89 04 24             	mov    DWORD PTR [esp],eax
c010598b:	ff d2                	call   edx
c010598d:	b8 a0 59 10 c0       	mov    eax,0xc01059a0
c0105992:	c7 04 24 67 c8 10 c0 	mov    DWORD PTR [esp],0xc010c867
c0105999:	ff d0                	call   eax
c010599b:	e9 57 fe ff ff       	jmp    c01057f7 <Type_task+0x143>

c01059a0 <print_str>:
c01059a0:	55                   	push   ebp
c01059a1:	89 e5                	mov    ebp,esp
c01059a3:	57                   	push   edi
c01059a4:	56                   	push   esi
c01059a5:	53                   	push   ebx
c01059a6:	83 ec 2c             	sub    esp,0x2c
c01059a9:	e9 f5 00 00 00       	jmp    c0105aa3 <print_str+0x103>
c01059ae:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01059b1:	0f b6 00             	movzx  eax,BYTE PTR [eax]
c01059b4:	0f be c0             	movsx  eax,al
c01059b7:	83 f8 08             	cmp    eax,0x8
c01059ba:	74 05                	je     c01059c1 <print_str+0x21>
c01059bc:	83 f8 0a             	cmp    eax,0xa
c01059bf:	75 37                	jne    c01059f8 <print_str+0x58>
c01059c1:	c7 05 38 8e 10 c0 02 	mov    DWORD PTR ds:0xc0108e38,0x2
c01059c8:	00 00 00 
c01059cb:	a1 44 8e 10 c0       	mov    eax,ds:0xc0108e44
c01059d0:	8d 50 e0             	lea    edx,[eax-0x20]
c01059d3:	a1 3c 8e 10 c0       	mov    eax,ds:0xc0108e3c
c01059d8:	39 c2                	cmp    edx,eax
c01059da:	7d 0a                	jge    c01059e6 <print_str+0x46>
c01059dc:	e8 73 03 00 00       	call   c0105d54 <win_roll_screen>
c01059e1:	e9 b9 00 00 00       	jmp    c0105a9f <print_str+0xff>
c01059e6:	a1 3c 8e 10 c0       	mov    eax,ds:0xc0108e3c
c01059eb:	83 c0 10             	add    eax,0x10
c01059ee:	a3 3c 8e 10 c0       	mov    ds:0xc0108e3c,eax
c01059f3:	e9 a7 00 00 00       	jmp    c0105a9f <print_str+0xff>
c01059f8:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01059fb:	0f b6 00             	movzx  eax,BYTE PTR [eax]
c01059fe:	0f be f8             	movsx  edi,al
c0105a01:	c7 44 24 08 ff 00 00 	mov    DWORD PTR [esp+0x8],0xff
c0105a08:	00 
c0105a09:	c7 44 24 04 ff 00 00 	mov    DWORD PTR [esp+0x4],0xff
c0105a10:	00 
c0105a11:	c7 04 24 ff 00 00 00 	mov    DWORD PTR [esp],0xff
c0105a18:	e8 47 2b 00 00       	call   c0108564 <rgb>
c0105a1d:	8b 35 3c 8e 10 c0    	mov    esi,DWORD PTR ds:0xc0108e3c
c0105a23:	8b 1d 38 8e 10 c0    	mov    ebx,DWORD PTR ds:0xc0108e38
c0105a29:	8b 0d 40 8e 10 c0    	mov    ecx,DWORD PTR ds:0xc0108e40
c0105a2f:	8b 15 20 33 11 c0    	mov    edx,DWORD PTR ds:0xc0113320
c0105a35:	89 7c 24 14          	mov    DWORD PTR [esp+0x14],edi
c0105a39:	89 44 24 10          	mov    DWORD PTR [esp+0x10],eax
c0105a3d:	89 74 24 0c          	mov    DWORD PTR [esp+0xc],esi
c0105a41:	89 5c 24 08          	mov    DWORD PTR [esp+0x8],ebx
c0105a45:	89 4c 24 04          	mov    DWORD PTR [esp+0x4],ecx
c0105a49:	89 14 24             	mov    DWORD PTR [esp],edx
c0105a4c:	e8 45 2d 00 00       	call   c0108796 <vput_char>
c0105a51:	a1 38 8e 10 c0       	mov    eax,ds:0xc0108e38
c0105a56:	83 c0 08             	add    eax,0x8
c0105a59:	a3 38 8e 10 c0       	mov    ds:0xc0108e38,eax
c0105a5e:	a1 40 8e 10 c0       	mov    eax,ds:0xc0108e40
c0105a63:	8d 50 f0             	lea    edx,[eax-0x10]
c0105a66:	a1 38 8e 10 c0       	mov    eax,ds:0xc0108e38
c0105a6b:	39 c2                	cmp    edx,eax
c0105a6d:	7d 2f                	jge    c0105a9e <print_str+0xfe>
c0105a6f:	c7 05 38 8e 10 c0 02 	mov    DWORD PTR ds:0xc0108e38,0x2
c0105a76:	00 00 00 
c0105a79:	a1 44 8e 10 c0       	mov    eax,ds:0xc0108e44
c0105a7e:	8d 50 e0             	lea    edx,[eax-0x20]
c0105a81:	a1 3c 8e 10 c0       	mov    eax,ds:0xc0108e3c
c0105a86:	39 c2                	cmp    edx,eax
c0105a88:	7d 07                	jge    c0105a91 <print_str+0xf1>
c0105a8a:	e8 c5 02 00 00       	call   c0105d54 <win_roll_screen>
c0105a8f:	eb 0d                	jmp    c0105a9e <print_str+0xfe>
c0105a91:	a1 3c 8e 10 c0       	mov    eax,ds:0xc0108e3c
c0105a96:	83 c0 10             	add    eax,0x10
c0105a99:	a3 3c 8e 10 c0       	mov    ds:0xc0108e3c,eax
c0105a9e:	90                   	nop
c0105a9f:	83 45 08 01          	add    DWORD PTR [ebp+0x8],0x1
c0105aa3:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0105aa6:	0f b6 00             	movzx  eax,BYTE PTR [eax]
c0105aa9:	84 c0                	test   al,al
c0105aab:	0f 85 fd fe ff ff    	jne    c01059ae <print_str+0xe>
c0105ab1:	83 c4 2c             	add    esp,0x2c
c0105ab4:	5b                   	pop    ebx
c0105ab5:	5e                   	pop    esi
c0105ab6:	5f                   	pop    edi
c0105ab7:	5d                   	pop    ebp
c0105ab8:	c3                   	ret    

c0105ab9 <print_prompt>:
c0105ab9:	55                   	push   ebp
c0105aba:	89 e5                	mov    ebp,esp
c0105abc:	56                   	push   esi
c0105abd:	53                   	push   ebx
c0105abe:	83 ec 20             	sub    esp,0x20
c0105ac1:	c7 44 24 08 ff 00 00 	mov    DWORD PTR [esp+0x8],0xff
c0105ac8:	00 
c0105ac9:	c7 44 24 04 ff 00 00 	mov    DWORD PTR [esp+0x4],0xff
c0105ad0:	00 
c0105ad1:	c7 04 24 ff 00 00 00 	mov    DWORD PTR [esp],0xff
c0105ad8:	e8 87 2a 00 00       	call   c0108564 <rgb>
c0105add:	8b 35 3c 8e 10 c0    	mov    esi,DWORD PTR ds:0xc0108e3c
c0105ae3:	8b 1d 38 8e 10 c0    	mov    ebx,DWORD PTR ds:0xc0108e38
c0105ae9:	8b 0d 40 8e 10 c0    	mov    ecx,DWORD PTR ds:0xc0108e40
c0105aef:	8b 15 20 33 11 c0    	mov    edx,DWORD PTR ds:0xc0113320
c0105af5:	c7 44 24 14 7d c8 10 	mov    DWORD PTR [esp+0x14],0xc010c87d
c0105afc:	c0 
c0105afd:	89 44 24 10          	mov    DWORD PTR [esp+0x10],eax
c0105b01:	89 74 24 0c          	mov    DWORD PTR [esp+0xc],esi
c0105b05:	89 5c 24 08          	mov    DWORD PTR [esp+0x8],ebx
c0105b09:	89 4c 24 04          	mov    DWORD PTR [esp+0x4],ecx
c0105b0d:	89 14 24             	mov    DWORD PTR [esp],edx
c0105b10:	e8 9c 2d 00 00       	call   c01088b1 <vput_str>
c0105b15:	a1 38 8e 10 c0       	mov    eax,ds:0xc0108e38
c0105b1a:	83 c0 51             	add    eax,0x51
c0105b1d:	a3 38 8e 10 c0       	mov    ds:0xc0108e38,eax
c0105b22:	83 c4 20             	add    esp,0x20
c0105b25:	5b                   	pop    ebx
c0105b26:	5e                   	pop    esi
c0105b27:	5d                   	pop    ebp
c0105b28:	c3                   	ret    

c0105b29 <readline>:
c0105b29:	55                   	push   ebp
c0105b2a:	89 e5                	mov    ebp,esp
c0105b2c:	57                   	push   edi
c0105b2d:	56                   	push   esi
c0105b2e:	53                   	push   ebx
c0105b2f:	83 ec 4c             	sub    esp,0x4c
c0105b32:	c7 45 e4 00 00 00 00 	mov    DWORD PTR [ebp-0x1c],0x0
c0105b39:	a1 40 8e 10 c0       	mov    eax,ds:0xc0108e40
c0105b3e:	8d 50 f0             	lea    edx,[eax-0x10]
c0105b41:	a1 38 8e 10 c0       	mov    eax,ds:0xc0108e38
c0105b46:	39 c2                	cmp    edx,eax
c0105b48:	7d 2f                	jge    c0105b79 <readline+0x50>
c0105b4a:	c7 05 38 8e 10 c0 02 	mov    DWORD PTR ds:0xc0108e38,0x2
c0105b51:	00 00 00 
c0105b54:	a1 44 8e 10 c0       	mov    eax,ds:0xc0108e44
c0105b59:	8d 50 e0             	lea    edx,[eax-0x20]
c0105b5c:	a1 3c 8e 10 c0       	mov    eax,ds:0xc0108e3c
c0105b61:	39 c2                	cmp    edx,eax
c0105b63:	7d 07                	jge    c0105b6c <readline+0x43>
c0105b65:	e8 ea 01 00 00       	call   c0105d54 <win_roll_screen>
c0105b6a:	eb 0d                	jmp    c0105b79 <readline+0x50>
c0105b6c:	a1 3c 8e 10 c0       	mov    eax,ds:0xc0108e3c
c0105b71:	83 c0 10             	add    eax,0x10
c0105b74:	a3 3c 8e 10 c0       	mov    ds:0xc0108e3c,eax
c0105b79:	8d 45 e3             	lea    eax,[ebp-0x1d]
c0105b7c:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c0105b80:	c7 04 24 c0 32 11 c0 	mov    DWORD PTR [esp],0xc01132c0
c0105b87:	e8 5d e2 ff ff       	call   c0103de9 <fifo_get>
c0105b8c:	0f b6 45 e3          	movzx  eax,BYTE PTR [ebp-0x1d]
c0105b90:	3c 08                	cmp    al,0x8
c0105b92:	0f 85 f9 00 00 00    	jne    c0105c91 <readline+0x168>
c0105b98:	83 7d e4 00          	cmp    DWORD PTR [ebp-0x1c],0x0
c0105b9c:	0f 8e ef 00 00 00    	jle    c0105c91 <readline+0x168>
c0105ba2:	83 6d e4 01          	sub    DWORD PTR [ebp-0x1c],0x1
c0105ba6:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
c0105ba9:	03 45 08             	add    eax,DWORD PTR [ebp+0x8]
c0105bac:	c6 00 00             	mov    BYTE PTR [eax],0x0
c0105baf:	a1 38 8e 10 c0       	mov    eax,ds:0xc0108e38
c0105bb4:	83 f8 07             	cmp    eax,0x7
c0105bb7:	7f 24                	jg     c0105bdd <readline+0xb4>
c0105bb9:	a1 40 8e 10 c0       	mov    eax,ds:0xc0108e40
c0105bbe:	83 e8 10             	sub    eax,0x10
c0105bc1:	a3 38 8e 10 c0       	mov    ds:0xc0108e38,eax
c0105bc6:	a1 3c 8e 10 c0       	mov    eax,ds:0xc0108e3c
c0105bcb:	83 f8 27             	cmp    eax,0x27
c0105bce:	7e 0d                	jle    c0105bdd <readline+0xb4>
c0105bd0:	a1 3c 8e 10 c0       	mov    eax,ds:0xc0108e3c
c0105bd5:	83 e8 10             	sub    eax,0x10
c0105bd8:	a3 3c 8e 10 c0       	mov    ds:0xc0108e3c,eax
c0105bdd:	a1 38 8e 10 c0       	mov    eax,ds:0xc0108e38
c0105be2:	83 e8 08             	sub    eax,0x8
c0105be5:	a3 38 8e 10 c0       	mov    ds:0xc0108e38,eax
c0105bea:	a1 3c 8e 10 c0       	mov    eax,ds:0xc0108e3c
c0105bef:	83 c0 10             	add    eax,0x10
c0105bf2:	89 45 d4             	mov    DWORD PTR [ebp-0x2c],eax
c0105bf5:	a1 38 8e 10 c0       	mov    eax,ds:0xc0108e38
c0105bfa:	8d 78 08             	lea    edi,[eax+0x8]
c0105bfd:	8b 35 3c 8e 10 c0    	mov    esi,DWORD PTR ds:0xc0108e3c
c0105c03:	8b 1d 38 8e 10 c0    	mov    ebx,DWORD PTR ds:0xc0108e38
c0105c09:	c7 44 24 08 00 00 00 	mov    DWORD PTR [esp+0x8],0x0
c0105c10:	00 
c0105c11:	c7 44 24 04 00 00 00 	mov    DWORD PTR [esp+0x4],0x0
c0105c18:	00 
c0105c19:	c7 04 24 00 00 00 00 	mov    DWORD PTR [esp],0x0
c0105c20:	e8 3f 29 00 00       	call   c0108564 <rgb>
c0105c25:	89 45 d0             	mov    DWORD PTR [ebp-0x30],eax
c0105c28:	8b 0d 40 8e 10 c0    	mov    ecx,DWORD PTR ds:0xc0108e40
c0105c2e:	8b 15 20 33 11 c0    	mov    edx,DWORD PTR ds:0xc0113320
c0105c34:	8b 45 d4             	mov    eax,DWORD PTR [ebp-0x2c]
c0105c37:	89 44 24 18          	mov    DWORD PTR [esp+0x18],eax
c0105c3b:	89 7c 24 14          	mov    DWORD PTR [esp+0x14],edi
c0105c3f:	89 74 24 10          	mov    DWORD PTR [esp+0x10],esi
c0105c43:	89 5c 24 0c          	mov    DWORD PTR [esp+0xc],ebx
c0105c47:	8b 45 d0             	mov    eax,DWORD PTR [ebp-0x30]
c0105c4a:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
c0105c4e:	89 4c 24 04          	mov    DWORD PTR [esp+0x4],ecx
c0105c52:	89 14 24             	mov    DWORD PTR [esp],edx
c0105c55:	e8 d2 2a 00 00       	call   c010872c <viewFill>
c0105c5a:	8b 0d 44 8e 10 c0    	mov    ecx,DWORD PTR ds:0xc0108e44
c0105c60:	8b 15 40 8e 10 c0    	mov    edx,DWORD PTR ds:0xc0108e40
c0105c66:	a1 1c 33 11 c0       	mov    eax,ds:0xc011331c
c0105c6b:	89 4c 24 10          	mov    DWORD PTR [esp+0x10],ecx
c0105c6f:	89 54 24 0c          	mov    DWORD PTR [esp+0xc],edx
c0105c73:	c7 44 24 08 00 00 00 	mov    DWORD PTR [esp+0x8],0x0
c0105c7a:	00 
c0105c7b:	c7 44 24 04 00 00 00 	mov    DWORD PTR [esp+0x4],0x0
c0105c82:	00 
c0105c83:	89 04 24             	mov    DWORD PTR [esp],eax
c0105c86:	e8 b3 15 00 00       	call   c010723e <api_viewflush>
c0105c8b:	90                   	nop
c0105c8c:	e9 a8 fe ff ff       	jmp    c0105b39 <readline+0x10>
c0105c91:	0f b6 45 e3          	movzx  eax,BYTE PTR [ebp-0x1d]
c0105c95:	0f be f8             	movsx  edi,al
c0105c98:	c7 44 24 08 ff 00 00 	mov    DWORD PTR [esp+0x8],0xff
c0105c9f:	00 
c0105ca0:	c7 44 24 04 ff 00 00 	mov    DWORD PTR [esp+0x4],0xff
c0105ca7:	00 
c0105ca8:	c7 04 24 ff 00 00 00 	mov    DWORD PTR [esp],0xff
c0105caf:	e8 b0 28 00 00       	call   c0108564 <rgb>
c0105cb4:	8b 35 3c 8e 10 c0    	mov    esi,DWORD PTR ds:0xc0108e3c
c0105cba:	8b 1d 38 8e 10 c0    	mov    ebx,DWORD PTR ds:0xc0108e38
c0105cc0:	8b 0d 40 8e 10 c0    	mov    ecx,DWORD PTR ds:0xc0108e40
c0105cc6:	8b 15 20 33 11 c0    	mov    edx,DWORD PTR ds:0xc0113320
c0105ccc:	89 7c 24 14          	mov    DWORD PTR [esp+0x14],edi
c0105cd0:	89 44 24 10          	mov    DWORD PTR [esp+0x10],eax
c0105cd4:	89 74 24 0c          	mov    DWORD PTR [esp+0xc],esi
c0105cd8:	89 5c 24 08          	mov    DWORD PTR [esp+0x8],ebx
c0105cdc:	89 4c 24 04          	mov    DWORD PTR [esp+0x4],ecx
c0105ce0:	89 14 24             	mov    DWORD PTR [esp],edx
c0105ce3:	e8 ae 2a 00 00       	call   c0108796 <vput_char>
c0105ce8:	8b 0d 44 8e 10 c0    	mov    ecx,DWORD PTR ds:0xc0108e44
c0105cee:	8b 15 40 8e 10 c0    	mov    edx,DWORD PTR ds:0xc0108e40
c0105cf4:	a1 1c 33 11 c0       	mov    eax,ds:0xc011331c
c0105cf9:	89 4c 24 10          	mov    DWORD PTR [esp+0x10],ecx
c0105cfd:	89 54 24 0c          	mov    DWORD PTR [esp+0xc],edx
c0105d01:	c7 44 24 08 00 00 00 	mov    DWORD PTR [esp+0x8],0x0
c0105d08:	00 
c0105d09:	c7 44 24 04 00 00 00 	mov    DWORD PTR [esp+0x4],0x0
c0105d10:	00 
c0105d11:	89 04 24             	mov    DWORD PTR [esp],eax
c0105d14:	e8 25 15 00 00       	call   c010723e <api_viewflush>
c0105d19:	0f b6 45 e3          	movzx  eax,BYTE PTR [ebp-0x1d]
c0105d1d:	3c 0d                	cmp    al,0xd
c0105d1f:	75 11                	jne    c0105d32 <readline+0x209>
c0105d21:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
c0105d24:	03 45 08             	add    eax,DWORD PTR [ebp+0x8]
c0105d27:	c6 00 00             	mov    BYTE PTR [eax],0x0
c0105d2a:	83 c4 4c             	add    esp,0x4c
c0105d2d:	5b                   	pop    ebx
c0105d2e:	5e                   	pop    esi
c0105d2f:	5f                   	pop    edi
c0105d30:	5d                   	pop    ebp
c0105d31:	c3                   	ret    
c0105d32:	a1 38 8e 10 c0       	mov    eax,ds:0xc0108e38
c0105d37:	83 c0 08             	add    eax,0x8
c0105d3a:	a3 38 8e 10 c0       	mov    ds:0xc0108e38,eax
c0105d3f:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
c0105d42:	03 45 08             	add    eax,DWORD PTR [ebp+0x8]
c0105d45:	0f b6 55 e3          	movzx  edx,BYTE PTR [ebp-0x1d]
c0105d49:	88 10                	mov    BYTE PTR [eax],dl
c0105d4b:	83 45 e4 01          	add    DWORD PTR [ebp-0x1c],0x1
c0105d4f:	e9 e5 fd ff ff       	jmp    c0105b39 <readline+0x10>

c0105d54 <win_roll_screen>:
c0105d54:	55                   	push   ebp
c0105d55:	89 e5                	mov    ebp,esp
c0105d57:	53                   	push   ebx
c0105d58:	83 ec 34             	sub    esp,0x34
c0105d5b:	c7 45 f0 17 00 00 00 	mov    DWORD PTR [ebp-0x10],0x17
c0105d62:	eb 55                	jmp    c0105db9 <win_roll_screen+0x65>
c0105d64:	c7 45 f4 01 00 00 00 	mov    DWORD PTR [ebp-0xc],0x1
c0105d6b:	eb 3b                	jmp    c0105da8 <win_roll_screen+0x54>
c0105d6d:	8b 15 20 33 11 c0    	mov    edx,DWORD PTR ds:0xc0113320
c0105d73:	a1 40 8e 10 c0       	mov    eax,ds:0xc0108e40
c0105d78:	0f af 45 f0          	imul   eax,DWORD PTR [ebp-0x10]
c0105d7c:	03 45 f4             	add    eax,DWORD PTR [ebp-0xc]
c0105d7f:	c1 e0 02             	shl    eax,0x2
c0105d82:	01 c2                	add    edx,eax
c0105d84:	8b 0d 20 33 11 c0    	mov    ecx,DWORD PTR ds:0xc0113320
c0105d8a:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c0105d8d:	8d 58 10             	lea    ebx,[eax+0x10]
c0105d90:	a1 40 8e 10 c0       	mov    eax,ds:0xc0108e40
c0105d95:	0f af c3             	imul   eax,ebx
c0105d98:	03 45 f4             	add    eax,DWORD PTR [ebp-0xc]
c0105d9b:	c1 e0 02             	shl    eax,0x2
c0105d9e:	01 c8                	add    eax,ecx
c0105da0:	8b 00                	mov    eax,DWORD PTR [eax]
c0105da2:	89 02                	mov    DWORD PTR [edx],eax
c0105da4:	83 45 f4 01          	add    DWORD PTR [ebp-0xc],0x1
c0105da8:	a1 40 8e 10 c0       	mov    eax,ds:0xc0108e40
c0105dad:	83 e8 01             	sub    eax,0x1
c0105db0:	3b 45 f4             	cmp    eax,DWORD PTR [ebp-0xc]
c0105db3:	7f b8                	jg     c0105d6d <win_roll_screen+0x19>
c0105db5:	83 45 f0 01          	add    DWORD PTR [ebp-0x10],0x1
c0105db9:	a1 44 8e 10 c0       	mov    eax,ds:0xc0108e44
c0105dbe:	83 e8 11             	sub    eax,0x11
c0105dc1:	3b 45 f0             	cmp    eax,DWORD PTR [ebp-0x10]
c0105dc4:	7f 9e                	jg     c0105d64 <win_roll_screen+0x10>
c0105dc6:	a1 44 8e 10 c0       	mov    eax,ds:0xc0108e44
c0105dcb:	83 e8 11             	sub    eax,0x11
c0105dce:	89 45 f0             	mov    DWORD PTR [ebp-0x10],eax
c0105dd1:	eb 54                	jmp    c0105e27 <win_roll_screen+0xd3>
c0105dd3:	c7 45 f4 01 00 00 00 	mov    DWORD PTR [ebp-0xc],0x1
c0105dda:	eb 3a                	jmp    c0105e16 <win_roll_screen+0xc2>
c0105ddc:	8b 15 20 33 11 c0    	mov    edx,DWORD PTR ds:0xc0113320
c0105de2:	a1 40 8e 10 c0       	mov    eax,ds:0xc0108e40
c0105de7:	0f af 45 f0          	imul   eax,DWORD PTR [ebp-0x10]
c0105deb:	03 45 f4             	add    eax,DWORD PTR [ebp-0xc]
c0105dee:	c1 e0 02             	shl    eax,0x2
c0105df1:	8d 1c 02             	lea    ebx,[edx+eax*1]
c0105df4:	c7 44 24 08 00 00 00 	mov    DWORD PTR [esp+0x8],0x0
c0105dfb:	00 
c0105dfc:	c7 44 24 04 00 00 00 	mov    DWORD PTR [esp+0x4],0x0
c0105e03:	00 
c0105e04:	c7 04 24 00 00 00 00 	mov    DWORD PTR [esp],0x0
c0105e0b:	e8 54 27 00 00       	call   c0108564 <rgb>
c0105e10:	89 03                	mov    DWORD PTR [ebx],eax
c0105e12:	83 45 f4 01          	add    DWORD PTR [ebp-0xc],0x1
c0105e16:	a1 40 8e 10 c0       	mov    eax,ds:0xc0108e40
c0105e1b:	83 e8 01             	sub    eax,0x1
c0105e1e:	3b 45 f4             	cmp    eax,DWORD PTR [ebp-0xc]
c0105e21:	7f b9                	jg     c0105ddc <win_roll_screen+0x88>
c0105e23:	83 45 f0 01          	add    DWORD PTR [ebp-0x10],0x1
c0105e27:	a1 44 8e 10 c0       	mov    eax,ds:0xc0108e44
c0105e2c:	83 e8 01             	sub    eax,0x1
c0105e2f:	3b 45 f0             	cmp    eax,DWORD PTR [ebp-0x10]
c0105e32:	7f 9f                	jg     c0105dd3 <win_roll_screen+0x7f>
c0105e34:	8b 0d 44 8e 10 c0    	mov    ecx,DWORD PTR ds:0xc0108e44
c0105e3a:	8b 15 40 8e 10 c0    	mov    edx,DWORD PTR ds:0xc0108e40
c0105e40:	a1 1c 33 11 c0       	mov    eax,ds:0xc011331c
c0105e45:	89 4c 24 10          	mov    DWORD PTR [esp+0x10],ecx
c0105e49:	89 54 24 0c          	mov    DWORD PTR [esp+0xc],edx
c0105e4d:	c7 44 24 08 00 00 00 	mov    DWORD PTR [esp+0x8],0x0
c0105e54:	00 
c0105e55:	c7 44 24 04 00 00 00 	mov    DWORD PTR [esp+0x4],0x0
c0105e5c:	00 
c0105e5d:	89 04 24             	mov    DWORD PTR [esp],eax
c0105e60:	e8 d9 13 00 00       	call   c010723e <api_viewflush>
c0105e65:	83 c4 34             	add    esp,0x34
c0105e68:	5b                   	pop    ebx
c0105e69:	5d                   	pop    ebp
c0105e6a:	c3                   	ret    

c0105e6b <help>:
c0105e6b:	55                   	push   ebp
c0105e6c:	89 e5                	mov    ebp,esp
c0105e6e:	83 ec 18             	sub    esp,0x18
c0105e71:	c7 04 24 88 c8 10 c0 	mov    DWORD PTR [esp],0xc010c888
c0105e78:	e8 23 fb ff ff       	call   c01059a0 <print_str>
c0105e7d:	c7 04 24 9b c8 10 c0 	mov    DWORD PTR [esp],0xc010c89b
c0105e84:	e8 17 fb ff ff       	call   c01059a0 <print_str>
c0105e89:	c7 04 24 b4 c8 10 c0 	mov    DWORD PTR [esp],0xc010c8b4
c0105e90:	e8 0b fb ff ff       	call   c01059a0 <print_str>
c0105e95:	c9                   	leave  
c0105e96:	c3                   	ret    

c0105e97 <print_thread>:
c0105e97:	55                   	push   ebp
c0105e98:	89 e5                	mov    ebp,esp
c0105e9a:	81 ec b8 00 00 00    	sub    esp,0xb8
c0105ea0:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0105ea3:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
c0105ea6:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
c0105ea9:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0105eac:	8b 50 20             	mov    edx,DWORD PTR [eax+0x20]
c0105eaf:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0105eb2:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
c0105eb5:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
c0105eb8:	83 c1 0c             	add    ecx,0xc
c0105ebb:	89 54 24 10          	mov    DWORD PTR [esp+0x10],edx
c0105ebf:	89 44 24 0c          	mov    DWORD PTR [esp+0xc],eax
c0105ec3:	89 4c 24 08          	mov    DWORD PTR [esp+0x8],ecx
c0105ec7:	c7 44 24 04 d8 c8 10 	mov    DWORD PTR [esp+0x4],0xc010c8d8
c0105ece:	c0 
c0105ecf:	8d 85 74 ff ff ff    	lea    eax,[ebp-0x8c]
c0105ed5:	89 04 24             	mov    DWORD PTR [esp],eax
c0105ed8:	e8 73 23 00 00       	call   c0108250 <sprintf>
c0105edd:	8d 85 74 ff ff ff    	lea    eax,[ebp-0x8c]
c0105ee3:	89 04 24             	mov    DWORD PTR [esp],eax
c0105ee6:	e8 b5 fa ff ff       	call   c01059a0 <print_str>
c0105eeb:	b8 00 00 00 00       	mov    eax,0x0
c0105ef0:	c9                   	leave  
c0105ef1:	c3                   	ret    

c0105ef2 <ps>:
c0105ef2:	55                   	push   ebp
c0105ef3:	89 e5                	mov    ebp,esp
c0105ef5:	83 ec 18             	sub    esp,0x18
c0105ef8:	c7 04 24 e9 c8 10 c0 	mov    DWORD PTR [esp],0xc010c8e9
c0105eff:	e8 9c fa ff ff       	call   c01059a0 <print_str>
c0105f04:	c7 04 24 07 c9 10 c0 	mov    DWORD PTR [esp],0xc010c907
c0105f0b:	e8 90 fa ff ff       	call   c01059a0 <print_str>
c0105f10:	b8 97 5e 10 c0       	mov    eax,0xc0105e97
c0105f15:	c7 44 24 08 00 00 00 	mov    DWORD PTR [esp+0x8],0x0
c0105f1c:	00 
c0105f1d:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c0105f21:	c7 04 24 94 32 11 c0 	mov    DWORD PTR [esp],0xc0113294
c0105f28:	e8 e7 1a 00 00       	call   c0107a14 <list_traversal>
c0105f2d:	c9                   	leave  
c0105f2e:	c3                   	ret    
	...

c0105f30 <VIEW_task>:
c0105f30:	55                   	push   ebp
c0105f31:	89 e5                	mov    ebp,esp
c0105f33:	56                   	push   esi
c0105f34:	53                   	push   ebx
c0105f35:	81 ec 10 01 00 00    	sub    esp,0x110
c0105f3b:	e8 86 b7 ff ff       	call   c01016c6 <intr_disable>
c0105f40:	8d 85 54 ff ff ff    	lea    eax,[ebp-0xac]
c0105f46:	a3 24 33 11 c0       	mov    ds:0xc0113324,eax
c0105f4b:	b8 28 7c 00 c0       	mov    eax,0xc0007c28
c0105f50:	8b 00                	mov    eax,DWORD PTR [eax]
c0105f52:	89 c2                	mov    edx,eax
c0105f54:	b8 24 7c 00 c0       	mov    eax,0xc0007c24
c0105f59:	8b 00                	mov    eax,DWORD PTR [eax]
c0105f5b:	c7 44 24 10 00 04 00 	mov    DWORD PTR [esp+0x10],0x400
c0105f62:	00 
c0105f63:	89 54 24 0c          	mov    DWORD PTR [esp+0xc],edx
c0105f67:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
c0105f6b:	c7 44 24 04 00 00 00 	mov    DWORD PTR [esp+0x4],0xe0000000
c0105f72:	e0 
c0105f73:	8d 85 54 ff ff ff    	lea    eax,[ebp-0xac]
c0105f79:	89 04 24             	mov    DWORD PTR [esp],eax
c0105f7c:	e8 94 05 00 00       	call   c0106515 <VIEWctl_init>
c0105f81:	b8 24 7c 00 c0       	mov    eax,0xc0007c24
c0105f86:	8b 10                	mov    edx,DWORD PTR [eax]
c0105f88:	b8 28 7c 00 c0       	mov    eax,0xc0007c28
c0105f8d:	8b 00                	mov    eax,DWORD PTR [eax]
c0105f8f:	0f af c2             	imul   eax,edx
c0105f92:	c1 e0 02             	shl    eax,0x2
c0105f95:	89 04 24             	mov    DWORD PTR [esp],eax
c0105f98:	e8 1b b8 ff ff       	call   c01017b8 <kmalloc>
c0105f9d:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
c0105fa0:	e8 22 cf ff ff       	call   c0102ec7 <running_thread>
c0105fa5:	8b 48 08             	mov    ecx,DWORD PTR [eax+0x8]
c0105fa8:	b8 28 7c 00 c0       	mov    eax,0xc0007c28
c0105fad:	8b 00                	mov    eax,DWORD PTR [eax]
c0105faf:	89 c2                	mov    edx,eax
c0105fb1:	b8 24 7c 00 c0       	mov    eax,0xc0007c24
c0105fb6:	8b 00                	mov    eax,DWORD PTR [eax]
c0105fb8:	89 4c 24 0c          	mov    DWORD PTR [esp+0xc],ecx
c0105fbc:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
c0105fbf:	89 4c 24 08          	mov    DWORD PTR [esp+0x8],ecx
c0105fc3:	89 54 24 04          	mov    DWORD PTR [esp+0x4],edx
c0105fc7:	89 04 24             	mov    DWORD PTR [esp],eax
c0105fca:	e8 a9 05 00 00       	call   c0106578 <VIEWblock_init>
c0105fcf:	89 45 f0             	mov    DWORD PTR [ebp-0x10],eax
c0105fd2:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c0105fd5:	8b 40 1c             	mov    eax,DWORD PTR [eax+0x1c]
c0105fd8:	83 e8 01             	sub    eax,0x1
c0105fdb:	89 c6                	mov    esi,eax
c0105fdd:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c0105fe0:	8b 40 18             	mov    eax,DWORD PTR [eax+0x18]
c0105fe3:	83 e8 01             	sub    eax,0x1
c0105fe6:	89 c3                	mov    ebx,eax
c0105fe8:	c7 44 24 08 84 00 00 	mov    DWORD PTR [esp+0x8],0x84
c0105fef:	00 
c0105ff0:	c7 44 24 04 84 00 00 	mov    DWORD PTR [esp+0x4],0x84
c0105ff7:	00 
c0105ff8:	c7 04 24 00 00 00 00 	mov    DWORD PTR [esp],0x0
c0105fff:	e8 60 25 00 00       	call   c0108564 <rgb>
c0106004:	8b 55 f0             	mov    edx,DWORD PTR [ebp-0x10]
c0106007:	8b 52 18             	mov    edx,DWORD PTR [edx+0x18]
c010600a:	89 d1                	mov    ecx,edx
c010600c:	8b 55 f0             	mov    edx,DWORD PTR [ebp-0x10]
c010600f:	8b 52 08             	mov    edx,DWORD PTR [edx+0x8]
c0106012:	89 74 24 18          	mov    DWORD PTR [esp+0x18],esi
c0106016:	89 5c 24 14          	mov    DWORD PTR [esp+0x14],ebx
c010601a:	c7 44 24 10 00 00 00 	mov    DWORD PTR [esp+0x10],0x0
c0106021:	00 
c0106022:	c7 44 24 0c 00 00 00 	mov    DWORD PTR [esp+0xc],0x0
c0106029:	00 
c010602a:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
c010602e:	89 4c 24 04          	mov    DWORD PTR [esp+0x4],ecx
c0106032:	89 14 24             	mov    DWORD PTR [esp],edx
c0106035:	e8 f2 26 00 00       	call   c010872c <viewFill>
c010603a:	c7 44 24 08 ff 00 00 	mov    DWORD PTR [esp+0x8],0xff
c0106041:	00 
c0106042:	c7 44 24 04 ff 00 00 	mov    DWORD PTR [esp+0x4],0xff
c0106049:	00 
c010604a:	c7 04 24 ff 00 00 00 	mov    DWORD PTR [esp],0xff
c0106051:	e8 0e 25 00 00       	call   c0108564 <rgb>
c0106056:	ba 24 7c 00 c0       	mov    edx,0xc0007c24
c010605b:	8b 12                	mov    edx,DWORD PTR [edx]
c010605d:	89 d1                	mov    ecx,edx
c010605f:	8b 55 f0             	mov    edx,DWORD PTR [ebp-0x10]
c0106062:	8b 52 08             	mov    edx,DWORD PTR [edx+0x8]
c0106065:	c7 44 24 14 60 b7 10 	mov    DWORD PTR [esp+0x14],0xc010b760
c010606c:	c0 
c010606d:	89 44 24 10          	mov    DWORD PTR [esp+0x10],eax
c0106071:	c7 44 24 0c 0a 00 00 	mov    DWORD PTR [esp+0xc],0xa
c0106078:	00 
c0106079:	c7 44 24 08 14 00 00 	mov    DWORD PTR [esp+0x8],0x14
c0106080:	00 
c0106081:	89 4c 24 04          	mov    DWORD PTR [esp+0x4],ecx
c0106085:	89 14 24             	mov    DWORD PTR [esp],edx
c0106088:	e8 24 28 00 00       	call   c01088b1 <vput_str>
c010608d:	b8 08 7c 00 c0       	mov    eax,0xc0007c08
c0106092:	8b 00                	mov    eax,DWORD PTR [eax]
c0106094:	89 c3                	mov    ebx,eax
c0106096:	c1 eb 14             	shr    ebx,0x14
c0106099:	b8 28 7c 00 c0       	mov    eax,0xc0007c28
c010609e:	8b 08                	mov    ecx,DWORD PTR [eax]
c01060a0:	b8 24 7c 00 c0       	mov    eax,0xc0007c24
c01060a5:	8b 10                	mov    edx,DWORD PTR [eax]
c01060a7:	b8 18 7c 00 c0       	mov    eax,0xc0007c18
c01060ac:	8b 00                	mov    eax,DWORD PTR [eax]
c01060ae:	89 5c 24 14          	mov    DWORD PTR [esp+0x14],ebx
c01060b2:	89 4c 24 10          	mov    DWORD PTR [esp+0x10],ecx
c01060b6:	89 54 24 0c          	mov    DWORD PTR [esp+0xc],edx
c01060ba:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
c01060be:	c7 44 24 04 50 c9 10 	mov    DWORD PTR [esp+0x4],0xc010c950
c01060c5:	c0 
c01060c6:	8d 85 13 ff ff ff    	lea    eax,[ebp-0xed]
c01060cc:	89 04 24             	mov    DWORD PTR [esp],eax
c01060cf:	e8 7c 21 00 00       	call   c0108250 <sprintf>
c01060d4:	c7 44 24 08 ff 00 00 	mov    DWORD PTR [esp+0x8],0xff
c01060db:	00 
c01060dc:	c7 44 24 04 ff 00 00 	mov    DWORD PTR [esp+0x4],0xff
c01060e3:	00 
c01060e4:	c7 04 24 ff 00 00 00 	mov    DWORD PTR [esp],0xff
c01060eb:	e8 74 24 00 00       	call   c0108564 <rgb>
c01060f0:	ba 24 7c 00 c0       	mov    edx,0xc0007c24
c01060f5:	8b 12                	mov    edx,DWORD PTR [edx]
c01060f7:	89 d1                	mov    ecx,edx
c01060f9:	8b 55 f0             	mov    edx,DWORD PTR [ebp-0x10]
c01060fc:	8b 52 08             	mov    edx,DWORD PTR [edx+0x8]
c01060ff:	8d 9d 13 ff ff ff    	lea    ebx,[ebp-0xed]
c0106105:	89 5c 24 14          	mov    DWORD PTR [esp+0x14],ebx
c0106109:	89 44 24 10          	mov    DWORD PTR [esp+0x10],eax
c010610d:	c7 44 24 0c 1a 00 00 	mov    DWORD PTR [esp+0xc],0x1a
c0106114:	00 
c0106115:	c7 44 24 08 14 00 00 	mov    DWORD PTR [esp+0x8],0x14
c010611c:	00 
c010611d:	89 4c 24 04          	mov    DWORD PTR [esp+0x4],ecx
c0106121:	89 14 24             	mov    DWORD PTR [esp],edx
c0106124:	e8 88 27 00 00       	call   c01088b1 <vput_str>
c0106129:	8d 85 13 ff ff ff    	lea    eax,[ebp-0xed]
c010612f:	89 04 24             	mov    DWORD PTR [esp],eax
c0106132:	e8 aa d9 ff ff       	call   c0103ae1 <cpu_info>
c0106137:	c7 44 24 08 ff 00 00 	mov    DWORD PTR [esp+0x8],0xff
c010613e:	00 
c010613f:	c7 44 24 04 ff 00 00 	mov    DWORD PTR [esp+0x4],0xff
c0106146:	00 
c0106147:	c7 04 24 ff 00 00 00 	mov    DWORD PTR [esp],0xff
c010614e:	e8 11 24 00 00       	call   c0108564 <rgb>
c0106153:	ba 24 7c 00 c0       	mov    edx,0xc0007c24
c0106158:	8b 12                	mov    edx,DWORD PTR [edx]
c010615a:	89 d1                	mov    ecx,edx
c010615c:	8b 55 f0             	mov    edx,DWORD PTR [ebp-0x10]
c010615f:	8b 52 08             	mov    edx,DWORD PTR [edx+0x8]
c0106162:	8d 9d 13 ff ff ff    	lea    ebx,[ebp-0xed]
c0106168:	89 5c 24 14          	mov    DWORD PTR [esp+0x14],ebx
c010616c:	89 44 24 10          	mov    DWORD PTR [esp+0x10],eax
c0106170:	c7 44 24 0c 2a 00 00 	mov    DWORD PTR [esp+0xc],0x2a
c0106177:	00 
c0106178:	c7 44 24 08 14 00 00 	mov    DWORD PTR [esp+0x8],0x14
c010617f:	00 
c0106180:	89 4c 24 04          	mov    DWORD PTR [esp+0x4],ecx
c0106184:	89 14 24             	mov    DWORD PTR [esp],edx
c0106187:	e8 25 27 00 00       	call   c01088b1 <vput_str>
c010618c:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c010618f:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c0106193:	8d 85 54 ff ff ff    	lea    eax,[ebp-0xac]
c0106199:	89 04 24             	mov    DWORD PTR [esp],eax
c010619c:	e8 8c 04 00 00       	call   c010662d <VIEWInsert>
c01061a1:	c7 44 24 08 00 00 00 	mov    DWORD PTR [esp+0x8],0x0
c01061a8:	00 
c01061a9:	c7 44 24 04 00 00 00 	mov    DWORD PTR [esp+0x4],0x0
c01061b0:	00 
c01061b1:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c01061b4:	89 04 24             	mov    DWORD PTR [esp],eax
c01061b7:	e8 da 08 00 00       	call   c0106a96 <VIEWSlide>
c01061bc:	8d 45 b8             	lea    eax,[ebp-0x48]
c01061bf:	89 04 24             	mov    DWORD PTR [esp],eax
c01061c2:	e8 99 e5 ff ff       	call   c0104760 <resetmsg>
c01061c7:	c7 45 ec 01 00 00 00 	mov    DWORD PTR [ebp-0x14],0x1
c01061ce:	8d 45 b8             	lea    eax,[ebp-0x48]
c01061d1:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
c01061d5:	c7 44 24 04 00 00 00 	mov    DWORD PTR [esp+0x4],0x0
c01061dc:	00 
c01061dd:	c7 04 24 02 00 00 00 	mov    DWORD PTR [esp],0x2
c01061e4:	e8 4b e5 ff ff       	call   c0104734 <send_recv>
c01061e9:	8b 45 b8             	mov    eax,DWORD PTR [ebp-0x48]
c01061ec:	89 45 ec             	mov    DWORD PTR [ebp-0x14],eax
c01061ef:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c01061f2:	8b 40 10             	mov    eax,DWORD PTR [eax+0x10]
c01061f5:	85 c0                	test   eax,eax
c01061f7:	75 0a                	jne    c0106203 <VIEW_task+0x2d3>
c01061f9:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c01061fc:	8b 40 14             	mov    eax,DWORD PTR [eax+0x14]
c01061ff:	85 c0                	test   eax,eax
c0106201:	74 1b                	je     c010621e <VIEW_task+0x2ee>
c0106203:	c7 44 24 08 00 00 00 	mov    DWORD PTR [esp+0x8],0x0
c010620a:	00 
c010620b:	c7 44 24 04 00 00 00 	mov    DWORD PTR [esp+0x4],0x0
c0106212:	00 
c0106213:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c0106216:	89 04 24             	mov    DWORD PTR [esp],eax
c0106219:	e8 78 08 00 00       	call   c0106a96 <VIEWSlide>
c010621e:	8b 45 bc             	mov    eax,DWORD PTR [ebp-0x44]
c0106221:	83 f8 06             	cmp    eax,0x6
c0106224:	0f 87 e5 02 00 00    	ja     c010650f <VIEW_task+0x5df>
c010622a:	8b 04 85 84 c9 10 c0 	mov    eax,DWORD PTR [eax*4-0x3fef367c]
c0106231:	ff e0                	jmp    eax
c0106233:	8b 45 c0             	mov    eax,DWORD PTR [ebp-0x40]
c0106236:	89 85 70 ff ff ff    	mov    DWORD PTR [ebp-0x90],eax
c010623c:	8b 45 c4             	mov    eax,DWORD PTR [ebp-0x3c]
c010623f:	89 85 74 ff ff ff    	mov    DWORD PTR [ebp-0x8c],eax
c0106245:	8b 45 c8             	mov    eax,DWORD PTR [ebp-0x38]
c0106248:	89 85 78 ff ff ff    	mov    DWORD PTR [ebp-0x88],eax
c010624e:	8b 45 cc             	mov    eax,DWORD PTR [ebp-0x34]
c0106251:	89 85 7c ff ff ff    	mov    DWORD PTR [ebp-0x84],eax
c0106257:	8b 45 d0             	mov    eax,DWORD PTR [ebp-0x30]
c010625a:	89 45 80             	mov    DWORD PTR [ebp-0x80],eax
c010625d:	8b 45 d4             	mov    eax,DWORD PTR [ebp-0x2c]
c0106260:	89 45 84             	mov    DWORD PTR [ebp-0x7c],eax
c0106263:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
c0106266:	89 45 88             	mov    DWORD PTR [ebp-0x78],eax
c0106269:	8b 45 dc             	mov    eax,DWORD PTR [ebp-0x24]
c010626c:	89 45 8c             	mov    DWORD PTR [ebp-0x74],eax
c010626f:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
c0106272:	89 45 90             	mov    DWORD PTR [ebp-0x70],eax
c0106275:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
c0106278:	89 45 94             	mov    DWORD PTR [ebp-0x6c],eax
c010627b:	8b 4d 90             	mov    ecx,DWORD PTR [ebp-0x70]
c010627e:	8b 85 74 ff ff ff    	mov    eax,DWORD PTR [ebp-0x8c]
c0106284:	89 c2                	mov    edx,eax
c0106286:	8b 85 70 ff ff ff    	mov    eax,DWORD PTR [ebp-0x90]
c010628c:	8b 5d ec             	mov    ebx,DWORD PTR [ebp-0x14]
c010628f:	89 5c 24 0c          	mov    DWORD PTR [esp+0xc],ebx
c0106293:	89 4c 24 08          	mov    DWORD PTR [esp+0x8],ecx
c0106297:	89 54 24 04          	mov    DWORD PTR [esp+0x4],edx
c010629b:	89 04 24             	mov    DWORD PTR [esp],eax
c010629e:	e8 d5 02 00 00       	call   c0106578 <VIEWblock_init>
c01062a3:	89 45 e8             	mov    DWORD PTR [ebp-0x18],eax
c01062a6:	8b 45 e8             	mov    eax,DWORD PTR [ebp-0x18]
c01062a9:	8b 55 ec             	mov    edx,DWORD PTR [ebp-0x14]
c01062ac:	89 50 04             	mov    DWORD PTR [eax+0x4],edx
c01062af:	8b 45 e8             	mov    eax,DWORD PTR [ebp-0x18]
c01062b2:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c01062b6:	8d 85 54 ff ff ff    	lea    eax,[ebp-0xac]
c01062bc:	89 04 24             	mov    DWORD PTR [esp],eax
c01062bf:	e8 69 03 00 00       	call   c010662d <VIEWInsert>
c01062c4:	8b 45 e8             	mov    eax,DWORD PTR [ebp-0x18]
c01062c7:	89 45 c0             	mov    DWORD PTR [ebp-0x40],eax
c01062ca:	c7 45 e8 00 00 00 00 	mov    DWORD PTR [ebp-0x18],0x0
c01062d1:	8d 45 b8             	lea    eax,[ebp-0x48]
c01062d4:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
c01062d8:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
c01062db:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c01062df:	c7 04 24 01 00 00 00 	mov    DWORD PTR [esp],0x1
c01062e6:	e8 49 e4 ff ff       	call   c0104734 <send_recv>
c01062eb:	e9 20 02 00 00       	jmp    c0106510 <VIEW_task+0x5e0>
c01062f0:	8b 45 c0             	mov    eax,DWORD PTR [ebp-0x40]
c01062f3:	89 45 98             	mov    DWORD PTR [ebp-0x68],eax
c01062f6:	8b 45 c4             	mov    eax,DWORD PTR [ebp-0x3c]
c01062f9:	89 45 9c             	mov    DWORD PTR [ebp-0x64],eax
c01062fc:	8b 45 c8             	mov    eax,DWORD PTR [ebp-0x38]
c01062ff:	89 45 a0             	mov    DWORD PTR [ebp-0x60],eax
c0106302:	8b 45 cc             	mov    eax,DWORD PTR [ebp-0x34]
c0106305:	89 45 a4             	mov    DWORD PTR [ebp-0x5c],eax
c0106308:	8b 45 98             	mov    eax,DWORD PTR [ebp-0x68]
c010630b:	89 04 24             	mov    DWORD PTR [esp],eax
c010630e:	e8 f3 02 00 00       	call   c0106606 <VIEW_free>
c0106313:	8b 45 c0             	mov    eax,DWORD PTR [ebp-0x40]
c0106316:	89 85 70 ff ff ff    	mov    DWORD PTR [ebp-0x90],eax
c010631c:	8b 45 c4             	mov    eax,DWORD PTR [ebp-0x3c]
c010631f:	89 85 74 ff ff ff    	mov    DWORD PTR [ebp-0x8c],eax
c0106325:	8b 45 c8             	mov    eax,DWORD PTR [ebp-0x38]
c0106328:	89 85 78 ff ff ff    	mov    DWORD PTR [ebp-0x88],eax
c010632e:	8b 45 cc             	mov    eax,DWORD PTR [ebp-0x34]
c0106331:	89 85 7c ff ff ff    	mov    DWORD PTR [ebp-0x84],eax
c0106337:	8b 45 d0             	mov    eax,DWORD PTR [ebp-0x30]
c010633a:	89 45 80             	mov    DWORD PTR [ebp-0x80],eax
c010633d:	8b 45 d4             	mov    eax,DWORD PTR [ebp-0x2c]
c0106340:	89 45 84             	mov    DWORD PTR [ebp-0x7c],eax
c0106343:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
c0106346:	89 45 88             	mov    DWORD PTR [ebp-0x78],eax
c0106349:	8b 45 dc             	mov    eax,DWORD PTR [ebp-0x24]
c010634c:	89 45 8c             	mov    DWORD PTR [ebp-0x74],eax
c010634f:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
c0106352:	89 45 90             	mov    DWORD PTR [ebp-0x70],eax
c0106355:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
c0106358:	89 45 94             	mov    DWORD PTR [ebp-0x6c],eax
c010635b:	8b 85 7c ff ff ff    	mov    eax,DWORD PTR [ebp-0x84]
c0106361:	89 c6                	mov    esi,eax
c0106363:	8b 85 78 ff ff ff    	mov    eax,DWORD PTR [ebp-0x88]
c0106369:	89 c3                	mov    ebx,eax
c010636b:	8b 85 74 ff ff ff    	mov    eax,DWORD PTR [ebp-0x8c]
c0106371:	89 c1                	mov    ecx,eax
c0106373:	8b 85 70 ff ff ff    	mov    eax,DWORD PTR [ebp-0x90]
c0106379:	89 c2                	mov    edx,eax
c010637b:	8b 45 90             	mov    eax,DWORD PTR [ebp-0x70]
c010637e:	89 74 24 10          	mov    DWORD PTR [esp+0x10],esi
c0106382:	89 5c 24 0c          	mov    DWORD PTR [esp+0xc],ebx
c0106386:	89 4c 24 08          	mov    DWORD PTR [esp+0x8],ecx
c010638a:	89 54 24 04          	mov    DWORD PTR [esp+0x4],edx
c010638e:	89 04 24             	mov    DWORD PTR [esp],eax
c0106391:	e8 10 09 00 00       	call   c0106ca6 <VIEW_reflush>
c0106396:	8d 45 b8             	lea    eax,[ebp-0x48]
c0106399:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
c010639d:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
c01063a0:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c01063a4:	c7 04 24 01 00 00 00 	mov    DWORD PTR [esp],0x1
c01063ab:	e8 84 e3 ff ff       	call   c0104734 <send_recv>
c01063b0:	e9 5b 01 00 00       	jmp    c0106510 <VIEW_task+0x5e0>
c01063b5:	8b 45 c0             	mov    eax,DWORD PTR [ebp-0x40]
c01063b8:	89 85 70 ff ff ff    	mov    DWORD PTR [ebp-0x90],eax
c01063be:	8b 45 c4             	mov    eax,DWORD PTR [ebp-0x3c]
c01063c1:	89 85 74 ff ff ff    	mov    DWORD PTR [ebp-0x8c],eax
c01063c7:	8b 45 c8             	mov    eax,DWORD PTR [ebp-0x38]
c01063ca:	89 85 78 ff ff ff    	mov    DWORD PTR [ebp-0x88],eax
c01063d0:	8b 45 cc             	mov    eax,DWORD PTR [ebp-0x34]
c01063d3:	89 85 7c ff ff ff    	mov    DWORD PTR [ebp-0x84],eax
c01063d9:	8b 45 d0             	mov    eax,DWORD PTR [ebp-0x30]
c01063dc:	89 45 80             	mov    DWORD PTR [ebp-0x80],eax
c01063df:	8b 45 d4             	mov    eax,DWORD PTR [ebp-0x2c]
c01063e2:	89 45 84             	mov    DWORD PTR [ebp-0x7c],eax
c01063e5:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
c01063e8:	89 45 88             	mov    DWORD PTR [ebp-0x78],eax
c01063eb:	8b 45 dc             	mov    eax,DWORD PTR [ebp-0x24]
c01063ee:	89 45 8c             	mov    DWORD PTR [ebp-0x74],eax
c01063f1:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
c01063f4:	89 45 90             	mov    DWORD PTR [ebp-0x70],eax
c01063f7:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
c01063fa:	89 45 94             	mov    DWORD PTR [ebp-0x6c],eax
c01063fd:	8b 85 74 ff ff ff    	mov    eax,DWORD PTR [ebp-0x8c]
c0106403:	89 c1                	mov    ecx,eax
c0106405:	8b 85 70 ff ff ff    	mov    eax,DWORD PTR [ebp-0x90]
c010640b:	89 c2                	mov    edx,eax
c010640d:	8b 45 90             	mov    eax,DWORD PTR [ebp-0x70]
c0106410:	89 4c 24 08          	mov    DWORD PTR [esp+0x8],ecx
c0106414:	89 54 24 04          	mov    DWORD PTR [esp+0x4],edx
c0106418:	89 04 24             	mov    DWORD PTR [esp],eax
c010641b:	e8 76 06 00 00       	call   c0106a96 <VIEWSlide>
c0106420:	8d 45 b8             	lea    eax,[ebp-0x48]
c0106423:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
c0106427:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
c010642a:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c010642e:	c7 04 24 01 00 00 00 	mov    DWORD PTR [esp],0x1
c0106435:	e8 fa e2 ff ff       	call   c0104734 <send_recv>
c010643a:	e9 d1 00 00 00       	jmp    c0106510 <VIEW_task+0x5e0>
c010643f:	8b 45 c0             	mov    eax,DWORD PTR [ebp-0x40]
c0106442:	89 85 70 ff ff ff    	mov    DWORD PTR [ebp-0x90],eax
c0106448:	8b 45 c4             	mov    eax,DWORD PTR [ebp-0x3c]
c010644b:	89 85 74 ff ff ff    	mov    DWORD PTR [ebp-0x8c],eax
c0106451:	8b 45 c8             	mov    eax,DWORD PTR [ebp-0x38]
c0106454:	89 85 78 ff ff ff    	mov    DWORD PTR [ebp-0x88],eax
c010645a:	8b 45 cc             	mov    eax,DWORD PTR [ebp-0x34]
c010645d:	89 85 7c ff ff ff    	mov    DWORD PTR [ebp-0x84],eax
c0106463:	8b 45 d0             	mov    eax,DWORD PTR [ebp-0x30]
c0106466:	89 45 80             	mov    DWORD PTR [ebp-0x80],eax
c0106469:	8b 45 d4             	mov    eax,DWORD PTR [ebp-0x2c]
c010646c:	89 45 84             	mov    DWORD PTR [ebp-0x7c],eax
c010646f:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
c0106472:	89 45 88             	mov    DWORD PTR [ebp-0x78],eax
c0106475:	8b 45 dc             	mov    eax,DWORD PTR [ebp-0x24]
c0106478:	89 45 8c             	mov    DWORD PTR [ebp-0x74],eax
c010647b:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
c010647e:	89 45 90             	mov    DWORD PTR [ebp-0x70],eax
c0106481:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
c0106484:	89 45 94             	mov    DWORD PTR [ebp-0x6c],eax
c0106487:	8b 85 70 ff ff ff    	mov    eax,DWORD PTR [ebp-0x90]
c010648d:	89 c2                	mov    edx,eax
c010648f:	8b 45 90             	mov    eax,DWORD PTR [ebp-0x70]
c0106492:	89 54 24 04          	mov    DWORD PTR [esp+0x4],edx
c0106496:	89 04 24             	mov    DWORD PTR [esp],eax
c0106499:	e8 20 03 00 00       	call   c01067be <VIEWUpdown>
c010649e:	8d 45 b8             	lea    eax,[ebp-0x48]
c01064a1:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
c01064a5:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
c01064a8:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c01064ac:	c7 04 24 01 00 00 00 	mov    DWORD PTR [esp],0x1
c01064b3:	e8 7c e2 ff ff       	call   c0104734 <send_recv>
c01064b8:	eb 56                	jmp    c0106510 <VIEW_task+0x5e0>
c01064ba:	8b 45 c0             	mov    eax,DWORD PTR [ebp-0x40]
c01064bd:	89 45 a8             	mov    DWORD PTR [ebp-0x58],eax
c01064c0:	8b 45 c4             	mov    eax,DWORD PTR [ebp-0x3c]
c01064c3:	89 45 ac             	mov    DWORD PTR [ebp-0x54],eax
c01064c6:	8b 45 c8             	mov    eax,DWORD PTR [ebp-0x38]
c01064c9:	89 45 b0             	mov    DWORD PTR [ebp-0x50],eax
c01064cc:	8b 45 cc             	mov    eax,DWORD PTR [ebp-0x34]
c01064cf:	89 45 b4             	mov    DWORD PTR [ebp-0x4c],eax
c01064d2:	8b 85 6c ff ff ff    	mov    eax,DWORD PTR [ebp-0x94]
c01064d8:	8b 4d ac             	mov    ecx,DWORD PTR [ebp-0x54]
c01064db:	8b 95 64 ff ff ff    	mov    edx,DWORD PTR [ebp-0x9c]
c01064e1:	0f af ca             	imul   ecx,edx
c01064e4:	8b 55 a8             	mov    edx,DWORD PTR [ebp-0x58]
c01064e7:	01 ca                	add    edx,ecx
c01064e9:	c1 e2 02             	shl    edx,0x2
c01064ec:	01 d0                	add    eax,edx
c01064ee:	8b 00                	mov    eax,DWORD PTR [eax]
c01064f0:	89 45 c0             	mov    DWORD PTR [ebp-0x40],eax
c01064f3:	8d 45 b8             	lea    eax,[ebp-0x48]
c01064f6:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
c01064fa:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
c01064fd:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c0106501:	c7 04 24 01 00 00 00 	mov    DWORD PTR [esp],0x1
c0106508:	e8 27 e2 ff ff       	call   c0104734 <send_recv>
c010650d:	eb 01                	jmp    c0106510 <VIEW_task+0x5e0>
c010650f:	90                   	nop
c0106510:	e9 a7 fc ff ff       	jmp    c01061bc <VIEW_task+0x28c>

c0106515 <VIEWctl_init>:
c0106515:	55                   	push   ebp
c0106516:	89 e5                	mov    ebp,esp
c0106518:	83 ec 18             	sub    esp,0x18
c010651b:	8b 45 18             	mov    eax,DWORD PTR [ebp+0x18]
c010651e:	c1 e0 02             	shl    eax,0x2
c0106521:	89 04 24             	mov    DWORD PTR [esp],eax
c0106524:	e8 8f b2 ff ff       	call   c01017b8 <kmalloc>
c0106529:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c010652c:	89 02                	mov    DWORD PTR [edx],eax
c010652e:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106531:	8b 55 18             	mov    edx,DWORD PTR [ebp+0x18]
c0106534:	89 50 04             	mov    DWORD PTR [eax+0x4],edx
c0106537:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c010653a:	c7 40 08 00 00 00 00 	mov    DWORD PTR [eax+0x8],0x0
c0106541:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106544:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
c0106547:	89 50 0c             	mov    DWORD PTR [eax+0xc],edx
c010654a:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c010654d:	8b 55 10             	mov    edx,DWORD PTR [ebp+0x10]
c0106550:	89 50 10             	mov    DWORD PTR [eax+0x10],edx
c0106553:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106556:	8b 55 14             	mov    edx,DWORD PTR [ebp+0x14]
c0106559:	89 50 14             	mov    DWORD PTR [eax+0x14],edx
c010655c:	8b 55 10             	mov    edx,DWORD PTR [ebp+0x10]
c010655f:	8b 45 14             	mov    eax,DWORD PTR [ebp+0x14]
c0106562:	0f af c2             	imul   eax,edx
c0106565:	c1 e0 02             	shl    eax,0x2
c0106568:	89 04 24             	mov    DWORD PTR [esp],eax
c010656b:	e8 48 b2 ff ff       	call   c01017b8 <kmalloc>
c0106570:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c0106573:	89 42 18             	mov    DWORD PTR [edx+0x18],eax
c0106576:	c9                   	leave  
c0106577:	c3                   	ret    

c0106578 <VIEWblock_init>:
c0106578:	55                   	push   ebp
c0106579:	89 e5                	mov    ebp,esp
c010657b:	83 ec 28             	sub    esp,0x28
c010657e:	c7 04 24 20 00 00 00 	mov    DWORD PTR [esp],0x20
c0106585:	e8 2e b2 ff ff       	call   c01017b8 <kmalloc>
c010658a:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
c010658d:	83 7d f4 00          	cmp    DWORD PTR [ebp-0xc],0x0
c0106591:	75 07                	jne    c010659a <VIEWblock_init+0x22>
c0106593:	b8 00 00 00 00       	mov    eax,0x0
c0106598:	eb 6a                	jmp    c0106604 <VIEWblock_init+0x8c>
c010659a:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c010659d:	8b 55 10             	mov    edx,DWORD PTR [ebp+0x10]
c01065a0:	89 50 08             	mov    DWORD PTR [eax+0x8],edx
c01065a3:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c01065a6:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
c01065a9:	85 c0                	test   eax,eax
c01065ab:	75 12                	jne    c01065bf <VIEWblock_init+0x47>
c01065ad:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c01065b0:	89 04 24             	mov    DWORD PTR [esp],eax
c01065b3:	e8 3c b5 ff ff       	call   c0101af4 <kfree>
c01065b8:	b8 00 00 00 00       	mov    eax,0x0
c01065bd:	eb 45                	jmp    c0106604 <VIEWblock_init+0x8c>
c01065bf:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c01065c2:	c7 00 00 00 00 00    	mov    DWORD PTR [eax],0x0
c01065c8:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c01065cb:	c7 40 0c 00 00 00 00 	mov    DWORD PTR [eax+0xc],0x0
c01065d2:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c01065d5:	c7 40 10 00 00 00 00 	mov    DWORD PTR [eax+0x10],0x0
c01065dc:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c01065df:	c7 40 14 00 00 00 00 	mov    DWORD PTR [eax+0x14],0x0
c01065e6:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c01065e9:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c01065ec:	89 50 18             	mov    DWORD PTR [eax+0x18],edx
c01065ef:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
c01065f2:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c01065f5:	89 50 1c             	mov    DWORD PTR [eax+0x1c],edx
c01065f8:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c01065fb:	8b 55 14             	mov    edx,DWORD PTR [ebp+0x14]
c01065fe:	89 50 04             	mov    DWORD PTR [eax+0x4],edx
c0106601:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0106604:	c9                   	leave  
c0106605:	c3                   	ret    

c0106606 <VIEW_free>:
c0106606:	55                   	push   ebp
c0106607:	89 e5                	mov    ebp,esp
c0106609:	83 ec 18             	sub    esp,0x18
c010660c:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c010660f:	8b 00                	mov    eax,DWORD PTR [eax]
c0106611:	85 c0                	test   eax,eax
c0106613:	74 0b                	je     c0106620 <VIEW_free+0x1a>
c0106615:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106618:	89 04 24             	mov    DWORD PTR [esp],eax
c010661b:	e8 5d 00 00 00       	call   c010667d <VIEWRemove>
c0106620:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106623:	89 04 24             	mov    DWORD PTR [esp],eax
c0106626:	e8 c9 b4 ff ff       	call   c0101af4 <kfree>
c010662b:	c9                   	leave  
c010662c:	c3                   	ret    

c010662d <VIEWInsert>:
c010662d:	55                   	push   ebp
c010662e:	89 e5                	mov    ebp,esp
c0106630:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106633:	8b 50 08             	mov    edx,DWORD PTR [eax+0x8]
c0106636:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106639:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
c010663c:	83 e8 01             	sub    eax,0x1
c010663f:	39 c2                	cmp    edx,eax
c0106641:	7f 38                	jg     c010667b <VIEWInsert+0x4e>
c0106643:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c0106646:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c0106649:	89 10                	mov    DWORD PTR [eax],edx
c010664b:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c010664e:	8b 10                	mov    edx,DWORD PTR [eax]
c0106650:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106653:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
c0106656:	c1 e0 02             	shl    eax,0x2
c0106659:	01 c2                	add    edx,eax
c010665b:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c010665e:	89 02                	mov    DWORD PTR [edx],eax
c0106660:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106663:	8b 50 08             	mov    edx,DWORD PTR [eax+0x8]
c0106666:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c0106669:	89 50 0c             	mov    DWORD PTR [eax+0xc],edx
c010666c:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c010666f:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
c0106672:	8d 50 01             	lea    edx,[eax+0x1]
c0106675:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106678:	89 50 08             	mov    DWORD PTR [eax+0x8],edx
c010667b:	5d                   	pop    ebp
c010667c:	c3                   	ret    

c010667d <VIEWRemove>:
c010667d:	55                   	push   ebp
c010667e:	89 e5                	mov    ebp,esp
c0106680:	57                   	push   edi
c0106681:	56                   	push   esi
c0106682:	53                   	push   ebx
c0106683:	83 ec 3c             	sub    esp,0x3c
c0106686:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106689:	8b 40 0c             	mov    eax,DWORD PTR [eax+0xc]
c010668c:	89 45 e4             	mov    DWORD PTR [ebp-0x1c],eax
c010668f:	eb 40                	jmp    c01066d1 <VIEWRemove+0x54>
c0106691:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106694:	8b 00                	mov    eax,DWORD PTR [eax]
c0106696:	8b 00                	mov    eax,DWORD PTR [eax]
c0106698:	8b 55 e4             	mov    edx,DWORD PTR [ebp-0x1c]
c010669b:	c1 e2 02             	shl    edx,0x2
c010669e:	01 c2                	add    edx,eax
c01066a0:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01066a3:	8b 00                	mov    eax,DWORD PTR [eax]
c01066a5:	8b 00                	mov    eax,DWORD PTR [eax]
c01066a7:	8b 4d e4             	mov    ecx,DWORD PTR [ebp-0x1c]
c01066aa:	83 e9 01             	sub    ecx,0x1
c01066ad:	c1 e1 02             	shl    ecx,0x2
c01066b0:	01 c8                	add    eax,ecx
c01066b2:	8b 00                	mov    eax,DWORD PTR [eax]
c01066b4:	89 02                	mov    DWORD PTR [edx],eax
c01066b6:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01066b9:	8b 00                	mov    eax,DWORD PTR [eax]
c01066bb:	8b 00                	mov    eax,DWORD PTR [eax]
c01066bd:	8b 55 e4             	mov    edx,DWORD PTR [ebp-0x1c]
c01066c0:	c1 e2 02             	shl    edx,0x2
c01066c3:	01 d0                	add    eax,edx
c01066c5:	8b 00                	mov    eax,DWORD PTR [eax]
c01066c7:	8b 55 e4             	mov    edx,DWORD PTR [ebp-0x1c]
c01066ca:	89 50 0c             	mov    DWORD PTR [eax+0xc],edx
c01066cd:	83 45 e4 01          	add    DWORD PTR [ebp-0x1c],0x1
c01066d1:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01066d4:	8b 00                	mov    eax,DWORD PTR [eax]
c01066d6:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
c01066d9:	83 e8 01             	sub    eax,0x1
c01066dc:	3b 45 e4             	cmp    eax,DWORD PTR [ebp-0x1c]
c01066df:	7f b0                	jg     c0106691 <VIEWRemove+0x14>
c01066e1:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01066e4:	8b 00                	mov    eax,DWORD PTR [eax]
c01066e6:	8b 50 08             	mov    edx,DWORD PTR [eax+0x8]
c01066e9:	83 ea 01             	sub    edx,0x1
c01066ec:	89 50 08             	mov    DWORD PTR [eax+0x8],edx
c01066ef:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01066f2:	8b 40 14             	mov    eax,DWORD PTR [eax+0x14]
c01066f5:	89 c2                	mov    edx,eax
c01066f7:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01066fa:	8b 40 1c             	mov    eax,DWORD PTR [eax+0x1c]
c01066fd:	01 d0                	add    eax,edx
c01066ff:	89 c6                	mov    esi,eax
c0106701:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106704:	8b 40 10             	mov    eax,DWORD PTR [eax+0x10]
c0106707:	89 c2                	mov    edx,eax
c0106709:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c010670c:	8b 40 18             	mov    eax,DWORD PTR [eax+0x18]
c010670f:	01 d0                	add    eax,edx
c0106711:	89 c3                	mov    ebx,eax
c0106713:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106716:	8b 48 14             	mov    ecx,DWORD PTR [eax+0x14]
c0106719:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c010671c:	8b 50 10             	mov    edx,DWORD PTR [eax+0x10]
c010671f:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106722:	8b 00                	mov    eax,DWORD PTR [eax]
c0106724:	c7 44 24 14 00 00 00 	mov    DWORD PTR [esp+0x14],0x0
c010672b:	00 
c010672c:	89 74 24 10          	mov    DWORD PTR [esp+0x10],esi
c0106730:	89 5c 24 0c          	mov    DWORD PTR [esp+0xc],ebx
c0106734:	89 4c 24 08          	mov    DWORD PTR [esp+0x8],ecx
c0106738:	89 54 24 04          	mov    DWORD PTR [esp+0x4],edx
c010673c:	89 04 24             	mov    DWORD PTR [esp],eax
c010673f:	e8 19 08 00 00       	call   c0106f5d <VIEW_reflushmap>
c0106744:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106747:	8b 78 0c             	mov    edi,DWORD PTR [eax+0xc]
c010674a:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c010674d:	8b 40 14             	mov    eax,DWORD PTR [eax+0x14]
c0106750:	89 c2                	mov    edx,eax
c0106752:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106755:	8b 40 1c             	mov    eax,DWORD PTR [eax+0x1c]
c0106758:	01 d0                	add    eax,edx
c010675a:	89 c6                	mov    esi,eax
c010675c:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c010675f:	8b 40 10             	mov    eax,DWORD PTR [eax+0x10]
c0106762:	89 c2                	mov    edx,eax
c0106764:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106767:	8b 40 18             	mov    eax,DWORD PTR [eax+0x18]
c010676a:	01 d0                	add    eax,edx
c010676c:	89 c3                	mov    ebx,eax
c010676e:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106771:	8b 48 14             	mov    ecx,DWORD PTR [eax+0x14]
c0106774:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106777:	8b 50 10             	mov    edx,DWORD PTR [eax+0x10]
c010677a:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c010677d:	8b 00                	mov    eax,DWORD PTR [eax]
c010677f:	89 7c 24 18          	mov    DWORD PTR [esp+0x18],edi
c0106783:	c7 44 24 14 00 00 00 	mov    DWORD PTR [esp+0x14],0x0
c010678a:	00 
c010678b:	89 74 24 10          	mov    DWORD PTR [esp+0x10],esi
c010678f:	89 5c 24 0c          	mov    DWORD PTR [esp+0xc],ebx
c0106793:	89 4c 24 08          	mov    DWORD PTR [esp+0x8],ecx
c0106797:	89 54 24 04          	mov    DWORD PTR [esp+0x4],edx
c010679b:	89 04 24             	mov    DWORD PTR [esp],eax
c010679e:	e8 b7 05 00 00       	call   c0106d5a <VIEW_reflushsub>
c01067a3:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01067a6:	c7 40 0c 00 00 00 00 	mov    DWORD PTR [eax+0xc],0x0
c01067ad:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01067b0:	c7 00 00 00 00 00    	mov    DWORD PTR [eax],0x0
c01067b6:	83 c4 3c             	add    esp,0x3c
c01067b9:	5b                   	pop    ebx
c01067ba:	5e                   	pop    esi
c01067bb:	5f                   	pop    edi
c01067bc:	5d                   	pop    ebp
c01067bd:	c3                   	ret    

c01067be <VIEWUpdown>:
c01067be:	55                   	push   ebp
c01067bf:	89 e5                	mov    ebp,esp
c01067c1:	57                   	push   edi
c01067c2:	56                   	push   esi
c01067c3:	53                   	push   ebx
c01067c4:	83 ec 3c             	sub    esp,0x3c
c01067c7:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01067ca:	8b 00                	mov    eax,DWORD PTR [eax]
c01067cc:	89 45 e0             	mov    DWORD PTR [ebp-0x20],eax
c01067cf:	83 7d e0 00          	cmp    DWORD PTR [ebp-0x20],0x0
c01067d3:	0f 84 b1 02 00 00    	je     c0106a8a <VIEWUpdown+0x2cc>
c01067d9:	a1 24 33 11 c0       	mov    eax,ds:0xc0113324
c01067de:	39 45 e0             	cmp    DWORD PTR [ebp-0x20],eax
c01067e1:	74 2c                	je     c010680f <VIEWUpdown+0x51>
c01067e3:	c7 44 24 10 a0 c9 10 	mov    DWORD PTR [esp+0x10],0xc010c9a0
c01067ea:	c0 
c01067eb:	c7 44 24 0c 13 ca 10 	mov    DWORD PTR [esp+0xc],0xc010ca13
c01067f2:	c0 
c01067f3:	c7 44 24 08 cb 00 00 	mov    DWORD PTR [esp+0x8],0xcb
c01067fa:	00 
c01067fb:	c7 44 24 04 ac c9 10 	mov    DWORD PTR [esp+0x4],0xc010c9ac
c0106802:	c0 
c0106803:	c7 04 24 ac c9 10 c0 	mov    DWORD PTR [esp],0xc010c9ac
c010680a:	e8 95 a0 ff ff       	call   c01008a4 <panic_spin>
c010680f:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106812:	8b 40 0c             	mov    eax,DWORD PTR [eax+0xc]
c0106815:	89 45 dc             	mov    DWORD PTR [ebp-0x24],eax
c0106818:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
c010681b:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
c010681e:	83 e8 01             	sub    eax,0x1
c0106821:	3b 45 0c             	cmp    eax,DWORD PTR [ebp+0xc]
c0106824:	7d 0c                	jge    c0106832 <VIEWUpdown+0x74>
c0106826:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
c0106829:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
c010682c:	83 e8 01             	sub    eax,0x1
c010682f:	89 45 0c             	mov    DWORD PTR [ebp+0xc],eax
c0106832:	83 7d 0c 00          	cmp    DWORD PTR [ebp+0xc],0x0
c0106836:	79 07                	jns    c010683f <VIEWUpdown+0x81>
c0106838:	c7 45 0c 00 00 00 00 	mov    DWORD PTR [ebp+0xc],0x0
c010683f:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106842:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
c0106845:	89 50 0c             	mov    DWORD PTR [eax+0xc],edx
c0106848:	8b 45 dc             	mov    eax,DWORD PTR [ebp-0x24]
c010684b:	3b 45 0c             	cmp    eax,DWORD PTR [ebp+0xc]
c010684e:	0f 8e 18 01 00 00    	jle    c010696c <VIEWUpdown+0x1ae>
c0106854:	8b 45 dc             	mov    eax,DWORD PTR [ebp-0x24]
c0106857:	89 45 e4             	mov    DWORD PTR [ebp-0x1c],eax
c010685a:	eb 3a                	jmp    c0106896 <VIEWUpdown+0xd8>
c010685c:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
c010685f:	8b 00                	mov    eax,DWORD PTR [eax]
c0106861:	8b 55 e4             	mov    edx,DWORD PTR [ebp-0x1c]
c0106864:	c1 e2 02             	shl    edx,0x2
c0106867:	01 c2                	add    edx,eax
c0106869:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
c010686c:	8b 00                	mov    eax,DWORD PTR [eax]
c010686e:	8b 4d e4             	mov    ecx,DWORD PTR [ebp-0x1c]
c0106871:	83 e9 01             	sub    ecx,0x1
c0106874:	c1 e1 02             	shl    ecx,0x2
c0106877:	01 c8                	add    eax,ecx
c0106879:	8b 00                	mov    eax,DWORD PTR [eax]
c010687b:	89 02                	mov    DWORD PTR [edx],eax
c010687d:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
c0106880:	8b 00                	mov    eax,DWORD PTR [eax]
c0106882:	8b 55 e4             	mov    edx,DWORD PTR [ebp-0x1c]
c0106885:	c1 e2 02             	shl    edx,0x2
c0106888:	01 d0                	add    eax,edx
c010688a:	8b 00                	mov    eax,DWORD PTR [eax]
c010688c:	8b 55 e4             	mov    edx,DWORD PTR [ebp-0x1c]
c010688f:	89 50 0c             	mov    DWORD PTR [eax+0xc],edx
c0106892:	83 6d e4 01          	sub    DWORD PTR [ebp-0x1c],0x1
c0106896:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
c0106899:	3b 45 0c             	cmp    eax,DWORD PTR [ebp+0xc]
c010689c:	7f be                	jg     c010685c <VIEWUpdown+0x9e>
c010689e:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
c01068a1:	8b 00                	mov    eax,DWORD PTR [eax]
c01068a3:	8b 55 e4             	mov    edx,DWORD PTR [ebp-0x1c]
c01068a6:	c1 e2 02             	shl    edx,0x2
c01068a9:	01 c2                	add    edx,eax
c01068ab:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01068ae:	89 02                	mov    DWORD PTR [edx],eax
c01068b0:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01068b3:	8b 40 0c             	mov    eax,DWORD PTR [eax+0xc]
c01068b6:	8d 70 01             	lea    esi,[eax+0x1]
c01068b9:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01068bc:	8b 40 14             	mov    eax,DWORD PTR [eax+0x14]
c01068bf:	89 c2                	mov    edx,eax
c01068c1:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01068c4:	8b 40 1c             	mov    eax,DWORD PTR [eax+0x1c]
c01068c7:	01 d0                	add    eax,edx
c01068c9:	89 c3                	mov    ebx,eax
c01068cb:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01068ce:	8b 40 10             	mov    eax,DWORD PTR [eax+0x10]
c01068d1:	89 c2                	mov    edx,eax
c01068d3:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01068d6:	8b 40 18             	mov    eax,DWORD PTR [eax+0x18]
c01068d9:	01 d0                	add    eax,edx
c01068db:	89 c1                	mov    ecx,eax
c01068dd:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01068e0:	8b 50 14             	mov    edx,DWORD PTR [eax+0x14]
c01068e3:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01068e6:	8b 40 10             	mov    eax,DWORD PTR [eax+0x10]
c01068e9:	89 74 24 14          	mov    DWORD PTR [esp+0x14],esi
c01068ed:	89 5c 24 10          	mov    DWORD PTR [esp+0x10],ebx
c01068f1:	89 4c 24 0c          	mov    DWORD PTR [esp+0xc],ecx
c01068f5:	89 54 24 08          	mov    DWORD PTR [esp+0x8],edx
c01068f9:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c01068fd:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
c0106900:	89 04 24             	mov    DWORD PTR [esp],eax
c0106903:	e8 55 06 00 00       	call   c0106f5d <VIEW_reflushmap>
c0106908:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c010690b:	8b 40 0c             	mov    eax,DWORD PTR [eax+0xc]
c010690e:	8d 78 01             	lea    edi,[eax+0x1]
c0106911:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106914:	8b 40 14             	mov    eax,DWORD PTR [eax+0x14]
c0106917:	89 c2                	mov    edx,eax
c0106919:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c010691c:	8b 40 1c             	mov    eax,DWORD PTR [eax+0x1c]
c010691f:	01 d0                	add    eax,edx
c0106921:	89 c3                	mov    ebx,eax
c0106923:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106926:	8b 40 10             	mov    eax,DWORD PTR [eax+0x10]
c0106929:	89 c2                	mov    edx,eax
c010692b:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c010692e:	8b 40 18             	mov    eax,DWORD PTR [eax+0x18]
c0106931:	01 d0                	add    eax,edx
c0106933:	89 c1                	mov    ecx,eax
c0106935:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106938:	8b 50 14             	mov    edx,DWORD PTR [eax+0x14]
c010693b:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c010693e:	8b 40 10             	mov    eax,DWORD PTR [eax+0x10]
c0106941:	8b 75 dc             	mov    esi,DWORD PTR [ebp-0x24]
c0106944:	89 74 24 18          	mov    DWORD PTR [esp+0x18],esi
c0106948:	89 7c 24 14          	mov    DWORD PTR [esp+0x14],edi
c010694c:	89 5c 24 10          	mov    DWORD PTR [esp+0x10],ebx
c0106950:	89 4c 24 0c          	mov    DWORD PTR [esp+0xc],ecx
c0106954:	89 54 24 08          	mov    DWORD PTR [esp+0x8],edx
c0106958:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c010695c:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
c010695f:	89 04 24             	mov    DWORD PTR [esp],eax
c0106962:	e8 f3 03 00 00       	call   c0106d5a <VIEW_reflushsub>
c0106967:	e9 21 01 00 00       	jmp    c0106a8d <VIEWUpdown+0x2cf>
c010696c:	8b 45 dc             	mov    eax,DWORD PTR [ebp-0x24]
c010696f:	3b 45 0c             	cmp    eax,DWORD PTR [ebp+0xc]
c0106972:	0f 8d 15 01 00 00    	jge    c0106a8d <VIEWUpdown+0x2cf>
c0106978:	8b 45 dc             	mov    eax,DWORD PTR [ebp-0x24]
c010697b:	89 45 e4             	mov    DWORD PTR [ebp-0x1c],eax
c010697e:	eb 3a                	jmp    c01069ba <VIEWUpdown+0x1fc>
c0106980:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
c0106983:	8b 00                	mov    eax,DWORD PTR [eax]
c0106985:	8b 55 e4             	mov    edx,DWORD PTR [ebp-0x1c]
c0106988:	c1 e2 02             	shl    edx,0x2
c010698b:	01 c2                	add    edx,eax
c010698d:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
c0106990:	8b 00                	mov    eax,DWORD PTR [eax]
c0106992:	8b 4d e4             	mov    ecx,DWORD PTR [ebp-0x1c]
c0106995:	83 c1 01             	add    ecx,0x1
c0106998:	c1 e1 02             	shl    ecx,0x2
c010699b:	01 c8                	add    eax,ecx
c010699d:	8b 00                	mov    eax,DWORD PTR [eax]
c010699f:	89 02                	mov    DWORD PTR [edx],eax
c01069a1:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
c01069a4:	8b 00                	mov    eax,DWORD PTR [eax]
c01069a6:	8b 55 e4             	mov    edx,DWORD PTR [ebp-0x1c]
c01069a9:	c1 e2 02             	shl    edx,0x2
c01069ac:	01 d0                	add    eax,edx
c01069ae:	8b 00                	mov    eax,DWORD PTR [eax]
c01069b0:	8b 55 e4             	mov    edx,DWORD PTR [ebp-0x1c]
c01069b3:	89 50 0c             	mov    DWORD PTR [eax+0xc],edx
c01069b6:	83 45 e4 01          	add    DWORD PTR [ebp-0x1c],0x1
c01069ba:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
c01069bd:	3b 45 0c             	cmp    eax,DWORD PTR [ebp+0xc]
c01069c0:	7c be                	jl     c0106980 <VIEWUpdown+0x1c2>
c01069c2:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
c01069c5:	8b 00                	mov    eax,DWORD PTR [eax]
c01069c7:	8b 55 e4             	mov    edx,DWORD PTR [ebp-0x1c]
c01069ca:	c1 e2 02             	shl    edx,0x2
c01069cd:	01 c2                	add    edx,eax
c01069cf:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01069d2:	89 02                	mov    DWORD PTR [edx],eax
c01069d4:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01069d7:	8b 70 0c             	mov    esi,DWORD PTR [eax+0xc]
c01069da:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01069dd:	8b 40 14             	mov    eax,DWORD PTR [eax+0x14]
c01069e0:	89 c2                	mov    edx,eax
c01069e2:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01069e5:	8b 40 1c             	mov    eax,DWORD PTR [eax+0x1c]
c01069e8:	01 d0                	add    eax,edx
c01069ea:	89 c3                	mov    ebx,eax
c01069ec:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01069ef:	8b 40 10             	mov    eax,DWORD PTR [eax+0x10]
c01069f2:	89 c2                	mov    edx,eax
c01069f4:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01069f7:	8b 40 18             	mov    eax,DWORD PTR [eax+0x18]
c01069fa:	01 d0                	add    eax,edx
c01069fc:	89 c1                	mov    ecx,eax
c01069fe:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106a01:	8b 50 14             	mov    edx,DWORD PTR [eax+0x14]
c0106a04:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106a07:	8b 40 10             	mov    eax,DWORD PTR [eax+0x10]
c0106a0a:	89 74 24 14          	mov    DWORD PTR [esp+0x14],esi
c0106a0e:	89 5c 24 10          	mov    DWORD PTR [esp+0x10],ebx
c0106a12:	89 4c 24 0c          	mov    DWORD PTR [esp+0xc],ecx
c0106a16:	89 54 24 08          	mov    DWORD PTR [esp+0x8],edx
c0106a1a:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c0106a1e:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
c0106a21:	89 04 24             	mov    DWORD PTR [esp],eax
c0106a24:	e8 34 05 00 00       	call   c0106f5d <VIEW_reflushmap>
c0106a29:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106a2c:	8b 78 0c             	mov    edi,DWORD PTR [eax+0xc]
c0106a2f:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106a32:	8b 70 0c             	mov    esi,DWORD PTR [eax+0xc]
c0106a35:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106a38:	8b 40 14             	mov    eax,DWORD PTR [eax+0x14]
c0106a3b:	89 c2                	mov    edx,eax
c0106a3d:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106a40:	8b 40 1c             	mov    eax,DWORD PTR [eax+0x1c]
c0106a43:	01 d0                	add    eax,edx
c0106a45:	89 c3                	mov    ebx,eax
c0106a47:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106a4a:	8b 40 10             	mov    eax,DWORD PTR [eax+0x10]
c0106a4d:	89 c2                	mov    edx,eax
c0106a4f:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106a52:	8b 40 18             	mov    eax,DWORD PTR [eax+0x18]
c0106a55:	01 d0                	add    eax,edx
c0106a57:	89 c1                	mov    ecx,eax
c0106a59:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106a5c:	8b 50 14             	mov    edx,DWORD PTR [eax+0x14]
c0106a5f:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106a62:	8b 40 10             	mov    eax,DWORD PTR [eax+0x10]
c0106a65:	89 7c 24 18          	mov    DWORD PTR [esp+0x18],edi
c0106a69:	89 74 24 14          	mov    DWORD PTR [esp+0x14],esi
c0106a6d:	89 5c 24 10          	mov    DWORD PTR [esp+0x10],ebx
c0106a71:	89 4c 24 0c          	mov    DWORD PTR [esp+0xc],ecx
c0106a75:	89 54 24 08          	mov    DWORD PTR [esp+0x8],edx
c0106a79:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c0106a7d:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
c0106a80:	89 04 24             	mov    DWORD PTR [esp],eax
c0106a83:	e8 d2 02 00 00       	call   c0106d5a <VIEW_reflushsub>
c0106a88:	eb 03                	jmp    c0106a8d <VIEWUpdown+0x2cf>
c0106a8a:	90                   	nop
c0106a8b:	eb 01                	jmp    c0106a8e <VIEWUpdown+0x2d0>
c0106a8d:	90                   	nop
c0106a8e:	83 c4 3c             	add    esp,0x3c
c0106a91:	5b                   	pop    ebx
c0106a92:	5e                   	pop    esi
c0106a93:	5f                   	pop    edi
c0106a94:	5d                   	pop    ebp
c0106a95:	c3                   	ret    

c0106a96 <VIEWSlide>:
c0106a96:	55                   	push   ebp
c0106a97:	89 e5                	mov    ebp,esp
c0106a99:	57                   	push   edi
c0106a9a:	56                   	push   esi
c0106a9b:	53                   	push   ebx
c0106a9c:	83 ec 4c             	sub    esp,0x4c
c0106a9f:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106aa2:	8b 40 10             	mov    eax,DWORD PTR [eax+0x10]
c0106aa5:	89 45 e4             	mov    DWORD PTR [ebp-0x1c],eax
c0106aa8:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106aab:	8b 40 14             	mov    eax,DWORD PTR [eax+0x14]
c0106aae:	89 45 e0             	mov    DWORD PTR [ebp-0x20],eax
c0106ab1:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106ab4:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
c0106ab7:	89 50 10             	mov    DWORD PTR [eax+0x10],edx
c0106aba:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106abd:	8b 55 10             	mov    edx,DWORD PTR [ebp+0x10]
c0106ac0:	89 50 14             	mov    DWORD PTR [eax+0x14],edx
c0106ac3:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106ac6:	8b 00                	mov    eax,DWORD PTR [eax]
c0106ac8:	85 c0                	test   eax,eax
c0106aca:	75 2c                	jne    c0106af8 <VIEWSlide+0x62>
c0106acc:	c7 44 24 10 b8 c9 10 	mov    DWORD PTR [esp+0x10],0xc010c9b8
c0106ad3:	c0 
c0106ad4:	c7 44 24 0c 09 ca 10 	mov    DWORD PTR [esp+0xc],0xc010ca09
c0106adb:	c0 
c0106adc:	c7 44 24 08 fd 00 00 	mov    DWORD PTR [esp+0x8],0xfd
c0106ae3:	00 
c0106ae4:	c7 44 24 04 ac c9 10 	mov    DWORD PTR [esp+0x4],0xc010c9ac
c0106aeb:	c0 
c0106aec:	c7 04 24 ac c9 10 c0 	mov    DWORD PTR [esp],0xc010c9ac
c0106af3:	e8 ac 9d ff ff       	call   c01008a4 <panic_spin>
c0106af8:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106afb:	8b 00                	mov    eax,DWORD PTR [eax]
c0106afd:	85 c0                	test   eax,eax
c0106aff:	0f 84 98 01 00 00    	je     c0106c9d <VIEWSlide+0x207>
c0106b05:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106b08:	8b 10                	mov    edx,DWORD PTR [eax]
c0106b0a:	a1 24 33 11 c0       	mov    eax,ds:0xc0113324
c0106b0f:	39 c2                	cmp    edx,eax
c0106b11:	74 2c                	je     c0106b3f <VIEWSlide+0xa9>
c0106b13:	c7 44 24 10 ca c9 10 	mov    DWORD PTR [esp+0x10],0xc010c9ca
c0106b1a:	c0 
c0106b1b:	c7 44 24 0c 09 ca 10 	mov    DWORD PTR [esp+0xc],0xc010ca09
c0106b22:	c0 
c0106b23:	c7 44 24 08 02 01 00 	mov    DWORD PTR [esp+0x8],0x102
c0106b2a:	00 
c0106b2b:	c7 44 24 04 ac c9 10 	mov    DWORD PTR [esp+0x4],0xc010c9ac
c0106b32:	c0 
c0106b33:	c7 04 24 ac c9 10 c0 	mov    DWORD PTR [esp],0xc010c9ac
c0106b3a:	e8 65 9d ff ff       	call   c01008a4 <panic_spin>
c0106b3f:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106b42:	8b 50 1c             	mov    edx,DWORD PTR [eax+0x1c]
c0106b45:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
c0106b48:	01 d0                	add    eax,edx
c0106b4a:	89 c1                	mov    ecx,eax
c0106b4c:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106b4f:	8b 50 18             	mov    edx,DWORD PTR [eax+0x18]
c0106b52:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
c0106b55:	01 d0                	add    eax,edx
c0106b57:	89 c2                	mov    edx,eax
c0106b59:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106b5c:	8b 00                	mov    eax,DWORD PTR [eax]
c0106b5e:	c7 44 24 14 00 00 00 	mov    DWORD PTR [esp+0x14],0x0
c0106b65:	00 
c0106b66:	89 4c 24 10          	mov    DWORD PTR [esp+0x10],ecx
c0106b6a:	89 54 24 0c          	mov    DWORD PTR [esp+0xc],edx
c0106b6e:	8b 55 e0             	mov    edx,DWORD PTR [ebp-0x20]
c0106b71:	89 54 24 08          	mov    DWORD PTR [esp+0x8],edx
c0106b75:	8b 55 e4             	mov    edx,DWORD PTR [ebp-0x1c]
c0106b78:	89 54 24 04          	mov    DWORD PTR [esp+0x4],edx
c0106b7c:	89 04 24             	mov    DWORD PTR [esp],eax
c0106b7f:	e8 d9 03 00 00       	call   c0106f5d <VIEW_reflushmap>
c0106b84:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106b87:	8b 78 0c             	mov    edi,DWORD PTR [eax+0xc]
c0106b8a:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106b8d:	8b 40 14             	mov    eax,DWORD PTR [eax+0x14]
c0106b90:	89 c2                	mov    edx,eax
c0106b92:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106b95:	8b 40 1c             	mov    eax,DWORD PTR [eax+0x1c]
c0106b98:	01 d0                	add    eax,edx
c0106b9a:	89 c6                	mov    esi,eax
c0106b9c:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106b9f:	8b 40 10             	mov    eax,DWORD PTR [eax+0x10]
c0106ba2:	89 c2                	mov    edx,eax
c0106ba4:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106ba7:	8b 40 18             	mov    eax,DWORD PTR [eax+0x18]
c0106baa:	01 d0                	add    eax,edx
c0106bac:	89 c3                	mov    ebx,eax
c0106bae:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106bb1:	8b 48 14             	mov    ecx,DWORD PTR [eax+0x14]
c0106bb4:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106bb7:	8b 50 10             	mov    edx,DWORD PTR [eax+0x10]
c0106bba:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106bbd:	8b 00                	mov    eax,DWORD PTR [eax]
c0106bbf:	89 7c 24 14          	mov    DWORD PTR [esp+0x14],edi
c0106bc3:	89 74 24 10          	mov    DWORD PTR [esp+0x10],esi
c0106bc7:	89 5c 24 0c          	mov    DWORD PTR [esp+0xc],ebx
c0106bcb:	89 4c 24 08          	mov    DWORD PTR [esp+0x8],ecx
c0106bcf:	89 54 24 04          	mov    DWORD PTR [esp+0x4],edx
c0106bd3:	89 04 24             	mov    DWORD PTR [esp],eax
c0106bd6:	e8 82 03 00 00       	call   c0106f5d <VIEW_reflushmap>
c0106bdb:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106bde:	8b 40 0c             	mov    eax,DWORD PTR [eax+0xc]
c0106be1:	8d 58 ff             	lea    ebx,[eax-0x1]
c0106be4:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106be7:	8b 50 1c             	mov    edx,DWORD PTR [eax+0x1c]
c0106bea:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
c0106bed:	01 d0                	add    eax,edx
c0106bef:	89 c1                	mov    ecx,eax
c0106bf1:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106bf4:	8b 50 18             	mov    edx,DWORD PTR [eax+0x18]
c0106bf7:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
c0106bfa:	01 d0                	add    eax,edx
c0106bfc:	89 c2                	mov    edx,eax
c0106bfe:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106c01:	8b 00                	mov    eax,DWORD PTR [eax]
c0106c03:	89 5c 24 18          	mov    DWORD PTR [esp+0x18],ebx
c0106c07:	c7 44 24 14 00 00 00 	mov    DWORD PTR [esp+0x14],0x0
c0106c0e:	00 
c0106c0f:	89 4c 24 10          	mov    DWORD PTR [esp+0x10],ecx
c0106c13:	89 54 24 0c          	mov    DWORD PTR [esp+0xc],edx
c0106c17:	8b 55 e0             	mov    edx,DWORD PTR [ebp-0x20]
c0106c1a:	89 54 24 08          	mov    DWORD PTR [esp+0x8],edx
c0106c1e:	8b 55 e4             	mov    edx,DWORD PTR [ebp-0x1c]
c0106c21:	89 54 24 04          	mov    DWORD PTR [esp+0x4],edx
c0106c25:	89 04 24             	mov    DWORD PTR [esp],eax
c0106c28:	e8 2d 01 00 00       	call   c0106d5a <VIEW_reflushsub>
c0106c2d:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106c30:	8b 40 0c             	mov    eax,DWORD PTR [eax+0xc]
c0106c33:	89 45 d4             	mov    DWORD PTR [ebp-0x2c],eax
c0106c36:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106c39:	8b 78 0c             	mov    edi,DWORD PTR [eax+0xc]
c0106c3c:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106c3f:	8b 40 14             	mov    eax,DWORD PTR [eax+0x14]
c0106c42:	89 c2                	mov    edx,eax
c0106c44:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106c47:	8b 40 1c             	mov    eax,DWORD PTR [eax+0x1c]
c0106c4a:	01 d0                	add    eax,edx
c0106c4c:	89 c6                	mov    esi,eax
c0106c4e:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106c51:	8b 40 10             	mov    eax,DWORD PTR [eax+0x10]
c0106c54:	89 c2                	mov    edx,eax
c0106c56:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106c59:	8b 40 18             	mov    eax,DWORD PTR [eax+0x18]
c0106c5c:	01 d0                	add    eax,edx
c0106c5e:	89 c3                	mov    ebx,eax
c0106c60:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106c63:	8b 48 14             	mov    ecx,DWORD PTR [eax+0x14]
c0106c66:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106c69:	8b 50 10             	mov    edx,DWORD PTR [eax+0x10]
c0106c6c:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106c6f:	8b 00                	mov    eax,DWORD PTR [eax]
c0106c71:	89 45 d0             	mov    DWORD PTR [ebp-0x30],eax
c0106c74:	8b 45 d4             	mov    eax,DWORD PTR [ebp-0x2c]
c0106c77:	89 44 24 18          	mov    DWORD PTR [esp+0x18],eax
c0106c7b:	89 7c 24 14          	mov    DWORD PTR [esp+0x14],edi
c0106c7f:	89 74 24 10          	mov    DWORD PTR [esp+0x10],esi
c0106c83:	89 5c 24 0c          	mov    DWORD PTR [esp+0xc],ebx
c0106c87:	89 4c 24 08          	mov    DWORD PTR [esp+0x8],ecx
c0106c8b:	89 54 24 04          	mov    DWORD PTR [esp+0x4],edx
c0106c8f:	8b 45 d0             	mov    eax,DWORD PTR [ebp-0x30]
c0106c92:	89 04 24             	mov    DWORD PTR [esp],eax
c0106c95:	e8 c0 00 00 00       	call   c0106d5a <VIEW_reflushsub>
c0106c9a:	90                   	nop
c0106c9b:	eb 01                	jmp    c0106c9e <VIEWSlide+0x208>
c0106c9d:	90                   	nop
c0106c9e:	83 c4 4c             	add    esp,0x4c
c0106ca1:	5b                   	pop    ebx
c0106ca2:	5e                   	pop    esi
c0106ca3:	5f                   	pop    edi
c0106ca4:	5d                   	pop    ebp
c0106ca5:	c3                   	ret    

c0106ca6 <VIEW_reflush>:
c0106ca6:	55                   	push   ebp
c0106ca7:	89 e5                	mov    ebp,esp
c0106ca9:	57                   	push   edi
c0106caa:	56                   	push   esi
c0106cab:	53                   	push   ebx
c0106cac:	83 ec 3c             	sub    esp,0x3c
c0106caf:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106cb2:	8b 10                	mov    edx,DWORD PTR [eax]
c0106cb4:	a1 24 33 11 c0       	mov    eax,ds:0xc0113324
c0106cb9:	39 c2                	cmp    edx,eax
c0106cbb:	74 2c                	je     c0106ce9 <VIEW_reflush+0x43>
c0106cbd:	c7 44 24 10 ca c9 10 	mov    DWORD PTR [esp+0x10],0xc010c9ca
c0106cc4:	c0 
c0106cc5:	c7 44 24 0c fc c9 10 	mov    DWORD PTR [esp+0xc],0xc010c9fc
c0106ccc:	c0 
c0106ccd:	c7 44 24 08 0c 01 00 	mov    DWORD PTR [esp+0x8],0x10c
c0106cd4:	00 
c0106cd5:	c7 44 24 04 ac c9 10 	mov    DWORD PTR [esp+0x4],0xc010c9ac
c0106cdc:	c0 
c0106cdd:	c7 04 24 ac c9 10 c0 	mov    DWORD PTR [esp],0xc010c9ac
c0106ce4:	e8 bb 9b ff ff       	call   c01008a4 <panic_spin>
c0106ce9:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106cec:	8b 40 0c             	mov    eax,DWORD PTR [eax+0xc]
c0106cef:	89 45 e4             	mov    DWORD PTR [ebp-0x1c],eax
c0106cf2:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106cf5:	8b 78 0c             	mov    edi,DWORD PTR [eax+0xc]
c0106cf8:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106cfb:	8b 40 14             	mov    eax,DWORD PTR [eax+0x14]
c0106cfe:	89 c6                	mov    esi,eax
c0106d00:	03 75 18             	add    esi,DWORD PTR [ebp+0x18]
c0106d03:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106d06:	8b 40 10             	mov    eax,DWORD PTR [eax+0x10]
c0106d09:	89 c3                	mov    ebx,eax
c0106d0b:	03 5d 14             	add    ebx,DWORD PTR [ebp+0x14]
c0106d0e:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106d11:	8b 40 14             	mov    eax,DWORD PTR [eax+0x14]
c0106d14:	89 c1                	mov    ecx,eax
c0106d16:	03 4d 10             	add    ecx,DWORD PTR [ebp+0x10]
c0106d19:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106d1c:	8b 40 10             	mov    eax,DWORD PTR [eax+0x10]
c0106d1f:	89 c2                	mov    edx,eax
c0106d21:	03 55 0c             	add    edx,DWORD PTR [ebp+0xc]
c0106d24:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106d27:	8b 00                	mov    eax,DWORD PTR [eax]
c0106d29:	89 45 e0             	mov    DWORD PTR [ebp-0x20],eax
c0106d2c:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
c0106d2f:	89 44 24 18          	mov    DWORD PTR [esp+0x18],eax
c0106d33:	89 7c 24 14          	mov    DWORD PTR [esp+0x14],edi
c0106d37:	89 74 24 10          	mov    DWORD PTR [esp+0x10],esi
c0106d3b:	89 5c 24 0c          	mov    DWORD PTR [esp+0xc],ebx
c0106d3f:	89 4c 24 08          	mov    DWORD PTR [esp+0x8],ecx
c0106d43:	89 54 24 04          	mov    DWORD PTR [esp+0x4],edx
c0106d47:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
c0106d4a:	89 04 24             	mov    DWORD PTR [esp],eax
c0106d4d:	e8 08 00 00 00       	call   c0106d5a <VIEW_reflushsub>
c0106d52:	83 c4 3c             	add    esp,0x3c
c0106d55:	5b                   	pop    ebx
c0106d56:	5e                   	pop    esi
c0106d57:	5f                   	pop    edi
c0106d58:	5d                   	pop    ebp
c0106d59:	c3                   	ret    

c0106d5a <VIEW_reflushsub>:
c0106d5a:	55                   	push   ebp
c0106d5b:	89 e5                	mov    ebp,esp
c0106d5d:	53                   	push   ebx
c0106d5e:	83 ec 54             	sub    esp,0x54
c0106d61:	a1 24 33 11 c0       	mov    eax,ds:0xc0113324
c0106d66:	39 45 08             	cmp    DWORD PTR [ebp+0x8],eax
c0106d69:	74 2c                	je     c0106d97 <VIEW_reflushsub+0x3d>
c0106d6b:	c7 44 24 10 a0 c9 10 	mov    DWORD PTR [esp+0x10],0xc010c9a0
c0106d72:	c0 
c0106d73:	c7 44 24 0c ec c9 10 	mov    DWORD PTR [esp+0xc],0xc010c9ec
c0106d7a:	c0 
c0106d7b:	c7 44 24 08 1d 01 00 	mov    DWORD PTR [esp+0x8],0x11d
c0106d82:	00 
c0106d83:	c7 44 24 04 ac c9 10 	mov    DWORD PTR [esp+0x4],0xc010c9ac
c0106d8a:	c0 
c0106d8b:	c7 04 24 ac c9 10 c0 	mov    DWORD PTR [esp],0xc010c9ac
c0106d92:	e8 0d 9b ff ff       	call   c01008a4 <panic_spin>
c0106d97:	83 7d 0c 00          	cmp    DWORD PTR [ebp+0xc],0x0
c0106d9b:	79 07                	jns    c0106da4 <VIEW_reflushsub+0x4a>
c0106d9d:	c7 45 0c 00 00 00 00 	mov    DWORD PTR [ebp+0xc],0x0
c0106da4:	83 7d 10 00          	cmp    DWORD PTR [ebp+0x10],0x0
c0106da8:	79 07                	jns    c0106db1 <VIEW_reflushsub+0x57>
c0106daa:	c7 45 10 00 00 00 00 	mov    DWORD PTR [ebp+0x10],0x0
c0106db1:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106db4:	8b 40 10             	mov    eax,DWORD PTR [eax+0x10]
c0106db7:	3b 45 14             	cmp    eax,DWORD PTR [ebp+0x14]
c0106dba:	7d 09                	jge    c0106dc5 <VIEW_reflushsub+0x6b>
c0106dbc:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106dbf:	8b 40 10             	mov    eax,DWORD PTR [eax+0x10]
c0106dc2:	89 45 14             	mov    DWORD PTR [ebp+0x14],eax
c0106dc5:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106dc8:	8b 40 14             	mov    eax,DWORD PTR [eax+0x14]
c0106dcb:	3b 45 18             	cmp    eax,DWORD PTR [ebp+0x18]
c0106dce:	7d 09                	jge    c0106dd9 <VIEW_reflushsub+0x7f>
c0106dd0:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106dd3:	8b 40 14             	mov    eax,DWORD PTR [eax+0x14]
c0106dd6:	89 45 18             	mov    DWORD PTR [ebp+0x18],eax
c0106dd9:	8b 45 1c             	mov    eax,DWORD PTR [ebp+0x1c]
c0106ddc:	89 45 dc             	mov    DWORD PTR [ebp-0x24],eax
c0106ddf:	e9 67 01 00 00       	jmp    c0106f4b <VIEW_reflushsub+0x1f1>
c0106de4:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106de7:	8b 00                	mov    eax,DWORD PTR [eax]
c0106de9:	8b 55 dc             	mov    edx,DWORD PTR [ebp-0x24]
c0106dec:	c1 e2 02             	shl    edx,0x2
c0106def:	01 d0                	add    eax,edx
c0106df1:	8b 00                	mov    eax,DWORD PTR [eax]
c0106df3:	89 45 d8             	mov    DWORD PTR [ebp-0x28],eax
c0106df6:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
c0106df9:	8b 40 10             	mov    eax,DWORD PTR [eax+0x10]
c0106dfc:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
c0106dff:	89 d1                	mov    ecx,edx
c0106e01:	29 c1                	sub    ecx,eax
c0106e03:	89 c8                	mov    eax,ecx
c0106e05:	89 45 ec             	mov    DWORD PTR [ebp-0x14],eax
c0106e08:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
c0106e0b:	8b 40 14             	mov    eax,DWORD PTR [eax+0x14]
c0106e0e:	8b 55 10             	mov    edx,DWORD PTR [ebp+0x10]
c0106e11:	89 d1                	mov    ecx,edx
c0106e13:	29 c1                	sub    ecx,eax
c0106e15:	89 c8                	mov    eax,ecx
c0106e17:	89 45 e8             	mov    DWORD PTR [ebp-0x18],eax
c0106e1a:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
c0106e1d:	8b 40 10             	mov    eax,DWORD PTR [eax+0x10]
c0106e20:	8b 55 14             	mov    edx,DWORD PTR [ebp+0x14]
c0106e23:	89 d1                	mov    ecx,edx
c0106e25:	29 c1                	sub    ecx,eax
c0106e27:	89 c8                	mov    eax,ecx
c0106e29:	89 45 e4             	mov    DWORD PTR [ebp-0x1c],eax
c0106e2c:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
c0106e2f:	8b 40 14             	mov    eax,DWORD PTR [eax+0x14]
c0106e32:	8b 55 18             	mov    edx,DWORD PTR [ebp+0x18]
c0106e35:	89 d1                	mov    ecx,edx
c0106e37:	29 c1                	sub    ecx,eax
c0106e39:	89 c8                	mov    eax,ecx
c0106e3b:	89 45 e0             	mov    DWORD PTR [ebp-0x20],eax
c0106e3e:	83 7d ec 00          	cmp    DWORD PTR [ebp-0x14],0x0
c0106e42:	79 07                	jns    c0106e4b <VIEW_reflushsub+0xf1>
c0106e44:	c7 45 ec 00 00 00 00 	mov    DWORD PTR [ebp-0x14],0x0
c0106e4b:	83 7d e8 00          	cmp    DWORD PTR [ebp-0x18],0x0
c0106e4f:	79 07                	jns    c0106e58 <VIEW_reflushsub+0xfe>
c0106e51:	c7 45 e8 00 00 00 00 	mov    DWORD PTR [ebp-0x18],0x0
c0106e58:	8b 55 e4             	mov    edx,DWORD PTR [ebp-0x1c]
c0106e5b:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
c0106e5e:	8b 40 18             	mov    eax,DWORD PTR [eax+0x18]
c0106e61:	39 c2                	cmp    edx,eax
c0106e63:	76 09                	jbe    c0106e6e <VIEW_reflushsub+0x114>
c0106e65:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
c0106e68:	8b 40 18             	mov    eax,DWORD PTR [eax+0x18]
c0106e6b:	89 45 e4             	mov    DWORD PTR [ebp-0x1c],eax
c0106e6e:	8b 55 e0             	mov    edx,DWORD PTR [ebp-0x20]
c0106e71:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
c0106e74:	8b 40 1c             	mov    eax,DWORD PTR [eax+0x1c]
c0106e77:	39 c2                	cmp    edx,eax
c0106e79:	76 09                	jbe    c0106e84 <VIEW_reflushsub+0x12a>
c0106e7b:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
c0106e7e:	8b 40 1c             	mov    eax,DWORD PTR [eax+0x1c]
c0106e81:	89 45 e0             	mov    DWORD PTR [ebp-0x20],eax
c0106e84:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
c0106e87:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
c0106e8a:	89 04 24             	mov    DWORD PTR [esp],eax
c0106e8d:	e8 68 c5 ff ff       	call   c01033fa <pid2thread>
c0106e92:	89 04 24             	mov    DWORD PTR [esp],eax
c0106e95:	e8 20 c8 ff ff       	call   c01036ba <page_dir_activate>
c0106e9a:	8b 45 e8             	mov    eax,DWORD PTR [ebp-0x18]
c0106e9d:	89 45 f0             	mov    DWORD PTR [ebp-0x10],eax
c0106ea0:	e9 89 00 00 00       	jmp    c0106f2e <VIEW_reflushsub+0x1d4>
c0106ea5:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
c0106ea8:	8b 40 14             	mov    eax,DWORD PTR [eax+0x14]
c0106eab:	03 45 f0             	add    eax,DWORD PTR [ebp-0x10]
c0106eae:	89 45 d4             	mov    DWORD PTR [ebp-0x2c],eax
c0106eb1:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
c0106eb4:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
c0106eb7:	eb 69                	jmp    c0106f22 <VIEW_reflushsub+0x1c8>
c0106eb9:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
c0106ebc:	8b 40 10             	mov    eax,DWORD PTR [eax+0x10]
c0106ebf:	03 45 f4             	add    eax,DWORD PTR [ebp-0xc]
c0106ec2:	89 45 d0             	mov    DWORD PTR [ebp-0x30],eax
c0106ec5:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106ec8:	8b 50 18             	mov    edx,DWORD PTR [eax+0x18]
c0106ecb:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106ece:	8b 40 10             	mov    eax,DWORD PTR [eax+0x10]
c0106ed1:	0f af 45 d4          	imul   eax,DWORD PTR [ebp-0x2c]
c0106ed5:	03 45 d0             	add    eax,DWORD PTR [ebp-0x30]
c0106ed8:	c1 e0 02             	shl    eax,0x2
c0106edb:	01 d0                	add    eax,edx
c0106edd:	8b 10                	mov    edx,DWORD PTR [eax]
c0106edf:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
c0106ee2:	39 c2                	cmp    edx,eax
c0106ee4:	75 38                	jne    c0106f1e <VIEW_reflushsub+0x1c4>
c0106ee6:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106ee9:	8b 50 0c             	mov    edx,DWORD PTR [eax+0xc]
c0106eec:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106eef:	8b 40 10             	mov    eax,DWORD PTR [eax+0x10]
c0106ef2:	0f af 45 d4          	imul   eax,DWORD PTR [ebp-0x2c]
c0106ef6:	03 45 d0             	add    eax,DWORD PTR [ebp-0x30]
c0106ef9:	c1 e0 02             	shl    eax,0x2
c0106efc:	01 c2                	add    edx,eax
c0106efe:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
c0106f01:	8b 48 08             	mov    ecx,DWORD PTR [eax+0x8]
c0106f04:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
c0106f07:	8b 58 18             	mov    ebx,DWORD PTR [eax+0x18]
c0106f0a:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c0106f0d:	0f af d8             	imul   ebx,eax
c0106f10:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0106f13:	01 d8                	add    eax,ebx
c0106f15:	c1 e0 02             	shl    eax,0x2
c0106f18:	01 c8                	add    eax,ecx
c0106f1a:	8b 00                	mov    eax,DWORD PTR [eax]
c0106f1c:	89 02                	mov    DWORD PTR [edx],eax
c0106f1e:	83 45 f4 01          	add    DWORD PTR [ebp-0xc],0x1
c0106f22:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0106f25:	3b 45 e4             	cmp    eax,DWORD PTR [ebp-0x1c]
c0106f28:	7c 8f                	jl     c0106eb9 <VIEW_reflushsub+0x15f>
c0106f2a:	83 45 f0 01          	add    DWORD PTR [ebp-0x10],0x1
c0106f2e:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c0106f31:	3b 45 e0             	cmp    eax,DWORD PTR [ebp-0x20]
c0106f34:	0f 8c 6b ff ff ff    	jl     c0106ea5 <VIEW_reflushsub+0x14b>
c0106f3a:	e8 88 bf ff ff       	call   c0102ec7 <running_thread>
c0106f3f:	89 04 24             	mov    DWORD PTR [esp],eax
c0106f42:	e8 73 c7 ff ff       	call   c01036ba <page_dir_activate>
c0106f47:	83 45 dc 01          	add    DWORD PTR [ebp-0x24],0x1
c0106f4b:	8b 45 dc             	mov    eax,DWORD PTR [ebp-0x24]
c0106f4e:	3b 45 20             	cmp    eax,DWORD PTR [ebp+0x20]
c0106f51:	0f 8e 8d fe ff ff    	jle    c0106de4 <VIEW_reflushsub+0x8a>
c0106f57:	83 c4 54             	add    esp,0x54
c0106f5a:	5b                   	pop    ebx
c0106f5b:	5d                   	pop    ebp
c0106f5c:	c3                   	ret    

c0106f5d <VIEW_reflushmap>:
c0106f5d:	55                   	push   ebp
c0106f5e:	89 e5                	mov    ebp,esp
c0106f60:	83 ec 58             	sub    esp,0x58
c0106f63:	a1 24 33 11 c0       	mov    eax,ds:0xc0113324
c0106f68:	39 45 08             	cmp    DWORD PTR [ebp+0x8],eax
c0106f6b:	74 2c                	je     c0106f99 <VIEW_reflushmap+0x3c>
c0106f6d:	c7 44 24 10 a0 c9 10 	mov    DWORD PTR [esp+0x10],0xc010c9a0
c0106f74:	c0 
c0106f75:	c7 44 24 0c dc c9 10 	mov    DWORD PTR [esp+0xc],0xc010c9dc
c0106f7c:	c0 
c0106f7d:	c7 44 24 08 4c 01 00 	mov    DWORD PTR [esp+0x8],0x14c
c0106f84:	00 
c0106f85:	c7 44 24 04 ac c9 10 	mov    DWORD PTR [esp+0x4],0xc010c9ac
c0106f8c:	c0 
c0106f8d:	c7 04 24 ac c9 10 c0 	mov    DWORD PTR [esp],0xc010c9ac
c0106f94:	e8 0b 99 ff ff       	call   c01008a4 <panic_spin>
c0106f99:	83 7d 0c 00          	cmp    DWORD PTR [ebp+0xc],0x0
c0106f9d:	79 07                	jns    c0106fa6 <VIEW_reflushmap+0x49>
c0106f9f:	c7 45 0c 00 00 00 00 	mov    DWORD PTR [ebp+0xc],0x0
c0106fa6:	83 7d 10 00          	cmp    DWORD PTR [ebp+0x10],0x0
c0106faa:	79 07                	jns    c0106fb3 <VIEW_reflushmap+0x56>
c0106fac:	c7 45 10 00 00 00 00 	mov    DWORD PTR [ebp+0x10],0x0
c0106fb3:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106fb6:	8b 40 10             	mov    eax,DWORD PTR [eax+0x10]
c0106fb9:	3b 45 14             	cmp    eax,DWORD PTR [ebp+0x14]
c0106fbc:	7d 09                	jge    c0106fc7 <VIEW_reflushmap+0x6a>
c0106fbe:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106fc1:	8b 40 10             	mov    eax,DWORD PTR [eax+0x10]
c0106fc4:	89 45 14             	mov    DWORD PTR [ebp+0x14],eax
c0106fc7:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106fca:	8b 40 14             	mov    eax,DWORD PTR [eax+0x14]
c0106fcd:	3b 45 18             	cmp    eax,DWORD PTR [ebp+0x18]
c0106fd0:	7d 09                	jge    c0106fdb <VIEW_reflushmap+0x7e>
c0106fd2:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106fd5:	8b 40 14             	mov    eax,DWORD PTR [eax+0x14]
c0106fd8:	89 45 18             	mov    DWORD PTR [ebp+0x18],eax
c0106fdb:	8b 45 1c             	mov    eax,DWORD PTR [ebp+0x1c]
c0106fde:	89 45 dc             	mov    DWORD PTR [ebp-0x24],eax
c0106fe1:	e9 4e 01 00 00       	jmp    c0107134 <VIEW_reflushmap+0x1d7>
c0106fe6:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0106fe9:	8b 00                	mov    eax,DWORD PTR [eax]
c0106feb:	8b 55 dc             	mov    edx,DWORD PTR [ebp-0x24]
c0106fee:	c1 e2 02             	shl    edx,0x2
c0106ff1:	01 d0                	add    eax,edx
c0106ff3:	8b 00                	mov    eax,DWORD PTR [eax]
c0106ff5:	89 45 d8             	mov    DWORD PTR [ebp-0x28],eax
c0106ff8:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
c0106ffb:	8b 40 10             	mov    eax,DWORD PTR [eax+0x10]
c0106ffe:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
c0107001:	89 d1                	mov    ecx,edx
c0107003:	29 c1                	sub    ecx,eax
c0107005:	89 c8                	mov    eax,ecx
c0107007:	89 45 ec             	mov    DWORD PTR [ebp-0x14],eax
c010700a:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
c010700d:	8b 40 14             	mov    eax,DWORD PTR [eax+0x14]
c0107010:	8b 55 10             	mov    edx,DWORD PTR [ebp+0x10]
c0107013:	89 d1                	mov    ecx,edx
c0107015:	29 c1                	sub    ecx,eax
c0107017:	89 c8                	mov    eax,ecx
c0107019:	89 45 e8             	mov    DWORD PTR [ebp-0x18],eax
c010701c:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
c010701f:	8b 40 10             	mov    eax,DWORD PTR [eax+0x10]
c0107022:	8b 55 14             	mov    edx,DWORD PTR [ebp+0x14]
c0107025:	89 d1                	mov    ecx,edx
c0107027:	29 c1                	sub    ecx,eax
c0107029:	89 c8                	mov    eax,ecx
c010702b:	89 45 e4             	mov    DWORD PTR [ebp-0x1c],eax
c010702e:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
c0107031:	8b 40 14             	mov    eax,DWORD PTR [eax+0x14]
c0107034:	8b 55 18             	mov    edx,DWORD PTR [ebp+0x18]
c0107037:	89 d1                	mov    ecx,edx
c0107039:	29 c1                	sub    ecx,eax
c010703b:	89 c8                	mov    eax,ecx
c010703d:	89 45 e0             	mov    DWORD PTR [ebp-0x20],eax
c0107040:	83 7d ec 00          	cmp    DWORD PTR [ebp-0x14],0x0
c0107044:	79 07                	jns    c010704d <VIEW_reflushmap+0xf0>
c0107046:	c7 45 ec 00 00 00 00 	mov    DWORD PTR [ebp-0x14],0x0
c010704d:	83 7d e8 00          	cmp    DWORD PTR [ebp-0x18],0x0
c0107051:	79 07                	jns    c010705a <VIEW_reflushmap+0xfd>
c0107053:	c7 45 e8 00 00 00 00 	mov    DWORD PTR [ebp-0x18],0x0
c010705a:	8b 55 e4             	mov    edx,DWORD PTR [ebp-0x1c]
c010705d:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
c0107060:	8b 40 18             	mov    eax,DWORD PTR [eax+0x18]
c0107063:	39 c2                	cmp    edx,eax
c0107065:	76 09                	jbe    c0107070 <VIEW_reflushmap+0x113>
c0107067:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
c010706a:	8b 40 18             	mov    eax,DWORD PTR [eax+0x18]
c010706d:	89 45 e4             	mov    DWORD PTR [ebp-0x1c],eax
c0107070:	8b 55 e0             	mov    edx,DWORD PTR [ebp-0x20]
c0107073:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
c0107076:	8b 40 1c             	mov    eax,DWORD PTR [eax+0x1c]
c0107079:	39 c2                	cmp    edx,eax
c010707b:	76 09                	jbe    c0107086 <VIEW_reflushmap+0x129>
c010707d:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
c0107080:	8b 40 1c             	mov    eax,DWORD PTR [eax+0x1c]
c0107083:	89 45 e0             	mov    DWORD PTR [ebp-0x20],eax
c0107086:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
c0107089:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
c010708c:	89 04 24             	mov    DWORD PTR [esp],eax
c010708f:	e8 66 c3 ff ff       	call   c01033fa <pid2thread>
c0107094:	89 04 24             	mov    DWORD PTR [esp],eax
c0107097:	e8 1e c6 ff ff       	call   c01036ba <page_dir_activate>
c010709c:	8b 45 e8             	mov    eax,DWORD PTR [ebp-0x18]
c010709f:	89 45 f0             	mov    DWORD PTR [ebp-0x10],eax
c01070a2:	eb 77                	jmp    c010711b <VIEW_reflushmap+0x1be>
c01070a4:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
c01070a7:	8b 40 14             	mov    eax,DWORD PTR [eax+0x14]
c01070aa:	03 45 f0             	add    eax,DWORD PTR [ebp-0x10]
c01070ad:	89 45 d4             	mov    DWORD PTR [ebp-0x2c],eax
c01070b0:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
c01070b3:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
c01070b6:	eb 57                	jmp    c010710f <VIEW_reflushmap+0x1b2>
c01070b8:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
c01070bb:	8b 40 10             	mov    eax,DWORD PTR [eax+0x10]
c01070be:	03 45 f4             	add    eax,DWORD PTR [ebp-0xc]
c01070c1:	89 45 d0             	mov    DWORD PTR [ebp-0x30],eax
c01070c4:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
c01070c7:	8b 50 08             	mov    edx,DWORD PTR [eax+0x8]
c01070ca:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
c01070cd:	8b 48 18             	mov    ecx,DWORD PTR [eax+0x18]
c01070d0:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c01070d3:	0f af c8             	imul   ecx,eax
c01070d6:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c01070d9:	01 c8                	add    eax,ecx
c01070db:	c1 e0 02             	shl    eax,0x2
c01070de:	01 d0                	add    eax,edx
c01070e0:	8b 00                	mov    eax,DWORD PTR [eax]
c01070e2:	25 00 00 00 ff       	and    eax,0xff000000
c01070e7:	3d 00 00 00 ff       	cmp    eax,0xff000000
c01070ec:	74 1d                	je     c010710b <VIEW_reflushmap+0x1ae>
c01070ee:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01070f1:	8b 50 18             	mov    edx,DWORD PTR [eax+0x18]
c01070f4:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01070f7:	8b 40 10             	mov    eax,DWORD PTR [eax+0x10]
c01070fa:	0f af 45 d4          	imul   eax,DWORD PTR [ebp-0x2c]
c01070fe:	03 45 d0             	add    eax,DWORD PTR [ebp-0x30]
c0107101:	c1 e0 02             	shl    eax,0x2
c0107104:	01 c2                	add    edx,eax
c0107106:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
c0107109:	89 02                	mov    DWORD PTR [edx],eax
c010710b:	83 45 f4 01          	add    DWORD PTR [ebp-0xc],0x1
c010710f:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0107112:	3b 45 e4             	cmp    eax,DWORD PTR [ebp-0x1c]
c0107115:	7c a1                	jl     c01070b8 <VIEW_reflushmap+0x15b>
c0107117:	83 45 f0 01          	add    DWORD PTR [ebp-0x10],0x1
c010711b:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c010711e:	3b 45 e0             	cmp    eax,DWORD PTR [ebp-0x20]
c0107121:	7c 81                	jl     c01070a4 <VIEW_reflushmap+0x147>
c0107123:	e8 9f bd ff ff       	call   c0102ec7 <running_thread>
c0107128:	89 04 24             	mov    DWORD PTR [esp],eax
c010712b:	e8 8a c5 ff ff       	call   c01036ba <page_dir_activate>
c0107130:	83 45 dc 01          	add    DWORD PTR [ebp-0x24],0x1
c0107134:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0107137:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
c010713a:	3b 45 dc             	cmp    eax,DWORD PTR [ebp-0x24]
c010713d:	0f 8f a3 fe ff ff    	jg     c0106fe6 <VIEW_reflushmap+0x89>
c0107143:	c9                   	leave  
c0107144:	c3                   	ret    
c0107145:	00 00                	add    BYTE PTR [eax],al
	...

c0107148 <api_malloc>:
c0107148:	55                   	push   ebp
c0107149:	89 e5                	mov    ebp,esp
c010714b:	83 ec 48             	sub    esp,0x48
c010714e:	c7 45 cc 01 00 00 00 	mov    DWORD PTR [ebp-0x34],0x1
c0107155:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0107158:	89 45 d0             	mov    DWORD PTR [ebp-0x30],eax
c010715b:	90                   	nop
c010715c:	8d 45 c8             	lea    eax,[ebp-0x38]
c010715f:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
c0107163:	c7 44 24 04 03 00 00 	mov    DWORD PTR [esp+0x4],0x3
c010716a:	00 
c010716b:	c7 04 24 03 00 00 00 	mov    DWORD PTR [esp],0x3
c0107172:	e8 bd d5 ff ff       	call   c0104734 <send_recv>
c0107177:	83 f8 01             	cmp    eax,0x1
c010717a:	74 e0                	je     c010715c <api_malloc+0x14>
c010717c:	8b 45 d0             	mov    eax,DWORD PTR [ebp-0x30]
c010717f:	c9                   	leave  
c0107180:	c3                   	ret    

c0107181 <api_free>:
c0107181:	55                   	push   ebp
c0107182:	89 e5                	mov    ebp,esp
c0107184:	83 ec 48             	sub    esp,0x48
c0107187:	c7 45 cc 02 00 00 00 	mov    DWORD PTR [ebp-0x34],0x2
c010718e:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0107191:	89 45 d0             	mov    DWORD PTR [ebp-0x30],eax
c0107194:	8d 45 c8             	lea    eax,[ebp-0x38]
c0107197:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
c010719b:	c7 44 24 04 03 00 00 	mov    DWORD PTR [esp+0x4],0x3
c01071a2:	00 
c01071a3:	c7 04 24 03 00 00 00 	mov    DWORD PTR [esp],0x3
c01071aa:	e8 85 d5 ff ff       	call   c0104734 <send_recv>
c01071af:	c9                   	leave  
c01071b0:	c3                   	ret    

c01071b1 <api_mmcopy>:
c01071b1:	55                   	push   ebp
c01071b2:	89 e5                	mov    ebp,esp
c01071b4:	83 ec 48             	sub    esp,0x48
c01071b7:	c7 45 cc 03 00 00 00 	mov    DWORD PTR [ebp-0x34],0x3
c01071be:	8b 45 14             	mov    eax,DWORD PTR [ebp+0x14]
c01071c1:	89 45 d0             	mov    DWORD PTR [ebp-0x30],eax
c01071c4:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
c01071c7:	89 45 d4             	mov    DWORD PTR [ebp-0x2c],eax
c01071ca:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01071cd:	89 45 f0             	mov    DWORD PTR [ebp-0x10],eax
c01071d0:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c01071d3:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
c01071d6:	90                   	nop
c01071d7:	8d 45 c8             	lea    eax,[ebp-0x38]
c01071da:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
c01071de:	c7 44 24 04 03 00 00 	mov    DWORD PTR [esp+0x4],0x3
c01071e5:	00 
c01071e6:	c7 04 24 03 00 00 00 	mov    DWORD PTR [esp],0x3
c01071ed:	e8 42 d5 ff ff       	call   c0104734 <send_recv>
c01071f2:	83 f8 01             	cmp    eax,0x1
c01071f5:	74 e0                	je     c01071d7 <api_mmcopy+0x26>
c01071f7:	c9                   	leave  
c01071f8:	c3                   	ret    

c01071f9 <api_viewinit>:
c01071f9:	55                   	push   ebp
c01071fa:	89 e5                	mov    ebp,esp
c01071fc:	83 ec 48             	sub    esp,0x48
c01071ff:	c7 45 cc 01 00 00 00 	mov    DWORD PTR [ebp-0x34],0x1
c0107206:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0107209:	89 45 d0             	mov    DWORD PTR [ebp-0x30],eax
c010720c:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c010720f:	89 45 d4             	mov    DWORD PTR [ebp-0x2c],eax
c0107212:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
c0107215:	89 45 f0             	mov    DWORD PTR [ebp-0x10],eax
c0107218:	90                   	nop
c0107219:	8d 45 c8             	lea    eax,[ebp-0x38]
c010721c:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
c0107220:	c7 44 24 04 05 00 00 	mov    DWORD PTR [esp+0x4],0x5
c0107227:	00 
c0107228:	c7 04 24 03 00 00 00 	mov    DWORD PTR [esp],0x3
c010722f:	e8 00 d5 ff ff       	call   c0104734 <send_recv>
c0107234:	83 f8 01             	cmp    eax,0x1
c0107237:	74 e0                	je     c0107219 <api_viewinit+0x20>
c0107239:	8b 45 d0             	mov    eax,DWORD PTR [ebp-0x30]
c010723c:	c9                   	leave  
c010723d:	c3                   	ret    

c010723e <api_viewflush>:
c010723e:	55                   	push   ebp
c010723f:	89 e5                	mov    ebp,esp
c0107241:	83 ec 48             	sub    esp,0x48
c0107244:	c7 45 cc 03 00 00 00 	mov    DWORD PTR [ebp-0x34],0x3
c010724b:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c010724e:	89 45 d0             	mov    DWORD PTR [ebp-0x30],eax
c0107251:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
c0107254:	89 45 d4             	mov    DWORD PTR [ebp-0x2c],eax
c0107257:	8b 45 14             	mov    eax,DWORD PTR [ebp+0x14]
c010725a:	89 45 d8             	mov    DWORD PTR [ebp-0x28],eax
c010725d:	8b 45 18             	mov    eax,DWORD PTR [ebp+0x18]
c0107260:	89 45 dc             	mov    DWORD PTR [ebp-0x24],eax
c0107263:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0107266:	89 45 f0             	mov    DWORD PTR [ebp-0x10],eax
c0107269:	90                   	nop
c010726a:	8d 45 c8             	lea    eax,[ebp-0x38]
c010726d:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
c0107271:	c7 44 24 04 05 00 00 	mov    DWORD PTR [esp+0x4],0x5
c0107278:	00 
c0107279:	c7 04 24 03 00 00 00 	mov    DWORD PTR [esp],0x3
c0107280:	e8 af d4 ff ff       	call   c0104734 <send_recv>
c0107285:	83 f8 01             	cmp    eax,0x1
c0107288:	74 e0                	je     c010726a <api_viewflush+0x2c>
c010728a:	c9                   	leave  
c010728b:	c3                   	ret    

c010728c <api_viewslide>:
c010728c:	55                   	push   ebp
c010728d:	89 e5                	mov    ebp,esp
c010728f:	83 ec 48             	sub    esp,0x48
c0107292:	8d 45 c8             	lea    eax,[ebp-0x38]
c0107295:	89 04 24             	mov    DWORD PTR [esp],eax
c0107298:	e8 c3 d4 ff ff       	call   c0104760 <resetmsg>
c010729d:	c7 45 cc 04 00 00 00 	mov    DWORD PTR [ebp-0x34],0x4
c01072a4:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c01072a7:	89 45 d0             	mov    DWORD PTR [ebp-0x30],eax
c01072aa:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
c01072ad:	89 45 d4             	mov    DWORD PTR [ebp-0x2c],eax
c01072b0:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01072b3:	89 45 f0             	mov    DWORD PTR [ebp-0x10],eax
c01072b6:	90                   	nop
c01072b7:	8d 45 c8             	lea    eax,[ebp-0x38]
c01072ba:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
c01072be:	c7 44 24 04 05 00 00 	mov    DWORD PTR [esp+0x4],0x5
c01072c5:	00 
c01072c6:	c7 04 24 03 00 00 00 	mov    DWORD PTR [esp],0x3
c01072cd:	e8 62 d4 ff ff       	call   c0104734 <send_recv>
c01072d2:	83 f8 01             	cmp    eax,0x1
c01072d5:	74 e0                	je     c01072b7 <api_viewslide+0x2b>
c01072d7:	c9                   	leave  
c01072d8:	c3                   	ret    

c01072d9 <api_viewupdown>:
c01072d9:	55                   	push   ebp
c01072da:	89 e5                	mov    ebp,esp
c01072dc:	83 ec 48             	sub    esp,0x48
c01072df:	c7 45 cc 05 00 00 00 	mov    DWORD PTR [ebp-0x34],0x5
c01072e6:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c01072e9:	89 45 d0             	mov    DWORD PTR [ebp-0x30],eax
c01072ec:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01072ef:	89 45 f0             	mov    DWORD PTR [ebp-0x10],eax
c01072f2:	90                   	nop
c01072f3:	8d 45 c8             	lea    eax,[ebp-0x38]
c01072f6:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
c01072fa:	c7 44 24 04 05 00 00 	mov    DWORD PTR [esp+0x4],0x5
c0107301:	00 
c0107302:	c7 04 24 03 00 00 00 	mov    DWORD PTR [esp],0x3
c0107309:	e8 26 d4 ff ff       	call   c0104734 <send_recv>
c010730e:	83 f8 01             	cmp    eax,0x1
c0107311:	74 e0                	je     c01072f3 <api_viewupdown+0x1a>
c0107313:	c9                   	leave  
c0107314:	c3                   	ret    

c0107315 <api_getxyview>:
c0107315:	55                   	push   ebp
c0107316:	89 e5                	mov    ebp,esp
c0107318:	83 ec 48             	sub    esp,0x48
c010731b:	c7 45 cc 06 00 00 00 	mov    DWORD PTR [ebp-0x34],0x6
c0107322:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0107325:	89 45 d0             	mov    DWORD PTR [ebp-0x30],eax
c0107328:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c010732b:	89 45 d4             	mov    DWORD PTR [ebp-0x2c],eax
c010732e:	90                   	nop
c010732f:	8d 45 c8             	lea    eax,[ebp-0x38]
c0107332:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
c0107336:	c7 44 24 04 05 00 00 	mov    DWORD PTR [esp+0x4],0x5
c010733d:	00 
c010733e:	c7 04 24 03 00 00 00 	mov    DWORD PTR [esp],0x3
c0107345:	e8 ea d3 ff ff       	call   c0104734 <send_recv>
c010734a:	83 f8 01             	cmp    eax,0x1
c010734d:	74 e0                	je     c010732f <api_getxyview+0x1a>
c010734f:	8b 45 d0             	mov    eax,DWORD PTR [ebp-0x30]
c0107352:	c9                   	leave  
c0107353:	c3                   	ret    

c0107354 <api_makeWindow>:
c0107354:	55                   	push   ebp
c0107355:	89 e5                	mov    ebp,esp
c0107357:	57                   	push   edi
c0107358:	56                   	push   esi
c0107359:	53                   	push   ebx
c010735a:	83 ec 2c             	sub    esp,0x2c
c010735d:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c0107360:	8d 58 ff             	lea    ebx,[eax-0x1]
c0107363:	c7 44 24 08 c6 00 00 	mov    DWORD PTR [esp+0x8],0xc6
c010736a:	00 
c010736b:	c7 44 24 04 c6 00 00 	mov    DWORD PTR [esp+0x4],0xc6
c0107372:	00 
c0107373:	c7 04 24 c6 00 00 00 	mov    DWORD PTR [esp],0xc6
c010737a:	e8 e5 11 00 00       	call   c0108564 <rgb>
c010737f:	c7 44 24 18 00 00 00 	mov    DWORD PTR [esp+0x18],0x0
c0107386:	00 
c0107387:	89 5c 24 14          	mov    DWORD PTR [esp+0x14],ebx
c010738b:	c7 44 24 10 00 00 00 	mov    DWORD PTR [esp+0x10],0x0
c0107392:	00 
c0107393:	c7 44 24 0c 00 00 00 	mov    DWORD PTR [esp+0xc],0x0
c010739a:	00 
c010739b:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
c010739f:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c01073a2:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c01073a6:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01073a9:	89 04 24             	mov    DWORD PTR [esp],eax
c01073ac:	e8 7b 13 00 00       	call   c010872c <viewFill>
c01073b1:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
c01073b4:	8d 78 ff             	lea    edi,[eax-0x1]
c01073b7:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c01073ba:	8d 70 ff             	lea    esi,[eax-0x1]
c01073bd:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c01073c0:	8d 58 ff             	lea    ebx,[eax-0x1]
c01073c3:	c7 44 24 08 c6 00 00 	mov    DWORD PTR [esp+0x8],0xc6
c01073ca:	00 
c01073cb:	c7 44 24 04 c6 00 00 	mov    DWORD PTR [esp+0x4],0xc6
c01073d2:	00 
c01073d3:	c7 04 24 c6 00 00 00 	mov    DWORD PTR [esp],0xc6
c01073da:	e8 85 11 00 00       	call   c0108564 <rgb>
c01073df:	89 7c 24 18          	mov    DWORD PTR [esp+0x18],edi
c01073e3:	89 74 24 14          	mov    DWORD PTR [esp+0x14],esi
c01073e7:	c7 44 24 10 00 00 00 	mov    DWORD PTR [esp+0x10],0x0
c01073ee:	00 
c01073ef:	89 5c 24 0c          	mov    DWORD PTR [esp+0xc],ebx
c01073f3:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
c01073f7:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c01073fa:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c01073fe:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0107401:	89 04 24             	mov    DWORD PTR [esp],eax
c0107404:	e8 23 13 00 00       	call   c010872c <viewFill>
c0107409:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
c010740c:	8d 78 ff             	lea    edi,[eax-0x1]
c010740f:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c0107412:	8d 70 ff             	lea    esi,[eax-0x1]
c0107415:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
c0107418:	8d 58 ff             	lea    ebx,[eax-0x1]
c010741b:	c7 44 24 08 c6 00 00 	mov    DWORD PTR [esp+0x8],0xc6
c0107422:	00 
c0107423:	c7 44 24 04 c6 00 00 	mov    DWORD PTR [esp+0x4],0xc6
c010742a:	00 
c010742b:	c7 04 24 c6 00 00 00 	mov    DWORD PTR [esp],0xc6
c0107432:	e8 2d 11 00 00       	call   c0108564 <rgb>
c0107437:	89 7c 24 18          	mov    DWORD PTR [esp+0x18],edi
c010743b:	89 74 24 14          	mov    DWORD PTR [esp+0x14],esi
c010743f:	89 5c 24 10          	mov    DWORD PTR [esp+0x10],ebx
c0107443:	c7 44 24 0c 00 00 00 	mov    DWORD PTR [esp+0xc],0x0
c010744a:	00 
c010744b:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
c010744f:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c0107452:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c0107456:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0107459:	89 04 24             	mov    DWORD PTR [esp],eax
c010745c:	e8 cb 12 00 00       	call   c010872c <viewFill>
c0107461:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
c0107464:	8d 58 ff             	lea    ebx,[eax-0x1]
c0107467:	c7 44 24 08 c6 00 00 	mov    DWORD PTR [esp+0x8],0xc6
c010746e:	00 
c010746f:	c7 44 24 04 c6 00 00 	mov    DWORD PTR [esp+0x4],0xc6
c0107476:	00 
c0107477:	c7 04 24 c6 00 00 00 	mov    DWORD PTR [esp],0xc6
c010747e:	e8 e1 10 00 00       	call   c0108564 <rgb>
c0107483:	89 5c 24 18          	mov    DWORD PTR [esp+0x18],ebx
c0107487:	c7 44 24 14 00 00 00 	mov    DWORD PTR [esp+0x14],0x0
c010748e:	00 
c010748f:	c7 44 24 10 00 00 00 	mov    DWORD PTR [esp+0x10],0x0
c0107496:	00 
c0107497:	c7 44 24 0c 00 00 00 	mov    DWORD PTR [esp+0xc],0x0
c010749e:	00 
c010749f:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
c01074a3:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c01074a6:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c01074aa:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01074ad:	89 04 24             	mov    DWORD PTR [esp],eax
c01074b0:	e8 77 12 00 00       	call   c010872c <viewFill>
c01074b5:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c01074b8:	8d 58 e9             	lea    ebx,[eax-0x17]
c01074bb:	c7 44 24 08 ff 00 00 	mov    DWORD PTR [esp+0x8],0xff
c01074c2:	00 
c01074c3:	c7 44 24 04 00 00 00 	mov    DWORD PTR [esp+0x4],0x0
c01074ca:	00 
c01074cb:	c7 04 24 00 00 00 00 	mov    DWORD PTR [esp],0x0
c01074d2:	e8 8d 10 00 00       	call   c0108564 <rgb>
c01074d7:	c7 44 24 18 15 00 00 	mov    DWORD PTR [esp+0x18],0x15
c01074de:	00 
c01074df:	89 5c 24 14          	mov    DWORD PTR [esp+0x14],ebx
c01074e3:	c7 44 24 10 01 00 00 	mov    DWORD PTR [esp+0x10],0x1
c01074ea:	00 
c01074eb:	c7 44 24 0c 01 00 00 	mov    DWORD PTR [esp+0xc],0x1
c01074f2:	00 
c01074f3:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
c01074f7:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c01074fa:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c01074fe:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0107501:	89 04 24             	mov    DWORD PTR [esp],eax
c0107504:	e8 23 12 00 00       	call   c010872c <viewFill>
c0107509:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c010750c:	8d 70 ea             	lea    esi,[eax-0x16]
c010750f:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c0107512:	8d 58 ea             	lea    ebx,[eax-0x16]
c0107515:	c7 44 24 08 c6 00 00 	mov    DWORD PTR [esp+0x8],0xc6
c010751c:	00 
c010751d:	c7 44 24 04 c6 00 00 	mov    DWORD PTR [esp+0x4],0xc6
c0107524:	00 
c0107525:	c7 04 24 c6 00 00 00 	mov    DWORD PTR [esp],0xc6
c010752c:	e8 33 10 00 00       	call   c0108564 <rgb>
c0107531:	c7 44 24 18 15 00 00 	mov    DWORD PTR [esp+0x18],0x15
c0107538:	00 
c0107539:	89 74 24 14          	mov    DWORD PTR [esp+0x14],esi
c010753d:	c7 44 24 10 01 00 00 	mov    DWORD PTR [esp+0x10],0x1
c0107544:	00 
c0107545:	89 5c 24 0c          	mov    DWORD PTR [esp+0xc],ebx
c0107549:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
c010754d:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c0107550:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c0107554:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0107557:	89 04 24             	mov    DWORD PTR [esp],eax
c010755a:	e8 cd 11 00 00       	call   c010872c <viewFill>
c010755f:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c0107562:	8d 58 fe             	lea    ebx,[eax-0x2]
c0107565:	c7 44 24 08 c6 00 00 	mov    DWORD PTR [esp+0x8],0xc6
c010756c:	00 
c010756d:	c7 44 24 04 c6 00 00 	mov    DWORD PTR [esp+0x4],0xc6
c0107574:	00 
c0107575:	c7 04 24 c6 00 00 00 	mov    DWORD PTR [esp],0xc6
c010757c:	e8 e3 0f 00 00       	call   c0108564 <rgb>
c0107581:	c7 44 24 18 16 00 00 	mov    DWORD PTR [esp+0x18],0x16
c0107588:	00 
c0107589:	89 5c 24 14          	mov    DWORD PTR [esp+0x14],ebx
c010758d:	c7 44 24 10 16 00 00 	mov    DWORD PTR [esp+0x10],0x16
c0107594:	00 
c0107595:	c7 44 24 0c 01 00 00 	mov    DWORD PTR [esp+0xc],0x1
c010759c:	00 
c010759d:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
c01075a1:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c01075a4:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c01075a8:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01075ab:	89 04 24             	mov    DWORD PTR [esp],eax
c01075ae:	e8 79 11 00 00       	call   c010872c <viewFill>
c01075b3:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c01075b6:	8d 70 fe             	lea    esi,[eax-0x2]
c01075b9:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c01075bc:	8d 58 eb             	lea    ebx,[eax-0x15]
c01075bf:	c7 44 24 08 00 00 00 	mov    DWORD PTR [esp+0x8],0x0
c01075c6:	00 
c01075c7:	c7 44 24 04 00 00 00 	mov    DWORD PTR [esp+0x4],0x0
c01075ce:	00 
c01075cf:	c7 04 24 ff 00 00 00 	mov    DWORD PTR [esp],0xff
c01075d6:	e8 89 0f 00 00       	call   c0108564 <rgb>
c01075db:	c7 44 24 18 15 00 00 	mov    DWORD PTR [esp+0x18],0x15
c01075e2:	00 
c01075e3:	89 74 24 14          	mov    DWORD PTR [esp+0x14],esi
c01075e7:	c7 44 24 10 01 00 00 	mov    DWORD PTR [esp+0x10],0x1
c01075ee:	00 
c01075ef:	89 5c 24 0c          	mov    DWORD PTR [esp+0xc],ebx
c01075f3:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
c01075f7:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c01075fa:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c01075fe:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0107601:	89 04 24             	mov    DWORD PTR [esp],eax
c0107604:	e8 23 11 00 00       	call   c010872c <viewFill>
c0107609:	c7 44 24 08 ff 00 00 	mov    DWORD PTR [esp+0x8],0xff
c0107610:	00 
c0107611:	c7 44 24 04 ff 00 00 	mov    DWORD PTR [esp+0x4],0xff
c0107618:	00 
c0107619:	c7 04 24 ff 00 00 00 	mov    DWORD PTR [esp],0xff
c0107620:	e8 3f 0f 00 00       	call   c0108564 <rgb>
c0107625:	8b 55 14             	mov    edx,DWORD PTR [ebp+0x14]
c0107628:	89 54 24 14          	mov    DWORD PTR [esp+0x14],edx
c010762c:	89 44 24 10          	mov    DWORD PTR [esp+0x10],eax
c0107630:	c7 44 24 0c 02 00 00 	mov    DWORD PTR [esp+0xc],0x2
c0107637:	00 
c0107638:	c7 44 24 08 02 00 00 	mov    DWORD PTR [esp+0x8],0x2
c010763f:	00 
c0107640:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c0107643:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c0107647:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c010764a:	89 04 24             	mov    DWORD PTR [esp],eax
c010764d:	e8 5f 12 00 00       	call   c01088b1 <vput_str>
c0107652:	83 c4 2c             	add    esp,0x2c
c0107655:	5b                   	pop    ebx
c0107656:	5e                   	pop    esi
c0107657:	5f                   	pop    edi
c0107658:	5d                   	pop    ebp
c0107659:	c3                   	ret    
	...

c010765c <bitmap_init>:
c010765c:	55                   	push   ebp
c010765d:	89 e5                	mov    ebp,esp
c010765f:	83 ec 18             	sub    esp,0x18
c0107662:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0107665:	8b 10                	mov    edx,DWORD PTR [eax]
c0107667:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c010766a:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
c010766d:	89 54 24 08          	mov    DWORD PTR [esp+0x8],edx
c0107671:	c7 44 24 04 00 00 00 	mov    DWORD PTR [esp+0x4],0x0
c0107678:	00 
c0107679:	89 04 24             	mov    DWORD PTR [esp],eax
c010767c:	e8 63 09 00 00       	call   c0107fe4 <memset>
c0107681:	c9                   	leave  
c0107682:	c3                   	ret    

c0107683 <bitmap_scan_test>:
c0107683:	55                   	push   ebp
c0107684:	89 e5                	mov    ebp,esp
c0107686:	56                   	push   esi
c0107687:	53                   	push   ebx
c0107688:	83 ec 10             	sub    esp,0x10
c010768b:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c010768e:	c1 e8 03             	shr    eax,0x3
c0107691:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
c0107694:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c0107697:	83 e0 07             	and    eax,0x7
c010769a:	89 45 f0             	mov    DWORD PTR [ebp-0x10],eax
c010769d:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01076a0:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
c01076a3:	03 45 f4             	add    eax,DWORD PTR [ebp-0xc]
c01076a6:	0f b6 00             	movzx  eax,BYTE PTR [eax]
c01076a9:	0f b6 d0             	movzx  edx,al
c01076ac:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c01076af:	bb 01 00 00 00       	mov    ebx,0x1
c01076b4:	89 de                	mov    esi,ebx
c01076b6:	89 c1                	mov    ecx,eax
c01076b8:	d3 e6                	shl    esi,cl
c01076ba:	89 f0                	mov    eax,esi
c01076bc:	21 d0                	and    eax,edx
c01076be:	83 c4 10             	add    esp,0x10
c01076c1:	5b                   	pop    ebx
c01076c2:	5e                   	pop    esi
c01076c3:	5d                   	pop    ebp
c01076c4:	c3                   	ret    

c01076c5 <bitmap_alloc>:
c01076c5:	55                   	push   ebp
c01076c6:	89 e5                	mov    ebp,esp
c01076c8:	53                   	push   ebx
c01076c9:	83 ec 44             	sub    esp,0x44
c01076cc:	c7 45 f4 00 00 00 00 	mov    DWORD PTR [ebp-0xc],0x0
c01076d3:	eb 04                	jmp    c01076d9 <bitmap_alloc+0x14>
c01076d5:	83 45 f4 01          	add    DWORD PTR [ebp-0xc],0x1
c01076d9:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01076dc:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
c01076df:	03 45 f4             	add    eax,DWORD PTR [ebp-0xc]
c01076e2:	0f b6 00             	movzx  eax,BYTE PTR [eax]
c01076e5:	3c ff                	cmp    al,0xff
c01076e7:	75 0a                	jne    c01076f3 <bitmap_alloc+0x2e>
c01076e9:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01076ec:	8b 00                	mov    eax,DWORD PTR [eax]
c01076ee:	3b 45 f4             	cmp    eax,DWORD PTR [ebp-0xc]
c01076f1:	77 e2                	ja     c01076d5 <bitmap_alloc+0x10>
c01076f3:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01076f6:	8b 00                	mov    eax,DWORD PTR [eax]
c01076f8:	3b 45 f4             	cmp    eax,DWORD PTR [ebp-0xc]
c01076fb:	77 2c                	ja     c0107729 <bitmap_alloc+0x64>
c01076fd:	c7 44 24 10 60 ca 10 	mov    DWORD PTR [esp+0x10],0xc010ca60
c0107704:	c0 
c0107705:	c7 44 24 0c b5 ca 10 	mov    DWORD PTR [esp+0xc],0xc010cab5
c010770c:	c0 
c010770d:	c7 44 24 08 2e 00 00 	mov    DWORD PTR [esp+0x8],0x2e
c0107714:	00 
c0107715:	c7 44 24 04 84 ca 10 	mov    DWORD PTR [esp+0x4],0xc010ca84
c010771c:	c0 
c010771d:	c7 04 24 84 ca 10 c0 	mov    DWORD PTR [esp],0xc010ca84
c0107724:	e8 7b 91 ff ff       	call   c01008a4 <panic_spin>
c0107729:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c010772c:	8b 00                	mov    eax,DWORD PTR [eax]
c010772e:	3b 45 f4             	cmp    eax,DWORD PTR [ebp-0xc]
c0107731:	75 0a                	jne    c010773d <bitmap_alloc+0x78>
c0107733:	b8 ff ff ff ff       	mov    eax,0xffffffff
c0107738:	e9 cc 00 00 00       	jmp    c0107809 <bitmap_alloc+0x144>
c010773d:	c7 45 f0 00 00 00 00 	mov    DWORD PTR [ebp-0x10],0x0
c0107744:	eb 04                	jmp    c010774a <bitmap_alloc+0x85>
c0107746:	83 45 f0 01          	add    DWORD PTR [ebp-0x10],0x1
c010774a:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c010774d:	ba 01 00 00 00       	mov    edx,0x1
c0107752:	89 d3                	mov    ebx,edx
c0107754:	89 c1                	mov    ecx,eax
c0107756:	d3 e3                	shl    ebx,cl
c0107758:	89 d8                	mov    eax,ebx
c010775a:	89 c2                	mov    edx,eax
c010775c:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c010775f:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
c0107762:	03 45 f4             	add    eax,DWORD PTR [ebp-0xc]
c0107765:	0f b6 00             	movzx  eax,BYTE PTR [eax]
c0107768:	21 d0                	and    eax,edx
c010776a:	84 c0                	test   al,al
c010776c:	75 d8                	jne    c0107746 <bitmap_alloc+0x81>
c010776e:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0107771:	c1 e0 03             	shl    eax,0x3
c0107774:	03 45 f0             	add    eax,DWORD PTR [ebp-0x10]
c0107777:	89 45 ec             	mov    DWORD PTR [ebp-0x14],eax
c010777a:	83 7d 0c 01          	cmp    DWORD PTR [ebp+0xc],0x1
c010777e:	75 08                	jne    c0107788 <bitmap_alloc+0xc3>
c0107780:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
c0107783:	e9 81 00 00 00       	jmp    c0107809 <bitmap_alloc+0x144>
c0107788:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c010778b:	8b 00                	mov    eax,DWORD PTR [eax]
c010778d:	8d 14 c5 00 00 00 00 	lea    edx,[eax*8+0x0]
c0107794:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
c0107797:	89 d1                	mov    ecx,edx
c0107799:	29 c1                	sub    ecx,eax
c010779b:	89 c8                	mov    eax,ecx
c010779d:	89 45 e8             	mov    DWORD PTR [ebp-0x18],eax
c01077a0:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
c01077a3:	83 c0 01             	add    eax,0x1
c01077a6:	89 45 e4             	mov    DWORD PTR [ebp-0x1c],eax
c01077a9:	c7 45 e0 01 00 00 00 	mov    DWORD PTR [ebp-0x20],0x1
c01077b0:	c7 45 ec ff ff ff ff 	mov    DWORD PTR [ebp-0x14],0xffffffff
c01077b7:	eb 47                	jmp    c0107800 <bitmap_alloc+0x13b>
c01077b9:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
c01077bc:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c01077c0:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01077c3:	89 04 24             	mov    DWORD PTR [esp],eax
c01077c6:	e8 b8 fe ff ff       	call   c0107683 <bitmap_scan_test>
c01077cb:	85 c0                	test   eax,eax
c01077cd:	75 06                	jne    c01077d5 <bitmap_alloc+0x110>
c01077cf:	83 45 e0 01          	add    DWORD PTR [ebp-0x20],0x1
c01077d3:	eb 07                	jmp    c01077dc <bitmap_alloc+0x117>
c01077d5:	c7 45 e0 00 00 00 00 	mov    DWORD PTR [ebp-0x20],0x0
c01077dc:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
c01077df:	3b 45 0c             	cmp    eax,DWORD PTR [ebp+0xc]
c01077e2:	75 14                	jne    c01077f8 <bitmap_alloc+0x133>
c01077e4:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c01077e7:	8b 55 e4             	mov    edx,DWORD PTR [ebp-0x1c]
c01077ea:	89 d3                	mov    ebx,edx
c01077ec:	29 c3                	sub    ebx,eax
c01077ee:	89 d8                	mov    eax,ebx
c01077f0:	83 c0 01             	add    eax,0x1
c01077f3:	89 45 ec             	mov    DWORD PTR [ebp-0x14],eax
c01077f6:	eb 0e                	jmp    c0107806 <bitmap_alloc+0x141>
c01077f8:	83 6d e8 01          	sub    DWORD PTR [ebp-0x18],0x1
c01077fc:	83 45 e4 01          	add    DWORD PTR [ebp-0x1c],0x1
c0107800:	83 7d e8 00          	cmp    DWORD PTR [ebp-0x18],0x0
c0107804:	75 b3                	jne    c01077b9 <bitmap_alloc+0xf4>
c0107806:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
c0107809:	83 c4 44             	add    esp,0x44
c010780c:	5b                   	pop    ebx
c010780d:	5d                   	pop    ebp
c010780e:	c3                   	ret    

c010780f <bitmap_set>:
c010780f:	55                   	push   ebp
c0107810:	89 e5                	mov    ebp,esp
c0107812:	57                   	push   edi
c0107813:	56                   	push   esi
c0107814:	53                   	push   ebx
c0107815:	83 ec 4c             	sub    esp,0x4c
c0107818:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
c010781b:	88 45 d4             	mov    BYTE PTR [ebp-0x2c],al
c010781e:	80 7d d4 00          	cmp    BYTE PTR [ebp-0x2c],0x0
c0107822:	74 32                	je     c0107856 <bitmap_set+0x47>
c0107824:	80 7d d4 01          	cmp    BYTE PTR [ebp-0x2c],0x1
c0107828:	74 2c                	je     c0107856 <bitmap_set+0x47>
c010782a:	c7 44 24 10 91 ca 10 	mov    DWORD PTR [esp+0x10],0xc010ca91
c0107831:	c0 
c0107832:	c7 44 24 0c aa ca 10 	mov    DWORD PTR [esp+0xc],0xc010caaa
c0107839:	c0 
c010783a:	c7 44 24 08 65 00 00 	mov    DWORD PTR [esp+0x8],0x65
c0107841:	00 
c0107842:	c7 44 24 04 84 ca 10 	mov    DWORD PTR [esp+0x4],0xc010ca84
c0107849:	c0 
c010784a:	c7 04 24 84 ca 10 c0 	mov    DWORD PTR [esp],0xc010ca84
c0107851:	e8 4e 90 ff ff       	call   c01008a4 <panic_spin>
c0107856:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c0107859:	c1 e8 03             	shr    eax,0x3
c010785c:	89 45 e4             	mov    DWORD PTR [ebp-0x1c],eax
c010785f:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c0107862:	83 e0 07             	and    eax,0x7
c0107865:	89 45 e0             	mov    DWORD PTR [ebp-0x20],eax
c0107868:	0f b6 45 d4          	movzx  eax,BYTE PTR [ebp-0x2c]
c010786c:	85 c0                	test   eax,eax
c010786e:	74 07                	je     c0107877 <bitmap_set+0x68>
c0107870:	83 f8 01             	cmp    eax,0x1
c0107873:	74 31                	je     c01078a6 <bitmap_set+0x97>
c0107875:	eb 5b                	jmp    c01078d2 <bitmap_set+0xc3>
c0107877:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c010787a:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
c010787d:	03 45 e4             	add    eax,DWORD PTR [ebp-0x1c]
c0107880:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c0107883:	8b 52 04             	mov    edx,DWORD PTR [edx+0x4]
c0107886:	03 55 e4             	add    edx,DWORD PTR [ebp-0x1c]
c0107889:	0f b6 12             	movzx  edx,BYTE PTR [edx]
c010788c:	89 d3                	mov    ebx,edx
c010788e:	8b 55 e0             	mov    edx,DWORD PTR [ebp-0x20]
c0107891:	be 01 00 00 00       	mov    esi,0x1
c0107896:	89 f7                	mov    edi,esi
c0107898:	89 d1                	mov    ecx,edx
c010789a:	d3 e7                	shl    edi,cl
c010789c:	89 fa                	mov    edx,edi
c010789e:	f7 d2                	not    edx
c01078a0:	21 da                	and    edx,ebx
c01078a2:	88 10                	mov    BYTE PTR [eax],dl
c01078a4:	eb 2c                	jmp    c01078d2 <bitmap_set+0xc3>
c01078a6:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01078a9:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
c01078ac:	03 45 e4             	add    eax,DWORD PTR [ebp-0x1c]
c01078af:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c01078b2:	8b 52 04             	mov    edx,DWORD PTR [edx+0x4]
c01078b5:	03 55 e4             	add    edx,DWORD PTR [ebp-0x1c]
c01078b8:	0f b6 12             	movzx  edx,BYTE PTR [edx]
c01078bb:	89 d3                	mov    ebx,edx
c01078bd:	8b 55 e0             	mov    edx,DWORD PTR [ebp-0x20]
c01078c0:	be 01 00 00 00       	mov    esi,0x1
c01078c5:	89 f7                	mov    edi,esi
c01078c7:	89 d1                	mov    ecx,edx
c01078c9:	d3 e7                	shl    edi,cl
c01078cb:	89 fa                	mov    edx,edi
c01078cd:	09 da                	or     edx,ebx
c01078cf:	88 10                	mov    BYTE PTR [eax],dl
c01078d1:	90                   	nop
c01078d2:	83 c4 4c             	add    esp,0x4c
c01078d5:	5b                   	pop    ebx
c01078d6:	5e                   	pop    esi
c01078d7:	5f                   	pop    edi
c01078d8:	5d                   	pop    ebp
c01078d9:	c3                   	ret    
	...

c01078dc <list_init>:
c01078dc:	55                   	push   ebp
c01078dd:	89 e5                	mov    ebp,esp
c01078df:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01078e2:	c7 00 00 00 00 00    	mov    DWORD PTR [eax],0x0
c01078e8:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01078eb:	8d 50 0c             	lea    edx,[eax+0xc]
c01078ee:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01078f1:	89 50 08             	mov    DWORD PTR [eax+0x8],edx
c01078f4:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c01078f7:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01078fa:	89 50 0c             	mov    DWORD PTR [eax+0xc],edx
c01078fd:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0107900:	c7 40 14 00 00 00 00 	mov    DWORD PTR [eax+0x14],0x0
c0107907:	5d                   	pop    ebp
c0107908:	c3                   	ret    

c0107909 <list_in>:
c0107909:	55                   	push   ebp
c010790a:	89 e5                	mov    ebp,esp
c010790c:	83 ec 28             	sub    esp,0x28
c010790f:	e8 b2 9d ff ff       	call   c01016c6 <intr_disable>
c0107914:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
c0107917:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c010791a:	8b 00                	mov    eax,DWORD PTR [eax]
c010791c:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c010791f:	89 50 08             	mov    DWORD PTR [eax+0x8],edx
c0107922:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c0107925:	8b 10                	mov    edx,DWORD PTR [eax]
c0107927:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c010792a:	89 10                	mov    DWORD PTR [eax],edx
c010792c:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c010792f:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
c0107932:	89 50 08             	mov    DWORD PTR [eax+0x8],edx
c0107935:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c0107938:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c010793b:	89 10                	mov    DWORD PTR [eax],edx
c010793d:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0107940:	89 04 24             	mov    DWORD PTR [esp],eax
c0107943:	e8 ab 9d ff ff       	call   c01016f3 <intr_set_status>
c0107948:	c9                   	leave  
c0107949:	c3                   	ret    

c010794a <list_push>:
c010794a:	55                   	push   ebp
c010794b:	89 e5                	mov    ebp,esp
c010794d:	83 ec 18             	sub    esp,0x18
c0107950:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0107953:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
c0107956:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c010795a:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c010795d:	89 04 24             	mov    DWORD PTR [esp],eax
c0107960:	e8 a4 ff ff ff       	call   c0107909 <list_in>
c0107965:	c9                   	leave  
c0107966:	c3                   	ret    

c0107967 <list_append>:
c0107967:	55                   	push   ebp
c0107968:	89 e5                	mov    ebp,esp
c010796a:	83 ec 18             	sub    esp,0x18
c010796d:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0107970:	83 c0 0c             	add    eax,0xc
c0107973:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c0107977:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c010797a:	89 04 24             	mov    DWORD PTR [esp],eax
c010797d:	e8 87 ff ff ff       	call   c0107909 <list_in>
c0107982:	c9                   	leave  
c0107983:	c3                   	ret    

c0107984 <list_remove>:
c0107984:	55                   	push   ebp
c0107985:	89 e5                	mov    ebp,esp
c0107987:	83 ec 28             	sub    esp,0x28
c010798a:	e8 37 9d ff ff       	call   c01016c6 <intr_disable>
c010798f:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
c0107992:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0107995:	8b 00                	mov    eax,DWORD PTR [eax]
c0107997:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c010799a:	8b 52 08             	mov    edx,DWORD PTR [edx+0x8]
c010799d:	89 50 08             	mov    DWORD PTR [eax+0x8],edx
c01079a0:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01079a3:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
c01079a6:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c01079a9:	8b 12                	mov    edx,DWORD PTR [edx]
c01079ab:	89 10                	mov    DWORD PTR [eax],edx
c01079ad:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c01079b0:	89 04 24             	mov    DWORD PTR [esp],eax
c01079b3:	e8 3b 9d ff ff       	call   c01016f3 <intr_set_status>
c01079b8:	c9                   	leave  
c01079b9:	c3                   	ret    

c01079ba <list_pop>:
c01079ba:	55                   	push   ebp
c01079bb:	89 e5                	mov    ebp,esp
c01079bd:	83 ec 28             	sub    esp,0x28
c01079c0:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01079c3:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
c01079c6:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
c01079c9:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c01079cc:	89 04 24             	mov    DWORD PTR [esp],eax
c01079cf:	e8 b0 ff ff ff       	call   c0107984 <list_remove>
c01079d4:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c01079d7:	c9                   	leave  
c01079d8:	c3                   	ret    

c01079d9 <list_find>:
c01079d9:	55                   	push   ebp
c01079da:	89 e5                	mov    ebp,esp
c01079dc:	83 ec 10             	sub    esp,0x10
c01079df:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01079e2:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
c01079e5:	89 45 fc             	mov    DWORD PTR [ebp-0x4],eax
c01079e8:	eb 18                	jmp    c0107a02 <list_find+0x29>
c01079ea:	8b 45 fc             	mov    eax,DWORD PTR [ebp-0x4]
c01079ed:	3b 45 0c             	cmp    eax,DWORD PTR [ebp+0xc]
c01079f0:	75 07                	jne    c01079f9 <list_find+0x20>
c01079f2:	b8 01 00 00 00       	mov    eax,0x1
c01079f7:	eb 19                	jmp    c0107a12 <list_find+0x39>
c01079f9:	8b 45 fc             	mov    eax,DWORD PTR [ebp-0x4]
c01079fc:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
c01079ff:	89 45 fc             	mov    DWORD PTR [ebp-0x4],eax
c0107a02:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0107a05:	83 c0 0c             	add    eax,0xc
c0107a08:	3b 45 fc             	cmp    eax,DWORD PTR [ebp-0x4]
c0107a0b:	75 dd                	jne    c01079ea <list_find+0x11>
c0107a0d:	b8 00 00 00 00       	mov    eax,0x0
c0107a12:	c9                   	leave  
c0107a13:	c3                   	ret    

c0107a14 <list_traversal>:
c0107a14:	55                   	push   ebp
c0107a15:	89 e5                	mov    ebp,esp
c0107a17:	83 ec 28             	sub    esp,0x28
c0107a1a:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0107a1d:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
c0107a20:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
c0107a23:	eb 24                	jmp    c0107a49 <list_traversal+0x35>
c0107a25:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
c0107a28:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c0107a2c:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0107a2f:	89 04 24             	mov    DWORD PTR [esp],eax
c0107a32:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c0107a35:	ff d0                	call   eax
c0107a37:	85 c0                	test   eax,eax
c0107a39:	74 05                	je     c0107a40 <list_traversal+0x2c>
c0107a3b:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0107a3e:	eb 19                	jmp    c0107a59 <list_traversal+0x45>
c0107a40:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0107a43:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
c0107a46:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
c0107a49:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0107a4c:	83 c0 0c             	add    eax,0xc
c0107a4f:	3b 45 f4             	cmp    eax,DWORD PTR [ebp-0xc]
c0107a52:	75 d1                	jne    c0107a25 <list_traversal+0x11>
c0107a54:	b8 00 00 00 00       	mov    eax,0x0
c0107a59:	c9                   	leave  
c0107a5a:	c3                   	ret    

c0107a5b <list_len>:
c0107a5b:	55                   	push   ebp
c0107a5c:	89 e5                	mov    ebp,esp
c0107a5e:	83 ec 10             	sub    esp,0x10
c0107a61:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0107a64:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
c0107a67:	89 45 fc             	mov    DWORD PTR [ebp-0x4],eax
c0107a6a:	c7 45 f8 00 00 00 00 	mov    DWORD PTR [ebp-0x8],0x0
c0107a71:	eb 0d                	jmp    c0107a80 <list_len+0x25>
c0107a73:	83 45 f8 01          	add    DWORD PTR [ebp-0x8],0x1
c0107a77:	8b 45 fc             	mov    eax,DWORD PTR [ebp-0x4]
c0107a7a:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
c0107a7d:	89 45 fc             	mov    DWORD PTR [ebp-0x4],eax
c0107a80:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0107a83:	83 c0 0c             	add    eax,0xc
c0107a86:	3b 45 fc             	cmp    eax,DWORD PTR [ebp-0x4]
c0107a89:	75 e8                	jne    c0107a73 <list_len+0x18>
c0107a8b:	8b 45 f8             	mov    eax,DWORD PTR [ebp-0x8]
c0107a8e:	c9                   	leave  
c0107a8f:	c3                   	ret    

c0107a90 <list_empty>:
c0107a90:	55                   	push   ebp
c0107a91:	89 e5                	mov    ebp,esp
c0107a93:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0107a96:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
c0107a99:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c0107a9c:	83 c2 0c             	add    edx,0xc
c0107a9f:	39 d0                	cmp    eax,edx
c0107aa1:	0f 94 c0             	sete   al
c0107aa4:	0f b6 c0             	movzx  eax,al
c0107aa7:	5d                   	pop    ebp
c0107aa8:	c3                   	ret    
c0107aa9:	00 00                	add    BYTE PTR [eax],al
	...

c0107aac <io_in8>:
c0107aac:	55                   	push   ebp
c0107aad:	89 e5                	mov    ebp,esp
c0107aaf:	53                   	push   ebx
c0107ab0:	83 ec 14             	sub    esp,0x14
c0107ab3:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c0107ab6:	89 55 e8             	mov    DWORD PTR [ebp-0x18],edx
c0107ab9:	8b 55 e8             	mov    edx,DWORD PTR [ebp-0x18]
c0107abc:	ec                   	in     al,dx
c0107abd:	89 c3                	mov    ebx,eax
c0107abf:	89 5d f8             	mov    DWORD PTR [ebp-0x8],ebx
c0107ac2:	8b 45 f8             	mov    eax,DWORD PTR [ebp-0x8]
c0107ac5:	83 c4 14             	add    esp,0x14
c0107ac8:	5b                   	pop    ebx
c0107ac9:	5d                   	pop    ebp
c0107aca:	c3                   	ret    

c0107acb <io_out8>:
c0107acb:	55                   	push   ebp
c0107acc:	89 e5                	mov    ebp,esp
c0107ace:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c0107ad1:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c0107ad4:	ee                   	out    dx,al
c0107ad5:	5d                   	pop    ebp
c0107ad6:	c3                   	ret    

c0107ad7 <put_char>:
c0107ad7:	55                   	push   ebp
c0107ad8:	89 e5                	mov    ebp,esp
c0107ada:	53                   	push   ebx
c0107adb:	83 ec 34             	sub    esp,0x34
c0107ade:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c0107ae1:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c0107ae4:	88 55 e4             	mov    BYTE PTR [ebp-0x1c],dl
c0107ae7:	88 45 e0             	mov    BYTE PTR [ebp-0x20],al
c0107aea:	b8 14 7c 00 c0       	mov    eax,0xc0007c14
c0107aef:	8b 00                	mov    eax,DWORD PTR [eax]
c0107af1:	85 c0                	test   eax,eax
c0107af3:	0f 85 fc 00 00 00    	jne    c0107bf5 <put_char+0x11e>
c0107af9:	0f b6 45 e4          	movzx  eax,BYTE PTR [ebp-0x1c]
c0107afd:	66 89 45 f2          	mov    WORD PTR [ebp-0xe],ax
c0107b01:	e8 14 04 00 00       	call   c0107f1a <get_cursor>
c0107b06:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
c0107b09:	0f b6 45 e0          	movzx  eax,BYTE PTR [ebp-0x20]
c0107b0d:	83 f8 0d             	cmp    eax,0xd
c0107b10:	77 61                	ja     c0107b73 <put_char+0x9c>
c0107b12:	8b 04 85 04 cb 10 c0 	mov    eax,DWORD PTR [eax*4-0x3fef34fc]
c0107b19:	ff e0                	jmp    eax
c0107b1b:	83 6d f4 01          	sub    DWORD PTR [ebp-0xc],0x1
c0107b1f:	b8 1c 7c 00 c0       	mov    eax,0xc0007c1c
c0107b24:	8b 10                	mov    edx,DWORD PTR [eax]
c0107b26:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0107b29:	01 c0                	add    eax,eax
c0107b2b:	01 d0                	add    eax,edx
c0107b2d:	c6 00 20             	mov    BYTE PTR [eax],0x20
c0107b30:	e9 81 00 00 00       	jmp    c0107bb6 <put_char+0xdf>
c0107b35:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
c0107b38:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0107b3b:	ba 24 7c 00 c0       	mov    edx,0xc0007c24
c0107b40:	8b 1a                	mov    ebx,DWORD PTR [edx]
c0107b42:	ba 00 00 00 00       	mov    edx,0x0
c0107b47:	f7 f3                	div    ebx
c0107b49:	89 d0                	mov    eax,edx
c0107b4b:	89 ca                	mov    edx,ecx
c0107b4d:	29 c2                	sub    edx,eax
c0107b4f:	89 d0                	mov    eax,edx
c0107b51:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
c0107b54:	b8 24 7c 00 c0       	mov    eax,0xc0007c24
c0107b59:	8b 10                	mov    edx,DWORD PTR [eax]
c0107b5b:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0107b5e:	01 d0                	add    eax,edx
c0107b60:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
c0107b63:	eb 51                	jmp    c0107bb6 <put_char+0xdf>
c0107b65:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0107b68:	83 c0 04             	add    eax,0x4
c0107b6b:	83 e0 fc             	and    eax,0xfffffffc
c0107b6e:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
c0107b71:	eb 43                	jmp    c0107bb6 <put_char+0xdf>
c0107b73:	0f b6 45 e0          	movzx  eax,BYTE PTR [ebp-0x20]
c0107b77:	c1 e0 08             	shl    eax,0x8
c0107b7a:	89 c2                	mov    edx,eax
c0107b7c:	0f b7 45 f2          	movzx  eax,WORD PTR [ebp-0xe]
c0107b80:	09 d0                	or     eax,edx
c0107b82:	66 89 45 f2          	mov    WORD PTR [ebp-0xe],ax
c0107b86:	b8 1c 7c 00 c0       	mov    eax,0xc0007c1c
c0107b8b:	8b 10                	mov    edx,DWORD PTR [eax]
c0107b8d:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0107b90:	01 c0                	add    eax,eax
c0107b92:	01 d0                	add    eax,edx
c0107b94:	0f b6 55 e0          	movzx  edx,BYTE PTR [ebp-0x20]
c0107b98:	88 10                	mov    BYTE PTR [eax],dl
c0107b9a:	b8 1c 7c 00 c0       	mov    eax,0xc0007c1c
c0107b9f:	8b 10                	mov    edx,DWORD PTR [eax]
c0107ba1:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0107ba4:	01 c0                	add    eax,eax
c0107ba6:	01 d0                	add    eax,edx
c0107ba8:	83 c0 01             	add    eax,0x1
c0107bab:	0f b6 55 e4          	movzx  edx,BYTE PTR [ebp-0x1c]
c0107baf:	88 10                	mov    BYTE PTR [eax],dl
c0107bb1:	83 45 f4 01          	add    DWORD PTR [ebp-0xc],0x1
c0107bb5:	90                   	nop
c0107bb6:	8b 55 f4             	mov    edx,DWORD PTR [ebp-0xc]
c0107bb9:	b8 24 7c 00 c0       	mov    eax,0xc0007c24
c0107bbe:	8b 08                	mov    ecx,DWORD PTR [eax]
c0107bc0:	b8 28 7c 00 c0       	mov    eax,0xc0007c28
c0107bc5:	8b 00                	mov    eax,DWORD PTR [eax]
c0107bc7:	0f af c1             	imul   eax,ecx
c0107bca:	39 c2                	cmp    edx,eax
c0107bcc:	72 1c                	jb     c0107bea <put_char+0x113>
c0107bce:	e8 dc 02 00 00       	call   c0107eaf <roll_screen>
c0107bd3:	b8 28 7c 00 c0       	mov    eax,0xc0007c28
c0107bd8:	8b 00                	mov    eax,DWORD PTR [eax]
c0107bda:	8d 50 ff             	lea    edx,[eax-0x1]
c0107bdd:	b8 24 7c 00 c0       	mov    eax,0xc0007c24
c0107be2:	8b 00                	mov    eax,DWORD PTR [eax]
c0107be4:	0f af c2             	imul   eax,edx
c0107be7:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
c0107bea:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0107bed:	89 04 24             	mov    DWORD PTR [esp],eax
c0107bf0:	e8 8c 03 00 00       	call   c0107f81 <set_cursor>
c0107bf5:	90                   	nop
c0107bf6:	eb 01                	jmp    c0107bf9 <put_char+0x122>
c0107bf8:	90                   	nop
c0107bf9:	83 c4 34             	add    esp,0x34
c0107bfc:	5b                   	pop    ebx
c0107bfd:	5d                   	pop    ebp
c0107bfe:	c3                   	ret    

c0107bff <put_str>:
c0107bff:	55                   	push   ebp
c0107c00:	89 e5                	mov    ebp,esp
c0107c02:	83 ec 28             	sub    esp,0x28
c0107c05:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0107c08:	88 45 f4             	mov    BYTE PTR [ebp-0xc],al
c0107c0b:	eb 1d                	jmp    c0107c2a <put_str+0x2b>
c0107c0d:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c0107c10:	0f b6 00             	movzx  eax,BYTE PTR [eax]
c0107c13:	0f b6 d0             	movzx  edx,al
c0107c16:	0f b6 45 f4          	movzx  eax,BYTE PTR [ebp-0xc]
c0107c1a:	89 54 24 04          	mov    DWORD PTR [esp+0x4],edx
c0107c1e:	89 04 24             	mov    DWORD PTR [esp],eax
c0107c21:	e8 b1 fe ff ff       	call   c0107ad7 <put_char>
c0107c26:	83 45 0c 01          	add    DWORD PTR [ebp+0xc],0x1
c0107c2a:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c0107c2d:	0f b6 00             	movzx  eax,BYTE PTR [eax]
c0107c30:	84 c0                	test   al,al
c0107c32:	75 d9                	jne    c0107c0d <put_str+0xe>
c0107c34:	c9                   	leave  
c0107c35:	c3                   	ret    

c0107c36 <put_int>:
c0107c36:	55                   	push   ebp
c0107c37:	89 e5                	mov    ebp,esp
c0107c39:	57                   	push   edi
c0107c3a:	53                   	push   ebx
c0107c3b:	83 ec 70             	sub    esp,0x70
c0107c3e:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0107c41:	88 45 a4             	mov    BYTE PTR [ebp-0x5c],al
c0107c44:	8d 55 b6             	lea    edx,[ebp-0x4a]
c0107c47:	bb 42 00 00 00       	mov    ebx,0x42
c0107c4c:	b8 00 00 00 00       	mov    eax,0x0
c0107c51:	89 d1                	mov    ecx,edx
c0107c53:	83 e1 02             	and    ecx,0x2
c0107c56:	85 c9                	test   ecx,ecx
c0107c58:	74 09                	je     c0107c63 <put_int+0x2d>
c0107c5a:	66 89 02             	mov    WORD PTR [edx],ax
c0107c5d:	83 c2 02             	add    edx,0x2
c0107c60:	83 eb 02             	sub    ebx,0x2
c0107c63:	89 d9                	mov    ecx,ebx
c0107c65:	c1 e9 02             	shr    ecx,0x2
c0107c68:	89 d7                	mov    edi,edx
c0107c6a:	f3 ab                	rep stos DWORD PTR es:[edi],eax
c0107c6c:	89 fa                	mov    edx,edi
c0107c6e:	89 d9                	mov    ecx,ebx
c0107c70:	83 e1 02             	and    ecx,0x2
c0107c73:	85 c9                	test   ecx,ecx
c0107c75:	74 06                	je     c0107c7d <put_int+0x47>
c0107c77:	66 89 02             	mov    WORD PTR [edx],ax
c0107c7a:	83 c2 02             	add    edx,0x2
c0107c7d:	89 d9                	mov    ecx,ebx
c0107c7f:	83 e1 01             	and    ecx,0x1
c0107c82:	85 c9                	test   ecx,ecx
c0107c84:	74 05                	je     c0107c8b <put_int+0x55>
c0107c86:	88 02                	mov    BYTE PTR [edx],al
c0107c88:	83 c2 01             	add    edx,0x1
c0107c8b:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
c0107c8e:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
c0107c92:	8d 45 b6             	lea    eax,[ebp-0x4a]
c0107c95:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c0107c99:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c0107c9c:	89 04 24             	mov    DWORD PTR [esp],eax
c0107c9f:	e8 a2 00 00 00       	call   c0107d46 <itoa>
c0107ca4:	0f b6 45 a4          	movzx  eax,BYTE PTR [ebp-0x5c]
c0107ca8:	8d 55 b6             	lea    edx,[ebp-0x4a]
c0107cab:	89 54 24 04          	mov    DWORD PTR [esp+0x4],edx
c0107caf:	89 04 24             	mov    DWORD PTR [esp],eax
c0107cb2:	e8 48 ff ff ff       	call   c0107bff <put_str>
c0107cb7:	83 c4 70             	add    esp,0x70
c0107cba:	5b                   	pop    ebx
c0107cbb:	5f                   	pop    edi
c0107cbc:	5d                   	pop    ebp
c0107cbd:	c3                   	ret    

c0107cbe <put_uint>:
c0107cbe:	55                   	push   ebp
c0107cbf:	89 e5                	mov    ebp,esp
c0107cc1:	57                   	push   edi
c0107cc2:	53                   	push   ebx
c0107cc3:	83 ec 70             	sub    esp,0x70
c0107cc6:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0107cc9:	88 45 a4             	mov    BYTE PTR [ebp-0x5c],al
c0107ccc:	8d 55 b6             	lea    edx,[ebp-0x4a]
c0107ccf:	bb 42 00 00 00       	mov    ebx,0x42
c0107cd4:	b8 00 00 00 00       	mov    eax,0x0
c0107cd9:	89 d1                	mov    ecx,edx
c0107cdb:	83 e1 02             	and    ecx,0x2
c0107cde:	85 c9                	test   ecx,ecx
c0107ce0:	74 09                	je     c0107ceb <put_uint+0x2d>
c0107ce2:	66 89 02             	mov    WORD PTR [edx],ax
c0107ce5:	83 c2 02             	add    edx,0x2
c0107ce8:	83 eb 02             	sub    ebx,0x2
c0107ceb:	89 d9                	mov    ecx,ebx
c0107ced:	c1 e9 02             	shr    ecx,0x2
c0107cf0:	89 d7                	mov    edi,edx
c0107cf2:	f3 ab                	rep stos DWORD PTR es:[edi],eax
c0107cf4:	89 fa                	mov    edx,edi
c0107cf6:	89 d9                	mov    ecx,ebx
c0107cf8:	83 e1 02             	and    ecx,0x2
c0107cfb:	85 c9                	test   ecx,ecx
c0107cfd:	74 06                	je     c0107d05 <put_uint+0x47>
c0107cff:	66 89 02             	mov    WORD PTR [edx],ax
c0107d02:	83 c2 02             	add    edx,0x2
c0107d05:	89 d9                	mov    ecx,ebx
c0107d07:	83 e1 01             	and    ecx,0x1
c0107d0a:	85 c9                	test   ecx,ecx
c0107d0c:	74 05                	je     c0107d13 <put_uint+0x55>
c0107d0e:	88 02                	mov    BYTE PTR [edx],al
c0107d10:	83 c2 01             	add    edx,0x1
c0107d13:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
c0107d16:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
c0107d1a:	8d 45 b6             	lea    eax,[ebp-0x4a]
c0107d1d:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c0107d21:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c0107d24:	89 04 24             	mov    DWORD PTR [esp],eax
c0107d27:	e8 d9 00 00 00       	call   c0107e05 <utoa>
c0107d2c:	0f b6 45 a4          	movzx  eax,BYTE PTR [ebp-0x5c]
c0107d30:	8d 55 b6             	lea    edx,[ebp-0x4a]
c0107d33:	89 54 24 04          	mov    DWORD PTR [esp+0x4],edx
c0107d37:	89 04 24             	mov    DWORD PTR [esp],eax
c0107d3a:	e8 c0 fe ff ff       	call   c0107bff <put_str>
c0107d3f:	83 c4 70             	add    esp,0x70
c0107d42:	5b                   	pop    ebx
c0107d43:	5f                   	pop    edi
c0107d44:	5d                   	pop    ebp
c0107d45:	c3                   	ret    

c0107d46 <itoa>:
c0107d46:	55                   	push   ebp
c0107d47:	89 e5                	mov    ebp,esp
c0107d49:	83 ec 20             	sub    esp,0x20
c0107d4c:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0107d4f:	89 45 f0             	mov    DWORD PTR [ebp-0x10],eax
c0107d52:	83 7d 08 00          	cmp    DWORD PTR [ebp+0x8],0x0
c0107d56:	79 03                	jns    c0107d5b <itoa+0x15>
c0107d58:	f7 5d 08             	neg    DWORD PTR [ebp+0x8]
c0107d5b:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [ebp-0x4],0x0
c0107d62:	8b 45 fc             	mov    eax,DWORD PTR [ebp-0x4]
c0107d65:	89 c1                	mov    ecx,eax
c0107d67:	03 4d 0c             	add    ecx,DWORD PTR [ebp+0xc]
c0107d6a:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0107d6d:	89 c2                	mov    edx,eax
c0107d6f:	c1 fa 1f             	sar    edx,0x1f
c0107d72:	f7 7d 10             	idiv   DWORD PTR [ebp+0x10]
c0107d75:	89 d0                	mov    eax,edx
c0107d77:	0f b6 80 a0 9e 10 c0 	movzx  eax,BYTE PTR [eax-0x3fef6160]
c0107d7e:	88 01                	mov    BYTE PTR [ecx],al
c0107d80:	83 45 fc 01          	add    DWORD PTR [ebp-0x4],0x1
c0107d84:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0107d87:	89 c2                	mov    edx,eax
c0107d89:	c1 fa 1f             	sar    edx,0x1f
c0107d8c:	f7 7d 10             	idiv   DWORD PTR [ebp+0x10]
c0107d8f:	89 45 08             	mov    DWORD PTR [ebp+0x8],eax
c0107d92:	83 7d 08 00          	cmp    DWORD PTR [ebp+0x8],0x0
c0107d96:	7f ca                	jg     c0107d62 <itoa+0x1c>
c0107d98:	83 7d f0 00          	cmp    DWORD PTR [ebp-0x10],0x0
c0107d9c:	79 0d                	jns    c0107dab <itoa+0x65>
c0107d9e:	8b 45 fc             	mov    eax,DWORD PTR [ebp-0x4]
c0107da1:	03 45 0c             	add    eax,DWORD PTR [ebp+0xc]
c0107da4:	c6 00 2d             	mov    BYTE PTR [eax],0x2d
c0107da7:	83 45 fc 01          	add    DWORD PTR [ebp-0x4],0x1
c0107dab:	8b 45 fc             	mov    eax,DWORD PTR [ebp-0x4]
c0107dae:	03 45 0c             	add    eax,DWORD PTR [ebp+0xc]
c0107db1:	c6 00 00             	mov    BYTE PTR [eax],0x0
c0107db4:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c0107db7:	89 45 f8             	mov    DWORD PTR [ebp-0x8],eax
c0107dba:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c0107dbd:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
c0107dc0:	eb 04                	jmp    c0107dc6 <itoa+0x80>
c0107dc2:	83 45 f4 01          	add    DWORD PTR [ebp-0xc],0x1
c0107dc6:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0107dc9:	0f b6 00             	movzx  eax,BYTE PTR [eax]
c0107dcc:	84 c0                	test   al,al
c0107dce:	75 f2                	jne    c0107dc2 <itoa+0x7c>
c0107dd0:	83 6d f4 01          	sub    DWORD PTR [ebp-0xc],0x1
c0107dd4:	eb 25                	jmp    c0107dfb <itoa+0xb5>
c0107dd6:	8b 45 f8             	mov    eax,DWORD PTR [ebp-0x8]
c0107dd9:	0f b6 00             	movzx  eax,BYTE PTR [eax]
c0107ddc:	88 45 ef             	mov    BYTE PTR [ebp-0x11],al
c0107ddf:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0107de2:	0f b6 10             	movzx  edx,BYTE PTR [eax]
c0107de5:	8b 45 f8             	mov    eax,DWORD PTR [ebp-0x8]
c0107de8:	88 10                	mov    BYTE PTR [eax],dl
c0107dea:	83 45 f8 01          	add    DWORD PTR [ebp-0x8],0x1
c0107dee:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0107df1:	0f b6 55 ef          	movzx  edx,BYTE PTR [ebp-0x11]
c0107df5:	88 10                	mov    BYTE PTR [eax],dl
c0107df7:	83 6d f4 01          	sub    DWORD PTR [ebp-0xc],0x1
c0107dfb:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0107dfe:	3b 45 f8             	cmp    eax,DWORD PTR [ebp-0x8]
c0107e01:	77 d3                	ja     c0107dd6 <itoa+0x90>
c0107e03:	c9                   	leave  
c0107e04:	c3                   	ret    

c0107e05 <utoa>:
c0107e05:	55                   	push   ebp
c0107e06:	89 e5                	mov    ebp,esp
c0107e08:	53                   	push   ebx
c0107e09:	83 ec 14             	sub    esp,0x14
c0107e0c:	c7 45 f8 00 00 00 00 	mov    DWORD PTR [ebp-0x8],0x0
c0107e13:	8b 45 f8             	mov    eax,DWORD PTR [ebp-0x8]
c0107e16:	89 c1                	mov    ecx,eax
c0107e18:	03 4d 0c             	add    ecx,DWORD PTR [ebp+0xc]
c0107e1b:	8b 5d 10             	mov    ebx,DWORD PTR [ebp+0x10]
c0107e1e:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0107e21:	ba 00 00 00 00       	mov    edx,0x0
c0107e26:	f7 f3                	div    ebx
c0107e28:	89 d0                	mov    eax,edx
c0107e2a:	0f b6 80 60 9e 10 c0 	movzx  eax,BYTE PTR [eax-0x3fef61a0]
c0107e31:	88 01                	mov    BYTE PTR [ecx],al
c0107e33:	83 45 f8 01          	add    DWORD PTR [ebp-0x8],0x1
c0107e37:	8b 55 10             	mov    edx,DWORD PTR [ebp+0x10]
c0107e3a:	89 55 e8             	mov    DWORD PTR [ebp-0x18],edx
c0107e3d:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0107e40:	ba 00 00 00 00       	mov    edx,0x0
c0107e45:	f7 75 e8             	div    DWORD PTR [ebp-0x18]
c0107e48:	89 45 08             	mov    DWORD PTR [ebp+0x8],eax
c0107e4b:	83 7d 08 00          	cmp    DWORD PTR [ebp+0x8],0x0
c0107e4f:	75 c2                	jne    c0107e13 <utoa+0xe>
c0107e51:	8b 45 f8             	mov    eax,DWORD PTR [ebp-0x8]
c0107e54:	03 45 0c             	add    eax,DWORD PTR [ebp+0xc]
c0107e57:	c6 00 00             	mov    BYTE PTR [eax],0x0
c0107e5a:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c0107e5d:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
c0107e60:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c0107e63:	89 45 f0             	mov    DWORD PTR [ebp-0x10],eax
c0107e66:	eb 04                	jmp    c0107e6c <utoa+0x67>
c0107e68:	83 45 f0 01          	add    DWORD PTR [ebp-0x10],0x1
c0107e6c:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c0107e6f:	0f b6 00             	movzx  eax,BYTE PTR [eax]
c0107e72:	84 c0                	test   al,al
c0107e74:	75 f2                	jne    c0107e68 <utoa+0x63>
c0107e76:	83 6d f0 01          	sub    DWORD PTR [ebp-0x10],0x1
c0107e7a:	eb 25                	jmp    c0107ea1 <utoa+0x9c>
c0107e7c:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0107e7f:	0f b6 00             	movzx  eax,BYTE PTR [eax]
c0107e82:	88 45 ef             	mov    BYTE PTR [ebp-0x11],al
c0107e85:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c0107e88:	0f b6 10             	movzx  edx,BYTE PTR [eax]
c0107e8b:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0107e8e:	88 10                	mov    BYTE PTR [eax],dl
c0107e90:	83 45 f4 01          	add    DWORD PTR [ebp-0xc],0x1
c0107e94:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c0107e97:	0f b6 55 ef          	movzx  edx,BYTE PTR [ebp-0x11]
c0107e9b:	88 10                	mov    BYTE PTR [eax],dl
c0107e9d:	83 6d f0 01          	sub    DWORD PTR [ebp-0x10],0x1
c0107ea1:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c0107ea4:	3b 45 f4             	cmp    eax,DWORD PTR [ebp-0xc]
c0107ea7:	77 d3                	ja     c0107e7c <utoa+0x77>
c0107ea9:	83 c4 14             	add    esp,0x14
c0107eac:	5b                   	pop    ebx
c0107ead:	5d                   	pop    ebp
c0107eae:	c3                   	ret    

c0107eaf <roll_screen>:
c0107eaf:	55                   	push   ebp
c0107eb0:	89 e5                	mov    ebp,esp
c0107eb2:	83 ec 10             	sub    esp,0x10
c0107eb5:	b8 14 7c 00 c0       	mov    eax,0xc0007c14
c0107eba:	8b 00                	mov    eax,DWORD PTR [eax]
c0107ebc:	85 c0                	test   eax,eax
c0107ebe:	75 58                	jne    c0107f18 <roll_screen+0x69>
c0107ec0:	b8 1c 7c 00 c0       	mov    eax,0xc0007c1c
c0107ec5:	8b 10                	mov    edx,DWORD PTR [eax]
c0107ec7:	b8 24 7c 00 c0       	mov    eax,0xc0007c24
c0107ecc:	8b 00                	mov    eax,DWORD PTR [eax]
c0107ece:	01 c0                	add    eax,eax
c0107ed0:	01 d0                	add    eax,edx
c0107ed2:	89 45 fc             	mov    DWORD PTR [ebp-0x4],eax
c0107ed5:	b8 1c 7c 00 c0       	mov    eax,0xc0007c1c
c0107eda:	8b 00                	mov    eax,DWORD PTR [eax]
c0107edc:	89 45 f8             	mov    DWORD PTR [ebp-0x8],eax
c0107edf:	c7 45 f4 00 00 00 00 	mov    DWORD PTR [ebp-0xc],0x0
c0107ee6:	eb 18                	jmp    c0107f00 <roll_screen+0x51>
c0107ee8:	8b 45 fc             	mov    eax,DWORD PTR [ebp-0x4]
c0107eeb:	0f b7 10             	movzx  edx,WORD PTR [eax]
c0107eee:	8b 45 f8             	mov    eax,DWORD PTR [ebp-0x8]
c0107ef1:	66 89 10             	mov    WORD PTR [eax],dx
c0107ef4:	83 45 f8 02          	add    DWORD PTR [ebp-0x8],0x2
c0107ef8:	83 45 fc 02          	add    DWORD PTR [ebp-0x4],0x2
c0107efc:	83 45 f4 01          	add    DWORD PTR [ebp-0xc],0x1
c0107f00:	8b 55 f4             	mov    edx,DWORD PTR [ebp-0xc]
c0107f03:	b8 24 7c 00 c0       	mov    eax,0xc0007c24
c0107f08:	8b 08                	mov    ecx,DWORD PTR [eax]
c0107f0a:	b8 28 7c 00 c0       	mov    eax,0xc0007c28
c0107f0f:	8b 00                	mov    eax,DWORD PTR [eax]
c0107f11:	0f af c1             	imul   eax,ecx
c0107f14:	39 c2                	cmp    edx,eax
c0107f16:	72 d0                	jb     c0107ee8 <roll_screen+0x39>
c0107f18:	c9                   	leave  
c0107f19:	c3                   	ret    

c0107f1a <get_cursor>:
c0107f1a:	55                   	push   ebp
c0107f1b:	89 e5                	mov    ebp,esp
c0107f1d:	83 ec 18             	sub    esp,0x18
c0107f20:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [ebp-0x4],0x0
c0107f27:	c7 44 24 04 0e 00 00 	mov    DWORD PTR [esp+0x4],0xe
c0107f2e:	00 
c0107f2f:	c7 04 24 d4 03 00 00 	mov    DWORD PTR [esp],0x3d4
c0107f36:	e8 90 fb ff ff       	call   c0107acb <io_out8>
c0107f3b:	c7 04 24 d5 03 00 00 	mov    DWORD PTR [esp],0x3d5
c0107f42:	e8 65 fb ff ff       	call   c0107aac <io_in8>
c0107f47:	89 c2                	mov    edx,eax
c0107f49:	c1 e2 08             	shl    edx,0x8
c0107f4c:	8b 45 fc             	mov    eax,DWORD PTR [ebp-0x4]
c0107f4f:	09 d0                	or     eax,edx
c0107f51:	89 45 fc             	mov    DWORD PTR [ebp-0x4],eax
c0107f54:	c7 44 24 04 0f 00 00 	mov    DWORD PTR [esp+0x4],0xf
c0107f5b:	00 
c0107f5c:	c7 04 24 d4 03 00 00 	mov    DWORD PTR [esp],0x3d4
c0107f63:	e8 63 fb ff ff       	call   c0107acb <io_out8>
c0107f68:	c7 04 24 d5 03 00 00 	mov    DWORD PTR [esp],0x3d5
c0107f6f:	e8 38 fb ff ff       	call   c0107aac <io_in8>
c0107f74:	8b 55 fc             	mov    edx,DWORD PTR [ebp-0x4]
c0107f77:	09 d0                	or     eax,edx
c0107f79:	89 45 fc             	mov    DWORD PTR [ebp-0x4],eax
c0107f7c:	8b 45 fc             	mov    eax,DWORD PTR [ebp-0x4]
c0107f7f:	c9                   	leave  
c0107f80:	c3                   	ret    

c0107f81 <set_cursor>:
c0107f81:	55                   	push   ebp
c0107f82:	89 e5                	mov    ebp,esp
c0107f84:	83 ec 08             	sub    esp,0x8
c0107f87:	c7 44 24 04 0e 00 00 	mov    DWORD PTR [esp+0x4],0xe
c0107f8e:	00 
c0107f8f:	c7 04 24 d4 03 00 00 	mov    DWORD PTR [esp],0x3d4
c0107f96:	e8 30 fb ff ff       	call   c0107acb <io_out8>
c0107f9b:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0107f9e:	25 00 ff 00 00       	and    eax,0xff00
c0107fa3:	c1 e8 08             	shr    eax,0x8
c0107fa6:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c0107faa:	c7 04 24 d5 03 00 00 	mov    DWORD PTR [esp],0x3d5
c0107fb1:	e8 15 fb ff ff       	call   c0107acb <io_out8>
c0107fb6:	c7 44 24 04 0f 00 00 	mov    DWORD PTR [esp+0x4],0xf
c0107fbd:	00 
c0107fbe:	c7 04 24 d4 03 00 00 	mov    DWORD PTR [esp],0x3d4
c0107fc5:	e8 01 fb ff ff       	call   c0107acb <io_out8>
c0107fca:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0107fcd:	25 ff 00 00 00       	and    eax,0xff
c0107fd2:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c0107fd6:	c7 04 24 d5 03 00 00 	mov    DWORD PTR [esp],0x3d5
c0107fdd:	e8 e9 fa ff ff       	call   c0107acb <io_out8>
c0107fe2:	c9                   	leave  
c0107fe3:	c3                   	ret    

c0107fe4 <memset>:
c0107fe4:	55                   	push   ebp
c0107fe5:	89 e5                	mov    ebp,esp
c0107fe7:	83 ec 48             	sub    esp,0x48
c0107fea:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c0107fed:	88 45 e4             	mov    BYTE PTR [ebp-0x1c],al
c0107ff0:	83 7d 08 00          	cmp    DWORD PTR [ebp+0x8],0x0
c0107ff4:	75 2c                	jne    c0108022 <memset+0x3e>
c0107ff6:	c7 44 24 10 5b cb 10 	mov    DWORD PTR [esp+0x10],0xc010cb5b
c0107ffd:	c0 
c0107ffe:	c7 44 24 0c ea cb 10 	mov    DWORD PTR [esp+0xc],0xc010cbea
c0108005:	c0 
c0108006:	c7 44 24 08 0f 00 00 	mov    DWORD PTR [esp+0x8],0xf
c010800d:	00 
c010800e:	c7 44 24 04 69 cb 10 	mov    DWORD PTR [esp+0x4],0xc010cb69
c0108015:	c0 
c0108016:	c7 04 24 69 cb 10 c0 	mov    DWORD PTR [esp],0xc010cb69
c010801d:	e8 82 88 ff ff       	call   c01008a4 <panic_spin>
c0108022:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0108025:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
c0108028:	c7 45 f0 00 00 00 00 	mov    DWORD PTR [ebp-0x10],0x0
c010802f:	eb 11                	jmp    c0108042 <memset+0x5e>
c0108031:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0108034:	0f b6 55 e4          	movzx  edx,BYTE PTR [ebp-0x1c]
c0108038:	88 10                	mov    BYTE PTR [eax],dl
c010803a:	83 45 f4 01          	add    DWORD PTR [ebp-0xc],0x1
c010803e:	83 45 f0 01          	add    DWORD PTR [ebp-0x10],0x1
c0108042:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c0108045:	3b 45 10             	cmp    eax,DWORD PTR [ebp+0x10]
c0108048:	72 e7                	jb     c0108031 <memset+0x4d>
c010804a:	c9                   	leave  
c010804b:	c3                   	ret    

c010804c <memcpy>:
c010804c:	55                   	push   ebp
c010804d:	89 e5                	mov    ebp,esp
c010804f:	83 ec 38             	sub    esp,0x38
c0108052:	83 7d 08 00          	cmp    DWORD PTR [ebp+0x8],0x0
c0108056:	74 06                	je     c010805e <memcpy+0x12>
c0108058:	83 7d 0c 00          	cmp    DWORD PTR [ebp+0xc],0x0
c010805c:	75 2c                	jne    c010808a <memcpy+0x3e>
c010805e:	c7 44 24 10 78 cb 10 	mov    DWORD PTR [esp+0x10],0xc010cb78
c0108065:	c0 
c0108066:	c7 44 24 0c e3 cb 10 	mov    DWORD PTR [esp+0xc],0xc010cbe3
c010806d:	c0 
c010806e:	c7 44 24 08 22 00 00 	mov    DWORD PTR [esp+0x8],0x22
c0108075:	00 
c0108076:	c7 44 24 04 69 cb 10 	mov    DWORD PTR [esp+0x4],0xc010cb69
c010807d:	c0 
c010807e:	c7 04 24 69 cb 10 c0 	mov    DWORD PTR [esp],0xc010cb69
c0108085:	e8 1a 88 ff ff       	call   c01008a4 <panic_spin>
c010808a:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c010808d:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
c0108090:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c0108093:	89 45 f0             	mov    DWORD PTR [ebp-0x10],eax
c0108096:	c7 45 ec 00 00 00 00 	mov    DWORD PTR [ebp-0x14],0x0
c010809d:	eb 17                	jmp    c01080b6 <memcpy+0x6a>
c010809f:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c01080a2:	0f b6 10             	movzx  edx,BYTE PTR [eax]
c01080a5:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c01080a8:	88 10                	mov    BYTE PTR [eax],dl
c01080aa:	83 45 f4 01          	add    DWORD PTR [ebp-0xc],0x1
c01080ae:	83 45 f0 01          	add    DWORD PTR [ebp-0x10],0x1
c01080b2:	83 45 ec 01          	add    DWORD PTR [ebp-0x14],0x1
c01080b6:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
c01080b9:	3b 45 10             	cmp    eax,DWORD PTR [ebp+0x10]
c01080bc:	72 e1                	jb     c010809f <memcpy+0x53>
c01080be:	c9                   	leave  
c01080bf:	c3                   	ret    

c01080c0 <memcmp>:
c01080c0:	55                   	push   ebp
c01080c1:	89 e5                	mov    ebp,esp
c01080c3:	83 ec 38             	sub    esp,0x38
c01080c6:	83 7d 08 00          	cmp    DWORD PTR [ebp+0x8],0x0
c01080ca:	74 06                	je     c01080d2 <memcmp+0x12>
c01080cc:	83 7d 0c 00          	cmp    DWORD PTR [ebp+0xc],0x0
c01080d0:	75 2c                	jne    c01080fe <memcmp+0x3e>
c01080d2:	c7 44 24 10 97 cb 10 	mov    DWORD PTR [esp+0x10],0xc010cb97
c01080d9:	c0 
c01080da:	c7 44 24 0c dc cb 10 	mov    DWORD PTR [esp+0xc],0xc010cbdc
c01080e1:	c0 
c01080e2:	c7 44 24 08 3b 00 00 	mov    DWORD PTR [esp+0x8],0x3b
c01080e9:	00 
c01080ea:	c7 44 24 04 69 cb 10 	mov    DWORD PTR [esp+0x4],0xc010cb69
c01080f1:	c0 
c01080f2:	c7 04 24 69 cb 10 c0 	mov    DWORD PTR [esp],0xc010cb69
c01080f9:	e8 a6 87 ff ff       	call   c01008a4 <panic_spin>
c01080fe:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0108101:	89 45 f0             	mov    DWORD PTR [ebp-0x10],eax
c0108104:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c0108107:	89 45 ec             	mov    DWORD PTR [ebp-0x14],eax
c010810a:	c7 45 f4 00 00 00 00 	mov    DWORD PTR [ebp-0xc],0x0
c0108111:	eb 14                	jmp    c0108127 <memcmp+0x67>
c0108113:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c0108116:	0f b6 10             	movzx  edx,BYTE PTR [eax]
c0108119:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
c010811c:	0f b6 00             	movzx  eax,BYTE PTR [eax]
c010811f:	38 c2                	cmp    dl,al
c0108121:	75 0e                	jne    c0108131 <memcmp+0x71>
c0108123:	83 45 f4 01          	add    DWORD PTR [ebp-0xc],0x1
c0108127:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c010812a:	3b 45 10             	cmp    eax,DWORD PTR [ebp+0x10]
c010812d:	72 e4                	jb     c0108113 <memcmp+0x53>
c010812f:	eb 01                	jmp    c0108132 <memcmp+0x72>
c0108131:	90                   	nop
c0108132:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c0108135:	0f b6 10             	movzx  edx,BYTE PTR [eax]
c0108138:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
c010813b:	0f b6 00             	movzx  eax,BYTE PTR [eax]
c010813e:	38 c2                	cmp    dl,al
c0108140:	72 16                	jb     c0108158 <memcmp+0x98>
c0108142:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c0108145:	0f b6 10             	movzx  edx,BYTE PTR [eax]
c0108148:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
c010814b:	0f b6 00             	movzx  eax,BYTE PTR [eax]
c010814e:	38 c2                	cmp    dl,al
c0108150:	0f 97 c0             	seta   al
c0108153:	0f b6 c0             	movzx  eax,al
c0108156:	eb 05                	jmp    c010815d <memcmp+0x9d>
c0108158:	b8 ff ff ff ff       	mov    eax,0xffffffff
c010815d:	c9                   	leave  
c010815e:	c3                   	ret    

c010815f <strcpy>:
c010815f:	55                   	push   ebp
c0108160:	89 e5                	mov    ebp,esp
c0108162:	83 ec 10             	sub    esp,0x10
c0108165:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0108168:	89 45 fc             	mov    DWORD PTR [ebp-0x4],eax
c010816b:	90                   	nop
c010816c:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c010816f:	0f b6 10             	movzx  edx,BYTE PTR [eax]
c0108172:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0108175:	88 10                	mov    BYTE PTR [eax],dl
c0108177:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c010817a:	0f b6 00             	movzx  eax,BYTE PTR [eax]
c010817d:	84 c0                	test   al,al
c010817f:	0f 95 c0             	setne  al
c0108182:	83 45 08 01          	add    DWORD PTR [ebp+0x8],0x1
c0108186:	83 45 0c 01          	add    DWORD PTR [ebp+0xc],0x1
c010818a:	84 c0                	test   al,al
c010818c:	75 de                	jne    c010816c <strcpy+0xd>
c010818e:	8b 45 fc             	mov    eax,DWORD PTR [ebp-0x4]
c0108191:	c9                   	leave  
c0108192:	c3                   	ret    

c0108193 <strlen>:
c0108193:	55                   	push   ebp
c0108194:	89 e5                	mov    ebp,esp
c0108196:	83 ec 10             	sub    esp,0x10
c0108199:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [ebp-0x4],0x0
c01081a0:	eb 04                	jmp    c01081a6 <strlen+0x13>
c01081a2:	83 45 fc 01          	add    DWORD PTR [ebp-0x4],0x1
c01081a6:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c01081a9:	0f b6 00             	movzx  eax,BYTE PTR [eax]
c01081ac:	84 c0                	test   al,al
c01081ae:	0f 95 c0             	setne  al
c01081b1:	83 45 08 01          	add    DWORD PTR [ebp+0x8],0x1
c01081b5:	84 c0                	test   al,al
c01081b7:	75 e9                	jne    c01081a2 <strlen+0xf>
c01081b9:	8b 45 fc             	mov    eax,DWORD PTR [ebp-0x4]
c01081bc:	c9                   	leave  
c01081bd:	c3                   	ret    

c01081be <strcmp>:
c01081be:	55                   	push   ebp
c01081bf:	89 e5                	mov    ebp,esp
c01081c1:	83 ec 28             	sub    esp,0x28
c01081c4:	83 7d 08 00          	cmp    DWORD PTR [ebp+0x8],0x0
c01081c8:	74 06                	je     c01081d0 <strcmp+0x12>
c01081ca:	83 7d 0c 00          	cmp    DWORD PTR [ebp+0xc],0x0
c01081ce:	75 2e                	jne    c01081fe <strcmp+0x40>
c01081d0:	c7 44 24 10 b4 cb 10 	mov    DWORD PTR [esp+0x10],0xc010cbb4
c01081d7:	c0 
c01081d8:	c7 44 24 0c d5 cb 10 	mov    DWORD PTR [esp+0xc],0xc010cbd5
c01081df:	c0 
c01081e0:	c7 44 24 08 5d 00 00 	mov    DWORD PTR [esp+0x8],0x5d
c01081e7:	00 
c01081e8:	c7 44 24 04 69 cb 10 	mov    DWORD PTR [esp+0x4],0xc010cb69
c01081ef:	c0 
c01081f0:	c7 04 24 69 cb 10 c0 	mov    DWORD PTR [esp],0xc010cb69
c01081f7:	e8 a8 86 ff ff       	call   c01008a4 <panic_spin>
c01081fc:	eb 0a                	jmp    c0108208 <strcmp+0x4a>
c01081fe:	eb 08                	jmp    c0108208 <strcmp+0x4a>
c0108200:	83 45 08 01          	add    DWORD PTR [ebp+0x8],0x1
c0108204:	83 45 0c 01          	add    DWORD PTR [ebp+0xc],0x1
c0108208:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c010820b:	0f b6 00             	movzx  eax,BYTE PTR [eax]
c010820e:	84 c0                	test   al,al
c0108210:	74 10                	je     c0108222 <strcmp+0x64>
c0108212:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0108215:	0f b6 10             	movzx  edx,BYTE PTR [eax]
c0108218:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c010821b:	0f b6 00             	movzx  eax,BYTE PTR [eax]
c010821e:	38 c2                	cmp    dl,al
c0108220:	74 de                	je     c0108200 <strcmp+0x42>
c0108222:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0108225:	0f b6 10             	movzx  edx,BYTE PTR [eax]
c0108228:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c010822b:	0f b6 00             	movzx  eax,BYTE PTR [eax]
c010822e:	38 c2                	cmp    dl,al
c0108230:	7c 16                	jl     c0108248 <strcmp+0x8a>
c0108232:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0108235:	0f b6 10             	movzx  edx,BYTE PTR [eax]
c0108238:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c010823b:	0f b6 00             	movzx  eax,BYTE PTR [eax]
c010823e:	38 c2                	cmp    dl,al
c0108240:	0f 9f c0             	setg   al
c0108243:	0f b6 c0             	movzx  eax,al
c0108246:	eb 05                	jmp    c010824d <strcmp+0x8f>
c0108248:	b8 ff ff ff ff       	mov    eax,0xffffffff
c010824d:	c9                   	leave  
c010824e:	c3                   	ret    
	...

c0108250 <sprintf>:
c0108250:	55                   	push   ebp
c0108251:	89 e5                	mov    ebp,esp
c0108253:	83 ec 28             	sub    esp,0x28
c0108256:	8d 55 10             	lea    edx,[ebp+0x10]
c0108259:	8d 45 f0             	lea    eax,[ebp-0x10]
c010825c:	89 10                	mov    DWORD PTR [eax],edx
c010825e:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c0108261:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
c0108265:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c0108268:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c010826c:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c010826f:	89 04 24             	mov    DWORD PTR [esp],eax
c0108272:	e8 08 00 00 00       	call   c010827f <vsprintf>
c0108277:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
c010827a:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c010827d:	c9                   	leave  
c010827e:	c3                   	ret    

c010827f <vsprintf>:
c010827f:	55                   	push   ebp
c0108280:	89 e5                	mov    ebp,esp
c0108282:	53                   	push   ebx
c0108283:	83 ec 54             	sub    esp,0x54
c0108286:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0108289:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
c010828c:	e9 ab 02 00 00       	jmp    c010853c <vsprintf+0x2bd>
c0108291:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c0108294:	0f b6 00             	movzx  eax,BYTE PTR [eax]
c0108297:	3c 25                	cmp    al,0x25
c0108299:	74 14                	je     c01082af <vsprintf+0x30>
c010829b:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c010829e:	0f b6 10             	movzx  edx,BYTE PTR [eax]
c01082a1:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c01082a4:	88 10                	mov    BYTE PTR [eax],dl
c01082a6:	83 45 f4 01          	add    DWORD PTR [ebp-0xc],0x1
c01082aa:	e9 89 02 00 00       	jmp    c0108538 <vsprintf+0x2b9>
c01082af:	83 45 0c 01          	add    DWORD PTR [ebp+0xc],0x1
c01082b3:	c6 45 bb 00          	mov    BYTE PTR [ebp-0x45],0x0
c01082b7:	c7 45 e8 00 00 00 00 	mov    DWORD PTR [ebp-0x18],0x0
c01082be:	c7 45 e4 01 00 00 00 	mov    DWORD PTR [ebp-0x1c],0x1
c01082c5:	c7 45 ec 01 00 00 00 	mov    DWORD PTR [ebp-0x14],0x1
c01082cc:	eb 44                	jmp    c0108312 <vsprintf+0x93>
c01082ce:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c01082d1:	0f b6 00             	movzx  eax,BYTE PTR [eax]
c01082d4:	0f be c0             	movsx  eax,al
c01082d7:	83 e8 20             	sub    eax,0x20
c01082da:	83 f8 10             	cmp    eax,0x10
c01082dd:	77 21                	ja     c0108300 <vsprintf+0x81>
c01082df:	8b 04 85 14 cc 10 c0 	mov    eax,DWORD PTR [eax*4-0x3fef33ec]
c01082e6:	ff e0                	jmp    eax
c01082e8:	c7 45 e4 01 00 00 00 	mov    DWORD PTR [ebp-0x1c],0x1
c01082ef:	eb 1d                	jmp    c010830e <vsprintf+0x8f>
c01082f1:	c7 45 e4 00 00 00 00 	mov    DWORD PTR [ebp-0x1c],0x0
c01082f8:	eb 14                	jmp    c010830e <vsprintf+0x8f>
c01082fa:	83 4d e8 01          	or     DWORD PTR [ebp-0x18],0x1
c01082fe:	eb 0d                	jmp    c010830d <vsprintf+0x8e>
c0108300:	83 6d 0c 01          	sub    DWORD PTR [ebp+0xc],0x1
c0108304:	c7 45 ec 00 00 00 00 	mov    DWORD PTR [ebp-0x14],0x0
c010830b:	eb 01                	jmp    c010830e <vsprintf+0x8f>
c010830d:	90                   	nop
c010830e:	83 45 0c 01          	add    DWORD PTR [ebp+0xc],0x1
c0108312:	83 7d ec 00          	cmp    DWORD PTR [ebp-0x14],0x0
c0108316:	75 b6                	jne    c01082ce <vsprintf+0x4f>
c0108318:	c7 45 e0 00 00 00 00 	mov    DWORD PTR [ebp-0x20],0x0
c010831f:	eb 23                	jmp    c0108344 <vsprintf+0xc5>
c0108321:	8b 55 e0             	mov    edx,DWORD PTR [ebp-0x20]
c0108324:	89 d0                	mov    eax,edx
c0108326:	c1 e0 02             	shl    eax,0x2
c0108329:	01 d0                	add    eax,edx
c010832b:	01 c0                	add    eax,eax
c010832d:	89 c2                	mov    edx,eax
c010832f:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c0108332:	0f b6 00             	movzx  eax,BYTE PTR [eax]
c0108335:	0f be c0             	movsx  eax,al
c0108338:	83 e8 30             	sub    eax,0x30
c010833b:	01 d0                	add    eax,edx
c010833d:	89 45 e0             	mov    DWORD PTR [ebp-0x20],eax
c0108340:	83 45 0c 01          	add    DWORD PTR [ebp+0xc],0x1
c0108344:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c0108347:	0f b6 00             	movzx  eax,BYTE PTR [eax]
c010834a:	3c 2f                	cmp    al,0x2f
c010834c:	7e 0a                	jle    c0108358 <vsprintf+0xd9>
c010834e:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c0108351:	0f b6 00             	movzx  eax,BYTE PTR [eax]
c0108354:	3c 39                	cmp    al,0x39
c0108356:	7e c9                	jle    c0108321 <vsprintf+0xa2>
c0108358:	83 7d e0 00          	cmp    DWORD PTR [ebp-0x20],0x0
c010835c:	75 07                	jne    c0108365 <vsprintf+0xe6>
c010835e:	c7 45 e4 00 00 00 00 	mov    DWORD PTR [ebp-0x1c],0x0
c0108365:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c0108368:	0f b6 00             	movzx  eax,BYTE PTR [eax]
c010836b:	0f be c0             	movsx  eax,al
c010836e:	83 f8 6f             	cmp    eax,0x6f
c0108371:	0f 84 90 00 00 00    	je     c0108407 <vsprintf+0x188>
c0108377:	83 f8 6f             	cmp    eax,0x6f
c010837a:	7f 14                	jg     c0108390 <vsprintf+0x111>
c010837c:	83 f8 63             	cmp    eax,0x63
c010837f:	74 3e                	je     c01083bf <vsprintf+0x140>
c0108381:	83 f8 64             	cmp    eax,0x64
c0108384:	74 54                	je     c01083da <vsprintf+0x15b>
c0108386:	83 f8 25             	cmp    eax,0x25
c0108389:	74 25                	je     c01083b0 <vsprintf+0x131>
c010838b:	e9 24 01 00 00       	jmp    c01084b4 <vsprintf+0x235>
c0108390:	83 f8 73             	cmp    eax,0x73
c0108393:	0f 84 d0 00 00 00    	je     c0108469 <vsprintf+0x1ea>
c0108399:	83 f8 78             	cmp    eax,0x78
c010839c:	0f 84 e9 00 00 00    	je     c010848b <vsprintf+0x20c>
c01083a2:	83 f8 70             	cmp    eax,0x70
c01083a5:	0f 84 89 00 00 00    	je     c0108434 <vsprintf+0x1b5>
c01083ab:	e9 04 01 00 00       	jmp    c01084b4 <vsprintf+0x235>
c01083b0:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c01083b3:	c6 00 25             	mov    BYTE PTR [eax],0x25
c01083b6:	83 45 f4 01          	add    DWORD PTR [ebp-0xc],0x1
c01083ba:	e9 f5 00 00 00       	jmp    c01084b4 <vsprintf+0x235>
c01083bf:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
c01083c2:	8d 50 04             	lea    edx,[eax+0x4]
c01083c5:	89 55 10             	mov    DWORD PTR [ebp+0x10],edx
c01083c8:	8b 00                	mov    eax,DWORD PTR [eax]
c01083ca:	89 c2                	mov    edx,eax
c01083cc:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c01083cf:	88 10                	mov    BYTE PTR [eax],dl
c01083d1:	83 45 f4 01          	add    DWORD PTR [ebp-0xc],0x1
c01083d5:	e9 da 00 00 00       	jmp    c01084b4 <vsprintf+0x235>
c01083da:	8d 45 bb             	lea    eax,[ebp-0x45]
c01083dd:	89 45 f0             	mov    DWORD PTR [ebp-0x10],eax
c01083e0:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
c01083e3:	8d 50 04             	lea    edx,[eax+0x4]
c01083e6:	89 55 10             	mov    DWORD PTR [ebp+0x10],edx
c01083e9:	8b 00                	mov    eax,DWORD PTR [eax]
c01083eb:	c7 44 24 08 0a 00 00 	mov    DWORD PTR [esp+0x8],0xa
c01083f2:	00 
c01083f3:	8b 55 f0             	mov    edx,DWORD PTR [ebp-0x10]
c01083f6:	89 54 24 04          	mov    DWORD PTR [esp+0x4],edx
c01083fa:	89 04 24             	mov    DWORD PTR [esp],eax
c01083fd:	e8 44 f9 ff ff       	call   c0107d46 <itoa>
c0108402:	e9 ad 00 00 00       	jmp    c01084b4 <vsprintf+0x235>
c0108407:	8d 45 bb             	lea    eax,[ebp-0x45]
c010840a:	89 45 f0             	mov    DWORD PTR [ebp-0x10],eax
c010840d:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
c0108410:	8d 50 04             	lea    edx,[eax+0x4]
c0108413:	89 55 10             	mov    DWORD PTR [ebp+0x10],edx
c0108416:	8b 00                	mov    eax,DWORD PTR [eax]
c0108418:	c7 44 24 08 08 00 00 	mov    DWORD PTR [esp+0x8],0x8
c010841f:	00 
c0108420:	8b 55 f0             	mov    edx,DWORD PTR [ebp-0x10]
c0108423:	89 54 24 04          	mov    DWORD PTR [esp+0x4],edx
c0108427:	89 04 24             	mov    DWORD PTR [esp],eax
c010842a:	e8 17 f9 ff ff       	call   c0107d46 <itoa>
c010842f:	e9 80 00 00 00       	jmp    c01084b4 <vsprintf+0x235>
c0108434:	8d 45 bb             	lea    eax,[ebp-0x45]
c0108437:	89 45 f0             	mov    DWORD PTR [ebp-0x10],eax
c010843a:	c6 45 bb 30          	mov    BYTE PTR [ebp-0x45],0x30
c010843e:	c6 45 bc 78          	mov    BYTE PTR [ebp-0x44],0x78
c0108442:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
c0108445:	8d 50 04             	lea    edx,[eax+0x4]
c0108448:	89 55 10             	mov    DWORD PTR [ebp+0x10],edx
c010844b:	8b 00                	mov    eax,DWORD PTR [eax]
c010844d:	c7 44 24 08 10 00 00 	mov    DWORD PTR [esp+0x8],0x10
c0108454:	00 
c0108455:	8d 55 bb             	lea    edx,[ebp-0x45]
c0108458:	83 c2 02             	add    edx,0x2
c010845b:	89 54 24 04          	mov    DWORD PTR [esp+0x4],edx
c010845f:	89 04 24             	mov    DWORD PTR [esp],eax
c0108462:	e8 9e f9 ff ff       	call   c0107e05 <utoa>
c0108467:	eb 4b                	jmp    c01084b4 <vsprintf+0x235>
c0108469:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
c010846c:	8d 50 04             	lea    edx,[eax+0x4]
c010846f:	89 55 10             	mov    DWORD PTR [ebp+0x10],edx
c0108472:	8b 00                	mov    eax,DWORD PTR [eax]
c0108474:	89 45 f0             	mov    DWORD PTR [ebp-0x10],eax
c0108477:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c010847a:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c010847e:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0108481:	89 04 24             	mov    DWORD PTR [esp],eax
c0108484:	e8 d6 fc ff ff       	call   c010815f <strcpy>
c0108489:	eb 29                	jmp    c01084b4 <vsprintf+0x235>
c010848b:	8d 45 bb             	lea    eax,[ebp-0x45]
c010848e:	89 45 f0             	mov    DWORD PTR [ebp-0x10],eax
c0108491:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
c0108494:	8d 50 04             	lea    edx,[eax+0x4]
c0108497:	89 55 10             	mov    DWORD PTR [ebp+0x10],edx
c010849a:	8b 00                	mov    eax,DWORD PTR [eax]
c010849c:	c7 44 24 08 10 00 00 	mov    DWORD PTR [esp+0x8],0x10
c01084a3:	00 
c01084a4:	8b 55 f0             	mov    edx,DWORD PTR [ebp-0x10]
c01084a7:	89 54 24 04          	mov    DWORD PTR [esp+0x4],edx
c01084ab:	89 04 24             	mov    DWORD PTR [esp],eax
c01084ae:	e8 93 f8 ff ff       	call   c0107d46 <itoa>
c01084b3:	90                   	nop
c01084b4:	8b 5d e0             	mov    ebx,DWORD PTR [ebp-0x20]
c01084b7:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c01084ba:	89 04 24             	mov    DWORD PTR [esp],eax
c01084bd:	e8 d1 fc ff ff       	call   c0108193 <strlen>
c01084c2:	89 da                	mov    edx,ebx
c01084c4:	29 c2                	sub    edx,eax
c01084c6:	89 d0                	mov    eax,edx
c01084c8:	89 45 e0             	mov    DWORD PTR [ebp-0x20],eax
c01084cb:	eb 23                	jmp    c01084f0 <vsprintf+0x271>
c01084cd:	8b 45 e8             	mov    eax,DWORD PTR [ebp-0x18]
c01084d0:	83 e0 01             	and    eax,0x1
c01084d3:	84 c0                	test   al,al
c01084d5:	74 07                	je     c01084de <vsprintf+0x25f>
c01084d7:	b8 30 00 00 00       	mov    eax,0x30
c01084dc:	eb 05                	jmp    c01084e3 <vsprintf+0x264>
c01084de:	b8 20 00 00 00       	mov    eax,0x20
c01084e3:	8b 55 f4             	mov    edx,DWORD PTR [ebp-0xc]
c01084e6:	88 02                	mov    BYTE PTR [edx],al
c01084e8:	83 45 f4 01          	add    DWORD PTR [ebp-0xc],0x1
c01084ec:	83 6d e0 01          	sub    DWORD PTR [ebp-0x20],0x1
c01084f0:	83 7d e0 00          	cmp    DWORD PTR [ebp-0x20],0x0
c01084f4:	7e 06                	jle    c01084fc <vsprintf+0x27d>
c01084f6:	83 7d e4 01          	cmp    DWORD PTR [ebp-0x1c],0x1
c01084fa:	74 d1                	je     c01084cd <vsprintf+0x24e>
c01084fc:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c01084ff:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c0108503:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0108506:	89 04 24             	mov    DWORD PTR [esp],eax
c0108509:	e8 51 fc ff ff       	call   c010815f <strcpy>
c010850e:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c0108511:	89 04 24             	mov    DWORD PTR [esp],eax
c0108514:	e8 7a fc ff ff       	call   c0108193 <strlen>
c0108519:	01 45 f4             	add    DWORD PTR [ebp-0xc],eax
c010851c:	eb 0e                	jmp    c010852c <vsprintf+0x2ad>
c010851e:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c0108521:	c6 00 20             	mov    BYTE PTR [eax],0x20
c0108524:	83 45 f4 01          	add    DWORD PTR [ebp-0xc],0x1
c0108528:	83 6d e0 01          	sub    DWORD PTR [ebp-0x20],0x1
c010852c:	83 7d e0 00          	cmp    DWORD PTR [ebp-0x20],0x0
c0108530:	7e 06                	jle    c0108538 <vsprintf+0x2b9>
c0108532:	83 7d e4 00          	cmp    DWORD PTR [ebp-0x1c],0x0
c0108536:	74 e6                	je     c010851e <vsprintf+0x29f>
c0108538:	83 45 0c 01          	add    DWORD PTR [ebp+0xc],0x1
c010853c:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c010853f:	0f b6 00             	movzx  eax,BYTE PTR [eax]
c0108542:	84 c0                	test   al,al
c0108544:	0f 85 47 fd ff ff    	jne    c0108291 <vsprintf+0x12>
c010854a:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c010854d:	c6 00 00             	mov    BYTE PTR [eax],0x0
c0108550:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0108553:	89 04 24             	mov    DWORD PTR [esp],eax
c0108556:	e8 38 fc ff ff       	call   c0108193 <strlen>
c010855b:	83 c4 54             	add    esp,0x54
c010855e:	5b                   	pop    ebx
c010855f:	5d                   	pop    ebp
c0108560:	c3                   	ret    
c0108561:	00 00                	add    BYTE PTR [eax],al
	...

c0108564 <rgb>:
c0108564:	55                   	push   ebp
c0108565:	89 e5                	mov    ebp,esp
c0108567:	56                   	push   esi
c0108568:	53                   	push   ebx
c0108569:	83 ec 10             	sub    esp,0x10
c010856c:	c7 45 f4 00 00 00 00 	mov    DWORD PTR [ebp-0xc],0x0
c0108573:	c6 45 ef 00          	mov    BYTE PTR [ebp-0x11],0x0
c0108577:	c6 45 ee 00          	mov    BYTE PTR [ebp-0x12],0x0
c010857b:	c6 45 ed 00          	mov    BYTE PTR [ebp-0x13],0x0
c010857f:	c6 45 ec 00          	mov    BYTE PTR [ebp-0x14],0x0
c0108583:	c6 45 eb 00          	mov    BYTE PTR [ebp-0x15],0x0
c0108587:	c6 45 ea 00          	mov    BYTE PTR [ebp-0x16],0x0
c010858b:	b8 2c 7c 00 c0       	mov    eax,0xc0007c2c
c0108590:	8b 00                	mov    eax,DWORD PTR [eax]
c0108592:	3d ff 02 00 00       	cmp    eax,0x2ff
c0108597:	77 1d                	ja     c01085b6 <rgb+0x52>
c0108599:	c6 45 ef 08          	mov    BYTE PTR [ebp-0x11],0x8
c010859d:	c6 45 ee 10          	mov    BYTE PTR [ebp-0x12],0x10
c01085a1:	c6 45 ed 08          	mov    BYTE PTR [ebp-0x13],0x8
c01085a5:	c6 45 ec 08          	mov    BYTE PTR [ebp-0x14],0x8
c01085a9:	c6 45 eb 08          	mov    BYTE PTR [ebp-0x15],0x8
c01085ad:	c6 45 ea 00          	mov    BYTE PTR [ebp-0x16],0x0
c01085b1:	e9 d2 00 00 00       	jmp    c0108688 <rgb+0x124>
c01085b6:	b8 2c 7c 00 c0       	mov    eax,0xc0007c2c
c01085bb:	8b 00                	mov    eax,DWORD PTR [eax]
c01085bd:	3d ff 02 00 00       	cmp    eax,0x2ff
c01085c2:	0f 86 c0 00 00 00    	jbe    c0108688 <rgb+0x124>
c01085c8:	b8 30 7c 00 c0       	mov    eax,0xc0007c30
c01085cd:	8b 00                	mov    eax,DWORD PTR [eax]
c01085cf:	89 c2                	mov    edx,eax
c01085d1:	c1 e2 04             	shl    edx,0x4
c01085d4:	b8 34 7c 00 c0       	mov    eax,0xc0007c34
c01085d9:	8b 00                	mov    eax,DWORD PTR [eax]
c01085db:	01 d0                	add    eax,edx
c01085dd:	2d ca ff ff 3f       	sub    eax,0x3fffffca
c01085e2:	0f b6 00             	movzx  eax,BYTE PTR [eax]
c01085e5:	88 45 ef             	mov    BYTE PTR [ebp-0x11],al
c01085e8:	b8 30 7c 00 c0       	mov    eax,0xc0007c30
c01085ed:	8b 00                	mov    eax,DWORD PTR [eax]
c01085ef:	89 c2                	mov    edx,eax
c01085f1:	c1 e2 04             	shl    edx,0x4
c01085f4:	b8 34 7c 00 c0       	mov    eax,0xc0007c34
c01085f9:	8b 00                	mov    eax,DWORD PTR [eax]
c01085fb:	01 d0                	add    eax,edx
c01085fd:	2d c9 ff ff 3f       	sub    eax,0x3fffffc9
c0108602:	0f b6 00             	movzx  eax,BYTE PTR [eax]
c0108605:	88 45 ee             	mov    BYTE PTR [ebp-0x12],al
c0108608:	b8 30 7c 00 c0       	mov    eax,0xc0007c30
c010860d:	8b 00                	mov    eax,DWORD PTR [eax]
c010860f:	89 c2                	mov    edx,eax
c0108611:	c1 e2 04             	shl    edx,0x4
c0108614:	b8 34 7c 00 c0       	mov    eax,0xc0007c34
c0108619:	8b 00                	mov    eax,DWORD PTR [eax]
c010861b:	01 d0                	add    eax,edx
c010861d:	2d c8 ff ff 3f       	sub    eax,0x3fffffc8
c0108622:	0f b6 00             	movzx  eax,BYTE PTR [eax]
c0108625:	88 45 ed             	mov    BYTE PTR [ebp-0x13],al
c0108628:	b8 30 7c 00 c0       	mov    eax,0xc0007c30
c010862d:	8b 00                	mov    eax,DWORD PTR [eax]
c010862f:	89 c2                	mov    edx,eax
c0108631:	c1 e2 04             	shl    edx,0x4
c0108634:	b8 34 7c 00 c0       	mov    eax,0xc0007c34
c0108639:	8b 00                	mov    eax,DWORD PTR [eax]
c010863b:	01 d0                	add    eax,edx
c010863d:	2d c7 ff ff 3f       	sub    eax,0x3fffffc7
c0108642:	0f b6 00             	movzx  eax,BYTE PTR [eax]
c0108645:	88 45 ec             	mov    BYTE PTR [ebp-0x14],al
c0108648:	b8 30 7c 00 c0       	mov    eax,0xc0007c30
c010864d:	8b 00                	mov    eax,DWORD PTR [eax]
c010864f:	89 c2                	mov    edx,eax
c0108651:	c1 e2 04             	shl    edx,0x4
c0108654:	b8 34 7c 00 c0       	mov    eax,0xc0007c34
c0108659:	8b 00                	mov    eax,DWORD PTR [eax]
c010865b:	01 d0                	add    eax,edx
c010865d:	2d c6 ff ff 3f       	sub    eax,0x3fffffc6
c0108662:	0f b6 00             	movzx  eax,BYTE PTR [eax]
c0108665:	88 45 eb             	mov    BYTE PTR [ebp-0x15],al
c0108668:	b8 30 7c 00 c0       	mov    eax,0xc0007c30
c010866d:	8b 00                	mov    eax,DWORD PTR [eax]
c010866f:	89 c2                	mov    edx,eax
c0108671:	c1 e2 04             	shl    edx,0x4
c0108674:	b8 34 7c 00 c0       	mov    eax,0xc0007c34
c0108679:	8b 00                	mov    eax,DWORD PTR [eax]
c010867b:	01 d0                	add    eax,edx
c010867d:	2d c5 ff ff 3f       	sub    eax,0x3fffffc5
c0108682:	0f b6 00             	movzx  eax,BYTE PTR [eax]
c0108685:	88 45 ea             	mov    BYTE PTR [ebp-0x16],al
c0108688:	0f b6 45 ef          	movzx  eax,BYTE PTR [ebp-0x11]
c010868c:	89 45 f0             	mov    DWORD PTR [ebp-0x10],eax
c010868f:	eb 0b                	jmp    c010869c <rgb+0x138>
c0108691:	d1 65 f4             	shl    DWORD PTR [ebp-0xc],1
c0108694:	83 4d f4 01          	or     DWORD PTR [ebp-0xc],0x1
c0108698:	83 6d f0 01          	sub    DWORD PTR [ebp-0x10],0x1
c010869c:	83 7d f0 00          	cmp    DWORD PTR [ebp-0x10],0x0
c01086a0:	7f ef                	jg     c0108691 <rgb+0x12d>
c01086a2:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c01086a5:	21 45 08             	and    DWORD PTR [ebp+0x8],eax
c01086a8:	c7 45 f4 00 00 00 00 	mov    DWORD PTR [ebp-0xc],0x0
c01086af:	0f b6 45 ed          	movzx  eax,BYTE PTR [ebp-0x13]
c01086b3:	89 45 f0             	mov    DWORD PTR [ebp-0x10],eax
c01086b6:	eb 0b                	jmp    c01086c3 <rgb+0x15f>
c01086b8:	d1 65 f4             	shl    DWORD PTR [ebp-0xc],1
c01086bb:	83 4d f4 01          	or     DWORD PTR [ebp-0xc],0x1
c01086bf:	83 6d f0 01          	sub    DWORD PTR [ebp-0x10],0x1
c01086c3:	83 7d f0 00          	cmp    DWORD PTR [ebp-0x10],0x0
c01086c7:	7f ef                	jg     c01086b8 <rgb+0x154>
c01086c9:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c01086cc:	21 45 0c             	and    DWORD PTR [ebp+0xc],eax
c01086cf:	c7 45 f4 01 00 00 00 	mov    DWORD PTR [ebp-0xc],0x1
c01086d6:	0f b6 45 eb          	movzx  eax,BYTE PTR [ebp-0x15]
c01086da:	89 45 f0             	mov    DWORD PTR [ebp-0x10],eax
c01086dd:	eb 0b                	jmp    c01086ea <rgb+0x186>
c01086df:	d1 65 f4             	shl    DWORD PTR [ebp-0xc],1
c01086e2:	83 4d f4 01          	or     DWORD PTR [ebp-0xc],0x1
c01086e6:	83 6d f0 01          	sub    DWORD PTR [ebp-0x10],0x1
c01086ea:	83 7d f0 00          	cmp    DWORD PTR [ebp-0x10],0x0
c01086ee:	7f ef                	jg     c01086df <rgb+0x17b>
c01086f0:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
c01086f3:	21 45 10             	and    DWORD PTR [ebp+0x10],eax
c01086f6:	0f b6 45 ee          	movzx  eax,BYTE PTR [ebp-0x12]
c01086fa:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
c01086fd:	89 d3                	mov    ebx,edx
c01086ff:	89 c1                	mov    ecx,eax
c0108701:	d3 e3                	shl    ebx,cl
c0108703:	0f b6 45 ec          	movzx  eax,BYTE PTR [ebp-0x14]
c0108707:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
c010870a:	89 d6                	mov    esi,edx
c010870c:	89 c1                	mov    ecx,eax
c010870e:	d3 e6                	shl    esi,cl
c0108710:	89 f0                	mov    eax,esi
c0108712:	09 c3                	or     ebx,eax
c0108714:	0f b6 45 ea          	movzx  eax,BYTE PTR [ebp-0x16]
c0108718:	8b 55 10             	mov    edx,DWORD PTR [ebp+0x10]
c010871b:	89 d6                	mov    esi,edx
c010871d:	89 c1                	mov    ecx,eax
c010871f:	d3 e6                	shl    esi,cl
c0108721:	89 f0                	mov    eax,esi
c0108723:	09 d8                	or     eax,ebx
c0108725:	83 c4 10             	add    esp,0x10
c0108728:	5b                   	pop    ebx
c0108729:	5e                   	pop    esi
c010872a:	5d                   	pop    ebp
c010872b:	c3                   	ret    

c010872c <viewFill>:
c010872c:	55                   	push   ebp
c010872d:	89 e5                	mov    ebp,esp
c010872f:	83 ec 10             	sub    esp,0x10
c0108732:	b8 14 7c 00 c0       	mov    eax,0xc0007c14
c0108737:	8b 00                	mov    eax,DWORD PTR [eax]
c0108739:	83 f8 01             	cmp    eax,0x1
c010873c:	75 52                	jne    c0108790 <viewFill+0x64>
c010873e:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
c0108741:	25 00 00 00 ff       	and    eax,0xff000000
c0108746:	3d 00 00 00 ff       	cmp    eax,0xff000000
c010874b:	74 46                	je     c0108793 <viewFill+0x67>
c010874d:	8b 45 18             	mov    eax,DWORD PTR [ebp+0x18]
c0108750:	89 45 f8             	mov    DWORD PTR [ebp-0x8],eax
c0108753:	eb 31                	jmp    c0108786 <viewFill+0x5a>
c0108755:	8b 45 14             	mov    eax,DWORD PTR [ebp+0x14]
c0108758:	89 45 fc             	mov    DWORD PTR [ebp-0x4],eax
c010875b:	eb 1d                	jmp    c010877a <viewFill+0x4e>
c010875d:	8b 45 f8             	mov    eax,DWORD PTR [ebp-0x8]
c0108760:	0f af 45 0c          	imul   eax,DWORD PTR [ebp+0xc]
c0108764:	89 c2                	mov    edx,eax
c0108766:	8b 45 fc             	mov    eax,DWORD PTR [ebp-0x4]
c0108769:	01 d0                	add    eax,edx
c010876b:	c1 e0 02             	shl    eax,0x2
c010876e:	03 45 08             	add    eax,DWORD PTR [ebp+0x8]
c0108771:	8b 55 10             	mov    edx,DWORD PTR [ebp+0x10]
c0108774:	89 10                	mov    DWORD PTR [eax],edx
c0108776:	83 45 fc 01          	add    DWORD PTR [ebp-0x4],0x1
c010877a:	8b 45 fc             	mov    eax,DWORD PTR [ebp-0x4]
c010877d:	3b 45 1c             	cmp    eax,DWORD PTR [ebp+0x1c]
c0108780:	7e db                	jle    c010875d <viewFill+0x31>
c0108782:	83 45 f8 01          	add    DWORD PTR [ebp-0x8],0x1
c0108786:	8b 45 f8             	mov    eax,DWORD PTR [ebp-0x8]
c0108789:	3b 45 20             	cmp    eax,DWORD PTR [ebp+0x20]
c010878c:	7e c7                	jle    c0108755 <viewFill+0x29>
c010878e:	eb 03                	jmp    c0108793 <viewFill+0x67>
c0108790:	90                   	nop
c0108791:	eb 01                	jmp    c0108794 <viewFill+0x68>
c0108793:	90                   	nop
c0108794:	c9                   	leave  
c0108795:	c3                   	ret    

c0108796 <vput_char>:
c0108796:	55                   	push   ebp
c0108797:	89 e5                	mov    ebp,esp
c0108799:	83 ec 24             	sub    esp,0x24
c010879c:	8b 45 1c             	mov    eax,DWORD PTR [ebp+0x1c]
c010879f:	88 45 dc             	mov    BYTE PTR [ebp-0x24],al
c01087a2:	0f be 45 dc          	movsx  eax,BYTE PTR [ebp-0x24]
c01087a6:	89 45 f8             	mov    DWORD PTR [ebp-0x8],eax
c01087a9:	8b 45 f8             	mov    eax,DWORD PTR [ebp-0x8]
c01087ac:	c1 e0 04             	shl    eax,0x4
c01087af:	05 60 8e 10 c0       	add    eax,0xc0108e60
c01087b4:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
c01087b7:	b8 14 7c 00 c0       	mov    eax,0xc0007c14
c01087bc:	8b 00                	mov    eax,DWORD PTR [eax]
c01087be:	83 f8 01             	cmp    eax,0x1
c01087c1:	0f 85 e8 00 00 00    	jne    c01088af <vput_char+0x119>
c01087c7:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [ebp-0x4],0x0
c01087ce:	e9 d2 00 00 00       	jmp    c01088a5 <vput_char+0x10f>
c01087d3:	8b 45 fc             	mov    eax,DWORD PTR [ebp-0x4]
c01087d6:	8b 55 14             	mov    edx,DWORD PTR [ebp+0x14]
c01087d9:	01 d0                	add    eax,edx
c01087db:	0f af 45 0c          	imul   eax,DWORD PTR [ebp+0xc]
c01087df:	03 45 10             	add    eax,DWORD PTR [ebp+0x10]
c01087e2:	c1 e0 02             	shl    eax,0x2
c01087e5:	03 45 08             	add    eax,DWORD PTR [ebp+0x8]
c01087e8:	89 45 f0             	mov    DWORD PTR [ebp-0x10],eax
c01087eb:	8b 45 fc             	mov    eax,DWORD PTR [ebp-0x4]
c01087ee:	03 45 f4             	add    eax,DWORD PTR [ebp-0xc]
c01087f1:	0f b6 00             	movzx  eax,BYTE PTR [eax]
c01087f4:	88 45 ef             	mov    BYTE PTR [ebp-0x11],al
c01087f7:	0f b6 45 ef          	movzx  eax,BYTE PTR [ebp-0x11]
c01087fb:	84 c0                	test   al,al
c01087fd:	79 08                	jns    c0108807 <vput_char+0x71>
c01087ff:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c0108802:	8b 55 18             	mov    edx,DWORD PTR [ebp+0x18]
c0108805:	89 10                	mov    DWORD PTR [eax],edx
c0108807:	0f b6 45 ef          	movzx  eax,BYTE PTR [ebp-0x11]
c010880b:	83 e0 40             	and    eax,0x40
c010880e:	85 c0                	test   eax,eax
c0108810:	74 0b                	je     c010881d <vput_char+0x87>
c0108812:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c0108815:	8d 50 04             	lea    edx,[eax+0x4]
c0108818:	8b 45 18             	mov    eax,DWORD PTR [ebp+0x18]
c010881b:	89 02                	mov    DWORD PTR [edx],eax
c010881d:	0f b6 45 ef          	movzx  eax,BYTE PTR [ebp-0x11]
c0108821:	83 e0 20             	and    eax,0x20
c0108824:	85 c0                	test   eax,eax
c0108826:	74 0b                	je     c0108833 <vput_char+0x9d>
c0108828:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c010882b:	8d 50 08             	lea    edx,[eax+0x8]
c010882e:	8b 45 18             	mov    eax,DWORD PTR [ebp+0x18]
c0108831:	89 02                	mov    DWORD PTR [edx],eax
c0108833:	0f b6 45 ef          	movzx  eax,BYTE PTR [ebp-0x11]
c0108837:	83 e0 10             	and    eax,0x10
c010883a:	85 c0                	test   eax,eax
c010883c:	74 0b                	je     c0108849 <vput_char+0xb3>
c010883e:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c0108841:	8d 50 0c             	lea    edx,[eax+0xc]
c0108844:	8b 45 18             	mov    eax,DWORD PTR [ebp+0x18]
c0108847:	89 02                	mov    DWORD PTR [edx],eax
c0108849:	0f b6 45 ef          	movzx  eax,BYTE PTR [ebp-0x11]
c010884d:	83 e0 08             	and    eax,0x8
c0108850:	85 c0                	test   eax,eax
c0108852:	74 0b                	je     c010885f <vput_char+0xc9>
c0108854:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c0108857:	8d 50 10             	lea    edx,[eax+0x10]
c010885a:	8b 45 18             	mov    eax,DWORD PTR [ebp+0x18]
c010885d:	89 02                	mov    DWORD PTR [edx],eax
c010885f:	0f b6 45 ef          	movzx  eax,BYTE PTR [ebp-0x11]
c0108863:	83 e0 04             	and    eax,0x4
c0108866:	85 c0                	test   eax,eax
c0108868:	74 0b                	je     c0108875 <vput_char+0xdf>
c010886a:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c010886d:	8d 50 14             	lea    edx,[eax+0x14]
c0108870:	8b 45 18             	mov    eax,DWORD PTR [ebp+0x18]
c0108873:	89 02                	mov    DWORD PTR [edx],eax
c0108875:	0f b6 45 ef          	movzx  eax,BYTE PTR [ebp-0x11]
c0108879:	83 e0 02             	and    eax,0x2
c010887c:	85 c0                	test   eax,eax
c010887e:	74 0b                	je     c010888b <vput_char+0xf5>
c0108880:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c0108883:	8d 50 18             	lea    edx,[eax+0x18]
c0108886:	8b 45 18             	mov    eax,DWORD PTR [ebp+0x18]
c0108889:	89 02                	mov    DWORD PTR [edx],eax
c010888b:	0f b6 45 ef          	movzx  eax,BYTE PTR [ebp-0x11]
c010888f:	83 e0 01             	and    eax,0x1
c0108892:	84 c0                	test   al,al
c0108894:	74 0b                	je     c01088a1 <vput_char+0x10b>
c0108896:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c0108899:	8d 50 1c             	lea    edx,[eax+0x1c]
c010889c:	8b 45 18             	mov    eax,DWORD PTR [ebp+0x18]
c010889f:	89 02                	mov    DWORD PTR [edx],eax
c01088a1:	83 45 fc 01          	add    DWORD PTR [ebp-0x4],0x1
c01088a5:	83 7d fc 0f          	cmp    DWORD PTR [ebp-0x4],0xf
c01088a9:	0f 8e 24 ff ff ff    	jle    c01087d3 <vput_char+0x3d>
c01088af:	c9                   	leave  
c01088b0:	c3                   	ret    

c01088b1 <vput_str>:
c01088b1:	55                   	push   ebp
c01088b2:	89 e5                	mov    ebp,esp
c01088b4:	83 ec 28             	sub    esp,0x28
c01088b7:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
c01088ba:	89 45 fc             	mov    DWORD PTR [ebp-0x4],eax
c01088bd:	8b 45 14             	mov    eax,DWORD PTR [ebp+0x14]
c01088c0:	89 45 f8             	mov    DWORD PTR [ebp-0x8],eax
c01088c3:	eb 6f                	jmp    c0108934 <vput_str+0x83>
c01088c5:	8b 45 1c             	mov    eax,DWORD PTR [ebp+0x1c]
c01088c8:	0f b6 00             	movzx  eax,BYTE PTR [eax]
c01088cb:	0f be c0             	movsx  eax,al
c01088ce:	83 f8 0a             	cmp    eax,0xa
c01088d1:	74 18                	je     c01088eb <vput_str+0x3a>
c01088d3:	83 f8 0d             	cmp    eax,0xd
c01088d6:	74 13                	je     c01088eb <vput_str+0x3a>
c01088d8:	83 f8 09             	cmp    eax,0x9
c01088db:	75 1a                	jne    c01088f7 <vput_str+0x46>
c01088dd:	8b 45 fc             	mov    eax,DWORD PTR [ebp-0x4]
c01088e0:	83 c0 20             	add    eax,0x20
c01088e3:	83 e0 e0             	and    eax,0xffffffe0
c01088e6:	89 45 fc             	mov    DWORD PTR [ebp-0x4],eax
c01088e9:	eb 45                	jmp    c0108930 <vput_str+0x7f>
c01088eb:	83 45 f8 10          	add    DWORD PTR [ebp-0x8],0x10
c01088ef:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
c01088f2:	89 45 fc             	mov    DWORD PTR [ebp-0x4],eax
c01088f5:	eb 39                	jmp    c0108930 <vput_str+0x7f>
c01088f7:	8b 45 1c             	mov    eax,DWORD PTR [ebp+0x1c]
c01088fa:	0f b6 00             	movzx  eax,BYTE PTR [eax]
c01088fd:	0f be c0             	movsx  eax,al
c0108900:	89 44 24 14          	mov    DWORD PTR [esp+0x14],eax
c0108904:	8b 45 18             	mov    eax,DWORD PTR [ebp+0x18]
c0108907:	89 44 24 10          	mov    DWORD PTR [esp+0x10],eax
c010890b:	8b 45 f8             	mov    eax,DWORD PTR [ebp-0x8]
c010890e:	89 44 24 0c          	mov    DWORD PTR [esp+0xc],eax
c0108912:	8b 45 fc             	mov    eax,DWORD PTR [ebp-0x4]
c0108915:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
c0108919:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
c010891c:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
c0108920:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
c0108923:	89 04 24             	mov    DWORD PTR [esp],eax
c0108926:	e8 6b fe ff ff       	call   c0108796 <vput_char>
c010892b:	83 45 fc 08          	add    DWORD PTR [ebp-0x4],0x8
c010892f:	90                   	nop
c0108930:	83 45 1c 01          	add    DWORD PTR [ebp+0x1c],0x1
c0108934:	8b 45 1c             	mov    eax,DWORD PTR [ebp+0x1c]
c0108937:	0f b6 00             	movzx  eax,BYTE PTR [eax]
c010893a:	84 c0                	test   al,al
c010893c:	75 87                	jne    c01088c5 <vput_str+0x14>
c010893e:	c9                   	leave  
c010893f:	c3                   	ret    

c0108940 <init_screen>:
c0108940:	55                   	push   ebp
c0108941:	89 e5                	mov    ebp,esp
c0108943:	57                   	push   edi
c0108944:	56                   	push   esi
c0108945:	53                   	push   ebx
c0108946:	83 ec 34             	sub    esp,0x34
c0108949:	b8 24 7c 00 c0       	mov    eax,0xc0007c24
c010894e:	8b 00                	mov    eax,DWORD PTR [eax]
c0108950:	d1 e8                	shr    eax,1
c0108952:	2d 96 00 00 00       	sub    eax,0x96
c0108957:	89 45 e8             	mov    DWORD PTR [ebp-0x18],eax
c010895a:	b8 28 7c 00 c0       	mov    eax,0xc0007c28
c010895f:	8b 00                	mov    eax,DWORD PTR [eax]
c0108961:	d1 e8                	shr    eax,1
c0108963:	2d 96 00 00 00       	sub    eax,0x96
c0108968:	89 45 e4             	mov    DWORD PTR [ebp-0x1c],eax
c010896b:	c7 45 f0 00 00 00 00 	mov    DWORD PTR [ebp-0x10],0x0
c0108972:	e9 76 01 00 00       	jmp    c0108aed <init_screen+0x1ad>
c0108977:	c7 45 ec 00 00 00 00 	mov    DWORD PTR [ebp-0x14],0x0
c010897e:	e9 5c 01 00 00       	jmp    c0108adf <init_screen+0x19f>
c0108983:	8b 55 f0             	mov    edx,DWORD PTR [ebp-0x10]
c0108986:	89 d0                	mov    eax,edx
c0108988:	c1 e0 04             	shl    eax,0x4
c010898b:	29 d0                	sub    eax,edx
c010898d:	03 45 ec             	add    eax,DWORD PTR [ebp-0x14]
c0108990:	05 00 8b 10 c0       	add    eax,0xc0108b00
c0108995:	0f b6 00             	movzx  eax,BYTE PTR [eax]
c0108998:	3c 23                	cmp    al,0x23
c010899a:	0f 85 a0 00 00 00    	jne    c0108a40 <init_screen+0x100>
c01089a0:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c01089a3:	8d 50 01             	lea    edx,[eax+0x1]
c01089a6:	89 d0                	mov    eax,edx
c01089a8:	c1 e0 02             	shl    eax,0x2
c01089ab:	01 d0                	add    eax,edx
c01089ad:	c1 e0 02             	shl    eax,0x2
c01089b0:	8b 55 e4             	mov    edx,DWORD PTR [ebp-0x1c]
c01089b3:	01 c2                	add    edx,eax
c01089b5:	89 55 e0             	mov    DWORD PTR [ebp-0x20],edx
c01089b8:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
c01089bb:	8d 50 01             	lea    edx,[eax+0x1]
c01089be:	89 d0                	mov    eax,edx
c01089c0:	c1 e0 02             	shl    eax,0x2
c01089c3:	01 d0                	add    eax,edx
c01089c5:	c1 e0 02             	shl    eax,0x2
c01089c8:	89 c7                	mov    edi,eax
c01089ca:	03 7d e8             	add    edi,DWORD PTR [ebp-0x18]
c01089cd:	8b 55 f0             	mov    edx,DWORD PTR [ebp-0x10]
c01089d0:	89 d0                	mov    eax,edx
c01089d2:	c1 e0 02             	shl    eax,0x2
c01089d5:	01 d0                	add    eax,edx
c01089d7:	c1 e0 02             	shl    eax,0x2
c01089da:	89 c6                	mov    esi,eax
c01089dc:	03 75 e4             	add    esi,DWORD PTR [ebp-0x1c]
c01089df:	8b 55 ec             	mov    edx,DWORD PTR [ebp-0x14]
c01089e2:	89 d0                	mov    eax,edx
c01089e4:	c1 e0 02             	shl    eax,0x2
c01089e7:	01 d0                	add    eax,edx
c01089e9:	c1 e0 02             	shl    eax,0x2
c01089ec:	89 c3                	mov    ebx,eax
c01089ee:	03 5d e8             	add    ebx,DWORD PTR [ebp-0x18]
c01089f1:	c7 44 24 08 ff 00 00 	mov    DWORD PTR [esp+0x8],0xff
c01089f8:	00 
c01089f9:	c7 44 24 04 ff 00 00 	mov    DWORD PTR [esp+0x4],0xff
c0108a00:	00 
c0108a01:	c7 04 24 ff 00 00 00 	mov    DWORD PTR [esp],0xff
c0108a08:	e8 57 fb ff ff       	call   c0108564 <rgb>
c0108a0d:	ba 24 7c 00 c0       	mov    edx,0xc0007c24
c0108a12:	8b 12                	mov    edx,DWORD PTR [edx]
c0108a14:	8b 4d e0             	mov    ecx,DWORD PTR [ebp-0x20]
c0108a17:	89 4c 24 18          	mov    DWORD PTR [esp+0x18],ecx
c0108a1b:	89 7c 24 14          	mov    DWORD PTR [esp+0x14],edi
c0108a1f:	89 74 24 10          	mov    DWORD PTR [esp+0x10],esi
c0108a23:	89 5c 24 0c          	mov    DWORD PTR [esp+0xc],ebx
c0108a27:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
c0108a2b:	89 54 24 04          	mov    DWORD PTR [esp+0x4],edx
c0108a2f:	c7 04 24 00 00 00 e0 	mov    DWORD PTR [esp],0xe0000000
c0108a36:	e8 f1 fc ff ff       	call   c010872c <viewFill>
c0108a3b:	e9 9b 00 00 00       	jmp    c0108adb <init_screen+0x19b>
c0108a40:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
c0108a43:	8d 50 01             	lea    edx,[eax+0x1]
c0108a46:	89 d0                	mov    eax,edx
c0108a48:	c1 e0 02             	shl    eax,0x2
c0108a4b:	01 d0                	add    eax,edx
c0108a4d:	c1 e0 02             	shl    eax,0x2
c0108a50:	8b 55 e4             	mov    edx,DWORD PTR [ebp-0x1c]
c0108a53:	01 c2                	add    edx,eax
c0108a55:	89 55 dc             	mov    DWORD PTR [ebp-0x24],edx
c0108a58:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
c0108a5b:	8d 50 01             	lea    edx,[eax+0x1]
c0108a5e:	89 d0                	mov    eax,edx
c0108a60:	c1 e0 02             	shl    eax,0x2
c0108a63:	01 d0                	add    eax,edx
c0108a65:	c1 e0 02             	shl    eax,0x2
c0108a68:	89 c7                	mov    edi,eax
c0108a6a:	03 7d e8             	add    edi,DWORD PTR [ebp-0x18]
c0108a6d:	8b 55 f0             	mov    edx,DWORD PTR [ebp-0x10]
c0108a70:	89 d0                	mov    eax,edx
c0108a72:	c1 e0 02             	shl    eax,0x2
c0108a75:	01 d0                	add    eax,edx
c0108a77:	c1 e0 02             	shl    eax,0x2
c0108a7a:	89 c6                	mov    esi,eax
c0108a7c:	03 75 e4             	add    esi,DWORD PTR [ebp-0x1c]
c0108a7f:	8b 55 ec             	mov    edx,DWORD PTR [ebp-0x14]
c0108a82:	89 d0                	mov    eax,edx
c0108a84:	c1 e0 02             	shl    eax,0x2
c0108a87:	01 d0                	add    eax,edx
c0108a89:	c1 e0 02             	shl    eax,0x2
c0108a8c:	89 c3                	mov    ebx,eax
c0108a8e:	03 5d e8             	add    ebx,DWORD PTR [ebp-0x18]
c0108a91:	c7 44 24 08 00 00 00 	mov    DWORD PTR [esp+0x8],0x0
c0108a98:	00 
c0108a99:	c7 44 24 04 00 00 00 	mov    DWORD PTR [esp+0x4],0x0
c0108aa0:	00 
c0108aa1:	c7 04 24 00 00 00 00 	mov    DWORD PTR [esp],0x0
c0108aa8:	e8 b7 fa ff ff       	call   c0108564 <rgb>
c0108aad:	ba 24 7c 00 c0       	mov    edx,0xc0007c24
c0108ab2:	8b 12                	mov    edx,DWORD PTR [edx]
c0108ab4:	8b 4d dc             	mov    ecx,DWORD PTR [ebp-0x24]
c0108ab7:	89 4c 24 18          	mov    DWORD PTR [esp+0x18],ecx
c0108abb:	89 7c 24 14          	mov    DWORD PTR [esp+0x14],edi
c0108abf:	89 74 24 10          	mov    DWORD PTR [esp+0x10],esi
c0108ac3:	89 5c 24 0c          	mov    DWORD PTR [esp+0xc],ebx
c0108ac7:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
c0108acb:	89 54 24 04          	mov    DWORD PTR [esp+0x4],edx
c0108acf:	c7 04 24 00 00 00 e0 	mov    DWORD PTR [esp],0xe0000000
c0108ad6:	e8 51 fc ff ff       	call   c010872c <viewFill>
c0108adb:	83 45 ec 01          	add    DWORD PTR [ebp-0x14],0x1
c0108adf:	83 7d ec 0e          	cmp    DWORD PTR [ebp-0x14],0xe
c0108ae3:	0f 8e 9a fe ff ff    	jle    c0108983 <init_screen+0x43>
c0108ae9:	83 45 f0 01          	add    DWORD PTR [ebp-0x10],0x1
c0108aed:	83 7d f0 0e          	cmp    DWORD PTR [ebp-0x10],0xe
c0108af1:	0f 8e 80 fe ff ff    	jle    c0108977 <init_screen+0x37>
c0108af7:	83 c4 34             	add    esp,0x34
c0108afa:	5b                   	pop    ebx
c0108afb:	5e                   	pop    esi
c0108afc:	5f                   	pop    edi
c0108afd:	5d                   	pop    ebp
c0108afe:	c3                   	ret    

Disassembly of section .data:

c0108b00 <PencilLogo>:
c0108b00:	20 20                	and    BYTE PTR [eax],ah
c0108b02:	20 20                	and    BYTE PTR [eax],ah
c0108b04:	20 20                	and    BYTE PTR [eax],ah
c0108b06:	20 20                	and    BYTE PTR [eax],ah
c0108b08:	20 20                	and    BYTE PTR [eax],ah
c0108b0a:	20 20                	and    BYTE PTR [eax],ah
c0108b0c:	20 20                	and    BYTE PTR [eax],ah
c0108b0e:	20 20                	and    BYTE PTR [eax],ah
c0108b10:	23 23                	and    esp,DWORD PTR [ebx]
c0108b12:	23 23                	and    esp,DWORD PTR [ebx]
c0108b14:	23 23                	and    esp,DWORD PTR [ebx]
c0108b16:	23 23                	and    esp,DWORD PTR [ebx]
c0108b18:	23 23                	and    esp,DWORD PTR [ebx]
c0108b1a:	23 23                	and    esp,DWORD PTR [ebx]
c0108b1c:	23 20                	and    esp,DWORD PTR [eax]
c0108b1e:	20 23                	and    BYTE PTR [ebx],ah
c0108b20:	20 20                	and    BYTE PTR [eax],ah
c0108b22:	20 20                	and    BYTE PTR [eax],ah
c0108b24:	20 20                	and    BYTE PTR [eax],ah
c0108b26:	20 20                	and    BYTE PTR [eax],ah
c0108b28:	20 20                	and    BYTE PTR [eax],ah
c0108b2a:	20 23                	and    BYTE PTR [ebx],ah
c0108b2c:	20 20                	and    BYTE PTR [eax],ah
c0108b2e:	23 20                	and    esp,DWORD PTR [eax]
c0108b30:	20 20                	and    BYTE PTR [eax],ah
c0108b32:	20 20                	and    BYTE PTR [eax],ah
c0108b34:	20 20                	and    BYTE PTR [eax],ah
c0108b36:	20 20                	and    BYTE PTR [eax],ah
c0108b38:	20 20                	and    BYTE PTR [eax],ah
c0108b3a:	23 20                	and    esp,DWORD PTR [eax]
c0108b3c:	20 23                	and    BYTE PTR [ebx],ah
c0108b3e:	20 20                	and    BYTE PTR [eax],ah
c0108b40:	20 20                	and    BYTE PTR [eax],ah
c0108b42:	20 20                	and    BYTE PTR [eax],ah
c0108b44:	20 20                	and    BYTE PTR [eax],ah
c0108b46:	20 20                	and    BYTE PTR [eax],ah
c0108b48:	20 23                	and    BYTE PTR [ebx],ah
c0108b4a:	20 20                	and    BYTE PTR [eax],ah
c0108b4c:	23 20                	and    esp,DWORD PTR [eax]
c0108b4e:	20 20                	and    BYTE PTR [eax],ah
c0108b50:	23 23                	and    esp,DWORD PTR [ebx]
c0108b52:	23 23                	and    esp,DWORD PTR [ebx]
c0108b54:	23 20                	and    esp,DWORD PTR [eax]
c0108b56:	20 20                	and    BYTE PTR [eax],ah
c0108b58:	23 20                	and    esp,DWORD PTR [eax]
c0108b5a:	20 23                	and    BYTE PTR [ebx],ah
c0108b5c:	20 20                	and    BYTE PTR [eax],ah
c0108b5e:	20 23                	and    BYTE PTR [ebx],ah
c0108b60:	20 20                	and    BYTE PTR [eax],ah
c0108b62:	20 23                	and    BYTE PTR [ebx],ah
c0108b64:	20 20                	and    BYTE PTR [eax],ah
c0108b66:	20 23                	and    BYTE PTR [ebx],ah
c0108b68:	20 20                	and    BYTE PTR [eax],ah
c0108b6a:	23 20                	and    esp,DWORD PTR [eax]
c0108b6c:	20 20                	and    BYTE PTR [eax],ah
c0108b6e:	23 20                	and    esp,DWORD PTR [eax]
c0108b70:	20 20                	and    BYTE PTR [eax],ah
c0108b72:	23 20                	and    esp,DWORD PTR [eax]
c0108b74:	20 20                	and    BYTE PTR [eax],ah
c0108b76:	23 20                	and    esp,DWORD PTR [eax]
c0108b78:	20 23                	and    BYTE PTR [ebx],ah
c0108b7a:	20 20                	and    BYTE PTR [eax],ah
c0108b7c:	20 23                	and    BYTE PTR [ebx],ah
c0108b7e:	20 20                	and    BYTE PTR [eax],ah
c0108b80:	20 23                	and    BYTE PTR [ebx],ah
c0108b82:	20 20                	and    BYTE PTR [eax],ah
c0108b84:	20 23                	and    BYTE PTR [ebx],ah
c0108b86:	20 20                	and    BYTE PTR [eax],ah
c0108b88:	23 23                	and    esp,DWORD PTR [ebx]
c0108b8a:	23 23                	and    esp,DWORD PTR [ebx]
c0108b8c:	23 23                	and    esp,DWORD PTR [ebx]
c0108b8e:	23 23                	and    esp,DWORD PTR [ebx]
c0108b90:	23 20                	and    esp,DWORD PTR [eax]
c0108b92:	20 20                	and    BYTE PTR [eax],ah
c0108b94:	23 20                	and    esp,DWORD PTR [eax]
c0108b96:	20 23                	and    BYTE PTR [ebx],ah
c0108b98:	23 20                	and    esp,DWORD PTR [eax]
c0108b9a:	20 23                	and    BYTE PTR [ebx],ah
c0108b9c:	20 20                	and    BYTE PTR [eax],ah
c0108b9e:	20 20                	and    BYTE PTR [eax],ah
c0108ba0:	20 20                	and    BYTE PTR [eax],ah
c0108ba2:	20 23                	and    BYTE PTR [ebx],ah
c0108ba4:	20 20                	and    BYTE PTR [eax],ah
c0108ba6:	23 20                	and    esp,DWORD PTR [eax]
c0108ba8:	23 20                	and    esp,DWORD PTR [eax]
c0108baa:	23 20                	and    esp,DWORD PTR [eax]
c0108bac:	20 20                	and    BYTE PTR [eax],ah
c0108bae:	20 20                	and    BYTE PTR [eax],ah
c0108bb0:	20 20                	and    BYTE PTR [eax],ah
c0108bb2:	23 20                	and    esp,DWORD PTR [eax]
c0108bb4:	20 23                	and    BYTE PTR [ebx],ah
c0108bb6:	20 20                	and    BYTE PTR [eax],ah
c0108bb8:	23 23                	and    esp,DWORD PTR [ebx]
c0108bba:	20 20                	and    BYTE PTR [eax],ah
c0108bbc:	20 20                	and    BYTE PTR [eax],ah
c0108bbe:	20 20                	and    BYTE PTR [eax],ah
c0108bc0:	20 23                	and    BYTE PTR [ebx],ah
c0108bc2:	20 20                	and    BYTE PTR [eax],ah
c0108bc4:	23 23                	and    esp,DWORD PTR [ebx]
c0108bc6:	23 23                	and    esp,DWORD PTR [ebx]
c0108bc8:	23 23                	and    esp,DWORD PTR [ebx]
c0108bca:	23 23                	and    esp,DWORD PTR [ebx]
c0108bcc:	23 23                	and    esp,DWORD PTR [ebx]
c0108bce:	23 23                	and    esp,DWORD PTR [ebx]
c0108bd0:	23 20                	and    esp,DWORD PTR [eax]
c0108bd2:	20 20                	and    BYTE PTR [eax],ah
c0108bd4:	20 20                	and    BYTE PTR [eax],ah
c0108bd6:	20 20                	and    BYTE PTR [eax],ah
c0108bd8:	20 20                	and    BYTE PTR [eax],ah
c0108bda:	20 20                	and    BYTE PTR [eax],ah
c0108bdc:	20 20                	and    BYTE PTR [eax],ah
c0108bde:	20 20                	and    BYTE PTR [eax],ah
c0108be0:	20 00                	and    BYTE PTR [eax],al
	...

c0108c00 <cursor.1575>:
c0108c00:	2a 2d 2d 2d 2d 2d    	sub    ch,BYTE PTR ds:0x2d2d2d2d
c0108c06:	2d 2d 2d 2d 2d       	sub    eax,0x2d2d2d2d
c0108c0b:	2d 2d 2d 2d 2d       	sub    eax,0x2d2d2d2d
c0108c10:	2a 2a                	sub    ch,BYTE PTR [edx]
c0108c12:	2d 2d 2d 2d 2d       	sub    eax,0x2d2d2d2d
c0108c17:	2d 2d 2d 2d 2d       	sub    eax,0x2d2d2d2d
c0108c1c:	2d 2d 2d 2d 2a       	sub    eax,0x2a2d2d2d
c0108c21:	23 2a                	and    ebp,DWORD PTR [edx]
c0108c23:	2d 2d 2d 2d 2d       	sub    eax,0x2d2d2d2d
c0108c28:	2d 2d 2d 2d 2d       	sub    eax,0x2d2d2d2d
c0108c2d:	2d 2d 2d 2a 23       	sub    eax,0x232a2d2d
c0108c32:	23 2a                	and    ebp,DWORD PTR [edx]
c0108c34:	2d 2d 2d 2d 2d       	sub    eax,0x2d2d2d2d
c0108c39:	2d 2d 2d 2d 2d       	sub    eax,0x2d2d2d2d
c0108c3e:	2d 2d 2a 23 23       	sub    eax,0x23232a2d
c0108c43:	23 2a                	and    ebp,DWORD PTR [edx]
c0108c45:	2d 2d 2d 2d 2d       	sub    eax,0x2d2d2d2d
c0108c4a:	2d 2d 2d 2d 2d       	sub    eax,0x2d2d2d2d
c0108c4f:	2d 2a 23 23 23       	sub    eax,0x2323232a
c0108c54:	23 2a                	and    ebp,DWORD PTR [edx]
c0108c56:	2d 2d 2d 2d 2d       	sub    eax,0x2d2d2d2d
c0108c5b:	2d 2d 2d 2d 2d       	sub    eax,0x2d2d2d2d
c0108c60:	2a 23                	sub    ah,BYTE PTR [ebx]
c0108c62:	23 23                	and    esp,DWORD PTR [ebx]
c0108c64:	23 23                	and    esp,DWORD PTR [ebx]
c0108c66:	2a 2d 2d 2d 2d 2d    	sub    ch,BYTE PTR ds:0x2d2d2d2d
c0108c6c:	2d 2d 2d 2d 2a       	sub    eax,0x2a2d2d2d
c0108c71:	23 23                	and    esp,DWORD PTR [ebx]
c0108c73:	23 23                	and    esp,DWORD PTR [ebx]
c0108c75:	23 23                	and    esp,DWORD PTR [ebx]
c0108c77:	2a 2d 2d 2d 2d 2d    	sub    ch,BYTE PTR ds:0x2d2d2d2d
c0108c7d:	2d 2d 2d 2a 23       	sub    eax,0x232a2d2d
c0108c82:	23 23                	and    esp,DWORD PTR [ebx]
c0108c84:	23 23                	and    esp,DWORD PTR [ebx]
c0108c86:	23 23                	and    esp,DWORD PTR [ebx]
c0108c88:	2a 2d 2d 2d 2d 2d    	sub    ch,BYTE PTR ds:0x2d2d2d2d
c0108c8e:	2d 2d 2a 23 23       	sub    eax,0x23232a2d
c0108c93:	23 23                	and    esp,DWORD PTR [ebx]
c0108c95:	2a 2a                	sub    ch,BYTE PTR [edx]
c0108c97:	2a 2a                	sub    ch,BYTE PTR [edx]
c0108c99:	2a 2d 2d 2d 2d 2d    	sub    ch,BYTE PTR ds:0x2d2d2d2d
c0108c9f:	2d 2a 23 23 2a       	sub    eax,0x2a23232a
c0108ca4:	23 2a                	and    ebp,DWORD PTR [edx]
c0108ca6:	2d 2d 2d 2d 2d       	sub    eax,0x2d2d2d2d
c0108cab:	2d 2d 2d 2d 2d       	sub    eax,0x2d2d2d2d
c0108cb0:	2a 23                	sub    ah,BYTE PTR [ebx]
c0108cb2:	2a 2d 2a 23 2a 2d    	sub    ch,BYTE PTR ds:0x2d2a232a
c0108cb8:	2d 2d 2d 2d 2d       	sub    eax,0x2d2d2d2d
c0108cbd:	2d 2d 2d 2a 2a       	sub    eax,0x2a2a2d2d
c0108cc2:	2d 2d 2a 23 2a       	sub    eax,0x2a232a2d
c0108cc7:	2d 2d 2d 2d 2d       	sub    eax,0x2d2d2d2d
c0108ccc:	2d 2d 2d 2d 2a       	sub    eax,0x2a2d2d2d
c0108cd1:	2d 2d 2d 2d 2a       	sub    eax,0x2a2d2d2d
c0108cd6:	23 2a                	and    ebp,DWORD PTR [edx]
c0108cd8:	2d 2d 2d 2d 2d       	sub    eax,0x2d2d2d2d
c0108cdd:	2d 2d 2d 2d 2d       	sub    eax,0x2d2d2d2d
c0108ce2:	2d 2d 2d 2a 23       	sub    eax,0x232a2d2d
c0108ce7:	2a 2d 2d 2d 2d 2d    	sub    ch,BYTE PTR ds:0x2d2d2d2d
c0108ced:	2d 2d 2d 2d 2d       	sub    eax,0x2d2d2d2d
c0108cf2:	2d 2d 2d 2d 2a       	sub    eax,0x2a2d2d2d
c0108cf7:	2d 2d 2d 2d 2d       	sub    eax,0x2d2d2d2d
c0108cfc:	2d 2d 2d 2d 14       	sub    eax,0x142d2d2d

c0108d00 <intr_entry_table>:
c0108d00:	14 0a                	adc    al,0xa
c0108d02:	10 c0                	adc    al,al
c0108d04:	37                   	aaa    
c0108d05:	0a 10                	or     dl,BYTE PTR [eax]
c0108d07:	c0 5a 0a 10          	rcr    BYTE PTR [edx+0xa],0x10
c0108d0b:	c0 7d 0a 10          	sar    BYTE PTR [ebp+0xa],0x10
c0108d0f:	c0 a0 0a 10 c0 c3 0a 	shl    BYTE PTR [eax-0x3c3feff6],0xa
c0108d16:	10 c0                	adc    al,al
c0108d18:	e6 0a                	out    0xa,al
c0108d1a:	10 c0                	adc    al,al
c0108d1c:	09 0b                	or     DWORD PTR [ebx],ecx
c0108d1e:	10 c0                	adc    al,al
c0108d20:	2c 0b                	sub    al,0xb
c0108d22:	10 c0                	adc    al,al
c0108d24:	4b                   	dec    ebx
c0108d25:	0b 10                	or     edx,DWORD PTR [eax]
c0108d27:	c0 6e 0b 10          	shr    BYTE PTR [esi+0xb],0x10
c0108d2b:	c0 8d 0b 10 c0 ac 0b 	ror    BYTE PTR [ebp-0x533feff5],0xb
c0108d32:	10 c0                	adc    al,al
c0108d34:	cf                   	iret   
c0108d35:	0b 10                	or     edx,DWORD PTR [eax]
c0108d37:	c0 ee 0b             	shr    dh,0xb
c0108d3a:	10 c0                	adc    al,al
c0108d3c:	0d 0c 10 c0 30       	or     eax,0x30c0100c
c0108d41:	0c 10                	or     al,0x10
c0108d43:	c0 53 0c 10          	rcl    BYTE PTR [ebx+0xc],0x10
c0108d47:	c0                   	(bad)  
c0108d48:	72 0c                	jb     c0108d56 <intr_entry_table+0x56>
c0108d4a:	10 c0                	adc    al,al
c0108d4c:	95                   	xchg   ebp,eax
c0108d4d:	0c 10                	or     al,0x10
c0108d4f:	c0 b8 0c 10 c0 db 0c 	sar    BYTE PTR [eax-0x243feff4],0xc
c0108d56:	10 c0                	adc    al,al
c0108d58:	fe 0c 10             	dec    BYTE PTR [eax+edx*1]
c0108d5b:	c0 21 0d             	shl    BYTE PTR [ecx],0xd
c0108d5e:	10 c0                	adc    al,al
c0108d60:	44                   	inc    esp
c0108d61:	0d 10 c0 63 0d       	or     eax,0xd63c010
c0108d66:	10 c0                	adc    al,al
c0108d68:	86 0d 10 c0 a5 0d    	xchg   BYTE PTR ds:0xda5c010,cl
c0108d6e:	10 c0                	adc    al,al
c0108d70:	c4 0d 10 c0 e7 0d    	les    ecx,FWORD PTR ds:0xde7c010
c0108d76:	10 c0                	adc    al,al
c0108d78:	06                   	push   es
c0108d79:	0e                   	push   cs
c0108d7a:	10 c0                	adc    al,al
c0108d7c:	25 0e 10 c0 48       	and    eax,0x48c0100e
c0108d81:	0e                   	push   cs
c0108d82:	10 c0                	adc    al,al
c0108d84:	6b 0e 10             	imul   ecx,DWORD PTR [esi],0x10
c0108d87:	c0 8e 0e 10 c0 b1 0e 	ror    BYTE PTR [esi-0x4e3feff2],0xe
c0108d8e:	10 c0                	adc    al,al
c0108d90:	d4 0e                	aam    0xe
c0108d92:	10 c0                	adc    al,al
c0108d94:	f7                   	(bad)  
c0108d95:	0e                   	push   cs
c0108d96:	10 c0                	adc    al,al
c0108d98:	1a 0f                	sbb    cl,BYTE PTR [edi]
c0108d9a:	10 c0                	adc    al,al
c0108d9c:	3d 0f 10 c0 60       	cmp    eax,0x60c0100f
c0108da1:	0f 10 c0             	movups xmm0,xmm0
c0108da4:	83 0f 10             	or     DWORD PTR [edi],0x10
c0108da7:	c0 a6 0f 10 c0 c9 0f 	shl    BYTE PTR [esi-0x363feff1],0xf
c0108dae:	10 c0                	adc    al,al
c0108db0:	ec                   	in     al,dx
c0108db1:	0f 10 c0             	movups xmm0,xmm0
c0108db4:	0f 10 10             	movups xmm2,XMMWORD PTR [eax]
c0108db7:	c0                   	(bad)  
c0108db8:	32 10                	xor    dl,BYTE PTR [eax]
c0108dba:	10 c0                	adc    al,al
c0108dbc:	55                   	push   ebp
c0108dbd:	10 10                	adc    BYTE PTR [eax],dl
c0108dbf:	c0 00 00             	rol    BYTE PTR [eax],0x0

c0108dc0 <keymap>:
c0108dc0:	00 00                	add    BYTE PTR [eax],al
c0108dc2:	1b 1b                	sbb    ebx,DWORD PTR [ebx]
c0108dc4:	31 21                	xor    DWORD PTR [ecx],esp
c0108dc6:	32 40 33             	xor    al,BYTE PTR [eax+0x33]
c0108dc9:	23 34 24             	and    esi,DWORD PTR [esp]
c0108dcc:	35 25 36 5e 37       	xor    eax,0x375e3625
c0108dd1:	26 38 2a             	cmp    BYTE PTR es:[edx],ch
c0108dd4:	39 28                	cmp    DWORD PTR [eax],ebp
c0108dd6:	30 29                	xor    BYTE PTR [ecx],ch
c0108dd8:	2d 5f 3d 2b 08       	sub    eax,0x82b3d5f
c0108ddd:	08 09                	or     BYTE PTR [ecx],cl
c0108ddf:	09 71 51             	or     DWORD PTR [ecx+0x51],esi
c0108de2:	77 57                	ja     c0108e3b <pos_x+0x3>
c0108de4:	65 45                	gs inc ebp
c0108de6:	72 52                	jb     c0108e3a <pos_x+0x2>
c0108de8:	74 54                	je     c0108e3e <pos_y+0x2>
c0108dea:	79 59                	jns    c0108e45 <win_ysize+0x1>
c0108dec:	75 55                	jne    c0108e43 <win_xsize+0x3>
c0108dee:	69 49 6f 4f 70 50 5b 	imul   ecx,DWORD PTR [ecx+0x6f],0x5b50704f
c0108df5:	7b 5d                	jnp    c0108e54 <win_ysize+0x10>
c0108df7:	7d 0d                	jge    c0108e06 <keymap+0x46>
c0108df9:	0d 00 00 61 41       	or     eax,0x41610000
c0108dfe:	73 53                	jae    c0108e53 <win_ysize+0xf>
c0108e00:	64 44                	fs inc esp
c0108e02:	66 46                	inc    si
c0108e04:	67 47                	addr16 inc edi
c0108e06:	68 48 6a 4a 6b       	push   0x6b4a6a48
c0108e0b:	4b                   	dec    ebx
c0108e0c:	6c                   	ins    BYTE PTR es:[edi],dx
c0108e0d:	4c                   	dec    esp
c0108e0e:	3b 3a                	cmp    edi,DWORD PTR [edx]
c0108e10:	27                   	daa    
c0108e11:	22 60 7e             	and    ah,BYTE PTR [eax+0x7e]
c0108e14:	00 00                	add    BYTE PTR [eax],al
c0108e16:	5c                   	pop    esp
c0108e17:	7c 7a                	jl     c0108e93 <PKnFont+0x33>
c0108e19:	5a                   	pop    edx
c0108e1a:	78 58                	js     c0108e74 <PKnFont+0x14>
c0108e1c:	63 43 76             	arpl   WORD PTR [ebx+0x76],ax
c0108e1f:	56                   	push   esi
c0108e20:	62 42 6e             	bound  eax,QWORD PTR [edx+0x6e]
c0108e23:	4e                   	dec    esi
c0108e24:	6d                   	ins    DWORD PTR es:[edi],dx
c0108e25:	4d                   	dec    ebp
c0108e26:	2c 3c                	sub    al,0x3c
c0108e28:	2e 3e 2f             	cs ds das 
c0108e2b:	3f                   	aas    
c0108e2c:	00 00                	add    BYTE PTR [eax],al
c0108e2e:	2a 2a                	sub    ch,BYTE PTR [edx]
c0108e30:	00 00                	add    BYTE PTR [eax],al
c0108e32:	20 20                	and    BYTE PTR [eax],ah
c0108e34:	00 00                	add    BYTE PTR [eax],al
	...

c0108e38 <pos_x>:
c0108e38:	01 00                	add    DWORD PTR [eax],eax
	...

c0108e3c <pos_y>:
c0108e3c:	18 00                	sbb    BYTE PTR [eax],al
	...

c0108e40 <win_xsize>:
c0108e40:	90                   	nop
c0108e41:	01 00                	add    DWORD PTR [eax],eax
	...

c0108e44 <win_ysize>:
c0108e44:	f0 00 00             	lock add BYTE PTR [eax],al
	...

c0108e60 <PKnFont>:
	...
c0109070:	00 10                	add    BYTE PTR [eax],dl
c0109072:	10 10                	adc    BYTE PTR [eax],dl
c0109074:	10 10                	adc    BYTE PTR [eax],dl
c0109076:	10 10                	adc    BYTE PTR [eax],dl
c0109078:	10 10                	adc    BYTE PTR [eax],dl
c010907a:	00 00                	add    BYTE PTR [eax],al
c010907c:	10 10                	adc    BYTE PTR [eax],dl
c010907e:	00 00                	add    BYTE PTR [eax],al
c0109080:	28 28                	sub    BYTE PTR [eax],ch
c0109082:	28 00                	sub    BYTE PTR [eax],al
	...
c0109090:	00 44 44 44          	add    BYTE PTR [esp+eax*2+0x44],al
c0109094:	fe 44 44 44          	inc    BYTE PTR [esp+eax*2+0x44]
c0109098:	44                   	inc    esp
c0109099:	44                   	inc    esp
c010909a:	fe 44 44 44          	inc    BYTE PTR [esp+eax*2+0x44]
c010909e:	00 00                	add    BYTE PTR [eax],al
c01090a0:	10 3a                	adc    BYTE PTR [edx],bh
c01090a2:	56                   	push   esi
c01090a3:	92                   	xchg   edx,eax
c01090a4:	92                   	xchg   edx,eax
c01090a5:	90                   	nop
c01090a6:	50                   	push   eax
c01090a7:	38 14 12             	cmp    BYTE PTR [edx+edx*1],dl
c01090aa:	92                   	xchg   edx,eax
c01090ab:	92                   	xchg   edx,eax
c01090ac:	d4 b8                	aam    0xb8
c01090ae:	10 10                	adc    BYTE PTR [eax],dl
c01090b0:	62 92 94 94 68 08    	bound  edx,QWORD PTR [edx+0x8689494]
c01090b6:	10 10                	adc    BYTE PTR [eax],dl
c01090b8:	20 2c 52             	and    BYTE PTR [edx+edx*2],ch
c01090bb:	52                   	push   edx
c01090bc:	92                   	xchg   edx,eax
c01090bd:	8c 00                	mov    WORD PTR [eax],es
c01090bf:	00 00                	add    BYTE PTR [eax],al
c01090c1:	70 88                	jo     c010904b <PKnFont+0x1eb>
c01090c3:	88 88 90 60 47 a2    	mov    BYTE PTR [eax-0x5db89f70],cl
c01090c9:	92                   	xchg   edx,eax
c01090ca:	8a 84 46 39 00 00 04 	mov    al,BYTE PTR [esi+eax*2+0x4000039]
c01090d1:	08 10                	or     BYTE PTR [eax],dl
	...
c01090df:	00 02                	add    BYTE PTR [edx],al
c01090e1:	04 08                	add    al,0x8
c01090e3:	08 10                	or     BYTE PTR [eax],dl
c01090e5:	10 10                	adc    BYTE PTR [eax],dl
c01090e7:	10 10                	adc    BYTE PTR [eax],dl
c01090e9:	10 10                	adc    BYTE PTR [eax],dl
c01090eb:	08 08                	or     BYTE PTR [eax],cl
c01090ed:	04 02                	add    al,0x2
c01090ef:	00 80 40 20 20 10    	add    BYTE PTR [eax+0x10202040],al
c01090f5:	10 10                	adc    BYTE PTR [eax],dl
c01090f7:	10 10                	adc    BYTE PTR [eax],dl
c01090f9:	10 10                	adc    BYTE PTR [eax],dl
c01090fb:	20 20                	and    BYTE PTR [eax],ah
c01090fd:	40                   	inc    eax
c01090fe:	80 00 00             	add    BYTE PTR [eax],0x0
c0109101:	00 00                	add    BYTE PTR [eax],al
c0109103:	00 00                	add    BYTE PTR [eax],al
c0109105:	10 92 54 38 54 92    	adc    BYTE PTR [edx-0x6dabc7ac],dl
c010910b:	10 00                	adc    BYTE PTR [eax],al
	...
c0109115:	10 10                	adc    BYTE PTR [eax],dl
c0109117:	10 fe                	adc    dh,bh
c0109119:	10 10                	adc    BYTE PTR [eax],dl
c010911b:	10 00                	adc    BYTE PTR [eax],al
	...
c0109129:	00 00                	add    BYTE PTR [eax],al
c010912b:	18 18                	sbb    BYTE PTR [eax],bl
c010912d:	08 08                	or     BYTE PTR [eax],cl
c010912f:	10 00                	adc    BYTE PTR [eax],al
c0109131:	00 00                	add    BYTE PTR [eax],al
c0109133:	00 00                	add    BYTE PTR [eax],al
c0109135:	00 00                	add    BYTE PTR [eax],al
c0109137:	00 fe                	add    dh,bh
	...
c0109149:	00 00                	add    BYTE PTR [eax],al
c010914b:	00 18                	add    BYTE PTR [eax],bl
c010914d:	18 00                	sbb    BYTE PTR [eax],al
c010914f:	00 02                	add    BYTE PTR [edx],al
c0109151:	02 04 04             	add    al,BYTE PTR [esp+eax*1]
c0109154:	08 08                	or     BYTE PTR [eax],cl
c0109156:	08 10                	or     BYTE PTR [eax],dl
c0109158:	10 20                	adc    BYTE PTR [eax],ah
c010915a:	20 40 40             	and    BYTE PTR [eax+0x40],al
c010915d:	40                   	inc    eax
c010915e:	80 80 00 18 24 24 42 	add    BYTE PTR [eax+0x24241800],0x42
c0109165:	42                   	inc    edx
c0109166:	42                   	inc    edx
c0109167:	42                   	inc    edx
c0109168:	42                   	inc    edx
c0109169:	42                   	inc    edx
c010916a:	42                   	inc    edx
c010916b:	24 24                	and    al,0x24
c010916d:	18 00                	sbb    BYTE PTR [eax],al
c010916f:	00 00                	add    BYTE PTR [eax],al
c0109171:	08 18                	or     BYTE PTR [eax],bl
c0109173:	28 08                	sub    BYTE PTR [eax],cl
c0109175:	08 08                	or     BYTE PTR [eax],cl
c0109177:	08 08                	or     BYTE PTR [eax],cl
c0109179:	08 08                	or     BYTE PTR [eax],cl
c010917b:	08 08                	or     BYTE PTR [eax],cl
c010917d:	3e 00 00             	add    BYTE PTR ds:[eax],al
c0109180:	00 18                	add    BYTE PTR [eax],bl
c0109182:	24 42                	and    al,0x42
c0109184:	42                   	inc    edx
c0109185:	02 04 08             	add    al,BYTE PTR [eax+ecx*1]
c0109188:	10 20                	adc    BYTE PTR [eax],ah
c010918a:	20 40 40             	and    BYTE PTR [eax+0x40],al
c010918d:	7e 00                	jle    c010918f <PKnFont+0x32f>
c010918f:	00 00                	add    BYTE PTR [eax],al
c0109191:	18 24 42             	sbb    BYTE PTR [edx+eax*2],ah
c0109194:	02 02                	add    al,BYTE PTR [edx]
c0109196:	04 18                	add    al,0x18
c0109198:	04 02                	add    al,0x2
c010919a:	02 42 24             	add    al,BYTE PTR [edx+0x24]
c010919d:	18 00                	sbb    BYTE PTR [eax],al
c010919f:	00 00                	add    BYTE PTR [eax],al
c01091a1:	0c 0c                	or     al,0xc
c01091a3:	0c 14                	or     al,0x14
c01091a5:	14 14                	adc    al,0x14
c01091a7:	24 24                	and    al,0x24
c01091a9:	44                   	inc    esp
c01091aa:	7e 04                	jle    c01091b0 <PKnFont+0x350>
c01091ac:	04 1e                	add    al,0x1e
c01091ae:	00 00                	add    BYTE PTR [eax],al
c01091b0:	00 7c 40 40          	add    BYTE PTR [eax+eax*2+0x40],bh
c01091b4:	40                   	inc    eax
c01091b5:	58                   	pop    eax
c01091b6:	64 02 02             	add    al,BYTE PTR fs:[edx]
c01091b9:	02 02                	add    al,BYTE PTR [edx]
c01091bb:	42                   	inc    edx
c01091bc:	24 18                	and    al,0x18
c01091be:	00 00                	add    BYTE PTR [eax],al
c01091c0:	00 18                	add    BYTE PTR [eax],bl
c01091c2:	24 42                	and    al,0x42
c01091c4:	40                   	inc    eax
c01091c5:	58                   	pop    eax
c01091c6:	64 42                	fs inc edx
c01091c8:	42                   	inc    edx
c01091c9:	42                   	inc    edx
c01091ca:	42                   	inc    edx
c01091cb:	42                   	inc    edx
c01091cc:	24 18                	and    al,0x18
c01091ce:	00 00                	add    BYTE PTR [eax],al
c01091d0:	00 7e 42             	add    BYTE PTR [esi+0x42],bh
c01091d3:	42                   	inc    edx
c01091d4:	04 04                	add    al,0x4
c01091d6:	08 08                	or     BYTE PTR [eax],cl
c01091d8:	08 10                	or     BYTE PTR [eax],dl
c01091da:	10 10                	adc    BYTE PTR [eax],dl
c01091dc:	10 38                	adc    BYTE PTR [eax],bh
c01091de:	00 00                	add    BYTE PTR [eax],al
c01091e0:	00 18                	add    BYTE PTR [eax],bl
c01091e2:	24 42                	and    al,0x42
c01091e4:	42                   	inc    edx
c01091e5:	42                   	inc    edx
c01091e6:	24 18                	and    al,0x18
c01091e8:	24 42                	and    al,0x42
c01091ea:	42                   	inc    edx
c01091eb:	42                   	inc    edx
c01091ec:	24 18                	and    al,0x18
c01091ee:	00 00                	add    BYTE PTR [eax],al
c01091f0:	00 18                	add    BYTE PTR [eax],bl
c01091f2:	24 42                	and    al,0x42
c01091f4:	42                   	inc    edx
c01091f5:	42                   	inc    edx
c01091f6:	42                   	inc    edx
c01091f7:	42                   	inc    edx
c01091f8:	26 1a 02             	sbb    al,BYTE PTR es:[edx]
c01091fb:	42                   	inc    edx
c01091fc:	24 18                	and    al,0x18
c01091fe:	00 00                	add    BYTE PTR [eax],al
c0109200:	00 00                	add    BYTE PTR [eax],al
c0109202:	00 00                	add    BYTE PTR [eax],al
c0109204:	00 18                	add    BYTE PTR [eax],bl
c0109206:	18 00                	sbb    BYTE PTR [eax],al
c0109208:	00 00                	add    BYTE PTR [eax],al
c010920a:	00 00                	add    BYTE PTR [eax],al
c010920c:	18 18                	sbb    BYTE PTR [eax],bl
c010920e:	00 00                	add    BYTE PTR [eax],al
c0109210:	00 00                	add    BYTE PTR [eax],al
c0109212:	00 00                	add    BYTE PTR [eax],al
c0109214:	00 18                	add    BYTE PTR [eax],bl
c0109216:	18 00                	sbb    BYTE PTR [eax],al
c0109218:	00 00                	add    BYTE PTR [eax],al
c010921a:	00 18                	add    BYTE PTR [eax],bl
c010921c:	18 08                	sbb    BYTE PTR [eax],cl
c010921e:	08 10                	or     BYTE PTR [eax],dl
c0109220:	00 02                	add    BYTE PTR [edx],al
c0109222:	04 08                	add    al,0x8
c0109224:	10 20                	adc    BYTE PTR [eax],ah
c0109226:	40                   	inc    eax
c0109227:	80 80 40 20 10 08 04 	add    BYTE PTR [eax+0x8102040],0x4
c010922e:	02 00                	add    al,BYTE PTR [eax]
c0109230:	00 00                	add    BYTE PTR [eax],al
c0109232:	00 00                	add    BYTE PTR [eax],al
c0109234:	00 00                	add    BYTE PTR [eax],al
c0109236:	fe 00                	inc    BYTE PTR [eax]
c0109238:	00 fe                	add    dh,bh
c010923a:	00 00                	add    BYTE PTR [eax],al
c010923c:	00 00                	add    BYTE PTR [eax],al
c010923e:	00 00                	add    BYTE PTR [eax],al
c0109240:	00 80 40 20 10 08    	add    BYTE PTR [eax+0x8102040],al
c0109246:	04 02                	add    al,0x2
c0109248:	02 04 08             	add    al,BYTE PTR [eax+ecx*1]
c010924b:	10 20                	adc    BYTE PTR [eax],ah
c010924d:	40                   	inc    eax
c010924e:	80 00 00             	add    BYTE PTR [eax],0x0
c0109251:	38 44 82 82          	cmp    BYTE PTR [edx+eax*4-0x7e],al
c0109255:	82                   	(bad)  
c0109256:	04 08                	add    al,0x8
c0109258:	10 10                	adc    BYTE PTR [eax],dl
c010925a:	00 00                	add    BYTE PTR [eax],al
c010925c:	18 18                	sbb    BYTE PTR [eax],bl
c010925e:	00 00                	add    BYTE PTR [eax],al
c0109260:	00 38                	add    BYTE PTR [eax],bh
c0109262:	44                   	inc    esp
c0109263:	82                   	(bad)  
c0109264:	9a aa aa aa aa aa 9c 	call   0x9caa:0xaaaaaaaa
c010926b:	80 46 38 00          	add    BYTE PTR [esi+0x38],0x0
c010926f:	00 00                	add    BYTE PTR [eax],al
c0109271:	18 18                	sbb    BYTE PTR [eax],bl
c0109273:	18 18                	sbb    BYTE PTR [eax],bl
c0109275:	24 24                	and    al,0x24
c0109277:	24 24                	and    al,0x24
c0109279:	7e 42                	jle    c01092bd <PKnFont+0x45d>
c010927b:	42                   	inc    edx
c010927c:	42                   	inc    edx
c010927d:	e7 00                	out    0x0,eax
c010927f:	00 00                	add    BYTE PTR [eax],al
c0109281:	f0 48                	lock dec eax
c0109283:	44                   	inc    esp
c0109284:	44                   	inc    esp
c0109285:	44                   	inc    esp
c0109286:	48                   	dec    eax
c0109287:	78 44                	js     c01092cd <PKnFont+0x46d>
c0109289:	42                   	inc    edx
c010928a:	42                   	inc    edx
c010928b:	42                   	inc    edx
c010928c:	44                   	inc    esp
c010928d:	f8                   	clc    
c010928e:	00 00                	add    BYTE PTR [eax],al
c0109290:	00 3a                	add    BYTE PTR [edx],bh
c0109292:	46                   	inc    esi
c0109293:	42                   	inc    edx
c0109294:	82                   	(bad)  
c0109295:	80 80 80 80 80 82 42 	add    BYTE PTR [eax-0x7d7f7f80],0x42
c010929c:	44                   	inc    esp
c010929d:	38 00                	cmp    BYTE PTR [eax],al
c010929f:	00 00                	add    BYTE PTR [eax],al
c01092a1:	f8                   	clc    
c01092a2:	44                   	inc    esp
c01092a3:	44                   	inc    esp
c01092a4:	42                   	inc    edx
c01092a5:	42                   	inc    edx
c01092a6:	42                   	inc    edx
c01092a7:	42                   	inc    edx
c01092a8:	42                   	inc    edx
c01092a9:	42                   	inc    edx
c01092aa:	42                   	inc    edx
c01092ab:	44                   	inc    esp
c01092ac:	44                   	inc    esp
c01092ad:	f8                   	clc    
c01092ae:	00 00                	add    BYTE PTR [eax],al
c01092b0:	00 fe                	add    dh,bh
c01092b2:	42                   	inc    edx
c01092b3:	42                   	inc    edx
c01092b4:	40                   	inc    eax
c01092b5:	40                   	inc    eax
c01092b6:	44                   	inc    esp
c01092b7:	7c 44                	jl     c01092fd <PKnFont+0x49d>
c01092b9:	40                   	inc    eax
c01092ba:	40                   	inc    eax
c01092bb:	42                   	inc    edx
c01092bc:	42                   	inc    edx
c01092bd:	fe 00                	inc    BYTE PTR [eax]
c01092bf:	00 00                	add    BYTE PTR [eax],al
c01092c1:	fe 42 42             	inc    BYTE PTR [edx+0x42]
c01092c4:	40                   	inc    eax
c01092c5:	40                   	inc    eax
c01092c6:	44                   	inc    esp
c01092c7:	7c 44                	jl     c010930d <PKnFont+0x4ad>
c01092c9:	44                   	inc    esp
c01092ca:	40                   	inc    eax
c01092cb:	40                   	inc    eax
c01092cc:	40                   	inc    eax
c01092cd:	f0 00 00             	lock add BYTE PTR [eax],al
c01092d0:	00 3a                	add    BYTE PTR [edx],bh
c01092d2:	46                   	inc    esi
c01092d3:	42                   	inc    edx
c01092d4:	82                   	(bad)  
c01092d5:	80 80 9e 82 82 82 42 	add    BYTE PTR [eax-0x7d7d7d62],0x42
c01092dc:	46                   	inc    esi
c01092dd:	38 00                	cmp    BYTE PTR [eax],al
c01092df:	00 00                	add    BYTE PTR [eax],al
c01092e1:	e7 42                	out    0x42,eax
c01092e3:	42                   	inc    edx
c01092e4:	42                   	inc    edx
c01092e5:	42                   	inc    edx
c01092e6:	42                   	inc    edx
c01092e7:	7e 42                	jle    c010932b <PKnFont+0x4cb>
c01092e9:	42                   	inc    edx
c01092ea:	42                   	inc    edx
c01092eb:	42                   	inc    edx
c01092ec:	42                   	inc    edx
c01092ed:	e7 00                	out    0x0,eax
c01092ef:	00 00                	add    BYTE PTR [eax],al
c01092f1:	7c 10                	jl     c0109303 <PKnFont+0x4a3>
c01092f3:	10 10                	adc    BYTE PTR [eax],dl
c01092f5:	10 10                	adc    BYTE PTR [eax],dl
c01092f7:	10 10                	adc    BYTE PTR [eax],dl
c01092f9:	10 10                	adc    BYTE PTR [eax],dl
c01092fb:	10 10                	adc    BYTE PTR [eax],dl
c01092fd:	7c 00                	jl     c01092ff <PKnFont+0x49f>
c01092ff:	00 00                	add    BYTE PTR [eax],al
c0109301:	1f                   	pop    ds
c0109302:	04 04                	add    al,0x4
c0109304:	04 04                	add    al,0x4
c0109306:	04 04                	add    al,0x4
c0109308:	04 04                	add    al,0x4
c010930a:	04 04                	add    al,0x4
c010930c:	84 48 30             	test   BYTE PTR [eax+0x30],cl
c010930f:	00 00                	add    BYTE PTR [eax],al
c0109311:	e7 42                	out    0x42,eax
c0109313:	44                   	inc    esp
c0109314:	48                   	dec    eax
c0109315:	50                   	push   eax
c0109316:	50                   	push   eax
c0109317:	60                   	pusha  
c0109318:	50                   	push   eax
c0109319:	50                   	push   eax
c010931a:	48                   	dec    eax
c010931b:	44                   	inc    esp
c010931c:	42                   	inc    edx
c010931d:	e7 00                	out    0x0,eax
c010931f:	00 00                	add    BYTE PTR [eax],al
c0109321:	f0 40                	lock inc eax
c0109323:	40                   	inc    eax
c0109324:	40                   	inc    eax
c0109325:	40                   	inc    eax
c0109326:	40                   	inc    eax
c0109327:	40                   	inc    eax
c0109328:	40                   	inc    eax
c0109329:	40                   	inc    eax
c010932a:	40                   	inc    eax
c010932b:	42                   	inc    edx
c010932c:	42                   	inc    edx
c010932d:	fe 00                	inc    BYTE PTR [eax]
c010932f:	00 00                	add    BYTE PTR [eax],al
c0109331:	c3                   	ret    
c0109332:	42                   	inc    edx
c0109333:	66 66 66 5a          	data16 data16 pop dx
c0109337:	5a                   	pop    edx
c0109338:	5a                   	pop    edx
c0109339:	42                   	inc    edx
c010933a:	42                   	inc    edx
c010933b:	42                   	inc    edx
c010933c:	42                   	inc    edx
c010933d:	e7 00                	out    0x0,eax
c010933f:	00 00                	add    BYTE PTR [eax],al
c0109341:	c7 42 62 62 52 52 52 	mov    DWORD PTR [edx+0x62],0x52525262
c0109348:	4a                   	dec    edx
c0109349:	4a                   	dec    edx
c010934a:	4a                   	dec    edx
c010934b:	46                   	inc    esi
c010934c:	46                   	inc    esi
c010934d:	e2 00                	loop   c010934f <PKnFont+0x4ef>
c010934f:	00 00                	add    BYTE PTR [eax],al
c0109351:	38 44 82 82          	cmp    BYTE PTR [edx+eax*4-0x7e],al
c0109355:	82                   	(bad)  
c0109356:	82                   	(bad)  
c0109357:	82                   	(bad)  
c0109358:	82                   	(bad)  
c0109359:	82                   	(bad)  
c010935a:	82                   	(bad)  
c010935b:	82                   	(bad)  
c010935c:	44                   	inc    esp
c010935d:	38 00                	cmp    BYTE PTR [eax],al
c010935f:	00 00                	add    BYTE PTR [eax],al
c0109361:	f8                   	clc    
c0109362:	44                   	inc    esp
c0109363:	42                   	inc    edx
c0109364:	42                   	inc    edx
c0109365:	42                   	inc    edx
c0109366:	44                   	inc    esp
c0109367:	78 40                	js     c01093a9 <PKnFont+0x549>
c0109369:	40                   	inc    eax
c010936a:	40                   	inc    eax
c010936b:	40                   	inc    eax
c010936c:	40                   	inc    eax
c010936d:	f0 00 00             	lock add BYTE PTR [eax],al
c0109370:	00 38                	add    BYTE PTR [eax],bh
c0109372:	44                   	inc    esp
c0109373:	82                   	(bad)  
c0109374:	82                   	(bad)  
c0109375:	82                   	(bad)  
c0109376:	82                   	(bad)  
c0109377:	82                   	(bad)  
c0109378:	82                   	(bad)  
c0109379:	82                   	(bad)  
c010937a:	92                   	xchg   edx,eax
c010937b:	8a 44 3a 00          	mov    al,BYTE PTR [edx+edi*1+0x0]
c010937f:	00 00                	add    BYTE PTR [eax],al
c0109381:	fc                   	cld    
c0109382:	42                   	inc    edx
c0109383:	42                   	inc    edx
c0109384:	42                   	inc    edx
c0109385:	42                   	inc    edx
c0109386:	7c 44                	jl     c01093cc <PKnFont+0x56c>
c0109388:	42                   	inc    edx
c0109389:	42                   	inc    edx
c010938a:	42                   	inc    edx
c010938b:	42                   	inc    edx
c010938c:	42                   	inc    edx
c010938d:	e7 00                	out    0x0,eax
c010938f:	00 00                	add    BYTE PTR [eax],al
c0109391:	3a 46 82             	cmp    al,BYTE PTR [esi-0x7e]
c0109394:	82                   	(bad)  
c0109395:	80 40 38 04          	add    BYTE PTR [eax+0x38],0x4
c0109399:	02 82 82 c4 b8 00    	add    al,BYTE PTR [edx+0xb8c482]
c010939f:	00 00                	add    BYTE PTR [eax],al
c01093a1:	fe                   	(bad)  
c01093a2:	92                   	xchg   edx,eax
c01093a3:	92                   	xchg   edx,eax
c01093a4:	10 10                	adc    BYTE PTR [eax],dl
c01093a6:	10 10                	adc    BYTE PTR [eax],dl
c01093a8:	10 10                	adc    BYTE PTR [eax],dl
c01093aa:	10 10                	adc    BYTE PTR [eax],dl
c01093ac:	10 7c 00 00          	adc    BYTE PTR [eax+eax*1+0x0],bh
c01093b0:	00 e7                	add    bh,ah
c01093b2:	42                   	inc    edx
c01093b3:	42                   	inc    edx
c01093b4:	42                   	inc    edx
c01093b5:	42                   	inc    edx
c01093b6:	42                   	inc    edx
c01093b7:	42                   	inc    edx
c01093b8:	42                   	inc    edx
c01093b9:	42                   	inc    edx
c01093ba:	42                   	inc    edx
c01093bb:	42                   	inc    edx
c01093bc:	24 3c                	and    al,0x3c
c01093be:	00 00                	add    BYTE PTR [eax],al
c01093c0:	00 e7                	add    bh,ah
c01093c2:	42                   	inc    edx
c01093c3:	42                   	inc    edx
c01093c4:	42                   	inc    edx
c01093c5:	42                   	inc    edx
c01093c6:	24 24                	and    al,0x24
c01093c8:	24 24                	and    al,0x24
c01093ca:	18 18                	sbb    BYTE PTR [eax],bl
c01093cc:	18 18                	sbb    BYTE PTR [eax],bl
c01093ce:	00 00                	add    BYTE PTR [eax],al
c01093d0:	00 e7                	add    bh,ah
c01093d2:	42                   	inc    edx
c01093d3:	42                   	inc    edx
c01093d4:	42                   	inc    edx
c01093d5:	5a                   	pop    edx
c01093d6:	5a                   	pop    edx
c01093d7:	5a                   	pop    edx
c01093d8:	5a                   	pop    edx
c01093d9:	24 24                	and    al,0x24
c01093db:	24 24                	and    al,0x24
c01093dd:	24 00                	and    al,0x0
c01093df:	00 00                	add    BYTE PTR [eax],al
c01093e1:	e7 42                	out    0x42,eax
c01093e3:	42                   	inc    edx
c01093e4:	24 24                	and    al,0x24
c01093e6:	24 18                	and    al,0x18
c01093e8:	24 24                	and    al,0x24
c01093ea:	24 42                	and    al,0x42
c01093ec:	42                   	inc    edx
c01093ed:	e7 00                	out    0x0,eax
c01093ef:	00 00                	add    BYTE PTR [eax],al
c01093f1:	ee                   	out    dx,al
c01093f2:	44                   	inc    esp
c01093f3:	44                   	inc    esp
c01093f4:	44                   	inc    esp
c01093f5:	28 28                	sub    BYTE PTR [eax],ch
c01093f7:	28 10                	sub    BYTE PTR [eax],dl
c01093f9:	10 10                	adc    BYTE PTR [eax],dl
c01093fb:	10 10                	adc    BYTE PTR [eax],dl
c01093fd:	7c 00                	jl     c01093ff <PKnFont+0x59f>
c01093ff:	00 00                	add    BYTE PTR [eax],al
c0109401:	fe 84 84 08 08 10 10 	inc    BYTE PTR [esp+eax*4+0x10100808]
c0109408:	20 20                	and    BYTE PTR [eax],ah
c010940a:	40                   	inc    eax
c010940b:	42                   	inc    edx
c010940c:	82                   	(bad)  
c010940d:	fe 00                	inc    BYTE PTR [eax]
c010940f:	00 00                	add    BYTE PTR [eax],al
c0109411:	3e 20 20             	and    BYTE PTR ds:[eax],ah
c0109414:	20 20                	and    BYTE PTR [eax],ah
c0109416:	20 20                	and    BYTE PTR [eax],ah
c0109418:	20 20                	and    BYTE PTR [eax],ah
c010941a:	20 20                	and    BYTE PTR [eax],ah
c010941c:	20 20                	and    BYTE PTR [eax],ah
c010941e:	3e 00 80 80 40 40 20 	add    BYTE PTR ds:[eax+0x20404080],al
c0109425:	20 20                	and    BYTE PTR [eax],ah
c0109427:	10 10                	adc    BYTE PTR [eax],dl
c0109429:	08 08                	or     BYTE PTR [eax],cl
c010942b:	04 04                	add    al,0x4
c010942d:	04 02                	add    al,0x2
c010942f:	02 00                	add    al,BYTE PTR [eax]
c0109431:	7c 04                	jl     c0109437 <PKnFont+0x5d7>
c0109433:	04 04                	add    al,0x4
c0109435:	04 04                	add    al,0x4
c0109437:	04 04                	add    al,0x4
c0109439:	04 04                	add    al,0x4
c010943b:	04 04                	add    al,0x4
c010943d:	04 7c                	add    al,0x7c
c010943f:	00 00                	add    BYTE PTR [eax],al
c0109441:	10 28                	adc    BYTE PTR [eax],ch
c0109443:	44                   	inc    esp
c0109444:	82                   	(bad)  
	...
c010945d:	00 fe                	add    dh,bh
c010945f:	00 10                	add    BYTE PTR [eax],dl
c0109461:	08 04 00             	or     BYTE PTR [eax+eax*1],al
	...
c0109474:	00 70 08             	add    BYTE PTR [eax+0x8],dh
c0109477:	04 3c                	add    al,0x3c
c0109479:	44                   	inc    esp
c010947a:	84 84 8c 76 00 00 c0 	test   BYTE PTR [esp+ecx*4-0x3fffff8a],al
c0109481:	40                   	inc    eax
c0109482:	40                   	inc    eax
c0109483:	40                   	inc    eax
c0109484:	40                   	inc    eax
c0109485:	58                   	pop    eax
c0109486:	64 42                	fs inc edx
c0109488:	42                   	inc    edx
c0109489:	42                   	inc    edx
c010948a:	42                   	inc    edx
c010948b:	42                   	inc    edx
c010948c:	64 58                	fs pop eax
c010948e:	00 00                	add    BYTE PTR [eax],al
c0109490:	00 00                	add    BYTE PTR [eax],al
c0109492:	00 00                	add    BYTE PTR [eax],al
c0109494:	00 30                	add    BYTE PTR [eax],dh
c0109496:	4c                   	dec    esp
c0109497:	84 84 80 80 82 44 38 	test   BYTE PTR [eax+eax*4+0x38448280],al
c010949e:	00 00                	add    BYTE PTR [eax],al
c01094a0:	0c 04                	or     al,0x4
c01094a2:	04 04                	add    al,0x4
c01094a4:	04 34                	add    al,0x34
c01094a6:	4c                   	dec    esp
c01094a7:	84 84 84 84 84 4c 36 	test   BYTE PTR [esp+eax*4+0x364c8484],al
c01094ae:	00 00                	add    BYTE PTR [eax],al
c01094b0:	00 00                	add    BYTE PTR [eax],al
c01094b2:	00 00                	add    BYTE PTR [eax],al
c01094b4:	00 38                	add    BYTE PTR [eax],bh
c01094b6:	44                   	inc    esp
c01094b7:	82                   	(bad)  
c01094b8:	82                   	(bad)  
c01094b9:	fc                   	cld    
c01094ba:	80 82 42 3c 00 00 0e 	add    BYTE PTR [edx+0x3c42],0xe
c01094c1:	10 10                	adc    BYTE PTR [eax],dl
c01094c3:	10 10                	adc    BYTE PTR [eax],dl
c01094c5:	7c 10                	jl     c01094d7 <PKnFont+0x677>
c01094c7:	10 10                	adc    BYTE PTR [eax],dl
c01094c9:	10 10                	adc    BYTE PTR [eax],dl
c01094cb:	10 10                	adc    BYTE PTR [eax],dl
c01094cd:	7c 00                	jl     c01094cf <PKnFont+0x66f>
c01094cf:	00 00                	add    BYTE PTR [eax],al
c01094d1:	00 00                	add    BYTE PTR [eax],al
c01094d3:	00 00                	add    BYTE PTR [eax],al
c01094d5:	36 4c                	ss dec esp
c01094d7:	84 84 84 84 4c 34 04 	test   BYTE PTR [esp+eax*4+0x4344c84],al
c01094de:	04 38                	add    al,0x38
c01094e0:	c0 40 40 40          	rol    BYTE PTR [eax+0x40],0x40
c01094e4:	40                   	inc    eax
c01094e5:	58                   	pop    eax
c01094e6:	64 42                	fs inc edx
c01094e8:	42                   	inc    edx
c01094e9:	42                   	inc    edx
c01094ea:	42                   	inc    edx
c01094eb:	42                   	inc    edx
c01094ec:	42                   	inc    edx
c01094ed:	e3 00                	jecxz  c01094ef <PKnFont+0x68f>
c01094ef:	00 00                	add    BYTE PTR [eax],al
c01094f1:	10 10                	adc    BYTE PTR [eax],dl
c01094f3:	00 00                	add    BYTE PTR [eax],al
c01094f5:	30 10                	xor    BYTE PTR [eax],dl
c01094f7:	10 10                	adc    BYTE PTR [eax],dl
c01094f9:	10 10                	adc    BYTE PTR [eax],dl
c01094fb:	10 10                	adc    BYTE PTR [eax],dl
c01094fd:	38 00                	cmp    BYTE PTR [eax],al
c01094ff:	00 00                	add    BYTE PTR [eax],al
c0109501:	04 04                	add    al,0x4
c0109503:	00 00                	add    BYTE PTR [eax],al
c0109505:	0c 04                	or     al,0x4
c0109507:	04 04                	add    al,0x4
c0109509:	04 04                	add    al,0x4
c010950b:	04 04                	add    al,0x4
c010950d:	08 08                	or     BYTE PTR [eax],cl
c010950f:	30 c0                	xor    al,al
c0109511:	40                   	inc    eax
c0109512:	40                   	inc    eax
c0109513:	40                   	inc    eax
c0109514:	40                   	inc    eax
c0109515:	4e                   	dec    esi
c0109516:	44                   	inc    esp
c0109517:	48                   	dec    eax
c0109518:	50                   	push   eax
c0109519:	60                   	pusha  
c010951a:	50                   	push   eax
c010951b:	48                   	dec    eax
c010951c:	44                   	inc    esp
c010951d:	e6 00                	out    0x0,al
c010951f:	00 30                	add    BYTE PTR [eax],dh
c0109521:	10 10                	adc    BYTE PTR [eax],dl
c0109523:	10 10                	adc    BYTE PTR [eax],dl
c0109525:	10 10                	adc    BYTE PTR [eax],dl
c0109527:	10 10                	adc    BYTE PTR [eax],dl
c0109529:	10 10                	adc    BYTE PTR [eax],dl
c010952b:	10 10                	adc    BYTE PTR [eax],dl
c010952d:	38 00                	cmp    BYTE PTR [eax],al
c010952f:	00 00                	add    BYTE PTR [eax],al
c0109531:	00 00                	add    BYTE PTR [eax],al
c0109533:	00 00                	add    BYTE PTR [eax],al
c0109535:	f6                   	(bad)  
c0109536:	49                   	dec    ecx
c0109537:	49                   	dec    ecx
c0109538:	49                   	dec    ecx
c0109539:	49                   	dec    ecx
c010953a:	49                   	dec    ecx
c010953b:	49                   	dec    ecx
c010953c:	49                   	dec    ecx
c010953d:	db 00                	fild   DWORD PTR [eax]
c010953f:	00 00                	add    BYTE PTR [eax],al
c0109541:	00 00                	add    BYTE PTR [eax],al
c0109543:	00 00                	add    BYTE PTR [eax],al
c0109545:	d8 64 42 42          	fsub   DWORD PTR [edx+eax*2+0x42]
c0109549:	42                   	inc    edx
c010954a:	42                   	inc    edx
c010954b:	42                   	inc    edx
c010954c:	42                   	inc    edx
c010954d:	e3 00                	jecxz  c010954f <PKnFont+0x6ef>
c010954f:	00 00                	add    BYTE PTR [eax],al
c0109551:	00 00                	add    BYTE PTR [eax],al
c0109553:	00 00                	add    BYTE PTR [eax],al
c0109555:	38 44 82 82          	cmp    BYTE PTR [edx+eax*4-0x7e],al
c0109559:	82                   	(bad)  
c010955a:	82                   	(bad)  
c010955b:	82                   	(bad)  
c010955c:	44                   	inc    esp
c010955d:	38 00                	cmp    BYTE PTR [eax],al
c010955f:	00 00                	add    BYTE PTR [eax],al
c0109561:	00 00                	add    BYTE PTR [eax],al
c0109563:	00 d8                	add    al,bl
c0109565:	64 42                	fs inc edx
c0109567:	42                   	inc    edx
c0109568:	42                   	inc    edx
c0109569:	42                   	inc    edx
c010956a:	42                   	inc    edx
c010956b:	64 58                	fs pop eax
c010956d:	40                   	inc    eax
c010956e:	40                   	inc    eax
c010956f:	e0 00                	loopne c0109571 <PKnFont+0x711>
c0109571:	00 00                	add    BYTE PTR [eax],al
c0109573:	00 34 4c             	add    BYTE PTR [esp+ecx*2],dh
c0109576:	84 84 84 84 84 4c 34 	test   BYTE PTR [esp+eax*4+0x344c8484],al
c010957d:	04 04                	add    al,0x4
c010957f:	0e                   	push   cs
c0109580:	00 00                	add    BYTE PTR [eax],al
c0109582:	00 00                	add    BYTE PTR [eax],al
c0109584:	00 dc                	add    ah,bl
c0109586:	62 42 40             	bound  eax,QWORD PTR [edx+0x40]
c0109589:	40                   	inc    eax
c010958a:	40                   	inc    eax
c010958b:	40                   	inc    eax
c010958c:	40                   	inc    eax
c010958d:	e0 00                	loopne c010958f <PKnFont+0x72f>
c010958f:	00 00                	add    BYTE PTR [eax],al
c0109591:	00 00                	add    BYTE PTR [eax],al
c0109593:	00 00                	add    BYTE PTR [eax],al
c0109595:	7a 86                	jp     c010951d <PKnFont+0x6bd>
c0109597:	82                   	(bad)  
c0109598:	c0 38 06             	sar    BYTE PTR [eax],0x6
c010959b:	82                   	(bad)  
c010959c:	c2 bc 00             	ret    0xbc
c010959f:	00 00                	add    BYTE PTR [eax],al
c01095a1:	00 10                	add    BYTE PTR [eax],dl
c01095a3:	10 10                	adc    BYTE PTR [eax],dl
c01095a5:	7c 10                	jl     c01095b7 <PKnFont+0x757>
c01095a7:	10 10                	adc    BYTE PTR [eax],dl
c01095a9:	10 10                	adc    BYTE PTR [eax],dl
c01095ab:	10 10                	adc    BYTE PTR [eax],dl
c01095ad:	0e                   	push   cs
c01095ae:	00 00                	add    BYTE PTR [eax],al
c01095b0:	00 00                	add    BYTE PTR [eax],al
c01095b2:	00 00                	add    BYTE PTR [eax],al
c01095b4:	00 c6                	add    dh,al
c01095b6:	42                   	inc    edx
c01095b7:	42                   	inc    edx
c01095b8:	42                   	inc    edx
c01095b9:	42                   	inc    edx
c01095ba:	42                   	inc    edx
c01095bb:	42                   	inc    edx
c01095bc:	46                   	inc    esi
c01095bd:	3b 00                	cmp    eax,DWORD PTR [eax]
c01095bf:	00 00                	add    BYTE PTR [eax],al
c01095c1:	00 00                	add    BYTE PTR [eax],al
c01095c3:	00 00                	add    BYTE PTR [eax],al
c01095c5:	e7 42                	out    0x42,eax
c01095c7:	42                   	inc    edx
c01095c8:	42                   	inc    edx
c01095c9:	24 24                	and    al,0x24
c01095cb:	24 18                	and    al,0x18
c01095cd:	18 00                	sbb    BYTE PTR [eax],al
c01095cf:	00 00                	add    BYTE PTR [eax],al
c01095d1:	00 00                	add    BYTE PTR [eax],al
c01095d3:	00 00                	add    BYTE PTR [eax],al
c01095d5:	e7 42                	out    0x42,eax
c01095d7:	42                   	inc    edx
c01095d8:	5a                   	pop    edx
c01095d9:	5a                   	pop    edx
c01095da:	5a                   	pop    edx
c01095db:	24 24                	and    al,0x24
c01095dd:	24 00                	and    al,0x0
c01095df:	00 00                	add    BYTE PTR [eax],al
c01095e1:	00 00                	add    BYTE PTR [eax],al
c01095e3:	00 00                	add    BYTE PTR [eax],al
c01095e5:	c6 44 28 28 10       	mov    BYTE PTR [eax+ebp*1+0x28],0x10
c01095ea:	28 28                	sub    BYTE PTR [eax],ch
c01095ec:	44                   	inc    esp
c01095ed:	c6 00 00             	mov    BYTE PTR [eax],0x0
c01095f0:	00 00                	add    BYTE PTR [eax],al
c01095f2:	00 00                	add    BYTE PTR [eax],al
c01095f4:	00 e7                	add    bh,ah
c01095f6:	42                   	inc    edx
c01095f7:	42                   	inc    edx
c01095f8:	24 24                	and    al,0x24
c01095fa:	24 18                	and    al,0x18
c01095fc:	18 10                	sbb    BYTE PTR [eax],dl
c01095fe:	10 60 00             	adc    BYTE PTR [eax+0x0],ah
c0109601:	00 00                	add    BYTE PTR [eax],al
c0109603:	00 00                	add    BYTE PTR [eax],al
c0109605:	fe 82 84 08 10 20    	inc    BYTE PTR [edx+0x20100884]
c010960b:	42                   	inc    edx
c010960c:	82                   	(bad)  
c010960d:	fe 00                	inc    BYTE PTR [eax]
c010960f:	00 00                	add    BYTE PTR [eax],al
c0109611:	06                   	push   es
c0109612:	08 10                	or     BYTE PTR [eax],dl
c0109614:	10 10                	adc    BYTE PTR [eax],dl
c0109616:	10 60 10             	adc    BYTE PTR [eax+0x10],ah
c0109619:	10 10                	adc    BYTE PTR [eax],dl
c010961b:	10 08                	adc    BYTE PTR [eax],cl
c010961d:	06                   	push   es
c010961e:	00 00                	add    BYTE PTR [eax],al
c0109620:	10 10                	adc    BYTE PTR [eax],dl
c0109622:	10 10                	adc    BYTE PTR [eax],dl
c0109624:	10 10                	adc    BYTE PTR [eax],dl
c0109626:	10 10                	adc    BYTE PTR [eax],dl
c0109628:	10 10                	adc    BYTE PTR [eax],dl
c010962a:	10 10                	adc    BYTE PTR [eax],dl
c010962c:	10 10                	adc    BYTE PTR [eax],dl
c010962e:	10 10                	adc    BYTE PTR [eax],dl
c0109630:	00 60 10             	add    BYTE PTR [eax+0x10],ah
c0109633:	08 08                	or     BYTE PTR [eax],cl
c0109635:	08 08                	or     BYTE PTR [eax],cl
c0109637:	06                   	push   es
c0109638:	08 08                	or     BYTE PTR [eax],cl
c010963a:	08 08                	or     BYTE PTR [eax],cl
c010963c:	10 60 00             	adc    BYTE PTR [eax+0x0],ah
c010963f:	00 00                	add    BYTE PTR [eax],al
c0109641:	72 8c                	jb     c01095cf <PKnFont+0x76f>
	...

c0109e60 <digits.1069>:
c0109e60:	30 31                	xor    BYTE PTR [ecx],dh
c0109e62:	32 33                	xor    dh,BYTE PTR [ebx]
c0109e64:	34 35                	xor    al,0x35
c0109e66:	36 37                	ss aaa 
c0109e68:	38 39                	cmp    BYTE PTR [ecx],bh
c0109e6a:	41                   	inc    ecx
c0109e6b:	42                   	inc    edx
c0109e6c:	43                   	inc    ebx
c0109e6d:	44                   	inc    esp
c0109e6e:	45                   	inc    ebp
c0109e6f:	46                   	inc    esi
c0109e70:	47                   	inc    edi
c0109e71:	48                   	dec    eax
c0109e72:	49                   	dec    ecx
c0109e73:	4a                   	dec    edx
c0109e74:	4b                   	dec    ebx
c0109e75:	4c                   	dec    esp
c0109e76:	4d                   	dec    ebp
c0109e77:	4e                   	dec    esi
c0109e78:	4f                   	dec    edi
c0109e79:	50                   	push   eax
c0109e7a:	51                   	push   ecx
c0109e7b:	52                   	push   edx
c0109e7c:	53                   	push   ebx
c0109e7d:	54                   	push   esp
c0109e7e:	55                   	push   ebp
c0109e7f:	56                   	push   esi
c0109e80:	57                   	push   edi
c0109e81:	58                   	pop    eax
c0109e82:	59                   	pop    ecx
c0109e83:	5a                   	pop    edx
	...

c0109ea0 <digits.1050>:
c0109ea0:	30 31                	xor    BYTE PTR [ecx],dh
c0109ea2:	32 33                	xor    dh,BYTE PTR [ebx]
c0109ea4:	34 35                	xor    al,0x35
c0109ea6:	36 37                	ss aaa 
c0109ea8:	38 39                	cmp    BYTE PTR [ecx],bh
c0109eaa:	41                   	inc    ecx
c0109eab:	42                   	inc    edx
c0109eac:	43                   	inc    ebx
c0109ead:	44                   	inc    esp
c0109eae:	45                   	inc    ebp
c0109eaf:	46                   	inc    esi
c0109eb0:	47                   	inc    edi
c0109eb1:	48                   	dec    eax
c0109eb2:	49                   	dec    ecx
c0109eb3:	4a                   	dec    edx
c0109eb4:	4b                   	dec    ebx
c0109eb5:	4c                   	dec    esp
c0109eb6:	4d                   	dec    ebp
c0109eb7:	4e                   	dec    esi
c0109eb8:	4f                   	dec    edi
c0109eb9:	50                   	push   eax
c0109eba:	51                   	push   ecx
c0109ebb:	52                   	push   edx
c0109ebc:	53                   	push   ebx
c0109ebd:	54                   	push   esp
c0109ebe:	55                   	push   ebp
c0109ebf:	56                   	push   esi
c0109ec0:	57                   	push   edi
c0109ec1:	58                   	pop    eax
c0109ec2:	59                   	pop    ecx
c0109ec3:	5a                   	pop    edx
	...
c0109ee0:	20 20                	and    BYTE PTR [eax],ah
c0109ee2:	20 20                	and    BYTE PTR [eax],ah
c0109ee4:	20 20                	and    BYTE PTR [eax],ah
c0109ee6:	20 20                	and    BYTE PTR [eax],ah
c0109ee8:	20 20                	and    BYTE PTR [eax],ah
c0109eea:	20 20                	and    BYTE PTR [eax],ah
c0109eec:	20 20                	and    BYTE PTR [eax],ah
c0109eee:	20 20                	and    BYTE PTR [eax],ah
c0109ef0:	23 23                	and    esp,DWORD PTR [ebx]
c0109ef2:	23 23                	and    esp,DWORD PTR [ebx]
c0109ef4:	23 23                	and    esp,DWORD PTR [ebx]
c0109ef6:	23 23                	and    esp,DWORD PTR [ebx]
c0109ef8:	23 23                	and    esp,DWORD PTR [ebx]
c0109efa:	23 23                	and    esp,DWORD PTR [ebx]
c0109efc:	23 20                	and    esp,DWORD PTR [eax]
c0109efe:	20 23                	and    BYTE PTR [ebx],ah
c0109f00:	20 20                	and    BYTE PTR [eax],ah
c0109f02:	20 20                	and    BYTE PTR [eax],ah
c0109f04:	20 20                	and    BYTE PTR [eax],ah
c0109f06:	20 20                	and    BYTE PTR [eax],ah
c0109f08:	20 20                	and    BYTE PTR [eax],ah
c0109f0a:	20 23                	and    BYTE PTR [ebx],ah
c0109f0c:	20 20                	and    BYTE PTR [eax],ah
c0109f0e:	23 20                	and    esp,DWORD PTR [eax]
c0109f10:	20 20                	and    BYTE PTR [eax],ah
c0109f12:	20 20                	and    BYTE PTR [eax],ah
c0109f14:	20 20                	and    BYTE PTR [eax],ah
c0109f16:	20 20                	and    BYTE PTR [eax],ah
c0109f18:	20 20                	and    BYTE PTR [eax],ah
c0109f1a:	23 20                	and    esp,DWORD PTR [eax]
c0109f1c:	20 23                	and    BYTE PTR [ebx],ah
c0109f1e:	20 20                	and    BYTE PTR [eax],ah
c0109f20:	20 20                	and    BYTE PTR [eax],ah
c0109f22:	20 20                	and    BYTE PTR [eax],ah
c0109f24:	20 20                	and    BYTE PTR [eax],ah
c0109f26:	20 20                	and    BYTE PTR [eax],ah
c0109f28:	20 23                	and    BYTE PTR [ebx],ah
c0109f2a:	20 20                	and    BYTE PTR [eax],ah
c0109f2c:	23 20                	and    esp,DWORD PTR [eax]
c0109f2e:	20 20                	and    BYTE PTR [eax],ah
c0109f30:	23 23                	and    esp,DWORD PTR [ebx]
c0109f32:	23 23                	and    esp,DWORD PTR [ebx]
c0109f34:	23 20                	and    esp,DWORD PTR [eax]
c0109f36:	20 20                	and    BYTE PTR [eax],ah
c0109f38:	23 20                	and    esp,DWORD PTR [eax]
c0109f3a:	20 23                	and    BYTE PTR [ebx],ah
c0109f3c:	20 20                	and    BYTE PTR [eax],ah
c0109f3e:	20 23                	and    BYTE PTR [ebx],ah
c0109f40:	20 20                	and    BYTE PTR [eax],ah
c0109f42:	20 23                	and    BYTE PTR [ebx],ah
c0109f44:	20 20                	and    BYTE PTR [eax],ah
c0109f46:	20 23                	and    BYTE PTR [ebx],ah
c0109f48:	20 20                	and    BYTE PTR [eax],ah
c0109f4a:	23 20                	and    esp,DWORD PTR [eax]
c0109f4c:	20 20                	and    BYTE PTR [eax],ah
c0109f4e:	23 20                	and    esp,DWORD PTR [eax]
c0109f50:	20 20                	and    BYTE PTR [eax],ah
c0109f52:	23 20                	and    esp,DWORD PTR [eax]
c0109f54:	20 20                	and    BYTE PTR [eax],ah
c0109f56:	23 20                	and    esp,DWORD PTR [eax]
c0109f58:	20 23                	and    BYTE PTR [ebx],ah
c0109f5a:	20 20                	and    BYTE PTR [eax],ah
c0109f5c:	20 23                	and    BYTE PTR [ebx],ah
c0109f5e:	20 20                	and    BYTE PTR [eax],ah
c0109f60:	20 23                	and    BYTE PTR [ebx],ah
c0109f62:	20 20                	and    BYTE PTR [eax],ah
c0109f64:	20 23                	and    BYTE PTR [ebx],ah
c0109f66:	20 20                	and    BYTE PTR [eax],ah
c0109f68:	23 23                	and    esp,DWORD PTR [ebx]
c0109f6a:	23 23                	and    esp,DWORD PTR [ebx]
c0109f6c:	23 23                	and    esp,DWORD PTR [ebx]
c0109f6e:	23 23                	and    esp,DWORD PTR [ebx]
c0109f70:	23 20                	and    esp,DWORD PTR [eax]
c0109f72:	20 20                	and    BYTE PTR [eax],ah
c0109f74:	23 20                	and    esp,DWORD PTR [eax]
c0109f76:	20 23                	and    BYTE PTR [ebx],ah
c0109f78:	23 20                	and    esp,DWORD PTR [eax]
c0109f7a:	20 23                	and    BYTE PTR [ebx],ah
c0109f7c:	20 20                	and    BYTE PTR [eax],ah
c0109f7e:	20 20                	and    BYTE PTR [eax],ah
c0109f80:	20 20                	and    BYTE PTR [eax],ah
c0109f82:	20 23                	and    BYTE PTR [ebx],ah
c0109f84:	20 20                	and    BYTE PTR [eax],ah
c0109f86:	23 20                	and    esp,DWORD PTR [eax]
c0109f88:	23 20                	and    esp,DWORD PTR [eax]
c0109f8a:	23 20                	and    esp,DWORD PTR [eax]
c0109f8c:	20 20                	and    BYTE PTR [eax],ah
c0109f8e:	20 20                	and    BYTE PTR [eax],ah
c0109f90:	20 20                	and    BYTE PTR [eax],ah
c0109f92:	23 20                	and    esp,DWORD PTR [eax]
c0109f94:	20 23                	and    BYTE PTR [ebx],ah
c0109f96:	20 20                	and    BYTE PTR [eax],ah
c0109f98:	23 23                	and    esp,DWORD PTR [ebx]
c0109f9a:	20 20                	and    BYTE PTR [eax],ah
c0109f9c:	20 20                	and    BYTE PTR [eax],ah
c0109f9e:	20 20                	and    BYTE PTR [eax],ah
c0109fa0:	20 23                	and    BYTE PTR [ebx],ah
c0109fa2:	20 20                	and    BYTE PTR [eax],ah
c0109fa4:	23 23                	and    esp,DWORD PTR [ebx]
c0109fa6:	23 23                	and    esp,DWORD PTR [ebx]
c0109fa8:	23 23                	and    esp,DWORD PTR [ebx]
c0109faa:	23 23                	and    esp,DWORD PTR [ebx]
c0109fac:	23 23                	and    esp,DWORD PTR [ebx]
c0109fae:	23 23                	and    esp,DWORD PTR [ebx]
c0109fb0:	23 20                	and    esp,DWORD PTR [eax]
c0109fb2:	20 20                	and    BYTE PTR [eax],ah
c0109fb4:	20 20                	and    BYTE PTR [eax],ah
c0109fb6:	20 20                	and    BYTE PTR [eax],ah
c0109fb8:	20 20                	and    BYTE PTR [eax],ah
c0109fba:	20 20                	and    BYTE PTR [eax],ah
c0109fbc:	20 20                	and    BYTE PTR [eax],ah
c0109fbe:	20 20                	and    BYTE PTR [eax],ah
c0109fc0:	20                   	.byte 0x20

Disassembly of section .eh_frame:

c0109fc4 <.eh_frame>:
c0109fc4:	10 00                	adc    BYTE PTR [eax],al
c0109fc6:	00 00                	add    BYTE PTR [eax],al
c0109fc8:	00 00                	add    BYTE PTR [eax],al
c0109fca:	00 00                	add    BYTE PTR [eax],al
c0109fcc:	01 00                	add    DWORD PTR [eax],eax
c0109fce:	01 7c 08 0c          	add    DWORD PTR [eax+ecx*1+0xc],edi
c0109fd2:	04 04                	add    al,0x4
c0109fd4:	88 01                	mov    BYTE PTR [ecx],al
c0109fd6:	00 00                	add    BYTE PTR [eax],al
c0109fd8:	14 00                	adc    al,0x0
c0109fda:	00 00                	add    BYTE PTR [eax],al
c0109fdc:	18 00                	sbb    BYTE PTR [eax],al
c0109fde:	00 00                	add    BYTE PTR [eax],al
c0109fe0:	20 00                	and    BYTE PTR [eax],al
c0109fe2:	10 c0                	adc    al,al
c0109fe4:	b2 00                	mov    dl,0x0
c0109fe6:	00 00                	add    BYTE PTR [eax],al
c0109fe8:	41                   	inc    ecx
c0109fe9:	0e                   	push   cs
c0109fea:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c0109ff0:	1c 00                	sbb    al,0x0
c0109ff2:	00 00                	add    BYTE PTR [eax],al
c0109ff4:	30 00                	xor    BYTE PTR [eax],al
c0109ff6:	00 00                	add    BYTE PTR [eax],al
c0109ff8:	d2 00                	rol    BYTE PTR [eax],cl
c0109ffa:	10 c0                	adc    al,al
c0109ffc:	35 05 00 00 41       	xor    eax,0x41000005
c010a001:	0e                   	push   cs
c010a002:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010a008:	49                   	dec    ecx
c010a009:	83 05 86 04 87 03 00 	add    DWORD PTR ds:0x3870486,0x0
c010a010:	18 00                	sbb    BYTE PTR [eax],al
c010a012:	00 00                	add    BYTE PTR [eax],al
c010a014:	50                   	push   eax
c010a015:	00 00                	add    BYTE PTR [eax],al
c010a017:	00 07                	add    BYTE PTR [edi],al
c010a019:	06                   	push   es
c010a01a:	10 c0                	adc    al,al
c010a01c:	f6 01 00             	test   BYTE PTR [ecx],0x0
c010a01f:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c010a022:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010a028:	44                   	inc    esp
c010a029:	83 03 00             	add    DWORD PTR [ebx],0x0
c010a02c:	14 00                	adc    al,0x0
c010a02e:	00 00                	add    BYTE PTR [eax],al
c010a030:	6c                   	ins    BYTE PTR es:[edi],dx
c010a031:	00 00                	add    BYTE PTR [eax],al
c010a033:	00 fd                	add    ch,bh
c010a035:	07                   	pop    es
c010a036:	10 c0                	adc    al,al
c010a038:	a5                   	movs   DWORD PTR es:[edi],DWORD PTR ds:[esi]
c010a039:	00 00                	add    BYTE PTR [eax],al
c010a03b:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c010a03e:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010a044:	14 00                	adc    al,0x0
c010a046:	00 00                	add    BYTE PTR [eax],al
c010a048:	84 00                	test   BYTE PTR [eax],al
c010a04a:	00 00                	add    BYTE PTR [eax],al
c010a04c:	a4                   	movs   BYTE PTR es:[edi],BYTE PTR ds:[esi]
c010a04d:	08 10                	or     BYTE PTR [eax],dl
c010a04f:	c0 c8 00             	ror    al,0x0
c010a052:	00 00                	add    BYTE PTR [eax],al
c010a054:	41                   	inc    ecx
c010a055:	0e                   	push   cs
c010a056:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010a05c:	1c 00                	sbb    al,0x0
c010a05e:	00 00                	add    BYTE PTR [eax],al
c010a060:	9c                   	pushf  
c010a061:	00 00                	add    BYTE PTR [eax],al
c010a063:	00 6c 09 10          	add    BYTE PTR [ecx+ecx*1+0x10],ch
c010a067:	c0 43 00 00          	rol    BYTE PTR [ebx+0x0],0x0
c010a06b:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c010a06e:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010a074:	7f c5                	jg     c010a03b <_edata+0x7a>
c010a076:	0c 04                	or     al,0x4
c010a078:	04 00                	add    al,0x0
c010a07a:	00 00                	add    BYTE PTR [eax],al
c010a07c:	1c 00                	sbb    al,0x0
c010a07e:	00 00                	add    BYTE PTR [eax],al
c010a080:	bc 00 00 00 b0       	mov    esp,0xb0000000
c010a085:	09 10                	or     DWORD PTR [eax],edx
c010a087:	c0 4d 00 00          	ror    BYTE PTR [ebp+0x0],0x0
c010a08b:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c010a08e:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010a094:	02 49 c5             	add    cl,BYTE PTR [ecx-0x3b]
c010a097:	0c 04                	or     al,0x4
c010a099:	04 00                	add    al,0x0
c010a09b:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c010a09e:	00 00                	add    BYTE PTR [eax],al
c010a0a0:	dc 00                	fadd   QWORD PTR [eax]
c010a0a2:	00 00                	add    BYTE PTR [eax],al
c010a0a4:	a0 10 10 c0 06       	mov    al,ds:0x6c01010
c010a0a9:	00 00                	add    BYTE PTR [eax],al
c010a0ab:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c010a0ae:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010a0b4:	42                   	inc    edx
c010a0b5:	0c 04                	or     al,0x4
c010a0b7:	04 c5                	add    al,0xc5
c010a0b9:	00 00                	add    BYTE PTR [eax],al
c010a0bb:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c010a0be:	00 00                	add    BYTE PTR [eax],al
c010a0c0:	fc                   	cld    
c010a0c1:	00 00                	add    BYTE PTR [eax],al
c010a0c3:	00 a6 10 10 c0 06    	add    BYTE PTR [esi+0x6c01010],ah
c010a0c9:	00 00                	add    BYTE PTR [eax],al
c010a0cb:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c010a0ce:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010a0d4:	42                   	inc    edx
c010a0d5:	0c 04                	or     al,0x4
c010a0d7:	04 c5                	add    al,0xc5
c010a0d9:	00 00                	add    BYTE PTR [eax],al
c010a0db:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c010a0de:	00 00                	add    BYTE PTR [eax],al
c010a0e0:	1c 01                	sbb    al,0x1
c010a0e2:	00 00                	add    BYTE PTR [eax],al
c010a0e4:	ac                   	lods   al,BYTE PTR ds:[esi]
c010a0e5:	10 10                	adc    BYTE PTR [eax],dl
c010a0e7:	c0 0c 00 00          	ror    BYTE PTR [eax+eax*1],0x0
c010a0eb:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c010a0ee:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010a0f4:	48                   	dec    eax
c010a0f5:	0c 04                	or     al,0x4
c010a0f7:	04 c5                	add    al,0xc5
c010a0f9:	00 00                	add    BYTE PTR [eax],al
c010a0fb:	00 20                	add    BYTE PTR [eax],ah
c010a0fd:	00 00                	add    BYTE PTR [eax],al
c010a0ff:	00 3c 01             	add    BYTE PTR [ecx+eax*1],bh
c010a102:	00 00                	add    BYTE PTR [eax],al
c010a104:	b8 10 10 c0 17       	mov    eax,0x17c01010
c010a109:	00 00                	add    BYTE PTR [eax],al
c010a10b:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c010a10e:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010a114:	44                   	inc    esp
c010a115:	83 03 4e             	add    DWORD PTR [ebx],0x4e
c010a118:	c3                   	ret    
c010a119:	41                   	inc    ecx
c010a11a:	0c 04                	or     al,0x4
c010a11c:	04 c5                	add    al,0xc5
c010a11e:	00 00                	add    BYTE PTR [eax],al
c010a120:	1c 00                	sbb    al,0x0
c010a122:	00 00                	add    BYTE PTR [eax],al
c010a124:	60                   	pusha  
c010a125:	01 00                	add    DWORD PTR [eax],eax
c010a127:	00 cf                	add    bh,cl
c010a129:	10 10                	adc    BYTE PTR [eax],dl
c010a12b:	c0 f8 00             	sar    al,0x0
c010a12e:	00 00                	add    BYTE PTR [eax],al
c010a130:	41                   	inc    ecx
c010a131:	0e                   	push   cs
c010a132:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010a138:	02 f4                	add    dh,ah
c010a13a:	c5 0c 04             	lds    ecx,FWORD PTR [esp+eax*1]
c010a13d:	04 00                	add    al,0x0
c010a13f:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c010a142:	00 00                	add    BYTE PTR [eax],al
c010a144:	80 01 00             	add    BYTE PTR [ecx],0x0
c010a147:	00 c7                	add    bh,al
c010a149:	11 10                	adc    DWORD PTR [eax],edx
c010a14b:	c0 1c 00 00          	rcr    BYTE PTR [eax+eax*1],0x0
c010a14f:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c010a152:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010a158:	58                   	pop    eax
c010a159:	c5 0c 04             	lds    ecx,FWORD PTR [esp+eax*1]
c010a15c:	04 00                	add    al,0x0
c010a15e:	00 00                	add    BYTE PTR [eax],al
c010a160:	1c 00                	sbb    al,0x0
c010a162:	00 00                	add    BYTE PTR [eax],al
c010a164:	a0 01 00 00 e3       	mov    al,ds:0xe3000001
c010a169:	11 10                	adc    DWORD PTR [eax],edx
c010a16b:	c0 ba 00 00 00 41 0e 	sar    BYTE PTR [edx+0x41000000],0xe
c010a172:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010a178:	02 b6 c5 0c 04 04    	add    dh,BYTE PTR [esi+0x4040cc5]
c010a17e:	00 00                	add    BYTE PTR [eax],al
c010a180:	1c 00                	sbb    al,0x0
c010a182:	00 00                	add    BYTE PTR [eax],al
c010a184:	c0 01 00             	rol    BYTE PTR [ecx],0x0
c010a187:	00 9d 12 10 c0 44    	add    BYTE PTR [ebp+0x44c01012],bl
c010a18d:	00 00                	add    BYTE PTR [eax],al
c010a18f:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c010a192:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010a198:	02 40 0c             	add    al,BYTE PTR [eax+0xc]
c010a19b:	04 04                	add    al,0x4
c010a19d:	c5 00                	lds    eax,FWORD PTR [eax]
c010a19f:	00 24 00             	add    BYTE PTR [eax+eax*1],ah
c010a1a2:	00 00                	add    BYTE PTR [eax],al
c010a1a4:	e0 01                	loopne c010a1a7 <_edata+0x1e6>
c010a1a6:	00 00                	add    BYTE PTR [eax],al
c010a1a8:	e1 12                	loope  c010a1bc <_edata+0x1fb>
c010a1aa:	10 c0                	adc    al,al
c010a1ac:	46                   	inc    esi
c010a1ad:	00 00                	add    BYTE PTR [eax],al
c010a1af:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c010a1b2:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010a1b8:	45                   	inc    ebp
c010a1b9:	83 04 86 03          	add    DWORD PTR [esi+eax*4],0x3
c010a1bd:	7b c3                	jnp    c010a182 <_edata+0x1c1>
c010a1bf:	41                   	inc    ecx
c010a1c0:	c6 41 0c 04          	mov    BYTE PTR [ecx+0xc],0x4
c010a1c4:	04 c5                	add    al,0xc5
c010a1c6:	00 00                	add    BYTE PTR [eax],al
c010a1c8:	1c 00                	sbb    al,0x0
c010a1ca:	00 00                	add    BYTE PTR [eax],al
c010a1cc:	08 02                	or     BYTE PTR [edx],al
c010a1ce:	00 00                	add    BYTE PTR [eax],al
c010a1d0:	27                   	daa    
c010a1d1:	13 10                	adc    edx,DWORD PTR [eax]
c010a1d3:	c0 a5 02 00 00 41 0e 	shl    BYTE PTR [ebp+0x41000002],0xe
c010a1da:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010a1e0:	48                   	dec    eax
c010a1e1:	83 04 86 03          	add    DWORD PTR [esi+eax*4],0x3
c010a1e5:	00 00                	add    BYTE PTR [eax],al
c010a1e7:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c010a1ea:	00 00                	add    BYTE PTR [eax],al
c010a1ec:	28 02                	sub    BYTE PTR [edx],al
c010a1ee:	00 00                	add    BYTE PTR [eax],al
c010a1f0:	cc                   	int3   
c010a1f1:	15 10 c0 cd 00       	adc    eax,0xcdc010
c010a1f6:	00 00                	add    BYTE PTR [eax],al
c010a1f8:	41                   	inc    ecx
c010a1f9:	0e                   	push   cs
c010a1fa:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010a200:	02 c9                	add    cl,cl
c010a202:	0c 04                	or     al,0x4
c010a204:	04 c5                	add    al,0xc5
c010a206:	00 00                	add    BYTE PTR [eax],al
c010a208:	1c 00                	sbb    al,0x0
c010a20a:	00 00                	add    BYTE PTR [eax],al
c010a20c:	48                   	dec    eax
c010a20d:	02 00                	add    al,BYTE PTR [eax]
c010a20f:	00 99 16 10 c0 2d    	add    BYTE PTR [ecx+0x2dc01016],bl
c010a215:	00 00                	add    BYTE PTR [eax],al
c010a217:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c010a21a:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010a220:	69 c5 0c 04 04 00    	imul   eax,ebp,0x4040c
c010a226:	00 00                	add    BYTE PTR [eax],al
c010a228:	1c 00                	sbb    al,0x0
c010a22a:	00 00                	add    BYTE PTR [eax],al
c010a22c:	68 02 00 00 c6       	push   0xc6000002
c010a231:	16                   	push   ss
c010a232:	10 c0                	adc    al,al
c010a234:	2d 00 00 00 41       	sub    eax,0x41000000
c010a239:	0e                   	push   cs
c010a23a:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010a240:	69 c5 0c 04 04 00    	imul   eax,ebp,0x4040c
c010a246:	00 00                	add    BYTE PTR [eax],al
c010a248:	1c 00                	sbb    al,0x0
c010a24a:	00 00                	add    BYTE PTR [eax],al
c010a24c:	88 02                	mov    BYTE PTR [edx],al
c010a24e:	00 00                	add    BYTE PTR [eax],al
c010a250:	f3 16                	repz push ss
c010a252:	10 c0                	adc    al,al
c010a254:	1a 00                	sbb    al,BYTE PTR [eax]
c010a256:	00 00                	add    BYTE PTR [eax],al
c010a258:	41                   	inc    ecx
c010a259:	0e                   	push   cs
c010a25a:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010a260:	56                   	push   esi
c010a261:	c5 0c 04             	lds    ecx,FWORD PTR [esp+eax*1]
c010a264:	04 00                	add    al,0x0
c010a266:	00 00                	add    BYTE PTR [eax],al
c010a268:	1c 00                	sbb    al,0x0
c010a26a:	00 00                	add    BYTE PTR [eax],al
c010a26c:	a8 02                	test   al,0x2
c010a26e:	00 00                	add    BYTE PTR [eax],al
c010a270:	0d 17 10 c0 17       	or     eax,0x17c01017
c010a275:	00 00                	add    BYTE PTR [eax],al
c010a277:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c010a27a:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010a280:	53                   	push   ebx
c010a281:	0c 04                	or     al,0x4
c010a283:	04 c5                	add    al,0xc5
c010a285:	00 00                	add    BYTE PTR [eax],al
c010a287:	00 20                	add    BYTE PTR [eax],ah
c010a289:	00 00                	add    BYTE PTR [eax],al
c010a28b:	00 c8                	add    al,cl
c010a28d:	02 00                	add    al,BYTE PTR [eax]
c010a28f:	00 24 17             	add    BYTE PTR [edi+edx*1],ah
c010a292:	10 c0                	adc    al,al
c010a294:	6d                   	ins    DWORD PTR es:[edi],dx
c010a295:	00 00                	add    BYTE PTR [eax],al
c010a297:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c010a29a:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010a2a0:	44                   	inc    esp
c010a2a1:	83 03 02             	add    DWORD PTR [ebx],0x2
c010a2a4:	64 c3                	fs ret 
c010a2a6:	41                   	inc    ecx
c010a2a7:	0c 04                	or     al,0x4
c010a2a9:	04 c5                	add    al,0xc5
c010a2ab:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c010a2ae:	00 00                	add    BYTE PTR [eax],al
c010a2b0:	ec                   	in     al,dx
c010a2b1:	02 00                	add    al,BYTE PTR [eax]
c010a2b3:	00 91 17 10 c0 1a    	add    BYTE PTR [ecx+0x1ac01017],dl
c010a2b9:	00 00                	add    BYTE PTR [eax],al
c010a2bb:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c010a2be:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010a2c4:	56                   	push   esi
c010a2c5:	0c 04                	or     al,0x4
c010a2c7:	04 c5                	add    al,0xc5
c010a2c9:	00 00                	add    BYTE PTR [eax],al
c010a2cb:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c010a2ce:	00 00                	add    BYTE PTR [eax],al
c010a2d0:	0c 03                	or     al,0x3
c010a2d2:	00 00                	add    BYTE PTR [eax],al
c010a2d4:	ab                   	stos   DWORD PTR es:[edi],eax
c010a2d5:	17                   	pop    ss
c010a2d6:	10 c0                	adc    al,al
c010a2d8:	0d 00 00 00 41       	or     eax,0x41000000
c010a2dd:	0e                   	push   cs
c010a2de:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010a2e4:	49                   	dec    ecx
c010a2e5:	0c 04                	or     al,0x4
c010a2e7:	04 c5                	add    al,0xc5
c010a2e9:	00 00                	add    BYTE PTR [eax],al
c010a2eb:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c010a2ee:	00 00                	add    BYTE PTR [eax],al
c010a2f0:	2c 03                	sub    al,0x3
c010a2f2:	00 00                	add    BYTE PTR [eax],al
c010a2f4:	b8 17 10 c0 3c       	mov    eax,0x3cc01017
c010a2f9:	03 00                	add    eax,DWORD PTR [eax]
c010a2fb:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c010a2fe:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010a304:	03 38                	add    edi,DWORD PTR [eax]
c010a306:	03 c5                	add    eax,ebp
c010a308:	0c 04                	or     al,0x4
c010a30a:	04 00                	add    al,0x0
c010a30c:	1c 00                	sbb    al,0x0
c010a30e:	00 00                	add    BYTE PTR [eax],al
c010a310:	4c                   	dec    esp
c010a311:	03 00                	add    eax,DWORD PTR [eax]
c010a313:	00 f4                	add    ah,dh
c010a315:	1a 10                	sbb    dl,BYTE PTR [eax]
c010a317:	c0 78 01 00          	sar    BYTE PTR [eax+0x1],0x0
c010a31b:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c010a31e:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010a324:	03 74 01 c5          	add    esi,DWORD PTR [ecx+eax*1-0x3b]
c010a328:	0c 04                	or     al,0x4
c010a32a:	04 00                	add    al,0x0
c010a32c:	28 00                	sub    BYTE PTR [eax],al
c010a32e:	00 00                	add    BYTE PTR [eax],al
c010a330:	6c                   	ins    BYTE PTR es:[edi],dx
c010a331:	03 00                	add    eax,DWORD PTR [eax]
c010a333:	00 6c 1c 10          	add    BYTE PTR [esp+ebx*1+0x10],ch
c010a337:	c0 50 02 00          	rcl    BYTE PTR [eax+0x2],0x0
c010a33b:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c010a33e:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010a344:	46                   	inc    esi
c010a345:	83 05 86 04 87 03 03 	add    DWORD PTR ds:0x3870486,0x3
c010a34c:	43                   	inc    ebx
c010a34d:	02 c3                	add    al,bl
c010a34f:	41                   	inc    ecx
c010a350:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c010a354:	0c 04                	or     al,0x4
c010a356:	04 c5                	add    al,0xc5
c010a358:	1c 00                	sbb    al,0x0
c010a35a:	00 00                	add    BYTE PTR [eax],al
c010a35c:	98                   	cwde   
c010a35d:	03 00                	add    eax,DWORD PTR [eax]
c010a35f:	00 bc 1e 10 c0 b1 00 	add    BYTE PTR [esi+ebx*1+0xb1c010],bh
c010a366:	00 00                	add    BYTE PTR [eax],al
c010a368:	41                   	inc    ecx
c010a369:	0e                   	push   cs
c010a36a:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010a370:	02 ad c5 0c 04 04    	add    ch,BYTE PTR [ebp+0x4040cc5]
c010a376:	00 00                	add    BYTE PTR [eax],al
c010a378:	1c 00                	sbb    al,0x0
c010a37a:	00 00                	add    BYTE PTR [eax],al
c010a37c:	b8 03 00 00 6d       	mov    eax,0x6d000003
c010a381:	1f                   	pop    ds
c010a382:	10 c0                	adc    al,al
c010a384:	40                   	inc    eax
c010a385:	00 00                	add    BYTE PTR [eax],al
c010a387:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c010a38a:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010a390:	7c c5                	jl     c010a357 <_edata+0x396>
c010a392:	0c 04                	or     al,0x4
c010a394:	04 00                	add    al,0x0
c010a396:	00 00                	add    BYTE PTR [eax],al
c010a398:	1c 00                	sbb    al,0x0
c010a39a:	00 00                	add    BYTE PTR [eax],al
c010a39c:	d8 03                	fadd   DWORD PTR [ebx]
c010a39e:	00 00                	add    BYTE PTR [eax],al
c010a3a0:	ad                   	lods   eax,DWORD PTR ds:[esi]
c010a3a1:	1f                   	pop    ds
c010a3a2:	10 c0                	adc    al,al
c010a3a4:	13 00                	adc    eax,DWORD PTR [eax]
c010a3a6:	00 00                	add    BYTE PTR [eax],al
c010a3a8:	41                   	inc    ecx
c010a3a9:	0e                   	push   cs
c010a3aa:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010a3b0:	4f                   	dec    edi
c010a3b1:	0c 04                	or     al,0x4
c010a3b3:	04 c5                	add    al,0xc5
c010a3b5:	00 00                	add    BYTE PTR [eax],al
c010a3b7:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c010a3ba:	00 00                	add    BYTE PTR [eax],al
c010a3bc:	f8                   	clc    
c010a3bd:	03 00                	add    eax,DWORD PTR [eax]
c010a3bf:	00 c0                	add    al,al
c010a3c1:	1f                   	pop    ds
c010a3c2:	10 c0                	adc    al,al
c010a3c4:	27                   	daa    
c010a3c5:	00 00                	add    BYTE PTR [eax],al
c010a3c7:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c010a3ca:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010a3d0:	63 0c 04             	arpl   WORD PTR [esp+eax*1],cx
c010a3d3:	04 c5                	add    al,0xc5
c010a3d5:	00 00                	add    BYTE PTR [eax],al
c010a3d7:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c010a3da:	00 00                	add    BYTE PTR [eax],al
c010a3dc:	18 04 00             	sbb    BYTE PTR [eax+eax*1],al
c010a3df:	00 e7                	add    bh,ah
c010a3e1:	1f                   	pop    ds
c010a3e2:	10 c0                	adc    al,al
c010a3e4:	2d 00 00 00 41       	sub    eax,0x41000000
c010a3e9:	0e                   	push   cs
c010a3ea:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010a3f0:	69 c5 0c 04 04 00    	imul   eax,ebp,0x4040c
c010a3f6:	00 00                	add    BYTE PTR [eax],al
c010a3f8:	20 00                	and    BYTE PTR [eax],al
c010a3fa:	00 00                	add    BYTE PTR [eax],al
c010a3fc:	38 04 00             	cmp    BYTE PTR [eax+eax*1],al
c010a3ff:	00 14 20             	add    BYTE PTR [eax+eiz*1],dl
c010a402:	10 c0                	adc    al,al
c010a404:	40                   	inc    eax
c010a405:	01 00                	add    DWORD PTR [eax],eax
c010a407:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c010a40a:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010a410:	44                   	inc    esp
c010a411:	83 03 03             	add    DWORD PTR [ebx],0x3
c010a414:	37                   	aaa    
c010a415:	01 c3                	add    ebx,eax
c010a417:	41                   	inc    ecx
c010a418:	0c 04                	or     al,0x4
c010a41a:	04 c5                	add    al,0xc5
c010a41c:	1c 00                	sbb    al,0x0
c010a41e:	00 00                	add    BYTE PTR [eax],al
c010a420:	5c                   	pop    esp
c010a421:	04 00                	add    al,0x0
c010a423:	00 54 21 10          	add    BYTE PTR [ecx+eiz*1+0x10],dl
c010a427:	c0 ef 00             	shr    bh,0x0
c010a42a:	00 00                	add    BYTE PTR [eax],al
c010a42c:	41                   	inc    ecx
c010a42d:	0e                   	push   cs
c010a42e:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010a434:	02 eb                	add    ch,bl
c010a436:	c5 0c 04             	lds    ecx,FWORD PTR [esp+eax*1]
c010a439:	04 00                	add    al,0x0
c010a43b:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c010a43e:	00 00                	add    BYTE PTR [eax],al
c010a440:	7c 04                	jl     c010a446 <_edata+0x485>
c010a442:	00 00                	add    BYTE PTR [eax],al
c010a444:	43                   	inc    ebx
c010a445:	22 10                	and    dl,BYTE PTR [eax]
c010a447:	c0 ae 00 00 00 41 0e 	shr    BYTE PTR [esi+0x41000000],0xe
c010a44e:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010a454:	02 aa c5 0c 04 04    	add    ch,BYTE PTR [edx+0x4040cc5]
c010a45a:	00 00                	add    BYTE PTR [eax],al
c010a45c:	1c 00                	sbb    al,0x0
c010a45e:	00 00                	add    BYTE PTR [eax],al
c010a460:	9c                   	pushf  
c010a461:	04 00                	add    al,0x0
c010a463:	00 f1                	add    cl,dh
c010a465:	22 10                	and    dl,BYTE PTR [eax]
c010a467:	c0 44 00 00 00       	rol    BYTE PTR [eax+eax*1+0x0],0x0
c010a46c:	41                   	inc    ecx
c010a46d:	0e                   	push   cs
c010a46e:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010a474:	02 40 c5             	add    al,BYTE PTR [eax-0x3b]
c010a477:	0c 04                	or     al,0x4
c010a479:	04 00                	add    al,0x0
c010a47b:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c010a47e:	00 00                	add    BYTE PTR [eax],al
c010a480:	bc 04 00 00 35       	mov    esp,0x35000004
c010a485:	23 10                	and    edx,DWORD PTR [eax]
c010a487:	c0 44 00 00 00       	rol    BYTE PTR [eax+eax*1+0x0],0x0
c010a48c:	41                   	inc    ecx
c010a48d:	0e                   	push   cs
c010a48e:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010a494:	02 40 c5             	add    al,BYTE PTR [eax-0x3b]
c010a497:	0c 04                	or     al,0x4
c010a499:	04 00                	add    al,0x0
c010a49b:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c010a49e:	00 00                	add    BYTE PTR [eax],al
c010a4a0:	dc 04 00             	fadd   QWORD PTR [eax+eax*1]
c010a4a3:	00 79 23             	add    BYTE PTR [ecx+0x23],bh
c010a4a6:	10 c0                	adc    al,al
c010a4a8:	ce                   	into   
c010a4a9:	00 00                	add    BYTE PTR [eax],al
c010a4ab:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c010a4ae:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010a4b4:	02 ca                	add    cl,dl
c010a4b6:	c5 0c 04             	lds    ecx,FWORD PTR [esp+eax*1]
c010a4b9:	04 00                	add    al,0x0
c010a4bb:	00 20                	add    BYTE PTR [eax],ah
c010a4bd:	00 00                	add    BYTE PTR [eax],al
c010a4bf:	00 fc                	add    ah,bh
c010a4c1:	04 00                	add    al,0x0
c010a4c3:	00 47 24             	add    BYTE PTR [edi+0x24],al
c010a4c6:	10 c0                	adc    al,al
c010a4c8:	1f                   	pop    ds
c010a4c9:	03 00                	add    eax,DWORD PTR [eax]
c010a4cb:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c010a4ce:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010a4d4:	44                   	inc    esp
c010a4d5:	83 03 03             	add    DWORD PTR [ebx],0x3
c010a4d8:	16                   	push   ss
c010a4d9:	03 c3                	add    eax,ebx
c010a4db:	41                   	inc    ecx
c010a4dc:	0c 04                	or     al,0x4
c010a4de:	04 c5                	add    al,0xc5
c010a4e0:	1c 00                	sbb    al,0x0
c010a4e2:	00 00                	add    BYTE PTR [eax],al
c010a4e4:	20 05 00 00 66 27    	and    BYTE PTR ds:0x27660000,al
c010a4ea:	10 c0                	adc    al,al
c010a4ec:	29 00                	sub    DWORD PTR [eax],eax
c010a4ee:	00 00                	add    BYTE PTR [eax],al
c010a4f0:	41                   	inc    ecx
c010a4f1:	0e                   	push   cs
c010a4f2:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010a4f8:	65 c5 0c 04          	lds    ecx,FWORD PTR gs:[esp+eax*1]
c010a4fc:	04 00                	add    al,0x0
c010a4fe:	00 00                	add    BYTE PTR [eax],al
c010a500:	1c 00                	sbb    al,0x0
c010a502:	00 00                	add    BYTE PTR [eax],al
c010a504:	40                   	inc    eax
c010a505:	05 00 00 8f 27       	add    eax,0x278f0000
c010a50a:	10 c0                	adc    al,al
c010a50c:	3e 00 00             	add    BYTE PTR ds:[eax],al
c010a50f:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c010a512:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010a518:	7a c5                	jp     c010a4df <_edata+0x51e>
c010a51a:	0c 04                	or     al,0x4
c010a51c:	04 00                	add    al,0x0
c010a51e:	00 00                	add    BYTE PTR [eax],al
c010a520:	1c 00                	sbb    al,0x0
c010a522:	00 00                	add    BYTE PTR [eax],al
c010a524:	60                   	pusha  
c010a525:	05 00 00 cd 27       	add    eax,0x27cd0000
c010a52a:	10 c0                	adc    al,al
c010a52c:	4e                   	dec    esi
c010a52d:	00 00                	add    BYTE PTR [eax],al
c010a52f:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c010a532:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010a538:	02 4a c5             	add    cl,BYTE PTR [edx-0x3b]
c010a53b:	0c 04                	or     al,0x4
c010a53d:	04 00                	add    al,0x0
c010a53f:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c010a542:	00 00                	add    BYTE PTR [eax],al
c010a544:	80 05 00 00 1b 28 10 	add    BYTE PTR ds:0x281b0000,0x10
c010a54b:	c0 5c 01 00 00       	rcr    BYTE PTR [ecx+eax*1+0x0],0x0
c010a550:	41                   	inc    ecx
c010a551:	0e                   	push   cs
c010a552:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010a558:	03 58 01             	add    ebx,DWORD PTR [eax+0x1]
c010a55b:	c5 0c 04             	lds    ecx,FWORD PTR [esp+eax*1]
c010a55e:	04 00                	add    al,0x0
c010a560:	1c 00                	sbb    al,0x0
c010a562:	00 00                	add    BYTE PTR [eax],al
c010a564:	a0 05 00 00 78       	mov    al,ds:0x78000005
c010a569:	29 10                	sub    DWORD PTR [eax],edx
c010a56b:	c0 5e 00 00          	rcr    BYTE PTR [esi+0x0],0x0
c010a56f:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c010a572:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010a578:	02 5a c5             	add    bl,BYTE PTR [edx-0x3b]
c010a57b:	0c 04                	or     al,0x4
c010a57d:	04 00                	add    al,0x0
c010a57f:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c010a582:	00 00                	add    BYTE PTR [eax],al
c010a584:	c0 05 00 00 d6 29 10 	rol    BYTE PTR ds:0x29d60000,0x10
c010a58b:	c0                   	(bad)  
c010a58c:	31 00                	xor    DWORD PTR [eax],eax
c010a58e:	00 00                	add    BYTE PTR [eax],al
c010a590:	41                   	inc    ecx
c010a591:	0e                   	push   cs
c010a592:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010a598:	6d                   	ins    DWORD PTR es:[edi],dx
c010a599:	c5 0c 04             	lds    ecx,FWORD PTR [esp+eax*1]
c010a59c:	04 00                	add    al,0x0
c010a59e:	00 00                	add    BYTE PTR [eax],al
c010a5a0:	20 00                	and    BYTE PTR [eax],al
c010a5a2:	00 00                	add    BYTE PTR [eax],al
c010a5a4:	e0 05                	loopne c010a5ab <_edata+0x5ea>
c010a5a6:	00 00                	add    BYTE PTR [eax],al
c010a5a8:	07                   	pop    es
c010a5a9:	2a 10                	sub    dl,BYTE PTR [eax]
c010a5ab:	c0 6b 01 00          	shr    BYTE PTR [ebx+0x1],0x0
c010a5af:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c010a5b2:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010a5b8:	44                   	inc    esp
c010a5b9:	83 03 03             	add    DWORD PTR [ebx],0x3
c010a5bc:	62 01                	bound  eax,QWORD PTR [ecx]
c010a5be:	c3                   	ret    
c010a5bf:	41                   	inc    ecx
c010a5c0:	0c 04                	or     al,0x4
c010a5c2:	04 c5                	add    al,0xc5
c010a5c4:	1c 00                	sbb    al,0x0
c010a5c6:	00 00                	add    BYTE PTR [eax],al
c010a5c8:	04 06                	add    al,0x6
c010a5ca:	00 00                	add    BYTE PTR [eax],al
c010a5cc:	72 2b                	jb     c010a5f9 <_edata+0x638>
c010a5ce:	10 c0                	adc    al,al
c010a5d0:	c4 00                	les    eax,FWORD PTR [eax]
c010a5d2:	00 00                	add    BYTE PTR [eax],al
c010a5d4:	41                   	inc    ecx
c010a5d5:	0e                   	push   cs
c010a5d6:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010a5dc:	02 c0                	add    al,al
c010a5de:	c5 0c 04             	lds    ecx,FWORD PTR [esp+eax*1]
c010a5e1:	04 00                	add    al,0x0
c010a5e3:	00 20                	add    BYTE PTR [eax],ah
c010a5e5:	00 00                	add    BYTE PTR [eax],al
c010a5e7:	00 24 06             	add    BYTE PTR [esi+eax*1],ah
c010a5ea:	00 00                	add    BYTE PTR [eax],al
c010a5ec:	36 2c 10             	ss sub al,0x10
c010a5ef:	c0 84 00 00 00 41 0e 	rol    BYTE PTR [eax+eax*1+0xe410000],0x8
c010a5f6:	08 
c010a5f7:	85 02                	test   DWORD PTR [edx],eax
c010a5f9:	42                   	inc    edx
c010a5fa:	0d 05 44 83 03       	or     eax,0x3834405
c010a5ff:	02 7b c3             	add    bh,BYTE PTR [ebx-0x3d]
c010a602:	41                   	inc    ecx
c010a603:	0c 04                	or     al,0x4
c010a605:	04 c5                	add    al,0xc5
c010a607:	00 20                	add    BYTE PTR [eax],ah
c010a609:	00 00                	add    BYTE PTR [eax],al
c010a60b:	00 48 06             	add    BYTE PTR [eax+0x6],cl
c010a60e:	00 00                	add    BYTE PTR [eax],al
c010a610:	ba 2c 10 c0 bc       	mov    edx,0xbcc0102c
c010a615:	00 00                	add    BYTE PTR [eax],al
c010a617:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c010a61a:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010a620:	44                   	inc    esp
c010a621:	83 03 02             	add    DWORD PTR [ebx],0x2
c010a624:	b3 c3                	mov    bl,0xc3
c010a626:	41                   	inc    ecx
c010a627:	0c 04                	or     al,0x4
c010a629:	04 c5                	add    al,0xc5
c010a62b:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c010a62e:	00 00                	add    BYTE PTR [eax],al
c010a630:	6c                   	ins    BYTE PTR es:[edi],dx
c010a631:	06                   	push   es
c010a632:	00 00                	add    BYTE PTR [eax],al
c010a634:	78 2d                	js     c010a663 <_edata+0x6a2>
c010a636:	10 c0                	adc    al,al
c010a638:	3b 00                	cmp    eax,DWORD PTR [eax]
c010a63a:	00 00                	add    BYTE PTR [eax],al
c010a63c:	41                   	inc    ecx
c010a63d:	0e                   	push   cs
c010a63e:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010a644:	77 c5                	ja     c010a60b <_edata+0x64a>
c010a646:	0c 04                	or     al,0x4
c010a648:	04 00                	add    al,0x0
c010a64a:	00 00                	add    BYTE PTR [eax],al
c010a64c:	1c 00                	sbb    al,0x0
c010a64e:	00 00                	add    BYTE PTR [eax],al
c010a650:	8c 06                	mov    WORD PTR [esi],es
c010a652:	00 00                	add    BYTE PTR [eax],al
c010a654:	b3 2d                	mov    bl,0x2d
c010a656:	10 c0                	adc    al,al
c010a658:	38 00                	cmp    BYTE PTR [eax],al
c010a65a:	00 00                	add    BYTE PTR [eax],al
c010a65c:	41                   	inc    ecx
c010a65d:	0e                   	push   cs
c010a65e:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010a664:	74 c5                	je     c010a62b <_edata+0x66a>
c010a666:	0c 04                	or     al,0x4
c010a668:	04 00                	add    al,0x0
c010a66a:	00 00                	add    BYTE PTR [eax],al
c010a66c:	1c 00                	sbb    al,0x0
c010a66e:	00 00                	add    BYTE PTR [eax],al
c010a670:	ac                   	lods   al,BYTE PTR ds:[esi]
c010a671:	06                   	push   es
c010a672:	00 00                	add    BYTE PTR [eax],al
c010a674:	eb 2d                	jmp    c010a6a3 <_edata+0x6e2>
c010a676:	10 c0                	adc    al,al
c010a678:	dc 00                	fadd   QWORD PTR [eax]
c010a67a:	00 00                	add    BYTE PTR [eax],al
c010a67c:	41                   	inc    ecx
c010a67d:	0e                   	push   cs
c010a67e:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010a684:	02 d8                	add    bl,al
c010a686:	c5 0c 04             	lds    ecx,FWORD PTR [esp+eax*1]
c010a689:	04 00                	add    al,0x0
c010a68b:	00 20                	add    BYTE PTR [eax],ah
c010a68d:	00 00                	add    BYTE PTR [eax],al
c010a68f:	00 cc                	add    ah,cl
c010a691:	06                   	push   es
c010a692:	00 00                	add    BYTE PTR [eax],al
c010a694:	c7                   	(bad)  
c010a695:	2e 10 c0             	cs adc al,al
c010a698:	1a 00                	sbb    al,BYTE PTR [eax]
c010a69a:	00 00                	add    BYTE PTR [eax],al
c010a69c:	41                   	inc    ecx
c010a69d:	0e                   	push   cs
c010a69e:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010a6a4:	44                   	inc    esp
c010a6a5:	83 03 51             	add    DWORD PTR [ebx],0x51
c010a6a8:	c3                   	ret    
c010a6a9:	41                   	inc    ecx
c010a6aa:	0c 04                	or     al,0x4
c010a6ac:	04 c5                	add    al,0xc5
c010a6ae:	00 00                	add    BYTE PTR [eax],al
c010a6b0:	1c 00                	sbb    al,0x0
c010a6b2:	00 00                	add    BYTE PTR [eax],al
c010a6b4:	f0 06                	lock push es
c010a6b6:	00 00                	add    BYTE PTR [eax],al
c010a6b8:	e1 2e                	loope  c010a6e8 <_edata+0x727>
c010a6ba:	10 c0                	adc    al,al
c010a6bc:	18 00                	sbb    BYTE PTR [eax],al
c010a6be:	00 00                	add    BYTE PTR [eax],al
c010a6c0:	41                   	inc    ecx
c010a6c1:	0e                   	push   cs
c010a6c2:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010a6c8:	54                   	push   esp
c010a6c9:	c5 0c 04             	lds    ecx,FWORD PTR [esp+eax*1]
c010a6cc:	04 00                	add    al,0x0
c010a6ce:	00 00                	add    BYTE PTR [eax],al
c010a6d0:	1c 00                	sbb    al,0x0
c010a6d2:	00 00                	add    BYTE PTR [eax],al
c010a6d4:	10 07                	adc    BYTE PTR [edi],al
c010a6d6:	00 00                	add    BYTE PTR [eax],al
c010a6d8:	f9                   	stc    
c010a6d9:	2e 10 c0             	cs adc al,al
c010a6dc:	70 00                	jo     c010a6de <_edata+0x71d>
c010a6de:	00 00                	add    BYTE PTR [eax],al
c010a6e0:	41                   	inc    ecx
c010a6e1:	0e                   	push   cs
c010a6e2:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010a6e8:	02 6c c5 0c          	add    ch,BYTE PTR [ebp+eax*8+0xc]
c010a6ec:	04 04                	add    al,0x4
c010a6ee:	00 00                	add    BYTE PTR [eax],al
c010a6f0:	1c 00                	sbb    al,0x0
c010a6f2:	00 00                	add    BYTE PTR [eax],al
c010a6f4:	30 07                	xor    BYTE PTR [edi],al
c010a6f6:	00 00                	add    BYTE PTR [eax],al
c010a6f8:	69 2f 10 c0 1d 01    	imul   ebp,DWORD PTR [edi],0x11dc010
c010a6fe:	00 00                	add    BYTE PTR [eax],al
c010a700:	41                   	inc    ecx
c010a701:	0e                   	push   cs
c010a702:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010a708:	03 19                	add    ebx,DWORD PTR [ecx]
c010a70a:	01 c5                	add    ebp,eax
c010a70c:	0c 04                	or     al,0x4
c010a70e:	04 00                	add    al,0x0
c010a710:	1c 00                	sbb    al,0x0
c010a712:	00 00                	add    BYTE PTR [eax],al
c010a714:	50                   	push   eax
c010a715:	07                   	pop    es
c010a716:	00 00                	add    BYTE PTR [eax],al
c010a718:	86 30                	xchg   BYTE PTR [eax],dh
c010a71a:	10 c0                	adc    al,al
c010a71c:	63 00                	arpl   WORD PTR [eax],ax
c010a71e:	00 00                	add    BYTE PTR [eax],al
c010a720:	41                   	inc    ecx
c010a721:	0e                   	push   cs
c010a722:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010a728:	02 5f c5             	add    bl,BYTE PTR [edi-0x3b]
c010a72b:	0c 04                	or     al,0x4
c010a72d:	04 00                	add    al,0x0
c010a72f:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c010a732:	00 00                	add    BYTE PTR [eax],al
c010a734:	70 07                	jo     c010a73d <_edata+0x77c>
c010a736:	00 00                	add    BYTE PTR [eax],al
c010a738:	e9 30 10 c0 84       	jmp    44d0b76d <AR_CODE32+0x44cff6d5>
c010a73d:	01 00                	add    DWORD PTR [eax],eax
c010a73f:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c010a742:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010a748:	03 80 01 c5 0c 04    	add    eax,DWORD PTR [eax+0x40cc501]
c010a74e:	04 00                	add    al,0x0
c010a750:	1c 00                	sbb    al,0x0
c010a752:	00 00                	add    BYTE PTR [eax],al
c010a754:	90                   	nop
c010a755:	07                   	pop    es
c010a756:	00 00                	add    BYTE PTR [eax],al
c010a758:	6d                   	ins    DWORD PTR es:[edi],dx
c010a759:	32 10                	xor    dl,BYTE PTR [eax]
c010a75b:	c0 a0 00 00 00 41 0e 	shl    BYTE PTR [eax+0x41000000],0xe
c010a762:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010a768:	02 9c c5 0c 04 04 00 	add    bl,BYTE PTR [ebp+eax*8+0x4040c]
c010a76f:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c010a772:	00 00                	add    BYTE PTR [eax],al
c010a774:	b0 07                	mov    al,0x7
c010a776:	00 00                	add    BYTE PTR [eax],al
c010a778:	0d 33 10 c0 d6       	or     eax,0xd6c01033
c010a77d:	00 00                	add    BYTE PTR [eax],al
c010a77f:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c010a782:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010a788:	02 d2                	add    dl,dl
c010a78a:	c5 0c 04             	lds    ecx,FWORD PTR [esp+eax*1]
c010a78d:	04 00                	add    al,0x0
c010a78f:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c010a792:	00 00                	add    BYTE PTR [eax],al
c010a794:	d0 07                	rol    BYTE PTR [edi],1
c010a796:	00 00                	add    BYTE PTR [eax],al
c010a798:	e3 33                	jecxz  c010a7cd <_edata+0x80c>
c010a79a:	10 c0                	adc    al,al
c010a79c:	17                   	pop    ss
c010a79d:	00 00                	add    BYTE PTR [eax],al
c010a79f:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c010a7a2:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010a7a8:	53                   	push   ebx
c010a7a9:	0c 04                	or     al,0x4
c010a7ab:	04 c5                	add    al,0xc5
c010a7ad:	00 00                	add    BYTE PTR [eax],al
c010a7af:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c010a7b2:	00 00                	add    BYTE PTR [eax],al
c010a7b4:	f0 07                	lock pop es
c010a7b6:	00 00                	add    BYTE PTR [eax],al
c010a7b8:	fa                   	cli    
c010a7b9:	33 10                	xor    edx,DWORD PTR [eax]
c010a7bb:	c0 39 00             	sar    BYTE PTR [ecx],0x0
c010a7be:	00 00                	add    BYTE PTR [eax],al
c010a7c0:	41                   	inc    ecx
c010a7c1:	0e                   	push   cs
c010a7c2:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010a7c8:	75 c5                	jne    c010a78f <_edata+0x7ce>
c010a7ca:	0c 04                	or     al,0x4
c010a7cc:	04 00                	add    al,0x0
c010a7ce:	00 00                	add    BYTE PTR [eax],al
c010a7d0:	1c 00                	sbb    al,0x0
c010a7d2:	00 00                	add    BYTE PTR [eax],al
c010a7d4:	10 08                	adc    BYTE PTR [eax],cl
c010a7d6:	00 00                	add    BYTE PTR [eax],al
c010a7d8:	48                   	dec    eax
c010a7d9:	34 10                	xor    al,0x10
c010a7db:	c0 69 00 00          	shr    BYTE PTR [ecx+0x0],0x0
c010a7df:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c010a7e2:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010a7e8:	02 63 c5             	add    ah,BYTE PTR [ebx-0x3b]
c010a7eb:	0c 04                	or     al,0x4
c010a7ed:	04 00                	add    al,0x0
c010a7ef:	00 20                	add    BYTE PTR [eax],ah
c010a7f1:	00 00                	add    BYTE PTR [eax],al
c010a7f3:	00 30                	add    BYTE PTR [eax],dh
c010a7f5:	08 00                	or     BYTE PTR [eax],al
c010a7f7:	00 b1 34 10 c0 ff    	add    BYTE PTR [ecx-0x3fefcc],dh
c010a7fd:	00 00                	add    BYTE PTR [eax],al
c010a7ff:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c010a802:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010a808:	44                   	inc    esp
c010a809:	83 03 02             	add    DWORD PTR [ebx],0x2
c010a80c:	f7 c5 0c 04 04 c3    	test   ebp,0xc304040c
c010a812:	00 00                	add    BYTE PTR [eax],al
c010a814:	1c 00                	sbb    al,0x0
c010a816:	00 00                	add    BYTE PTR [eax],al
c010a818:	54                   	push   esp
c010a819:	08 00                	or     BYTE PTR [eax],al
c010a81b:	00 b0 35 10 c0 12    	add    BYTE PTR [eax+0x12c01035],dh
c010a821:	00 00                	add    BYTE PTR [eax],al
c010a823:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c010a826:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010a82c:	4e                   	dec    esi
c010a82d:	0c 04                	or     al,0x4
c010a82f:	04 c5                	add    al,0xc5
c010a831:	00 00                	add    BYTE PTR [eax],al
c010a833:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c010a836:	00 00                	add    BYTE PTR [eax],al
c010a838:	74 08                	je     c010a842 <_edata+0x881>
c010a83a:	00 00                	add    BYTE PTR [eax],al
c010a83c:	c4 35 10 c0 f6 00    	les    esi,FWORD PTR ds:0xf6c010
c010a842:	00 00                	add    BYTE PTR [eax],al
c010a844:	41                   	inc    ecx
c010a845:	0e                   	push   cs
c010a846:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010a84c:	02 f2                	add    dh,dl
c010a84e:	c5 0c 04             	lds    ecx,FWORD PTR [esp+eax*1]
c010a851:	04 00                	add    al,0x0
c010a853:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c010a856:	00 00                	add    BYTE PTR [eax],al
c010a858:	94                   	xchg   esp,eax
c010a859:	08 00                	or     BYTE PTR [eax],al
c010a85b:	00 ba 36 10 c0 62    	add    BYTE PTR [edx+0x62c01036],bh
c010a861:	00 00                	add    BYTE PTR [eax],al
c010a863:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c010a866:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010a86c:	02 5e c5             	add    bl,BYTE PTR [esi-0x3b]
c010a86f:	0c 04                	or     al,0x4
c010a871:	04 00                	add    al,0x0
c010a873:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c010a876:	00 00                	add    BYTE PTR [eax],al
c010a878:	b4 08                	mov    ah,0x8
c010a87a:	00 00                	add    BYTE PTR [eax],al
c010a87c:	1c 37                	sbb    al,0x37
c010a87e:	10 c0                	adc    al,al
c010a880:	5a                   	pop    edx
c010a881:	00 00                	add    BYTE PTR [eax],al
c010a883:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c010a886:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010a88c:	02 56 c5             	add    dl,BYTE PTR [esi-0x3b]
c010a88f:	0c 04                	or     al,0x4
c010a891:	04 00                	add    al,0x0
c010a893:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c010a896:	00 00                	add    BYTE PTR [eax],al
c010a898:	d4 08                	aam    0x8
c010a89a:	00 00                	add    BYTE PTR [eax],al
c010a89c:	76 37                	jbe    c010a8d5 <_edata+0x914>
c010a89e:	10 c0                	adc    al,al
c010a8a0:	79 00                	jns    c010a8a2 <_edata+0x8e1>
c010a8a2:	00 00                	add    BYTE PTR [eax],al
c010a8a4:	41                   	inc    ecx
c010a8a5:	0e                   	push   cs
c010a8a6:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010a8ac:	02 75 c5             	add    dh,BYTE PTR [ebp-0x3b]
c010a8af:	0c 04                	or     al,0x4
c010a8b1:	04 00                	add    al,0x0
c010a8b3:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c010a8b6:	00 00                	add    BYTE PTR [eax],al
c010a8b8:	f4                   	hlt    
c010a8b9:	08 00                	or     BYTE PTR [eax],al
c010a8bb:	00 ef                	add    bh,ch
c010a8bd:	37                   	aaa    
c010a8be:	10 c0                	adc    al,al
c010a8c0:	4c                   	dec    esp
c010a8c1:	00 00                	add    BYTE PTR [eax],al
c010a8c3:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c010a8c6:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010a8cc:	02 48 c5             	add    cl,BYTE PTR [eax-0x3b]
c010a8cf:	0c 04                	or     al,0x4
c010a8d1:	04 00                	add    al,0x0
c010a8d3:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c010a8d6:	00 00                	add    BYTE PTR [eax],al
c010a8d8:	14 09                	adc    al,0x9
c010a8da:	00 00                	add    BYTE PTR [eax],al
c010a8dc:	3b 38                	cmp    edi,DWORD PTR [eax]
c010a8de:	10 c0                	adc    al,al
c010a8e0:	4c                   	dec    esp
c010a8e1:	01 00                	add    DWORD PTR [eax],eax
c010a8e3:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c010a8e6:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010a8ec:	03 48 01             	add    ecx,DWORD PTR [eax+0x1]
c010a8ef:	c5 0c 04             	lds    ecx,FWORD PTR [esp+eax*1]
c010a8f2:	04 00                	add    al,0x0
c010a8f4:	1c 00                	sbb    al,0x0
c010a8f6:	00 00                	add    BYTE PTR [eax],al
c010a8f8:	34 09                	xor    al,0x9
c010a8fa:	00 00                	add    BYTE PTR [eax],al
c010a8fc:	88 39                	mov    BYTE PTR [ecx],bh
c010a8fe:	10 c0                	adc    al,al
c010a900:	14 00                	adc    al,0x0
c010a902:	00 00                	add    BYTE PTR [eax],al
c010a904:	41                   	inc    ecx
c010a905:	0e                   	push   cs
c010a906:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010a90c:	50                   	push   eax
c010a90d:	c5 0c 04             	lds    ecx,FWORD PTR [esp+eax*1]
c010a910:	04 00                	add    al,0x0
c010a912:	00 00                	add    BYTE PTR [eax],al
c010a914:	1c 00                	sbb    al,0x0
c010a916:	00 00                	add    BYTE PTR [eax],al
c010a918:	54                   	push   esp
c010a919:	09 00                	or     DWORD PTR [eax],eax
c010a91b:	00 9c 39 10 c0 43 00 	add    BYTE PTR [ecx+edi*1+0x43c010],bl
c010a922:	00 00                	add    BYTE PTR [eax],al
c010a924:	41                   	inc    ecx
c010a925:	0e                   	push   cs
c010a926:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010a92c:	7f c5                	jg     c010a8f3 <_edata+0x932>
c010a92e:	0c 04                	or     al,0x4
c010a930:	04 00                	add    al,0x0
c010a932:	00 00                	add    BYTE PTR [eax],al
c010a934:	1c 00                	sbb    al,0x0
c010a936:	00 00                	add    BYTE PTR [eax],al
c010a938:	74 09                	je     c010a943 <_edata+0x982>
c010a93a:	00 00                	add    BYTE PTR [eax],al
c010a93c:	df 39                	fistp  QWORD PTR [ecx]
c010a93e:	10 c0                	adc    al,al
c010a940:	39 00                	cmp    DWORD PTR [eax],eax
c010a942:	00 00                	add    BYTE PTR [eax],al
c010a944:	41                   	inc    ecx
c010a945:	0e                   	push   cs
c010a946:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010a94c:	75 c5                	jne    c010a913 <_edata+0x952>
c010a94e:	0c 04                	or     al,0x4
c010a950:	04 00                	add    al,0x0
c010a952:	00 00                	add    BYTE PTR [eax],al
c010a954:	1c 00                	sbb    al,0x0
c010a956:	00 00                	add    BYTE PTR [eax],al
c010a958:	94                   	xchg   esp,eax
c010a959:	09 00                	or     DWORD PTR [eax],eax
c010a95b:	00 18                	add    BYTE PTR [eax],bl
c010a95d:	3a 10                	cmp    dl,BYTE PTR [eax]
c010a95f:	c0 40 00 00          	rol    BYTE PTR [eax+0x0],0x0
c010a963:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c010a966:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010a96c:	7c c5                	jl     c010a933 <_edata+0x972>
c010a96e:	0c 04                	or     al,0x4
c010a970:	04 00                	add    al,0x0
c010a972:	00 00                	add    BYTE PTR [eax],al
c010a974:	1c 00                	sbb    al,0x0
c010a976:	00 00                	add    BYTE PTR [eax],al
c010a978:	b4 09                	mov    ah,0x9
c010a97a:	00 00                	add    BYTE PTR [eax],al
c010a97c:	58                   	pop    eax
c010a97d:	3a 10                	cmp    dl,BYTE PTR [eax]
c010a97f:	c0 40 00 00          	rol    BYTE PTR [eax+0x0],0x0
c010a983:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c010a986:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010a98c:	7c c5                	jl     c010a953 <_edata+0x992>
c010a98e:	0c 04                	or     al,0x4
c010a990:	04 00                	add    al,0x0
c010a992:	00 00                	add    BYTE PTR [eax],al
c010a994:	24 00                	and    al,0x0
c010a996:	00 00                	add    BYTE PTR [eax],al
c010a998:	d4 09                	aam    0x9
c010a99a:	00 00                	add    BYTE PTR [eax],al
c010a99c:	98                   	cwde   
c010a99d:	3a 10                	cmp    dl,BYTE PTR [eax]
c010a99f:	c0 49 00 00          	ror    BYTE PTR [ecx+0x0],0x0
c010a9a3:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c010a9a6:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010a9ac:	45                   	inc    ebp
c010a9ad:	83 04 86 03          	add    DWORD PTR [esi+eax*4],0x3
c010a9b1:	7e c3                	jle    c010a976 <_edata+0x9b5>
c010a9b3:	41                   	inc    ecx
c010a9b4:	c6 41 0c 04          	mov    BYTE PTR [ecx+0xc],0x4
c010a9b8:	04 c5                	add    al,0xc5
c010a9ba:	00 00                	add    BYTE PTR [eax],al
c010a9bc:	1c 00                	sbb    al,0x0
c010a9be:	00 00                	add    BYTE PTR [eax],al
c010a9c0:	fc                   	cld    
c010a9c1:	09 00                	or     DWORD PTR [eax],eax
c010a9c3:	00 e1                	add    cl,ah
c010a9c5:	3a 10                	cmp    dl,BYTE PTR [eax]
c010a9c7:	c0 d6 00             	rcl    dh,0x0
c010a9ca:	00 00                	add    BYTE PTR [eax],al
c010a9cc:	41                   	inc    ecx
c010a9cd:	0e                   	push   cs
c010a9ce:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010a9d4:	02 d2                	add    dl,dl
c010a9d6:	c5 0c 04             	lds    ecx,FWORD PTR [esp+eax*1]
c010a9d9:	04 00                	add    al,0x0
c010a9db:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c010a9de:	00 00                	add    BYTE PTR [eax],al
c010a9e0:	1c 0a                	sbb    al,0xa
c010a9e2:	00 00                	add    BYTE PTR [eax],al
c010a9e4:	b8 3b 10 c0 a1       	mov    eax,0xa1c0103b
c010a9e9:	00 00                	add    BYTE PTR [eax],al
c010a9eb:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c010a9ee:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010a9f4:	02 9d c5 0c 04 04    	add    bl,BYTE PTR [ebp+0x4040cc5]
c010a9fa:	00 00                	add    BYTE PTR [eax],al
c010a9fc:	1c 00                	sbb    al,0x0
c010a9fe:	00 00                	add    BYTE PTR [eax],al
c010aa00:	3c 0a                	cmp    al,0xa
c010aa02:	00 00                	add    BYTE PTR [eax],al
c010aa04:	59                   	pop    ecx
c010aa05:	3c 10                	cmp    al,0x10
c010aa07:	c0 90 01 00 00 41 0e 	rcl    BYTE PTR [eax+0x41000001],0xe
c010aa0e:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010aa14:	03 8c 01 c5 0c 04 04 	add    ecx,DWORD PTR [ecx+eax*1+0x4040cc5]
c010aa1b:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c010aa1e:	00 00                	add    BYTE PTR [eax],al
c010aa20:	5c                   	pop    esp
c010aa21:	0a 00                	or     al,BYTE PTR [eax]
c010aa23:	00 e9                	add    cl,ch
c010aa25:	3d 10 c0 98 01       	cmp    eax,0x198c010
c010aa2a:	00 00                	add    BYTE PTR [eax],al
c010aa2c:	41                   	inc    ecx
c010aa2d:	0e                   	push   cs
c010aa2e:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010aa34:	03 94 01 c5 0c 04 04 	add    edx,DWORD PTR [ecx+eax*1+0x4040cc5]
c010aa3b:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c010aa3e:	00 00                	add    BYTE PTR [eax],al
c010aa40:	7c 0a                	jl     c010aa4c <_edata+0xa8b>
c010aa42:	00 00                	add    BYTE PTR [eax],al
c010aa44:	81 3f 10 c0 19 00    	cmp    DWORD PTR [edi],0x19c010
c010aa4a:	00 00                	add    BYTE PTR [eax],al
c010aa4c:	41                   	inc    ecx
c010aa4d:	0e                   	push   cs
c010aa4e:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010aa54:	55                   	push   ebp
c010aa55:	0c 04                	or     al,0x4
c010aa57:	04 c5                	add    al,0xc5
c010aa59:	00 00                	add    BYTE PTR [eax],al
c010aa5b:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c010aa5e:	00 00                	add    BYTE PTR [eax],al
c010aa60:	9c                   	pushf  
c010aa61:	0a 00                	or     al,BYTE PTR [eax]
c010aa63:	00 9a 3f 10 c0 13    	add    BYTE PTR [edx+0x13c0103f],bl
c010aa69:	00 00                	add    BYTE PTR [eax],al
c010aa6b:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c010aa6e:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010aa74:	4f                   	dec    edi
c010aa75:	0c 04                	or     al,0x4
c010aa77:	04 c5                	add    al,0xc5
c010aa79:	00 00                	add    BYTE PTR [eax],al
c010aa7b:	00 20                	add    BYTE PTR [eax],ah
c010aa7d:	00 00                	add    BYTE PTR [eax],al
c010aa7f:	00 bc 0a 00 00 b0 3f 	add    BYTE PTR [edx+ecx*1+0x3fb00000],bh
c010aa86:	10 c0                	adc    al,al
c010aa88:	1f                   	pop    ds
c010aa89:	00 00                	add    BYTE PTR [eax],al
c010aa8b:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c010aa8e:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010aa94:	44                   	inc    esp
c010aa95:	83 03 56             	add    DWORD PTR [ebx],0x56
c010aa98:	c3                   	ret    
c010aa99:	41                   	inc    ecx
c010aa9a:	0c 04                	or     al,0x4
c010aa9c:	04 c5                	add    al,0xc5
c010aa9e:	00 00                	add    BYTE PTR [eax],al
c010aaa0:	1c 00                	sbb    al,0x0
c010aaa2:	00 00                	add    BYTE PTR [eax],al
c010aaa4:	e0 0a                	loopne c010aab0 <_edata+0xaef>
c010aaa6:	00 00                	add    BYTE PTR [eax],al
c010aaa8:	cf                   	iret   
c010aaa9:	3f                   	aas    
c010aaaa:	10 c0                	adc    al,al
c010aaac:	0c 00                	or     al,0x0
c010aaae:	00 00                	add    BYTE PTR [eax],al
c010aab0:	41                   	inc    ecx
c010aab1:	0e                   	push   cs
c010aab2:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010aab8:	48                   	dec    eax
c010aab9:	0c 04                	or     al,0x4
c010aabb:	04 c5                	add    al,0xc5
c010aabd:	00 00                	add    BYTE PTR [eax],al
c010aabf:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c010aac2:	00 00                	add    BYTE PTR [eax],al
c010aac4:	00 0b                	add    BYTE PTR [ebx],cl
c010aac6:	00 00                	add    BYTE PTR [eax],al
c010aac8:	db 3f                	fstp   TBYTE PTR [edi]
c010aaca:	10 c0                	adc    al,al
c010aacc:	1f                   	pop    ds
c010aacd:	00 00                	add    BYTE PTR [eax],al
c010aacf:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c010aad2:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010aad8:	5b                   	pop    ebx
c010aad9:	c5 0c 04             	lds    ecx,FWORD PTR [esp+eax*1]
c010aadc:	04 00                	add    al,0x0
c010aade:	00 00                	add    BYTE PTR [eax],al
c010aae0:	1c 00                	sbb    al,0x0
c010aae2:	00 00                	add    BYTE PTR [eax],al
c010aae4:	20 0b                	and    BYTE PTR [ebx],cl
c010aae6:	00 00                	add    BYTE PTR [eax],al
c010aae8:	fa                   	cli    
c010aae9:	3f                   	aas    
c010aaea:	10 c0                	adc    al,al
c010aaec:	5e                   	pop    esi
c010aaed:	00 00                	add    BYTE PTR [eax],al
c010aaef:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c010aaf2:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010aaf8:	02 5a c5             	add    bl,BYTE PTR [edx-0x3b]
c010aafb:	0c 04                	or     al,0x4
c010aafd:	04 00                	add    al,0x0
c010aaff:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c010ab02:	00 00                	add    BYTE PTR [eax],al
c010ab04:	40                   	inc    eax
c010ab05:	0b 00                	or     eax,DWORD PTR [eax]
c010ab07:	00 58 40             	add    BYTE PTR [eax+0x40],bl
c010ab0a:	10 c0                	adc    al,al
c010ab0c:	49                   	dec    ecx
c010ab0d:	02 00                	add    al,BYTE PTR [eax]
c010ab0f:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c010ab12:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010ab18:	03 45 02             	add    eax,DWORD PTR [ebp+0x2]
c010ab1b:	c5 0c 04             	lds    ecx,FWORD PTR [esp+eax*1]
c010ab1e:	04 00                	add    al,0x0
c010ab20:	20 00                	and    BYTE PTR [eax],al
c010ab22:	00 00                	add    BYTE PTR [eax],al
c010ab24:	60                   	pusha  
c010ab25:	0b 00                	or     eax,DWORD PTR [eax]
c010ab27:	00 a4 42 10 c0 1f 00 	add    BYTE PTR [edx+eax*2+0x1fc010],ah
c010ab2e:	00 00                	add    BYTE PTR [eax],al
c010ab30:	41                   	inc    ecx
c010ab31:	0e                   	push   cs
c010ab32:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010ab38:	44                   	inc    esp
c010ab39:	83 03 56             	add    DWORD PTR [ebx],0x56
c010ab3c:	c3                   	ret    
c010ab3d:	41                   	inc    ecx
c010ab3e:	0c 04                	or     al,0x4
c010ab40:	04 c5                	add    al,0xc5
c010ab42:	00 00                	add    BYTE PTR [eax],al
c010ab44:	1c 00                	sbb    al,0x0
c010ab46:	00 00                	add    BYTE PTR [eax],al
c010ab48:	84 0b                	test   BYTE PTR [ebx],cl
c010ab4a:	00 00                	add    BYTE PTR [eax],al
c010ab4c:	c3                   	ret    
c010ab4d:	42                   	inc    edx
c010ab4e:	10 c0                	adc    al,al
c010ab50:	0c 00                	or     al,0x0
c010ab52:	00 00                	add    BYTE PTR [eax],al
c010ab54:	41                   	inc    ecx
c010ab55:	0e                   	push   cs
c010ab56:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010ab5c:	48                   	dec    eax
c010ab5d:	0c 04                	or     al,0x4
c010ab5f:	04 c5                	add    al,0xc5
c010ab61:	00 00                	add    BYTE PTR [eax],al
c010ab63:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c010ab66:	00 00                	add    BYTE PTR [eax],al
c010ab68:	a4                   	movs   BYTE PTR es:[edi],BYTE PTR ds:[esi]
c010ab69:	0b 00                	or     eax,DWORD PTR [eax]
c010ab6b:	00 cf                	add    bh,cl
c010ab6d:	42                   	inc    edx
c010ab6e:	10 c0                	adc    al,al
c010ab70:	44                   	inc    esp
c010ab71:	00 00                	add    BYTE PTR [eax],al
c010ab73:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c010ab76:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010ab7c:	02 40 c5             	add    al,BYTE PTR [eax-0x3b]
c010ab7f:	0c 04                	or     al,0x4
c010ab81:	04 00                	add    al,0x0
c010ab83:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c010ab86:	00 00                	add    BYTE PTR [eax],al
c010ab88:	c4 0b                	les    ecx,FWORD PTR [ebx]
c010ab8a:	00 00                	add    BYTE PTR [eax],al
c010ab8c:	13 43 10             	adc    eax,DWORD PTR [ebx+0x10]
c010ab8f:	c0 5a 01 00          	rcr    BYTE PTR [edx+0x1],0x0
c010ab93:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c010ab96:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010ab9c:	03 56 01             	add    edx,DWORD PTR [esi+0x1]
c010ab9f:	c5 0c 04             	lds    ecx,FWORD PTR [esp+eax*1]
c010aba2:	04 00                	add    al,0x0
c010aba4:	1c 00                	sbb    al,0x0
c010aba6:	00 00                	add    BYTE PTR [eax],al
c010aba8:	e4 0b                	in     al,0xb
c010abaa:	00 00                	add    BYTE PTR [eax],al
c010abac:	6d                   	ins    DWORD PTR es:[edi],dx
c010abad:	44                   	inc    esp
c010abae:	10 c0                	adc    al,al
c010abb0:	79 00                	jns    c010abb2 <_edata+0xbf1>
c010abb2:	00 00                	add    BYTE PTR [eax],al
c010abb4:	41                   	inc    ecx
c010abb5:	0e                   	push   cs
c010abb6:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010abbc:	02 73 c5             	add    dh,BYTE PTR [ebx-0x3b]
c010abbf:	0c 04                	or     al,0x4
c010abc1:	04 00                	add    al,0x0
c010abc3:	00 20                	add    BYTE PTR [eax],ah
c010abc5:	00 00                	add    BYTE PTR [eax],al
c010abc7:	00 04 0c             	add    BYTE PTR [esp+ecx*1],al
c010abca:	00 00                	add    BYTE PTR [eax],al
c010abcc:	e8 44 10 c0 1f       	call   dfd0bc15 <_kernel_end+0x1fbf88cd>
c010abd1:	00 00                	add    BYTE PTR [eax],al
c010abd3:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c010abd6:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010abdc:	44                   	inc    esp
c010abdd:	83 03 56             	add    DWORD PTR [ebx],0x56
c010abe0:	c3                   	ret    
c010abe1:	41                   	inc    ecx
c010abe2:	0c 04                	or     al,0x4
c010abe4:	04 c5                	add    al,0xc5
c010abe6:	00 00                	add    BYTE PTR [eax],al
c010abe8:	1c 00                	sbb    al,0x0
c010abea:	00 00                	add    BYTE PTR [eax],al
c010abec:	28 0c 00             	sub    BYTE PTR [eax+eax*1],cl
c010abef:	00 07                	add    BYTE PTR [edi],al
c010abf1:	45                   	inc    ebp
c010abf2:	10 c0                	adc    al,al
c010abf4:	0c 00                	or     al,0x0
c010abf6:	00 00                	add    BYTE PTR [eax],al
c010abf8:	41                   	inc    ecx
c010abf9:	0e                   	push   cs
c010abfa:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010ac00:	48                   	dec    eax
c010ac01:	0c 04                	or     al,0x4
c010ac03:	04 c5                	add    al,0xc5
c010ac05:	00 00                	add    BYTE PTR [eax],al
c010ac07:	00 20                	add    BYTE PTR [eax],ah
c010ac09:	00 00                	add    BYTE PTR [eax],al
c010ac0b:	00 48 0c             	add    BYTE PTR [eax+0xc],cl
c010ac0e:	00 00                	add    BYTE PTR [eax],al
c010ac10:	13 45 10             	adc    eax,DWORD PTR [ebp+0x10]
c010ac13:	c0 6c 01 00 00       	shr    BYTE PTR [ecx+eax*1+0x0],0x0
c010ac18:	41                   	inc    ecx
c010ac19:	0e                   	push   cs
c010ac1a:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010ac20:	44                   	inc    esp
c010ac21:	83 03 03             	add    DWORD PTR [ebx],0x3
c010ac24:	63 01                	arpl   WORD PTR [ecx],ax
c010ac26:	c3                   	ret    
c010ac27:	41                   	inc    ecx
c010ac28:	0c 04                	or     al,0x4
c010ac2a:	04 c5                	add    al,0xc5
c010ac2c:	1c 00                	sbb    al,0x0
c010ac2e:	00 00                	add    BYTE PTR [eax],al
c010ac30:	6c                   	ins    BYTE PTR es:[edi],dx
c010ac31:	0c 00                	or     al,0x0
c010ac33:	00 80 46 10 c0 0c    	add    BYTE PTR [eax+0xcc01046],al
c010ac39:	00 00                	add    BYTE PTR [eax],al
c010ac3b:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c010ac3e:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010ac44:	48                   	dec    eax
c010ac45:	0c 04                	or     al,0x4
c010ac47:	04 c5                	add    al,0xc5
c010ac49:	00 00                	add    BYTE PTR [eax],al
c010ac4b:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c010ac4e:	00 00                	add    BYTE PTR [eax],al
c010ac50:	8c 0c 00             	mov    WORD PTR [eax+eax*1],cs
c010ac53:	00 8c 46 10 c0 44 00 	add    BYTE PTR [esi+eax*2+0x44c010],cl
c010ac5a:	00 00                	add    BYTE PTR [eax],al
c010ac5c:	41                   	inc    ecx
c010ac5d:	0e                   	push   cs
c010ac5e:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010ac64:	02 40 c5             	add    al,BYTE PTR [eax-0x3b]
c010ac67:	0c 04                	or     al,0x4
c010ac69:	04 00                	add    al,0x0
c010ac6b:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c010ac6e:	00 00                	add    BYTE PTR [eax],al
c010ac70:	ac                   	lods   al,BYTE PTR ds:[esi]
c010ac71:	0c 00                	or     al,0x0
c010ac73:	00 d0                	add    al,dl
c010ac75:	46                   	inc    esi
c010ac76:	10 c0                	adc    al,al
c010ac78:	62 00                	bound  eax,QWORD PTR [eax]
c010ac7a:	00 00                	add    BYTE PTR [eax],al
c010ac7c:	41                   	inc    ecx
c010ac7d:	0e                   	push   cs
c010ac7e:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010ac84:	02 5e c5             	add    bl,BYTE PTR [esi-0x3b]
c010ac87:	0c 04                	or     al,0x4
c010ac89:	04 00                	add    al,0x0
c010ac8b:	00 20                	add    BYTE PTR [eax],ah
c010ac8d:	00 00                	add    BYTE PTR [eax],al
c010ac8f:	00 cc                	add    ah,cl
c010ac91:	0c 00                	or     al,0x0
c010ac93:	00 34 47             	add    BYTE PTR [edi+eax*2],dh
c010ac96:	10 c0                	adc    al,al
c010ac98:	2c 00                	sub    al,0x0
c010ac9a:	00 00                	add    BYTE PTR [eax],al
c010ac9c:	41                   	inc    ecx
c010ac9d:	0e                   	push   cs
c010ac9e:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010aca4:	44                   	inc    esp
c010aca5:	83 03 63             	add    DWORD PTR [ebx],0x63
c010aca8:	c3                   	ret    
c010aca9:	41                   	inc    ecx
c010acaa:	0c 04                	or     al,0x4
c010acac:	04 c5                	add    al,0xc5
c010acae:	00 00                	add    BYTE PTR [eax],al
c010acb0:	1c 00                	sbb    al,0x0
c010acb2:	00 00                	add    BYTE PTR [eax],al
c010acb4:	f0 0c 00             	lock or al,0x0
c010acb7:	00 60 47             	add    BYTE PTR [eax+0x47],ah
c010acba:	10 c0                	adc    al,al
c010acbc:	23 00                	and    eax,DWORD PTR [eax]
c010acbe:	00 00                	add    BYTE PTR [eax],al
c010acc0:	41                   	inc    ecx
c010acc1:	0e                   	push   cs
c010acc2:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010acc8:	5f                   	pop    edi
c010acc9:	c5 0c 04             	lds    ecx,FWORD PTR [esp+eax*1]
c010accc:	04 00                	add    al,0x0
c010acce:	00 00                	add    BYTE PTR [eax],al
c010acd0:	20 00                	and    BYTE PTR [eax],al
c010acd2:	00 00                	add    BYTE PTR [eax],al
c010acd4:	10 0d 00 00 83 47    	adc    BYTE PTR ds:0x47830000,cl
c010acda:	10 c0                	adc    al,al
c010acdc:	da 00                	fiadd  DWORD PTR [eax]
c010acde:	00 00                	add    BYTE PTR [eax],al
c010ace0:	41                   	inc    ecx
c010ace1:	0e                   	push   cs
c010ace2:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010ace8:	44                   	inc    esp
c010ace9:	83 03 02             	add    DWORD PTR [ebx],0x2
c010acec:	d1 c3                	rol    ebx,1
c010acee:	41                   	inc    ecx
c010acef:	0c 04                	or     al,0x4
c010acf1:	04 c5                	add    al,0xc5
c010acf3:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c010acf6:	00 00                	add    BYTE PTR [eax],al
c010acf8:	34 0d                	xor    al,0xd
c010acfa:	00 00                	add    BYTE PTR [eax],al
c010acfc:	5d                   	pop    ebp
c010acfd:	48                   	dec    eax
c010acfe:	10 c0                	adc    al,al
c010ad00:	6f                   	outs   dx,DWORD PTR ds:[esi]
c010ad01:	02 00                	add    al,BYTE PTR [eax]
c010ad03:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c010ad06:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010ad0c:	03 6b 02             	add    ebp,DWORD PTR [ebx+0x2]
c010ad0f:	c5 0c 04             	lds    ecx,FWORD PTR [esp+eax*1]
c010ad12:	04 00                	add    al,0x0
c010ad14:	1c 00                	sbb    al,0x0
c010ad16:	00 00                	add    BYTE PTR [eax],al
c010ad18:	54                   	push   esp
c010ad19:	0d 00 00 cc 4a       	or     eax,0x4acc0000
c010ad1e:	10 c0                	adc    al,al
c010ad20:	17                   	pop    ss
c010ad21:	00 00                	add    BYTE PTR [eax],al
c010ad23:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c010ad26:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010ad2c:	53                   	push   ebx
c010ad2d:	0c 04                	or     al,0x4
c010ad2f:	04 c5                	add    al,0xc5
c010ad31:	00 00                	add    BYTE PTR [eax],al
c010ad33:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c010ad36:	00 00                	add    BYTE PTR [eax],al
c010ad38:	74 0d                	je     c010ad47 <_edata+0xd86>
c010ad3a:	00 00                	add    BYTE PTR [eax],al
c010ad3c:	e3 4a                	jecxz  c010ad88 <_edata+0xdc7>
c010ad3e:	10 c0                	adc    al,al
c010ad40:	71 01                	jno    c010ad43 <_edata+0xd82>
c010ad42:	00 00                	add    BYTE PTR [eax],al
c010ad44:	41                   	inc    ecx
c010ad45:	0e                   	push   cs
c010ad46:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010ad4c:	03 6d 01             	add    ebp,DWORD PTR [ebp+0x1]
c010ad4f:	c5 0c 04             	lds    ecx,FWORD PTR [esp+eax*1]
c010ad52:	04 00                	add    al,0x0
c010ad54:	1c 00                	sbb    al,0x0
c010ad56:	00 00                	add    BYTE PTR [eax],al
c010ad58:	94                   	xchg   esp,eax
c010ad59:	0d 00 00 54 4c       	or     eax,0x4c540000
c010ad5e:	10 c0                	adc    al,al
c010ad60:	e4 00                	in     al,0x0
c010ad62:	00 00                	add    BYTE PTR [eax],al
c010ad64:	41                   	inc    ecx
c010ad65:	0e                   	push   cs
c010ad66:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010ad6c:	02 e0                	add    ah,al
c010ad6e:	c5 0c 04             	lds    ecx,FWORD PTR [esp+eax*1]
c010ad71:	04 00                	add    al,0x0
c010ad73:	00 14 00             	add    BYTE PTR [eax+eax*1],dl
c010ad76:	00 00                	add    BYTE PTR [eax],al
c010ad78:	b4 0d                	mov    ah,0xd
c010ad7a:	00 00                	add    BYTE PTR [eax],al
c010ad7c:	38 4d 10             	cmp    BYTE PTR [ebp+0x10],cl
c010ad7f:	c0                   	(bad)  
c010ad80:	b0 02                	mov    al,0x2
c010ad82:	00 00                	add    BYTE PTR [eax],al
c010ad84:	41                   	inc    ecx
c010ad85:	0e                   	push   cs
c010ad86:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010ad8c:	1c 00                	sbb    al,0x0
c010ad8e:	00 00                	add    BYTE PTR [eax],al
c010ad90:	cc                   	int3   
c010ad91:	0d 00 00 e8 4f       	or     eax,0x4fe80000
c010ad96:	10 c0                	adc    al,al
c010ad98:	1a 00                	sbb    al,BYTE PTR [eax]
c010ad9a:	00 00                	add    BYTE PTR [eax],al
c010ad9c:	41                   	inc    ecx
c010ad9d:	0e                   	push   cs
c010ad9e:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010ada4:	56                   	push   esi
c010ada5:	0c 04                	or     al,0x4
c010ada7:	04 c5                	add    al,0xc5
c010ada9:	00 00                	add    BYTE PTR [eax],al
c010adab:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c010adae:	00 00                	add    BYTE PTR [eax],al
c010adb0:	ec                   	in     al,dx
c010adb1:	0d 00 00 02 50       	or     eax,0x50020000
c010adb6:	10 c0                	adc    al,al
c010adb8:	0d 00 00 00 41       	or     eax,0x41000000
c010adbd:	0e                   	push   cs
c010adbe:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010adc4:	49                   	dec    ecx
c010adc5:	0c 04                	or     al,0x4
c010adc7:	04 c5                	add    al,0xc5
c010adc9:	00 00                	add    BYTE PTR [eax],al
c010adcb:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c010adce:	00 00                	add    BYTE PTR [eax],al
c010add0:	0c 0e                	or     al,0xe
c010add2:	00 00                	add    BYTE PTR [eax],al
c010add4:	0f 50                	(bad)  
c010add6:	10 c0                	adc    al,al
c010add8:	fd                   	std    
c010add9:	02 00                	add    al,BYTE PTR [eax]
c010addb:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c010adde:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010ade4:	03 f9                	add    edi,ecx
c010ade6:	02 c5                	add    al,ch
c010ade8:	0c 04                	or     al,0x4
c010adea:	04 00                	add    al,0x0
c010adec:	1c 00                	sbb    al,0x0
c010adee:	00 00                	add    BYTE PTR [eax],al
c010adf0:	2c 0e                	sub    al,0xe
c010adf2:	00 00                	add    BYTE PTR [eax],al
c010adf4:	0c 53                	or     al,0x53
c010adf6:	10 c0                	adc    al,al
c010adf8:	55                   	push   ebp
c010adf9:	01 00                	add    DWORD PTR [eax],eax
c010adfb:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c010adfe:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010ae04:	03 51 01             	add    edx,DWORD PTR [ecx+0x1]
c010ae07:	c5 0c 04             	lds    ecx,FWORD PTR [esp+eax*1]
c010ae0a:	04 00                	add    al,0x0
c010ae0c:	1c 00                	sbb    al,0x0
c010ae0e:	00 00                	add    BYTE PTR [eax],al
c010ae10:	4c                   	dec    esp
c010ae11:	0e                   	push   cs
c010ae12:	00 00                	add    BYTE PTR [eax],al
c010ae14:	61                   	popa   
c010ae15:	54                   	push   esp
c010ae16:	10 c0                	adc    al,al
c010ae18:	b3 00                	mov    bl,0x0
c010ae1a:	00 00                	add    BYTE PTR [eax],al
c010ae1c:	41                   	inc    ecx
c010ae1d:	0e                   	push   cs
c010ae1e:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010ae24:	02 af c5 0c 04 04    	add    ch,BYTE PTR [edi+0x4040cc5]
c010ae2a:	00 00                	add    BYTE PTR [eax],al
c010ae2c:	1c 00                	sbb    al,0x0
c010ae2e:	00 00                	add    BYTE PTR [eax],al
c010ae30:	6c                   	ins    BYTE PTR es:[edi],dx
c010ae31:	0e                   	push   cs
c010ae32:	00 00                	add    BYTE PTR [eax],al
c010ae34:	14 55                	adc    al,0x55
c010ae36:	10 c0                	adc    al,al
c010ae38:	10 01                	adc    BYTE PTR [ecx],al
c010ae3a:	00 00                	add    BYTE PTR [eax],al
c010ae3c:	41                   	inc    ecx
c010ae3d:	0e                   	push   cs
c010ae3e:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010ae44:	03 0c 01             	add    ecx,DWORD PTR [ecx+eax*1]
c010ae47:	c5 0c 04             	lds    ecx,FWORD PTR [esp+eax*1]
c010ae4a:	04 00                	add    al,0x0
c010ae4c:	1c 00                	sbb    al,0x0
c010ae4e:	00 00                	add    BYTE PTR [eax],al
c010ae50:	8c 0e                	mov    WORD PTR [esi],cs
c010ae52:	00 00                	add    BYTE PTR [eax],al
c010ae54:	24 56                	and    al,0x56
c010ae56:	10 c0                	adc    al,al
c010ae58:	8d 00                	lea    eax,[eax]
c010ae5a:	00 00                	add    BYTE PTR [eax],al
c010ae5c:	41                   	inc    ecx
c010ae5d:	0e                   	push   cs
c010ae5e:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010ae64:	02 89 c5 0c 04 04    	add    cl,BYTE PTR [ecx+0x4040cc5]
c010ae6a:	00 00                	add    BYTE PTR [eax],al
c010ae6c:	1c 00                	sbb    al,0x0
c010ae6e:	00 00                	add    BYTE PTR [eax],al
c010ae70:	ac                   	lods   al,BYTE PTR ds:[esi]
c010ae71:	0e                   	push   cs
c010ae72:	00 00                	add    BYTE PTR [eax],al
c010ae74:	b4 56                	mov    ah,0x56
c010ae76:	10 c0                	adc    al,al
c010ae78:	ec                   	in     al,dx
c010ae79:	02 00                	add    al,BYTE PTR [eax]
c010ae7b:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c010ae7e:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010ae84:	49                   	dec    ecx
c010ae85:	83 05 86 04 87 03 00 	add    DWORD PTR ds:0x3870486,0x0
c010ae8c:	28 00                	sub    BYTE PTR [eax],al
c010ae8e:	00 00                	add    BYTE PTR [eax],al
c010ae90:	cc                   	int3   
c010ae91:	0e                   	push   cs
c010ae92:	00 00                	add    BYTE PTR [eax],al
c010ae94:	a0 59 10 c0 19       	mov    al,ds:0x19c01059
c010ae99:	01 00                	add    DWORD PTR [eax],eax
c010ae9b:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c010ae9e:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010aea4:	46                   	inc    esi
c010aea5:	83 05 86 04 87 03 03 	add    DWORD PTR ds:0x3870486,0x3
c010aeac:	0c 01                	or     al,0x1
c010aeae:	c3                   	ret    
c010aeaf:	41                   	inc    ecx
c010aeb0:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c010aeb4:	0c 04                	or     al,0x4
c010aeb6:	04 c5                	add    al,0xc5
c010aeb8:	24 00                	and    al,0x0
c010aeba:	00 00                	add    BYTE PTR [eax],al
c010aebc:	f8                   	clc    
c010aebd:	0e                   	push   cs
c010aebe:	00 00                	add    BYTE PTR [eax],al
c010aec0:	b9 5a 10 c0 70       	mov    ecx,0x70c0105a
c010aec5:	00 00                	add    BYTE PTR [eax],al
c010aec7:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c010aeca:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010aed0:	45                   	inc    ebp
c010aed1:	83 04 86 03          	add    DWORD PTR [esi+eax*4],0x3
c010aed5:	02 65 c3             	add    ah,BYTE PTR [ebp-0x3d]
c010aed8:	41                   	inc    ecx
c010aed9:	c6 41 0c 04          	mov    BYTE PTR [ecx+0xc],0x4
c010aedd:	04 c5                	add    al,0xc5
c010aedf:	00 2c 00             	add    BYTE PTR [eax+eax*1],ch
c010aee2:	00 00                	add    BYTE PTR [eax],al
c010aee4:	20 0f                	and    BYTE PTR [edi],cl
c010aee6:	00 00                	add    BYTE PTR [eax],al
c010aee8:	29 5b 10             	sub    DWORD PTR [ebx+0x10],ebx
c010aeeb:	c0 2b 02             	shr    BYTE PTR [ebx],0x2
c010aeee:	00 00                	add    BYTE PTR [eax],al
c010aef0:	41                   	inc    ecx
c010aef1:	0e                   	push   cs
c010aef2:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010aef8:	46                   	inc    esi
c010aef9:	83 05 86 04 87 03 03 	add    DWORD PTR ds:0x3870486,0x3
c010af00:	fc                   	cld    
c010af01:	01 0a                	add    DWORD PTR [edx],ecx
c010af03:	c3                   	ret    
c010af04:	41                   	inc    ecx
c010af05:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c010af09:	0c 04                	or     al,0x4
c010af0b:	04 c5                	add    al,0xc5
c010af0d:	41                   	inc    ecx
c010af0e:	0b 00                	or     eax,DWORD PTR [eax]
c010af10:	20 00                	and    BYTE PTR [eax],al
c010af12:	00 00                	add    BYTE PTR [eax],al
c010af14:	50                   	push   eax
c010af15:	0f 00 00             	sldt   WORD PTR [eax]
c010af18:	54                   	push   esp
c010af19:	5d                   	pop    ebp
c010af1a:	10 c0                	adc    al,al
c010af1c:	17                   	pop    ss
c010af1d:	01 00                	add    DWORD PTR [eax],eax
c010af1f:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c010af22:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010af28:	44                   	inc    esp
c010af29:	83 03 03             	add    DWORD PTR [ebx],0x3
c010af2c:	0e                   	push   cs
c010af2d:	01 c3                	add    ebx,eax
c010af2f:	41                   	inc    ecx
c010af30:	0c 04                	or     al,0x4
c010af32:	04 c5                	add    al,0xc5
c010af34:	1c 00                	sbb    al,0x0
c010af36:	00 00                	add    BYTE PTR [eax],al
c010af38:	74 0f                	je     c010af49 <_edata+0xf88>
c010af3a:	00 00                	add    BYTE PTR [eax],al
c010af3c:	6b 5e 10 c0          	imul   ebx,DWORD PTR [esi+0x10],0xffffffc0
c010af40:	2c 00                	sub    al,0x0
c010af42:	00 00                	add    BYTE PTR [eax],al
c010af44:	41                   	inc    ecx
c010af45:	0e                   	push   cs
c010af46:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010af4c:	68 c5 0c 04 04       	push   0x4040cc5
c010af51:	00 00                	add    BYTE PTR [eax],al
c010af53:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c010af56:	00 00                	add    BYTE PTR [eax],al
c010af58:	94                   	xchg   esp,eax
c010af59:	0f 00 00             	sldt   WORD PTR [eax]
c010af5c:	97                   	xchg   edi,eax
c010af5d:	5e                   	pop    esi
c010af5e:	10 c0                	adc    al,al
c010af60:	5b                   	pop    ebx
c010af61:	00 00                	add    BYTE PTR [eax],al
c010af63:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c010af66:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010af6c:	02 57 c5             	add    dl,BYTE PTR [edi-0x3b]
c010af6f:	0c 04                	or     al,0x4
c010af71:	04 00                	add    al,0x0
c010af73:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c010af76:	00 00                	add    BYTE PTR [eax],al
c010af78:	b4 0f                	mov    ah,0xf
c010af7a:	00 00                	add    BYTE PTR [eax],al
c010af7c:	f2 5e                	repnz pop esi
c010af7e:	10 c0                	adc    al,al
c010af80:	3d 00 00 00 41       	cmp    eax,0x41000000
c010af85:	0e                   	push   cs
c010af86:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010af8c:	79 c5                	jns    c010af53 <_edata+0xf92>
c010af8e:	0c 04                	or     al,0x4
c010af90:	04 00                	add    al,0x0
c010af92:	00 00                	add    BYTE PTR [eax],al
c010af94:	1c 00                	sbb    al,0x0
c010af96:	00 00                	add    BYTE PTR [eax],al
c010af98:	d4 0f                	aam    0xf
c010af9a:	00 00                	add    BYTE PTR [eax],al
c010af9c:	30 5f 10             	xor    BYTE PTR [edi+0x10],bl
c010af9f:	c0 e5 05             	shl    ch,0x5
c010afa2:	00 00                	add    BYTE PTR [eax],al
c010afa4:	41                   	inc    ecx
c010afa5:	0e                   	push   cs
c010afa6:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010afac:	48                   	dec    eax
c010afad:	83 04 86 03          	add    DWORD PTR [esi+eax*4],0x3
c010afb1:	00 00                	add    BYTE PTR [eax],al
c010afb3:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c010afb6:	00 00                	add    BYTE PTR [eax],al
c010afb8:	f4                   	hlt    
c010afb9:	0f 00 00             	sldt   WORD PTR [eax]
c010afbc:	15 65 10 c0 63       	adc    eax,0x63c01065
c010afc1:	00 00                	add    BYTE PTR [eax],al
c010afc3:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c010afc6:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010afcc:	02 5f c5             	add    bl,BYTE PTR [edi-0x3b]
c010afcf:	0c 04                	or     al,0x4
c010afd1:	04 00                	add    al,0x0
c010afd3:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c010afd6:	00 00                	add    BYTE PTR [eax],al
c010afd8:	14 10                	adc    al,0x10
c010afda:	00 00                	add    BYTE PTR [eax],al
c010afdc:	78 65                	js     c010b043 <_edata+0x1082>
c010afde:	10 c0                	adc    al,al
c010afe0:	8e 00                	mov    es,WORD PTR [eax]
c010afe2:	00 00                	add    BYTE PTR [eax],al
c010afe4:	41                   	inc    ecx
c010afe5:	0e                   	push   cs
c010afe6:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010afec:	02 8a c5 0c 04 04    	add    cl,BYTE PTR [edx+0x4040cc5]
c010aff2:	00 00                	add    BYTE PTR [eax],al
c010aff4:	1c 00                	sbb    al,0x0
c010aff6:	00 00                	add    BYTE PTR [eax],al
c010aff8:	34 10                	xor    al,0x10
c010affa:	00 00                	add    BYTE PTR [eax],al
c010affc:	06                   	push   es
c010affd:	66 10 c0             	data16 adc al,al
c010b000:	27                   	daa    
c010b001:	00 00                	add    BYTE PTR [eax],al
c010b003:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c010b006:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010b00c:	63 c5                	arpl   bp,ax
c010b00e:	0c 04                	or     al,0x4
c010b010:	04 00                	add    al,0x0
c010b012:	00 00                	add    BYTE PTR [eax],al
c010b014:	1c 00                	sbb    al,0x0
c010b016:	00 00                	add    BYTE PTR [eax],al
c010b018:	54                   	push   esp
c010b019:	10 00                	adc    BYTE PTR [eax],al
c010b01b:	00 2d 66 10 c0 50    	add    BYTE PTR ds:0x50c01066,ch
c010b021:	00 00                	add    BYTE PTR [eax],al
c010b023:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c010b026:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010b02c:	02 4c 0c 04          	add    cl,BYTE PTR [esp+ecx*1+0x4]
c010b030:	04 c5                	add    al,0xc5
c010b032:	00 00                	add    BYTE PTR [eax],al
c010b034:	28 00                	sub    BYTE PTR [eax],al
c010b036:	00 00                	add    BYTE PTR [eax],al
c010b038:	74 10                	je     c010b04a <_edata+0x1089>
c010b03a:	00 00                	add    BYTE PTR [eax],al
c010b03c:	7d 66                	jge    c010b0a4 <_edata+0x10e3>
c010b03e:	10 c0                	adc    al,al
c010b040:	41                   	inc    ecx
c010b041:	01 00                	add    DWORD PTR [eax],eax
c010b043:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c010b046:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010b04c:	46                   	inc    esi
c010b04d:	83 05 86 04 87 03 03 	add    DWORD PTR ds:0x3870486,0x3
c010b054:	34 01                	xor    al,0x1
c010b056:	c3                   	ret    
c010b057:	41                   	inc    ecx
c010b058:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c010b05c:	0c 04                	or     al,0x4
c010b05e:	04 c5                	add    al,0xc5
c010b060:	28 00                	sub    BYTE PTR [eax],al
c010b062:	00 00                	add    BYTE PTR [eax],al
c010b064:	a0 10 00 00 be       	mov    al,ds:0xbe000010
c010b069:	67 10 c0             	addr16 adc al,al
c010b06c:	d8 02                	fadd   DWORD PTR [edx]
c010b06e:	00 00                	add    BYTE PTR [eax],al
c010b070:	41                   	inc    ecx
c010b071:	0e                   	push   cs
c010b072:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010b078:	46                   	inc    esi
c010b079:	83 05 86 04 87 03 03 	add    DWORD PTR ds:0x3870486,0x3
c010b080:	cb                   	retf   
c010b081:	02 c3                	add    al,bl
c010b083:	41                   	inc    ecx
c010b084:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c010b088:	0c 04                	or     al,0x4
c010b08a:	04 c5                	add    al,0xc5
c010b08c:	28 00                	sub    BYTE PTR [eax],al
c010b08e:	00 00                	add    BYTE PTR [eax],al
c010b090:	cc                   	int3   
c010b091:	10 00                	adc    BYTE PTR [eax],al
c010b093:	00 96 6a 10 c0 10    	add    BYTE PTR [esi+0x10c0106a],dl
c010b099:	02 00                	add    al,BYTE PTR [eax]
c010b09b:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c010b09e:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010b0a4:	46                   	inc    esi
c010b0a5:	83 05 86 04 87 03 03 	add    DWORD PTR ds:0x3870486,0x3
c010b0ac:	03 02                	add    eax,DWORD PTR [edx]
c010b0ae:	c3                   	ret    
c010b0af:	41                   	inc    ecx
c010b0b0:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c010b0b4:	0c 04                	or     al,0x4
c010b0b6:	04 c5                	add    al,0xc5
c010b0b8:	28 00                	sub    BYTE PTR [eax],al
c010b0ba:	00 00                	add    BYTE PTR [eax],al
c010b0bc:	f8                   	clc    
c010b0bd:	10 00                	adc    BYTE PTR [eax],al
c010b0bf:	00 a6 6c 10 c0 b4    	add    BYTE PTR [esi-0x4b3fef94],ah
c010b0c5:	00 00                	add    BYTE PTR [eax],al
c010b0c7:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c010b0ca:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010b0d0:	46                   	inc    esi
c010b0d1:	83 05 86 04 87 03 02 	add    DWORD PTR ds:0x3870486,0x2
c010b0d8:	a7                   	cmps   DWORD PTR ds:[esi],DWORD PTR es:[edi]
c010b0d9:	c3                   	ret    
c010b0da:	41                   	inc    ecx
c010b0db:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c010b0df:	0c 04                	or     al,0x4
c010b0e1:	04 c5                	add    al,0xc5
c010b0e3:	00 20                	add    BYTE PTR [eax],ah
c010b0e5:	00 00                	add    BYTE PTR [eax],al
c010b0e7:	00 24 11             	add    BYTE PTR [ecx+edx*1],ah
c010b0ea:	00 00                	add    BYTE PTR [eax],al
c010b0ec:	5a                   	pop    edx
c010b0ed:	6d                   	ins    DWORD PTR es:[edi],dx
c010b0ee:	10 c0                	adc    al,al
c010b0f0:	03 02                	add    eax,DWORD PTR [edx]
c010b0f2:	00 00                	add    BYTE PTR [eax],al
c010b0f4:	41                   	inc    ecx
c010b0f5:	0e                   	push   cs
c010b0f6:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010b0fc:	44                   	inc    esp
c010b0fd:	83 03 03             	add    DWORD PTR [ebx],0x3
c010b100:	fa                   	cli    
c010b101:	01 c3                	add    ebx,eax
c010b103:	41                   	inc    ecx
c010b104:	0c 04                	or     al,0x4
c010b106:	04 c5                	add    al,0xc5
c010b108:	1c 00                	sbb    al,0x0
c010b10a:	00 00                	add    BYTE PTR [eax],al
c010b10c:	48                   	dec    eax
c010b10d:	11 00                	adc    DWORD PTR [eax],eax
c010b10f:	00 5d 6f             	add    BYTE PTR [ebp+0x6f],bl
c010b112:	10 c0                	adc    al,al
c010b114:	e8 01 00 00 41       	call   110b11a <AR_CODE32+0x10ff082>
c010b119:	0e                   	push   cs
c010b11a:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010b120:	03 e4                	add    esp,esp
c010b122:	01 c5                	add    ebp,eax
c010b124:	0c 04                	or     al,0x4
c010b126:	04 00                	add    al,0x0
c010b128:	1c 00                	sbb    al,0x0
c010b12a:	00 00                	add    BYTE PTR [eax],al
c010b12c:	68 11 00 00 48       	push   0x48000011
c010b131:	71 10                	jno    c010b143 <_edata+0x1182>
c010b133:	c0 39 00             	sar    BYTE PTR [ecx],0x0
c010b136:	00 00                	add    BYTE PTR [eax],al
c010b138:	41                   	inc    ecx
c010b139:	0e                   	push   cs
c010b13a:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010b140:	75 c5                	jne    c010b107 <_edata+0x1146>
c010b142:	0c 04                	or     al,0x4
c010b144:	04 00                	add    al,0x0
c010b146:	00 00                	add    BYTE PTR [eax],al
c010b148:	1c 00                	sbb    al,0x0
c010b14a:	00 00                	add    BYTE PTR [eax],al
c010b14c:	88 11                	mov    BYTE PTR [ecx],dl
c010b14e:	00 00                	add    BYTE PTR [eax],al
c010b150:	81 71 10 c0 30 00 00 	xor    DWORD PTR [ecx+0x10],0x30c0
c010b157:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c010b15a:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010b160:	6c                   	ins    BYTE PTR es:[edi],dx
c010b161:	c5 0c 04             	lds    ecx,FWORD PTR [esp+eax*1]
c010b164:	04 00                	add    al,0x0
c010b166:	00 00                	add    BYTE PTR [eax],al
c010b168:	1c 00                	sbb    al,0x0
c010b16a:	00 00                	add    BYTE PTR [eax],al
c010b16c:	a8 11                	test   al,0x11
c010b16e:	00 00                	add    BYTE PTR [eax],al
c010b170:	b1 71                	mov    cl,0x71
c010b172:	10 c0                	adc    al,al
c010b174:	48                   	dec    eax
c010b175:	00 00                	add    BYTE PTR [eax],al
c010b177:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c010b17a:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010b180:	02 44 c5 0c          	add    al,BYTE PTR [ebp+eax*8+0xc]
c010b184:	04 04                	add    al,0x4
c010b186:	00 00                	add    BYTE PTR [eax],al
c010b188:	1c 00                	sbb    al,0x0
c010b18a:	00 00                	add    BYTE PTR [eax],al
c010b18c:	c8 11 00 00          	enter  0x11,0x0
c010b190:	f9                   	stc    
c010b191:	71 10                	jno    c010b1a3 <_edata+0x11e2>
c010b193:	c0 45 00 00          	rol    BYTE PTR [ebp+0x0],0x0
c010b197:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c010b19a:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010b1a0:	02 41 c5             	add    al,BYTE PTR [ecx-0x3b]
c010b1a3:	0c 04                	or     al,0x4
c010b1a5:	04 00                	add    al,0x0
c010b1a7:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c010b1aa:	00 00                	add    BYTE PTR [eax],al
c010b1ac:	e8 11 00 00 3e       	call   fe10b1c2 <_kernel_end+0x3dff7e7a>
c010b1b1:	72 10                	jb     c010b1c3 <_edata+0x1202>
c010b1b3:	c0 4e 00 00          	ror    BYTE PTR [esi+0x0],0x0
c010b1b7:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c010b1ba:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010b1c0:	02 4a c5             	add    cl,BYTE PTR [edx-0x3b]
c010b1c3:	0c 04                	or     al,0x4
c010b1c5:	04 00                	add    al,0x0
c010b1c7:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c010b1ca:	00 00                	add    BYTE PTR [eax],al
c010b1cc:	08 12                	or     BYTE PTR [edx],dl
c010b1ce:	00 00                	add    BYTE PTR [eax],al
c010b1d0:	8c 72 10             	mov    WORD PTR [edx+0x10],?
c010b1d3:	c0 4d 00 00          	ror    BYTE PTR [ebp+0x0],0x0
c010b1d7:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c010b1da:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010b1e0:	02 49 c5             	add    cl,BYTE PTR [ecx-0x3b]
c010b1e3:	0c 04                	or     al,0x4
c010b1e5:	04 00                	add    al,0x0
c010b1e7:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c010b1ea:	00 00                	add    BYTE PTR [eax],al
c010b1ec:	28 12                	sub    BYTE PTR [edx],dl
c010b1ee:	00 00                	add    BYTE PTR [eax],al
c010b1f0:	d9 72 10             	fnstenv [edx+0x10]
c010b1f3:	c0 3c 00 00          	sar    BYTE PTR [eax+eax*1],0x0
c010b1f7:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c010b1fa:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010b200:	78 c5                	js     c010b1c7 <_edata+0x1206>
c010b202:	0c 04                	or     al,0x4
c010b204:	04 00                	add    al,0x0
c010b206:	00 00                	add    BYTE PTR [eax],al
c010b208:	1c 00                	sbb    al,0x0
c010b20a:	00 00                	add    BYTE PTR [eax],al
c010b20c:	48                   	dec    eax
c010b20d:	12 00                	adc    al,BYTE PTR [eax]
c010b20f:	00 15 73 10 c0 3f    	add    BYTE PTR ds:0x3fc01073,dl
c010b215:	00 00                	add    BYTE PTR [eax],al
c010b217:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c010b21a:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010b220:	7b c5                	jnp    c010b1e7 <_edata+0x1226>
c010b222:	0c 04                	or     al,0x4
c010b224:	04 00                	add    al,0x0
c010b226:	00 00                	add    BYTE PTR [eax],al
c010b228:	28 00                	sub    BYTE PTR [eax],al
c010b22a:	00 00                	add    BYTE PTR [eax],al
c010b22c:	68 12 00 00 54       	push   0x54000012
c010b231:	73 10                	jae    c010b243 <_edata+0x1282>
c010b233:	c0 06 03             	rol    BYTE PTR [esi],0x3
c010b236:	00 00                	add    BYTE PTR [eax],al
c010b238:	41                   	inc    ecx
c010b239:	0e                   	push   cs
c010b23a:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010b240:	46                   	inc    esi
c010b241:	83 05 86 04 87 03 03 	add    DWORD PTR ds:0x3870486,0x3
c010b248:	f9                   	stc    
c010b249:	02 c3                	add    al,bl
c010b24b:	41                   	inc    ecx
c010b24c:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c010b250:	0c 04                	or     al,0x4
c010b252:	04 c5                	add    al,0xc5
c010b254:	1c 00                	sbb    al,0x0
c010b256:	00 00                	add    BYTE PTR [eax],al
c010b258:	94                   	xchg   esp,eax
c010b259:	12 00                	adc    al,BYTE PTR [eax]
c010b25b:	00 5c 76 10          	add    BYTE PTR [esi+esi*2+0x10],bl
c010b25f:	c0 27 00             	shl    BYTE PTR [edi],0x0
c010b262:	00 00                	add    BYTE PTR [eax],al
c010b264:	41                   	inc    ecx
c010b265:	0e                   	push   cs
c010b266:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010b26c:	63 c5                	arpl   bp,ax
c010b26e:	0c 04                	or     al,0x4
c010b270:	04 00                	add    al,0x0
c010b272:	00 00                	add    BYTE PTR [eax],al
c010b274:	24 00                	and    al,0x0
c010b276:	00 00                	add    BYTE PTR [eax],al
c010b278:	b4 12                	mov    ah,0x12
c010b27a:	00 00                	add    BYTE PTR [eax],al
c010b27c:	83 76 10 c0          	xor    DWORD PTR [esi+0x10],0xffffffc0
c010b280:	42                   	inc    edx
c010b281:	00 00                	add    BYTE PTR [eax],al
c010b283:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c010b286:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010b28c:	45                   	inc    ebp
c010b28d:	83 04 86 03          	add    DWORD PTR [esi+eax*4],0x3
c010b291:	77 c3                	ja     c010b256 <_edata+0x1295>
c010b293:	41                   	inc    ecx
c010b294:	c6 41 0c 04          	mov    BYTE PTR [ecx+0xc],0x4
c010b298:	04 c5                	add    al,0xc5
c010b29a:	00 00                	add    BYTE PTR [eax],al
c010b29c:	20 00                	and    BYTE PTR [eax],al
c010b29e:	00 00                	add    BYTE PTR [eax],al
c010b2a0:	dc 12                	fcom   QWORD PTR [edx]
c010b2a2:	00 00                	add    BYTE PTR [eax],al
c010b2a4:	c5 76 10             	lds    esi,FWORD PTR [esi+0x10]
c010b2a7:	c0 4a 01 00          	ror    BYTE PTR [edx+0x1],0x0
c010b2ab:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c010b2ae:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010b2b4:	44                   	inc    esp
c010b2b5:	83 03 03             	add    DWORD PTR [ebx],0x3
c010b2b8:	41                   	inc    ecx
c010b2b9:	01 c3                	add    ebx,eax
c010b2bb:	41                   	inc    ecx
c010b2bc:	0c 04                	or     al,0x4
c010b2be:	04 c5                	add    al,0xc5
c010b2c0:	28 00                	sub    BYTE PTR [eax],al
c010b2c2:	00 00                	add    BYTE PTR [eax],al
c010b2c4:	00 13                	add    BYTE PTR [ebx],dl
c010b2c6:	00 00                	add    BYTE PTR [eax],al
c010b2c8:	0f 78 10             	vmread DWORD PTR [eax],edx
c010b2cb:	c0 cb 00             	ror    bl,0x0
c010b2ce:	00 00                	add    BYTE PTR [eax],al
c010b2d0:	41                   	inc    ecx
c010b2d1:	0e                   	push   cs
c010b2d2:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010b2d8:	46                   	inc    esi
c010b2d9:	83 05 86 04 87 03 02 	add    DWORD PTR ds:0x3870486,0x2
c010b2e0:	be c3 41 c6 41       	mov    esi,0x41c641c3
c010b2e5:	c7 41 0c 04 04 c5 00 	mov    DWORD PTR [ecx+0xc],0xc50404
c010b2ec:	1c 00                	sbb    al,0x0
c010b2ee:	00 00                	add    BYTE PTR [eax],al
c010b2f0:	2c 13                	sub    al,0x13
c010b2f2:	00 00                	add    BYTE PTR [eax],al
c010b2f4:	dc 78 10             	fdivr  QWORD PTR [eax+0x10]
c010b2f7:	c0 2d 00 00 00 41 0e 	shr    BYTE PTR ds:0x41000000,0xe
c010b2fe:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010b304:	69 0c 04 04 c5 00 00 	imul   ecx,DWORD PTR [esp+eax*1],0xc504
c010b30b:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c010b30e:	00 00                	add    BYTE PTR [eax],al
c010b310:	4c                   	dec    esp
c010b311:	13 00                	adc    eax,DWORD PTR [eax]
c010b313:	00 09                	add    BYTE PTR [ecx],cl
c010b315:	79 10                	jns    c010b327 <_edata+0x1366>
c010b317:	c0 41 00 00          	rol    BYTE PTR [ecx+0x0],0x0
c010b31b:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c010b31e:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010b324:	7d c5                	jge    c010b2eb <_edata+0x132a>
c010b326:	0c 04                	or     al,0x4
c010b328:	04 00                	add    al,0x0
c010b32a:	00 00                	add    BYTE PTR [eax],al
c010b32c:	1c 00                	sbb    al,0x0
c010b32e:	00 00                	add    BYTE PTR [eax],al
c010b330:	6c                   	ins    BYTE PTR es:[edi],dx
c010b331:	13 00                	adc    eax,DWORD PTR [eax]
c010b333:	00 4a 79             	add    BYTE PTR [edx+0x79],cl
c010b336:	10 c0                	adc    al,al
c010b338:	1d 00 00 00 41       	sbb    eax,0x41000000
c010b33d:	0e                   	push   cs
c010b33e:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010b344:	59                   	pop    ecx
c010b345:	c5 0c 04             	lds    ecx,FWORD PTR [esp+eax*1]
c010b348:	04 00                	add    al,0x0
c010b34a:	00 00                	add    BYTE PTR [eax],al
c010b34c:	1c 00                	sbb    al,0x0
c010b34e:	00 00                	add    BYTE PTR [eax],al
c010b350:	8c 13                	mov    WORD PTR [ebx],ss
c010b352:	00 00                	add    BYTE PTR [eax],al
c010b354:	67 79 10             	addr16 jns c010b367 <_edata+0x13a6>
c010b357:	c0 1d 00 00 00 41 0e 	rcr    BYTE PTR ds:0x41000000,0xe
c010b35e:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010b364:	59                   	pop    ecx
c010b365:	c5 0c 04             	lds    ecx,FWORD PTR [esp+eax*1]
c010b368:	04 00                	add    al,0x0
c010b36a:	00 00                	add    BYTE PTR [eax],al
c010b36c:	1c 00                	sbb    al,0x0
c010b36e:	00 00                	add    BYTE PTR [eax],al
c010b370:	ac                   	lods   al,BYTE PTR ds:[esi]
c010b371:	13 00                	adc    eax,DWORD PTR [eax]
c010b373:	00 84 79 10 c0 36 00 	add    BYTE PTR [ecx+edi*2+0x36c010],al
c010b37a:	00 00                	add    BYTE PTR [eax],al
c010b37c:	41                   	inc    ecx
c010b37d:	0e                   	push   cs
c010b37e:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010b384:	72 c5                	jb     c010b34b <_edata+0x138a>
c010b386:	0c 04                	or     al,0x4
c010b388:	04 00                	add    al,0x0
c010b38a:	00 00                	add    BYTE PTR [eax],al
c010b38c:	1c 00                	sbb    al,0x0
c010b38e:	00 00                	add    BYTE PTR [eax],al
c010b390:	cc                   	int3   
c010b391:	13 00                	adc    eax,DWORD PTR [eax]
c010b393:	00 ba 79 10 c0 1f    	add    BYTE PTR [edx+0x1fc01079],bh
c010b399:	00 00                	add    BYTE PTR [eax],al
c010b39b:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c010b39e:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010b3a4:	5b                   	pop    ebx
c010b3a5:	c5 0c 04             	lds    ecx,FWORD PTR [esp+eax*1]
c010b3a8:	04 00                	add    al,0x0
c010b3aa:	00 00                	add    BYTE PTR [eax],al
c010b3ac:	1c 00                	sbb    al,0x0
c010b3ae:	00 00                	add    BYTE PTR [eax],al
c010b3b0:	ec                   	in     al,dx
c010b3b1:	13 00                	adc    eax,DWORD PTR [eax]
c010b3b3:	00 d9                	add    cl,bl
c010b3b5:	79 10                	jns    c010b3c7 <_edata+0x1406>
c010b3b7:	c0 3b 00             	sar    BYTE PTR [ebx],0x0
c010b3ba:	00 00                	add    BYTE PTR [eax],al
c010b3bc:	41                   	inc    ecx
c010b3bd:	0e                   	push   cs
c010b3be:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010b3c4:	77 c5                	ja     c010b38b <_edata+0x13ca>
c010b3c6:	0c 04                	or     al,0x4
c010b3c8:	04 00                	add    al,0x0
c010b3ca:	00 00                	add    BYTE PTR [eax],al
c010b3cc:	1c 00                	sbb    al,0x0
c010b3ce:	00 00                	add    BYTE PTR [eax],al
c010b3d0:	0c 14                	or     al,0x14
c010b3d2:	00 00                	add    BYTE PTR [eax],al
c010b3d4:	14 7a                	adc    al,0x7a
c010b3d6:	10 c0                	adc    al,al
c010b3d8:	47                   	inc    edi
c010b3d9:	00 00                	add    BYTE PTR [eax],al
c010b3db:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c010b3de:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010b3e4:	02 43 c5             	add    al,BYTE PTR [ebx-0x3b]
c010b3e7:	0c 04                	or     al,0x4
c010b3e9:	04 00                	add    al,0x0
c010b3eb:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c010b3ee:	00 00                	add    BYTE PTR [eax],al
c010b3f0:	2c 14                	sub    al,0x14
c010b3f2:	00 00                	add    BYTE PTR [eax],al
c010b3f4:	5b                   	pop    ebx
c010b3f5:	7a 10                	jp     c010b407 <_edata+0x1446>
c010b3f7:	c0                   	(bad)  
c010b3f8:	35 00 00 00 41       	xor    eax,0x41000000
c010b3fd:	0e                   	push   cs
c010b3fe:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010b404:	71 c5                	jno    c010b3cb <_edata+0x140a>
c010b406:	0c 04                	or     al,0x4
c010b408:	04 00                	add    al,0x0
c010b40a:	00 00                	add    BYTE PTR [eax],al
c010b40c:	1c 00                	sbb    al,0x0
c010b40e:	00 00                	add    BYTE PTR [eax],al
c010b410:	4c                   	dec    esp
c010b411:	14 00                	adc    al,0x0
c010b413:	00 90 7a 10 c0 19    	add    BYTE PTR [eax+0x19c0107a],dl
c010b419:	00 00                	add    BYTE PTR [eax],al
c010b41b:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c010b41e:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010b424:	55                   	push   ebp
c010b425:	0c 04                	or     al,0x4
c010b427:	04 c5                	add    al,0xc5
c010b429:	00 00                	add    BYTE PTR [eax],al
c010b42b:	00 20                	add    BYTE PTR [eax],ah
c010b42d:	00 00                	add    BYTE PTR [eax],al
c010b42f:	00 6c 14 00          	add    BYTE PTR [esp+edx*1+0x0],ch
c010b433:	00 ac 7a 10 c0 1f 00 	add    BYTE PTR [edx+edi*2+0x1fc010],ch
c010b43a:	00 00                	add    BYTE PTR [eax],al
c010b43c:	41                   	inc    ecx
c010b43d:	0e                   	push   cs
c010b43e:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010b444:	44                   	inc    esp
c010b445:	83 03 56             	add    DWORD PTR [ebx],0x56
c010b448:	c3                   	ret    
c010b449:	41                   	inc    ecx
c010b44a:	0c 04                	or     al,0x4
c010b44c:	04 c5                	add    al,0xc5
c010b44e:	00 00                	add    BYTE PTR [eax],al
c010b450:	1c 00                	sbb    al,0x0
c010b452:	00 00                	add    BYTE PTR [eax],al
c010b454:	90                   	nop
c010b455:	14 00                	adc    al,0x0
c010b457:	00 cb                	add    bl,cl
c010b459:	7a 10                	jp     c010b46b <_edata+0x14aa>
c010b45b:	c0 0c 00 00          	ror    BYTE PTR [eax+eax*1],0x0
c010b45f:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c010b462:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010b468:	48                   	dec    eax
c010b469:	0c 04                	or     al,0x4
c010b46b:	04 c5                	add    al,0xc5
c010b46d:	00 00                	add    BYTE PTR [eax],al
c010b46f:	00 20                	add    BYTE PTR [eax],ah
c010b471:	00 00                	add    BYTE PTR [eax],al
c010b473:	00 b0 14 00 00 d7    	add    BYTE PTR [eax-0x28ffffec],dh
c010b479:	7a 10                	jp     c010b48b <_edata+0x14ca>
c010b47b:	c0 28 01             	shr    BYTE PTR [eax],0x1
c010b47e:	00 00                	add    BYTE PTR [eax],al
c010b480:	41                   	inc    ecx
c010b481:	0e                   	push   cs
c010b482:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010b488:	44                   	inc    esp
c010b489:	83 03 03             	add    DWORD PTR [ebx],0x3
c010b48c:	1f                   	pop    ds
c010b48d:	01 c3                	add    ebx,eax
c010b48f:	41                   	inc    ecx
c010b490:	0c 04                	or     al,0x4
c010b492:	04 c5                	add    al,0xc5
c010b494:	1c 00                	sbb    al,0x0
c010b496:	00 00                	add    BYTE PTR [eax],al
c010b498:	d4 14                	aam    0x14
c010b49a:	00 00                	add    BYTE PTR [eax],al
c010b49c:	ff                   	(bad)  
c010b49d:	7b 10                	jnp    c010b4af <_edata+0x14ee>
c010b49f:	c0                   	(bad)  
c010b4a0:	37                   	aaa    
c010b4a1:	00 00                	add    BYTE PTR [eax],al
c010b4a3:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c010b4a6:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010b4ac:	73 c5                	jae    c010b473 <_edata+0x14b2>
c010b4ae:	0c 04                	or     al,0x4
c010b4b0:	04 00                	add    al,0x0
c010b4b2:	00 00                	add    BYTE PTR [eax],al
c010b4b4:	24 00                	and    al,0x0
c010b4b6:	00 00                	add    BYTE PTR [eax],al
c010b4b8:	f4                   	hlt    
c010b4b9:	14 00                	adc    al,0x0
c010b4bb:	00 36                	add    BYTE PTR [esi],dh
c010b4bd:	7c 10                	jl     c010b4cf <_edata+0x150e>
c010b4bf:	c0 88 00 00 00 41 0e 	ror    BYTE PTR [eax+0x41000000],0xe
c010b4c6:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010b4cc:	45                   	inc    ebp
c010b4cd:	83 04 87 03          	add    DWORD PTR [edi+eax*4],0x3
c010b4d1:	02 7d c3             	add    bh,BYTE PTR [ebp-0x3d]
c010b4d4:	41                   	inc    ecx
c010b4d5:	c7 41 0c 04 04 c5 00 	mov    DWORD PTR [ecx+0xc],0xc50404
c010b4dc:	24 00                	and    al,0x0
c010b4de:	00 00                	add    BYTE PTR [eax],al
c010b4e0:	1c 15                	sbb    al,0x15
c010b4e2:	00 00                	add    BYTE PTR [eax],al
c010b4e4:	be 7c 10 c0 88       	mov    esi,0x88c0107c
c010b4e9:	00 00                	add    BYTE PTR [eax],al
c010b4eb:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c010b4ee:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010b4f4:	45                   	inc    ebp
c010b4f5:	83 04 87 03          	add    DWORD PTR [edi+eax*4],0x3
c010b4f9:	02 7d c3             	add    bh,BYTE PTR [ebp-0x3d]
c010b4fc:	41                   	inc    ecx
c010b4fd:	c7 41 0c 04 04 c5 00 	mov    DWORD PTR [ecx+0xc],0xc50404
c010b504:	1c 00                	sbb    al,0x0
c010b506:	00 00                	add    BYTE PTR [eax],al
c010b508:	44                   	inc    esp
c010b509:	15 00 00 46 7d       	adc    eax,0x7d460000
c010b50e:	10 c0                	adc    al,al
c010b510:	bf 00 00 00 41       	mov    edi,0x41000000
c010b515:	0e                   	push   cs
c010b516:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010b51c:	02 bb c5 0c 04 04    	add    bh,BYTE PTR [ebx+0x4040cc5]
c010b522:	00 00                	add    BYTE PTR [eax],al
c010b524:	20 00                	and    BYTE PTR [eax],al
c010b526:	00 00                	add    BYTE PTR [eax],al
c010b528:	64 15 00 00 05 7e    	fs adc eax,0x7e050000
c010b52e:	10 c0                	adc    al,al
c010b530:	aa                   	stos   BYTE PTR es:[edi],al
c010b531:	00 00                	add    BYTE PTR [eax],al
c010b533:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c010b536:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010b53c:	44                   	inc    esp
c010b53d:	83 03 02             	add    DWORD PTR [ebx],0x2
c010b540:	a1 c3 41 0c 04       	mov    eax,ds:0x40c41c3
c010b545:	04 c5                	add    al,0xc5
c010b547:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c010b54a:	00 00                	add    BYTE PTR [eax],al
c010b54c:	88 15 00 00 af 7e    	mov    BYTE PTR ds:0x7eaf0000,dl
c010b552:	10 c0                	adc    al,al
c010b554:	6b 00 00             	imul   eax,DWORD PTR [eax],0x0
c010b557:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c010b55a:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010b560:	02 67 c5             	add    ah,BYTE PTR [edi-0x3b]
c010b563:	0c 04                	or     al,0x4
c010b565:	04 00                	add    al,0x0
c010b567:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c010b56a:	00 00                	add    BYTE PTR [eax],al
c010b56c:	a8 15                	test   al,0x15
c010b56e:	00 00                	add    BYTE PTR [eax],al
c010b570:	1a 7f 10             	sbb    bh,BYTE PTR [edi+0x10]
c010b573:	c0 67 00 00          	shl    BYTE PTR [edi+0x0],0x0
c010b577:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c010b57a:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010b580:	02 63 c5             	add    ah,BYTE PTR [ebx-0x3b]
c010b583:	0c 04                	or     al,0x4
c010b585:	04 00                	add    al,0x0
c010b587:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c010b58a:	00 00                	add    BYTE PTR [eax],al
c010b58c:	c8 15 00 00          	enter  0x15,0x0
c010b590:	81 7f 10 c0 63 00 00 	cmp    DWORD PTR [edi+0x10],0x63c0
c010b597:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c010b59a:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010b5a0:	02 5f c5             	add    bl,BYTE PTR [edi-0x3b]
c010b5a3:	0c 04                	or     al,0x4
c010b5a5:	04 00                	add    al,0x0
c010b5a7:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c010b5aa:	00 00                	add    BYTE PTR [eax],al
c010b5ac:	e8 15 00 00 e4       	call   a410b5c6 <AR_CODE32+0xa40ff52e>
c010b5b1:	7f 10                	jg     c010b5c3 <_edata+0x1602>
c010b5b3:	c0 68 00 00          	shr    BYTE PTR [eax+0x0],0x0
c010b5b7:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c010b5ba:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010b5c0:	02 64 c5 0c          	add    ah,BYTE PTR [ebp+eax*8+0xc]
c010b5c4:	04 04                	add    al,0x4
c010b5c6:	00 00                	add    BYTE PTR [eax],al
c010b5c8:	1c 00                	sbb    al,0x0
c010b5ca:	00 00                	add    BYTE PTR [eax],al
c010b5cc:	08 16                	or     BYTE PTR [esi],dl
c010b5ce:	00 00                	add    BYTE PTR [eax],al
c010b5d0:	4c                   	dec    esp
c010b5d1:	80 10 c0             	adc    BYTE PTR [eax],0xc0
c010b5d4:	74 00                	je     c010b5d6 <_edata+0x1615>
c010b5d6:	00 00                	add    BYTE PTR [eax],al
c010b5d8:	41                   	inc    ecx
c010b5d9:	0e                   	push   cs
c010b5da:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010b5e0:	02 70 c5             	add    dh,BYTE PTR [eax-0x3b]
c010b5e3:	0c 04                	or     al,0x4
c010b5e5:	04 00                	add    al,0x0
c010b5e7:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c010b5ea:	00 00                	add    BYTE PTR [eax],al
c010b5ec:	28 16                	sub    BYTE PTR [esi],dl
c010b5ee:	00 00                	add    BYTE PTR [eax],al
c010b5f0:	c0 80 10 c0 9f 00 00 	rol    BYTE PTR [eax+0x9fc010],0x0
c010b5f7:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c010b5fa:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010b600:	02 9b c5 0c 04 04    	add    bl,BYTE PTR [ebx+0x4040cc5]
c010b606:	00 00                	add    BYTE PTR [eax],al
c010b608:	1c 00                	sbb    al,0x0
c010b60a:	00 00                	add    BYTE PTR [eax],al
c010b60c:	48                   	dec    eax
c010b60d:	16                   	push   ss
c010b60e:	00 00                	add    BYTE PTR [eax],al
c010b610:	5f                   	pop    edi
c010b611:	81 10 c0 34 00 00    	adc    DWORD PTR [eax],0x34c0
c010b617:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c010b61a:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010b620:	70 c5                	jo     c010b5e7 <_edata+0x1626>
c010b622:	0c 04                	or     al,0x4
c010b624:	04 00                	add    al,0x0
c010b626:	00 00                	add    BYTE PTR [eax],al
c010b628:	1c 00                	sbb    al,0x0
c010b62a:	00 00                	add    BYTE PTR [eax],al
c010b62c:	68 16 00 00 93       	push   0x93000016
c010b631:	81 10 c0 2b 00 00    	adc    DWORD PTR [eax],0x2bc0
c010b637:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c010b63a:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010b640:	67 c5 0c             	lds    ecx,FWORD PTR [si]
c010b643:	04 04                	add    al,0x4
c010b645:	00 00                	add    BYTE PTR [eax],al
c010b647:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c010b64a:	00 00                	add    BYTE PTR [eax],al
c010b64c:	88 16                	mov    BYTE PTR [esi],dl
c010b64e:	00 00                	add    BYTE PTR [eax],al
c010b650:	be 81 10 c0 91       	mov    esi,0x91c01081
c010b655:	00 00                	add    BYTE PTR [eax],al
c010b657:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c010b65a:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010b660:	02 8d c5 0c 04 04    	add    cl,BYTE PTR [ebp+0x4040cc5]
c010b666:	00 00                	add    BYTE PTR [eax],al
c010b668:	1c 00                	sbb    al,0x0
c010b66a:	00 00                	add    BYTE PTR [eax],al
c010b66c:	a8 16                	test   al,0x16
c010b66e:	00 00                	add    BYTE PTR [eax],al
c010b670:	50                   	push   eax
c010b671:	82                   	(bad)  
c010b672:	10 c0                	adc    al,al
c010b674:	2f                   	das    
c010b675:	00 00                	add    BYTE PTR [eax],al
c010b677:	00 41 0e             	add    BYTE PTR [ecx+0xe],al
c010b67a:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010b680:	6b c5 0c             	imul   eax,ebp,0xc
c010b683:	04 04                	add    al,0x4
c010b685:	00 00                	add    BYTE PTR [eax],al
c010b687:	00 20                	add    BYTE PTR [eax],ah
c010b689:	00 00                	add    BYTE PTR [eax],al
c010b68b:	00 c8                	add    al,cl
c010b68d:	16                   	push   ss
c010b68e:	00 00                	add    BYTE PTR [eax],al
c010b690:	7f 82                	jg     c010b614 <_edata+0x1653>
c010b692:	10 c0                	adc    al,al
c010b694:	e2 02                	loop   c010b698 <_edata+0x16d7>
c010b696:	00 00                	add    BYTE PTR [eax],al
c010b698:	41                   	inc    ecx
c010b699:	0e                   	push   cs
c010b69a:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010b6a0:	44                   	inc    esp
c010b6a1:	83 03 03             	add    DWORD PTR [ebx],0x3
c010b6a4:	d9 02                	fld    DWORD PTR [edx]
c010b6a6:	c3                   	ret    
c010b6a7:	41                   	inc    ecx
c010b6a8:	0c 04                	or     al,0x4
c010b6aa:	04 c5                	add    al,0xc5
c010b6ac:	24 00                	and    al,0x0
c010b6ae:	00 00                	add    BYTE PTR [eax],al
c010b6b0:	ec                   	in     al,dx
c010b6b1:	16                   	push   ss
c010b6b2:	00 00                	add    BYTE PTR [eax],al
c010b6b4:	64 85 10             	test   DWORD PTR fs:[eax],edx
c010b6b7:	c0 c8 01             	ror    al,0x1
c010b6ba:	00 00                	add    BYTE PTR [eax],al
c010b6bc:	41                   	inc    ecx
c010b6bd:	0e                   	push   cs
c010b6be:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010b6c4:	45                   	inc    ebp
c010b6c5:	83 04 86 03          	add    DWORD PTR [esi+eax*4],0x3
c010b6c9:	03 bd 01 c3 41 c6    	add    edi,DWORD PTR [ebp-0x39be3cff]
c010b6cf:	41                   	inc    ecx
c010b6d0:	0c 04                	or     al,0x4
c010b6d2:	04 c5                	add    al,0xc5
c010b6d4:	1c 00                	sbb    al,0x0
c010b6d6:	00 00                	add    BYTE PTR [eax],al
c010b6d8:	14 17                	adc    al,0x17
c010b6da:	00 00                	add    BYTE PTR [eax],al
c010b6dc:	2c 87                	sub    al,0x87
c010b6de:	10 c0                	adc    al,al
c010b6e0:	6a 00                	push   0x0
c010b6e2:	00 00                	add    BYTE PTR [eax],al
c010b6e4:	41                   	inc    ecx
c010b6e5:	0e                   	push   cs
c010b6e6:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010b6ec:	02 66 c5             	add    ah,BYTE PTR [esi-0x3b]
c010b6ef:	0c 04                	or     al,0x4
c010b6f1:	04 00                	add    al,0x0
c010b6f3:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
c010b6f6:	00 00                	add    BYTE PTR [eax],al
c010b6f8:	34 17                	xor    al,0x17
c010b6fa:	00 00                	add    BYTE PTR [eax],al
c010b6fc:	96                   	xchg   esi,eax
c010b6fd:	87 10                	xchg   DWORD PTR [eax],edx
c010b6ff:	c0 1b 01             	rcr    BYTE PTR [ebx],0x1
c010b702:	00 00                	add    BYTE PTR [eax],al
c010b704:	41                   	inc    ecx
c010b705:	0e                   	push   cs
c010b706:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010b70c:	03 17                	add    edx,DWORD PTR [edi]
c010b70e:	01 c5                	add    ebp,eax
c010b710:	0c 04                	or     al,0x4
c010b712:	04 00                	add    al,0x0
c010b714:	1c 00                	sbb    al,0x0
c010b716:	00 00                	add    BYTE PTR [eax],al
c010b718:	54                   	push   esp
c010b719:	17                   	pop    ss
c010b71a:	00 00                	add    BYTE PTR [eax],al
c010b71c:	b1 88                	mov    cl,0x88
c010b71e:	10 c0                	adc    al,al
c010b720:	8f 00                	pop    DWORD PTR [eax]
c010b722:	00 00                	add    BYTE PTR [eax],al
c010b724:	41                   	inc    ecx
c010b725:	0e                   	push   cs
c010b726:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010b72c:	02 8b c5 0c 04 04    	add    cl,BYTE PTR [ebx+0x4040cc5]
c010b732:	00 00                	add    BYTE PTR [eax],al
c010b734:	28 00                	sub    BYTE PTR [eax],al
c010b736:	00 00                	add    BYTE PTR [eax],al
c010b738:	74 17                	je     c010b751 <_edata+0x1790>
c010b73a:	00 00                	add    BYTE PTR [eax],al
c010b73c:	40                   	inc    eax
c010b73d:	89 10                	mov    DWORD PTR [eax],edx
c010b73f:	c0 bf 01 00 00 41 0e 	sar    BYTE PTR [edi+0x41000001],0xe
c010b746:	08 85 02 42 0d 05    	or     BYTE PTR [ebp+0x50d4202],al
c010b74c:	46                   	inc    esi
c010b74d:	83 05 86 04 87 03 03 	add    DWORD PTR ds:0x3870486,0x3
c010b754:	b2 01                	mov    dl,0x1
c010b756:	c3                   	ret    
c010b757:	41                   	inc    ecx
c010b758:	c6 41 c7 41          	mov    BYTE PTR [ecx-0x39],0x41
c010b75c:	0c 04                	or     al,0x4
c010b75e:	04 c5                	add    al,0xc5

Disassembly of section .rodata:

c010b760 <PKn_Version>:
c010b760:	50                   	push   eax
c010b761:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c010b763:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c010b766:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c010b76b:	65 6c                	gs ins BYTE PTR es:[edi],dx
c010b76d:	20 28                	and    BYTE PTR [eax],ch
c010b76f:	50                   	push   eax
c010b770:	4b                   	dec    ebx
c010b771:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010b772:	29 20                	sub    DWORD PTR [eax],esp
c010b774:	30 2e                	xor    BYTE PTR [esi],ch
c010b776:	30 2e                	xor    BYTE PTR [esi],ch
c010b778:	31 20                	xor    DWORD PTR [eax],esp
c010b77a:	41                   	inc    ecx
c010b77b:	75 67                	jne    c010b7e4 <__func__.1592+0xd>
c010b77d:	2e 00 61 72          	add    BYTE PTR cs:[ecx+0x72],ah
c010b781:	67 5f                	addr16 pop edi
c010b783:	41                   	inc    ecx
c010b784:	20 00                	and    BYTE PTR [eax],al
c010b786:	6b 5f 61 00          	imul   ebx,DWORD PTR [edi+0x61],0x0
c010b78a:	4d                   	dec    ebp
c010b78b:	6f                   	outs   dx,DWORD PTR ds:[esi]
c010b78c:	75 73                	jne    c010b801 <__func__.1592+0x2a>
c010b78e:	65 00 75 73          	add    BYTE PTR gs:[ebp+0x73],dh
c010b792:	65 72 5f             	gs jb  c010b7f4 <__func__.1592+0x1d>
c010b795:	70 72                	jo     c010b809 <__func__.1592+0x32>
c010b797:	6f                   	outs   dx,DWORD PTR ds:[esi]
c010b798:	67 41                	addr16 inc ecx
c010b79a:	00 25 30 34 78 2f    	add    BYTE PTR ds:0x2f783430,ah
c010b7a0:	25 30 32 78 2f       	and    eax,0x2f783230
c010b7a5:	25 30 32 78 20       	and    eax,0x20783230
c010b7aa:	25 30 32 78 3a       	and    eax,0x3a783230
c010b7af:	25 30 32 78 00       	and    eax,0x783230
c010b7b4:	62 75 66             	bound  esi,QWORD PTR [ebp+0x66]
c010b7b7:	20 21                	and    BYTE PTR [ecx],ah
c010b7b9:	3d 20 4e 55 4c       	cmp    eax,0x4c554e20
c010b7be:	4c                   	dec    esp
c010b7bf:	00 6b 65             	add    BYTE PTR [ebx+0x65],ch
c010b7c2:	72 6e                	jb     c010b832 <__func__.1592+0x5b>
c010b7c4:	65 6c                	gs ins BYTE PTR es:[edi],dx
c010b7c6:	2f                   	das    
c010b7c7:	6d                   	ins    DWORD PTR es:[edi],dx
c010b7c8:	61                   	popa   
c010b7c9:	69 6e 2e 63 00 75 73 	imul   ebp,DWORD PTR [esi+0x2e],0x73750063
c010b7d0:	65 72 70             	gs jb  c010b843 <__func__.1592+0x6c>
c010b7d3:	72 6f                	jb     c010b844 <__func__.1592+0x6d>
c010b7d5:	67 00 75 5f          	add    BYTE PTR [di+0x5f],dh

c010b7d7 <__func__.1592>:
c010b7d7:	75 5f                	jne    c010b838 <__func__.1592+0x61>
c010b7d9:	70 72                	jo     c010b84d <__func__.1592+0x76>
c010b7db:	6f                   	outs   dx,DWORD PTR ds:[esi]
c010b7dc:	67 5f                	addr16 pop edi
c010b7de:	61                   	popa   
c010b7df:	00 50 65             	add    BYTE PTR [eax+0x65],dl
c010b7e2:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010b7e3:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c010b7e6:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c010b7eb:	65 6c                	gs ins BYTE PTR es:[edi],dx
c010b7ed:	20 28                	and    BYTE PTR [eax],ch
c010b7ef:	50                   	push   eax
c010b7f0:	4b                   	dec    ebx
c010b7f1:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010b7f2:	29 20                	sub    DWORD PTR [eax],esp
c010b7f4:	30 2e                	xor    BYTE PTR [esi],ch
c010b7f6:	30 2e                	xor    BYTE PTR [esi],ch
c010b7f8:	31 20                	xor    DWORD PTR [eax],esp
c010b7fa:	41                   	inc    ecx
c010b7fb:	75 67                	jne    c010b864 <__func__.1592+0x8d>
c010b7fd:	2e 00 00             	add    BYTE PTR cs:[eax],al
c010b800:	0a 20                	or     ah,BYTE PTR [eax]
c010b802:	45                   	inc    ebp
c010b803:	72 72                	jb     c010b877 <__func__.1592+0xa0>
c010b805:	6f                   	outs   dx,DWORD PTR ds:[esi]
c010b806:	72 0a                	jb     c010b812 <__func__.1592+0x3b>
c010b808:	20 46 69             	and    BYTE PTR [esi+0x69],al
c010b80b:	6c                   	ins    BYTE PTR es:[edi],dx
c010b80c:	65 3a 20             	cmp    ah,BYTE PTR gs:[eax]
c010b80f:	20 20                	and    BYTE PTR [eax],ah
c010b811:	20 20                	and    BYTE PTR [eax],ah
c010b813:	20 20                	and    BYTE PTR [eax],ah
c010b815:	20 25 73 0a 20 42    	and    BYTE PTR ds:0x42200a73,ah
c010b81b:	61                   	popa   
c010b81c:	73 65                	jae    c010b883 <__func__.1592+0xac>
c010b81e:	20 46 69             	and    BYTE PTR [esi+0x69],al
c010b821:	6c                   	ins    BYTE PTR es:[edi],dx
c010b822:	65 3a 20             	cmp    ah,BYTE PTR gs:[eax]
c010b825:	20 20                	and    BYTE PTR [eax],ah
c010b827:	25 73 0a 20 49       	and    eax,0x49200a73
c010b82c:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010b82d:	20 66 75             	and    BYTE PTR [esi+0x75],ah
c010b830:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010b831:	63 74 69 6f          	arpl   WORD PTR [ecx+ebp*2+0x6f],si
c010b835:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010b836:	3a 20                	cmp    ah,BYTE PTR [eax]
c010b838:	25 73 0a 20 4c       	and    eax,0x4c200a73
c010b83d:	69 6e 65 3a 20 20 20 	imul   ebp,DWORD PTR [esi+0x65],0x2020203a
c010b844:	20 20                	and    BYTE PTR [eax],ah
c010b846:	20 20                	and    BYTE PTR [eax],ah
c010b848:	20 25 64 0a 20 43    	and    BYTE PTR ds:0x43200a64,ah
c010b84e:	6f                   	outs   dx,DWORD PTR ds:[esi]
c010b84f:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010b850:	64 69 74 69 6f 6e 3a 	imul   esi,DWORD PTR fs:[ecx+ebp*2+0x6f],0x20203a6e
c010b857:	20 20 
c010b859:	20 25 73 0a 20 52    	and    BYTE PTR ds:0x52200a73,ah
c010b85f:	75 6e                	jne    c010b8cf <__func__.1592+0xf8>
c010b861:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010b862:	69 6e 67 3a 20 20 20 	imul   ebp,DWORD PTR [esi+0x67],0x2020203a
c010b869:	20 20                	and    BYTE PTR [eax],ah
c010b86b:	25 73 00 20 5b       	and    eax,0x5b200073
c010b870:	20 4c 6f 67          	and    BYTE PTR [edi+ebp*2+0x67],cl
c010b874:	5d                   	pop    ebp
c010b875:	00 00                	add    BYTE PTR [eax],al
c010b877:	00 50 65             	add    BYTE PTR [eax+0x65],dl
c010b87a:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010b87b:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c010b87e:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c010b883:	65 6c                	gs ins BYTE PTR es:[edi],dx
c010b885:	20 28                	and    BYTE PTR [eax],ch
c010b887:	50                   	push   eax
c010b888:	4b                   	dec    ebx
c010b889:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010b88a:	29 20                	sub    DWORD PTR [eax],esp
c010b88c:	30 2e                	xor    BYTE PTR [esi],ch
c010b88e:	30 2e                	xor    BYTE PTR [esi],ch
c010b890:	31 20                	xor    DWORD PTR [eax],esp
c010b892:	41                   	inc    ecx
c010b893:	75 67                	jne    c010b8fc <__func__.1592+0x125>
c010b895:	2e 00 69 6e          	add    BYTE PTR cs:[ecx+0x6e],ch
c010b899:	69 74 20 61 6c 6c 00 	imul   esi,DWORD PTR [eax+eiz*1+0x61],0x69006c6c
c010b8a0:	69 
c010b8a1:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010b8a2:	69 74 20 64 6f 6e 65 	imul   esi,DWORD PTR [eax+eiz*1+0x64],0x656e6f
c010b8a9:	00 
c010b8aa:	00 00                	add    BYTE PTR [eax],al
c010b8ac:	50                   	push   eax
c010b8ad:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c010b8af:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c010b8b2:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c010b8b7:	65 6c                	gs ins BYTE PTR es:[edi],dx
c010b8b9:	20 28                	and    BYTE PTR [eax],ch
c010b8bb:	50                   	push   eax
c010b8bc:	4b                   	dec    ebx
c010b8bd:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010b8be:	29 20                	sub    DWORD PTR [eax],esp
c010b8c0:	30 2e                	xor    BYTE PTR [esi],ch
c010b8c2:	30 2e                	xor    BYTE PTR [esi],ch
c010b8c4:	31 20                	xor    DWORD PTR [eax],esp
c010b8c6:	41                   	inc    ecx
c010b8c7:	75 67                	jne    c010b930 <__func__.1592+0x159>
c010b8c9:	2e 00 00             	add    BYTE PTR cs:[eax],al
c010b8cc:	53                   	push   ebx
c010b8cd:	6f                   	outs   dx,DWORD PTR ds:[esi]
c010b8ce:	72 72                	jb     c010b942 <__func__.1592+0x16b>
c010b8d0:	79 2c                	jns    c010b8fe <__func__.1592+0x127>
c010b8d2:	20 61 20             	and    BYTE PTR [ecx+0x20],ah
c010b8d5:	70 72                	jo     c010b949 <__func__.1592+0x172>
c010b8d7:	6f                   	outs   dx,DWORD PTR ds:[esi]
c010b8d8:	62 6c 65 6d          	bound  ebp,QWORD PTR [ebp+eiz*2+0x6d]
c010b8dc:	20 62 65             	and    BYTE PTR [edx+0x65],ah
c010b8df:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c010b8e1:	20 64 65 74          	and    BYTE PTR [ebp+eiz*2+0x74],ah
c010b8e5:	65 63 74 65 64       	arpl   WORD PTR gs:[ebp+eiz*2+0x64],si
c010b8ea:	20 61 6e             	and    BYTE PTR [ecx+0x6e],ah
c010b8ed:	64 20 50 4b          	and    BYTE PTR fs:[eax+0x4b],dl
c010b8f1:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010b8f2:	20 73 68             	and    BYTE PTR [ebx+0x68],dh
c010b8f5:	75 74                	jne    c010b96b <__func__.1592+0x194>
c010b8f7:	20 64 6f 77          	and    BYTE PTR [edi+ebp*2+0x77],ah
c010b8fb:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010b8fc:	20 74 6f 20          	and    BYTE PTR [edi+ebp*2+0x20],dh
c010b900:	70 72                	jo     c010b974 <__func__.1592+0x19d>
c010b902:	65 76 65             	gs jbe c010b96a <__func__.1592+0x193>
c010b905:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010b906:	74 20                	je     c010b928 <__func__.1592+0x151>
c010b908:	64 61                	fs popa 
c010b90a:	6d                   	ins    DWORD PTR es:[edi],dx
c010b90b:	61                   	popa   
c010b90c:	67 65 20 74 6f       	and    BYTE PTR gs:[si+0x6f],dh
c010b911:	20 79 6f             	and    BYTE PTR [ecx+0x6f],bh
c010b914:	75 72                	jne    c010b988 <__func__.1592+0x1b1>
c010b916:	20 63 6f             	and    BYTE PTR [ebx+0x6f],ah
c010b919:	6d                   	ins    DWORD PTR es:[edi],dx
c010b91a:	70 75                	jo     c010b991 <__func__.1592+0x1ba>
c010b91c:	74 65                	je     c010b983 <__func__.1592+0x1ac>
c010b91e:	72 2e                	jb     c010b94e <__func__.1592+0x177>
c010b920:	0a 49 66             	or     cl,BYTE PTR [ecx+0x66]
c010b923:	20 74 68 69          	and    BYTE PTR [eax+ebp*2+0x69],dh
c010b927:	73 20                	jae    c010b949 <__func__.1592+0x172>
c010b929:	69 73 20 74 68 65 20 	imul   esi,DWORD PTR [ebx+0x20],0x20656874
c010b930:	66 69 72 73 74 20    	imul   si,WORD PTR [edx+0x73],0x2074
c010b936:	74 69                	je     c010b9a1 <__func__.1592+0x1ca>
c010b938:	6d                   	ins    DWORD PTR es:[edi],dx
c010b939:	65 20 79 6f          	and    BYTE PTR gs:[ecx+0x6f],bh
c010b93d:	75 27                	jne    c010b966 <__func__.1592+0x18f>
c010b93f:	76 65                	jbe    c010b9a6 <__func__.1592+0x1cf>
c010b941:	20 73 65             	and    BYTE PTR [ebx+0x65],dh
c010b944:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c010b946:	20 74 68 69          	and    BYTE PTR [eax+ebp*2+0x69],dh
c010b94a:	73 20                	jae    c010b96c <__func__.1592+0x195>
c010b94c:	73 74                	jae    c010b9c2 <__func__.1592+0x1eb>
c010b94e:	6f                   	outs   dx,DWORD PTR ds:[esi]
c010b94f:	70 20                	jo     c010b971 <__func__.1592+0x19a>
c010b951:	65 72 72             	gs jb  c010b9c6 <__func__.1592+0x1ef>
c010b954:	6f                   	outs   dx,DWORD PTR ds:[esi]
c010b955:	72 20                	jb     c010b977 <__func__.1592+0x1a0>
c010b957:	73 65                	jae    c010b9be <__func__.1592+0x1e7>
c010b959:	72 65                	jb     c010b9c0 <__func__.1592+0x1e9>
c010b95b:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c010b95d:	2c 20                	sub    al,0x20
c010b95f:	72 65                	jb     c010b9c6 <__func__.1592+0x1ef>
c010b961:	73 74                	jae    c010b9d7 <__func__.1592+0x200>
c010b963:	61                   	popa   
c010b964:	72 74                	jb     c010b9da <__func__.1592+0x203>
c010b966:	20 79 6f             	and    BYTE PTR [ecx+0x6f],bh
c010b969:	75 72                	jne    c010b9dd <__func__.1592+0x206>
c010b96b:	20 63 6f             	and    BYTE PTR [ebx+0x6f],ah
c010b96e:	6d                   	ins    DWORD PTR es:[edi],dx
c010b96f:	70 75                	jo     c010b9e6 <__func__.1592+0x20f>
c010b971:	74 65                	je     c010b9d8 <__func__.1592+0x201>
c010b973:	72 2e                	jb     c010b9a3 <__func__.1592+0x1cc>
c010b975:	0a 49 66             	or     cl,BYTE PTR [ecx+0x66]
c010b978:	20 74 68 69          	and    BYTE PTR [eax+ebp*2+0x69],dh
c010b97c:	73 20                	jae    c010b99e <__func__.1592+0x1c7>
c010b97e:	73 63                	jae    c010b9e3 <__func__.1592+0x20c>
c010b980:	72 65                	jb     c010b9e7 <__func__.1592+0x210>
c010b982:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c010b984:	20 61 70             	and    BYTE PTR [ecx+0x70],ah
c010b987:	70 65                	jo     c010b9ee <__func__.1592+0x217>
c010b989:	72 73                	jb     c010b9fe <__func__.1592+0x227>
c010b98b:	20 61 67             	and    BYTE PTR [ecx+0x67],ah
c010b98e:	61                   	popa   
c010b98f:	69 6e 2c 66 6f 6c 6c 	imul   ebp,DWORD PTR [esi+0x2c],0x6c6c6f66
c010b996:	6f                   	outs   dx,DWORD PTR ds:[esi]
c010b997:	77 20                	ja     c010b9b9 <__func__.1592+0x1e2>
c010b999:	74 68                	je     c010ba03 <__func__.1592+0x22c>
c010b99b:	65 73 65             	gs jae c010ba03 <__func__.1592+0x22c>
c010b99e:	20 73 74             	and    BYTE PTR [ebx+0x74],dh
c010b9a1:	65 70 73             	gs jo  c010ba17 <__func__.1592+0x240>
c010b9a4:	3a 0a                	cmp    cl,BYTE PTR [edx]
c010b9a6:	20 31                	and    BYTE PTR [ecx],dh
c010b9a8:	2e 20 52 65          	and    BYTE PTR cs:[edx+0x65],dl
c010b9ac:	62 75 69             	bound  esi,QWORD PTR [ebp+0x69]
c010b9af:	6c                   	ins    BYTE PTR es:[edi],dx
c010b9b0:	64 20 50 65          	and    BYTE PTR fs:[eax+0x65],dl
c010b9b4:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010b9b5:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c010b9b8:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c010b9bd:	65 6c                	gs ins BYTE PTR es:[edi],dx
c010b9bf:	2e 20 0a             	and    BYTE PTR cs:[edx],cl
c010b9c2:	20 32                	and    BYTE PTR [edx],dh
c010b9c4:	2e 20 44 65 62       	and    BYTE PTR cs:[ebp+eiz*2+0x62],al
c010b9c9:	75 67                	jne    c010ba32 <__func__.1592+0x25b>
c010b9cb:	20 50 65             	and    BYTE PTR [eax+0x65],dl
c010b9ce:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010b9cf:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c010b9d2:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c010b9d7:	65 6c                	gs ins BYTE PTR es:[edi],dx
c010b9d9:	20 6f 6e             	and    BYTE PTR [edi+0x6e],ch
c010b9dc:	20 76 69             	and    BYTE PTR [esi+0x69],dh
c010b9df:	72 74                	jb     c010ba55 <__func__.1592+0x27e>
c010b9e1:	75 61                	jne    c010ba44 <__func__.1592+0x26d>
c010b9e3:	6c                   	ins    BYTE PTR es:[edi],dx
c010b9e4:	20 6d 61             	and    BYTE PTR [ebp+0x61],ch
c010b9e7:	63 68 69             	arpl   WORD PTR [eax+0x69],bp
c010b9ea:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010b9eb:	65 2e 0a 00          	gs or  al,BYTE PTR cs:[eax]
c010b9ef:	00 20                	add    BYTE PTR [eax],ah
c010b9f1:	25 73 0a 20 69       	and    eax,0x69200a73
c010b9f6:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010b9f7:	74 72                	je     c010ba6b <__func__.1592+0x294>
c010b9f9:	3a 20                	cmp    ah,BYTE PTR [eax]
c010b9fb:	30 78 25             	xor    BYTE PTR [eax+0x25],bh
c010b9fe:	30 32                	xor    BYTE PTR [edx],dh
c010ba00:	78 0a                	js     c010ba0c <__func__.1592+0x235>
c010ba02:	20 43 53             	and    BYTE PTR [ebx+0x53],al
c010ba05:	3a 45 49             	cmp    al,BYTE PTR [ebp+0x49]
c010ba08:	50                   	push   eax
c010ba09:	20 20                	and    BYTE PTR [eax],ah
c010ba0b:	30 78 25             	xor    BYTE PTR [eax+0x25],bh
c010ba0e:	30 32                	xor    BYTE PTR [edx],dh
c010ba10:	78 3a                	js     c010ba4c <__func__.1592+0x275>
c010ba12:	25 30 38 70 20       	and    eax,0x20703830
c010ba17:	52                   	push   edx
c010ba18:	75 6e                	jne    c010ba88 <__func__.1592+0x2b1>
c010ba1a:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010ba1b:	69 6e 67 3a 20 25 73 	imul   ebp,DWORD PTR [esi+0x67],0x7325203a
c010ba22:	00 28                	add    BYTE PTR [eax],ch
c010ba24:	20 46 61             	and    BYTE PTR [esi+0x61],al
c010ba27:	75 6c                	jne    c010ba95 <__func__.1592+0x2be>
c010ba29:	74 20                	je     c010ba4b <__func__.1592+0x274>
c010ba2b:	61                   	popa   
c010ba2c:	64 64 72 65          	fs fs jb c010ba95 <__func__.1592+0x2be>
c010ba30:	73 73                	jae    c010baa5 <__func__.1592+0x2ce>
c010ba32:	3a 20                	cmp    ah,BYTE PTR [eax]
c010ba34:	25 70 20 29 00       	and    eax,0x292070
c010ba39:	23 44 45 20          	and    eax,DWORD PTR [ebp+eax*2+0x20]
c010ba3d:	44                   	inc    esp
c010ba3e:	69 76 69 64 65 20 45 	imul   esi,DWORD PTR [esi+0x69],0x45206564
c010ba45:	72 72                	jb     c010bab9 <__func__.1592+0x2e2>
c010ba47:	6f                   	outs   dx,DWORD PTR ds:[esi]
c010ba48:	72 00                	jb     c010ba4a <__func__.1592+0x273>
c010ba4a:	23 44 42 20          	and    eax,DWORD PTR [edx+eax*2+0x20]
c010ba4e:	44                   	inc    esp
c010ba4f:	65 62 75 67          	bound  esi,QWORD PTR gs:[ebp+0x67]
c010ba53:	20 45 78             	and    BYTE PTR [ebp+0x78],al
c010ba56:	63 65 70             	arpl   WORD PTR [ebp+0x70],sp
c010ba59:	74 69                	je     c010bac4 <__func__.1592+0x2ed>
c010ba5b:	6f                   	outs   dx,DWORD PTR ds:[esi]
c010ba5c:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010ba5d:	00 4e 4d             	add    BYTE PTR [esi+0x4d],cl
c010ba60:	49                   	dec    ecx
c010ba61:	20 49 6e             	and    BYTE PTR [ecx+0x6e],cl
c010ba64:	74 65                	je     c010bacb <__func__.1592+0x2f4>
c010ba66:	72 72                	jb     c010bada <__func__.1592+0x303>
c010ba68:	75 70                	jne    c010bada <__func__.1592+0x303>
c010ba6a:	74 00                	je     c010ba6c <__func__.1592+0x295>
c010ba6c:	23 42 50             	and    eax,DWORD PTR [edx+0x50]
c010ba6f:	20 42 72             	and    BYTE PTR [edx+0x72],al
c010ba72:	65 61                	gs popa 
c010ba74:	6b 70 6f 69          	imul   esi,DWORD PTR [eax+0x6f],0x69
c010ba78:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010ba79:	74 20                	je     c010ba9b <__func__.1592+0x2c4>
c010ba7b:	45                   	inc    ebp
c010ba7c:	78 63                	js     c010bae1 <__func__.1592+0x30a>
c010ba7e:	65 70 74             	gs jo  c010baf5 <__func__.1592+0x31e>
c010ba81:	69 6f 6e 00 23 4f 46 	imul   ebp,DWORD PTR [edi+0x6e],0x464f2300
c010ba88:	20 4f 76             	and    BYTE PTR [edi+0x76],cl
c010ba8b:	65 72 66             	gs jb  c010baf4 <__func__.1592+0x31d>
c010ba8e:	6c                   	ins    BYTE PTR es:[edi],dx
c010ba8f:	6f                   	outs   dx,DWORD PTR ds:[esi]
c010ba90:	77 20                	ja     c010bab2 <__func__.1592+0x2db>
c010ba92:	45                   	inc    ebp
c010ba93:	78 63                	js     c010baf8 <__func__.1592+0x321>
c010ba95:	65 70 74             	gs jo  c010bb0c <__func__.1592+0x335>
c010ba98:	69 6f 6e 00 23 42 52 	imul   ebp,DWORD PTR [edi+0x6e],0x52422300
c010ba9f:	20 42 4f             	and    BYTE PTR [edx+0x4f],al
c010baa2:	55                   	push   ebp
c010baa3:	4e                   	dec    esi
c010baa4:	44                   	inc    esp
c010baa5:	20 52 61             	and    BYTE PTR [edx+0x61],dl
c010baa8:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010baa9:	67 65 20 45 78       	and    BYTE PTR gs:[di+0x78],al
c010baae:	63 65 65             	arpl   WORD PTR [ebp+0x65],sp
c010bab1:	64 65 64 20 45 78    	fs gs and BYTE PTR fs:[ebp+0x78],al
c010bab7:	63 65 70             	arpl   WORD PTR [ebp+0x70],sp
c010baba:	74 69                	je     c010bb25 <__func__.1592+0x34e>
c010babc:	6f                   	outs   dx,DWORD PTR ds:[esi]
c010babd:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010babe:	00 23                	add    BYTE PTR [ebx],ah
c010bac0:	55                   	push   ebp
c010bac1:	44                   	inc    esp
c010bac2:	20 49 6e             	and    BYTE PTR [ecx+0x6e],cl
c010bac5:	76 61                	jbe    c010bb28 <__func__.1592+0x351>
c010bac7:	6c                   	ins    BYTE PTR es:[edi],dx
c010bac8:	69 64 20 4f 70 63 6f 	imul   esp,DWORD PTR [eax+eiz*1+0x4f],0x646f6370
c010bacf:	64 
c010bad0:	65 20 45 78          	and    BYTE PTR gs:[ebp+0x78],al
c010bad4:	63 65 70             	arpl   WORD PTR [ebp+0x70],sp
c010bad7:	74 69                	je     c010bb42 <__func__.1592+0x36b>
c010bad9:	6f                   	outs   dx,DWORD PTR ds:[esi]
c010bada:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010badb:	00 23                	add    BYTE PTR [ebx],ah
c010badd:	4e                   	dec    esi
c010bade:	4d                   	dec    ebp
c010badf:	20 44 65 76          	and    BYTE PTR [ebp+eiz*2+0x76],al
c010bae3:	69 63 65 20 4e 6f 74 	imul   esp,DWORD PTR [ebx+0x65],0x746f4e20
c010baea:	20 41 76             	and    BYTE PTR [ecx+0x76],al
c010baed:	61                   	popa   
c010baee:	69 6c 61 62 6c 65 20 	imul   ebp,DWORD PTR [ecx+eiz*2+0x62],0x4520656c
c010baf5:	45 
c010baf6:	78 63                	js     c010bb5b <__func__.1592+0x384>
c010baf8:	65 70 74             	gs jo  c010bb6f <__func__.1592+0x398>
c010bafb:	69 6f 6e 00 23 44 46 	imul   ebp,DWORD PTR [edi+0x6e],0x46442300
c010bb02:	20 44 6f 75          	and    BYTE PTR [edi+ebp*2+0x75],al
c010bb06:	62 6c 65 20          	bound  ebp,QWORD PTR [ebp+eiz*2+0x20]
c010bb0a:	46                   	inc    esi
c010bb0b:	61                   	popa   
c010bb0c:	75 6c                	jne    c010bb7a <__func__.1592+0x3a3>
c010bb0e:	74 20                	je     c010bb30 <__func__.1592+0x359>
c010bb10:	45                   	inc    ebp
c010bb11:	78 63                	js     c010bb76 <__func__.1592+0x39f>
c010bb13:	65 70 74             	gs jo  c010bb8a <__func__.1592+0x3b3>
c010bb16:	69 6f 6e 00 43 6f 70 	imul   ebp,DWORD PTR [edi+0x6e],0x706f4300
c010bb1d:	72 6f                	jb     c010bb8e <__func__.1592+0x3b7>
c010bb1f:	63 65 73             	arpl   WORD PTR [ebp+0x73],sp
c010bb22:	73 6f                	jae    c010bb93 <__func__.1592+0x3bc>
c010bb24:	72 20                	jb     c010bb46 <__func__.1592+0x36f>
c010bb26:	53                   	push   ebx
c010bb27:	65 67 6d             	gs ins DWORD PTR es:[di],dx
c010bb2a:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c010bb2c:	74 20                	je     c010bb4e <__func__.1592+0x377>
c010bb2e:	4f                   	dec    edi
c010bb2f:	76 65                	jbe    c010bb96 <__func__.1592+0x3bf>
c010bb31:	72 72                	jb     c010bba5 <__func__.1592+0x3ce>
c010bb33:	75 6e                	jne    c010bba3 <__func__.1592+0x3cc>
c010bb35:	00 23                	add    BYTE PTR [ebx],ah
c010bb37:	54                   	push   esp
c010bb38:	53                   	push   ebx
c010bb39:	20 49 6e             	and    BYTE PTR [ecx+0x6e],cl
c010bb3c:	76 61                	jbe    c010bb9f <__func__.1592+0x3c8>
c010bb3e:	6c                   	ins    BYTE PTR es:[edi],dx
c010bb3f:	69 64 20 54 53 53 20 	imul   esp,DWORD PTR [eax+eiz*1+0x54],0x45205353
c010bb46:	45 
c010bb47:	78 63                	js     c010bbac <__func__.1592+0x3d5>
c010bb49:	65 70 74             	gs jo  c010bbc0 <__func__.1592+0x3e9>
c010bb4c:	69 6f 6e 00 23 4e 50 	imul   ebp,DWORD PTR [edi+0x6e],0x504e2300
c010bb53:	20 53 65             	and    BYTE PTR [ebx+0x65],dl
c010bb56:	67 6d                	ins    DWORD PTR es:[di],dx
c010bb58:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c010bb5a:	74 20                	je     c010bb7c <__func__.1592+0x3a5>
c010bb5c:	4e                   	dec    esi
c010bb5d:	6f                   	outs   dx,DWORD PTR ds:[esi]
c010bb5e:	74 20                	je     c010bb80 <__func__.1592+0x3a9>
c010bb60:	50                   	push   eax
c010bb61:	72 65                	jb     c010bbc8 <__func__.1592+0x3f1>
c010bb63:	73 65                	jae    c010bbca <__func__.1592+0x3f3>
c010bb65:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010bb66:	74 00                	je     c010bb68 <__func__.1592+0x391>
c010bb68:	23 53 53             	and    edx,DWORD PTR [ebx+0x53]
c010bb6b:	20 53 74             	and    BYTE PTR [ebx+0x74],dl
c010bb6e:	61                   	popa   
c010bb6f:	63 6b 20             	arpl   WORD PTR [ebx+0x20],bp
c010bb72:	46                   	inc    esi
c010bb73:	61                   	popa   
c010bb74:	75 6c                	jne    c010bbe2 <__func__.1592+0x40b>
c010bb76:	74 20                	je     c010bb98 <__func__.1592+0x3c1>
c010bb78:	45                   	inc    ebp
c010bb79:	78 63                	js     c010bbde <__func__.1592+0x407>
c010bb7b:	65 70 74             	gs jo  c010bbf2 <__func__.1592+0x41b>
c010bb7e:	69 6f 6e 00 00 00 23 	imul   ebp,DWORD PTR [edi+0x6e],0x23000000
c010bb85:	47                   	inc    edi
c010bb86:	50                   	push   eax
c010bb87:	20 47 65             	and    BYTE PTR [edi+0x65],al
c010bb8a:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010bb8b:	65 72 61             	gs jb  c010bbef <__func__.1592+0x418>
c010bb8e:	6c                   	ins    BYTE PTR es:[edi],dx
c010bb8f:	20 50 72             	and    BYTE PTR [eax+0x72],dl
c010bb92:	6f                   	outs   dx,DWORD PTR ds:[esi]
c010bb93:	74 65                	je     c010bbfa <__func__.1592+0x423>
c010bb95:	63 74 69 6f          	arpl   WORD PTR [ecx+ebp*2+0x6f],si
c010bb99:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010bb9a:	20 45 78             	and    BYTE PTR [ebp+0x78],al
c010bb9d:	63 65 70             	arpl   WORD PTR [ebp+0x70],sp
c010bba0:	74 69                	je     c010bc0b <__func__.1592+0x434>
c010bba2:	6f                   	outs   dx,DWORD PTR ds:[esi]
c010bba3:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010bba4:	00 23                	add    BYTE PTR [ebx],ah
c010bba6:	50                   	push   eax
c010bba7:	46                   	inc    esi
c010bba8:	20 50 61             	and    BYTE PTR [eax+0x61],dl
c010bbab:	67 65 2d 46 61 75 6c 	addr16 gs sub eax,0x6c756146
c010bbb2:	74 20                	je     c010bbd4 <__func__.1592+0x3fd>
c010bbb4:	45                   	inc    ebp
c010bbb5:	78 63                	js     c010bc1a <__func__.1592+0x443>
c010bbb7:	65 70 74             	gs jo  c010bc2e <__func__.1592+0x457>
c010bbba:	69 6f 6e 00 52 65 73 	imul   ebp,DWORD PTR [edi+0x6e],0x73655200
c010bbc1:	65 72 76             	gs jb  c010bc3a <__func__.1592+0x463>
c010bbc4:	65 64 00 00          	gs add BYTE PTR fs:[eax],al
c010bbc8:	23 4d 46             	and    ecx,DWORD PTR [ebp+0x46]
c010bbcb:	20 78 38             	and    BYTE PTR [eax+0x38],bh
c010bbce:	37                   	aaa    
c010bbcf:	20 46 50             	and    BYTE PTR [esi+0x50],al
c010bbd2:	55                   	push   ebp
c010bbd3:	20 46 6c             	and    BYTE PTR [esi+0x6c],al
c010bbd6:	6f                   	outs   dx,DWORD PTR ds:[esi]
c010bbd7:	61                   	popa   
c010bbd8:	74 69                	je     c010bc43 <__func__.1592+0x46c>
c010bbda:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010bbdb:	67 2d 50 6f 69 6e    	addr16 sub eax,0x6e696f50
c010bbe1:	74 20                	je     c010bc03 <__func__.1592+0x42c>
c010bbe3:	45                   	inc    ebp
c010bbe4:	72 72                	jb     c010bc58 <__func__.1592+0x481>
c010bbe6:	6f                   	outs   dx,DWORD PTR ds:[esi]
c010bbe7:	72 00                	jb     c010bbe9 <__func__.1592+0x412>
c010bbe9:	23 41 43             	and    eax,DWORD PTR [ecx+0x43]
c010bbec:	20 41 6c             	and    BYTE PTR [ecx+0x6c],al
c010bbef:	69 67 6e 6d 65 6e 74 	imul   esp,DWORD PTR [edi+0x6e],0x746e656d
c010bbf6:	20 43 68             	and    BYTE PTR [ebx+0x68],al
c010bbf9:	65 63 6b 20          	arpl   WORD PTR gs:[ebx+0x20],bp
c010bbfd:	45                   	inc    ebp
c010bbfe:	78 63                	js     c010bc63 <__func__.1592+0x48c>
c010bc00:	65 70 74             	gs jo  c010bc77 <__func__.1592+0x4a0>
c010bc03:	69 6f 6e 00 23 4d 43 	imul   ebp,DWORD PTR [edi+0x6e],0x434d2300
c010bc0a:	20 4d 61             	and    BYTE PTR [ebp+0x61],cl
c010bc0d:	63 68 69             	arpl   WORD PTR [eax+0x69],bp
c010bc10:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010bc11:	65 2d 43 68 65 63    	gs sub eax,0x63656843
c010bc17:	6b 20 45             	imul   esp,DWORD PTR [eax],0x45
c010bc1a:	78 63                	js     c010bc7f <__func__.1592+0x4a8>
c010bc1c:	65 70 74             	gs jo  c010bc93 <__func__.1592+0x4bc>
c010bc1f:	69 6f 6e 00 00 23 58 	imul   ebp,DWORD PTR [edi+0x6e],0x58230000
c010bc26:	46                   	inc    esi
c010bc27:	20 53 49             	and    BYTE PTR [ebx+0x49],dl
c010bc2a:	4d                   	dec    ebp
c010bc2b:	44                   	inc    esp
c010bc2c:	20 46 6c             	and    BYTE PTR [esi+0x6c],al
c010bc2f:	6f                   	outs   dx,DWORD PTR ds:[esi]
c010bc30:	61                   	popa   
c010bc31:	74 69                	je     c010bc9c <__func__.1592+0x4c5>
c010bc33:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010bc34:	67 2d 50 6f 69 6e    	addr16 sub eax,0x6e696f50
c010bc3a:	74 20                	je     c010bc5c <__func__.1592+0x485>
c010bc3c:	45                   	inc    ebp
c010bc3d:	78 63                	js     c010bca2 <__func__.1592+0x4cb>
c010bc3f:	65 70 74             	gs jo  c010bcb6 <__func__.1592+0x4df>
c010bc42:	69 6f 6e 00 00 00 50 	imul   ebp,DWORD PTR [edi+0x6e],0x50000000
c010bc49:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c010bc4b:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c010bc4e:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c010bc53:	65 6c                	gs ins BYTE PTR es:[edi],dx
c010bc55:	20 28                	and    BYTE PTR [eax],ch
c010bc57:	50                   	push   eax
c010bc58:	4b                   	dec    ebx
c010bc59:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010bc5a:	29 20                	sub    DWORD PTR [eax],esp
c010bc5c:	30 2e                	xor    BYTE PTR [esi],ch
c010bc5e:	30 2e                	xor    BYTE PTR [esi],ch
c010bc60:	31 20                	xor    DWORD PTR [eax],esp
c010bc62:	41                   	inc    ecx
c010bc63:	75 67                	jne    c010bccc <__func__.1592+0x4f5>
c010bc65:	2e 00 00             	add    BYTE PTR cs:[eax],al
c010bc68:	21 28                	and    DWORD PTR [eax],ebp
c010bc6a:	6c                   	ins    BYTE PTR es:[edi],dx
c010bc6b:	69 73 74 5f 66 69 6e 	imul   esi,DWORD PTR [ebx+0x74],0x6e69665f
c010bc72:	64 28 26             	sub    BYTE PTR fs:[esi],ah
c010bc75:	28 61 2d             	sub    BYTE PTR [ecx+0x2d],ah
c010bc78:	3e 64 65 73 63       	ds fs gs jae c010bce0 <__func__.1592+0x509>
c010bc7d:	2d 3e 66 72 65       	sub    eax,0x6572663e
c010bc82:	65 5f                	gs pop edi
c010bc84:	6c                   	ins    BYTE PTR es:[edi],dx
c010bc85:	69 73 74 29 2c 26 28 	imul   esi,DWORD PTR [ebx+0x74],0x28262c29
c010bc8c:	62 2d 3e 66 72 65    	bound  ebp,QWORD PTR ds:0x6572663e
c010bc92:	65 29 29             	sub    DWORD PTR gs:[ecx],ebp
c010bc95:	29 00                	sub    DWORD PTR [eax],eax
c010bc97:	6d                   	ins    DWORD PTR es:[edi],dx
c010bc98:	65 6d                	gs ins DWORD PTR es:[edi],dx
c010bc9a:	6f                   	outs   dx,DWORD PTR ds:[esi]
c010bc9b:	72 79                	jb     c010bd16 <__func__.1319+0x4>
c010bc9d:	2f                   	das    
c010bc9e:	61                   	popa   
c010bc9f:	72 65                	jb     c010bd06 <__func__.1592+0x52f>
c010bca1:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010bca2:	61                   	popa   
c010bca3:	2e 63 00             	arpl   WORD PTR cs:[eax],ax
c010bca6:	00 00                	add    BYTE PTR [eax],al
c010bca8:	61                   	popa   
c010bca9:	2d 3e 64 65 73       	sub    eax,0x7365643e
c010bcae:	63 20                	arpl   WORD PTR [eax],sp
c010bcb0:	3d 3d 20 4e 55       	cmp    eax,0x554e203d
c010bcb5:	4c                   	dec    esp
c010bcb6:	4c                   	dec    esp
c010bcb7:	20 26                	and    BYTE PTR [esi],ah
c010bcb9:	26 20 61 2d          	and    BYTE PTR es:[ecx+0x2d],ah
c010bcbd:	3e 63 6e 74          	arpl   WORD PTR ds:[esi+0x74],bp
c010bcc1:	20 3d 3d 20 70 67    	and    BYTE PTR ds:0x6770203d,bh
c010bcc7:	5f                   	pop    edi
c010bcc8:	63 6e 74             	arpl   WORD PTR [esi+0x74],bp
c010bccb:	20 26                	and    BYTE PTR [esi],ah
c010bccd:	26 20 61 2d          	and    BYTE PTR es:[ecx+0x2d],ah
c010bcd1:	3e 6c                	ds ins BYTE PTR es:[edi],dx
c010bcd3:	61                   	popa   
c010bcd4:	72 67                	jb     c010bd3d <__func__.1319+0x2b>
c010bcd6:	65 20 3d 3d 20 74 72 	and    BYTE PTR gs:0x7274203d,bh
c010bcdd:	75 65                	jne    c010bd44 <__func__.1319+0x32>
c010bcdf:	00 6c 69 73          	add    BYTE PTR [ecx+ebp*2+0x73],ch
c010bce3:	74 5f                	je     c010bd44 <__func__.1319+0x32>
c010bce5:	66 69 6e 64 28 26    	imul   bp,WORD PTR [esi+0x64],0x2628
c010bceb:	28 61 2d             	sub    BYTE PTR [ecx+0x2d],ah
c010bcee:	3e 64 65 73 63       	ds fs gs jae c010bd56 <__func__.1319+0x44>
c010bcf3:	2d 3e 66 72 65       	sub    eax,0x6572663e
c010bcf8:	65 5f                	gs pop edi
c010bcfa:	6c                   	ins    BYTE PTR es:[edi],dx
c010bcfb:	69 73 74 29 2c 26 28 	imul   esi,DWORD PTR [ebx+0x74],0x28262c29
c010bd02:	62 2d 3e 66 72 65    	bound  ebp,QWORD PTR ds:0x6572663e
c010bd08:	65 29 29             	sub    DWORD PTR gs:[ecx],ebp
	...

c010bd0c <__func__.1333>:
c010bd0c:	6b 66 72 65          	imul   esp,DWORD PTR [esi+0x72],0x65
c010bd10:	65 00 6b 6d          	add    BYTE PTR gs:[ebx+0x6d],ch

c010bd12 <__func__.1319>:
c010bd12:	6b 6d 61 6c          	imul   ebp,DWORD PTR [ebp+0x61],0x6c
c010bd16:	6c                   	ins    BYTE PTR es:[edi],dx
c010bd17:	6f                   	outs   dx,DWORD PTR ds:[esi]
c010bd18:	63 00                	arpl   WORD PTR [eax],ax
c010bd1a:	00 00                	add    BYTE PTR [eax],al
c010bd1c:	50                   	push   eax
c010bd1d:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c010bd1f:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c010bd22:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c010bd27:	65 6c                	gs ins BYTE PTR es:[edi],dx
c010bd29:	20 28                	and    BYTE PTR [eax],ch
c010bd2b:	50                   	push   eax
c010bd2c:	4b                   	dec    ebx
c010bd2d:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010bd2e:	29 20                	sub    DWORD PTR [eax],esp
c010bd30:	30 2e                	xor    BYTE PTR [esi],ch
c010bd32:	30 2e                	xor    BYTE PTR [esi],ch
c010bd34:	31 20                	xor    DWORD PTR [eax],esp
c010bd36:	41                   	inc    ecx
c010bd37:	75 67                	jne    c010bda0 <__func__.1319+0x8e>
c010bd39:	2e 00 4e 6f          	add    BYTE PTR cs:[esi+0x6f],cl
c010bd3d:	20 4d 65             	and    BYTE PTR [ebp+0x65],cl
c010bd40:	6d                   	ins    DWORD PTR es:[edi],dx
c010bd41:	6f                   	outs   dx,DWORD PTR ds:[esi]
c010bd42:	72 79                	jb     c010bdbd <__func__.1319+0xab>
c010bd44:	20 61 76             	and    BYTE PTR [ecx+0x76],ah
c010bd47:	61                   	popa   
c010bd48:	69 6c 61 62 6c 65 21 	imul   ebp,DWORD PTR [ecx+eiz*2+0x62],0x21656c
c010bd4f:	00 
c010bd50:	6d                   	ins    DWORD PTR es:[edi],dx
c010bd51:	65 6d                	gs ins DWORD PTR es:[edi],dx
c010bd53:	6f                   	outs   dx,DWORD PTR ds:[esi]
c010bd54:	72 79                	jb     c010bdcf <__func__.1319+0xbd>
c010bd56:	2f                   	das    
c010bd57:	6d                   	ins    DWORD PTR es:[edi],dx
c010bd58:	65 6d                	gs ins DWORD PTR es:[edi],dx
c010bd5a:	6f                   	outs   dx,DWORD PTR ds:[esi]
c010bd5b:	72 79                	jb     c010bdd6 <__func__.1319+0xc4>
c010bd5d:	2e 63 00             	arpl   WORD PTR cs:[eax],ax
c010bd60:	70 61                	jo     c010bdc3 <__func__.1319+0xb1>
c010bd62:	67 65 73 20          	addr16 gs jae c010bd86 <__func__.1319+0x74>
c010bd66:	21 3d 20 30 00 66    	and    DWORD PTR ds:0x66003020,edi
c010bd6c:	72 65                	jb     c010bdd3 <__func__.1319+0xc1>
c010bd6e:	65 20 21             	and    BYTE PTR gs:[ecx],ah
c010bd71:	3d 20 4e 55 4c       	cmp    eax,0x4c554e20
c010bd76:	4c                   	dec    esp
c010bd77:	00 21                	add    BYTE PTR [ecx],ah
c010bd79:	28 2a                	sub    BYTE PTR [edx],ch
c010bd7b:	70 74                	jo     c010bdf1 <__func__.1319+0xdf>
c010bd7d:	65 20 26             	and    BYTE PTR gs:[esi],ah
c010bd80:	20 30                	and    BYTE PTR [eax],dh
c010bd82:	78 30                	js     c010bdb4 <__func__.1319+0xa2>
c010bd84:	30 30                	xor    BYTE PTR [eax],dh
c010bd86:	30 30                	xor    BYTE PTR [eax],dh
c010bd88:	30 30                	xor    BYTE PTR [eax],dh
c010bd8a:	31 29                	xor    DWORD PTR [ecx],ebp
c010bd8c:	00 00                	add    BYTE PTR [eax],al
c010bd8e:	00 00                	add    BYTE PTR [eax],al
c010bd90:	67 65 74 5f          	addr16 gs je c010bdf3 <__func__.1319+0xe1>
c010bd94:	61                   	popa   
c010bd95:	5f                   	pop    edi
c010bd96:	70 61                	jo     c010bdf9 <__func__.1319+0xe7>
c010bd98:	67 65 3a 20          	cmp    ah,BYTE PTR gs:[bx+si]
c010bd9c:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010bd9d:	6f                   	outs   dx,DWORD PTR ds:[esi]
c010bd9e:	74 20                	je     c010bdc0 <__func__.1319+0xae>
c010bda0:	61                   	popa   
c010bda1:	6c                   	ins    BYTE PTR es:[edi],dx
c010bda2:	6c                   	ins    BYTE PTR es:[edi],dx
c010bda3:	6f                   	outs   dx,DWORD PTR ds:[esi]
c010bda4:	77 20                	ja     c010bdc6 <__func__.1319+0xb4>
c010bda6:	6b 65 72 6e          	imul   esp,DWORD PTR [ebp+0x72],0x6e
c010bdaa:	65 6c                	gs ins BYTE PTR es:[edi],dx
c010bdac:	20 61 6c             	and    BYTE PTR [ecx+0x6c],ah
c010bdaf:	6c                   	ins    BYTE PTR es:[edi],dx
c010bdb0:	6f                   	outs   dx,DWORD PTR ds:[esi]
c010bdb1:	63 20                	arpl   WORD PTR [eax],sp
c010bdb3:	75 73                	jne    c010be28 <__func__.1319+0x116>
c010bdb5:	65 72 73             	gs jb  c010be2b <__func__.1319+0x119>
c010bdb8:	70 61                	jo     c010be1b <__func__.1319+0x109>
c010bdba:	63 65 20             	arpl   WORD PTR [ebp+0x20],sp
c010bdbd:	6f                   	outs   dx,DWORD PTR ds:[esi]
c010bdbe:	72 20                	jb     c010bde0 <__func__.1319+0xce>
c010bdc0:	75 73                	jne    c010be35 <__func__.1319+0x123>
c010bdc2:	65 72 20             	gs jb  c010bde5 <__func__.1319+0xd3>
c010bdc5:	61                   	popa   
c010bdc6:	6c                   	ins    BYTE PTR es:[edi],dx
c010bdc7:	6c                   	ins    BYTE PTR es:[edi],dx
c010bdc8:	6f                   	outs   dx,DWORD PTR ds:[esi]
c010bdc9:	63 20                	arpl   WORD PTR [eax],sp
c010bdcb:	6b 65 72 6e          	imul   esp,DWORD PTR [ebp+0x72],0x6e
c010bdcf:	65 6c                	gs ins BYTE PTR es:[edi],dx
c010bdd1:	73 70                	jae    c010be43 <__func__.1319+0x131>
c010bdd3:	61                   	popa   
c010bdd4:	63 65 20             	arpl   WORD PTR [ebp+0x20],sp
c010bdd7:	62 79 20             	bound  edi,QWORD PTR [ecx+0x20]
c010bdda:	67 65 74 5f          	addr16 gs je c010be3d <__func__.1319+0x12b>
c010bdde:	61                   	popa   
c010bddf:	5f                   	pop    edi
c010bde0:	70 61                	jo     c010be43 <__func__.1319+0x131>
c010bde2:	67 65 28 29          	sub    BYTE PTR gs:[bx+di],ch
c010bde6:	00 70 61             	add    BYTE PTR [eax+0x61],dh
c010bde9:	67 65 5f             	addr16 gs pop edi
c010bdec:	70 61                	jo     c010be4f <__func__.1319+0x13d>
c010bdee:	64 64 72 20          	fs fs jb c010be12 <__func__.1319+0x100>
c010bdf2:	21 3d 20 4e 55 4c    	and    DWORD PTR ds:0x4c554e20,edi
c010bdf8:	4c                   	dec    esp
c010bdf9:	00 50 61             	add    BYTE PTR [eax+0x61],dl
c010bdfc:	67 65 20 46 72       	and    BYTE PTR gs:[bp+0x72],al
c010be01:	65 65 20 45 72       	gs and BYTE PTR gs:[ebp+0x72],al
c010be06:	72 6f                	jb     c010be77 <__func__.1319+0x165>
c010be08:	72 20                	jb     c010be2a <__func__.1319+0x118>
c010be0a:	21 00                	and    DWORD PTR [eax],eax
c010be0c:	66 72 65             	data16 jb c010be74 <__func__.1319+0x162>
c010be0f:	65 5f                	gs pop edi
c010be11:	70 67                	jo     c010be7a <__func__.1319+0x168>
c010be13:	5f                   	pop    edi
c010be14:	63 6e 74             	arpl   WORD PTR [esi+0x74],bp
c010be17:	20 3e                	and    BYTE PTR [esi],bh
c010be19:	3d 20 31 20 26       	cmp    eax,0x26203120
c010be1e:	26 20 28             	and    BYTE PTR es:[eax],ch
c010be21:	75 69                	jne    c010be8c <__func__.1319+0x17a>
c010be23:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010be24:	74 33                	je     c010be59 <__func__.1319+0x147>
c010be26:	32 5f 74             	xor    bl,BYTE PTR [edi+0x74]
c010be29:	29 70 76             	sub    DWORD PTR [eax+0x76],esi
c010be2c:	61                   	popa   
c010be2d:	64 64 72 20          	fs fs jb c010be51 <__func__.1319+0x13f>
c010be31:	25 20 50 47 5f       	and    eax,0x5f475020
c010be36:	53                   	push   ebx
c010be37:	49                   	dec    ecx
c010be38:	5a                   	pop    edx
c010be39:	45                   	inc    ebp
c010be3a:	20 3d 3d 20 30 00    	and    BYTE PTR ds:0x30203d,bh
c010be40:	28 28                	sub    BYTE PTR [eax],ch
c010be42:	70 74                	jo     c010beb8 <__func__.1332+0x5>
c010be44:	72 5f                	jb     c010bea5 <__func__.1374+0x7>
c010be46:	74 29                	je     c010be71 <__func__.1319+0x15f>
c010be48:	70 67                	jo     c010beb1 <__func__.1352+0x9>
c010be4a:	5f                   	pop    edi
c010be4b:	70 61                	jo     c010beae <__func__.1352+0x6>
c010be4d:	64 64 72 20          	fs fs jb c010be71 <__func__.1319+0x15f>
c010be51:	25 20 50 47 5f       	and    eax,0x5f475020
c010be56:	53                   	push   ebx
c010be57:	49                   	dec    ecx
c010be58:	5a                   	pop    edx
c010be59:	45                   	inc    ebp
c010be5a:	29 20                	sub    DWORD PTR [eax],esp
c010be5c:	3d 3d 20 30 20       	cmp    eax,0x2030203d
c010be61:	26 26 20 28          	es and BYTE PTR es:[eax],ch
c010be65:	28 70 74             	sub    BYTE PTR [eax+0x74],dh
c010be68:	72 5f                	jb     c010bec9 <__func__.1304+0xb>
c010be6a:	74 29                	je     c010be95 <__func__.1319+0x183>
c010be6c:	70 67                	jo     c010bed5 <__func__.1264+0x8>
c010be6e:	5f                   	pop    edi
c010be6f:	70 61                	jo     c010bed2 <__func__.1264+0x5>
c010be71:	64 64 72 29          	fs fs jb c010be9e <__func__.1374>
c010be75:	20 3e                	and    BYTE PTR [esi],bh
c010be77:	3d 20 4b 45 52       	cmp    eax,0x52454b20
c010be7c:	4e                   	dec    esi
c010be7d:	45                   	inc    ebp
c010be7e:	4c                   	dec    esp
c010be7f:	5f                   	pop    edi
c010be80:	50                   	push   eax
c010be81:	41                   	inc    ecx
c010be82:	47                   	inc    edi
c010be83:	45                   	inc    ebp
c010be84:	5f                   	pop    edi
c010be85:	44                   	inc    esp
c010be86:	49                   	dec    ecx
c010be87:	52                   	push   edx
c010be88:	5f                   	pop    edi
c010be89:	54                   	push   esp
c010be8a:	41                   	inc    ecx
c010be8b:	42                   	inc    edx
c010be8c:	4c                   	dec    esp
c010be8d:	45                   	inc    ebp
c010be8e:	5f                   	pop    edi
c010be8f:	50                   	push   eax
c010be90:	4f                   	dec    edi
c010be91:	53                   	push   ebx
c010be92:	20 2b                	and    BYTE PTR [ebx],ch
c010be94:	20 30                	and    BYTE PTR [eax],dh
c010be96:	78 32                	js     c010beca <__func__.1304+0xc>
c010be98:	30 30                	xor    BYTE PTR [eax],dh
c010be9a:	30 30                	xor    BYTE PTR [eax],dh
c010be9c:	30 00                	xor    BYTE PTR [eax],al

c010be9e <__func__.1374>:
c010be9e:	70 61                	jo     c010bf01 <__func__.1254+0x28>
c010bea0:	67 65 5f             	addr16 gs pop edi
c010bea3:	66 72 65             	data16 jb c010bf0b <__func__.1254+0x32>
c010bea6:	65 00 70 67          	add    BYTE PTR gs:[eax+0x67],dh

c010bea8 <__func__.1352>:
c010bea8:	70 67                	jo     c010bf11 <__func__.1254+0x38>
c010beaa:	6d                   	ins    DWORD PTR es:[edi],dx
c010beab:	61                   	popa   
c010beac:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010bead:	5f                   	pop    edi
c010beae:	66 72 65             	data16 jb c010bf16 <__func__.1254+0x3d>
c010beb1:	65 00 67 65          	add    BYTE PTR gs:[edi+0x65],ah

c010beb3 <__func__.1332>:
c010beb3:	67 65 74 5f          	addr16 gs je c010bf16 <__func__.1254+0x3d>
c010beb7:	61                   	popa   
c010beb8:	5f                   	pop    edi
c010beb9:	70 61                	jo     c010bf1c <__func__.1254+0x43>
c010bebb:	67 65 00 70 61       	add    BYTE PTR gs:[bx+si+0x61],dh

c010bebe <__func__.1304>:
c010bebe:	70 61                	jo     c010bf21 <__func__.1254+0x48>
c010bec0:	67 65 5f             	addr16 gs pop edi
c010bec3:	74 61                	je     c010bf26 <__func__.1254+0x4d>
c010bec5:	62 6c 65 5f          	bound  ebp,QWORD PTR [ebp+eiz*2+0x5f]
c010bec9:	61                   	popa   
c010beca:	64 64 00 69 6e       	fs add BYTE PTR fs:[ecx+0x6e],ch

c010becd <__func__.1264>:
c010becd:	69 6e 69 74 5f 6d 65 	imul   ebp,DWORD PTR [esi+0x69],0x656d5f74
c010bed4:	6d                   	ins    DWORD PTR es:[edi],dx
c010bed5:	6d                   	ins    DWORD PTR es:[edi],dx
c010bed6:	61                   	popa   
c010bed7:	6e                   	outs   dx,BYTE PTR ds:[esi]
	...

c010bed9 <__func__.1254>:
c010bed9:	69 6e 69 74 5f 6d 65 	imul   ebp,DWORD PTR [esi+0x69],0x656d5f74
c010bee0:	6d                   	ins    DWORD PTR es:[edi],dx
c010bee1:	6f                   	outs   dx,DWORD PTR ds:[esi]
c010bee2:	72 79                	jb     c010bf5d <__func__.1254+0x84>
c010bee4:	00 00                	add    BYTE PTR [eax],al
c010bee6:	00 00                	add    BYTE PTR [eax],al
c010bee8:	50                   	push   eax
c010bee9:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c010beeb:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c010beee:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c010bef3:	65 6c                	gs ins BYTE PTR es:[edi],dx
c010bef5:	20 28                	and    BYTE PTR [eax],ch
c010bef7:	50                   	push   eax
c010bef8:	4b                   	dec    ebx
c010bef9:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010befa:	29 20                	sub    DWORD PTR [eax],esp
c010befc:	30 2e                	xor    BYTE PTR [esi],ch
c010befe:	30 2e                	xor    BYTE PTR [esi],ch
c010bf00:	31 20                	xor    DWORD PTR [eax],esp
c010bf02:	41                   	inc    ecx
c010bf03:	75 67                	jne    c010bf6c <__func__.1254+0x93>
c010bf05:	2e 00 70 73          	add    BYTE PTR cs:[eax+0x73],dh
c010bf09:	65 6d                	gs ins DWORD PTR es:[edi],dx
c010bf0b:	61                   	popa   
c010bf0c:	2d 3e 76 61 6c       	sub    eax,0x6c61763e
c010bf11:	75 65                	jne    c010bf78 <__func__.1254+0x9f>
c010bf13:	20 3d 3d 20 76 61    	and    BYTE PTR ds:0x6176203d,bh
c010bf19:	6c                   	ins    BYTE PTR es:[edi],dx
c010bf1a:	75 65                	jne    c010bf81 <__func__.1254+0xa8>
c010bf1c:	00 74 68 72          	add    BYTE PTR [eax+ebp*2+0x72],dh
c010bf20:	65 61                	gs popa 
c010bf22:	64 2f                	fs das 
c010bf24:	73 79                	jae    c010bf9f <__func__.1254+0xc6>
c010bf26:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010bf27:	63 2e                	arpl   WORD PTR [esi],bp
c010bf29:	63 00                	arpl   WORD PTR [eax],ax
c010bf2b:	00 21                	add    BYTE PTR [ecx],ah
c010bf2d:	28 6c 69 73          	sub    BYTE PTR [ecx+ebp*2+0x73],ch
c010bf31:	74 5f                	je     c010bf92 <__func__.1254+0xb9>
c010bf33:	66 69 6e 64 28 26    	imul   bp,WORD PTR [esi+0x64],0x2628
c010bf39:	28 70 73             	sub    BYTE PTR [eax+0x73],dh
c010bf3c:	65 6d                	gs ins DWORD PTR es:[edi],dx
c010bf3e:	61                   	popa   
c010bf3f:	2d 3e 77 61 69       	sub    eax,0x6961773e
c010bf44:	74 65                	je     c010bfab <__func__.1254+0xd2>
c010bf46:	72 73                	jb     c010bfbb <__func__.1254+0xe2>
c010bf48:	29 2c 26             	sub    DWORD PTR [esi+eiz*1],ebp
c010bf4b:	28 72 75             	sub    BYTE PTR [edx+0x75],dh
c010bf4e:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010bf4f:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010bf50:	69 6e 67 5f 74 68 72 	imul   ebp,DWORD PTR [esi+0x67],0x7268745f
c010bf57:	65 61                	gs popa 
c010bf59:	64 28 29             	sub    BYTE PTR fs:[ecx],ch
c010bf5c:	2d 3e 67 65 6e       	sub    eax,0x6e65673e
c010bf61:	65 72 61             	gs jb  c010bfc5 <__func__.1254+0xec>
c010bf64:	6c                   	ins    BYTE PTR es:[edi],dx
c010bf65:	5f                   	pop    edi
c010bf66:	74 61                	je     c010bfc9 <__func__.1254+0xf0>
c010bf68:	67 29 29             	sub    DWORD PTR [bx+di],ebp
c010bf6b:	29 00                	sub    DWORD PTR [eax],eax
c010bf6d:	00 00                	add    BYTE PTR [eax],al
c010bf6f:	00 73 65             	add    BYTE PTR [ebx+0x65],dh
c010bf72:	6d                   	ins    DWORD PTR es:[edi],dx
c010bf73:	61                   	popa   
c010bf74:	20 64 6f 77          	and    BYTE PTR [edi+ebp*2+0x77],ah
c010bf78:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010bf79:	3a 74 68 72          	cmp    dh,BYTE PTR [eax+ebp*2+0x72]
c010bf7d:	65 61                	gs popa 
c010bf7f:	64 20 62 6c          	and    BYTE PTR fs:[edx+0x6c],ah
c010bf83:	6f                   	outs   dx,DWORD PTR ds:[esi]
c010bf84:	63 6b 65             	arpl   WORD PTR [ebx+0x65],bp
c010bf87:	64 20 68 61          	and    BYTE PTR fs:[eax+0x61],ch
c010bf8b:	73 20                	jae    c010bfad <__func__.1254+0xd4>
c010bf8d:	62 65 65             	bound  esp,QWORD PTR [ebp+0x65]
c010bf90:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010bf91:	20 69 6e             	and    BYTE PTR [ecx+0x6e],ch
c010bf94:	20 77 61             	and    BYTE PTR [edi+0x61],dh
c010bf97:	69 74 65 72 73 20 6c 	imul   esi,DWORD PTR [ebp+eiz*2+0x72],0x696c2073
c010bf9e:	69 
c010bf9f:	73 74                	jae    c010c015 <__func__.1254+0x13c>
c010bfa1:	21 0a                	and    DWORD PTR [edx],ecx
c010bfa3:	00 72 75             	add    BYTE PTR [edx+0x75],dh
c010bfa6:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010bfa7:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010bfa8:	69 6e 67 5f 74 68 72 	imul   ebp,DWORD PTR [esi+0x67],0x7268745f
c010bfaf:	65 61                	gs popa 
c010bfb1:	64 28 29             	sub    BYTE PTR fs:[ecx],ch
c010bfb4:	2d 3e 67 65 6e       	sub    eax,0x6e65673e
c010bfb9:	65 72 61             	gs jb  c010c01d <__func__.1254+0x144>
c010bfbc:	6c                   	ins    BYTE PTR es:[edi],dx
c010bfbd:	5f                   	pop    edi
c010bfbe:	74 61                	je     c010c021 <__func__.1254+0x148>
c010bfc0:	67 2e 64 61          	addr16 cs fs popa 
c010bfc4:	74 61                	je     c010c027 <__func__.1254+0x14e>
c010bfc6:	20 3d 3d 20 72 75    	and    BYTE PTR ds:0x7572203d,bh
c010bfcc:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010bfcd:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010bfce:	69 6e 67 5f 74 68 72 	imul   ebp,DWORD PTR [esi+0x67],0x7268745f
c010bfd5:	65 61                	gs popa 
c010bfd7:	64 28 29             	sub    BYTE PTR fs:[ecx],ch
c010bfda:	00 70 73             	add    BYTE PTR [eax+0x73],dh
c010bfdd:	65 6d                	gs ins DWORD PTR es:[edi],dx
c010bfdf:	61                   	popa   
c010bfe0:	2d 3e 76 61 6c       	sub    eax,0x6c61763e
c010bfe5:	75 65                	jne    c010c04c <__func__.1254+0x173>
c010bfe7:	20 3d 3d 20 30 00    	and    BYTE PTR ds:0x30203d,bh
c010bfed:	70 73                	jo     c010c062 <__func__.1163+0x7>
c010bfef:	65 6d                	gs ins DWORD PTR es:[edi],dx
c010bff1:	61                   	popa   
c010bff2:	2d 3e 76 61 6c       	sub    eax,0x6c61763e
c010bff7:	75 65                	jne    c010c05e <__func__.1163+0x3>
c010bff9:	20 3d 3d 20 31 00    	and    BYTE PTR ds:0x31203d,bh
c010bfff:	70 6c                	jo     c010c06d <__func__.1159+0x5>
c010c001:	6f                   	outs   dx,DWORD PTR ds:[esi]
c010c002:	63 6b 2d             	arpl   WORD PTR [ebx+0x2d],bp
c010c005:	3e 68 6f 6c 64 65    	ds push 0x65646c6f
c010c00b:	72 5f                	jb     c010c06c <__func__.1159+0x4>
c010c00d:	72 65                	jb     c010c074 <__func__.1159+0xc>
c010c00f:	70 65                	jo     c010c076 <__func__.1154+0x1>
c010c011:	61                   	popa   
c010c012:	74 5f                	je     c010c073 <__func__.1159+0xb>
c010c014:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010c015:	72 20                	jb     c010c037 <__func__.1254+0x15e>
c010c017:	3d 3d 20 30 00       	cmp    eax,0x30203d
c010c01c:	70 6c                	jo     c010c08a <__func__.1138+0x3>
c010c01e:	6f                   	outs   dx,DWORD PTR ds:[esi]
c010c01f:	63 6b 2d             	arpl   WORD PTR [ebx+0x2d],bp
c010c022:	3e 68 6f 6c 64 65    	ds push 0x65646c6f
c010c028:	72 20                	jb     c010c04a <__func__.1254+0x171>
c010c02a:	3d 3d 20 72 75       	cmp    eax,0x7572203d
c010c02f:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010c030:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010c031:	69 6e 67 5f 74 68 72 	imul   ebp,DWORD PTR [esi+0x67],0x7268745f
c010c038:	65 61                	gs popa 
c010c03a:	64 28 29             	sub    BYTE PTR fs:[ecx],ch
c010c03d:	00 70 6c             	add    BYTE PTR [eax+0x6c],dh
c010c040:	6f                   	outs   dx,DWORD PTR ds:[esi]
c010c041:	63 6b 2d             	arpl   WORD PTR [ebx+0x2d],bp
c010c044:	3e 68 6f 6c 64 65    	ds push 0x65646c6f
c010c04a:	72 5f                	jb     c010c0ab <__func__.1138+0x24>
c010c04c:	72 65                	jb     c010c0b3 <__func__.1138+0x2c>
c010c04e:	70 65                	jo     c010c0b5 <__func__.1138+0x2e>
c010c050:	61                   	popa   
c010c051:	74 5f                	je     c010c0b2 <__func__.1138+0x2b>
c010c053:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010c054:	72 20                	jb     c010c076 <__func__.1154+0x1>
c010c056:	3d 3d 20 31 00       	cmp    eax,0x31203d

c010c05b <__func__.1163>:
c010c05b:	6c                   	ins    BYTE PTR es:[edi],dx
c010c05c:	6f                   	outs   dx,DWORD PTR ds:[esi]
c010c05d:	63 6b 5f             	arpl   WORD PTR [ebx+0x5f],bp
c010c060:	72 65                	jb     c010c0c7 <__func__.1138+0x40>
c010c062:	6c                   	ins    BYTE PTR es:[edi],dx
c010c063:	65 61                	gs popa 
c010c065:	73 65                	jae    c010c0cc <__func__.1138+0x45>
	...

c010c068 <__func__.1159>:
c010c068:	6c                   	ins    BYTE PTR es:[edi],dx
c010c069:	6f                   	outs   dx,DWORD PTR ds:[esi]
c010c06a:	63 6b 5f             	arpl   WORD PTR [ebx+0x5f],bp
c010c06d:	61                   	popa   
c010c06e:	63 71 75             	arpl   WORD PTR [ecx+0x75],si
c010c071:	69 72 65 00 73 65 6d 	imul   esi,DWORD PTR [edx+0x65],0x6d657300

c010c075 <__func__.1154>:
c010c075:	73 65                	jae    c010c0dc <__func__.1138+0x55>
c010c077:	6d                   	ins    DWORD PTR es:[edi],dx
c010c078:	61                   	popa   
c010c079:	5f                   	pop    edi
c010c07a:	75 70                	jne    c010c0ec <__func__.1138+0x65>
	...

c010c07d <__func__.1146>:
c010c07d:	73 65                	jae    c010c0e4 <__func__.1138+0x5d>
c010c07f:	6d                   	ins    DWORD PTR es:[edi],dx
c010c080:	61                   	popa   
c010c081:	5f                   	pop    edi
c010c082:	64 6f                	outs   dx,DWORD PTR fs:[esi]
c010c084:	77 6e                	ja     c010c0f4 <__func__.1138+0x6d>
	...

c010c087 <__func__.1138>:
c010c087:	73 65                	jae    c010c0ee <__func__.1138+0x67>
c010c089:	6d                   	ins    DWORD PTR es:[edi],dx
c010c08a:	61                   	popa   
c010c08b:	5f                   	pop    edi
c010c08c:	69 6e 69 74 00 00 00 	imul   ebp,DWORD PTR [esi+0x69],0x74
c010c093:	00 50 65             	add    BYTE PTR [eax+0x65],dl
c010c096:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010c097:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c010c09a:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c010c09f:	65 6c                	gs ins BYTE PTR es:[edi],dx
c010c0a1:	20 28                	and    BYTE PTR [eax],ch
c010c0a3:	50                   	push   eax
c010c0a4:	4b                   	dec    ebx
c010c0a5:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010c0a6:	29 20                	sub    DWORD PTR [eax],esp
c010c0a8:	30 2e                	xor    BYTE PTR [esi],ch
c010c0aa:	30 2e                	xor    BYTE PTR [esi],ch
c010c0ac:	31 20                	xor    DWORD PTR [eax],esp
c010c0ae:	41                   	inc    ecx
c010c0af:	75 67                	jne    c010c118 <__func__.1138+0x91>
c010c0b1:	2e 00 00             	add    BYTE PTR cs:[eax],al
c010c0b4:	21 6c 69 73          	and    DWORD PTR [ecx+ebp*2+0x73],ebp
c010c0b8:	74 5f                	je     c010c119 <__func__.1138+0x92>
c010c0ba:	66 69 6e 64 28 26    	imul   bp,WORD PTR [esi+0x64],0x2628
c010c0c0:	72 65                	jb     c010c127 <__func__.1138+0xa0>
c010c0c2:	61                   	popa   
c010c0c3:	64 79 5f             	fs jns c010c125 <__func__.1138+0x9e>
c010c0c6:	6c                   	ins    BYTE PTR es:[edi],dx
c010c0c7:	69 73 74 2c 26 28 74 	imul   esi,DWORD PTR [ebx+0x74],0x7428262c
c010c0ce:	68 72 65 61 64       	push   0x64616572
c010c0d3:	2d 3e 67 65 6e       	sub    eax,0x6e65673e
c010c0d8:	65 72 61             	gs jb  c010c13c <__func__.1138+0xb5>
c010c0db:	6c                   	ins    BYTE PTR es:[edi],dx
c010c0dc:	5f                   	pop    edi
c010c0dd:	74 61                	je     c010c140 <__func__.1138+0xb9>
c010c0df:	67 29 29             	sub    DWORD PTR [bx+di],ebp
c010c0e2:	00 74 68 72          	add    BYTE PTR [eax+ebp*2+0x72],dh
c010c0e6:	65 61                	gs popa 
c010c0e8:	64 2f                	fs das 
c010c0ea:	74 68                	je     c010c154 <__func__.1138+0xcd>
c010c0ec:	72 65                	jb     c010c153 <__func__.1138+0xcc>
c010c0ee:	61                   	popa   
c010c0ef:	64 2e 63 00          	fs arpl WORD PTR cs:[eax],ax
c010c0f3:	00 21                	add    BYTE PTR [ecx],ah
c010c0f5:	6c                   	ins    BYTE PTR es:[edi],dx
c010c0f6:	69 73 74 5f 66 69 6e 	imul   esi,DWORD PTR [ebx+0x74],0x6e69665f
c010c0fd:	64 28 26             	sub    BYTE PTR fs:[esi],ah
c010c100:	61                   	popa   
c010c101:	6c                   	ins    BYTE PTR es:[edi],dx
c010c102:	6c                   	ins    BYTE PTR es:[edi],dx
c010c103:	5f                   	pop    edi
c010c104:	6c                   	ins    BYTE PTR es:[edi],dx
c010c105:	69 73 74 2c 26 28 74 	imul   esi,DWORD PTR [ebx+0x74],0x7428262c
c010c10c:	68 72 65 61 64       	push   0x64616572
c010c111:	2d 3e 61 6c 6c       	sub    eax,0x6c6c613e
c010c116:	5f                   	pop    edi
c010c117:	74 61                	je     c010c17a <__func__.1138+0xf3>
c010c119:	67 29 29             	sub    DWORD PTR [bx+di],ebp
c010c11c:	00 4d 61             	add    BYTE PTR [ebp+0x61],cl
c010c11f:	69 6e 20 74 68 72 65 	imul   ebp,DWORD PTR [esi+0x20],0x65726874
c010c126:	61                   	popa   
c010c127:	64 00 00             	add    BYTE PTR fs:[eax],al
c010c12a:	00 00                	add    BYTE PTR [eax],al
c010c12c:	63 75 72             	arpl   WORD PTR [ebp+0x72],si
c010c12f:	5f                   	pop    edi
c010c130:	74 68                	je     c010c19a <__func__.1138+0x113>
c010c132:	72 65                	jb     c010c199 <__func__.1138+0x112>
c010c134:	61                   	popa   
c010c135:	64 2d 3e 73 74 61    	fs sub eax,0x6174733e
c010c13b:	63 6b 5f             	arpl   WORD PTR [ebx+0x5f],bp
c010c13e:	6d                   	ins    DWORD PTR es:[edi],dx
c010c13f:	61                   	popa   
c010c140:	67 69 63 20 3d 3d 20 	imul   esp,DWORD PTR [bp+di+0x20],0x30203d3d
c010c147:	30 
c010c148:	78 31                	js     c010c17b <__func__.1138+0xf4>
c010c14a:	32 33                	xor    dh,BYTE PTR [ebx]
c010c14c:	34 35                	xor    al,0x35
c010c14e:	36 37                	ss aaa 
c010c150:	38 00                	cmp    BYTE PTR [eax],al
c010c152:	00 00                	add    BYTE PTR [eax],al
c010c154:	21 28                	and    DWORD PTR [eax],ebp
c010c156:	6c                   	ins    BYTE PTR es:[edi],dx
c010c157:	69 73 74 5f 66 69 6e 	imul   esi,DWORD PTR [ebx+0x74],0x6e69665f
c010c15e:	64 28 26             	sub    BYTE PTR fs:[esi],ah
c010c161:	72 65                	jb     c010c1c8 <__func__.1138+0x141>
c010c163:	61                   	popa   
c010c164:	64 79 5f             	fs jns c010c1c6 <__func__.1138+0x13f>
c010c167:	6c                   	ins    BYTE PTR es:[edi],dx
c010c168:	69 73 74 2c 26 28 63 	imul   esi,DWORD PTR [ebx+0x74],0x6328262c
c010c16f:	75 72                	jne    c010c1e3 <__func__.1138+0x15c>
c010c171:	5f                   	pop    edi
c010c172:	74 68                	je     c010c1dc <__func__.1138+0x155>
c010c174:	72 65                	jb     c010c1db <__func__.1138+0x154>
c010c176:	61                   	popa   
c010c177:	64 2d 3e 67 65 6e    	fs sub eax,0x6e65673e
c010c17d:	65 72 61             	gs jb  c010c1e1 <__func__.1138+0x15a>
c010c180:	6c                   	ins    BYTE PTR es:[edi],dx
c010c181:	5f                   	pop    edi
c010c182:	74 61                	je     c010c1e5 <__func__.1138+0x15e>
c010c184:	67 29 29             	sub    DWORD PTR [bx+di],ebp
c010c187:	29 00                	sub    DWORD PTR [eax],eax
c010c189:	21 28                	and    DWORD PTR [eax],ebp
c010c18b:	6c                   	ins    BYTE PTR es:[edi],dx
c010c18c:	69 73 74 5f 65 6d 70 	imul   esi,DWORD PTR [ebx+0x74],0x706d655f
c010c193:	74 79                	je     c010c20e <__func__.1138+0x187>
c010c195:	28 26                	sub    BYTE PTR [esi],ah
c010c197:	72 65                	jb     c010c1fe <__func__.1138+0x177>
c010c199:	61                   	popa   
c010c19a:	64 79 5f             	fs jns c010c1fc <__func__.1138+0x175>
c010c19d:	6c                   	ins    BYTE PTR es:[edi],dx
c010c19e:	69 73 74 29 29 00 72 	imul   esi,DWORD PTR [ebx+0x74],0x72002929
c010c1a5:	65 61                	gs popa 
c010c1a7:	64 79 5f             	fs jns c010c209 <__func__.1138+0x182>
c010c1aa:	6c                   	ins    BYTE PTR es:[edi],dx
c010c1ab:	69 73 74 2e 74 61 69 	imul   esi,DWORD PTR [ebx+0x74],0x6961742e
c010c1b2:	6c                   	ins    BYTE PTR es:[edi],dx
c010c1b3:	2e 70 72             	cs jo  c010c228 <__func__.1138+0x1a1>
c010c1b6:	65 76 20             	gs jbe c010c1d9 <__func__.1138+0x152>
c010c1b9:	21 3d 20 26 72 65    	and    DWORD PTR ds:0x65722620,edi
c010c1bf:	61                   	popa   
c010c1c0:	64 79 5f             	fs jns c010c222 <__func__.1138+0x19b>
c010c1c3:	6c                   	ins    BYTE PTR es:[edi],dx
c010c1c4:	69 73 74 2e 68 65 61 	imul   esi,DWORD PTR [ebx+0x74],0x6165682e
c010c1cb:	64 00 00             	add    BYTE PTR fs:[eax],al
c010c1ce:	00 00                	add    BYTE PTR [eax],al
c010c1d0:	73 74                	jae    c010c246 <__func__.1138+0x1bf>
c010c1d2:	61                   	popa   
c010c1d3:	74 75                	je     c010c24a <__func__.1138+0x1c3>
c010c1d5:	73 20                	jae    c010c1f7 <__func__.1138+0x170>
c010c1d7:	21 3d 20 54 41 53    	and    DWORD PTR ds:0x53415420,edi
c010c1dd:	4b                   	dec    ebx
c010c1de:	5f                   	pop    edi
c010c1df:	52                   	push   edx
c010c1e0:	55                   	push   ebp
c010c1e1:	4e                   	dec    esi
c010c1e2:	4e                   	dec    esi
c010c1e3:	49                   	dec    ecx
c010c1e4:	4e                   	dec    esi
c010c1e5:	47                   	inc    edi
c010c1e6:	20 26                	and    BYTE PTR [esi],ah
c010c1e8:	26 20 73 74          	and    BYTE PTR es:[ebx+0x74],dh
c010c1ec:	61                   	popa   
c010c1ed:	74 75                	je     c010c264 <__func__.1138+0x1dd>
c010c1ef:	73 20                	jae    c010c211 <__func__.1138+0x18a>
c010c1f1:	21 3d 20 54 41 53    	and    DWORD PTR ds:0x53415420,edi
c010c1f7:	4b                   	dec    ebx
c010c1f8:	5f                   	pop    edi
c010c1f9:	52                   	push   edx
c010c1fa:	45                   	inc    ebp
c010c1fb:	41                   	inc    ecx
c010c1fc:	44                   	inc    esp
c010c1fd:	59                   	pop    ecx
c010c1fe:	00 00                	add    BYTE PTR [eax],al
c010c200:	63 75 72             	arpl   WORD PTR [ebp+0x72],si
c010c203:	5f                   	pop    edi
c010c204:	74 68                	je     c010c26e <__func__.1138+0x1e7>
c010c206:	72 65                	jb     c010c26d <__func__.1138+0x1e6>
c010c208:	61                   	popa   
c010c209:	64 2d 3e 67 65 6e    	fs sub eax,0x6e65673e
c010c20f:	65 72 61             	gs jb  c010c273 <__func__.1138+0x1ec>
c010c212:	6c                   	ins    BYTE PTR es:[edi],dx
c010c213:	5f                   	pop    edi
c010c214:	74 61                	je     c010c277 <__func__.1138+0x1f0>
c010c216:	67 2e 64 61          	addr16 cs fs popa 
c010c21a:	74 61                	je     c010c27d <__func__.1138+0x1f6>
c010c21c:	20 3d 3d 20 63 75    	and    BYTE PTR ds:0x7563203d,bh
c010c222:	72 5f                	jb     c010c283 <__func__.1138+0x1fc>
c010c224:	74 68                	je     c010c28e <__func__.1412+0x5>
c010c226:	72 65                	jb     c010c28d <__func__.1412+0x4>
c010c228:	61                   	popa   
c010c229:	64 00 00             	add    BYTE PTR fs:[eax],al
c010c22c:	21 6c 69 73          	and    DWORD PTR [ecx+ebp*2+0x73],ebp
c010c230:	74 5f                	je     c010c291 <__func__.1412+0x8>
c010c232:	66 69 6e 64 28 26    	imul   bp,WORD PTR [esi+0x64],0x2628
c010c238:	72 65                	jb     c010c29f <__func__.1405+0x7>
c010c23a:	61                   	popa   
c010c23b:	64 79 5f             	fs jns c010c29d <__func__.1405+0x5>
c010c23e:	6c                   	ins    BYTE PTR es:[edi],dx
c010c23f:	69 73 74 2c 26 28 70 	imul   esi,DWORD PTR [ebx+0x74],0x7028262c
c010c246:	74 68                	je     c010c2b0 <__func__.1393+0x2>
c010c248:	72 65                	jb     c010c2af <__func__.1393+0x1>
c010c24a:	61                   	popa   
c010c24b:	64 2d 3e 67 65 6e    	fs sub eax,0x6e65673e
c010c251:	65 72 61             	gs jb  c010c2b5 <__func__.1393+0x7>
c010c254:	6c                   	ins    BYTE PTR es:[edi],dx
c010c255:	5f                   	pop    edi
c010c256:	74 61                	je     c010c2b9 <__func__.1393+0xb>
c010c258:	67 29 29             	sub    DWORD PTR [bx+di],ebp
c010c25b:	00 74 68 72          	add    BYTE PTR [eax+ebp*2+0x72],dh
c010c25f:	65 61                	gs popa 
c010c261:	64 20 75 6e          	and    BYTE PTR fs:[ebp+0x6e],dh
c010c265:	62 6c 6f 63          	bound  ebp,QWORD PTR [edi+ebp*2+0x63]
c010c269:	6b 3a 20             	imul   edi,DWORD PTR [edx],0x20
c010c26c:	62 6c 6f 63          	bound  ebp,QWORD PTR [edi+ebp*2+0x63]
c010c270:	6b 65 64 20          	imul   esp,DWORD PTR [ebp+0x64],0x20
c010c274:	74 68                	je     c010c2de <__func__.1393+0x30>
c010c276:	72 65                	jb     c010c2dd <__func__.1393+0x2f>
c010c278:	61                   	popa   
c010c279:	64 20 69 6e          	and    BYTE PTR fs:[ecx+0x6e],ch
c010c27d:	20 72 65             	and    BYTE PTR [edx+0x65],dh
c010c280:	61                   	popa   
c010c281:	64 79 20             	fs jns c010c2a4 <__func__.1405+0xc>
c010c284:	6c                   	ins    BYTE PTR es:[edi],dx
c010c285:	69 73 74 00 74 68 72 	imul   esi,DWORD PTR [ebx+0x74],0x72687400

c010c289 <__func__.1412>:
c010c289:	74 68                	je     c010c2f3 <__func__.1393+0x45>
c010c28b:	72 65                	jb     c010c2f2 <__func__.1393+0x44>
c010c28d:	61                   	popa   
c010c28e:	64 5f                	fs pop edi
c010c290:	75 6e                	jne    c010c300 <__func__.1393+0x52>
c010c292:	62 6c 6f 63          	bound  ebp,QWORD PTR [edi+ebp*2+0x63]
c010c296:	6b 00 74             	imul   eax,DWORD PTR [eax],0x74

c010c298 <__func__.1405>:
c010c298:	74 68                	je     c010c302 <__func__.1393+0x54>
c010c29a:	72 65                	jb     c010c301 <__func__.1393+0x53>
c010c29c:	61                   	popa   
c010c29d:	64 5f                	fs pop edi
c010c29f:	62 6c 6f 63          	bound  ebp,QWORD PTR [edi+ebp*2+0x63]
c010c2a3:	6b 00 73             	imul   eax,DWORD PTR [eax],0x73

c010c2a5 <__func__.1400>:
c010c2a5:	73 63                	jae    c010c30a <__func__.1393+0x5c>
c010c2a7:	68 65 64 75 6c       	push   0x6c756465
c010c2ac:	65 00 74 68 72       	add    BYTE PTR gs:[eax+ebp*2+0x72],dh

c010c2ae <__func__.1393>:
c010c2ae:	74 68                	je     c010c318 <__func__.1393+0x6a>
c010c2b0:	72 65                	jb     c010c317 <__func__.1393+0x69>
c010c2b2:	61                   	popa   
c010c2b3:	64 5f                	fs pop edi
c010c2b5:	73 74                	jae    c010c32b <__func__.1393+0x7d>
c010c2b7:	61                   	popa   
c010c2b8:	72 74                	jb     c010c32e <__func__.1393+0x80>
c010c2ba:	00 00                	add    BYTE PTR [eax],al
c010c2bc:	50                   	push   eax
c010c2bd:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c010c2bf:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c010c2c2:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c010c2c7:	65 6c                	gs ins BYTE PTR es:[edi],dx
c010c2c9:	20 28                	and    BYTE PTR [eax],ch
c010c2cb:	50                   	push   eax
c010c2cc:	4b                   	dec    ebx
c010c2cd:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010c2ce:	29 20                	sub    DWORD PTR [eax],esp
c010c2d0:	30 2e                	xor    BYTE PTR [esi],ch
c010c2d2:	30 2e                	xor    BYTE PTR [esi],ch
c010c2d4:	31 20                	xor    DWORD PTR [eax],esp
c010c2d6:	41                   	inc    ecx
c010c2d7:	75 67                	jne    c010c340 <__func__.1393+0x92>
c010c2d9:	2e 00 00             	add    BYTE PTR cs:[eax],al
c010c2dc:	50                   	push   eax
c010c2dd:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c010c2df:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c010c2e2:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c010c2e7:	65 6c                	gs ins BYTE PTR es:[edi],dx
c010c2e9:	20 28                	and    BYTE PTR [eax],ch
c010c2eb:	50                   	push   eax
c010c2ec:	4b                   	dec    ebx
c010c2ed:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010c2ee:	29 20                	sub    DWORD PTR [eax],esp
c010c2f0:	30 2e                	xor    BYTE PTR [esi],ch
c010c2f2:	30 2e                	xor    BYTE PTR [esi],ch
c010c2f4:	31 20                	xor    DWORD PTR [eax],esp
c010c2f6:	41                   	inc    ecx
c010c2f7:	75 67                	jne    c010c360 <__func__.1393+0xb2>
c010c2f9:	2e 00 70 61          	add    BYTE PTR cs:[eax+0x61],dh
c010c2fd:	67 65 5f             	addr16 gs pop edi
c010c300:	64 69 72 5f 74 61 62 	imul   esi,DWORD PTR fs:[edx+0x5f],0x6c626174
c010c307:	6c 
c010c308:	65 5f                	gs pop edi
c010c30a:	70 6f                	jo     c010c37b <__func__.1393+0xcd>
c010c30c:	73 20                	jae    c010c32e <__func__.1393+0x80>
c010c30e:	21 3d 20 4e 55 4c    	and    DWORD PTR ds:0x4c554e20,edi
c010c314:	4c                   	dec    esp
c010c315:	00 70 72             	add    BYTE PTR [eax+0x72],dh
c010c318:	6f                   	outs   dx,DWORD PTR ds:[esi]
c010c319:	67 2f                	addr16 das 
c010c31b:	70 72                	jo     c010c38f <__func__.1393+0xe1>
c010c31d:	6f                   	outs   dx,DWORD PTR ds:[esi]
c010c31e:	63 65 73             	arpl   WORD PTR [ebp+0x73],sp
c010c321:	73 2e                	jae    c010c351 <__func__.1393+0xa3>
c010c323:	63 00                	arpl   WORD PTR [eax],ax
c010c325:	70 74                	jo     c010c39b <__func__.1393+0xed>
c010c327:	68 72 65 61 64       	push   0x64616572
c010c32c:	20 21                	and    BYTE PTR [ecx],ah
c010c32e:	3d 20 4e 55 4c       	cmp    eax,0x4c554e20
c010c333:	4c                   	dec    esp
c010c334:	00 00                	add    BYTE PTR [eax],al
c010c336:	00 00                	add    BYTE PTR [eax],al
c010c338:	63 72 65             	arpl   WORD PTR [edx+0x65],si
c010c33b:	61                   	popa   
c010c33c:	74 65                	je     c010c3a3 <__func__.1393+0xf5>
c010c33e:	5f                   	pop    edi
c010c33f:	70 61                	jo     c010c3a2 <__func__.1393+0xf4>
c010c341:	67 65 5f             	addr16 gs pop edi
c010c344:	64 69 72 3a 20 67 65 	imul   esi,DWORD PTR fs:[edx+0x3a],0x74656720
c010c34b:	74 
c010c34c:	20 6b 65             	and    BYTE PTR [ebx+0x65],ch
c010c34f:	72 6e                	jb     c010c3bf <__func__.1393+0x111>
c010c351:	65 6c                	gs ins BYTE PTR es:[edi],dx
c010c353:	20 70 61             	and    BYTE PTR [eax+0x61],dh
c010c356:	67 65 20 66 61       	and    BYTE PTR gs:[bp+0x61],ah
c010c35b:	69 6c 65 64 21 0a 00 	imul   ebp,DWORD PTR [ebp+eiz*2+0x64],0xa21
c010c362:	00 
c010c363:	00 21                	add    BYTE PTR [ecx],ah
c010c365:	28 6c 69 73          	sub    BYTE PTR [ecx+ebp*2+0x73],ch
c010c369:	74 5f                	je     c010c3ca <__func__.1403+0x8>
c010c36b:	66 69 6e 64 28 26    	imul   bp,WORD PTR [esi+0x64],0x2628
c010c371:	61                   	popa   
c010c372:	6c                   	ins    BYTE PTR es:[edi],dx
c010c373:	6c                   	ins    BYTE PTR es:[edi],dx
c010c374:	5f                   	pop    edi
c010c375:	6c                   	ins    BYTE PTR es:[edi],dx
c010c376:	69 73 74 2c 26 28 70 	imul   esi,DWORD PTR [ebx+0x74],0x7028262c
c010c37d:	74 68                	je     c010c3e7 <__func__.1384+0x4>
c010c37f:	72 65                	jb     c010c3e6 <__func__.1384+0x3>
c010c381:	61                   	popa   
c010c382:	64 2d 3e 61 6c 6c    	fs sub eax,0x6c6c613e
c010c388:	5f                   	pop    edi
c010c389:	74 61                	je     c010c3ec <__func__.1384+0x9>
c010c38b:	67 29 29             	sub    DWORD PTR [bx+di],ebp
c010c38e:	29 00                	sub    DWORD PTR [eax],eax
c010c390:	21 28                	and    DWORD PTR [eax],ebp
c010c392:	6c                   	ins    BYTE PTR es:[edi],dx
c010c393:	69 73 74 5f 66 69 6e 	imul   esi,DWORD PTR [ebx+0x74],0x6e69665f
c010c39a:	64 28 26             	sub    BYTE PTR fs:[esi],ah
c010c39d:	72 65                	jb     c010c404 <__func__.1384+0x21>
c010c39f:	61                   	popa   
c010c3a0:	64 79 5f             	fs jns c010c402 <__func__.1384+0x1f>
c010c3a3:	6c                   	ins    BYTE PTR es:[edi],dx
c010c3a4:	69 73 74 2c 26 28 70 	imul   esi,DWORD PTR [ebx+0x74],0x7028262c
c010c3ab:	74 68                	je     c010c415 <__func__.1384+0x32>
c010c3ad:	72 65                	jb     c010c414 <__func__.1384+0x31>
c010c3af:	61                   	popa   
c010c3b0:	64 2d 3e 67 65 6e    	fs sub eax,0x6e65673e
c010c3b6:	65 72 61             	gs jb  c010c41a <__func__.1384+0x37>
c010c3b9:	6c                   	ins    BYTE PTR es:[edi],dx
c010c3ba:	5f                   	pop    edi
c010c3bb:	74 61                	je     c010c41e <__func__.1384+0x3b>
c010c3bd:	67 29 29             	sub    DWORD PTR [bx+di],ebp
c010c3c0:	29 00                	sub    DWORD PTR [eax],eax

c010c3c2 <__func__.1403>:
c010c3c2:	70 72                	jo     c010c436 <__func__.1384+0x53>
c010c3c4:	6f                   	outs   dx,DWORD PTR ds:[esi]
c010c3c5:	63 65 73             	arpl   WORD PTR [ebp+0x73],sp
c010c3c8:	73 5f                	jae    c010c429 <__func__.1384+0x46>
c010c3ca:	65 78 65             	gs js  c010c432 <__func__.1384+0x4f>
c010c3cd:	63 75 74             	arpl   WORD PTR [ebp+0x74],si
c010c3d0:	65 00 70 72          	add    BYTE PTR gs:[eax+0x72],dh

c010c3d2 <__func__.1388>:
c010c3d2:	70 72                	jo     c010c446 <__func__.1384+0x63>
c010c3d4:	6f                   	outs   dx,DWORD PTR ds:[esi]
c010c3d5:	63 65 73             	arpl   WORD PTR [ebp+0x73],sp
c010c3d8:	73 5f                	jae    c010c439 <__func__.1384+0x56>
c010c3da:	61                   	popa   
c010c3db:	63 74 69 76          	arpl   WORD PTR [ecx+ebp*2+0x76],si
c010c3df:	61                   	popa   
c010c3e0:	74 65                	je     c010c447 <__func__.1384+0x64>
	...

c010c3e3 <__func__.1384>:
c010c3e3:	70 61                	jo     c010c446 <__func__.1384+0x63>
c010c3e5:	67 65 5f             	addr16 gs pop edi
c010c3e8:	64 69 72 5f 61 63 74 	imul   esi,DWORD PTR fs:[edx+0x5f],0x69746361
c010c3ef:	69 
c010c3f0:	76 61                	jbe    c010c453 <__func__.1384+0x70>
c010c3f2:	74 65                	je     c010c459 <__func__.1384+0x76>
c010c3f4:	00 00                	add    BYTE PTR [eax],al
c010c3f6:	00 00                	add    BYTE PTR [eax],al
c010c3f8:	50                   	push   eax
c010c3f9:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c010c3fb:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c010c3fe:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c010c403:	65 6c                	gs ins BYTE PTR es:[edi],dx
c010c405:	20 28                	and    BYTE PTR [eax],ch
c010c407:	50                   	push   eax
c010c408:	4b                   	dec    ebx
c010c409:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010c40a:	29 20                	sub    DWORD PTR [eax],esp
c010c40c:	30 2e                	xor    BYTE PTR [esi],ch
c010c40e:	30 2e                	xor    BYTE PTR [esi],ch
c010c410:	31 20                	xor    DWORD PTR [eax],esp
c010c412:	41                   	inc    ecx
c010c413:	75 67                	jne    c010c47c <__func__.1384+0x99>
c010c415:	2e 00 00             	add    BYTE PTR cs:[eax],al
c010c418:	50                   	push   eax
c010c419:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c010c41b:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c010c41e:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c010c423:	65 6c                	gs ins BYTE PTR es:[edi],dx
c010c425:	20 28                	and    BYTE PTR [eax],ch
c010c427:	50                   	push   eax
c010c428:	4b                   	dec    ebx
c010c429:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010c42a:	29 20                	sub    DWORD PTR [eax],esp
c010c42c:	30 2e                	xor    BYTE PTR [esi],ch
c010c42e:	30 2e                	xor    BYTE PTR [esi],ch
c010c430:	31 20                	xor    DWORD PTR [eax],esp
c010c432:	41                   	inc    ecx
c010c433:	75 67                	jne    c010c49c <__func__.1384+0xb9>
c010c435:	2e 00 00             	add    BYTE PTR cs:[eax],al
c010c438:	50                   	push   eax
c010c439:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c010c43b:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c010c43e:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c010c443:	65 6c                	gs ins BYTE PTR es:[edi],dx
c010c445:	20 28                	and    BYTE PTR [eax],ch
c010c447:	50                   	push   eax
c010c448:	4b                   	dec    ebx
c010c449:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010c44a:	29 20                	sub    DWORD PTR [eax],esp
c010c44c:	30 2e                	xor    BYTE PTR [esi],ch
c010c44e:	30 2e                	xor    BYTE PTR [esi],ch
c010c450:	31 20                	xor    DWORD PTR [eax],esp
c010c452:	41                   	inc    ecx
c010c453:	75 67                	jne    c010c4bc <__func__.1183+0x1>
c010c455:	2e 00 00             	add    BYTE PTR cs:[eax],al
c010c458:	66 69 66 6f 2d 3e    	imul   sp,WORD PTR [esi+0x6f],0x3e2d
c010c45e:	74 79                	je     c010c4d9 <__func__.1183+0x1e>
c010c460:	70 65                	jo     c010c4c7 <__func__.1183+0xc>
c010c462:	20 3d 3d 20 38 20    	and    BYTE PTR ds:0x2038203d,bh
c010c468:	7c 7c                	jl     c010c4e6 <__func__.1183+0x2b>
c010c46a:	20 66 69             	and    BYTE PTR [esi+0x69],ah
c010c46d:	66 6f                	outs   dx,WORD PTR ds:[esi]
c010c46f:	2d 3e 74 79 70       	sub    eax,0x7079743e
c010c474:	65 20 3d 3d 20 31 36 	and    BYTE PTR gs:0x3631203d,bh
c010c47b:	20 7c 7c 20          	and    BYTE PTR [esp+edi*2+0x20],bh
c010c47f:	66 69 66 6f 2d 3e    	imul   sp,WORD PTR [esi+0x6f],0x3e2d
c010c485:	74 79                	je     c010c500 <__func__.1183+0x45>
c010c487:	70 65                	jo     c010c4ee <__func__.1183+0x33>
c010c489:	20 3d 3d 20 33 32    	and    BYTE PTR ds:0x3233203d,bh
c010c48f:	20 7c 7c 20          	and    BYTE PTR [esp+edi*2+0x20],bh
c010c493:	66 69 66 6f 2d 3e    	imul   sp,WORD PTR [esi+0x6f],0x3e2d
c010c499:	74 79                	je     c010c514 <__func__.1183+0x59>
c010c49b:	70 65                	jo     c010c502 <__func__.1183+0x47>
c010c49d:	20 3d 3d 20 36 34    	and    BYTE PTR ds:0x3436203d,bh
c010c4a3:	00 64 65 76          	add    BYTE PTR [ebp+eiz*2+0x76],ah
c010c4a7:	69 63 65 2f 66 69 66 	imul   esp,DWORD PTR [ebx+0x65],0x6669662f
c010c4ae:	6f                   	outs   dx,DWORD PTR ds:[esi]
c010c4af:	2e 63 00             	arpl   WORD PTR cs:[eax],ax

c010c4b2 <__func__.1194>:
c010c4b2:	66 69 66 6f 5f 67    	imul   sp,WORD PTR [esi+0x6f],0x675f
c010c4b8:	65 74 00             	gs je  c010c4bb <__func__.1183>

c010c4bb <__func__.1183>:
c010c4bb:	66 69 66 6f 5f 70    	imul   sp,WORD PTR [esi+0x6f],0x705f
c010c4c1:	75 74                	jne    c010c537 <__func__.1183+0x7c>
c010c4c3:	00 50 65             	add    BYTE PTR [eax+0x65],dl
c010c4c6:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010c4c7:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c010c4ca:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c010c4cf:	65 6c                	gs ins BYTE PTR es:[edi],dx
c010c4d1:	20 28                	and    BYTE PTR [eax],ch
c010c4d3:	50                   	push   eax
c010c4d4:	4b                   	dec    ebx
c010c4d5:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010c4d6:	29 20                	sub    DWORD PTR [eax],esp
c010c4d8:	30 2e                	xor    BYTE PTR [esi],ch
c010c4da:	30 2e                	xor    BYTE PTR [esi],ch
c010c4dc:	31 20                	xor    DWORD PTR [eax],esp
c010c4de:	41                   	inc    ecx
c010c4df:	75 67                	jne    c010c548 <__func__.1183+0x8d>
c010c4e1:	2e 00 00             	add    BYTE PTR cs:[eax],al
c010c4e4:	50                   	push   eax
c010c4e5:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c010c4e7:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c010c4ea:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c010c4ef:	65 6c                	gs ins BYTE PTR es:[edi],dx
c010c4f1:	20 28                	and    BYTE PTR [eax],ch
c010c4f3:	50                   	push   eax
c010c4f4:	4b                   	dec    ebx
c010c4f5:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010c4f6:	29 20                	sub    DWORD PTR [eax],esp
c010c4f8:	30 2e                	xor    BYTE PTR [esi],ch
c010c4fa:	30 2e                	xor    BYTE PTR [esi],ch
c010c4fc:	31 20                	xor    DWORD PTR [eax],esp
c010c4fe:	41                   	inc    ecx
c010c4ff:	75 67                	jne    c010c568 <__func__.1183+0xad>
c010c501:	2e 00 00             	add    BYTE PTR cs:[eax],al
c010c504:	50                   	push   eax
c010c505:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c010c507:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c010c50a:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c010c50f:	65 6c                	gs ins BYTE PTR es:[edi],dx
c010c511:	20 28                	and    BYTE PTR [eax],ch
c010c513:	50                   	push   eax
c010c514:	4b                   	dec    ebx
c010c515:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010c516:	29 20                	sub    DWORD PTR [eax],esp
c010c518:	30 2e                	xor    BYTE PTR [esi],ch
c010c51a:	30 2e                	xor    BYTE PTR [esi],ch
c010c51c:	31 20                	xor    DWORD PTR [eax],esp
c010c51e:	41                   	inc    ecx
c010c51f:	75 67                	jne    c010c588 <__func__.1183+0xcd>
c010c521:	2e 00 00             	add    BYTE PTR cs:[eax],al
c010c524:	50                   	push   eax
c010c525:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c010c527:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c010c52a:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c010c52f:	65 6c                	gs ins BYTE PTR es:[edi],dx
c010c531:	20 28                	and    BYTE PTR [eax],ch
c010c533:	50                   	push   eax
c010c534:	4b                   	dec    ebx
c010c535:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010c536:	29 20                	sub    DWORD PTR [eax],esp
c010c538:	30 2e                	xor    BYTE PTR [esi],ch
c010c53a:	30 2e                	xor    BYTE PTR [esi],ch
c010c53c:	31 20                	xor    DWORD PTR [eax],esp
c010c53e:	41                   	inc    ecx
c010c53f:	75 67                	jne    c010c5a8 <__func__.1183+0xed>
c010c541:	2e 00 00             	add    BYTE PTR cs:[eax],al
c010c544:	50                   	push   eax
c010c545:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c010c547:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c010c54a:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c010c54f:	65 6c                	gs ins BYTE PTR es:[edi],dx
c010c551:	20 28                	and    BYTE PTR [eax],ch
c010c553:	50                   	push   eax
c010c554:	4b                   	dec    ebx
c010c555:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010c556:	29 20                	sub    DWORD PTR [eax],esp
c010c558:	30 2e                	xor    BYTE PTR [esi],ch
c010c55a:	30 2e                	xor    BYTE PTR [esi],ch
c010c55c:	31 20                	xor    DWORD PTR [eax],esp
c010c55e:	41                   	inc    ecx
c010c55f:	75 67                	jne    c010c5c8 <__func__.1183+0x10d>
c010c561:	2e 00 00             	add    BYTE PTR cs:[eax],al
c010c564:	50                   	push   eax
c010c565:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c010c567:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c010c56a:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c010c56f:	65 6c                	gs ins BYTE PTR es:[edi],dx
c010c571:	20 28                	and    BYTE PTR [eax],ch
c010c573:	50                   	push   eax
c010c574:	4b                   	dec    ebx
c010c575:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010c576:	29 20                	sub    DWORD PTR [eax],esp
c010c578:	30 2e                	xor    BYTE PTR [esi],ch
c010c57a:	30 2e                	xor    BYTE PTR [esi],ch
c010c57c:	31 20                	xor    DWORD PTR [eax],esp
c010c57e:	41                   	inc    ecx
c010c57f:	75 67                	jne    c010c5e8 <__func__.1183+0x12d>
c010c581:	2e 00 73 72          	add    BYTE PTR cs:[ebx+0x72],dh
c010c585:	63 3a                	arpl   WORD PTR [edx],di
c010c587:	25 73 20 2d 3e       	and    eax,0x3e2d2073
c010c58c:	20 64 73 74          	and    BYTE PTR [ebx+esi*2+0x74],ah
c010c590:	3a 25 73 20 64 65    	cmp    ah,BYTE PTR ds:0x65642073
c010c596:	61                   	popa   
c010c597:	64 20 6c 6f 63       	and    BYTE PTR fs:[edi+ebp*2+0x63],ch
c010c59c:	6b 00 70             	imul   eax,DWORD PTR [eax],0x70
c010c59f:	64 65 73 74          	fs gs jae c010c617 <__func__.1183+0x15c>
c010c5a3:	20 21                	and    BYTE PTR [ecx],ah
c010c5a5:	3d 20 4e 55 4c       	cmp    eax,0x4c554e20
c010c5aa:	4c                   	dec    esp
c010c5ab:	00 73 79             	add    BYTE PTR [ebx+0x79],dh
c010c5ae:	73 63                	jae    c010c613 <__func__.1183+0x158>
c010c5b0:	61                   	popa   
c010c5b1:	6c                   	ins    BYTE PTR es:[edi],dx
c010c5b2:	6c                   	ins    BYTE PTR es:[edi],dx
c010c5b3:	2f                   	das    
c010c5b4:	73 79                	jae    c010c62f <__func__.1183+0x174>
c010c5b6:	73 63                	jae    c010c61b <__func__.1183+0x160>
c010c5b8:	61                   	popa   
c010c5b9:	6c                   	ins    BYTE PTR es:[edi],dx
c010c5ba:	6c                   	ins    BYTE PTR es:[edi],dx
c010c5bb:	2e 63 00             	arpl   WORD PTR cs:[eax],ax
c010c5be:	73 65                	jae    c010c625 <__func__.1183+0x16a>
c010c5c0:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010c5c1:	64 65 72 20          	fs gs jb c010c5e5 <__func__.1183+0x12a>
c010c5c5:	21 3d 20 70 64 65    	and    DWORD PTR ds:0x65647020,edi
c010c5cb:	73 74                	jae    c010c641 <__func__.1183+0x186>
c010c5cd:	00 00                	add    BYTE PTR [eax],al
c010c5cf:	00 73 65             	add    BYTE PTR [ebx+0x65],dh
c010c5d2:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010c5d3:	64 65 72 2d          	fs gs jb c010c604 <__func__.1183+0x149>
c010c5d7:	3e 73 65             	ds jae c010c63f <__func__.1183+0x184>
c010c5da:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010c5db:	64 5f                	fs pop edi
c010c5dd:	74 61                	je     c010c640 <__func__.1183+0x185>
c010c5df:	67 2e 64 61          	addr16 cs fs popa 
c010c5e3:	74 61                	je     c010c646 <__func__.1183+0x18b>
c010c5e5:	20 3d 3d 20 73 65    	and    BYTE PTR ds:0x6573203d,bh
c010c5eb:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010c5ec:	64 65 72 00          	fs gs jb c010c5f0 <__func__.1183+0x135>
c010c5f0:	21 6c 69 73          	and    DWORD PTR [ecx+ebp*2+0x73],ebp
c010c5f4:	74 5f                	je     c010c655 <__func__.1183+0x19a>
c010c5f6:	66 69 6e 64 28 26    	imul   bp,WORD PTR [esi+0x64],0x2628
c010c5fc:	28 70 64             	sub    BYTE PTR [eax+0x64],dh
c010c5ff:	65 73 74             	gs jae c010c676 <__func__.1183+0x1bb>
c010c602:	2d 3e 73 65 6e       	sub    eax,0x6e65733e
c010c607:	64 65 72 5f          	fs gs jb c010c66a <__func__.1183+0x1af>
c010c60b:	6c                   	ins    BYTE PTR es:[edi],dx
c010c60c:	69 73 74 29 2c 26 28 	imul   esi,DWORD PTR [ebx+0x74],0x28262c29
c010c613:	73 65                	jae    c010c67a <__func__.1183+0x1bf>
c010c615:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010c616:	64 65 72 2d          	fs gs jb c010c647 <__func__.1183+0x18c>
c010c61a:	3e 73 65             	ds jae c010c682 <__func__.1183+0x1c7>
c010c61d:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010c61e:	64 5f                	fs pop edi
c010c620:	74 61                	je     c010c683 <__func__.1183+0x1c8>
c010c622:	67 29 29             	sub    DWORD PTR [bx+di],ebp
c010c625:	00 70 73             	add    BYTE PTR [eax+0x73],dh
c010c628:	72 63                	jb     c010c68d <__func__.1299+0x7>
c010c62a:	20 21                	and    BYTE PTR [ecx],ah
c010c62c:	3d 20 72 65 63       	cmp    eax,0x63657220
c010c631:	65 69 76 65 72 00 70 	imul   esi,DWORD PTR gs:[esi+0x65],0x73700072
c010c638:	73 
c010c639:	72 63                	jb     c010c69e <__func__.1273+0x3>
c010c63b:	20 21                	and    BYTE PTR [ecx],ah
c010c63d:	3d 20 4e 55 4c       	cmp    eax,0x4c554e20
c010c642:	4c                   	dec    esp
c010c643:	00 28                	add    BYTE PTR [eax],ch
c010c645:	66 75 6e             	data16 jne c010c6b6 <__func__.1273+0x1b>
c010c648:	63 74 69 6f          	arpl   WORD PTR [ecx+ebp*2+0x6f],si
c010c64c:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010c64d:	20 3d 3d 20 53 45    	and    BYTE PTR ds:0x4553203d,bh
c010c653:	4e                   	dec    esi
c010c654:	44                   	inc    esp
c010c655:	29 20                	sub    DWORD PTR [eax],esp
c010c657:	7c 7c                	jl     c010c6d5 <__func__.1273+0x3a>
c010c659:	20 28                	and    BYTE PTR [eax],ch
c010c65b:	66 75 6e             	data16 jne c010c6cc <__func__.1273+0x31>
c010c65e:	63 74 69 6f          	arpl   WORD PTR [ecx+ebp*2+0x6f],si
c010c662:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010c663:	20 3d 3d 20 52 45    	and    BYTE PTR ds:0x4552203d,bh
c010c669:	43                   	inc    ebx
c010c66a:	45                   	inc    ebp
c010c66b:	49                   	dec    ecx
c010c66c:	56                   	push   esi
c010c66d:	45                   	inc    ebp
c010c66e:	29 20                	sub    DWORD PTR [eax],esp
c010c670:	7c 7c                	jl     c010c6ee <__func__.1273+0x53>
c010c672:	20 28                	and    BYTE PTR [eax],ch
c010c674:	66 75 6e             	data16 jne c010c6e5 <__func__.1273+0x4a>
c010c677:	63 74 69 6f          	arpl   WORD PTR [ecx+ebp*2+0x6f],si
c010c67b:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010c67c:	20 3d 3d 20 42 4f    	and    BYTE PTR ds:0x4f42203d,bh
c010c682:	54                   	push   esp
c010c683:	48                   	dec    eax
c010c684:	29 00                	sub    DWORD PTR [eax],eax

c010c686 <__func__.1299>:
c010c686:	73 79                	jae    c010c701 <__func__.1273+0x66>
c010c688:	73 5f                	jae    c010c6e9 <__func__.1273+0x4e>
c010c68a:	73 65                	jae    c010c6f1 <__func__.1273+0x56>
c010c68c:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010c68d:	64 72 65             	fs jb  c010c6f5 <__func__.1273+0x5a>
c010c690:	63 00                	arpl   WORD PTR [eax],ax

c010c692 <__func__.1284>:
c010c692:	6d                   	ins    DWORD PTR es:[edi],dx
c010c693:	73 67                	jae    c010c6fc <__func__.1273+0x61>
c010c695:	5f                   	pop    edi
c010c696:	72 65                	jb     c010c6fd <__func__.1273+0x62>
c010c698:	63 76 00             	arpl   WORD PTR [esi+0x0],si

c010c69b <__func__.1273>:
c010c69b:	6d                   	ins    DWORD PTR es:[edi],dx
c010c69c:	73 67                	jae    c010c705 <__func__.1273+0x6a>
c010c69e:	5f                   	pop    edi
c010c69f:	73 65                	jae    c010c706 <__func__.1273+0x6b>
c010c6a1:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010c6a2:	64 00 50 65          	add    BYTE PTR fs:[eax+0x65],dl
c010c6a6:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010c6a7:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c010c6aa:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c010c6af:	65 6c                	gs ins BYTE PTR es:[edi],dx
c010c6b1:	20 28                	and    BYTE PTR [eax],ch
c010c6b3:	50                   	push   eax
c010c6b4:	4b                   	dec    ebx
c010c6b5:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010c6b6:	29 20                	sub    DWORD PTR [eax],esp
c010c6b8:	30 2e                	xor    BYTE PTR [esi],ch
c010c6ba:	30 2e                	xor    BYTE PTR [esi],ch
c010c6bc:	31 20                	xor    DWORD PTR [eax],esp
c010c6be:	41                   	inc    ecx
c010c6bf:	75 67                	jne    c010c728 <__func__.1273+0x8d>
c010c6c1:	2e 00 00             	add    BYTE PTR cs:[eax],al
c010c6c4:	21 28                	and    DWORD PTR [eax],ebp
c010c6c6:	6c                   	ins    BYTE PTR es:[edi],dx
c010c6c7:	69 73 74 5f 66 69 6e 	imul   esi,DWORD PTR [ebx+0x74],0x6e69665f
c010c6ce:	64 28 26             	sub    BYTE PTR fs:[esi],ah
c010c6d1:	28 61 2d             	sub    BYTE PTR [ecx+0x2d],ah
c010c6d4:	3e 64 65 73 63       	ds fs gs jae c010c73c <__func__.1273+0xa1>
c010c6d9:	2d 3e 66 72 65       	sub    eax,0x6572663e
c010c6de:	65 5f                	gs pop edi
c010c6e0:	6c                   	ins    BYTE PTR es:[edi],dx
c010c6e1:	69 73 74 29 2c 26 28 	imul   esi,DWORD PTR [ebx+0x74],0x28262c29
c010c6e8:	62 2d 3e 66 72 65    	bound  ebp,QWORD PTR ds:0x6572663e
c010c6ee:	65 29 29             	sub    DWORD PTR gs:[ecx],ebp
c010c6f1:	29 00                	sub    DWORD PTR [eax],eax
c010c6f3:	74 61                	je     c010c756 <__func__.1273+0xbb>
c010c6f5:	73 6b                	jae    c010c762 <__func__.1273+0xc7>
c010c6f7:	2f                   	das    
c010c6f8:	6d                   	ins    DWORD PTR es:[edi],dx
c010c6f9:	6d                   	ins    DWORD PTR es:[edi],dx
c010c6fa:	2e 63 00             	arpl   WORD PTR cs:[eax],ax
c010c6fd:	00 00                	add    BYTE PTR [eax],al
c010c6ff:	00 61 2d             	add    BYTE PTR [ecx+0x2d],ah
c010c702:	3e 64 65 73 63       	ds fs gs jae c010c76a <__func__.1273+0xcf>
c010c707:	20 3d 3d 20 4e 55    	and    BYTE PTR ds:0x554e203d,bh
c010c70d:	4c                   	dec    esp
c010c70e:	4c                   	dec    esp
c010c70f:	20 26                	and    BYTE PTR [esi],ah
c010c711:	26 20 61 2d          	and    BYTE PTR es:[ecx+0x2d],ah
c010c715:	3e 63 6e 74          	arpl   WORD PTR ds:[esi+0x74],bp
c010c719:	20 3d 3d 20 70 67    	and    BYTE PTR ds:0x6770203d,bh
c010c71f:	5f                   	pop    edi
c010c720:	63 6e 74             	arpl   WORD PTR [esi+0x74],bp
c010c723:	20 26                	and    BYTE PTR [esi],ah
c010c725:	26 20 61 2d          	and    BYTE PTR es:[ecx+0x2d],ah
c010c729:	3e 6c                	ds ins BYTE PTR es:[edi],dx
c010c72b:	61                   	popa   
c010c72c:	72 67                	jb     c010c795 <__func__.1273+0xfa>
c010c72e:	65 20 3d 3d 20 74 72 	and    BYTE PTR gs:0x7274203d,bh
c010c735:	75 65                	jne    c010c79c <__func__.1452+0x1>
c010c737:	00 6c 69 73          	add    BYTE PTR [ecx+ebp*2+0x73],ch
c010c73b:	74 5f                	je     c010c79c <__func__.1452+0x1>
c010c73d:	66 69 6e 64 28 26    	imul   bp,WORD PTR [esi+0x64],0x2628
c010c743:	28 61 2d             	sub    BYTE PTR [ecx+0x2d],ah
c010c746:	3e 64 65 73 63       	ds fs gs jae c010c7ae <__func__.1424+0x1>
c010c74b:	2d 3e 66 72 65       	sub    eax,0x6572663e
c010c750:	65 5f                	gs pop edi
c010c752:	6c                   	ins    BYTE PTR es:[edi],dx
c010c753:	69 73 74 29 2c 26 28 	imul   esi,DWORD PTR [ebx+0x74],0x28262c29
c010c75a:	62 2d 3e 66 72 65    	bound  ebp,QWORD PTR ds:0x6572663e
c010c760:	65 29 29             	sub    DWORD PTR gs:[ecx],ebp
c010c763:	00 70 74             	add    BYTE PTR [eax+0x74],dh
c010c766:	65 20 72 65          	and    BYTE PTR gs:[edx+0x65],dh
c010c76a:	70 65                	jo     c010c7d1 <__func__.1410+0x1c>
c010c76c:	61                   	popa   
c010c76d:	74 21                	je     c010c790 <__func__.1273+0xf5>
c010c76f:	28 76 61             	sub    BYTE PTR [esi+0x61],dh
c010c772:	64 64 72 3a          	fs fs jb c010c7b0 <__func__.1424+0x3>
c010c776:	20 25 70 2c 20 70    	and    BYTE PTR ds:0x70202c70,ah
c010c77c:	61                   	popa   
c010c77d:	64 64 72 3a          	fs fs jb c010c7bb <__func__.1410+0x6>
c010c781:	20 25 70 29 00 21    	and    BYTE PTR ds:0x21002970,ah
c010c787:	28 2a                	sub    BYTE PTR [edx],ch
c010c789:	70 74                	jo     c010c7ff <__func__.1410+0x4a>
c010c78b:	65 20 26             	and    BYTE PTR gs:[esi],ah
c010c78e:	20 30                	and    BYTE PTR [eax],dh
c010c790:	78 30                	js     c010c7c2 <__func__.1410+0xd>
c010c792:	30 30                	xor    BYTE PTR [eax],dh
c010c794:	30 30                	xor    BYTE PTR [eax],dh
c010c796:	30 30                	xor    BYTE PTR [eax],dh
c010c798:	31 29                	xor    DWORD PTR [ecx],ebp
	...

c010c79b <__func__.1452>:
c010c79b:	6d                   	ins    DWORD PTR es:[edi],dx
c010c79c:	6d                   	ins    DWORD PTR es:[edi],dx
c010c79d:	5f                   	pop    edi
c010c79e:	70 61                	jo     c010c801 <__func__.1410+0x4c>
c010c7a0:	67 65 5f             	addr16 gs pop edi
c010c7a3:	74 61                	je     c010c806 <__func__.1410+0x51>
c010c7a5:	62 6c 65 5f          	bound  ebp,QWORD PTR [ebp+eiz*2+0x5f]
c010c7a9:	61                   	popa   
c010c7aa:	64 64 00 6d 6d       	fs add BYTE PTR fs:[ebp+0x6d],ch

c010c7ad <__func__.1424>:
c010c7ad:	6d                   	ins    DWORD PTR es:[edi],dx
c010c7ae:	6d                   	ins    DWORD PTR es:[edi],dx
c010c7af:	5f                   	pop    edi
c010c7b0:	66 72 65             	data16 jb c010c818 <__func__.1410+0x63>
c010c7b3:	65 00 6d 6d          	add    BYTE PTR gs:[ebp+0x6d],ch

c010c7b5 <__func__.1410>:
c010c7b5:	6d                   	ins    DWORD PTR es:[edi],dx
c010c7b6:	6d                   	ins    DWORD PTR es:[edi],dx
c010c7b7:	5f                   	pop    edi
c010c7b8:	6d                   	ins    DWORD PTR es:[edi],dx
c010c7b9:	61                   	popa   
c010c7ba:	6c                   	ins    BYTE PTR es:[edi],dx
c010c7bb:	6c                   	ins    BYTE PTR es:[edi],dx
c010c7bc:	6f                   	outs   dx,DWORD PTR ds:[esi]
c010c7bd:	63 00                	arpl   WORD PTR [eax],ax
c010c7bf:	00 50 65             	add    BYTE PTR [eax+0x65],dl
c010c7c2:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010c7c3:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c010c7c6:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c010c7cb:	65 6c                	gs ins BYTE PTR es:[edi],dx
c010c7cd:	20 28                	and    BYTE PTR [eax],ch
c010c7cf:	50                   	push   eax
c010c7d0:	4b                   	dec    ebx
c010c7d1:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010c7d2:	29 20                	sub    DWORD PTR [eax],esp
c010c7d4:	30 2e                	xor    BYTE PTR [esi],ch
c010c7d6:	30 2e                	xor    BYTE PTR [esi],ch
c010c7d8:	31 20                	xor    DWORD PTR [eax],esp
c010c7da:	41                   	inc    ecx
c010c7db:	75 67                	jne    c010c844 <__func__.1410+0x8f>
c010c7dd:	2e 00 4d 4d          	add    BYTE PTR cs:[ebp+0x4d],cl
c010c7e1:	00 56 49             	add    BYTE PTR [esi+0x49],dl
c010c7e4:	45                   	inc    ebp
c010c7e5:	57                   	push   edi
c010c7e6:	00 54 54 59          	add    BYTE PTR [esp+edx*2+0x59],dl
c010c7ea:	00 00                	add    BYTE PTR [eax],al
c010c7ec:	50                   	push   eax
c010c7ed:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c010c7ef:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c010c7f2:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c010c7f7:	65 6c                	gs ins BYTE PTR es:[edi],dx
c010c7f9:	20 28                	and    BYTE PTR [eax],ch
c010c7fb:	50                   	push   eax
c010c7fc:	4b                   	dec    ebx
c010c7fd:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010c7fe:	29 20                	sub    DWORD PTR [eax],esp
c010c800:	30 2e                	xor    BYTE PTR [esi],ch
c010c802:	30 2e                	xor    BYTE PTR [esi],ch
c010c804:	31 20                	xor    DWORD PTR [eax],esp
c010c806:	41                   	inc    ecx
c010c807:	75 67                	jne    c010c870 <__func__.1410+0xbb>
c010c809:	2e 00 62 75          	add    BYTE PTR cs:[edx+0x75],ah
c010c80d:	66 20 21             	data16 and BYTE PTR [ecx],ah
c010c810:	3d 20 4e 55 4c       	cmp    eax,0x4c554e20
c010c815:	4c                   	dec    esp
c010c816:	00 74 61 73          	add    BYTE PTR [ecx+eiz*2+0x73],dh
c010c81a:	6b 2f 74             	imul   ebp,DWORD PTR [edi],0x74
c010c81d:	74 79                	je     c010c898 <__func__.1410+0xe3>
c010c81f:	2e 63 00             	arpl   WORD PTR cs:[eax],ax
c010c822:	63 6f 6e             	arpl   WORD PTR [edi+0x6e],bp
c010c825:	73 6f                	jae    c010c896 <__func__.1410+0xe1>
c010c827:	6c                   	ins    BYTE PTR es:[edi],dx
c010c828:	65 00 68 65          	add    BYTE PTR gs:[eax+0x65],ch
c010c82c:	6c                   	ins    BYTE PTR es:[edi],dx
c010c82d:	70 00                	jo     c010c82f <__func__.1410+0x7a>
c010c82f:	3f                   	aas    
c010c830:	00 63 6c             	add    BYTE PTR [ebx+0x6c],ah
c010c833:	73 00                	jae    c010c835 <__func__.1410+0x80>
c010c835:	70 73                	jo     c010c8aa <__func__.1410+0xf5>
c010c837:	00 75 6e             	add    BYTE PTR [ebp+0x6e],dh
c010c83a:	6b 6e 6f 77          	imul   ebp,DWORD PTR [esi+0x6f],0x77
c010c83e:	20 63 6f             	and    BYTE PTR [ebx+0x6f],ah
c010c841:	6d                   	ins    DWORD PTR es:[edi],dx
c010c842:	6d                   	ins    DWORD PTR es:[edi],dx
c010c843:	61                   	popa   
c010c844:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010c845:	64 2c 61             	fs sub al,0x61
c010c848:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010c849:	64 20 6e 6f          	and    BYTE PTR fs:[esi+0x6f],ch
c010c84d:	20 73 75             	and    BYTE PTR [ebx+0x75],dh
c010c850:	63 68 20             	arpl   WORD PTR [eax+0x20],bp
c010c853:	66 69 6c 65 20 6f 72 	imul   bp,WORD PTR [ebp+eiz*2+0x20],0x726f
c010c85a:	20 64 69 72          	and    BYTE PTR [ecx+ebp*2+0x72],ah
c010c85e:	65 63 74 6f 72       	arpl   WORD PTR gs:[edi+ebp*2+0x72],si
c010c863:	79 2e                	jns    c010c893 <__func__.1410+0xde>
c010c865:	0a 00                	or     al,BYTE PTR [eax]
c010c867:	0a 75 73             	or     dh,BYTE PTR [ebp+0x73]
c010c86a:	65 20 27             	and    BYTE PTR gs:[edi],ah
c010c86d:	68 65 6c 70 27       	push   0x27706c65
c010c872:	20 66 6f             	and    BYTE PTR [esi+0x6f],ah
c010c875:	72 20                	jb     c010c897 <__func__.1410+0xe2>
c010c877:	68 65 6c 70 0a       	push   0xa706c65
c010c87c:	00 5b 55             	add    BYTE PTR [ebx+0x55],bl
c010c87f:	53                   	push   ebx
c010c880:	45                   	inc    ebp
c010c881:	52                   	push   edx
c010c882:	20 40 20             	and    BYTE PTR [eax+0x20],al
c010c885:	2f                   	das    
c010c886:	5d                   	pop    ebp
c010c887:	00 62 75             	add    BYTE PTR [edx+0x75],ah
c010c88a:	69 6c 64 69 6e 20 63 	imul   ebp,DWORD PTR [esp+eiz*2+0x69],0x6f63206e
c010c891:	6f 
c010c892:	6d                   	ins    DWORD PTR es:[edi],dx
c010c893:	6d                   	ins    DWORD PTR es:[edi],dx
c010c894:	61                   	popa   
c010c895:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010c896:	64 73 3a             	fs jae c010c8d3 <__func__.1410+0x11e>
c010c899:	0a 00                	or     al,BYTE PTR [eax]
c010c89b:	20 20                	and    BYTE PTR [eax],ah
c010c89d:	20 20                	and    BYTE PTR [eax],ah
c010c89f:	63 6c 73 3a          	arpl   WORD PTR [ebx+esi*2+0x3a],bp
c010c8a3:	20 20                	and    BYTE PTR [eax],ah
c010c8a5:	63 6c 65 61          	arpl   WORD PTR [ebp+eiz*2+0x61],bp
c010c8a9:	72 20                	jb     c010c8cb <__func__.1410+0x116>
c010c8ab:	73 63                	jae    c010c910 <__func__.1410+0x15b>
c010c8ad:	72 65                	jb     c010c914 <__func__.1410+0x15f>
c010c8af:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c010c8b1:	0a 00                	or     al,BYTE PTR [eax]
c010c8b3:	00 20                	add    BYTE PTR [eax],ah
c010c8b5:	20 20                	and    BYTE PTR [eax],ah
c010c8b7:	20 70 73             	and    BYTE PTR [eax+0x73],dh
c010c8ba:	3a 20                	cmp    ah,BYTE PTR [eax]
c010c8bc:	20 20                	and    BYTE PTR [eax],ah
c010c8be:	73 68                	jae    c010c928 <__func__.1297+0x3>
c010c8c0:	6f                   	outs   dx,DWORD PTR ds:[esi]
c010c8c1:	77 20                	ja     c010c8e3 <__func__.1410+0x12e>
c010c8c3:	70 72                	jo     c010c937 <__func__.1297+0x12>
c010c8c5:	6f                   	outs   dx,DWORD PTR ds:[esi]
c010c8c6:	63 65 73             	arpl   WORD PTR [ebp+0x73],sp
c010c8c9:	73 20                	jae    c010c8eb <__func__.1410+0x136>
c010c8cb:	69 6e 66 6f 72 6d 61 	imul   ebp,DWORD PTR [esi+0x66],0x616d726f
c010c8d2:	74 69                	je     c010c93d <__func__.1297+0x18>
c010c8d4:	6f                   	outs   dx,DWORD PTR ds:[esi]
c010c8d5:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010c8d6:	0a 00                	or     al,BYTE PTR [eax]
c010c8d8:	25 2d 31 36 73       	and    eax,0x7336312d
c010c8dd:	20 25 2d 35 64 20    	and    BYTE PTR ds:0x2064352d,ah
c010c8e3:	25 2d 36 64 0a       	and    eax,0xa64362d
c010c8e8:	00 4e 61             	add    BYTE PTR [esi+0x61],cl
c010c8eb:	6d                   	ins    DWORD PTR es:[edi],dx
c010c8ec:	65 20 20             	and    BYTE PTR gs:[eax],ah
c010c8ef:	20 20                	and    BYTE PTR [eax],ah
c010c8f1:	20 20                	and    BYTE PTR [eax],ah
c010c8f3:	20 20                	and    BYTE PTR [eax],ah
c010c8f5:	20 20                	and    BYTE PTR [eax],ah
c010c8f7:	20 20                	and    BYTE PTR [eax],ah
c010c8f9:	20 50 69             	and    BYTE PTR [eax+0x69],dl
c010c8fc:	64 20 20             	and    BYTE PTR fs:[eax],ah
c010c8ff:	20 54 69 63          	and    BYTE PTR [ecx+ebp*2+0x63],dl
c010c903:	6b 73 0a 00          	imul   esi,DWORD PTR [ebx+0xa],0x0
c010c907:	2d 2d 2d 2d 2d       	sub    eax,0x2d2d2d2d
c010c90c:	2d 2d 2d 2d 2d       	sub    eax,0x2d2d2d2d
c010c911:	2d 2d 2d 2d 2d       	sub    eax,0x2d2d2d2d
c010c916:	2d 20 2d 2d 2d       	sub    eax,0x2d2d2d20
c010c91b:	2d 2d 20 2d 2d       	sub    eax,0x2d2d202d
c010c920:	2d 2d 2d 0a 00       	sub    eax,0xa2d2d

c010c925 <__func__.1297>:
c010c925:	54                   	push   esp
c010c926:	79 70                	jns    c010c998 <__func__.1297+0x73>
c010c928:	65 5f                	gs pop edi
c010c92a:	74 61                	je     c010c98d <__func__.1297+0x68>
c010c92c:	73 6b                	jae    c010c999 <__func__.1297+0x74>
c010c92e:	00 00                	add    BYTE PTR [eax],al
c010c930:	50                   	push   eax
c010c931:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c010c933:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c010c936:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c010c93b:	65 6c                	gs ins BYTE PTR es:[edi],dx
c010c93d:	20 28                	and    BYTE PTR [eax],ch
c010c93f:	50                   	push   eax
c010c940:	4b                   	dec    ebx
c010c941:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010c942:	29 20                	sub    DWORD PTR [eax],esp
c010c944:	30 2e                	xor    BYTE PTR [esi],ch
c010c946:	30 2e                	xor    BYTE PTR [esi],ch
c010c948:	31 20                	xor    DWORD PTR [eax],esp
c010c94a:	41                   	inc    ecx
c010c94b:	75 67                	jne    c010c9b4 <__func__.1297+0x8f>
c010c94d:	2e 00 00             	add    BYTE PTR cs:[eax],al
c010c950:	56                   	push   esi
c010c951:	69 64 65 6f 20 4d 6f 	imul   esp,DWORD PTR [ebp+eiz*2+0x6f],0x646f4d20
c010c958:	64 
c010c959:	65 3a 20             	cmp    ah,BYTE PTR gs:[eax]
c010c95c:	30 78 25             	xor    BYTE PTR [eax+0x25],bh
c010c95f:	78 20                	js     c010c981 <__func__.1297+0x5c>
c010c961:	53                   	push   ebx
c010c962:	63 72 6e             	arpl   WORD PTR [edx+0x6e],si
c010c965:	78 20                	js     c010c987 <__func__.1297+0x62>
c010c967:	3d 20 25 64 20       	cmp    eax,0x20642520
c010c96c:	53                   	push   ebx
c010c96d:	63 72 6e             	arpl   WORD PTR [edx+0x6e],si
c010c970:	79 20                	jns    c010c992 <__func__.1297+0x6d>
c010c972:	3d 20 25 64 20       	cmp    eax,0x20642520
c010c977:	4d                   	dec    ebp
c010c978:	65 6d                	gs ins DWORD PTR es:[edi],dx
c010c97a:	6f                   	outs   dx,DWORD PTR ds:[esi]
c010c97b:	72 79                	jb     c010c9f6 <__func__.1505+0xa>
c010c97d:	3a 20                	cmp    ah,BYTE PTR [eax]
c010c97f:	25 64 4d 42 00       	and    eax,0x424d64
c010c984:	0f 65 10             	pcmpgtw mm2,QWORD PTR [eax]
c010c987:	c0                   	(bad)  
c010c988:	33 62 10             	xor    esp,DWORD PTR [edx+0x10]
c010c98b:	c0                   	(bad)  
c010c98c:	f0 62 10             	lock bound edx,QWORD PTR [eax]
c010c98f:	c0 13 63             	rcl    BYTE PTR [ebx],0x63
c010c992:	10 c0                	adc    al,al
c010c994:	b5 63                	mov    ch,0x63
c010c996:	10 c0                	adc    al,al
c010c998:	3f                   	aas    
c010c999:	64 10 c0             	fs adc al,al
c010c99c:	ba 64 10 c0 63       	mov    edx,0x63c01064
c010c9a1:	74 6c                	je     c010ca0f <__func__.1477+0x6>
c010c9a3:	20 3d 3d 20 70 63    	and    BYTE PTR ds:0x6370203d,bh
c010c9a9:	74 6c                	je     c010ca17 <__func__.1461+0x4>
c010c9ab:	00 74 61 73          	add    BYTE PTR [ecx+eiz*2+0x73],dh
c010c9af:	6b 2f 76             	imul   ebp,DWORD PTR [edi],0x76
c010c9b2:	69 65 77 2e 63 00 76 	imul   esp,DWORD PTR [ebp+0x77],0x7600632e
c010c9b9:	69 65 77 2d 3e 63 74 	imul   esp,DWORD PTR [ebp+0x77],0x74633e2d
c010c9c0:	6c                   	ins    BYTE PTR es:[edi],dx
c010c9c1:	20 21                	and    BYTE PTR [ecx],ah
c010c9c3:	3d 20 4e 55 4c       	cmp    eax,0x4c554e20
c010c9c8:	4c                   	dec    esp
c010c9c9:	00 76 69             	add    BYTE PTR [esi+0x69],dh
c010c9cc:	65 77 2d             	gs ja  c010c9fc <__func__.1485>
c010c9cf:	3e 63 74 6c 20       	arpl   WORD PTR ds:[esp+ebp*2+0x20],si
c010c9d4:	3d 3d 20 70 63       	cmp    eax,0x6370203d
c010c9d9:	74 6c                	je     c010ca47 <__func__.1461+0x34>
	...

c010c9dc <__func__.1533>:
c010c9dc:	56                   	push   esi
c010c9dd:	49                   	dec    ecx
c010c9de:	45                   	inc    ebp
c010c9df:	57                   	push   edi
c010c9e0:	5f                   	pop    edi
c010c9e1:	72 65                	jb     c010ca48 <__func__.1461+0x35>
c010c9e3:	66 6c                	data16 ins BYTE PTR es:[edi],dx
c010c9e5:	75 73                	jne    c010ca5a <__func__.1461+0x47>
c010c9e7:	68 6d 61 70 00       	push   0x70616d

c010c9ec <__func__.1505>:
c010c9ec:	56                   	push   esi
c010c9ed:	49                   	dec    ecx
c010c9ee:	45                   	inc    ebp
c010c9ef:	57                   	push   edi
c010c9f0:	5f                   	pop    edi
c010c9f1:	72 65                	jb     c010ca58 <__func__.1461+0x45>
c010c9f3:	66 6c                	data16 ins BYTE PTR es:[edi],dx
c010c9f5:	75 73                	jne    c010ca6a <__func__.1461+0x57>
c010c9f7:	68 73 75 62 00       	push   0x627573

c010c9fc <__func__.1485>:
c010c9fc:	56                   	push   esi
c010c9fd:	49                   	dec    ecx
c010c9fe:	45                   	inc    ebp
c010c9ff:	57                   	push   edi
c010ca00:	5f                   	pop    edi
c010ca01:	72 65                	jb     c010ca68 <__func__.1461+0x55>
c010ca03:	66 6c                	data16 ins BYTE PTR es:[edi],dx
c010ca05:	75 73                	jne    c010ca7a <__func__.1461+0x67>
c010ca07:	68 00 56 49 45       	push   0x45495600

c010ca09 <__func__.1477>:
c010ca09:	56                   	push   esi
c010ca0a:	49                   	dec    ecx
c010ca0b:	45                   	inc    ebp
c010ca0c:	57                   	push   edi
c010ca0d:	53                   	push   ebx
c010ca0e:	6c                   	ins    BYTE PTR es:[edi],dx
c010ca0f:	69 64 65 00 56 49 45 	imul   esp,DWORD PTR [ebp+eiz*2+0x0],0x57454956
c010ca16:	57 

c010ca13 <__func__.1461>:
c010ca13:	56                   	push   esi
c010ca14:	49                   	dec    ecx
c010ca15:	45                   	inc    ebp
c010ca16:	57                   	push   edi
c010ca17:	55                   	push   ebp
c010ca18:	70 64                	jo     c010ca7e <__func__.1461+0x6b>
c010ca1a:	6f                   	outs   dx,DWORD PTR ds:[esi]
c010ca1b:	77 6e                	ja     c010ca8b <__func__.1461+0x78>
c010ca1d:	00 00                	add    BYTE PTR [eax],al
c010ca1f:	00 50 65             	add    BYTE PTR [eax+0x65],dl
c010ca22:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010ca23:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c010ca26:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c010ca2b:	65 6c                	gs ins BYTE PTR es:[edi],dx
c010ca2d:	20 28                	and    BYTE PTR [eax],ch
c010ca2f:	50                   	push   eax
c010ca30:	4b                   	dec    ebx
c010ca31:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010ca32:	29 20                	sub    DWORD PTR [eax],esp
c010ca34:	30 2e                	xor    BYTE PTR [esi],ch
c010ca36:	30 2e                	xor    BYTE PTR [esi],ch
c010ca38:	31 20                	xor    DWORD PTR [eax],esp
c010ca3a:	41                   	inc    ecx
c010ca3b:	75 67                	jne    c010caa4 <__func__.1461+0x91>
c010ca3d:	2e 00 00             	add    BYTE PTR cs:[eax],al
c010ca40:	50                   	push   eax
c010ca41:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c010ca43:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c010ca46:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c010ca4b:	65 6c                	gs ins BYTE PTR es:[edi],dx
c010ca4d:	20 28                	and    BYTE PTR [eax],ch
c010ca4f:	50                   	push   eax
c010ca50:	4b                   	dec    ebx
c010ca51:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010ca52:	29 20                	sub    DWORD PTR [eax],esp
c010ca54:	30 2e                	xor    BYTE PTR [esi],ch
c010ca56:	30 2e                	xor    BYTE PTR [esi],ch
c010ca58:	31 20                	xor    DWORD PTR [eax],esp
c010ca5a:	41                   	inc    ecx
c010ca5b:	75 67                	jne    c010cac4 <__func__.870+0xf>
c010ca5d:	2e 00 00             	add    BYTE PTR cs:[eax],al
c010ca60:	62 79 74             	bound  edi,QWORD PTR [ecx+0x74]
c010ca63:	65 5f                	gs pop edi
c010ca65:	69 6e 64 65 78 20 3c 	imul   ebp,DWORD PTR [esi+0x64],0x3c207865
c010ca6c:	20 28                	and    BYTE PTR [eax],ch
c010ca6e:	62 74 6d 70          	bound  esi,QWORD PTR [ebp+ebp*2+0x70]
c010ca72:	2d 3e 62 74 6d       	sub    eax,0x6d74623e
c010ca77:	70 5f                	jo     c010cad8 <__func__.870+0x23>
c010ca79:	62 79 74             	bound  edi,QWORD PTR [ecx+0x74]
c010ca7c:	65 73 5f             	gs jae c010cade <__func__.870+0x29>
c010ca7f:	6c                   	ins    BYTE PTR es:[edi],dx
c010ca80:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c010ca82:	29 00                	sub    DWORD PTR [eax],eax
c010ca84:	6c                   	ins    BYTE PTR es:[edi],dx
c010ca85:	69 62 2f 62 69 74 6d 	imul   esp,DWORD PTR [edx+0x2f],0x6d746962
c010ca8c:	61                   	popa   
c010ca8d:	70 2e                	jo     c010cabd <__func__.870+0x8>
c010ca8f:	63 00                	arpl   WORD PTR [eax],ax
c010ca91:	76 61                	jbe    c010caf4 <__func__.870+0x3f>
c010ca93:	6c                   	ins    BYTE PTR es:[edi],dx
c010ca94:	75 65                	jne    c010cafb <__func__.870+0x46>
c010ca96:	20 3d 3d 20 30 20    	and    BYTE PTR ds:0x2030203d,bh
c010ca9c:	7c 7c                	jl     c010cb1a <__func__.870+0x65>
c010ca9e:	20 76 61             	and    BYTE PTR [esi+0x61],dh
c010caa1:	6c                   	ins    BYTE PTR es:[edi],dx
c010caa2:	75 65                	jne    c010cb09 <__func__.870+0x54>
c010caa4:	20 3d 3d 20 31 00    	and    BYTE PTR ds:0x31203d,bh

c010caaa <__func__.887>:
c010caaa:	62 69 74             	bound  ebp,QWORD PTR [ecx+0x74]
c010caad:	6d                   	ins    DWORD PTR es:[edi],dx
c010caae:	61                   	popa   
c010caaf:	70 5f                	jo     c010cb10 <__func__.870+0x5b>
c010cab1:	73 65                	jae    c010cb18 <__func__.870+0x63>
c010cab3:	74 00                	je     c010cab5 <__func__.870>

c010cab5 <__func__.870>:
c010cab5:	62 69 74             	bound  ebp,QWORD PTR [ecx+0x74]
c010cab8:	6d                   	ins    DWORD PTR es:[edi],dx
c010cab9:	61                   	popa   
c010caba:	70 5f                	jo     c010cb1b <__func__.870+0x66>
c010cabc:	61                   	popa   
c010cabd:	6c                   	ins    BYTE PTR es:[edi],dx
c010cabe:	6c                   	ins    BYTE PTR es:[edi],dx
c010cabf:	6f                   	outs   dx,DWORD PTR ds:[esi]
c010cac0:	63 00                	arpl   WORD PTR [eax],ax
c010cac2:	00 00                	add    BYTE PTR [eax],al
c010cac4:	50                   	push   eax
c010cac5:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c010cac7:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c010caca:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c010cacf:	65 6c                	gs ins BYTE PTR es:[edi],dx
c010cad1:	20 28                	and    BYTE PTR [eax],ch
c010cad3:	50                   	push   eax
c010cad4:	4b                   	dec    ebx
c010cad5:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010cad6:	29 20                	sub    DWORD PTR [eax],esp
c010cad8:	30 2e                	xor    BYTE PTR [esi],ch
c010cada:	30 2e                	xor    BYTE PTR [esi],ch
c010cadc:	31 20                	xor    DWORD PTR [eax],esp
c010cade:	41                   	inc    ecx
c010cadf:	75 67                	jne    c010cb48 <__func__.870+0x93>
c010cae1:	2e 00 00             	add    BYTE PTR cs:[eax],al
c010cae4:	50                   	push   eax
c010cae5:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c010cae7:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c010caea:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c010caef:	65 6c                	gs ins BYTE PTR es:[edi],dx
c010caf1:	20 28                	and    BYTE PTR [eax],ch
c010caf3:	50                   	push   eax
c010caf4:	4b                   	dec    ebx
c010caf5:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010caf6:	29 20                	sub    DWORD PTR [eax],esp
c010caf8:	30 2e                	xor    BYTE PTR [esi],ch
c010cafa:	30 2e                	xor    BYTE PTR [esi],ch
c010cafc:	31 20                	xor    DWORD PTR [eax],esp
c010cafe:	41                   	inc    ecx
c010caff:	75 67                	jne    c010cb68 <__func__.870+0xb3>
c010cb01:	2e 00 00             	add    BYTE PTR cs:[eax],al
c010cb04:	f8                   	clc    
c010cb05:	7b 10                	jnp    c010cb17 <__func__.870+0x62>
c010cb07:	c0                   	(bad)  
c010cb08:	73 7b                	jae    c010cb85 <__func__.870+0xd0>
c010cb0a:	10 c0                	adc    al,al
c010cb0c:	73 7b                	jae    c010cb89 <__func__.870+0xd4>
c010cb0e:	10 c0                	adc    al,al
c010cb10:	73 7b                	jae    c010cb8d <__func__.870+0xd8>
c010cb12:	10 c0                	adc    al,al
c010cb14:	73 7b                	jae    c010cb91 <__func__.870+0xdc>
c010cb16:	10 c0                	adc    al,al
c010cb18:	73 7b                	jae    c010cb95 <__func__.870+0xe0>
c010cb1a:	10 c0                	adc    al,al
c010cb1c:	73 7b                	jae    c010cb99 <__func__.870+0xe4>
c010cb1e:	10 c0                	adc    al,al
c010cb20:	73 7b                	jae    c010cb9d <__func__.870+0xe8>
c010cb22:	10 c0                	adc    al,al
c010cb24:	1b 7b 10             	sbb    edi,DWORD PTR [ebx+0x10]
c010cb27:	c0 65 7b 10          	shl    BYTE PTR [ebp+0x7b],0x10
c010cb2b:	c0                   	(bad)  
c010cb2c:	35 7b 10 c0 73       	xor    eax,0x73c0107b
c010cb31:	7b 10                	jnp    c010cb43 <__func__.870+0x8e>
c010cb33:	c0                   	(bad)  
c010cb34:	73 7b                	jae    c010cbb1 <__func__.870+0xfc>
c010cb36:	10 c0                	adc    al,al
c010cb38:	35 7b 10 c0 50       	xor    eax,0x50c0107b
c010cb3d:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c010cb3f:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c010cb42:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c010cb47:	65 6c                	gs ins BYTE PTR es:[edi],dx
c010cb49:	20 28                	and    BYTE PTR [eax],ch
c010cb4b:	50                   	push   eax
c010cb4c:	4b                   	dec    ebx
c010cb4d:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010cb4e:	29 20                	sub    DWORD PTR [eax],esp
c010cb50:	30 2e                	xor    BYTE PTR [esi],ch
c010cb52:	30 2e                	xor    BYTE PTR [esi],ch
c010cb54:	31 20                	xor    DWORD PTR [eax],esp
c010cb56:	41                   	inc    ecx
c010cb57:	75 67                	jne    c010cbc0 <__func__.870+0x10b>
c010cb59:	2e 00 64 73 74       	add    BYTE PTR cs:[ebx+esi*2+0x74],ah
c010cb5e:	5f                   	pop    edi
c010cb5f:	5f                   	pop    edi
c010cb60:	20 21                	and    BYTE PTR [ecx],ah
c010cb62:	3d 20 4e 55 4c       	cmp    eax,0x4c554e20
c010cb67:	4c                   	dec    esp
c010cb68:	00 6c 69 62          	add    BYTE PTR [ecx+ebp*2+0x62],ch
c010cb6c:	63 2f                	arpl   WORD PTR [edi],bp
c010cb6e:	73 74                	jae    c010cbe4 <__func__.854+0x1>
c010cb70:	72 69                	jb     c010cbdb <__func__.892+0x6>
c010cb72:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010cb73:	67 2e 63 00          	arpl   WORD PTR cs:[bx+si],ax
c010cb77:	00 64 73 74          	add    BYTE PTR [ebx+esi*2+0x74],ah
c010cb7b:	5f                   	pop    edi
c010cb7c:	5f                   	pop    edi
c010cb7d:	20 21                	and    BYTE PTR [ecx],ah
c010cb7f:	3d 20 4e 55 4c       	cmp    eax,0x4c554e20
c010cb84:	4c                   	dec    esp
c010cb85:	20 26                	and    BYTE PTR [esi],ah
c010cb87:	26 20 73 72          	and    BYTE PTR es:[ebx+0x72],dh
c010cb8b:	63 5f 5f             	arpl   WORD PTR [edi+0x5f],bx
c010cb8e:	20 21                	and    BYTE PTR [ecx],ah
c010cb90:	3d 20 4e 55 4c       	cmp    eax,0x4c554e20
c010cb95:	4c                   	dec    esp
c010cb96:	00 70 31             	add    BYTE PTR [eax+0x31],dh
c010cb99:	5f                   	pop    edi
c010cb9a:	5f                   	pop    edi
c010cb9b:	20 21                	and    BYTE PTR [ecx],ah
c010cb9d:	3d 20 4e 55 4c       	cmp    eax,0x4c554e20
c010cba2:	4c                   	dec    esp
c010cba3:	20 26                	and    BYTE PTR [esi],ah
c010cba5:	26 20 70 32          	and    BYTE PTR es:[eax+0x32],dh
c010cba9:	5f                   	pop    edi
c010cbaa:	5f                   	pop    edi
c010cbab:	20 21                	and    BYTE PTR [ecx],ah
c010cbad:	3d 20 4e 55 4c       	cmp    eax,0x4c554e20
c010cbb2:	4c                   	dec    esp
c010cbb3:	00 73 74             	add    BYTE PTR [ebx+0x74],dh
c010cbb6:	72 31                	jb     c010cbe9 <__func__.854+0x6>
c010cbb8:	5f                   	pop    edi
c010cbb9:	5f                   	pop    edi
c010cbba:	20 21                	and    BYTE PTR [ecx],ah
c010cbbc:	3d 20 4e 55 4c       	cmp    eax,0x4c554e20
c010cbc1:	4c                   	dec    esp
c010cbc2:	20 26                	and    BYTE PTR [esi],ah
c010cbc4:	26 20 73 74          	and    BYTE PTR es:[ebx+0x74],dh
c010cbc8:	72 32                	jb     c010cbfc <__func__.843+0x12>
c010cbca:	5f                   	pop    edi
c010cbcb:	5f                   	pop    edi
c010cbcc:	20 21                	and    BYTE PTR [ecx],ah
c010cbce:	3d 20 4e 55 4c       	cmp    eax,0x4c554e20
c010cbd3:	4c                   	dec    esp
	...

c010cbd5 <__func__.892>:
c010cbd5:	73 74                	jae    c010cc4b <__func__.843+0x61>
c010cbd7:	72 63                	jb     c010cc3c <__func__.843+0x52>
c010cbd9:	6d                   	ins    DWORD PTR es:[edi],dx
c010cbda:	70 00                	jo     c010cbdc <__func__.866>

c010cbdc <__func__.866>:
c010cbdc:	6d                   	ins    DWORD PTR es:[edi],dx
c010cbdd:	65 6d                	gs ins DWORD PTR es:[edi],dx
c010cbdf:	63 6d 70             	arpl   WORD PTR [ebp+0x70],bp
	...

c010cbe3 <__func__.854>:
c010cbe3:	6d                   	ins    DWORD PTR es:[edi],dx
c010cbe4:	65 6d                	gs ins DWORD PTR es:[edi],dx
c010cbe6:	63 70 79             	arpl   WORD PTR [eax+0x79],si
	...

c010cbea <__func__.843>:
c010cbea:	6d                   	ins    DWORD PTR es:[edi],dx
c010cbeb:	65 6d                	gs ins DWORD PTR es:[edi],dx
c010cbed:	73 65                	jae    c010cc54 <__func__.843+0x6a>
c010cbef:	74 00                	je     c010cbf1 <__func__.843+0x7>
c010cbf1:	00 00                	add    BYTE PTR [eax],al
c010cbf3:	00 50 65             	add    BYTE PTR [eax+0x65],dl
c010cbf6:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010cbf7:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c010cbfa:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c010cbff:	65 6c                	gs ins BYTE PTR es:[edi],dx
c010cc01:	20 28                	and    BYTE PTR [eax],ch
c010cc03:	50                   	push   eax
c010cc04:	4b                   	dec    ebx
c010cc05:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010cc06:	29 20                	sub    DWORD PTR [eax],esp
c010cc08:	30 2e                	xor    BYTE PTR [esi],ch
c010cc0a:	30 2e                	xor    BYTE PTR [esi],ch
c010cc0c:	31 20                	xor    DWORD PTR [eax],esp
c010cc0e:	41                   	inc    ecx
c010cc0f:	75 67                	jne    c010cc78 <_erodata+0x1>
c010cc11:	2e 00 00             	add    BYTE PTR cs:[eax],al
c010cc14:	0d 83 10 c0 00       	or     eax,0xc01083
c010cc19:	83 10 c0             	adc    DWORD PTR [eax],0xffffffc0
c010cc1c:	00 83 10 c0 0d 83    	add    BYTE PTR [ebx-0x7cf23ff0],al
c010cc22:	10 c0                	adc    al,al
c010cc24:	00 83 10 c0 00 83    	add    BYTE PTR [ebx-0x7cff3ff0],al
c010cc2a:	10 c0                	adc    al,al
c010cc2c:	00 83 10 c0 00 83    	add    BYTE PTR [ebx-0x7cff3ff0],al
c010cc32:	10 c0                	adc    al,al
c010cc34:	00 83 10 c0 00 83    	add    BYTE PTR [ebx-0x7cff3ff0],al
c010cc3a:	10 c0                	adc    al,al
c010cc3c:	00 83 10 c0 e8 82    	add    BYTE PTR [ebx-0x7d173ff0],al
c010cc42:	10 c0                	adc    al,al
c010cc44:	00 83 10 c0 f1 82    	add    BYTE PTR [ebx-0x7d0e3ff0],al
c010cc4a:	10 c0                	adc    al,al
c010cc4c:	00 83 10 c0 00 83    	add    BYTE PTR [ebx-0x7cff3ff0],al
c010cc52:	10 c0                	adc    al,al
c010cc54:	fa                   	cli    
c010cc55:	82                   	(bad)  
c010cc56:	10 c0                	adc    al,al
c010cc58:	50                   	push   eax
c010cc59:	65 6e                	outs   dx,BYTE PTR gs:[esi]
c010cc5b:	63 69 6c             	arpl   WORD PTR [ecx+0x6c],bp
c010cc5e:	2d 4b 65 72 6e       	sub    eax,0x6e72654b
c010cc63:	65 6c                	gs ins BYTE PTR es:[edi],dx
c010cc65:	20 28                	and    BYTE PTR [eax],ch
c010cc67:	50                   	push   eax
c010cc68:	4b                   	dec    ebx
c010cc69:	6e                   	outs   dx,BYTE PTR ds:[esi]
c010cc6a:	29 20                	sub    DWORD PTR [eax],esp
c010cc6c:	30 2e                	xor    BYTE PTR [esi],ch
c010cc6e:	30 2e                	xor    BYTE PTR [esi],ch
c010cc70:	31 20                	xor    DWORD PTR [eax],esp
c010cc72:	41                   	inc    ecx
c010cc73:	75 67                	jne    c010ccdc <pid_pool+0x1c>
c010cc75:	2e                   	cs
	...

Disassembly of section .bss:

c010cc80 <_bss>:
	...

c010cca0 <this_thread_tag>:
	...

c010ccc0 <pid_pool>:
	...

c010cd00 <tss>:
	...

c010cd80 <console_lock>:
	...

c010cdc0 <buf>:
	...

c010ce00 <ctrl_status>:
c010ce00:	00 00                	add    BYTE PTR [eax],al
	...

c010ce04 <shift_status>:
c010ce04:	00 00                	add    BYTE PTR [eax],al
	...

c010ce08 <alt_status>:
c010ce08:	00 00                	add    BYTE PTR [eax],al
	...

c010ce0c <casplock_status>:
c010ce0c:	00 00                	add    BYTE PTR [eax],al
	...

c010ce10 <ext_scandcode>:
c010ce10:	00 00                	add    BYTE PTR [eax],al
	...

c010ce14 <i>:
c010ce14:	00 00                	add    BYTE PTR [eax],al
	...

c010ce18 <MouseData>:
	...

c010ce2c <ticks>:
	...

c010ce34 <_ebss>:
	...

c010ce40 <intr_name>:
	...

c010cf80 <idt>:
	...

c010d200 <idt_table>:
	...

c010d340 <kvinfo>:
	...

c010f280 <k_desc>:
	...

c010f340 <user_pool>:
	...

c010f380 <kernel_vaddr>:
	...

c010f3c0 <upinfo>:
	...

c0111300 <kpinfo>:
	...

c0113240 <kernel_pool>:
	...

c011327c <ready_list>:
	...

c0113294 <all_list>:
	...

c01132ac <main_thread>:
	...

c01132c0 <keybuf>:
	...

c0113304 <pid_table>:
	...

c011331c <view>:
c011331c:	00 00                	add    BYTE PTR [eax],al
	...

c0113320 <buf>:
c0113320:	00 00                	add    BYTE PTR [eax],al
	...

c0113324 <pctl>:
c0113324:	00 00                	add    BYTE PTR [eax],al
	...

c0113328 <background>:
c0113328:	00 00                	add    BYTE PTR [eax],al
	...

c011332c <Screen_Ctl>:
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
